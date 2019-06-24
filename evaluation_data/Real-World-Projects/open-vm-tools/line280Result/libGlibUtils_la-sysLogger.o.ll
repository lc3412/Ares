; ModuleID = './libGlibUtils_la-sysLogger.o.i'
source_filename = "./libGlibUtils_la-sysLogger.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GStaticMutex = type { %union._GMutex*, %union.pthread_mutex_t }
%union._GMutex = type { i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.SysLogger = type { %struct.GlibLogger, i8*, i32 }
%struct.GlibLogger = type { i32, i32, void (i8*, i32, i8*, i8*)*, void (i8*)* }
%struct._GError = type { i32, i32, i8* }

@gSysLoggerLock = internal global %struct.GStaticMutex zeroinitializer, align 8
@gSysLogger = internal global %struct.SysLogger* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"local%d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid local facility for %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Invalid syslog facility for %s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.SysLoggerUnref = private unnamed_addr constant [15 x i8] c"SysLoggerUnref\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"data == gSysLogger\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"gSysLogger->refcount > 0\00", align 1

; Function Attrs: nounwind uwtable
define %struct.GlibLogger* @GlibUtils_CreateSysLogger(i8*, i8*) #0 !dbg !106 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !111, metadata !112), !dbg !113
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !114, metadata !112), !dbg !115
  %7 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* @gSysLoggerLock), !dbg !116
  call void @g_mutex_lock(%union._GMutex* %7), !dbg !117
  %8 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !119
  %9 = icmp eq %struct.SysLogger* %8, null, !dbg !121
  br i1 %9, label %10, label %71, !dbg !122

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !123, metadata !112), !dbg !125
  store i32 8, i32* %5, align 4, !dbg !125
  %11 = load i8*, i8** %4, align 8, !dbg !126
  %12 = icmp ne i8* %11, null, !dbg !128
  br i1 %12, label %13, label %46, !dbg !129

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata i32* %6, metadata !130, metadata !112), !dbg !132
  %14 = load i8*, i8** %4, align 8, !dbg !133
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #5, !dbg !135
  %16 = icmp eq i32 %15, 0, !dbg !136
  br i1 %16, label %17, label %18, !dbg !137

; <label>:17:                                     ; preds = %13
  store i32 24, i32* %5, align 4, !dbg !138
  br label %45, !dbg !140

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %4, align 8, !dbg !141
  %20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32* %6) #6, !dbg !144
  %21 = icmp eq i32 %20, 1, !dbg !145
  br i1 %21, label %22, label %36, !dbg !144

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %6, align 4, !dbg !146
  switch i32 %23, label %32 [
    i32 0, label %24
    i32 1, label %25
    i32 2, label %26
    i32 3, label %27
    i32 4, label %28
    i32 5, label %29
    i32 6, label %30
    i32 7, label %31
  ], !dbg !148

; <label>:24:                                     ; preds = %22
  store i32 128, i32* %5, align 4, !dbg !149
  br label %35, !dbg !151

; <label>:25:                                     ; preds = %22
  store i32 136, i32* %5, align 4, !dbg !152
  br label %35, !dbg !153

; <label>:26:                                     ; preds = %22
  store i32 144, i32* %5, align 4, !dbg !154
  br label %35, !dbg !155

; <label>:27:                                     ; preds = %22
  store i32 152, i32* %5, align 4, !dbg !156
  br label %35, !dbg !157

; <label>:28:                                     ; preds = %22
  store i32 160, i32* %5, align 4, !dbg !158
  br label %35, !dbg !159

; <label>:29:                                     ; preds = %22
  store i32 168, i32* %5, align 4, !dbg !160
  br label %35, !dbg !161

; <label>:30:                                     ; preds = %22
  store i32 176, i32* %5, align 4, !dbg !162
  br label %35, !dbg !163

; <label>:31:                                     ; preds = %22
  store i32 184, i32* %5, align 4, !dbg !164
  br label %35, !dbg !165

; <label>:32:                                     ; preds = %22
  %33 = load i8*, i8** %3, align 8, !dbg !166
  %34 = load i8*, i8** %4, align 8, !dbg !167
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* %33, i8* %34), !dbg !168
  br label %35, !dbg !169

; <label>:35:                                     ; preds = %32, %31, %30, %29, %28, %27, %26, %25, %24
  br label %44, !dbg !170

; <label>:36:                                     ; preds = %18
  %37 = load i8*, i8** %4, align 8, !dbg !171
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #5, !dbg !174
  %39 = icmp ne i32 %38, 0, !dbg !175
  br i1 %39, label %40, label %43, !dbg !174

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %3, align 8, !dbg !176
  %42 = load i8*, i8** %4, align 8, !dbg !178
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* %41, i8* %42), !dbg !179
  br label %43, !dbg !180

