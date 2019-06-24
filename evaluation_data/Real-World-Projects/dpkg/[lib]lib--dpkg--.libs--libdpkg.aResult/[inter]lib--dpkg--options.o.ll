; ModuleID = './[inter]lib--dpkg--options.o.i'
source_filename = "./[inter]lib--dpkg--options.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s\0A\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@printforhelp = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"%s/%s.cfg\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"/usr/local/etc/dpkg\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s/.%s.cfg\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"unknown option --%s\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"--%s option takes a value\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"--%s option does not take a value\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"unknown option -%c\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"-%c option takes a value\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"-%c option does not take a value\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"invalid integer for --%s: '%.250s'\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"invalid integer for -%c: '%.250s'\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"obsolete option '--%s'\00", align 1
@cipaction = global %struct.cmdinfo* null, align 8
@.str.17 = private unnamed_addr constant [46 x i8] c"conflicting actions -%c (--%s) and -%c (--%s)\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"%s/%s.cfg.d\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"error opening configuration directory '%s'\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"failed to open configuration file '%.255s' for reading: %s\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"unbalanced quotes in '%s'\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"unknown option '%s'\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"'%s' needs a value\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"'%s' does not take a value\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"read error in configuration file '%.255s'\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"error closing configuration file '%.255s'\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"configuration error: %s:%d: %s\00", align 1

; Function Attrs: noreturn nounwind uwtable
define void @badusage(i8*, ...) #0 !dbg !52 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !56, metadata !57), !dbg !58
  call void @llvm.dbg.declare(metadata i8** %3, metadata !59, metadata !57), !dbg !61
  store i8* null, i8** %3, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !62, metadata !57), !dbg !77
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !78
  %6 = bitcast %struct.__va_list_tag* %5 to i8*, !dbg !78
  call void @llvm.va_start(i8* %6), !dbg !78
  %7 = load i8*, i8** %2, align 8, !dbg !79
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !80
  %9 = call i32 @m_vasprintf(i8** %3, i8* %7, %struct.__va_list_tag* %8), !dbg !81
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !82
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !82
  call void @llvm.va_end(i8* %11), !dbg !82
  %12 = load i8*, i8** %3, align 8, !dbg !83
  %13 = load i8*, i8** @printforhelp, align 8, !dbg !84
  %14 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %13) #2, !dbg !84
  call void (i8*, ...) @ohshit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %12, i8* %14) #10, !dbg !85
  unreachable, !dbg !87
                                                  ; No predecessors!
  ret void, !dbg !88
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare i32 @m_vasprintf(i8**, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define void @dpkg_options_load(i8*, %struct.cmdinfo*) #6 !dbg !89 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cmdinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !92, metadata !57), !dbg !93
  store %struct.cmdinfo* %1, %struct.cmdinfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %4, metadata !94, metadata !57), !dbg !95
  call void @llvm.dbg.declare(metadata i8** %5, metadata !96, metadata !57), !dbg !97
  call void @llvm.dbg.declare(metadata i8** %6, metadata !98, metadata !57), !dbg !99
  %7 = load i8*, i8** %3, align 8, !dbg !100
  %8 = load %struct.cmdinfo*, %struct.cmdinfo** %4, align 8, !dbg !101
  call void @dpkg_options_load_dir(i8* %7, %struct.cmdinfo* %8), !dbg !102
  %9 = load i8*, i8** %3, align 8, !dbg !103
  %10 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* %9), !dbg !104
  store i8* %10, i8** %6, align 8, !dbg !105
  %11 = load i8*, i8** %6, align 8, !dbg !106
  %12 = load %struct.cmdinfo*, %struct.cmdinfo** %4, align 8, !dbg !107
  call void @dpkg_options_load_file(i8* %11, %struct.cmdinfo* %12), !dbg !108
  %13 = load i8*, i8** %6, align 8, !dbg !109
  call void @free(i8* %13) #2, !dbg !110
  %14 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #2, !dbg !111
  store i8* %14, i8** %5, align 8, !dbg !112
  %15 = load i8*, i8** %5, align 8, !dbg !113
  %16 = icmp ne i8* %15, null, !dbg !115
  br i1 %16, label %17, label %24, !dbg !116

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %5, align 8, !dbg !117
  %19 = load i8*, i8** %3, align 8, !dbg !119
  %20 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* %18, i8* %19), !dbg !120
  store i8* %20, i8** %6, align 8, !dbg !121
  %21 = load i8*, i8** %6, align 8, !dbg !122
  %22 = load %struct.cmdinfo*, %struct.cmdinfo** %4, align 8, !dbg !123
  call void @dpkg_options_load_file(i8* %21, %struct.cmdinfo* %22), !dbg !124
  %23 = load i8*, i8** %6, align 8, !dbg !125
  call void @free(i8* %23) #2, !dbg !126
  br label %24, !dbg !127

; <label>:24:                                     ; preds = %17, %2
  ret void, !dbg !128
}

; Function Attrs: nounwind uwtable
define internal void @dpkg_options_load_dir(i8*, %struct.cmdinfo*) #6 !dbg !129 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cmdinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dirent**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !130, metadata !57), !dbg !131
  store %struct.cmdinfo* %1, %struct.cmdinfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %4, metadata !132, metadata !57), !dbg !133
  call void @llvm.dbg.declare(metadata i8** %5, metadata !134, metadata !57), !dbg !135
  call void @llvm.dbg.declare(metadata %struct.dirent*** %6, metadata !136, metadata !57), !dbg !157
  call void @llvm.dbg.declare(metadata i32* %7, metadata !158, metadata !57), !dbg !159
  call void @llvm.dbg.declare(metadata i32* %8, metadata !160, metadata !57), !dbg !161
  %10 = load i8*, i8** %3, align 8, !dbg !162
  %11 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* %10), !dbg !163
  store i8* %11, i8** %5, align 8, !dbg !164
  %12 = load i8*, i8** %5, align 8, !dbg !165
  %13 = call i32 @scandir(i8* %12, %struct.dirent*** %6, i32 (%struct.dirent*)* @valid_config_filename, i32 (%struct.dirent**, %struct.dirent**)* @alphasort), !dbg !166
  store i32 %13, i32* %7, align 4, !dbg !167
  %14 = load i32, i32* %7, align 4, !dbg !168
  %15 = icmp slt i32 %14, 0, !dbg !170
  br i1 %15, label %16, label %25, !dbg !171

; <label>:16:                                     ; preds = %2
  %17 = call i32* @__errno_location() #1, !dbg !172
  %18 = load i32, i32* %17, align 4, !dbg !175
  %19 = icmp eq i32 %18, 2, !dbg !176
  br i1 %19, label %20, label %22, !dbg !177

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !178
  call void @free(i8* %21) #2, !dbg !180
  br label %56, !dbg !181

; <label>:22:                                     ; preds = %16
  %23 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0)) #2, !dbg !182
  %24 = load i8*, i8** %5, align 8, !dbg !183
  call void (i8*, ...) @ohshite(i8* %23, i8* %24) #10, !dbg !184
  unreachable, !dbg !186

; <label>:25:                                     ; preds = %2
  store i32 0, i32* %8, align 4, !dbg !187
  br label %26, !dbg !189

; <label>:26:                                     ; preds = %49, %25
  %27 = load i32, i32* %8, align 4, !dbg !190
  %28 = load i32, i32* %7, align 4, !dbg !193
  %29 = icmp slt i32 %27, %28, !dbg !194
  br i1 %29, label %30, label %52, !dbg !195

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata i8** %9, metadata !196, metadata !57), !dbg !198
  %31 = load i8*, i8** %5, align 8, !dbg !199
  %32 = load i32, i32* %8, align 4, !dbg !200
  %33 = sext i32 %32 to i64, !dbg !201
  %34 = load %struct.dirent**, %struct.dirent*** %6, align 8, !dbg !201
  %35 = getelementptr inbounds %struct.dirent*, %struct.dirent** %34, i64 %33, !dbg !201
  %36 = load %struct.dirent*, %struct.dirent** %35, align 8, !dbg !201
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 4, !dbg !202
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %37, i32 0, i32 0, !dbg !201
  %39 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* %31, i8* %38), !dbg !203
  store i8* %39, i8** %9, align 8, !dbg !204
  %40 = load i8*, i8** %9, align 8, !dbg !205
  %41 = load %struct.cmdinfo*, %struct.cmdinfo** %4, align 8, !dbg !206
  call void @dpkg_options_load_file(i8* %40, %struct.cmdinfo* %41), !dbg !207
  %42 = load i32, i32* %8, align 4, !dbg !208
  %43 = sext i32 %42 to i64, !dbg !209
  %44 = load %struct.dirent**, %struct.dirent*** %6, align 8, !dbg !209
  %45 = getelementptr inbounds %struct.dirent*, %struct.dirent** %44, i64 %43, !dbg !209
  %46 = load %struct.dirent*, %struct.dirent** %45, align 8, !dbg !209
  %47 = bitcast %struct.dirent* %46 to i8*, !dbg !209
  call void @free(i8* %47) #2, !dbg !210
  %48 = load i8*, i8** %9, align 8, !dbg !211
  call void @free(i8* %48) #2, !dbg !212
  br label %49, !dbg !213

; <label>:49:                                     ; preds = %30
  %50 = load i32, i32* %8, align 4, !dbg !214
  %51 = add nsw i32 %50, 1, !dbg !214
  store i32 %51, i32* %8, align 4, !dbg !214
  br label %26, !dbg !216, !llvm.loop !217

; <label>:52:                                     ; preds = %26
  %53 = load i8*, i8** %5, align 8, !dbg !219
  call void @free(i8* %53) #2, !dbg !220
  %54 = load %struct.dirent**, %struct.dirent*** %6, align 8, !dbg !221
  %55 = bitcast %struct.dirent** %54 to i8*, !dbg !221
  call void @free(i8* %55) #2, !dbg !222
  br label %56, !dbg !223

; <label>:56:                                     ; preds = %52, %20
  ret void, !dbg !224
}

declare i8* @str_fmt(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @dpkg_options_load_file(i8*, %struct.cmdinfo*) #6 !dbg !226 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cmdinfo*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cmdinfo*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !227, metadata !57), !dbg !228
  store %struct.cmdinfo* %1, %struct.cmdinfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %4, metadata !229, metadata !57), !dbg !230
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !231, metadata !57), !dbg !284
  call void @llvm.dbg.declare(metadata i32* %6, metadata !285, metadata !57), !dbg !286
  store i32 0, i32* %6, align 4, !dbg !286
  call void @llvm.dbg.declare(metadata [1024 x i8]* %7, metadata !287, metadata !57), !dbg !291
  %11 = load i8*, i8** %3, align 8, !dbg !292
  %12 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)), !dbg !293
  store %struct._IO_FILE* %12, %struct._IO_FILE** %5, align 8, !dbg !294
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !295
  %14 = icmp ne %struct._IO_FILE* %13, null, !dbg !295
  br i1 %14, label %26, label %15, !dbg !297

; <label>:15:                                     ; preds = %2
  %16 = call i32* @__errno_location() #1, !dbg !298
  %17 = load i32, i32* %16, align 4, !dbg !301
  %18 = icmp eq i32 %17, 2, !dbg !302
  br i1 %18, label %19, label %20, !dbg !303

; <label>:19:                                     ; preds = %15
  br label %272, !dbg !304

; <label>:20:                                     ; preds = %15
  %21 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.22, i32 0, i32 0)) #2, !dbg !305
  %22 = load i8*, i8** %3, align 8, !dbg !306
  %23 = call i32* @__errno_location() #1, !dbg !307
  %24 = load i32, i32* %23, align 4, !dbg !308
  %25 = call i8* @strerror(i32 %24) #2, !dbg !309
  call void (i8*, ...) @warning(i8* %21, i8* %22, i8* %25), !dbg !311
  br label %272, !dbg !312

; <label>:26:                                     ; preds = %2
  br label %27, !dbg !313

; <label>:27:                                     ; preds = %257, %67, %26
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !314
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !316
  %30 = call i8* @fgets(i8* %28, i32 1024, %struct._IO_FILE* %29), !dbg !317
  %31 = icmp ne i8* %30, null, !dbg !318
  br i1 %31, label %32, label %258, !dbg !318

; <label>:32:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata i8** %8, metadata !319, metadata !57), !dbg !321
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %9, metadata !322, metadata !57), !dbg !323
  call void @llvm.dbg.declare(metadata i32* %10, metadata !324, metadata !57), !dbg !325
  %33 = load i32, i32* %6, align 4, !dbg !326
  %34 = add nsw i32 %33, 1, !dbg !326
  store i32 %34, i32* %6, align 4, !dbg !326
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !327
  %36 = call i64 @strlen(i8* %35) #11, !dbg !328
  %37 = trunc i64 %36 to i32, !dbg !328
  store i32 %37, i32* %10, align 4, !dbg !329
  br label %38, !dbg !330

; <label>:38:                                     ; preds = %51, %32
  %39 = load i32, i32* %10, align 4, !dbg !331
  %40 = icmp ne i32 %39, 0, !dbg !331
  br i1 %40, label %41, label %49, !dbg !333

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %10, align 4, !dbg !334
  %43 = sub nsw i32 %42, 1, !dbg !336
  %44 = sext i32 %43 to i64, !dbg !337
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %44, !dbg !337
  %46 = load i8, i8* %45, align 1, !dbg !337
  %47 = sext i8 %46 to i32, !dbg !337
  %48 = call zeroext i1 @c_isspace(i32 %47), !dbg !338
  br label %49

; <label>:49:                                     ; preds = %41, %38
  %50 = phi i1 [ false, %38 ], [ %48, %41 ]
  br i1 %50, label %51, label %54, !dbg !339

; <label>:51:                                     ; preds = %49
  %52 = load i32, i32* %10, align 4, !dbg !341
  %53 = add nsw i32 %52, -1, !dbg !341
  store i32 %53, i32* %10, align 4, !dbg !341
  br label %38, !dbg !342, !llvm.loop !344

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %10, align 4, !dbg !345
  %56 = sext i32 %55 to i64, !dbg !346
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %56, !dbg !346
  store i8 0, i8* %57, align 1, !dbg !347
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !348
  %59 = load i8, i8* %58, align 16, !dbg !348
  %60 = sext i8 %59 to i32, !dbg !348
  %61 = icmp eq i32 %60, 35, !dbg !350
  br i1 %61, label %67, label %62, !dbg !351

; <label>:62:                                     ; preds = %54
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !352
  %64 = load i8, i8* %63, align 16, !dbg !352
  %65 = sext i8 %64 to i32, !dbg !352
  %66 = icmp eq i32 %65, 0, !dbg !354
  br i1 %66, label %67, label %68, !dbg !355

; <label>:67:                                     ; preds = %62, %54
  br label %27, !dbg !356, !llvm.loop !357

; <label>:68:                                     ; preds = %62
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !358
  store i8* %69, i8** %8, align 8, !dbg !360
  br label %70, !dbg !361

; <label>:70:                                     ; preds = %83, %68
  %71 = load i8*, i8** %8, align 8, !dbg !362
  %72 = load i8, i8* %71, align 1, !dbg !365
  %73 = sext i8 %72 to i32, !dbg !365
  %74 = call zeroext i1 @c_isalnum(i32 %73), !dbg !366
  br i1 %74, label %80, label %75, !dbg !367

; <label>:75:                                     ; preds = %70
  %76 = load i8*, i8** %8, align 8, !dbg !368
  %77 = load i8, i8* %76, align 1, !dbg !370
  %78 = sext i8 %77 to i32, !dbg !370
  %79 = icmp eq i32 %78, 45, !dbg !371
  br label %80, !dbg !372

; <label>:80:                                     ; preds = %75, %70
  %81 = phi i1 [ true, %70 ], [ %79, %75 ]
  br i1 %81, label %82, label %86, !dbg !373

; <label>:82:                                     ; preds = %80
  br label %83, !dbg !375

; <label>:83:                                     ; preds = %82
  %84 = load i8*, i8** %8, align 8, !dbg !377
  %85 = getelementptr inbounds i8, i8* %84, i32 1, !dbg !377
  store i8* %85, i8** %8, align 8, !dbg !377
  br label %70, !dbg !379, !llvm.loop !380

; <label>:86:                                     ; preds = %80
  %87 = load i8*, i8** %8, align 8, !dbg !382
  %88 = load i8, i8* %87, align 1, !dbg !384
  %89 = sext i8 %88 to i32, !dbg !384
  %90 = icmp eq i32 %89, 0, !dbg !385
  br i1 %90, label %91, label %92, !dbg !386

; <label>:91:                                     ; preds = %86
  store i8* null, i8** %8, align 8, !dbg !387
  br label %122, !dbg !388

; <label>:92:                                     ; preds = %86
  %93 = load i8*, i8** %8, align 8, !dbg !389
  %94 = getelementptr inbounds i8, i8* %93, i32 1, !dbg !389
  store i8* %94, i8** %8, align 8, !dbg !389
  store i8 0, i8* %93, align 1, !dbg !391
  %95 = load i8*, i8** %8, align 8, !dbg !392
  %96 = load i8, i8* %95, align 1, !dbg !394
  %97 = sext i8 %96 to i32, !dbg !394
  %98 = icmp eq i32 %97, 61, !dbg !395
  br i1 %98, label %99, label %102, !dbg !396

