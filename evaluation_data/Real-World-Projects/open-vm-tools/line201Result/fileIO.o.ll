; ModuleID = './fileIO.o.i'
source_filename = "./fileIO.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FileIODescriptor = type { i32, i32, i8*, %struct.FileLockToken* }
%struct.FileLockToken = type opaque
%struct.MsgList = type { %struct.MsgList*, i8*, i8*, %struct.MsgFmt_Arg*, i32 }
%struct.MsgFmt_Arg = type { i32, i32, %union.anon, %struct.anon, %union.anon.0 }
%union.anon = type { i64 }
%struct.anon = type { i32, i32 }
%union.anon.0 = type { i8* }
%struct.iovec = type { i8*, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"@&!*@*@(msg.fileio.success)Success\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"@&!*@*@(msg.fileio.cancel)The operation was cancelled by the user\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"@&!*@*@(msg.fileio.generic)Error\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"@&!*@*@(msg.fileio.exists)The file already exists\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"@&!*@*@(msg.fileio.lock)Failed to lock the file\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"@&!*@*@(msg.fileio.eof)Tried to read beyond the end of the file\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"@&!*@*@(msg.fileio.notfound)Could not find the file\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"@&!*@*@(msg.fileio.noPerm)Insufficient permission to access the file\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"@&!*@*@(msg.fileio.namelong)The file name is too long\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"@&!*@*@(msg.fileio.fBig)The file is too large\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"@&!*@*@(msg.fileio.noSpc)There is no space left on the device\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"@&!*@*@(msg.fileio.dQuot)There is no space left on the device\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"fileIO.c\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"%s: bad code %d\0A\00", align 1
@__FUNCTION__.FileIO_MsgError = private unnamed_addr constant [16 x i8] c"FileIO_MsgError\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"@&!*@*@(msg.fileio.unknown)Unknown error\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"FILE: %s on '%s' failed: %s\0A\00", align 1
@__FUNCTION__.FileIO_Lock = private unnamed_addr constant [12 x i8] c"FileIO_Lock\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Lock timed out\00", align 1
@__FUNCTION__.FileIO_Unlock = private unnamed_addr constant [14 x i8] c"FileIO_Unlock\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"%s: File_FullPath of '%s' failed.\0A\00", align 1
@__FUNCTION__.FileIO_AtomicTempPath = private unnamed_addr constant [22 x i8] c"FileIO_AtomicTempPath\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"%s: Failed to fstat '%s', errno: %d.\0A\00", align 1
@__FUNCTION__.FileIO_AtomicTempFile = private unnamed_addr constant [22 x i8] c"FileIO_AtomicTempFile\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"%s: Failed to unlink temporary file, errno: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"%s: Failed to create temporary file, %s (%d). errno: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"%s: Failed to chmod temporary file, errno: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"%s: Failed to chown temporary file, errno: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"%s: Failed to clean up temporary file, errno: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"%s: rename of '%s' to '%s' failed %d.\0A\00", align 1
@__FUNCTION__.FileIO_AtomicUpdateEx = private unnamed_addr constant [22 x i8] c"FileIO_AtomicUpdateEx\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"@&!*@*@X\00", align 1

; Function Attrs: nounwind uwtable
define i8* @FileIO_ErrorEnglish(i32) #0 !dbg !33 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !41, metadata !42), !dbg !43
  %3 = load i32, i32* %2, align 4, !dbg !44
  %4 = call i8* @FileIO_MsgError(i32 %3), !dbg !45
  %5 = call i8* @Msg_StripMSGID(i8* %4), !dbg !46
  ret i8* %5, !dbg !48
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Msg_StripMSGID(i8*) #2 !dbg !49 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !53, metadata !42), !dbg !54
  call void @llvm.dbg.declare(metadata i8** %4, metadata !55, metadata !42), !dbg !56
  %5 = load i8*, i8** %3, align 8, !dbg !57
  store i8* %5, i8** %4, align 8, !dbg !56
  %6 = load i8*, i8** %4, align 8, !dbg !58
  %7 = icmp ne i8* %6, null, !dbg !60
  br i1 %7, label %8, label %26, !dbg !61

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %4, align 8, !dbg !62
  %10 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i64 7) #8, !dbg !64
  %11 = icmp eq i32 %10, 0, !dbg !65
  br i1 %11, label %12, label %26, !dbg !66

; <label>:12:                                     ; preds = %8
  %13 = load i8*, i8** %4, align 8, !dbg !67
  %14 = getelementptr inbounds i8, i8* %13, i64 7, !dbg !67
  store i8* %14, i8** %4, align 8, !dbg !67
  %15 = load i8, i8* %14, align 1, !dbg !68
  %16 = sext i8 %15 to i32, !dbg !68
  %17 = icmp eq i32 %16, 40, !dbg !69
  br i1 %17, label %18, label %26, !dbg !70

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %4, align 8, !dbg !71
  %20 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !72
  %21 = call i8* @strchr(i8* %20, i32 41) #8, !dbg !73
  store i8* %21, i8** %4, align 8, !dbg !74
  %22 = icmp ne i8* %21, null, !dbg !75
  br i1 %22, label %23, label %26, !dbg !76

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %4, align 8, !dbg !78
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !80
  store i8* %25, i8** %2, align 8, !dbg !81
  br label %28, !dbg !81

; <label>:26:                                     ; preds = %18, %12, %8, %1
  %27 = load i8*, i8** %3, align 8, !dbg !82
  store i8* %27, i8** %2, align 8, !dbg !83
  br label %28, !dbg !83

; <label>:28:                                     ; preds = %26, %23
  %29 = load i8*, i8** %2, align 8, !dbg !84
  ret i8* %29, !dbg !84
}

; Function Attrs: nounwind uwtable
define i8* @FileIO_MsgError(i32) #0 !dbg !85 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !86, metadata !42), !dbg !87
  call void @llvm.dbg.declare(metadata i8** %3, metadata !88, metadata !42), !dbg !89
  store i8* null, i8** %3, align 8, !dbg !89
  %4 = load i32, i32* %2, align 4, !dbg !90
  switch i32 %4, label %18 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %12
    i32 8, label %13
    i32 9, label %14
    i32 10, label %15
    i32 11, label %16
    i32 12, label %17
  ], !dbg !91

; <label>:5:                                      ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8** %3, align 8, !dbg !92
  br label %18, !dbg !94

; <label>:6:                                      ; preds = %1
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i8** %3, align 8, !dbg !95
  br label %18, !dbg !96

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i8** %3, align 8, !dbg !97
  br label %18, !dbg !98

; <label>:8:                                      ; preds = %1
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i8** %3, align 8, !dbg !99
  br label %18, !dbg !100

; <label>:9:                                      ; preds = %1
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8** %3, align 8, !dbg !101
  br label %18, !dbg !102

; <label>:10:                                     ; preds = %1
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0), i8** %3, align 8, !dbg !103
  br label %18, !dbg !104

; <label>:11:                                     ; preds = %1
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i32 0, i32 0), i8** %3, align 8, !dbg !105
  br label %18, !dbg !106

; <label>:12:                                     ; preds = %1
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i32 0, i32 0), i8** %3, align 8, !dbg !107
  br label %18, !dbg !108

; <label>:13:                                     ; preds = %1
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8** %3, align 8, !dbg !109
  br label %18, !dbg !110

; <label>:14:                                     ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0), i8** %3, align 8, !dbg !111
  br label %18, !dbg !112

; <label>:15:                                     ; preds = %1
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0), i8** %3, align 8, !dbg !113
  br label %18, !dbg !114

; <label>:16:                                     ; preds = %1
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i32 0, i32 0), i8** %3, align 8, !dbg !115
  br label %18, !dbg !116

; <label>:17:                                     ; preds = %1
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 163) #9, !dbg !117
  unreachable, !dbg !117

; <label>:18:                                     ; preds = %1, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %19 = load i8*, i8** %3, align 8, !dbg !118
  %20 = icmp ne i8* %19, null, !dbg !118
  br i1 %20, label %23, label %21, !dbg !120

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %2, align 4, !dbg !121
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.FileIO_MsgError, i32 0, i32 0), i32 %22), !dbg !123
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i8** %3, align 8, !dbg !124
  br label %23, !dbg !125

; <label>:23:                                     ; preds = %21, %18
  %24 = load i8*, i8** %3, align 8, !dbg !126
  ret i8* %24, !dbg !127
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #3

declare void @Warning(i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @FileIO_Init(%struct.FileIODescriptor*, i8*) #0 !dbg !128 {
  %3 = alloca %struct.FileIODescriptor*, align 8
  %4 = alloca i8*, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %3, metadata !142, metadata !42), !dbg !143
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !144, metadata !42), !dbg !145
  %5 = load i8*, i8** %4, align 8, !dbg !146
  %6 = call i8* @Unicode_Duplicate(i8* %5), !dbg !147
  %7 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %3, align 8, !dbg !148
  %8 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %7, i32 0, i32 2, !dbg !149
  store i8* %6, i8** %8, align 8, !dbg !150
  ret void, !dbg !151
}

declare i8* @Unicode_Duplicate(i8*) #4

; Function Attrs: nounwind uwtable
define void @FileIO_Cleanup(%struct.FileIODescriptor*) #0 !dbg !152 {
  %2 = alloca %struct.FileIODescriptor*, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %2, metadata !155, metadata !42), !dbg !156
  %3 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !157
  %4 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %3, i32 0, i32 2, !dbg !159
  %5 = load i8*, i8** %4, align 8, !dbg !159
  %6 = icmp ne i8* %5, null, !dbg !157
  br i1 %6, label %7, label %13, !dbg !160

; <label>:7:                                      ; preds = %1
  %8 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !161
  %9 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %8, i32 0, i32 2, !dbg !163
  %10 = load i8*, i8** %9, align 8, !dbg !163
  call void @Posix_Free(i8* %10), !dbg !164
  %11 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !165
  %12 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %11, i32 0, i32 2, !dbg !166
  store i8* null, i8** %12, align 8, !dbg !167
  br label %13, !dbg !168

; <label>:13:                                     ; preds = %7, %1
  ret void, !dbg !169
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Posix_Free(i8*) #2 !dbg !170 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !174, metadata !42), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %3, metadata !176, metadata !42), !dbg !177
  %4 = call i32* @__errno_location() #1, !dbg !178
  %5 = load i32, i32* %4, align 4, !dbg !179
  store i32 %5, i32* %3, align 4, !dbg !177
  %6 = load i8*, i8** %2, align 8, !dbg !180
  call void @free(i8* %6) #10, !dbg !181
  %7 = load i32, i32* %3, align 4, !dbg !182
  %8 = call i32* @__errno_location() #1, !dbg !183
  store i32 %7, i32* %8, align 4, !dbg !184
  ret void, !dbg !185
}

; Function Attrs: nounwind uwtable
define void @FileIOResolveLockBits(i32*) #0 !dbg !186 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !190, metadata !42), !dbg !191
  %3 = load i32*, i32** %2, align 8, !dbg !192
  %4 = load i32, i32* %3, align 4, !dbg !194
  %5 = and i32 %4, 8192, !dbg !195
  %6 = icmp ne i32 %5, 0, !dbg !196
  br i1 %6, label %7, label %14, !dbg !197

; <label>:7:                                      ; preds = %1
  %8 = load i32*, i32** %2, align 8, !dbg !198
  %9 = load i32, i32* %8, align 4, !dbg !200
  %10 = and i32 %9, -8193, !dbg !200
  store i32 %10, i32* %8, align 4, !dbg !200
  %11 = load i32*, i32** %2, align 8, !dbg !201
  %12 = load i32, i32* %11, align 4, !dbg !202
  %13 = or i32 %12, 2097152, !dbg !202
  store i32 %13, i32* %11, align 4, !dbg !202
  br label %14, !dbg !203

; <label>:14:                                     ; preds = %7, %1
  %15 = load i32*, i32** %2, align 8, !dbg !204
  %16 = load i32, i32* %15, align 4, !dbg !206
  %17 = and i32 %16, 32, !dbg !207
  %18 = icmp ne i32 %17, 0, !dbg !208
  br i1 %18, label %19, label %34, !dbg !209