; <label>:43:                                     ; preds = %40, %36
  br label %44

; <label>:44:                                     ; preds = %43, %35
  br label %45

; <label>:45:                                     ; preds = %44, %17
  br label %46, !dbg !181

; <label>:46:                                     ; preds = %45, %10
  %47 = call noalias i8* @g_malloc0_n(i64 1, i64 40), !dbg !182
  %48 = bitcast i8* %47 to %struct.SysLogger*, !dbg !183
  store %struct.SysLogger* %48, %struct.SysLogger** @gSysLogger, align 8, !dbg !184
  %49 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !185
  %50 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %49, i32 0, i32 0, !dbg !186
  %51 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %50, i32 0, i32 1, !dbg !187
  store i32 1, i32* %51, align 4, !dbg !188
  %52 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !189
  %53 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %52, i32 0, i32 0, !dbg !190
  %54 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %53, i32 0, i32 0, !dbg !191
  store i32 0, i32* %54, align 8, !dbg !192
  %55 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !193
  %56 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %55, i32 0, i32 0, !dbg !194
  %57 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %56, i32 0, i32 2, !dbg !195
  store void (i8*, i32, i8*, i8*)* @SysLoggerLog, void (i8*, i32, i8*, i8*)** %57, align 8, !dbg !196
  %58 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !197
  %59 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %58, i32 0, i32 0, !dbg !198
  %60 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %59, i32 0, i32 3, !dbg !199
  store void (i8*)* @SysLoggerUnref, void (i8*)** %60, align 8, !dbg !200
  %61 = load i8*, i8** %3, align 8, !dbg !201
  %62 = call noalias i8* @g_strdup(i8* %61), !dbg !202
  %63 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !203
  %64 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %63, i32 0, i32 1, !dbg !204
  store i8* %62, i8** %64, align 8, !dbg !205
  %65 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !206
  %66 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %65, i32 0, i32 2, !dbg !207
  store i32 1, i32* %66, align 8, !dbg !208
  %67 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !209
  %68 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %67, i32 0, i32 1, !dbg !210
  %69 = load i8*, i8** %68, align 8, !dbg !210
  %70 = load i32, i32* %5, align 4, !dbg !211
  call void @openlog(i8* %69, i32 3, i32 %70), !dbg !212
  br label %76, !dbg !213

; <label>:71:                                     ; preds = %2
  %72 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !214
  %73 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %72, i32 0, i32 2, !dbg !216
  %74 = load i32, i32* %73, align 8, !dbg !217
  %75 = add nsw i32 %74, 1, !dbg !217
  store i32 %75, i32* %73, align 8, !dbg !217
  br label %76

; <label>:76:                                     ; preds = %71, %46
  %77 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* @gSysLoggerLock), !dbg !218
  call void @g_mutex_unlock(%union._GMutex* %77), !dbg !219
  %78 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !220
  %79 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %78, i32 0, i32 0, !dbg !221
  ret %struct.GlibLogger* %79, !dbg !222
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_mutex_lock(%union._GMutex*) #2

declare %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare void @g_log(i8*, i32, i8*, ...) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @SysLoggerLog(i8*, i32, i8*, i8*) #0 !dbg !223 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !224, metadata !112), !dbg !225
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !226, metadata !112), !dbg !227
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !228, metadata !112), !dbg !229
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !230, metadata !112), !dbg !231
  call void @llvm.dbg.declare(metadata i8** %9, metadata !232, metadata !112), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %10, metadata !234, metadata !112), !dbg !235
  %11 = load i32, i32* %6, align 4, !dbg !236
  %12 = and i32 %11, 4, !dbg !238
  %13 = icmp ne i32 %12, 0, !dbg !238
  br i1 %13, label %14, label %15, !dbg !239

; <label>:14:                                     ; preds = %4
  store i32 2, i32* %10, align 4, !dbg !240
  br label %40, !dbg !242

; <label>:15:                                     ; preds = %4
  %16 = load i32, i32* %6, align 4, !dbg !243
  %17 = and i32 %16, 8, !dbg !246
  %18 = icmp ne i32 %17, 0, !dbg !246
  br i1 %18, label %19, label %20, !dbg !243

; <label>:19:                                     ; preds = %15
  store i32 3, i32* %10, align 4, !dbg !247
  br label %39, !dbg !249

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %6, align 4, !dbg !250
  %22 = and i32 %21, 16, !dbg !253
  %23 = icmp ne i32 %22, 0, !dbg !253
  br i1 %23, label %24, label %25, !dbg !250