; <label>:99:                                     ; preds = %92
  %100 = load i8*, i8** %8, align 8, !dbg !397
  %101 = getelementptr inbounds i8, i8* %100, i32 1, !dbg !397
  store i8* %101, i8** %8, align 8, !dbg !397
  br label %102, !dbg !399

; <label>:102:                                    ; preds = %99, %92
  br label %103, !dbg !400

; <label>:103:                                    ; preds = %108, %102
  %104 = load i8*, i8** %8, align 8, !dbg !401
  %105 = load i8, i8* %104, align 1, !dbg !403
  %106 = sext i8 %105 to i32, !dbg !403
  %107 = call zeroext i1 @c_isspace(i32 %106), !dbg !404
  br i1 %107, label %108, label %111, !dbg !405

; <label>:108:                                    ; preds = %103
  %109 = load i8*, i8** %8, align 8, !dbg !406
  %110 = getelementptr inbounds i8, i8* %109, i32 1, !dbg !406
  store i8* %110, i8** %8, align 8, !dbg !406
  br label %103, !dbg !407, !llvm.loop !409

; <label>:111:                                    ; preds = %103
  %112 = load i8*, i8** %8, align 8, !dbg !410
  %113 = call i8* @str_strip_quotes(i8* %112), !dbg !411
  store i8* %113, i8** %8, align 8, !dbg !412
  %114 = load i8*, i8** %8, align 8, !dbg !413
  %115 = icmp eq i8* %114, null, !dbg !415
  br i1 %115, label %116, label %121, !dbg !416

; <label>:116:                                    ; preds = %111
  %117 = load i8*, i8** %3, align 8, !dbg !417
  %118 = load i32, i32* %6, align 4, !dbg !418
  %119 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0)) #2, !dbg !419
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !420
  call void (i8*, i32, i8*, ...) @config_error(i8* %117, i32 %118, i8* %119, i8* %120) #10, !dbg !421
  unreachable, !dbg !423

; <label>:121:                                    ; preds = %111
  br label %122

; <label>:122:                                    ; preds = %121, %91
  %123 = load %struct.cmdinfo*, %struct.cmdinfo** %4, align 8, !dbg !424
  store %struct.cmdinfo* %123, %struct.cmdinfo** %9, align 8, !dbg !426
  br label %124, !dbg !427

; <label>:124:                                    ; preds = %187, %122
  %125 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !428
  %126 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %125, i32 0, i32 0, !dbg !431
  %127 = load i8*, i8** %126, align 8, !dbg !431
  %128 = icmp ne i8* %127, null, !dbg !428
  br i1 %128, label %135, label %129, !dbg !432

; <label>:129:                                    ; preds = %124
  %130 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !433
  %131 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %130, i32 0, i32 1, !dbg !435
  %132 = load i8, i8* %131, align 8, !dbg !435
  %133 = sext i8 %132 to i32, !dbg !433
  %134 = icmp ne i32 %133, 0, !dbg !436
  br label %135, !dbg !436

; <label>:135:                                    ; preds = %129, %124
  %136 = phi i1 [ true, %124 ], [ %134, %129 ]
  br i1 %136, label %137, label %190, !dbg !437

; <label>:137:                                    ; preds = %135
  %138 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !439
  %139 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %138, i32 0, i32 0, !dbg !442
  %140 = load i8*, i8** %139, align 8, !dbg !442
  %141 = icmp ne i8* %140, null, !dbg !439
  br i1 %141, label %143, label %142, !dbg !443

; <label>:142:                                    ; preds = %137
  br label %187, !dbg !444

; <label>:143:                                    ; preds = %137
  %144 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !446
  %145 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %144, i32 0, i32 0, !dbg !448
  %146 = load i8*, i8** %145, align 8, !dbg !448
  %147 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !449
  %148 = call i32 @strcmp(i8* %146, i8* %147) #11, !dbg !450
  %149 = icmp eq i32 %148, 0, !dbg !451
  br i1 %149, label %150, label %151, !dbg !452

; <label>:150:                                    ; preds = %143
  br label %190, !dbg !453

; <label>:151:                                    ; preds = %143
  %152 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !454
  %153 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %152, i32 0, i32 0, !dbg !455
  %154 = load i8*, i8** %153, align 8, !dbg !455
  %155 = call i64 @strlen(i8* %154) #11, !dbg !456
  %156 = trunc i64 %155 to i32, !dbg !456
  store i32 %156, i32* %10, align 4, !dbg !457
  %157 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !458
  %158 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %157, i32 0, i32 2, !dbg !460
  %159 = load i32, i32* %158, align 4, !dbg !460
  %160 = icmp eq i32 %159, 2, !dbg !461
  br i1 %160, label %161, label %186, !dbg !462

; <label>:161:                                    ; preds = %151
  %162 = load i32, i32* %10, align 4, !dbg !463
  %163 = sext i32 %162 to i64, !dbg !465
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %163, !dbg !465
  %165 = load i8, i8* %164, align 1, !dbg !465
  %166 = sext i8 %165 to i32, !dbg !465
  %167 = icmp eq i32 %166, 45, !dbg !466
  br i1 %167, label %168, label %186, !dbg !467

; <label>:168:                                    ; preds = %161
  %169 = load i8*, i8** %8, align 8, !dbg !468
  %170 = icmp ne i8* %169, null, !dbg !468
  br i1 %170, label %186, label %171, !dbg !469

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !470
  %173 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !471
  %174 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %173, i32 0, i32 0, !dbg !472
  %175 = load i8*, i8** %174, align 8, !dbg !472
  %176 = load i32, i32* %10, align 4, !dbg !473
  %177 = sext i32 %176 to i64, !dbg !473
  %178 = call i32 @strncmp(i8* %172, i8* %175, i64 %177) #11, !dbg !474
  %179 = icmp eq i32 %178, 0, !dbg !475
  br i1 %179, label %180, label %186, !dbg !476

; <label>:180:                                    ; preds = %171
  %181 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !478
  %182 = load i32, i32* %10, align 4, !dbg !480
  %183 = sext i32 %182 to i64, !dbg !481
  %184 = getelementptr inbounds i8, i8* %181, i64 %183, !dbg !481
  %185 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !482
  store i8* %185, i8** %8, align 8, !dbg !483
  br label %190, !dbg !484

; <label>:186:                                    ; preds = %171, %168, %161, %151
  br label %187, !dbg !485

; <label>:187:                                    ; preds = %186, %142
  %188 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !486
  %189 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %188, i32 1, !dbg !486
  store %struct.cmdinfo* %189, %struct.cmdinfo** %9, align 8, !dbg !486
  br label %124, !dbg !488, !llvm.loop !489

; <label>:190:                                    ; preds = %180, %150, %135
  %191 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !491
  %192 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %191, i32 0, i32 0, !dbg !493
  %193 = load i8*, i8** %192, align 8, !dbg !493
  %194 = icmp ne i8* %193, null, !dbg !491
  br i1 %194, label %200, label %195, !dbg !494

; <label>:195:                                    ; preds = %190
  %196 = load i8*, i8** %3, align 8, !dbg !495
  %197 = load i32, i32* %6, align 4, !dbg !496
  %198 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #2, !dbg !497
  %199 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !498
  call void (i8*, i32, i8*, ...) @config_error(i8* %196, i32 %197, i8* %198, i8* %199) #10, !dbg !499
  unreachable, !dbg !501

; <label>:200:                                    ; preds = %190
  %201 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !502
  %202 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %201, i32 0, i32 2, !dbg !504
  %203 = load i32, i32* %202, align 4, !dbg !504
  %204 = icmp ne i32 %203, 0, !dbg !502
  br i1 %204, label %205, label %231, !dbg !505

; <label>:205:                                    ; preds = %200
  %206 = load i8*, i8** %8, align 8, !dbg !506
  %207 = icmp ne i8* %206, null, !dbg !506
  br i1 %207, label %213, label %208, !dbg !509

; <label>:208:                                    ; preds = %205
  %209 = load i8*, i8** %3, align 8, !dbg !510
  %210 = load i32, i32* %6, align 4, !dbg !511
  %211 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0)) #2, !dbg !512
  %212 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !513
  call void (i8*, i32, i8*, ...) @config_error(i8* %209, i32 %210, i8* %211, i8* %212) #10, !dbg !514
  unreachable, !dbg !516

; <label>:213:                                    ; preds = %205
  %214 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !517
  %215 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %214, i32 0, i32 5, !dbg !519
  %216 = load void (%struct.cmdinfo*, i8*)*, void (%struct.cmdinfo*, i8*)** %215, align 8, !dbg !519
  %217 = icmp ne void (%struct.cmdinfo*, i8*)* %216, null, !dbg !517
  br i1 %217, label %218, label %224, !dbg !520

; <label>:218:                                    ; preds = %213
  %219 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !521
  %220 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %219, i32 0, i32 5, !dbg !523
  %221 = load void (%struct.cmdinfo*, i8*)*, void (%struct.cmdinfo*, i8*)** %220, align 8, !dbg !523
  %222 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !524
  %223 = load i8*, i8** %8, align 8, !dbg !525
  call void %221(%struct.cmdinfo* %222, i8* %223), !dbg !521
  br label %230, !dbg !521

; <label>:224:                                    ; preds = %213
  %225 = load i8*, i8** %8, align 8, !dbg !526
  %226 = call i8* @m_strdup(i8* %225), !dbg !527
  %227 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !528
  %228 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %227, i32 0, i32 4, !dbg !529
  %229 = load i8**, i8*** %228, align 8, !dbg !529
  store i8* %226, i8** %229, align 8, !dbg !530
  br label %230

; <label>:230:                                    ; preds = %224, %218
  br label %257, !dbg !531

; <label>:231:                                    ; preds = %200
  %232 = load i8*, i8** %8, align 8, !dbg !532
  %233 = icmp ne i8* %232, null, !dbg !532
  br i1 %233, label %234, label %239, !dbg !535

; <label>:234:                                    ; preds = %231
  %235 = load i8*, i8** %3, align 8, !dbg !536
  %236 = load i32, i32* %6, align 4, !dbg !537
  %237 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0)) #2, !dbg !538
  %238 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !539
  call void (i8*, i32, i8*, ...) @config_error(i8* %235, i32 %236, i8* %237, i8* %238) #10, !dbg !540
  unreachable, !dbg !542

; <label>:239:                                    ; preds = %231
  %240 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !543
  %241 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %240, i32 0, i32 5, !dbg !545
  %242 = load void (%struct.cmdinfo*, i8*)*, void (%struct.cmdinfo*, i8*)** %241, align 8, !dbg !545
  %243 = icmp ne void (%struct.cmdinfo*, i8*)* %242, null, !dbg !543
  br i1 %243, label %244, label %249, !dbg !546

; <label>:244:                                    ; preds = %239
  %245 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !547
  %246 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %245, i32 0, i32 5, !dbg !549
  %247 = load void (%struct.cmdinfo*, i8*)*, void (%struct.cmdinfo*, i8*)** %246, align 8, !dbg !549
  %248 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !550
  call void %247(%struct.cmdinfo* %248, i8* null), !dbg !547
  br label %256, !dbg !547

; <label>:249:                                    ; preds = %239
  %250 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !551
  %251 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %250, i32 0, i32 6, !dbg !552
  %252 = load i32, i32* %251, align 8, !dbg !552
  %253 = load %struct.cmdinfo*, %struct.cmdinfo** %9, align 8, !dbg !553
  %254 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %253, i32 0, i32 3, !dbg !554
  %255 = load i32*, i32** %254, align 8, !dbg !554
  store i32 %252, i32* %255, align 4, !dbg !555
  br label %256

; <label>:256:                                    ; preds = %249, %244
  br label %257

; <label>:257:                                    ; preds = %256, %230
  br label %27, !dbg !556, !llvm.loop !357

; <label>:258:                                    ; preds = %27
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !558
  %260 = call i32 @ferror(%struct._IO_FILE* %259) #2, !dbg !560
  %261 = icmp ne i32 %260, 0, !dbg !560
  br i1 %261, label %262, label %265, !dbg !561

; <label>:262:                                    ; preds = %258
  %263 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0)) #2, !dbg !562
  %264 = load i8*, i8** %3, align 8, !dbg !563
  call void (i8*, ...) @ohshite(i8* %263, i8* %264) #10, !dbg !564
  unreachable, !dbg !566

; <label>:265:                                    ; preds = %258
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !567
  %267 = call i32 @fclose(%struct._IO_FILE* %266), !dbg !569
  %268 = icmp ne i32 %267, 0, !dbg !569
  br i1 %268, label %269, label %272, !dbg !570

; <label>:269:                                    ; preds = %265
  %270 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0)) #2, !dbg !571
  %271 = load i8*, i8** %3, align 8, !dbg !572
  call void (i8*, ...) @ohshite(i8* %270, i8* %271) #10, !dbg !573
  unreachable, !dbg !575

; <label>:272:                                    ; preds = %19, %20, %265
  ret void, !dbg !576
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind
declare i8* @getenv(i8*) #5

; Function Attrs: nounwind uwtable
define void @dpkg_options_parse(i8***, %struct.cmdinfo*, i8*) #6 !dbg !577 {
  %4 = alloca i8***, align 8
  %5 = alloca %struct.cmdinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cmdinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8*** %0, i8**** %4, align 8
  call void @llvm.dbg.declare(metadata i8**** %4, metadata !581, metadata !57), !dbg !582
  store %struct.cmdinfo* %1, %struct.cmdinfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %5, metadata !583, metadata !57), !dbg !584
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !585, metadata !57), !dbg !586
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %7, metadata !587, metadata !57), !dbg !588
  call void @llvm.dbg.declare(metadata i8** %8, metadata !589, metadata !57), !dbg !590
  call void @llvm.dbg.declare(metadata i8** %9, metadata !591, metadata !57), !dbg !592
  call void @llvm.dbg.declare(metadata i32* %10, metadata !593, metadata !57), !dbg !594
  %11 = load i8*, i8** %6, align 8, !dbg !595
  store i8* %11, i8** @printforhelp, align 8, !dbg !596
  %12 = load i8***, i8**** %4, align 8, !dbg !597
  %13 = load i8**, i8*** %12, align 8, !dbg !598
  %14 = getelementptr inbounds i8*, i8** %13, i32 1, !dbg !598
  store i8** %14, i8*** %12, align 8, !dbg !598
  br label %15, !dbg !599

; <label>:15:                                     ; preds = %315, %3
  %16 = load i8***, i8**** %4, align 8, !dbg !600
  %17 = load i8**, i8*** %16, align 8, !dbg !602
  %18 = load i8*, i8** %17, align 8, !dbg !603
  store i8* %18, i8** %8, align 8, !dbg !604
  %19 = icmp ne i8* %18, null, !dbg !604
  br i1 %19, label %20, label %32, !dbg !605

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %8, align 8, !dbg !606
  %22 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !606
  %23 = load i8, i8* %22, align 1, !dbg !606
  %24 = sext i8 %23 to i32, !dbg !606
  %25 = icmp eq i32 %24, 45, !dbg !608
  br i1 %25, label %26, label %32, !dbg !609

; <label>:26:                                     ; preds = %20
  %27 = load i8*, i8** %8, align 8, !dbg !610
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !610
  %29 = load i8, i8* %28, align 1, !dbg !610
  %30 = sext i8 %29 to i32, !dbg !610
  %31 = icmp ne i32 %30, 0, !dbg !612
  br label %32

; <label>:32:                                     ; preds = %26, %20, %15
  %33 = phi i1 [ false, %20 ], [ false, %15 ], [ %31, %26 ]
  br i1 %33, label %34, label %316, !dbg !613

; <label>:34:                                     ; preds = %32
  %35 = load i8***, i8**** %4, align 8, !dbg !615
  %36 = load i8**, i8*** %35, align 8, !dbg !617
  %37 = getelementptr inbounds i8*, i8** %36, i32 1, !dbg !617
  store i8** %37, i8*** %35, align 8, !dbg !617
  %38 = load i8*, i8** %8, align 8, !dbg !618
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #11, !dbg !620
  %40 = icmp eq i32 %39, 0, !dbg !621
  br i1 %40, label %41, label %42, !dbg !622

; <label>:41:                                     ; preds = %34
  br label %316, !dbg !623

; <label>:42:                                     ; preds = %34
  %43 = load i8*, i8** %8, align 8, !dbg !624
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !624
  store i8* %44, i8** %8, align 8, !dbg !624
  %45 = load i8, i8* %44, align 1, !dbg !626
  %46 = sext i8 %45 to i32, !dbg !626
  %47 = icmp eq i32 %46, 45, !dbg !627
  br i1 %47, label %48, label %189, !dbg !628

; <label>:48:                                     ; preds = %42
  %49 = load i8*, i8** %8, align 8, !dbg !629
  %50 = getelementptr inbounds i8, i8* %49, i32 1, !dbg !629
  store i8* %50, i8** %8, align 8, !dbg !629
  store i8* null, i8** %9, align 8, !dbg !631
  %51 = load %struct.cmdinfo*, %struct.cmdinfo** %5, align 8, !dbg !632
  store %struct.cmdinfo* %51, %struct.cmdinfo** %7, align 8, !dbg !634
  br label %52, !dbg !635

; <label>:52:                                     ; preds = %113, %48
  %53 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !636
  %54 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %53, i32 0, i32 0, !dbg !638
  %55 = load i8*, i8** %54, align 8, !dbg !638
  %56 = icmp ne i8* %55, null, !dbg !636
  br i1 %56, label %63, label %57, !dbg !639

