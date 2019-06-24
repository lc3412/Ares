; ModuleID = './[inter]lib--dpkg--mlib.o.i'
source_filename = "./[inter]lib--dpkg--mlib.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@onerr_abort = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to dup for fd %d\00", align 1
@m_dup2.stdstrings = internal constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to dup for std%s\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"failed to create pipe\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"error writing to '%s'\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"unable to read filedescriptor flags for %.250s\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"unable to set close-on-exec flag for %.250s\00", align 1

; Function Attrs: nounwind uwtable
define i8* @m_malloc(i64) #0 !dbg !20 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !27, metadata !28), !dbg !29
  call void @llvm.dbg.declare(metadata i8** %3, metadata !30, metadata !28), !dbg !31
  %4 = load i64, i64* %2, align 8, !dbg !32
  %5 = call noalias i8* @malloc(i64 %4) #5, !dbg !33
  %6 = call i8* @must_alloc(i8* %5), !dbg !34
  store i8* %6, i8** %3, align 8, !dbg !36
  %7 = load i8*, i8** %3, align 8, !dbg !37
  ret i8* %7, !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @must_alloc(i8*) #2 !dbg !39 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !42, metadata !28), !dbg !43
  %3 = load i8*, i8** %2, align 8, !dbg !44
  %4 = icmp ne i8* %3, null, !dbg !44
  br i1 %4, label %5, label %7, !dbg !46

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !47
  ret i8* %6, !dbg !48

; <label>:7:                                      ; preds = %1
  %8 = load volatile i32, i32* @onerr_abort, align 4, !dbg !49
  %9 = add nsw i32 %8, 1, !dbg !49
  store volatile i32 %9, i32* @onerr_abort, align 4, !dbg !49
  %10 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !50
  call void (i8*, ...) @ohshite(i8* %10) #8, !dbg !51
  unreachable, !dbg !53
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define i8* @m_calloc(i64, i64) #0 !dbg !54 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !57, metadata !28), !dbg !58
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !59, metadata !28), !dbg !60
  %5 = load i64, i64* %3, align 8, !dbg !61
  %6 = load i64, i64* %4, align 8, !dbg !62
  %7 = call noalias i8* @calloc(i64 %5, i64 %6) #5, !dbg !63
  %8 = call i8* @must_alloc(i8* %7), !dbg !64
  ret i8* %8, !dbg !66
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind uwtable
define i8* @m_realloc(i8*, i64) #0 !dbg !67 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !70, metadata !28), !dbg !71
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !72, metadata !28), !dbg !73
  %5 = load i8*, i8** %3, align 8, !dbg !74
  %6 = load i64, i64* %4, align 8, !dbg !75
  %7 = call i8* @realloc(i8* %5, i64 %6) #5, !dbg !76
  %8 = call i8* @must_alloc(i8* %7), !dbg !77
  ret i8* %8, !dbg !79
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define i8* @m_strdup(i8*) #0 !dbg !80 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !84, metadata !28), !dbg !85
  %3 = load i8*, i8** %2, align 8, !dbg !86
  %4 = call noalias i8* @strdup(i8* %3) #5, !dbg !87
  %5 = call i8* @must_alloc(i8* %4), !dbg !88
  ret i8* %5, !dbg !90
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @m_strndup(i8*, i64) #0 !dbg !91 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !94, metadata !28), !dbg !95
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !96, metadata !28), !dbg !97
  %5 = load i8*, i8** %3, align 8, !dbg !98
  %6 = load i64, i64* %4, align 8, !dbg !99
  %7 = call noalias i8* @strndup(i8* %5, i64 %6) #5, !dbg !100
  %8 = call i8* @must_alloc(i8* %7), !dbg !101
  ret i8* %8, !dbg !103
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @m_vasprintf(i8**, i8*, %struct.__va_list_tag*) #0 !dbg !104 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !116, metadata !28), !dbg !117
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !118, metadata !28), !dbg !119
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !120, metadata !28), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %7, metadata !122, metadata !28), !dbg !123
  %8 = load i8**, i8*** %4, align 8, !dbg !124
  %9 = load i8*, i8** %5, align 8, !dbg !125
  %10 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !126
  %11 = call i32 @vasprintf(i8** %8, i8* %9, %struct.__va_list_tag* %10) #5, !dbg !127
  store i32 %11, i32* %7, align 4, !dbg !128
  %12 = load i32, i32* %7, align 4, !dbg !129
  %13 = icmp sge i32 %12, 0, !dbg !131
  br i1 %13, label %14, label %16, !dbg !132

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %7, align 4, !dbg !133
  ret i32 %15, !dbg !134

