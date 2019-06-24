; ModuleID = './systemLinux.o.i'
source_filename = "./systemLinux.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tms = type { i64, i64, i64, i64 }
%struct.HashTable = type opaque
%struct.DynBuf = type { i8*, i64, i64 }
%struct.SNEBufs = type { %struct.DynBuf*, %struct.DynBuf* }

@.str = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%lu.%2u\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: Unable to parse /proc/uptime.\0A\00", align 1
@__func__.System_Uptime = private unnamed_addr constant [14 x i8] c"System_Uptime\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"/sbin/shutdown -r now\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"/sbin/shutdown -h now\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"Unable to execute %s command: \22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Error, gethostname failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"%s: Encountered environment entry without '='.\0A\00", align 1
@__func__.SNEBuildHash = private unnamed_addr constant [13 x i8] c"SNEBuildHash\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"VMWARE_\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"MEM_ALLOC %s:%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"systemLinux.c\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1

; Function Attrs: nounwind uwtable
define i64 @System_GetTimeMonotonic() #0 !dbg !34 {
  %1 = alloca %struct.tms, align 8
  call void @llvm.dbg.declare(metadata %struct.tms* %1, metadata !42, metadata !55), !dbg !56
  %2 = call i64 @times(%struct.tms* %1) #7, !dbg !57
  ret i64 %2, !dbg !58
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @times(%struct.tms*) #2

; Function Attrs: nounwind uwtable
define i64 @System_Uptime() #0 !dbg !59 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %1, metadata !60, metadata !55), !dbg !61
  store i64 -1, i64* %1, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !62, metadata !55), !dbg !119
  call void @llvm.dbg.declare(metadata i8** %3, metadata !120, metadata !55), !dbg !121
  store i8* null, i8** %3, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i64* %4, metadata !122, metadata !55), !dbg !123
  call void @llvm.dbg.declare(metadata i64* %5, metadata !124, metadata !55), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %6, metadata !126, metadata !55), !dbg !128
  %7 = call %struct._IO_FILE* @Posix_Fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !129
  store %struct._IO_FILE* %7, %struct._IO_FILE** %2, align 8, !dbg !131
  %8 = icmp ne %struct._IO_FILE* %7, null, !dbg !132
  br i1 %8, label %9, label %23, !dbg !133

; <label>:9:                                      ; preds = %0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !134
  %11 = call i32 @StdIO_ReadNextLine(%struct._IO_FILE* %10, i8** %3, i64 80, i64* %4), !dbg !135
  %12 = icmp eq i32 %11, 2, !dbg !136
  br i1 %12, label %13, label %23, !dbg !137

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %3, align 8, !dbg !138
  %15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i64* %5, i32* %6) #7, !dbg !139
  %16 = icmp eq i32 %15, 2, !dbg !140
  br i1 %16, label %17, label %23, !dbg !141

; <label>:17:                                     ; preds = %13
  %18 = load i64, i64* %5, align 8, !dbg !143
  %19 = mul i64 %18, 100, !dbg !145
  %20 = load i32, i32* %6, align 4, !dbg !146
  %21 = zext i32 %20 to i64, !dbg !146
  %22 = add i64 %19, %21, !dbg !147
  store i64 %22, i64* %1, align 8, !dbg !148
  br label %24, !dbg !149

; <label>:23:                                     ; preds = %13, %9, %0
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.System_Uptime, i32 0, i32 0)), !dbg !150
  br label %24

; <label>:24:                                     ; preds = %23, %17
  %25 = load i8*, i8** %3, align 8, !dbg !152
  call void @free(i8* %25) #7, !dbg !153
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !154
  %27 = icmp ne %struct._IO_FILE* %26, null, !dbg !154
  br i1 %27, label %28, label %31, !dbg !156

; <label>:28:                                     ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !157
  %30 = call i32 @fclose(%struct._IO_FILE* %29), !dbg !159
  br label %31, !dbg !160

; <label>:31:                                     ; preds = %28, %24
  %32 = load i64, i64* %1, align 8, !dbg !161
  ret i64 %32, !dbg !162
}

declare %struct._IO_FILE* @Posix_Fopen(i8*, i8*) #3

declare i32 @StdIO_ReadNextLine(%struct._IO_FILE*, i8**, i64, i64*) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare void @Warning(i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @System_Shutdown(i8 signext) #0 !dbg !163 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !167, metadata !55), !dbg !168
  call void @llvm.dbg.declare(metadata i8** %3, metadata !169, metadata !55), !dbg !170
  %4 = load i8, i8* %2, align 1, !dbg !171
  %5 = icmp ne i8 %4, 0, !dbg !171
  br i1 %5, label %6, label %7, !dbg !173

; <label>:6:                                      ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8** %3, align 8, !dbg !174
  br label %8, !dbg !176

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8** %3, align 8, !dbg !177
  br label %8

; <label>:8:                                      ; preds = %7, %6
  %9 = load i8*, i8** %3, align 8, !dbg !179
  %10 = call i32 @system(i8* %9), !dbg !181
  %11 = icmp eq i32 %10, -1, !dbg !182
  br i1 %11, label %12, label %20, !dbg !183

; <label>:12:                                     ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !184
  %14 = load i8, i8* %2, align 1, !dbg !186
  %15 = sext i8 %14 to i32, !dbg !186
  %16 = icmp ne i32 %15, 0, !dbg !186
  %17 = select i1 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), !dbg !186
  %18 = load i8*, i8** %3, align 8, !dbg !187
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* %17, i8* %18), !dbg !188
  br label %20, !dbg !189

; <label>:20:                                     ; preds = %12, %8
  ret void, !dbg !190
}

declare i32 @system(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define signext i8 @System_IsUserAdmin() #0 !dbg !191 {
  %1 = call i32 @geteuid() #7, !dbg !194
  %2 = icmp eq i32 %1, 0, !dbg !195
  %3 = zext i1 %2 to i32, !dbg !195
  %4 = trunc i32 %3 to i8, !dbg !194
  ret i8 %4, !dbg !196
}

; Function Attrs: nounwind
declare i32 @geteuid() #2

; Function Attrs: nounwind uwtable
define i8* @System_GetEnv(i8 signext, i8*) #0 !dbg !197 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !202, metadata !55), !dbg !203
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !204, metadata !55), !dbg !205
  call void @llvm.dbg.declare(metadata i8** %5, metadata !206, metadata !55), !dbg !207
  %6 = load i8*, i8** %4, align 8, !dbg !208
  %7 = call i8* @Posix_Getenv(i8* %6), !dbg !209
  store i8* %7, i8** %5, align 8, !dbg !210
  %8 = load i8*, i8** %5, align 8, !dbg !211
  %9 = icmp ne i8* null, %8, !dbg !213
  br i1 %9, label %10, label %13, !dbg !214

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %5, align 8, !dbg !215
  %12 = call noalias i8* @strdup(i8* %11) #7, !dbg !217
  store i8* %12, i8** %5, align 8, !dbg !218
  br label %13, !dbg !219

; <label>:13:                                     ; preds = %10, %2
  %14 = load i8*, i8** %5, align 8, !dbg !220
  ret i8* %14, !dbg !221
}

declare i8* @Posix_Getenv(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @System_SetEnv(i8 signext, i8*, i8*) #0 !dbg !222 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !225, metadata !55), !dbg !226
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !227, metadata !55), !dbg !228
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !229, metadata !55), !dbg !230
  %7 = load i8*, i8** %5, align 8, !dbg !231
  %8 = load i8*, i8** %6, align 8, !dbg !232
  %9 = call i32 @Posix_Setenv(i8* %7, i8* %8, i32 1), !dbg !233
  ret i32 %9, !dbg !234
}

declare i32 @Posix_Setenv(i8*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define signext i8 @System_GetNodeName(i64, i8*) #0 !dbg !235 {
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !238, metadata !55), !dbg !239
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !240, metadata !55), !dbg !241
  %6 = load i8*, i8** %5, align 8, !dbg !242
  %7 = load i64, i64* %4, align 8, !dbg !244
  %8 = call i32 @gethostname(i8* %6, i64 %7) #7, !dbg !245
  %9 = icmp slt i32 %8, 0, !dbg !246
  br i1 %9, label %10, label %11, !dbg !247

; <label>:10:                                     ; preds = %2
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0)), !dbg !248
  store i8 0, i8* %3, align 1, !dbg !250
  br label %12, !dbg !250

; <label>:11:                                     ; preds = %2
  store i8 1, i8* %3, align 1, !dbg !251
  br label %12, !dbg !251

; <label>:12:                                     ; preds = %11, %10
  %13 = load i8, i8* %3, align 1, !dbg !252
  ret i8 %13, !dbg !252
}

; Function Attrs: nounwind
declare i32 @gethostname(i8*, i64) #2

declare void @Debug(i8*, ...) #3