; <label>:57:                                     ; preds = %52
  %58 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !640
  %59 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %58, i32 0, i32 1, !dbg !642
  %60 = load i8, i8* %59, align 8, !dbg !642
  %61 = sext i8 %60 to i32, !dbg !640
  %62 = icmp ne i32 %61, 0, !dbg !643
  br label %63, !dbg !643

; <label>:63:                                     ; preds = %57, %52
  %64 = phi i1 [ true, %52 ], [ %62, %57 ]
  br i1 %64, label %65, label %116, !dbg !644

; <label>:65:                                     ; preds = %63
  %66 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !646
  %67 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %66, i32 0, i32 0, !dbg !649
  %68 = load i8*, i8** %67, align 8, !dbg !649
  %69 = icmp ne i8* %68, null, !dbg !646
  br i1 %69, label %71, label %70, !dbg !650

; <label>:70:                                     ; preds = %65
  br label %113, !dbg !651

; <label>:71:                                     ; preds = %65
  %72 = load i8*, i8** %8, align 8, !dbg !653
  %73 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !655
  %74 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %73, i32 0, i32 0, !dbg !656
  %75 = load i8*, i8** %74, align 8, !dbg !656
  %76 = call i32 @strcmp(i8* %72, i8* %75) #11, !dbg !657
  %77 = icmp eq i32 %76, 0, !dbg !658
  br i1 %77, label %78, label %79, !dbg !659

; <label>:78:                                     ; preds = %71
  br label %116, !dbg !660

; <label>:79:                                     ; preds = %71
  %80 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !661
  %81 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %80, i32 0, i32 0, !dbg !662
  %82 = load i8*, i8** %81, align 8, !dbg !662
  %83 = call i64 @strlen(i8* %82) #11, !dbg !663
  %84 = trunc i64 %83 to i32, !dbg !663
  store i32 %84, i32* %10, align 4, !dbg !664
  %85 = load i8*, i8** %8, align 8, !dbg !665
  %86 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !667
  %87 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %86, i32 0, i32 0, !dbg !668
  %88 = load i8*, i8** %87, align 8, !dbg !668
  %89 = load i32, i32* %10, align 4, !dbg !669
  %90 = sext i32 %89 to i64, !dbg !669
  %91 = call i32 @strncmp(i8* %85, i8* %88, i64 %90) #11, !dbg !670
  %92 = icmp eq i32 %91, 0, !dbg !671
  br i1 %92, label %93, label %112, !dbg !672

; <label>:93:                                     ; preds = %79
  %94 = load i32, i32* %10, align 4, !dbg !673
  %95 = sext i32 %94 to i64, !dbg !674
  %96 = load i8*, i8** %8, align 8, !dbg !674
  %97 = getelementptr inbounds i8, i8* %96, i64 %95, !dbg !674
  %98 = load i8, i8* %97, align 1, !dbg !674
  %99 = sext i8 %98 to i32, !dbg !674
  %100 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !675
  %101 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %100, i32 0, i32 2, !dbg !676
  %102 = load i32, i32* %101, align 4, !dbg !676
  %103 = icmp eq i32 %102, 2, !dbg !677
  %104 = select i1 %103, i32 45, i32 61, !dbg !678
  %105 = icmp eq i32 %99, %104, !dbg !679
  br i1 %105, label %106, label %112, !dbg !680

; <label>:106:                                    ; preds = %93
  %107 = load i8*, i8** %8, align 8, !dbg !682
  %108 = load i32, i32* %10, align 4, !dbg !685
  %109 = sext i32 %108 to i64, !dbg !686
  %110 = getelementptr inbounds i8, i8* %107, i64 %109, !dbg !686
  %111 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !687
  store i8* %111, i8** %9, align 8, !dbg !688
  br label %116, !dbg !689

; <label>:112:                                    ; preds = %93, %79
  br label %113, !dbg !690

; <label>:113:                                    ; preds = %112, %70
  %114 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !691
  %115 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %114, i32 1, !dbg !691
  store %struct.cmdinfo* %115, %struct.cmdinfo** %7, align 8, !dbg !691
  br label %52, !dbg !692, !llvm.loop !694

; <label>:116:                                    ; preds = %106, %78, %63
  %117 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !696
  %118 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %117, i32 0, i32 0, !dbg !698
  %119 = load i8*, i8** %118, align 8, !dbg !698
  %120 = icmp ne i8* %119, null, !dbg !696
  br i1 %120, label %124, label %121, !dbg !699

; <label>:121:                                    ; preds = %116
  %122 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)) #2, !dbg !700
  %123 = load i8*, i8** %8, align 8, !dbg !702
  call void (i8*, ...) @badusage(i8* %122, i8* %123) #10, !dbg !703
  unreachable, !dbg !705

; <label>:124:                                    ; preds = %116
  %125 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !706
  %126 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %125, i32 0, i32 2, !dbg !708
  %127 = load i32, i32* %126, align 4, !dbg !708
  %128 = icmp ne i32 %127, 0, !dbg !706
  br i1 %128, label %129, label %162, !dbg !709

; <label>:129:                                    ; preds = %124
  %130 = load i8*, i8** %9, align 8, !dbg !710
  %131 = icmp ne i8* %130, null, !dbg !710
  br i1 %131, label %145, label %132, !dbg !713

; <label>:132:                                    ; preds = %129
  %133 = load i8***, i8**** %4, align 8, !dbg !714
  %134 = load i8**, i8*** %133, align 8, !dbg !716
  %135 = getelementptr inbounds i8*, i8** %134, i32 1, !dbg !716
  store i8** %135, i8*** %133, align 8, !dbg !716
  %136 = load i8*, i8** %134, align 8, !dbg !717
  store i8* %136, i8** %9, align 8, !dbg !718
  %137 = load i8*, i8** %9, align 8, !dbg !719
  %138 = icmp ne i8* %137, null, !dbg !719
  br i1 %138, label %144, label %139, !dbg !721

; <label>:139:                                    ; preds = %132
  %140 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)) #2, !dbg !722
  %141 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !724
  %142 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %141, i32 0, i32 0, !dbg !725
  %143 = load i8*, i8** %142, align 8, !dbg !725
  call void (i8*, ...) @badusage(i8* %140, i8* %143) #10, !dbg !726
  unreachable, !dbg !728

; <label>:144:                                    ; preds = %132
  br label %145, !dbg !729

; <label>:145:                                    ; preds = %144, %129
  %146 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !730
  %147 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %146, i32 0, i32 5, !dbg !732
  %148 = load void (%struct.cmdinfo*, i8*)*, void (%struct.cmdinfo*, i8*)** %147, align 8, !dbg !732
  %149 = icmp ne void (%struct.cmdinfo*, i8*)* %148, null, !dbg !730
  br i1 %149, label %150, label %156, !dbg !733

; <label>:150:                                    ; preds = %145
  %151 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !734
  %152 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %151, i32 0, i32 5, !dbg !736
  %153 = load void (%struct.cmdinfo*, i8*)*, void (%struct.cmdinfo*, i8*)** %152, align 8, !dbg !736
  %154 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !737
  %155 = load i8*, i8** %9, align 8, !dbg !738
  call void %153(%struct.cmdinfo* %154, i8* %155), !dbg !734
  br label %161, !dbg !734

; <label>:156:                                    ; preds = %145
  %157 = load i8*, i8** %9, align 8, !dbg !739
  %158 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !740
  %159 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %158, i32 0, i32 4, !dbg !741
  %160 = load i8**, i8*** %159, align 8, !dbg !741
  store i8* %157, i8** %160, align 8, !dbg !742
  br label %161

; <label>:161:                                    ; preds = %156, %150
  br label %188, !dbg !743

; <label>:162:                                    ; preds = %124
  %163 = load i8*, i8** %9, align 8, !dbg !744
  %164 = icmp ne i8* %163, null, !dbg !744
  br i1 %164, label %165, label %170, !dbg !747

; <label>:165:                                    ; preds = %162
  %166 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0)) #2, !dbg !748
  %167 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !750
  %168 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %167, i32 0, i32 0, !dbg !751
  %169 = load i8*, i8** %168, align 8, !dbg !751
  call void (i8*, ...) @badusage(i8* %166, i8* %169) #10, !dbg !752
  unreachable, !dbg !754

; <label>:170:                                    ; preds = %162
  %171 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !755
  %172 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %171, i32 0, i32 5, !dbg !757
  %173 = load void (%struct.cmdinfo*, i8*)*, void (%struct.cmdinfo*, i8*)** %172, align 8, !dbg !757
  %174 = icmp ne void (%struct.cmdinfo*, i8*)* %173, null, !dbg !755
  br i1 %174, label %175, label %180, !dbg !758

; <label>:175:                                    ; preds = %170
  %176 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !759
  %177 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %176, i32 0, i32 5, !dbg !761
  %178 = load void (%struct.cmdinfo*, i8*)*, void (%struct.cmdinfo*, i8*)** %177, align 8, !dbg !761
  %179 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !762
  call void %178(%struct.cmdinfo* %179, i8* null), !dbg !759
  br label %187, !dbg !759

; <label>:180:                                    ; preds = %170
  %181 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !763
  %182 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %181, i32 0, i32 6, !dbg !764
  %183 = load i32, i32* %182, align 8, !dbg !764
  %184 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !765
  %185 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %184, i32 0, i32 3, !dbg !766
  %186 = load i32*, i32** %185, align 8, !dbg !766
  store i32 %183, i32* %186, align 4, !dbg !767
  br label %187

; <label>:187:                                    ; preds = %180, %175
  br label %188

; <label>:188:                                    ; preds = %187, %161
  br label %315, !dbg !768

; <label>:189:                                    ; preds = %42
  br label %190, !dbg !769

; <label>:190:                                    ; preds = %313, %189
  %191 = load i8*, i8** %8, align 8, !dbg !771
  %192 = load i8, i8* %191, align 1, !dbg !773
  %193 = icmp ne i8 %192, 0, !dbg !774
  br i1 %193, label %194, label %314, !dbg !774

; <label>:194:                                    ; preds = %190
  %195 = load %struct.cmdinfo*, %struct.cmdinfo** %5, align 8, !dbg !775
  store %struct.cmdinfo* %195, %struct.cmdinfo** %7, align 8, !dbg !778
  br label %196, !dbg !779

; <label>:196:                                    ; preds = %219, %194
  %197 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !780
  %198 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %197, i32 0, i32 0, !dbg !783
  %199 = load i8*, i8** %198, align 8, !dbg !783
  %200 = icmp ne i8* %199, null, !dbg !780
  br i1 %200, label %207, label %201, !dbg !784

; <label>:201:                                    ; preds = %196
  %202 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !785
  %203 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %202, i32 0, i32 1, !dbg !787
  %204 = load i8, i8* %203, align 8, !dbg !787
  %205 = sext i8 %204 to i32, !dbg !785
  %206 = icmp ne i32 %205, 0, !dbg !785
  br i1 %206, label %207, label %216, !dbg !788

; <label>:207:                                    ; preds = %201, %196
  %208 = load i8*, i8** %8, align 8, !dbg !789
  %209 = load i8, i8* %208, align 1, !dbg !791
  %210 = sext i8 %209 to i32, !dbg !791
  %211 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !792
  %212 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %211, i32 0, i32 1, !dbg !793
  %213 = load i8, i8* %212, align 8, !dbg !793
  %214 = sext i8 %213 to i32, !dbg !792
  %215 = icmp ne i32 %210, %214, !dbg !794
  br label %216

; <label>:216:                                    ; preds = %207, %201
  %217 = phi i1 [ false, %201 ], [ %215, %207 ]
  br i1 %217, label %218, label %222, !dbg !795

; <label>:218:                                    ; preds = %216
  br label %219, !dbg !797

; <label>:219:                                    ; preds = %218
  %220 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !799
  %221 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %220, i32 1, !dbg !799
  store %struct.cmdinfo* %221, %struct.cmdinfo** %7, align 8, !dbg !799
  br label %196, !dbg !801, !llvm.loop !802

; <label>:222:                                    ; preds = %216
  %223 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !804
  %224 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %223, i32 0, i32 1, !dbg !806
  %225 = load i8, i8* %224, align 8, !dbg !806
  %226 = icmp ne i8 %225, 0, !dbg !804
  br i1 %226, label %232, label %227, !dbg !807

; <label>:227:                                    ; preds = %222
  %228 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0)) #2, !dbg !808
  %229 = load i8*, i8** %8, align 8, !dbg !810
  %230 = load i8, i8* %229, align 1, !dbg !811
  %231 = sext i8 %230 to i32, !dbg !811
  call void (i8*, ...) @badusage(i8* %228, i32 %231) #10, !dbg !812
  unreachable, !dbg !814

; <label>:232:                                    ; preds = %222
  %233 = load i8*, i8** %8, align 8, !dbg !815
  %234 = getelementptr inbounds i8, i8* %233, i32 1, !dbg !815
  store i8* %234, i8** %8, align 8, !dbg !815
  %235 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !816
  %236 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %235, i32 0, i32 2, !dbg !818
  %237 = load i32, i32* %236, align 4, !dbg !818
  %238 = icmp ne i32 %237, 0, !dbg !816
  br i1 %238, label %239, label %284, !dbg !819

; <label>:239:                                    ; preds = %232
  %240 = load i8*, i8** %8, align 8, !dbg !820
  %241 = load i8, i8* %240, align 1, !dbg !823
  %242 = icmp ne i8 %241, 0, !dbg !823
  br i1 %242, label %257, label %243, !dbg !824

; <label>:243:                                    ; preds = %239
  %244 = load i8***, i8**** %4, align 8, !dbg !825
  %245 = load i8**, i8*** %244, align 8, !dbg !827
  %246 = getelementptr inbounds i8*, i8** %245, i32 1, !dbg !827
  store i8** %246, i8*** %244, align 8, !dbg !827
  %247 = load i8*, i8** %245, align 8, !dbg !828
  store i8* %247, i8** %9, align 8, !dbg !829
  %248 = load i8*, i8** %9, align 8, !dbg !830
  %249 = icmp ne i8* %248, null, !dbg !830
  br i1 %249, label %256, label %250, !dbg !832

; <label>:250:                                    ; preds = %243
  %251 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0)) #2, !dbg !833
  %252 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !835
  %253 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %252, i32 0, i32 1, !dbg !836
  %254 = load i8, i8* %253, align 8, !dbg !836
  %255 = sext i8 %254 to i32, !dbg !835
  call void (i8*, ...) @badusage(i8* %251, i32 %255) #10, !dbg !837
  unreachable, !dbg !839

; <label>:256:                                    ; preds = %243
  br label %267, !dbg !840

; <label>:257:                                    ; preds = %239
  %258 = load i8*, i8** %8, align 8, !dbg !841
  store i8* %258, i8** %9, align 8, !dbg !843
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i8** %8, align 8, !dbg !844
  %259 = load i8*, i8** %9, align 8, !dbg !845
  %260 = load i8, i8* %259, align 1, !dbg !847
  %261 = sext i8 %260 to i32, !dbg !847
  %262 = icmp eq i32 %261, 61, !dbg !848
  br i1 %262, label %263, label %266, !dbg !849

; <label>:263:                                    ; preds = %257
  %264 = load i8*, i8** %9, align 8, !dbg !850
  %265 = getelementptr inbounds i8, i8* %264, i32 1, !dbg !850
  store i8* %265, i8** %9, align 8, !dbg !850
  br label %266, !dbg !852

; <label>:266:                                    ; preds = %263, %257
  br label %267

; <label>:267:                                    ; preds = %266, %256
  %268 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !853
  %269 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %268, i32 0, i32 5, !dbg !855
  %270 = load void (%struct.cmdinfo*, i8*)*, void (%struct.cmdinfo*, i8*)** %269, align 8, !dbg !855
  %271 = icmp ne void (%struct.cmdinfo*, i8*)* %270, null, !dbg !853
  br i1 %271, label %272, label %278, !dbg !856

; <label>:272:                                    ; preds = %267
  %273 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !857
  %274 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %273, i32 0, i32 5, !dbg !859
  %275 = load void (%struct.cmdinfo*, i8*)*, void (%struct.cmdinfo*, i8*)** %274, align 8, !dbg !859
  %276 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !860
  %277 = load i8*, i8** %9, align 8, !dbg !861
  call void %275(%struct.cmdinfo* %276, i8* %277), !dbg !857
  br label %283, !dbg !857

; <label>:278:                                    ; preds = %267
  %279 = load i8*, i8** %9, align 8, !dbg !862
  %280 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !863
  %281 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %280, i32 0, i32 4, !dbg !864
  %282 = load i8**, i8*** %281, align 8, !dbg !864
  store i8* %279, i8** %282, align 8, !dbg !865
  br label %283

; <label>:283:                                    ; preds = %278, %272
  br label %313, !dbg !866

; <label>:284:                                    ; preds = %232
  %285 = load i8*, i8** %8, align 8, !dbg !867
  %286 = load i8, i8* %285, align 1, !dbg !870
  %287 = sext i8 %286 to i32, !dbg !870
  %288 = icmp eq i32 %287, 61, !dbg !871
  br i1 %288, label %289, label %295, !dbg !872

; <label>:289:                                    ; preds = %284
  %290 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0)) #2, !dbg !873
  %291 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !875
  %292 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %291, i32 0, i32 1, !dbg !876
  %293 = load i8, i8* %292, align 8, !dbg !876
  %294 = sext i8 %293 to i32, !dbg !875
  call void (i8*, ...) @badusage(i8* %290, i32 %294) #10, !dbg !877
  unreachable, !dbg !879