; <label>:19:                                     ; preds = %14
  %20 = load i32*, i32** %2, align 8, !dbg !210
  %21 = load i32, i32* %20, align 4, !dbg !212
  %22 = and i32 %21, -33, !dbg !212
  store i32 %22, i32* %20, align 4, !dbg !212
  %23 = call signext i8 @HostType_OSIsVMK(), !dbg !213
  %24 = icmp ne i8 %23, 0, !dbg !213
  br i1 %24, label %25, label %29, !dbg !215

; <label>:25:                                     ; preds = %19
  %26 = load i32*, i32** %2, align 8, !dbg !216
  %27 = load i32, i32* %26, align 4, !dbg !218
  %28 = or i32 %27, 2097152, !dbg !218
  store i32 %28, i32* %26, align 4, !dbg !218
  br label %33, !dbg !219

; <label>:29:                                     ; preds = %19
  %30 = load i32*, i32** %2, align 8, !dbg !220
  %31 = load i32, i32* %30, align 4, !dbg !222
  %32 = or i32 %31, 1048576, !dbg !222
  store i32 %32, i32* %30, align 4, !dbg !222
  br label %33

; <label>:33:                                     ; preds = %29, %25
  br label %34, !dbg !223

; <label>:34:                                     ; preds = %33, %14
  ret void, !dbg !224
}

declare signext i8 @HostType_OSIsVMK() #4

; Function Attrs: nounwind uwtable
define i32 @FileIO_Lock(%struct.FileIODescriptor*, i32) #0 !dbg !225 {
  %3 = alloca %struct.FileIODescriptor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %3, metadata !228, metadata !42), !dbg !229
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !230, metadata !42), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %5, metadata !232, metadata !42), !dbg !233
  store i32 0, i32* %5, align 4, !dbg !233
  call void @FileIOResolveLockBits(i32* %4), !dbg !234
  %7 = load i32, i32* %4, align 4, !dbg !235
  %8 = and i32 %7, 2097152, !dbg !237
  %9 = icmp ne i32 %8, 0, !dbg !238
  br i1 %9, label %10, label %11, !dbg !239

; <label>:10:                                     ; preds = %2
  store i32 4, i32* %5, align 4, !dbg !240
  br label %52, !dbg !242

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %4, align 4, !dbg !243
  %13 = and i32 %12, 1048576, !dbg !246
  %14 = icmp ne i32 %13, 0, !dbg !247
  br i1 %14, label %15, label %51, !dbg !248

; <label>:15:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i32* %6, metadata !249, metadata !42), !dbg !251
  store i32 0, i32* %6, align 4, !dbg !251
  %16 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %3, align 8, !dbg !252
  %17 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %16, i32 0, i32 2, !dbg !253
  %18 = load i8*, i8** %17, align 8, !dbg !253
  %19 = load i32, i32* %4, align 4, !dbg !254
  %20 = and i32 %19, 2, !dbg !255
  %21 = icmp eq i32 %20, 0, !dbg !256
  %22 = zext i1 %21 to i32, !dbg !256
  %23 = trunc i32 %22 to i8, !dbg !257
  %24 = call %struct.FileLockToken* @FileLock_Lock(i8* %18, i8 signext %23, i32 3500, i32* %6, %struct.MsgList** null), !dbg !258
  %25 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %3, align 8, !dbg !259
  %26 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %25, i32 0, i32 3, !dbg !260
  store %struct.FileLockToken* %24, %struct.FileLockToken** %26, align 8, !dbg !261
  %27 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %3, align 8, !dbg !262
  %28 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %27, i32 0, i32 3, !dbg !264
  %29 = load %struct.FileLockToken*, %struct.FileLockToken** %28, align 8, !dbg !264
  %30 = icmp eq %struct.FileLockToken* %29, null, !dbg !265
  br i1 %30, label %31, label %50, !dbg !266

; <label>:31:                                     ; preds = %15
  %32 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %3, align 8, !dbg !267
  %33 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %32, i32 0, i32 2, !dbg !269
  %34 = load i8*, i8** %33, align 8, !dbg !269
  %35 = load i32, i32* %6, align 4, !dbg !270
  %36 = icmp eq i32 %35, 0, !dbg !271
  br i1 %36, label %37, label %38, !dbg !272

; <label>:37:                                     ; preds = %31
  br label %41, !dbg !273

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* %6, align 4, !dbg !275
  %40 = call i8* @Err_Errno2String(i32 %39), !dbg !277
  br label %41, !dbg !278

; <label>:41:                                     ; preds = %38, %37
  %42 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), %37 ], [ %40, %38 ], !dbg !279
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.FileIO_Lock, i32 0, i32 0), i8* %34, i8* %42), !dbg !281
  %43 = load i32, i32* %6, align 4, !dbg !282
  switch i32 %43, label %48 [
    i32 0, label %44
    i32 30, label %44
    i32 36, label %45
    i32 2, label %46
    i32 13, label %47
  ], !dbg !283

; <label>:44:                                     ; preds = %41, %41
  store i32 4, i32* %5, align 4, !dbg !284
  br label %49, !dbg !286

; <label>:45:                                     ; preds = %41
  store i32 8, i32* %5, align 4, !dbg !287
  br label %49, !dbg !288

; <label>:46:                                     ; preds = %41
  store i32 6, i32* %5, align 4, !dbg !289
  br label %49, !dbg !290

; <label>:47:                                     ; preds = %41
  store i32 7, i32* %5, align 4, !dbg !291
  br label %49, !dbg !292

; <label>:48:                                     ; preds = %41
  store i32 2, i32* %5, align 4, !dbg !293
  br label %49, !dbg !294

; <label>:49:                                     ; preds = %48, %47, %46, %45, %44
  br label %50, !dbg !295

; <label>:50:                                     ; preds = %49, %15
  br label %51, !dbg !296

; <label>:51:                                     ; preds = %50, %11
  br label %52

; <label>:52:                                     ; preds = %51, %10
  %53 = load i32, i32* %5, align 4, !dbg !297
  ret i32 %53, !dbg !298
}

declare %struct.FileLockToken* @FileLock_Lock(i8*, i8 signext, i32, i32*, %struct.MsgList**) #4

declare i8* @Err_Errno2String(i32) #4

; Function Attrs: nounwind uwtable
define i32 @FileIO_Unlock(%struct.FileIODescriptor*) #0 !dbg !299 {
  %2 = alloca %struct.FileIODescriptor*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %2, metadata !302, metadata !42), !dbg !303
  call void @llvm.dbg.declare(metadata i32* %3, metadata !304, metadata !42), !dbg !305
  store i32 0, i32* %3, align 4, !dbg !305
  %5 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !306
  %6 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %5, i32 0, i32 3, !dbg !308
  %7 = load %struct.FileLockToken*, %struct.FileLockToken** %6, align 8, !dbg !308
  %8 = icmp ne %struct.FileLockToken* %7, null, !dbg !309
  br i1 %8, label %9, label %24, !dbg !310

; <label>:9:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !311, metadata !42), !dbg !313
  store i32 0, i32* %4, align 4, !dbg !313
  %10 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !314
  %11 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %10, i32 0, i32 3, !dbg !316
  %12 = load %struct.FileLockToken*, %struct.FileLockToken** %11, align 8, !dbg !316
  %13 = call signext i8 @FileLock_Unlock(%struct.FileLockToken* %12, i32* %4, %struct.MsgList** null), !dbg !317
  %14 = icmp ne i8 %13, 0, !dbg !317
  br i1 %14, label %21, label %15, !dbg !318

; <label>:15:                                     ; preds = %9
  %16 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !319
  %17 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %16, i32 0, i32 2, !dbg !321
  %18 = load i8*, i8** %17, align 8, !dbg !321
  %19 = load i32, i32* %4, align 4, !dbg !322
  %20 = call i8* @Err_Errno2String(i32 %19), !dbg !323
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.FileIO_Unlock, i32 0, i32 0), i8* %18, i8* %20), !dbg !324
  store i32 2, i32* %3, align 4, !dbg !325
  br label %21, !dbg !326

; <label>:21:                                     ; preds = %15, %9
  %22 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !327
  %23 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %22, i32 0, i32 3, !dbg !328
  store %struct.FileLockToken* null, %struct.FileLockToken** %23, align 8, !dbg !329
  br label %24, !dbg !330

; <label>:24:                                     ; preds = %21, %1
  %25 = load i32, i32* %3, align 4, !dbg !331
  ret i32 %25, !dbg !332
}

declare signext i8 @FileLock_Unlock(%struct.FileLockToken*, i32*, %struct.MsgList**) #4

; Function Attrs: nounwind uwtable
define i64 @FileIO_GetSize(%struct.FileIODescriptor*) #0 !dbg !333 {
  %2 = alloca %struct.FileIODescriptor*, align 8
  %3 = alloca i64, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %2, metadata !343, metadata !42), !dbg !344
  call void @llvm.dbg.declare(metadata i64* %3, metadata !345, metadata !42), !dbg !346
  %4 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !347
  %5 = call i32 @FileIO_GetAllocSize(%struct.FileIODescriptor* %4, i64* %3, i64* null), !dbg !348
  %6 = icmp ne i32 %5, 0, !dbg !349
  br i1 %6, label %7, label %8, !dbg !350

; <label>:7:                                      ; preds = %1
  br label %10, !dbg !351

; <label>:8:                                      ; preds = %1
  %9 = load i64, i64* %3, align 8, !dbg !353
  br label %10, !dbg !354

; <label>:10:                                     ; preds = %8, %7
  %11 = phi i64 [ -1, %7 ], [ %9, %8 ], !dbg !356
  ret i64 %11, !dbg !358
}

declare i32 @FileIO_GetAllocSize(%struct.FileIODescriptor*, i64*, i64*) #4

; Function Attrs: nounwind uwtable
define i64 @FileIO_GetSizeByPath(i8*) #0 !dbg !359 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !362, metadata !42), !dbg !363
  call void @llvm.dbg.declare(metadata i64* %3, metadata !364, metadata !42), !dbg !365
  %4 = load i8*, i8** %2, align 8, !dbg !366
  %5 = call i32 @FileIO_GetAllocSizeByPath(i8* %4, i64* %3, i64* null), !dbg !367
  %6 = icmp ne i32 %5, 0, !dbg !368
  br i1 %6, label %7, label %8, !dbg !369

; <label>:7:                                      ; preds = %1
  br label %10, !dbg !370

; <label>:8:                                      ; preds = %1
  %9 = load i64, i64* %3, align 8, !dbg !372
  br label %10, !dbg !373

; <label>:10:                                     ; preds = %8, %7
  %11 = phi i64 [ -1, %7 ], [ %9, %8 ], !dbg !375
  ret i64 %11, !dbg !377
}

declare i32 @FileIO_GetAllocSizeByPath(i8*, i64*, i64*) #4

; Function Attrs: nounwind uwtable
define i8* @FileIO_Filename(%struct.FileIODescriptor*) #0 !dbg !378 {
  %2 = alloca %struct.FileIODescriptor*, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %2, metadata !381, metadata !42), !dbg !382
  %3 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !383
  %4 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %3, i32 0, i32 2, !dbg !384
  %5 = load i8*, i8** %4, align 8, !dbg !384
  ret i8* %5, !dbg !385
}

; Function Attrs: nounwind uwtable
define i32 @FileIO_CloseAndUnlink(%struct.FileIODescriptor*) #0 !dbg !386 {
  %2 = alloca %struct.FileIODescriptor*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %2, metadata !387, metadata !42), !dbg !388
  call void @llvm.dbg.declare(metadata i8** %3, metadata !389, metadata !42), !dbg !390
  call void @llvm.dbg.declare(metadata i32* %4, metadata !391, metadata !42), !dbg !392
  %5 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !393
  %6 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %5, i32 0, i32 2, !dbg !394
  %7 = load i8*, i8** %6, align 8, !dbg !394
  %8 = call i8* @Unicode_Duplicate(i8* %7), !dbg !395
  store i8* %8, i8** %3, align 8, !dbg !396
  %9 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %2, align 8, !dbg !397
  %10 = call i32 @FileIO_Close(%struct.FileIODescriptor* %9), !dbg !398
  store i32 %10, i32* %4, align 4, !dbg !399
  %11 = load i32, i32* %4, align 4, !dbg !400
  %12 = call signext i8 @FileIO_IsSuccess(i32 %11), !dbg !402
  %13 = icmp ne i8 %12, 0, !dbg !402
  br i1 %13, label %14, label %20, !dbg !403

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %3, align 8, !dbg !404
  %16 = call i32 @File_UnlinkIfExists(i8* %15), !dbg !407
  %17 = icmp eq i32 %16, -1, !dbg !408
  br i1 %17, label %18, label %19, !dbg !409