; Function Attrs: nounwind uwtable
define i8** @System_GetNativeEnviron(i8**) #0 !dbg !253 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.HashTable*, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !257, metadata !55), !dbg !258
  call void @llvm.dbg.declare(metadata %struct.HashTable** %3, metadata !259, metadata !55), !dbg !264
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !265, metadata !55), !dbg !266
  %5 = load i8**, i8*** %2, align 8, !dbg !267
  %6 = call %struct.HashTable* @SNEBuildHash(i8** %5), !dbg !268
  store %struct.HashTable* %6, %struct.HashTable** %3, align 8, !dbg !269
  %7 = load %struct.HashTable*, %struct.HashTable** %3, align 8, !dbg !270
  %8 = call i8** @SNEHashToEnviron(%struct.HashTable* %7), !dbg !271
  store i8** %8, i8*** %4, align 8, !dbg !272
  %9 = load %struct.HashTable*, %struct.HashTable** %3, align 8, !dbg !273
  call void @HashTable_Free(%struct.HashTable* %9), !dbg !274
  %10 = load i8**, i8*** %4, align 8, !dbg !275
  ret i8** %10, !dbg !276
}

; Function Attrs: nounwind uwtable
define internal %struct.HashTable* @SNEBuildHash(i8**) #0 !dbg !277 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.HashTable*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !280, metadata !55), !dbg !281
  call void @llvm.dbg.declare(metadata %struct.HashTable** %3, metadata !282, metadata !55), !dbg !283
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !284, metadata !55), !dbg !285
  %11 = call %struct.HashTable* @HashTable_Alloc(i32 64, i32 16, void (i8*)* @free), !dbg !286
  store %struct.HashTable* %11, %struct.HashTable** %3, align 8, !dbg !287
  %12 = load i8**, i8*** %2, align 8, !dbg !288
  store i8** %12, i8*** %4, align 8, !dbg !290
  br label %13, !dbg !291

; <label>:13:                                     ; preds = %86, %1
  %14 = load i8**, i8*** %4, align 8, !dbg !292
  %15 = icmp ne i8** %14, null, !dbg !292
  br i1 %15, label %16, label %20, !dbg !295

; <label>:16:                                     ; preds = %13
  %17 = load i8**, i8*** %4, align 8, !dbg !296
  %18 = load i8*, i8** %17, align 8, !dbg !298
  %19 = icmp ne i8* %18, null, !dbg !299
  br label %20

; <label>:20:                                     ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %89, !dbg !300

; <label>:22:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i64* %5, metadata !302, metadata !55), !dbg !305
  store i64 7, i64* %5, align 8, !dbg !305
  call void @llvm.dbg.declare(metadata i8** %6, metadata !306, metadata !55), !dbg !307
  call void @llvm.dbg.declare(metadata i8** %7, metadata !308, metadata !55), !dbg !309
  call void @llvm.dbg.declare(metadata i32* %8, metadata !310, metadata !55), !dbg !311
  store i32 0, i32* %8, align 4, !dbg !312
  %23 = load i8**, i8*** %4, align 8, !dbg !313
  %24 = load i8*, i8** %23, align 8, !dbg !314
  %25 = call i8* @StrUtil_GetNextToken(i32* %8, i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !315
  store i8* %25, i8** %6, align 8, !dbg !316
  %26 = load i8*, i8** %6, align 8, !dbg !317
  %27 = icmp ne i8* %26, null, !dbg !317
  br i1 %27, label %29, label %28, !dbg !319

; <label>:28:                                     ; preds = %22
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.SNEBuildHash, i32 0, i32 0)), !dbg !320
  br label %86, !dbg !322

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* %8, align 4, !dbg !323
  %31 = add i32 %30, 1, !dbg !323
  store i32 %31, i32* %8, align 4, !dbg !323
  %32 = load i32, i32* %8, align 4, !dbg !324
  %33 = zext i32 %32 to i64, !dbg !325
  %34 = load i8**, i8*** %4, align 8, !dbg !326
  %35 = load i8*, i8** %34, align 8, !dbg !327
  %36 = getelementptr inbounds i8, i8* %35, i64 %33, !dbg !325
  %37 = call i8* @UtilSafeStrdup0(i8* %36), !dbg !328
  store i8* %37, i8** %7, align 8, !dbg !329
  %38 = load i8*, i8** %6, align 8, !dbg !330
  %39 = call signext i8 @StrUtil_StartsWith(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !332
  %40 = sext i8 %39 to i32, !dbg !332
  %41 = icmp ne i32 %40, 0, !dbg !332
  br i1 %41, label %42, label %79, !dbg !333

; <label>:42:                                     ; preds = %29
  %43 = load i8*, i8** %6, align 8, !dbg !334
  %44 = getelementptr inbounds i8, i8* %43, i64 7, !dbg !334
  %45 = load i8, i8* %44, align 1, !dbg !334
  %46 = sext i8 %45 to i32, !dbg !334
  %47 = icmp ne i32 %46, 0, !dbg !335
  br i1 %47, label %48, label %79, !dbg !336

; <label>:48:                                     ; preds = %42
  %49 = load i8*, i8** %7, align 8, !dbg !337
  %50 = getelementptr inbounds i8, i8* %49, i64 0, !dbg !337
  %51 = load i8, i8* %50, align 1, !dbg !337
  %52 = sext i8 %51 to i32, !dbg !337
  %53 = icmp eq i32 %52, 48, !dbg !338
  br i1 %53, label %60, label %54, !dbg !339

; <label>:54:                                     ; preds = %48
  %55 = load i8*, i8** %7, align 8, !dbg !340
  %56 = getelementptr inbounds i8, i8* %55, i64 0, !dbg !340
  %57 = load i8, i8* %56, align 1, !dbg !340
  %58 = sext i8 %57 to i32, !dbg !340
  %59 = icmp eq i32 %58, 49, !dbg !342
  br i1 %59, label %60, label %79, !dbg !343

; <label>:60:                                     ; preds = %54, %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !345, metadata !55), !dbg !347
  %61 = load i8*, i8** %6, align 8, !dbg !348
  %62 = getelementptr inbounds i8, i8* %61, i64 7, !dbg !348
  store i8* %62, i8** %9, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata i8** %10, metadata !349, metadata !55), !dbg !350
  %63 = load i8*, i8** %7, align 8, !dbg !351
  %64 = getelementptr inbounds i8, i8* %63, i64 0, !dbg !351
  %65 = load i8, i8* %64, align 1, !dbg !351
  %66 = sext i8 %65 to i32, !dbg !351
  %67 = icmp eq i32 %66, 48, !dbg !352
  br i1 %67, label %68, label %69, !dbg !353

; <label>:68:                                     ; preds = %60
  br label %73, !dbg !354

; <label>:69:                                     ; preds = %60
  %70 = load i8*, i8** %7, align 8, !dbg !356
  %71 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !356
  %72 = call i8* @UtilSafeStrdup0(i8* %71), !dbg !357
  br label %73, !dbg !358

; <label>:73:                                     ; preds = %69, %68
  %74 = phi i8* [ null, %68 ], [ %72, %69 ], !dbg !360
  store i8* %74, i8** %10, align 8, !dbg !362
  %75 = load %struct.HashTable*, %struct.HashTable** %3, align 8, !dbg !363
  %76 = load i8*, i8** %9, align 8, !dbg !364
  %77 = load i8*, i8** %10, align 8, !dbg !365
  %78 = call signext i8 @HashTable_ReplaceOrInsert(%struct.HashTable* %75, i8* %76, i8* %77), !dbg !366
  br label %84, !dbg !367

; <label>:79:                                     ; preds = %54, %42, %29
  %80 = load %struct.HashTable*, %struct.HashTable** %3, align 8, !dbg !368
  %81 = load i8*, i8** %6, align 8, !dbg !370
  %82 = load i8*, i8** %7, align 8, !dbg !371
  %83 = call i8* @HashTable_LookupOrInsert(%struct.HashTable* %80, i8* %81, i8* %82), !dbg !372
  br label %84

; <label>:84:                                     ; preds = %79, %73
  %85 = load i8*, i8** %6, align 8, !dbg !373
  call void @free(i8* %85) #7, !dbg !374
  br label %86, !dbg !375

; <label>:86:                                     ; preds = %84, %28
  %87 = load i8**, i8*** %4, align 8, !dbg !376
  %88 = getelementptr inbounds i8*, i8** %87, i32 1, !dbg !376
  store i8** %88, i8*** %4, align 8, !dbg !376
  br label %13, !dbg !378, !llvm.loop !379

; <label>:89:                                     ; preds = %20
  %90 = load %struct.HashTable*, %struct.HashTable** %3, align 8, !dbg !381
  ret %struct.HashTable* %90, !dbg !382
}