; <label>:24:                                     ; preds = %20
  store i32 4, i32* %10, align 4, !dbg !254
  br label %38, !dbg !256

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %6, align 4, !dbg !257
  %27 = and i32 %26, 32, !dbg !260
  %28 = icmp ne i32 %27, 0, !dbg !260
  br i1 %28, label %29, label %30, !dbg !257

; <label>:29:                                     ; preds = %25
  store i32 5, i32* %10, align 4, !dbg !261
  br label %37, !dbg !263

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %6, align 4, !dbg !264
  %32 = and i32 %31, 64, !dbg !267
  %33 = icmp ne i32 %32, 0, !dbg !267
  br i1 %33, label %34, label %35, !dbg !264

; <label>:34:                                     ; preds = %30
  store i32 6, i32* %10, align 4, !dbg !268
  br label %36, !dbg !270

; <label>:35:                                     ; preds = %30
  store i32 7, i32* %10, align 4, !dbg !271
  br label %36

; <label>:36:                                     ; preds = %35, %34
  br label %37

; <label>:37:                                     ; preds = %36, %29
  br label %38

; <label>:38:                                     ; preds = %37, %24
  br label %39

; <label>:39:                                     ; preds = %38, %19
  br label %40

; <label>:40:                                     ; preds = %39, %14
  %41 = load i8*, i8** %7, align 8, !dbg !273
  %42 = call noalias i8* @g_locale_from_utf8(i8* %41, i64 -1, i64* null, i64* null, %struct._GError** null), !dbg !274
  store i8* %42, i8** %9, align 8, !dbg !275
  %43 = load i8*, i8** %9, align 8, !dbg !276
  %44 = icmp ne i8* %43, null, !dbg !278
  br i1 %44, label %45, label %49, !dbg !279

; <label>:45:                                     ; preds = %40
  %46 = load i32, i32* %10, align 4, !dbg !280
  %47 = load i8*, i8** %9, align 8, !dbg !282
  call void (i32, i8*, ...) @syslog(i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %47), !dbg !283
  %48 = load i8*, i8** %9, align 8, !dbg !284
  call void @g_free(i8* %48), !dbg !285
  br label %52, !dbg !286

; <label>:49:                                     ; preds = %40
  %50 = load i32, i32* %10, align 4, !dbg !287
  %51 = load i8*, i8** %7, align 8, !dbg !289
  call void (i32, i8*, ...) @syslog(i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %51), !dbg !290
  br label %52

; <label>:52:                                     ; preds = %49, %45
  ret void, !dbg !291
}

; Function Attrs: nounwind uwtable
define internal void @SysLoggerUnref(i8*) #0 !dbg !292 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !293, metadata !112), !dbg !294
  br label %3, !dbg !295, !llvm.loop !296

; <label>:3:                                      ; preds = %1
  %4 = load i8*, i8** %2, align 8, !dbg !297
  %5 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !301
  %6 = bitcast %struct.SysLogger* %5 to i8*, !dbg !301
  %7 = icmp eq i8* %4, %6, !dbg !302
  br i1 %7, label %8, label %9, !dbg !297

; <label>:8:                                      ; preds = %3
  br label %10, !dbg !303

; <label>:9:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SysLoggerUnref, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)), !dbg !306
  br label %38, !dbg !309

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !310

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !312, !llvm.loop !313

; <label>:12:                                     ; preds = %11
  %13 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !314
  %14 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %13, i32 0, i32 2, !dbg !318
  %15 = load i32, i32* %14, align 8, !dbg !318
  %16 = icmp sgt i32 %15, 0, !dbg !319
  br i1 %16, label %17, label %18, !dbg !314

; <label>:17:                                     ; preds = %12
  br label %19, !dbg !320

; <label>:18:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.SysLoggerUnref, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)), !dbg !323
  br label %38, !dbg !326

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !327

; <label>:20:                                     ; preds = %19
  %21 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* @gSysLoggerLock), !dbg !329
  call void @g_mutex_lock(%union._GMutex* %21), !dbg !330
  %22 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !332
  %23 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %22, i32 0, i32 2, !dbg !333
  %24 = load i32, i32* %23, align 8, !dbg !334
  %25 = sub nsw i32 %24, 1, !dbg !334
  store i32 %25, i32* %23, align 8, !dbg !334
  %26 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !335
  %27 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %26, i32 0, i32 2, !dbg !337
  %28 = load i32, i32* %27, align 8, !dbg !337
  %29 = icmp eq i32 %28, 0, !dbg !338
  br i1 %29, label %30, label %36, !dbg !339

