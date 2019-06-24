; ModuleID = './xferlogs.o.i'
source_filename = "./xferlogs.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"upd\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"tools.vmsupport.status %d\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"xferlogs <options> <filename>\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"options:\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\09-h | --help - prints this usage.\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"\09enc - encodes and transfers <filename> to the VMX log.\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"\09dec - extracts encoded data to <filename> from the VMX log.\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Unable to open file %s with errno %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"%s: %s: ver - %d\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c">Logfile Begins \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Error in Base64_Encode\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c">Logfile Ends \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Error opening file %s, errno %d - %s \0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Guest: >\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c": ver \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [24 x i8] c"Invalid start log mark.\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c".tar.gz\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"tar.gz\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d-%H-%M\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"vm-support-%d-%s.%s\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"ver - \00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"No version information detected\0A\00", align 1
@.str.32 = private unnamed_addr constant [85 x i8] c"input version %d doesnt match the                          version of this binary %d\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"reading file %s to %s \0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Error opening file %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Error writing output\0A\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"Error decoding output %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !16 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !23), !dbg !24
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !25, metadata !23), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %6, metadata !27, metadata !23), !dbg !28
  %7 = load i32, i32* %4, align 4, !dbg !29
  %8 = icmp eq i32 %7, 2, !dbg !31
  br i1 %8, label %9, label %22, !dbg !32

; <label>:9:                                      ; preds = %2
  %10 = load i8**, i8*** %5, align 8, !dbg !33
  %11 = getelementptr inbounds i8*, i8** %10, i64 1, !dbg !33
  %12 = load i8*, i8** %11, align 8, !dbg !33
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 2) #8, !dbg !34
  %14 = icmp ne i32 %13, 0, !dbg !34
  br i1 %14, label %15, label %21, !dbg !35

; <label>:15:                                     ; preds = %9
  %16 = load i8**, i8*** %5, align 8, !dbg !36
  %17 = getelementptr inbounds i8*, i8** %16, i64 1, !dbg !36
  %18 = load i8*, i8** %17, align 8, !dbg !36
  %19 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i64 6) #8, !dbg !37
  %20 = icmp ne i32 %19, 0, !dbg !37
  br i1 %20, label %22, label %21, !dbg !38

; <label>:21:                                     ; preds = %15, %9
  call void @usage(), !dbg !40
  store i32 0, i32* %3, align 4, !dbg !42
  br label %67, !dbg !42

; <label>:22:                                     ; preds = %15, %2
  %23 = load i32, i32* %4, align 4, !dbg !43
  %24 = icmp ne i32 %23, 3, !dbg !45
  br i1 %24, label %25, label %26, !dbg !46

; <label>:25:                                     ; preds = %22
  call void @usage(), !dbg !47
  store i32 -1, i32* %3, align 4, !dbg !49
  br label %67, !dbg !49

; <label>:26:                                     ; preds = %22
  %27 = load i8**, i8*** %5, align 8, !dbg !50
  %28 = getelementptr inbounds i8*, i8** %27, i64 1, !dbg !50
  %29 = load i8*, i8** %28, align 8, !dbg !50
  %30 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 3) #8, !dbg !52
  %31 = icmp ne i32 %30, 0, !dbg !52
  br i1 %31, label %36, label %32, !dbg !53

; <label>:32:                                     ; preds = %26
  %33 = load i8**, i8*** %5, align 8, !dbg !54
  %34 = getelementptr inbounds i8*, i8** %33, i64 2, !dbg !54
  %35 = load i8*, i8** %34, align 8, !dbg !54
  call void @xmitFile(i8* %35), !dbg !56
  br label %66, !dbg !57

; <label>:36:                                     ; preds = %26
  %37 = load i8**, i8*** %5, align 8, !dbg !58
  %38 = getelementptr inbounds i8*, i8** %37, i64 1, !dbg !58
  %39 = load i8*, i8** %38, align 8, !dbg !58
  %40 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i64 3) #8, !dbg !61
  %41 = icmp ne i32 %40, 0, !dbg !61
  br i1 %41, label %46, label %42, !dbg !62

; <label>:42:                                     ; preds = %36
  %43 = load i8**, i8*** %5, align 8, !dbg !63
  %44 = getelementptr inbounds i8*, i8** %43, i64 2, !dbg !63
  %45 = load i8*, i8** %44, align 8, !dbg !63
  call void @extractFile(i8* %45), !dbg !65
  br label %65, !dbg !66

; <label>:46:                                     ; preds = %36
  %47 = load i8**, i8*** %5, align 8, !dbg !67
  %48 = getelementptr inbounds i8*, i8** %47, i64 1, !dbg !67
  %49 = load i8*, i8** %48, align 8, !dbg !67
  %50 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 3) #8, !dbg !70
  %51 = icmp ne i32 %50, 0, !dbg !70
  br i1 %51, label %63, label %52, !dbg !71

; <label>:52:                                     ; preds = %46
  %53 = load i8**, i8*** %5, align 8, !dbg !72
  %54 = getelementptr inbounds i8*, i8** %53, i64 2, !dbg !72
  %55 = load i8*, i8** %54, align 8, !dbg !72
  %56 = call signext i8 @StrUtil_StrToInt(i32* %6, i8* %55), !dbg !75
  %57 = icmp ne i8 %56, 0, !dbg !75
  br i1 %57, label %58, label %61, !dbg !76

; <label>:58:                                     ; preds = %52
  %59 = load i32, i32* %6, align 4, !dbg !77
  %60 = call signext i8 (i8**, i64*, i8*, ...) @RpcOut_sendOne(i8** null, i64* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i32 %59), !dbg !79
  br label %62, !dbg !80

; <label>:61:                                     ; preds = %52
  store i32 -1, i32* %3, align 4, !dbg !81
  br label %67, !dbg !81

; <label>:62:                                     ; preds = %58
  br label %64, !dbg !83

; <label>:63:                                     ; preds = %46
  call void @usage(), !dbg !84
  store i32 -1, i32* %3, align 4, !dbg !86
  br label %67, !dbg !86

; <label>:64:                                     ; preds = %62
  br label %65

; <label>:65:                                     ; preds = %64, %42
  br label %66