; Function Attrs: nounwind uwtable
define internal i8** @SNEHashToEnviron(%struct.HashTable*) #0 !dbg !383 {
  %2 = alloca %struct.HashTable*, align 8
  %3 = alloca %struct.DynBuf, align 8
  %4 = alloca %struct.DynBuf, align 8
  %5 = alloca %struct.SNEBufs, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.HashTable* %0, %struct.HashTable** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HashTable** %2, metadata !386, metadata !55), !dbg !387
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %3, metadata !388, metadata !55), !dbg !389
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %4, metadata !390, metadata !55), !dbg !391
  call void @llvm.dbg.declare(metadata %struct.SNEBufs* %5, metadata !392, metadata !55), !dbg !393
  %11 = getelementptr inbounds %struct.SNEBufs, %struct.SNEBufs* %5, i32 0, i32 0, !dbg !394
  store %struct.DynBuf* %4, %struct.DynBuf** %11, align 8, !dbg !394
  %12 = getelementptr inbounds %struct.SNEBufs, %struct.SNEBufs* %5, i32 0, i32 1, !dbg !394
  store %struct.DynBuf* %3, %struct.DynBuf** %12, align 8, !dbg !394
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !395, metadata !55), !dbg !396
  call void @llvm.dbg.declare(metadata i64** %7, metadata !397, metadata !55), !dbg !400
  call void @llvm.dbg.declare(metadata i8** %8, metadata !401, metadata !55), !dbg !402
  call void @llvm.dbg.declare(metadata i32* %9, metadata !403, metadata !55), !dbg !404
  call void @llvm.dbg.declare(metadata i32* %10, metadata !405, metadata !55), !dbg !406
  call void @DynBuf_Init(%struct.DynBuf* %4), !dbg !407
  call void @DynBuf_Init(%struct.DynBuf* %3), !dbg !408
  %13 = load %struct.HashTable*, %struct.HashTable** %2, align 8, !dbg !409
  %14 = bitcast %struct.SNEBufs* %5 to i8*, !dbg !410
  %15 = call i32 @HashTable_ForEach(%struct.HashTable* %13, i32 (i8*, i8*, i8*)* @SNEForEachCallback, i8* %14), !dbg !411
  %16 = call signext i8 @DynBuf_Trim(%struct.DynBuf* %4), !dbg !412
  %17 = icmp ne i8 %16, 0, !dbg !415
  %18 = xor i1 %17, true, !dbg !415
  %19 = zext i1 %18 to i32, !dbg !415
  %20 = sext i32 %19 to i64, !dbg !416
  %21 = icmp ne i64 %20, 0, !dbg !417
  br i1 %21, label %22, label %23, !dbg !418

; <label>:22:                                     ; preds = %1
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 671) #8, !dbg !419
  unreachable, !dbg !419

; <label>:23:                                     ; preds = %1
  %24 = call i64 @DynBuf_GetSize(%struct.DynBuf* %3), !dbg !422
  %25 = udiv i64 %24, 8, !dbg !423
  %26 = trunc i64 %25 to i32, !dbg !422
  store i32 %26, i32* %9, align 4, !dbg !424
  %27 = load i32, i32* %9, align 4, !dbg !425
  %28 = add i32 1, %27, !dbg !426
  %29 = zext i32 %28 to i64, !dbg !427
  %30 = call i8* @UtilSafeCalloc0(i64 %29, i64 8), !dbg !428
  %31 = bitcast i8* %30 to i8**, !dbg !428
  store i8** %31, i8*** %6, align 8, !dbg !429
  %32 = call i8* @DynBuf_Get(%struct.DynBuf* %4), !dbg !430
  store i8* %32, i8** %8, align 8, !dbg !431
  %33 = call i8* @DynBuf_Get(%struct.DynBuf* %3), !dbg !432
  %34 = bitcast i8* %33 to i64*, !dbg !432
  store i64* %34, i64** %7, align 8, !dbg !433
  store i32 0, i32* %10, align 4, !dbg !434
  br label %35, !dbg !436

; <label>:35:                                     ; preds = %48, %23
  %36 = load i32, i32* %10, align 4, !dbg !437
  %37 = load i32, i32* %9, align 4, !dbg !440
  %38 = icmp ult i32 %36, %37, !dbg !441
  br i1 %38, label %39, label %53, !dbg !442

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** %8, align 8, !dbg !443
  %41 = load i64*, i64** %7, align 8, !dbg !445
  %42 = load i64, i64* %41, align 8, !dbg !446
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !447
  %44 = load i32, i32* %10, align 4, !dbg !448
  %45 = zext i32 %44 to i64, !dbg !449
  %46 = load i8**, i8*** %6, align 8, !dbg !449
  %47 = getelementptr inbounds i8*, i8** %46, i64 %45, !dbg !449
  store i8* %43, i8** %47, align 8, !dbg !450
  br label %48, !dbg !451

; <label>:48:                                     ; preds = %39
  %49 = load i32, i32* %10, align 4, !dbg !452
  %50 = add i32 %49, 1, !dbg !452
  store i32 %50, i32* %10, align 4, !dbg !452
  %51 = load i64*, i64** %7, align 8, !dbg !454
  %52 = getelementptr inbounds i64, i64* %51, i32 1, !dbg !454
  store i64* %52, i64** %7, align 8, !dbg !454
  br label %35, !dbg !455, !llvm.loop !456

; <label>:53:                                     ; preds = %35
  %54 = load i32, i32* %10, align 4, !dbg !458
  %55 = zext i32 %54 to i64, !dbg !459
  %56 = load i8**, i8*** %6, align 8, !dbg !459
  %57 = getelementptr inbounds i8*, i8** %56, i64 %55, !dbg !459
  store i8* null, i8** %57, align 8, !dbg !460
  call void @DynBuf_Destroy(%struct.DynBuf* %3), !dbg !461
  %58 = call i8* @DynBuf_Detach(%struct.DynBuf* %4), !dbg !462
  %59 = load i8**, i8*** %6, align 8, !dbg !463
  ret i8** %59, !dbg !464
}

declare void @HashTable_Free(%struct.HashTable*) #3

; Function Attrs: nounwind uwtable
define void @System_FreeNativeEnviron(i8**) #0 !dbg !465 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !468, metadata !55), !dbg !469
  call void @llvm.dbg.declare(metadata i8** %3, metadata !470, metadata !55), !dbg !471
  %4 = load i8**, i8*** %2, align 8, !dbg !472
  %5 = load i8*, i8** %4, align 8, !dbg !473
  store i8* %5, i8** %3, align 8, !dbg !471
  %6 = load i8*, i8** %3, align 8, !dbg !474
  call void @free(i8* %6) #7, !dbg !475
  %7 = load i8**, i8*** %2, align 8, !dbg !476
  %8 = bitcast i8** %7 to i8*, !dbg !476
  call void @free(i8* %8) #7, !dbg !477
  ret void, !dbg !478
}

declare %struct.HashTable* @HashTable_Alloc(i32, i32, void (i8*)*) #3

declare i8* @StrUtil_GetNextToken(i32*, i8*, i8*) #3

declare i8* @UtilSafeStrdup0(i8*) #3

declare signext i8 @StrUtil_StartsWith(i8*, i8*) #3

declare signext i8 @HashTable_ReplaceOrInsert(%struct.HashTable*, i8*, i8*) #3

declare i8* @HashTable_LookupOrInsert(%struct.HashTable*, i8*, i8*) #3

declare void @DynBuf_Init(%struct.DynBuf*) #3

declare i32 @HashTable_ForEach(%struct.HashTable*, i32 (i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @SNEForEachCallback(i8*, i8*, i8*) #0 !dbg !479 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.DynBuf*, align 8
  %9 = alloca %struct.DynBuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !482, metadata !55), !dbg !483
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !484, metadata !55), !dbg !485
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !486, metadata !55), !dbg !487
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %8, metadata !488, metadata !55), !dbg !489
  %13 = load i8*, i8** %7, align 8, !dbg !490
  %14 = bitcast i8* %13 to %struct.SNEBufs*, !dbg !491
  %15 = getelementptr inbounds %struct.SNEBufs, %struct.SNEBufs* %14, i32 0, i32 0, !dbg !492
  %16 = load %struct.DynBuf*, %struct.DynBuf** %15, align 8, !dbg !492
  store %struct.DynBuf* %16, %struct.DynBuf** %8, align 8, !dbg !489
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %9, metadata !493, metadata !55), !dbg !494
  %17 = load i8*, i8** %7, align 8, !dbg !495
  %18 = bitcast i8* %17 to %struct.SNEBufs*, !dbg !496
  %19 = getelementptr inbounds %struct.SNEBufs, %struct.SNEBufs* %18, i32 0, i32 1, !dbg !497
  %20 = load %struct.DynBuf*, %struct.DynBuf** %19, align 8, !dbg !497
  store %struct.DynBuf* %20, %struct.DynBuf** %9, align 8, !dbg !494
  call void @llvm.dbg.declare(metadata i64* %10, metadata !498, metadata !55), !dbg !499
  call void @llvm.dbg.declare(metadata i8** %11, metadata !500, metadata !55), !dbg !501
  call void @llvm.dbg.declare(metadata i64* %12, metadata !502, metadata !55), !dbg !503
  %21 = load i8*, i8** %6, align 8, !dbg !504
  %22 = icmp eq i8* %21, null, !dbg !506
  br i1 %22, label %23, label %24, !dbg !507