; <label>:30:                                     ; preds = %20
  call void @closelog(), !dbg !340
  %31 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !342
  %32 = getelementptr inbounds %struct.SysLogger, %struct.SysLogger* %31, i32 0, i32 1, !dbg !343
  %33 = load i8*, i8** %32, align 8, !dbg !343
  call void @g_free(i8* %33), !dbg !344
  %34 = load %struct.SysLogger*, %struct.SysLogger** @gSysLogger, align 8, !dbg !345
  %35 = bitcast %struct.SysLogger* %34 to i8*, !dbg !345
  call void @g_free(i8* %35), !dbg !346
  store %struct.SysLogger* null, %struct.SysLogger** @gSysLogger, align 8, !dbg !347
  br label %36, !dbg !348

; <label>:36:                                     ; preds = %30, %20
  %37 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* @gSysLoggerLock), !dbg !349
  call void @g_mutex_unlock(%union._GMutex* %37), !dbg !350
  br label %38, !dbg !351

; <label>:38:                                     ; preds = %36, %18, %9
  ret void, !dbg !352
}

declare noalias i8* @g_strdup(i8*) #2

declare void @openlog(i8*, i32, i32) #2

declare void @g_mutex_unlock(%union._GMutex*) #2

declare noalias i8* @g_locale_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #2

declare void @syslog(i32, i8*, ...) #2