; <label>:18:                                     ; preds = %14
  store i32 2, i32* %4, align 4, !dbg !410
  br label %19, !dbg !412

; <label>:19:                                     ; preds = %18, %14
  br label %20, !dbg !413

; <label>:20:                                     ; preds = %19, %1
  %21 = load i8*, i8** %3, align 8, !dbg !414
  call void @Posix_Free(i8* %21), !dbg !415
  %22 = load i32, i32* %4, align 4, !dbg !416
  ret i32 %22, !dbg !417
}

declare i32 @FileIO_Close(%struct.FileIODescriptor*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @FileIO_IsSuccess(i32) #2 !dbg !418 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !422, metadata !42), !dbg !423
  %3 = load i32, i32* %2, align 4, !dbg !424
  %4 = icmp eq i32 %3, 0, !dbg !425
  %5 = zext i1 %4 to i32, !dbg !425
  %6 = trunc i32 %5 to i8, !dbg !424
  ret i8 %6, !dbg !426
}

declare i32 @File_UnlinkIfExists(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @FileIO_Pread(%struct.FileIODescriptor*, i8*, i64, i64) #0 !dbg !427 {
  %5 = alloca %struct.FileIODescriptor*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iovec, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %5, metadata !436, metadata !42), !dbg !437
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !438, metadata !42), !dbg !439
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !440, metadata !42), !dbg !441
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !442, metadata !42), !dbg !443
  call void @llvm.dbg.declare(metadata %struct.iovec* %9, metadata !444, metadata !42), !dbg !450
  %10 = load i8*, i8** %6, align 8, !dbg !451
  %11 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0, !dbg !452
  store i8* %10, i8** %11, align 8, !dbg !453
  %12 = load i64, i64* %7, align 8, !dbg !454
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 1, !dbg !455
  store i64 %12, i64* %13, align 8, !dbg !456
  %14 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !457
  %15 = load i64, i64* %8, align 8, !dbg !458
  %16 = load i64, i64* %7, align 8, !dbg !459
  %17 = call i32 @FileIO_Preadv(%struct.FileIODescriptor* %14, %struct.iovec* %9, i32 1, i64 %15, i64 %16, i64* null), !dbg !460
  ret i32 %17, !dbg !461
}

declare i32 @FileIO_Preadv(%struct.FileIODescriptor*, %struct.iovec*, i32, i64, i64, i64*) #4

; Function Attrs: nounwind uwtable
define i32 @FileIO_Pwrite(%struct.FileIODescriptor*, i8*, i64, i64) #0 !dbg !462 {
  %5 = alloca %struct.FileIODescriptor*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iovec, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %5, metadata !467, metadata !42), !dbg !468
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !469, metadata !42), !dbg !470
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !471, metadata !42), !dbg !472
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !473, metadata !42), !dbg !474
  call void @llvm.dbg.declare(metadata %struct.iovec* %9, metadata !475, metadata !42), !dbg !476
  %10 = load i8*, i8** %6, align 8, !dbg !477
  %11 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0, !dbg !478
  store i8* %10, i8** %11, align 8, !dbg !479
  %12 = load i64, i64* %7, align 8, !dbg !480
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 1, !dbg !481
  store i64 %12, i64* %13, align 8, !dbg !482
  %14 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !483
  %15 = load i64, i64* %8, align 8, !dbg !484
  %16 = load i64, i64* %7, align 8, !dbg !485
  %17 = call i32 @FileIO_Pwritev(%struct.FileIODescriptor* %14, %struct.iovec* %9, i32 1, i64 %15, i64 %16, i64* null), !dbg !486
  ret i32 %17, !dbg !487
}

declare i32 @FileIO_Pwritev(%struct.FileIODescriptor*, %struct.iovec*, i32, i64, i64, i64*) #4

; Function Attrs: nounwind uwtable
define i8* @FileIO_AtomicTempPath(i8*) #0 !dbg !488 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !491, metadata !42), !dbg !492
  call void @llvm.dbg.declare(metadata i8** %4, metadata !493, metadata !42), !dbg !494
  call void @llvm.dbg.declare(metadata i8** %5, metadata !495, metadata !42), !dbg !496
  %6 = load i8*, i8** %3, align 8, !dbg !497
  %7 = call i8* @File_FullPath(i8* %6), !dbg !498
  store i8* %7, i8** %4, align 8, !dbg !499
  %8 = load i8*, i8** %4, align 8, !dbg !500
  %9 = icmp eq i8* %8, null, !dbg !502
  br i1 %9, label %10, label %12, !dbg !503

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8, !dbg !504
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.FileIO_AtomicTempPath, i32 0, i32 0), i8* %11), !dbg !506
  store i8* null, i8** %2, align 8, !dbg !507
  br label %17, !dbg !507

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %4, align 8, !dbg !508
  %14 = call i8* (i8*, ...) @Unicode_Join(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* null), !dbg !509
  store i8* %14, i8** %5, align 8, !dbg !510
  %15 = load i8*, i8** %4, align 8, !dbg !511
  call void @Posix_Free(i8* %15), !dbg !512
  %16 = load i8*, i8** %5, align 8, !dbg !513
  store i8* %16, i8** %2, align 8, !dbg !514
  br label %17, !dbg !514

; <label>:17:                                     ; preds = %12, %10
  %18 = load i8*, i8** %2, align 8, !dbg !515
  ret i8* %18, !dbg !515
}

declare i8* @File_FullPath(i8*) #4

declare void @Log(i8*, ...) #4

declare i8* @Unicode_Join(i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @FileIO_AtomicTempFile(%struct.FileIODescriptor*, %struct.FileIODescriptor*) #0 !dbg !516 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.FileIODescriptor*, align 8
  %5 = alloca %struct.FileIODescriptor*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %4, metadata !519, metadata !42), !dbg !520
  store %struct.FileIODescriptor* %1, %struct.FileIODescriptor** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %5, metadata !521, metadata !42), !dbg !522
  call void @llvm.dbg.declare(metadata i8** %6, metadata !523, metadata !42), !dbg !524
  store i8* null, i8** %6, align 8, !dbg !524
  call void @llvm.dbg.declare(metadata i32* %7, metadata !525, metadata !42), !dbg !526
  call void @llvm.dbg.declare(metadata i32* %8, metadata !527, metadata !42), !dbg !528
  call void @llvm.dbg.declare(metadata i32* %9, metadata !529, metadata !42), !dbg !530
  call void @llvm.dbg.declare(metadata %struct.stat* %10, metadata !531, metadata !42), !dbg !571
  %11 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !572
  %12 = call i8* @FileIO_Filename(%struct.FileIODescriptor* %11), !dbg !573
  %13 = call i8* @FileIO_AtomicTempPath(i8* %12), !dbg !574
  store i8* %13, i8** %6, align 8, !dbg !576
  %14 = load i8*, i8** %6, align 8, !dbg !577
  %15 = icmp eq i8* %14, null, !dbg !579
  br i1 %15, label %16, label %17, !dbg !580

; <label>:16:                                     ; preds = %2
  store i32 2, i32* %8, align 4, !dbg !581
  br label %86, !dbg !583

; <label>:17:                                     ; preds = %2
  %18 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !584
  %19 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %18, i32 0, i32 0, !dbg !586
  %20 = load i32, i32* %19, align 8, !dbg !586
  %21 = call i32 @fstat64(i32 %20, %struct.stat* %10) #10, !dbg !587
  %22 = icmp ne i32 %21, 0, !dbg !587
  br i1 %22, label %23, label %28, !dbg !588

; <label>:23:                                     ; preds = %17
  %24 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !589
  %25 = call i8* @FileIO_Filename(%struct.FileIODescriptor* %24), !dbg !591
  %26 = call i32* @__errno_location() #1, !dbg !592
  %27 = load i32, i32* %26, align 4, !dbg !594
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.FileIO_AtomicTempFile, i32 0, i32 0), i8* %25, i32 %27), !dbg !595
  store i32 2, i32* %8, align 4, !dbg !596
  br label %86, !dbg !597

; <label>:28:                                     ; preds = %17
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !598
  %30 = load i32, i32* %29, align 8, !dbg !598
  store i32 %30, i32* %7, align 4, !dbg !599
  %31 = load i8*, i8** %6, align 8, !dbg !600
  %32 = call i32 @Posix_Unlink(i8* %31), !dbg !601
  store i32 %32, i32* %9, align 4, !dbg !602
  %33 = load i32, i32* %9, align 4, !dbg !603
  %34 = icmp ne i32 %33, 0, !dbg !605
  br i1 %34, label %35, label %42, !dbg !606

; <label>:35:                                     ; preds = %28
  %36 = call i32* @__errno_location() #1, !dbg !607
  %37 = load i32, i32* %36, align 4, !dbg !609
  %38 = icmp ne i32 %37, 2, !dbg !610
  br i1 %38, label %39, label %42, !dbg !611

; <label>:39:                                     ; preds = %35
  %40 = call i32* @__errno_location() #1, !dbg !612
  %41 = load i32, i32* %40, align 4, !dbg !614
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.FileIO_AtomicTempFile, i32 0, i32 0), i32 %41), !dbg !615
  br label %42, !dbg !616

; <label>:42:                                     ; preds = %39, %35, %28
  %43 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !617
  %44 = load i8*, i8** %6, align 8, !dbg !618
  %45 = load i32, i32* %7, align 4, !dbg !619
  %46 = call i32 @FileIO_Create(%struct.FileIODescriptor* %43, i8* %44, i32 3, i32 3, i32 %45), !dbg !620
  store i32 %46, i32* %8, align 4, !dbg !621
  %47 = load i32, i32* %8, align 4, !dbg !622
  %48 = call signext i8 @FileIO_IsSuccess(i32 %47), !dbg !624
  %49 = icmp ne i8 %48, 0, !dbg !624
  br i1 %49, label %56, label %50, !dbg !625

; <label>:50:                                     ; preds = %42
  %51 = load i32, i32* %8, align 4, !dbg !626
  %52 = call i8* @FileIO_ErrorEnglish(i32 %51), !dbg !628
  %53 = load i32, i32* %8, align 4, !dbg !629
  %54 = call i32* @__errno_location() #1, !dbg !630
  %55 = load i32, i32* %54, align 4, !dbg !632
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.FileIO_AtomicTempFile, i32 0, i32 0), i8* %52, i32 %53, i32 %55), !dbg !633
  br label %86, !dbg !634

; <label>:56:                                     ; preds = %42
  %57 = call signext i8 @HostType_OSIsVMK(), !dbg !635
  %58 = icmp ne i8 %57, 0, !dbg !635
  br i1 %58, label %84, label %59, !dbg !637

; <label>:59:                                     ; preds = %56
  %60 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !638
  %61 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %60, i32 0, i32 0, !dbg !641
  %62 = load i32, i32* %61, align 8, !dbg !641
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !642
  %64 = load i32, i32* %63, align 8, !dbg !642
  %65 = call i32 @fchmod(i32 %62, i32 %64) #10, !dbg !643
  %66 = icmp ne i32 %65, 0, !dbg !643
  br i1 %66, label %67, label %70, !dbg !644

; <label>:67:                                     ; preds = %59
  %68 = call i32* @__errno_location() #1, !dbg !645
  %69 = load i32, i32* %68, align 4, !dbg !647
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.FileIO_AtomicTempFile, i32 0, i32 0), i32 %69), !dbg !648
  store i32 2, i32* %8, align 4, !dbg !649
  br label %86, !dbg !650