; <label>:23:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !508
  br label %63, !dbg !508

; <label>:24:                                     ; preds = %3
  %25 = load i8*, i8** %5, align 8, !dbg !510
  %26 = call i64 @strlen(i8* %25) #9, !dbg !511
  %27 = load i8*, i8** %6, align 8, !dbg !512
  %28 = call i64 @strlen(i8* %27) #9, !dbg !513
  %29 = add i64 %26, %28, !dbg !515
  %30 = add i64 %29, 2, !dbg !516
  store i64 %30, i64* %10, align 8, !dbg !517
  %31 = load i64, i64* %10, align 8, !dbg !518
  %32 = call i8* @UtilSafeMalloc0(i64 %31), !dbg !519
  store i8* %32, i8** %11, align 8, !dbg !520
  %33 = load i8*, i8** %11, align 8, !dbg !521
  %34 = load i64, i64* %10, align 8, !dbg !522
  %35 = load i8*, i8** %5, align 8, !dbg !523
  %36 = load i8*, i8** %6, align 8, !dbg !524
  %37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %35, i8* %36) #7, !dbg !525
  %38 = load %struct.DynBuf*, %struct.DynBuf** %8, align 8, !dbg !526
  %39 = load i8*, i8** %11, align 8, !dbg !529
  %40 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %38, i8* %39), !dbg !530
  %41 = icmp ne i8 %40, 0, !dbg !531
  %42 = xor i1 %41, true, !dbg !531
  %43 = zext i1 %42 to i32, !dbg !531
  %44 = sext i32 %43 to i64, !dbg !532
  %45 = icmp ne i64 %44, 0, !dbg !533
  br i1 %45, label %46, label %47, !dbg !534

; <label>:46:                                     ; preds = %24
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 748) #8, !dbg !535
  unreachable, !dbg !535

; <label>:47:                                     ; preds = %24
  %48 = load %struct.DynBuf*, %struct.DynBuf** %8, align 8, !dbg !538
  %49 = call i64 @DynBuf_GetSize(%struct.DynBuf* %48), !dbg !539
  %50 = load i64, i64* %10, align 8, !dbg !540
  %51 = sub i64 %49, %50, !dbg !541
  store i64 %51, i64* %12, align 8, !dbg !542
  %52 = load %struct.DynBuf*, %struct.DynBuf** %9, align 8, !dbg !543
  %53 = bitcast i64* %12 to i8*, !dbg !546
  %54 = call signext i8 @DynBuf_Append(%struct.DynBuf* %52, i8* %53, i64 8), !dbg !547
  %55 = icmp ne i8 %54, 0, !dbg !548
  %56 = xor i1 %55, true, !dbg !548
  %57 = zext i1 %56 to i32, !dbg !548
  %58 = sext i32 %57 to i64, !dbg !549
  %59 = icmp ne i64 %58, 0, !dbg !550
  br i1 %59, label %60, label %61, !dbg !551

; <label>:60:                                     ; preds = %47
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 755) #8, !dbg !552
  unreachable, !dbg !552

; <label>:61:                                     ; preds = %47
  %62 = load i8*, i8** %11, align 8, !dbg !555
  call void @free(i8* %62) #7, !dbg !556
  store i32 0, i32* %4, align 4, !dbg !557
  br label %63, !dbg !557

; <label>:63:                                     ; preds = %61, %23
  %64 = load i32, i32* %4, align 4, !dbg !558
  ret i32 %64, !dbg !558
}

declare signext i8 @DynBuf_Trim(%struct.DynBuf*) #3

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetSize(%struct.DynBuf*) #5 !dbg !559 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !564, metadata !55), !dbg !565
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !566
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !567
  %5 = load i64, i64* %4, align 8, !dbg !567
  ret i64 %5, !dbg !568
}

declare i8* @UtilSafeCalloc0(i64, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #5 !dbg !569 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !572, metadata !55), !dbg !573
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !574
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !575
  %5 = load i8*, i8** %4, align 8, !dbg !575
  ret i8* %5, !dbg !576
}

declare void @DynBuf_Destroy(%struct.DynBuf*) #3