; <label>:16:                                     ; preds = %3
  %17 = load volatile i32, i32* @onerr_abort, align 4, !dbg !135
  %18 = add nsw i32 %17, 1, !dbg !135
  store volatile i32 %18, i32* @onerr_abort, align 4, !dbg !135
  %19 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !136
  call void (i8*, ...) @ohshite(i8* %19) #8, !dbg !137
  unreachable, !dbg !139
}

; Function Attrs: nounwind
declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @m_asprintf(i8**, i8*, ...) #0 !dbg !140 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !143, metadata !28), !dbg !144
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !145, metadata !28), !dbg !146
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !147, metadata !28), !dbg !156
  call void @llvm.dbg.declare(metadata i32* %6, metadata !157, metadata !28), !dbg !158
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !159
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !159
  call void @llvm.va_start(i8* %8), !dbg !159
  %9 = load i8**, i8*** %3, align 8, !dbg !160
  %10 = load i8*, i8** %4, align 8, !dbg !161
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !162
  %12 = call i32 @m_vasprintf(i8** %9, i8* %10, %struct.__va_list_tag* %11), !dbg !163
  store i32 %12, i32* %6, align 4, !dbg !164
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !165
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !165
  call void @llvm.va_end(i8* %14), !dbg !165
  %15 = load i32, i32* %6, align 4, !dbg !166
  ret i32 %15, !dbg !167
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @m_dup(i32) #0 !dbg !168 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !171, metadata !28), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %3, metadata !173, metadata !28), !dbg !174
  %4 = load i32, i32* %2, align 4, !dbg !175
  %5 = call i32 @dup(i32 %4) #5, !dbg !176
  store i32 %5, i32* %3, align 4, !dbg !177
  %6 = load i32, i32* %3, align 4, !dbg !178
  %7 = icmp sge i32 %6, 0, !dbg !180
  br i1 %7, label %8, label %10, !dbg !181

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !182
  ret i32 %9, !dbg !183

; <label>:10:                                     ; preds = %1
  %11 = load volatile i32, i32* @onerr_abort, align 4, !dbg !184
  %12 = add nsw i32 %11, 1, !dbg !184
  store volatile i32 %12, i32* @onerr_abort, align 4, !dbg !184
  %13 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !185
  %14 = load i32, i32* %2, align 4, !dbg !186
  call void (i8*, ...) @ohshite(i8* %13, i32 %14) #8, !dbg !187
  unreachable, !dbg !189
}

; Function Attrs: nounwind
declare i32 @dup(i32) #3

; Function Attrs: nounwind uwtable
define void @m_dup2(i32, i32) #0 !dbg !5 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !190, metadata !28), !dbg !191
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !192, metadata !28), !dbg !193
  %5 = load i32, i32* %3, align 4, !dbg !194
  %6 = load i32, i32* %4, align 4, !dbg !196
  %7 = call i32 @dup2(i32 %5, i32 %6) #5, !dbg !197
  %8 = load i32, i32* %4, align 4, !dbg !198
  %9 = icmp eq i32 %7, %8, !dbg !199
  br i1 %9, label %10, label %11, !dbg !200

; <label>:10:                                     ; preds = %2
  ret void, !dbg !201

; <label>:11:                                     ; preds = %2
  %12 = load volatile i32, i32* @onerr_abort, align 4, !dbg !203
  %13 = add nsw i32 %12, 1, !dbg !203
  store volatile i32 %13, i32* @onerr_abort, align 4, !dbg !203
  %14 = load i32, i32* %4, align 4, !dbg !204
  %15 = icmp slt i32 %14, 3, !dbg !206
  br i1 %15, label %16, label %22, !dbg !207

; <label>:16:                                     ; preds = %11
  %17 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #5, !dbg !208
  %18 = load i32, i32* %4, align 4, !dbg !210
  %19 = sext i32 %18 to i64, !dbg !211
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* @m_dup2.stdstrings, i64 0, i64 %19, !dbg !211
  %21 = load i8*, i8** %20, align 8, !dbg !211
  call void (i8*, ...) @ohshite(i8* %17, i8* %21) #8, !dbg !212
  unreachable, !dbg !214