; <label>:70:                                     ; preds = %59
  %71 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !651
  %72 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %71, i32 0, i32 0, !dbg !653
  %73 = load i32, i32* %72, align 8, !dbg !653
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 4, !dbg !654
  %75 = load i32, i32* %74, align 4, !dbg !654
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 5, !dbg !655
  %77 = load i32, i32* %76, align 8, !dbg !655
  %78 = call i32 @fchown(i32 %73, i32 %75, i32 %77) #10, !dbg !656
  %79 = icmp ne i32 %78, 0, !dbg !656
  br i1 %79, label %80, label %83, !dbg !657

; <label>:80:                                     ; preds = %70
  %81 = call i32* @__errno_location() #1, !dbg !658
  %82 = load i32, i32* %81, align 4, !dbg !660
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.FileIO_AtomicTempFile, i32 0, i32 0), i32 %82), !dbg !661
  store i32 2, i32* %8, align 4, !dbg !662
  br label %86, !dbg !663

; <label>:83:                                     ; preds = %70
  br label %84, !dbg !664

; <label>:84:                                     ; preds = %83, %56
  %85 = load i8*, i8** %6, align 8, !dbg !665
  call void @Posix_Free(i8* %85), !dbg !666
  store i32 0, i32* %3, align 4, !dbg !667
  br label %104, !dbg !667

; <label>:86:                                     ; preds = %80, %67, %50, %23, %16
  %87 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !668
  %88 = call signext i8 @FileIO_IsValid(%struct.FileIODescriptor* %87), !dbg !670
  %89 = icmp ne i8 %88, 0, !dbg !670
  br i1 %89, label %90, label %101, !dbg !671

; <label>:90:                                     ; preds = %86
  %91 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !672
  %92 = call i32 @FileIO_Close(%struct.FileIODescriptor* %91), !dbg !674
  %93 = load i8*, i8** %6, align 8, !dbg !675
  %94 = call i32 @Posix_Unlink(i8* %93), !dbg !676
  store i32 %94, i32* %9, align 4, !dbg !677
  %95 = load i32, i32* %9, align 4, !dbg !678
  %96 = icmp ne i32 %95, 0, !dbg !680
  br i1 %96, label %97, label %100, !dbg !681

; <label>:97:                                     ; preds = %90
  %98 = call i32* @__errno_location() #1, !dbg !682
  %99 = load i32, i32* %98, align 4, !dbg !684
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.FileIO_AtomicTempFile, i32 0, i32 0), i32 %99), !dbg !685
  br label %100, !dbg !686

; <label>:100:                                    ; preds = %97, %90
  br label %101, !dbg !687

; <label>:101:                                    ; preds = %100, %86
  %102 = load i8*, i8** %6, align 8, !dbg !688
  call void @Posix_Free(i8* %102), !dbg !689
  %103 = load i32, i32* %8, align 4, !dbg !690
  store i32 %103, i32* %3, align 4, !dbg !691
  br label %104, !dbg !691

; <label>:104:                                    ; preds = %101, %84
  %105 = load i32, i32* %3, align 4, !dbg !692
  ret i32 %105, !dbg !692
}

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @Posix_Unlink(i8*) #4

declare i32 @FileIO_Create(%struct.FileIODescriptor*, i8*, i32, i32, i32) #4

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #5

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) #5

declare signext i8 @FileIO_IsValid(%struct.FileIODescriptor*) #4

; Function Attrs: nounwind uwtable
define i32 @FileIO_AtomicUpdateEx(%struct.FileIODescriptor*, %struct.FileIODescriptor*, i8 signext) #0 !dbg !693 {
  %4 = alloca %struct.FileIODescriptor*, align 8
  %5 = alloca %struct.FileIODescriptor*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %4, metadata !696, metadata !42), !dbg !697
  store %struct.FileIODescriptor* %1, %struct.FileIODescriptor** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %5, metadata !698, metadata !42), !dbg !699
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !700, metadata !42), !dbg !701
  call void @llvm.dbg.declare(metadata i8** %7, metadata !702, metadata !42), !dbg !703
  store i8* null, i8** %7, align 8, !dbg !703
  call void @llvm.dbg.declare(metadata i8** %8, metadata !704, metadata !42), !dbg !705
  store i8* null, i8** %8, align 8, !dbg !705
  call void @llvm.dbg.declare(metadata i32* %9, metadata !706, metadata !42), !dbg !707
  call void @llvm.dbg.declare(metadata i32* %10, metadata !708, metadata !42), !dbg !709
  store i32 0, i32* %10, align 4, !dbg !709
  call void @llvm.dbg.declare(metadata i32* %11, metadata !710, metadata !42), !dbg !711
  store i32 0, i32* %11, align 4, !dbg !711
  %12 = call signext i8 @HostType_OSIsVMK(), !dbg !712
  %13 = icmp ne i8 %12, 0, !dbg !712
  br i1 %13, label %14, label %15, !dbg !714

; <label>:14:                                     ; preds = %3
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 954) #9, !dbg !715
  unreachable, !dbg !715

; <label>:15:                                     ; preds = %3
  %16 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !717
  %17 = call i8* @FileIO_Filename(%struct.FileIODescriptor* %16), !dbg !718
  store i8* %17, i8** %7, align 8, !dbg !719
  %18 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !720
  %19 = call i8* @FileIO_Filename(%struct.FileIODescriptor* %18), !dbg !721
  store i8* %19, i8** %8, align 8, !dbg !722
  %20 = load i8*, i8** %8, align 8, !dbg !723
  %21 = load i8*, i8** %7, align 8, !dbg !725
  %22 = call i32 @File_Rename(i8* %20, i8* %21), !dbg !726
  %23 = icmp ne i32 %22, 0, !dbg !726
  br i1 %23, label %24, label %31, !dbg !727

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %8, align 8, !dbg !728
  %26 = load i8*, i8** %7, align 8, !dbg !730
  %27 = call i32* @__errno_location() #1, !dbg !731
  %28 = load i32, i32* %27, align 4, !dbg !732
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.FileIO_AtomicUpdateEx, i32 0, i32 0), i8* %25, i8* %26, i32 %28), !dbg !733
  %29 = call i32* @__errno_location() #1, !dbg !734
  %30 = load i32, i32* %29, align 4, !dbg !735
  store i32 %30, i32* %10, align 4, !dbg !736
  br label %45, !dbg !737

; <label>:31:                                     ; preds = %15
  store i32 1, i32* %11, align 4, !dbg !738
  %32 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !740
  %33 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %32, i32 0, i32 0, !dbg !741
  %34 = load i32, i32* %33, align 8, !dbg !741
  store i32 %34, i32* %9, align 4, !dbg !742
  %35 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !743
  %36 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %35, i32 0, i32 0, !dbg !744
  %37 = load i32, i32* %36, align 8, !dbg !744
  %38 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !745
  %39 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %38, i32 0, i32 0, !dbg !746
  store i32 %37, i32* %39, align 8, !dbg !747
  %40 = load i32, i32* %9, align 4, !dbg !748
  %41 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %5, align 8, !dbg !749
  %42 = getelementptr inbounds %struct.FileIODescriptor, %struct.FileIODescriptor* %41, i32 0, i32 0, !dbg !750
  store i32 %40, i32* %42, align 8, !dbg !751
  %43 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !752
  %44 = call i32 @FileIO_Close(%struct.FileIODescriptor* %43), !dbg !753
  br label %45

; <label>:45:                                     ; preds = %31, %24
  %46 = load i32, i32* %10, align 4, !dbg !754
  %47 = call i32* @__errno_location() #1, !dbg !755
  store i32 %46, i32* %47, align 4, !dbg !756
  %48 = load i32, i32* %11, align 4, !dbg !757
  ret i32 %48, !dbg !758
}

declare i32 @File_Rename(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define signext i8 @FileIO_AtomicUpdate(%struct.FileIODescriptor*, %struct.FileIODescriptor*) #0 !dbg !759 {
  %3 = alloca %struct.FileIODescriptor*, align 8
  %4 = alloca %struct.FileIODescriptor*, align 8
  store %struct.FileIODescriptor* %0, %struct.FileIODescriptor** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %3, metadata !762, metadata !42), !dbg !763
  store %struct.FileIODescriptor* %1, %struct.FileIODescriptor** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor** %4, metadata !764, metadata !42), !dbg !765
  %5 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %3, align 8, !dbg !766
  %6 = load %struct.FileIODescriptor*, %struct.FileIODescriptor** %4, align 8, !dbg !767
  %7 = call i32 @FileIO_AtomicUpdateEx(%struct.FileIODescriptor* %5, %struct.FileIODescriptor* %6, i8 signext 1), !dbg !768
  %8 = icmp eq i32 %7, 1, !dbg !769
  %9 = zext i1 %8 to i32, !dbg !769
  %10 = trunc i32 %9 to i8, !dbg !768
  ret i8 %10, !dbg !770
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