; <label>:66:                                     ; preds = %65, %32
  store i32 0, i32* %3, align 4, !dbg !87
  br label %67, !dbg !87

; <label>:67:                                     ; preds = %66, %63, %61, %25, %21
  %68 = load i32, i32* %3, align 4, !dbg !88
  ret i32 %68, !dbg !88
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @usage() #0 !dbg !89 {
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)), !dbg !92
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)), !dbg !93
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)), !dbg !94
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i32 0, i32 0)), !dbg !95
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0)), !dbg !96
  ret void, !dbg !97
}

; Function Attrs: nounwind uwtable
define internal void @xmitFile(i8*) #0 !dbg !98 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [57 x i8], align 16
  %6 = alloca [114 x i8], align 16
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !101, metadata !23), !dbg !102
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !103, metadata !23), !dbg !161
  call void @llvm.dbg.declare(metadata i64* %4, metadata !162, metadata !23), !dbg !163
  call void @llvm.dbg.declare(metadata [57 x i8]* %5, metadata !164, metadata !23), !dbg !168
  call void @llvm.dbg.declare(metadata [114 x i8]* %6, metadata !169, metadata !23), !dbg !173
  %8 = bitcast [114 x i8]* %6 to i8*, !dbg !173
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 114, i32 16, i1 false), !dbg !173
  %9 = bitcast i8* %8 to [114 x i8]*, !dbg !173
  %10 = getelementptr [114 x i8], [114 x i8]* %9, i32 0, i32 0, !dbg !173
  store i8 62, i8* %10, !dbg !173
  call void @llvm.dbg.declare(metadata i8** %7, metadata !174, metadata !23), !dbg !175
  %11 = getelementptr inbounds [114 x i8], [114 x i8]* %6, i32 0, i32 0, !dbg !176
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !177
  store i8* %12, i8** %7, align 8, !dbg !175
  %13 = load i8*, i8** %2, align 8, !dbg !178
  %14 = call %struct._IO_FILE* @fopen64(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)), !dbg !180
  store %struct._IO_FILE* %14, %struct._IO_FILE** %3, align 8, !dbg !181
  %15 = icmp ne %struct._IO_FILE* %14, null, !dbg !181
  br i1 %15, label %20, label %16, !dbg !182

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %2, align 8, !dbg !183
  %18 = call i32* @__errno_location() #1, !dbg !185
  %19 = load i32, i32* %18, align 4, !dbg !186
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0), i8* %17, i32 %19), !dbg !187
  call void @exit(i32 -1) #9, !dbg !189
  unreachable, !dbg !189

; <label>:20:                                     ; preds = %1
  %21 = load i8*, i8** %2, align 8, !dbg !190
  call void (i8*, ...) @RpcVMX_Log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* %21, i32 1), !dbg !191
  br label %22, !dbg !192

; <label>:22:                                     ; preds = %36, %20
  %23 = getelementptr inbounds [57 x i8], [57 x i8]* %5, i32 0, i32 0, !dbg !193
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !195
  %25 = call i64 @fread(i8* %23, i64 1, i64 57, %struct._IO_FILE* %24), !dbg !196
  store i64 %25, i64* %4, align 8, !dbg !197
  %26 = icmp ugt i64 %25, 0, !dbg !198
  br i1 %26, label %27, label %37, !dbg !199

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds [57 x i8], [57 x i8]* %5, i32 0, i32 0, !dbg !200
  %29 = load i64, i64* %4, align 8, !dbg !203
  %30 = load i8*, i8** %7, align 8, !dbg !204
  %31 = call signext i8 @Base64_Encode(i8* %28, i64 %29, i8* %30, i64 113, i64* null), !dbg !205
  %32 = icmp ne i8 %31, 0, !dbg !205
  br i1 %32, label %33, label %35, !dbg !206

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds [114 x i8], [114 x i8]* %6, i32 0, i32 0, !dbg !207
  call void (i8*, ...) @RpcVMX_Log(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* %34), !dbg !209
  br label %36, !dbg !210

; <label>:35:                                     ; preds = %27
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0)), !dbg !211
  br label %38, !dbg !213

; <label>:36:                                     ; preds = %33
  br label %22, !dbg !214, !llvm.loop !216

; <label>:37:                                     ; preds = %22
  br label %38, !dbg !217

; <label>:38:                                     ; preds = %37, %35
  call void (i8*, ...) @RpcVMX_Log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0)), !dbg !219
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !220
  %40 = call i32 @fclose(%struct._IO_FILE* %39), !dbg !221
  ret void, !dbg !222
}

; Function Attrs: nounwind uwtable
define internal void @extractFile(i8*) #0 !dbg !223 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [32 x i8], align 16
  %16 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !224, metadata !23), !dbg !225
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !226, metadata !23), !dbg !227
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !228, metadata !23), !dbg !229
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8, !dbg !229
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !230, metadata !23), !dbg !234
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !235, metadata !23), !dbg !242
  call void @llvm.dbg.declare(metadata i64* %7, metadata !243, metadata !23), !dbg !244
  call void @llvm.dbg.declare(metadata [256 x i8]* %8, metadata !245, metadata !23), !dbg !246
  call void @llvm.dbg.declare(metadata i8** %9, metadata !247, metadata !23), !dbg !248
  call void @llvm.dbg.declare(metadata i8** %10, metadata !249, metadata !23), !dbg !250
  call void @llvm.dbg.declare(metadata i8** %11, metadata !251, metadata !23), !dbg !252
  call void @llvm.dbg.declare(metadata i32* %12, metadata !253, metadata !23), !dbg !254
  call void @llvm.dbg.declare(metadata i32* %13, metadata !255, metadata !23), !dbg !256
  store i32 0, i32* %13, align 4, !dbg !256
  %17 = load i8*, i8** %2, align 8, !dbg !257
  %18 = call %struct._IO_FILE* @fopen64(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0)), !dbg !259
  store %struct._IO_FILE* %18, %struct._IO_FILE** %3, align 8, !dbg !260
  %19 = icmp ne %struct._IO_FILE* %18, null, !dbg !260
  br i1 %19, label %27, label %20, !dbg !261