; <label>:22:                                     ; preds = %11
  %23 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !215
  %24 = load i32, i32* %4, align 4, !dbg !216
  call void (i8*, ...) @ohshite(i8* %23, i32 %24) #8, !dbg !217
  unreachable, !dbg !219
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #3

; Function Attrs: nounwind uwtable
define void @m_pipe(i32*) #0 !dbg !220 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !224, metadata !28), !dbg !225
  %3 = load i32*, i32** %2, align 8, !dbg !226
  %4 = call i32 @pipe(i32* %3) #5, !dbg !228
  %5 = icmp ne i32 %4, 0, !dbg !228
  br i1 %5, label %7, label %6, !dbg !229

; <label>:6:                                      ; preds = %1
  ret void, !dbg !230

; <label>:7:                                      ; preds = %1
  %8 = load volatile i32, i32* @onerr_abort, align 4, !dbg !232
  %9 = add nsw i32 %8, 1, !dbg !232
  store volatile i32 %9, i32* @onerr_abort, align 4, !dbg !232
  %10 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #5, !dbg !233
  call void (i8*, ...) @ohshite(i8* %10) #8, !dbg !234
  unreachable, !dbg !236
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #3

; Function Attrs: nounwind uwtable
define void @m_output(%struct._IO_FILE*, i8*) #0 !dbg !237 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !293, metadata !28), !dbg !294
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !295, metadata !28), !dbg !296
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !297
  %6 = call i32 @fflush(%struct._IO_FILE* %5), !dbg !298
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !299
  %8 = call i32 @ferror(%struct._IO_FILE* %7) #5, !dbg !301
  %9 = icmp ne i32 %8, 0, !dbg !301
  br i1 %9, label %10, label %17, !dbg !302

; <label>:10:                                     ; preds = %2
  %11 = call i32* @__errno_location() #1, !dbg !303
  %12 = load i32, i32* %11, align 4, !dbg !305
  %13 = icmp ne i32 %12, 32, !dbg !306
  br i1 %13, label %14, label %17, !dbg !307

; <label>:14:                                     ; preds = %10
  %15 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #5, !dbg !308
  %16 = load i8*, i8** %4, align 8, !dbg !309
  call void (i8*, ...) @ohshite(i8* %15, i8* %16) #8, !dbg !310
  unreachable, !dbg !311

; <label>:17:                                     ; preds = %10, %2
  ret void, !dbg !312
}

declare i32 @fflush(%struct._IO_FILE*) #6

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind uwtable
define void @setcloexec(i32, i8*) #0 !dbg !313 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !316, metadata !28), !dbg !317
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !318, metadata !28), !dbg !319
  call void @llvm.dbg.declare(metadata i32* %5, metadata !320, metadata !28), !dbg !321
  %6 = load i32, i32* %3, align 4, !dbg !322
  %7 = call i32 (i32, i32, ...) @fcntl(i32 %6, i32 1), !dbg !323
  store i32 %7, i32* %5, align 4, !dbg !324
  %8 = load i32, i32* %5, align 4, !dbg !325
  %9 = icmp eq i32 %8, -1, !dbg !327
  br i1 %9, label %10, label %13, !dbg !328

; <label>:10:                                     ; preds = %2
  %11 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0)) #5, !dbg !329
  %12 = load i8*, i8** %4, align 8, !dbg !330
  call void (i8*, ...) @ohshite(i8* %11, i8* %12) #8, !dbg !331
  unreachable, !dbg !333

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %3, align 4, !dbg !334
  %15 = load i32, i32* %5, align 4, !dbg !336
  %16 = or i32 %15, 1, !dbg !337
  %17 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 2, i32 %16), !dbg !338
  %18 = icmp eq i32 %17, -1, !dbg !339
  br i1 %18, label %19, label %22, !dbg !340

; <label>:19:                                     ; preds = %13
  %20 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0)) #5, !dbg !341
  %21 = load i8*, i8** %4, align 8, !dbg !342
  call void (i8*, ...) @ohshite(i8* %20, i8* %21) #8, !dbg !343
  unreachable, !dbg !345

; <label>:22:                                     ; preds = %13
  ret void, !dbg !346
}