; Function Attrs: nounwind
declare void @free(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !26)
!1 = !DIFile(filename: "fileIO.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!2 = !{!3, !19}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 264, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/fileIO.h", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !DIEnumerator(name: "FILEIO_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "FILEIO_CANCELLED", value: 1)
!8 = !DIEnumerator(name: "FILEIO_ERROR", value: 2)
!9 = !DIEnumerator(name: "FILEIO_OPEN_ERROR_EXIST", value: 3)
!10 = !DIEnumerator(name: "FILEIO_LOCK_FAILED", value: 4)
!11 = !DIEnumerator(name: "FILEIO_READ_ERROR_EOF", value: 5)
!12 = !DIEnumerator(name: "FILEIO_FILE_NOT_FOUND", value: 6)
!13 = !DIEnumerator(name: "FILEIO_NO_PERMISSION", value: 7)
!14 = !DIEnumerator(name: "FILEIO_FILE_NAME_TOO_LONG", value: 8)
!15 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_FBIG", value: 9)
!16 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_NOSPC", value: 10)
!17 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_DQUOT", value: 11)
!18 = !DIEnumerator(name: "FILEIO_ERROR_LAST", value: 12)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 256, size: 32, align: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "FILEIO_OPEN", value: 0)
!22 = !DIEnumerator(name: "FILEIO_OPEN_EMPTY", value: 1)
!23 = !DIEnumerator(name: "FILEIO_OPEN_CREATE", value: 2)
!24 = !DIEnumerator(name: "FILEIO_OPEN_CREATE_SAFE", value: 3)
!25 = !DIEnumerator(name: "FILEIO_OPEN_CREATE_EMPTY", value: 4)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!30 = !{i32 2, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!33 = distinct !DISubprogram(name: "FileIO_ErrorEnglish", scope: !34, file: !34, line: 72, type: !35, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!34 = !DIFile(filename: "fileIO.c", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !39}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIOResult", file: !4, line: 318, baseType: !3)
!40 = !{}
!41 = !DILocalVariable(name: "status", arg: 1, scope: !33, file: !34, line: 72, type: !39)
!42 = !DIExpression()
!43 = !DILocation(line: 72, column: 34, scope: !33)
!44 = !DILocation(line: 74, column: 42, scope: !33)
!45 = !DILocation(line: 74, column: 26, scope: !33)
!46 = !DILocation(line: 74, column: 11, scope: !47)
!47 = !DILexicalBlockFile(scope: !33, file: !34, discriminator: 1)
!48 = !DILocation(line: 74, column: 4, scope: !33)
!49 = distinct !DISubprogram(name: "Msg_StripMSGID", scope: !50, file: !50, line: 99, type: !51, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!50 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/msgid.h", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!51 = !DISubroutineType(types: !52)
!52 = !{!37, !37}
!53 = !DILocalVariable(name: "idString", arg: 1, scope: !49, file: !50, line: 99, type: !37)
!54 = !DILocation(line: 99, column: 28, scope: !49)
!55 = !DILocalVariable(name: "s", scope: !49, file: !50, line: 101, type: !37)
!56 = !DILocation(line: 101, column: 16, scope: !49)
!57 = !DILocation(line: 101, column: 20, scope: !49)
!58 = !DILocation(line: 103, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !49, file: !50, line: 103, column: 8)
!60 = !DILocation(line: 103, column: 11, scope: !59)
!61 = !DILocation(line: 103, column: 7, scope: !59)
!62 = !DILocation(line: 103, column: 18, scope: !63)
!63 = !DILexicalBlockFile(scope: !59, file: !50, discriminator: 1)
!64 = !DILocation(line: 103, column: 10, scope: !63)
!65 = !DILocation(line: 103, column: 38, scope: !63)
!66 = !DILocation(line: 103, column: 44, scope: !63)
!67 = !DILocation(line: 104, column: 12, scope: !59)
!68 = !DILocation(line: 104, column: 8, scope: !59)
!69 = !DILocation(line: 104, column: 18, scope: !59)
!70 = !DILocation(line: 104, column: 25, scope: !59)
!71 = !DILocation(line: 105, column: 20, scope: !59)
!72 = !DILocation(line: 105, column: 22, scope: !59)
!73 = !DILocation(line: 105, column: 13, scope: !59)
!74 = !DILocation(line: 105, column: 11, scope: !59)
!75 = !DILocation(line: 105, column: 33, scope: !59)
!76 = !DILocation(line: 103, column: 8, scope: !77)
!77 = !DILexicalBlockFile(scope: !49, file: !50, discriminator: 2)
!78 = !DILocation(line: 106, column: 14, scope: !79)
!79 = distinct !DILexicalBlock(scope: !59, file: !50, line: 105, column: 41)
!80 = !DILocation(line: 106, column: 16, scope: !79)
!81 = !DILocation(line: 106, column: 7, scope: !79)
!82 = !DILocation(line: 108, column: 11, scope: !49)
!83 = !DILocation(line: 108, column: 4, scope: !49)
!84 = !DILocation(line: 109, column: 1, scope: !49)
!85 = distinct !DISubprogram(name: "FileIO_MsgError", scope: !34, file: !34, line: 95, type: !35, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!86 = !DILocalVariable(name: "status", arg: 1, scope: !85, file: !34, line: 95, type: !39)
!87 = !DILocation(line: 95, column: 30, scope: !85)
!88 = !DILocalVariable(name: "result", scope: !85, file: !34, line: 97, type: !37)
!89 = !DILocation(line: 97, column: 16, scope: !85)
!90 = !DILocation(line: 99, column: 12, scope: !85)
!91 = !DILocation(line: 99, column: 4, scope: !85)
!92 = !DILocation(line: 105, column: 14, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !34, line: 99, column: 20)
!94 = !DILocation(line: 106, column: 7, scope: !93)
!95 = !DILocation(line: 114, column: 14, scope: !93)
!96 = !DILocation(line: 115, column: 7, scope: !93)
!97 = !DILocation(line: 123, column: 14, scope: !93)
!98 = !DILocation(line: 124, column: 7, scope: !93)
!99 = !DILocation(line: 127, column: 14, scope: !93)
!100 = !DILocation(line: 128, column: 7, scope: !93)
!101 = !DILocation(line: 131, column: 14, scope: !93)
!102 = !DILocation(line: 132, column: 7, scope: !93)
!103 = !DILocation(line: 135, column: 14, scope: !93)
!104 = !DILocation(line: 136, column: 7, scope: !93)
!105 = !DILocation(line: 139, column: 14, scope: !93)
!106 = !DILocation(line: 140, column: 7, scope: !93)
!107 = !DILocation(line: 143, column: 14, scope: !93)
!108 = !DILocation(line: 144, column: 7, scope: !93)
!109 = !DILocation(line: 147, column: 14, scope: !93)
!110 = !DILocation(line: 148, column: 7, scope: !93)
!111 = !DILocation(line: 151, column: 14, scope: !93)
!112 = !DILocation(line: 152, column: 7, scope: !93)
!113 = !DILocation(line: 155, column: 14, scope: !93)
!114 = !DILocation(line: 156, column: 7, scope: !93)
!115 = !DILocation(line: 159, column: 14, scope: !93)
!116 = !DILocation(line: 160, column: 7, scope: !93)
!117 = !DILocation(line: 163, column: 7, scope: !93)
!118 = !DILocation(line: 173, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !85, file: !34, line: 173, column: 8)
!120 = !DILocation(line: 173, column: 8, scope: !85)
!121 = !DILocation(line: 174, column: 50, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !34, line: 173, column: 17)
!123 = !DILocation(line: 174, column: 7, scope: !122)
!124 = !DILocation(line: 176, column: 14, scope: !122)
!125 = !DILocation(line: 177, column: 4, scope: !122)
!126 = !DILocation(line: 179, column: 11, scope: !85)
!127 = !DILocation(line: 179, column: 4, scope: !85)
!128 = distinct !DISubprogram(name: "FileIO_Init", scope: !34, file: !34, line: 201, type: !129, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !131, !37}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIODescriptor", file: !4, line: 79, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FileIODescriptor", file: !4, line: 74, size: 192, align: 64, elements: !134)
!134 = !{!135, !137, !138, !139}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "posix", scope: !133, file: !4, line: 75, baseType: !136, size: 32, align: 32)
!136 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !4, line: 76, baseType: !136, size: 32, align: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "fileName", scope: !133, file: !4, line: 77, baseType: !28, size: 64, align: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "lockToken", scope: !133, file: !4, line: 78, baseType: !140, size: 64, align: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "FileLockToken", file: !4, line: 59, flags: DIFlagFwdDecl)
!142 = !DILocalVariable(name: "fd", arg: 1, scope: !128, file: !34, line: 201, type: !131)
!143 = !DILocation(line: 201, column: 31, scope: !128)
!144 = !DILocalVariable(name: "pathName", arg: 2, scope: !128, file: !34, line: 202, type: !37)
!145 = !DILocation(line: 202, column: 25, scope: !128)
!146 = !DILocation(line: 207, column: 37, scope: !128)
!147 = !DILocation(line: 207, column: 19, scope: !128)
!148 = !DILocation(line: 207, column: 4, scope: !128)
!149 = !DILocation(line: 207, column: 8, scope: !128)
!150 = !DILocation(line: 207, column: 17, scope: !128)
!151 = !DILocation(line: 208, column: 1, scope: !128)
!152 = distinct !DISubprogram(name: "FileIO_Cleanup", scope: !34, file: !34, line: 229, type: !153, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !131}
!155 = !DILocalVariable(name: "fd", arg: 1, scope: !152, file: !34, line: 229, type: !131)
!156 = !DILocation(line: 229, column: 34, scope: !152)
!157 = !DILocation(line: 233, column: 8, scope: !158)
!158 = distinct !DILexicalBlock(scope: !152, file: !34, line: 233, column: 8)
!159 = !DILocation(line: 233, column: 12, scope: !158)
!160 = !DILocation(line: 233, column: 8, scope: !152)
!161 = !DILocation(line: 234, column: 18, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !34, line: 233, column: 22)
!163 = !DILocation(line: 234, column: 22, scope: !162)
!164 = !DILocation(line: 234, column: 7, scope: !162)
!165 = !DILocation(line: 235, column: 7, scope: !162)
!166 = !DILocation(line: 235, column: 11, scope: !162)
!167 = !DILocation(line: 235, column: 20, scope: !162)
!168 = !DILocation(line: 236, column: 4, scope: !162)
!169 = !DILocation(line: 237, column: 1, scope: !152)
!170 = distinct !DISubprogram(name: "Posix_Free", scope: !171, file: !171, line: 129, type: !172, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!171 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/posix.h", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!172 = !DISubroutineType(types: !173)
!173 = !{null, !27}
!174 = !DILocalVariable(name: "p", arg: 1, scope: !170, file: !171, line: 129, type: !27)
!175 = !DILocation(line: 129, column: 18, scope: !170)
!176 = !DILocalVariable(name: "err", scope: !170, file: !171, line: 131, type: !136)
!177 = !DILocation(line: 131, column: 8, scope: !170)
!178 = !DILocation(line: 131, column: 15, scope: !170)
!179 = !DILocation(line: 131, column: 14, scope: !170)
!180 = !DILocation(line: 132, column: 9, scope: !170)
!181 = !DILocation(line: 132, column: 4, scope: !170)
!182 = !DILocation(line: 133, column: 11, scope: !170)
!183 = !DILocation(line: 133, column: 5, scope: !170)
!184 = !DILocation(line: 133, column: 9, scope: !170)
!185 = !DILocation(line: 134, column: 1, scope: !170)
!186 = distinct !DISubprogram(name: "FileIOResolveLockBits", scope: !34, file: !34, line: 262, type: !187, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!190 = !DILocalVariable(name: "access", arg: 1, scope: !186, file: !34, line: 262, type: !189)
!191 = !DILocation(line: 262, column: 28, scope: !186)
!192 = !DILocation(line: 271, column: 10, scope: !193)
!193 = distinct !DILexicalBlock(scope: !186, file: !34, line: 271, column: 8)
!194 = !DILocation(line: 271, column: 9, scope: !193)
!195 = !DILocation(line: 271, column: 17, scope: !193)
!196 = !DILocation(line: 271, column: 30, scope: !193)
!197 = !DILocation(line: 271, column: 8, scope: !186)
!198 = !DILocation(line: 272, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !193, file: !34, line: 271, column: 36)
!200 = !DILocation(line: 272, column: 15, scope: !199)
!201 = !DILocation(line: 273, column: 8, scope: !199)
!202 = !DILocation(line: 273, column: 15, scope: !199)
!203 = !DILocation(line: 274, column: 4, scope: !199)
!204 = !DILocation(line: 275, column: 10, scope: !205)
!205 = distinct !DILexicalBlock(scope: !186, file: !34, line: 275, column: 8)
!206 = !DILocation(line: 275, column: 9, scope: !205)
!207 = !DILocation(line: 275, column: 17, scope: !205)
!208 = !DILocation(line: 275, column: 29, scope: !205)
!209 = !DILocation(line: 275, column: 8, scope: !186)
!210 = !DILocation(line: 277, column: 8, scope: !211)
!211 = distinct !DILexicalBlock(scope: !205, file: !34, line: 275, column: 35)
!212 = !DILocation(line: 277, column: 15, scope: !211)
!213 = !DILocation(line: 278, column: 11, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !34, line: 278, column: 11)
!215 = !DILocation(line: 278, column: 11, scope: !211)
!216 = !DILocation(line: 279, column: 11, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !34, line: 278, column: 31)
!218 = !DILocation(line: 279, column: 18, scope: !217)
!219 = !DILocation(line: 280, column: 7, scope: !217)
!220 = !DILocation(line: 281, column: 11, scope: !221)
!221 = distinct !DILexicalBlock(scope: !214, file: !34, line: 280, column: 14)
!222 = !DILocation(line: 281, column: 18, scope: !221)
!223 = !DILocation(line: 283, column: 4, scope: !211)
!224 = !DILocation(line: 288, column: 1, scope: !186)
!225 = distinct !DISubprogram(name: "FileIO_Lock", scope: !34, file: !34, line: 313, type: !226, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!226 = !DISubroutineType(types: !227)
!227 = !{!39, !131, !136}
!228 = !DILocalVariable(name: "file", arg: 1, scope: !225, file: !34, line: 313, type: !131)
!229 = !DILocation(line: 313, column: 31, scope: !225)
!230 = !DILocalVariable(name: "access", arg: 2, scope: !225, file: !34, line: 314, type: !136)
!231 = !DILocation(line: 314, column: 17, scope: !225)
!232 = !DILocalVariable(name: "ret", scope: !225, file: !34, line: 316, type: !39)
!233 = !DILocation(line: 316, column: 17, scope: !225)
!234 = !DILocation(line: 325, column: 4, scope: !225)
!235 = !DILocation(line: 329, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !225, file: !34, line: 329, column: 8)
!237 = !DILocation(line: 329, column: 16, scope: !236)
!238 = !DILocation(line: 329, column: 29, scope: !236)
!239 = !DILocation(line: 329, column: 8, scope: !225)
!240 = !DILocation(line: 331, column: 11, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !34, line: 329, column: 35)
!242 = !DILocation(line: 332, column: 4, scope: !241)
!243 = !DILocation(line: 332, column: 16, scope: !244)
!244 = !DILexicalBlockFile(scope: !245, file: !34, discriminator: 1)
!245 = distinct !DILexicalBlock(scope: !236, file: !34, line: 332, column: 15)
!246 = !DILocation(line: 332, column: 23, scope: !244)
!247 = !DILocation(line: 332, column: 36, scope: !244)
!248 = !DILocation(line: 332, column: 15, scope: !244)
!249 = !DILocalVariable(name: "err", scope: !250, file: !34, line: 333, type: !136)
!250 = distinct !DILexicalBlock(scope: !245, file: !34, line: 332, column: 42)
!251 = !DILocation(line: 333, column: 11, scope: !250)
!252 = !DILocation(line: 335, column: 39, scope: !250)
!253 = !DILocation(line: 335, column: 45, scope: !250)
!254 = !DILocation(line: 336, column: 40, scope: !250)
!255 = !DILocation(line: 336, column: 47, scope: !250)
!256 = !DILocation(line: 336, column: 59, scope: !250)
!257 = !DILocation(line: 336, column: 39, scope: !250)
!258 = !DILocation(line: 335, column: 25, scope: !250)
!259 = !DILocation(line: 335, column: 7, scope: !250)
!260 = !DILocation(line: 335, column: 13, scope: !250)
!261 = !DILocation(line: 335, column: 23, scope: !250)
!262 = !DILocation(line: 341, column: 11, scope: !263)
!263 = distinct !DILexicalBlock(scope: !250, file: !34, line: 341, column: 11)
!264 = !DILocation(line: 341, column: 17, scope: !263)
!265 = !DILocation(line: 341, column: 27, scope: !263)
!266 = !DILocation(line: 341, column: 11, scope: !250)
!267 = !DILocation(line: 344, column: 32, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !34, line: 341, column: 35)
!269 = !DILocation(line: 344, column: 38, scope: !268)
!270 = !DILocation(line: 345, column: 19, scope: !268)
!271 = !DILocation(line: 345, column: 23, scope: !268)
!272 = !DILocation(line: 345, column: 18, scope: !268)
!273 = !DILocation(line: 345, column: 18, scope: !274)
!274 = !DILexicalBlockFile(scope: !268, file: !34, discriminator: 1)
!275 = !DILocation(line: 345, column: 67, scope: !276)
!276 = !DILexicalBlockFile(scope: !268, file: !34, discriminator: 2)
!277 = !DILocation(line: 345, column: 50, scope: !276)
!278 = !DILocation(line: 345, column: 18, scope: !276)
!279 = !DILocation(line: 345, column: 18, scope: !280)
!280 = !DILexicalBlockFile(scope: !268, file: !34, discriminator: 3)
!281 = !DILocation(line: 343, column: 10, scope: !268)
!282 = !DILocation(line: 348, column: 18, scope: !268)
!283 = !DILocation(line: 348, column: 10, scope: !268)
!284 = !DILocation(line: 351, column: 17, scope: !285)
!285 = distinct !DILexicalBlock(scope: !268, file: !34, line: 348, column: 23)
!286 = !DILocation(line: 352, column: 13, scope: !285)
!287 = !DILocation(line: 354, column: 17, scope: !285)
!288 = !DILocation(line: 355, column: 13, scope: !285)
!289 = !DILocation(line: 357, column: 17, scope: !285)
!290 = !DILocation(line: 358, column: 13, scope: !285)
!291 = !DILocation(line: 360, column: 17, scope: !285)
!292 = !DILocation(line: 361, column: 13, scope: !285)
!293 = !DILocation(line: 363, column: 17, scope: !285)
!294 = !DILocation(line: 364, column: 10, scope: !285)
!295 = !DILocation(line: 365, column: 7, scope: !268)
!296 = !DILocation(line: 366, column: 4, scope: !250)
!297 = !DILocation(line: 369, column: 11, scope: !225)
!298 = !DILocation(line: 369, column: 4, scope: !225)
!299 = distinct !DISubprogram(name: "FileIO_Unlock", scope: !34, file: !34, line: 391, type: !300, isLocal: false, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!300 = !DISubroutineType(types: !301)
!301 = !{!39, !131}
!302 = !DILocalVariable(name: "file", arg: 1, scope: !299, file: !34, line: 391, type: !131)
!303 = !DILocation(line: 391, column: 33, scope: !299)
!304 = !DILocalVariable(name: "ret", scope: !299, file: !34, line: 393, type: !39)
!305 = !DILocation(line: 393, column: 17, scope: !299)
!306 = !DILocation(line: 398, column: 8, scope: !307)
!307 = distinct !DILexicalBlock(scope: !299, file: !34, line: 398, column: 8)
!308 = !DILocation(line: 398, column: 14, scope: !307)
!309 = !DILocation(line: 398, column: 24, scope: !307)
!310 = !DILocation(line: 398, column: 8, scope: !299)
!311 = !DILocalVariable(name: "err", scope: !312, file: !34, line: 399, type: !136)
!312 = distinct !DILexicalBlock(scope: !307, file: !34, line: 398, column: 32)
!313 = !DILocation(line: 399, column: 11, scope: !312)
!314 = !DILocation(line: 401, column: 28, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !34, line: 401, column: 11)
!316 = !DILocation(line: 401, column: 34, scope: !315)
!317 = !DILocation(line: 401, column: 12, scope: !315)
!318 = !DILocation(line: 401, column: 11, scope: !312)
!319 = !DILocation(line: 403, column: 32, scope: !320)
!320 = distinct !DILexicalBlock(scope: !315, file: !34, line: 401, column: 57)
!321 = !DILocation(line: 403, column: 38, scope: !320)
!322 = !DILocation(line: 403, column: 65, scope: !320)
!323 = !DILocation(line: 403, column: 48, scope: !320)
!324 = !DILocation(line: 402, column: 10, scope: !320)
!325 = !DILocation(line: 405, column: 14, scope: !320)
!326 = !DILocation(line: 406, column: 7, scope: !320)
!327 = !DILocation(line: 408, column: 7, scope: !312)
!328 = !DILocation(line: 408, column: 13, scope: !312)
!329 = !DILocation(line: 408, column: 23, scope: !312)
!330 = !DILocation(line: 409, column: 4, scope: !312)
!331 = !DILocation(line: 414, column: 11, scope: !299)
!332 = !DILocation(line: 414, column: 4, scope: !299)
!333 = distinct !DISubprogram(name: "FileIO_GetSize", scope: !34, file: !34, line: 435, type: !334, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!334 = !DISubroutineType(types: !335)
!335 = !{!336, !341}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !337, line: 172, baseType: !338)
!337 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !339, line: 197, baseType: !340)
!339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!340 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!343 = !DILocalVariable(name: "fd", arg: 1, scope: !333, file: !34, line: 435, type: !341)
!344 = !DILocation(line: 435, column: 40, scope: !333)
!345 = !DILocalVariable(name: "logicalBytes", scope: !333, file: !34, line: 437, type: !336)
!346 = !DILocation(line: 437, column: 10, scope: !333)
!347 = !DILocation(line: 439, column: 32, scope: !333)
!348 = !DILocation(line: 439, column: 12, scope: !333)
!349 = !DILocation(line: 439, column: 56, scope: !333)
!350 = !DILocation(line: 439, column: 11, scope: !333)
!351 = !DILocation(line: 439, column: 11, scope: !352)
!352 = !DILexicalBlockFile(scope: !333, file: !34, discriminator: 1)
!353 = !DILocation(line: 440, column: 12, scope: !333)
!354 = !DILocation(line: 439, column: 11, scope: !355)
!355 = !DILexicalBlockFile(scope: !333, file: !34, discriminator: 2)
!356 = !DILocation(line: 439, column: 11, scope: !357)
!357 = !DILexicalBlockFile(scope: !333, file: !34, discriminator: 3)
!358 = !DILocation(line: 439, column: 4, scope: !357)
!359 = distinct !DISubprogram(name: "FileIO_GetSizeByPath", scope: !34, file: !34, line: 461, type: !360, isLocal: false, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!360 = !DISubroutineType(types: !361)
!361 = !{!336, !37}
!362 = !DILocalVariable(name: "pathName", arg: 1, scope: !359, file: !34, line: 461, type: !37)
!363 = !DILocation(line: 461, column: 34, scope: !359)
!364 = !DILocalVariable(name: "logicalBytes", scope: !359, file: !34, line: 463, type: !336)
!365 = !DILocation(line: 463, column: 10, scope: !359)
!366 = !DILocation(line: 465, column: 38, scope: !359)
!367 = !DILocation(line: 465, column: 12, scope: !359)
!368 = !DILocation(line: 465, column: 68, scope: !359)
!369 = !DILocation(line: 465, column: 11, scope: !359)
!370 = !DILocation(line: 465, column: 11, scope: !371)
!371 = !DILexicalBlockFile(scope: !359, file: !34, discriminator: 1)
!372 = !DILocation(line: 466, column: 30, scope: !359)
!373 = !DILocation(line: 465, column: 11, scope: !374)
!374 = !DILexicalBlockFile(scope: !359, file: !34, discriminator: 2)
!375 = !DILocation(line: 465, column: 11, scope: !376)
!376 = !DILexicalBlockFile(scope: !359, file: !34, discriminator: 3)
!377 = !DILocation(line: 465, column: 4, scope: !376)
!378 = distinct !DISubprogram(name: "FileIO_Filename", scope: !34, file: !34, line: 489, type: !379, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!379 = !DISubroutineType(types: !380)
!380 = !{!37, !131}
!381 = !DILocalVariable(name: "fd", arg: 1, scope: !378, file: !34, line: 489, type: !131)
!382 = !DILocation(line: 489, column: 35, scope: !378)
!383 = !DILocation(line: 493, column: 11, scope: !378)
!384 = !DILocation(line: 493, column: 15, scope: !378)
!385 = !DILocation(line: 493, column: 4, scope: !378)
!386 = distinct !DISubprogram(name: "FileIO_CloseAndUnlink", scope: !34, file: !34, line: 516, type: !300, isLocal: false, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!387 = !DILocalVariable(name: "fd", arg: 1, scope: !386, file: !34, line: 516, type: !131)
!388 = !DILocation(line: 516, column: 41, scope: !386)
!389 = !DILocalVariable(name: "path", scope: !386, file: !34, line: 518, type: !28)
!390 = !DILocation(line: 518, column: 10, scope: !386)
!391 = !DILocalVariable(name: "ret", scope: !386, file: !34, line: 519, type: !39)
!392 = !DILocation(line: 519, column: 17, scope: !386)
!393 = !DILocation(line: 524, column: 29, scope: !386)
!394 = !DILocation(line: 524, column: 33, scope: !386)
!395 = !DILocation(line: 524, column: 11, scope: !386)
!396 = !DILocation(line: 524, column: 9, scope: !386)
!397 = !DILocation(line: 526, column: 23, scope: !386)
!398 = !DILocation(line: 526, column: 10, scope: !386)
!399 = !DILocation(line: 526, column: 8, scope: !386)
!400 = !DILocation(line: 527, column: 25, scope: !401)
!401 = distinct !DILexicalBlock(scope: !386, file: !34, line: 527, column: 8)
!402 = !DILocation(line: 527, column: 8, scope: !401)
!403 = !DILocation(line: 527, column: 8, scope: !386)
!404 = !DILocation(line: 528, column: 31, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !34, line: 528, column: 11)
!406 = distinct !DILexicalBlock(scope: !401, file: !34, line: 527, column: 31)
!407 = !DILocation(line: 528, column: 11, scope: !405)
!408 = !DILocation(line: 528, column: 37, scope: !405)
!409 = !DILocation(line: 528, column: 11, scope: !406)
!410 = !DILocation(line: 529, column: 14, scope: !411)
!411 = distinct !DILexicalBlock(scope: !405, file: !34, line: 528, column: 44)
!412 = !DILocation(line: 530, column: 7, scope: !411)
!413 = !DILocation(line: 531, column: 4, scope: !406)
!414 = !DILocation(line: 533, column: 15, scope: !386)
!415 = !DILocation(line: 533, column: 4, scope: !386)
!416 = !DILocation(line: 535, column: 11, scope: !386)
!417 = !DILocation(line: 535, column: 4, scope: !386)
!418 = distinct !DISubprogram(name: "FileIO_IsSuccess", scope: !4, file: !4, line: 514, type: !419, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!419 = !DISubroutineType(types: !420)
!420 = !{!421, !39}
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !337, line: 230, baseType: !29)
!422 = !DILocalVariable(name: "res", arg: 1, scope: !418, file: !4, line: 514, type: !39)
!423 = !DILocation(line: 514, column: 31, scope: !418)
!424 = !DILocation(line: 516, column: 11, scope: !418)
!425 = !DILocation(line: 516, column: 15, scope: !418)
!426 = !DILocation(line: 516, column: 4, scope: !418)
!427 = distinct !DISubprogram(name: "FileIO_Pread", scope: !34, file: !34, line: 561, type: !428, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!428 = !DISubroutineType(types: !429)
!429 = !{!39, !131, !27, !430, !433}
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !431, line: 216, baseType: !432)
!431 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!432 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !337, line: 171, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !435, line: 55, baseType: !432)
!435 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!436 = !DILocalVariable(name: "fd", arg: 1, scope: !427, file: !34, line: 561, type: !131)
!437 = !DILocation(line: 561, column: 32, scope: !427)
!438 = !DILocalVariable(name: "buf", arg: 2, scope: !427, file: !34, line: 562, type: !27)
!439 = !DILocation(line: 562, column: 20, scope: !427)
!440 = !DILocalVariable(name: "len", arg: 3, scope: !427, file: !34, line: 563, type: !430)
!441 = !DILocation(line: 563, column: 21, scope: !427)
!442 = !DILocalVariable(name: "offset", arg: 4, scope: !427, file: !34, line: 564, type: !433)
!443 = !DILocation(line: 564, column: 21, scope: !427)
!444 = !DILocalVariable(name: "iov", scope: !427, file: !34, line: 566, type: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !446, line: 43, size: 128, align: 64, elements: !447)
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/uio.h", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !445, file: !446, line: 45, baseType: !27, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !445, file: !446, line: 46, baseType: !430, size: 64, align: 64, offset: 64)
!450 = !DILocation(line: 566, column: 17, scope: !427)
!451 = !DILocation(line: 570, column: 19, scope: !427)
!452 = !DILocation(line: 570, column: 8, scope: !427)
!453 = !DILocation(line: 570, column: 17, scope: !427)
!454 = !DILocation(line: 571, column: 18, scope: !427)
!455 = !DILocation(line: 571, column: 8, scope: !427)
!456 = !DILocation(line: 571, column: 16, scope: !427)
!457 = !DILocation(line: 573, column: 25, scope: !427)
!458 = !DILocation(line: 573, column: 38, scope: !427)
!459 = !DILocation(line: 573, column: 46, scope: !427)
!460 = !DILocation(line: 573, column: 11, scope: !427)
!461 = !DILocation(line: 573, column: 4, scope: !427)
!462 = distinct !DISubprogram(name: "FileIO_Pwrite", scope: !34, file: !34, line: 597, type: !463, isLocal: false, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!463 = !DISubroutineType(types: !464)
!464 = !{!39, !131, !465, !430, !433}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!467 = !DILocalVariable(name: "fd", arg: 1, scope: !462, file: !34, line: 597, type: !131)
!468 = !DILocation(line: 597, column: 33, scope: !462)
!469 = !DILocalVariable(name: "buf", arg: 2, scope: !462, file: !34, line: 598, type: !465)
!470 = !DILocation(line: 598, column: 27, scope: !462)
!471 = !DILocalVariable(name: "len", arg: 3, scope: !462, file: !34, line: 599, type: !430)
!472 = !DILocation(line: 599, column: 22, scope: !462)
!473 = !DILocalVariable(name: "offset", arg: 4, scope: !462, file: !34, line: 600, type: !433)
!474 = !DILocation(line: 600, column: 22, scope: !462)
!475 = !DILocalVariable(name: "iov", scope: !462, file: !34, line: 602, type: !445)
!476 = !DILocation(line: 602, column: 17, scope: !462)
!477 = !DILocation(line: 607, column: 27, scope: !462)
!478 = !DILocation(line: 607, column: 8, scope: !462)
!479 = !DILocation(line: 607, column: 17, scope: !462)
!480 = !DILocation(line: 608, column: 18, scope: !462)
!481 = !DILocation(line: 608, column: 8, scope: !462)
!482 = !DILocation(line: 608, column: 16, scope: !462)
!483 = !DILocation(line: 610, column: 26, scope: !462)
!484 = !DILocation(line: 610, column: 39, scope: !462)
!485 = !DILocation(line: 610, column: 47, scope: !462)
!486 = !DILocation(line: 610, column: 11, scope: !462)
!487 = !DILocation(line: 610, column: 4, scope: !462)
!488 = distinct !DISubprogram(name: "FileIO_AtomicTempPath", scope: !34, file: !34, line: 661, type: !489, isLocal: false, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!489 = !DISubroutineType(types: !490)
!490 = !{!28, !37}
!491 = !DILocalVariable(name: "path", arg: 1, scope: !488, file: !34, line: 661, type: !37)
!492 = !DILocation(line: 661, column: 35, scope: !488)
!493 = !DILocalVariable(name: "srcPath", scope: !488, file: !34, line: 663, type: !28)
!494 = !DILocation(line: 663, column: 10, scope: !488)
!495 = !DILocalVariable(name: "retPath", scope: !488, file: !34, line: 664, type: !28)
!496 = !DILocation(line: 664, column: 10, scope: !488)
!497 = !DILocation(line: 666, column: 28, scope: !488)
!498 = !DILocation(line: 666, column: 14, scope: !488)
!499 = !DILocation(line: 666, column: 12, scope: !488)
!500 = !DILocation(line: 667, column: 8, scope: !501)
!501 = distinct !DILexicalBlock(scope: !488, file: !34, line: 667, column: 8)
!502 = !DILocation(line: 667, column: 16, scope: !501)
!503 = !DILocation(line: 667, column: 8, scope: !488)
!504 = !DILocation(line: 668, column: 64, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !34, line: 667, column: 24)
!506 = !DILocation(line: 668, column: 7, scope: !505)
!507 = !DILocation(line: 669, column: 7, scope: !505)
!508 = !DILocation(line: 671, column: 27, scope: !488)
!509 = !DILocation(line: 671, column: 14, scope: !488)
!510 = !DILocation(line: 671, column: 12, scope: !488)
!511 = !DILocation(line: 672, column: 15, scope: !488)
!512 = !DILocation(line: 672, column: 4, scope: !488)
!513 = !DILocation(line: 674, column: 11, scope: !488)
!514 = !DILocation(line: 674, column: 4, scope: !488)
!515 = !DILocation(line: 675, column: 1, scope: !488)
!516 = distinct !DISubprogram(name: "FileIO_AtomicTempFile", scope: !34, file: !34, line: 697, type: !517, isLocal: false, isDefinition: true, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!517 = !DISubroutineType(types: !518)
!518 = !{!39, !131, !131}
!519 = !DILocalVariable(name: "fileFD", arg: 1, scope: !516, file: !34, line: 697, type: !131)
!520 = !DILocation(line: 697, column: 41, scope: !516)
!521 = !DILocalVariable(name: "tempFD", arg: 2, scope: !516, file: !34, line: 698, type: !131)
!522 = !DILocation(line: 698, column: 41, scope: !516)
!523 = !DILocalVariable(name: "tempPath", scope: !516, file: !34, line: 700, type: !28)
!524 = !DILocation(line: 700, column: 10, scope: !516)
!525 = !DILocalVariable(name: "permissions", scope: !516, file: !34, line: 701, type: !136)
!526 = !DILocation(line: 701, column: 8, scope: !516)
!527 = !DILocalVariable(name: "status", scope: !516, file: !34, line: 702, type: !39)
!528 = !DILocation(line: 702, column: 17, scope: !516)
!529 = !DILocalVariable(name: "ret", scope: !516, file: !34, line: 704, type: !136)
!530 = !DILocation(line: 704, column: 8, scope: !516)
!531 = !DILocalVariable(name: "stbuf", scope: !516, file: !34, line: 705, type: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !533, line: 46, size: 1152, align: 64, elements: !534)
!533 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!534 = !{!535, !538, !540, !542, !545, !547, !549, !550, !551, !553, !555, !557, !565, !566, !567}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !532, file: !533, line: 48, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !537, line: 124, baseType: !432)
!537 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!538 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !532, file: !533, line: 53, baseType: !539, size: 64, align: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !537, line: 127, baseType: !432)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !532, file: !533, line: 61, baseType: !541, size: 64, align: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !537, line: 130, baseType: !432)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !532, file: !533, line: 62, baseType: !543, size: 32, align: 32, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !537, line: 129, baseType: !544)
!544 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !532, file: !533, line: 64, baseType: !546, size: 32, align: 32, offset: 224)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !537, line: 125, baseType: !544)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !532, file: !533, line: 65, baseType: !548, size: 32, align: 32, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !537, line: 126, baseType: !544)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !532, file: !533, line: 67, baseType: !136, size: 32, align: 32, offset: 288)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !532, file: !533, line: 69, baseType: !536, size: 64, align: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !532, file: !533, line: 74, baseType: !552, size: 64, align: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !537, line: 131, baseType: !340)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !532, file: !533, line: 78, baseType: !554, size: 64, align: 64, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !537, line: 153, baseType: !340)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !532, file: !533, line: 80, baseType: !556, size: 64, align: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !537, line: 158, baseType: !340)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !532, file: !533, line: 91, baseType: !558, size: 128, align: 64, offset: 576)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !559, line: 120, size: 128, align: 64, elements: !560)
!559 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line201")
!560 = !{!561, !563}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !558, file: !559, line: 122, baseType: !562, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !537, line: 139, baseType: !340)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !558, file: !559, line: 123, baseType: !564, size: 64, align: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !537, line: 175, baseType: !340)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !532, file: !533, line: 92, baseType: !558, size: 128, align: 64, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !532, file: !533, line: 93, baseType: !558, size: 128, align: 64, offset: 832)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !532, file: !533, line: 106, baseType: !568, size: 192, align: 64, offset: 960)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 192, align: 64, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 3)
!571 = !DILocation(line: 705, column: 16, scope: !516)
!572 = !DILocation(line: 711, column: 53, scope: !516)
!573 = !DILocation(line: 711, column: 37, scope: !516)
!574 = !DILocation(line: 711, column: 15, scope: !575)
!575 = !DILexicalBlockFile(scope: !516, file: !34, discriminator: 1)
!576 = !DILocation(line: 711, column: 13, scope: !516)
!577 = !DILocation(line: 712, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !516, file: !34, line: 712, column: 8)
!579 = !DILocation(line: 712, column: 17, scope: !578)
!580 = !DILocation(line: 712, column: 8, scope: !516)
!581 = !DILocation(line: 713, column: 14, scope: !582)
!582 = distinct !DILexicalBlock(scope: !578, file: !34, line: 712, column: 25)
!583 = !DILocation(line: 714, column: 7, scope: !582)
!584 = !DILocation(line: 721, column: 14, scope: !585)
!585 = distinct !DILexicalBlock(scope: !516, file: !34, line: 721, column: 8)
!586 = !DILocation(line: 721, column: 22, scope: !585)
!587 = !DILocation(line: 721, column: 8, scope: !585)
!588 = !DILocation(line: 721, column: 8, scope: !516)
!589 = !DILocation(line: 723, column: 27, scope: !590)
!590 = distinct !DILexicalBlock(scope: !585, file: !34, line: 721, column: 38)
!591 = !DILocation(line: 723, column: 11, scope: !590)
!592 = !DILocation(line: 723, column: 37, scope: !593)
!593 = !DILexicalBlockFile(scope: !590, file: !34, discriminator: 1)
!594 = !DILocation(line: 723, column: 36, scope: !590)
!595 = !DILocation(line: 722, column: 7, scope: !590)
!596 = !DILocation(line: 724, column: 14, scope: !590)
!597 = !DILocation(line: 725, column: 7, scope: !590)
!598 = !DILocation(line: 727, column: 24, scope: !516)
!599 = !DILocation(line: 727, column: 16, scope: !516)
!600 = !DILocation(line: 730, column: 23, scope: !516)
!601 = !DILocation(line: 730, column: 10, scope: !516)
!602 = !DILocation(line: 730, column: 8, scope: !516)
!603 = !DILocation(line: 731, column: 8, scope: !604)
!604 = distinct !DILexicalBlock(scope: !516, file: !34, line: 731, column: 8)
!605 = !DILocation(line: 731, column: 12, scope: !604)
!606 = !DILocation(line: 731, column: 17, scope: !604)
!607 = !DILocation(line: 731, column: 21, scope: !608)
!608 = !DILexicalBlockFile(scope: !604, file: !34, discriminator: 1)
!609 = !DILocation(line: 731, column: 20, scope: !608)
!610 = !DILocation(line: 731, column: 25, scope: !608)
!611 = !DILocation(line: 731, column: 8, scope: !608)
!612 = !DILocation(line: 733, column: 26, scope: !613)
!613 = distinct !DILexicalBlock(scope: !604, file: !34, line: 731, column: 36)
!614 = !DILocation(line: 733, column: 25, scope: !613)
!615 = !DILocation(line: 732, column: 7, scope: !613)
!616 = !DILocation(line: 735, column: 4, scope: !613)
!617 = !DILocation(line: 738, column: 27, scope: !516)
!618 = !DILocation(line: 738, column: 35, scope: !516)
!619 = !DILocation(line: 740, column: 52, scope: !516)
!620 = !DILocation(line: 738, column: 13, scope: !516)
!621 = !DILocation(line: 738, column: 11, scope: !516)
!622 = !DILocation(line: 741, column: 26, scope: !623)
!623 = distinct !DILexicalBlock(scope: !516, file: !34, line: 741, column: 8)
!624 = !DILocation(line: 741, column: 9, scope: !623)
!625 = !DILocation(line: 741, column: 8, scope: !516)
!626 = !DILocation(line: 743, column: 45, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !34, line: 741, column: 35)
!628 = !DILocation(line: 743, column: 25, scope: !627)
!629 = !DILocation(line: 743, column: 54, scope: !627)
!630 = !DILocation(line: 743, column: 63, scope: !631)
!631 = !DILexicalBlockFile(scope: !627, file: !34, discriminator: 1)
!632 = !DILocation(line: 743, column: 62, scope: !627)
!633 = !DILocation(line: 742, column: 7, scope: !627)
!634 = !DILocation(line: 744, column: 7, scope: !627)
!635 = !DILocation(line: 757, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !516, file: !34, line: 757, column: 8)
!637 = !DILocation(line: 757, column: 8, scope: !516)
!638 = !DILocation(line: 758, column: 18, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !34, line: 758, column: 11)
!640 = distinct !DILexicalBlock(scope: !636, file: !34, line: 757, column: 29)
!641 = !DILocation(line: 758, column: 26, scope: !639)
!642 = !DILocation(line: 758, column: 39, scope: !639)
!643 = !DILocation(line: 758, column: 11, scope: !639)
!644 = !DILocation(line: 758, column: 11, scope: !640)
!645 = !DILocation(line: 760, column: 29, scope: !646)
!646 = distinct !DILexicalBlock(scope: !639, file: !34, line: 758, column: 49)
!647 = !DILocation(line: 760, column: 28, scope: !646)
!648 = !DILocation(line: 759, column: 10, scope: !646)
!649 = !DILocation(line: 761, column: 17, scope: !646)
!650 = !DILocation(line: 762, column: 10, scope: !646)
!651 = !DILocation(line: 764, column: 18, scope: !652)
!652 = distinct !DILexicalBlock(scope: !640, file: !34, line: 764, column: 11)
!653 = !DILocation(line: 764, column: 26, scope: !652)
!654 = !DILocation(line: 764, column: 39, scope: !652)
!655 = !DILocation(line: 764, column: 53, scope: !652)
!656 = !DILocation(line: 764, column: 11, scope: !652)
!657 = !DILocation(line: 764, column: 11, scope: !640)
!658 = !DILocation(line: 766, column: 29, scope: !659)
!659 = distinct !DILexicalBlock(scope: !652, file: !34, line: 764, column: 62)
!660 = !DILocation(line: 766, column: 28, scope: !659)
!661 = !DILocation(line: 765, column: 10, scope: !659)
!662 = !DILocation(line: 767, column: 17, scope: !659)
!663 = !DILocation(line: 768, column: 10, scope: !659)
!664 = !DILocation(line: 770, column: 4, scope: !640)
!665 = !DILocation(line: 773, column: 15, scope: !516)
!666 = !DILocation(line: 773, column: 4, scope: !516)
!667 = !DILocation(line: 774, column: 4, scope: !516)
!668 = !DILocation(line: 778, column: 23, scope: !669)
!669 = distinct !DILexicalBlock(scope: !516, file: !34, line: 778, column: 8)
!670 = !DILocation(line: 778, column: 8, scope: !669)
!671 = !DILocation(line: 778, column: 8, scope: !516)
!672 = !DILocation(line: 779, column: 20, scope: !673)
!673 = distinct !DILexicalBlock(scope: !669, file: !34, line: 778, column: 32)
!674 = !DILocation(line: 779, column: 7, scope: !673)
!675 = !DILocation(line: 783, column: 26, scope: !673)
!676 = !DILocation(line: 783, column: 13, scope: !673)
!677 = !DILocation(line: 783, column: 11, scope: !673)
!678 = !DILocation(line: 784, column: 11, scope: !679)
!679 = distinct !DILexicalBlock(scope: !673, file: !34, line: 784, column: 11)
!680 = !DILocation(line: 784, column: 15, scope: !679)
!681 = !DILocation(line: 784, column: 11, scope: !673)
!682 = !DILocation(line: 786, column: 29, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !34, line: 784, column: 21)
!684 = !DILocation(line: 786, column: 28, scope: !683)
!685 = !DILocation(line: 785, column: 10, scope: !683)
!686 = !DILocation(line: 787, column: 7, scope: !683)
!687 = !DILocation(line: 790, column: 4, scope: !673)
!688 = !DILocation(line: 791, column: 15, scope: !516)
!689 = !DILocation(line: 791, column: 4, scope: !516)
!690 = !DILocation(line: 792, column: 11, scope: !516)
!691 = !DILocation(line: 792, column: 4, scope: !516)
!692 = !DILocation(line: 793, column: 1, scope: !516)
!693 = distinct !DISubprogram(name: "FileIO_AtomicUpdateEx", scope: !34, file: !34, line: 830, type: !694, isLocal: false, isDefinition: true, scopeLine: 833, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!694 = !DISubroutineType(types: !695)
!695 = !{!136, !131, !131, !421}
!696 = !DILocalVariable(name: "newFD", arg: 1, scope: !693, file: !34, line: 830, type: !131)
!697 = !DILocation(line: 830, column: 41, scope: !693)
!698 = !DILocalVariable(name: "currFD", arg: 2, scope: !693, file: !34, line: 831, type: !131)
!699 = !DILocation(line: 831, column: 41, scope: !693)
!700 = !DILocalVariable(name: "renameOnNFS", arg: 3, scope: !693, file: !34, line: 832, type: !421)
!701 = !DILocation(line: 832, column: 28, scope: !693)
!702 = !DILocalVariable(name: "currPath", scope: !693, file: !34, line: 834, type: !28)
!703 = !DILocation(line: 834, column: 10, scope: !693)
!704 = !DILocalVariable(name: "newPath", scope: !693, file: !34, line: 835, type: !28)
!705 = !DILocation(line: 835, column: 10, scope: !693)
!706 = !DILocalVariable(name: "fd", scope: !693, file: !34, line: 842, type: !136)
!707 = !DILocation(line: 842, column: 8, scope: !693)
!708 = !DILocalVariable(name: "savedErrno", scope: !693, file: !34, line: 844, type: !136)
!709 = !DILocation(line: 844, column: 8, scope: !693)
!710 = !DILocalVariable(name: "ret", scope: !693, file: !34, line: 845, type: !136)
!711 = !DILocation(line: 845, column: 8, scope: !693)
!712 = !DILocation(line: 850, column: 8, scope: !713)
!713 = distinct !DILexicalBlock(scope: !693, file: !34, line: 850, column: 8)
!714 = !DILocation(line: 850, column: 8, scope: !693)
!715 = !DILocation(line: 954, column: 7, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !34, line: 850, column: 28)
!717 = !DILocation(line: 1011, column: 39, scope: !693)
!718 = !DILocation(line: 1011, column: 23, scope: !693)
!719 = !DILocation(line: 1011, column: 13, scope: !693)
!720 = !DILocation(line: 1012, column: 38, scope: !693)
!721 = !DILocation(line: 1012, column: 22, scope: !693)
!722 = !DILocation(line: 1012, column: 12, scope: !693)
!723 = !DILocation(line: 1014, column: 20, scope: !724)
!724 = distinct !DILexicalBlock(scope: !693, file: !34, line: 1014, column: 8)
!725 = !DILocation(line: 1014, column: 29, scope: !724)
!726 = !DILocation(line: 1014, column: 8, scope: !724)
!727 = !DILocation(line: 1014, column: 8, scope: !693)
!728 = !DILocation(line: 1016, column: 25, scope: !729)
!729 = distinct !DILexicalBlock(scope: !724, file: !34, line: 1014, column: 40)
!730 = !DILocation(line: 1016, column: 34, scope: !729)
!731 = !DILocation(line: 1016, column: 45, scope: !729)
!732 = !DILocation(line: 1016, column: 44, scope: !729)
!733 = !DILocation(line: 1015, column: 7, scope: !729)
!734 = !DILocation(line: 1017, column: 25, scope: !729)
!735 = !DILocation(line: 1017, column: 24, scope: !729)
!736 = !DILocation(line: 1017, column: 22, scope: !729)
!737 = !DILocation(line: 1018, column: 4, scope: !729)
!738 = !DILocation(line: 1019, column: 11, scope: !739)
!739 = distinct !DILexicalBlock(scope: !724, file: !34, line: 1018, column: 11)
!740 = !DILocation(line: 1020, column: 12, scope: !739)
!741 = !DILocation(line: 1020, column: 19, scope: !739)
!742 = !DILocation(line: 1020, column: 10, scope: !739)
!743 = !DILocation(line: 1021, column: 22, scope: !739)
!744 = !DILocation(line: 1021, column: 30, scope: !739)
!745 = !DILocation(line: 1021, column: 7, scope: !739)
!746 = !DILocation(line: 1021, column: 14, scope: !739)
!747 = !DILocation(line: 1021, column: 20, scope: !739)
!748 = !DILocation(line: 1022, column: 23, scope: !739)
!749 = !DILocation(line: 1022, column: 7, scope: !739)
!750 = !DILocation(line: 1022, column: 15, scope: !739)
!751 = !DILocation(line: 1022, column: 21, scope: !739)
!752 = !DILocation(line: 1023, column: 20, scope: !739)
!753 = !DILocation(line: 1023, column: 7, scope: !739)
!754 = !DILocation(line: 1026, column: 11, scope: !693)
!755 = !DILocation(line: 1026, column: 5, scope: !693)
!756 = !DILocation(line: 1026, column: 9, scope: !693)
!757 = !DILocation(line: 1028, column: 11, scope: !693)
!758 = !DILocation(line: 1028, column: 4, scope: !693)
!759 = distinct !DISubprogram(name: "FileIO_AtomicUpdate", scope: !34, file: !34, line: 1051, type: !760, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!760 = !DISubroutineType(types: !761)
!761 = !{!421, !131, !131}
!762 = !DILocalVariable(name: "newFD", arg: 1, scope: !759, file: !34, line: 1051, type: !131)
!763 = !DILocation(line: 1051, column: 39, scope: !759)
!764 = !DILocalVariable(name: "currFD", arg: 2, scope: !759, file: !34, line: 1052, type: !131)
!765 = !DILocation(line: 1052, column: 39, scope: !759)
!766 = !DILocation(line: 1054, column: 33, scope: !759)
!767 = !DILocation(line: 1054, column: 40, scope: !759)
!768 = !DILocation(line: 1054, column: 11, scope: !759)
!769 = !DILocation(line: 1054, column: 51, scope: !759)
!770 = !DILocation(line: 1054, column: 4, scope: !759)