; <label>:20:                                     ; preds = %1
  %21 = load i8*, i8** %2, align 8, !dbg !262
  %22 = call i32* @__errno_location() #1, !dbg !264
  %23 = load i32, i32* %22, align 4, !dbg !265
  %24 = call i32* @__errno_location() #1, !dbg !266
  %25 = load i32, i32* %24, align 4, !dbg !268
  %26 = call i8* @strerror(i32 %25) #10, !dbg !269
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i32 0, i32 0), i8* %21, i32 %23, i8* %26), !dbg !271
  call void @exit(i32 -1) #9, !dbg !272
  unreachable, !dbg !272

; <label>:27:                                     ; preds = %1
  br label %28, !dbg !273

; <label>:28:                                     ; preds = %141, %27
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !274
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !276
  %31 = call i8* @fgets(i8* %29, i32 256, %struct._IO_FILE* %30), !dbg !277
  %32 = icmp ne i8* %31, null, !dbg !278
  br i1 %32, label %33, label %142, !dbg !278

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !279
  %35 = call i8* @strstr(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #8, !dbg !282
  %36 = icmp ne i8* %35, null, !dbg !282
  br i1 %36, label %37, label %141, !dbg !283

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !284
  %39 = call i8* @strstr(i8* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !287
  %40 = icmp ne i8* %39, null, !dbg !287
  br i1 %40, label %41, label %107, !dbg !288

; <label>:41:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i8** %14, metadata !289, metadata !23), !dbg !292
  call void @llvm.dbg.declare(metadata [32 x i8]* %15, metadata !293, metadata !23), !dbg !297
  call void @llvm.dbg.declare(metadata i64* %16, metadata !298, metadata !23), !dbg !302
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !303
  %43 = call i8* @strstr(i8* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !304
  store i8* %43, i8** %10, align 8, !dbg !305
  %44 = load i8*, i8** %10, align 8, !dbg !306
  %45 = getelementptr inbounds i8, i8* %44, i64 17, !dbg !306
  store i8* %45, i8** %10, align 8, !dbg !306
  %46 = load i8*, i8** %10, align 8, !dbg !307
  %47 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !308
  store i8* %47, i8** %9, align 8, !dbg !309
  %48 = load i8*, i8** %9, align 8, !dbg !310
  %49 = icmp eq i8* %48, null, !dbg !312
  br i1 %49, label %50, label %53, !dbg !313

; <label>:50:                                     ; preds = %41
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !314
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0)), !dbg !316
  br label %142, !dbg !317

; <label>:53:                                     ; preds = %41
  %54 = load i8*, i8** %9, align 8, !dbg !318
  store i8 0, i8* %54, align 1, !dbg !319
  %55 = load i8*, i8** %10, align 8, !dbg !320
  %56 = call signext i8 @StrUtil_EndsWith(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)), !dbg !322
  %57 = icmp ne i8 %56, 0, !dbg !322
  br i1 %57, label %58, label %59, !dbg !323

; <label>:58:                                     ; preds = %53
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8** %14, align 8, !dbg !324
  br label %66, !dbg !326

; <label>:59:                                     ; preds = %53
  %60 = load i8*, i8** %10, align 8, !dbg !327
  %61 = call signext i8 @StrUtil_EndsWith(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0)), !dbg !330
  %62 = icmp ne i8 %61, 0, !dbg !330
  br i1 %62, label %63, label %64, !dbg !330

; <label>:63:                                     ; preds = %59
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8** %14, align 8, !dbg !331
  br label %65, !dbg !333

; <label>:64:                                     ; preds = %59
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8** %14, align 8, !dbg !334
  br label %65

; <label>:65:                                     ; preds = %64, %63
  br label %66

; <label>:66:                                     ; preds = %65, %58
  %67 = call i64 @time(i64* %16) #10, !dbg !336
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0, !dbg !337
  %69 = call %struct.tm* @localtime(i64* %16) #10, !dbg !338
  %70 = call i64 @strftime(i8* %68, i64 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), %struct.tm* %69) #10, !dbg !339
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !341
  %72 = load i32, i32* %13, align 4, !dbg !342
  %73 = add nsw i32 %72, 1, !dbg !342
  store i32 %73, i32* %13, align 4, !dbg !342
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0, !dbg !343
  %75 = load i8*, i8** %14, align 8, !dbg !344
  %76 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %71, i64 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i32 %72, i8* %74, i8* %75), !dbg !345
  %77 = load i8*, i8** %9, align 8, !dbg !346
  %78 = getelementptr inbounds i8, i8* %77, i32 1, !dbg !346
  store i8* %78, i8** %9, align 8, !dbg !346
  %79 = load i8*, i8** %9, align 8, !dbg !347
  %80 = call i8* @strstr(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !348
  store i8* %80, i8** %11, align 8, !dbg !349
  %81 = load i8*, i8** %11, align 8, !dbg !350
  %82 = icmp ne i8* %81, null, !dbg !350
  br i1 %82, label %84, label %83, !dbg !352

; <label>:83:                                     ; preds = %66
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0)), !dbg !353
  br label %106, !dbg !355

; <label>:84:                                     ; preds = %66
  %85 = load i8*, i8** %11, align 8, !dbg !356
  %86 = getelementptr inbounds i8, i8* %85, i64 7, !dbg !358
  %87 = getelementptr inbounds i8, i8* %86, i64 -1, !dbg !359
  store i8* %87, i8** %11, align 8, !dbg !360
  %88 = load i8*, i8** %11, align 8, !dbg !361
  %89 = call i64 @strtol(i8* %88, i8** null, i32 0) #10, !dbg !362
  %90 = trunc i64 %89 to i32, !dbg !362
  store i32 %90, i32* %12, align 4, !dbg !363
  %91 = load i32, i32* %12, align 4, !dbg !364
  %92 = icmp ne i32 %91, 1, !dbg !366
  br i1 %92, label %93, label %95, !dbg !367

; <label>:93:                                     ; preds = %84
  %94 = load i32, i32* %12, align 4, !dbg !368
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.32, i32 0, i32 0), i32 %94, i32 1), !dbg !370
  br label %105, !dbg !371