declare i8* @DynBuf_Detach(%struct.DynBuf*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare i8* @UtilSafeMalloc0(i64) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @DynBuf_AppendString(%struct.DynBuf*, i8*) #5 !dbg !577 {
  %3 = alloca %struct.DynBuf*, align 8
  %4 = alloca i8*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %3, metadata !580, metadata !55), !dbg !581
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !582, metadata !55), !dbg !583
  %5 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !584
  %6 = load i8*, i8** %4, align 8, !dbg !585
  %7 = load i8*, i8** %4, align 8, !dbg !586
  %8 = call i64 @strlen(i8* %7) #9, !dbg !587
  %9 = add i64 %8, 1, !dbg !588
  %10 = call signext i8 @DynBuf_Append(%struct.DynBuf* %5, i8* %6, i64 %9), !dbg !589
  ret i8 %10, !dbg !591
}

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32}
!llvm.ident = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "systemLinux.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 34, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmstdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "StdIO_Error", value: 0)
!7 = !DIEnumerator(name: "StdIO_EOF", value: 1)
!8 = !DIEnumerator(name: "StdIO_Success", value: 2)
!9 = !{!10, !11, !13}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "SNEBufs", file: !15, line: 102, baseType: !16)
!15 = !DIFile(filename: "systemLinux.c", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 99, size: 128, align: 64, elements: !17)
!17 = !{!18, !30}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nativeEnvironStrings", scope: !16, file: !15, line: 100, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !21, line: 40, baseType: !22)
!21 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !21, line: 36, size: 192, align: 64, elements: !23)
!23 = !{!24, !25, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !21, line: 37, baseType: !11, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !22, file: !21, line: 38, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 216, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!28 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !22, file: !21, line: 39, baseType: !26, size: 64, align: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "nativeEnvironOffsets", scope: !16, file: !15, line: 101, baseType: !19, size: 64, align: 64, offset: 64)
!31 = !{i32 2, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!34 = distinct !DISubprogram(name: "System_GetTimeMonotonic", scope: !15, file: !15, line: 141, type: !35, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!35 = !DISubroutineType(types: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !38, line: 171, baseType: !39)
!38 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !40, line: 55, baseType: !28)
!40 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!41 = !{}
!42 = !DILocalVariable(name: "tp", scope: !34, file: !15, line: 146, type: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tms", file: !44, line: 34, size: 256, align: 64, elements: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/times.h", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!45 = !{!46, !52, !53, !54}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tms_utime", scope: !43, file: !44, line: 36, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !48, line: 59, baseType: !49)
!48 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !50, line: 135, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!51 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tms_stime", scope: !43, file: !44, line: 37, baseType: !47, size: 64, align: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cutime", scope: !43, file: !44, line: 39, baseType: !47, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cstime", scope: !43, file: !44, line: 40, baseType: !47, size: 64, align: 64, offset: 192)
!55 = !DIExpression()
!56 = !DILocation(line: 146, column: 15, scope: !34)
!57 = !DILocation(line: 190, column: 11, scope: !34)
!58 = !DILocation(line: 190, column: 4, scope: !34)
!59 = distinct !DISubprogram(name: "System_Uptime", scope: !15, file: !15, line: 213, type: !35, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!60 = !DILocalVariable(name: "uptime", scope: !59, file: !15, line: 215, type: !37)
!61 = !DILocation(line: 215, column: 11, scope: !59)
!62 = !DILocalVariable(name: "procStream", scope: !63, file: !15, line: 228, type: !64)
!63 = distinct !DILexicalBlock(scope: !59, file: !15, line: 227, column: 4)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !66, line: 48, baseType: !67)
!66 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !68, line: 241, size: 1728, align: 64, elements: !69)
!68 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!69 = !{!70, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !91, !92, !93, !94, !96, !98, !100, !104, !107, !109, !110, !111, !112, !113, !114, !115}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !67, file: !68, line: 242, baseType: !71, size: 32, align: 32)
!71 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !67, file: !68, line: 247, baseType: !11, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !67, file: !68, line: 248, baseType: !11, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !67, file: !68, line: 249, baseType: !11, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !67, file: !68, line: 250, baseType: !11, size: 64, align: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !67, file: !68, line: 251, baseType: !11, size: 64, align: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !67, file: !68, line: 252, baseType: !11, size: 64, align: 64, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !67, file: !68, line: 253, baseType: !11, size: 64, align: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !67, file: !68, line: 254, baseType: !11, size: 64, align: 64, offset: 512)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !67, file: !68, line: 256, baseType: !11, size: 64, align: 64, offset: 576)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !67, file: !68, line: 257, baseType: !11, size: 64, align: 64, offset: 640)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !67, file: !68, line: 258, baseType: !11, size: 64, align: 64, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !67, file: !68, line: 260, baseType: !84, size: 64, align: 64, offset: 768)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !68, line: 156, size: 192, align: 64, elements: !86)
!86 = !{!87, !88, !90}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !85, file: !68, line: 157, baseType: !84, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !85, file: !68, line: 158, baseType: !89, size: 64, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !85, file: !68, line: 162, baseType: !71, size: 32, align: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !67, file: !68, line: 262, baseType: !89, size: 64, align: 64, offset: 832)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !67, file: !68, line: 264, baseType: !71, size: 32, align: 32, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !67, file: !68, line: 268, baseType: !71, size: 32, align: 32, offset: 928)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !67, file: !68, line: 270, baseType: !95, size: 64, align: 64, offset: 960)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !50, line: 131, baseType: !51)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !67, file: !68, line: 274, baseType: !97, size: 16, align: 16, offset: 1024)
!97 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !67, file: !68, line: 275, baseType: !99, size: 8, align: 8, offset: 1040)
!99 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !67, file: !68, line: 276, baseType: !101, size: 8, align: 8, offset: 1048)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, align: 8, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 1)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !67, file: !68, line: 280, baseType: !105, size: 64, align: 64, offset: 1088)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !68, line: 150, baseType: null)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !67, file: !68, line: 289, baseType: !108, size: 64, align: 64, offset: 1152)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !50, line: 132, baseType: !51)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !67, file: !68, line: 297, baseType: !10, size: 64, align: 64, offset: 1216)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !67, file: !68, line: 298, baseType: !10, size: 64, align: 64, offset: 1280)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !67, file: !68, line: 299, baseType: !10, size: 64, align: 64, offset: 1344)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !67, file: !68, line: 300, baseType: !10, size: 64, align: 64, offset: 1408)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !67, file: !68, line: 302, baseType: !26, size: 64, align: 64, offset: 1472)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !67, file: !68, line: 303, baseType: !71, size: 32, align: 32, offset: 1536)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !67, file: !68, line: 305, baseType: !116, size: 160, align: 8, offset: 1568)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, align: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 20)
!119 = !DILocation(line: 228, column: 13, scope: !63)
!120 = !DILocalVariable(name: "buf", scope: !63, file: !15, line: 229, type: !11)
!121 = !DILocation(line: 229, column: 13, scope: !63)
!122 = !DILocalVariable(name: "bufSize", scope: !63, file: !15, line: 230, type: !26)
!123 = !DILocation(line: 230, column: 14, scope: !63)
!124 = !DILocalVariable(name: "sec", scope: !63, file: !15, line: 231, type: !37)
!125 = !DILocation(line: 231, column: 14, scope: !63)
!126 = !DILocalVariable(name: "csec", scope: !63, file: !15, line: 232, type: !127)
!127 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!128 = !DILocation(line: 232, column: 20, scope: !63)
!129 = !DILocation(line: 234, column: 26, scope: !130)
!130 = distinct !DILexicalBlock(scope: !63, file: !15, line: 234, column: 11)
!131 = !DILocation(line: 234, column: 24, scope: !130)
!132 = !DILocation(line: 234, column: 60, scope: !130)
!133 = !DILocation(line: 234, column: 68, scope: !130)
!134 = !DILocation(line: 235, column: 31, scope: !130)
!135 = !DILocation(line: 235, column: 12, scope: !130)
!136 = !DILocation(line: 235, column: 63, scope: !130)
!137 = !DILocation(line: 235, column: 81, scope: !130)
!138 = !DILocation(line: 236, column: 19, scope: !130)
!139 = !DILocation(line: 236, column: 12, scope: !130)
!140 = !DILocation(line: 236, column: 52, scope: !130)
!141 = !DILocation(line: 234, column: 11, scope: !142)
!142 = !DILexicalBlockFile(scope: !63, file: !15, discriminator: 1)
!143 = !DILocation(line: 237, column: 19, scope: !144)
!144 = distinct !DILexicalBlock(scope: !130, file: !15, line: 236, column: 59)
!145 = !DILocation(line: 237, column: 23, scope: !144)
!146 = !DILocation(line: 237, column: 31, scope: !144)
!147 = !DILocation(line: 237, column: 29, scope: !144)
!148 = !DILocation(line: 237, column: 17, scope: !144)
!149 = !DILocation(line: 238, column: 7, scope: !144)
!150 = !DILocation(line: 239, column: 10, scope: !151)
!151 = distinct !DILexicalBlock(scope: !130, file: !15, line: 238, column: 14)
!152 = !DILocation(line: 242, column: 12, scope: !63)
!153 = !DILocation(line: 242, column: 7, scope: !63)
!154 = !DILocation(line: 244, column: 11, scope: !155)
!155 = distinct !DILexicalBlock(scope: !63, file: !15, line: 244, column: 11)
!156 = !DILocation(line: 244, column: 11, scope: !63)
!157 = !DILocation(line: 245, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !15, line: 244, column: 23)
!159 = !DILocation(line: 245, column: 10, scope: !158)
!160 = !DILocation(line: 246, column: 7, scope: !158)
!161 = !DILocation(line: 284, column: 11, scope: !59)
!162 = !DILocation(line: 284, column: 4, scope: !59)
!163 = distinct !DISubprogram(name: "System_Shutdown", scope: !15, file: !15, line: 305, type: !164, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !166}
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !38, line: 230, baseType: !12)
!167 = !DILocalVariable(name: "reboot", arg: 1, scope: !163, file: !15, line: 305, type: !166)
!168 = !DILocation(line: 305, column: 22, scope: !163)
!169 = !DILocalVariable(name: "cmd", scope: !163, file: !15, line: 307, type: !11)
!170 = !DILocation(line: 307, column: 10, scope: !163)
!171 = !DILocation(line: 309, column: 8, scope: !172)
!172 = distinct !DILexicalBlock(scope: !163, file: !15, line: 309, column: 8)
!173 = !DILocation(line: 309, column: 8, scope: !163)
!174 = !DILocation(line: 315, column: 11, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !15, line: 309, column: 16)
!176 = !DILocation(line: 317, column: 4, scope: !175)
!177 = !DILocation(line: 325, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !172, file: !15, line: 317, column: 11)
!179 = !DILocation(line: 328, column: 15, scope: !180)
!180 = distinct !DILexicalBlock(scope: !163, file: !15, line: 328, column: 8)
!181 = !DILocation(line: 328, column: 8, scope: !180)
!182 = !DILocation(line: 328, column: 20, scope: !180)
!183 = !DILocation(line: 328, column: 8, scope: !163)
!184 = !DILocation(line: 329, column: 14, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !15, line: 328, column: 27)
!186 = !DILocation(line: 330, column: 15, scope: !185)
!187 = !DILocation(line: 330, column: 47, scope: !185)
!188 = !DILocation(line: 329, column: 7, scope: !185)
!189 = !DILocation(line: 331, column: 4, scope: !185)
!190 = !DILocation(line: 332, column: 1, scope: !163)
!191 = distinct !DISubprogram(name: "System_IsUserAdmin", scope: !15, file: !15, line: 355, type: !192, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!192 = !DISubroutineType(types: !193)
!193 = !{!166}
!194 = !DILocation(line: 357, column: 11, scope: !191)
!195 = !DILocation(line: 357, column: 21, scope: !191)
!196 = !DILocation(line: 357, column: 4, scope: !191)
!197 = distinct !DISubprogram(name: "System_GetEnv", scope: !15, file: !15, line: 377, type: !198, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!198 = !DISubroutineType(types: !199)
!199 = !{!11, !166, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!202 = !DILocalVariable(name: "global", arg: 1, scope: !197, file: !15, line: 377, type: !166)
!203 = !DILocation(line: 377, column: 20, scope: !197)
!204 = !DILocalVariable(name: "valueName", arg: 2, scope: !197, file: !15, line: 378, type: !200)
!205 = !DILocation(line: 378, column: 27, scope: !197)
!206 = !DILocalVariable(name: "result", scope: !197, file: !15, line: 380, type: !11)
!207 = !DILocation(line: 380, column: 10, scope: !197)
!208 = !DILocation(line: 382, column: 26, scope: !197)
!209 = !DILocation(line: 382, column: 13, scope: !197)
!210 = !DILocation(line: 382, column: 11, scope: !197)
!211 = !DILocation(line: 384, column: 15, scope: !212)
!212 = distinct !DILexicalBlock(scope: !197, file: !15, line: 384, column: 7)
!213 = !DILocation(line: 384, column: 12, scope: !212)
!214 = !DILocation(line: 384, column: 7, scope: !197)
!215 = !DILocation(line: 385, column: 23, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !15, line: 384, column: 23)
!217 = !DILocation(line: 385, column: 16, scope: !216)
!218 = !DILocation(line: 385, column: 14, scope: !216)
!219 = !DILocation(line: 386, column: 4, scope: !216)
!220 = !DILocation(line: 388, column: 11, scope: !197)
!221 = !DILocation(line: 388, column: 4, scope: !197)
!222 = distinct !DISubprogram(name: "System_SetEnv", scope: !15, file: !15, line: 412, type: !223, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!223 = !DISubroutineType(types: !224)
!224 = !{!71, !166, !200, !200}
!225 = !DILocalVariable(name: "global", arg: 1, scope: !222, file: !15, line: 412, type: !166)
!226 = !DILocation(line: 412, column: 20, scope: !222)
!227 = !DILocalVariable(name: "valueName", arg: 2, scope: !222, file: !15, line: 413, type: !200)
!228 = !DILocation(line: 413, column: 27, scope: !222)
!229 = !DILocalVariable(name: "value", arg: 3, scope: !222, file: !15, line: 414, type: !200)
!230 = !DILocation(line: 414, column: 27, scope: !222)
!231 = !DILocation(line: 416, column: 24, scope: !222)
!232 = !DILocation(line: 416, column: 35, scope: !222)
!233 = !DILocation(line: 416, column: 11, scope: !222)
!234 = !DILocation(line: 416, column: 4, scope: !222)
!235 = distinct !DISubprogram(name: "System_GetNodeName", scope: !15, file: !15, line: 438, type: !236, isLocal: false, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!236 = !DISubroutineType(types: !237)
!237 = !{!166, !26, !11}
!238 = !DILocalVariable(name: "outBufSize", arg: 1, scope: !235, file: !15, line: 438, type: !26)
!239 = !DILocation(line: 438, column: 27, scope: !235)
!240 = !DILocalVariable(name: "outBuf", arg: 2, scope: !235, file: !15, line: 439, type: !11)
!241 = !DILocation(line: 439, column: 26, scope: !235)
!242 = !DILocation(line: 443, column: 20, scope: !243)
!243 = distinct !DILexicalBlock(scope: !235, file: !15, line: 443, column: 8)
!244 = !DILocation(line: 443, column: 28, scope: !243)
!245 = !DILocation(line: 443, column: 8, scope: !243)
!246 = !DILocation(line: 443, column: 40, scope: !243)
!247 = !DILocation(line: 443, column: 8, scope: !235)
!248 = !DILocation(line: 444, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !243, file: !15, line: 443, column: 45)
!250 = !DILocation(line: 445, column: 7, scope: !249)
!251 = !DILocation(line: 448, column: 4, scope: !235)
!252 = !DILocation(line: 449, column: 1, scope: !235)
!253 = distinct !DISubprogram(name: "System_GetNativeEnviron", scope: !15, file: !15, line: 493, type: !254, isLocal: false, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!257 = !DILocalVariable(name: "compatEnviron", arg: 1, scope: !253, file: !15, line: 493, type: !256)
!258 = !DILocation(line: 493, column: 38, scope: !253)
!259 = !DILocalVariable(name: "environTable", scope: !253, file: !15, line: 496, type: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTable", file: !262, line: 40, baseType: !263)
!262 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashTable.h", directory: "/home/lichi/Desktop/open-vm-tools/line991")
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "HashTable", file: !262, line: 40, flags: DIFlagFwdDecl)
!264 = !DILocation(line: 496, column: 15, scope: !253)
!265 = !DILocalVariable(name: "nativeEnviron", scope: !253, file: !15, line: 497, type: !256)
!266 = !DILocation(line: 497, column: 17, scope: !253)
!267 = !DILocation(line: 499, column: 32, scope: !253)
!268 = !DILocation(line: 499, column: 19, scope: !253)
!269 = !DILocation(line: 499, column: 17, scope: !253)
!270 = !DILocation(line: 500, column: 37, scope: !253)
!271 = !DILocation(line: 500, column: 20, scope: !253)
!272 = !DILocation(line: 500, column: 18, scope: !253)
!273 = !DILocation(line: 502, column: 19, scope: !253)
!274 = !DILocation(line: 502, column: 4, scope: !253)
!275 = !DILocation(line: 504, column: 11, scope: !253)
!276 = !DILocation(line: 504, column: 4, scope: !253)
!277 = distinct !DISubprogram(name: "SNEBuildHash", scope: !15, file: !15, line: 563, type: !278, isLocal: true, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!278 = !DISubroutineType(types: !279)
!279 = !{!260, !256}
!280 = !DILocalVariable(name: "compatEnviron", arg: 1, scope: !277, file: !15, line: 563, type: !256)
!281 = !DILocation(line: 563, column: 27, scope: !277)
!282 = !DILocalVariable(name: "environTable", scope: !277, file: !15, line: 566, type: !260)
!283 = !DILocation(line: 566, column: 15, scope: !277)
!284 = !DILocalVariable(name: "p", scope: !277, file: !15, line: 567, type: !256)
!285 = !DILocation(line: 567, column: 17, scope: !277)
!286 = !DILocation(line: 573, column: 19, scope: !277)
!287 = !DILocation(line: 573, column: 17, scope: !277)
!288 = !DILocation(line: 575, column: 13, scope: !289)
!289 = distinct !DILexicalBlock(scope: !277, file: !15, line: 575, column: 4)
!290 = !DILocation(line: 575, column: 11, scope: !289)
!291 = !DILocation(line: 575, column: 9, scope: !289)
!292 = !DILocation(line: 575, column: 28, scope: !293)
!293 = !DILexicalBlockFile(scope: !294, file: !15, discriminator: 1)
!294 = distinct !DILexicalBlock(scope: !289, file: !15, line: 575, column: 4)
!295 = !DILocation(line: 575, column: 30, scope: !293)
!296 = !DILocation(line: 575, column: 34, scope: !297)
!297 = !DILexicalBlockFile(scope: !294, file: !15, discriminator: 2)
!298 = !DILocation(line: 575, column: 33, scope: !297)
!299 = !DILocation(line: 575, column: 30, scope: !297)
!300 = !DILocation(line: 575, column: 4, scope: !301)
!301 = !DILexicalBlockFile(scope: !289, file: !15, discriminator: 3)
!302 = !DILocalVariable(name: "prefixLength", scope: !303, file: !15, line: 576, type: !304)
!303 = distinct !DILexicalBlock(scope: !294, file: !15, line: 575, column: 42)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!305 = !DILocation(line: 576, column: 20, scope: !303)
!306 = !DILocalVariable(name: "key", scope: !303, file: !15, line: 577, type: !11)
!307 = !DILocation(line: 577, column: 13, scope: !303)
!308 = !DILocalVariable(name: "value", scope: !303, file: !15, line: 578, type: !11)
!309 = !DILocation(line: 578, column: 13, scope: !303)
!310 = !DILocalVariable(name: "index", scope: !303, file: !15, line: 579, type: !127)
!311 = !DILocation(line: 579, column: 20, scope: !303)
!312 = !DILocation(line: 581, column: 13, scope: !303)
!313 = !DILocation(line: 582, column: 43, scope: !303)
!314 = !DILocation(line: 582, column: 42, scope: !303)
!315 = !DILocation(line: 582, column: 13, scope: !303)
!316 = !DILocation(line: 582, column: 11, scope: !303)
!317 = !DILocation(line: 583, column: 12, scope: !318)
!318 = distinct !DILexicalBlock(scope: !303, file: !15, line: 583, column: 11)
!319 = !DILocation(line: 583, column: 11, scope: !303)
!320 = !DILocation(line: 585, column: 10, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !15, line: 583, column: 17)
!322 = !DILocation(line: 586, column: 10, scope: !321)
!323 = !DILocation(line: 592, column: 7, scope: !303)
!324 = !DILocation(line: 593, column: 38, scope: !303)
!325 = !DILocation(line: 593, column: 33, scope: !303)
!326 = !DILocation(line: 593, column: 35, scope: !303)
!327 = !DILocation(line: 593, column: 34, scope: !303)
!328 = !DILocation(line: 593, column: 15, scope: !303)
!329 = !DILocation(line: 593, column: 13, scope: !303)
!330 = !DILocation(line: 595, column: 30, scope: !331)
!331 = distinct !DILexicalBlock(scope: !303, file: !15, line: 595, column: 11)
!332 = !DILocation(line: 595, column: 11, scope: !331)
!333 = !DILocation(line: 595, column: 46, scope: !331)
!334 = !DILocation(line: 596, column: 11, scope: !331)
!335 = !DILocation(line: 596, column: 29, scope: !331)
!336 = !DILocation(line: 596, column: 37, scope: !331)
!337 = !DILocation(line: 597, column: 12, scope: !331)
!338 = !DILocation(line: 597, column: 21, scope: !331)
!339 = !DILocation(line: 597, column: 28, scope: !331)
!340 = !DILocation(line: 597, column: 31, scope: !341)
!341 = !DILexicalBlockFile(scope: !331, file: !15, discriminator: 1)
!342 = !DILocation(line: 597, column: 40, scope: !341)
!343 = !DILocation(line: 595, column: 11, scope: !344)
!344 = !DILexicalBlockFile(scope: !303, file: !15, discriminator: 1)
!345 = !DILocalVariable(name: "realKey", scope: !346, file: !15, line: 606, type: !11)
!346 = distinct !DILexicalBlock(scope: !331, file: !15, line: 597, column: 49)
!347 = !DILocation(line: 606, column: 16, scope: !346)
!348 = !DILocation(line: 606, column: 27, scope: !346)
!349 = !DILocalVariable(name: "realValue", scope: !346, file: !15, line: 607, type: !11)
!350 = !DILocation(line: 607, column: 16, scope: !346)
!351 = !DILocation(line: 607, column: 29, scope: !346)
!352 = !DILocation(line: 607, column: 38, scope: !346)
!353 = !DILocation(line: 607, column: 28, scope: !346)
!354 = !DILocation(line: 607, column: 28, scope: !355)
!355 = !DILexicalBlockFile(scope: !346, file: !15, discriminator: 1)
!356 = !DILocation(line: 609, column: 47, scope: !346)
!357 = !DILocation(line: 609, column: 29, scope: !346)
!358 = !DILocation(line: 607, column: 28, scope: !359)
!359 = !DILexicalBlockFile(scope: !346, file: !15, discriminator: 2)
!360 = !DILocation(line: 607, column: 28, scope: !361)
!361 = !DILexicalBlockFile(scope: !346, file: !15, discriminator: 3)
!362 = !DILocation(line: 607, column: 16, scope: !361)
!363 = !DILocation(line: 610, column: 36, scope: !346)
!364 = !DILocation(line: 610, column: 50, scope: !346)
!365 = !DILocation(line: 610, column: 59, scope: !346)
!366 = !DILocation(line: 610, column: 10, scope: !346)
!367 = !DILocation(line: 611, column: 7, scope: !346)
!368 = !DILocation(line: 612, column: 35, scope: !369)
!369 = distinct !DILexicalBlock(scope: !331, file: !15, line: 611, column: 14)
!370 = !DILocation(line: 612, column: 49, scope: !369)
!371 = !DILocation(line: 612, column: 54, scope: !369)
!372 = !DILocation(line: 612, column: 10, scope: !369)
!373 = !DILocation(line: 620, column: 12, scope: !303)
!374 = !DILocation(line: 620, column: 7, scope: !303)
!375 = !DILocation(line: 621, column: 4, scope: !303)
!376 = !DILocation(line: 575, column: 38, scope: !377)
!377 = !DILexicalBlockFile(scope: !294, file: !15, discriminator: 4)
!378 = !DILocation(line: 575, column: 4, scope: !377)
!379 = distinct !{!379, !380}
!380 = !DILocation(line: 575, column: 4, scope: !277)
!381 = !DILocation(line: 623, column: 11, scope: !277)
!382 = !DILocation(line: 623, column: 4, scope: !277)
!383 = distinct !DISubprogram(name: "SNEHashToEnviron", scope: !15, file: !15, line: 647, type: !384, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!384 = !DISubroutineType(types: !385)
!385 = !{!256, !260}
!386 = !DILocalVariable(name: "environTable", arg: 1, scope: !383, file: !15, line: 647, type: !260)
!387 = !DILocation(line: 647, column: 29, scope: !383)
!388 = !DILocalVariable(name: "nativeEnvironOffsets", scope: !383, file: !15, line: 649, type: !20)
!389 = !DILocation(line: 649, column: 11, scope: !383)
!390 = !DILocalVariable(name: "nativeEnvironStrings", scope: !383, file: !15, line: 650, type: !20)
!391 = !DILocation(line: 650, column: 11, scope: !383)
!392 = !DILocalVariable(name: "anonBufs", scope: !383, file: !15, line: 652, type: !14)
!393 = !DILocation(line: 652, column: 12, scope: !383)
!394 = !DILocation(line: 652, column: 23, scope: !383)
!395 = !DILocalVariable(name: "nativeEnviron", scope: !383, file: !15, line: 657, type: !256)
!396 = !DILocation(line: 657, column: 17, scope: !383)
!397 = !DILocalVariable(name: "offsetIter", scope: !383, file: !15, line: 658, type: !398)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !66, line: 92, baseType: !108)
!400 = !DILocation(line: 658, column: 11, scope: !383)
!401 = !DILocalVariable(name: "stringsBase", scope: !383, file: !15, line: 659, type: !11)
!402 = !DILocation(line: 659, column: 10, scope: !383)
!403 = !DILocalVariable(name: "numStrings", scope: !383, file: !15, line: 661, type: !127)
!404 = !DILocation(line: 661, column: 17, scope: !383)
!405 = !DILocalVariable(name: "i", scope: !383, file: !15, line: 662, type: !127)
!406 = !DILocation(line: 662, column: 17, scope: !383)
!407 = !DILocation(line: 664, column: 4, scope: !383)
!408 = !DILocation(line: 665, column: 4, scope: !383)
!409 = !DILocation(line: 670, column: 22, scope: !383)
!410 = !DILocation(line: 670, column: 56, scope: !383)
!411 = !DILocation(line: 670, column: 4, scope: !383)
!412 = !DILocation(line: 671, column: 30, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !15, line: 671, column: 10)
!414 = distinct !DILexicalBlock(scope: !383, file: !15, line: 671, column: 5)
!415 = !DILocation(line: 671, column: 28, scope: !413)
!416 = !DILocation(line: 671, column: 27, scope: !413)
!417 = !DILocation(line: 671, column: 10, scope: !413)
!418 = !DILocation(line: 671, column: 10, scope: !414)
!419 = !DILocation(line: 671, column: 74, scope: !420)
!420 = !DILexicalBlockFile(scope: !421, file: !15, discriminator: 1)
!421 = distinct !DILexicalBlock(scope: !413, file: !15, line: 671, column: 72)
!422 = !DILocation(line: 677, column: 17, scope: !383)
!423 = !DILocation(line: 677, column: 55, scope: !383)
!424 = !DILocation(line: 677, column: 15, scope: !383)
!425 = !DILocation(line: 678, column: 41, scope: !383)
!426 = !DILocation(line: 678, column: 39, scope: !383)
!427 = !DILocation(line: 678, column: 36, scope: !383)
!428 = !DILocation(line: 678, column: 20, scope: !383)
!429 = !DILocation(line: 678, column: 18, scope: !383)
!430 = !DILocation(line: 680, column: 18, scope: !383)
!431 = !DILocation(line: 680, column: 16, scope: !383)
!432 = !DILocation(line: 681, column: 17, scope: !383)
!433 = !DILocation(line: 681, column: 15, scope: !383)
!434 = !DILocation(line: 683, column: 11, scope: !435)
!435 = distinct !DILexicalBlock(scope: !383, file: !15, line: 683, column: 4)
!436 = !DILocation(line: 683, column: 9, scope: !435)
!437 = !DILocation(line: 683, column: 16, scope: !438)
!438 = !DILexicalBlockFile(scope: !439, file: !15, discriminator: 1)
!439 = distinct !DILexicalBlock(scope: !435, file: !15, line: 683, column: 4)
!440 = !DILocation(line: 683, column: 20, scope: !438)
!441 = !DILocation(line: 683, column: 18, scope: !438)
!442 = !DILocation(line: 683, column: 4, scope: !438)
!443 = !DILocation(line: 684, column: 26, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !15, line: 683, column: 51)
!445 = !DILocation(line: 684, column: 41, scope: !444)
!446 = !DILocation(line: 684, column: 40, scope: !444)
!447 = !DILocation(line: 684, column: 38, scope: !444)
!448 = !DILocation(line: 684, column: 21, scope: !444)
!449 = !DILocation(line: 684, column: 7, scope: !444)
!450 = !DILocation(line: 684, column: 24, scope: !444)
!451 = !DILocation(line: 685, column: 4, scope: !444)
!452 = !DILocation(line: 683, column: 33, scope: !453)
!453 = !DILexicalBlockFile(scope: !439, file: !15, discriminator: 2)
!454 = !DILocation(line: 683, column: 47, scope: !453)
!455 = !DILocation(line: 683, column: 4, scope: !453)
!456 = distinct !{!456, !457}
!457 = !DILocation(line: 683, column: 4, scope: !383)
!458 = !DILocation(line: 686, column: 18, scope: !383)
!459 = !DILocation(line: 686, column: 4, scope: !383)
!460 = !DILocation(line: 686, column: 21, scope: !383)
!461 = !DILocation(line: 698, column: 4, scope: !383)
!462 = !DILocation(line: 699, column: 4, scope: !383)
!463 = !DILocation(line: 701, column: 11, scope: !383)
!464 = !DILocation(line: 701, column: 4, scope: !383)
!465 = distinct !DISubprogram(name: "System_FreeNativeEnviron", scope: !15, file: !15, line: 525, type: !466, isLocal: false, isDefinition: true, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !256}
!468 = !DILocalVariable(name: "nativeEnviron", arg: 1, scope: !465, file: !15, line: 525, type: !256)
!469 = !DILocation(line: 525, column: 39, scope: !465)
!470 = !DILocalVariable(name: "stringBuf", scope: !465, file: !15, line: 532, type: !11)
!471 = !DILocation(line: 532, column: 10, scope: !465)
!472 = !DILocation(line: 532, column: 31, scope: !465)
!473 = !DILocation(line: 532, column: 30, scope: !465)
!474 = !DILocation(line: 534, column: 9, scope: !465)
!475 = !DILocation(line: 534, column: 4, scope: !465)
!476 = !DILocation(line: 535, column: 9, scope: !465)
!477 = !DILocation(line: 535, column: 4, scope: !465)
!478 = !DILocation(line: 536, column: 1, scope: !465)
!479 = distinct !DISubprogram(name: "SNEForEachCallback", scope: !15, file: !15, line: 724, type: !480, isLocal: true, isDefinition: true, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!480 = !DISubroutineType(types: !481)
!481 = !{!71, !200, !10, !10}
!482 = !DILocalVariable(name: "key", arg: 1, scope: !479, file: !15, line: 724, type: !200)
!483 = !DILocation(line: 724, column: 32, scope: !479)
!484 = !DILocalVariable(name: "value", arg: 2, scope: !479, file: !15, line: 725, type: !10)
!485 = !DILocation(line: 725, column: 26, scope: !479)
!486 = !DILocalVariable(name: "clientData", arg: 3, scope: !479, file: !15, line: 726, type: !10)
!487 = !DILocation(line: 726, column: 26, scope: !479)
!488 = !DILocalVariable(name: "nativeEnvironStrings", scope: !479, file: !15, line: 728, type: !19)
!489 = !DILocation(line: 728, column: 12, scope: !479)
!490 = !DILocation(line: 728, column: 47, scope: !479)
!491 = !DILocation(line: 728, column: 36, scope: !479)
!492 = !DILocation(line: 728, column: 60, scope: !479)
!493 = !DILocalVariable(name: "nativeEnvironOffsets", scope: !479, file: !15, line: 729, type: !19)
!494 = !DILocation(line: 729, column: 12, scope: !479)
!495 = !DILocation(line: 729, column: 47, scope: !479)
!496 = !DILocation(line: 729, column: 36, scope: !479)
!497 = !DILocation(line: 729, column: 60, scope: !479)
!498 = !DILocalVariable(name: "itemSize", scope: !479, file: !15, line: 730, type: !26)
!499 = !DILocation(line: 730, column: 11, scope: !479)
!500 = !DILocalVariable(name: "itemBuf", scope: !479, file: !15, line: 731, type: !11)
!501 = !DILocation(line: 731, column: 10, scope: !479)
!502 = !DILocalVariable(name: "itemOffset", scope: !479, file: !15, line: 732, type: !399)
!503 = !DILocation(line: 732, column: 10, scope: !479)
!504 = !DILocation(line: 737, column: 8, scope: !505)
!505 = distinct !DILexicalBlock(scope: !479, file: !15, line: 737, column: 8)
!506 = !DILocation(line: 737, column: 14, scope: !505)
!507 = !DILocation(line: 737, column: 8, scope: !479)
!508 = !DILocation(line: 738, column: 7, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !15, line: 737, column: 22)
!510 = !DILocation(line: 742, column: 22, scope: !479)
!511 = !DILocation(line: 742, column: 15, scope: !479)
!512 = !DILocation(line: 742, column: 36, scope: !479)
!513 = !DILocation(line: 742, column: 29, scope: !514)
!514 = !DILexicalBlockFile(scope: !479, file: !15, discriminator: 1)
!515 = !DILocation(line: 742, column: 27, scope: !479)
!516 = !DILocation(line: 742, column: 43, scope: !479)
!517 = !DILocation(line: 742, column: 13, scope: !479)
!518 = !DILocation(line: 743, column: 31, scope: !479)
!519 = !DILocation(line: 743, column: 14, scope: !479)
!520 = !DILocation(line: 743, column: 12, scope: !479)
!521 = !DILocation(line: 746, column: 13, scope: !479)
!522 = !DILocation(line: 746, column: 22, scope: !479)
!523 = !DILocation(line: 746, column: 41, scope: !479)
!524 = !DILocation(line: 746, column: 54, scope: !479)
!525 = !DILocation(line: 746, column: 4, scope: !479)
!526 = !DILocation(line: 748, column: 50, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !15, line: 748, column: 10)
!528 = distinct !DILexicalBlock(scope: !479, file: !15, line: 748, column: 5)
!529 = !DILocation(line: 748, column: 72, scope: !527)
!530 = !DILocation(line: 748, column: 30, scope: !527)
!531 = !DILocation(line: 748, column: 28, scope: !527)
!532 = !DILocation(line: 748, column: 27, scope: !527)
!533 = !DILocation(line: 748, column: 10, scope: !527)
!534 = !DILocation(line: 748, column: 10, scope: !528)
!535 = !DILocation(line: 748, column: 90, scope: !536)
!536 = !DILexicalBlockFile(scope: !537, file: !15, discriminator: 1)
!537 = distinct !DILexicalBlock(scope: !527, file: !15, line: 748, column: 88)
!538 = !DILocation(line: 754, column: 32, scope: !479)
!539 = !DILocation(line: 754, column: 17, scope: !479)
!540 = !DILocation(line: 754, column: 56, scope: !479)
!541 = !DILocation(line: 754, column: 54, scope: !479)
!542 = !DILocation(line: 754, column: 15, scope: !479)
!543 = !DILocation(line: 755, column: 44, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !15, line: 755, column: 10)
!545 = distinct !DILexicalBlock(scope: !479, file: !15, line: 755, column: 5)
!546 = !DILocation(line: 755, column: 66, scope: !544)
!547 = !DILocation(line: 755, column: 30, scope: !544)
!548 = !DILocation(line: 755, column: 28, scope: !544)
!549 = !DILocation(line: 755, column: 27, scope: !544)
!550 = !DILocation(line: 755, column: 10, scope: !544)
!551 = !DILocation(line: 755, column: 10, scope: !545)
!552 = !DILocation(line: 755, column: 107, scope: !553)
!553 = !DILexicalBlockFile(scope: !554, file: !15, discriminator: 1)
!554 = distinct !DILexicalBlock(scope: !544, file: !15, line: 755, column: 105)
!555 = !DILocation(line: 757, column: 9, scope: !479)
!556 = !DILocation(line: 757, column: 4, scope: !479)
!557 = !DILocation(line: 759, column: 4, scope: !479)
!558 = !DILocation(line: 760, column: 1, scope: !479)
!559 = distinct !DISubprogram(name: "DynBuf_GetSize", scope: !21, file: !21, line: 174, type: !560, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!560 = !DISubroutineType(types: !561)
!561 = !{!26, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!564 = !DILocalVariable(name: "b", arg: 1, scope: !559, file: !21, line: 174, type: !562)
!565 = !DILocation(line: 174, column: 30, scope: !559)
!566 = !DILocation(line: 178, column: 11, scope: !559)
!567 = !DILocation(line: 178, column: 14, scope: !559)
!568 = !DILocation(line: 178, column: 4, scope: !559)
!569 = distinct !DISubprogram(name: "DynBuf_Get", scope: !21, file: !21, line: 113, type: !570, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!570 = !DISubroutineType(types: !571)
!571 = !{!10, !562}
!572 = !DILocalVariable(name: "b", arg: 1, scope: !569, file: !21, line: 113, type: !562)
!573 = !DILocation(line: 113, column: 26, scope: !569)
!574 = !DILocation(line: 117, column: 11, scope: !569)
!575 = !DILocation(line: 117, column: 14, scope: !569)
!576 = !DILocation(line: 117, column: 4, scope: !569)
!577 = distinct !DISubprogram(name: "DynBuf_AppendString", scope: !21, file: !21, line: 267, type: !578, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!578 = !DISubroutineType(types: !579)
!579 = !{!166, !19, !200}
!580 = !DILocalVariable(name: "buf", arg: 1, scope: !577, file: !21, line: 267, type: !19)
!581 = !DILocation(line: 267, column: 29, scope: !577)
!582 = !DILocalVariable(name: "string", arg: 2, scope: !577, file: !21, line: 268, type: !200)
!583 = !DILocation(line: 268, column: 33, scope: !577)
!584 = !DILocation(line: 270, column: 25, scope: !577)
!585 = !DILocation(line: 270, column: 30, scope: !577)
!586 = !DILocation(line: 270, column: 45, scope: !577)
!587 = !DILocation(line: 270, column: 38, scope: !577)
!588 = !DILocation(line: 270, column: 53, scope: !577)
!589 = !DILocation(line: 270, column: 11, scope: !590)
!590 = !DILexicalBlockFile(scope: !577, file: !21, discriminator: 1)
!591 = !DILocation(line: 270, column: 4, scope: !577)