declare i32 @fcntl(i32, i32, ...) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "[inter]lib--dpkg--mlib.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "stdstrings", scope: !5, file: !6, line: 128, type: !10, isLocal: true, isDefinition: true, variable: [3 x i8*]* @m_dup2.stdstrings)
!5 = distinct !DISubprogram(name: "m_dup2", scope: !6, file: !6, line: 127, type: !7, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!6 = !DIFile(filename: "mlib.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !9}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, align: 64, elements: !15)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 3)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!20 = distinct !DISubprogram(name: "m_malloc", scope: !6, file: !6, line: 47, type: !21, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 216, baseType: !26)
!25 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!26 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!27 = !DILocalVariable(name: "amount", arg: 1, scope: !20, file: !6, line: 47, type: !24)
!28 = !DIExpression()
!29 = !DILocation(line: 47, column: 23, scope: !20)
!30 = !DILocalVariable(name: "ptr", scope: !20, file: !6, line: 51, type: !23)
!31 = !DILocation(line: 51, column: 9, scope: !20)
!32 = !DILocation(line: 53, column: 27, scope: !20)
!33 = !DILocation(line: 53, column: 20, scope: !20)
!34 = !DILocation(line: 53, column: 9, scope: !35)
!35 = !DILexicalBlockFile(scope: !20, file: !6, discriminator: 1)
!36 = !DILocation(line: 53, column: 7, scope: !20)
!37 = !DILocation(line: 63, column: 10, scope: !20)
!38 = !DILocation(line: 63, column: 3, scope: !20)
!39 = distinct !DISubprogram(name: "must_alloc", scope: !6, file: !6, line: 38, type: !40, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{!23, !23}
!42 = !DILocalVariable(name: "ptr", arg: 1, scope: !39, file: !6, line: 38, type: !23)
!43 = !DILocation(line: 38, column: 18, scope: !39)
!44 = !DILocation(line: 40, column: 7, scope: !45)
!45 = distinct !DILexicalBlock(scope: !39, file: !6, line: 40, column: 7)
!46 = !DILocation(line: 40, column: 7, scope: !39)
!47 = !DILocation(line: 41, column: 12, scope: !45)
!48 = !DILocation(line: 41, column: 5, scope: !45)
!49 = !DILocation(line: 43, column: 14, scope: !39)
!50 = !DILocation(line: 44, column: 10, scope: !39)
!51 = !DILocation(line: 44, column: 3, scope: !52)
!52 = !DILexicalBlockFile(scope: !39, file: !6, discriminator: 1)
!53 = !DILocation(line: 44, column: 3, scope: !39)
!54 = distinct !DISubprogram(name: "m_calloc", scope: !6, file: !6, line: 67, type: !55, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{!23, !24, !24}
!57 = !DILocalVariable(name: "nmemb", arg: 1, scope: !54, file: !6, line: 67, type: !24)
!58 = !DILocation(line: 67, column: 17, scope: !54)
!59 = !DILocalVariable(name: "size", arg: 2, scope: !54, file: !6, line: 67, type: !24)
!60 = !DILocation(line: 67, column: 31, scope: !54)
!61 = !DILocation(line: 69, column: 28, scope: !54)
!62 = !DILocation(line: 69, column: 35, scope: !54)
!63 = !DILocation(line: 69, column: 21, scope: !54)
!64 = !DILocation(line: 69, column: 10, scope: !65)
!65 = !DILexicalBlockFile(scope: !54, file: !6, discriminator: 1)
!66 = !DILocation(line: 69, column: 3, scope: !54)
!67 = distinct !DISubprogram(name: "m_realloc", scope: !6, file: !6, line: 72, type: !68, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!68 = !DISubroutineType(types: !69)
!69 = !{!23, !23, !24}
!70 = !DILocalVariable(name: "r", arg: 1, scope: !67, file: !6, line: 72, type: !23)
!71 = !DILocation(line: 72, column: 23, scope: !67)
!72 = !DILocalVariable(name: "amount", arg: 2, scope: !67, file: !6, line: 72, type: !24)
!73 = !DILocation(line: 72, column: 33, scope: !67)
!74 = !DILocation(line: 73, column: 29, scope: !67)
!75 = !DILocation(line: 73, column: 32, scope: !67)
!76 = !DILocation(line: 73, column: 21, scope: !67)
!77 = !DILocation(line: 73, column: 10, scope: !78)
!78 = !DILexicalBlockFile(scope: !67, file: !6, discriminator: 1)
!79 = !DILocation(line: 73, column: 3, scope: !67)
!80 = distinct !DISubprogram(name: "m_strdup", scope: !6, file: !6, line: 77, type: !81, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !12}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!84 = !DILocalVariable(name: "str", arg: 1, scope: !80, file: !6, line: 77, type: !12)
!85 = !DILocation(line: 77, column: 22, scope: !80)
!86 = !DILocation(line: 79, column: 28, scope: !80)
!87 = !DILocation(line: 79, column: 21, scope: !80)
!88 = !DILocation(line: 79, column: 10, scope: !89)
!89 = !DILexicalBlockFile(scope: !80, file: !6, discriminator: 1)
!90 = !DILocation(line: 79, column: 3, scope: !80)
!91 = distinct !DISubprogram(name: "m_strndup", scope: !6, file: !6, line: 83, type: !92, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!92 = !DISubroutineType(types: !93)
!93 = !{!83, !12, !24}
!94 = !DILocalVariable(name: "str", arg: 1, scope: !91, file: !6, line: 83, type: !12)
!95 = !DILocation(line: 83, column: 23, scope: !91)
!96 = !DILocalVariable(name: "n", arg: 2, scope: !91, file: !6, line: 83, type: !24)
!97 = !DILocation(line: 83, column: 35, scope: !91)
!98 = !DILocation(line: 85, column: 29, scope: !91)
!99 = !DILocation(line: 85, column: 34, scope: !91)
!100 = !DILocation(line: 85, column: 21, scope: !91)
!101 = !DILocation(line: 85, column: 10, scope: !102)
!102 = !DILexicalBlockFile(scope: !91, file: !6, discriminator: 1)
!103 = !DILocation(line: 85, column: 3, scope: !91)
!104 = distinct !DISubprogram(name: "m_vasprintf", scope: !6, file: !6, line: 89, type: !105, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!105 = !DISubroutineType(types: !106)
!106 = !{!9, !107, !12, !108}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 86, size: 192, align: 64, elements: !110)
!110 = !{!111, !113, !114, !115}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !109, file: !1, line: 86, baseType: !112, size: 32, align: 32)
!112 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !109, file: !1, line: 86, baseType: !112, size: 32, align: 32, offset: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !109, file: !1, line: 86, baseType: !23, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !109, file: !1, line: 86, baseType: !23, size: 64, align: 64, offset: 128)
!116 = !DILocalVariable(name: "strp", arg: 1, scope: !104, file: !6, line: 89, type: !107)
!117 = !DILocation(line: 89, column: 20, scope: !104)
!118 = !DILocalVariable(name: "fmt", arg: 2, scope: !104, file: !6, line: 89, type: !12)
!119 = !DILocation(line: 89, column: 38, scope: !104)
!120 = !DILocalVariable(name: "args", arg: 3, scope: !104, file: !6, line: 89, type: !108)
!121 = !DILocation(line: 89, column: 51, scope: !104)
!122 = !DILocalVariable(name: "n", scope: !104, file: !6, line: 91, type: !9)
!123 = !DILocation(line: 91, column: 7, scope: !104)
!124 = !DILocation(line: 93, column: 17, scope: !104)
!125 = !DILocation(line: 93, column: 23, scope: !104)
!126 = !DILocation(line: 93, column: 28, scope: !104)
!127 = !DILocation(line: 93, column: 7, scope: !104)
!128 = !DILocation(line: 93, column: 5, scope: !104)
!129 = !DILocation(line: 94, column: 7, scope: !130)
!130 = distinct !DILexicalBlock(scope: !104, file: !6, line: 94, column: 7)
!131 = !DILocation(line: 94, column: 9, scope: !130)
!132 = !DILocation(line: 94, column: 7, scope: !104)
!133 = !DILocation(line: 95, column: 12, scope: !130)
!134 = !DILocation(line: 95, column: 5, scope: !130)
!135 = !DILocation(line: 97, column: 14, scope: !104)
!136 = !DILocation(line: 98, column: 10, scope: !104)
!137 = !DILocation(line: 98, column: 3, scope: !138)
!138 = !DILexicalBlockFile(scope: !104, file: !6, discriminator: 1)
!139 = !DILocation(line: 98, column: 3, scope: !104)
!140 = distinct !DISubprogram(name: "m_asprintf", scope: !6, file: !6, line: 102, type: !141, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!141 = !DISubroutineType(types: !142)
!142 = !{!9, !107, !12, null}
!143 = !DILocalVariable(name: "strp", arg: 1, scope: !140, file: !6, line: 102, type: !107)
!144 = !DILocation(line: 102, column: 19, scope: !140)
!145 = !DILocalVariable(name: "fmt", arg: 2, scope: !140, file: !6, line: 102, type: !12)
!146 = !DILocation(line: 102, column: 37, scope: !140)
!147 = !DILocalVariable(name: "args", scope: !140, file: !6, line: 104, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !149, line: 79, baseType: !150)
!149 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !151, line: 40, baseType: !152)
!151 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 104, baseType: !153)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 192, align: 64, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 1)
!156 = !DILocation(line: 104, column: 11, scope: !140)
!157 = !DILocalVariable(name: "n", scope: !140, file: !6, line: 105, type: !9)
!158 = !DILocation(line: 105, column: 7, scope: !140)
!159 = !DILocation(line: 107, column: 2, scope: !140)
!160 = !DILocation(line: 108, column: 19, scope: !140)
!161 = !DILocation(line: 108, column: 25, scope: !140)
!162 = !DILocation(line: 108, column: 30, scope: !140)
!163 = !DILocation(line: 108, column: 7, scope: !140)
!164 = !DILocation(line: 108, column: 5, scope: !140)
!165 = !DILocation(line: 109, column: 2, scope: !140)
!166 = !DILocation(line: 111, column: 10, scope: !140)
!167 = !DILocation(line: 111, column: 3, scope: !140)
!168 = distinct !DISubprogram(name: "m_dup", scope: !6, file: !6, line: 115, type: !169, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!169 = !DISubroutineType(types: !170)
!170 = !{!9, !9}
!171 = !DILocalVariable(name: "oldfd", arg: 1, scope: !168, file: !6, line: 115, type: !9)
!172 = !DILocation(line: 115, column: 11, scope: !168)
!173 = !DILocalVariable(name: "newfd", scope: !168, file: !6, line: 117, type: !9)
!174 = !DILocation(line: 117, column: 7, scope: !168)
!175 = !DILocation(line: 119, column: 15, scope: !168)
!176 = !DILocation(line: 119, column: 11, scope: !168)
!177 = !DILocation(line: 119, column: 9, scope: !168)
!178 = !DILocation(line: 120, column: 7, scope: !179)
!179 = distinct !DILexicalBlock(scope: !168, file: !6, line: 120, column: 7)
!180 = !DILocation(line: 120, column: 13, scope: !179)
!181 = !DILocation(line: 120, column: 7, scope: !168)
!182 = !DILocation(line: 121, column: 12, scope: !179)
!183 = !DILocation(line: 121, column: 5, scope: !179)
!184 = !DILocation(line: 123, column: 14, scope: !168)
!185 = !DILocation(line: 124, column: 10, scope: !168)
!186 = !DILocation(line: 124, column: 40, scope: !168)
!187 = !DILocation(line: 124, column: 3, scope: !188)
!188 = !DILexicalBlockFile(scope: !168, file: !6, discriminator: 1)
!189 = !DILocation(line: 124, column: 3, scope: !168)
!190 = !DILocalVariable(name: "oldfd", arg: 1, scope: !5, file: !6, line: 127, type: !9)
!191 = !DILocation(line: 127, column: 17, scope: !5)
!192 = !DILocalVariable(name: "newfd", arg: 2, scope: !5, file: !6, line: 127, type: !9)
!193 = !DILocation(line: 127, column: 28, scope: !5)
!194 = !DILocation(line: 130, column: 12, scope: !195)
!195 = distinct !DILexicalBlock(scope: !5, file: !6, line: 130, column: 7)
!196 = !DILocation(line: 130, column: 18, scope: !195)
!197 = !DILocation(line: 130, column: 7, scope: !195)
!198 = !DILocation(line: 130, column: 28, scope: !195)
!199 = !DILocation(line: 130, column: 25, scope: !195)
!200 = !DILocation(line: 130, column: 7, scope: !5)
!201 = !DILocation(line: 130, column: 35, scope: !202)
!202 = !DILexicalBlockFile(scope: !195, file: !6, discriminator: 1)
!203 = !DILocation(line: 132, column: 14, scope: !5)
!204 = !DILocation(line: 133, column: 7, scope: !205)
!205 = distinct !DILexicalBlock(scope: !5, file: !6, line: 133, column: 7)
!206 = !DILocation(line: 133, column: 13, scope: !205)
!207 = !DILocation(line: 133, column: 7, scope: !5)
!208 = !DILocation(line: 133, column: 25, scope: !209)
!209 = !DILexicalBlockFile(scope: !205, file: !6, discriminator: 1)
!210 = !DILocation(line: 133, column: 65, scope: !209)
!211 = !DILocation(line: 133, column: 54, scope: !209)
!212 = !DILocation(line: 133, column: 18, scope: !213)
!213 = !DILexicalBlockFile(scope: !209, file: !6, discriminator: 2)
!214 = !DILocation(line: 133, column: 18, scope: !209)
!215 = !DILocation(line: 134, column: 10, scope: !5)
!216 = !DILocation(line: 134, column: 39, scope: !5)
!217 = !DILocation(line: 134, column: 3, scope: !218)
!218 = !DILexicalBlockFile(scope: !5, file: !6, discriminator: 1)
!219 = !DILocation(line: 134, column: 3, scope: !5)
!220 = distinct !DISubprogram(name: "m_pipe", scope: !6, file: !6, line: 137, type: !221, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!224 = !DILocalVariable(name: "fds", arg: 1, scope: !220, file: !6, line: 137, type: !223)
!225 = !DILocation(line: 137, column: 18, scope: !220)
!226 = !DILocation(line: 138, column: 13, scope: !227)
!227 = distinct !DILexicalBlock(scope: !220, file: !6, line: 138, column: 7)
!228 = !DILocation(line: 138, column: 8, scope: !227)
!229 = !DILocation(line: 138, column: 7, scope: !220)
!230 = !DILocation(line: 138, column: 19, scope: !231)
!231 = !DILexicalBlockFile(scope: !227, file: !6, discriminator: 1)
!232 = !DILocation(line: 139, column: 14, scope: !220)
!233 = !DILocation(line: 140, column: 10, scope: !220)
!234 = !DILocation(line: 140, column: 3, scope: !235)
!235 = !DILexicalBlockFile(scope: !220, file: !6, discriminator: 1)
!236 = !DILocation(line: 140, column: 3, scope: !220)
!237 = distinct !DISubprogram(name: "m_output", scope: !6, file: !6, line: 144, type: !238, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !240, !12}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !149, line: 48, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !243, line: 241, size: 1728, align: 64, elements: !244)
!243 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !265, !266, !267, !268, !272, !274, !276, !278, !281, !283, !284, !285, !286, !287, !288, !289}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !242, file: !243, line: 242, baseType: !9, size: 32, align: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !242, file: !243, line: 247, baseType: !83, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !242, file: !243, line: 248, baseType: !83, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !242, file: !243, line: 249, baseType: !83, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !242, file: !243, line: 250, baseType: !83, size: 64, align: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !242, file: !243, line: 251, baseType: !83, size: 64, align: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !242, file: !243, line: 252, baseType: !83, size: 64, align: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !242, file: !243, line: 253, baseType: !83, size: 64, align: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !242, file: !243, line: 254, baseType: !83, size: 64, align: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !242, file: !243, line: 256, baseType: !83, size: 64, align: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !242, file: !243, line: 257, baseType: !83, size: 64, align: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !242, file: !243, line: 258, baseType: !83, size: 64, align: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !242, file: !243, line: 260, baseType: !258, size: 64, align: 64, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !243, line: 156, size: 192, align: 64, elements: !260)
!260 = !{!261, !262, !264}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !259, file: !243, line: 157, baseType: !258, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !259, file: !243, line: 158, baseType: !263, size: 64, align: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !259, file: !243, line: 162, baseType: !9, size: 32, align: 32, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !242, file: !243, line: 262, baseType: !263, size: 64, align: 64, offset: 832)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !242, file: !243, line: 264, baseType: !9, size: 32, align: 32, offset: 896)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !242, file: !243, line: 268, baseType: !9, size: 32, align: 32, offset: 928)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !242, file: !243, line: 270, baseType: !269, size: 64, align: 64, offset: 960)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !270, line: 131, baseType: !271)
!270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!271 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !242, file: !243, line: 274, baseType: !273, size: 16, align: 16, offset: 1024)
!273 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !242, file: !243, line: 275, baseType: !275, size: 8, align: 8, offset: 1040)
!275 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !242, file: !243, line: 276, baseType: !277, size: 8, align: 8, offset: 1048)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, align: 8, elements: !154)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !242, file: !243, line: 280, baseType: !279, size: 64, align: 64, offset: 1088)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !243, line: 150, baseType: null)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !242, file: !243, line: 289, baseType: !282, size: 64, align: 64, offset: 1152)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !270, line: 132, baseType: !271)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !242, file: !243, line: 297, baseType: !23, size: 64, align: 64, offset: 1216)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !242, file: !243, line: 298, baseType: !23, size: 64, align: 64, offset: 1280)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !242, file: !243, line: 299, baseType: !23, size: 64, align: 64, offset: 1344)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !242, file: !243, line: 300, baseType: !23, size: 64, align: 64, offset: 1408)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !242, file: !243, line: 302, baseType: !24, size: 64, align: 64, offset: 1472)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !242, file: !243, line: 303, baseType: !9, size: 32, align: 32, offset: 1536)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !242, file: !243, line: 305, baseType: !290, size: 160, align: 8, offset: 1568)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, align: 8, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 20)
!293 = !DILocalVariable(name: "f", arg: 1, scope: !237, file: !6, line: 144, type: !240)
!294 = !DILocation(line: 144, column: 16, scope: !237)
!295 = !DILocalVariable(name: "name", arg: 2, scope: !237, file: !6, line: 144, type: !12)
!296 = !DILocation(line: 144, column: 31, scope: !237)
!297 = !DILocation(line: 146, column: 10, scope: !237)
!298 = !DILocation(line: 146, column: 3, scope: !237)
!299 = !DILocation(line: 147, column: 14, scope: !300)
!300 = distinct !DILexicalBlock(scope: !237, file: !6, line: 147, column: 7)
!301 = !DILocation(line: 147, column: 7, scope: !300)
!302 = !DILocation(line: 147, column: 17, scope: !300)
!303 = !DILocation(line: 147, column: 21, scope: !304)
!304 = !DILexicalBlockFile(scope: !300, file: !6, discriminator: 1)
!305 = !DILocation(line: 147, column: 20, scope: !304)
!306 = !DILocation(line: 147, column: 25, scope: !304)
!307 = !DILocation(line: 147, column: 7, scope: !304)
!308 = !DILocation(line: 148, column: 12, scope: !300)
!309 = !DILocation(line: 148, column: 40, scope: !300)
!310 = !DILocation(line: 148, column: 5, scope: !304)
!311 = !DILocation(line: 148, column: 5, scope: !300)
!312 = !DILocation(line: 149, column: 1, scope: !237)
!313 = distinct !DISubprogram(name: "setcloexec", scope: !6, file: !6, line: 152, type: !314, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !9, !12}
!316 = !DILocalVariable(name: "fd", arg: 1, scope: !313, file: !6, line: 152, type: !9)
!317 = !DILocation(line: 152, column: 16, scope: !313)
!318 = !DILocalVariable(name: "fn", arg: 2, scope: !313, file: !6, line: 152, type: !12)
!319 = !DILocation(line: 152, column: 32, scope: !313)
!320 = !DILocalVariable(name: "f", scope: !313, file: !6, line: 154, type: !9)
!321 = !DILocation(line: 154, column: 7, scope: !313)
!322 = !DILocation(line: 156, column: 13, scope: !313)
!323 = !DILocation(line: 156, column: 7, scope: !313)
!324 = !DILocation(line: 156, column: 5, scope: !313)
!325 = !DILocation(line: 157, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !313, file: !6, line: 157, column: 7)
!327 = !DILocation(line: 157, column: 9, scope: !326)
!328 = !DILocation(line: 157, column: 7, scope: !313)
!329 = !DILocation(line: 158, column: 12, scope: !326)
!330 = !DILocation(line: 158, column: 64, scope: !326)
!331 = !DILocation(line: 158, column: 5, scope: !332)
!332 = !DILexicalBlockFile(scope: !326, file: !6, discriminator: 1)
!333 = !DILocation(line: 158, column: 5, scope: !326)
!334 = !DILocation(line: 159, column: 13, scope: !335)
!335 = distinct !DILexicalBlock(scope: !313, file: !6, line: 159, column: 7)
!336 = !DILocation(line: 159, column: 26, scope: !335)
!337 = !DILocation(line: 159, column: 27, scope: !335)
!338 = !DILocation(line: 159, column: 7, scope: !335)
!339 = !DILocation(line: 159, column: 40, scope: !335)
!340 = !DILocation(line: 159, column: 7, scope: !313)
!341 = !DILocation(line: 160, column: 12, scope: !335)
!342 = !DILocation(line: 160, column: 61, scope: !335)
!343 = !DILocation(line: 160, column: 5, scope: !344)
!344 = !DILexicalBlockFile(scope: !335, file: !6, discriminator: 1)
!345 = !DILocation(line: 160, column: 5, scope: !335)
!346 = !DILocation(line: 161, column: 1, scope: !313)