; <label>:95:                                     ; preds = %84
  %96 = load i8*, i8** %10, align 8, !dbg !372
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !374
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i8* %96, i8* %97), !dbg !375
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !376
  %100 = call %struct._IO_FILE* @fopen64(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0)), !dbg !378
  store %struct._IO_FILE* %100, %struct._IO_FILE** %4, align 8, !dbg !379
  %101 = icmp ne %struct._IO_FILE* %100, null, !dbg !379
  br i1 %101, label %104, label %102, !dbg !380

; <label>:102:                                    ; preds = %95
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !381
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), i8* %103), !dbg !383
  br label %104, !dbg !384

; <label>:104:                                    ; preds = %102, %95
  br label %105

; <label>:105:                                    ; preds = %104, %93
  br label %106

; <label>:106:                                    ; preds = %105, %83
  br label %140, !dbg !385

; <label>:107:                                    ; preds = %37
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !386
  %109 = call i8* @strstr(i8* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !389
  %110 = icmp ne i8* %109, null, !dbg !389
  br i1 %110, label %111, label %114, !dbg !389

; <label>:111:                                    ; preds = %107
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !390
  %113 = call i32 @fclose(%struct._IO_FILE* %112), !dbg !392
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8, !dbg !393
  br label %139, !dbg !394

; <label>:114:                                    ; preds = %107
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !395
  %116 = icmp ne %struct._IO_FILE* %115, null, !dbg !395
  br i1 %116, label %117, label %138, !dbg !398

; <label>:117:                                    ; preds = %114
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !399
  %119 = call i8* @strstr(i8* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #8, !dbg !401
  store i8* %119, i8** %9, align 8, !dbg !402
  %120 = load i8*, i8** %9, align 8, !dbg !403
  %121 = getelementptr inbounds i8, i8* %120, i64 8, !dbg !403
  store i8* %121, i8** %9, align 8, !dbg !403
  %122 = load i8*, i8** %9, align 8, !dbg !404
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !406
  %124 = call signext i8 @Base64_Decode(i8* %122, i8* %123, i64 256, i64* %7), !dbg !407
  %125 = icmp ne i8 %124, 0, !dbg !407
  br i1 %125, label %126, label %135, !dbg !408

; <label>:126:                                    ; preds = %117
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !409
  %128 = load i64, i64* %7, align 8, !dbg !412
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !413
  %130 = call i64 @fwrite(i8* %127, i64 1, i64 %128, %struct._IO_FILE* %129), !dbg !414
  %131 = load i64, i64* %7, align 8, !dbg !415
  %132 = icmp ne i64 %130, %131, !dbg !416
  br i1 %132, label %133, label %134, !dbg !417

; <label>:133:                                    ; preds = %126
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0)), !dbg !418
  br label %134, !dbg !420

; <label>:134:                                    ; preds = %133, %126
  br label %137, !dbg !421

; <label>:135:                                    ; preds = %117
  %136 = load i8*, i8** %9, align 8, !dbg !422
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0), i8* %136), !dbg !424
  br label %137

; <label>:137:                                    ; preds = %135, %134
  br label %138, !dbg !425

; <label>:138:                                    ; preds = %137, %114
  br label %139

; <label>:139:                                    ; preds = %138, %111
  br label %140

; <label>:140:                                    ; preds = %139, %106
  br label %141, !dbg !426

; <label>:141:                                    ; preds = %140, %33
  br label %28, !dbg !427, !llvm.loop !429

; <label>:142:                                    ; preds = %50, %28
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !430
  %144 = call i32 @fclose(%struct._IO_FILE* %143), !dbg !431
  ret void, !dbg !432
}

declare signext i8 @StrUtil_StrToInt(i32*, i8*) #3

declare signext i8 @RpcOut_sendOne(i8**, i64*, i8*, ...) #3