; <label>:295:                                    ; preds = %284
  %296 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !880
  %297 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %296, i32 0, i32 5, !dbg !882
  %298 = load void (%struct.cmdinfo*, i8*)*, void (%struct.cmdinfo*, i8*)** %297, align 8, !dbg !882
  %299 = icmp ne void (%struct.cmdinfo*, i8*)* %298, null, !dbg !880
  br i1 %299, label %300, label %305, !dbg !883

; <label>:300:                                    ; preds = %295
  %301 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !884
  %302 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %301, i32 0, i32 5, !dbg !886
  %303 = load void (%struct.cmdinfo*, i8*)*, void (%struct.cmdinfo*, i8*)** %302, align 8, !dbg !886
  %304 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !887
  call void %303(%struct.cmdinfo* %304, i8* null), !dbg !884
  br label %312, !dbg !884

; <label>:305:                                    ; preds = %295
  %306 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !888
  %307 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %306, i32 0, i32 6, !dbg !889
  %308 = load i32, i32* %307, align 8, !dbg !889
  %309 = load %struct.cmdinfo*, %struct.cmdinfo** %7, align 8, !dbg !890
  %310 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %309, i32 0, i32 3, !dbg !891
  %311 = load i32*, i32** %310, align 8, !dbg !891
  store i32 %308, i32* %311, align 4, !dbg !892
  br label %312

; <label>:312:                                    ; preds = %305, %300
  br label %313

; <label>:313:                                    ; preds = %312, %283
  br label %190, !dbg !893, !llvm.loop !895

; <label>:314:                                    ; preds = %190
  br label %315

; <label>:315:                                    ; preds = %314, %188
  br label %15, !dbg !896, !llvm.loop !898

; <label>:316:                                    ; preds = %41, %32
  ret void, !dbg !899
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

; Function Attrs: nounwind uwtable
define i64 @dpkg_options_parse_arg_int(%struct.cmdinfo*, i8*) #6 !dbg !900 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !903, metadata !57), !dbg !904
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !905, metadata !57), !dbg !906
  call void @llvm.dbg.declare(metadata i64* %5, metadata !907, metadata !57), !dbg !908
  call void @llvm.dbg.declare(metadata i8** %6, metadata !909, metadata !57), !dbg !910
  %7 = call i32* @__errno_location() #1, !dbg !911
  store i32 0, i32* %7, align 4, !dbg !912
  %8 = load i8*, i8** %4, align 8, !dbg !913
  %9 = call i64 @strtol(i8* %8, i8** %6, i32 0) #2, !dbg !914
  store i64 %9, i64* %5, align 8, !dbg !915
  %10 = load i8*, i8** %4, align 8, !dbg !916
  %11 = load i8*, i8** %6, align 8, !dbg !918
  %12 = icmp eq i8* %10, %11, !dbg !919
  br i1 %12, label %28, label %13, !dbg !920

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %6, align 8, !dbg !921
  %15 = load i8, i8* %14, align 1, !dbg !923
  %16 = sext i8 %15 to i32, !dbg !923
  %17 = icmp ne i32 %16, 0, !dbg !923
  br i1 %17, label %28, label %18, !dbg !924

; <label>:18:                                     ; preds = %13
  %19 = load i64, i64* %5, align 8, !dbg !925
  %20 = icmp slt i64 %19, 0, !dbg !927
  br i1 %20, label %28, label %21, !dbg !928

; <label>:21:                                     ; preds = %18
  %22 = load i64, i64* %5, align 8, !dbg !929
  %23 = icmp sgt i64 %22, 2147483647, !dbg !931
  br i1 %23, label %28, label %24, !dbg !932

; <label>:24:                                     ; preds = %21
  %25 = call i32* @__errno_location() #1, !dbg !933
  %26 = load i32, i32* %25, align 4, !dbg !935
  %27 = icmp ne i32 %26, 0, !dbg !936
  br i1 %27, label %28, label %46, !dbg !937

; <label>:28:                                     ; preds = %24, %21, %18, %13, %2
  %29 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !938
  %30 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %29, i32 0, i32 0, !dbg !941
  %31 = load i8*, i8** %30, align 8, !dbg !941
  %32 = icmp ne i8* %31, null, !dbg !938
  br i1 %32, label %33, label %39, !dbg !942

; <label>:33:                                     ; preds = %28
  %34 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #2, !dbg !943
  %35 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !944
  %36 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %35, i32 0, i32 0, !dbg !945
  %37 = load i8*, i8** %36, align 8, !dbg !945
  %38 = load i8*, i8** %4, align 8, !dbg !946
  call void (i8*, ...) @badusage(i8* %34, i8* %37, i8* %38) #10, !dbg !947
  unreachable, !dbg !949

; <label>:39:                                     ; preds = %28
  %40 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0)) #2, !dbg !950
  %41 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !951
  %42 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %41, i32 0, i32 1, !dbg !952
  %43 = load i8, i8* %42, align 8, !dbg !952
  %44 = sext i8 %43 to i32, !dbg !951
  %45 = load i8*, i8** %4, align 8, !dbg !953
  call void (i8*, ...) @badusage(i8* %40, i32 %44, i8* %45) #10, !dbg !954
  unreachable, !dbg !955

; <label>:46:                                     ; preds = %24
  %47 = load i64, i64* %5, align 8, !dbg !956
  ret i64 %47, !dbg !957
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #5

; Function Attrs: nounwind uwtable
define void @setobsolete(%struct.cmdinfo*, i8*) #6 !dbg !958 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !959, metadata !57), !dbg !960
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !961, metadata !57), !dbg !962
  %5 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0)) #2, !dbg !963
  %6 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !964
  %7 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 0, !dbg !965
  %8 = load i8*, i8** %7, align 8, !dbg !965
  call void (i8*, ...) @warning(i8* %5, i8* %8), !dbg !966
  ret void, !dbg !968
}

declare void @warning(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @setaction(%struct.cmdinfo*, i8*) #6 !dbg !969 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !970, metadata !57), !dbg !971
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !972, metadata !57), !dbg !973
  %5 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !974
  %6 = icmp ne %struct.cmdinfo* %5, null, !dbg !974
  br i1 %6, label %7, label %28, !dbg !976

; <label>:7:                                      ; preds = %2
  %8 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !977
  %9 = icmp ne %struct.cmdinfo* %8, null, !dbg !977
  br i1 %9, label %10, label %28, !dbg !979

; <label>:10:                                     ; preds = %7
  %11 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i32 0, i32 0)) #2, !dbg !980
  %12 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !981
  %13 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %12, i32 0, i32 1, !dbg !982
  %14 = load i8, i8* %13, align 8, !dbg !982
  %15 = sext i8 %14 to i32, !dbg !981
  %16 = call i32 @option_short(i32 %15), !dbg !983
  %17 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !984
  %18 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %17, i32 0, i32 0, !dbg !985
  %19 = load i8*, i8** %18, align 8, !dbg !985
  %20 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !986
  %21 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %20, i32 0, i32 1, !dbg !987
  %22 = load i8, i8* %21, align 8, !dbg !987
  %23 = sext i8 %22 to i32, !dbg !986
  %24 = call i32 @option_short(i32 %23), !dbg !988
  %25 = load %struct.cmdinfo*, %struct.cmdinfo** @cipaction, align 8, !dbg !989
  %26 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %25, i32 0, i32 0, !dbg !990
  %27 = load i8*, i8** %26, align 8, !dbg !990
  call void (i8*, ...) @badusage(i8* %11, i32 %16, i8* %19, i32 %24, i8* %27) #10, !dbg !991
  unreachable, !dbg !992

; <label>:28:                                     ; preds = %7, %2
  %29 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !993
  store %struct.cmdinfo* %29, %struct.cmdinfo** @cipaction, align 8, !dbg !994
  ret void, !dbg !995
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @option_short(i32) #9 !dbg !996 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !999, metadata !57), !dbg !1000
  %3 = load i32, i32* %2, align 4, !dbg !1001
  %4 = icmp ne i32 %3, 0, !dbg !1001
  br i1 %4, label %5, label %7, !dbg !1001

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !1002
  br label %8, !dbg !1004

; <label>:7:                                      ; preds = %1
  br label %8, !dbg !1005

; <label>:8:                                      ; preds = %7, %5
  %9 = phi i32 [ %6, %5 ], [ 8, %7 ], !dbg !1007
  ret i32 %9, !dbg !1009
}

declare i32 @scandir(i8*, %struct.dirent***, i32 (%struct.dirent*)*, i32 (%struct.dirent**, %struct.dirent**)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @valid_config_filename(%struct.dirent*) #6 !dbg !1010 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i8*, align 8
  store %struct.dirent* %0, %struct.dirent** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dirent** %3, metadata !1015, metadata !57), !dbg !1016
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1017, metadata !57), !dbg !1018
  %5 = load %struct.dirent*, %struct.dirent** %3, align 8, !dbg !1019
  %6 = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 4, !dbg !1021
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !1019
  %8 = load i8, i8* %7, align 1, !dbg !1019
  %9 = sext i8 %8 to i32, !dbg !1019
  %10 = icmp eq i32 %9, 46, !dbg !1022
  br i1 %10, label %11, label %12, !dbg !1023

; <label>:11:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1024
  br label %47, !dbg !1024

; <label>:12:                                     ; preds = %1
  %13 = load %struct.dirent*, %struct.dirent** %3, align 8, !dbg !1025
  %14 = getelementptr inbounds %struct.dirent, %struct.dirent* %13, i32 0, i32 4, !dbg !1027
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i32 0, i32 0, !dbg !1025
  store i8* %15, i8** %4, align 8, !dbg !1028
  br label %16, !dbg !1029

; <label>:16:                                     ; preds = %37, %12
  %17 = load i8*, i8** %4, align 8, !dbg !1030
  %18 = load i8, i8* %17, align 1, !dbg !1033
  %19 = icmp ne i8 %18, 0, !dbg !1034
  br i1 %19, label %20, label %40, !dbg !1034

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %4, align 8, !dbg !1035
  %22 = load i8, i8* %21, align 1, !dbg !1037
  %23 = sext i8 %22 to i32, !dbg !1037
  %24 = call zeroext i1 @c_isalnum(i32 %23), !dbg !1038
  br i1 %24, label %36, label %25, !dbg !1039

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %4, align 8, !dbg !1040
  %27 = load i8, i8* %26, align 1, !dbg !1042
  %28 = sext i8 %27 to i32, !dbg !1042
  %29 = icmp ne i32 %28, 95, !dbg !1043
  br i1 %29, label %30, label %36, !dbg !1044

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %4, align 8, !dbg !1045
  %32 = load i8, i8* %31, align 1, !dbg !1047
  %33 = sext i8 %32 to i32, !dbg !1047
  %34 = icmp ne i32 %33, 45, !dbg !1048
  br i1 %34, label %35, label %36, !dbg !1049

; <label>:35:                                     ; preds = %30
  store i32 0, i32* %2, align 4, !dbg !1050
  br label %47, !dbg !1050

; <label>:36:                                     ; preds = %30, %25, %20
  br label %37, !dbg !1051

; <label>:37:                                     ; preds = %36
  %38 = load i8*, i8** %4, align 8, !dbg !1053
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !1053
  store i8* %39, i8** %4, align 8, !dbg !1053
  br label %16, !dbg !1055, !llvm.loop !1056

; <label>:40:                                     ; preds = %16
  %41 = load i8*, i8** %4, align 8, !dbg !1058
  %42 = load i8, i8* %41, align 1, !dbg !1060
  %43 = sext i8 %42 to i32, !dbg !1060
  %44 = icmp eq i32 %43, 0, !dbg !1061
  br i1 %44, label %45, label %46, !dbg !1062

; <label>:45:                                     ; preds = %40
  store i32 1, i32* %2, align 4, !dbg !1063
  br label %47, !dbg !1063

; <label>:46:                                     ; preds = %40
  store i32 0, i32* %2, align 4, !dbg !1064
  br label %47, !dbg !1064

; <label>:47:                                     ; preds = %46, %45, %35, %11
  %48 = load i32, i32* %2, align 4, !dbg !1065
  ret i32 %48, !dbg !1065
}

; Function Attrs: nounwind readonly
declare i32 @alphasort(%struct.dirent**, %struct.dirent**) #7

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #4

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isalnum(i32) #9 !dbg !1066 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1070, metadata !57), !dbg !1071
  %3 = load i32, i32* %2, align 4, !dbg !1072
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 56), !dbg !1073
  ret i1 %4, !dbg !1074
}

declare zeroext i1 @c_isbits(i32, i32) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isspace(i32) #9 !dbg !1075 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1076, metadata !57), !dbg !1077
  %3 = load i32, i32* %2, align 4, !dbg !1078
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 4), !dbg !1079
  ret i1 %4, !dbg !1080
}

declare i8* @str_strip_quotes(i8*) #3

; Function Attrs: noreturn nounwind uwtable
define internal void @config_error(i8*, i32, i8*, ...) #0 !dbg !1081 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1084, metadata !57), !dbg !1085
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1086, metadata !57), !dbg !1087
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1088, metadata !57), !dbg !1089
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1090, metadata !57), !dbg !1091
  store i8* null, i8** %7, align 8, !dbg !1091
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1092, metadata !57), !dbg !1093
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !1094
  %10 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !1094
  call void @llvm.va_start(i8* %10), !dbg !1094
  %11 = load i8*, i8** %6, align 8, !dbg !1095
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !1096
  %13 = call i32 @m_vasprintf(i8** %7, i8* %11, %struct.__va_list_tag* %12), !dbg !1097
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !1098
  %15 = bitcast %struct.__va_list_tag* %14 to i8*, !dbg !1098
  call void @llvm.va_end(i8* %15), !dbg !1098
  %16 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0)) #2, !dbg !1099
  %17 = load i8*, i8** %4, align 8, !dbg !1100
  %18 = load i32, i32* %5, align 4, !dbg !1101
  %19 = load i8*, i8** %7, align 8, !dbg !1102
  call void (i8*, ...) @ohshit(i8* %16, i8* %17, i32 %18, i8* %19) #10, !dbg !1103
  unreachable, !dbg !1105
                                                  ; No predecessors!
  ret void, !dbg !1106
}

declare i8* @m_strdup(i8*) #3

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #5

