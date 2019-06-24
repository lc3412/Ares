; ModuleID = './file.o.i'
source_filename = "./file.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Atomic_uint64 = type { i64 }
%struct.rqContext = type opaque
%struct.FileData = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.FileIODescriptor = type { i32, i32, i8*, %struct.FileLockToken* }
%struct.FileLockToken = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.MXUserExclLock = type opaque

@FileLockGetMachineID.atomic = internal global %struct.Atomic_uint64 zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"uuid=%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"uuid=\00", align 1
@File_IsOsfsVolumeEmpty.vmfsSystemFilesuffix = internal constant [4 x i8] c".sf\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"@&!*@*@(msg.File.CopyFromFdToFd.read.failure)Read error: %s.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"@&!*@*@(msg.File.CopyFromFdToFd.write.failure)Write error: %s.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"@&!*@*@(msg.File.CopyTree.source.notDirectory)Source path '%s' is not a directory.\00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"@&!*@*@(msg.File.CopyTree.dest.notDirectory)Destination path '%s' is not a directory.\00", align 1
@.str.6 = private unnamed_addr constant [89 x i8] c"@&!*@*@(msg.File.CopyFromFdToName.create.failure)Unable to create a new '%s' file: %s.\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [85 x i8] c"@&!*@*@(msg.File.CopyFromFdToName.close.failure)Unable to close the '%s' file: %s.\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [87 x i8] c"@&!*@*@(msg.File.Copy.open.failure)Unable to open the '%s' file for read access: %s.\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"@&!*@*@(msg.File.Copy.close.failure)Unable to close the '%s' file: %s.\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [83 x i8] c"@&!*@*@(msg.File.MoveTree.source.notDirectory)Source path '%s' is not a directory.\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"@&!*@*@(msg.File.MoveTree.dst.couldntCreate)Could not create '%s'.\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"@&!*@*@(msg.File.MoveTree.statFailed)%d:Failed to stat destination '%s'.\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [92 x i8] c"@&!*@*@(msg.File.MoveTree.dest.notDirectory)The destination path '%s' is not a directory.\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [144 x i8] c"@&!*@*@(msg.File.MoveTree.dst.insufficientSpace)There is not enough space in the file system to move the directory tree. Free %s and try again.\00", align 1
@.str.15 = private unnamed_addr constant [111 x i8] c"@&!*@*@(msg.File.MoveTree.cleanupFailed)Forced to copy '%s' into '%s' but unable to remove source directory.\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [98 x i8] c"@&!*@*@(msg.File.MoveTree.copyFailed)Could not rename and failed to copy source directory '%s'.\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"FILE: %s: Failure on '%s'. Error = %d\0A\00", align 1
@__FUNCTION__.File_CreateDirectoryHierarchyEx = private unnamed_addr constant [32 x i8] c"File_CreateDirectoryHierarchyEx\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"%s%s%s%s%s\00", align 1
@FileSimpleRandom.lckStorage = internal global %struct.Atomic_uint64 zeroinitializer, align 8
@FileSimpleRandom.context = internal global %struct.rqContext* null, align 8
@.str.23 = private unnamed_addr constant [21 x i8] c"fileSimpleRandomLock\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GetOldMachineID.atomic = internal global %struct.Atomic_uint64 zeroinitializer, align 8
@.str.25 = private unnamed_addr constant [39 x i8] c"%s: unexpected decode problem #1 (%s)\0A\00", align 1
@__FUNCTION__.OldMachineIDMatch = private unnamed_addr constant [18 x i8] c"OldMachineIDMatch\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"%s: unexpected decode problem #2 (%s)\0A\00", align 1
@.str.27 = private unnamed_addr constant [83 x i8] c"@&!*@*@(msg.File.CopyTree.walk.failure)Unable to access '%s' when copying files.\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [79 x i8] c"@&!*@*@(msg.File.CopyTree.symlink.failure)Unable to symlink '%s' to '%s': %s\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [73 x i8] c"@&!*@*@(msg.File.CopyTree.copy.failure)Unable to copy '%s' to '%s': %s\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [95 x i8] c"@&!*@*@(msg.File.CopyTree.stat.failure)Unable to get information on '%s' when copying files.\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"FILE: %s: failed to get full path for '%s'.\0A\00", align 1
@__FUNCTION__.FileRotateByRenumber = private unnamed_addr constant [21 x i8] c"FileRotateByRenumber\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"FILE: %s: failed to get base name for path '%s'.\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"%s-%%d%s%%n\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"FILE: %s: failed to read the directory '%s'.\0A\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"%s/%s-%d%s\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"FILE: %s: failed to rename %s -> %s failed: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"FILE: %s: failed to remove %s: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"%s-%d%s\00", align 1
@__FUNCTION__.FileRotateByRename = private unnamed_addr constant [19 x i8] c"FileRotateByRename\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"FILE: %s: failed to rename %s -> %s: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @File_Exists(i8*) #0 !dbg !105 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !106, metadata !107), !dbg !108
  %3 = load i8*, i8** %2, align 8, !dbg !109
  %4 = call i32 @FileIO_Access(i8* %3, i32 8), !dbg !110
  %5 = call signext i8 @FileIO_IsSuccess(i32 %4), !dbg !111
  ret i8 %5, !dbg !113
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @FileIO_IsSuccess(i32) #2 !dbg !114 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !118, metadata !107), !dbg !119
  %3 = load i32, i32* %2, align 4, !dbg !120
  %4 = icmp eq i32 %3, 0, !dbg !121
  %5 = zext i1 %4 to i32, !dbg !121
  %6 = trunc i32 %5 to i8, !dbg !120
  ret i8 %6, !dbg !122
}

declare i32 @FileIO_Access(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @File_UnlinkIfExists(i8*) #0 !dbg !123 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !126, metadata !107), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %3, metadata !128, metadata !107), !dbg !129
  %4 = load i8*, i8** %2, align 8, !dbg !130
  %5 = call i32 @FileDeletion(i8* %4, i8 signext 1), !dbg !131
  store i32 %5, i32* %3, align 4, !dbg !129
  %6 = load i32, i32* %3, align 4, !dbg !132
  %7 = icmp ne i32 %6, 0, !dbg !134
  br i1 %7, label %8, label %12, !dbg !135

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !136
  %10 = icmp eq i32 %9, 2, !dbg !138
  %11 = select i1 %10, i32 0, i32 -1, !dbg !139
  store i32 %11, i32* %3, align 4, !dbg !140
  br label %12, !dbg !141

; <label>:12:                                     ; preds = %8, %1
  %13 = load i32, i32* %3, align 4, !dbg !142
  ret i32 %13, !dbg !143
}

declare i32 @FileDeletion(i8*, i8 signext) #3

; Function Attrs: nounwind uwtable
define signext i8 @File_SupportsMandatoryLock(i8*) #0 !dbg !144 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !145, metadata !107), !dbg !146
  %3 = call signext i8 @HostType_OSIsVMK(), !dbg !147
  ret i8 %3, !dbg !148
}

declare signext i8 @HostType_OSIsVMK() #3

; Function Attrs: nounwind uwtable
define signext i8 @File_IsDirectory(i8*) #0 !dbg !149 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.FileData, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !150, metadata !107), !dbg !151
  call void @llvm.dbg.declare(metadata %struct.FileData* %3, metadata !152, metadata !107), !dbg !165
  %4 = load i8*, i8** %2, align 8, !dbg !166
  %5 = call i32 @FileAttributes(i8* %4, %struct.FileData* %3), !dbg !167
  %6 = icmp eq i32 %5, 0, !dbg !168
  br i1 %6, label %7, label %11, !dbg !169

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.FileData, %struct.FileData* %3, i32 0, i32 4, !dbg !170
  %9 = load i32, i32* %8, align 8, !dbg !170
  %10 = icmp eq i32 %9, 1, !dbg !171
  br label %11

; <label>:11:                                     ; preds = %7, %1
  %12 = phi i1 [ false, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32, !dbg !172
  %14 = trunc i32 %13 to i8, !dbg !174
  ret i8 %14, !dbg !175
}

declare i32 @FileAttributes(i8*, %struct.FileData*) #3

; Function Attrs: nounwind uwtable
define signext i8 @File_GetFilePermissions(i8*, i32*) #0 !dbg !176 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.FileData, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !180, metadata !107), !dbg !181
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !182, metadata !107), !dbg !183
  call void @llvm.dbg.declare(metadata %struct.FileData* %6, metadata !184, metadata !107), !dbg !185
  %7 = load i8*, i8** %4, align 8, !dbg !186
  %8 = call i32 @FileAttributes(i8* %7, %struct.FileData* %6), !dbg !188
  %9 = icmp ne i32 %8, 0, !dbg !189
  br i1 %9, label %10, label %11, !dbg !190

; <label>:10:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !191
  br label %15, !dbg !191

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.FileData, %struct.FileData* %6, i32 0, i32 5, !dbg !193
  %13 = load i32, i32* %12, align 4, !dbg !193
  %14 = load i32*, i32** %5, align 8, !dbg !194
  store i32 %13, i32* %14, align 4, !dbg !195
  store i8 1, i8* %3, align 1, !dbg !196
  br label %15, !dbg !196

; <label>:15:                                     ; preds = %11, %10
  %16 = load i8, i8* %3, align 1, !dbg !197
  ret i8 %16, !dbg !197
}

; Function Attrs: nounwind uwtable
define i32 @File_Unlink(i8*) #0 !dbg !198 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !199, metadata !107), !dbg !200
  %3 = load i8*, i8** %2, align 8, !dbg !201
  %4 = call i32 @FileDeletion(i8* %3, i8 signext 1), !dbg !202
  %5 = icmp eq i32 %4, 0, !dbg !203
  %6 = select i1 %5, i32 0, i32 -1, !dbg !204
  ret i32 %6, !dbg !205
}

; Function Attrs: nounwind uwtable
define i32 @File_UnlinkNoFollow(i8*) #0 !dbg !206 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !207, metadata !107), !dbg !208
  %3 = load i8*, i8** %2, align 8, !dbg !209
  %4 = call i32 @FileDeletion(i8* %3, i8 signext 0), !dbg !210
  %5 = icmp eq i32 %4, 0, !dbg !211
  %6 = select i1 %5, i32 0, i32 -1, !dbg !212
  ret i32 %6, !dbg !213
}

; Function Attrs: nounwind uwtable
define i32 @File_UnlinkRetry(i8*, i32) #0 !dbg !214 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !217, metadata !107), !dbg !218
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !219, metadata !107), !dbg !220
  call void @llvm.dbg.declare(metadata i32* %5, metadata !221, metadata !107), !dbg !222
  %6 = load i8*, i8** %3, align 8, !dbg !223
  %7 = call i32 @FileDeletion(i8* %6, i8 signext 1), !dbg !226
  store i32 %7, i32* %5, align 4, !dbg !227
  %8 = load i32, i32* %5, align 4, !dbg !228
  %9 = icmp eq i32 %8, 0, !dbg !229
  %10 = select i1 %9, i32 0, i32 -1, !dbg !228
  ret i32 %10, !dbg !230
}

; Function Attrs: nounwind uwtable
define signext i8 @File_CreateDirectoryEx(i8*, i32) #0 !dbg !231 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !234, metadata !107), !dbg !235
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !236, metadata !107), !dbg !237
  call void @llvm.dbg.declare(metadata i32* %5, metadata !238, metadata !107), !dbg !239
  %6 = load i8*, i8** %3, align 8, !dbg !240
  %7 = load i32, i32* %4, align 4, !dbg !241
  %8 = call i32 @FileCreateDirectory(i8* %6, i32 %7), !dbg !242
  store i32 %8, i32* %5, align 4, !dbg !239
  %9 = load i32, i32* %5, align 4, !dbg !243
  %10 = icmp eq i32 %9, 0, !dbg !244
  %11 = zext i1 %10 to i32, !dbg !244
  %12 = trunc i32 %11 to i8, !dbg !243
  ret i8 %12, !dbg !245
}

declare i32 @FileCreateDirectory(i8*, i32) #3

; Function Attrs: nounwind uwtable
define signext i8 @File_CreateDirectory(i8*) #0 !dbg !246 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !247, metadata !107), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %3, metadata !249, metadata !107), !dbg !250
  %4 = load i8*, i8** %2, align 8, !dbg !251
  %5 = call i32 @FileCreateDirectory(i8* %4, i32 511), !dbg !252
  store i32 %5, i32* %3, align 4, !dbg !250
  %6 = load i32, i32* %3, align 4, !dbg !253
  %7 = icmp eq i32 %6, 0, !dbg !254
  %8 = zext i1 %7 to i32, !dbg !254
  %9 = trunc i32 %8 to i8, !dbg !253
  ret i8 %9, !dbg !255
}

; Function Attrs: nounwind uwtable
define signext i8 @File_EnsureDirectoryEx(i8*, i32) #0 !dbg !256 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.FileData, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !257, metadata !107), !dbg !258
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !259, metadata !107), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %5, metadata !261, metadata !107), !dbg !262
  %7 = load i8*, i8** %3, align 8, !dbg !263
  %8 = load i32, i32* %4, align 4, !dbg !264
  %9 = call i32 @FileCreateDirectory(i8* %7, i32 %8), !dbg !265
  store i32 %9, i32* %5, align 4, !dbg !262
  %10 = load i32, i32* %5, align 4, !dbg !266
  %11 = icmp eq i32 %10, 17, !dbg !268
  br i1 %11, label %12, label %25, !dbg !269

; <label>:12:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.FileData* %6, metadata !270, metadata !107), !dbg !272
  %13 = load i8*, i8** %3, align 8, !dbg !273
  %14 = call i32 @FileAttributes(i8* %13, %struct.FileData* %6), !dbg !274
  store i32 %14, i32* %5, align 4, !dbg !275
  %15 = load i32, i32* %5, align 4, !dbg !276
  %16 = icmp eq i32 %15, 0, !dbg !278
  br i1 %16, label %17, label %24, !dbg !279

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.FileData, %struct.FileData* %6, i32 0, i32 4, !dbg !280
  %19 = load i32, i32* %18, align 8, !dbg !280
  %20 = icmp ne i32 %19, 1, !dbg !283
  br i1 %20, label %21, label %23, !dbg !284

; <label>:21:                                     ; preds = %17
  store i32 20, i32* %5, align 4, !dbg !285
  %22 = call i32* @__errno_location() #1, !dbg !287
  store i32 20, i32* %22, align 4, !dbg !288
  br label %23, !dbg !289

; <label>:23:                                     ; preds = %21, %17
  br label %24, !dbg !290

; <label>:24:                                     ; preds = %23, %12
  br label %25, !dbg !291

; <label>:25:                                     ; preds = %24, %2
  %26 = load i32, i32* %5, align 4, !dbg !292
  %27 = icmp eq i32 %26, 0, !dbg !293
  %28 = zext i1 %27 to i32, !dbg !293
  %29 = trunc i32 %28 to i8, !dbg !292
  ret i8 %29, !dbg !294
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define signext i8 @File_EnsureDirectory(i8*) #0 !dbg !295 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !296, metadata !107), !dbg !297
  %3 = load i8*, i8** %2, align 8, !dbg !298
  %4 = call signext i8 @File_EnsureDirectoryEx(i8* %3, i32 511), !dbg !299
  ret i8 %4, !dbg !300
}

; Function Attrs: nounwind uwtable
define signext i8 @File_DeleteEmptyDirectory(i8*) #0 !dbg !301 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !302, metadata !107), !dbg !303
  call void @llvm.dbg.declare(metadata i8* %3, metadata !304, metadata !107), !dbg !305
  store i8 1, i8* %3, align 1, !dbg !305
  %4 = load i8*, i8** %2, align 8, !dbg !306
  %5 = call i32 @FileRemoveDirectory(i8* %4), !dbg !308
  %6 = icmp ne i32 %5, 0, !dbg !309
  br i1 %6, label %7, label %8, !dbg !310

; <label>:7:                                      ; preds = %1
  store i8 0, i8* %3, align 1, !dbg !311
  br label %8, !dbg !313

; <label>:8:                                      ; preds = %7, %1
  %9 = load i8, i8* %3, align 1, !dbg !314
  ret i8 %9, !dbg !315
}

declare i32 @FileRemoveDirectory(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @FileLockGetMachineID() #0 !dbg !69 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !316, metadata !107), !dbg !317
  %4 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* @FileLockGetMachineID.atomic), !dbg !318
  store i8* %4, i8** %1, align 8, !dbg !319
  %5 = load i8*, i8** %1, align 8, !dbg !320
  %6 = icmp eq i8* %5, null, !dbg !322
  br i1 %6, label %7, label %49, !dbg !323

; <label>:7:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %2, metadata !324, metadata !107), !dbg !326
  call void @llvm.dbg.declare(metadata i8** %3, metadata !327, metadata !107), !dbg !328
  store i8* null, i8** %3, align 8, !dbg !329
  %8 = load i8*, i8** %3, align 8, !dbg !330
  %9 = icmp eq i8* %8, null, !dbg !332
  br i1 %9, label %10, label %13, !dbg !333

; <label>:10:                                     ; preds = %7
  %11 = call i8* @GetOldMachineID(), !dbg !334
  %12 = call i8* @UtilSafeStrdup0(i8* %11), !dbg !336
  store i8* %12, i8** %2, align 8, !dbg !338
  br label %41, !dbg !339

; <label>:13:                                     ; preds = %7
  %14 = load i8*, i8** %3, align 8, !dbg !340
  %15 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %14), !dbg !342
  store i8* %15, i8** %2, align 8, !dbg !343
  %16 = load i8*, i8** %3, align 8, !dbg !344
  call void @Posix_Free(i8* %16), !dbg !345
  %17 = load i8*, i8** %2, align 8, !dbg !346
  store i8* %17, i8** %3, align 8, !dbg !348
  br label %18, !dbg !349

; <label>:18:                                     ; preds = %37, %13
  %19 = load i8*, i8** %3, align 8, !dbg !350
  %20 = load i8, i8* %19, align 1, !dbg !353
  %21 = icmp ne i8 %20, 0, !dbg !354
  br i1 %21, label %22, label %40, !dbg !354

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %3, align 8, !dbg !355
  %24 = load i8, i8* %23, align 1, !dbg !358
  %25 = sext i8 %24 to i32, !dbg !359
  %26 = sext i32 %25 to i64, !dbg !360
  %27 = call i16** @__ctype_b_loc() #1, !dbg !361
  %28 = load i16*, i16** %27, align 8, !dbg !362
  %29 = getelementptr inbounds i16, i16* %28, i64 %26, !dbg !360
  %30 = load i16, i16* %29, align 2, !dbg !360
  %31 = zext i16 %30 to i32, !dbg !360
  %32 = and i32 %31, 8192, !dbg !363
  %33 = icmp ne i32 %32, 0, !dbg !363
  br i1 %33, label %34, label %36, !dbg !364

; <label>:34:                                     ; preds = %22
  %35 = load i8*, i8** %3, align 8, !dbg !365
  store i8 45, i8* %35, align 1, !dbg !367
  br label %36, !dbg !368

; <label>:36:                                     ; preds = %34, %22
  br label %37, !dbg !369

; <label>:37:                                     ; preds = %36
  %38 = load i8*, i8** %3, align 8, !dbg !370
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !370
  store i8* %39, i8** %3, align 8, !dbg !370
  br label %18, !dbg !372, !llvm.loop !373

; <label>:40:                                     ; preds = %18
  br label %41

; <label>:41:                                     ; preds = %40, %10
  %42 = load i8*, i8** %2, align 8, !dbg !375
  %43 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* @FileLockGetMachineID.atomic, i8* null, i8* %42), !dbg !377
  %44 = icmp ne i8* %43, null, !dbg !377
  br i1 %44, label %45, label %47, !dbg !378

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** %2, align 8, !dbg !379
  call void @Posix_Free(i8* %46), !dbg !381
  br label %47, !dbg !382

; <label>:47:                                     ; preds = %45, %41
  %48 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* @FileLockGetMachineID.atomic), !dbg !383
  store i8* %48, i8** %1, align 8, !dbg !384
  br label %49, !dbg !385

; <label>:49:                                     ; preds = %47, %0
  %50 = load i8*, i8** %1, align 8, !dbg !386
  ret i8* %50, !dbg !387
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #2 !dbg !388 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !393, metadata !107), !dbg !394
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !395
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !396
  %5 = inttoptr i64 %4 to i8*, !dbg !397
  ret i8* %5, !dbg !398
}

declare i8* @UtilSafeStrdup0(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @GetOldMachineID() #0 !dbg !101 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [17 x i8], align 16
  %6 = alloca [12 x i8], align 1
  call void @llvm.dbg.declare(metadata i8** %1, metadata !399, metadata !107), !dbg !400
  %7 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* @GetOldMachineID.atomic), !dbg !401
  store i8* %7, i8** %1, align 8, !dbg !402
  %8 = load i8*, i8** %1, align 8, !dbg !403
  %9 = icmp eq i8* %8, null, !dbg !405
  br i1 %9, label %10, label %44, !dbg !406

; <label>:10:                                     ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %2, metadata !407, metadata !107), !dbg !409
  call void @llvm.dbg.declare(metadata i32* %3, metadata !410, metadata !107), !dbg !411
  call void @llvm.dbg.declare(metadata i64* %4, metadata !412, metadata !107), !dbg !413
  call void @llvm.dbg.declare(metadata [17 x i8]* %5, metadata !414, metadata !107), !dbg !418
  call void @llvm.dbg.declare(metadata [12 x i8]* %6, metadata !419, metadata !107), !dbg !423
  call void @Hostinfo_MachineID(i32* %3, i64* %4), !dbg !424
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 0, !dbg !425
  %12 = bitcast i32* %3 to i8*, !dbg !425
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 4, i32 1, i1 false), !dbg !425
  %13 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 4, !dbg !426
  %14 = bitcast i64* %4 to i8*, !dbg !427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 1, i1 false), !dbg !427
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 0, !dbg !428
  %16 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i32 0, i32 0, !dbg !429
  %17 = call signext i8 @Base64_Encode(i8* %15, i64 12, i8* %16, i64 17, i64* null), !dbg !430
  %18 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i32 0, i32 0, !dbg !431
  store i8* %18, i8** %2, align 8, !dbg !433
  br label %19, !dbg !434

; <label>:19:                                     ; preds = %31, %10
  %20 = load i8*, i8** %2, align 8, !dbg !435
  %21 = load i8, i8* %20, align 1, !dbg !438
  %22 = icmp ne i8 %21, 0, !dbg !439
  br i1 %22, label %23, label %34, !dbg !439

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %2, align 8, !dbg !440
  %25 = load i8, i8* %24, align 1, !dbg !443
  %26 = sext i8 %25 to i32, !dbg !443
  %27 = icmp eq i32 %26, 47, !dbg !444
  br i1 %27, label %28, label %30, !dbg !445

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %2, align 8, !dbg !446
  store i8 45, i8* %29, align 1, !dbg !448
  br label %30, !dbg !449

; <label>:30:                                     ; preds = %28, %23
  br label %31, !dbg !450

; <label>:31:                                     ; preds = %30
  %32 = load i8*, i8** %2, align 8, !dbg !451
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !451
  store i8* %33, i8** %2, align 8, !dbg !451
  br label %19, !dbg !453, !llvm.loop !454

; <label>:34:                                     ; preds = %19
  %35 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i32 0, i32 0, !dbg !456
  %36 = call i8* @UtilSafeStrdup0(i8* %35), !dbg !457
  store i8* %36, i8** %2, align 8, !dbg !458
  %37 = load i8*, i8** %2, align 8, !dbg !459
  %38 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* @GetOldMachineID.atomic, i8* null, i8* %37), !dbg !461
  %39 = icmp ne i8* %38, null, !dbg !461
  br i1 %39, label %40, label %42, !dbg !462

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** %2, align 8, !dbg !463
  call void @Posix_Free(i8* %41), !dbg !465
  br label %42, !dbg !466

; <label>:42:                                     ; preds = %40, %34
  %43 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* @GetOldMachineID.atomic), !dbg !467
  store i8* %43, i8** %1, align 8, !dbg !468
  br label %44, !dbg !469

; <label>:44:                                     ; preds = %42, %0
  %45 = load i8*, i8** %1, align 8, !dbg !470
  ret i8* %45, !dbg !471
}

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @Posix_Free(i8*) #2 !dbg !472 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !476, metadata !107), !dbg !477
  call void @llvm.dbg.declare(metadata i32* %3, metadata !478, metadata !107), !dbg !479
  %4 = call i32* @__errno_location() #1, !dbg !480
  %5 = load i32, i32* %4, align 4, !dbg !481
  store i32 %5, i32* %3, align 4, !dbg !479
  %6 = load i8*, i8** %2, align 8, !dbg !482
  call void @free(i8* %6) #8, !dbg !483
  %7 = load i32, i32* %3, align 4, !dbg !484
  %8 = call i32* @__errno_location() #1, !dbg !485
  store i32 %7, i32* %8, align 4, !dbg !486
  ret void, !dbg !487
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64*, i8*, i8*) #2 !dbg !488 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !494, metadata !107), !dbg !495
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !496, metadata !107), !dbg !497
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !498, metadata !107), !dbg !499
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !500
  %8 = load i8*, i8** %5, align 8, !dbg !501
  %9 = ptrtoint i8* %8 to i64, !dbg !502
  %10 = load i8*, i8** %6, align 8, !dbg !503
  %11 = ptrtoint i8* %10 to i64, !dbg !504
  %12 = call i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64* %7, i64 %9, i64 %11), !dbg !505
  %13 = inttoptr i64 %12 to i8*, !dbg !506
  ret i8* %13, !dbg !507
}

; Function Attrs: nounwind uwtable
define signext i8 @FileLockMachineIDMatch(i8*, i8*) #0 !dbg !508 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !511, metadata !107), !dbg !512
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !513, metadata !107), !dbg !514
  %6 = load i8*, i8** %4, align 8, !dbg !515
  %7 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i64 5) #9, !dbg !517
  %8 = icmp eq i32 %7, 0, !dbg !518
  br i1 %8, label %9, label %26, !dbg !519

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %5, align 8, !dbg !520
  %11 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i64 5) #9, !dbg !523
  %12 = icmp eq i32 %11, 0, !dbg !524
  br i1 %12, label %13, label %22, !dbg !525

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %4, align 8, !dbg !526
  %15 = getelementptr inbounds i8, i8* %14, i64 5, !dbg !528
  %16 = load i8*, i8** %5, align 8, !dbg !529
  %17 = getelementptr inbounds i8, i8* %16, i64 5, !dbg !530
  %18 = call i32 @strcmp(i8* %15, i8* %17) #9, !dbg !531
  %19 = icmp eq i32 %18, 0, !dbg !532
  %20 = select i1 %19, i32 1, i32 0, !dbg !531
  %21 = trunc i32 %20 to i8, !dbg !531
  store i8 %21, i8* %3, align 1, !dbg !533
  br label %38, !dbg !533

; <label>:22:                                     ; preds = %9
  %23 = call i8* @GetOldMachineID(), !dbg !534
  %24 = load i8*, i8** %5, align 8, !dbg !536
  %25 = call signext i8 @OldMachineIDMatch(i8* %23, i8* %24), !dbg !537
  store i8 %25, i8* %3, align 1, !dbg !539
  br label %38, !dbg !539

; <label>:26:                                     ; preds = %2
  %27 = load i8*, i8** %5, align 8, !dbg !540
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i64 5) #9, !dbg !543
  %29 = icmp eq i32 %28, 0, !dbg !544
  br i1 %29, label %30, label %31, !dbg !545

; <label>:30:                                     ; preds = %26
  store i8 0, i8* %3, align 1, !dbg !546
  br label %38, !dbg !546

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !548
  %33 = load i8*, i8** %5, align 8, !dbg !550
  %34 = call i32 @strcmp(i8* %32, i8* %33) #9, !dbg !551
  %35 = icmp eq i32 %34, 0, !dbg !552
  %36 = select i1 %35, i32 1, i32 0, !dbg !551
  %37 = trunc i32 %36 to i8, !dbg !551
  store i8 %37, i8* %3, align 1, !dbg !553
  br label %38, !dbg !553

; <label>:38:                                     ; preds = %31, %30, %22, %13
  %39 = load i8, i8* %3, align 1, !dbg !554
  ret i8 %39, !dbg !554
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal signext i8 @OldMachineIDMatch(i8*, i8*) #0 !dbg !555 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca [12 x i8], align 1
  %11 = alloca [12 x i8], align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !556, metadata !107), !dbg !557
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !558, metadata !107), !dbg !559
  call void @llvm.dbg.declare(metadata i8** %6, metadata !560, metadata !107), !dbg !561
  call void @llvm.dbg.declare(metadata i8** %7, metadata !562, metadata !107), !dbg !563
  call void @llvm.dbg.declare(metadata i64* %8, metadata !564, metadata !107), !dbg !567
  call void @llvm.dbg.declare(metadata i8* %9, metadata !568, metadata !107), !dbg !569
  call void @llvm.dbg.declare(metadata [12 x i8]* %10, metadata !570, metadata !107), !dbg !575
  call void @llvm.dbg.declare(metadata [12 x i8]* %11, metadata !576, metadata !107), !dbg !577
  %12 = load i8*, i8** %4, align 8, !dbg !578
  %13 = call i8* @UtilSafeStrdup0(i8* %12), !dbg !580
  store i8* %13, i8** %6, align 8, !dbg !581
  %14 = load i8*, i8** %6, align 8, !dbg !582
  store i8* %14, i8** %7, align 8, !dbg !583
  br label %15, !dbg !584

; <label>:15:                                     ; preds = %27, %2
  %16 = load i8*, i8** %6, align 8, !dbg !585
  %17 = load i8, i8* %16, align 1, !dbg !588
  %18 = icmp ne i8 %17, 0, !dbg !589
  br i1 %18, label %19, label %30, !dbg !589

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %6, align 8, !dbg !590
  %21 = load i8, i8* %20, align 1, !dbg !593
  %22 = sext i8 %21 to i32, !dbg !593
  %23 = icmp eq i32 %22, 45, !dbg !594
  br i1 %23, label %24, label %26, !dbg !595

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %6, align 8, !dbg !596
  store i8 47, i8* %25, align 1, !dbg !598
  br label %26, !dbg !599

; <label>:26:                                     ; preds = %24, %19
  br label %27, !dbg !600

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %6, align 8, !dbg !601
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !601
  store i8* %29, i8** %6, align 8, !dbg !601
  br label %15, !dbg !603, !llvm.loop !604

; <label>:30:                                     ; preds = %15
  %31 = load i8*, i8** %7, align 8, !dbg !606
  %32 = getelementptr inbounds [12 x i8], [12 x i8]* %10, i32 0, i32 0, !dbg !607
  %33 = call signext i8 @Base64_Decode(i8* %31, i8* %32, i64 12, i64* %8), !dbg !608
  store i8 %33, i8* %9, align 1, !dbg !609
  %34 = load i8*, i8** %7, align 8, !dbg !610
  call void @Posix_Free(i8* %34), !dbg !611
  %35 = load i8, i8* %9, align 1, !dbg !612
  %36 = sext i8 %35 to i32, !dbg !612
  %37 = icmp eq i32 %36, 0, !dbg !614
  br i1 %37, label %41, label %38, !dbg !615

; <label>:38:                                     ; preds = %30
  %39 = load i64, i64* %8, align 8, !dbg !616
  %40 = icmp ne i64 %39, 12, !dbg !618
  br i1 %40, label %41, label %43, !dbg !619

; <label>:41:                                     ; preds = %38, %30
  %42 = load i8*, i8** %4, align 8, !dbg !620
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.OldMachineIDMatch, i32 0, i32 0), i8* %42), !dbg !622
  store i8 0, i8* %3, align 1, !dbg !623
  br label %82, !dbg !623

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %5, align 8, !dbg !624
  %45 = call i8* @UtilSafeStrdup0(i8* %44), !dbg !626
  store i8* %45, i8** %6, align 8, !dbg !627
  %46 = load i8*, i8** %6, align 8, !dbg !628
  store i8* %46, i8** %7, align 8, !dbg !629
  br label %47, !dbg !630

; <label>:47:                                     ; preds = %59, %43
  %48 = load i8*, i8** %6, align 8, !dbg !631
  %49 = load i8, i8* %48, align 1, !dbg !634
  %50 = icmp ne i8 %49, 0, !dbg !635
  br i1 %50, label %51, label %62, !dbg !635

; <label>:51:                                     ; preds = %47
  %52 = load i8*, i8** %6, align 8, !dbg !636
  %53 = load i8, i8* %52, align 1, !dbg !639
  %54 = sext i8 %53 to i32, !dbg !639
  %55 = icmp eq i32 %54, 45, !dbg !640
  br i1 %55, label %56, label %58, !dbg !641

; <label>:56:                                     ; preds = %51
  %57 = load i8*, i8** %6, align 8, !dbg !642
  store i8 47, i8* %57, align 1, !dbg !644
  br label %58, !dbg !645

; <label>:58:                                     ; preds = %56, %51
  br label %59, !dbg !646

; <label>:59:                                     ; preds = %58
  %60 = load i8*, i8** %6, align 8, !dbg !647
  %61 = getelementptr inbounds i8, i8* %60, i32 1, !dbg !647
  store i8* %61, i8** %6, align 8, !dbg !647
  br label %47, !dbg !649, !llvm.loop !650

; <label>:62:                                     ; preds = %47
  %63 = load i8*, i8** %7, align 8, !dbg !652
  %64 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i32 0, i32 0, !dbg !653
  %65 = call signext i8 @Base64_Decode(i8* %63, i8* %64, i64 12, i64* %8), !dbg !654
  store i8 %65, i8* %9, align 1, !dbg !655
  %66 = load i8*, i8** %7, align 8, !dbg !656
  call void @Posix_Free(i8* %66), !dbg !657
  %67 = load i8, i8* %9, align 1, !dbg !658
  %68 = sext i8 %67 to i32, !dbg !658
  %69 = icmp eq i32 %68, 0, !dbg !660
  br i1 %69, label %73, label %70, !dbg !661

; <label>:70:                                     ; preds = %62
  %71 = load i64, i64* %8, align 8, !dbg !662
  %72 = icmp ne i64 %71, 12, !dbg !664
  br i1 %72, label %73, label %75, !dbg !665

; <label>:73:                                     ; preds = %70, %62
  %74 = load i8*, i8** %5, align 8, !dbg !666
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.OldMachineIDMatch, i32 0, i32 0), i8* %74), !dbg !668
  store i8 0, i8* %3, align 1, !dbg !669
  br label %82, !dbg !669

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds [12 x i8], [12 x i8]* %10, i64 0, i64 4, !dbg !670
  %77 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 4, !dbg !671
  %78 = call i32 @memcmp(i8* %76, i8* %77, i64 8) #9, !dbg !672
  %79 = icmp eq i32 %78, 0, !dbg !673
  %80 = select i1 %79, i32 1, i32 0, !dbg !672
  %81 = trunc i32 %80 to i8, !dbg !672
  store i8 %81, i8* %3, align 1, !dbg !674
  br label %82, !dbg !674

; <label>:82:                                     ; preds = %75, %73, %41
  %83 = load i8, i8* %3, align 1, !dbg !675
  ret i8 %83, !dbg !675
}

; Function Attrs: nounwind uwtable
define signext i8 @File_IsEmptyDirectory(i8*) #0 !dbg !676 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !677, metadata !107), !dbg !678
  call void @llvm.dbg.declare(metadata i32* %4, metadata !679, metadata !107), !dbg !680
  %5 = load i8*, i8** %3, align 8, !dbg !681
  %6 = call signext i8 @File_IsDirectory(i8* %5), !dbg !683
  %7 = icmp ne i8 %6, 0, !dbg !683
  br i1 %7, label %9, label %8, !dbg !684

; <label>:8:                                      ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !685
  br label %20, !dbg !685

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !687
  %11 = call i32 @File_ListDirectory(i8* %10, i8*** null), !dbg !688
  store i32 %11, i32* %4, align 4, !dbg !689
  %12 = load i32, i32* %4, align 4, !dbg !690
  %13 = icmp slt i32 %12, 0, !dbg !692
  br i1 %13, label %14, label %15, !dbg !693

; <label>:14:                                     ; preds = %9
  store i8 0, i8* %2, align 1, !dbg !694
  br label %20, !dbg !694

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %4, align 4, !dbg !696
  %17 = icmp eq i32 %16, 0, !dbg !697
  %18 = zext i1 %17 to i32, !dbg !697
  %19 = trunc i32 %18 to i8, !dbg !696
  store i8 %19, i8* %2, align 1, !dbg !698
  br label %20, !dbg !698

; <label>:20:                                     ; preds = %15, %14, %8
  %21 = load i8, i8* %2, align 1, !dbg !699
  ret i8 %21, !dbg !699
}

declare i32 @File_ListDirectory(i8*, i8***) #3

; Function Attrs: nounwind uwtable
define signext i8 @File_IsOsfsVolumeEmpty(i8*) #0 !dbg !84 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !700, metadata !107), !dbg !701
  call void @llvm.dbg.declare(metadata i32* %4, metadata !702, metadata !107), !dbg !703
  call void @llvm.dbg.declare(metadata i32* %5, metadata !704, metadata !107), !dbg !705
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !706, metadata !107), !dbg !708
  store i8** null, i8*** %6, align 8, !dbg !708
  call void @llvm.dbg.declare(metadata i8* %7, metadata !709, metadata !107), !dbg !710
  store i8 1, i8* %7, align 1, !dbg !710
  %8 = load i8*, i8** %3, align 8, !dbg !711
  %9 = call i32 @File_ListDirectory(i8* %8, i8*** %6), !dbg !712
  store i32 %9, i32* %5, align 4, !dbg !713
  %10 = load i32, i32* %5, align 4, !dbg !714
  %11 = icmp eq i32 %10, -1, !dbg !716
  br i1 %11, label %12, label %13, !dbg !717

; <label>:12:                                     ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !718
  br label %36, !dbg !718

; <label>:13:                                     ; preds = %1
  store i32 0, i32* %4, align 4, !dbg !720
  br label %14, !dbg !722

; <label>:14:                                     ; preds = %28, %13
  %15 = load i32, i32* %4, align 4, !dbg !723
  %16 = load i32, i32* %5, align 4, !dbg !726
  %17 = icmp slt i32 %15, %16, !dbg !727
  br i1 %17, label %18, label %31, !dbg !728

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %4, align 4, !dbg !729
  %20 = sext i32 %19 to i64, !dbg !732
  %21 = load i8**, i8*** %6, align 8, !dbg !732
  %22 = getelementptr inbounds i8*, i8** %21, i64 %20, !dbg !732
  %23 = load i8*, i8** %22, align 8, !dbg !732
  %24 = call signext i8 @Unicode_EndsWith(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @File_IsOsfsVolumeEmpty.vmfsSystemFilesuffix, i32 0, i32 0)), !dbg !733
  %25 = icmp ne i8 %24, 0, !dbg !733
  br i1 %25, label %27, label %26, !dbg !734

; <label>:26:                                     ; preds = %18
  store i8 0, i8* %7, align 1, !dbg !735
  br label %31, !dbg !737

; <label>:27:                                     ; preds = %18
  br label %28, !dbg !738

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %4, align 4, !dbg !739
  %30 = add nsw i32 %29, 1, !dbg !739
  store i32 %30, i32* %4, align 4, !dbg !739
  br label %14, !dbg !741, !llvm.loop !742

; <label>:31:                                     ; preds = %26, %14
  %32 = load i8**, i8*** %6, align 8, !dbg !744
  %33 = load i32, i32* %5, align 4, !dbg !745
  %34 = sext i32 %33 to i64, !dbg !745
  call void @Util_FreeStringList(i8** %32, i64 %34), !dbg !746
  %35 = load i8, i8* %7, align 1, !dbg !747
  store i8 %35, i8* %2, align 1, !dbg !748
  br label %36, !dbg !748

; <label>:36:                                     ; preds = %31, %12
  %37 = load i8, i8* %2, align 1, !dbg !749
  ret i8 %37, !dbg !749
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @Unicode_EndsWith(i8*, i8*) #2 !dbg !750 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !752, metadata !107), !dbg !753
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !754, metadata !107), !dbg !755
  %5 = load i8*, i8** %3, align 8, !dbg !756
  %6 = load i8*, i8** %4, align 8, !dbg !757
  %7 = call signext i8 @UnicodeEndsWith(i8* %5, i8* %6, i8 signext 0), !dbg !758
  ret i8 %7, !dbg !759
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeStringList(i8**, i64) #2 !dbg !760 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !769, metadata !107), !dbg !770
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !771, metadata !107), !dbg !772
  %5 = load i8**, i8*** %3, align 8, !dbg !773
  %6 = load i64, i64* %4, align 8, !dbg !774
  call void @Util_FreeList(i8** %5, i64 %6), !dbg !775
  ret void, !dbg !776
}

; Function Attrs: nounwind uwtable
define signext i8 @File_IsFile(i8*) #0 !dbg !777 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.FileData, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !778, metadata !107), !dbg !779
  call void @llvm.dbg.declare(metadata %struct.FileData* %3, metadata !780, metadata !107), !dbg !781
  %4 = load i8*, i8** %2, align 8, !dbg !782
  %5 = call i32 @FileAttributes(i8* %4, %struct.FileData* %3), !dbg !783
  %6 = icmp eq i32 %5, 0, !dbg !784
  br i1 %6, label %7, label %11, !dbg !785

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.FileData, %struct.FileData* %3, i32 0, i32 4, !dbg !786
  %9 = load i32, i32* %8, align 8, !dbg !786
  %10 = icmp eq i32 %9, 0, !dbg !787
  br label %11

; <label>:11:                                     ; preds = %7, %1
  %12 = phi i1 [ false, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32, !dbg !788
  %14 = trunc i32 %13 to i8, !dbg !790
  ret i8 %14, !dbg !791
}

; Function Attrs: nounwind uwtable
define signext i8 @File_CopyFromFdToFd(%struct.FileIODescriptor* byval align 8, %struct.FileIODescriptor* byval align 8) #0 !dbg !792 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8192 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor* %0, metadata !804, metadata !107), !dbg !805
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor* %1, metadata !806, metadata !107), !dbg !807
  call void @llvm.dbg.declare(metadata i32* %4, metadata !808, metadata !107), !dbg !811
  call void @llvm.dbg.declare(metadata i32* %5, metadata !812, metadata !107), !dbg !813
  br label %9, !dbg !814, !llvm.loop !815

; <label>:9:                                      ; preds = %40, %2
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !816, metadata !107), !dbg !821
  call void @llvm.dbg.declare(metadata i64* %7, metadata !822, metadata !107), !dbg !823
  call void @llvm.dbg.declare(metadata i32* %8, metadata !824, metadata !107), !dbg !825
  %10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0, !dbg !826
  %11 = call i32 @FileIO_Read(%struct.FileIODescriptor* %0, i8* %10, i64 8192, i64* %7), !dbg !827
  store i32 %11, i32* %5, align 4, !dbg !828
  %12 = load i32, i32* %5, align 4, !dbg !829
  %13 = call signext i8 @FileIO_IsSuccess(i32 %12), !dbg !831
  %14 = icmp ne i8 %13, 0, !dbg !831
  br i1 %14, label %25, label %15, !dbg !832

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %5, align 4, !dbg !833
  %17 = icmp ne i32 %16, 5, !dbg !835
  br i1 %17, label %18, label %25, !dbg !836

; <label>:18:                                     ; preds = %15
  %19 = call i32* @__errno_location() #1, !dbg !837
  %20 = load i32, i32* %19, align 4, !dbg !839
  store i32 %20, i32* %4, align 4, !dbg !840
  %21 = load i32, i32* %5, align 4, !dbg !841
  %22 = call i8* @FileIO_MsgError(i32 %21), !dbg !842
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i32 0, i32 0), i8* %22), !dbg !843
  %23 = load i32, i32* %4, align 4, !dbg !844
  %24 = call i32* @__errno_location() #1, !dbg !845
  store i32 %23, i32* %24, align 4, !dbg !846
  store i8 0, i8* %3, align 1, !dbg !847
  br label %44, !dbg !847

; <label>:25:                                     ; preds = %15, %9
  %26 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0, !dbg !848
  %27 = load i64, i64* %7, align 8, !dbg !849
  %28 = call i32 @FileIO_Write(%struct.FileIODescriptor* %1, i8* %26, i64 %27, i64* null), !dbg !850
  store i32 %28, i32* %8, align 4, !dbg !851
  %29 = load i32, i32* %8, align 4, !dbg !852
  %30 = call signext i8 @FileIO_IsSuccess(i32 %29), !dbg !854
  %31 = icmp ne i8 %30, 0, !dbg !854
  br i1 %31, label %39, label %32, !dbg !855

; <label>:32:                                     ; preds = %25
  %33 = call i32* @__errno_location() #1, !dbg !856
  %34 = load i32, i32* %33, align 4, !dbg !858
  store i32 %34, i32* %4, align 4, !dbg !859
  %35 = load i32, i32* %8, align 4, !dbg !860
  %36 = call i8* @FileIO_MsgError(i32 %35), !dbg !861
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* %36), !dbg !862
  %37 = load i32, i32* %4, align 4, !dbg !863
  %38 = call i32* @__errno_location() #1, !dbg !864
  store i32 %37, i32* %38, align 4, !dbg !865
  store i8 0, i8* %3, align 1, !dbg !866
  br label %44, !dbg !866

; <label>:39:                                     ; preds = %25
  br label %40, !dbg !867

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %5, align 4, !dbg !868
  %42 = icmp ne i32 %41, 5, !dbg !870
  br i1 %42, label %9, label %43, !dbg !871, !llvm.loop !815

; <label>:43:                                     ; preds = %40
  store i8 1, i8* %3, align 1, !dbg !872
  br label %44, !dbg !872

; <label>:44:                                     ; preds = %43, %32, %18
  %45 = load i8, i8* %3, align 1, !dbg !873
  ret i8 %45, !dbg !873
}

declare i32 @FileIO_Read(%struct.FileIODescriptor*, i8*, i64, i64*) #3

declare void @Msg_Append(i8*, ...) #3

declare i8* @FileIO_MsgError(i32) #3

declare i32 @FileIO_Write(%struct.FileIODescriptor*, i8*, i64, i64*) #3

; Function Attrs: nounwind uwtable
define signext i8 @File_CopyTree(i8*, i8*, i8 signext, i8 signext) #0 !dbg !874 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !877, metadata !107), !dbg !878
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !879, metadata !107), !dbg !880
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !881, metadata !107), !dbg !882
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !883, metadata !107), !dbg !884
  call void @llvm.dbg.declare(metadata i32* %10, metadata !885, metadata !107), !dbg !886
  %11 = load i8*, i8** %6, align 8, !dbg !887
  %12 = call signext i8 @File_IsDirectory(i8* %11), !dbg !889
  %13 = icmp ne i8 %12, 0, !dbg !889
  br i1 %13, label %20, label %14, !dbg !890

; <label>:14:                                     ; preds = %4
  %15 = call i32* @__errno_location() #1, !dbg !891
  %16 = load i32, i32* %15, align 4, !dbg !893
  store i32 %16, i32* %10, align 4, !dbg !894
  %17 = load i8*, i8** %6, align 8, !dbg !895
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i32 0, i32 0), i8* %17), !dbg !896
  %18 = load i32, i32* %10, align 4, !dbg !897
  %19 = call i32* @__errno_location() #1, !dbg !898
  store i32 %18, i32* %19, align 4, !dbg !899
  store i8 0, i8* %5, align 1, !dbg !900
  br label %36, !dbg !900

; <label>:20:                                     ; preds = %4
  %21 = load i8*, i8** %7, align 8, !dbg !901
  %22 = call signext i8 @File_IsDirectory(i8* %21), !dbg !903
  %23 = icmp ne i8 %22, 0, !dbg !903
  br i1 %23, label %30, label %24, !dbg !904

; <label>:24:                                     ; preds = %20
  %25 = call i32* @__errno_location() #1, !dbg !905
  %26 = load i32, i32* %25, align 4, !dbg !907
  store i32 %26, i32* %10, align 4, !dbg !908
  %27 = load i8*, i8** %7, align 8, !dbg !909
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i32 0, i32 0), i8* %27), !dbg !910
  %28 = load i32, i32* %10, align 4, !dbg !911
  %29 = call i32* @__errno_location() #1, !dbg !912
  store i32 %28, i32* %29, align 4, !dbg !913
  store i8 0, i8* %5, align 1, !dbg !914
  br label %36, !dbg !914

; <label>:30:                                     ; preds = %20
  %31 = load i8*, i8** %6, align 8, !dbg !915
  %32 = load i8*, i8** %7, align 8, !dbg !916
  %33 = load i8, i8* %8, align 1, !dbg !917
  %34 = load i8, i8* %9, align 1, !dbg !918
  %35 = call signext i8 @FileCopyTree(i8* %31, i8* %32, i8 signext %33, i8 signext %34), !dbg !919
  store i8 %35, i8* %5, align 1, !dbg !920
  br label %36, !dbg !920

; <label>:36:                                     ; preds = %30, %24, %14
  %37 = load i8, i8* %5, align 1, !dbg !921
  ret i8 %37, !dbg !921
}

; Function Attrs: nounwind uwtable
define internal signext i8 @FileCopyTree(i8*, i8*, i8 signext, i8 signext) #0 !dbg !922 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca %struct.stat, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !923, metadata !107), !dbg !924
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !925, metadata !107), !dbg !926
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !927, metadata !107), !dbg !928
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !929, metadata !107), !dbg !930
  call void @llvm.dbg.declare(metadata i32* %10, metadata !931, metadata !107), !dbg !932
  call void @llvm.dbg.declare(metadata i8* %11, metadata !933, metadata !107), !dbg !934
  store i8 1, i8* %11, align 1, !dbg !934
  call void @llvm.dbg.declare(metadata i32* %12, metadata !935, metadata !107), !dbg !936
  call void @llvm.dbg.declare(metadata i32* %13, metadata !937, metadata !107), !dbg !938
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !939, metadata !107), !dbg !940
  store i8** null, i8*** %14, align 8, !dbg !940
  %18 = load i8*, i8** %6, align 8, !dbg !941
  %19 = call i32 @File_ListDirectory(i8* %18, i8*** %14), !dbg !942
  store i32 %19, i32* %12, align 4, !dbg !943
  %20 = load i32, i32* %12, align 4, !dbg !944
  %21 = icmp eq i32 %20, -1, !dbg !946
  br i1 %21, label %22, label %28, !dbg !947

; <label>:22:                                     ; preds = %4
  %23 = call i32* @__errno_location() #1, !dbg !948
  %24 = load i32, i32* %23, align 4, !dbg !950
  store i32 %24, i32* %10, align 4, !dbg !951
  %25 = load i8*, i8** %6, align 8, !dbg !952
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.27, i32 0, i32 0), i8* %25), !dbg !953
  %26 = load i32, i32* %10, align 4, !dbg !954
  %27 = call i32* @__errno_location() #1, !dbg !955
  store i32 %26, i32* %27, align 4, !dbg !956
  store i8 0, i8* %5, align 1, !dbg !957
  br label %134, !dbg !957

; <label>:28:                                     ; preds = %4
  %29 = load i8*, i8** %7, align 8, !dbg !958
  %30 = call signext i8 @File_EnsureDirectory(i8* %29), !dbg !959
  store i32 0, i32* %13, align 4, !dbg !960
  br label %31, !dbg !962

; <label>:31:                                     ; preds = %126, %28
  %32 = load i32, i32* %13, align 4, !dbg !963
  %33 = load i32, i32* %12, align 4, !dbg !966
  %34 = icmp slt i32 %32, %33, !dbg !967
  br i1 %34, label %35, label %39, !dbg !968

; <label>:35:                                     ; preds = %31
  %36 = load i8, i8* %11, align 1, !dbg !969
  %37 = sext i8 %36 to i32, !dbg !969
  %38 = icmp ne i32 %37, 0, !dbg !971
  br label %39

; <label>:39:                                     ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %41, label %129, !dbg !972

; <label>:41:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata %struct.stat* %15, metadata !974, metadata !107), !dbg !1013
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1014, metadata !107), !dbg !1015
  %42 = load i8*, i8** %6, align 8, !dbg !1016
  %43 = load i32, i32* %13, align 4, !dbg !1017
  %44 = sext i32 %43 to i64, !dbg !1018
  %45 = load i8**, i8*** %14, align 8, !dbg !1018
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44, !dbg !1018
  %47 = load i8*, i8** %46, align 8, !dbg !1018
  %48 = call i8* @File_PathJoin(i8* %42, i8* %47), !dbg !1019
  store i8* %48, i8** %16, align 8, !dbg !1020
  %49 = load i8, i8* %9, align 1, !dbg !1021
  %50 = icmp ne i8 %49, 0, !dbg !1021
  br i1 %50, label %51, label %57, !dbg !1023

; <label>:51:                                     ; preds = %41
  %52 = load i8*, i8** %16, align 8, !dbg !1024
  %53 = call i32 @Posix_Stat(i8* %52, %struct.stat* %15), !dbg !1026
  %54 = icmp eq i32 %53, 0, !dbg !1027
  %55 = zext i1 %54 to i32, !dbg !1027
  %56 = trunc i32 %55 to i8, !dbg !1028
  store i8 %56, i8* %11, align 1, !dbg !1029
  br label %63, !dbg !1030

; <label>:57:                                     ; preds = %41
  %58 = load i8*, i8** %16, align 8, !dbg !1031
  %59 = call i32 @Posix_Lstat(i8* %58, %struct.stat* %15), !dbg !1033
  %60 = icmp eq i32 %59, 0, !dbg !1034
  %61 = zext i1 %60 to i32, !dbg !1034
  %62 = trunc i32 %61 to i8, !dbg !1035
  store i8 %62, i8* %11, align 1, !dbg !1036
  br label %63

; <label>:63:                                     ; preds = %57, %51
  %64 = load i8, i8* %11, align 1, !dbg !1037
  %65 = icmp ne i8 %64, 0, !dbg !1037
  br i1 %65, label %66, label %118, !dbg !1039

; <label>:66:                                     ; preds = %63
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1040, metadata !107), !dbg !1042
  %67 = load i8*, i8** %7, align 8, !dbg !1043
  %68 = load i32, i32* %13, align 4, !dbg !1044
  %69 = sext i32 %68 to i64, !dbg !1045
  %70 = load i8**, i8*** %14, align 8, !dbg !1045
  %71 = getelementptr inbounds i8*, i8** %70, i64 %69, !dbg !1045
  %72 = load i8*, i8** %71, align 8, !dbg !1045
  %73 = call i8* @File_PathJoin(i8* %67, i8* %72), !dbg !1046
  store i8* %73, i8** %17, align 8, !dbg !1042
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 3, !dbg !1047
  %75 = load i32, i32* %74, align 8, !dbg !1047
  %76 = and i32 %75, 61440, !dbg !1048
  switch i32 %76, label %100 [
    i32 16384, label %77
    i32 40960, label %83
  ], !dbg !1049

; <label>:77:                                     ; preds = %66
  %78 = load i8*, i8** %16, align 8, !dbg !1050
  %79 = load i8*, i8** %17, align 8, !dbg !1052
  %80 = load i8, i8* %8, align 1, !dbg !1053
  %81 = load i8, i8* %9, align 1, !dbg !1054
  %82 = call signext i8 @FileCopyTree(i8* %78, i8* %79, i8 signext %80, i8 signext %81), !dbg !1055
  store i8 %82, i8* %11, align 1, !dbg !1056
  br label %116, !dbg !1057

; <label>:83:                                     ; preds = %66
  %84 = load i8*, i8** %16, align 8, !dbg !1058
  %85 = call i8* @Posix_ReadLink(i8* %84), !dbg !1060
  %86 = load i8*, i8** %17, align 8, !dbg !1061
  %87 = call i32 @Posix_Symlink(i8* %85, i8* %86), !dbg !1062
  %88 = icmp ne i32 %87, 0, !dbg !1064
  br i1 %88, label %89, label %99, !dbg !1065

; <label>:89:                                     ; preds = %83
  %90 = call i32* @__errno_location() #1, !dbg !1066
  %91 = load i32, i32* %90, align 4, !dbg !1068
  store i32 %91, i32* %10, align 4, !dbg !1069
  %92 = load i8*, i8** %16, align 8, !dbg !1070
  %93 = call i8* @Posix_ReadLink(i8* %92), !dbg !1071
  %94 = load i8*, i8** %17, align 8, !dbg !1072
  %95 = load i32, i32* %10, align 4, !dbg !1073
  %96 = call i8* @Err_Errno2String(i32 %95), !dbg !1074
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.28, i32 0, i32 0), i8* %93, i8* %94, i8* %96), !dbg !1075
  %97 = load i32, i32* %10, align 4, !dbg !1076
  %98 = call i32* @__errno_location() #1, !dbg !1077
  store i32 %97, i32* %98, align 4, !dbg !1078
  store i8 0, i8* %11, align 1, !dbg !1079
  br label %99, !dbg !1080

; <label>:99:                                     ; preds = %89, %83
  br label %116, !dbg !1081

; <label>:100:                                    ; preds = %66
  %101 = load i8*, i8** %16, align 8, !dbg !1082
  %102 = load i8*, i8** %17, align 8, !dbg !1084
  %103 = load i8, i8* %8, align 1, !dbg !1085
  %104 = call signext i8 @File_Copy(i8* %101, i8* %102, i8 signext %103), !dbg !1086
  %105 = icmp ne i8 %104, 0, !dbg !1086
  br i1 %105, label %115, label %106, !dbg !1087

; <label>:106:                                    ; preds = %100
  %107 = call i32* @__errno_location() #1, !dbg !1088
  %108 = load i32, i32* %107, align 4, !dbg !1090
  store i32 %108, i32* %10, align 4, !dbg !1091
  %109 = load i8*, i8** %16, align 8, !dbg !1092
  %110 = load i8*, i8** %17, align 8, !dbg !1093
  %111 = load i32, i32* %10, align 4, !dbg !1094
  %112 = call i8* @Err_Errno2String(i32 %111), !dbg !1095
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.29, i32 0, i32 0), i8* %109, i8* %110, i8* %112), !dbg !1096
  %113 = load i32, i32* %10, align 4, !dbg !1097
  %114 = call i32* @__errno_location() #1, !dbg !1098
  store i32 %113, i32* %114, align 4, !dbg !1099
  store i8 0, i8* %11, align 1, !dbg !1100
  br label %115, !dbg !1101

; <label>:115:                                    ; preds = %106, %100
  br label %116, !dbg !1102

; <label>:116:                                    ; preds = %115, %99, %77
  %117 = load i8*, i8** %17, align 8, !dbg !1103
  call void @Posix_Free(i8* %117), !dbg !1104
  br label %124, !dbg !1105

; <label>:118:                                    ; preds = %63
  %119 = call i32* @__errno_location() #1, !dbg !1106
  %120 = load i32, i32* %119, align 4, !dbg !1108
  store i32 %120, i32* %10, align 4, !dbg !1109
  %121 = load i8*, i8** %16, align 8, !dbg !1110
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.30, i32 0, i32 0), i8* %121), !dbg !1111
  %122 = load i32, i32* %10, align 4, !dbg !1112
  %123 = call i32* @__errno_location() #1, !dbg !1113
  store i32 %122, i32* %123, align 4, !dbg !1114
  br label %124

; <label>:124:                                    ; preds = %118, %116
  %125 = load i8*, i8** %16, align 8, !dbg !1115
  call void @Posix_Free(i8* %125), !dbg !1116
  br label %126, !dbg !1117

; <label>:126:                                    ; preds = %124
  %127 = load i32, i32* %13, align 4, !dbg !1118
  %128 = add nsw i32 %127, 1, !dbg !1118
  store i32 %128, i32* %13, align 4, !dbg !1118
  br label %31, !dbg !1120, !llvm.loop !1121

; <label>:129:                                    ; preds = %39
  %130 = load i8**, i8*** %14, align 8, !dbg !1123
  %131 = load i32, i32* %12, align 4, !dbg !1124
  %132 = sext i32 %131 to i64, !dbg !1124
  call void @Util_FreeStringList(i8** %130, i64 %132), !dbg !1125
  %133 = load i8, i8* %11, align 1, !dbg !1126
  store i8 %133, i8* %5, align 1, !dbg !1127
  br label %134, !dbg !1127

; <label>:134:                                    ; preds = %129, %22
  %135 = load i8, i8* %5, align 1, !dbg !1128
  ret i8 %135, !dbg !1128
}

; Function Attrs: nounwind uwtable
define signext i8 @File_CopyFromFd(%struct.FileIODescriptor* byval align 8, i8*, i8 signext) #0 !dbg !1129 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.FileIODescriptor, align 8
  %11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor* %0, metadata !1132, metadata !107), !dbg !1133
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1134, metadata !107), !dbg !1135
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1136, metadata !107), !dbg !1137
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1138, metadata !107), !dbg !1139
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1140, metadata !107), !dbg !1141
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1142, metadata !107), !dbg !1143
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor* %10, metadata !1144, metadata !107), !dbg !1145
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1146, metadata !107), !dbg !1148
  call void @FileIO_Invalidate(%struct.FileIODescriptor* %10), !dbg !1149
  %12 = load i8, i8* %6, align 1, !dbg !1150
  %13 = sext i8 %12 to i32, !dbg !1150
  %14 = icmp ne i32 %13, 0, !dbg !1150
  %15 = select i1 %14, i32 4, i32 3, !dbg !1150
  store i32 %15, i32* %11, align 4, !dbg !1151
  %16 = load i8*, i8** %5, align 8, !dbg !1152
  %17 = load i32, i32* %11, align 4, !dbg !1153
  %18 = call i32 @FileIO_Open(%struct.FileIODescriptor* %10, i8* %16, i32 2, i32 %17), !dbg !1154
  store i32 %18, i32* %9, align 4, !dbg !1155
  %19 = load i32, i32* %9, align 4, !dbg !1156
  %20 = call signext i8 @FileIO_IsSuccess(i32 %19), !dbg !1158
  %21 = icmp ne i8 %20, 0, !dbg !1158
  br i1 %21, label %30, label %22, !dbg !1159

; <label>:22:                                     ; preds = %3
  %23 = call i32* @__errno_location() #1, !dbg !1160
  %24 = load i32, i32* %23, align 4, !dbg !1162
  store i32 %24, i32* %8, align 4, !dbg !1163
  %25 = load i8*, i8** %5, align 8, !dbg !1164
  %26 = load i32, i32* %9, align 4, !dbg !1165
  %27 = call i8* @FileIO_MsgError(i32 %26), !dbg !1166
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i32 0, i32 0), i8* %25, i8* %27), !dbg !1167
  %28 = load i32, i32* %8, align 4, !dbg !1168
  %29 = call i32* @__errno_location() #1, !dbg !1169
  store i32 %28, i32* %29, align 4, !dbg !1170
  store i8 0, i8* %4, align 1, !dbg !1171
  br label %56, !dbg !1171

; <label>:30:                                     ; preds = %3
  %31 = call signext i8 @File_CopyFromFdToFd(%struct.FileIODescriptor* byval align 8 %0, %struct.FileIODescriptor* byval align 8 %10), !dbg !1172
  store i8 %31, i8* %7, align 1, !dbg !1173
  %32 = call i32* @__errno_location() #1, !dbg !1174
  %33 = load i32, i32* %32, align 4, !dbg !1175
  store i32 %33, i32* %8, align 4, !dbg !1176
  %34 = call i32 @FileIO_Close(%struct.FileIODescriptor* %10), !dbg !1177
  %35 = call signext i8 @FileIO_IsSuccess(i32 %34), !dbg !1179
  %36 = icmp ne i8 %35, 0, !dbg !1181
  br i1 %36, label %46, label %37, !dbg !1182

; <label>:37:                                     ; preds = %30
  %38 = load i8, i8* %7, align 1, !dbg !1183
  %39 = icmp ne i8 %38, 0, !dbg !1183
  br i1 %39, label %40, label %43, !dbg !1186

; <label>:40:                                     ; preds = %37
  %41 = call i32* @__errno_location() #1, !dbg !1187
  %42 = load i32, i32* %41, align 4, !dbg !1189
  store i32 %42, i32* %8, align 4, !dbg !1190
  br label %43, !dbg !1191

; <label>:43:                                     ; preds = %40, %37
  %44 = load i8*, i8** %5, align 8, !dbg !1192
  %45 = call i8* @Err_ErrString(), !dbg !1193
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.7, i32 0, i32 0), i8* %44, i8* %45), !dbg !1194
  store i8 0, i8* %7, align 1, !dbg !1195
  br label %46, !dbg !1196

; <label>:46:                                     ; preds = %43, %30
  %47 = load i8, i8* %7, align 1, !dbg !1197
  %48 = icmp ne i8 %47, 0, !dbg !1197
  br i1 %48, label %52, label %49, !dbg !1199

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %5, align 8, !dbg !1200
  %51 = call i32 @File_Unlink(i8* %50), !dbg !1202
  br label %52, !dbg !1203

; <label>:52:                                     ; preds = %49, %46
  %53 = load i32, i32* %8, align 4, !dbg !1204
  %54 = call i32* @__errno_location() #1, !dbg !1205
  store i32 %53, i32* %54, align 4, !dbg !1206
  %55 = load i8, i8* %7, align 1, !dbg !1207
  store i8 %55, i8* %4, align 1, !dbg !1208
  br label %56, !dbg !1208

; <label>:56:                                     ; preds = %52, %22
  %57 = load i8, i8* %4, align 1, !dbg !1209
  ret i8 %57, !dbg !1209
}

declare void @FileIO_Invalidate(%struct.FileIODescriptor*) #3

declare i32 @FileIO_Open(%struct.FileIODescriptor*, i8*, i32, i32) #3

declare i32 @FileIO_Close(%struct.FileIODescriptor*) #3

declare i8* @Err_ErrString() #3

; Function Attrs: nounwind uwtable
define signext i8 @File_Copy(i8*, i8*, i8 signext) #0 !dbg !1210 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.FileIODescriptor, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1213, metadata !107), !dbg !1214
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1215, metadata !107), !dbg !1216
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1217, metadata !107), !dbg !1218
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1219, metadata !107), !dbg !1220
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1221, metadata !107), !dbg !1222
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1223, metadata !107), !dbg !1224
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor* %11, metadata !1225, metadata !107), !dbg !1226
  call void @FileIO_Invalidate(%struct.FileIODescriptor* %11), !dbg !1227
  %12 = load i8*, i8** %5, align 8, !dbg !1228
  %13 = call i32 @FileIO_Open(%struct.FileIODescriptor* %11, i8* %12, i32 1, i32 0), !dbg !1229
  store i32 %13, i32* %10, align 4, !dbg !1230
  %14 = load i32, i32* %10, align 4, !dbg !1231
  %15 = call signext i8 @FileIO_IsSuccess(i32 %14), !dbg !1233
  %16 = icmp ne i8 %15, 0, !dbg !1233
  br i1 %16, label %25, label %17, !dbg !1234

; <label>:17:                                     ; preds = %3
  %18 = call i32* @__errno_location() #1, !dbg !1235
  %19 = load i32, i32* %18, align 4, !dbg !1237
  store i32 %19, i32* %9, align 4, !dbg !1238
  %20 = load i8*, i8** %5, align 8, !dbg !1239
  %21 = load i32, i32* %10, align 4, !dbg !1240
  %22 = call i8* @FileIO_MsgError(i32 %21), !dbg !1241
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.8, i32 0, i32 0), i8* %20, i8* %22), !dbg !1242
  %23 = load i32, i32* %9, align 4, !dbg !1243
  %24 = call i32* @__errno_location() #1, !dbg !1244
  store i32 %23, i32* %24, align 4, !dbg !1245
  store i8 0, i8* %4, align 1, !dbg !1246
  br label %47, !dbg !1246

; <label>:25:                                     ; preds = %3
  %26 = load i8*, i8** %6, align 8, !dbg !1247
  %27 = load i8, i8* %7, align 1, !dbg !1248
  %28 = call signext i8 @File_CopyFromFd(%struct.FileIODescriptor* byval align 8 %11, i8* %26, i8 signext %27), !dbg !1249
  store i8 %28, i8* %8, align 1, !dbg !1250
  %29 = call i32* @__errno_location() #1, !dbg !1251
  %30 = load i32, i32* %29, align 4, !dbg !1252
  store i32 %30, i32* %9, align 4, !dbg !1253
  %31 = call i32 @FileIO_Close(%struct.FileIODescriptor* %11), !dbg !1254
  %32 = call signext i8 @FileIO_IsSuccess(i32 %31), !dbg !1256
  %33 = icmp ne i8 %32, 0, !dbg !1258
  br i1 %33, label %43, label %34, !dbg !1259

; <label>:34:                                     ; preds = %25
  %35 = load i8, i8* %8, align 1, !dbg !1260
  %36 = icmp ne i8 %35, 0, !dbg !1260
  br i1 %36, label %37, label %40, !dbg !1263

; <label>:37:                                     ; preds = %34
  %38 = call i32* @__errno_location() #1, !dbg !1264
  %39 = load i32, i32* %38, align 4, !dbg !1266
  store i32 %39, i32* %9, align 4, !dbg !1267
  br label %40, !dbg !1268

; <label>:40:                                     ; preds = %37, %34
  %41 = load i8*, i8** %5, align 8, !dbg !1269
  %42 = call i8* @Err_ErrString(), !dbg !1270
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i32 0, i32 0), i8* %41, i8* %42), !dbg !1271
  store i8 0, i8* %8, align 1, !dbg !1272
  br label %43, !dbg !1273

; <label>:43:                                     ; preds = %40, %25
  %44 = load i32, i32* %9, align 4, !dbg !1274
  %45 = call i32* @__errno_location() #1, !dbg !1275
  store i32 %44, i32* %45, align 4, !dbg !1276
  %46 = load i8, i8* %8, align 1, !dbg !1277
  store i8 %46, i8* %4, align 1, !dbg !1278
  br label %47, !dbg !1278

; <label>:47:                                     ; preds = %43, %17
  %48 = load i8, i8* %4, align 1, !dbg !1279
  ret i8 %48, !dbg !1279
}

; Function Attrs: nounwind uwtable
define signext i8 @File_Move(i8*, i8*, i8*) #0 !dbg !1280 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1284, metadata !107), !dbg !1285
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1286, metadata !107), !dbg !1287
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1288, metadata !107), !dbg !1289
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1290, metadata !107), !dbg !1291
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1292, metadata !107), !dbg !1293
  %9 = load i8*, i8** %4, align 8, !dbg !1294
  %10 = load i8*, i8** %5, align 8, !dbg !1296
  %11 = call i32 @File_Rename(i8* %9, i8* %10), !dbg !1297
  %12 = icmp eq i32 %11, 0, !dbg !1298
  br i1 %12, label %13, label %15, !dbg !1299

; <label>:13:                                     ; preds = %3
  store i8 1, i8* %8, align 1, !dbg !1300
  store i8 1, i8* %7, align 1, !dbg !1302
  %14 = call i32* @__errno_location() #1, !dbg !1303
  store i32 0, i32* %14, align 4, !dbg !1304
  br label %26, !dbg !1305

; <label>:15:                                     ; preds = %3
  store i8 0, i8* %8, align 1, !dbg !1306
  %16 = load i8*, i8** %4, align 8, !dbg !1308
  %17 = load i8*, i8** %5, align 8, !dbg !1310
  %18 = call signext i8 @File_Copy(i8* %16, i8* %17, i8 signext 1), !dbg !1311
  %19 = icmp ne i8 %18, 0, !dbg !1311
  br i1 %19, label %20, label %24, !dbg !1312

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %4, align 8, !dbg !1313
  %22 = call i32 @File_Unlink(i8* %21), !dbg !1315
  store i8 1, i8* %7, align 1, !dbg !1316
  %23 = call i32* @__errno_location() #1, !dbg !1317
  store i32 0, i32* %23, align 4, !dbg !1318
  br label %25, !dbg !1319

; <label>:24:                                     ; preds = %15
  store i8 0, i8* %7, align 1, !dbg !1320
  br label %25

; <label>:25:                                     ; preds = %24, %20
  br label %26

; <label>:26:                                     ; preds = %25, %13
  %27 = load i8*, i8** %6, align 8, !dbg !1322
  %28 = icmp ne i8* %27, null, !dbg !1322
  br i1 %28, label %29, label %32, !dbg !1324

; <label>:29:                                     ; preds = %26
  %30 = load i8, i8* %8, align 1, !dbg !1325
  %31 = load i8*, i8** %6, align 8, !dbg !1327
  store i8 %30, i8* %31, align 1, !dbg !1328
  br label %32, !dbg !1329

; <label>:32:                                     ; preds = %29, %26
  %33 = load i8, i8* %7, align 1, !dbg !1330
  ret i8 %33, !dbg !1331
}

declare i32 @File_Rename(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define signext i8 @File_MoveTree(i8*, i8*, i8 signext, i8*) #0 !dbg !1332 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.stat, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1335, metadata !107), !dbg !1336
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1337, metadata !107), !dbg !1338
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1339, metadata !107), !dbg !1340
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1341, metadata !107), !dbg !1342
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1343, metadata !107), !dbg !1344
  store i8 0, i8* %10, align 1, !dbg !1344
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1345, metadata !107), !dbg !1346
  store i8 0, i8* %11, align 1, !dbg !1346
  %17 = load i8*, i8** %9, align 8, !dbg !1347
  %18 = icmp ne i8* %17, null, !dbg !1347
  br i1 %18, label %19, label %21, !dbg !1349

; <label>:19:                                     ; preds = %4
  %20 = load i8*, i8** %9, align 8, !dbg !1350
  store i8 0, i8* %20, align 1, !dbg !1352
  br label %21, !dbg !1353

; <label>:21:                                     ; preds = %19, %4
  %22 = load i8*, i8** %6, align 8, !dbg !1354
  %23 = call signext i8 @File_IsDirectory(i8* %22), !dbg !1356
  %24 = icmp ne i8 %23, 0, !dbg !1356
  br i1 %24, label %27, label %25, !dbg !1357

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %6, align 8, !dbg !1358
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.10, i32 0, i32 0), i8* %26), !dbg !1360
  store i8 0, i8* %5, align 1, !dbg !1361
  br label %107, !dbg !1361

; <label>:27:                                     ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !1362
  %29 = load i8*, i8** %7, align 8, !dbg !1364
  %30 = call i32 @File_Rename(i8* %28, i8* %29), !dbg !1365
  %31 = icmp eq i32 %30, 0, !dbg !1366
  br i1 %31, label %32, label %38, !dbg !1367

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %9, align 8, !dbg !1368
  %34 = icmp ne i8* %33, null, !dbg !1368
  br i1 %34, label %35, label %37, !dbg !1371

; <label>:35:                                     ; preds = %32
  %36 = load i8*, i8** %9, align 8, !dbg !1372
  store i8 1, i8* %36, align 1, !dbg !1374
  br label %37, !dbg !1375

; <label>:37:                                     ; preds = %35, %32
  store i8 1, i8* %10, align 1, !dbg !1376
  br label %105, !dbg !1377

; <label>:38:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.stat* %12, metadata !1378, metadata !107), !dbg !1380
  %39 = load i8*, i8** %7, align 8, !dbg !1381
  %40 = call i32 @Posix_Stat(i8* %39, %struct.stat* %12), !dbg !1383
  %41 = icmp eq i32 %40, -1, !dbg !1384
  br i1 %41, label %42, label %58, !dbg !1385

; <label>:42:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1386, metadata !107), !dbg !1388
  %43 = call i32* @__errno_location() #1, !dbg !1389
  %44 = load i32, i32* %43, align 4, !dbg !1390
  store i32 %44, i32* %13, align 4, !dbg !1388
  %45 = load i32, i32* %13, align 4, !dbg !1391
  %46 = icmp eq i32 %45, 2, !dbg !1393
  br i1 %46, label %47, label %54, !dbg !1394

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %7, align 8, !dbg !1395
  %49 = call signext i8 @File_CreateDirectoryHierarchy(i8* %48, i8** null), !dbg !1398
  %50 = icmp ne i8 %49, 0, !dbg !1398
  br i1 %50, label %53, label %51, !dbg !1399

; <label>:51:                                     ; preds = %47
  %52 = load i8*, i8** %7, align 8, !dbg !1400
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i32 0, i32 0), i8* %52), !dbg !1402
  store i8 0, i8* %5, align 1, !dbg !1403
  br label %107, !dbg !1403

; <label>:53:                                     ; preds = %47
  store i8 1, i8* %11, align 1, !dbg !1404
  br label %57, !dbg !1405

; <label>:54:                                     ; preds = %42
  %55 = load i32, i32* %13, align 4, !dbg !1406
  %56 = load i8*, i8** %7, align 8, !dbg !1408
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i32 0, i32 0), i32 %55, i8* %56), !dbg !1409
  store i8 0, i8* %5, align 1, !dbg !1410
  br label %107, !dbg !1410

; <label>:57:                                     ; preds = %53
  br label %65, !dbg !1411

; <label>:58:                                     ; preds = %38
  %59 = load i8*, i8** %7, align 8, !dbg !1412
  %60 = call signext i8 @File_IsDirectory(i8* %59), !dbg !1415
  %61 = icmp ne i8 %60, 0, !dbg !1415
  br i1 %61, label %64, label %62, !dbg !1416

; <label>:62:                                     ; preds = %58
  %63 = load i8*, i8** %7, align 8, !dbg !1417
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.13, i32 0, i32 0), i8* %63), !dbg !1419
  store i8 0, i8* %5, align 1, !dbg !1420
  br label %107, !dbg !1420

; <label>:64:                                     ; preds = %58
  br label %65

; <label>:65:                                     ; preds = %64, %57
  %66 = load i8, i8* %11, align 1, !dbg !1421
  %67 = icmp ne i8 %66, 0, !dbg !1421
  br i1 %67, label %68, label %82, !dbg !1423

; <label>:68:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1424, metadata !107), !dbg !1429
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1430, metadata !107), !dbg !1431
  %69 = load i8*, i8** %6, align 8, !dbg !1432
  %70 = call i64 @File_GetSizeEx(i8* %69), !dbg !1433
  store i64 %70, i64* %14, align 8, !dbg !1434
  %71 = load i8*, i8** %7, align 8, !dbg !1435
  %72 = call i64 @File_GetFreeSpace(i8* %71, i8 signext 1), !dbg !1436
  store i64 %72, i64* %15, align 8, !dbg !1437
  %73 = load i64, i64* %15, align 8, !dbg !1438
  %74 = load i64, i64* %14, align 8, !dbg !1440
  %75 = icmp slt i64 %73, %74, !dbg !1441
  br i1 %75, label %76, label %81, !dbg !1442

; <label>:76:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1443, metadata !107), !dbg !1445
  %77 = load i64, i64* %14, align 8, !dbg !1446
  %78 = call i8* @Msg_FormatSizeInBytes(i64 %77), !dbg !1447
  store i8* %78, i8** %16, align 8, !dbg !1445
  %79 = load i8*, i8** %16, align 8, !dbg !1448
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.14, i32 0, i32 0), i8* %79), !dbg !1449
  %80 = load i8*, i8** %16, align 8, !dbg !1450
  call void @Posix_Free(i8* %80), !dbg !1451
  store i8 0, i8* %5, align 1, !dbg !1452
  br label %107, !dbg !1452

; <label>:81:                                     ; preds = %68
  br label %82, !dbg !1453

; <label>:82:                                     ; preds = %81, %65
  %83 = load i8*, i8** %6, align 8, !dbg !1454
  %84 = load i8*, i8** %7, align 8, !dbg !1456
  %85 = load i8, i8* %8, align 1, !dbg !1457
  %86 = call signext i8 @File_CopyTree(i8* %83, i8* %84, i8 signext %85, i8 signext 0), !dbg !1458
  %87 = icmp ne i8 %86, 0, !dbg !1458
  br i1 %87, label %88, label %96, !dbg !1459

; <label>:88:                                     ; preds = %82
  store i8 1, i8* %10, align 1, !dbg !1460
  %89 = load i8*, i8** %6, align 8, !dbg !1462
  %90 = call signext i8 @File_DeleteDirectoryTree(i8* %89), !dbg !1464
  %91 = icmp ne i8 %90, 0, !dbg !1464
  br i1 %91, label %95, label %92, !dbg !1465

; <label>:92:                                     ; preds = %88
  %93 = load i8*, i8** %6, align 8, !dbg !1466
  %94 = load i8*, i8** %7, align 8, !dbg !1468
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.15, i32 0, i32 0), i8* %93, i8* %94), !dbg !1469
  br label %95, !dbg !1470

; <label>:95:                                     ; preds = %92, %88
  br label %104, !dbg !1471

; <label>:96:                                     ; preds = %82
  store i8 0, i8* %10, align 1, !dbg !1472
  %97 = load i8*, i8** %6, align 8, !dbg !1474
  call void (i8*, ...) @Msg_Append(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.16, i32 0, i32 0), i8* %97), !dbg !1475
  %98 = load i8, i8* %11, align 1, !dbg !1476
  %99 = icmp ne i8 %98, 0, !dbg !1476
  br i1 %99, label %100, label %103, !dbg !1478

; <label>:100:                                    ; preds = %96
  %101 = load i8*, i8** %7, align 8, !dbg !1479
  %102 = call signext i8 @File_DeleteDirectoryTree(i8* %101), !dbg !1481
  br label %103, !dbg !1482

; <label>:103:                                    ; preds = %100, %96
  br label %104

; <label>:104:                                    ; preds = %103, %95
  br label %105

; <label>:105:                                    ; preds = %104, %37
  %106 = load i8, i8* %10, align 1, !dbg !1483
  store i8 %106, i8* %5, align 1, !dbg !1484
  br label %107, !dbg !1484

; <label>:107:                                    ; preds = %105, %76, %62, %54, %51, %25
  %108 = load i8, i8* %5, align 1, !dbg !1485
  ret i8 %108, !dbg !1485
}

declare i32 @Posix_Stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind uwtable
define signext i8 @File_CreateDirectoryHierarchy(i8*, i8**) #0 !dbg !1486 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1489, metadata !107), !dbg !1490
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1491, metadata !107), !dbg !1492
  %5 = load i8*, i8** %3, align 8, !dbg !1493
  %6 = load i8**, i8*** %4, align 8, !dbg !1494
  %7 = call signext i8 @File_CreateDirectoryHierarchyEx(i8* %5, i32 511, i8** %6), !dbg !1495
  ret i8 %7, !dbg !1496
}

; Function Attrs: nounwind uwtable
define i64 @File_GetSizeEx(i8*) #0 !dbg !1497 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1500, metadata !107), !dbg !1501
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1502, metadata !107), !dbg !1503
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1504, metadata !107), !dbg !1505
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1506, metadata !107), !dbg !1507
  store i64 0, i64* %6, align 8, !dbg !1507
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1508, metadata !107), !dbg !1509
  store i8** null, i8*** %7, align 8, !dbg !1509
  %10 = load i8*, i8** %3, align 8, !dbg !1510
  %11 = icmp eq i8* %10, null, !dbg !1512
  br i1 %11, label %12, label %13, !dbg !1513

; <label>:12:                                     ; preds = %1
  store i64 -1, i64* %2, align 8, !dbg !1514
  br label %57, !dbg !1514

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %3, align 8, !dbg !1516
  %15 = call signext i8 @File_IsDirectory(i8* %14), !dbg !1518
  %16 = icmp ne i8 %15, 0, !dbg !1518
  br i1 %16, label %20, label %17, !dbg !1519

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %3, align 8, !dbg !1520
  %19 = call i64 @File_GetSize(i8* %18), !dbg !1522
  store i64 %19, i64* %2, align 8, !dbg !1523
  br label %57, !dbg !1523

; <label>:20:                                     ; preds = %13
  %21 = load i8*, i8** %3, align 8, !dbg !1524
  %22 = call i32 @File_ListDirectory(i8* %21, i8*** %7), !dbg !1525
  store i32 %22, i32* %5, align 4, !dbg !1526
  %23 = load i32, i32* %5, align 4, !dbg !1527
  %24 = icmp eq i32 %23, -1, !dbg !1529
  br i1 %24, label %25, label %26, !dbg !1530

; <label>:25:                                     ; preds = %20
  store i64 -1, i64* %2, align 8, !dbg !1531
  br label %57, !dbg !1531

; <label>:26:                                     ; preds = %20
  store i32 0, i32* %4, align 4, !dbg !1533
  br label %27, !dbg !1535

; <label>:27:                                     ; preds = %49, %26
  %28 = load i32, i32* %4, align 4, !dbg !1536
  %29 = load i32, i32* %5, align 4, !dbg !1539
  %30 = icmp slt i32 %28, %29, !dbg !1540
  br i1 %30, label %31, label %52, !dbg !1541

; <label>:31:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1542, metadata !107), !dbg !1544
  %32 = load i8*, i8** %3, align 8, !dbg !1545
  %33 = load i32, i32* %4, align 4, !dbg !1546
  %34 = sext i32 %33 to i64, !dbg !1547
  %35 = load i8**, i8*** %7, align 8, !dbg !1547
  %36 = getelementptr inbounds i8*, i8** %35, i64 %34, !dbg !1547
  %37 = load i8*, i8** %36, align 8, !dbg !1547
  %38 = call i8* @File_PathJoin(i8* %32, i8* %37), !dbg !1548
  store i8* %38, i8** %8, align 8, !dbg !1544
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1549, metadata !107), !dbg !1550
  %39 = load i8*, i8** %8, align 8, !dbg !1551
  %40 = call i64 @File_GetSizeEx(i8* %39), !dbg !1552
  store i64 %40, i64* %9, align 8, !dbg !1550
  %41 = load i8*, i8** %8, align 8, !dbg !1553
  call void @Posix_Free(i8* %41), !dbg !1554
  %42 = load i64, i64* %9, align 8, !dbg !1555
  %43 = icmp ne i64 %42, -1, !dbg !1557
  br i1 %43, label %44, label %48, !dbg !1558

; <label>:44:                                     ; preds = %31
  %45 = load i64, i64* %9, align 8, !dbg !1559
  %46 = load i64, i64* %6, align 8, !dbg !1561
  %47 = add nsw i64 %46, %45, !dbg !1561
  store i64 %47, i64* %6, align 8, !dbg !1561
  br label %48, !dbg !1562

; <label>:48:                                     ; preds = %44, %31
  br label %49, !dbg !1563

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %4, align 4, !dbg !1564
  %51 = add nsw i32 %50, 1, !dbg !1564
  store i32 %51, i32* %4, align 4, !dbg !1564
  br label %27, !dbg !1566, !llvm.loop !1567

; <label>:52:                                     ; preds = %27
  %53 = load i8**, i8*** %7, align 8, !dbg !1569
  %54 = load i32, i32* %5, align 4, !dbg !1570
  %55 = sext i32 %54 to i64, !dbg !1570
  call void @Util_FreeStringList(i8** %53, i64 %55), !dbg !1571
  %56 = load i64, i64* %6, align 8, !dbg !1572
  store i64 %56, i64* %2, align 8, !dbg !1573
  br label %57, !dbg !1573

; <label>:57:                                     ; preds = %52, %25, %17, %12
  %58 = load i64, i64* %2, align 8, !dbg !1574
  ret i64 %58, !dbg !1574
}

declare i64 @File_GetFreeSpace(i8*, i8 signext) #3

declare i8* @Msg_FormatSizeInBytes(i64) #3

; Function Attrs: nounwind uwtable
define signext i8 @File_DeleteDirectoryTree(i8*) #0 !dbg !1575 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1576, metadata !107), !dbg !1577
  %3 = load i8*, i8** %2, align 8, !dbg !1578
  %4 = call signext i8 @FileDeleteDirectoryTree(i8* %3, i8 signext 0), !dbg !1579
  ret i8 %4, !dbg !1580
}

; Function Attrs: nounwind uwtable
define i8* @File_GetModTimeString(i8*) #0 !dbg !1581 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1584, metadata !107), !dbg !1585
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1586, metadata !107), !dbg !1587
  %4 = load i8*, i8** %2, align 8, !dbg !1588
  %5 = call i64 @File_GetModTime(i8* %4), !dbg !1589
  store i64 %5, i64* %3, align 8, !dbg !1590
  %6 = load i64, i64* %3, align 8, !dbg !1591
  %7 = icmp eq i64 %6, -1, !dbg !1592
  br i1 %7, label %8, label %9, !dbg !1593

; <label>:8:                                      ; preds = %1
  br label %12, !dbg !1594

; <label>:9:                                      ; preds = %1
  %10 = load i64, i64* %3, align 8, !dbg !1596
  %11 = call i8* @TimeUtil_GetTimeFormat(i64 %10, i8 signext 1, i8 signext 1), !dbg !1598
  br label %12, !dbg !1599

; <label>:12:                                     ; preds = %9, %8
  %13 = phi i8* [ null, %8 ], [ %11, %9 ], !dbg !1600
  ret i8* %13, !dbg !1602
}

declare i64 @File_GetModTime(i8*) #3

declare i8* @TimeUtil_GetTimeFormat(i64, i8 signext, i8 signext) #3

; Function Attrs: nounwind uwtable
define i64 @File_GetSize(i8*) #0 !dbg !1603 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.FileIODescriptor, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1604, metadata !107), !dbg !1605
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1606, metadata !107), !dbg !1607
  %6 = load i8*, i8** %2, align 8, !dbg !1608
  %7 = icmp eq i8* %6, null, !dbg !1610
  br i1 %7, label %8, label %9, !dbg !1611

; <label>:8:                                      ; preds = %1
  store i64 -1, i64* %3, align 8, !dbg !1612
  br label %20, !dbg !1614

; <label>:9:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.FileIODescriptor* %4, metadata !1615, metadata !107), !dbg !1617
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1618, metadata !107), !dbg !1619
  call void @FileIO_Invalidate(%struct.FileIODescriptor* %4), !dbg !1620
  %10 = load i8*, i8** %2, align 8, !dbg !1621
  %11 = call i32 @FileIO_Open(%struct.FileIODescriptor* %4, i8* %10, i32 1, i32 0), !dbg !1622
  store i32 %11, i32* %5, align 4, !dbg !1623
  %12 = load i32, i32* %5, align 4, !dbg !1624
  %13 = call signext i8 @FileIO_IsSuccess(i32 %12), !dbg !1626
  %14 = icmp ne i8 %13, 0, !dbg !1626
  br i1 %14, label %15, label %18, !dbg !1627

; <label>:15:                                     ; preds = %9
  %16 = call i64 @FileIO_GetSize(%struct.FileIODescriptor* %4), !dbg !1628
  store i64 %16, i64* %3, align 8, !dbg !1630
  %17 = call i32 @FileIO_Close(%struct.FileIODescriptor* %4), !dbg !1631
  br label %19, !dbg !1632

; <label>:18:                                     ; preds = %9
  store i64 -1, i64* %3, align 8, !dbg !1633
  br label %19

; <label>:19:                                     ; preds = %18, %15
  br label %20

; <label>:20:                                     ; preds = %19, %8
  %21 = load i64, i64* %3, align 8, !dbg !1635
  ret i64 %21, !dbg !1636
}

declare i64 @FileIO_GetSize(%struct.FileIODescriptor*) #3

; Function Attrs: nounwind uwtable
define signext i8 @File_SupportsLargeFiles(i8*) #0 !dbg !1637 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1638, metadata !107), !dbg !1639
  %3 = load i8*, i8** %2, align 8, !dbg !1640
  %4 = call signext i8 @File_SupportsFileSize(i8* %3, i64 4294967296), !dbg !1641
  ret i8 %4, !dbg !1642
}

declare signext i8 @File_SupportsFileSize(i8*, i64) #3

declare i8* @File_PathJoin(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i64 @File_GetSizeByPath(i8*) #0 !dbg !1643 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1644, metadata !107), !dbg !1645
  %3 = load i8*, i8** %2, align 8, !dbg !1646
  %4 = icmp eq i8* %3, null, !dbg !1647
  br i1 %4, label %5, label %6, !dbg !1648

; <label>:5:                                      ; preds = %1
  br label %9, !dbg !1649

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !1651
  %8 = call i64 @FileIO_GetSizeByPath(i8* %7), !dbg !1653
  br label %9, !dbg !1654

; <label>:9:                                      ; preds = %6, %5
  %10 = phi i64 [ -1, %5 ], [ %8, %6 ], !dbg !1655
  ret i64 %10, !dbg !1657
}

declare i64 @FileIO_GetSizeByPath(i8*) #3

; Function Attrs: nounwind uwtable
define signext i8 @File_CreateDirectoryHierarchyEx(i8*, i32, i8**) #0 !dbg !1658 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.FileData, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1661, metadata !107), !dbg !1662
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1663, metadata !107), !dbg !1664
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1665, metadata !107), !dbg !1666
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1667, metadata !107), !dbg !1668
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1669, metadata !107), !dbg !1671
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1672, metadata !107), !dbg !1673
  %14 = load i8**, i8*** %7, align 8, !dbg !1674
  %15 = icmp ne i8** %14, null, !dbg !1676
  br i1 %15, label %16, label %18, !dbg !1677

; <label>:16:                                     ; preds = %3
  %17 = load i8**, i8*** %7, align 8, !dbg !1678
  store i8* null, i8** %17, align 8, !dbg !1680
  br label %18, !dbg !1681

; <label>:18:                                     ; preds = %16, %3
  %19 = load i8*, i8** %5, align 8, !dbg !1682
  %20 = icmp eq i8* %19, null, !dbg !1684
  br i1 %20, label %21, label %22, !dbg !1685

; <label>:21:                                     ; preds = %18
  store i8 1, i8* %4, align 1, !dbg !1686
  br label %105, !dbg !1686

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %5, align 8, !dbg !1688
  %24 = call i64 @Unicode_LengthInCodePoints(i8* %23), !dbg !1689
  store i64 %24, i64* %10, align 8, !dbg !1690
  %25 = load i64, i64* %10, align 8, !dbg !1691
  %26 = icmp eq i64 %25, 0, !dbg !1693
  br i1 %26, label %27, label %28, !dbg !1694

; <label>:27:                                     ; preds = %22
  store i8 1, i8* %4, align 1, !dbg !1695
  br label %105, !dbg !1695

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %5, align 8, !dbg !1697
  call void @File_SplitName(i8* %29, i8** %8, i8** null, i8** null), !dbg !1698
  %30 = load i8*, i8** %8, align 8, !dbg !1699
  %31 = call i64 @Unicode_LengthInCodePoints(i8* %30), !dbg !1700
  store i64 %31, i64* %9, align 8, !dbg !1701
  %32 = load i8*, i8** %8, align 8, !dbg !1702
  call void @Posix_Free(i8* %32), !dbg !1703
  %33 = load i64, i64* %9, align 8, !dbg !1704
  %34 = load i64, i64* %10, align 8, !dbg !1706
  %35 = icmp sge i64 %33, %34, !dbg !1707
  br i1 %35, label %36, label %39, !dbg !1708

; <label>:36:                                     ; preds = %28
  %37 = load i8*, i8** %5, align 8, !dbg !1709
  %38 = call signext i8 @File_IsDirectory(i8* %37), !dbg !1711
  store i8 %38, i8* %4, align 1, !dbg !1712
  br label %105, !dbg !1712

; <label>:39:                                     ; preds = %28
  br label %40, !dbg !1713

; <label>:40:                                     ; preds = %39, %103
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1714, metadata !107), !dbg !1716
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1717, metadata !107), !dbg !1718
  %41 = load i8*, i8** %5, align 8, !dbg !1719
  %42 = load i64, i64* %9, align 8, !dbg !1720
  %43 = add nsw i64 %42, 1, !dbg !1721
  %44 = call i64 @FileFirstSlashIndex(i8* %41, i64 %43), !dbg !1722
  store i64 %44, i64* %9, align 8, !dbg !1723
  %45 = load i8*, i8** %5, align 8, !dbg !1724
  %46 = load i64, i64* %9, align 8, !dbg !1725
  %47 = icmp eq i64 %46, -1, !dbg !1726
  br i1 %47, label %48, label %49, !dbg !1727

; <label>:48:                                     ; preds = %40
  br label %51, !dbg !1728

; <label>:49:                                     ; preds = %40
  %50 = load i64, i64* %9, align 8, !dbg !1730
  br label %51, !dbg !1732

; <label>:51:                                     ; preds = %49, %48
  %52 = phi i64 [ -1, %48 ], [ %50, %49 ], !dbg !1733
  %53 = call i8* @Unicode_Substr(i8* %45, i64 0, i64 %52), !dbg !1735
  store i8* %53, i8** %12, align 8, !dbg !1736
  %54 = load i8*, i8** %12, align 8, !dbg !1737
  %55 = load i32, i32* %6, align 4, !dbg !1738
  %56 = call i32 @FileCreateDirectory(i8* %54, i32 %55), !dbg !1739
  store i32 %56, i32* %11, align 4, !dbg !1740
  %57 = load i32, i32* %11, align 4, !dbg !1741
  %58 = icmp eq i32 %57, 0, !dbg !1743
  br i1 %58, label %59, label %70, !dbg !1744

; <label>:59:                                     ; preds = %51
  %60 = load i8**, i8*** %7, align 8, !dbg !1745
  %61 = icmp ne i8** %60, null, !dbg !1748
  br i1 %61, label %62, label %69, !dbg !1749

; <label>:62:                                     ; preds = %59
  %63 = load i8**, i8*** %7, align 8, !dbg !1750
  %64 = load i8*, i8** %63, align 8, !dbg !1752
  %65 = icmp eq i8* %64, null, !dbg !1753
  br i1 %65, label %66, label %69, !dbg !1754

; <label>:66:                                     ; preds = %62
  %67 = load i8*, i8** %12, align 8, !dbg !1755
  %68 = load i8**, i8*** %7, align 8, !dbg !1757
  store i8* %67, i8** %68, align 8, !dbg !1758
  store i8* null, i8** %12, align 8, !dbg !1759
  br label %69, !dbg !1760

; <label>:69:                                     ; preds = %66, %62, %59
  br label %88, !dbg !1761

; <label>:70:                                     ; preds = %51
  %71 = load i32, i32* %11, align 4, !dbg !1762
  %72 = icmp eq i32 %71, 17, !dbg !1765
  br i1 %72, label %73, label %87, !dbg !1766

; <label>:73:                                     ; preds = %70
  call void @llvm.dbg.declare(metadata %struct.FileData* %13, metadata !1767, metadata !107), !dbg !1769
  %74 = load i8*, i8** %12, align 8, !dbg !1770
  %75 = call i32 @FileAttributes(i8* %74, %struct.FileData* %13), !dbg !1771
  store i32 %75, i32* %11, align 4, !dbg !1772
  %76 = load i32, i32* %11, align 4, !dbg !1773
  %77 = icmp eq i32 %76, 0, !dbg !1775
  br i1 %77, label %78, label %86, !dbg !1776

; <label>:78:                                     ; preds = %73
  %79 = getelementptr inbounds %struct.FileData, %struct.FileData* %13, i32 0, i32 4, !dbg !1777
  %80 = load i32, i32* %79, align 8, !dbg !1777
  %81 = icmp ne i32 %80, 1, !dbg !1780
  br i1 %81, label %82, label %85, !dbg !1781

; <label>:82:                                     ; preds = %78
  store i32 20, i32* %11, align 4, !dbg !1782
  %83 = load i32, i32* %11, align 4, !dbg !1784
  %84 = call i32* @__errno_location() #1, !dbg !1785
  store i32 %83, i32* %84, align 4, !dbg !1786
  br label %85, !dbg !1787

; <label>:85:                                     ; preds = %82, %78
  br label %86, !dbg !1788

; <label>:86:                                     ; preds = %85, %73
  br label %87, !dbg !1789

; <label>:87:                                     ; preds = %86, %70
  br label %88

; <label>:88:                                     ; preds = %87, %69
  %89 = load i32, i32* %11, align 4, !dbg !1790
  %90 = icmp ne i32 %89, 0, !dbg !1792
  br i1 %90, label %91, label %94, !dbg !1793

; <label>:91:                                     ; preds = %88
  %92 = load i8*, i8** %12, align 8, !dbg !1794
  %93 = load i32, i32* %11, align 4, !dbg !1796
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.File_CreateDirectoryHierarchyEx, i32 0, i32 0), i8* %92, i32 %93), !dbg !1797
  br label %94, !dbg !1798

; <label>:94:                                     ; preds = %91, %88
  %95 = load i8*, i8** %12, align 8, !dbg !1799
  call void @Posix_Free(i8* %95), !dbg !1800
  %96 = load i32, i32* %11, align 4, !dbg !1801
  %97 = icmp ne i32 %96, 0, !dbg !1803
  br i1 %97, label %98, label %99, !dbg !1804

; <label>:98:                                     ; preds = %94
  store i8 0, i8* %4, align 1, !dbg !1805
  br label %105, !dbg !1805

; <label>:99:                                     ; preds = %94
  %100 = load i64, i64* %9, align 8, !dbg !1807
  %101 = icmp eq i64 %100, -1, !dbg !1809
  br i1 %101, label %102, label %103, !dbg !1810

; <label>:102:                                    ; preds = %99
  br label %104, !dbg !1811

; <label>:103:                                    ; preds = %99
  br label %40, !dbg !1813, !llvm.loop !1815

; <label>:104:                                    ; preds = %102
  store i8 1, i8* %4, align 1, !dbg !1816
  br label %105, !dbg !1816

; <label>:105:                                    ; preds = %104, %98, %36, %27, %21
  %106 = load i8, i8* %4, align 1, !dbg !1817
  ret i8 %106, !dbg !1817
}

declare i64 @Unicode_LengthInCodePoints(i8*) #3

declare void @File_SplitName(i8*, i8**, i8**, i8**) #3

; Function Attrs: nounwind uwtable
define internal i64 @FileFirstSlashIndex(i8*, i64) #0 !dbg !1818 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1821, metadata !107), !dbg !1822
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1823, metadata !107), !dbg !1824
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1825, metadata !107), !dbg !1826
  %6 = load i8*, i8** %3, align 8, !dbg !1827
  %7 = load i64, i64* %4, align 8, !dbg !1828
  %8 = call i64 @Unicode_FindSubstrInRange(i8* %6, i64 %7, i64 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i64 0, i64 1), !dbg !1829
  store i64 %8, i64* %5, align 8, !dbg !1830
  %9 = load i64, i64* %5, align 8, !dbg !1831
  ret i64 %9, !dbg !1832
}

declare i8* @Unicode_Substr(i8*, i64, i64) #3

declare void @Log(i8*, ...) #3

; Function Attrs: nounwind uwtable
define signext i8 @File_DeleteDirectoryContent(i8*) #0 !dbg !1833 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1834, metadata !107), !dbg !1835
  %3 = load i8*, i8** %2, align 8, !dbg !1836
  %4 = call signext i8 @FileDeleteDirectoryTree(i8* %3, i8 signext 1), !dbg !1837
  ret i8 %4, !dbg !1838
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @FileDeleteDirectoryTree(i8*, i8 signext) #2 !dbg !1839 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1842, metadata !107), !dbg !1843
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1844, metadata !107), !dbg !1845
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1846, metadata !107), !dbg !1847
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1848, metadata !107), !dbg !1849
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1850, metadata !107), !dbg !1851
  store i32 0, i32* %8, align 4, !dbg !1851
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1852, metadata !107), !dbg !1853
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1854, metadata !107), !dbg !1855
  store i8** null, i8*** %10, align 8, !dbg !1855
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1856, metadata !107), !dbg !1857
  store i8 0, i8* %11, align 1, !dbg !1857
  %14 = load i8*, i8** %4, align 8, !dbg !1858
  %15 = call i32 @Posix_EuidAccess(i8* %14, i32 0), !dbg !1860
  %16 = icmp ne i32 %15, 0, !dbg !1861
  br i1 %16, label %17, label %28, !dbg !1862

; <label>:17:                                     ; preds = %2
  %18 = call i32* @__errno_location() #1, !dbg !1863
  %19 = load i32, i32* %18, align 4, !dbg !1866
  %20 = icmp eq i32 %19, 38, !dbg !1867
  br i1 %20, label %21, label %24, !dbg !1868

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %4, align 8, !dbg !1869
  %23 = call i32 @FileAttributes(i8* %22, %struct.FileData* null), !dbg !1871
  store i32 %23, i32* %8, align 4, !dbg !1872
  br label %27, !dbg !1873

; <label>:24:                                     ; preds = %17
  %25 = call i32* @__errno_location() #1, !dbg !1874
  %26 = load i32, i32* %25, align 4, !dbg !1876
  store i32 %26, i32* %8, align 4, !dbg !1877
  br label %27

; <label>:27:                                     ; preds = %24, %21
  br label %28, !dbg !1878

; <label>:28:                                     ; preds = %27, %2
  %29 = load i32, i32* %8, align 4, !dbg !1879
  switch i32 %29, label %31 [
    i32 2, label %30
    i32 20, label %30
  ], !dbg !1880

; <label>:30:                                     ; preds = %28, %28
  store i8 1, i8* %3, align 1, !dbg !1881
  br label %107, !dbg !1881

; <label>:31:                                     ; preds = %28
  br label %32, !dbg !1883

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %4, align 8, !dbg !1884
  %34 = call i32 @File_ListDirectory(i8* %33, i8*** %10), !dbg !1885
  store i32 %34, i32* %7, align 4, !dbg !1886
  %35 = load i32, i32* %7, align 4, !dbg !1887
  %36 = icmp eq i32 %35, -1, !dbg !1889
  br i1 %36, label %37, label %38, !dbg !1890

; <label>:37:                                     ; preds = %32
  store i8 0, i8* %3, align 1, !dbg !1891
  br label %107, !dbg !1891

; <label>:38:                                     ; preds = %32
  %39 = load i8*, i8** %4, align 8, !dbg !1893
  %40 = call i8* @Unicode_Append(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)), !dbg !1894
  store i8* %40, i8** %9, align 8, !dbg !1895
  store i32 0, i32* %6, align 4, !dbg !1896
  br label %41, !dbg !1898

; <label>:41:                                     ; preds = %82, %38
  %42 = load i32, i32* %6, align 4, !dbg !1899
  %43 = load i32, i32* %7, align 4, !dbg !1902
  %44 = icmp slt i32 %42, %43, !dbg !1903
  br i1 %44, label %45, label %85, !dbg !1904

; <label>:45:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1905, metadata !107), !dbg !1907
  call void @llvm.dbg.declare(metadata %struct.stat* %13, metadata !1908, metadata !107), !dbg !1909
  %46 = load i8*, i8** %9, align 8, !dbg !1910
  %47 = load i32, i32* %6, align 4, !dbg !1911
  %48 = sext i32 %47 to i64, !dbg !1912
  %49 = load i8**, i8*** %10, align 8, !dbg !1912
  %50 = getelementptr inbounds i8*, i8** %49, i64 %48, !dbg !1912
  %51 = load i8*, i8** %50, align 8, !dbg !1912
  %52 = call i8* @Unicode_Append(i8* %46, i8* %51), !dbg !1913
  store i8* %52, i8** %12, align 8, !dbg !1914
  %53 = load i8*, i8** %12, align 8, !dbg !1915
  %54 = call i32 @Posix_Lstat(i8* %53, %struct.stat* %13), !dbg !1917
  %55 = icmp eq i32 %54, 0, !dbg !1918
  br i1 %55, label %56, label %79, !dbg !1919

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 3, !dbg !1920
  %58 = load i32, i32* %57, align 8, !dbg !1920
  %59 = and i32 %58, 61440, !dbg !1922
  switch i32 %59, label %72 [
    i32 16384, label %60
    i32 40960, label %66
  ], !dbg !1923

; <label>:60:                                     ; preds = %56
  %61 = load i8*, i8** %12, align 8, !dbg !1924
  %62 = call signext i8 @FileDeleteDirectoryTree(i8* %61, i8 signext 0), !dbg !1927
  %63 = icmp ne i8 %62, 0, !dbg !1927
  br i1 %63, label %65, label %64, !dbg !1928

; <label>:64:                                     ; preds = %60
  store i8 1, i8* %11, align 1, !dbg !1929
  br label %65, !dbg !1931

; <label>:65:                                     ; preds = %64, %60
  br label %78, !dbg !1932

; <label>:66:                                     ; preds = %56
  %67 = load i8*, i8** %12, align 8, !dbg !1933
  %68 = call i32 @FileDeletion(i8* %67, i8 signext 0), !dbg !1935
  %69 = icmp ne i32 %68, 0, !dbg !1936
  br i1 %69, label %70, label %71, !dbg !1937

; <label>:70:                                     ; preds = %66
  store i8 1, i8* %11, align 1, !dbg !1938
  br label %71, !dbg !1940

; <label>:71:                                     ; preds = %70, %66
  br label %78, !dbg !1941

; <label>:72:                                     ; preds = %56
  %73 = load i8*, i8** %12, align 8, !dbg !1942
  %74 = call i32 @FileDeletion(i8* %73, i8 signext 0), !dbg !1944
  %75 = icmp ne i32 %74, 0, !dbg !1945
  br i1 %75, label %76, label %77, !dbg !1946

; <label>:76:                                     ; preds = %72
  store i8 1, i8* %11, align 1, !dbg !1947
  br label %77, !dbg !1949

; <label>:77:                                     ; preds = %76, %72
  br label %78, !dbg !1950

; <label>:78:                                     ; preds = %77, %71, %65
  br label %80, !dbg !1951

; <label>:79:                                     ; preds = %45
  store i8 1, i8* %11, align 1, !dbg !1952
  br label %80

; <label>:80:                                     ; preds = %79, %78
  %81 = load i8*, i8** %12, align 8, !dbg !1954
  call void @Posix_Free(i8* %81), !dbg !1955
  br label %82, !dbg !1956

; <label>:82:                                     ; preds = %80
  %83 = load i32, i32* %6, align 4, !dbg !1957
  %84 = add nsw i32 %83, 1, !dbg !1957
  store i32 %84, i32* %6, align 4, !dbg !1957
  br label %41, !dbg !1959, !llvm.loop !1960

; <label>:85:                                     ; preds = %41
  %86 = load i8*, i8** %9, align 8, !dbg !1962
  call void @Posix_Free(i8* %86), !dbg !1963
  %87 = load i8, i8* %5, align 1, !dbg !1964
  %88 = icmp ne i8 %87, 0, !dbg !1964
  br i1 %88, label %98, label %89, !dbg !1966

; <label>:89:                                     ; preds = %85
  %90 = load i8, i8* %11, align 1, !dbg !1967
  %91 = icmp ne i8 %90, 0, !dbg !1967
  br i1 %91, label %97, label %92, !dbg !1970

; <label>:92:                                     ; preds = %89
  %93 = load i8*, i8** %4, align 8, !dbg !1971
  %94 = call signext i8 @File_DeleteEmptyDirectory(i8* %93), !dbg !1973
  %95 = icmp ne i8 %94, 0, !dbg !1973
  br i1 %95, label %97, label %96, !dbg !1974

; <label>:96:                                     ; preds = %92
  store i8 1, i8* %11, align 1, !dbg !1975
  br label %97, !dbg !1977

; <label>:97:                                     ; preds = %96, %92, %89
  br label %98, !dbg !1978

; <label>:98:                                     ; preds = %97, %85
  %99 = load i8**, i8*** %10, align 8, !dbg !1979
  %100 = load i32, i32* %7, align 4, !dbg !1980
  %101 = sext i32 %100 to i64, !dbg !1980
  call void @Util_FreeStringList(i8** %99, i64 %101), !dbg !1981
  %102 = load i8, i8* %11, align 1, !dbg !1982
  %103 = icmp ne i8 %102, 0, !dbg !1983
  %104 = xor i1 %103, true, !dbg !1983
  %105 = zext i1 %104 to i32, !dbg !1983
  %106 = trunc i32 %105 to i8, !dbg !1983
  store i8 %106, i8* %3, align 1, !dbg !1984
  br label %107, !dbg !1984

; <label>:107:                                    ; preds = %98, %37, %30
  %108 = load i8, i8* %3, align 1, !dbg !1985
  ret i8 %108, !dbg !1985
}

; Function Attrs: nounwind uwtable
define signext i8 @File_FindFileInSearchPath(i8*, i8*, i8*, i8**) #0 !dbg !1986 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1989, metadata !107), !dbg !1990
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1991, metadata !107), !dbg !1992
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1993, metadata !107), !dbg !1994
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1995, metadata !107), !dbg !1996
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1997, metadata !107), !dbg !1998
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1999, metadata !107), !dbg !2000
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2001, metadata !107), !dbg !2002
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2003, metadata !107), !dbg !2004
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2005, metadata !107), !dbg !2006
  store i8* null, i8** %13, align 8, !dbg !2006
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2007, metadata !107), !dbg !2008
  store i8* null, i8** %14, align 8, !dbg !2008
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2009, metadata !107), !dbg !2010
  store i8* null, i8** %15, align 8, !dbg !2010
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2011, metadata !107), !dbg !2012
  store i8* null, i8** %16, align 8, !dbg !2012
  %17 = load i8*, i8** %5, align 8, !dbg !2013
  %18 = call signext i8 @File_IsFullPath(i8* %17), !dbg !2014
  store i8 %18, i8* %12, align 1, !dbg !2015
  %19 = load i8, i8* %12, align 1, !dbg !2016
  %20 = icmp ne i8 %19, 0, !dbg !2016
  br i1 %20, label %21, label %24, !dbg !2018

; <label>:21:                                     ; preds = %4
  %22 = load i8*, i8** %5, align 8, !dbg !2019
  %23 = call i8* @UtilSafeStrdup0(i8* %22), !dbg !2021
  store i8* %23, i8** %9, align 8, !dbg !2022
  br label %28, !dbg !2023

; <label>:24:                                     ; preds = %4
  %25 = load i8*, i8** %7, align 8, !dbg !2024
  %26 = load i8*, i8** %5, align 8, !dbg !2026
  %27 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* %26), !dbg !2027
  store i8* %27, i8** %9, align 8, !dbg !2028
  br label %28

; <label>:28:                                     ; preds = %24, %21
  %29 = load i8*, i8** %9, align 8, !dbg !2029
  %30 = call i32 @Posix_EuidAccess(i8* %29, i32 0), !dbg !2031
  %31 = icmp eq i32 %30, 0, !dbg !2032
  br i1 %31, label %32, label %33, !dbg !2033

; <label>:32:                                     ; preds = %28
  br label %101, !dbg !2034

; <label>:33:                                     ; preds = %28
  %34 = call i32* @__errno_location() #1, !dbg !2036
  %35 = load i32, i32* %34, align 4, !dbg !2038
  %36 = icmp eq i32 %35, 38, !dbg !2039
  br i1 %36, label %37, label %42, !dbg !2040

; <label>:37:                                     ; preds = %33
  %38 = load i8*, i8** %9, align 8, !dbg !2041
  %39 = call i32 @FileAttributes(i8* %38, %struct.FileData* null), !dbg !2043
  %40 = icmp eq i32 %39, 0, !dbg !2044
  br i1 %40, label %41, label %42, !dbg !2045

; <label>:41:                                     ; preds = %37
  br label %101, !dbg !2046

; <label>:42:                                     ; preds = %37, %33
  %43 = load i8*, i8** %9, align 8, !dbg !2048
  call void @Posix_Free(i8* %43), !dbg !2049
  store i8* null, i8** %9, align 8, !dbg !2050
  %44 = load i8, i8* %12, align 1, !dbg !2051
  %45 = icmp ne i8 %44, 0, !dbg !2051
  br i1 %45, label %46, label %47, !dbg !2053

; <label>:46:                                     ; preds = %42
  br label %101, !dbg !2054

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %5, align 8, !dbg !2056
  call void @File_GetPathName(i8* %48, i8** %15, i8** %16), !dbg !2057
  %49 = load i8*, i8** %15, align 8, !dbg !2058
  %50 = call i64 @Unicode_LengthInCodePoints(i8* %49), !dbg !2060
  %51 = icmp ne i64 %50, 0, !dbg !2061
  br i1 %51, label %52, label %53, !dbg !2062

; <label>:52:                                     ; preds = %47
  br label %101, !dbg !2063

; <label>:53:                                     ; preds = %47
  %54 = load i8*, i8** %6, align 8, !dbg !2065
  %55 = call i8* @UtilSafeStrdup0(i8* %54), !dbg !2066
  store i8* %55, i8** %14, align 8, !dbg !2067
  %56 = load i8*, i8** %14, align 8, !dbg !2068
  %57 = call i8* @strtok_r(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8** %13) #8, !dbg !2069
  store i8* %57, i8** %10, align 8, !dbg !2070
  br label %58, !dbg !2071

; <label>:58:                                     ; preds = %97, %53
  %59 = load i8*, i8** %10, align 8, !dbg !2072
  %60 = icmp ne i8* %59, null, !dbg !2074
  br i1 %60, label %61, label %100, !dbg !2074

; <label>:61:                                     ; preds = %58
  %62 = load i8*, i8** %10, align 8, !dbg !2075
  %63 = call signext i8 @File_IsFullPath(i8* %62), !dbg !2078
  %64 = icmp ne i8 %63, 0, !dbg !2078
  br i1 %64, label %65, label %69, !dbg !2079

; <label>:65:                                     ; preds = %61
  %66 = load i8*, i8** %10, align 8, !dbg !2080
  %67 = load i8*, i8** %16, align 8, !dbg !2082
  %68 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* %67), !dbg !2083
  store i8* %68, i8** %9, align 8, !dbg !2084
  br label %83, !dbg !2085

; <label>:69:                                     ; preds = %61
  %70 = load i8*, i8** %10, align 8, !dbg !2086
  %71 = call i32 @strcasecmp(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #9, !dbg !2089
  %72 = icmp eq i32 %71, 0, !dbg !2090
  br i1 %72, label %73, label %77, !dbg !2091

; <label>:73:                                     ; preds = %69
  %74 = load i8*, i8** %7, align 8, !dbg !2092
  %75 = load i8*, i8** %16, align 8, !dbg !2094
  %76 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* %75), !dbg !2095
  store i8* %76, i8** %9, align 8, !dbg !2096
  br label %82, !dbg !2097

; <label>:77:                                     ; preds = %69
  %78 = load i8*, i8** %7, align 8, !dbg !2098
  %79 = load i8*, i8** %10, align 8, !dbg !2100
  %80 = load i8*, i8** %16, align 8, !dbg !2101
  %81 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* %80), !dbg !2102
  store i8* %81, i8** %9, align 8, !dbg !2103
  br label %82

; <label>:82:                                     ; preds = %77, %73
  br label %83

; <label>:83:                                     ; preds = %82, %65
  %84 = load i8*, i8** %9, align 8, !dbg !2104
  %85 = call i32 @Posix_EuidAccess(i8* %84, i32 0), !dbg !2106
  %86 = icmp eq i32 %85, 0, !dbg !2107
  br i1 %86, label %87, label %88, !dbg !2108

; <label>:87:                                     ; preds = %83
  br label %100, !dbg !2109

; <label>:88:                                     ; preds = %83
  %89 = call i32* @__errno_location() #1, !dbg !2111
  %90 = load i32, i32* %89, align 4, !dbg !2113
  %91 = icmp eq i32 %90, 38, !dbg !2114
  br i1 %91, label %92, label %97, !dbg !2115

; <label>:92:                                     ; preds = %88
  %93 = load i8*, i8** %9, align 8, !dbg !2116
  %94 = call i32 @FileAttributes(i8* %93, %struct.FileData* null), !dbg !2118
  %95 = icmp eq i32 %94, 0, !dbg !2119
  br i1 %95, label %96, label %97, !dbg !2120

; <label>:96:                                     ; preds = %92
  br label %100, !dbg !2121

; <label>:97:                                     ; preds = %92, %88
  %98 = load i8*, i8** %9, align 8, !dbg !2123
  call void @Posix_Free(i8* %98), !dbg !2124
  store i8* null, i8** %9, align 8, !dbg !2125
  %99 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8** %13) #8, !dbg !2126
  store i8* %99, i8** %10, align 8, !dbg !2127
  br label %58, !dbg !2128, !llvm.loop !2130

; <label>:100:                                    ; preds = %96, %87, %58
  br label %101, !dbg !2131

; <label>:101:                                    ; preds = %100, %52, %46, %41, %32
  %102 = load i8*, i8** %9, align 8, !dbg !2133
  %103 = icmp ne i8* %102, null, !dbg !2133
  br i1 %103, label %104, label %118, !dbg !2135

; <label>:104:                                    ; preds = %101
  store i8 1, i8* %11, align 1, !dbg !2136
  %105 = load i8**, i8*** %8, align 8, !dbg !2138
  %106 = icmp ne i8** %105, null, !dbg !2138
  br i1 %106, label %107, label %116, !dbg !2140

; <label>:107:                                    ; preds = %104
  %108 = load i8*, i8** %9, align 8, !dbg !2141
  %109 = call i8* @File_FullPath(i8* %108), !dbg !2143
  %110 = load i8**, i8*** %8, align 8, !dbg !2144
  store i8* %109, i8** %110, align 8, !dbg !2145
  %111 = load i8**, i8*** %8, align 8, !dbg !2146
  %112 = load i8*, i8** %111, align 8, !dbg !2148
  %113 = icmp eq i8* %112, null, !dbg !2149
  br i1 %113, label %114, label %115, !dbg !2150

; <label>:114:                                    ; preds = %107
  store i8 0, i8* %11, align 1, !dbg !2151
  br label %115, !dbg !2153

; <label>:115:                                    ; preds = %114, %107
  br label %116, !dbg !2154

; <label>:116:                                    ; preds = %115, %104
  %117 = load i8*, i8** %9, align 8, !dbg !2155
  call void @Posix_Free(i8* %117), !dbg !2156
  br label %119, !dbg !2157

; <label>:118:                                    ; preds = %101
  store i8 0, i8* %11, align 1, !dbg !2158
  br label %119

; <label>:119:                                    ; preds = %118, %116
  %120 = load i8*, i8** %14, align 8, !dbg !2160
  call void @Posix_Free(i8* %120), !dbg !2161
  %121 = load i8*, i8** %15, align 8, !dbg !2162
  call void @Posix_Free(i8* %121), !dbg !2163
  %122 = load i8*, i8** %16, align 8, !dbg !2164
  call void @Posix_Free(i8* %122), !dbg !2165
  %123 = load i8, i8* %11, align 1, !dbg !2166
  ret i8 %123, !dbg !2167
}

declare signext i8 @File_IsFullPath(i8*) #3

declare i32 @Posix_EuidAccess(i8*, i32) #3

declare void @File_GetPathName(i8*, i8**, i8**) #3

; Function Attrs: nounwind
declare i8* @strtok_r(i8*, i8*, i8**) #6

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

declare i8* @File_FullPath(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @File_ExpandAndCheckDir(i8*) #0 !dbg !2168 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2169, metadata !107), !dbg !2170
  %6 = load i8*, i8** %3, align 8, !dbg !2171
  %7 = icmp ne i8* %6, null, !dbg !2173
  br i1 %7, label %8, label %35, !dbg !2174

; <label>:8:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2175, metadata !107), !dbg !2177
  %9 = load i8*, i8** %3, align 8, !dbg !2178
  %10 = call i8* @Util_ExpandString(i8* %9), !dbg !2179
  store i8* %10, i8** %4, align 8, !dbg !2177
  %11 = load i8*, i8** %4, align 8, !dbg !2180
  %12 = icmp ne i8* %11, null, !dbg !2182
  br i1 %12, label %13, label %34, !dbg !2183

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %4, align 8, !dbg !2184
  %15 = call signext i8 @FileIsWritableDir(i8* %14), !dbg !2186
  %16 = sext i8 %15 to i32, !dbg !2186
  %17 = icmp ne i32 %16, 0, !dbg !2186
  br i1 %17, label %18, label %34, !dbg !2187

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2188, metadata !107), !dbg !2190
  %19 = load i8*, i8** %4, align 8, !dbg !2191
  %20 = call i64 @strlen(i8* %19) #9, !dbg !2192
  %21 = sub i64 %20, 1, !dbg !2193
  store i64 %21, i64* %5, align 8, !dbg !2190
  %22 = load i64, i64* %5, align 8, !dbg !2194
  %23 = load i8*, i8** %4, align 8, !dbg !2196
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !2196
  %25 = load i8, i8* %24, align 1, !dbg !2196
  %26 = sext i8 %25 to i32, !dbg !2196
  %27 = icmp eq i32 %26, 47, !dbg !2197
  br i1 %27, label %28, label %32, !dbg !2198

; <label>:28:                                     ; preds = %18
  %29 = load i64, i64* %5, align 8, !dbg !2199
  %30 = load i8*, i8** %4, align 8, !dbg !2201
  %31 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !2201
  store i8 0, i8* %31, align 1, !dbg !2202
  br label %32, !dbg !2203

; <label>:32:                                     ; preds = %28, %18
  %33 = load i8*, i8** %4, align 8, !dbg !2204
  store i8* %33, i8** %2, align 8, !dbg !2205
  br label %36, !dbg !2205

; <label>:34:                                     ; preds = %13, %8
  br label %35, !dbg !2206

; <label>:35:                                     ; preds = %34, %1
  store i8* null, i8** %2, align 8, !dbg !2207
  br label %36, !dbg !2207

; <label>:36:                                     ; preds = %35, %32
  %37 = load i8*, i8** %2, align 8, !dbg !2208
  ret i8* %37, !dbg !2208
}

declare i8* @Util_ExpandString(i8*) #3

declare signext i8 @FileIsWritableDir(i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @FileSimpleRandom() #0 !dbg !92 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.MXUserExclLock*, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2209, metadata !107), !dbg !2210
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %2, metadata !2211, metadata !107), !dbg !2212
  %4 = call %struct.MXUserExclLock* @MXUser_CreateSingletonExclLock(%struct.Atomic_uint64* @FileSimpleRandom.lckStorage, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i32 -16777216), !dbg !2213
  store %struct.MXUserExclLock* %4, %struct.MXUserExclLock** %2, align 8, !dbg !2212
  %5 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !2214
  call void @MXUser_AcquireExclLock(%struct.MXUserExclLock* %5), !dbg !2215
  %6 = load %struct.rqContext*, %struct.rqContext** @FileSimpleRandom.context, align 8, !dbg !2216
  %7 = icmp eq %struct.rqContext* %6, null, !dbg !2218
  %8 = zext i1 %7 to i32, !dbg !2218
  %9 = sext i32 %8 to i64, !dbg !2219
  %10 = icmp ne i64 %9, 0, !dbg !2220
  br i1 %10, label %11, label %15, !dbg !2221

; <label>:11:                                     ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2222, metadata !107), !dbg !2224
  %12 = call i32 @getpid() #8, !dbg !2225
  store i32 %12, i32* %3, align 4, !dbg !2226
  %13 = load i32, i32* %3, align 4, !dbg !2227
  %14 = call %struct.rqContext* @Random_QuickSeed(i32 %13), !dbg !2228
  store %struct.rqContext* %14, %struct.rqContext** @FileSimpleRandom.context, align 8, !dbg !2229
  br label %15, !dbg !2230

; <label>:15:                                     ; preds = %11, %0
  %16 = load %struct.rqContext*, %struct.rqContext** @FileSimpleRandom.context, align 8, !dbg !2231
  %17 = call i32 @Random_Quick(%struct.rqContext* %16), !dbg !2232
  store i32 %17, i32* %1, align 4, !dbg !2233
  %18 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !2234
  call void @MXUser_ReleaseExclLock(%struct.MXUserExclLock* %18), !dbg !2235
  %19 = load i32, i32* %1, align 4, !dbg !2236
  ret i32 %19, !dbg !2237
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.MXUserExclLock* @MXUser_CreateSingletonExclLock(%struct.Atomic_uint64*, i8*, i32) #2 !dbg !2238 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MXUserExclLock*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !2242, metadata !107), !dbg !2243
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2244, metadata !107), !dbg !2245
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2246, metadata !107), !dbg !2247
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %7, metadata !2248, metadata !107), !dbg !2249
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !2250
  %9 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %8), !dbg !2251
  %10 = bitcast i8* %9 to %struct.MXUserExclLock*, !dbg !2252
  store %struct.MXUserExclLock* %10, %struct.MXUserExclLock** %7, align 8, !dbg !2253
  %11 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !2254
  %12 = icmp eq %struct.MXUserExclLock* %11, null, !dbg !2256
  %13 = zext i1 %12 to i32, !dbg !2256
  %14 = sext i32 %13 to i64, !dbg !2257
  %15 = icmp ne i64 %14, 0, !dbg !2258
  br i1 %15, label %16, label %21, !dbg !2259

; <label>:16:                                     ; preds = %3
  %17 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !2260
  %18 = load i8*, i8** %5, align 8, !dbg !2262
  %19 = load i32, i32* %6, align 4, !dbg !2263
  %20 = call %struct.MXUserExclLock* @MXUser_CreateSingletonExclLockInt(%struct.Atomic_uint64* %17, i8* %18, i32 %19), !dbg !2264
  store %struct.MXUserExclLock* %20, %struct.MXUserExclLock** %7, align 8, !dbg !2265
  br label %21, !dbg !2266

; <label>:21:                                     ; preds = %16, %3
  %22 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !2267
  ret %struct.MXUserExclLock* %22, !dbg !2268
}

declare void @MXUser_AcquireExclLock(%struct.MXUserExclLock*) #3

; Function Attrs: nounwind
declare i32 @getpid() #6

declare %struct.rqContext* @Random_QuickSeed(i32) #3

declare i32 @Random_Quick(%struct.rqContext*) #3

declare void @MXUser_ReleaseExclLock(%struct.MXUserExclLock*) #3

; Function Attrs: nounwind uwtable
define i32 @FileSleeper(i32, i32) #0 !dbg !2269 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2272, metadata !107), !dbg !2273
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2274, metadata !107), !dbg !2275
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2276, metadata !107), !dbg !2277
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2278, metadata !107), !dbg !2279
  %8 = load i32, i32* %4, align 4, !dbg !2280
  %9 = load i32, i32* %3, align 4, !dbg !2281
  %10 = sub i32 %8, %9, !dbg !2282
  store i32 %10, i32* %5, align 4, !dbg !2283
  %11 = load i32, i32* %5, align 4, !dbg !2284
  %12 = icmp eq i32 %11, 0, !dbg !2286
  br i1 %12, label %13, label %15, !dbg !2287

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %3, align 4, !dbg !2288
  store i32 %14, i32* %6, align 4, !dbg !2290
  br label %26, !dbg !2291

; <label>:15:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata float* %7, metadata !2292, metadata !107), !dbg !2294
  %16 = call i32 @FileSimpleRandom(), !dbg !2295
  %17 = uitofp i32 %16 to float, !dbg !2296
  %18 = fdiv float %17, 0x41F0000000000000, !dbg !2297
  store float %18, float* %7, align 4, !dbg !2294
  %19 = load i32, i32* %3, align 4, !dbg !2298
  %20 = load float, float* %7, align 4, !dbg !2299
  %21 = load i32, i32* %5, align 4, !dbg !2300
  %22 = uitofp i32 %21 to float, !dbg !2300
  %23 = fmul float %20, %22, !dbg !2301
  %24 = fptoui float %23 to i32, !dbg !2302
  %25 = add i32 %19, %24, !dbg !2303
  store i32 %25, i32* %6, align 4, !dbg !2304
  br label %26

; <label>:26:                                     ; preds = %15, %13
  %27 = load i32, i32* %6, align 4, !dbg !2305
  %28 = mul i32 1000, %27, !dbg !2306
  %29 = zext i32 %28 to i64, !dbg !2307
  call void @Util_Usleep(i64 %29), !dbg !2308
  %30 = load i32, i32* %6, align 4, !dbg !2309
  ret i32 %30, !dbg !2310
}

declare void @Util_Usleep(i64) #3

; Function Attrs: nounwind uwtable
define void @File_Rotate(i8*, i32, i8 signext, i8**) #0 !dbg !2311 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2314, metadata !107), !dbg !2315
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2316, metadata !107), !dbg !2317
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2318, metadata !107), !dbg !2319
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !2320, metadata !107), !dbg !2321
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2322, metadata !107), !dbg !2323
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2324, metadata !107), !dbg !2325
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2326, metadata !107), !dbg !2327
  %12 = load i8*, i8** %5, align 8, !dbg !2328
  %13 = call i8* @strrchr(i8* %12, i32 46) #9, !dbg !2330
  store i8* %13, i8** %9, align 8, !dbg !2331
  %14 = icmp eq i8* %13, null, !dbg !2332
  br i1 %14, label %15, label %20, !dbg !2333

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %5, align 8, !dbg !2334
  %17 = load i8*, i8** %5, align 8, !dbg !2336
  %18 = call i64 @strlen(i8* %17) #9, !dbg !2337
  %19 = getelementptr inbounds i8, i8* %16, i64 %18, !dbg !2338
  store i8* %19, i8** %9, align 8, !dbg !2339
  br label %20, !dbg !2340

; <label>:20:                                     ; preds = %15, %4
  %21 = load i8*, i8** %9, align 8, !dbg !2341
  %22 = load i8*, i8** %5, align 8, !dbg !2342
  %23 = ptrtoint i8* %21 to i64, !dbg !2343
  %24 = ptrtoint i8* %22 to i64, !dbg !2343
  %25 = sub i64 %23, %24, !dbg !2343
  store i64 %25, i64* %10, align 8, !dbg !2344
  %26 = load i8*, i8** %5, align 8, !dbg !2345
  %27 = call i8* @UtilSafeStrdup0(i8* %26), !dbg !2346
  store i8* %27, i8** %11, align 8, !dbg !2347
  %28 = load i64, i64* %10, align 8, !dbg !2348
  %29 = load i8*, i8** %11, align 8, !dbg !2349
  %30 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !2349
  store i8 0, i8* %30, align 1, !dbg !2350
  %31 = load i8, i8* %7, align 1, !dbg !2351
  %32 = icmp ne i8 %31, 0, !dbg !2351
  br i1 %32, label %33, label %39, !dbg !2353

; <label>:33:                                     ; preds = %20
  %34 = load i8*, i8** %5, align 8, !dbg !2354
  %35 = load i8*, i8** %11, align 8, !dbg !2356
  %36 = load i8*, i8** %9, align 8, !dbg !2357
  %37 = load i32, i32* %6, align 4, !dbg !2358
  %38 = load i8**, i8*** %8, align 8, !dbg !2359
  call void @FileRotateByRenumber(i8* %34, i8* %35, i8* %36, i32 %37, i8** %38), !dbg !2360
  br label %45, !dbg !2361

; <label>:39:                                     ; preds = %20
  %40 = load i8*, i8** %5, align 8, !dbg !2362
  %41 = load i8*, i8** %11, align 8, !dbg !2364
  %42 = load i8*, i8** %9, align 8, !dbg !2365
  %43 = load i32, i32* %6, align 4, !dbg !2366
  %44 = load i8**, i8*** %8, align 8, !dbg !2367
  call void @FileRotateByRename(i8* %40, i8* %41, i8* %42, i32 %43, i8** %44), !dbg !2368
  br label %45

; <label>:45:                                     ; preds = %39, %33
  %46 = load i8*, i8** %11, align 8, !dbg !2369
  call void @Posix_Free(i8* %46), !dbg !2370
  ret void, !dbg !2371
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define internal void @FileRotateByRenumber(i8*, i8*, i8*, i32, i8**) #0 !dbg !2372 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2375, metadata !107), !dbg !2376
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2377, metadata !107), !dbg !2378
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2379, metadata !107), !dbg !2380
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2381, metadata !107), !dbg !2382
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2383, metadata !107), !dbg !2384
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2385, metadata !107), !dbg !2386
  store i8* null, i8** %11, align 8, !dbg !2386
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2387, metadata !107), !dbg !2388
  store i8* null, i8** %12, align 8, !dbg !2388
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2389, metadata !107), !dbg !2390
  store i8* null, i8** %13, align 8, !dbg !2390
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2391, metadata !107), !dbg !2392
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2393, metadata !107), !dbg !2394
  store i8* null, i8** %15, align 8, !dbg !2394
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2395, metadata !107), !dbg !2396
  store i32 0, i32* %16, align 4, !dbg !2396
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2397, metadata !107), !dbg !2398
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2399, metadata !107), !dbg !2400
  call void @llvm.dbg.declare(metadata i32* %19, metadata !2401, metadata !107), !dbg !2402
  store i32 0, i32* %19, align 4, !dbg !2402
  call void @llvm.dbg.declare(metadata i8*** %20, metadata !2403, metadata !107), !dbg !2404
  store i8** null, i8*** %20, align 8, !dbg !2404
  call void @llvm.dbg.declare(metadata i32** %21, metadata !2405, metadata !107), !dbg !2406
  store i32* null, i32** %21, align 8, !dbg !2406
  call void @llvm.dbg.declare(metadata i32* %22, metadata !2407, metadata !107), !dbg !2408
  %26 = load i8**, i8*** %10, align 8, !dbg !2409
  %27 = icmp ne i8** %26, null, !dbg !2411
  br i1 %27, label %28, label %30, !dbg !2412

; <label>:28:                                     ; preds = %5
  %29 = load i8**, i8*** %10, align 8, !dbg !2413
  store i8* null, i8** %29, align 8, !dbg !2415
  br label %30, !dbg !2416

; <label>:30:                                     ; preds = %28, %5
  %31 = load i8*, i8** %7, align 8, !dbg !2417
  %32 = call i8* @File_FullPath(i8* %31), !dbg !2418
  store i8* %32, i8** %15, align 8, !dbg !2419
  %33 = load i8*, i8** %15, align 8, !dbg !2420
  %34 = icmp eq i8* %33, null, !dbg !2422
  br i1 %34, label %35, label %37, !dbg !2423

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %7, align 8, !dbg !2424
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileRotateByRenumber, i32 0, i32 0), i8* %36), !dbg !2426
  br label %194, !dbg !2427

; <label>:37:                                     ; preds = %30
  %38 = load i8*, i8** %15, align 8, !dbg !2428
  call void @File_GetPathName(i8* %38, i8** %11, i8** %13), !dbg !2429
  %39 = load i8*, i8** %11, align 8, !dbg !2430
  %40 = icmp eq i8* %39, null, !dbg !2432
  br i1 %40, label %46, label %41, !dbg !2433

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %11, align 8, !dbg !2434
  %43 = load i8, i8* %42, align 1, !dbg !2436
  %44 = sext i8 %43 to i32, !dbg !2436
  %45 = icmp eq i32 %44, 0, !dbg !2437
  br i1 %45, label %46, label %48, !dbg !2438

; <label>:46:                                     ; preds = %41, %37
  %47 = call i8* @Unicode_Duplicate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)), !dbg !2439
  store i8* %47, i8** %11, align 8, !dbg !2441
  br label %48, !dbg !2442

; <label>:48:                                     ; preds = %46, %41
  %49 = load i8*, i8** %13, align 8, !dbg !2443
  %50 = icmp eq i8* %49, null, !dbg !2445
  br i1 %50, label %56, label %51, !dbg !2446

; <label>:51:                                     ; preds = %48
  %52 = load i8*, i8** %13, align 8, !dbg !2447
  %53 = load i8, i8* %52, align 1, !dbg !2449
  %54 = sext i8 %53 to i32, !dbg !2449
  %55 = icmp eq i32 %54, 0, !dbg !2450
  br i1 %55, label %56, label %58, !dbg !2451

; <label>:56:                                     ; preds = %51, %48
  %57 = load i8*, i8** %7, align 8, !dbg !2452
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileRotateByRenumber, i32 0, i32 0), i8* %57), !dbg !2454
  br label %194, !dbg !2455

; <label>:58:                                     ; preds = %51
  %59 = load i8*, i8** %13, align 8, !dbg !2456
  %60 = load i8*, i8** %8, align 8, !dbg !2457
  %61 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i8* %59, i8* %60), !dbg !2458
  store i8* %61, i8** %12, align 8, !dbg !2459
  %62 = load i8*, i8** %11, align 8, !dbg !2460
  %63 = call i32 @File_ListDirectory(i8* %62, i8*** %20), !dbg !2461
  store i32 %63, i32* %18, align 4, !dbg !2462
  %64 = load i32, i32* %18, align 4, !dbg !2463
  %65 = icmp eq i32 %64, -1, !dbg !2465
  br i1 %65, label %66, label %68, !dbg !2466

; <label>:66:                                     ; preds = %58
  %67 = load i8*, i8** %11, align 8, !dbg !2467
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileRotateByRenumber, i32 0, i32 0), i8* %67), !dbg !2469
  br label %194, !dbg !2470

; <label>:68:                                     ; preds = %58
  %69 = load i32, i32* %18, align 4, !dbg !2471
  %70 = sext i32 %69 to i64, !dbg !2472
  %71 = call i8* @UtilSafeCalloc0(i64 %70, i64 4), !dbg !2473
  %72 = bitcast i8* %71 to i32*, !dbg !2473
  store i32* %72, i32** %21, align 8, !dbg !2474
  store i32 0, i32* %17, align 4, !dbg !2475
  br label %73, !dbg !2477

; <label>:73:                                     ; preds = %109, %68
  %74 = load i32, i32* %17, align 4, !dbg !2478
  %75 = load i32, i32* %18, align 4, !dbg !2481
  %76 = icmp slt i32 %74, %75, !dbg !2482
  br i1 %76, label %77, label %112, !dbg !2483

; <label>:77:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata i32* %23, metadata !2484, metadata !107), !dbg !2486
  call void @llvm.dbg.declare(metadata i32* %24, metadata !2487, metadata !107), !dbg !2488
  store i32 0, i32* %24, align 4, !dbg !2488
  %78 = load i32, i32* %17, align 4, !dbg !2489
  %79 = sext i32 %78 to i64, !dbg !2491
  %80 = load i8**, i8*** %20, align 8, !dbg !2491
  %81 = getelementptr inbounds i8*, i8** %80, i64 %79, !dbg !2491
  %82 = load i8*, i8** %81, align 8, !dbg !2491
  %83 = load i8*, i8** %12, align 8, !dbg !2492
  %84 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %82, i8* %83, i32* %23, i32* %24) #8, !dbg !2493
  %85 = icmp sge i32 %84, 1, !dbg !2494
  br i1 %85, label %86, label %103, !dbg !2495

; <label>:86:                                     ; preds = %77
  %87 = load i32, i32* %24, align 4, !dbg !2496
  %88 = sext i32 %87 to i64, !dbg !2496
  %89 = load i32, i32* %17, align 4, !dbg !2497
  %90 = sext i32 %89 to i64, !dbg !2498
  %91 = load i8**, i8*** %20, align 8, !dbg !2498
  %92 = getelementptr inbounds i8*, i8** %91, i64 %90, !dbg !2498
  %93 = load i8*, i8** %92, align 8, !dbg !2498
  %94 = call i64 @strlen(i8* %93) #9, !dbg !2499
  %95 = icmp eq i64 %88, %94, !dbg !2500
  br i1 %95, label %96, label %103, !dbg !2501

; <label>:96:                                     ; preds = %86
  %97 = load i32, i32* %23, align 4, !dbg !2503
  %98 = load i32, i32* %19, align 4, !dbg !2505
  %99 = add nsw i32 %98, 1, !dbg !2505
  store i32 %99, i32* %19, align 4, !dbg !2505
  %100 = sext i32 %98 to i64, !dbg !2506
  %101 = load i32*, i32** %21, align 8, !dbg !2506
  %102 = getelementptr inbounds i32, i32* %101, i64 %100, !dbg !2506
  store i32 %97, i32* %102, align 4, !dbg !2507
  br label %103, !dbg !2508

; <label>:103:                                    ; preds = %96, %86, %77
  %104 = load i32, i32* %17, align 4, !dbg !2509
  %105 = sext i32 %104 to i64, !dbg !2510
  %106 = load i8**, i8*** %20, align 8, !dbg !2510
  %107 = getelementptr inbounds i8*, i8** %106, i64 %105, !dbg !2510
  %108 = load i8*, i8** %107, align 8, !dbg !2510
  call void @Posix_Free(i8* %108), !dbg !2511
  br label %109, !dbg !2512

; <label>:109:                                    ; preds = %103
  %110 = load i32, i32* %17, align 4, !dbg !2513
  %111 = add nsw i32 %110, 1, !dbg !2513
  store i32 %111, i32* %17, align 4, !dbg !2513
  br label %73, !dbg !2515, !llvm.loop !2516

; <label>:112:                                    ; preds = %73
  %113 = load i32, i32* %19, align 4, !dbg !2518
  %114 = icmp sgt i32 %113, 0, !dbg !2520
  br i1 %114, label %115, label %126, !dbg !2521

; <label>:115:                                    ; preds = %112
  %116 = load i32*, i32** %21, align 8, !dbg !2522
  %117 = bitcast i32* %116 to i8*, !dbg !2522
  %118 = load i32, i32* %19, align 4, !dbg !2524
  %119 = sext i32 %118 to i64, !dbg !2524
  call void @qsort(i8* %117, i64 %119, i64 4, i32 (i8*, i8*)* @FileNumberCompare), !dbg !2525
  %120 = load i32, i32* %19, align 4, !dbg !2526
  %121 = sub nsw i32 %120, 1, !dbg !2527
  %122 = sext i32 %121 to i64, !dbg !2528
  %123 = load i32*, i32** %21, align 8, !dbg !2528
  %124 = getelementptr inbounds i32, i32* %123, i64 %122, !dbg !2528
  %125 = load i32, i32* %124, align 4, !dbg !2528
  store i32 %125, i32* %16, align 4, !dbg !2529
  br label %126, !dbg !2530

; <label>:126:                                    ; preds = %115, %112
  %127 = load i8*, i8** %11, align 8, !dbg !2531
  %128 = load i8*, i8** %13, align 8, !dbg !2532
  %129 = load i32, i32* %16, align 4, !dbg !2533
  %130 = add i32 %129, 1, !dbg !2534
  %131 = load i8*, i8** %8, align 8, !dbg !2535
  %132 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* %127, i8* %128, i32 %130, i8* %131), !dbg !2536
  store i8* %132, i8** %14, align 8, !dbg !2537
  %133 = load i8*, i8** %6, align 8, !dbg !2538
  %134 = load i8*, i8** %14, align 8, !dbg !2539
  %135 = call i32 @Posix_Rename(i8* %133, i8* %134), !dbg !2540
  store i32 %135, i32* %22, align 4, !dbg !2541
  %136 = load i32, i32* %22, align 4, !dbg !2542
  %137 = icmp eq i32 %136, -1, !dbg !2544
  br i1 %137, label %138, label %149, !dbg !2545

; <label>:138:                                    ; preds = %126
  call void @llvm.dbg.declare(metadata i32* %25, metadata !2546, metadata !107), !dbg !2548
  %139 = call i32* @__errno_location() #1, !dbg !2549
  %140 = load i32, i32* %139, align 4, !dbg !2550
  store i32 %140, i32* %25, align 4, !dbg !2548
  %141 = load i32, i32* %25, align 4, !dbg !2551
  %142 = icmp ne i32 %141, 2, !dbg !2553
  br i1 %142, label %143, label %148, !dbg !2554

; <label>:143:                                    ; preds = %138
  %144 = load i8*, i8** %6, align 8, !dbg !2555
  %145 = load i8*, i8** %14, align 8, !dbg !2557
  %146 = load i32, i32* %25, align 4, !dbg !2558
  %147 = call i8* @Err_Errno2String(i32 %146), !dbg !2559
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileRotateByRenumber, i32 0, i32 0), i8* %144, i8* %145, i8* %147), !dbg !2560
  br label %148, !dbg !2561

; <label>:148:                                    ; preds = %143, %138
  br label %149, !dbg !2562

; <label>:149:                                    ; preds = %148, %126
  %150 = load i8**, i8*** %10, align 8, !dbg !2563
  %151 = icmp eq i8** %150, null, !dbg !2565
  br i1 %151, label %155, label %152, !dbg !2566

; <label>:152:                                    ; preds = %149
  %153 = load i32, i32* %22, align 4, !dbg !2567
  %154 = icmp eq i32 %153, -1, !dbg !2569
  br i1 %154, label %155, label %157, !dbg !2570

; <label>:155:                                    ; preds = %152, %149
  %156 = load i8*, i8** %14, align 8, !dbg !2571
  call void @Posix_Free(i8* %156), !dbg !2573
  br label %160, !dbg !2574

; <label>:157:                                    ; preds = %152
  %158 = load i8*, i8** %14, align 8, !dbg !2575
  %159 = load i8**, i8*** %10, align 8, !dbg !2577
  store i8* %158, i8** %159, align 8, !dbg !2578
  br label %160

; <label>:160:                                    ; preds = %157, %155
  %161 = load i32, i32* %19, align 4, !dbg !2579
  %162 = load i32, i32* %9, align 4, !dbg !2581
  %163 = icmp sge i32 %161, %162, !dbg !2582
  br i1 %163, label %164, label %193, !dbg !2583

; <label>:164:                                    ; preds = %160
  store i32 0, i32* %17, align 4, !dbg !2584
  br label %165, !dbg !2587

; <label>:165:                                    ; preds = %189, %164
  %166 = load i32, i32* %17, align 4, !dbg !2588
  %167 = load i32, i32* %19, align 4, !dbg !2591
  %168 = load i32, i32* %9, align 4, !dbg !2592
  %169 = sub nsw i32 %167, %168, !dbg !2593
  %170 = icmp sle i32 %166, %169, !dbg !2594
  br i1 %170, label %171, label %192, !dbg !2595

; <label>:171:                                    ; preds = %165
  %172 = load i8*, i8** %11, align 8, !dbg !2596
  %173 = load i8*, i8** %13, align 8, !dbg !2598
  %174 = load i32, i32* %17, align 4, !dbg !2599
  %175 = sext i32 %174 to i64, !dbg !2600
  %176 = load i32*, i32** %21, align 8, !dbg !2600
  %177 = getelementptr inbounds i32, i32* %176, i64 %175, !dbg !2600
  %178 = load i32, i32* %177, align 4, !dbg !2600
  %179 = load i8*, i8** %8, align 8, !dbg !2601
  %180 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* %172, i8* %173, i32 %178, i8* %179), !dbg !2602
  store i8* %180, i8** %14, align 8, !dbg !2603
  %181 = load i8*, i8** %14, align 8, !dbg !2604
  %182 = call i32 @Posix_Unlink(i8* %181), !dbg !2606
  %183 = icmp eq i32 %182, -1, !dbg !2607
  br i1 %183, label %184, label %187, !dbg !2608

; <label>:184:                                    ; preds = %171
  %185 = load i8*, i8** %14, align 8, !dbg !2609
  %186 = call i8* @Err_ErrString(), !dbg !2611
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.FileRotateByRenumber, i32 0, i32 0), i8* %185, i8* %186), !dbg !2612
  br label %187, !dbg !2613

; <label>:187:                                    ; preds = %184, %171
  %188 = load i8*, i8** %14, align 8, !dbg !2614
  call void @Posix_Free(i8* %188), !dbg !2615
  br label %189, !dbg !2616

; <label>:189:                                    ; preds = %187
  %190 = load i32, i32* %17, align 4, !dbg !2617
  %191 = add nsw i32 %190, 1, !dbg !2617
  store i32 %191, i32* %17, align 4, !dbg !2617
  br label %165, !dbg !2619, !llvm.loop !2620

; <label>:192:                                    ; preds = %165
  br label %193, !dbg !2622

; <label>:193:                                    ; preds = %192, %160
  br label %194, !dbg !2623

; <label>:194:                                    ; preds = %193, %66, %56, %35
  %195 = load i32*, i32** %21, align 8, !dbg !2625
  %196 = bitcast i32* %195 to i8*, !dbg !2625
  call void @Posix_Free(i8* %196), !dbg !2626
  %197 = load i8**, i8*** %20, align 8, !dbg !2627
  %198 = bitcast i8** %197 to i8*, !dbg !2627
  call void @Posix_Free(i8* %198), !dbg !2628
  %199 = load i8*, i8** %12, align 8, !dbg !2629
  call void @Posix_Free(i8* %199), !dbg !2630
  %200 = load i8*, i8** %11, align 8, !dbg !2631
  call void @Posix_Free(i8* %200), !dbg !2632
  %201 = load i8*, i8** %13, align 8, !dbg !2633
  call void @Posix_Free(i8* %201), !dbg !2634
  %202 = load i8*, i8** %15, align 8, !dbg !2635
  call void @Posix_Free(i8* %202), !dbg !2636
  ret void, !dbg !2637
}

; Function Attrs: nounwind uwtable
define internal void @FileRotateByRename(i8*, i8*, i8*, i32, i8**) #0 !dbg !2638 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2639, metadata !107), !dbg !2640
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2641, metadata !107), !dbg !2642
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2643, metadata !107), !dbg !2644
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2645, metadata !107), !dbg !2646
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2647, metadata !107), !dbg !2648
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2649, metadata !107), !dbg !2650
  store i8* null, i8** %11, align 8, !dbg !2650
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2651, metadata !107), !dbg !2652
  store i8* null, i8** %12, align 8, !dbg !2652
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2653, metadata !107), !dbg !2654
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2655, metadata !107), !dbg !2656
  %16 = load i8**, i8*** %10, align 8, !dbg !2657
  %17 = icmp ne i8** %16, null, !dbg !2659
  br i1 %17, label %18, label %20, !dbg !2660

; <label>:18:                                     ; preds = %5
  %19 = load i8**, i8*** %10, align 8, !dbg !2661
  store i8* null, i8** %19, align 8, !dbg !2663
  br label %20, !dbg !2664

; <label>:20:                                     ; preds = %18, %5
  %21 = load i32, i32* %9, align 4, !dbg !2665
  store i32 %21, i32* %13, align 4, !dbg !2667
  br label %22, !dbg !2668

; <label>:22:                                     ; preds = %84, %20
  %23 = load i32, i32* %13, align 4, !dbg !2669
  %24 = icmp sge i32 %23, 0, !dbg !2672
  br i1 %24, label %25, label %87, !dbg !2673

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %13, align 4, !dbg !2674
  %27 = icmp eq i32 %26, 0, !dbg !2676
  br i1 %27, label %28, label %30, !dbg !2677

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %6, align 8, !dbg !2678
  br label %36, !dbg !2680

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %7, align 8, !dbg !2681
  %32 = load i32, i32* %13, align 4, !dbg !2682
  %33 = sub nsw i32 %32, 1, !dbg !2683
  %34 = load i8*, i8** %8, align 8, !dbg !2684
  %35 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* %31, i32 %33, i8* %34), !dbg !2685
  br label %36, !dbg !2686

; <label>:36:                                     ; preds = %30, %28
  %37 = phi i8* [ %29, %28 ], [ %35, %30 ], !dbg !2688
  store i8* %37, i8** %11, align 8, !dbg !2690
  %38 = load i8*, i8** %12, align 8, !dbg !2691
  %39 = icmp eq i8* %38, null, !dbg !2693
  br i1 %39, label %40, label %49, !dbg !2694

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %11, align 8, !dbg !2695
  %42 = call i32 @File_UnlinkIfExists(i8* %41), !dbg !2697
  store i32 %42, i32* %14, align 4, !dbg !2698
  %43 = load i32, i32* %14, align 4, !dbg !2699
  %44 = icmp eq i32 %43, -1, !dbg !2701
  br i1 %44, label %45, label %48, !dbg !2702

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %11, align 8, !dbg !2703
  %47 = call i8* @Err_ErrString(), !dbg !2705
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.FileRotateByRename, i32 0, i32 0), i8* %46, i8* %47), !dbg !2706
  br label %48, !dbg !2707

; <label>:48:                                     ; preds = %45, %40
  br label %67, !dbg !2708

; <label>:49:                                     ; preds = %36
  %50 = load i8*, i8** %11, align 8, !dbg !2709
  %51 = load i8*, i8** %12, align 8, !dbg !2711
  %52 = call i32 @Posix_Rename(i8* %50, i8* %51), !dbg !2712
  store i32 %52, i32* %14, align 4, !dbg !2713
  %53 = load i32, i32* %14, align 4, !dbg !2714
  %54 = icmp eq i32 %53, -1, !dbg !2716
  br i1 %54, label %55, label %66, !dbg !2717

; <label>:55:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2718, metadata !107), !dbg !2720
  %56 = call i32* @__errno_location() #1, !dbg !2721
  %57 = load i32, i32* %56, align 4, !dbg !2722
  store i32 %57, i32* %15, align 4, !dbg !2720
  %58 = load i32, i32* %15, align 4, !dbg !2723
  %59 = icmp ne i32 %58, 2, !dbg !2725
  br i1 %59, label %60, label %65, !dbg !2726

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %11, align 8, !dbg !2727
  %62 = load i8*, i8** %12, align 8, !dbg !2729
  %63 = load i32, i32* %15, align 4, !dbg !2730
  %64 = call i8* @Err_Errno2String(i32 %63), !dbg !2731
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i32 0, i32 0), i8* %61, i8* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.FileRotateByRename, i32 0, i32 0), i8* %64), !dbg !2732
  br label %65, !dbg !2733

; <label>:65:                                     ; preds = %60, %55
  br label %66, !dbg !2734

; <label>:66:                                     ; preds = %65, %49
  br label %67

; <label>:67:                                     ; preds = %66, %48
  %68 = load i8*, i8** %11, align 8, !dbg !2735
  %69 = load i8*, i8** %6, align 8, !dbg !2737
  %70 = icmp eq i8* %68, %69, !dbg !2738
  br i1 %70, label %71, label %81, !dbg !2739

; <label>:71:                                     ; preds = %67
  %72 = load i8**, i8*** %10, align 8, !dbg !2740
  %73 = icmp ne i8** %72, null, !dbg !2742
  br i1 %73, label %74, label %81, !dbg !2743

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %14, align 4, !dbg !2744
  %76 = icmp eq i32 %75, 0, !dbg !2746
  br i1 %76, label %77, label %81, !dbg !2747

; <label>:77:                                     ; preds = %74
  %78 = load i8*, i8** %12, align 8, !dbg !2748
  %79 = call i8* @UtilSafeStrdup0(i8* %78), !dbg !2750
  %80 = load i8**, i8*** %10, align 8, !dbg !2751
  store i8* %79, i8** %80, align 8, !dbg !2752
  br label %81, !dbg !2753

; <label>:81:                                     ; preds = %77, %74, %71, %67
  %82 = load i8*, i8** %12, align 8, !dbg !2754
  call void @Posix_Free(i8* %82), !dbg !2755
  %83 = load i8*, i8** %11, align 8, !dbg !2756
  store i8* %83, i8** %12, align 8, !dbg !2757
  br label %84, !dbg !2758

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* %13, align 4, !dbg !2759
  %86 = add nsw i32 %85, -1, !dbg !2759
  store i32 %86, i32* %13, align 4, !dbg !2759
  br label %22, !dbg !2761, !llvm.loop !2762

; <label>:87:                                     ; preds = %22
  ret void, !dbg !2764
}

; Function Attrs: nounwind uwtable
define i32 @File_GetFSMountInfo(i8*, i8**, i32*, i8**, i8**, i8**) #0 !dbg !2765 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2768, metadata !107), !dbg !2769
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !2770, metadata !107), !dbg !2771
  store i32* %2, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !2772, metadata !107), !dbg !2773
  store i8** %3, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2774, metadata !107), !dbg !2775
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2776, metadata !107), !dbg !2777
  store i8** %5, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !2778, metadata !107), !dbg !2779
  ret i32 -1, !dbg !2780
}

; Function Attrs: nounwind uwtable
define signext i8 @File_ContainSymLink(i8*) #0 !dbg !2781 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2782, metadata !107), !dbg !2783
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2784, metadata !107), !dbg !2785
  store i8* null, i8** %4, align 8, !dbg !2785
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2786, metadata !107), !dbg !2787
  store i8* null, i8** %5, align 8, !dbg !2787
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2788, metadata !107), !dbg !2789
  store i8 0, i8* %6, align 1, !dbg !2789
  %7 = load i8*, i8** %3, align 8, !dbg !2790
  %8 = call signext i8 @File_IsSymLink(i8* %7), !dbg !2792
  %9 = icmp ne i8 %8, 0, !dbg !2792
  br i1 %9, label %10, label %11, !dbg !2793

; <label>:10:                                     ; preds = %1
  store i8 1, i8* %2, align 1, !dbg !2794
  br label %36, !dbg !2794

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %3, align 8, !dbg !2796
  call void @File_GetPathName(i8* %12, i8** %4, i8** %5), !dbg !2797
  %13 = load i8*, i8** %4, align 8, !dbg !2798
  %14 = icmp ne i8* %13, null, !dbg !2800
  br i1 %14, label %15, label %32, !dbg !2801

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %5, align 8, !dbg !2802
  %17 = icmp ne i8* %16, null, !dbg !2803
  br i1 %17, label %18, label %32, !dbg !2804

; <label>:18:                                     ; preds = %15
  %19 = load i8*, i8** %4, align 8, !dbg !2805
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0)) #9, !dbg !2806
  %21 = icmp ne i32 %20, 0, !dbg !2807
  br i1 %21, label %22, label %32, !dbg !2808

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %5, align 8, !dbg !2809
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0)) #9, !dbg !2810
  %25 = icmp ne i32 %24, 0, !dbg !2811
  br i1 %25, label %26, label %32, !dbg !2812

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !2814
  %28 = call signext i8 @File_ContainSymLink(i8* %27), !dbg !2817
  %29 = icmp ne i8 %28, 0, !dbg !2817
  br i1 %29, label %30, label %31, !dbg !2818

; <label>:30:                                     ; preds = %26
  store i8 1, i8* %6, align 1, !dbg !2819
  br label %31, !dbg !2821

; <label>:31:                                     ; preds = %30, %26
  br label %32, !dbg !2822

; <label>:32:                                     ; preds = %31, %22, %18, %15, %11
  %33 = load i8*, i8** %4, align 8, !dbg !2823
  call void @Posix_Free(i8* %33), !dbg !2824
  %34 = load i8*, i8** %5, align 8, !dbg !2825
  call void @Posix_Free(i8* %34), !dbg !2826
  %35 = load i8, i8* %6, align 1, !dbg !2827
  store i8 %35, i8* %2, align 1, !dbg !2828
  br label %36, !dbg !2828

; <label>:36:                                     ; preds = %32, %10
  %37 = load i8, i8* %2, align 1, !dbg !2829
  ret i8 %37, !dbg !2829
}

declare signext i8 @File_IsSymLink(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #2 !dbg !2830 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !2835, metadata !107), !dbg !2836
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2837, metadata !107), !dbg !2838
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !2839
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !2840
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #8, !dbg !2841, !srcloc !2842
  store i64 %6, i64* %3, align 8, !dbg !2841
  %7 = load i64, i64* %3, align 8, !dbg !2843
  ret i64 %7, !dbg !2844
}

declare void @Hostinfo_MachineID(i32*, i64*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

declare signext i8 @Base64_Encode(i8*, i64, i8*, i64, i64*) #3

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64*, i64, i64) #2 !dbg !2845 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !2849, metadata !107), !dbg !2850
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2851, metadata !107), !dbg !2852
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2853, metadata !107), !dbg !2854
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2855, metadata !107), !dbg !2856
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !2857
  %9 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %8, i32 0, i32 0, !dbg !2858
  %10 = load i64, i64* %6, align 8, !dbg !2859
  %11 = load i64, i64* %5, align 8, !dbg !2860
  %12 = call i64 asm sideeffect "lock; cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64 %11, i64* %9) #8, !dbg !2861, !srcloc !2862
  store i64 %12, i64* %7, align 8, !dbg !2861
  %13 = load i64, i64* %7, align 8, !dbg !2863
  ret i64 %13, !dbg !2864
}

declare signext i8 @Base64_Decode(i8*, i8*, i64, i64*) #3

declare void @Warning(i8*, ...) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @UnicodeEndsWith(i8*, i8*, i8 signext) #2 !dbg !2865 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2866, metadata !107), !dbg !2867
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2868, metadata !107), !dbg !2869
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2870, metadata !107), !dbg !2871
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2872, metadata !107), !dbg !2873
  %11 = load i8*, i8** %5, align 8, !dbg !2874
  %12 = call i64 @Unicode_LengthInCodePoints(i8* %11), !dbg !2875
  store i64 %12, i64* %8, align 8, !dbg !2873
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2876, metadata !107), !dbg !2877
  %13 = load i8*, i8** %6, align 8, !dbg !2878
  %14 = call i64 @Unicode_LengthInCodePoints(i8* %13), !dbg !2879
  store i64 %14, i64* %9, align 8, !dbg !2877
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2880, metadata !107), !dbg !2881
  %15 = load i64, i64* %8, align 8, !dbg !2882
  %16 = load i64, i64* %9, align 8, !dbg !2883
  %17 = sub nsw i64 %15, %16, !dbg !2884
  store i64 %17, i64* %10, align 8, !dbg !2881
  %18 = load i64, i64* %9, align 8, !dbg !2885
  %19 = load i64, i64* %8, align 8, !dbg !2887
  %20 = icmp sgt i64 %18, %19, !dbg !2888
  br i1 %20, label %21, label %22, !dbg !2889

; <label>:21:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !2890
  br label %33, !dbg !2890

; <label>:22:                                     ; preds = %3
  %23 = load i8*, i8** %5, align 8, !dbg !2892
  %24 = load i64, i64* %10, align 8, !dbg !2893
  %25 = load i64, i64* %9, align 8, !dbg !2894
  %26 = load i8*, i8** %6, align 8, !dbg !2895
  %27 = load i64, i64* %9, align 8, !dbg !2896
  %28 = load i8, i8* %7, align 1, !dbg !2897
  %29 = call i32 @Unicode_CompareRange(i8* %23, i64 %24, i64 %25, i8* %26, i64 0, i64 %27, i8 signext %28), !dbg !2898
  %30 = icmp eq i32 %29, 0, !dbg !2899
  %31 = zext i1 %30 to i32, !dbg !2899
  %32 = trunc i32 %31 to i8, !dbg !2898
  store i8 %32, i8* %4, align 1, !dbg !2900
  br label %33, !dbg !2900

; <label>:33:                                     ; preds = %22, %21
  %34 = load i8, i8* %4, align 1, !dbg !2901
  ret i8 %34, !dbg !2901
}

declare i32 @Unicode_CompareRange(i8*, i64, i64, i8*, i64, i64, i8 signext) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeList(i8**, i64) #2 !dbg !2902 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !2905, metadata !107), !dbg !2906
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2907, metadata !107), !dbg !2908
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2909, metadata !107), !dbg !2910
  %8 = load i8**, i8*** %3, align 8, !dbg !2911
  %9 = icmp eq i8** %8, null, !dbg !2913
  br i1 %9, label %10, label %11, !dbg !2914

; <label>:10:                                     ; preds = %2
  br label %48, !dbg !2915

; <label>:11:                                     ; preds = %2
  %12 = call i32* @__errno_location() #1, !dbg !2917
  %13 = load i32, i32* %12, align 4, !dbg !2918
  store i32 %13, i32* %5, align 4, !dbg !2919
  %14 = load i64, i64* %4, align 8, !dbg !2920
  %15 = icmp sge i64 %14, 0, !dbg !2922
  br i1 %15, label %16, label %30, !dbg !2923

; <label>:16:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2924, metadata !107), !dbg !2926
  store i64 0, i64* %6, align 8, !dbg !2927
  br label %17, !dbg !2929

; <label>:17:                                     ; preds = %26, %16
  %18 = load i64, i64* %6, align 8, !dbg !2930
  %19 = load i64, i64* %4, align 8, !dbg !2933
  %20 = icmp slt i64 %18, %19, !dbg !2934
  br i1 %20, label %21, label %29, !dbg !2935

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %6, align 8, !dbg !2936
  %23 = load i8**, i8*** %3, align 8, !dbg !2938
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22, !dbg !2938
  %25 = load i8*, i8** %24, align 8, !dbg !2938
  call void @free(i8* %25) #8, !dbg !2939
  br label %26, !dbg !2940

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %6, align 8, !dbg !2941
  %28 = add nsw i64 %27, 1, !dbg !2941
  store i64 %28, i64* %6, align 8, !dbg !2941
  br label %17, !dbg !2943, !llvm.loop !2944

; <label>:29:                                     ; preds = %17
  br label %43, !dbg !2946

; <label>:30:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !2947, metadata !107), !dbg !2949
  %31 = load i8**, i8*** %3, align 8, !dbg !2950
  store i8** %31, i8*** %7, align 8, !dbg !2952
  br label %32, !dbg !2953

; <label>:32:                                     ; preds = %39, %30
  %33 = load i8**, i8*** %7, align 8, !dbg !2954
  %34 = load i8*, i8** %33, align 8, !dbg !2957
  %35 = icmp ne i8* %34, null, !dbg !2958
  br i1 %35, label %36, label %42, !dbg !2959

; <label>:36:                                     ; preds = %32
  %37 = load i8**, i8*** %7, align 8, !dbg !2960
  %38 = load i8*, i8** %37, align 8, !dbg !2962
  call void @free(i8* %38) #8, !dbg !2963
  br label %39, !dbg !2964

; <label>:39:                                     ; preds = %36
  %40 = load i8**, i8*** %7, align 8, !dbg !2965
  %41 = getelementptr inbounds i8*, i8** %40, i32 1, !dbg !2965
  store i8** %41, i8*** %7, align 8, !dbg !2965
  br label %32, !dbg !2967, !llvm.loop !2968

; <label>:42:                                     ; preds = %32
  br label %43

; <label>:43:                                     ; preds = %42, %29
  %44 = load i8**, i8*** %3, align 8, !dbg !2970
  %45 = bitcast i8** %44 to i8*, !dbg !2970
  call void @free(i8* %45) #8, !dbg !2971
  %46 = load i32, i32* %5, align 4, !dbg !2972
  %47 = call i32* @__errno_location() #1, !dbg !2973
  store i32 %46, i32* %47, align 4, !dbg !2974
  br label %48, !dbg !2975

; <label>:48:                                     ; preds = %43, %10
  ret void, !dbg !2976
}

declare i32 @Posix_Lstat(i8*, %struct.stat*) #3

declare i32 @Posix_Symlink(i8*, i8*) #3

declare i8* @Posix_ReadLink(i8*) #3

declare i8* @Err_Errno2String(i32) #3

declare i64 @Unicode_FindSubstrInRange(i8*, i64, i64, i8*, i64, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_Append(i8*, i8*) #2 !dbg !2978 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2981, metadata !107), !dbg !2982
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2983, metadata !107), !dbg !2984
  %5 = load i8*, i8** %3, align 8, !dbg !2985
  %6 = load i8*, i8** %4, align 8, !dbg !2986
  %7 = call i8* @Unicode_ReplaceRange(i8* %5, i64 -1, i64 0, i8* %6, i64 0, i64 -1), !dbg !2987
  ret i8* %7, !dbg !2988
}

declare i8* @Unicode_ReplaceRange(i8*, i64, i64, i8*, i64, i64) #3

declare %struct.MXUserExclLock* @MXUser_CreateSingletonExclLockInt(%struct.Atomic_uint64*, i8*, i32) #3

declare i8* @Unicode_Duplicate(i8*) #3

declare i8* @UtilSafeCalloc0(i64, i64) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #6

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @FileNumberCompare(i8*, i8*) #0 !dbg !2989 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2992, metadata !107), !dbg !2993
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2994, metadata !107), !dbg !2995
  %5 = load i8*, i8** %3, align 8, !dbg !2996
  %6 = bitcast i8* %5 to i32*, !dbg !2997
  %7 = load i32, i32* %6, align 4, !dbg !2998
  %8 = load i8*, i8** %4, align 8, !dbg !2999
  %9 = bitcast i8* %8 to i32*, !dbg !3000
  %10 = load i32, i32* %9, align 4, !dbg !3001
  %11 = sub i32 %7, %10, !dbg !3002
  ret i32 %11, !dbg !3003
}

declare i32 @Posix_Rename(i8*, i8*) #3

declare i32 @Posix_Unlink(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!102, !103}
!llvm.ident = !{!104}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, globals: !67)
!1 = !DIFile(filename: "file.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!2 = !{!3, !18, !34, !41}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "_ISupper", value: 256)
!7 = !DIEnumerator(name: "_ISlower", value: 512)
!8 = !DIEnumerator(name: "_ISalpha", value: 1024)
!9 = !DIEnumerator(name: "_ISdigit", value: 2048)
!10 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!11 = !DIEnumerator(name: "_ISspace", value: 8192)
!12 = !DIEnumerator(name: "_ISprint", value: 16384)
!13 = !DIEnumerator(name: "_ISgraph", value: 32768)
!14 = !DIEnumerator(name: "_ISblank", value: 1)
!15 = !DIEnumerator(name: "_IScntrl", value: 2)
!16 = !DIEnumerator(name: "_ISpunct", value: 4)
!17 = !DIEnumerator(name: "_ISalnum", value: 8)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 264, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/fileIO.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!21 = !DIEnumerator(name: "FILEIO_SUCCESS", value: 0)
!22 = !DIEnumerator(name: "FILEIO_CANCELLED", value: 1)
!23 = !DIEnumerator(name: "FILEIO_ERROR", value: 2)
!24 = !DIEnumerator(name: "FILEIO_OPEN_ERROR_EXIST", value: 3)
!25 = !DIEnumerator(name: "FILEIO_LOCK_FAILED", value: 4)
!26 = !DIEnumerator(name: "FILEIO_READ_ERROR_EOF", value: 5)
!27 = !DIEnumerator(name: "FILEIO_FILE_NOT_FOUND", value: 6)
!28 = !DIEnumerator(name: "FILEIO_NO_PERMISSION", value: 7)
!29 = !DIEnumerator(name: "FILEIO_FILE_NAME_TOO_LONG", value: 8)
!30 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_FBIG", value: 9)
!31 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_NOSPC", value: 10)
!32 = !DIEnumerator(name: "FILEIO_WRITE_ERROR_DQUOT", value: 11)
!33 = !DIEnumerator(name: "FILEIO_ERROR_LAST", value: 12)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 256, size: 32, align: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40}
!36 = !DIEnumerator(name: "FILEIO_OPEN", value: 0)
!37 = !DIEnumerator(name: "FILEIO_OPEN_EMPTY", value: 1)
!38 = !DIEnumerator(name: "FILEIO_OPEN_CREATE", value: 2)
!39 = !DIEnumerator(name: "FILEIO_OPEN_CREATE_SAFE", value: 3)
!40 = !DIEnumerator(name: "FILEIO_OPEN_CREATE_EMPTY", value: 4)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 46, size: 32, align: 32, elements: !43)
!42 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!43 = !{!44}
!44 = !DIEnumerator(name: "UNICODE_INDEX_NOT_FOUND", value: -1)
!45 = !{!46, !47, !48, !49, !50, !55, !57, !59, !60, !64, !65}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!47 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!48 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!49 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !51, line: 173, baseType: !52)
!51 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 51, baseType: !54)
!53 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!54 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !53, line: 122, baseType: !56)
!56 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !51, line: 171, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !53, line: 55, baseType: !56)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserExclLock", file: !62, line: 38, baseType: !63)
!62 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserExclLock", file: !62, line: 38, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!67 = !{!68, !83, !91, !95, !100}
!68 = distinct !DIGlobalVariable(name: "atomic", scope: !69, file: !70, line: 609, type: !76, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @FileLockGetMachineID.atomic)
!69 = distinct !DISubprogram(name: "FileLockGetMachineID", scope: !70, file: !70, line: 607, type: !71, isLocal: false, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!70 = !DIFile(filename: "file.c", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!71 = !DISubroutineType(types: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!75 = !{}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !77, line: 3829, baseType: !78)
!77 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !77, line: 139, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !77, line: 137, size: 64, align: 64, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !79, file: !77, line: 138, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!83 = distinct !DIGlobalVariable(name: "vmfsSystemFilesuffix", scope: !84, file: !70, line: 833, type: !88, isLocal: true, isDefinition: true, variable: [4 x i8]* @File_IsOsfsVolumeEmpty.vmfsSystemFilesuffix)
!84 = distinct !DISubprogram(name: "File_IsOsfsVolumeEmpty", scope: !70, file: !70, line: 829, type: !85, isLocal: false, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !73}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !51, line: 230, baseType: !66)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 32, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 4)
!91 = distinct !DIGlobalVariable(name: "lckStorage", scope: !92, file: !70, line: 2210, type: !76, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @FileSimpleRandom.lckStorage)
!92 = distinct !DISubprogram(name: "FileSimpleRandom", scope: !70, file: !70, line: 2208, type: !93, isLocal: false, isDefinition: true, scopeLine: 2209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!93 = !DISubroutineType(types: !94)
!94 = !{!50}
!95 = distinct !DIGlobalVariable(name: "context", scope: !92, file: !70, line: 2211, type: !96, isLocal: true, isDefinition: true, variable: %struct.rqContext** @FileSimpleRandom.context)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "rqContext", file: !98, line: 55, baseType: !99)
!98 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/random.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "rqContext", file: !98, line: 55, flags: DIFlagFwdDecl)
!100 = distinct !DIGlobalVariable(name: "atomic", scope: !101, file: !70, line: 541, type: !76, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @GetOldMachineID.atomic)
!101 = distinct !DISubprogram(name: "GetOldMachineID", scope: !70, file: !70, line: 539, type: !71, isLocal: true, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!102 = !{i32 2, !"Dwarf Version", i32 4}
!103 = !{i32 2, !"Debug Info Version", i32 3}
!104 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!105 = distinct !DISubprogram(name: "File_Exists", scope: !70, file: !70, line: 101, type: !85, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!106 = !DILocalVariable(name: "pathName", arg: 1, scope: !105, file: !70, line: 101, type: !73)
!107 = !DIExpression()
!108 = !DILocation(line: 101, column: 25, scope: !105)
!109 = !DILocation(line: 103, column: 42, scope: !105)
!110 = !DILocation(line: 103, column: 28, scope: !105)
!111 = !DILocation(line: 103, column: 11, scope: !112)
!112 = !DILexicalBlockFile(scope: !105, file: !70, discriminator: 1)
!113 = !DILocation(line: 103, column: 4, scope: !105)
!114 = distinct !DISubprogram(name: "FileIO_IsSuccess", scope: !19, file: !19, line: 514, type: !115, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!115 = !DISubroutineType(types: !116)
!116 = !{!87, !117}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIOResult", file: !19, line: 318, baseType: !18)
!118 = !DILocalVariable(name: "res", arg: 1, scope: !114, file: !19, line: 514, type: !117)
!119 = !DILocation(line: 514, column: 31, scope: !114)
!120 = !DILocation(line: 516, column: 11, scope: !114)
!121 = !DILocation(line: 516, column: 15, scope: !114)
!122 = !DILocation(line: 516, column: 4, scope: !114)
!123 = distinct !DISubprogram(name: "File_UnlinkIfExists", scope: !70, file: !70, line: 127, type: !124, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!124 = !DISubroutineType(types: !125)
!125 = !{!47, !73}
!126 = !DILocalVariable(name: "pathName", arg: 1, scope: !123, file: !70, line: 127, type: !73)
!127 = !DILocation(line: 127, column: 33, scope: !123)
!128 = !DILocalVariable(name: "ret", scope: !123, file: !70, line: 129, type: !47)
!129 = !DILocation(line: 129, column: 8, scope: !123)
!130 = !DILocation(line: 129, column: 27, scope: !123)
!131 = !DILocation(line: 129, column: 14, scope: !123)
!132 = !DILocation(line: 131, column: 8, scope: !133)
!133 = distinct !DILexicalBlock(scope: !123, file: !70, line: 131, column: 8)
!134 = !DILocation(line: 131, column: 12, scope: !133)
!135 = !DILocation(line: 131, column: 8, scope: !123)
!136 = !DILocation(line: 132, column: 14, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !70, line: 131, column: 18)
!138 = !DILocation(line: 132, column: 18, scope: !137)
!139 = !DILocation(line: 132, column: 13, scope: !137)
!140 = !DILocation(line: 132, column: 11, scope: !137)
!141 = !DILocation(line: 133, column: 4, scope: !137)
!142 = !DILocation(line: 135, column: 11, scope: !123)
!143 = !DILocation(line: 135, column: 4, scope: !123)
!144 = distinct !DISubprogram(name: "File_SupportsMandatoryLock", scope: !70, file: !70, line: 159, type: !85, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!145 = !DILocalVariable(name: "pathName", arg: 1, scope: !144, file: !70, line: 159, type: !73)
!146 = !DILocation(line: 159, column: 40, scope: !144)
!147 = !DILocation(line: 165, column: 11, scope: !144)
!148 = !DILocation(line: 165, column: 4, scope: !144)
!149 = distinct !DISubprogram(name: "File_IsDirectory", scope: !70, file: !70, line: 189, type: !85, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!150 = !DILocalVariable(name: "pathName", arg: 1, scope: !149, file: !70, line: 189, type: !73)
!151 = !DILocation(line: 189, column: 30, scope: !149)
!152 = !DILocalVariable(name: "fileData", scope: !149, file: !70, line: 191, type: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileData", file: !154, line: 108, baseType: !155)
!154 = !DIFile(filename: "fileInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FileData", file: !154, line: 99, size: 384, align: 64, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "fileAccessTime", scope: !155, file: !154, line: 100, baseType: !57, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "fileCreationTime", scope: !155, file: !154, line: 101, baseType: !57, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "fileModificationTime", scope: !155, file: !154, line: 102, baseType: !57, size: 64, align: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "fileSize", scope: !155, file: !154, line: 103, baseType: !57, size: 64, align: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "fileType", scope: !155, file: !154, line: 104, baseType: !47, size: 32, align: 32, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "fileMode", scope: !155, file: !154, line: 105, baseType: !47, size: 32, align: 32, offset: 288)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fileOwner", scope: !155, file: !154, line: 106, baseType: !47, size: 32, align: 32, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "fileGroup", scope: !155, file: !154, line: 107, baseType: !47, size: 32, align: 32, offset: 352)
!165 = !DILocation(line: 191, column: 13, scope: !149)
!166 = !DILocation(line: 193, column: 27, scope: !149)
!167 = !DILocation(line: 193, column: 12, scope: !149)
!168 = !DILocation(line: 193, column: 48, scope: !149)
!169 = !DILocation(line: 193, column: 54, scope: !149)
!170 = !DILocation(line: 194, column: 22, scope: !149)
!171 = !DILocation(line: 194, column: 31, scope: !149)
!172 = !DILocation(line: 193, column: 54, scope: !173)
!173 = !DILexicalBlockFile(scope: !149, file: !70, discriminator: 1)
!174 = !DILocation(line: 193, column: 11, scope: !173)
!175 = !DILocation(line: 193, column: 4, scope: !173)
!176 = distinct !DISubprogram(name: "File_GetFilePermissions", scope: !70, file: !70, line: 217, type: !177, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!177 = !DISubroutineType(types: !178)
!178 = !{!87, !73, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!180 = !DILocalVariable(name: "pathName", arg: 1, scope: !176, file: !70, line: 217, type: !73)
!181 = !DILocation(line: 217, column: 37, scope: !176)
!182 = !DILocalVariable(name: "mode", arg: 2, scope: !176, file: !70, line: 218, type: !179)
!183 = !DILocation(line: 218, column: 30, scope: !176)
!184 = !DILocalVariable(name: "fileData", scope: !176, file: !70, line: 220, type: !153)
!185 = !DILocation(line: 220, column: 13, scope: !176)
!186 = !DILocation(line: 224, column: 23, scope: !187)
!187 = distinct !DILexicalBlock(scope: !176, file: !70, line: 224, column: 8)
!188 = !DILocation(line: 224, column: 8, scope: !187)
!189 = !DILocation(line: 224, column: 44, scope: !187)
!190 = !DILocation(line: 224, column: 8, scope: !176)
!191 = !DILocation(line: 225, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !70, line: 224, column: 50)
!193 = !DILocation(line: 228, column: 21, scope: !176)
!194 = !DILocation(line: 228, column: 5, scope: !176)
!195 = !DILocation(line: 228, column: 10, scope: !176)
!196 = !DILocation(line: 241, column: 4, scope: !176)
!197 = !DILocation(line: 242, column: 1, scope: !176)
!198 = distinct !DISubprogram(name: "File_Unlink", scope: !70, file: !70, line: 269, type: !124, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!199 = !DILocalVariable(name: "pathName", arg: 1, scope: !198, file: !70, line: 269, type: !73)
!200 = !DILocation(line: 269, column: 25, scope: !198)
!201 = !DILocation(line: 271, column: 25, scope: !198)
!202 = !DILocation(line: 271, column: 12, scope: !198)
!203 = !DILocation(line: 271, column: 38, scope: !198)
!204 = !DILocation(line: 271, column: 11, scope: !198)
!205 = !DILocation(line: 271, column: 4, scope: !198)
!206 = distinct !DISubprogram(name: "File_UnlinkNoFollow", scope: !70, file: !70, line: 296, type: !124, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!207 = !DILocalVariable(name: "pathName", arg: 1, scope: !206, file: !70, line: 296, type: !73)
!208 = !DILocation(line: 296, column: 33, scope: !206)
!209 = !DILocation(line: 298, column: 25, scope: !206)
!210 = !DILocation(line: 298, column: 12, scope: !206)
!211 = !DILocation(line: 298, column: 38, scope: !206)
!212 = !DILocation(line: 298, column: 11, scope: !206)
!213 = !DILocation(line: 298, column: 4, scope: !206)
!214 = distinct !DISubprogram(name: "File_UnlinkRetry", scope: !70, file: !70, line: 319, type: !215, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!215 = !DISubroutineType(types: !216)
!216 = !{!47, !73, !50}
!217 = !DILocalVariable(name: "pathName", arg: 1, scope: !214, file: !70, line: 319, type: !73)
!218 = !DILocation(line: 319, column: 30, scope: !214)
!219 = !DILocalVariable(name: "maxWaitTimeMilliSec", arg: 2, scope: !214, file: !70, line: 320, type: !50)
!220 = !DILocation(line: 320, column: 25, scope: !214)
!221 = !DILocalVariable(name: "ret", scope: !214, file: !70, line: 322, type: !47)
!222 = !DILocation(line: 322, column: 8, scope: !214)
!223 = !DILocation(line: 338, column: 26, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !70, line: 337, column: 11)
!225 = distinct !DILexicalBlock(scope: !214, file: !70, line: 324, column: 8)
!226 = !DILocation(line: 338, column: 13, scope: !224)
!227 = !DILocation(line: 338, column: 11, scope: !224)
!228 = !DILocation(line: 341, column: 11, scope: !214)
!229 = !DILocation(line: 341, column: 15, scope: !214)
!230 = !DILocation(line: 341, column: 4, scope: !214)
!231 = distinct !DISubprogram(name: "File_CreateDirectoryEx", scope: !70, file: !70, line: 367, type: !232, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!232 = !DISubroutineType(types: !233)
!233 = !{!87, !73, !47}
!234 = !DILocalVariable(name: "pathName", arg: 1, scope: !231, file: !70, line: 367, type: !73)
!235 = !DILocation(line: 367, column: 36, scope: !231)
!236 = !DILocalVariable(name: "mode", arg: 2, scope: !231, file: !70, line: 368, type: !47)
!237 = !DILocation(line: 368, column: 28, scope: !231)
!238 = !DILocalVariable(name: "err", scope: !231, file: !70, line: 370, type: !47)
!239 = !DILocation(line: 370, column: 8, scope: !231)
!240 = !DILocation(line: 370, column: 34, scope: !231)
!241 = !DILocation(line: 370, column: 44, scope: !231)
!242 = !DILocation(line: 370, column: 14, scope: !231)
!243 = !DILocation(line: 372, column: 11, scope: !231)
!244 = !DILocation(line: 372, column: 15, scope: !231)
!245 = !DILocation(line: 372, column: 4, scope: !231)
!246 = distinct !DISubprogram(name: "File_CreateDirectory", scope: !70, file: !70, line: 398, type: !85, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!247 = !DILocalVariable(name: "pathName", arg: 1, scope: !246, file: !70, line: 398, type: !73)
!248 = !DILocation(line: 398, column: 34, scope: !246)
!249 = !DILocalVariable(name: "err", scope: !246, file: !70, line: 400, type: !47)
!250 = !DILocation(line: 400, column: 8, scope: !246)
!251 = !DILocation(line: 400, column: 34, scope: !246)
!252 = !DILocation(line: 400, column: 14, scope: !246)
!253 = !DILocation(line: 402, column: 11, scope: !246)
!254 = !DILocation(line: 402, column: 15, scope: !246)
!255 = !DILocation(line: 402, column: 4, scope: !246)
!256 = distinct !DISubprogram(name: "File_EnsureDirectoryEx", scope: !70, file: !70, line: 426, type: !232, isLocal: false, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!257 = !DILocalVariable(name: "pathName", arg: 1, scope: !256, file: !70, line: 426, type: !73)
!258 = !DILocation(line: 426, column: 36, scope: !256)
!259 = !DILocalVariable(name: "mode", arg: 2, scope: !256, file: !70, line: 427, type: !47)
!260 = !DILocation(line: 427, column: 28, scope: !256)
!261 = !DILocalVariable(name: "err", scope: !256, file: !70, line: 429, type: !47)
!262 = !DILocation(line: 429, column: 8, scope: !256)
!263 = !DILocation(line: 429, column: 34, scope: !256)
!264 = !DILocation(line: 429, column: 44, scope: !256)
!265 = !DILocation(line: 429, column: 14, scope: !256)
!266 = !DILocation(line: 431, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !256, file: !70, line: 431, column: 8)
!268 = !DILocation(line: 431, column: 12, scope: !267)
!269 = !DILocation(line: 431, column: 8, scope: !256)
!270 = !DILocalVariable(name: "fileData", scope: !271, file: !70, line: 432, type: !153)
!271 = distinct !DILexicalBlock(scope: !267, file: !70, line: 431, column: 22)
!272 = !DILocation(line: 432, column: 16, scope: !271)
!273 = !DILocation(line: 434, column: 28, scope: !271)
!274 = !DILocation(line: 434, column: 13, scope: !271)
!275 = !DILocation(line: 434, column: 11, scope: !271)
!276 = !DILocation(line: 436, column: 11, scope: !277)
!277 = distinct !DILexicalBlock(scope: !271, file: !70, line: 436, column: 11)
!278 = !DILocation(line: 436, column: 15, scope: !277)
!279 = !DILocation(line: 436, column: 11, scope: !271)
!280 = !DILocation(line: 437, column: 23, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !70, line: 437, column: 14)
!282 = distinct !DILexicalBlock(scope: !277, file: !70, line: 436, column: 21)
!283 = !DILocation(line: 437, column: 32, scope: !281)
!284 = !DILocation(line: 437, column: 14, scope: !282)
!285 = !DILocation(line: 438, column: 17, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !70, line: 437, column: 38)
!287 = !DILocation(line: 439, column: 14, scope: !286)
!288 = !DILocation(line: 439, column: 18, scope: !286)
!289 = !DILocation(line: 444, column: 10, scope: !286)
!290 = !DILocation(line: 445, column: 7, scope: !282)
!291 = !DILocation(line: 446, column: 4, scope: !271)
!292 = !DILocation(line: 448, column: 11, scope: !256)
!293 = !DILocation(line: 448, column: 15, scope: !256)
!294 = !DILocation(line: 448, column: 4, scope: !256)
!295 = distinct !DISubprogram(name: "File_EnsureDirectory", scope: !70, file: !70, line: 472, type: !85, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!296 = !DILocalVariable(name: "pathName", arg: 1, scope: !295, file: !70, line: 472, type: !73)
!297 = !DILocation(line: 472, column: 34, scope: !295)
!298 = !DILocation(line: 474, column: 34, scope: !295)
!299 = !DILocation(line: 474, column: 11, scope: !295)
!300 = !DILocation(line: 474, column: 4, scope: !295)
!301 = distinct !DISubprogram(name: "File_DeleteEmptyDirectory", scope: !70, file: !70, line: 495, type: !85, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!302 = !DILocalVariable(name: "pathName", arg: 1, scope: !301, file: !70, line: 495, type: !73)
!303 = !DILocation(line: 495, column: 39, scope: !301)
!304 = !DILocalVariable(name: "returnValue", scope: !301, file: !70, line: 497, type: !87)
!305 = !DILocation(line: 497, column: 9, scope: !301)
!306 = !DILocation(line: 499, column: 28, scope: !307)
!307 = distinct !DILexicalBlock(scope: !301, file: !70, line: 499, column: 8)
!308 = !DILocation(line: 499, column: 8, scope: !307)
!309 = !DILocation(line: 499, column: 38, scope: !307)
!310 = !DILocation(line: 499, column: 8, scope: !301)
!311 = !DILocation(line: 513, column: 19, scope: !312)
!312 = distinct !DILexicalBlock(scope: !307, file: !70, line: 499, column: 44)
!313 = !DILocation(line: 515, column: 4, scope: !312)
!314 = !DILocation(line: 517, column: 11, scope: !301)
!315 = !DILocation(line: 517, column: 4, scope: !301)
!316 = !DILocalVariable(name: "machineID", scope: !69, file: !70, line: 610, type: !73)
!317 = !DILocation(line: 610, column: 16, scope: !69)
!318 = !DILocation(line: 612, column: 16, scope: !69)
!319 = !DILocation(line: 612, column: 14, scope: !69)
!320 = !DILocation(line: 614, column: 8, scope: !321)
!321 = distinct !DILexicalBlock(scope: !69, file: !70, line: 614, column: 8)
!322 = !DILocation(line: 614, column: 18, scope: !321)
!323 = !DILocation(line: 614, column: 8, scope: !69)
!324 = !DILocalVariable(name: "p", scope: !325, file: !70, line: 615, type: !65)
!325 = distinct !DILexicalBlock(scope: !321, file: !70, line: 614, column: 26)
!326 = !DILocation(line: 615, column: 13, scope: !325)
!327 = !DILocalVariable(name: "q", scope: !325, file: !70, line: 616, type: !65)
!328 = !DILocation(line: 616, column: 13, scope: !325)
!329 = !DILocation(line: 636, column: 9, scope: !325)
!330 = !DILocation(line: 639, column: 11, scope: !331)
!331 = distinct !DILexicalBlock(scope: !325, file: !70, line: 639, column: 11)
!332 = !DILocation(line: 639, column: 13, scope: !331)
!333 = !DILocation(line: 639, column: 11, scope: !325)
!334 = !DILocation(line: 640, column: 31, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !70, line: 639, column: 21)
!336 = !DILocation(line: 640, column: 14, scope: !337)
!337 = !DILexicalBlockFile(scope: !335, file: !70, discriminator: 1)
!338 = !DILocation(line: 640, column: 12, scope: !335)
!339 = !DILocation(line: 641, column: 7, scope: !335)
!340 = !DILocation(line: 642, column: 47, scope: !341)
!341 = distinct !DILexicalBlock(scope: !331, file: !70, line: 641, column: 14)
!342 = !DILocation(line: 642, column: 14, scope: !341)
!343 = !DILocation(line: 642, column: 12, scope: !341)
!344 = !DILocation(line: 643, column: 21, scope: !341)
!345 = !DILocation(line: 643, column: 10, scope: !341)
!346 = !DILocation(line: 646, column: 19, scope: !347)
!347 = distinct !DILexicalBlock(scope: !341, file: !70, line: 646, column: 10)
!348 = !DILocation(line: 646, column: 17, scope: !347)
!349 = !DILocation(line: 646, column: 15, scope: !347)
!350 = !DILocation(line: 646, column: 23, scope: !351)
!351 = !DILexicalBlockFile(scope: !352, file: !70, discriminator: 1)
!352 = distinct !DILexicalBlock(scope: !347, file: !70, line: 646, column: 10)
!353 = !DILocation(line: 646, column: 22, scope: !351)
!354 = !DILocation(line: 646, column: 10, scope: !351)
!355 = !DILocation(line: 647, column: 23, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !70, line: 647, column: 16)
!357 = distinct !DILexicalBlock(scope: !352, file: !70, line: 646, column: 31)
!358 = !DILocation(line: 647, column: 22, scope: !356)
!359 = !DILocation(line: 647, column: 16, scope: !356)
!360 = !DILocation(line: 647, column: 17, scope: !356)
!361 = !DILocation(line: 647, column: 19, scope: !356)
!362 = !DILocation(line: 647, column: 18, scope: !356)
!363 = !DILocation(line: 647, column: 20, scope: !356)
!364 = !DILocation(line: 647, column: 16, scope: !357)
!365 = !DILocation(line: 648, column: 17, scope: !366)
!366 = distinct !DILexicalBlock(scope: !356, file: !70, line: 647, column: 35)
!367 = !DILocation(line: 648, column: 19, scope: !366)
!368 = !DILocation(line: 649, column: 13, scope: !366)
!369 = !DILocation(line: 650, column: 10, scope: !357)
!370 = !DILocation(line: 646, column: 27, scope: !371)
!371 = !DILexicalBlockFile(scope: !352, file: !70, discriminator: 2)
!372 = !DILocation(line: 646, column: 10, scope: !371)
!373 = distinct !{!373, !374}
!374 = !DILocation(line: 646, column: 10, scope: !341)
!375 = !DILocation(line: 653, column: 52, scope: !376)
!376 = distinct !DILexicalBlock(scope: !325, file: !70, line: 653, column: 11)
!377 = !DILocation(line: 653, column: 11, scope: !376)
!378 = !DILocation(line: 653, column: 11, scope: !325)
!379 = !DILocation(line: 654, column: 21, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !70, line: 653, column: 56)
!381 = !DILocation(line: 654, column: 10, scope: !380)
!382 = !DILocation(line: 655, column: 7, scope: !380)
!383 = !DILocation(line: 657, column: 19, scope: !325)
!384 = !DILocation(line: 657, column: 17, scope: !325)
!385 = !DILocation(line: 659, column: 4, scope: !325)
!386 = !DILocation(line: 661, column: 11, scope: !69)
!387 = !DILocation(line: 661, column: 4, scope: !69)
!388 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !77, file: !77, line: 3829, type: !389, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!389 = !DISubroutineType(types: !390)
!390 = !{!46, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!393 = !DILocalVariable(name: "var", arg: 1, scope: !388, file: !77, line: 3829, type: !391)
!394 = !DILocation(line: 3829, column: 368, scope: !388)
!395 = !DILocation(line: 3829, column: 415, scope: !388)
!396 = !DILocation(line: 3829, column: 401, scope: !388)
!397 = !DILocation(line: 3829, column: 382, scope: !388)
!398 = !DILocation(line: 3829, column: 375, scope: !388)
!399 = !DILocalVariable(name: "machineID", scope: !101, file: !70, line: 542, type: !73)
!400 = !DILocation(line: 542, column: 16, scope: !101)
!401 = !DILocation(line: 544, column: 16, scope: !101)
!402 = !DILocation(line: 544, column: 14, scope: !101)
!403 = !DILocation(line: 546, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !101, file: !70, line: 546, column: 8)
!405 = !DILocation(line: 546, column: 18, scope: !404)
!406 = !DILocation(line: 546, column: 8, scope: !101)
!407 = !DILocalVariable(name: "p", scope: !408, file: !70, line: 547, type: !65)
!408 = distinct !DILexicalBlock(scope: !404, file: !70, line: 546, column: 26)
!409 = !DILocation(line: 547, column: 13, scope: !408)
!410 = !DILocalVariable(name: "hashValue", scope: !408, file: !70, line: 548, type: !50)
!411 = !DILocation(line: 548, column: 14, scope: !408)
!412 = !DILocalVariable(name: "hardwareID", scope: !408, file: !70, line: 549, type: !57)
!413 = !DILocation(line: 549, column: 14, scope: !408)
!414 = !DILocalVariable(name: "encodedMachineID", scope: !408, file: !70, line: 550, type: !415)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 136, align: 8, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 17)
!418 = !DILocation(line: 550, column: 12, scope: !408)
!419 = !DILocalVariable(name: "rawMachineID", scope: !408, file: !70, line: 551, type: !420)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 96, align: 8, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 12)
!423 = !DILocation(line: 551, column: 12, scope: !408)
!424 = !DILocation(line: 553, column: 7, scope: !408)
!425 = !DILocation(line: 556, column: 7, scope: !408)
!426 = !DILocation(line: 557, column: 15, scope: !408)
!427 = !DILocation(line: 557, column: 7, scope: !408)
!428 = !DILocation(line: 561, column: 21, scope: !408)
!429 = !DILocation(line: 561, column: 56, scope: !408)
!430 = !DILocation(line: 561, column: 7, scope: !408)
!431 = !DILocation(line: 565, column: 16, scope: !432)
!432 = distinct !DILexicalBlock(scope: !408, file: !70, line: 565, column: 7)
!433 = !DILocation(line: 565, column: 14, scope: !432)
!434 = !DILocation(line: 565, column: 12, scope: !432)
!435 = !DILocation(line: 565, column: 35, scope: !436)
!436 = !DILexicalBlockFile(scope: !437, file: !70, discriminator: 1)
!437 = distinct !DILexicalBlock(scope: !432, file: !70, line: 565, column: 7)
!438 = !DILocation(line: 565, column: 34, scope: !436)
!439 = !DILocation(line: 565, column: 7, scope: !436)
!440 = !DILocation(line: 566, column: 15, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !70, line: 566, column: 14)
!442 = distinct !DILexicalBlock(scope: !437, file: !70, line: 565, column: 43)
!443 = !DILocation(line: 566, column: 14, scope: !441)
!444 = !DILocation(line: 566, column: 17, scope: !441)
!445 = !DILocation(line: 566, column: 14, scope: !442)
!446 = !DILocation(line: 567, column: 14, scope: !447)
!447 = distinct !DILexicalBlock(scope: !441, file: !70, line: 566, column: 25)
!448 = !DILocation(line: 567, column: 16, scope: !447)
!449 = !DILocation(line: 568, column: 10, scope: !447)
!450 = !DILocation(line: 569, column: 7, scope: !442)
!451 = !DILocation(line: 565, column: 39, scope: !452)
!452 = !DILexicalBlockFile(scope: !437, file: !70, discriminator: 2)
!453 = !DILocation(line: 565, column: 7, scope: !452)
!454 = distinct !{!454, !455}
!455 = !DILocation(line: 565, column: 7, scope: !408)
!456 = !DILocation(line: 571, column: 27, scope: !408)
!457 = !DILocation(line: 571, column: 11, scope: !408)
!458 = !DILocation(line: 571, column: 9, scope: !408)
!459 = !DILocation(line: 573, column: 52, scope: !460)
!460 = distinct !DILexicalBlock(scope: !408, file: !70, line: 573, column: 11)
!461 = !DILocation(line: 573, column: 11, scope: !460)
!462 = !DILocation(line: 573, column: 11, scope: !408)
!463 = !DILocation(line: 574, column: 21, scope: !464)
!464 = distinct !DILexicalBlock(scope: !460, file: !70, line: 573, column: 56)
!465 = !DILocation(line: 574, column: 10, scope: !464)
!466 = !DILocation(line: 575, column: 7, scope: !464)
!467 = !DILocation(line: 577, column: 19, scope: !408)
!468 = !DILocation(line: 577, column: 17, scope: !408)
!469 = !DILocation(line: 579, column: 4, scope: !408)
!470 = !DILocation(line: 581, column: 11, scope: !101)
!471 = !DILocation(line: 581, column: 4, scope: !101)
!472 = distinct !DISubprogram(name: "Posix_Free", scope: !473, file: !473, line: 129, type: !474, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!473 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/posix.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!474 = !DISubroutineType(types: !475)
!475 = !{null, !46}
!476 = !DILocalVariable(name: "p", arg: 1, scope: !472, file: !473, line: 129, type: !46)
!477 = !DILocation(line: 129, column: 18, scope: !472)
!478 = !DILocalVariable(name: "err", scope: !472, file: !473, line: 131, type: !47)
!479 = !DILocation(line: 131, column: 8, scope: !472)
!480 = !DILocation(line: 131, column: 15, scope: !472)
!481 = !DILocation(line: 131, column: 14, scope: !472)
!482 = !DILocation(line: 132, column: 9, scope: !472)
!483 = !DILocation(line: 132, column: 4, scope: !472)
!484 = !DILocation(line: 133, column: 11, scope: !472)
!485 = !DILocation(line: 133, column: 5, scope: !472)
!486 = !DILocation(line: 133, column: 9, scope: !472)
!487 = !DILocation(line: 134, column: 1, scope: !472)
!488 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWritePtr", scope: !77, file: !77, line: 3829, type: !489, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!489 = !DISubroutineType(types: !490)
!490 = !{!46, !491, !492, !492}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!494 = !DILocalVariable(name: "var", arg: 1, scope: !488, file: !77, line: 3829, type: !491)
!495 = !DILocation(line: 3829, column: 757, scope: !488)
!496 = !DILocalVariable(name: "oldVal", arg: 2, scope: !488, file: !77, line: 3829, type: !492)
!497 = !DILocation(line: 3829, column: 775, scope: !488)
!498 = !DILocalVariable(name: "newVal", arg: 3, scope: !488, file: !77, line: 3829, type: !492)
!499 = !DILocation(line: 3829, column: 796, scope: !488)
!500 = !DILocation(line: 3829, column: 858, scope: !488)
!501 = !DILocation(line: 3829, column: 882, scope: !488)
!502 = !DILocation(line: 3829, column: 871, scope: !488)
!503 = !DILocation(line: 3829, column: 909, scope: !488)
!504 = !DILocation(line: 3829, column: 898, scope: !488)
!505 = !DILocation(line: 3829, column: 832, scope: !488)
!506 = !DILocation(line: 3829, column: 813, scope: !488)
!507 = !DILocation(line: 3829, column: 806, scope: !488)
!508 = distinct !DISubprogram(name: "FileLockMachineIDMatch", scope: !70, file: !70, line: 751, type: !509, isLocal: false, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!509 = !DISubroutineType(types: !510)
!510 = !{!87, !73, !73}
!511 = !DILocalVariable(name: "hostMachineID", arg: 1, scope: !508, file: !70, line: 751, type: !73)
!512 = !DILocation(line: 751, column: 36, scope: !508)
!513 = !DILocalVariable(name: "otherMachineID", arg: 2, scope: !508, file: !70, line: 752, type: !73)
!514 = !DILocation(line: 752, column: 36, scope: !508)
!515 = !DILocation(line: 754, column: 16, scope: !516)
!516 = distinct !DILexicalBlock(scope: !508, file: !70, line: 754, column: 8)
!517 = !DILocation(line: 754, column: 8, scope: !516)
!518 = !DILocation(line: 754, column: 43, scope: !516)
!519 = !DILocation(line: 754, column: 8, scope: !508)
!520 = !DILocation(line: 755, column: 19, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !70, line: 755, column: 11)
!522 = distinct !DILexicalBlock(scope: !516, file: !70, line: 754, column: 49)
!523 = !DILocation(line: 755, column: 11, scope: !521)
!524 = !DILocation(line: 755, column: 47, scope: !521)
!525 = !DILocation(line: 755, column: 11, scope: !522)
!526 = !DILocation(line: 756, column: 24, scope: !527)
!527 = distinct !DILexicalBlock(scope: !521, file: !70, line: 755, column: 53)
!528 = !DILocation(line: 756, column: 38, scope: !527)
!529 = !DILocation(line: 757, column: 24, scope: !527)
!530 = !DILocation(line: 757, column: 39, scope: !527)
!531 = !DILocation(line: 756, column: 17, scope: !527)
!532 = !DILocation(line: 757, column: 44, scope: !527)
!533 = !DILocation(line: 756, column: 10, scope: !527)
!534 = !DILocation(line: 759, column: 35, scope: !535)
!535 = distinct !DILexicalBlock(scope: !521, file: !70, line: 758, column: 14)
!536 = !DILocation(line: 759, column: 54, scope: !535)
!537 = !DILocation(line: 759, column: 17, scope: !538)
!538 = !DILexicalBlockFile(scope: !535, file: !70, discriminator: 1)
!539 = !DILocation(line: 759, column: 10, scope: !535)
!540 = !DILocation(line: 762, column: 19, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !70, line: 762, column: 11)
!542 = distinct !DILexicalBlock(scope: !516, file: !70, line: 761, column: 11)
!543 = !DILocation(line: 762, column: 11, scope: !541)
!544 = !DILocation(line: 762, column: 47, scope: !541)
!545 = !DILocation(line: 762, column: 11, scope: !542)
!546 = !DILocation(line: 763, column: 10, scope: !547)
!547 = distinct !DILexicalBlock(scope: !541, file: !70, line: 762, column: 53)
!548 = !DILocation(line: 765, column: 24, scope: !549)
!549 = distinct !DILexicalBlock(scope: !541, file: !70, line: 764, column: 14)
!550 = !DILocation(line: 765, column: 39, scope: !549)
!551 = !DILocation(line: 765, column: 17, scope: !549)
!552 = !DILocation(line: 765, column: 55, scope: !549)
!553 = !DILocation(line: 765, column: 10, scope: !549)
!554 = !DILocation(line: 768, column: 1, scope: !508)
!555 = distinct !DISubprogram(name: "OldMachineIDMatch", scope: !70, file: !70, line: 683, type: !509, isLocal: true, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!556 = !DILocalVariable(name: "first", arg: 1, scope: !555, file: !70, line: 683, type: !73)
!557 = !DILocation(line: 683, column: 31, scope: !555)
!558 = !DILocalVariable(name: "second", arg: 2, scope: !555, file: !70, line: 684, type: !73)
!559 = !DILocation(line: 684, column: 31, scope: !555)
!560 = !DILocalVariable(name: "p", scope: !555, file: !70, line: 688, type: !65)
!561 = !DILocation(line: 688, column: 10, scope: !555)
!562 = !DILocalVariable(name: "q", scope: !555, file: !70, line: 689, type: !65)
!563 = !DILocation(line: 689, column: 10, scope: !555)
!564 = !DILocalVariable(name: "len", scope: !555, file: !70, line: 690, type: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !566, line: 216, baseType: !56)
!566 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!567 = !DILocation(line: 690, column: 11, scope: !555)
!568 = !DILocalVariable(name: "result", scope: !555, file: !70, line: 691, type: !87)
!569 = !DILocation(line: 691, column: 9, scope: !555)
!570 = !DILocalVariable(name: "rawMachineID_1", scope: !555, file: !70, line: 692, type: !571)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 96, align: 8, elements: !421)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !51, line: 177, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !53, line: 48, baseType: !574)
!574 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!575 = !DILocation(line: 692, column: 10, scope: !555)
!576 = !DILocalVariable(name: "rawMachineID_2", scope: !555, file: !70, line: 693, type: !571)
!577 = !DILocation(line: 693, column: 10, scope: !555)
!578 = !DILocation(line: 695, column: 30, scope: !579)
!579 = distinct !DILexicalBlock(scope: !555, file: !70, line: 695, column: 4)
!580 = !DILocation(line: 695, column: 13, scope: !579)
!581 = !DILocation(line: 695, column: 11, scope: !579)
!582 = !DILocation(line: 695, column: 43, scope: !579)
!583 = !DILocation(line: 695, column: 41, scope: !579)
!584 = !DILocation(line: 695, column: 9, scope: !579)
!585 = !DILocation(line: 695, column: 47, scope: !586)
!586 = !DILexicalBlockFile(scope: !587, file: !70, discriminator: 1)
!587 = distinct !DILexicalBlock(scope: !579, file: !70, line: 695, column: 4)
!588 = !DILocation(line: 695, column: 46, scope: !586)
!589 = !DILocation(line: 695, column: 4, scope: !586)
!590 = !DILocation(line: 696, column: 12, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !70, line: 696, column: 11)
!592 = distinct !DILexicalBlock(scope: !587, file: !70, line: 695, column: 55)
!593 = !DILocation(line: 696, column: 11, scope: !591)
!594 = !DILocation(line: 696, column: 14, scope: !591)
!595 = !DILocation(line: 696, column: 11, scope: !592)
!596 = !DILocation(line: 697, column: 11, scope: !597)
!597 = distinct !DILexicalBlock(scope: !591, file: !70, line: 696, column: 22)
!598 = !DILocation(line: 697, column: 13, scope: !597)
!599 = !DILocation(line: 698, column: 7, scope: !597)
!600 = !DILocation(line: 699, column: 4, scope: !592)
!601 = !DILocation(line: 695, column: 51, scope: !602)
!602 = !DILexicalBlockFile(scope: !587, file: !70, discriminator: 2)
!603 = !DILocation(line: 695, column: 4, scope: !602)
!604 = distinct !{!604, !605}
!605 = !DILocation(line: 695, column: 4, scope: !555)
!606 = !DILocation(line: 700, column: 27, scope: !555)
!607 = !DILocation(line: 700, column: 30, scope: !555)
!608 = !DILocation(line: 700, column: 13, scope: !555)
!609 = !DILocation(line: 700, column: 11, scope: !555)
!610 = !DILocation(line: 701, column: 15, scope: !555)
!611 = !DILocation(line: 701, column: 4, scope: !555)
!612 = !DILocation(line: 703, column: 9, scope: !613)
!613 = distinct !DILexicalBlock(scope: !555, file: !70, line: 703, column: 8)
!614 = !DILocation(line: 703, column: 16, scope: !613)
!615 = !DILocation(line: 703, column: 22, scope: !613)
!616 = !DILocation(line: 703, column: 26, scope: !617)
!617 = !DILexicalBlockFile(scope: !613, file: !70, discriminator: 1)
!618 = !DILocation(line: 703, column: 30, scope: !617)
!619 = !DILocation(line: 703, column: 8, scope: !617)
!620 = !DILocation(line: 705, column: 15, scope: !621)
!621 = distinct !DILexicalBlock(scope: !613, file: !70, line: 703, column: 38)
!622 = !DILocation(line: 704, column: 7, scope: !621)
!623 = !DILocation(line: 707, column: 7, scope: !621)
!624 = !DILocation(line: 710, column: 30, scope: !625)
!625 = distinct !DILexicalBlock(scope: !555, file: !70, line: 710, column: 4)
!626 = !DILocation(line: 710, column: 13, scope: !625)
!627 = !DILocation(line: 710, column: 11, scope: !625)
!628 = !DILocation(line: 710, column: 44, scope: !625)
!629 = !DILocation(line: 710, column: 42, scope: !625)
!630 = !DILocation(line: 710, column: 9, scope: !625)
!631 = !DILocation(line: 710, column: 48, scope: !632)
!632 = !DILexicalBlockFile(scope: !633, file: !70, discriminator: 1)
!633 = distinct !DILexicalBlock(scope: !625, file: !70, line: 710, column: 4)
!634 = !DILocation(line: 710, column: 47, scope: !632)
!635 = !DILocation(line: 710, column: 4, scope: !632)
!636 = !DILocation(line: 711, column: 12, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !70, line: 711, column: 11)
!638 = distinct !DILexicalBlock(scope: !633, file: !70, line: 710, column: 56)
!639 = !DILocation(line: 711, column: 11, scope: !637)
!640 = !DILocation(line: 711, column: 14, scope: !637)
!641 = !DILocation(line: 711, column: 11, scope: !638)
!642 = !DILocation(line: 712, column: 11, scope: !643)
!643 = distinct !DILexicalBlock(scope: !637, file: !70, line: 711, column: 22)
!644 = !DILocation(line: 712, column: 13, scope: !643)
!645 = !DILocation(line: 713, column: 7, scope: !643)
!646 = !DILocation(line: 714, column: 4, scope: !638)
!647 = !DILocation(line: 710, column: 52, scope: !648)
!648 = !DILexicalBlockFile(scope: !633, file: !70, discriminator: 2)
!649 = !DILocation(line: 710, column: 4, scope: !648)
!650 = distinct !{!650, !651}
!651 = !DILocation(line: 710, column: 4, scope: !555)
!652 = !DILocation(line: 715, column: 27, scope: !555)
!653 = !DILocation(line: 715, column: 30, scope: !555)
!654 = !DILocation(line: 715, column: 13, scope: !555)
!655 = !DILocation(line: 715, column: 11, scope: !555)
!656 = !DILocation(line: 716, column: 15, scope: !555)
!657 = !DILocation(line: 716, column: 4, scope: !555)
!658 = !DILocation(line: 718, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !555, file: !70, line: 718, column: 8)
!660 = !DILocation(line: 718, column: 16, scope: !659)
!661 = !DILocation(line: 718, column: 22, scope: !659)
!662 = !DILocation(line: 718, column: 26, scope: !663)
!663 = !DILexicalBlockFile(scope: !659, file: !70, discriminator: 1)
!664 = !DILocation(line: 718, column: 30, scope: !663)
!665 = !DILocation(line: 718, column: 8, scope: !663)
!666 = !DILocation(line: 720, column: 15, scope: !667)
!667 = distinct !DILexicalBlock(scope: !659, file: !70, line: 718, column: 38)
!668 = !DILocation(line: 719, column: 7, scope: !667)
!669 = !DILocation(line: 722, column: 7, scope: !667)
!670 = !DILocation(line: 725, column: 19, scope: !555)
!671 = !DILocation(line: 726, column: 19, scope: !555)
!672 = !DILocation(line: 725, column: 11, scope: !555)
!673 = !DILocation(line: 726, column: 41, scope: !555)
!674 = !DILocation(line: 725, column: 4, scope: !555)
!675 = !DILocation(line: 730, column: 1, scope: !555)
!676 = distinct !DISubprogram(name: "File_IsEmptyDirectory", scope: !70, file: !70, line: 788, type: !85, isLocal: false, isDefinition: true, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!677 = !DILocalVariable(name: "pathName", arg: 1, scope: !676, file: !70, line: 788, type: !73)
!678 = !DILocation(line: 788, column: 35, scope: !676)
!679 = !DILocalVariable(name: "numFiles", scope: !676, file: !70, line: 790, type: !47)
!680 = !DILocation(line: 790, column: 8, scope: !676)
!681 = !DILocation(line: 792, column: 26, scope: !682)
!682 = distinct !DILexicalBlock(scope: !676, file: !70, line: 792, column: 8)
!683 = !DILocation(line: 792, column: 9, scope: !682)
!684 = !DILocation(line: 792, column: 8, scope: !676)
!685 = !DILocation(line: 793, column: 7, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !70, line: 792, column: 37)
!687 = !DILocation(line: 796, column: 34, scope: !676)
!688 = !DILocation(line: 796, column: 15, scope: !676)
!689 = !DILocation(line: 796, column: 13, scope: !676)
!690 = !DILocation(line: 797, column: 8, scope: !691)
!691 = distinct !DILexicalBlock(scope: !676, file: !70, line: 797, column: 8)
!692 = !DILocation(line: 797, column: 17, scope: !691)
!693 = !DILocation(line: 797, column: 8, scope: !676)
!694 = !DILocation(line: 798, column: 7, scope: !695)
!695 = distinct !DILexicalBlock(scope: !691, file: !70, line: 797, column: 22)
!696 = !DILocation(line: 801, column: 11, scope: !676)
!697 = !DILocation(line: 801, column: 20, scope: !676)
!698 = !DILocation(line: 801, column: 4, scope: !676)
!699 = !DILocation(line: 802, column: 1, scope: !676)
!700 = !DILocalVariable(name: "pathName", arg: 1, scope: !84, file: !70, line: 829, type: !73)
!701 = !DILocation(line: 829, column: 36, scope: !84)
!702 = !DILocalVariable(name: "i", scope: !84, file: !70, line: 831, type: !47)
!703 = !DILocation(line: 831, column: 8, scope: !84)
!704 = !DILocalVariable(name: "numFiles", scope: !84, file: !70, line: 831, type: !47)
!705 = !DILocation(line: 831, column: 11, scope: !84)
!706 = !DILocalVariable(name: "fileList", scope: !84, file: !70, line: 832, type: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!708 = !DILocation(line: 832, column: 11, scope: !84)
!709 = !DILocalVariable(name: "onlyVmfsSystemFilesFound", scope: !84, file: !70, line: 834, type: !87)
!710 = !DILocation(line: 834, column: 9, scope: !84)
!711 = !DILocation(line: 836, column: 34, scope: !84)
!712 = !DILocation(line: 836, column: 15, scope: !84)
!713 = !DILocation(line: 836, column: 13, scope: !84)
!714 = !DILocation(line: 837, column: 8, scope: !715)
!715 = distinct !DILexicalBlock(scope: !84, file: !70, line: 837, column: 8)
!716 = !DILocation(line: 837, column: 17, scope: !715)
!717 = !DILocation(line: 837, column: 8, scope: !84)
!718 = !DILocation(line: 838, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !70, line: 837, column: 24)
!720 = !DILocation(line: 841, column: 11, scope: !721)
!721 = distinct !DILexicalBlock(scope: !84, file: !70, line: 841, column: 4)
!722 = !DILocation(line: 841, column: 9, scope: !721)
!723 = !DILocation(line: 841, column: 16, scope: !724)
!724 = !DILexicalBlockFile(scope: !725, file: !70, discriminator: 1)
!725 = distinct !DILexicalBlock(scope: !721, file: !70, line: 841, column: 4)
!726 = !DILocation(line: 841, column: 20, scope: !724)
!727 = !DILocation(line: 841, column: 18, scope: !724)
!728 = !DILocation(line: 841, column: 4, scope: !724)
!729 = !DILocation(line: 842, column: 38, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !70, line: 842, column: 11)
!731 = distinct !DILexicalBlock(scope: !725, file: !70, line: 841, column: 35)
!732 = !DILocation(line: 842, column: 29, scope: !730)
!733 = !DILocation(line: 842, column: 12, scope: !730)
!734 = !DILocation(line: 842, column: 11, scope: !731)
!735 = !DILocation(line: 843, column: 35, scope: !736)
!736 = distinct !DILexicalBlock(scope: !730, file: !70, line: 842, column: 65)
!737 = !DILocation(line: 844, column: 10, scope: !736)
!738 = !DILocation(line: 846, column: 4, scope: !731)
!739 = !DILocation(line: 841, column: 31, scope: !740)
!740 = !DILexicalBlockFile(scope: !725, file: !70, discriminator: 2)
!741 = !DILocation(line: 841, column: 4, scope: !740)
!742 = distinct !{!742, !743}
!743 = !DILocation(line: 841, column: 4, scope: !84)
!744 = !DILocation(line: 848, column: 24, scope: !84)
!745 = !DILocation(line: 848, column: 34, scope: !84)
!746 = !DILocation(line: 848, column: 4, scope: !84)
!747 = !DILocation(line: 850, column: 11, scope: !84)
!748 = !DILocation(line: 850, column: 4, scope: !84)
!749 = !DILocation(line: 851, column: 1, scope: !84)
!750 = distinct !DISubprogram(name: "Unicode_EndsWith", scope: !751, file: !751, line: 315, type: !509, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!751 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeOperations.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!752 = !DILocalVariable(name: "str", arg: 1, scope: !750, file: !751, line: 315, type: !73)
!753 = !DILocation(line: 315, column: 30, scope: !750)
!754 = !DILocalVariable(name: "suffix", arg: 2, scope: !750, file: !751, line: 316, type: !73)
!755 = !DILocation(line: 316, column: 30, scope: !750)
!756 = !DILocation(line: 318, column: 27, scope: !750)
!757 = !DILocation(line: 318, column: 32, scope: !750)
!758 = !DILocation(line: 318, column: 11, scope: !750)
!759 = !DILocation(line: 318, column: 4, scope: !750)
!760 = distinct !DISubprogram(name: "Util_FreeStringList", scope: !761, file: !761, line: 368, type: !762, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!761 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/util.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!762 = !DISubroutineType(types: !763)
!763 = !{null, !707, !764}
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !765, line: 102, baseType: !766)
!765 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !767, line: 172, baseType: !768)
!767 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!768 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!769 = !DILocalVariable(name: "list", arg: 1, scope: !760, file: !761, line: 368, type: !707)
!770 = !DILocation(line: 368, column: 28, scope: !760)
!771 = !DILocalVariable(name: "length", arg: 2, scope: !760, file: !761, line: 369, type: !764)
!772 = !DILocation(line: 369, column: 29, scope: !760)
!773 = !DILocation(line: 371, column: 28, scope: !760)
!774 = !DILocation(line: 371, column: 34, scope: !760)
!775 = !DILocation(line: 371, column: 4, scope: !760)
!776 = !DILocation(line: 372, column: 1, scope: !760)
!777 = distinct !DISubprogram(name: "File_IsFile", scope: !70, file: !70, line: 872, type: !85, isLocal: false, isDefinition: true, scopeLine: 873, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!778 = !DILocalVariable(name: "pathName", arg: 1, scope: !777, file: !70, line: 872, type: !73)
!779 = !DILocation(line: 872, column: 25, scope: !777)
!780 = !DILocalVariable(name: "fileData", scope: !777, file: !70, line: 874, type: !153)
!781 = !DILocation(line: 874, column: 13, scope: !777)
!782 = !DILocation(line: 876, column: 27, scope: !777)
!783 = !DILocation(line: 876, column: 12, scope: !777)
!784 = !DILocation(line: 876, column: 48, scope: !777)
!785 = !DILocation(line: 876, column: 54, scope: !777)
!786 = !DILocation(line: 877, column: 22, scope: !777)
!787 = !DILocation(line: 877, column: 31, scope: !777)
!788 = !DILocation(line: 876, column: 54, scope: !789)
!789 = !DILexicalBlockFile(scope: !777, file: !70, discriminator: 1)
!790 = !DILocation(line: 876, column: 11, scope: !789)
!791 = !DILocation(line: 876, column: 4, scope: !789)
!792 = distinct !DISubprogram(name: "File_CopyFromFdToFd", scope: !70, file: !70, line: 900, type: !793, isLocal: false, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!793 = !DISubroutineType(types: !794)
!794 = !{!87, !795, !795}
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIODescriptor", file: !19, line: 79, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FileIODescriptor", file: !19, line: 74, size: 192, align: 64, elements: !797)
!797 = !{!798, !799, !800, !801}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "posix", scope: !796, file: !19, line: 75, baseType: !47, size: 32, align: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !19, line: 76, baseType: !47, size: 32, align: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "fileName", scope: !796, file: !19, line: 77, baseType: !65, size: 64, align: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lockToken", scope: !796, file: !19, line: 78, baseType: !802, size: 64, align: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64, align: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "FileLockToken", file: !19, line: 59, flags: DIFlagFwdDecl)
!804 = !DILocalVariable(name: "src", arg: 1, scope: !792, file: !70, line: 900, type: !795)
!805 = !DILocation(line: 900, column: 38, scope: !792)
!806 = !DILocalVariable(name: "dst", arg: 2, scope: !792, file: !70, line: 901, type: !795)
!807 = !DILocation(line: 901, column: 38, scope: !792)
!808 = !DILocalVariable(name: "err", scope: !792, file: !70, line: 903, type: !809)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "Err_Number", file: !810, line: 42, baseType: !47)
!810 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/err.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!811 = !DILocation(line: 903, column: 15, scope: !792)
!812 = !DILocalVariable(name: "fretR", scope: !792, file: !70, line: 904, type: !117)
!813 = !DILocation(line: 904, column: 17, scope: !792)
!814 = !DILocation(line: 906, column: 4, scope: !792)
!815 = distinct !{!815, !814}
!816 = !DILocalVariable(name: "buf", scope: !817, file: !70, line: 907, type: !818)
!817 = distinct !DILexicalBlock(scope: !792, file: !70, line: 906, column: 7)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 65536, align: 8, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 8192)
!821 = !DILocation(line: 907, column: 21, scope: !817)
!822 = !DILocalVariable(name: "actual", scope: !817, file: !70, line: 908, type: !565)
!823 = !DILocation(line: 908, column: 14, scope: !817)
!824 = !DILocalVariable(name: "fretW", scope: !817, file: !70, line: 909, type: !117)
!825 = !DILocation(line: 909, column: 20, scope: !817)
!826 = !DILocation(line: 911, column: 33, scope: !817)
!827 = !DILocation(line: 911, column: 15, scope: !817)
!828 = !DILocation(line: 911, column: 13, scope: !817)
!829 = !DILocation(line: 912, column: 29, scope: !830)
!830 = distinct !DILexicalBlock(scope: !817, file: !70, line: 912, column: 11)
!831 = !DILocation(line: 912, column: 12, scope: !830)
!832 = !DILocation(line: 912, column: 36, scope: !830)
!833 = !DILocation(line: 912, column: 40, scope: !834)
!834 = !DILexicalBlockFile(scope: !830, file: !70, discriminator: 1)
!835 = !DILocation(line: 912, column: 46, scope: !834)
!836 = !DILocation(line: 912, column: 11, scope: !834)
!837 = !DILocation(line: 913, column: 17, scope: !838)
!838 = distinct !DILexicalBlock(scope: !830, file: !70, line: 912, column: 73)
!839 = !DILocation(line: 913, column: 16, scope: !838)
!840 = !DILocation(line: 913, column: 14, scope: !838)
!841 = !DILocation(line: 916, column: 71, scope: !838)
!842 = !DILocation(line: 916, column: 55, scope: !838)
!843 = !DILocation(line: 915, column: 10, scope: !838)
!844 = !DILocation(line: 918, column: 12, scope: !838)
!845 = !DILocation(line: 918, column: 11, scope: !838)
!846 = !DILocation(line: 918, column: 9, scope: !838)
!847 = !DILocation(line: 920, column: 10, scope: !838)
!848 = !DILocation(line: 923, column: 34, scope: !817)
!849 = !DILocation(line: 923, column: 39, scope: !817)
!850 = !DILocation(line: 923, column: 15, scope: !817)
!851 = !DILocation(line: 923, column: 13, scope: !817)
!852 = !DILocation(line: 924, column: 29, scope: !853)
!853 = distinct !DILexicalBlock(scope: !817, file: !70, line: 924, column: 11)
!854 = !DILocation(line: 924, column: 12, scope: !853)
!855 = !DILocation(line: 924, column: 11, scope: !817)
!856 = !DILocation(line: 925, column: 17, scope: !857)
!857 = distinct !DILexicalBlock(scope: !853, file: !70, line: 924, column: 37)
!858 = !DILocation(line: 925, column: 16, scope: !857)
!859 = !DILocation(line: 925, column: 14, scope: !857)
!860 = !DILocation(line: 928, column: 71, scope: !857)
!861 = !DILocation(line: 928, column: 55, scope: !857)
!862 = !DILocation(line: 927, column: 10, scope: !857)
!863 = !DILocation(line: 930, column: 12, scope: !857)
!864 = !DILocation(line: 930, column: 11, scope: !857)
!865 = !DILocation(line: 930, column: 9, scope: !857)
!866 = !DILocation(line: 932, column: 10, scope: !857)
!867 = !DILocation(line: 934, column: 4, scope: !817)
!868 = !DILocation(line: 934, column: 13, scope: !869)
!869 = !DILexicalBlockFile(scope: !792, file: !70, discriminator: 1)
!870 = !DILocation(line: 934, column: 19, scope: !869)
!871 = !DILocation(line: 934, column: 4, scope: !869)
!872 = !DILocation(line: 936, column: 4, scope: !792)
!873 = !DILocation(line: 937, column: 1, scope: !792)
!874 = distinct !DISubprogram(name: "File_CopyTree", scope: !70, file: !70, line: 1072, type: !875, isLocal: false, isDefinition: true, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!875 = !DISubroutineType(types: !876)
!876 = !{!87, !73, !73, !87, !87}
!877 = !DILocalVariable(name: "srcName", arg: 1, scope: !874, file: !70, line: 1072, type: !73)
!878 = !DILocation(line: 1072, column: 27, scope: !874)
!879 = !DILocalVariable(name: "dstName", arg: 2, scope: !874, file: !70, line: 1073, type: !73)
!880 = !DILocation(line: 1073, column: 27, scope: !874)
!881 = !DILocalVariable(name: "overwriteExisting", arg: 3, scope: !874, file: !70, line: 1074, type: !87)
!882 = !DILocation(line: 1074, column: 20, scope: !874)
!883 = !DILocalVariable(name: "followSymlinks", arg: 4, scope: !874, file: !70, line: 1075, type: !87)
!884 = !DILocation(line: 1075, column: 20, scope: !874)
!885 = !DILocalVariable(name: "err", scope: !874, file: !70, line: 1077, type: !47)
!886 = !DILocation(line: 1077, column: 8, scope: !874)
!887 = !DILocation(line: 1082, column: 26, scope: !888)
!888 = distinct !DILexicalBlock(scope: !874, file: !70, line: 1082, column: 8)
!889 = !DILocation(line: 1082, column: 9, scope: !888)
!890 = !DILocation(line: 1082, column: 8, scope: !874)
!891 = !DILocation(line: 1083, column: 14, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !70, line: 1082, column: 36)
!893 = !DILocation(line: 1083, column: 13, scope: !892)
!894 = !DILocation(line: 1083, column: 11, scope: !892)
!895 = !DILocation(line: 1086, column: 18, scope: !892)
!896 = !DILocation(line: 1084, column: 7, scope: !892)
!897 = !DILocation(line: 1087, column: 9, scope: !892)
!898 = !DILocation(line: 1087, column: 8, scope: !892)
!899 = !DILocation(line: 1087, column: 6, scope: !892)
!900 = !DILocation(line: 1088, column: 7, scope: !892)
!901 = !DILocation(line: 1091, column: 26, scope: !902)
!902 = distinct !DILexicalBlock(scope: !874, file: !70, line: 1091, column: 8)
!903 = !DILocation(line: 1091, column: 9, scope: !902)
!904 = !DILocation(line: 1091, column: 8, scope: !874)
!905 = !DILocation(line: 1092, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !70, line: 1091, column: 36)
!907 = !DILocation(line: 1092, column: 13, scope: !906)
!908 = !DILocation(line: 1092, column: 11, scope: !906)
!909 = !DILocation(line: 1095, column: 18, scope: !906)
!910 = !DILocation(line: 1093, column: 7, scope: !906)
!911 = !DILocation(line: 1096, column: 9, scope: !906)
!912 = !DILocation(line: 1096, column: 8, scope: !906)
!913 = !DILocation(line: 1096, column: 6, scope: !906)
!914 = !DILocation(line: 1097, column: 7, scope: !906)
!915 = !DILocation(line: 1100, column: 24, scope: !874)
!916 = !DILocation(line: 1100, column: 33, scope: !874)
!917 = !DILocation(line: 1100, column: 42, scope: !874)
!918 = !DILocation(line: 1100, column: 61, scope: !874)
!919 = !DILocation(line: 1100, column: 11, scope: !874)
!920 = !DILocation(line: 1100, column: 4, scope: !874)
!921 = !DILocation(line: 1101, column: 1, scope: !874)
!922 = distinct !DISubprogram(name: "FileCopyTree", scope: !70, file: !70, line: 960, type: !875, isLocal: true, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!923 = !DILocalVariable(name: "srcName", arg: 1, scope: !922, file: !70, line: 960, type: !73)
!924 = !DILocation(line: 960, column: 26, scope: !922)
!925 = !DILocalVariable(name: "dstName", arg: 2, scope: !922, file: !70, line: 961, type: !73)
!926 = !DILocation(line: 961, column: 26, scope: !922)
!927 = !DILocalVariable(name: "overwriteExisting", arg: 3, scope: !922, file: !70, line: 962, type: !87)
!928 = !DILocation(line: 962, column: 19, scope: !922)
!929 = !DILocalVariable(name: "followSymlinks", arg: 4, scope: !922, file: !70, line: 963, type: !87)
!930 = !DILocation(line: 963, column: 19, scope: !922)
!931 = !DILocalVariable(name: "err", scope: !922, file: !70, line: 965, type: !47)
!932 = !DILocation(line: 965, column: 8, scope: !922)
!933 = !DILocalVariable(name: "success", scope: !922, file: !70, line: 966, type: !87)
!934 = !DILocation(line: 966, column: 9, scope: !922)
!935 = !DILocalVariable(name: "numFiles", scope: !922, file: !70, line: 967, type: !47)
!936 = !DILocation(line: 967, column: 8, scope: !922)
!937 = !DILocalVariable(name: "i", scope: !922, file: !70, line: 968, type: !47)
!938 = !DILocation(line: 968, column: 8, scope: !922)
!939 = !DILocalVariable(name: "fileList", scope: !922, file: !70, line: 969, type: !707)
!940 = !DILocation(line: 969, column: 11, scope: !922)
!941 = !DILocation(line: 971, column: 34, scope: !922)
!942 = !DILocation(line: 971, column: 15, scope: !922)
!943 = !DILocation(line: 971, column: 13, scope: !922)
!944 = !DILocation(line: 973, column: 8, scope: !945)
!945 = distinct !DILexicalBlock(scope: !922, file: !70, line: 973, column: 8)
!946 = !DILocation(line: 973, column: 17, scope: !945)
!947 = !DILocation(line: 973, column: 8, scope: !922)
!948 = !DILocation(line: 974, column: 14, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !70, line: 973, column: 24)
!950 = !DILocation(line: 974, column: 13, scope: !949)
!951 = !DILocation(line: 974, column: 11, scope: !949)
!952 = !DILocation(line: 977, column: 18, scope: !949)
!953 = !DILocation(line: 975, column: 7, scope: !949)
!954 = !DILocation(line: 978, column: 9, scope: !949)
!955 = !DILocation(line: 978, column: 8, scope: !949)
!956 = !DILocation(line: 978, column: 6, scope: !949)
!957 = !DILocation(line: 980, column: 7, scope: !949)
!958 = !DILocation(line: 983, column: 25, scope: !922)
!959 = !DILocation(line: 983, column: 4, scope: !922)
!960 = !DILocation(line: 985, column: 11, scope: !961)
!961 = distinct !DILexicalBlock(scope: !922, file: !70, line: 985, column: 4)
!962 = !DILocation(line: 985, column: 9, scope: !961)
!963 = !DILocation(line: 985, column: 16, scope: !964)
!964 = !DILexicalBlockFile(scope: !965, file: !70, discriminator: 1)
!965 = distinct !DILexicalBlock(scope: !961, file: !70, line: 985, column: 4)
!966 = !DILocation(line: 985, column: 20, scope: !964)
!967 = !DILocation(line: 985, column: 18, scope: !964)
!968 = !DILocation(line: 985, column: 29, scope: !964)
!969 = !DILocation(line: 985, column: 32, scope: !970)
!970 = !DILexicalBlockFile(scope: !965, file: !70, discriminator: 2)
!971 = !DILocation(line: 985, column: 29, scope: !970)
!972 = !DILocation(line: 985, column: 4, scope: !973)
!973 = !DILexicalBlockFile(scope: !961, file: !70, discriminator: 3)
!974 = !DILocalVariable(name: "sb", scope: !975, file: !70, line: 986, type: !976)
!975 = distinct !DILexicalBlock(scope: !965, file: !70, line: 985, column: 46)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !977, line: 46, size: 1152, align: 64, elements: !978)
!977 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!978 = !{!979, !981, !983, !985, !987, !989, !991, !992, !993, !995, !997, !999, !1007, !1008, !1009}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !976, file: !977, line: 48, baseType: !980, size: 64, align: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !767, line: 124, baseType: !56)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !976, file: !977, line: 53, baseType: !982, size: 64, align: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !767, line: 127, baseType: !56)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !976, file: !977, line: 61, baseType: !984, size: 64, align: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !767, line: 130, baseType: !56)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !976, file: !977, line: 62, baseType: !986, size: 32, align: 32, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !767, line: 129, baseType: !54)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !976, file: !977, line: 64, baseType: !988, size: 32, align: 32, offset: 224)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !767, line: 125, baseType: !54)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !976, file: !977, line: 65, baseType: !990, size: 32, align: 32, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !767, line: 126, baseType: !54)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !976, file: !977, line: 67, baseType: !47, size: 32, align: 32, offset: 288)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !976, file: !977, line: 69, baseType: !980, size: 64, align: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !976, file: !977, line: 74, baseType: !994, size: 64, align: 64, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !767, line: 131, baseType: !768)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !976, file: !977, line: 78, baseType: !996, size: 64, align: 64, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !767, line: 153, baseType: !768)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !976, file: !977, line: 80, baseType: !998, size: 64, align: 64, offset: 512)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !767, line: 158, baseType: !768)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !976, file: !977, line: 91, baseType: !1000, size: 128, align: 64, offset: 576)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1001, line: 120, size: 128, align: 64, elements: !1002)
!1001 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!1002 = !{!1003, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1000, file: !1001, line: 122, baseType: !1004, size: 64, align: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !767, line: 139, baseType: !768)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1000, file: !1001, line: 123, baseType: !1006, size: 64, align: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !767, line: 175, baseType: !768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !976, file: !977, line: 92, baseType: !1000, size: 128, align: 64, offset: 704)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !976, file: !977, line: 93, baseType: !1000, size: 128, align: 64, offset: 832)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !976, file: !977, line: 106, baseType: !1010, size: 192, align: 64, offset: 960)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 192, align: 64, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 3)
!1013 = !DILocation(line: 986, column: 19, scope: !975)
!1014 = !DILocalVariable(name: "srcFilename", scope: !975, file: !70, line: 987, type: !65)
!1015 = !DILocation(line: 987, column: 13, scope: !975)
!1016 = !DILocation(line: 989, column: 35, scope: !975)
!1017 = !DILocation(line: 989, column: 53, scope: !975)
!1018 = !DILocation(line: 989, column: 44, scope: !975)
!1019 = !DILocation(line: 989, column: 21, scope: !975)
!1020 = !DILocation(line: 989, column: 19, scope: !975)
!1021 = !DILocation(line: 991, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !975, file: !70, line: 991, column: 11)
!1023 = !DILocation(line: 991, column: 11, scope: !975)
!1024 = !DILocation(line: 992, column: 32, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !70, line: 991, column: 27)
!1026 = !DILocation(line: 992, column: 21, scope: !1025)
!1027 = !DILocation(line: 992, column: 50, scope: !1025)
!1028 = !DILocation(line: 992, column: 20, scope: !1025)
!1029 = !DILocation(line: 992, column: 18, scope: !1025)
!1030 = !DILocation(line: 993, column: 7, scope: !1025)
!1031 = !DILocation(line: 994, column: 33, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1022, file: !70, line: 993, column: 14)
!1033 = !DILocation(line: 994, column: 21, scope: !1032)
!1034 = !DILocation(line: 994, column: 51, scope: !1032)
!1035 = !DILocation(line: 994, column: 20, scope: !1032)
!1036 = !DILocation(line: 994, column: 18, scope: !1032)
!1037 = !DILocation(line: 997, column: 11, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !975, file: !70, line: 997, column: 11)
!1039 = !DILocation(line: 997, column: 11, scope: !975)
!1040 = !DILocalVariable(name: "dstFilename", scope: !1041, file: !70, line: 998, type: !65)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !70, line: 997, column: 20)
!1042 = !DILocation(line: 998, column: 16, scope: !1041)
!1043 = !DILocation(line: 998, column: 44, scope: !1041)
!1044 = !DILocation(line: 998, column: 62, scope: !1041)
!1045 = !DILocation(line: 998, column: 53, scope: !1041)
!1046 = !DILocation(line: 998, column: 30, scope: !1041)
!1047 = !DILocation(line: 1000, column: 21, scope: !1041)
!1048 = !DILocation(line: 1000, column: 29, scope: !1041)
!1049 = !DILocation(line: 1000, column: 10, scope: !1041)
!1050 = !DILocation(line: 1002, column: 36, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1041, file: !70, line: 1000, column: 38)
!1052 = !DILocation(line: 1002, column: 49, scope: !1051)
!1053 = !DILocation(line: 1002, column: 62, scope: !1051)
!1054 = !DILocation(line: 1003, column: 36, scope: !1051)
!1055 = !DILocation(line: 1002, column: 23, scope: !1051)
!1056 = !DILocation(line: 1002, column: 21, scope: !1051)
!1057 = !DILocation(line: 1004, column: 13, scope: !1051)
!1058 = !DILocation(line: 1008, column: 46, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1051, file: !70, line: 1008, column: 17)
!1060 = !DILocation(line: 1008, column: 31, scope: !1059)
!1061 = !DILocation(line: 1008, column: 60, scope: !1059)
!1062 = !DILocation(line: 1008, column: 17, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1059, file: !70, discriminator: 1)
!1064 = !DILocation(line: 1008, column: 73, scope: !1059)
!1065 = !DILocation(line: 1008, column: 17, scope: !1051)
!1066 = !DILocation(line: 1009, column: 23, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1059, file: !70, line: 1008, column: 79)
!1068 = !DILocation(line: 1009, column: 22, scope: !1067)
!1069 = !DILocation(line: 1009, column: 20, scope: !1067)
!1070 = !DILocation(line: 1012, column: 42, scope: !1067)
!1071 = !DILocation(line: 1012, column: 27, scope: !1067)
!1072 = !DILocation(line: 1013, column: 27, scope: !1067)
!1073 = !DILocation(line: 1014, column: 44, scope: !1067)
!1074 = !DILocation(line: 1014, column: 27, scope: !1067)
!1075 = !DILocation(line: 1010, column: 16, scope: !1067)
!1076 = !DILocation(line: 1015, column: 18, scope: !1067)
!1077 = !DILocation(line: 1015, column: 17, scope: !1067)
!1078 = !DILocation(line: 1015, column: 15, scope: !1067)
!1079 = !DILocation(line: 1016, column: 24, scope: !1067)
!1080 = !DILocation(line: 1017, column: 13, scope: !1067)
!1081 = !DILocation(line: 1018, column: 13, scope: !1051)
!1082 = !DILocation(line: 1022, column: 28, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1051, file: !70, line: 1022, column: 17)
!1084 = !DILocation(line: 1022, column: 41, scope: !1083)
!1085 = !DILocation(line: 1022, column: 54, scope: !1083)
!1086 = !DILocation(line: 1022, column: 18, scope: !1083)
!1087 = !DILocation(line: 1022, column: 17, scope: !1051)
!1088 = !DILocation(line: 1023, column: 23, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1083, file: !70, line: 1022, column: 74)
!1090 = !DILocation(line: 1023, column: 22, scope: !1089)
!1091 = !DILocation(line: 1023, column: 20, scope: !1089)
!1092 = !DILocation(line: 1026, column: 27, scope: !1089)
!1093 = !DILocation(line: 1026, column: 40, scope: !1089)
!1094 = !DILocation(line: 1027, column: 44, scope: !1089)
!1095 = !DILocation(line: 1027, column: 27, scope: !1089)
!1096 = !DILocation(line: 1024, column: 16, scope: !1089)
!1097 = !DILocation(line: 1028, column: 18, scope: !1089)
!1098 = !DILocation(line: 1028, column: 17, scope: !1089)
!1099 = !DILocation(line: 1028, column: 15, scope: !1089)
!1100 = !DILocation(line: 1029, column: 24, scope: !1089)
!1101 = !DILocation(line: 1030, column: 13, scope: !1089)
!1102 = !DILocation(line: 1032, column: 13, scope: !1051)
!1103 = !DILocation(line: 1035, column: 21, scope: !1041)
!1104 = !DILocation(line: 1035, column: 10, scope: !1041)
!1105 = !DILocation(line: 1036, column: 7, scope: !1041)
!1106 = !DILocation(line: 1037, column: 17, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1038, file: !70, line: 1036, column: 14)
!1108 = !DILocation(line: 1037, column: 16, scope: !1107)
!1109 = !DILocation(line: 1037, column: 14, scope: !1107)
!1110 = !DILocation(line: 1040, column: 21, scope: !1107)
!1111 = !DILocation(line: 1038, column: 10, scope: !1107)
!1112 = !DILocation(line: 1041, column: 12, scope: !1107)
!1113 = !DILocation(line: 1041, column: 11, scope: !1107)
!1114 = !DILocation(line: 1041, column: 9, scope: !1107)
!1115 = !DILocation(line: 1044, column: 18, scope: !975)
!1116 = !DILocation(line: 1044, column: 7, scope: !975)
!1117 = !DILocation(line: 1045, column: 4, scope: !975)
!1118 = !DILocation(line: 985, column: 42, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !965, file: !70, discriminator: 4)
!1120 = !DILocation(line: 985, column: 4, scope: !1119)
!1121 = distinct !{!1121, !1122}
!1122 = !DILocation(line: 985, column: 4, scope: !922)
!1123 = !DILocation(line: 1047, column: 24, scope: !922)
!1124 = !DILocation(line: 1047, column: 34, scope: !922)
!1125 = !DILocation(line: 1047, column: 4, scope: !922)
!1126 = !DILocation(line: 1049, column: 11, scope: !922)
!1127 = !DILocation(line: 1049, column: 4, scope: !922)
!1128 = !DILocation(line: 1050, column: 1, scope: !922)
!1129 = distinct !DISubprogram(name: "File_CopyFromFd", scope: !70, file: !70, line: 1124, type: !1130, isLocal: false, isDefinition: true, scopeLine: 1127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!87, !795, !73, !87}
!1132 = !DILocalVariable(name: "src", arg: 1, scope: !1129, file: !70, line: 1124, type: !795)
!1133 = !DILocation(line: 1124, column: 34, scope: !1129)
!1134 = !DILocalVariable(name: "dstName", arg: 2, scope: !1129, file: !70, line: 1125, type: !73)
!1135 = !DILocation(line: 1125, column: 29, scope: !1129)
!1136 = !DILocalVariable(name: "overwriteExisting", arg: 3, scope: !1129, file: !70, line: 1126, type: !87)
!1137 = !DILocation(line: 1126, column: 22, scope: !1129)
!1138 = !DILocalVariable(name: "success", scope: !1129, file: !70, line: 1128, type: !87)
!1139 = !DILocation(line: 1128, column: 9, scope: !1129)
!1140 = !DILocalVariable(name: "err", scope: !1129, file: !70, line: 1129, type: !809)
!1141 = !DILocation(line: 1129, column: 15, scope: !1129)
!1142 = !DILocalVariable(name: "fret", scope: !1129, file: !70, line: 1130, type: !117)
!1143 = !DILocation(line: 1130, column: 17, scope: !1129)
!1144 = !DILocalVariable(name: "dst", scope: !1129, file: !70, line: 1131, type: !795)
!1145 = !DILocation(line: 1131, column: 21, scope: !1129)
!1146 = !DILocalVariable(name: "action", scope: !1129, file: !70, line: 1132, type: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileIOOpenAction", file: !19, line: 262, baseType: !34)
!1148 = !DILocation(line: 1132, column: 21, scope: !1129)
!1149 = !DILocation(line: 1136, column: 4, scope: !1129)
!1150 = !DILocation(line: 1138, column: 13, scope: !1129)
!1151 = !DILocation(line: 1138, column: 11, scope: !1129)
!1152 = !DILocation(line: 1141, column: 29, scope: !1129)
!1153 = !DILocation(line: 1141, column: 48, scope: !1129)
!1154 = !DILocation(line: 1141, column: 11, scope: !1129)
!1155 = !DILocation(line: 1141, column: 9, scope: !1129)
!1156 = !DILocation(line: 1142, column: 26, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1129, file: !70, line: 1142, column: 8)
!1158 = !DILocation(line: 1142, column: 9, scope: !1157)
!1159 = !DILocation(line: 1142, column: 8, scope: !1129)
!1160 = !DILocation(line: 1143, column: 14, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !70, line: 1142, column: 33)
!1162 = !DILocation(line: 1143, column: 13, scope: !1161)
!1163 = !DILocation(line: 1143, column: 11, scope: !1161)
!1164 = !DILocation(line: 1146, column: 63, scope: !1161)
!1165 = !DILocation(line: 1147, column: 34, scope: !1161)
!1166 = !DILocation(line: 1147, column: 18, scope: !1161)
!1167 = !DILocation(line: 1145, column: 7, scope: !1161)
!1168 = !DILocation(line: 1149, column: 9, scope: !1161)
!1169 = !DILocation(line: 1149, column: 8, scope: !1161)
!1170 = !DILocation(line: 1149, column: 6, scope: !1161)
!1171 = !DILocation(line: 1151, column: 7, scope: !1161)
!1172 = !DILocation(line: 1154, column: 14, scope: !1129)
!1173 = !DILocation(line: 1154, column: 12, scope: !1129)
!1174 = !DILocation(line: 1156, column: 11, scope: !1129)
!1175 = !DILocation(line: 1156, column: 10, scope: !1129)
!1176 = !DILocation(line: 1156, column: 8, scope: !1129)
!1177 = !DILocation(line: 1158, column: 26, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1129, file: !70, line: 1158, column: 8)
!1179 = !DILocation(line: 1158, column: 9, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1178, file: !70, discriminator: 1)
!1181 = !DILocation(line: 1158, column: 9, scope: !1178)
!1182 = !DILocation(line: 1158, column: 8, scope: !1129)
!1183 = !DILocation(line: 1159, column: 11, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !70, line: 1159, column: 11)
!1185 = distinct !DILexicalBlock(scope: !1178, file: !70, line: 1158, column: 47)
!1186 = !DILocation(line: 1159, column: 11, scope: !1185)
!1187 = !DILocation(line: 1160, column: 18, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !70, line: 1159, column: 20)
!1189 = !DILocation(line: 1160, column: 17, scope: !1188)
!1190 = !DILocation(line: 1160, column: 14, scope: !1188)
!1191 = !DILocation(line: 1161, column: 7, scope: !1188)
!1192 = !DILocation(line: 1164, column: 60, scope: !1185)
!1193 = !DILocation(line: 1165, column: 19, scope: !1185)
!1194 = !DILocation(line: 1163, column: 7, scope: !1185)
!1195 = !DILocation(line: 1167, column: 15, scope: !1185)
!1196 = !DILocation(line: 1168, column: 4, scope: !1185)
!1197 = !DILocation(line: 1170, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1129, file: !70, line: 1170, column: 8)
!1199 = !DILocation(line: 1170, column: 8, scope: !1129)
!1200 = !DILocation(line: 1172, column: 19, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !70, line: 1170, column: 18)
!1202 = !DILocation(line: 1172, column: 7, scope: !1201)
!1203 = !DILocation(line: 1173, column: 4, scope: !1201)
!1204 = !DILocation(line: 1175, column: 6, scope: !1129)
!1205 = !DILocation(line: 1175, column: 5, scope: !1129)
!1206 = !DILocation(line: 1175, column: 3, scope: !1129)
!1207 = !DILocation(line: 1177, column: 11, scope: !1129)
!1208 = !DILocation(line: 1177, column: 4, scope: !1129)
!1209 = !DILocation(line: 1178, column: 1, scope: !1129)
!1210 = distinct !DISubprogram(name: "File_Copy", scope: !70, file: !70, line: 1202, type: !1211, isLocal: false, isDefinition: true, scopeLine: 1205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!87, !73, !73, !87}
!1213 = !DILocalVariable(name: "srcName", arg: 1, scope: !1210, file: !70, line: 1202, type: !73)
!1214 = !DILocation(line: 1202, column: 23, scope: !1210)
!1215 = !DILocalVariable(name: "dstName", arg: 2, scope: !1210, file: !70, line: 1203, type: !73)
!1216 = !DILocation(line: 1203, column: 23, scope: !1210)
!1217 = !DILocalVariable(name: "overwriteExisting", arg: 3, scope: !1210, file: !70, line: 1204, type: !87)
!1218 = !DILocation(line: 1204, column: 16, scope: !1210)
!1219 = !DILocalVariable(name: "success", scope: !1210, file: !70, line: 1206, type: !87)
!1220 = !DILocation(line: 1206, column: 9, scope: !1210)
!1221 = !DILocalVariable(name: "err", scope: !1210, file: !70, line: 1207, type: !809)
!1222 = !DILocation(line: 1207, column: 15, scope: !1210)
!1223 = !DILocalVariable(name: "fret", scope: !1210, file: !70, line: 1208, type: !117)
!1224 = !DILocation(line: 1208, column: 17, scope: !1210)
!1225 = !DILocalVariable(name: "src", scope: !1210, file: !70, line: 1209, type: !795)
!1226 = !DILocation(line: 1209, column: 21, scope: !1210)
!1227 = !DILocation(line: 1214, column: 4, scope: !1210)
!1228 = !DILocation(line: 1216, column: 29, scope: !1210)
!1229 = !DILocation(line: 1216, column: 11, scope: !1210)
!1230 = !DILocation(line: 1216, column: 9, scope: !1210)
!1231 = !DILocation(line: 1217, column: 26, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1210, file: !70, line: 1217, column: 8)
!1233 = !DILocation(line: 1217, column: 9, scope: !1232)
!1234 = !DILocation(line: 1217, column: 8, scope: !1210)
!1235 = !DILocation(line: 1218, column: 14, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !70, line: 1217, column: 33)
!1237 = !DILocation(line: 1218, column: 13, scope: !1236)
!1238 = !DILocation(line: 1218, column: 11, scope: !1236)
!1239 = !DILocation(line: 1222, column: 18, scope: !1236)
!1240 = !DILocation(line: 1222, column: 43, scope: !1236)
!1241 = !DILocation(line: 1222, column: 27, scope: !1236)
!1242 = !DILocation(line: 1220, column: 7, scope: !1236)
!1243 = !DILocation(line: 1224, column: 9, scope: !1236)
!1244 = !DILocation(line: 1224, column: 8, scope: !1236)
!1245 = !DILocation(line: 1224, column: 6, scope: !1236)
!1246 = !DILocation(line: 1226, column: 7, scope: !1236)
!1247 = !DILocation(line: 1229, column: 35, scope: !1210)
!1248 = !DILocation(line: 1229, column: 44, scope: !1210)
!1249 = !DILocation(line: 1229, column: 14, scope: !1210)
!1250 = !DILocation(line: 1229, column: 12, scope: !1210)
!1251 = !DILocation(line: 1231, column: 11, scope: !1210)
!1252 = !DILocation(line: 1231, column: 10, scope: !1210)
!1253 = !DILocation(line: 1231, column: 8, scope: !1210)
!1254 = !DILocation(line: 1233, column: 26, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1210, file: !70, line: 1233, column: 8)
!1256 = !DILocation(line: 1233, column: 9, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1255, file: !70, discriminator: 1)
!1258 = !DILocation(line: 1233, column: 9, scope: !1255)
!1259 = !DILocation(line: 1233, column: 8, scope: !1210)
!1260 = !DILocation(line: 1234, column: 11, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !70, line: 1234, column: 11)
!1262 = distinct !DILexicalBlock(scope: !1255, file: !70, line: 1233, column: 47)
!1263 = !DILocation(line: 1234, column: 11, scope: !1262)
!1264 = !DILocation(line: 1235, column: 18, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !70, line: 1234, column: 20)
!1266 = !DILocation(line: 1235, column: 17, scope: !1265)
!1267 = !DILocation(line: 1235, column: 14, scope: !1265)
!1268 = !DILocation(line: 1236, column: 7, scope: !1265)
!1269 = !DILocation(line: 1239, column: 60, scope: !1262)
!1270 = !DILocation(line: 1240, column: 19, scope: !1262)
!1271 = !DILocation(line: 1238, column: 7, scope: !1262)
!1272 = !DILocation(line: 1242, column: 15, scope: !1262)
!1273 = !DILocation(line: 1243, column: 4, scope: !1262)
!1274 = !DILocation(line: 1245, column: 6, scope: !1210)
!1275 = !DILocation(line: 1245, column: 5, scope: !1210)
!1276 = !DILocation(line: 1245, column: 3, scope: !1210)
!1277 = !DILocation(line: 1247, column: 11, scope: !1210)
!1278 = !DILocation(line: 1247, column: 4, scope: !1210)
!1279 = !DILocation(line: 1248, column: 1, scope: !1210)
!1280 = distinct !DISubprogram(name: "File_Move", scope: !70, file: !70, line: 1272, type: !1281, isLocal: false, isDefinition: true, scopeLine: 1275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!87, !73, !73, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!1284 = !DILocalVariable(name: "oldFile", arg: 1, scope: !1280, file: !70, line: 1272, type: !73)
!1285 = !DILocation(line: 1272, column: 23, scope: !1280)
!1286 = !DILocalVariable(name: "newFile", arg: 2, scope: !1280, file: !70, line: 1273, type: !73)
!1287 = !DILocation(line: 1273, column: 23, scope: !1280)
!1288 = !DILocalVariable(name: "asRename", arg: 3, scope: !1280, file: !70, line: 1274, type: !1283)
!1289 = !DILocation(line: 1274, column: 17, scope: !1280)
!1290 = !DILocalVariable(name: "ret", scope: !1280, file: !70, line: 1276, type: !87)
!1291 = !DILocation(line: 1276, column: 9, scope: !1280)
!1292 = !DILocalVariable(name: "duringRename", scope: !1280, file: !70, line: 1277, type: !87)
!1293 = !DILocation(line: 1277, column: 9, scope: !1280)
!1294 = !DILocation(line: 1279, column: 20, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1280, file: !70, line: 1279, column: 8)
!1296 = !DILocation(line: 1279, column: 29, scope: !1295)
!1297 = !DILocation(line: 1279, column: 8, scope: !1295)
!1298 = !DILocation(line: 1279, column: 38, scope: !1295)
!1299 = !DILocation(line: 1279, column: 8, scope: !1280)
!1300 = !DILocation(line: 1280, column: 20, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1295, file: !70, line: 1279, column: 44)
!1302 = !DILocation(line: 1281, column: 11, scope: !1301)
!1303 = !DILocation(line: 1282, column: 8, scope: !1301)
!1304 = !DILocation(line: 1282, column: 6, scope: !1301)
!1305 = !DILocation(line: 1283, column: 4, scope: !1301)
!1306 = !DILocation(line: 1284, column: 20, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1295, file: !70, line: 1283, column: 11)
!1308 = !DILocation(line: 1286, column: 21, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1307, file: !70, line: 1286, column: 11)
!1310 = !DILocation(line: 1286, column: 30, scope: !1309)
!1311 = !DILocation(line: 1286, column: 11, scope: !1309)
!1312 = !DILocation(line: 1286, column: 11, scope: !1307)
!1313 = !DILocation(line: 1287, column: 22, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !70, line: 1286, column: 43)
!1315 = !DILocation(line: 1287, column: 10, scope: !1314)
!1316 = !DILocation(line: 1288, column: 14, scope: !1314)
!1317 = !DILocation(line: 1289, column: 11, scope: !1314)
!1318 = !DILocation(line: 1289, column: 9, scope: !1314)
!1319 = !DILocation(line: 1290, column: 7, scope: !1314)
!1320 = !DILocation(line: 1291, column: 14, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1309, file: !70, line: 1290, column: 14)
!1322 = !DILocation(line: 1295, column: 8, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1280, file: !70, line: 1295, column: 8)
!1324 = !DILocation(line: 1295, column: 8, scope: !1280)
!1325 = !DILocation(line: 1296, column: 19, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !70, line: 1295, column: 18)
!1327 = !DILocation(line: 1296, column: 8, scope: !1326)
!1328 = !DILocation(line: 1296, column: 17, scope: !1326)
!1329 = !DILocation(line: 1297, column: 4, scope: !1326)
!1330 = !DILocation(line: 1299, column: 11, scope: !1280)
!1331 = !DILocation(line: 1299, column: 4, scope: !1280)
!1332 = distinct !DISubprogram(name: "File_MoveTree", scope: !70, file: !70, line: 1332, type: !1333, isLocal: false, isDefinition: true, scopeLine: 1336, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!87, !73, !73, !87, !1283}
!1335 = !DILocalVariable(name: "srcName", arg: 1, scope: !1332, file: !70, line: 1332, type: !73)
!1336 = !DILocation(line: 1332, column: 27, scope: !1332)
!1337 = !DILocalVariable(name: "dstName", arg: 2, scope: !1332, file: !70, line: 1333, type: !73)
!1338 = !DILocation(line: 1333, column: 27, scope: !1332)
!1339 = !DILocalVariable(name: "overwriteExisting", arg: 3, scope: !1332, file: !70, line: 1334, type: !87)
!1340 = !DILocation(line: 1334, column: 20, scope: !1332)
!1341 = !DILocalVariable(name: "asMove", arg: 4, scope: !1332, file: !70, line: 1335, type: !1283)
!1342 = !DILocation(line: 1335, column: 21, scope: !1332)
!1343 = !DILocalVariable(name: "ret", scope: !1332, file: !70, line: 1337, type: !87)
!1344 = !DILocation(line: 1337, column: 9, scope: !1332)
!1345 = !DILocalVariable(name: "createdDir", scope: !1332, file: !70, line: 1338, type: !87)
!1346 = !DILocation(line: 1338, column: 9, scope: !1332)
!1347 = !DILocation(line: 1343, column: 8, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1332, file: !70, line: 1343, column: 8)
!1349 = !DILocation(line: 1343, column: 8, scope: !1332)
!1350 = !DILocation(line: 1344, column: 8, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1348, file: !70, line: 1343, column: 16)
!1352 = !DILocation(line: 1344, column: 15, scope: !1351)
!1353 = !DILocation(line: 1345, column: 4, scope: !1351)
!1354 = !DILocation(line: 1347, column: 26, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1332, file: !70, line: 1347, column: 8)
!1356 = !DILocation(line: 1347, column: 9, scope: !1355)
!1357 = !DILocation(line: 1347, column: 8, scope: !1332)
!1358 = !DILocation(line: 1350, column: 18, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !70, line: 1347, column: 36)
!1360 = !DILocation(line: 1348, column: 7, scope: !1359)
!1361 = !DILocation(line: 1352, column: 7, scope: !1359)
!1362 = !DILocation(line: 1355, column: 20, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1332, file: !70, line: 1355, column: 8)
!1364 = !DILocation(line: 1355, column: 29, scope: !1363)
!1365 = !DILocation(line: 1355, column: 8, scope: !1363)
!1366 = !DILocation(line: 1355, column: 38, scope: !1363)
!1367 = !DILocation(line: 1355, column: 8, scope: !1332)
!1368 = !DILocation(line: 1356, column: 11, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !70, line: 1356, column: 11)
!1370 = distinct !DILexicalBlock(scope: !1363, file: !70, line: 1355, column: 44)
!1371 = !DILocation(line: 1356, column: 11, scope: !1370)
!1372 = !DILocation(line: 1357, column: 11, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !70, line: 1356, column: 19)
!1374 = !DILocation(line: 1357, column: 18, scope: !1373)
!1375 = !DILocation(line: 1358, column: 7, scope: !1373)
!1376 = !DILocation(line: 1360, column: 11, scope: !1370)
!1377 = !DILocation(line: 1361, column: 4, scope: !1370)
!1378 = !DILocalVariable(name: "statbuf", scope: !1379, file: !70, line: 1362, type: !976)
!1379 = distinct !DILexicalBlock(scope: !1363, file: !70, line: 1361, column: 11)
!1380 = !DILocation(line: 1362, column: 19, scope: !1379)
!1381 = !DILocation(line: 1364, column: 22, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !70, line: 1364, column: 11)
!1383 = !DILocation(line: 1364, column: 11, scope: !1382)
!1384 = !DILocation(line: 1364, column: 41, scope: !1382)
!1385 = !DILocation(line: 1364, column: 11, scope: !1379)
!1386 = !DILocalVariable(name: "err", scope: !1387, file: !70, line: 1365, type: !47)
!1387 = distinct !DILexicalBlock(scope: !1382, file: !70, line: 1364, column: 48)
!1388 = !DILocation(line: 1365, column: 14, scope: !1387)
!1389 = !DILocation(line: 1365, column: 21, scope: !1387)
!1390 = !DILocation(line: 1365, column: 20, scope: !1387)
!1391 = !DILocation(line: 1367, column: 14, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !70, line: 1367, column: 14)
!1393 = !DILocation(line: 1367, column: 18, scope: !1392)
!1394 = !DILocation(line: 1367, column: 14, scope: !1387)
!1395 = !DILocation(line: 1368, column: 48, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !70, line: 1368, column: 17)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !70, line: 1367, column: 28)
!1398 = !DILocation(line: 1368, column: 18, scope: !1396)
!1399 = !DILocation(line: 1368, column: 17, scope: !1397)
!1400 = !DILocation(line: 1370, column: 57, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !70, line: 1368, column: 63)
!1402 = !DILocation(line: 1369, column: 16, scope: !1401)
!1403 = !DILocation(line: 1372, column: 16, scope: !1401)
!1404 = !DILocation(line: 1375, column: 24, scope: !1397)
!1405 = !DILocation(line: 1376, column: 10, scope: !1397)
!1406 = !DILocation(line: 1379, column: 24, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1392, file: !70, line: 1376, column: 17)
!1408 = !DILocation(line: 1379, column: 29, scope: !1407)
!1409 = !DILocation(line: 1377, column: 13, scope: !1407)
!1410 = !DILocation(line: 1381, column: 13, scope: !1407)
!1411 = !DILocation(line: 1383, column: 7, scope: !1387)
!1412 = !DILocation(line: 1384, column: 32, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !70, line: 1384, column: 14)
!1414 = distinct !DILexicalBlock(scope: !1382, file: !70, line: 1383, column: 14)
!1415 = !DILocation(line: 1384, column: 15, scope: !1413)
!1416 = !DILocation(line: 1384, column: 14, scope: !1414)
!1417 = !DILocation(line: 1387, column: 24, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1413, file: !70, line: 1384, column: 42)
!1419 = !DILocation(line: 1385, column: 13, scope: !1418)
!1420 = !DILocation(line: 1389, column: 13, scope: !1418)
!1421 = !DILocation(line: 1397, column: 11, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1379, file: !70, line: 1397, column: 11)
!1423 = !DILocation(line: 1397, column: 11, scope: !1379)
!1424 = !DILocalVariable(name: "srcSize", scope: !1425, file: !70, line: 1404, type: !1426)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !70, line: 1397, column: 23)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !51, line: 172, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1428, line: 197, baseType: !768)
!1428 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line184")
!1429 = !DILocation(line: 1404, column: 16, scope: !1425)
!1430 = !DILocalVariable(name: "freeSpace", scope: !1425, file: !70, line: 1405, type: !1426)
!1431 = !DILocation(line: 1405, column: 16, scope: !1425)
!1432 = !DILocation(line: 1406, column: 35, scope: !1425)
!1433 = !DILocation(line: 1406, column: 20, scope: !1425)
!1434 = !DILocation(line: 1406, column: 18, scope: !1425)
!1435 = !DILocation(line: 1407, column: 40, scope: !1425)
!1436 = !DILocation(line: 1407, column: 22, scope: !1425)
!1437 = !DILocation(line: 1407, column: 20, scope: !1425)
!1438 = !DILocation(line: 1408, column: 14, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1425, file: !70, line: 1408, column: 14)
!1440 = !DILocation(line: 1408, column: 26, scope: !1439)
!1441 = !DILocation(line: 1408, column: 24, scope: !1439)
!1442 = !DILocation(line: 1408, column: 14, scope: !1425)
!1443 = !DILocalVariable(name: "spaceStr", scope: !1444, file: !70, line: 1409, type: !65)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !70, line: 1408, column: 35)
!1445 = !DILocation(line: 1409, column: 19, scope: !1444)
!1446 = !DILocation(line: 1409, column: 52, scope: !1444)
!1447 = !DILocation(line: 1409, column: 30, scope: !1444)
!1448 = !DILocation(line: 1413, column: 19, scope: !1444)
!1449 = !DILocation(line: 1410, column: 13, scope: !1444)
!1450 = !DILocation(line: 1414, column: 24, scope: !1444)
!1451 = !DILocation(line: 1414, column: 13, scope: !1444)
!1452 = !DILocation(line: 1415, column: 13, scope: !1444)
!1453 = !DILocation(line: 1417, column: 7, scope: !1425)
!1454 = !DILocation(line: 1420, column: 25, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1379, file: !70, line: 1420, column: 11)
!1456 = !DILocation(line: 1420, column: 34, scope: !1455)
!1457 = !DILocation(line: 1420, column: 43, scope: !1455)
!1458 = !DILocation(line: 1420, column: 11, scope: !1455)
!1459 = !DILocation(line: 1420, column: 11, scope: !1379)
!1460 = !DILocation(line: 1421, column: 14, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1455, file: !70, line: 1420, column: 66)
!1462 = !DILocation(line: 1423, column: 40, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1461, file: !70, line: 1423, column: 14)
!1464 = !DILocation(line: 1423, column: 15, scope: !1463)
!1465 = !DILocation(line: 1423, column: 14, scope: !1461)
!1466 = !DILocation(line: 1427, column: 24, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !70, line: 1423, column: 50)
!1468 = !DILocation(line: 1427, column: 33, scope: !1467)
!1469 = !DILocation(line: 1424, column: 13, scope: !1467)
!1470 = !DILocation(line: 1428, column: 10, scope: !1467)
!1471 = !DILocation(line: 1429, column: 7, scope: !1461)
!1472 = !DILocation(line: 1430, column: 14, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1455, file: !70, line: 1429, column: 14)
!1474 = !DILocation(line: 1434, column: 21, scope: !1473)
!1475 = !DILocation(line: 1431, column: 10, scope: !1473)
!1476 = !DILocation(line: 1435, column: 14, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !70, line: 1435, column: 14)
!1478 = !DILocation(line: 1435, column: 14, scope: !1473)
!1479 = !DILocation(line: 1440, column: 38, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !70, line: 1435, column: 26)
!1481 = !DILocation(line: 1440, column: 13, scope: !1480)
!1482 = !DILocation(line: 1441, column: 10, scope: !1480)
!1483 = !DILocation(line: 1445, column: 11, scope: !1332)
!1484 = !DILocation(line: 1445, column: 4, scope: !1332)
!1485 = !DILocation(line: 1446, column: 1, scope: !1332)
!1486 = distinct !DISubprogram(name: "File_CreateDirectoryHierarchy", scope: !70, file: !70, line: 1828, type: !1487, isLocal: false, isDefinition: true, scopeLine: 1830, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!87, !73, !707}
!1489 = !DILocalVariable(name: "pathName", arg: 1, scope: !1486, file: !70, line: 1828, type: !73)
!1490 = !DILocation(line: 1828, column: 43, scope: !1486)
!1491 = !DILocalVariable(name: "topmostCreated", arg: 2, scope: !1486, file: !70, line: 1829, type: !707)
!1492 = !DILocation(line: 1829, column: 38, scope: !1486)
!1493 = !DILocation(line: 1831, column: 43, scope: !1486)
!1494 = !DILocation(line: 1833, column: 43, scope: !1486)
!1495 = !DILocation(line: 1831, column: 11, scope: !1486)
!1496 = !DILocation(line: 1831, column: 4, scope: !1486)
!1497 = distinct !DISubprogram(name: "File_GetSizeEx", scope: !70, file: !70, line: 1564, type: !1498, isLocal: false, isDefinition: true, scopeLine: 1565, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1426, !73}
!1500 = !DILocalVariable(name: "pathName", arg: 1, scope: !1497, file: !70, line: 1564, type: !73)
!1501 = !DILocation(line: 1564, column: 28, scope: !1497)
!1502 = !DILocalVariable(name: "i", scope: !1497, file: !70, line: 1566, type: !47)
!1503 = !DILocation(line: 1566, column: 8, scope: !1497)
!1504 = !DILocalVariable(name: "numFiles", scope: !1497, file: !70, line: 1567, type: !47)
!1505 = !DILocation(line: 1567, column: 8, scope: !1497)
!1506 = !DILocalVariable(name: "totalSize", scope: !1497, file: !70, line: 1568, type: !1426)
!1507 = !DILocation(line: 1568, column: 10, scope: !1497)
!1508 = !DILocalVariable(name: "fileList", scope: !1497, file: !70, line: 1569, type: !707)
!1509 = !DILocation(line: 1569, column: 11, scope: !1497)
!1510 = !DILocation(line: 1571, column: 8, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1497, file: !70, line: 1571, column: 8)
!1512 = !DILocation(line: 1571, column: 17, scope: !1511)
!1513 = !DILocation(line: 1571, column: 8, scope: !1497)
!1514 = !DILocation(line: 1572, column: 7, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !70, line: 1571, column: 25)
!1516 = !DILocation(line: 1575, column: 26, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1497, file: !70, line: 1575, column: 8)
!1518 = !DILocation(line: 1575, column: 9, scope: !1517)
!1519 = !DILocation(line: 1575, column: 8, scope: !1497)
!1520 = !DILocation(line: 1576, column: 27, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !70, line: 1575, column: 37)
!1522 = !DILocation(line: 1576, column: 14, scope: !1521)
!1523 = !DILocation(line: 1576, column: 7, scope: !1521)
!1524 = !DILocation(line: 1579, column: 34, scope: !1497)
!1525 = !DILocation(line: 1579, column: 15, scope: !1497)
!1526 = !DILocation(line: 1579, column: 13, scope: !1497)
!1527 = !DILocation(line: 1580, column: 8, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1497, file: !70, line: 1580, column: 8)
!1529 = !DILocation(line: 1580, column: 17, scope: !1528)
!1530 = !DILocation(line: 1580, column: 8, scope: !1497)
!1531 = !DILocation(line: 1581, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !70, line: 1580, column: 24)
!1533 = !DILocation(line: 1584, column: 11, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1497, file: !70, line: 1584, column: 4)
!1535 = !DILocation(line: 1584, column: 9, scope: !1534)
!1536 = !DILocation(line: 1584, column: 16, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1538, file: !70, discriminator: 1)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !70, line: 1584, column: 4)
!1539 = !DILocation(line: 1584, column: 20, scope: !1537)
!1540 = !DILocation(line: 1584, column: 18, scope: !1537)
!1541 = !DILocation(line: 1584, column: 4, scope: !1537)
!1542 = !DILocalVariable(name: "fileName", scope: !1543, file: !70, line: 1585, type: !65)
!1543 = distinct !DILexicalBlock(scope: !1538, file: !70, line: 1584, column: 35)
!1544 = !DILocation(line: 1585, column: 13, scope: !1543)
!1545 = !DILocation(line: 1585, column: 38, scope: !1543)
!1546 = !DILocation(line: 1585, column: 57, scope: !1543)
!1547 = !DILocation(line: 1585, column: 48, scope: !1543)
!1548 = !DILocation(line: 1585, column: 24, scope: !1543)
!1549 = !DILocalVariable(name: "fileSize", scope: !1543, file: !70, line: 1586, type: !1426)
!1550 = !DILocation(line: 1586, column: 13, scope: !1543)
!1551 = !DILocation(line: 1586, column: 39, scope: !1543)
!1552 = !DILocation(line: 1586, column: 24, scope: !1543)
!1553 = !DILocation(line: 1588, column: 18, scope: !1543)
!1554 = !DILocation(line: 1588, column: 7, scope: !1543)
!1555 = !DILocation(line: 1590, column: 11, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1543, file: !70, line: 1590, column: 11)
!1557 = !DILocation(line: 1590, column: 20, scope: !1556)
!1558 = !DILocation(line: 1590, column: 11, scope: !1543)
!1559 = !DILocation(line: 1591, column: 23, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !70, line: 1590, column: 27)
!1561 = !DILocation(line: 1591, column: 20, scope: !1560)
!1562 = !DILocation(line: 1592, column: 7, scope: !1560)
!1563 = !DILocation(line: 1593, column: 4, scope: !1543)
!1564 = !DILocation(line: 1584, column: 31, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1538, file: !70, discriminator: 2)
!1566 = !DILocation(line: 1584, column: 4, scope: !1565)
!1567 = distinct !{!1567, !1568}
!1568 = !DILocation(line: 1584, column: 4, scope: !1497)
!1569 = !DILocation(line: 1595, column: 24, scope: !1497)
!1570 = !DILocation(line: 1595, column: 34, scope: !1497)
!1571 = !DILocation(line: 1595, column: 4, scope: !1497)
!1572 = !DILocation(line: 1597, column: 11, scope: !1497)
!1573 = !DILocation(line: 1597, column: 4, scope: !1497)
!1574 = !DILocation(line: 1598, column: 1, scope: !1497)
!1575 = distinct !DISubprogram(name: "File_DeleteDirectoryTree", scope: !70, file: !70, line: 2013, type: !85, isLocal: false, isDefinition: true, scopeLine: 2014, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1576 = !DILocalVariable(name: "pathName", arg: 1, scope: !1575, file: !70, line: 2013, type: !73)
!1577 = !DILocation(line: 2013, column: 38, scope: !1575)
!1578 = !DILocation(line: 2015, column: 35, scope: !1575)
!1579 = !DILocation(line: 2015, column: 11, scope: !1575)
!1580 = !DILocation(line: 2015, column: 4, scope: !1575)
!1581 = distinct !DISubprogram(name: "File_GetModTimeString", scope: !70, file: !70, line: 1469, type: !1582, isLocal: false, isDefinition: true, scopeLine: 1470, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!65, !73}
!1584 = !DILocalVariable(name: "pathName", arg: 1, scope: !1581, file: !70, line: 1469, type: !73)
!1585 = !DILocation(line: 1469, column: 35, scope: !1581)
!1586 = !DILocalVariable(name: "modTime", scope: !1581, file: !70, line: 1471, type: !1426)
!1587 = !DILocation(line: 1471, column: 10, scope: !1581)
!1588 = !DILocation(line: 1473, column: 30, scope: !1581)
!1589 = !DILocation(line: 1473, column: 14, scope: !1581)
!1590 = !DILocation(line: 1473, column: 12, scope: !1581)
!1591 = !DILocation(line: 1475, column: 12, scope: !1581)
!1592 = !DILocation(line: 1475, column: 20, scope: !1581)
!1593 = !DILocation(line: 1475, column: 11, scope: !1581)
!1594 = !DILocation(line: 1475, column: 11, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1581, file: !70, discriminator: 1)
!1596 = !DILocation(line: 1475, column: 58, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1581, file: !70, discriminator: 2)
!1598 = !DILocation(line: 1475, column: 35, scope: !1597)
!1599 = !DILocation(line: 1475, column: 11, scope: !1597)
!1600 = !DILocation(line: 1475, column: 11, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1581, file: !70, discriminator: 3)
!1602 = !DILocation(line: 1475, column: 4, scope: !1601)
!1603 = distinct !DISubprogram(name: "File_GetSize", scope: !70, file: !70, line: 1496, type: !1498, isLocal: false, isDefinition: true, scopeLine: 1497, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1604 = !DILocalVariable(name: "pathName", arg: 1, scope: !1603, file: !70, line: 1496, type: !73)
!1605 = !DILocation(line: 1496, column: 26, scope: !1603)
!1606 = !DILocalVariable(name: "ret", scope: !1603, file: !70, line: 1498, type: !1426)
!1607 = !DILocation(line: 1498, column: 10, scope: !1603)
!1608 = !DILocation(line: 1500, column: 8, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1603, file: !70, line: 1500, column: 8)
!1610 = !DILocation(line: 1500, column: 17, scope: !1609)
!1611 = !DILocation(line: 1500, column: 8, scope: !1603)
!1612 = !DILocation(line: 1501, column: 11, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !70, line: 1500, column: 25)
!1614 = !DILocation(line: 1502, column: 4, scope: !1613)
!1615 = !DILocalVariable(name: "fd", scope: !1616, file: !70, line: 1503, type: !795)
!1616 = distinct !DILexicalBlock(scope: !1609, file: !70, line: 1502, column: 11)
!1617 = !DILocation(line: 1503, column: 24, scope: !1616)
!1618 = !DILocalVariable(name: "res", scope: !1616, file: !70, line: 1504, type: !117)
!1619 = !DILocation(line: 1504, column: 20, scope: !1616)
!1620 = !DILocation(line: 1506, column: 7, scope: !1616)
!1621 = !DILocation(line: 1507, column: 30, scope: !1616)
!1622 = !DILocation(line: 1507, column: 13, scope: !1616)
!1623 = !DILocation(line: 1507, column: 11, scope: !1616)
!1624 = !DILocation(line: 1509, column: 28, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1616, file: !70, line: 1509, column: 11)
!1626 = !DILocation(line: 1509, column: 11, scope: !1625)
!1627 = !DILocation(line: 1509, column: 11, scope: !1616)
!1628 = !DILocation(line: 1510, column: 16, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1625, file: !70, line: 1509, column: 34)
!1630 = !DILocation(line: 1510, column: 14, scope: !1629)
!1631 = !DILocation(line: 1511, column: 10, scope: !1629)
!1632 = !DILocation(line: 1512, column: 7, scope: !1629)
!1633 = !DILocation(line: 1513, column: 14, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1625, file: !70, line: 1512, column: 14)
!1635 = !DILocation(line: 1517, column: 11, scope: !1603)
!1636 = !DILocation(line: 1517, column: 4, scope: !1603)
!1637 = distinct !DISubprogram(name: "File_SupportsLargeFiles", scope: !70, file: !70, line: 1540, type: !85, isLocal: false, isDefinition: true, scopeLine: 1541, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1638 = !DILocalVariable(name: "pathName", arg: 1, scope: !1637, file: !70, line: 1540, type: !73)
!1639 = !DILocation(line: 1540, column: 37, scope: !1637)
!1640 = !DILocation(line: 1542, column: 33, scope: !1637)
!1641 = !DILocation(line: 1542, column: 11, scope: !1637)
!1642 = !DILocation(line: 1542, column: 4, scope: !1637)
!1643 = distinct !DISubprogram(name: "File_GetSizeByPath", scope: !70, file: !70, line: 1618, type: !1498, isLocal: false, isDefinition: true, scopeLine: 1619, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1644 = !DILocalVariable(name: "pathName", arg: 1, scope: !1643, file: !70, line: 1618, type: !73)
!1645 = !DILocation(line: 1618, column: 32, scope: !1643)
!1646 = !DILocation(line: 1620, column: 12, scope: !1643)
!1647 = !DILocation(line: 1620, column: 21, scope: !1643)
!1648 = !DILocation(line: 1620, column: 11, scope: !1643)
!1649 = !DILocation(line: 1620, column: 11, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1643, file: !70, discriminator: 1)
!1651 = !DILocation(line: 1620, column: 57, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1643, file: !70, discriminator: 2)
!1653 = !DILocation(line: 1620, column: 36, scope: !1652)
!1654 = !DILocation(line: 1620, column: 11, scope: !1652)
!1655 = !DILocation(line: 1620, column: 11, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1643, file: !70, discriminator: 3)
!1657 = !DILocation(line: 1620, column: 4, scope: !1656)
!1658 = distinct !DISubprogram(name: "File_CreateDirectoryHierarchyEx", scope: !70, file: !70, line: 1699, type: !1659, isLocal: false, isDefinition: true, scopeLine: 1702, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!87, !73, !47, !707}
!1661 = !DILocalVariable(name: "pathName", arg: 1, scope: !1658, file: !70, line: 1699, type: !73)
!1662 = !DILocation(line: 1699, column: 45, scope: !1658)
!1663 = !DILocalVariable(name: "mode", arg: 2, scope: !1658, file: !70, line: 1700, type: !47)
!1664 = !DILocation(line: 1700, column: 37, scope: !1658)
!1665 = !DILocalVariable(name: "topmostCreated", arg: 3, scope: !1658, file: !70, line: 1701, type: !707)
!1666 = !DILocation(line: 1701, column: 40, scope: !1658)
!1667 = !DILocalVariable(name: "volume", scope: !1658, file: !70, line: 1703, type: !65)
!1668 = !DILocation(line: 1703, column: 10, scope: !1658)
!1669 = !DILocalVariable(name: "index", scope: !1658, file: !70, line: 1704, type: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnicodeIndex", file: !42, line: 41, baseType: !764)
!1671 = !DILocation(line: 1704, column: 17, scope: !1658)
!1672 = !DILocalVariable(name: "length", scope: !1658, file: !70, line: 1705, type: !1670)
!1673 = !DILocation(line: 1705, column: 17, scope: !1658)
!1674 = !DILocation(line: 1707, column: 8, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1658, file: !70, line: 1707, column: 8)
!1676 = !DILocation(line: 1707, column: 23, scope: !1675)
!1677 = !DILocation(line: 1707, column: 8, scope: !1658)
!1678 = !DILocation(line: 1708, column: 8, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !70, line: 1707, column: 31)
!1680 = !DILocation(line: 1708, column: 23, scope: !1679)
!1681 = !DILocation(line: 1709, column: 4, scope: !1679)
!1682 = !DILocation(line: 1711, column: 8, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1658, file: !70, line: 1711, column: 8)
!1684 = !DILocation(line: 1711, column: 17, scope: !1683)
!1685 = !DILocation(line: 1711, column: 8, scope: !1658)
!1686 = !DILocation(line: 1712, column: 7, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1683, file: !70, line: 1711, column: 25)
!1688 = !DILocation(line: 1715, column: 40, scope: !1658)
!1689 = !DILocation(line: 1715, column: 13, scope: !1658)
!1690 = !DILocation(line: 1715, column: 11, scope: !1658)
!1691 = !DILocation(line: 1717, column: 8, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1658, file: !70, line: 1717, column: 8)
!1693 = !DILocation(line: 1717, column: 15, scope: !1692)
!1694 = !DILocation(line: 1717, column: 8, scope: !1658)
!1695 = !DILocation(line: 1718, column: 7, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1692, file: !70, line: 1717, column: 21)
!1697 = !DILocation(line: 1725, column: 19, scope: !1658)
!1698 = !DILocation(line: 1725, column: 4, scope: !1658)
!1699 = !DILocation(line: 1727, column: 39, scope: !1658)
!1700 = !DILocation(line: 1727, column: 12, scope: !1658)
!1701 = !DILocation(line: 1727, column: 10, scope: !1658)
!1702 = !DILocation(line: 1729, column: 15, scope: !1658)
!1703 = !DILocation(line: 1729, column: 4, scope: !1658)
!1704 = !DILocation(line: 1731, column: 8, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1658, file: !70, line: 1731, column: 8)
!1706 = !DILocation(line: 1731, column: 17, scope: !1705)
!1707 = !DILocation(line: 1731, column: 14, scope: !1705)
!1708 = !DILocation(line: 1731, column: 8, scope: !1658)
!1709 = !DILocation(line: 1732, column: 31, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1705, file: !70, line: 1731, column: 25)
!1711 = !DILocation(line: 1732, column: 14, scope: !1710)
!1712 = !DILocation(line: 1732, column: 7, scope: !1710)
!1713 = !DILocation(line: 1739, column: 4, scope: !1658)
!1714 = !DILocalVariable(name: "err", scope: !1715, file: !70, line: 1740, type: !47)
!1715 = distinct !DILexicalBlock(scope: !1658, file: !70, line: 1739, column: 14)
!1716 = !DILocation(line: 1740, column: 11, scope: !1715)
!1717 = !DILocalVariable(name: "temp", scope: !1715, file: !70, line: 1741, type: !65)
!1718 = !DILocation(line: 1741, column: 13, scope: !1715)
!1719 = !DILocation(line: 1743, column: 35, scope: !1715)
!1720 = !DILocation(line: 1743, column: 45, scope: !1715)
!1721 = !DILocation(line: 1743, column: 51, scope: !1715)
!1722 = !DILocation(line: 1743, column: 15, scope: !1715)
!1723 = !DILocation(line: 1743, column: 13, scope: !1715)
!1724 = !DILocation(line: 1745, column: 29, scope: !1715)
!1725 = !DILocation(line: 1747, column: 30, scope: !1715)
!1726 = !DILocation(line: 1747, column: 36, scope: !1715)
!1727 = !DILocation(line: 1747, column: 29, scope: !1715)
!1728 = !DILocation(line: 1747, column: 29, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1715, file: !70, discriminator: 1)
!1730 = !DILocation(line: 1747, column: 71, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1715, file: !70, discriminator: 2)
!1732 = !DILocation(line: 1747, column: 29, scope: !1731)
!1733 = !DILocation(line: 1747, column: 29, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1715, file: !70, discriminator: 3)
!1735 = !DILocation(line: 1745, column: 14, scope: !1729)
!1736 = !DILocation(line: 1745, column: 12, scope: !1729)
!1737 = !DILocation(line: 1755, column: 33, scope: !1715)
!1738 = !DILocation(line: 1755, column: 39, scope: !1715)
!1739 = !DILocation(line: 1755, column: 13, scope: !1715)
!1740 = !DILocation(line: 1755, column: 11, scope: !1715)
!1741 = !DILocation(line: 1757, column: 11, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1715, file: !70, line: 1757, column: 11)
!1743 = !DILocation(line: 1757, column: 15, scope: !1742)
!1744 = !DILocation(line: 1757, column: 11, scope: !1715)
!1745 = !DILocation(line: 1758, column: 14, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !70, line: 1758, column: 14)
!1747 = distinct !DILexicalBlock(scope: !1742, file: !70, line: 1757, column: 21)
!1748 = !DILocation(line: 1758, column: 29, scope: !1746)
!1749 = !DILocation(line: 1758, column: 36, scope: !1746)
!1750 = !DILocation(line: 1758, column: 40, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1746, file: !70, discriminator: 1)
!1752 = !DILocation(line: 1758, column: 39, scope: !1751)
!1753 = !DILocation(line: 1758, column: 55, scope: !1751)
!1754 = !DILocation(line: 1758, column: 14, scope: !1751)
!1755 = !DILocation(line: 1759, column: 31, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1746, file: !70, line: 1758, column: 64)
!1757 = !DILocation(line: 1759, column: 14, scope: !1756)
!1758 = !DILocation(line: 1759, column: 29, scope: !1756)
!1759 = !DILocation(line: 1760, column: 18, scope: !1756)
!1760 = !DILocation(line: 1761, column: 10, scope: !1756)
!1761 = !DILocation(line: 1762, column: 7, scope: !1747)
!1762 = !DILocation(line: 1763, column: 14, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !70, line: 1763, column: 14)
!1764 = distinct !DILexicalBlock(scope: !1742, file: !70, line: 1762, column: 14)
!1765 = !DILocation(line: 1763, column: 18, scope: !1763)
!1766 = !DILocation(line: 1763, column: 14, scope: !1764)
!1767 = !DILocalVariable(name: "fileData", scope: !1768, file: !70, line: 1764, type: !153)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !70, line: 1763, column: 28)
!1769 = !DILocation(line: 1764, column: 22, scope: !1768)
!1770 = !DILocation(line: 1766, column: 34, scope: !1768)
!1771 = !DILocation(line: 1766, column: 19, scope: !1768)
!1772 = !DILocation(line: 1766, column: 17, scope: !1768)
!1773 = !DILocation(line: 1768, column: 17, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1768, file: !70, line: 1768, column: 17)
!1775 = !DILocation(line: 1768, column: 21, scope: !1774)
!1776 = !DILocation(line: 1768, column: 17, scope: !1768)
!1777 = !DILocation(line: 1769, column: 29, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !70, line: 1769, column: 20)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !70, line: 1768, column: 27)
!1780 = !DILocation(line: 1769, column: 38, scope: !1778)
!1781 = !DILocation(line: 1769, column: 20, scope: !1779)
!1782 = !DILocation(line: 1770, column: 23, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1778, file: !70, line: 1769, column: 44)
!1784 = !DILocation(line: 1771, column: 26, scope: !1783)
!1785 = !DILocation(line: 1771, column: 20, scope: !1783)
!1786 = !DILocation(line: 1771, column: 24, scope: !1783)
!1787 = !DILocation(line: 1776, column: 16, scope: !1783)
!1788 = !DILocation(line: 1777, column: 13, scope: !1779)
!1789 = !DILocation(line: 1778, column: 10, scope: !1768)
!1790 = !DILocation(line: 1781, column: 11, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1715, file: !70, line: 1781, column: 11)
!1792 = !DILocation(line: 1781, column: 15, scope: !1791)
!1793 = !DILocation(line: 1781, column: 11, scope: !1715)
!1794 = !DILocation(line: 1783, column: 28, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !70, line: 1781, column: 21)
!1796 = !DILocation(line: 1783, column: 34, scope: !1795)
!1797 = !DILocation(line: 1782, column: 10, scope: !1795)
!1798 = !DILocation(line: 1784, column: 7, scope: !1795)
!1799 = !DILocation(line: 1786, column: 18, scope: !1715)
!1800 = !DILocation(line: 1786, column: 7, scope: !1715)
!1801 = !DILocation(line: 1788, column: 11, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1715, file: !70, line: 1788, column: 11)
!1803 = !DILocation(line: 1788, column: 15, scope: !1802)
!1804 = !DILocation(line: 1788, column: 11, scope: !1715)
!1805 = !DILocation(line: 1789, column: 10, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !70, line: 1788, column: 21)
!1807 = !DILocation(line: 1792, column: 11, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1715, file: !70, line: 1792, column: 11)
!1809 = !DILocation(line: 1792, column: 17, scope: !1808)
!1810 = !DILocation(line: 1792, column: 11, scope: !1715)
!1811 = !DILocation(line: 1793, column: 10, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !70, line: 1792, column: 45)
!1813 = !DILocation(line: 1739, column: 4, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1658, file: !70, discriminator: 1)
!1815 = distinct !{!1815, !1713}
!1816 = !DILocation(line: 1797, column: 4, scope: !1658)
!1817 = !DILocation(line: 1798, column: 1, scope: !1658)
!1818 = distinct !DISubprogram(name: "FileFirstSlashIndex", scope: !70, file: !70, line: 1642, type: !1819, isLocal: true, isDefinition: true, scopeLine: 1644, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!1670, !73, !1670}
!1821 = !DILocalVariable(name: "pathName", arg: 1, scope: !1818, file: !70, line: 1642, type: !73)
!1822 = !DILocation(line: 1642, column: 33, scope: !1818)
!1823 = !DILocalVariable(name: "startIndex", arg: 2, scope: !1818, file: !70, line: 1643, type: !1670)
!1824 = !DILocation(line: 1643, column: 34, scope: !1818)
!1825 = !DILocalVariable(name: "firstFS", scope: !1818, file: !70, line: 1645, type: !1670)
!1826 = !DILocation(line: 1645, column: 17, scope: !1818)
!1827 = !DILocation(line: 1652, column: 40, scope: !1818)
!1828 = !DILocation(line: 1652, column: 50, scope: !1818)
!1829 = !DILocation(line: 1652, column: 14, scope: !1818)
!1830 = !DILocation(line: 1652, column: 12, scope: !1818)
!1831 = !DILocation(line: 1666, column: 11, scope: !1818)
!1832 = !DILocation(line: 1666, column: 4, scope: !1818)
!1833 = distinct !DISubprogram(name: "File_DeleteDirectoryContent", scope: !70, file: !70, line: 1987, type: !85, isLocal: false, isDefinition: true, scopeLine: 1988, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1834 = !DILocalVariable(name: "pathName", arg: 1, scope: !1833, file: !70, line: 1987, type: !73)
!1835 = !DILocation(line: 1987, column: 41, scope: !1833)
!1836 = !DILocation(line: 1989, column: 35, scope: !1833)
!1837 = !DILocation(line: 1989, column: 11, scope: !1833)
!1838 = !DILocation(line: 1989, column: 4, scope: !1833)
!1839 = distinct !DISubprogram(name: "FileDeleteDirectoryTree", scope: !70, file: !70, line: 1857, type: !1840, isLocal: true, isDefinition: true, scopeLine: 1859, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!87, !73, !87}
!1842 = !DILocalVariable(name: "pathName", arg: 1, scope: !1839, file: !70, line: 1857, type: !73)
!1843 = !DILocation(line: 1857, column: 37, scope: !1839)
!1844 = !DILocalVariable(name: "contentOnly", arg: 2, scope: !1839, file: !70, line: 1858, type: !87)
!1845 = !DILocation(line: 1858, column: 30, scope: !1839)
!1846 = !DILocalVariable(name: "i", scope: !1839, file: !70, line: 1860, type: !47)
!1847 = !DILocation(line: 1860, column: 8, scope: !1839)
!1848 = !DILocalVariable(name: "numFiles", scope: !1839, file: !70, line: 1861, type: !47)
!1849 = !DILocation(line: 1861, column: 8, scope: !1839)
!1850 = !DILocalVariable(name: "err", scope: !1839, file: !70, line: 1862, type: !47)
!1851 = !DILocation(line: 1862, column: 8, scope: !1839)
!1852 = !DILocalVariable(name: "base", scope: !1839, file: !70, line: 1863, type: !65)
!1853 = !DILocation(line: 1863, column: 10, scope: !1839)
!1854 = !DILocalVariable(name: "fileList", scope: !1839, file: !70, line: 1865, type: !707)
!1855 = !DILocation(line: 1865, column: 11, scope: !1839)
!1856 = !DILocalVariable(name: "sawFileError", scope: !1839, file: !70, line: 1866, type: !87)
!1857 = !DILocation(line: 1866, column: 9, scope: !1839)
!1858 = !DILocation(line: 1868, column: 25, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1839, file: !70, line: 1868, column: 8)
!1860 = !DILocation(line: 1868, column: 8, scope: !1859)
!1861 = !DILocation(line: 1868, column: 40, scope: !1859)
!1862 = !DILocation(line: 1868, column: 8, scope: !1839)
!1863 = !DILocation(line: 1873, column: 12, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !70, line: 1873, column: 10)
!1865 = distinct !DILexicalBlock(scope: !1859, file: !70, line: 1868, column: 46)
!1866 = !DILocation(line: 1873, column: 11, scope: !1864)
!1867 = !DILocation(line: 1873, column: 16, scope: !1864)
!1868 = !DILocation(line: 1873, column: 10, scope: !1865)
!1869 = !DILocation(line: 1875, column: 31, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1864, file: !70, line: 1873, column: 27)
!1871 = !DILocation(line: 1875, column: 16, scope: !1870)
!1872 = !DILocation(line: 1875, column: 14, scope: !1870)
!1873 = !DILocation(line: 1876, column: 7, scope: !1870)
!1874 = !DILocation(line: 1878, column: 17, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1864, file: !70, line: 1876, column: 14)
!1876 = !DILocation(line: 1878, column: 16, scope: !1875)
!1877 = !DILocation(line: 1878, column: 14, scope: !1875)
!1878 = !DILocation(line: 1880, column: 4, scope: !1865)
!1879 = !DILocation(line: 1882, column: 12, scope: !1839)
!1880 = !DILocation(line: 1882, column: 4, scope: !1839)
!1881 = !DILocation(line: 1886, column: 10, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1839, file: !70, line: 1882, column: 17)
!1883 = !DILocation(line: 1888, column: 10, scope: !1882)
!1884 = !DILocation(line: 1892, column: 34, scope: !1839)
!1885 = !DILocation(line: 1892, column: 15, scope: !1839)
!1886 = !DILocation(line: 1892, column: 13, scope: !1839)
!1887 = !DILocation(line: 1894, column: 8, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1839, file: !70, line: 1894, column: 8)
!1889 = !DILocation(line: 1894, column: 17, scope: !1888)
!1890 = !DILocation(line: 1894, column: 8, scope: !1839)
!1891 = !DILocation(line: 1895, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !70, line: 1894, column: 24)
!1893 = !DILocation(line: 1899, column: 26, scope: !1839)
!1894 = !DILocation(line: 1899, column: 11, scope: !1839)
!1895 = !DILocation(line: 1899, column: 9, scope: !1839)
!1896 = !DILocation(line: 1901, column: 11, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1839, file: !70, line: 1901, column: 4)
!1898 = !DILocation(line: 1901, column: 9, scope: !1897)
!1899 = !DILocation(line: 1901, column: 16, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1901, file: !70, discriminator: 1)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !70, line: 1901, column: 4)
!1902 = !DILocation(line: 1901, column: 20, scope: !1900)
!1903 = !DILocation(line: 1901, column: 18, scope: !1900)
!1904 = !DILocation(line: 1901, column: 4, scope: !1900)
!1905 = !DILocalVariable(name: "curPath", scope: !1906, file: !70, line: 1902, type: !65)
!1906 = distinct !DILexicalBlock(scope: !1901, file: !70, line: 1901, column: 35)
!1907 = !DILocation(line: 1902, column: 13, scope: !1906)
!1908 = !DILocalVariable(name: "statbuf", scope: !1906, file: !70, line: 1903, type: !976)
!1909 = !DILocation(line: 1903, column: 19, scope: !1906)
!1910 = !DILocation(line: 1905, column: 32, scope: !1906)
!1911 = !DILocation(line: 1905, column: 47, scope: !1906)
!1912 = !DILocation(line: 1905, column: 38, scope: !1906)
!1913 = !DILocation(line: 1905, column: 17, scope: !1906)
!1914 = !DILocation(line: 1905, column: 15, scope: !1906)
!1915 = !DILocation(line: 1907, column: 23, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1906, file: !70, line: 1907, column: 11)
!1917 = !DILocation(line: 1907, column: 11, scope: !1916)
!1918 = !DILocation(line: 1907, column: 42, scope: !1916)
!1919 = !DILocation(line: 1907, column: 11, scope: !1906)
!1920 = !DILocation(line: 1908, column: 26, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1916, file: !70, line: 1907, column: 48)
!1922 = !DILocation(line: 1908, column: 34, scope: !1921)
!1923 = !DILocation(line: 1908, column: 10, scope: !1921)
!1924 = !DILocation(line: 1911, column: 42, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !70, line: 1911, column: 17)
!1926 = distinct !DILexicalBlock(scope: !1921, file: !70, line: 1908, column: 43)
!1927 = !DILocation(line: 1911, column: 18, scope: !1925)
!1928 = !DILocation(line: 1911, column: 17, scope: !1926)
!1929 = !DILocation(line: 1912, column: 29, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1925, file: !70, line: 1911, column: 55)
!1931 = !DILocation(line: 1913, column: 13, scope: !1930)
!1932 = !DILocation(line: 1914, column: 13, scope: !1926)
!1933 = !DILocation(line: 1919, column: 30, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1926, file: !70, line: 1919, column: 17)
!1935 = !DILocation(line: 1919, column: 17, scope: !1934)
!1936 = !DILocation(line: 1919, column: 42, scope: !1934)
!1937 = !DILocation(line: 1919, column: 17, scope: !1926)
!1938 = !DILocation(line: 1920, column: 29, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !70, line: 1919, column: 48)
!1940 = !DILocation(line: 1921, column: 13, scope: !1939)
!1941 = !DILocation(line: 1922, column: 13, scope: !1926)
!1942 = !DILocation(line: 1926, column: 30, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1926, file: !70, line: 1926, column: 17)
!1944 = !DILocation(line: 1926, column: 17, scope: !1943)
!1945 = !DILocation(line: 1926, column: 42, scope: !1943)
!1946 = !DILocation(line: 1926, column: 17, scope: !1926)
!1947 = !DILocation(line: 1936, column: 29, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1943, file: !70, line: 1926, column: 48)
!1949 = !DILocation(line: 1938, column: 13, scope: !1948)
!1950 = !DILocation(line: 1939, column: 13, scope: !1926)
!1951 = !DILocation(line: 1941, column: 7, scope: !1921)
!1952 = !DILocation(line: 1942, column: 23, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1916, file: !70, line: 1941, column: 14)
!1954 = !DILocation(line: 1945, column: 18, scope: !1906)
!1955 = !DILocation(line: 1945, column: 7, scope: !1906)
!1956 = !DILocation(line: 1946, column: 4, scope: !1906)
!1957 = !DILocation(line: 1901, column: 31, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1901, file: !70, discriminator: 2)
!1959 = !DILocation(line: 1901, column: 4, scope: !1958)
!1960 = distinct !{!1960, !1961}
!1961 = !DILocation(line: 1901, column: 4, scope: !1839)
!1962 = !DILocation(line: 1948, column: 15, scope: !1839)
!1963 = !DILocation(line: 1948, column: 4, scope: !1839)
!1964 = !DILocation(line: 1950, column: 9, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1839, file: !70, line: 1950, column: 8)
!1966 = !DILocation(line: 1950, column: 8, scope: !1839)
!1967 = !DILocation(line: 1955, column: 12, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !70, line: 1955, column: 11)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !70, line: 1950, column: 22)
!1970 = !DILocation(line: 1955, column: 25, scope: !1968)
!1971 = !DILocation(line: 1955, column: 55, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1968, file: !70, discriminator: 1)
!1973 = !DILocation(line: 1955, column: 29, scope: !1972)
!1974 = !DILocation(line: 1955, column: 11, scope: !1972)
!1975 = !DILocation(line: 1956, column: 23, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1968, file: !70, line: 1955, column: 66)
!1977 = !DILocation(line: 1957, column: 7, scope: !1976)
!1978 = !DILocation(line: 1958, column: 4, scope: !1969)
!1979 = !DILocation(line: 1960, column: 24, scope: !1839)
!1980 = !DILocation(line: 1960, column: 34, scope: !1839)
!1981 = !DILocation(line: 1960, column: 4, scope: !1839)
!1982 = !DILocation(line: 1962, column: 12, scope: !1839)
!1983 = !DILocation(line: 1962, column: 11, scope: !1839)
!1984 = !DILocation(line: 1962, column: 4, scope: !1839)
!1985 = !DILocation(line: 1963, column: 1, scope: !1839)
!1986 = distinct !DISubprogram(name: "File_FindFileInSearchPath", scope: !70, file: !70, line: 2038, type: !1987, isLocal: false, isDefinition: true, scopeLine: 2042, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!87, !73, !73, !73, !707}
!1989 = !DILocalVariable(name: "fileIn", arg: 1, scope: !1986, file: !70, line: 2038, type: !73)
!1990 = !DILocation(line: 2038, column: 39, scope: !1986)
!1991 = !DILocalVariable(name: "searchPath", arg: 2, scope: !1986, file: !70, line: 2039, type: !73)
!1992 = !DILocation(line: 2039, column: 39, scope: !1986)
!1993 = !DILocalVariable(name: "cwd", arg: 3, scope: !1986, file: !70, line: 2040, type: !73)
!1994 = !DILocation(line: 2040, column: 39, scope: !1986)
!1995 = !DILocalVariable(name: "result", arg: 4, scope: !1986, file: !70, line: 2041, type: !707)
!1996 = !DILocation(line: 2041, column: 34, scope: !1986)
!1997 = !DILocalVariable(name: "cur", scope: !1986, file: !70, line: 2043, type: !65)
!1998 = !DILocation(line: 2043, column: 10, scope: !1986)
!1999 = !DILocalVariable(name: "tok", scope: !1986, file: !70, line: 2044, type: !65)
!2000 = !DILocation(line: 2044, column: 10, scope: !1986)
!2001 = !DILocalVariable(name: "found", scope: !1986, file: !70, line: 2045, type: !87)
!2002 = !DILocation(line: 2045, column: 9, scope: !1986)
!2003 = !DILocalVariable(name: "full", scope: !1986, file: !70, line: 2046, type: !87)
!2004 = !DILocation(line: 2046, column: 9, scope: !1986)
!2005 = !DILocalVariable(name: "saveptr", scope: !1986, file: !70, line: 2047, type: !65)
!2006 = !DILocation(line: 2047, column: 10, scope: !1986)
!2007 = !DILocalVariable(name: "sp", scope: !1986, file: !70, line: 2048, type: !65)
!2008 = !DILocation(line: 2048, column: 10, scope: !1986)
!2009 = !DILocalVariable(name: "dir", scope: !1986, file: !70, line: 2049, type: !65)
!2010 = !DILocation(line: 2049, column: 10, scope: !1986)
!2011 = !DILocalVariable(name: "file", scope: !1986, file: !70, line: 2050, type: !65)
!2012 = !DILocation(line: 2050, column: 10, scope: !1986)
!2013 = !DILocation(line: 2060, column: 27, scope: !1986)
!2014 = !DILocation(line: 2060, column: 11, scope: !1986)
!2015 = !DILocation(line: 2060, column: 9, scope: !1986)
!2016 = !DILocation(line: 2061, column: 8, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1986, file: !70, line: 2061, column: 8)
!2018 = !DILocation(line: 2061, column: 8, scope: !1986)
!2019 = !DILocation(line: 2062, column: 30, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2017, file: !70, line: 2061, column: 14)
!2021 = !DILocation(line: 2062, column: 13, scope: !2020)
!2022 = !DILocation(line: 2062, column: 11, scope: !2020)
!2023 = !DILocation(line: 2063, column: 4, scope: !2020)
!2024 = !DILocation(line: 2064, column: 45, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2017, file: !70, line: 2063, column: 11)
!2026 = !DILocation(line: 2064, column: 55, scope: !2025)
!2027 = !DILocation(line: 2064, column: 13, scope: !2025)
!2028 = !DILocation(line: 2064, column: 11, scope: !2025)
!2029 = !DILocation(line: 2067, column: 25, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1986, file: !70, line: 2067, column: 8)
!2031 = !DILocation(line: 2067, column: 8, scope: !2030)
!2032 = !DILocation(line: 2067, column: 35, scope: !2030)
!2033 = !DILocation(line: 2067, column: 8, scope: !1986)
!2034 = !DILocation(line: 2068, column: 7, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2030, file: !70, line: 2067, column: 41)
!2036 = !DILocation(line: 2070, column: 9, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1986, file: !70, line: 2070, column: 7)
!2038 = !DILocation(line: 2070, column: 8, scope: !2037)
!2039 = !DILocation(line: 2070, column: 13, scope: !2037)
!2040 = !DILocation(line: 2070, column: 23, scope: !2037)
!2041 = !DILocation(line: 2070, column: 41, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2037, file: !70, discriminator: 1)
!2043 = !DILocation(line: 2070, column: 26, scope: !2042)
!2044 = !DILocation(line: 2070, column: 52, scope: !2042)
!2045 = !DILocation(line: 2070, column: 7, scope: !2042)
!2046 = !DILocation(line: 2071, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2037, file: !70, line: 2070, column: 58)
!2048 = !DILocation(line: 2074, column: 15, scope: !1986)
!2049 = !DILocation(line: 2074, column: 4, scope: !1986)
!2050 = !DILocation(line: 2075, column: 8, scope: !1986)
!2051 = !DILocation(line: 2077, column: 8, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1986, file: !70, line: 2077, column: 8)
!2053 = !DILocation(line: 2077, column: 8, scope: !1986)
!2054 = !DILocation(line: 2078, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2052, file: !70, line: 2077, column: 14)
!2056 = !DILocation(line: 2081, column: 21, scope: !1986)
!2057 = !DILocation(line: 2081, column: 4, scope: !1986)
!2058 = !DILocation(line: 2086, column: 35, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1986, file: !70, line: 2086, column: 8)
!2060 = !DILocation(line: 2086, column: 8, scope: !2059)
!2061 = !DILocation(line: 2086, column: 40, scope: !2059)
!2062 = !DILocation(line: 2086, column: 8, scope: !1986)
!2063 = !DILocation(line: 2087, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2059, file: !70, line: 2086, column: 46)
!2065 = !DILocation(line: 2095, column: 26, scope: !1986)
!2066 = !DILocation(line: 2095, column: 9, scope: !1986)
!2067 = !DILocation(line: 2095, column: 7, scope: !1986)
!2068 = !DILocation(line: 2096, column: 19, scope: !1986)
!2069 = !DILocation(line: 2096, column: 10, scope: !1986)
!2070 = !DILocation(line: 2096, column: 8, scope: !1986)
!2071 = !DILocation(line: 2098, column: 4, scope: !1986)
!2072 = !DILocation(line: 2098, column: 11, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !1986, file: !70, discriminator: 1)
!2074 = !DILocation(line: 2098, column: 4, scope: !2073)
!2075 = !DILocation(line: 2099, column: 27, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !70, line: 2099, column: 11)
!2077 = distinct !DILexicalBlock(scope: !1986, file: !70, line: 2098, column: 16)
!2078 = !DILocation(line: 2099, column: 11, scope: !2076)
!2079 = !DILocation(line: 2099, column: 11, scope: !2077)
!2080 = !DILocation(line: 2101, column: 48, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2076, file: !70, line: 2099, column: 33)
!2082 = !DILocation(line: 2101, column: 58, scope: !2081)
!2083 = !DILocation(line: 2101, column: 16, scope: !2081)
!2084 = !DILocation(line: 2101, column: 14, scope: !2081)
!2085 = !DILocation(line: 2102, column: 7, scope: !2081)
!2086 = !DILocation(line: 2104, column: 25, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !70, line: 2104, column: 14)
!2088 = distinct !DILexicalBlock(scope: !2076, file: !70, line: 2102, column: 14)
!2089 = !DILocation(line: 2104, column: 14, scope: !2087)
!2090 = !DILocation(line: 2104, column: 35, scope: !2087)
!2091 = !DILocation(line: 2104, column: 14, scope: !2088)
!2092 = !DILocation(line: 2106, column: 51, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2087, file: !70, line: 2104, column: 41)
!2094 = !DILocation(line: 2106, column: 61, scope: !2093)
!2095 = !DILocation(line: 2106, column: 19, scope: !2093)
!2096 = !DILocation(line: 2106, column: 17, scope: !2093)
!2097 = !DILocation(line: 2107, column: 10, scope: !2093)
!2098 = !DILocation(line: 2108, column: 55, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2087, file: !70, line: 2107, column: 17)
!2100 = !DILocation(line: 2108, column: 65, scope: !2099)
!2101 = !DILocation(line: 2109, column: 41, scope: !2099)
!2102 = !DILocation(line: 2108, column: 19, scope: !2099)
!2103 = !DILocation(line: 2108, column: 17, scope: !2099)
!2104 = !DILocation(line: 2113, column: 28, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2077, file: !70, line: 2113, column: 11)
!2106 = !DILocation(line: 2113, column: 11, scope: !2105)
!2107 = !DILocation(line: 2113, column: 38, scope: !2105)
!2108 = !DILocation(line: 2113, column: 11, scope: !2077)
!2109 = !DILocation(line: 2114, column: 10, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !70, line: 2113, column: 44)
!2111 = !DILocation(line: 2117, column: 13, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2077, file: !70, line: 2117, column: 11)
!2113 = !DILocation(line: 2117, column: 12, scope: !2112)
!2114 = !DILocation(line: 2117, column: 17, scope: !2112)
!2115 = !DILocation(line: 2117, column: 28, scope: !2112)
!2116 = !DILocation(line: 2117, column: 47, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2112, file: !70, discriminator: 1)
!2118 = !DILocation(line: 2117, column: 32, scope: !2117)
!2119 = !DILocation(line: 2117, column: 58, scope: !2117)
!2120 = !DILocation(line: 2117, column: 11, scope: !2117)
!2121 = !DILocation(line: 2118, column: 10, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2112, file: !70, line: 2117, column: 65)
!2123 = !DILocation(line: 2121, column: 18, scope: !2077)
!2124 = !DILocation(line: 2121, column: 7, scope: !2077)
!2125 = !DILocation(line: 2122, column: 11, scope: !2077)
!2126 = !DILocation(line: 2124, column: 13, scope: !2077)
!2127 = !DILocation(line: 2124, column: 11, scope: !2077)
!2128 = !DILocation(line: 2098, column: 4, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !1986, file: !70, discriminator: 2)
!2130 = distinct !{!2130, !2071}
!2131 = !DILocation(line: 2098, column: 4, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !1986, file: !70, discriminator: 3)
!2133 = !DILocation(line: 2128, column: 8, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !1986, file: !70, line: 2128, column: 8)
!2135 = !DILocation(line: 2128, column: 8, scope: !1986)
!2136 = !DILocation(line: 2129, column: 13, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2134, file: !70, line: 2128, column: 13)
!2138 = !DILocation(line: 2131, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2137, file: !70, line: 2131, column: 11)
!2140 = !DILocation(line: 2131, column: 11, scope: !2137)
!2141 = !DILocation(line: 2132, column: 34, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !70, line: 2131, column: 19)
!2143 = !DILocation(line: 2132, column: 20, scope: !2142)
!2144 = !DILocation(line: 2132, column: 11, scope: !2142)
!2145 = !DILocation(line: 2132, column: 18, scope: !2142)
!2146 = !DILocation(line: 2134, column: 15, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2142, file: !70, line: 2134, column: 14)
!2148 = !DILocation(line: 2134, column: 14, scope: !2147)
!2149 = !DILocation(line: 2134, column: 22, scope: !2147)
!2150 = !DILocation(line: 2134, column: 14, scope: !2142)
!2151 = !DILocation(line: 2135, column: 19, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2147, file: !70, line: 2134, column: 30)
!2153 = !DILocation(line: 2136, column: 10, scope: !2152)
!2154 = !DILocation(line: 2137, column: 7, scope: !2142)
!2155 = !DILocation(line: 2139, column: 18, scope: !2137)
!2156 = !DILocation(line: 2139, column: 7, scope: !2137)
!2157 = !DILocation(line: 2140, column: 4, scope: !2137)
!2158 = !DILocation(line: 2141, column: 13, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2134, file: !70, line: 2140, column: 11)
!2160 = !DILocation(line: 2144, column: 15, scope: !1986)
!2161 = !DILocation(line: 2144, column: 4, scope: !1986)
!2162 = !DILocation(line: 2145, column: 15, scope: !1986)
!2163 = !DILocation(line: 2145, column: 4, scope: !1986)
!2164 = !DILocation(line: 2146, column: 15, scope: !1986)
!2165 = !DILocation(line: 2146, column: 4, scope: !1986)
!2166 = !DILocation(line: 2148, column: 11, scope: !1986)
!2167 = !DILocation(line: 2148, column: 4, scope: !1986)
!2168 = distinct !DISubprogram(name: "File_ExpandAndCheckDir", scope: !70, file: !70, line: 2171, type: !1582, isLocal: false, isDefinition: true, scopeLine: 2172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2169 = !DILocalVariable(name: "dirName", arg: 1, scope: !2168, file: !70, line: 2171, type: !73)
!2170 = !DILocation(line: 2171, column: 36, scope: !2168)
!2171 = !DILocation(line: 2173, column: 8, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !70, line: 2173, column: 8)
!2173 = !DILocation(line: 2173, column: 16, scope: !2172)
!2174 = !DILocation(line: 2173, column: 8, scope: !2168)
!2175 = !DILocalVariable(name: "edirName", scope: !2176, file: !70, line: 2174, type: !65)
!2176 = distinct !DILexicalBlock(scope: !2172, file: !70, line: 2173, column: 24)
!2177 = !DILocation(line: 2174, column: 13, scope: !2176)
!2178 = !DILocation(line: 2174, column: 42, scope: !2176)
!2179 = !DILocation(line: 2174, column: 24, scope: !2176)
!2180 = !DILocation(line: 2176, column: 12, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2176, file: !70, line: 2176, column: 11)
!2182 = !DILocation(line: 2176, column: 21, scope: !2181)
!2183 = !DILocation(line: 2176, column: 29, scope: !2181)
!2184 = !DILocation(line: 2176, column: 50, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2181, file: !70, discriminator: 1)
!2186 = !DILocation(line: 2176, column: 32, scope: !2185)
!2187 = !DILocation(line: 2176, column: 11, scope: !2185)
!2188 = !DILocalVariable(name: "len", scope: !2189, file: !70, line: 2177, type: !565)
!2189 = distinct !DILexicalBlock(scope: !2181, file: !70, line: 2176, column: 61)
!2190 = !DILocation(line: 2177, column: 17, scope: !2189)
!2191 = !DILocation(line: 2177, column: 30, scope: !2189)
!2192 = !DILocation(line: 2177, column: 23, scope: !2189)
!2193 = !DILocation(line: 2177, column: 40, scope: !2189)
!2194 = !DILocation(line: 2179, column: 23, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2189, file: !70, line: 2179, column: 14)
!2196 = !DILocation(line: 2179, column: 14, scope: !2195)
!2197 = !DILocation(line: 2179, column: 28, scope: !2195)
!2198 = !DILocation(line: 2179, column: 14, scope: !2189)
!2199 = !DILocation(line: 2180, column: 22, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2195, file: !70, line: 2179, column: 36)
!2201 = !DILocation(line: 2180, column: 13, scope: !2200)
!2202 = !DILocation(line: 2180, column: 27, scope: !2200)
!2203 = !DILocation(line: 2181, column: 10, scope: !2200)
!2204 = !DILocation(line: 2183, column: 17, scope: !2189)
!2205 = !DILocation(line: 2183, column: 10, scope: !2189)
!2206 = !DILocation(line: 2185, column: 4, scope: !2176)
!2207 = !DILocation(line: 2187, column: 4, scope: !2168)
!2208 = !DILocation(line: 2188, column: 1, scope: !2168)
!2209 = !DILocalVariable(name: "result", scope: !92, file: !70, line: 2212, type: !50)
!2210 = !DILocation(line: 2212, column: 11, scope: !92)
!2211 = !DILocalVariable(name: "lck", scope: !92, file: !70, line: 2213, type: !60)
!2212 = !DILocation(line: 2213, column: 20, scope: !92)
!2213 = !DILocation(line: 2213, column: 26, scope: !92)
!2214 = !DILocation(line: 2217, column: 27, scope: !92)
!2215 = !DILocation(line: 2217, column: 4, scope: !92)
!2216 = !DILocation(line: 2219, column: 26, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !92, file: !70, line: 2219, column: 8)
!2218 = !DILocation(line: 2219, column: 34, scope: !2217)
!2219 = !DILocation(line: 2219, column: 25, scope: !2217)
!2220 = !DILocation(line: 2219, column: 8, scope: !2217)
!2221 = !DILocation(line: 2219, column: 8, scope: !92)
!2222 = !DILocalVariable(name: "value", scope: !2223, file: !70, line: 2220, type: !50)
!2223 = distinct !DILexicalBlock(scope: !2217, file: !70, line: 2219, column: 14)
!2224 = !DILocation(line: 2220, column: 14, scope: !2223)
!2225 = !DILocation(line: 2225, column: 15, scope: !2223)
!2226 = !DILocation(line: 2225, column: 13, scope: !2223)
!2227 = !DILocation(line: 2228, column: 34, scope: !2223)
!2228 = !DILocation(line: 2228, column: 17, scope: !2223)
!2229 = !DILocation(line: 2228, column: 15, scope: !2223)
!2230 = !DILocation(line: 2230, column: 4, scope: !2223)
!2231 = !DILocation(line: 2232, column: 26, scope: !92)
!2232 = !DILocation(line: 2232, column: 13, scope: !92)
!2233 = !DILocation(line: 2232, column: 11, scope: !92)
!2234 = !DILocation(line: 2234, column: 27, scope: !92)
!2235 = !DILocation(line: 2234, column: 4, scope: !92)
!2236 = !DILocation(line: 2236, column: 11, scope: !92)
!2237 = !DILocation(line: 2236, column: 4, scope: !92)
!2238 = distinct !DISubprogram(name: "MXUser_CreateSingletonExclLock", scope: !62, file: !62, line: 67, type: !2239, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!60, !491, !73, !2241}
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "MX_Rank", file: !51, line: 1167, baseType: !50)
!2242 = !DILocalVariable(name: "lockStorage", arg: 1, scope: !2238, file: !62, line: 67, type: !491)
!2243 = !DILocation(line: 67, column: 44, scope: !2238)
!2244 = !DILocalVariable(name: "name", arg: 2, scope: !2238, file: !62, line: 68, type: !73)
!2245 = !DILocation(line: 68, column: 44, scope: !2238)
!2246 = !DILocalVariable(name: "rank", arg: 3, scope: !2238, file: !62, line: 69, type: !2241)
!2247 = !DILocation(line: 69, column: 40, scope: !2238)
!2248 = !DILocalVariable(name: "lock", scope: !2238, file: !62, line: 71, type: !60)
!2249 = !DILocation(line: 71, column: 20, scope: !2238)
!2250 = !DILocation(line: 75, column: 45, scope: !2238)
!2251 = !DILocation(line: 75, column: 30, scope: !2238)
!2252 = !DILocation(line: 75, column: 11, scope: !2238)
!2253 = !DILocation(line: 75, column: 9, scope: !2238)
!2254 = !DILocation(line: 77, column: 26, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2238, file: !62, line: 77, column: 8)
!2256 = !DILocation(line: 77, column: 31, scope: !2255)
!2257 = !DILocation(line: 77, column: 25, scope: !2255)
!2258 = !DILocation(line: 77, column: 8, scope: !2255)
!2259 = !DILocation(line: 77, column: 8, scope: !2238)
!2260 = !DILocation(line: 78, column: 48, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2255, file: !62, line: 77, column: 14)
!2262 = !DILocation(line: 78, column: 61, scope: !2261)
!2263 = !DILocation(line: 78, column: 67, scope: !2261)
!2264 = !DILocation(line: 78, column: 14, scope: !2261)
!2265 = !DILocation(line: 78, column: 12, scope: !2261)
!2266 = !DILocation(line: 79, column: 4, scope: !2261)
!2267 = !DILocation(line: 81, column: 11, scope: !2238)
!2268 = !DILocation(line: 81, column: 4, scope: !2238)
!2269 = distinct !DISubprogram(name: "FileSleeper", scope: !70, file: !70, line: 2260, type: !2270, isLocal: false, isDefinition: true, scopeLine: 2262, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!50, !50, !50}
!2272 = !DILocalVariable(name: "minSleepTimeMsec", arg: 1, scope: !2269, file: !70, line: 2260, type: !50)
!2273 = !DILocation(line: 2260, column: 20, scope: !2269)
!2274 = !DILocalVariable(name: "maxSleepTimeMsec", arg: 2, scope: !2269, file: !70, line: 2261, type: !50)
!2275 = !DILocation(line: 2261, column: 20, scope: !2269)
!2276 = !DILocalVariable(name: "variance", scope: !2269, file: !70, line: 2263, type: !50)
!2277 = !DILocation(line: 2263, column: 11, scope: !2269)
!2278 = !DILocalVariable(name: "actualSleepTimeMsec", scope: !2269, file: !70, line: 2264, type: !50)
!2279 = !DILocation(line: 2264, column: 11, scope: !2269)
!2280 = !DILocation(line: 2271, column: 15, scope: !2269)
!2281 = !DILocation(line: 2271, column: 34, scope: !2269)
!2282 = !DILocation(line: 2271, column: 32, scope: !2269)
!2283 = !DILocation(line: 2271, column: 13, scope: !2269)
!2284 = !DILocation(line: 2273, column: 8, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2269, file: !70, line: 2273, column: 8)
!2286 = !DILocation(line: 2273, column: 17, scope: !2285)
!2287 = !DILocation(line: 2273, column: 8, scope: !2269)
!2288 = !DILocation(line: 2274, column: 29, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !70, line: 2273, column: 23)
!2290 = !DILocation(line: 2274, column: 27, scope: !2289)
!2291 = !DILocation(line: 2275, column: 4, scope: !2289)
!2292 = !DILocalVariable(name: "fpRand", scope: !2293, file: !70, line: 2276, type: !49)
!2293 = distinct !DILexicalBlock(scope: !2285, file: !70, line: 2275, column: 11)
!2294 = !DILocation(line: 2276, column: 13, scope: !2293)
!2295 = !DILocation(line: 2276, column: 31, scope: !2293)
!2296 = !DILocation(line: 2276, column: 23, scope: !2293)
!2297 = !DILocation(line: 2276, column: 51, scope: !2293)
!2298 = !DILocation(line: 2278, column: 29, scope: !2293)
!2299 = !DILocation(line: 2278, column: 58, scope: !2293)
!2300 = !DILocation(line: 2278, column: 67, scope: !2293)
!2301 = !DILocation(line: 2278, column: 65, scope: !2293)
!2302 = !DILocation(line: 2278, column: 48, scope: !2293)
!2303 = !DILocation(line: 2278, column: 46, scope: !2293)
!2304 = !DILocation(line: 2278, column: 27, scope: !2293)
!2305 = !DILocation(line: 2294, column: 23, scope: !2269)
!2306 = !DILocation(line: 2294, column: 21, scope: !2269)
!2307 = !DILocation(line: 2294, column: 16, scope: !2269)
!2308 = !DILocation(line: 2294, column: 4, scope: !2269)
!2309 = !DILocation(line: 2297, column: 11, scope: !2269)
!2310 = !DILocation(line: 2297, column: 4, scope: !2269)
!2311 = distinct !DISubprogram(name: "File_Rotate", scope: !70, file: !70, line: 2558, type: !2312, isLocal: false, isDefinition: true, scopeLine: 2562, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null, !73, !47, !87, !707}
!2314 = !DILocalVariable(name: "fileName", arg: 1, scope: !2311, file: !70, line: 2558, type: !73)
!2315 = !DILocation(line: 2558, column: 25, scope: !2311)
!2316 = !DILocalVariable(name: "n", arg: 2, scope: !2311, file: !70, line: 2559, type: !47)
!2317 = !DILocation(line: 2559, column: 17, scope: !2311)
!2318 = !DILocalVariable(name: "noRename", arg: 3, scope: !2311, file: !70, line: 2560, type: !87)
!2319 = !DILocation(line: 2560, column: 18, scope: !2311)
!2320 = !DILocalVariable(name: "newFileName", arg: 4, scope: !2311, file: !70, line: 2561, type: !707)
!2321 = !DILocation(line: 2561, column: 20, scope: !2311)
!2322 = !DILocalVariable(name: "ext", scope: !2311, file: !70, line: 2563, type: !73)
!2323 = !DILocation(line: 2563, column: 16, scope: !2311)
!2324 = !DILocalVariable(name: "baseLen", scope: !2311, file: !70, line: 2564, type: !565)
!2325 = !DILocation(line: 2564, column: 11, scope: !2311)
!2326 = !DILocalVariable(name: "baseName", scope: !2311, file: !70, line: 2565, type: !65)
!2327 = !DILocation(line: 2565, column: 10, scope: !2311)
!2328 = !DILocation(line: 2569, column: 23, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2311, file: !70, line: 2569, column: 8)
!2330 = !DILocation(line: 2569, column: 15, scope: !2329)
!2331 = !DILocation(line: 2569, column: 13, scope: !2329)
!2332 = !DILocation(line: 2569, column: 39, scope: !2329)
!2333 = !DILocation(line: 2569, column: 8, scope: !2311)
!2334 = !DILocation(line: 2570, column: 13, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2329, file: !70, line: 2569, column: 51)
!2336 = !DILocation(line: 2570, column: 31, scope: !2335)
!2337 = !DILocation(line: 2570, column: 24, scope: !2335)
!2338 = !DILocation(line: 2570, column: 22, scope: !2335)
!2339 = !DILocation(line: 2570, column: 11, scope: !2335)
!2340 = !DILocation(line: 2571, column: 4, scope: !2335)
!2341 = !DILocation(line: 2572, column: 14, scope: !2311)
!2342 = !DILocation(line: 2572, column: 20, scope: !2311)
!2343 = !DILocation(line: 2572, column: 18, scope: !2311)
!2344 = !DILocation(line: 2572, column: 12, scope: !2311)
!2345 = !DILocation(line: 2581, column: 32, scope: !2311)
!2346 = !DILocation(line: 2581, column: 15, scope: !2311)
!2347 = !DILocation(line: 2581, column: 13, scope: !2311)
!2348 = !DILocation(line: 2582, column: 13, scope: !2311)
!2349 = !DILocation(line: 2582, column: 4, scope: !2311)
!2350 = !DILocation(line: 2582, column: 22, scope: !2311)
!2351 = !DILocation(line: 2584, column: 8, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2311, file: !70, line: 2584, column: 8)
!2353 = !DILocation(line: 2584, column: 8, scope: !2311)
!2354 = !DILocation(line: 2585, column: 28, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2352, file: !70, line: 2584, column: 18)
!2356 = !DILocation(line: 2585, column: 38, scope: !2355)
!2357 = !DILocation(line: 2585, column: 48, scope: !2355)
!2358 = !DILocation(line: 2585, column: 53, scope: !2355)
!2359 = !DILocation(line: 2585, column: 56, scope: !2355)
!2360 = !DILocation(line: 2585, column: 7, scope: !2355)
!2361 = !DILocation(line: 2586, column: 4, scope: !2355)
!2362 = !DILocation(line: 2587, column: 26, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2352, file: !70, line: 2586, column: 11)
!2364 = !DILocation(line: 2587, column: 36, scope: !2363)
!2365 = !DILocation(line: 2587, column: 46, scope: !2363)
!2366 = !DILocation(line: 2587, column: 51, scope: !2363)
!2367 = !DILocation(line: 2587, column: 54, scope: !2363)
!2368 = !DILocation(line: 2587, column: 7, scope: !2363)
!2369 = !DILocation(line: 2590, column: 15, scope: !2311)
!2370 = !DILocation(line: 2590, column: 4, scope: !2311)
!2371 = !DILocation(line: 2591, column: 1, scope: !2311)
!2372 = distinct !DISubprogram(name: "FileRotateByRenumber", scope: !70, file: !70, line: 2423, type: !2373, isLocal: true, isDefinition: true, scopeLine: 2428, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !73, !73, !73, !47, !707}
!2375 = !DILocalVariable(name: "filePath", arg: 1, scope: !2372, file: !70, line: 2423, type: !73)
!2376 = !DILocation(line: 2423, column: 34, scope: !2372)
!2377 = !DILocalVariable(name: "filePathNoExt", arg: 2, scope: !2372, file: !70, line: 2424, type: !73)
!2378 = !DILocation(line: 2424, column: 34, scope: !2372)
!2379 = !DILocalVariable(name: "ext", arg: 3, scope: !2372, file: !70, line: 2425, type: !73)
!2380 = !DILocation(line: 2425, column: 34, scope: !2372)
!2381 = !DILocalVariable(name: "n", arg: 4, scope: !2372, file: !70, line: 2426, type: !47)
!2382 = !DILocation(line: 2426, column: 26, scope: !2372)
!2383 = !DILocalVariable(name: "newFilePath", arg: 5, scope: !2372, file: !70, line: 2427, type: !707)
!2384 = !DILocation(line: 2427, column: 29, scope: !2372)
!2385 = !DILocalVariable(name: "baseDir", scope: !2372, file: !70, line: 2429, type: !65)
!2386 = !DILocation(line: 2429, column: 10, scope: !2372)
!2387 = !DILocalVariable(name: "fmtString", scope: !2372, file: !70, line: 2429, type: !65)
!2388 = !DILocation(line: 2429, column: 26, scope: !2372)
!2389 = !DILocalVariable(name: "baseName", scope: !2372, file: !70, line: 2429, type: !65)
!2390 = !DILocation(line: 2429, column: 45, scope: !2372)
!2391 = !DILocalVariable(name: "tmp", scope: !2372, file: !70, line: 2429, type: !65)
!2392 = !DILocation(line: 2429, column: 63, scope: !2372)
!2393 = !DILocalVariable(name: "fullPathNoExt", scope: !2372, file: !70, line: 2430, type: !65)
!2394 = !DILocation(line: 2430, column: 10, scope: !2372)
!2395 = !DILocalVariable(name: "maxNr", scope: !2372, file: !70, line: 2431, type: !50)
!2396 = !DILocation(line: 2431, column: 11, scope: !2372)
!2397 = !DILocalVariable(name: "i", scope: !2372, file: !70, line: 2432, type: !47)
!2398 = !DILocation(line: 2432, column: 8, scope: !2372)
!2399 = !DILocalVariable(name: "nrFiles", scope: !2372, file: !70, line: 2432, type: !47)
!2400 = !DILocation(line: 2432, column: 11, scope: !2372)
!2401 = !DILocalVariable(name: "nFound", scope: !2372, file: !70, line: 2432, type: !47)
!2402 = !DILocation(line: 2432, column: 20, scope: !2372)
!2403 = !DILocalVariable(name: "fileList", scope: !2372, file: !70, line: 2433, type: !707)
!2404 = !DILocation(line: 2433, column: 11, scope: !2372)
!2405 = !DILocalVariable(name: "fileNumbers", scope: !2372, file: !70, line: 2434, type: !64)
!2406 = !DILocation(line: 2434, column: 12, scope: !2372)
!2407 = !DILocalVariable(name: "result", scope: !2372, file: !70, line: 2435, type: !47)
!2408 = !DILocation(line: 2435, column: 8, scope: !2372)
!2409 = !DILocation(line: 2437, column: 8, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2372, file: !70, line: 2437, column: 8)
!2411 = !DILocation(line: 2437, column: 20, scope: !2410)
!2412 = !DILocation(line: 2437, column: 8, scope: !2372)
!2413 = !DILocation(line: 2438, column: 8, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2410, file: !70, line: 2437, column: 28)
!2415 = !DILocation(line: 2438, column: 20, scope: !2414)
!2416 = !DILocation(line: 2439, column: 4, scope: !2414)
!2417 = !DILocation(line: 2441, column: 34, scope: !2372)
!2418 = !DILocation(line: 2441, column: 20, scope: !2372)
!2419 = !DILocation(line: 2441, column: 18, scope: !2372)
!2420 = !DILocation(line: 2442, column: 8, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2372, file: !70, line: 2442, column: 8)
!2422 = !DILocation(line: 2442, column: 22, scope: !2421)
!2423 = !DILocation(line: 2442, column: 8, scope: !2372)
!2424 = !DILocation(line: 2444, column: 11, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2421, file: !70, line: 2442, column: 30)
!2426 = !DILocation(line: 2443, column: 7, scope: !2425)
!2427 = !DILocation(line: 2445, column: 7, scope: !2425)
!2428 = !DILocation(line: 2448, column: 21, scope: !2372)
!2429 = !DILocation(line: 2448, column: 4, scope: !2372)
!2430 = !DILocation(line: 2450, column: 9, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2372, file: !70, line: 2450, column: 8)
!2432 = !DILocation(line: 2450, column: 17, scope: !2431)
!2433 = !DILocation(line: 2450, column: 25, scope: !2431)
!2434 = !DILocation(line: 2450, column: 30, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2431, file: !70, discriminator: 1)
!2436 = !DILocation(line: 2450, column: 29, scope: !2435)
!2437 = !DILocation(line: 2450, column: 38, scope: !2435)
!2438 = !DILocation(line: 2450, column: 8, scope: !2435)
!2439 = !DILocation(line: 2451, column: 17, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2431, file: !70, line: 2450, column: 48)
!2441 = !DILocation(line: 2451, column: 15, scope: !2440)
!2442 = !DILocation(line: 2452, column: 4, scope: !2440)
!2443 = !DILocation(line: 2454, column: 9, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2372, file: !70, line: 2454, column: 8)
!2445 = !DILocation(line: 2454, column: 18, scope: !2444)
!2446 = !DILocation(line: 2454, column: 26, scope: !2444)
!2447 = !DILocation(line: 2454, column: 31, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !2444, file: !70, discriminator: 1)
!2449 = !DILocation(line: 2454, column: 30, scope: !2448)
!2450 = !DILocation(line: 2454, column: 40, scope: !2448)
!2451 = !DILocation(line: 2454, column: 8, scope: !2448)
!2452 = !DILocation(line: 2456, column: 11, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2444, file: !70, line: 2454, column: 50)
!2454 = !DILocation(line: 2455, column: 7, scope: !2453)
!2455 = !DILocation(line: 2457, column: 7, scope: !2453)
!2456 = !DILocation(line: 2460, column: 53, scope: !2372)
!2457 = !DILocation(line: 2460, column: 63, scope: !2372)
!2458 = !DILocation(line: 2460, column: 16, scope: !2372)
!2459 = !DILocation(line: 2460, column: 14, scope: !2372)
!2460 = !DILocation(line: 2462, column: 33, scope: !2372)
!2461 = !DILocation(line: 2462, column: 14, scope: !2372)
!2462 = !DILocation(line: 2462, column: 12, scope: !2372)
!2463 = !DILocation(line: 2463, column: 8, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2372, file: !70, line: 2463, column: 8)
!2465 = !DILocation(line: 2463, column: 16, scope: !2464)
!2466 = !DILocation(line: 2463, column: 8, scope: !2372)
!2467 = !DILocation(line: 2465, column: 11, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2464, file: !70, line: 2463, column: 23)
!2469 = !DILocation(line: 2464, column: 7, scope: !2468)
!2470 = !DILocation(line: 2466, column: 7, scope: !2468)
!2471 = !DILocation(line: 2469, column: 35, scope: !2372)
!2472 = !DILocation(line: 2469, column: 34, scope: !2372)
!2473 = !DILocation(line: 2469, column: 18, scope: !2372)
!2474 = !DILocation(line: 2469, column: 16, scope: !2372)
!2475 = !DILocation(line: 2471, column: 11, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2372, file: !70, line: 2471, column: 4)
!2477 = !DILocation(line: 2471, column: 9, scope: !2476)
!2478 = !DILocation(line: 2471, column: 16, scope: !2479)
!2479 = !DILexicalBlockFile(scope: !2480, file: !70, discriminator: 1)
!2480 = distinct !DILexicalBlock(scope: !2476, file: !70, line: 2471, column: 4)
!2481 = !DILocation(line: 2471, column: 20, scope: !2479)
!2482 = !DILocation(line: 2471, column: 18, scope: !2479)
!2483 = !DILocation(line: 2471, column: 4, scope: !2479)
!2484 = !DILocalVariable(name: "curNr", scope: !2485, file: !70, line: 2472, type: !50)
!2485 = distinct !DILexicalBlock(scope: !2480, file: !70, line: 2471, column: 34)
!2486 = !DILocation(line: 2472, column: 14, scope: !2485)
!2487 = !DILocalVariable(name: "bytesProcessed", scope: !2485, file: !70, line: 2473, type: !47)
!2488 = !DILocation(line: 2473, column: 11, scope: !2485)
!2489 = !DILocation(line: 2479, column: 28, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2485, file: !70, line: 2479, column: 11)
!2491 = !DILocation(line: 2479, column: 19, scope: !2490)
!2492 = !DILocation(line: 2479, column: 32, scope: !2490)
!2493 = !DILocation(line: 2479, column: 12, scope: !2490)
!2494 = !DILocation(line: 2479, column: 68, scope: !2490)
!2495 = !DILocation(line: 2479, column: 74, scope: !2490)
!2496 = !DILocation(line: 2480, column: 12, scope: !2490)
!2497 = !DILocation(line: 2480, column: 46, scope: !2490)
!2498 = !DILocation(line: 2480, column: 37, scope: !2490)
!2499 = !DILocation(line: 2480, column: 30, scope: !2490)
!2500 = !DILocation(line: 2480, column: 27, scope: !2490)
!2501 = !DILocation(line: 2479, column: 11, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !2485, file: !70, discriminator: 1)
!2503 = !DILocation(line: 2481, column: 34, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2490, file: !70, line: 2480, column: 52)
!2505 = !DILocation(line: 2481, column: 28, scope: !2504)
!2506 = !DILocation(line: 2481, column: 10, scope: !2504)
!2507 = !DILocation(line: 2481, column: 32, scope: !2504)
!2508 = !DILocation(line: 2482, column: 7, scope: !2504)
!2509 = !DILocation(line: 2484, column: 27, scope: !2485)
!2510 = !DILocation(line: 2484, column: 18, scope: !2485)
!2511 = !DILocation(line: 2484, column: 7, scope: !2485)
!2512 = !DILocation(line: 2485, column: 4, scope: !2485)
!2513 = !DILocation(line: 2471, column: 30, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2480, file: !70, discriminator: 2)
!2515 = !DILocation(line: 2471, column: 4, scope: !2514)
!2516 = distinct !{!2516, !2517}
!2517 = !DILocation(line: 2471, column: 4, scope: !2372)
!2518 = !DILocation(line: 2487, column: 8, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2372, file: !70, line: 2487, column: 8)
!2520 = !DILocation(line: 2487, column: 15, scope: !2519)
!2521 = !DILocation(line: 2487, column: 8, scope: !2372)
!2522 = !DILocation(line: 2488, column: 13, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !70, line: 2487, column: 20)
!2524 = !DILocation(line: 2488, column: 26, scope: !2523)
!2525 = !DILocation(line: 2488, column: 7, scope: !2523)
!2526 = !DILocation(line: 2489, column: 27, scope: !2523)
!2527 = !DILocation(line: 2489, column: 34, scope: !2523)
!2528 = !DILocation(line: 2489, column: 15, scope: !2523)
!2529 = !DILocation(line: 2489, column: 13, scope: !2523)
!2530 = !DILocation(line: 2490, column: 4, scope: !2523)
!2531 = !DILocation(line: 2493, column: 46, scope: !2372)
!2532 = !DILocation(line: 2493, column: 55, scope: !2372)
!2533 = !DILocation(line: 2494, column: 27, scope: !2372)
!2534 = !DILocation(line: 2494, column: 33, scope: !2372)
!2535 = !DILocation(line: 2494, column: 38, scope: !2372)
!2536 = !DILocation(line: 2493, column: 10, scope: !2372)
!2537 = !DILocation(line: 2493, column: 8, scope: !2372)
!2538 = !DILocation(line: 2496, column: 26, scope: !2372)
!2539 = !DILocation(line: 2496, column: 36, scope: !2372)
!2540 = !DILocation(line: 2496, column: 13, scope: !2372)
!2541 = !DILocation(line: 2496, column: 11, scope: !2372)
!2542 = !DILocation(line: 2498, column: 8, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2372, file: !70, line: 2498, column: 8)
!2544 = !DILocation(line: 2498, column: 15, scope: !2543)
!2545 = !DILocation(line: 2498, column: 8, scope: !2372)
!2546 = !DILocalVariable(name: "error", scope: !2547, file: !70, line: 2499, type: !47)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !70, line: 2498, column: 22)
!2548 = !DILocation(line: 2499, column: 11, scope: !2547)
!2549 = !DILocation(line: 2499, column: 20, scope: !2547)
!2550 = !DILocation(line: 2499, column: 19, scope: !2547)
!2551 = !DILocation(line: 2501, column: 11, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !70, line: 2501, column: 11)
!2553 = !DILocation(line: 2501, column: 17, scope: !2552)
!2554 = !DILocation(line: 2501, column: 11, scope: !2547)
!2555 = !DILocation(line: 2503, column: 14, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2552, file: !70, line: 2501, column: 27)
!2557 = !DILocation(line: 2503, column: 24, scope: !2556)
!2558 = !DILocation(line: 2503, column: 46, scope: !2556)
!2559 = !DILocation(line: 2503, column: 29, scope: !2556)
!2560 = !DILocation(line: 2502, column: 10, scope: !2556)
!2561 = !DILocation(line: 2504, column: 7, scope: !2556)
!2562 = !DILocation(line: 2505, column: 4, scope: !2547)
!2563 = !DILocation(line: 2507, column: 8, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2372, file: !70, line: 2507, column: 8)
!2565 = !DILocation(line: 2507, column: 20, scope: !2564)
!2566 = !DILocation(line: 2507, column: 27, scope: !2564)
!2567 = !DILocation(line: 2507, column: 30, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2564, file: !70, discriminator: 1)
!2569 = !DILocation(line: 2507, column: 37, scope: !2568)
!2570 = !DILocation(line: 2507, column: 8, scope: !2568)
!2571 = !DILocation(line: 2508, column: 18, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2564, file: !70, line: 2507, column: 44)
!2573 = !DILocation(line: 2508, column: 7, scope: !2572)
!2574 = !DILocation(line: 2509, column: 4, scope: !2572)
!2575 = !DILocation(line: 2510, column: 22, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2564, file: !70, line: 2509, column: 11)
!2577 = !DILocation(line: 2510, column: 8, scope: !2576)
!2578 = !DILocation(line: 2510, column: 20, scope: !2576)
!2579 = !DILocation(line: 2513, column: 8, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2372, file: !70, line: 2513, column: 8)
!2581 = !DILocation(line: 2513, column: 18, scope: !2580)
!2582 = !DILocation(line: 2513, column: 15, scope: !2580)
!2583 = !DILocation(line: 2513, column: 8, scope: !2372)
!2584 = !DILocation(line: 2515, column: 14, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !70, line: 2515, column: 7)
!2586 = distinct !DILexicalBlock(scope: !2580, file: !70, line: 2513, column: 21)
!2587 = !DILocation(line: 2515, column: 12, scope: !2585)
!2588 = !DILocation(line: 2515, column: 19, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !2590, file: !70, discriminator: 1)
!2590 = distinct !DILexicalBlock(scope: !2585, file: !70, line: 2515, column: 7)
!2591 = !DILocation(line: 2515, column: 24, scope: !2589)
!2592 = !DILocation(line: 2515, column: 33, scope: !2589)
!2593 = !DILocation(line: 2515, column: 31, scope: !2589)
!2594 = !DILocation(line: 2515, column: 21, scope: !2589)
!2595 = !DILocation(line: 2515, column: 7, scope: !2589)
!2596 = !DILocation(line: 2516, column: 52, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2590, file: !70, line: 2515, column: 41)
!2598 = !DILocation(line: 2516, column: 61, scope: !2597)
!2599 = !DILocation(line: 2517, column: 45, scope: !2597)
!2600 = !DILocation(line: 2517, column: 33, scope: !2597)
!2601 = !DILocation(line: 2517, column: 49, scope: !2597)
!2602 = !DILocation(line: 2516, column: 16, scope: !2597)
!2603 = !DILocation(line: 2516, column: 14, scope: !2597)
!2604 = !DILocation(line: 2519, column: 27, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2597, file: !70, line: 2519, column: 14)
!2606 = !DILocation(line: 2519, column: 14, scope: !2605)
!2607 = !DILocation(line: 2519, column: 32, scope: !2605)
!2608 = !DILocation(line: 2519, column: 14, scope: !2597)
!2609 = !DILocation(line: 2520, column: 72, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !70, line: 2519, column: 39)
!2611 = !DILocation(line: 2521, column: 18, scope: !2610)
!2612 = !DILocation(line: 2520, column: 13, scope: !2610)
!2613 = !DILocation(line: 2522, column: 10, scope: !2610)
!2614 = !DILocation(line: 2523, column: 21, scope: !2597)
!2615 = !DILocation(line: 2523, column: 10, scope: !2597)
!2616 = !DILocation(line: 2524, column: 7, scope: !2597)
!2617 = !DILocation(line: 2515, column: 37, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2590, file: !70, discriminator: 2)
!2619 = !DILocation(line: 2515, column: 7, scope: !2618)
!2620 = distinct !{!2620, !2621}
!2621 = !DILocation(line: 2515, column: 7, scope: !2586)
!2622 = !DILocation(line: 2525, column: 4, scope: !2586)
!2623 = !DILocation(line: 2513, column: 18, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2580, file: !70, discriminator: 1)
!2625 = !DILocation(line: 2528, column: 15, scope: !2372)
!2626 = !DILocation(line: 2528, column: 4, scope: !2372)
!2627 = !DILocation(line: 2529, column: 15, scope: !2372)
!2628 = !DILocation(line: 2529, column: 4, scope: !2372)
!2629 = !DILocation(line: 2530, column: 15, scope: !2372)
!2630 = !DILocation(line: 2530, column: 4, scope: !2372)
!2631 = !DILocation(line: 2531, column: 15, scope: !2372)
!2632 = !DILocation(line: 2531, column: 4, scope: !2372)
!2633 = !DILocation(line: 2532, column: 15, scope: !2372)
!2634 = !DILocation(line: 2532, column: 4, scope: !2372)
!2635 = !DILocation(line: 2533, column: 15, scope: !2372)
!2636 = !DILocation(line: 2533, column: 4, scope: !2372)
!2637 = !DILocation(line: 2534, column: 1, scope: !2372)
!2638 = distinct !DISubprogram(name: "FileRotateByRename", scope: !70, file: !70, line: 2324, type: !2373, isLocal: true, isDefinition: true, scopeLine: 2329, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2639 = !DILocalVariable(name: "fileName", arg: 1, scope: !2638, file: !70, line: 2324, type: !73)
!2640 = !DILocation(line: 2324, column: 32, scope: !2638)
!2641 = !DILocalVariable(name: "baseName", arg: 2, scope: !2638, file: !70, line: 2325, type: !73)
!2642 = !DILocation(line: 2325, column: 32, scope: !2638)
!2643 = !DILocalVariable(name: "ext", arg: 3, scope: !2638, file: !70, line: 2326, type: !73)
!2644 = !DILocation(line: 2326, column: 32, scope: !2638)
!2645 = !DILocalVariable(name: "n", arg: 4, scope: !2638, file: !70, line: 2327, type: !47)
!2646 = !DILocation(line: 2327, column: 24, scope: !2638)
!2647 = !DILocalVariable(name: "newFileName", arg: 5, scope: !2638, file: !70, line: 2328, type: !707)
!2648 = !DILocation(line: 2328, column: 27, scope: !2638)
!2649 = !DILocalVariable(name: "src", scope: !2638, file: !70, line: 2330, type: !65)
!2650 = !DILocation(line: 2330, column: 10, scope: !2638)
!2651 = !DILocalVariable(name: "dst", scope: !2638, file: !70, line: 2331, type: !65)
!2652 = !DILocation(line: 2331, column: 10, scope: !2638)
!2653 = !DILocalVariable(name: "i", scope: !2638, file: !70, line: 2332, type: !47)
!2654 = !DILocation(line: 2332, column: 8, scope: !2638)
!2655 = !DILocalVariable(name: "result", scope: !2638, file: !70, line: 2333, type: !47)
!2656 = !DILocation(line: 2333, column: 8, scope: !2638)
!2657 = !DILocation(line: 2335, column: 8, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2638, file: !70, line: 2335, column: 8)
!2659 = !DILocation(line: 2335, column: 20, scope: !2658)
!2660 = !DILocation(line: 2335, column: 8, scope: !2638)
!2661 = !DILocation(line: 2336, column: 8, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !70, line: 2335, column: 28)
!2663 = !DILocation(line: 2336, column: 20, scope: !2662)
!2664 = !DILocation(line: 2337, column: 4, scope: !2662)
!2665 = !DILocation(line: 2339, column: 13, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2638, file: !70, line: 2339, column: 4)
!2667 = !DILocation(line: 2339, column: 11, scope: !2666)
!2668 = !DILocation(line: 2339, column: 9, scope: !2666)
!2669 = !DILocation(line: 2339, column: 16, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2671, file: !70, discriminator: 1)
!2671 = distinct !DILexicalBlock(scope: !2666, file: !70, line: 2339, column: 4)
!2672 = !DILocation(line: 2339, column: 18, scope: !2670)
!2673 = !DILocation(line: 2339, column: 4, scope: !2670)
!2674 = !DILocation(line: 2340, column: 14, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !70, line: 2339, column: 29)
!2676 = !DILocation(line: 2340, column: 16, scope: !2675)
!2677 = !DILocation(line: 2340, column: 13, scope: !2675)
!2678 = !DILocation(line: 2340, column: 33, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2675, file: !70, discriminator: 1)
!2680 = !DILocation(line: 2340, column: 13, scope: !2679)
!2681 = !DILocation(line: 2341, column: 57, scope: !2675)
!2682 = !DILocation(line: 2341, column: 67, scope: !2675)
!2683 = !DILocation(line: 2341, column: 69, scope: !2675)
!2684 = !DILocation(line: 2341, column: 74, scope: !2675)
!2685 = !DILocation(line: 2341, column: 24, scope: !2675)
!2686 = !DILocation(line: 2340, column: 13, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !2675, file: !70, discriminator: 2)
!2688 = !DILocation(line: 2340, column: 13, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2675, file: !70, discriminator: 3)
!2690 = !DILocation(line: 2340, column: 11, scope: !2689)
!2691 = !DILocation(line: 2343, column: 11, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2675, file: !70, line: 2343, column: 11)
!2693 = !DILocation(line: 2343, column: 15, scope: !2692)
!2694 = !DILocation(line: 2343, column: 11, scope: !2675)
!2695 = !DILocation(line: 2344, column: 39, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2692, file: !70, line: 2343, column: 23)
!2697 = !DILocation(line: 2344, column: 19, scope: !2696)
!2698 = !DILocation(line: 2344, column: 17, scope: !2696)
!2699 = !DILocation(line: 2346, column: 14, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2696, file: !70, line: 2346, column: 14)
!2701 = !DILocation(line: 2346, column: 21, scope: !2700)
!2702 = !DILocation(line: 2346, column: 14, scope: !2696)
!2703 = !DILocation(line: 2348, column: 17, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2700, file: !70, line: 2346, column: 28)
!2705 = !DILocation(line: 2348, column: 23, scope: !2704)
!2706 = !DILocation(line: 2347, column: 13, scope: !2704)
!2707 = !DILocation(line: 2349, column: 10, scope: !2704)
!2708 = !DILocation(line: 2350, column: 7, scope: !2696)
!2709 = !DILocation(line: 2351, column: 32, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2692, file: !70, line: 2350, column: 14)
!2711 = !DILocation(line: 2351, column: 37, scope: !2710)
!2712 = !DILocation(line: 2351, column: 19, scope: !2710)
!2713 = !DILocation(line: 2351, column: 17, scope: !2710)
!2714 = !DILocation(line: 2353, column: 14, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2710, file: !70, line: 2353, column: 14)
!2716 = !DILocation(line: 2353, column: 21, scope: !2715)
!2717 = !DILocation(line: 2353, column: 14, scope: !2710)
!2718 = !DILocalVariable(name: "error", scope: !2719, file: !70, line: 2354, type: !47)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !70, line: 2353, column: 28)
!2720 = !DILocation(line: 2354, column: 17, scope: !2719)
!2721 = !DILocation(line: 2354, column: 26, scope: !2719)
!2722 = !DILocation(line: 2354, column: 25, scope: !2719)
!2723 = !DILocation(line: 2356, column: 17, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !70, line: 2356, column: 17)
!2725 = !DILocation(line: 2356, column: 23, scope: !2724)
!2726 = !DILocation(line: 2356, column: 17, scope: !2719)
!2727 = !DILocation(line: 2357, column: 67, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2724, file: !70, line: 2356, column: 33)
!2729 = !DILocation(line: 2357, column: 72, scope: !2728)
!2730 = !DILocation(line: 2358, column: 51, scope: !2728)
!2731 = !DILocation(line: 2358, column: 34, scope: !2728)
!2732 = !DILocation(line: 2357, column: 16, scope: !2728)
!2733 = !DILocation(line: 2359, column: 13, scope: !2728)
!2734 = !DILocation(line: 2360, column: 10, scope: !2719)
!2735 = !DILocation(line: 2363, column: 12, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2675, file: !70, line: 2363, column: 11)
!2737 = !DILocation(line: 2363, column: 19, scope: !2736)
!2738 = !DILocation(line: 2363, column: 16, scope: !2736)
!2739 = !DILocation(line: 2363, column: 29, scope: !2736)
!2740 = !DILocation(line: 2363, column: 33, scope: !2741)
!2741 = !DILexicalBlockFile(scope: !2736, file: !70, discriminator: 1)
!2742 = !DILocation(line: 2363, column: 45, scope: !2741)
!2743 = !DILocation(line: 2363, column: 53, scope: !2741)
!2744 = !DILocation(line: 2363, column: 57, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2736, file: !70, discriminator: 2)
!2746 = !DILocation(line: 2363, column: 64, scope: !2745)
!2747 = !DILocation(line: 2363, column: 11, scope: !2745)
!2748 = !DILocation(line: 2364, column: 42, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2736, file: !70, line: 2363, column: 71)
!2750 = !DILocation(line: 2364, column: 25, scope: !2749)
!2751 = !DILocation(line: 2364, column: 11, scope: !2749)
!2752 = !DILocation(line: 2364, column: 23, scope: !2749)
!2753 = !DILocation(line: 2365, column: 7, scope: !2749)
!2754 = !DILocation(line: 2368, column: 18, scope: !2675)
!2755 = !DILocation(line: 2368, column: 7, scope: !2675)
!2756 = !DILocation(line: 2369, column: 13, scope: !2675)
!2757 = !DILocation(line: 2369, column: 11, scope: !2675)
!2758 = !DILocation(line: 2370, column: 4, scope: !2675)
!2759 = !DILocation(line: 2339, column: 25, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2671, file: !70, discriminator: 2)
!2761 = !DILocation(line: 2339, column: 4, scope: !2760)
!2762 = distinct !{!2762, !2763}
!2763 = !DILocation(line: 2339, column: 4, scope: !2638)
!2764 = !DILocation(line: 2371, column: 1, scope: !2638)
!2765 = distinct !DISubprogram(name: "File_GetFSMountInfo", scope: !70, file: !70, line: 2612, type: !2766, isLocal: false, isDefinition: true, scopeLine: 2618, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!47, !73, !707, !64, !707, !707, !707}
!2768 = !DILocalVariable(name: "pathName", arg: 1, scope: !2765, file: !70, line: 2612, type: !73)
!2769 = !DILocation(line: 2612, column: 33, scope: !2765)
!2770 = !DILocalVariable(name: "fsType", arg: 2, scope: !2765, file: !70, line: 2613, type: !707)
!2771 = !DILocation(line: 2613, column: 28, scope: !2765)
!2772 = !DILocalVariable(name: "version", arg: 3, scope: !2765, file: !70, line: 2614, type: !64)
!2773 = !DILocation(line: 2614, column: 29, scope: !2765)
!2774 = !DILocalVariable(name: "remoteIP", arg: 4, scope: !2765, file: !70, line: 2615, type: !707)
!2775 = !DILocation(line: 2615, column: 28, scope: !2765)
!2776 = !DILocalVariable(name: "remoteMountPoint", arg: 5, scope: !2765, file: !70, line: 2616, type: !707)
!2777 = !DILocation(line: 2616, column: 28, scope: !2765)
!2778 = !DILocalVariable(name: "localMountPoint", arg: 6, scope: !2765, file: !70, line: 2617, type: !707)
!2779 = !DILocation(line: 2617, column: 28, scope: !2765)
!2780 = !DILocation(line: 2624, column: 4, scope: !2765)
!2781 = distinct !DISubprogram(name: "File_ContainSymLink", scope: !70, file: !70, line: 2647, type: !85, isLocal: false, isDefinition: true, scopeLine: 2648, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2782 = !DILocalVariable(name: "pathName", arg: 1, scope: !2781, file: !70, line: 2647, type: !73)
!2783 = !DILocation(line: 2647, column: 33, scope: !2781)
!2784 = !DILocalVariable(name: "path", scope: !2781, file: !70, line: 2649, type: !65)
!2785 = !DILocation(line: 2649, column: 10, scope: !2781)
!2786 = !DILocalVariable(name: "base", scope: !2781, file: !70, line: 2650, type: !65)
!2787 = !DILocation(line: 2650, column: 10, scope: !2781)
!2788 = !DILocalVariable(name: "retValue", scope: !2781, file: !70, line: 2651, type: !87)
!2789 = !DILocation(line: 2651, column: 9, scope: !2781)
!2790 = !DILocation(line: 2653, column: 23, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2781, file: !70, line: 2653, column: 8)
!2792 = !DILocation(line: 2653, column: 8, scope: !2791)
!2793 = !DILocation(line: 2653, column: 8, scope: !2781)
!2794 = !DILocation(line: 2654, column: 7, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !70, line: 2653, column: 34)
!2796 = !DILocation(line: 2657, column: 21, scope: !2781)
!2797 = !DILocation(line: 2657, column: 4, scope: !2781)
!2798 = !DILocation(line: 2659, column: 9, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2781, file: !70, line: 2659, column: 8)
!2800 = !DILocation(line: 2659, column: 14, scope: !2799)
!2801 = !DILocation(line: 2659, column: 22, scope: !2799)
!2802 = !DILocation(line: 2660, column: 9, scope: !2799)
!2803 = !DILocation(line: 2660, column: 14, scope: !2799)
!2804 = !DILocation(line: 2660, column: 22, scope: !2799)
!2805 = !DILocation(line: 2661, column: 16, scope: !2799)
!2806 = !DILocation(line: 2661, column: 9, scope: !2799)
!2807 = !DILocation(line: 2661, column: 26, scope: !2799)
!2808 = !DILocation(line: 2661, column: 32, scope: !2799)
!2809 = !DILocation(line: 2662, column: 16, scope: !2799)
!2810 = !DILocation(line: 2662, column: 9, scope: !2799)
!2811 = !DILocation(line: 2662, column: 26, scope: !2799)
!2812 = !DILocation(line: 2659, column: 8, scope: !2813)
!2813 = !DILexicalBlockFile(scope: !2781, file: !70, discriminator: 1)
!2814 = !DILocation(line: 2663, column: 31, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !70, line: 2663, column: 11)
!2816 = distinct !DILexicalBlock(scope: !2799, file: !70, line: 2662, column: 33)
!2817 = !DILocation(line: 2663, column: 11, scope: !2815)
!2818 = !DILocation(line: 2663, column: 11, scope: !2816)
!2819 = !DILocation(line: 2664, column: 19, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2815, file: !70, line: 2663, column: 38)
!2821 = !DILocation(line: 2665, column: 7, scope: !2820)
!2822 = !DILocation(line: 2666, column: 4, scope: !2816)
!2823 = !DILocation(line: 2668, column: 15, scope: !2781)
!2824 = !DILocation(line: 2668, column: 4, scope: !2781)
!2825 = !DILocation(line: 2669, column: 15, scope: !2781)
!2826 = !DILocation(line: 2669, column: 4, scope: !2781)
!2827 = !DILocation(line: 2671, column: 11, scope: !2781)
!2828 = !DILocation(line: 2671, column: 4, scope: !2781)
!2829 = !DILocation(line: 2672, column: 1, scope: !2781)
!2830 = distinct !DISubprogram(name: "Atomic_Read64", scope: !77, file: !77, line: 2143, type: !2831, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!57, !2833}
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64, align: 64)
!2834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2835 = !DILocalVariable(name: "var", arg: 1, scope: !2830, file: !77, line: 2143, type: !2833)
!2836 = !DILocation(line: 2143, column: 36, scope: !2830)
!2837 = !DILocalVariable(name: "value", scope: !2830, file: !77, line: 2146, type: !57)
!2838 = !DILocation(line: 2146, column: 11, scope: !2830)
!2839 = !DILocation(line: 2160, column: 14, scope: !2830)
!2840 = !DILocation(line: 2160, column: 19, scope: !2830)
!2841 = !DILocation(line: 2157, column: 4, scope: !2830)
!2842 = !{i32 585190}
!2843 = !DILocation(line: 2213, column: 11, scope: !2830)
!2844 = !DILocation(line: 2213, column: 4, scope: !2830)
!2845 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite64", scope: !77, file: !77, line: 1190, type: !2846, isLocal: true, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!57, !2848, !57, !57}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!2849 = !DILocalVariable(name: "var", arg: 1, scope: !2845, file: !77, line: 1190, type: !2848)
!2850 = !DILocation(line: 1190, column: 42, scope: !2845)
!2851 = !DILocalVariable(name: "oldVal", arg: 2, scope: !2845, file: !77, line: 1191, type: !57)
!2852 = !DILocation(line: 1191, column: 34, scope: !2845)
!2853 = !DILocalVariable(name: "newVal", arg: 3, scope: !2845, file: !77, line: 1192, type: !57)
!2854 = !DILocation(line: 1192, column: 34, scope: !2845)
!2855 = !DILocalVariable(name: "val", scope: !2845, file: !77, line: 1240, type: !57)
!2856 = !DILocation(line: 1240, column: 11, scope: !2845)
!2857 = !DILocation(line: 1246, column: 15, scope: !2845)
!2858 = !DILocation(line: 1246, column: 20, scope: !2845)
!2859 = !DILocation(line: 1247, column: 14, scope: !2845)
!2860 = !DILocation(line: 1248, column: 14, scope: !2845)
!2861 = !DILocation(line: 1243, column: 4, scope: !2845)
!2862 = !{i32 577632}
!2863 = !DILocation(line: 1251, column: 11, scope: !2845)
!2864 = !DILocation(line: 1251, column: 4, scope: !2845)
!2865 = distinct !DISubprogram(name: "UnicodeEndsWith", scope: !751, file: !751, line: 292, type: !1211, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2866 = !DILocalVariable(name: "str", arg: 1, scope: !2865, file: !751, line: 292, type: !73)
!2867 = !DILocation(line: 292, column: 29, scope: !2865)
!2868 = !DILocalVariable(name: "suffix", arg: 2, scope: !2865, file: !751, line: 293, type: !73)
!2869 = !DILocation(line: 293, column: 29, scope: !2865)
!2870 = !DILocalVariable(name: "ignoreCase", arg: 3, scope: !2865, file: !751, line: 294, type: !87)
!2871 = !DILocation(line: 294, column: 22, scope: !2865)
!2872 = !DILocalVariable(name: "strLength", scope: !2865, file: !751, line: 296, type: !1670)
!2873 = !DILocation(line: 296, column: 17, scope: !2865)
!2874 = !DILocation(line: 296, column: 56, scope: !2865)
!2875 = !DILocation(line: 296, column: 29, scope: !2865)
!2876 = !DILocalVariable(name: "suffixLength", scope: !2865, file: !751, line: 297, type: !1670)
!2877 = !DILocation(line: 297, column: 17, scope: !2865)
!2878 = !DILocation(line: 297, column: 59, scope: !2865)
!2879 = !DILocation(line: 297, column: 32, scope: !2865)
!2880 = !DILocalVariable(name: "offset", scope: !2865, file: !751, line: 298, type: !1670)
!2881 = !DILocation(line: 298, column: 17, scope: !2865)
!2882 = !DILocation(line: 298, column: 26, scope: !2865)
!2883 = !DILocation(line: 298, column: 38, scope: !2865)
!2884 = !DILocation(line: 298, column: 36, scope: !2865)
!2885 = !DILocation(line: 300, column: 8, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2865, file: !751, line: 300, column: 8)
!2887 = !DILocation(line: 300, column: 23, scope: !2886)
!2888 = !DILocation(line: 300, column: 21, scope: !2886)
!2889 = !DILocation(line: 300, column: 8, scope: !2865)
!2890 = !DILocation(line: 301, column: 7, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2886, file: !751, line: 300, column: 34)
!2892 = !DILocation(line: 304, column: 32, scope: !2865)
!2893 = !DILocation(line: 305, column: 32, scope: !2865)
!2894 = !DILocation(line: 306, column: 32, scope: !2865)
!2895 = !DILocation(line: 307, column: 32, scope: !2865)
!2896 = !DILocation(line: 309, column: 32, scope: !2865)
!2897 = !DILocation(line: 310, column: 32, scope: !2865)
!2898 = !DILocation(line: 304, column: 11, scope: !2865)
!2899 = !DILocation(line: 310, column: 44, scope: !2865)
!2900 = !DILocation(line: 304, column: 4, scope: !2865)
!2901 = !DILocation(line: 311, column: 1, scope: !2865)
!2902 = distinct !DISubprogram(name: "Util_FreeList", scope: !761, file: !761, line: 335, type: !2903, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !59, !764}
!2905 = !DILocalVariable(name: "list", arg: 1, scope: !2902, file: !761, line: 335, type: !59)
!2906 = !DILocation(line: 335, column: 22, scope: !2902)
!2907 = !DILocalVariable(name: "length", arg: 2, scope: !2902, file: !761, line: 336, type: !764)
!2908 = !DILocation(line: 336, column: 23, scope: !2902)
!2909 = !DILocalVariable(name: "err", scope: !2902, file: !761, line: 339, type: !47)
!2910 = !DILocation(line: 339, column: 8, scope: !2902)
!2911 = !DILocation(line: 341, column: 8, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2902, file: !761, line: 341, column: 8)
!2913 = !DILocation(line: 341, column: 13, scope: !2912)
!2914 = !DILocation(line: 341, column: 8, scope: !2902)
!2915 = !DILocation(line: 343, column: 7, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2912, file: !761, line: 341, column: 21)
!2917 = !DILocation(line: 346, column: 11, scope: !2902)
!2918 = !DILocation(line: 346, column: 10, scope: !2902)
!2919 = !DILocation(line: 346, column: 8, scope: !2902)
!2920 = !DILocation(line: 348, column: 8, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2902, file: !761, line: 348, column: 8)
!2922 = !DILocation(line: 348, column: 15, scope: !2921)
!2923 = !DILocation(line: 348, column: 8, scope: !2902)
!2924 = !DILocalVariable(name: "i", scope: !2925, file: !761, line: 349, type: !764)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !761, line: 348, column: 21)
!2926 = !DILocation(line: 349, column: 15, scope: !2925)
!2927 = !DILocation(line: 351, column: 14, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2925, file: !761, line: 351, column: 7)
!2929 = !DILocation(line: 351, column: 12, scope: !2928)
!2930 = !DILocation(line: 351, column: 19, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !2932, file: !761, discriminator: 1)
!2932 = distinct !DILexicalBlock(scope: !2928, file: !761, line: 351, column: 7)
!2933 = !DILocation(line: 351, column: 23, scope: !2931)
!2934 = !DILocation(line: 351, column: 21, scope: !2931)
!2935 = !DILocation(line: 351, column: 7, scope: !2931)
!2936 = !DILocation(line: 352, column: 20, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2932, file: !761, line: 351, column: 36)
!2938 = !DILocation(line: 352, column: 15, scope: !2937)
!2939 = !DILocation(line: 352, column: 10, scope: !2937)
!2940 = !DILocation(line: 354, column: 7, scope: !2937)
!2941 = !DILocation(line: 351, column: 32, scope: !2942)
!2942 = !DILexicalBlockFile(scope: !2932, file: !761, discriminator: 2)
!2943 = !DILocation(line: 351, column: 7, scope: !2942)
!2944 = distinct !{!2944, !2945}
!2945 = !DILocation(line: 351, column: 7, scope: !2925)
!2946 = !DILocation(line: 355, column: 4, scope: !2925)
!2947 = !DILocalVariable(name: "s", scope: !2948, file: !761, line: 356, type: !59)
!2948 = distinct !DILexicalBlock(scope: !2921, file: !761, line: 355, column: 11)
!2949 = !DILocation(line: 356, column: 14, scope: !2948)
!2950 = !DILocation(line: 358, column: 16, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2948, file: !761, line: 358, column: 7)
!2952 = !DILocation(line: 358, column: 14, scope: !2951)
!2953 = !DILocation(line: 358, column: 12, scope: !2951)
!2954 = !DILocation(line: 358, column: 23, scope: !2955)
!2955 = !DILexicalBlockFile(scope: !2956, file: !761, discriminator: 1)
!2956 = distinct !DILexicalBlock(scope: !2951, file: !761, line: 358, column: 7)
!2957 = !DILocation(line: 358, column: 22, scope: !2955)
!2958 = !DILocation(line: 358, column: 25, scope: !2955)
!2959 = !DILocation(line: 358, column: 7, scope: !2955)
!2960 = !DILocation(line: 359, column: 16, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2956, file: !761, line: 358, column: 38)
!2962 = !DILocation(line: 359, column: 15, scope: !2961)
!2963 = !DILocation(line: 359, column: 10, scope: !2961)
!2964 = !DILocation(line: 361, column: 7, scope: !2961)
!2965 = !DILocation(line: 358, column: 34, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !2956, file: !761, discriminator: 2)
!2967 = !DILocation(line: 358, column: 7, scope: !2966)
!2968 = distinct !{!2968, !2969}
!2969 = !DILocation(line: 358, column: 7, scope: !2948)
!2970 = !DILocation(line: 363, column: 9, scope: !2902)
!2971 = !DILocation(line: 363, column: 4, scope: !2902)
!2972 = !DILocation(line: 364, column: 11, scope: !2902)
!2973 = !DILocation(line: 364, column: 5, scope: !2902)
!2974 = !DILocation(line: 364, column: 9, scope: !2902)
!2975 = !DILocation(line: 365, column: 1, scope: !2902)
!2976 = !DILocation(line: 365, column: 1, scope: !2977)
!2977 = !DILexicalBlockFile(scope: !2902, file: !761, discriminator: 1)
!2978 = distinct !DISubprogram(name: "Unicode_Append", scope: !751, file: !751, line: 159, type: !2979, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!65, !73, !73}
!2981 = !DILocalVariable(name: "destination", arg: 1, scope: !2978, file: !751, line: 159, type: !73)
!2982 = !DILocation(line: 159, column: 28, scope: !2978)
!2983 = !DILocalVariable(name: "source", arg: 2, scope: !2978, file: !751, line: 160, type: !73)
!2984 = !DILocation(line: 160, column: 28, scope: !2978)
!2985 = !DILocation(line: 162, column: 32, scope: !2978)
!2986 = !DILocation(line: 165, column: 32, scope: !2978)
!2987 = !DILocation(line: 162, column: 11, scope: !2978)
!2988 = !DILocation(line: 162, column: 4, scope: !2978)
!2989 = distinct !DISubprogram(name: "FileNumberCompare", scope: !70, file: !70, line: 2391, type: !2990, isLocal: true, isDefinition: true, scopeLine: 2393, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!47, !492, !492}
!2992 = !DILocalVariable(name: "a", arg: 1, scope: !2989, file: !70, line: 2391, type: !492)
!2993 = !DILocation(line: 2391, column: 31, scope: !2989)
!2994 = !DILocalVariable(name: "b", arg: 2, scope: !2989, file: !70, line: 2392, type: !492)
!2995 = !DILocation(line: 2392, column: 31, scope: !2989)
!2996 = !DILocation(line: 2394, column: 23, scope: !2989)
!2997 = !DILocation(line: 2394, column: 12, scope: !2989)
!2998 = !DILocation(line: 2394, column: 11, scope: !2989)
!2999 = !DILocation(line: 2394, column: 39, scope: !2989)
!3000 = !DILocation(line: 2394, column: 28, scope: !2989)
!3001 = !DILocation(line: 2394, column: 27, scope: !2989)
!3002 = !DILocation(line: 2394, column: 25, scope: !2989)
!3003 = !DILocation(line: 2394, column: 4, scope: !2989)