declare void @Warning(i8*, ...) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare %struct._IO_FILE* @fopen64(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare void @RpcVMX_Log(i8*, ...) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

declare signext i8 @Base64_Encode(i8*, i64, i8*, i64, i64*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #7

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare signext i8 @StrUtil_EndsWith(i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #7

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #7

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #7

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #7

declare i32 @printf(i8*, ...) #3

declare signext i8 @Base64_Decode(i8*, i8*, i64, i64*) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "xferlogs.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1655")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !7, line: 59, type: !8, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!7 = !DIFile(filename: "xferlogs.c", directory: "/home/lichi/Desktop/open-vm-tools/line1655")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, align: 8, elements: !11)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !{!12}
!12 = !DISubrange(count: 20)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!16 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 283, type: !17, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19, !20}
!19 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!22 = !DILocalVariable(name: "argc", arg: 1, scope: !16, file: !7, line: 283, type: !19)
!23 = !DIExpression()
!24 = !DILocation(line: 283, column: 10, scope: !16)
!25 = !DILocalVariable(name: "argv", arg: 2, scope: !16, file: !7, line: 284, type: !20)
!26 = !DILocation(line: 284, column: 12, scope: !16)
!27 = !DILocalVariable(name: "status", scope: !16, file: !7, line: 286, type: !19)
!28 = !DILocation(line: 286, column: 8, scope: !16)
!29 = !DILocation(line: 288, column: 8, scope: !30)
!30 = distinct !DILexicalBlock(scope: !16, file: !7, line: 288, column: 8)
!31 = !DILocation(line: 288, column: 13, scope: !30)
!32 = !DILocation(line: 288, column: 18, scope: !30)
!33 = !DILocation(line: 289, column: 18, scope: !30)
!34 = !DILocation(line: 289, column: 10, scope: !30)
!35 = !DILocation(line: 289, column: 36, scope: !30)
!36 = !DILocation(line: 290, column: 18, scope: !30)
!37 = !DILocation(line: 290, column: 10, scope: !30)
!38 = !DILocation(line: 288, column: 8, scope: !39)
!39 = !DILexicalBlockFile(scope: !16, file: !7, discriminator: 1)
!40 = !DILocation(line: 291, column: 7, scope: !41)
!41 = distinct !DILexicalBlock(scope: !30, file: !7, line: 290, column: 42)
!42 = !DILocation(line: 292, column: 7, scope: !41)
!43 = !DILocation(line: 295, column: 8, scope: !44)
!44 = distinct !DILexicalBlock(scope: !16, file: !7, line: 295, column: 8)
!45 = !DILocation(line: 295, column: 13, scope: !44)
!46 = !DILocation(line: 295, column: 8, scope: !16)
!47 = !DILocation(line: 296, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !7, line: 295, column: 19)
!49 = !DILocation(line: 297, column: 7, scope: !48)
!50 = !DILocation(line: 300, column: 17, scope: !51)
!51 = distinct !DILexicalBlock(scope: !16, file: !7, line: 300, column: 8)
!52 = !DILocation(line: 300, column: 9, scope: !51)
!53 = !DILocation(line: 300, column: 8, scope: !16)
!54 = !DILocation(line: 301, column: 16, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !7, line: 300, column: 37)
!56 = !DILocation(line: 301, column: 7, scope: !55)
!57 = !DILocation(line: 302, column: 4, scope: !55)
!58 = !DILocation(line: 302, column: 24, scope: !59)
!59 = !DILexicalBlockFile(scope: !60, file: !7, discriminator: 1)
!60 = distinct !DILexicalBlock(scope: !51, file: !7, line: 302, column: 15)
!61 = !DILocation(line: 302, column: 16, scope: !59)
!62 = !DILocation(line: 302, column: 15, scope: !59)
!63 = !DILocation(line: 303, column: 19, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !7, line: 302, column: 44)
!65 = !DILocation(line: 303, column: 7, scope: !64)
!66 = !DILocation(line: 304, column: 4, scope: !64)
!67 = !DILocation(line: 304, column: 24, scope: !68)
!68 = !DILexicalBlockFile(scope: !69, file: !7, discriminator: 1)
!69 = distinct !DILexicalBlock(scope: !60, file: !7, line: 304, column: 15)
!70 = !DILocation(line: 304, column: 16, scope: !68)
!71 = !DILocation(line: 304, column: 15, scope: !68)
!72 = !DILocation(line: 305, column: 37, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !7, line: 305, column: 11)
!74 = distinct !DILexicalBlock(scope: !69, file: !7, line: 304, column: 44)
!75 = !DILocation(line: 305, column: 11, scope: !73)
!76 = !DILocation(line: 305, column: 11, scope: !74)
!77 = !DILocation(line: 306, column: 68, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !7, line: 305, column: 47)
!79 = !DILocation(line: 306, column: 10, scope: !78)
!80 = !DILocation(line: 307, column: 7, scope: !78)
!81 = !DILocation(line: 308, column: 10, scope: !82)
!82 = distinct !DILexicalBlock(scope: !73, file: !7, line: 307, column: 14)
!83 = !DILocation(line: 310, column: 4, scope: !74)
!84 = !DILocation(line: 311, column: 7, scope: !85)
!85 = distinct !DILexicalBlock(scope: !69, file: !7, line: 310, column: 11)
!86 = !DILocation(line: 312, column: 7, scope: !85)
!87 = !DILocation(line: 314, column: 4, scope: !16)
!88 = !DILocation(line: 315, column: 1, scope: !16)
!89 = distinct !DISubprogram(name: "usage", scope: !7, file: !7, line: 272, type: !90, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!90 = !DISubroutineType(types: !91)
!91 = !{null}
!92 = !DILocation(line: 274, column: 4, scope: !89)
!93 = !DILocation(line: 275, column: 4, scope: !89)
!94 = !DILocation(line: 276, column: 4, scope: !89)
!95 = !DILocation(line: 277, column: 4, scope: !89)
!96 = !DILocation(line: 278, column: 4, scope: !89)
!97 = !DILocation(line: 279, column: 1, scope: !89)
!98 = distinct !DISubprogram(name: "xmitFile", scope: !7, file: !7, line: 103, type: !99, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !21}
!101 = !DILocalVariable(name: "filename", arg: 1, scope: !98, file: !7, line: 103, type: !21)
!102 = !DILocation(line: 103, column: 16, scope: !98)
!103 = !DILocalVariable(name: "fp", scope: !98, file: !7, line: 105, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !106, line: 48, baseType: !107)
!106 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1655")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !108, line: 241, size: 1728, align: 64, elements: !109)
!108 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1655")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !130, !131, !132, !133, !137, !139, !141, !145, !148, !150, !151, !152, !153, !154, !158, !159}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !107, file: !108, line: 242, baseType: !19, size: 32, align: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !107, file: !108, line: 247, baseType: !21, size: 64, align: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !107, file: !108, line: 248, baseType: !21, size: 64, align: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !107, file: !108, line: 249, baseType: !21, size: 64, align: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !107, file: !108, line: 250, baseType: !21, size: 64, align: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !107, file: !108, line: 251, baseType: !21, size: 64, align: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !107, file: !108, line: 252, baseType: !21, size: 64, align: 64, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !107, file: !108, line: 253, baseType: !21, size: 64, align: 64, offset: 448)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !107, file: !108, line: 254, baseType: !21, size: 64, align: 64, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !107, file: !108, line: 256, baseType: !21, size: 64, align: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !107, file: !108, line: 257, baseType: !21, size: 64, align: 64, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !107, file: !108, line: 258, baseType: !21, size: 64, align: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !107, file: !108, line: 260, baseType: !123, size: 64, align: 64, offset: 768)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !108, line: 156, size: 192, align: 64, elements: !125)
!125 = !{!126, !127, !129}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !124, file: !108, line: 157, baseType: !123, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !124, file: !108, line: 158, baseType: !128, size: 64, align: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !124, file: !108, line: 162, baseType: !19, size: 32, align: 32, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !107, file: !108, line: 262, baseType: !128, size: 64, align: 64, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !107, file: !108, line: 264, baseType: !19, size: 32, align: 32, offset: 896)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !107, file: !108, line: 268, baseType: !19, size: 32, align: 32, offset: 928)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !107, file: !108, line: 270, baseType: !134, size: 64, align: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !135, line: 131, baseType: !136)
!135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1655")
!136 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !107, file: !108, line: 274, baseType: !138, size: 16, align: 16, offset: 1024)
!138 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !107, file: !108, line: 275, baseType: !140, size: 8, align: 8, offset: 1040)
!140 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !107, file: !108, line: 276, baseType: !142, size: 8, align: 8, offset: 1048)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, align: 8, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 1)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !107, file: !108, line: 280, baseType: !146, size: 64, align: 64, offset: 1088)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !108, line: 150, baseType: null)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !107, file: !108, line: 289, baseType: !149, size: 64, align: 64, offset: 1152)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !135, line: 132, baseType: !136)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !107, file: !108, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !107, file: !108, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !107, file: !108, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !107, file: !108, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !107, file: !108, line: 302, baseType: !155, size: 64, align: 64, offset: 1472)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 216, baseType: !157)
!156 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1655")
!157 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !107, file: !108, line: 303, baseType: !19, size: 32, align: 32, offset: 1536)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !107, file: !108, line: 305, baseType: !160, size: 160, align: 8, offset: 1568)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, align: 8, elements: !11)
!161 = !DILocation(line: 105, column: 10, scope: !98)
!162 = !DILocalVariable(name: "readLen", scope: !98, file: !7, line: 106, type: !155)
!163 = !DILocation(line: 106, column: 11, scope: !98)
!164 = !DILocalVariable(name: "buf", scope: !98, file: !7, line: 107, type: !165)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 456, align: 8, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 57)
!168 = !DILocation(line: 107, column: 9, scope: !98)
!169 = !DILocalVariable(name: "base64B", scope: !98, file: !7, line: 113, type: !170)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 912, align: 8, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 114)
!173 = !DILocation(line: 113, column: 9, scope: !98)
!174 = !DILocalVariable(name: "base64Buf", scope: !98, file: !7, line: 114, type: !21)
!175 = !DILocation(line: 114, column: 10, scope: !98)
!176 = !DILocation(line: 114, column: 22, scope: !98)
!177 = !DILocation(line: 114, column: 30, scope: !98)
!178 = !DILocation(line: 116, column: 21, scope: !179)
!179 = distinct !DILexicalBlock(scope: !98, file: !7, line: 116, column: 8)
!180 = !DILocation(line: 116, column: 15, scope: !179)
!181 = !DILocation(line: 116, column: 13, scope: !179)
!182 = !DILocation(line: 116, column: 8, scope: !98)
!183 = !DILocation(line: 117, column: 57, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !7, line: 116, column: 39)
!185 = !DILocation(line: 117, column: 68, scope: !184)
!186 = !DILocation(line: 117, column: 67, scope: !184)
!187 = !DILocation(line: 117, column: 7, scope: !188)
!188 = !DILexicalBlockFile(scope: !184, file: !7, discriminator: 1)
!189 = !DILocation(line: 118, column: 7, scope: !184)
!190 = !DILocation(line: 122, column: 55, scope: !98)
!191 = !DILocation(line: 122, column: 4, scope: !98)
!192 = !DILocation(line: 123, column: 4, scope: !98)
!193 = !DILocation(line: 123, column: 28, scope: !194)
!194 = !DILexicalBlockFile(scope: !98, file: !7, discriminator: 1)
!195 = !DILocation(line: 123, column: 48, scope: !194)
!196 = !DILocation(line: 123, column: 22, scope: !194)
!197 = !DILocation(line: 123, column: 20, scope: !194)
!198 = !DILocation(line: 123, column: 53, scope: !194)
!199 = !DILocation(line: 123, column: 4, scope: !194)
!200 = !DILocation(line: 124, column: 25, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !7, line: 124, column: 11)
!202 = distinct !DILexicalBlock(scope: !98, file: !7, line: 123, column: 59)
!203 = !DILocation(line: 124, column: 30, scope: !201)
!204 = !DILocation(line: 124, column: 39, scope: !201)
!205 = !DILocation(line: 124, column: 11, scope: !201)
!206 = !DILocation(line: 124, column: 11, scope: !202)
!207 = !DILocation(line: 125, column: 27, scope: !208)
!208 = distinct !DILexicalBlock(scope: !201, file: !7, line: 124, column: 76)
!209 = !DILocation(line: 125, column: 10, scope: !208)
!210 = !DILocation(line: 126, column: 7, scope: !208)
!211 = !DILocation(line: 127, column: 10, scope: !212)
!212 = distinct !DILexicalBlock(scope: !201, file: !7, line: 126, column: 14)
!213 = !DILocation(line: 128, column: 10, scope: !212)
!214 = !DILocation(line: 123, column: 4, scope: !215)
!215 = !DILexicalBlockFile(scope: !98, file: !7, discriminator: 2)
!216 = distinct !{!216, !192}
!217 = !DILocation(line: 123, column: 4, scope: !218)
!218 = !DILexicalBlockFile(scope: !98, file: !7, discriminator: 3)
!219 = !DILocation(line: 132, column: 4, scope: !98)
!220 = !DILocation(line: 133, column: 11, scope: !98)
!221 = !DILocation(line: 133, column: 4, scope: !98)
!222 = !DILocation(line: 134, column: 1, scope: !98)
!223 = distinct !DISubprogram(name: "extractFile", scope: !7, file: !7, line: 156, type: !99, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!224 = !DILocalVariable(name: "filename", arg: 1, scope: !223, file: !7, line: 156, type: !21)
!225 = !DILocation(line: 156, column: 19, scope: !223)
!226 = !DILocalVariable(name: "fp", scope: !223, file: !7, line: 158, type: !104)
!227 = !DILocation(line: 158, column: 10, scope: !223)
!228 = !DILocalVariable(name: "outfp", scope: !223, file: !7, line: 159, type: !104)
!229 = !DILocation(line: 159, column: 10, scope: !223)
!230 = !DILocalVariable(name: "buf", scope: !223, file: !7, line: 160, type: !231)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, align: 8, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 256)
!234 = !DILocation(line: 160, column: 9, scope: !223)
!235 = !DILocalVariable(name: "base64Out", scope: !223, file: !7, line: 161, type: !236)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 2048, align: 8, elements: !232)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !238, line: 177, baseType: !239)
!238 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1655")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !240, line: 48, baseType: !241)
!240 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1655")
!241 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!242 = !DILocation(line: 161, column: 10, scope: !223)
!243 = !DILocalVariable(name: "lenOut", scope: !223, file: !7, line: 162, type: !155)
!244 = !DILocation(line: 162, column: 11, scope: !223)
!245 = !DILocalVariable(name: "fname", scope: !223, file: !7, line: 163, type: !231)
!246 = !DILocation(line: 163, column: 9, scope: !223)
!247 = !DILocalVariable(name: "ptrStr", scope: !223, file: !7, line: 164, type: !21)
!248 = !DILocation(line: 164, column: 10, scope: !223)
!249 = !DILocalVariable(name: "logInpFilename", scope: !223, file: !7, line: 164, type: !21)
!250 = !DILocation(line: 164, column: 19, scope: !223)
!251 = !DILocalVariable(name: "ver", scope: !223, file: !7, line: 164, type: !21)
!252 = !DILocation(line: 164, column: 36, scope: !223)
!253 = !DILocalVariable(name: "version", scope: !223, file: !7, line: 165, type: !19)
!254 = !DILocation(line: 165, column: 8, scope: !223)
!255 = !DILocalVariable(name: "filenu", scope: !223, file: !7, line: 166, type: !19)
!256 = !DILocation(line: 166, column: 8, scope: !223)
!257 = !DILocation(line: 170, column: 21, scope: !258)
!258 = distinct !DILexicalBlock(scope: !223, file: !7, line: 170, column: 8)
!259 = !DILocation(line: 170, column: 15, scope: !258)
!260 = !DILocation(line: 170, column: 13, scope: !258)
!261 = !DILocation(line: 170, column: 8, scope: !223)
!262 = !DILocation(line: 172, column: 15, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !7, line: 170, column: 39)
!264 = !DILocation(line: 172, column: 26, scope: !263)
!265 = !DILocation(line: 172, column: 25, scope: !263)
!266 = !DILocation(line: 172, column: 42, scope: !267)
!267 = !DILexicalBlockFile(scope: !263, file: !7, discriminator: 1)
!268 = !DILocation(line: 172, column: 41, scope: !263)
!269 = !DILocation(line: 172, column: 31, scope: !270)
!270 = !DILexicalBlockFile(scope: !263, file: !7, discriminator: 2)
!271 = !DILocation(line: 171, column: 7, scope: !263)
!272 = !DILocation(line: 173, column: 7, scope: !263)
!273 = !DILocation(line: 176, column: 4, scope: !223)
!274 = !DILocation(line: 176, column: 17, scope: !275)
!275 = !DILexicalBlockFile(scope: !223, file: !7, discriminator: 1)
!276 = !DILocation(line: 176, column: 34, scope: !275)
!277 = !DILocation(line: 176, column: 11, scope: !275)
!278 = !DILocation(line: 176, column: 4, scope: !275)
!279 = !DILocation(line: 181, column: 18, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !7, line: 181, column: 11)
!281 = distinct !DILexicalBlock(scope: !223, file: !7, line: 176, column: 39)
!282 = !DILocation(line: 181, column: 11, scope: !280)
!283 = !DILocation(line: 181, column: 11, scope: !281)
!284 = !DILocation(line: 182, column: 21, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !7, line: 182, column: 14)
!286 = distinct !DILexicalBlock(scope: !280, file: !7, line: 181, column: 36)
!287 = !DILocation(line: 182, column: 14, scope: !285)
!288 = !DILocation(line: 182, column: 14, scope: !286)
!289 = !DILocalVariable(name: "ext", scope: !290, file: !7, line: 183, type: !291)
!290 = distinct !DILexicalBlock(scope: !285, file: !7, line: 182, column: 47)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!292 = !DILocation(line: 183, column: 25, scope: !290)
!293 = !DILocalVariable(name: "tstamp", scope: !290, file: !7, line: 184, type: !294)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, align: 8, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 32)
!297 = !DILocation(line: 184, column: 18, scope: !290)
!298 = !DILocalVariable(name: "now", scope: !290, file: !7, line: 185, type: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !300, line: 75, baseType: !301)
!300 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1655")
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !135, line: 139, baseType: !136)
!302 = !DILocation(line: 185, column: 20, scope: !290)
!303 = !DILocation(line: 195, column: 37, scope: !290)
!304 = !DILocation(line: 195, column: 30, scope: !290)
!305 = !DILocation(line: 195, column: 28, scope: !290)
!306 = !DILocation(line: 196, column: 28, scope: !290)
!307 = !DILocation(line: 197, column: 29, scope: !290)
!308 = !DILocation(line: 197, column: 22, scope: !290)
!309 = !DILocation(line: 197, column: 20, scope: !290)
!310 = !DILocation(line: 198, column: 17, scope: !311)
!311 = distinct !DILexicalBlock(scope: !290, file: !7, line: 198, column: 17)
!312 = !DILocation(line: 198, column: 24, scope: !311)
!313 = !DILocation(line: 198, column: 17, scope: !290)
!314 = !DILocation(line: 199, column: 23, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !7, line: 198, column: 32)
!316 = !DILocation(line: 199, column: 16, scope: !315)
!317 = !DILocation(line: 200, column: 16, scope: !315)
!318 = !DILocation(line: 202, column: 14, scope: !290)
!319 = !DILocation(line: 202, column: 21, scope: !290)
!320 = !DILocation(line: 210, column: 34, scope: !321)
!321 = distinct !DILexicalBlock(scope: !290, file: !7, line: 210, column: 17)
!322 = !DILocation(line: 210, column: 17, scope: !321)
!323 = !DILocation(line: 210, column: 17, scope: !290)
!324 = !DILocation(line: 211, column: 20, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !7, line: 210, column: 59)
!326 = !DILocation(line: 212, column: 13, scope: !325)
!327 = !DILocation(line: 212, column: 41, scope: !328)
!328 = !DILexicalBlockFile(scope: !329, file: !7, discriminator: 1)
!329 = distinct !DILexicalBlock(scope: !321, file: !7, line: 212, column: 24)
!330 = !DILocation(line: 212, column: 24, scope: !328)
!331 = !DILocation(line: 213, column: 20, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !7, line: 212, column: 69)
!333 = !DILocation(line: 214, column: 13, scope: !332)
!334 = !DILocation(line: 216, column: 20, scope: !335)
!335 = distinct !DILexicalBlock(scope: !329, file: !7, line: 214, column: 20)
!336 = !DILocation(line: 219, column: 13, scope: !290)
!337 = !DILocation(line: 220, column: 22, scope: !290)
!338 = !DILocation(line: 220, column: 63, scope: !290)
!339 = !DILocation(line: 220, column: 13, scope: !340)
!340 = !DILexicalBlockFile(scope: !290, file: !7, discriminator: 1)
!341 = !DILocation(line: 221, column: 25, scope: !290)
!342 = !DILocation(line: 222, column: 31, scope: !290)
!343 = !DILocation(line: 222, column: 35, scope: !290)
!344 = !DILocation(line: 222, column: 43, scope: !290)
!345 = !DILocation(line: 221, column: 13, scope: !290)
!346 = !DILocation(line: 229, column: 19, scope: !290)
!347 = !DILocation(line: 230, column: 26, scope: !290)
!348 = !DILocation(line: 230, column: 19, scope: !290)
!349 = !DILocation(line: 230, column: 17, scope: !290)
!350 = !DILocation(line: 231, column: 18, scope: !351)
!351 = distinct !DILexicalBlock(scope: !290, file: !7, line: 231, column: 17)
!352 = !DILocation(line: 231, column: 17, scope: !290)
!353 = !DILocation(line: 232, column: 16, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !7, line: 231, column: 23)
!355 = !DILocation(line: 233, column: 13, scope: !354)
!356 = !DILocation(line: 234, column: 22, scope: !357)
!357 = distinct !DILexicalBlock(scope: !351, file: !7, line: 233, column: 20)
!358 = !DILocation(line: 234, column: 26, scope: !357)
!359 = !DILocation(line: 234, column: 44, scope: !357)
!360 = !DILocation(line: 234, column: 20, scope: !357)
!361 = !DILocation(line: 235, column: 33, scope: !357)
!362 = !DILocation(line: 235, column: 26, scope: !357)
!363 = !DILocation(line: 235, column: 24, scope: !357)
!364 = !DILocation(line: 236, column: 20, scope: !365)
!365 = distinct !DILexicalBlock(scope: !357, file: !7, line: 236, column: 20)
!366 = !DILocation(line: 236, column: 28, scope: !365)
!367 = !DILocation(line: 236, column: 20, scope: !357)
!368 = !DILocation(line: 238, column: 55, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !7, line: 236, column: 34)
!370 = !DILocation(line: 237, column: 19, scope: !369)
!371 = !DILocation(line: 239, column: 16, scope: !369)
!372 = !DILocation(line: 240, column: 54, scope: !373)
!373 = distinct !DILexicalBlock(scope: !365, file: !7, line: 239, column: 23)
!374 = !DILocation(line: 240, column: 70, scope: !373)
!375 = !DILocation(line: 240, column: 19, scope: !373)
!376 = !DILocation(line: 241, column: 39, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !7, line: 241, column: 23)
!378 = !DILocation(line: 241, column: 33, scope: !377)
!379 = !DILocation(line: 241, column: 31, scope: !377)
!380 = !DILocation(line: 241, column: 23, scope: !373)
!381 = !DILocation(line: 242, column: 57, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !7, line: 241, column: 54)
!383 = !DILocation(line: 242, column: 22, scope: !382)
!384 = !DILocation(line: 243, column: 19, scope: !382)
!385 = !DILocation(line: 246, column: 10, scope: !290)
!386 = !DILocation(line: 246, column: 28, scope: !387)
!387 = !DILexicalBlockFile(scope: !388, file: !7, discriminator: 1)
!388 = distinct !DILexicalBlock(scope: !285, file: !7, line: 246, column: 21)
!389 = !DILocation(line: 246, column: 21, scope: !387)
!390 = !DILocation(line: 249, column: 20, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !7, line: 246, column: 52)
!392 = !DILocation(line: 249, column: 13, scope: !391)
!393 = !DILocation(line: 250, column: 19, scope: !391)
!394 = !DILocation(line: 251, column: 10, scope: !391)
!395 = !DILocation(line: 253, column: 17, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !7, line: 253, column: 17)
!397 = distinct !DILexicalBlock(scope: !388, file: !7, line: 251, column: 17)
!398 = !DILocation(line: 253, column: 17, scope: !397)
!399 = !DILocation(line: 254, column: 32, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !7, line: 253, column: 24)
!401 = !DILocation(line: 254, column: 25, scope: !400)
!402 = !DILocation(line: 254, column: 23, scope: !400)
!403 = !DILocation(line: 255, column: 23, scope: !400)
!404 = !DILocation(line: 256, column: 34, scope: !405)
!405 = distinct !DILexicalBlock(scope: !400, file: !7, line: 256, column: 20)
!406 = !DILocation(line: 256, column: 42, scope: !405)
!407 = !DILocation(line: 256, column: 20, scope: !405)
!408 = !DILocation(line: 256, column: 20, scope: !400)
!409 = !DILocation(line: 257, column: 30, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !7, line: 257, column: 23)
!411 = distinct !DILexicalBlock(scope: !405, file: !7, line: 256, column: 68)
!412 = !DILocation(line: 257, column: 44, scope: !410)
!413 = !DILocation(line: 257, column: 52, scope: !410)
!414 = !DILocation(line: 257, column: 23, scope: !410)
!415 = !DILocation(line: 257, column: 62, scope: !410)
!416 = !DILocation(line: 257, column: 59, scope: !410)
!417 = !DILocation(line: 257, column: 23, scope: !411)
!418 = !DILocation(line: 258, column: 22, scope: !419)
!419 = distinct !DILexicalBlock(scope: !410, file: !7, line: 257, column: 70)
!420 = !DILocation(line: 259, column: 19, scope: !419)
!421 = !DILocation(line: 260, column: 16, scope: !411)
!422 = !DILocation(line: 261, column: 57, scope: !423)
!423 = distinct !DILexicalBlock(scope: !405, file: !7, line: 260, column: 23)
!424 = !DILocation(line: 261, column: 19, scope: !423)
!425 = !DILocation(line: 263, column: 13, scope: !400)
!426 = !DILocation(line: 265, column: 7, scope: !286)
!427 = !DILocation(line: 176, column: 4, scope: !428)
!428 = !DILexicalBlockFile(scope: !223, file: !7, discriminator: 2)
!429 = distinct !{!429, !273}
!430 = !DILocation(line: 267, column: 11, scope: !223)
!431 = !DILocation(line: 267, column: 4, scope: !223)
!432 = !DILocation(line: 268, column: 1, scope: !223)