declare i32 @fclose(%struct._IO_FILE*) #3

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!49, !50}
!llvm.ident = !{!51}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !14, globals: !16)
!1 = !DIFile(filename: "[inter]lib--dpkg--options.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !4, line: 32, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!7 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!8 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!9 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!10 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!11 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!12 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!13 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!16 = !{!17, !48}
!17 = distinct !DIGlobalVariable(name: "cipaction", scope: !0, file: !18, line: 306, type: !19, isLocal: false, isDefinition: true, variable: %struct.cmdinfo** @cipaction)
!18 = !DIFile(filename: "options.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdinfo", file: !22, line: 38, size: 512, align: 64, elements: !23)
!22 = !DIFile(filename: "../../lib/dpkg/options.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!23 = !{!24, !28, !29, !31, !33, !35, !39, !40, !41}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "olong", scope: !21, file: !22, line: 39, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "oshort", scope: !21, file: !22, line: 40, baseType: !27, size: 8, align: 8, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "takesvalue", scope: !21, file: !22, line: 48, baseType: !30, size: 32, align: 32, offset: 96)
!30 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "iassignto", scope: !21, file: !22, line: 49, baseType: !32, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "sassignto", scope: !21, file: !22, line: 50, baseType: !34, size: 64, align: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !21, file: !22, line: 51, baseType: !36, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !19, !25}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "arg_int", scope: !21, file: !22, line: 53, baseType: !30, size: 32, align: 32, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "arg_ptr", scope: !21, file: !22, line: 54, baseType: !15, size: 64, align: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !21, file: !22, line: 56, baseType: !42, size: 64, align: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "action_func", file: !22, line: 36, baseType: !44)
!44 = !DISubroutineType(types: !45)
!45 = !{!30, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!48 = distinct !DIGlobalVariable(name: "printforhelp", scope: !0, file: !18, line: 39, type: !25, isLocal: true, isDefinition: true, variable: i8** @printforhelp)
!49 = !{i32 2, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!52 = distinct !DISubprogram(name: "badusage", scope: !18, file: !18, line: 42, type: !53, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !25, null}
!55 = !{}
!56 = !DILocalVariable(name: "fmt", arg: 1, scope: !52, file: !18, line: 42, type: !25)
!57 = !DIExpression()
!58 = !DILocation(line: 42, column: 22, scope: !52)
!59 = !DILocalVariable(name: "buf", scope: !52, file: !18, line: 44, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!61 = !DILocation(line: 44, column: 9, scope: !52)
!62 = !DILocalVariable(name: "args", scope: !52, file: !18, line: 45, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !64, line: 98, baseType: !65)
!64 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !64, line: 40, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 45, baseType: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 192, align: 64, elements: !75)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 45, size: 192, align: 64, elements: !69)
!69 = !{!70, !72, !73, !74}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !68, file: !1, line: 45, baseType: !71, size: 32, align: 32)
!71 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !68, file: !1, line: 45, baseType: !71, size: 32, align: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !68, file: !1, line: 45, baseType: !15, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !68, file: !1, line: 45, baseType: !15, size: 64, align: 64, offset: 128)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DILocation(line: 45, column: 11, scope: !52)
!78 = !DILocation(line: 47, column: 2, scope: !52)
!79 = !DILocation(line: 48, column: 21, scope: !52)
!80 = !DILocation(line: 48, column: 26, scope: !52)
!81 = !DILocation(line: 48, column: 3, scope: !52)
!82 = !DILocation(line: 49, column: 2, scope: !52)
!83 = !DILocation(line: 51, column: 22, scope: !52)
!84 = !DILocation(line: 51, column: 26, scope: !52)
!85 = !DILocation(line: 51, column: 3, scope: !86)
!86 = !DILexicalBlockFile(scope: !52, file: !18, discriminator: 1)
!87 = !DILocation(line: 51, column: 3, scope: !52)
!88 = !DILocation(line: 52, column: 1, scope: !52)
!89 = distinct !DISubprogram(name: "dpkg_options_load", scope: !18, file: !18, line: 197, type: !90, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !25, !19}
!92 = !DILocalVariable(name: "prog", arg: 1, scope: !89, file: !18, line: 197, type: !25)
!93 = !DILocation(line: 197, column: 31, scope: !89)
!94 = !DILocalVariable(name: "cmdinfos", arg: 2, scope: !89, file: !18, line: 197, type: !19)
!95 = !DILocation(line: 197, column: 59, scope: !89)
!96 = !DILocalVariable(name: "home", scope: !89, file: !18, line: 199, type: !60)
!97 = !DILocation(line: 199, column: 9, scope: !89)
!98 = !DILocalVariable(name: "file", scope: !89, file: !18, line: 199, type: !60)
!99 = !DILocation(line: 199, column: 16, scope: !89)
!100 = !DILocation(line: 201, column: 25, scope: !89)
!101 = !DILocation(line: 201, column: 31, scope: !89)
!102 = !DILocation(line: 201, column: 3, scope: !89)
!103 = !DILocation(line: 203, column: 54, scope: !89)
!104 = !DILocation(line: 203, column: 10, scope: !89)
!105 = !DILocation(line: 203, column: 8, scope: !89)
!106 = !DILocation(line: 204, column: 26, scope: !89)
!107 = !DILocation(line: 204, column: 32, scope: !89)
!108 = !DILocation(line: 204, column: 3, scope: !89)
!109 = !DILocation(line: 205, column: 8, scope: !89)
!110 = !DILocation(line: 205, column: 3, scope: !89)
!111 = !DILocation(line: 207, column: 10, scope: !89)
!112 = !DILocation(line: 207, column: 8, scope: !89)
!113 = !DILocation(line: 208, column: 7, scope: !114)
!114 = distinct !DILexicalBlock(scope: !89, file: !18, line: 208, column: 7)
!115 = !DILocation(line: 208, column: 12, scope: !114)
!116 = !DILocation(line: 208, column: 7, scope: !89)
!117 = !DILocation(line: 209, column: 34, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !18, line: 208, column: 20)
!119 = !DILocation(line: 209, column: 40, scope: !118)
!120 = !DILocation(line: 209, column: 12, scope: !118)
!121 = !DILocation(line: 209, column: 10, scope: !118)
!122 = !DILocation(line: 210, column: 28, scope: !118)
!123 = !DILocation(line: 210, column: 34, scope: !118)
!124 = !DILocation(line: 210, column: 5, scope: !118)
!125 = !DILocation(line: 211, column: 10, scope: !118)
!126 = !DILocation(line: 211, column: 5, scope: !118)
!127 = !DILocation(line: 212, column: 3, scope: !118)
!128 = !DILocation(line: 213, column: 1, scope: !89)
!129 = distinct !DISubprogram(name: "dpkg_options_load_dir", scope: !18, file: !18, line: 165, type: !90, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!130 = !DILocalVariable(name: "prog", arg: 1, scope: !129, file: !18, line: 165, type: !25)
!131 = !DILocation(line: 165, column: 35, scope: !129)
!132 = !DILocalVariable(name: "cmdinfos", arg: 2, scope: !129, file: !18, line: 165, type: !19)
!133 = !DILocation(line: 165, column: 63, scope: !129)
!134 = !DILocalVariable(name: "dirname", scope: !129, file: !18, line: 167, type: !60)
!135 = !DILocation(line: 167, column: 9, scope: !129)
!136 = !DILocalVariable(name: "dlist", scope: !129, file: !18, line: 168, type: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !140, line: 22, size: 2240, align: 64, elements: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!141 = !{!142, !146, !149, !151, !153}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !139, file: !140, line: 25, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !144, line: 127, baseType: !145)
!144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!145 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !139, file: !140, line: 26, baseType: !147, size: 64, align: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !144, line: 131, baseType: !148)
!148 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !139, file: !140, line: 31, baseType: !150, size: 16, align: 16, offset: 128)
!150 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !139, file: !140, line: 32, baseType: !152, size: 8, align: 8, offset: 144)
!152 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !139, file: !140, line: 33, baseType: !154, size: 2048, align: 8, offset: 152)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, align: 8, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 256)
!157 = !DILocation(line: 168, column: 19, scope: !129)
!158 = !DILocalVariable(name: "dlist_n", scope: !129, file: !18, line: 169, type: !30)
!159 = !DILocation(line: 169, column: 7, scope: !129)
!160 = !DILocalVariable(name: "i", scope: !129, file: !18, line: 169, type: !30)
!161 = !DILocation(line: 169, column: 16, scope: !129)
!162 = !DILocation(line: 171, column: 59, scope: !129)
!163 = !DILocation(line: 171, column: 13, scope: !129)
!164 = !DILocation(line: 171, column: 11, scope: !129)
!165 = !DILocation(line: 173, column: 21, scope: !129)
!166 = !DILocation(line: 173, column: 13, scope: !129)
!167 = !DILocation(line: 173, column: 11, scope: !129)
!168 = !DILocation(line: 174, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !129, file: !18, line: 174, column: 7)
!170 = !DILocation(line: 174, column: 15, scope: !169)
!171 = !DILocation(line: 174, column: 7, scope: !129)
!172 = !DILocation(line: 175, column: 10, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !18, line: 175, column: 8)
!174 = distinct !DILexicalBlock(scope: !169, file: !18, line: 174, column: 20)
!175 = !DILocation(line: 175, column: 9, scope: !173)
!176 = !DILocation(line: 175, column: 14, scope: !173)
!177 = !DILocation(line: 175, column: 8, scope: !174)
!178 = !DILocation(line: 176, column: 12, scope: !179)
!179 = distinct !DILexicalBlock(scope: !173, file: !18, line: 175, column: 25)
!180 = !DILocation(line: 176, column: 7, scope: !179)
!181 = !DILocation(line: 177, column: 7, scope: !179)
!182 = !DILocation(line: 179, column: 14, scope: !173)
!183 = !DILocation(line: 179, column: 63, scope: !173)
!184 = !DILocation(line: 179, column: 7, scope: !185)
!185 = !DILexicalBlockFile(scope: !173, file: !18, discriminator: 1)
!186 = !DILocation(line: 179, column: 7, scope: !173)
!187 = !DILocation(line: 182, column: 10, scope: !188)
!188 = distinct !DILexicalBlock(scope: !129, file: !18, line: 182, column: 3)
!189 = !DILocation(line: 182, column: 8, scope: !188)
!190 = !DILocation(line: 182, column: 15, scope: !191)
!191 = !DILexicalBlockFile(scope: !192, file: !18, discriminator: 1)
!192 = distinct !DILexicalBlock(scope: !188, file: !18, line: 182, column: 3)
!193 = !DILocation(line: 182, column: 19, scope: !191)
!194 = !DILocation(line: 182, column: 17, scope: !191)
!195 = !DILocation(line: 182, column: 3, scope: !191)
!196 = !DILocalVariable(name: "filename", scope: !197, file: !18, line: 183, type: !60)
!197 = distinct !DILexicalBlock(scope: !192, file: !18, line: 182, column: 33)
!198 = !DILocation(line: 183, column: 11, scope: !197)
!199 = !DILocation(line: 185, column: 33, scope: !197)
!200 = !DILocation(line: 185, column: 48, scope: !197)
!201 = !DILocation(line: 185, column: 42, scope: !197)
!202 = !DILocation(line: 185, column: 52, scope: !197)
!203 = !DILocation(line: 185, column: 16, scope: !197)
!204 = !DILocation(line: 185, column: 14, scope: !197)
!205 = !DILocation(line: 186, column: 28, scope: !197)
!206 = !DILocation(line: 186, column: 38, scope: !197)
!207 = !DILocation(line: 186, column: 5, scope: !197)
!208 = !DILocation(line: 188, column: 16, scope: !197)
!209 = !DILocation(line: 188, column: 10, scope: !197)
!210 = !DILocation(line: 188, column: 5, scope: !197)
!211 = !DILocation(line: 189, column: 10, scope: !197)
!212 = !DILocation(line: 189, column: 5, scope: !197)
!213 = !DILocation(line: 190, column: 3, scope: !197)
!214 = !DILocation(line: 182, column: 29, scope: !215)
!215 = !DILexicalBlockFile(scope: !192, file: !18, discriminator: 2)
!216 = !DILocation(line: 182, column: 3, scope: !215)
!217 = distinct !{!217, !218}
!218 = !DILocation(line: 182, column: 3, scope: !129)
!219 = !DILocation(line: 192, column: 8, scope: !129)
!220 = !DILocation(line: 192, column: 3, scope: !129)
!221 = !DILocation(line: 193, column: 8, scope: !129)
!222 = !DILocation(line: 193, column: 3, scope: !129)
!223 = !DILocation(line: 194, column: 1, scope: !129)
!224 = !DILocation(line: 194, column: 1, scope: !225)
!225 = !DILexicalBlockFile(scope: !129, file: !18, discriminator: 1)
!226 = distinct !DISubprogram(name: "dpkg_options_load_file", scope: !18, file: !18, line: 68, type: !90, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!227 = !DILocalVariable(name: "fn", arg: 1, scope: !226, file: !18, line: 68, type: !25)
!228 = !DILocation(line: 68, column: 36, scope: !226)
!229 = !DILocalVariable(name: "cmdinfos", arg: 2, scope: !226, file: !18, line: 68, type: !19)
!230 = !DILocation(line: 68, column: 62, scope: !226)
!231 = !DILocalVariable(name: "file", scope: !226, file: !18, line: 70, type: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 48, baseType: !235)
!234 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 241, size: 1728, align: 64, elements: !237)
!236 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !258, !259, !260, !261, !262, !263, !265, !267, !270, !272, !273, !274, !275, !276, !279, !280}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !235, file: !236, line: 242, baseType: !30, size: 32, align: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !235, file: !236, line: 247, baseType: !60, size: 64, align: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !235, file: !236, line: 248, baseType: !60, size: 64, align: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !235, file: !236, line: 249, baseType: !60, size: 64, align: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !235, file: !236, line: 250, baseType: !60, size: 64, align: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !235, file: !236, line: 251, baseType: !60, size: 64, align: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !235, file: !236, line: 252, baseType: !60, size: 64, align: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !235, file: !236, line: 253, baseType: !60, size: 64, align: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !235, file: !236, line: 254, baseType: !60, size: 64, align: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !235, file: !236, line: 256, baseType: !60, size: 64, align: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !235, file: !236, line: 257, baseType: !60, size: 64, align: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !235, file: !236, line: 258, baseType: !60, size: 64, align: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !235, file: !236, line: 260, baseType: !251, size: 64, align: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !236, line: 156, size: 192, align: 64, elements: !253)
!253 = !{!254, !255, !257}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !252, file: !236, line: 157, baseType: !251, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !252, file: !236, line: 158, baseType: !256, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !252, file: !236, line: 162, baseType: !30, size: 32, align: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !235, file: !236, line: 262, baseType: !256, size: 64, align: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !235, file: !236, line: 264, baseType: !30, size: 32, align: 32, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !235, file: !236, line: 268, baseType: !30, size: 32, align: 32, offset: 928)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !235, file: !236, line: 270, baseType: !147, size: 64, align: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !235, file: !236, line: 274, baseType: !150, size: 16, align: 16, offset: 1024)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !235, file: !236, line: 275, baseType: !264, size: 8, align: 8, offset: 1040)
!264 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !235, file: !236, line: 276, baseType: !266, size: 8, align: 8, offset: 1048)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, align: 8, elements: !75)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !235, file: !236, line: 280, baseType: !268, size: 64, align: 64, offset: 1088)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !236, line: 150, baseType: null)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !235, file: !236, line: 289, baseType: !271, size: 64, align: 64, offset: 1152)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !144, line: 132, baseType: !148)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !235, file: !236, line: 297, baseType: !15, size: 64, align: 64, offset: 1216)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !235, file: !236, line: 298, baseType: !15, size: 64, align: 64, offset: 1280)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !235, file: !236, line: 299, baseType: !15, size: 64, align: 64, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !235, file: !236, line: 300, baseType: !15, size: 64, align: 64, offset: 1408)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !235, file: !236, line: 302, baseType: !277, size: 64, align: 64, offset: 1472)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !278, line: 216, baseType: !145)
!278 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !235, file: !236, line: 303, baseType: !30, size: 32, align: 32, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !235, file: !236, line: 305, baseType: !281, size: 160, align: 8, offset: 1568)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, align: 8, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 20)
!284 = !DILocation(line: 70, column: 9, scope: !226)
!285 = !DILocalVariable(name: "line_num", scope: !226, file: !18, line: 71, type: !30)
!286 = !DILocation(line: 71, column: 7, scope: !226)
!287 = !DILocalVariable(name: "linebuf", scope: !226, file: !18, line: 72, type: !288)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8192, align: 8, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 1024)
!291 = !DILocation(line: 72, column: 8, scope: !226)
!292 = !DILocation(line: 74, column: 15, scope: !226)
!293 = !DILocation(line: 74, column: 9, scope: !226)
!294 = !DILocation(line: 74, column: 7, scope: !226)
!295 = !DILocation(line: 75, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !226, file: !18, line: 75, column: 7)
!297 = !DILocation(line: 75, column: 7, scope: !226)
!298 = !DILocation(line: 76, column: 10, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !18, line: 76, column: 8)
!300 = distinct !DILexicalBlock(scope: !296, file: !18, line: 75, column: 14)
!301 = !DILocation(line: 76, column: 9, scope: !299)
!302 = !DILocation(line: 76, column: 13, scope: !299)
!303 = !DILocation(line: 76, column: 8, scope: !300)
!304 = !DILocation(line: 77, column: 7, scope: !299)
!305 = !DILocation(line: 78, column: 12, scope: !300)
!306 = !DILocation(line: 79, column: 13, scope: !300)
!307 = !DILocation(line: 79, column: 27, scope: !300)
!308 = !DILocation(line: 79, column: 26, scope: !300)
!309 = !DILocation(line: 79, column: 17, scope: !310)
!310 = !DILexicalBlockFile(scope: !300, file: !18, discriminator: 1)
!311 = !DILocation(line: 78, column: 5, scope: !310)
!312 = !DILocation(line: 80, column: 5, scope: !300)
!313 = !DILocation(line: 83, column: 3, scope: !226)
!314 = !DILocation(line: 83, column: 16, scope: !315)
!315 = !DILexicalBlockFile(scope: !226, file: !18, discriminator: 1)
!316 = !DILocation(line: 83, column: 42, scope: !315)
!317 = !DILocation(line: 83, column: 10, scope: !315)
!318 = !DILocation(line: 83, column: 3, scope: !315)
!319 = !DILocalVariable(name: "opt", scope: !320, file: !18, line: 84, type: !60)
!320 = distinct !DILexicalBlock(scope: !226, file: !18, line: 83, column: 49)
!321 = !DILocation(line: 84, column: 11, scope: !320)
!322 = !DILocalVariable(name: "cip", scope: !320, file: !18, line: 85, type: !19)
!323 = !DILocation(line: 85, column: 27, scope: !320)
!324 = !DILocalVariable(name: "l", scope: !320, file: !18, line: 86, type: !30)
!325 = !DILocation(line: 86, column: 9, scope: !320)
!326 = !DILocation(line: 88, column: 13, scope: !320)
!327 = !DILocation(line: 90, column: 16, scope: !320)
!328 = !DILocation(line: 90, column: 9, scope: !320)
!329 = !DILocation(line: 90, column: 7, scope: !320)
!330 = !DILocation(line: 91, column: 5, scope: !320)
!331 = !DILocation(line: 91, column: 12, scope: !332)
!332 = !DILexicalBlockFile(scope: !320, file: !18, discriminator: 1)
!333 = !DILocation(line: 91, column: 14, scope: !332)
!334 = !DILocation(line: 91, column: 35, scope: !335)
!335 = !DILexicalBlockFile(scope: !320, file: !18, discriminator: 2)
!336 = !DILocation(line: 91, column: 37, scope: !335)
!337 = !DILocation(line: 91, column: 27, scope: !335)
!338 = !DILocation(line: 91, column: 17, scope: !335)
!339 = !DILocation(line: 91, column: 5, scope: !340)
!340 = !DILexicalBlockFile(scope: !320, file: !18, discriminator: 3)
!341 = !DILocation(line: 92, column: 8, scope: !320)
!342 = !DILocation(line: 91, column: 5, scope: !343)
!343 = !DILexicalBlockFile(scope: !320, file: !18, discriminator: 4)
!344 = distinct !{!344, !330}
!345 = !DILocation(line: 93, column: 13, scope: !320)
!346 = !DILocation(line: 93, column: 5, scope: !320)
!347 = !DILocation(line: 93, column: 16, scope: !320)
!348 = !DILocation(line: 95, column: 10, scope: !349)
!349 = distinct !DILexicalBlock(scope: !320, file: !18, line: 95, column: 9)
!350 = !DILocation(line: 95, column: 21, scope: !349)
!351 = !DILocation(line: 95, column: 29, scope: !349)
!352 = !DILocation(line: 95, column: 33, scope: !353)
!353 = !DILexicalBlockFile(scope: !349, file: !18, discriminator: 1)
!354 = !DILocation(line: 95, column: 44, scope: !353)
!355 = !DILocation(line: 95, column: 9, scope: !353)
!356 = !DILocation(line: 96, column: 7, scope: !349)
!357 = distinct !{!357, !313}
!358 = !DILocation(line: 97, column: 16, scope: !359)
!359 = distinct !DILexicalBlock(scope: !320, file: !18, line: 97, column: 5)
!360 = !DILocation(line: 97, column: 14, scope: !359)
!361 = !DILocation(line: 97, column: 10, scope: !359)
!362 = !DILocation(line: 97, column: 36, scope: !363)
!363 = !DILexicalBlockFile(scope: !364, file: !18, discriminator: 1)
!364 = distinct !DILexicalBlock(scope: !359, file: !18, line: 97, column: 5)
!365 = !DILocation(line: 97, column: 35, scope: !363)
!366 = !DILocation(line: 97, column: 25, scope: !363)
!367 = !DILocation(line: 97, column: 41, scope: !363)
!368 = !DILocation(line: 97, column: 45, scope: !369)
!369 = !DILexicalBlockFile(scope: !364, file: !18, discriminator: 2)
!370 = !DILocation(line: 97, column: 44, scope: !369)
!371 = !DILocation(line: 97, column: 49, scope: !369)
!372 = !DILocation(line: 97, column: 41, scope: !369)
!373 = !DILocation(line: 97, column: 5, scope: !374)
!374 = !DILexicalBlockFile(scope: !359, file: !18, discriminator: 3)
!375 = !DILocation(line: 97, column: 5, scope: !376)
!376 = !DILexicalBlockFile(scope: !359, file: !18, discriminator: 4)
!377 = !DILocation(line: 97, column: 60, scope: !378)
!378 = !DILexicalBlockFile(scope: !364, file: !18, discriminator: 5)
!379 = !DILocation(line: 97, column: 5, scope: !378)
!380 = distinct !{!380, !381}
!381 = !DILocation(line: 97, column: 5, scope: !320)
!382 = !DILocation(line: 98, column: 10, scope: !383)
!383 = distinct !DILexicalBlock(scope: !320, file: !18, line: 98, column: 9)
!384 = !DILocation(line: 98, column: 9, scope: !383)
!385 = !DILocation(line: 98, column: 14, scope: !383)
!386 = !DILocation(line: 98, column: 9, scope: !320)
!387 = !DILocation(line: 99, column: 10, scope: !383)
!388 = !DILocation(line: 99, column: 7, scope: !383)
!389 = !DILocation(line: 101, column: 11, scope: !390)
!390 = distinct !DILexicalBlock(scope: !383, file: !18, line: 100, column: 10)
!391 = !DILocation(line: 101, column: 14, scope: !390)
!392 = !DILocation(line: 102, column: 12, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !18, line: 102, column: 11)
!394 = !DILocation(line: 102, column: 11, scope: !393)
!395 = !DILocation(line: 102, column: 15, scope: !393)
!396 = !DILocation(line: 102, column: 11, scope: !390)
!397 = !DILocation(line: 102, column: 25, scope: !398)
!398 = !DILexicalBlockFile(scope: !393, file: !18, discriminator: 1)
!399 = !DILocation(line: 102, column: 22, scope: !398)
!400 = !DILocation(line: 103, column: 7, scope: !390)
!401 = !DILocation(line: 103, column: 25, scope: !402)
!402 = !DILexicalBlockFile(scope: !390, file: !18, discriminator: 1)
!403 = !DILocation(line: 103, column: 24, scope: !402)
!404 = !DILocation(line: 103, column: 14, scope: !402)
!405 = !DILocation(line: 103, column: 7, scope: !402)
!406 = !DILocation(line: 104, column: 12, scope: !390)
!407 = !DILocation(line: 103, column: 7, scope: !408)
!408 = !DILexicalBlockFile(scope: !390, file: !18, discriminator: 2)
!409 = distinct !{!409, !400}
!410 = !DILocation(line: 106, column: 30, scope: !390)
!411 = !DILocation(line: 106, column: 13, scope: !390)
!412 = !DILocation(line: 106, column: 11, scope: !390)
!413 = !DILocation(line: 107, column: 11, scope: !414)
!414 = distinct !DILexicalBlock(scope: !390, file: !18, line: 107, column: 11)
!415 = !DILocation(line: 107, column: 15, scope: !414)
!416 = !DILocation(line: 107, column: 11, scope: !390)
!417 = !DILocation(line: 108, column: 22, scope: !414)
!418 = !DILocation(line: 108, column: 26, scope: !414)
!419 = !DILocation(line: 108, column: 35, scope: !414)
!420 = !DILocation(line: 108, column: 67, scope: !414)
!421 = !DILocation(line: 108, column: 9, scope: !422)
!422 = !DILexicalBlockFile(scope: !414, file: !18, discriminator: 1)
!423 = !DILocation(line: 108, column: 9, scope: !414)
!424 = !DILocation(line: 111, column: 14, scope: !425)
!425 = distinct !DILexicalBlock(scope: !320, file: !18, line: 111, column: 5)
!426 = !DILocation(line: 111, column: 13, scope: !425)
!427 = !DILocation(line: 111, column: 10, scope: !425)
!428 = !DILocation(line: 111, column: 24, scope: !429)
!429 = !DILexicalBlockFile(scope: !430, file: !18, discriminator: 1)
!430 = distinct !DILexicalBlock(scope: !425, file: !18, line: 111, column: 5)
!431 = !DILocation(line: 111, column: 29, scope: !429)
!432 = !DILocation(line: 111, column: 35, scope: !429)
!433 = !DILocation(line: 111, column: 38, scope: !434)
!434 = !DILexicalBlockFile(scope: !430, file: !18, discriminator: 2)
!435 = !DILocation(line: 111, column: 43, scope: !434)
!436 = !DILocation(line: 111, column: 35, scope: !434)
!437 = !DILocation(line: 111, column: 5, scope: !438)
!438 = !DILexicalBlockFile(scope: !425, file: !18, discriminator: 3)
!439 = !DILocation(line: 112, column: 12, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !18, line: 112, column: 11)
!441 = distinct !DILexicalBlock(scope: !430, file: !18, line: 111, column: 58)
!442 = !DILocation(line: 112, column: 17, scope: !440)
!443 = !DILocation(line: 112, column: 11, scope: !441)
!444 = !DILocation(line: 112, column: 24, scope: !445)
!445 = !DILexicalBlockFile(scope: !440, file: !18, discriminator: 1)
!446 = !DILocation(line: 113, column: 18, scope: !447)
!447 = distinct !DILexicalBlock(scope: !441, file: !18, line: 113, column: 11)
!448 = !DILocation(line: 113, column: 23, scope: !447)
!449 = !DILocation(line: 113, column: 30, scope: !447)
!450 = !DILocation(line: 113, column: 11, scope: !447)
!451 = !DILocation(line: 113, column: 39, scope: !447)
!452 = !DILocation(line: 113, column: 11, scope: !441)
!453 = !DILocation(line: 114, column: 9, scope: !447)
!454 = !DILocation(line: 115, column: 16, scope: !441)
!455 = !DILocation(line: 115, column: 21, scope: !441)
!456 = !DILocation(line: 115, column: 9, scope: !441)
!457 = !DILocation(line: 115, column: 8, scope: !441)
!458 = !DILocation(line: 116, column: 12, scope: !459)
!459 = distinct !DILexicalBlock(scope: !441, file: !18, line: 116, column: 11)
!460 = !DILocation(line: 116, column: 17, scope: !459)
!461 = !DILocation(line: 116, column: 27, scope: !459)
!462 = !DILocation(line: 116, column: 32, scope: !459)
!463 = !DILocation(line: 116, column: 44, scope: !464)
!464 = !DILexicalBlockFile(scope: !459, file: !18, discriminator: 1)
!465 = !DILocation(line: 116, column: 36, scope: !464)
!466 = !DILocation(line: 116, column: 46, scope: !464)
!467 = !DILocation(line: 116, column: 53, scope: !464)
!468 = !DILocation(line: 117, column: 12, scope: !459)
!469 = !DILocation(line: 117, column: 16, scope: !459)
!470 = !DILocation(line: 117, column: 27, scope: !464)
!471 = !DILocation(line: 117, column: 36, scope: !464)
!472 = !DILocation(line: 117, column: 41, scope: !464)
!473 = !DILocation(line: 117, column: 48, scope: !464)
!474 = !DILocation(line: 117, column: 19, scope: !464)
!475 = !DILocation(line: 117, column: 51, scope: !464)
!476 = !DILocation(line: 116, column: 11, scope: !477)
!477 = !DILexicalBlockFile(scope: !441, file: !18, discriminator: 2)
!478 = !DILocation(line: 118, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !459, file: !18, line: 117, column: 57)
!480 = !DILocation(line: 118, column: 14, scope: !479)
!481 = !DILocation(line: 118, column: 13, scope: !479)
!482 = !DILocation(line: 118, column: 15, scope: !479)
!483 = !DILocation(line: 118, column: 5, scope: !479)
!484 = !DILocation(line: 119, column: 2, scope: !479)
!485 = !DILocation(line: 121, column: 5, scope: !441)
!486 = !DILocation(line: 111, column: 54, scope: !487)
!487 = !DILexicalBlockFile(scope: !430, file: !18, discriminator: 4)
!488 = !DILocation(line: 111, column: 5, scope: !487)
!489 = distinct !{!489, !490}
!490 = !DILocation(line: 111, column: 5, scope: !320)
!491 = !DILocation(line: 123, column: 10, scope: !492)
!492 = distinct !DILexicalBlock(scope: !320, file: !18, line: 123, column: 9)
!493 = !DILocation(line: 123, column: 15, scope: !492)
!494 = !DILocation(line: 123, column: 9, scope: !320)
!495 = !DILocation(line: 124, column: 20, scope: !492)
!496 = !DILocation(line: 124, column: 24, scope: !492)
!497 = !DILocation(line: 124, column: 33, scope: !492)
!498 = !DILocation(line: 124, column: 59, scope: !492)
!499 = !DILocation(line: 124, column: 7, scope: !500)
!500 = !DILexicalBlockFile(scope: !492, file: !18, discriminator: 1)
!501 = !DILocation(line: 124, column: 7, scope: !492)
!502 = !DILocation(line: 126, column: 9, scope: !503)
!503 = distinct !DILexicalBlock(scope: !320, file: !18, line: 126, column: 9)
!504 = !DILocation(line: 126, column: 14, scope: !503)
!505 = !DILocation(line: 126, column: 9, scope: !320)
!506 = !DILocation(line: 127, column: 12, scope: !507)
!507 = distinct !DILexicalBlock(scope: !508, file: !18, line: 127, column: 11)
!508 = distinct !DILexicalBlock(scope: !503, file: !18, line: 126, column: 26)
!509 = !DILocation(line: 127, column: 11, scope: !508)
!510 = !DILocation(line: 128, column: 22, scope: !507)
!511 = !DILocation(line: 128, column: 26, scope: !507)
!512 = !DILocation(line: 128, column: 35, scope: !507)
!513 = !DILocation(line: 128, column: 60, scope: !507)
!514 = !DILocation(line: 128, column: 9, scope: !515)
!515 = !DILexicalBlockFile(scope: !507, file: !18, discriminator: 1)
!516 = !DILocation(line: 128, column: 9, scope: !507)
!517 = !DILocation(line: 129, column: 11, scope: !518)
!518 = distinct !DILexicalBlock(scope: !508, file: !18, line: 129, column: 11)
!519 = !DILocation(line: 129, column: 16, scope: !518)
!520 = !DILocation(line: 129, column: 11, scope: !508)
!521 = !DILocation(line: 129, column: 22, scope: !522)
!522 = !DILexicalBlockFile(scope: !518, file: !18, discriminator: 1)
!523 = !DILocation(line: 129, column: 27, scope: !522)
!524 = !DILocation(line: 129, column: 32, scope: !522)
!525 = !DILocation(line: 129, column: 36, scope: !522)
!526 = !DILocation(line: 131, column: 36, scope: !518)
!527 = !DILocation(line: 131, column: 27, scope: !518)
!528 = !DILocation(line: 131, column: 10, scope: !518)
!529 = !DILocation(line: 131, column: 15, scope: !518)
!530 = !DILocation(line: 131, column: 25, scope: !518)
!531 = !DILocation(line: 132, column: 5, scope: !508)
!532 = !DILocation(line: 133, column: 11, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !18, line: 133, column: 11)
!534 = distinct !DILexicalBlock(scope: !503, file: !18, line: 132, column: 12)
!535 = !DILocation(line: 133, column: 11, scope: !534)
!536 = !DILocation(line: 134, column: 22, scope: !533)
!537 = !DILocation(line: 134, column: 26, scope: !533)
!538 = !DILocation(line: 134, column: 35, scope: !533)
!539 = !DILocation(line: 134, column: 68, scope: !533)
!540 = !DILocation(line: 134, column: 9, scope: !541)
!541 = !DILexicalBlockFile(scope: !533, file: !18, discriminator: 1)
!542 = !DILocation(line: 134, column: 9, scope: !533)
!543 = !DILocation(line: 135, column: 11, scope: !544)
!544 = distinct !DILexicalBlock(scope: !534, file: !18, line: 135, column: 11)
!545 = !DILocation(line: 135, column: 16, scope: !544)
!546 = !DILocation(line: 135, column: 11, scope: !534)
!547 = !DILocation(line: 135, column: 22, scope: !548)
!548 = !DILexicalBlockFile(scope: !544, file: !18, discriminator: 1)
!549 = !DILocation(line: 135, column: 27, scope: !548)
!550 = !DILocation(line: 135, column: 32, scope: !548)
!551 = !DILocation(line: 137, column: 27, scope: !544)
!552 = !DILocation(line: 137, column: 32, scope: !544)
!553 = !DILocation(line: 137, column: 10, scope: !544)
!554 = !DILocation(line: 137, column: 15, scope: !544)
!555 = !DILocation(line: 137, column: 25, scope: !544)
!556 = !DILocation(line: 83, column: 3, scope: !557)
!557 = !DILexicalBlockFile(scope: !226, file: !18, discriminator: 2)
!558 = !DILocation(line: 140, column: 14, scope: !559)
!559 = distinct !DILexicalBlock(scope: !226, file: !18, line: 140, column: 7)
!560 = !DILocation(line: 140, column: 7, scope: !559)
!561 = !DILocation(line: 140, column: 7, scope: !226)
!562 = !DILocation(line: 141, column: 12, scope: !559)
!563 = !DILocation(line: 141, column: 60, scope: !559)
!564 = !DILocation(line: 141, column: 5, scope: !565)
!565 = !DILexicalBlockFile(scope: !559, file: !18, discriminator: 1)
!566 = !DILocation(line: 141, column: 5, scope: !559)
!567 = !DILocation(line: 142, column: 14, scope: !568)
!568 = distinct !DILexicalBlock(scope: !226, file: !18, line: 142, column: 7)
!569 = !DILocation(line: 142, column: 7, scope: !568)
!570 = !DILocation(line: 142, column: 7, scope: !226)
!571 = !DILocation(line: 143, column: 12, scope: !568)
!572 = !DILocation(line: 143, column: 60, scope: !568)
!573 = !DILocation(line: 143, column: 5, scope: !574)
!574 = !DILexicalBlockFile(scope: !568, file: !18, discriminator: 1)
!575 = !DILocation(line: 143, column: 5, scope: !568)
!576 = !DILocation(line: 144, column: 1, scope: !226)
!577 = distinct !DISubprogram(name: "dpkg_options_parse", scope: !18, file: !18, line: 216, type: !578, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !580, !19, !25}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!581 = !DILocalVariable(name: "argvp", arg: 1, scope: !577, file: !18, line: 216, type: !580)
!582 = !DILocation(line: 216, column: 40, scope: !577)
!583 = !DILocalVariable(name: "cmdinfos", arg: 2, scope: !577, file: !18, line: 216, type: !19)
!584 = !DILocation(line: 216, column: 69, scope: !577)
!585 = !DILocalVariable(name: "help_str", arg: 3, scope: !577, file: !18, line: 217, type: !25)
!586 = !DILocation(line: 217, column: 32, scope: !577)
!587 = !DILocalVariable(name: "cip", scope: !577, file: !18, line: 219, type: !19)
!588 = !DILocation(line: 219, column: 25, scope: !577)
!589 = !DILocalVariable(name: "p", scope: !577, file: !18, line: 220, type: !25)
!590 = !DILocation(line: 220, column: 15, scope: !577)
!591 = !DILocalVariable(name: "value", scope: !577, file: !18, line: 220, type: !25)
!592 = !DILocation(line: 220, column: 19, scope: !577)
!593 = !DILocalVariable(name: "l", scope: !577, file: !18, line: 221, type: !30)
!594 = !DILocation(line: 221, column: 7, scope: !577)
!595 = !DILocation(line: 223, column: 18, scope: !577)
!596 = !DILocation(line: 223, column: 16, scope: !577)
!597 = !DILocation(line: 225, column: 7, scope: !577)
!598 = !DILocation(line: 225, column: 3, scope: !577)
!599 = !DILocation(line: 226, column: 3, scope: !577)
!600 = !DILocation(line: 226, column: 17, scope: !601)
!601 = !DILexicalBlockFile(scope: !577, file: !18, discriminator: 1)
!602 = !DILocation(line: 226, column: 16, scope: !601)
!603 = !DILocation(line: 226, column: 15, scope: !601)
!604 = !DILocation(line: 226, column: 13, scope: !601)
!605 = !DILocation(line: 226, column: 24, scope: !601)
!606 = !DILocation(line: 226, column: 27, scope: !607)
!607 = !DILexicalBlockFile(scope: !577, file: !18, discriminator: 2)
!608 = !DILocation(line: 226, column: 32, scope: !607)
!609 = !DILocation(line: 226, column: 39, scope: !607)
!610 = !DILocation(line: 226, column: 42, scope: !611)
!611 = !DILexicalBlockFile(scope: !577, file: !18, discriminator: 3)
!612 = !DILocation(line: 226, column: 47, scope: !611)
!613 = !DILocation(line: 226, column: 3, scope: !614)
!614 = !DILexicalBlockFile(scope: !577, file: !18, discriminator: 4)
!615 = !DILocation(line: 227, column: 9, scope: !616)
!616 = distinct !DILexicalBlock(scope: !577, file: !18, line: 226, column: 56)
!617 = !DILocation(line: 227, column: 5, scope: !616)
!618 = !DILocation(line: 228, column: 16, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !18, line: 228, column: 9)
!620 = !DILocation(line: 228, column: 9, scope: !619)
!621 = !DILocation(line: 228, column: 25, scope: !619)
!622 = !DILocation(line: 228, column: 9, scope: !616)
!623 = !DILocation(line: 229, column: 7, scope: !619)
!624 = !DILocation(line: 230, column: 10, scope: !625)
!625 = distinct !DILexicalBlock(scope: !616, file: !18, line: 230, column: 9)
!626 = !DILocation(line: 230, column: 9, scope: !625)
!627 = !DILocation(line: 230, column: 14, scope: !625)
!628 = !DILocation(line: 230, column: 9, scope: !616)
!629 = !DILocation(line: 231, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !625, file: !18, line: 230, column: 22)
!631 = !DILocation(line: 231, column: 17, scope: !630)
!632 = !DILocation(line: 232, column: 17, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !18, line: 232, column: 7)
!634 = !DILocation(line: 232, column: 15, scope: !633)
!635 = !DILocation(line: 232, column: 12, scope: !633)
!636 = !DILocation(line: 233, column: 12, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !18, line: 232, column: 7)
!638 = !DILocation(line: 233, column: 17, scope: !637)
!639 = !DILocation(line: 233, column: 23, scope: !637)
!640 = !DILocation(line: 233, column: 26, scope: !641)
!641 = !DILexicalBlockFile(scope: !637, file: !18, discriminator: 1)
!642 = !DILocation(line: 233, column: 31, scope: !641)
!643 = !DILocation(line: 233, column: 23, scope: !641)
!644 = !DILocation(line: 232, column: 7, scope: !645)
!645 = !DILexicalBlockFile(scope: !633, file: !18, discriminator: 1)
!646 = !DILocation(line: 235, column: 14, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !18, line: 235, column: 13)
!648 = distinct !DILexicalBlock(scope: !637, file: !18, line: 234, column: 19)
!649 = !DILocation(line: 235, column: 19, scope: !647)
!650 = !DILocation(line: 235, column: 13, scope: !648)
!651 = !DILocation(line: 235, column: 26, scope: !652)
!652 = !DILexicalBlockFile(scope: !647, file: !18, discriminator: 1)
!653 = !DILocation(line: 236, column: 20, scope: !654)
!654 = distinct !DILexicalBlock(scope: !648, file: !18, line: 236, column: 13)
!655 = !DILocation(line: 236, column: 23, scope: !654)
!656 = !DILocation(line: 236, column: 28, scope: !654)
!657 = !DILocation(line: 236, column: 13, scope: !654)
!658 = !DILocation(line: 236, column: 35, scope: !654)
!659 = !DILocation(line: 236, column: 13, scope: !648)
!660 = !DILocation(line: 237, column: 11, scope: !654)
!661 = !DILocation(line: 238, column: 19, scope: !648)
!662 = !DILocation(line: 238, column: 24, scope: !648)
!663 = !DILocation(line: 238, column: 12, scope: !648)
!664 = !DILocation(line: 238, column: 10, scope: !648)
!665 = !DILocation(line: 239, column: 21, scope: !666)
!666 = distinct !DILexicalBlock(scope: !648, file: !18, line: 239, column: 13)
!667 = !DILocation(line: 239, column: 24, scope: !666)
!668 = !DILocation(line: 239, column: 29, scope: !666)
!669 = !DILocation(line: 239, column: 36, scope: !666)
!670 = !DILocation(line: 239, column: 13, scope: !666)
!671 = !DILocation(line: 239, column: 39, scope: !666)
!672 = !DILocation(line: 239, column: 44, scope: !666)
!673 = !DILocation(line: 240, column: 16, scope: !666)
!674 = !DILocation(line: 240, column: 14, scope: !666)
!675 = !DILocation(line: 240, column: 23, scope: !666)
!676 = !DILocation(line: 240, column: 28, scope: !666)
!677 = !DILocation(line: 240, column: 38, scope: !666)
!678 = !DILocation(line: 240, column: 22, scope: !666)
!679 = !DILocation(line: 240, column: 18, scope: !666)
!680 = !DILocation(line: 239, column: 13, scope: !681)
!681 = !DILexicalBlockFile(scope: !648, file: !18, discriminator: 1)
!682 = !DILocation(line: 240, column: 66, scope: !683)
!683 = !DILexicalBlockFile(scope: !684, file: !18, discriminator: 1)
!684 = distinct !DILexicalBlock(scope: !666, file: !18, line: 240, column: 58)
!685 = !DILocation(line: 240, column: 68, scope: !683)
!686 = !DILocation(line: 240, column: 67, scope: !683)
!687 = !DILocation(line: 240, column: 69, scope: !683)
!688 = !DILocation(line: 240, column: 65, scope: !683)
!689 = !DILocation(line: 240, column: 73, scope: !683)
!690 = !DILocation(line: 241, column: 7, scope: !648)
!691 = !DILocation(line: 234, column: 15, scope: !637)
!692 = !DILocation(line: 232, column: 7, scope: !693)
!693 = !DILexicalBlockFile(scope: !637, file: !18, discriminator: 2)
!694 = distinct !{!694, !695}
!695 = !DILocation(line: 232, column: 7, scope: !630)
!696 = !DILocation(line: 242, column: 12, scope: !697)
!697 = distinct !DILexicalBlock(scope: !630, file: !18, line: 242, column: 11)
!698 = !DILocation(line: 242, column: 17, scope: !697)
!699 = !DILocation(line: 242, column: 11, scope: !630)
!700 = !DILocation(line: 242, column: 32, scope: !701)
!701 = !DILexicalBlockFile(scope: !697, file: !18, discriminator: 1)
!702 = !DILocation(line: 242, column: 57, scope: !701)
!703 = !DILocation(line: 242, column: 24, scope: !704)
!704 = !DILexicalBlockFile(scope: !701, file: !18, discriminator: 2)
!705 = !DILocation(line: 242, column: 24, scope: !701)
!706 = !DILocation(line: 243, column: 11, scope: !707)
!707 = distinct !DILexicalBlock(scope: !630, file: !18, line: 243, column: 11)
!708 = !DILocation(line: 243, column: 16, scope: !707)
!709 = !DILocation(line: 243, column: 11, scope: !630)
!710 = !DILocation(line: 244, column: 14, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !18, line: 244, column: 13)
!712 = distinct !DILexicalBlock(scope: !707, file: !18, line: 243, column: 28)
!713 = !DILocation(line: 244, column: 13, scope: !712)
!714 = !DILocation(line: 245, column: 21, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !18, line: 244, column: 21)
!716 = !DILocation(line: 245, column: 27, scope: !715)
!717 = !DILocation(line: 245, column: 18, scope: !715)
!718 = !DILocation(line: 245, column: 16, scope: !715)
!719 = !DILocation(line: 246, column: 16, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !18, line: 246, column: 15)
!721 = !DILocation(line: 246, column: 15, scope: !715)
!722 = !DILocation(line: 246, column: 31, scope: !723)
!723 = !DILexicalBlockFile(scope: !720, file: !18, discriminator: 1)
!724 = !DILocation(line: 246, column: 62, scope: !723)
!725 = !DILocation(line: 246, column: 67, scope: !723)
!726 = !DILocation(line: 246, column: 23, scope: !727)
!727 = !DILexicalBlockFile(scope: !723, file: !18, discriminator: 2)
!728 = !DILocation(line: 246, column: 23, scope: !723)
!729 = !DILocation(line: 247, column: 9, scope: !715)
!730 = !DILocation(line: 248, column: 13, scope: !731)
!731 = distinct !DILexicalBlock(scope: !712, file: !18, line: 248, column: 13)
!732 = !DILocation(line: 248, column: 18, scope: !731)
!733 = !DILocation(line: 248, column: 13, scope: !712)
!734 = !DILocation(line: 248, column: 24, scope: !735)
!735 = !DILexicalBlockFile(scope: !731, file: !18, discriminator: 1)
!736 = !DILocation(line: 248, column: 29, scope: !735)
!737 = !DILocation(line: 248, column: 34, scope: !735)
!738 = !DILocation(line: 248, column: 38, scope: !735)
!739 = !DILocation(line: 249, column: 31, scope: !731)
!740 = !DILocation(line: 249, column: 15, scope: !731)
!741 = !DILocation(line: 249, column: 20, scope: !731)
!742 = !DILocation(line: 249, column: 29, scope: !731)
!743 = !DILocation(line: 250, column: 7, scope: !712)
!744 = !DILocation(line: 251, column: 13, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !18, line: 251, column: 13)
!746 = distinct !DILexicalBlock(scope: !707, file: !18, line: 250, column: 14)
!747 = !DILocation(line: 251, column: 13, scope: !746)
!748 = !DILocation(line: 251, column: 28, scope: !749)
!749 = !DILexicalBlockFile(scope: !745, file: !18, discriminator: 1)
!750 = !DILocation(line: 251, column: 67, scope: !749)
!751 = !DILocation(line: 251, column: 72, scope: !749)
!752 = !DILocation(line: 251, column: 20, scope: !753)
!753 = !DILexicalBlockFile(scope: !749, file: !18, discriminator: 2)
!754 = !DILocation(line: 251, column: 20, scope: !749)
!755 = !DILocation(line: 252, column: 13, scope: !756)
!756 = distinct !DILexicalBlock(scope: !746, file: !18, line: 252, column: 13)
!757 = !DILocation(line: 252, column: 18, scope: !756)
!758 = !DILocation(line: 252, column: 13, scope: !746)
!759 = !DILocation(line: 252, column: 24, scope: !760)
!760 = !DILexicalBlockFile(scope: !756, file: !18, discriminator: 1)
!761 = !DILocation(line: 252, column: 29, scope: !760)
!762 = !DILocation(line: 252, column: 34, scope: !760)
!763 = !DILocation(line: 254, column: 29, scope: !756)
!764 = !DILocation(line: 254, column: 34, scope: !756)
!765 = !DILocation(line: 254, column: 12, scope: !756)
!766 = !DILocation(line: 254, column: 17, scope: !756)
!767 = !DILocation(line: 254, column: 27, scope: !756)
!768 = !DILocation(line: 256, column: 5, scope: !630)
!769 = !DILocation(line: 257, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !625, file: !18, line: 256, column: 12)
!771 = !DILocation(line: 257, column: 15, scope: !772)
!772 = !DILexicalBlockFile(scope: !770, file: !18, discriminator: 1)
!773 = !DILocation(line: 257, column: 14, scope: !772)
!774 = !DILocation(line: 257, column: 7, scope: !772)
!775 = !DILocation(line: 258, column: 19, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !18, line: 258, column: 9)
!777 = distinct !DILexicalBlock(scope: !770, file: !18, line: 257, column: 18)
!778 = !DILocation(line: 258, column: 17, scope: !776)
!779 = !DILocation(line: 258, column: 14, scope: !776)
!780 = !DILocation(line: 258, column: 30, scope: !781)
!781 = !DILexicalBlockFile(scope: !782, file: !18, discriminator: 1)
!782 = distinct !DILexicalBlock(scope: !776, file: !18, line: 258, column: 9)
!783 = !DILocation(line: 258, column: 35, scope: !781)
!784 = !DILocation(line: 258, column: 41, scope: !781)
!785 = !DILocation(line: 258, column: 44, scope: !786)
!786 = !DILexicalBlockFile(scope: !782, file: !18, discriminator: 2)
!787 = !DILocation(line: 258, column: 49, scope: !786)
!788 = !DILocation(line: 258, column: 57, scope: !786)
!789 = !DILocation(line: 258, column: 61, scope: !790)
!790 = !DILexicalBlockFile(scope: !782, file: !18, discriminator: 3)
!791 = !DILocation(line: 258, column: 60, scope: !790)
!792 = !DILocation(line: 258, column: 66, scope: !790)
!793 = !DILocation(line: 258, column: 71, scope: !790)
!794 = !DILocation(line: 258, column: 63, scope: !790)
!795 = !DILocation(line: 258, column: 9, scope: !796)
!796 = !DILexicalBlockFile(scope: !776, file: !18, discriminator: 4)
!797 = !DILocation(line: 258, column: 9, scope: !798)
!798 = !DILexicalBlockFile(scope: !776, file: !18, discriminator: 5)
!799 = !DILocation(line: 258, column: 82, scope: !800)
!800 = !DILexicalBlockFile(scope: !782, file: !18, discriminator: 6)
!801 = !DILocation(line: 258, column: 9, scope: !800)
!802 = distinct !{!802, !803}
!803 = !DILocation(line: 258, column: 9, scope: !777)
!804 = !DILocation(line: 259, column: 14, scope: !805)
!805 = distinct !DILexicalBlock(scope: !777, file: !18, line: 259, column: 13)
!806 = !DILocation(line: 259, column: 19, scope: !805)
!807 = !DILocation(line: 259, column: 13, scope: !777)
!808 = !DILocation(line: 259, column: 35, scope: !809)
!809 = !DILexicalBlockFile(scope: !805, file: !18, discriminator: 1)
!810 = !DILocation(line: 259, column: 60, scope: !809)
!811 = !DILocation(line: 259, column: 59, scope: !809)
!812 = !DILocation(line: 259, column: 27, scope: !813)
!813 = !DILexicalBlockFile(scope: !809, file: !18, discriminator: 2)
!814 = !DILocation(line: 259, column: 27, scope: !809)
!815 = !DILocation(line: 260, column: 10, scope: !777)
!816 = !DILocation(line: 261, column: 13, scope: !817)
!817 = distinct !DILexicalBlock(scope: !777, file: !18, line: 261, column: 13)
!818 = !DILocation(line: 261, column: 18, scope: !817)
!819 = !DILocation(line: 261, column: 13, scope: !777)
!820 = !DILocation(line: 262, column: 17, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !18, line: 262, column: 15)
!822 = distinct !DILexicalBlock(scope: !817, file: !18, line: 261, column: 30)
!823 = !DILocation(line: 262, column: 16, scope: !821)
!824 = !DILocation(line: 262, column: 15, scope: !822)
!825 = !DILocation(line: 263, column: 23, scope: !826)
!826 = distinct !DILexicalBlock(scope: !821, file: !18, line: 262, column: 20)
!827 = !DILocation(line: 263, column: 29, scope: !826)
!828 = !DILocation(line: 263, column: 20, scope: !826)
!829 = !DILocation(line: 263, column: 18, scope: !826)
!830 = !DILocation(line: 264, column: 18, scope: !831)
!831 = distinct !DILexicalBlock(scope: !826, file: !18, line: 264, column: 17)
!832 = !DILocation(line: 264, column: 17, scope: !826)
!833 = !DILocation(line: 264, column: 33, scope: !834)
!834 = !DILexicalBlockFile(scope: !831, file: !18, discriminator: 1)
!835 = !DILocation(line: 264, column: 63, scope: !834)
!836 = !DILocation(line: 264, column: 68, scope: !834)
!837 = !DILocation(line: 264, column: 25, scope: !838)
!838 = !DILexicalBlockFile(scope: !834, file: !18, discriminator: 2)
!839 = !DILocation(line: 264, column: 25, scope: !834)
!840 = !DILocation(line: 265, column: 11, scope: !826)
!841 = !DILocation(line: 266, column: 20, scope: !842)
!842 = distinct !DILexicalBlock(scope: !821, file: !18, line: 265, column: 18)
!843 = !DILocation(line: 266, column: 18, scope: !842)
!844 = !DILocation(line: 266, column: 24, scope: !842)
!845 = !DILocation(line: 267, column: 18, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !18, line: 267, column: 17)
!847 = !DILocation(line: 267, column: 17, scope: !846)
!848 = !DILocation(line: 267, column: 24, scope: !846)
!849 = !DILocation(line: 267, column: 17, scope: !842)
!850 = !DILocation(line: 267, column: 37, scope: !851)
!851 = !DILexicalBlockFile(scope: !846, file: !18, discriminator: 1)
!852 = !DILocation(line: 267, column: 32, scope: !851)
!853 = !DILocation(line: 269, column: 15, scope: !854)
!854 = distinct !DILexicalBlock(scope: !822, file: !18, line: 269, column: 15)
!855 = !DILocation(line: 269, column: 20, scope: !854)
!856 = !DILocation(line: 269, column: 15, scope: !822)
!857 = !DILocation(line: 269, column: 26, scope: !858)
!858 = !DILexicalBlockFile(scope: !854, file: !18, discriminator: 1)
!859 = !DILocation(line: 269, column: 31, scope: !858)
!860 = !DILocation(line: 269, column: 36, scope: !858)
!861 = !DILocation(line: 269, column: 40, scope: !858)
!862 = !DILocation(line: 270, column: 33, scope: !854)
!863 = !DILocation(line: 270, column: 17, scope: !854)
!864 = !DILocation(line: 270, column: 22, scope: !854)
!865 = !DILocation(line: 270, column: 31, scope: !854)
!866 = !DILocation(line: 271, column: 9, scope: !822)
!867 = !DILocation(line: 272, column: 16, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !18, line: 272, column: 15)
!869 = distinct !DILexicalBlock(scope: !817, file: !18, line: 271, column: 16)
!870 = !DILocation(line: 272, column: 15, scope: !868)
!871 = !DILocation(line: 272, column: 18, scope: !868)
!872 = !DILocation(line: 272, column: 15, scope: !869)
!873 = !DILocation(line: 272, column: 34, scope: !874)
!874 = !DILexicalBlockFile(scope: !868, file: !18, discriminator: 1)
!875 = !DILocation(line: 272, column: 72, scope: !874)
!876 = !DILocation(line: 272, column: 77, scope: !874)
!877 = !DILocation(line: 272, column: 26, scope: !878)
!878 = !DILexicalBlockFile(scope: !874, file: !18, discriminator: 2)
!879 = !DILocation(line: 272, column: 26, scope: !874)
!880 = !DILocation(line: 273, column: 15, scope: !881)
!881 = distinct !DILexicalBlock(scope: !869, file: !18, line: 273, column: 15)
!882 = !DILocation(line: 273, column: 20, scope: !881)
!883 = !DILocation(line: 273, column: 15, scope: !869)
!884 = !DILocation(line: 273, column: 26, scope: !885)
!885 = !DILexicalBlockFile(scope: !881, file: !18, discriminator: 1)
!886 = !DILocation(line: 273, column: 31, scope: !885)
!887 = !DILocation(line: 273, column: 36, scope: !885)
!888 = !DILocation(line: 275, column: 31, scope: !881)
!889 = !DILocation(line: 275, column: 36, scope: !881)
!890 = !DILocation(line: 275, column: 14, scope: !881)
!891 = !DILocation(line: 275, column: 19, scope: !881)
!892 = !DILocation(line: 275, column: 29, scope: !881)
!893 = !DILocation(line: 257, column: 7, scope: !894)
!894 = !DILexicalBlockFile(scope: !770, file: !18, discriminator: 2)
!895 = distinct !{!895, !769}
!896 = !DILocation(line: 226, column: 3, scope: !897)
!897 = !DILexicalBlockFile(scope: !577, file: !18, discriminator: 5)
!898 = distinct !{!898, !599}
!899 = !DILocation(line: 280, column: 1, scope: !577)
!900 = distinct !DISubprogram(name: "dpkg_options_parse_arg_int", scope: !18, file: !18, line: 283, type: !901, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!901 = !DISubroutineType(types: !902)
!902 = !{!148, !19, !25}
!903 = !DILocalVariable(name: "cmd", arg: 1, scope: !900, file: !18, line: 283, type: !19)
!904 = !DILocation(line: 283, column: 50, scope: !900)
!905 = !DILocalVariable(name: "str", arg: 2, scope: !900, file: !18, line: 283, type: !25)
!906 = !DILocation(line: 283, column: 67, scope: !900)
!907 = !DILocalVariable(name: "value", scope: !900, file: !18, line: 285, type: !148)
!908 = !DILocation(line: 285, column: 8, scope: !900)
!909 = !DILocalVariable(name: "end", scope: !900, file: !18, line: 286, type: !60)
!910 = !DILocation(line: 286, column: 9, scope: !900)
!911 = !DILocation(line: 288, column: 4, scope: !900)
!912 = !DILocation(line: 288, column: 8, scope: !900)
!913 = !DILocation(line: 289, column: 18, scope: !900)
!914 = !DILocation(line: 289, column: 11, scope: !900)
!915 = !DILocation(line: 289, column: 9, scope: !900)
!916 = !DILocation(line: 290, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !900, file: !18, line: 290, column: 7)
!918 = !DILocation(line: 290, column: 14, scope: !917)
!919 = !DILocation(line: 290, column: 11, scope: !917)
!920 = !DILocation(line: 290, column: 18, scope: !917)
!921 = !DILocation(line: 290, column: 22, scope: !922)
!922 = !DILexicalBlockFile(scope: !917, file: !18, discriminator: 1)
!923 = !DILocation(line: 290, column: 21, scope: !922)
!924 = !DILocation(line: 290, column: 26, scope: !922)
!925 = !DILocation(line: 290, column: 29, scope: !926)
!926 = !DILexicalBlockFile(scope: !917, file: !18, discriminator: 2)
!927 = !DILocation(line: 290, column: 35, scope: !926)
!928 = !DILocation(line: 290, column: 39, scope: !926)
!929 = !DILocation(line: 290, column: 42, scope: !930)
!930 = !DILexicalBlockFile(scope: !917, file: !18, discriminator: 3)
!931 = !DILocation(line: 290, column: 48, scope: !930)
!932 = !DILocation(line: 290, column: 61, scope: !930)
!933 = !DILocation(line: 290, column: 62, scope: !934)
!934 = !DILexicalBlockFile(scope: !917, file: !18, discriminator: 4)
!935 = !DILocation(line: 290, column: 61, scope: !934)
!936 = !DILocation(line: 290, column: 66, scope: !934)
!937 = !DILocation(line: 290, column: 7, scope: !934)
!938 = !DILocation(line: 291, column: 9, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !18, line: 291, column: 9)
!940 = distinct !DILexicalBlock(scope: !917, file: !18, line: 290, column: 72)
!941 = !DILocation(line: 291, column: 14, scope: !939)
!942 = !DILocation(line: 291, column: 9, scope: !940)
!943 = !DILocation(line: 292, column: 15, scope: !939)
!944 = !DILocation(line: 292, column: 56, scope: !939)
!945 = !DILocation(line: 292, column: 61, scope: !939)
!946 = !DILocation(line: 292, column: 68, scope: !939)
!947 = !DILocation(line: 292, column: 7, scope: !948)
!948 = !DILexicalBlockFile(scope: !939, file: !18, discriminator: 1)
!949 = !DILocation(line: 292, column: 7, scope: !939)
!950 = !DILocation(line: 294, column: 15, scope: !939)
!951 = !DILocation(line: 294, column: 55, scope: !939)
!952 = !DILocation(line: 294, column: 60, scope: !939)
!953 = !DILocation(line: 294, column: 68, scope: !939)
!954 = !DILocation(line: 294, column: 7, scope: !948)
!955 = !DILocation(line: 294, column: 7, scope: !939)
!956 = !DILocation(line: 297, column: 10, scope: !900)
!957 = !DILocation(line: 297, column: 3, scope: !900)
!958 = distinct !DISubprogram(name: "setobsolete", scope: !18, file: !18, line: 301, type: !37, isLocal: false, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!959 = !DILocalVariable(name: "cip", arg: 1, scope: !958, file: !18, line: 301, type: !19)
!960 = !DILocation(line: 301, column: 35, scope: !958)
!961 = !DILocalVariable(name: "value", arg: 2, scope: !958, file: !18, line: 301, type: !25)
!962 = !DILocation(line: 301, column: 52, scope: !958)
!963 = !DILocation(line: 303, column: 10, scope: !958)
!964 = !DILocation(line: 303, column: 39, scope: !958)
!965 = !DILocation(line: 303, column: 44, scope: !958)
!966 = !DILocation(line: 303, column: 3, scope: !967)
!967 = !DILexicalBlockFile(scope: !958, file: !18, discriminator: 1)
!968 = !DILocation(line: 304, column: 1, scope: !958)
!969 = distinct !DISubprogram(name: "setaction", scope: !18, file: !18, line: 316, type: !37, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!970 = !DILocalVariable(name: "cip", arg: 1, scope: !969, file: !18, line: 316, type: !19)
!971 = !DILocation(line: 316, column: 33, scope: !969)
!972 = !DILocalVariable(name: "value", arg: 2, scope: !969, file: !18, line: 316, type: !25)
!973 = !DILocation(line: 316, column: 50, scope: !969)
!974 = !DILocation(line: 318, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !969, file: !18, line: 318, column: 7)
!976 = !DILocation(line: 318, column: 17, scope: !975)
!977 = !DILocation(line: 318, column: 20, scope: !978)
!978 = !DILexicalBlockFile(scope: !975, file: !18, discriminator: 1)
!979 = !DILocation(line: 318, column: 7, scope: !978)
!980 = !DILocation(line: 319, column: 13, scope: !975)
!981 = !DILocation(line: 320, column: 27, scope: !975)
!982 = !DILocation(line: 320, column: 32, scope: !975)
!983 = !DILocation(line: 320, column: 14, scope: !975)
!984 = !DILocation(line: 320, column: 41, scope: !975)
!985 = !DILocation(line: 320, column: 46, scope: !975)
!986 = !DILocation(line: 321, column: 27, scope: !975)
!987 = !DILocation(line: 321, column: 38, scope: !975)
!988 = !DILocation(line: 321, column: 14, scope: !975)
!989 = !DILocation(line: 321, column: 47, scope: !975)
!990 = !DILocation(line: 321, column: 58, scope: !975)
!991 = !DILocation(line: 319, column: 5, scope: !978)
!992 = !DILocation(line: 319, column: 5, scope: !975)
!993 = !DILocation(line: 322, column: 15, scope: !969)
!994 = !DILocation(line: 322, column: 13, scope: !969)
!995 = !DILocation(line: 323, column: 1, scope: !969)
!996 = distinct !DISubprogram(name: "option_short", scope: !18, file: !18, line: 310, type: !997, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!997 = !DISubroutineType(types: !998)
!998 = !{!30, !30}
!999 = !DILocalVariable(name: "c", arg: 1, scope: !996, file: !18, line: 310, type: !30)
!1000 = !DILocation(line: 310, column: 18, scope: !996)
!1001 = !DILocation(line: 312, column: 10, scope: !996)
!1002 = !DILocation(line: 312, column: 14, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !996, file: !18, discriminator: 1)
!1004 = !DILocation(line: 312, column: 10, scope: !1003)
!1005 = !DILocation(line: 312, column: 10, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !996, file: !18, discriminator: 2)
!1007 = !DILocation(line: 312, column: 10, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !996, file: !18, discriminator: 3)
!1009 = !DILocation(line: 312, column: 3, scope: !1008)
!1010 = distinct !DISubprogram(name: "valid_config_filename", scope: !18, file: !18, line: 147, type: !1011, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!30, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64, align: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!1015 = !DILocalVariable(name: "dent", arg: 1, scope: !1010, file: !18, line: 147, type: !1013)
!1016 = !DILocation(line: 147, column: 44, scope: !1010)
!1017 = !DILocalVariable(name: "c", scope: !1010, file: !18, line: 149, type: !25)
!1018 = !DILocation(line: 149, column: 15, scope: !1010)
!1019 = !DILocation(line: 151, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1010, file: !18, line: 151, column: 7)
!1021 = !DILocation(line: 151, column: 13, scope: !1020)
!1022 = !DILocation(line: 151, column: 23, scope: !1020)
!1023 = !DILocation(line: 151, column: 7, scope: !1010)
!1024 = !DILocation(line: 152, column: 5, scope: !1020)
!1025 = !DILocation(line: 154, column: 12, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1010, file: !18, line: 154, column: 3)
!1027 = !DILocation(line: 154, column: 18, scope: !1026)
!1028 = !DILocation(line: 154, column: 10, scope: !1026)
!1029 = !DILocation(line: 154, column: 8, scope: !1026)
!1030 = !DILocation(line: 154, column: 27, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1032, file: !18, discriminator: 1)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !18, line: 154, column: 3)
!1033 = !DILocation(line: 154, column: 26, scope: !1031)
!1034 = !DILocation(line: 154, column: 3, scope: !1031)
!1035 = !DILocation(line: 155, column: 21, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !18, line: 155, column: 9)
!1037 = !DILocation(line: 155, column: 20, scope: !1036)
!1038 = !DILocation(line: 155, column: 10, scope: !1036)
!1039 = !DILocation(line: 155, column: 24, scope: !1036)
!1040 = !DILocation(line: 155, column: 28, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1036, file: !18, discriminator: 1)
!1042 = !DILocation(line: 155, column: 27, scope: !1041)
!1043 = !DILocation(line: 155, column: 30, scope: !1041)
!1044 = !DILocation(line: 155, column: 37, scope: !1041)
!1045 = !DILocation(line: 155, column: 41, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1036, file: !18, discriminator: 2)
!1047 = !DILocation(line: 155, column: 40, scope: !1046)
!1048 = !DILocation(line: 155, column: 43, scope: !1046)
!1049 = !DILocation(line: 155, column: 9, scope: !1046)
!1050 = !DILocation(line: 156, column: 7, scope: !1036)
!1051 = !DILocation(line: 155, column: 46, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1036, file: !18, discriminator: 3)
!1053 = !DILocation(line: 154, column: 31, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1032, file: !18, discriminator: 2)
!1055 = !DILocation(line: 154, column: 3, scope: !1054)
!1056 = distinct !{!1056, !1057}
!1057 = !DILocation(line: 154, column: 3, scope: !1010)
!1058 = !DILocation(line: 158, column: 8, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1010, file: !18, line: 158, column: 7)
!1060 = !DILocation(line: 158, column: 7, scope: !1059)
!1061 = !DILocation(line: 158, column: 10, scope: !1059)
!1062 = !DILocation(line: 158, column: 7, scope: !1010)
!1063 = !DILocation(line: 159, column: 5, scope: !1059)
!1064 = !DILocation(line: 161, column: 5, scope: !1059)
!1065 = !DILocation(line: 162, column: 1, scope: !1010)
!1066 = distinct !DISubprogram(name: "c_isalnum", scope: !4, file: !4, line: 114, type: !1067, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!1069, !30}
!1069 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!1070 = !DILocalVariable(name: "c", arg: 1, scope: !1066, file: !4, line: 114, type: !30)
!1071 = !DILocation(line: 114, column: 15, scope: !1066)
!1072 = !DILocation(line: 116, column: 18, scope: !1066)
!1073 = !DILocation(line: 116, column: 9, scope: !1066)
!1074 = !DILocation(line: 116, column: 2, scope: !1066)
!1075 = distinct !DISubprogram(name: "c_isspace", scope: !4, file: !4, line: 69, type: !1067, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!1076 = !DILocalVariable(name: "c", arg: 1, scope: !1075, file: !4, line: 69, type: !30)
!1077 = !DILocation(line: 69, column: 15, scope: !1075)
!1078 = !DILocation(line: 71, column: 18, scope: !1075)
!1079 = !DILocation(line: 71, column: 9, scope: !1075)
!1080 = !DILocation(line: 71, column: 2, scope: !1075)
!1081 = distinct !DISubprogram(name: "config_error", scope: !18, file: !18, line: 55, type: !1082, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !25, !30, !25, null}
!1084 = !DILocalVariable(name: "file_name", arg: 1, scope: !1081, file: !18, line: 55, type: !25)
!1085 = !DILocation(line: 55, column: 26, scope: !1081)
!1086 = !DILocalVariable(name: "line_num", arg: 2, scope: !1081, file: !18, line: 55, type: !30)
!1087 = !DILocation(line: 55, column: 41, scope: !1081)
!1088 = !DILocalVariable(name: "fmt", arg: 3, scope: !1081, file: !18, line: 55, type: !25)
!1089 = !DILocation(line: 55, column: 63, scope: !1081)
!1090 = !DILocalVariable(name: "buf", scope: !1081, file: !18, line: 57, type: !60)
!1091 = !DILocation(line: 57, column: 9, scope: !1081)
!1092 = !DILocalVariable(name: "args", scope: !1081, file: !18, line: 58, type: !63)
!1093 = !DILocation(line: 58, column: 11, scope: !1081)
!1094 = !DILocation(line: 60, column: 2, scope: !1081)
!1095 = !DILocation(line: 61, column: 21, scope: !1081)
!1096 = !DILocation(line: 61, column: 26, scope: !1081)
!1097 = !DILocation(line: 61, column: 3, scope: !1081)
!1098 = !DILocation(line: 62, column: 2, scope: !1081)
!1099 = !DILocation(line: 64, column: 9, scope: !1081)
!1100 = !DILocation(line: 64, column: 46, scope: !1081)
!1101 = !DILocation(line: 64, column: 57, scope: !1081)
!1102 = !DILocation(line: 64, column: 67, scope: !1081)
!1103 = !DILocation(line: 64, column: 3, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1081, file: !18, discriminator: 1)
!1105 = !DILocation(line: 64, column: 3, scope: !1081)
!1106 = !DILocation(line: 65, column: 1, scope: !1081)