declare void @g_free(i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @closelog() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!103, !104}
!llvm.ident = !{!105}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, globals: !54)
!1 = !DIFile(filename: "libGlibUtils_la-sysLogger.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line280")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line280")
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
!15 = !{!16, !17, !21, !52}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line280")
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysLogger", file: !23, line: 37, baseType: !24)
!23 = !DIFile(filename: "sysLogger.c", directory: "/home/lichi/Desktop/open-vm-tools/line280")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SysLogger", file: !23, line: 33, size: 320, align: 64, elements: !25)
!25 = !{!26, !50, !51}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !24, file: !23, line: 34, baseType: !27, size: 192, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "GlibLogger", file: !28, line: 57, baseType: !29)
!28 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/glibUtils.h", directory: "/home/lichi/Desktop/open-vm-tools/line280")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GlibLogger", file: !28, line: 52, size: 192, align: 64, elements: !30)
!30 = !{!31, !35, !36, !45}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !29, file: !28, line: 53, baseType: !32, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !19, line: 50, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !19, line: 49, baseType: !34)
!34 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "addsTimestamp", scope: !29, file: !28, line: 54, baseType: !32, size: 32, align: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "logfn", scope: !29, file: !28, line: 55, baseType: !37, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLogFunc", file: !4, line: 71, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !43, !41, !44}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLogLevelFlags", file: !4, line: 66, baseType: !3)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !19, line: 77, baseType: !16)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dtor", scope: !29, file: !28, line: 56, baseType: !46, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDestroyNotify", file: !19, line: 87, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !44}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !24, file: !23, line: 35, baseType: !17, size: 64, align: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !24, file: !23, line: 36, baseType: !33, size: 32, align: 32, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!54 = !{!55, !56}
!55 = distinct !DIGlobalVariable(name: "gSysLogger", scope: !0, file: !23, line: 40, type: !21, isLocal: true, isDefinition: true, variable: %struct.SysLogger** @gSysLogger)
!56 = distinct !DIGlobalVariable(name: "gSysLoggerLock", scope: !0, file: !23, line: 41, type: !57, isLocal: true, isDefinition: true, variable: %struct.GStaticMutex* @gSysLoggerLock)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticMutex", file: !58, line: 140, baseType: !59)
!58 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line280")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 133, size: 384, align: 64, elements: !60)
!60 = !{!61, !74}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !59, file: !58, line: 135, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !64, line: 51, baseType: !65)
!64 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line280")
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !64, line: 58, size: 64, align: 64, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !65, file: !64, line: 61, baseType: !44, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !65, file: !64, line: 62, baseType: !69, size: 64, align: 32)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, align: 32, elements: !72)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !19, line: 55, baseType: !71)
!71 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!72 = !{!73}
!73 = !DISubrange(count: 2)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !59, file: !58, line: 138, baseType: !75, size: 320, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !76, line: 128, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line280")
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !76, line: 90, size: 320, align: 64, elements: !78)
!78 = !{!79, !97, !101}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !77, file: !76, line: 125, baseType: !80, size: 320, align: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !76, line: 92, size: 320, align: 64, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !89, !90}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !80, file: !76, line: 94, baseType: !34, size: 32, align: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !80, file: !76, line: 95, baseType: !71, size: 32, align: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !80, file: !76, line: 96, baseType: !34, size: 32, align: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !80, file: !76, line: 98, baseType: !71, size: 32, align: 32, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !80, file: !76, line: 102, baseType: !34, size: 32, align: 32, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !80, file: !76, line: 104, baseType: !88, size: 16, align: 16, offset: 160)
!88 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !80, file: !76, line: 105, baseType: !88, size: 16, align: 16, offset: 176)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !80, file: !76, line: 106, baseType: !91, size: 128, align: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !76, line: 79, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !76, line: 75, size: 128, align: 64, elements: !93)
!93 = !{!94, !96}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !92, file: !76, line: 77, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !92, file: !76, line: 78, baseType: !95, size: 64, align: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !77, file: !76, line: 126, baseType: !98, size: 320, align: 8)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 320, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 40)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !77, file: !76, line: 127, baseType: !102, size: 64, align: 64)
!102 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!103 = !{i32 2, !"Dwarf Version", i32 4}
!104 = !{i32 2, !"Debug Info Version", i32 3}
!105 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!106 = distinct !DISubprogram(name: "GlibUtils_CreateSysLogger", scope: !23, file: !23, line: 140, type: !107, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !110)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !52, !52}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!110 = !{}
!111 = !DILocalVariable(name: "domain", arg: 1, scope: !106, file: !23, line: 140, type: !52)
!112 = !DIExpression()
!113 = !DILocation(line: 140, column: 39, scope: !106)
!114 = !DILocalVariable(name: "facility", arg: 2, scope: !106, file: !23, line: 141, type: !52)
!115 = !DILocation(line: 141, column: 39, scope: !106)
!116 = !DILocation(line: 143, column: 18, scope: !106)
!117 = !DILocation(line: 143, column: 4, scope: !118)
!118 = !DILexicalBlockFile(scope: !106, file: !23, discriminator: 1)
!119 = !DILocation(line: 144, column: 8, scope: !120)
!120 = distinct !DILexicalBlock(scope: !106, file: !23, line: 144, column: 8)
!121 = !DILocation(line: 144, column: 19, scope: !120)
!122 = !DILocation(line: 144, column: 8, scope: !106)
!123 = !DILocalVariable(name: "facid", scope: !124, file: !23, line: 145, type: !34)
!124 = distinct !DILexicalBlock(scope: !120, file: !23, line: 144, column: 27)
!125 = !DILocation(line: 145, column: 11, scope: !124)
!126 = !DILocation(line: 147, column: 11, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !23, line: 147, column: 11)
!128 = !DILocation(line: 147, column: 20, scope: !127)
!129 = !DILocation(line: 147, column: 11, scope: !124)
!130 = !DILocalVariable(name: "idx", scope: !131, file: !23, line: 148, type: !34)
!131 = distinct !DILexicalBlock(scope: !127, file: !23, line: 147, column: 28)
!132 = !DILocation(line: 148, column: 14, scope: !131)
!133 = !DILocation(line: 149, column: 21, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !23, line: 149, column: 14)
!135 = !DILocation(line: 149, column: 14, scope: !134)
!136 = !DILocation(line: 149, column: 41, scope: !134)
!137 = !DILocation(line: 149, column: 14, scope: !131)
!138 = !DILocation(line: 150, column: 19, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !23, line: 149, column: 47)
!140 = !DILocation(line: 151, column: 10, scope: !139)
!141 = !DILocation(line: 151, column: 28, scope: !142)
!142 = !DILexicalBlockFile(scope: !143, file: !23, discriminator: 1)
!143 = distinct !DILexicalBlock(scope: !134, file: !23, line: 151, column: 21)
!144 = !DILocation(line: 151, column: 21, scope: !142)
!145 = !DILocation(line: 151, column: 55, scope: !142)
!146 = !DILocation(line: 152, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !23, line: 151, column: 61)
!148 = !DILocation(line: 152, column: 13, scope: !147)
!149 = !DILocation(line: 154, column: 22, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !23, line: 152, column: 26)
!151 = !DILocation(line: 155, column: 16, scope: !150)
!152 = !DILocation(line: 158, column: 22, scope: !150)
!153 = !DILocation(line: 159, column: 16, scope: !150)
!154 = !DILocation(line: 162, column: 22, scope: !150)
!155 = !DILocation(line: 163, column: 16, scope: !150)
!156 = !DILocation(line: 166, column: 22, scope: !150)
!157 = !DILocation(line: 167, column: 16, scope: !150)
!158 = !DILocation(line: 170, column: 22, scope: !150)
!159 = !DILocation(line: 171, column: 16, scope: !150)
!160 = !DILocation(line: 174, column: 22, scope: !150)
!161 = !DILocation(line: 175, column: 16, scope: !150)
!162 = !DILocation(line: 178, column: 22, scope: !150)
!163 = !DILocation(line: 179, column: 16, scope: !150)
!164 = !DILocation(line: 182, column: 22, scope: !150)
!165 = !DILocation(line: 183, column: 16, scope: !150)
!166 = !DILocation(line: 186, column: 97, scope: !150)
!167 = !DILocation(line: 186, column: 105, scope: !150)
!168 = !DILocation(line: 186, column: 16, scope: !150)
!169 = !DILocation(line: 187, column: 16, scope: !150)
!170 = !DILocation(line: 189, column: 10, scope: !147)
!171 = !DILocation(line: 189, column: 28, scope: !172)
!172 = !DILexicalBlockFile(scope: !173, file: !23, discriminator: 1)
!173 = distinct !DILexicalBlock(scope: !143, file: !23, line: 189, column: 21)
!174 = !DILocation(line: 189, column: 21, scope: !172)
!175 = !DILocation(line: 189, column: 46, scope: !172)
!176 = !DILocation(line: 190, column: 95, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !23, line: 189, column: 52)
!178 = !DILocation(line: 190, column: 103, scope: !177)
!179 = !DILocation(line: 190, column: 13, scope: !177)
!180 = !DILocation(line: 191, column: 10, scope: !177)
!181 = !DILocation(line: 192, column: 7, scope: !131)
!182 = !DILocation(line: 194, column: 35, scope: !124)
!183 = !DILocation(line: 194, column: 21, scope: !124)
!184 = !DILocation(line: 194, column: 18, scope: !124)
!185 = !DILocation(line: 195, column: 7, scope: !124)
!186 = !DILocation(line: 195, column: 19, scope: !124)
!187 = !DILocation(line: 195, column: 27, scope: !124)
!188 = !DILocation(line: 195, column: 41, scope: !124)
!189 = !DILocation(line: 196, column: 7, scope: !124)
!190 = !DILocation(line: 196, column: 19, scope: !124)
!191 = !DILocation(line: 196, column: 27, scope: !124)
!192 = !DILocation(line: 196, column: 34, scope: !124)
!193 = !DILocation(line: 197, column: 7, scope: !124)
!194 = !DILocation(line: 197, column: 19, scope: !124)
!195 = !DILocation(line: 197, column: 27, scope: !124)
!196 = !DILocation(line: 197, column: 33, scope: !124)
!197 = !DILocation(line: 198, column: 7, scope: !124)
!198 = !DILocation(line: 198, column: 19, scope: !124)
!199 = !DILocation(line: 198, column: 27, scope: !124)
!200 = !DILocation(line: 198, column: 32, scope: !124)
!201 = !DILocation(line: 200, column: 37, scope: !124)
!202 = !DILocation(line: 200, column: 28, scope: !124)
!203 = !DILocation(line: 200, column: 7, scope: !124)
!204 = !DILocation(line: 200, column: 19, scope: !124)
!205 = !DILocation(line: 200, column: 26, scope: !124)
!206 = !DILocation(line: 201, column: 7, scope: !124)
!207 = !DILocation(line: 201, column: 19, scope: !124)
!208 = !DILocation(line: 201, column: 28, scope: !124)
!209 = !DILocation(line: 202, column: 15, scope: !124)
!210 = !DILocation(line: 202, column: 27, scope: !124)
!211 = !DILocation(line: 202, column: 54, scope: !124)
!212 = !DILocation(line: 202, column: 7, scope: !124)
!213 = !DILocation(line: 203, column: 4, scope: !124)
!214 = !DILocation(line: 204, column: 7, scope: !215)
!215 = distinct !DILexicalBlock(scope: !120, file: !23, line: 203, column: 11)
!216 = !DILocation(line: 204, column: 19, scope: !215)
!217 = !DILocation(line: 204, column: 28, scope: !215)
!218 = !DILocation(line: 206, column: 20, scope: !106)
!219 = !DILocation(line: 206, column: 4, scope: !118)
!220 = !DILocation(line: 207, column: 12, scope: !106)
!221 = !DILocation(line: 207, column: 24, scope: !106)
!222 = !DILocation(line: 207, column: 4, scope: !106)
!223 = distinct !DISubprogram(name: "SysLoggerLog", scope: !23, file: !23, line: 59, type: !39, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !110)
!224 = !DILocalVariable(name: "domain", arg: 1, scope: !223, file: !23, line: 59, type: !41)
!225 = !DILocation(line: 59, column: 27, scope: !223)
!226 = !DILocalVariable(name: "level", arg: 2, scope: !223, file: !23, line: 60, type: !43)
!227 = !DILocation(line: 60, column: 29, scope: !223)
!228 = !DILocalVariable(name: "message", arg: 3, scope: !223, file: !23, line: 61, type: !41)
!229 = !DILocation(line: 61, column: 27, scope: !223)
!230 = !DILocalVariable(name: "data", arg: 4, scope: !223, file: !23, line: 62, type: !44)
!231 = !DILocation(line: 62, column: 23, scope: !223)
!232 = !DILocalVariable(name: "local", scope: !223, file: !23, line: 64, type: !17)
!233 = !DILocation(line: 64, column: 11, scope: !223)
!234 = !DILocalVariable(name: "priority", scope: !223, file: !23, line: 65, type: !34)
!235 = !DILocation(line: 65, column: 8, scope: !223)
!236 = !DILocation(line: 68, column: 8, scope: !237)
!237 = distinct !DILexicalBlock(scope: !223, file: !23, line: 68, column: 8)
!238 = !DILocation(line: 68, column: 14, scope: !237)
!239 = !DILocation(line: 68, column: 8, scope: !223)
!240 = !DILocation(line: 69, column: 16, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !23, line: 68, column: 35)
!242 = !DILocation(line: 70, column: 4, scope: !241)
!243 = !DILocation(line: 70, column: 15, scope: !244)
!244 = !DILexicalBlockFile(scope: !245, file: !23, discriminator: 1)
!245 = distinct !DILexicalBlock(scope: !237, file: !23, line: 70, column: 15)
!246 = !DILocation(line: 70, column: 21, scope: !244)
!247 = !DILocation(line: 71, column: 16, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !23, line: 70, column: 45)
!249 = !DILocation(line: 72, column: 4, scope: !248)
!250 = !DILocation(line: 72, column: 15, scope: !251)
!251 = !DILexicalBlockFile(scope: !252, file: !23, discriminator: 1)
!252 = distinct !DILexicalBlock(scope: !245, file: !23, line: 72, column: 15)
!253 = !DILocation(line: 72, column: 21, scope: !251)
!254 = !DILocation(line: 73, column: 16, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !23, line: 72, column: 44)
!256 = !DILocation(line: 74, column: 4, scope: !255)
!257 = !DILocation(line: 74, column: 15, scope: !258)
!258 = !DILexicalBlockFile(scope: !259, file: !23, discriminator: 1)
!259 = distinct !DILexicalBlock(scope: !252, file: !23, line: 74, column: 15)
!260 = !DILocation(line: 74, column: 21, scope: !258)
!261 = !DILocation(line: 75, column: 16, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !23, line: 74, column: 44)
!263 = !DILocation(line: 76, column: 4, scope: !262)
!264 = !DILocation(line: 76, column: 15, scope: !265)
!265 = !DILexicalBlockFile(scope: !266, file: !23, discriminator: 1)
!266 = distinct !DILexicalBlock(scope: !259, file: !23, line: 76, column: 15)
!267 = !DILocation(line: 76, column: 21, scope: !265)
!268 = !DILocation(line: 77, column: 16, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !23, line: 76, column: 41)
!270 = !DILocation(line: 78, column: 4, scope: !269)
!271 = !DILocation(line: 79, column: 16, scope: !272)
!272 = distinct !DILexicalBlock(scope: !266, file: !23, line: 78, column: 11)
!273 = !DILocation(line: 82, column: 31, scope: !223)
!274 = !DILocation(line: 82, column: 12, scope: !223)
!275 = !DILocation(line: 82, column: 10, scope: !223)
!276 = !DILocation(line: 83, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !223, file: !23, line: 83, column: 8)
!278 = !DILocation(line: 83, column: 14, scope: !277)
!279 = !DILocation(line: 83, column: 8, scope: !223)
!280 = !DILocation(line: 84, column: 14, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !23, line: 83, column: 22)
!282 = !DILocation(line: 84, column: 30, scope: !281)
!283 = !DILocation(line: 84, column: 7, scope: !281)
!284 = !DILocation(line: 85, column: 14, scope: !281)
!285 = !DILocation(line: 85, column: 7, scope: !281)
!286 = !DILocation(line: 86, column: 4, scope: !281)
!287 = !DILocation(line: 87, column: 14, scope: !288)
!288 = distinct !DILexicalBlock(scope: !277, file: !23, line: 86, column: 11)
!289 = !DILocation(line: 87, column: 30, scope: !288)
!290 = !DILocation(line: 87, column: 7, scope: !288)
!291 = !DILocation(line: 89, column: 1, scope: !223)
!292 = distinct !DISubprogram(name: "SysLoggerUnref", scope: !23, file: !23, line: 104, type: !48, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !110)
!293 = !DILocalVariable(name: "data", arg: 1, scope: !292, file: !23, line: 104, type: !44)
!294 = !DILocation(line: 104, column: 25, scope: !292)
!295 = !DILocation(line: 106, column: 4, scope: !292)
!296 = distinct !{!296, !295}
!297 = !DILocation(line: 106, column: 12, scope: !298)
!298 = !DILexicalBlockFile(scope: !299, file: !23, discriminator: 1)
!299 = distinct !DILexicalBlock(scope: !300, file: !23, line: 106, column: 12)
!300 = distinct !DILexicalBlock(scope: !292, file: !23, line: 106, column: 6)
!301 = !DILocation(line: 106, column: 20, scope: !298)
!302 = !DILocation(line: 106, column: 17, scope: !298)
!303 = !DILocation(line: 106, column: 34, scope: !304)
!304 = !DILexicalBlockFile(scope: !305, file: !23, discriminator: 2)
!305 = distinct !DILexicalBlock(scope: !299, file: !23, line: 106, column: 32)
!306 = !DILocation(line: 106, column: 43, scope: !307)
!307 = !DILexicalBlockFile(scope: !308, file: !23, discriminator: 3)
!308 = distinct !DILexicalBlock(scope: !299, file: !23, line: 106, column: 41)
!309 = !DILocation(line: 106, column: 134, scope: !307)
!310 = !DILocation(line: 106, column: 145, scope: !311)
!311 = !DILexicalBlockFile(scope: !300, file: !23, discriminator: 4)
!312 = !DILocation(line: 107, column: 4, scope: !292)
!313 = distinct !{!313, !312}
!314 = !DILocation(line: 107, column: 12, scope: !315)
!315 = !DILexicalBlockFile(scope: !316, file: !23, discriminator: 1)
!316 = distinct !DILexicalBlock(scope: !317, file: !23, line: 107, column: 12)
!317 = distinct !DILexicalBlock(scope: !292, file: !23, line: 107, column: 6)
!318 = !DILocation(line: 107, column: 24, scope: !315)
!319 = !DILocation(line: 107, column: 33, scope: !315)
!320 = !DILocation(line: 107, column: 40, scope: !321)
!321 = !DILexicalBlockFile(scope: !322, file: !23, discriminator: 2)
!322 = distinct !DILexicalBlock(scope: !316, file: !23, line: 107, column: 38)
!323 = !DILocation(line: 107, column: 49, scope: !324)
!324 = !DILexicalBlockFile(scope: !325, file: !23, discriminator: 3)
!325 = distinct !DILexicalBlock(scope: !316, file: !23, line: 107, column: 47)
!326 = !DILocation(line: 107, column: 146, scope: !324)
!327 = !DILocation(line: 107, column: 157, scope: !328)
!328 = !DILexicalBlockFile(scope: !317, file: !23, discriminator: 4)
!329 = !DILocation(line: 108, column: 18, scope: !292)
!330 = !DILocation(line: 108, column: 4, scope: !331)
!331 = !DILexicalBlockFile(scope: !292, file: !23, discriminator: 1)
!332 = !DILocation(line: 109, column: 4, scope: !292)
!333 = !DILocation(line: 109, column: 16, scope: !292)
!334 = !DILocation(line: 109, column: 25, scope: !292)
!335 = !DILocation(line: 110, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !292, file: !23, line: 110, column: 8)
!337 = !DILocation(line: 110, column: 20, scope: !336)
!338 = !DILocation(line: 110, column: 29, scope: !336)
!339 = !DILocation(line: 110, column: 8, scope: !292)
!340 = !DILocation(line: 111, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !23, line: 110, column: 35)
!342 = !DILocation(line: 112, column: 14, scope: !341)
!343 = !DILocation(line: 112, column: 26, scope: !341)
!344 = !DILocation(line: 112, column: 7, scope: !341)
!345 = !DILocation(line: 113, column: 14, scope: !341)
!346 = !DILocation(line: 113, column: 7, scope: !341)
!347 = !DILocation(line: 114, column: 18, scope: !341)
!348 = !DILocation(line: 115, column: 4, scope: !341)
!349 = !DILocation(line: 116, column: 20, scope: !292)
!350 = !DILocation(line: 116, column: 4, scope: !331)
!351 = !DILocation(line: 117, column: 1, scope: !292)
!352 = !DILocation(line: 117, column: 1, scope: !331)
