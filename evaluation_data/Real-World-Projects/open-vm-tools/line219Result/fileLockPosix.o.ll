; ModuleID = './fileLockPosix.o.i'
source_filename = "./fileLockPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MsgList = type { %struct.MsgList*, i8*, i8*, %struct.MsgFmt_Arg*, i32 }
%struct.MsgFmt_Arg = type { i32, i32, %union.anon, %struct.anon, %union.anon.0 }
%union.anon = type { i64 }
%struct.anon = type { i32, i32 }
%union.anon.0 = type { i8* }
%struct.FileLockToken = type opaque
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }

@.str = private unnamed_addr constant [11 x i8] c"%s/LCK..%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/var/lock\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s/LTMP..%s.t%05d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%d %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fileLockPosix.c\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"FILE: Cannot remove lock file %s (%s).\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"FILE:A file locking error (%d) has occurred: %s.\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"FILE: %s parse error on '%s'. Assuming valid.\0A\00", align 1
@__FUNCTION__.FileLockValidExecutionID = private unnamed_addr constant [25 x i8] c"FileLockValidExecutionID\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"FILE: Failed to create new lock file %s (%s).\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"FILE: Failed to write to new lock file %s (%s).\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"FILE: Failed to remove temporary lock file %s (%s).\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"FILE: Bad statfs using %s (%s).\0A\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"FILE: Unknown filesystem 0x%x. Using non-linking locking.\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"FILE: Failed to open existing lock file %s (%s).\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"FILE: Failed to read line from lock file %s (%s).\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%d %999s\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"FILE: Badly formatted lock file %s.\0A\00", align 1
@.str.19 = private unnamed_addr constant [86 x i8] c"FILE: Found a previous instance of lock file '%s'. It will be removed automatically.\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"FILE: Failed to remove stale lock file %s (%s).\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"/proc/%d/stat\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%s-%s%s\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%d-0\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%d-%lu\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FileLock_LockDevice(i8*) #0 !dbg !20 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1000 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1000 x i8], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !29, metadata !30), !dbg !31
  call void @llvm.dbg.declare(metadata i8** %3, metadata !32, metadata !30), !dbg !33
  call void @llvm.dbg.declare(metadata [1000 x i8]* %4, metadata !34, metadata !30), !dbg !38
  call void @llvm.dbg.declare(metadata i8** %5, metadata !39, metadata !30), !dbg !41
  call void @llvm.dbg.declare(metadata i8** %6, metadata !42, metadata !30), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %7, metadata !44, metadata !30), !dbg !45
  store i32 -1, i32* %7, align 4, !dbg !45
  %10 = load i8*, i8** %2, align 8, !dbg !46
  %11 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* %10), !dbg !47
  store i8* %11, i8** %5, align 8, !dbg !48
  %12 = load i8*, i8** %2, align 8, !dbg !49
  %13 = call i32 @getpid() #8, !dbg !50
  %14 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* %12, i32 %13), !dbg !51
  store i8* %14, i8** %6, align 8, !dbg !52
  %15 = call i8* @FileLockGetMachineID(), !dbg !53
  store i8* %15, i8** %3, align 8, !dbg !54
  %16 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i32 0, i32 0, !dbg !55
  %17 = call i32 @getpid() #8, !dbg !56
  %18 = load i8*, i8** %3, align 8, !dbg !57
  %19 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %16, i64 1000, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %17, i8* %18), !dbg !58
  br label %20, !dbg !59

; <label>:20:                                     ; preds = %50, %31, %1
  %21 = load i8*, i8** %5, align 8, !dbg !60
  %22 = load i8*, i8** %6, align 8, !dbg !62
  %23 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i32 0, i32 0, !dbg !63
  %24 = call i32 @FileLockCreateLockFile(i8* %21, i8* %22, i8* %23), !dbg !64
  store i32 %24, i32* %7, align 4, !dbg !65
  %25 = icmp eq i32 %24, 0, !dbg !66
  br i1 %25, label %26, label %51, !dbg !67

; <label>:26:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %8, metadata !68, metadata !30), !dbg !70
  call void @llvm.dbg.declare(metadata [1000 x i8]* %9, metadata !71, metadata !30), !dbg !72
  %27 = load i8*, i8** %5, align 8, !dbg !73
  %28 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i32 0, i32 0, !dbg !74
  %29 = call i32 @GetLockFileValues(i8* %27, i32* %8, i8* %28), !dbg !75
  switch i32 %29, label %33 [
    i32 1, label %30
    i32 0, label %31
    i32 -1, label %32
  ], !dbg !76

; <label>:30:                                     ; preds = %26
  br label %34, !dbg !77

; <label>:31:                                     ; preds = %26
  br label %20, !dbg !79, !llvm.loop !80

; <label>:32:                                     ; preds = %26
  store i32 -1, i32* %7, align 4, !dbg !81
  br label %52, !dbg !82

; <label>:33:                                     ; preds = %26
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 498) #9, !dbg !83
  unreachable, !dbg !83

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %3, align 8, !dbg !84
  %36 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i32 0, i32 0, !dbg !86
  %37 = call i32 @strcmp(i8* %35, i8* %36) #10, !dbg !87
  %38 = icmp ne i32 %37, 0, !dbg !88
  br i1 %38, label %39, label %40, !dbg !89

; <label>:39:                                     ; preds = %34
  store i32 0, i32* %7, align 4, !dbg !90
  br label %52, !dbg !92

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %8, align 4, !dbg !93
  %42 = call signext i8 @FileLockIsValidProcess(i32 %41), !dbg !95
  %43 = icmp ne i8 %42, 0, !dbg !95
  br i1 %43, label %44, label %45, !dbg !96

; <label>:44:                                     ; preds = %40
  store i32 0, i32* %7, align 4, !dbg !97
  br label %52, !dbg !99

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %5, align 8, !dbg !100
  %47 = call signext i8 @RemoveStaleLockFile(i8* %46), !dbg !102
  %48 = icmp ne i8 %47, 0, !dbg !102
  br i1 %48, label %50, label %49, !dbg !103

; <label>:49:                                     ; preds = %45
  store i32 -1, i32* %7, align 4, !dbg !104
  br label %52, !dbg !106

; <label>:50:                                     ; preds = %45
  br label %20, !dbg !107, !llvm.loop !80

; <label>:51:                                     ; preds = %20
  br label %52, !dbg !109

; <label>:52:                                     ; preds = %51, %49, %44, %39, %32
  %53 = load i8*, i8** %5, align 8, !dbg !111
  call void @Posix_Free(i8* %53), !dbg !112
  %54 = load i8*, i8** %6, align 8, !dbg !113
  call void @Posix_Free(i8* %54), !dbg !114
  %55 = load i32, i32* %7, align 4, !dbg !115
  ret i32 %55, !dbg !116
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @getpid() #3

declare i8* @FileLockGetMachineID() #2

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @FileLockCreateLockFile(i8*, i8*, i8*) #0 !dbg !117 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !120, metadata !30), !dbg !121
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !122, metadata !30), !dbg !123
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !124, metadata !30), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %8, metadata !126, metadata !30), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %9, metadata !128, metadata !30), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %10, metadata !130, metadata !30), !dbg !131
  store i32 1, i32* %10, align 4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %11, metadata !132, metadata !30), !dbg !133
  call void @llvm.dbg.declare(metadata i8* %12, metadata !134, metadata !30), !dbg !137
  %14 = load i8*, i8** %5, align 8, !dbg !138
  %15 = call signext i8 @IsLinkingAvailable(i8* %14), !dbg !139
  store i8 %15, i8* %12, align 1, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %13, metadata !140, metadata !30), !dbg !145
  %16 = load i8, i8* %12, align 1, !dbg !146
  %17 = icmp ne i8 %16, 0, !dbg !146
  br i1 %17, label %18, label %35, !dbg !148

; <label>:18:                                     ; preds = %3
  %19 = call i32 @Id_BeginSuperUser(), !dbg !149
  store i32 %19, i32* %13, align 4, !dbg !151
  %20 = load i8*, i8** %6, align 8, !dbg !152
  %21 = call i32 @creat64(i8* %20, i32 292), !dbg !153
  store i32 %21, i32* %9, align 4, !dbg !154
  %22 = call i32* @__errno_location() #1, !dbg !155
  %23 = load i32, i32* %22, align 4, !dbg !156
  store i32 %23, i32* %11, align 4, !dbg !157
  %24 = load i32, i32* %13, align 4, !dbg !158
  call void @Id_EndSuperUser(i32 %24), !dbg !159
  %25 = load i32, i32* %9, align 4, !dbg !160
  %26 = icmp eq i32 %25, -1, !dbg !162
  br i1 %26, label %27, label %34, !dbg !163

; <label>:27:                                     ; preds = %18
  %28 = load i8*, i8** %6, align 8, !dbg !164
  %29 = load i32, i32* %11, align 4, !dbg !166
  %30 = call i8* @Err_Errno2String(i32 %29), !dbg !167
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0), i8* %28, i8* %30), !dbg !168
  %31 = load i32, i32* %11, align 4, !dbg !169
  %32 = icmp eq i32 %31, 17, !dbg !170
  %33 = select i1 %32, i32 0, i32 -1, !dbg !171
  store i32 %33, i32* %4, align 4, !dbg !172
  br label %107, !dbg !172

; <label>:34:                                     ; preds = %18
  br label %52, !dbg !173

; <label>:35:                                     ; preds = %3
  %36 = call i32 @Id_BeginSuperUser(), !dbg !174
  store i32 %36, i32* %13, align 4, !dbg !176
  %37 = load i8*, i8** %5, align 8, !dbg !177
  %38 = call i32 (i8*, i32, ...) @Posix_Open(i8* %37, i32 193, i32 420), !dbg !178
  store i32 %38, i32* %9, align 4, !dbg !179
  %39 = call i32* @__errno_location() #1, !dbg !180
  %40 = load i32, i32* %39, align 4, !dbg !181
  store i32 %40, i32* %11, align 4, !dbg !182
  %41 = load i32, i32* %13, align 4, !dbg !183
  call void @Id_EndSuperUser(i32 %41), !dbg !184
  %42 = load i32, i32* %9, align 4, !dbg !185
  %43 = icmp eq i32 %42, -1, !dbg !187
  br i1 %43, label %44, label %51, !dbg !188

; <label>:44:                                     ; preds = %35
  %45 = load i8*, i8** %5, align 8, !dbg !189
  %46 = load i32, i32* %11, align 4, !dbg !191
  %47 = call i8* @Err_Errno2String(i32 %46), !dbg !192
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0), i8* %45, i8* %47), !dbg !193
  %48 = load i32, i32* %11, align 4, !dbg !194
  %49 = icmp eq i32 %48, 17, !dbg !195
  %50 = select i1 %49, i32 0, i32 -1, !dbg !196
  store i32 %50, i32* %4, align 4, !dbg !197
  br label %107, !dbg !197

; <label>:51:                                     ; preds = %35
  br label %52

; <label>:52:                                     ; preds = %51, %34
  %53 = load i32, i32* %9, align 4, !dbg !198
  %54 = load i8*, i8** %7, align 8, !dbg !199
  %55 = load i8*, i8** %7, align 8, !dbg !200
  %56 = call i64 @strlen(i8* %55) #10, !dbg !201
  %57 = call i64 @write(i32 %53, i8* %54, i64 %56), !dbg !202
  %58 = trunc i64 %57 to i32, !dbg !204
  store i32 %58, i32* %8, align 4, !dbg !205
  %59 = call i32* @__errno_location() #1, !dbg !206
  %60 = load i32, i32* %59, align 4, !dbg !207
  store i32 %60, i32* %11, align 4, !dbg !208
  %61 = load i32, i32* %9, align 4, !dbg !209
  %62 = call i32 @close(i32 %61), !dbg !210
  %63 = load i32, i32* %8, align 4, !dbg !211
  %64 = sext i32 %63 to i64, !dbg !211
  %65 = load i8*, i8** %7, align 8, !dbg !213
  %66 = call i64 @strlen(i8* %65) #10, !dbg !214
  %67 = icmp ne i64 %64, %66, !dbg !215
  br i1 %67, label %68, label %72, !dbg !216

; <label>:68:                                     ; preds = %52
  %69 = load i8*, i8** %5, align 8, !dbg !217
  %70 = load i32, i32* %11, align 4, !dbg !219
  %71 = call i8* @Err_Errno2String(i32 %70), !dbg !220
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0), i8* %69, i8* %71), !dbg !221
  store i32 -1, i32* %10, align 4, !dbg !222
  br label %89, !dbg !223

; <label>:72:                                     ; preds = %52
  %73 = call i32 @Id_BeginSuperUser(), !dbg !224
  store i32 %73, i32* %13, align 4, !dbg !225
  %74 = load i8, i8* %12, align 1, !dbg !226
  %75 = sext i8 %74 to i32, !dbg !226
  %76 = icmp ne i32 %75, 0, !dbg !226
  br i1 %76, label %77, label %87, !dbg !228

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %6, align 8, !dbg !229
  %79 = load i8*, i8** %5, align 8, !dbg !231
  %80 = call i32 @link(i8* %78, i8* %79) #8, !dbg !232
  %81 = icmp slt i32 %80, 0, !dbg !233
  br i1 %81, label %82, label %87, !dbg !234

; <label>:82:                                     ; preds = %77
  %83 = call i32* @__errno_location() #1, !dbg !235
  %84 = load i32, i32* %83, align 4, !dbg !237
  %85 = icmp eq i32 %84, 17, !dbg !238
  %86 = select i1 %85, i32 0, i32 -1, !dbg !239
  store i32 %86, i32* %10, align 4, !dbg !240
  br label %87, !dbg !241

; <label>:87:                                     ; preds = %82, %77, %72
  %88 = load i32, i32* %13, align 4, !dbg !242
  call void @Id_EndSuperUser(i32 %88), !dbg !243
  br label %89, !dbg !243

; <label>:89:                                     ; preds = %87, %68
  %90 = load i8, i8* %12, align 1, !dbg !244
  %91 = icmp ne i8 %90, 0, !dbg !244
  br i1 %91, label %92, label %105, !dbg !246

; <label>:92:                                     ; preds = %89
  %93 = call i32 @Id_BeginSuperUser(), !dbg !247
  store i32 %93, i32* %13, align 4, !dbg !249
  %94 = load i8*, i8** %6, align 8, !dbg !250
  %95 = call i32 @unlink(i8* %94) #8, !dbg !251
  store i32 %95, i32* %8, align 4, !dbg !252
  %96 = load i32, i32* %13, align 4, !dbg !253
  call void @Id_EndSuperUser(i32 %96), !dbg !254
  %97 = load i32, i32* %8, align 4, !dbg !255
  %98 = icmp slt i32 %97, 0, !dbg !257
  br i1 %98, label %99, label %104, !dbg !258

; <label>:99:                                     ; preds = %92
  %100 = load i8*, i8** %6, align 8, !dbg !259
  %101 = call i32* @__errno_location() #1, !dbg !261
  %102 = load i32, i32* %101, align 4, !dbg !262
  %103 = call i8* @Err_Errno2String(i32 %102), !dbg !263
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i32 0, i32 0), i8* %100, i8* %103), !dbg !265
  br label %104, !dbg !266

; <label>:104:                                    ; preds = %99, %92
  br label %105, !dbg !267

; <label>:105:                                    ; preds = %104, %89
  %106 = load i32, i32* %10, align 4, !dbg !268
  store i32 %106, i32* %4, align 4, !dbg !269
  br label %107, !dbg !269

; <label>:107:                                    ; preds = %105, %44, %27
  %108 = load i32, i32* %4, align 4, !dbg !270
  ret i32 %108, !dbg !270
}

; Function Attrs: nounwind uwtable
define internal i32 @GetLockFileValues(i8*, i32*, i8*) #0 !dbg !271 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca [1000 x i8], align 16
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !275, metadata !30), !dbg !276
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !277, metadata !30), !dbg !278
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !279, metadata !30), !dbg !280
  call void @llvm.dbg.declare(metadata i8** %8, metadata !281, metadata !30), !dbg !282
  call void @llvm.dbg.declare(metadata i32* %9, metadata !283, metadata !30), !dbg !284
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %10, metadata !285, metadata !30), !dbg !344
  call void @llvm.dbg.declare(metadata [1000 x i8]* %11, metadata !345, metadata !30), !dbg !346
  call void @llvm.dbg.declare(metadata i8* %12, metadata !347, metadata !30), !dbg !348
  call void @llvm.dbg.declare(metadata i32* %13, metadata !349, metadata !30), !dbg !350
  call void @llvm.dbg.declare(metadata i32* %14, metadata !351, metadata !30), !dbg !352
  %15 = call i32 @Id_BeginSuperUser(), !dbg !353
  store i32 %15, i32* %13, align 4, !dbg !354
  %16 = load i8*, i8** %5, align 8, !dbg !355
  %17 = call %struct._IO_FILE* @Posix_Fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !dbg !356
  store %struct._IO_FILE* %17, %struct._IO_FILE** %10, align 8, !dbg !357
  %18 = call i32* @__errno_location() #1, !dbg !358
  %19 = load i32, i32* %18, align 4, !dbg !359
  store i32 %19, i32* %9, align 4, !dbg !360
  %20 = load i32, i32* %13, align 4, !dbg !361
  call void @Id_EndSuperUser(i32 %20), !dbg !362
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !363
  %22 = icmp eq %struct._IO_FILE* %21, null, !dbg !365
  br i1 %22, label %23, label %30, !dbg !366

; <label>:23:                                     ; preds = %3
  %24 = load i8*, i8** %5, align 8, !dbg !367
  %25 = load i32, i32* %9, align 4, !dbg !369
  %26 = call i8* @Err_Errno2String(i32 %25), !dbg !370
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0), i8* %24, i8* %26), !dbg !371
  %27 = load i32, i32* %9, align 4, !dbg !372
  %28 = icmp eq i32 %27, 2, !dbg !373
  %29 = select i1 %28, i32 0, i32 -1, !dbg !374
  store i32 %29, i32* %4, align 4, !dbg !375
  br label %65, !dbg !375

; <label>:30:                                     ; preds = %3
  %31 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i32 0, i32 0, !dbg !376
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !377
  %33 = call i8* @fgets(i8* %31, i32 1000, %struct._IO_FILE* %32), !dbg !378
  store i8* %33, i8** %8, align 8, !dbg !379
  %34 = call i32* @__errno_location() #1, !dbg !380
  %35 = load i32, i32* %34, align 4, !dbg !381
  store i32 %35, i32* %9, align 4, !dbg !382
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !383
  %37 = call i32 @fclose(%struct._IO_FILE* %36), !dbg !384
  %38 = load i8*, i8** %8, align 8, !dbg !385
  %39 = icmp eq i8* %38, null, !dbg !387
  br i1 %39, label %40, label %44, !dbg !388

; <label>:40:                                     ; preds = %30
  %41 = load i8*, i8** %5, align 8, !dbg !389
  %42 = load i32, i32* %9, align 4, !dbg !391
  %43 = call i8* @Err_Errno2String(i32 %42), !dbg !392
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i32 0, i32 0), i8* %41, i8* %43), !dbg !393
  store i8 1, i8* %12, align 1, !dbg !394
  br label %54, !dbg !395

; <label>:44:                                     ; preds = %30
  %45 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i32 0, i32 0, !dbg !396
  %46 = load i32*, i32** %6, align 8, !dbg !398
  %47 = load i8*, i8** %7, align 8, !dbg !399
  %48 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32* %46, i8* %47) #8, !dbg !400
  switch i32 %48, label %51 [
    i32 2, label %49
    i32 1, label %50
  ], !dbg !401

; <label>:49:                                     ; preds = %44
  store i8 0, i8* %12, align 1, !dbg !402
  br label %53, !dbg !404

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !405

; <label>:51:                                     ; preds = %44, %50
  %52 = load i8*, i8** %5, align 8, !dbg !407
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0), i8* %52), !dbg !408
  store i8 1, i8* %12, align 1, !dbg !409
  br label %53, !dbg !410

; <label>:53:                                     ; preds = %51, %49
  br label %54

; <label>:54:                                     ; preds = %53, %40
  store i32 1, i32* %14, align 4, !dbg !411
  %55 = load i8, i8* %12, align 1, !dbg !412
  %56 = icmp ne i8 %55, 0, !dbg !412
  br i1 %56, label %57, label %63, !dbg !414

; <label>:57:                                     ; preds = %54
  store i32 0, i32* %14, align 4, !dbg !415
  %58 = load i8*, i8** %5, align 8, !dbg !417
  %59 = call signext i8 @RemoveStaleLockFile(i8* %58), !dbg !419
  %60 = icmp ne i8 %59, 0, !dbg !419
  br i1 %60, label %62, label %61, !dbg !420

; <label>:61:                                     ; preds = %57
  store i32 -1, i32* %14, align 4, !dbg !421
  br label %62, !dbg !423

; <label>:62:                                     ; preds = %61, %57
  br label %63, !dbg !424

; <label>:63:                                     ; preds = %62, %54
  %64 = load i32, i32* %14, align 4, !dbg !425
  store i32 %64, i32* %4, align 4, !dbg !426
  br label %65, !dbg !426

; <label>:65:                                     ; preds = %63, %23
  %66 = load i32, i32* %4, align 4, !dbg !427
  ret i32 %66, !dbg !427
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal signext i8 @FileLockIsValidProcess(i32) #0 !dbg !428 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !431, metadata !30), !dbg !432
  call void @llvm.dbg.declare(metadata i32* %4, metadata !433, metadata !30), !dbg !435
  %5 = load i32, i32* %3, align 4, !dbg !436
  %6 = call i32 @Hostinfo_QueryProcessExistence(i32 %5), !dbg !437
  store i32 %6, i32* %4, align 4, !dbg !435
  %7 = load i32, i32* %4, align 4, !dbg !438
  %8 = icmp eq i32 %7, 2, !dbg !440
  br i1 %8, label %9, label %10, !dbg !441

; <label>:9:                                      ; preds = %1
  store i8 1, i8* %2, align 1, !dbg !442
  br label %15, !dbg !442

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %4, align 4, !dbg !444
  %12 = icmp eq i32 %11, 1, !dbg !445
  %13 = select i1 %12, i32 1, i32 0, !dbg !446
  %14 = trunc i32 %13 to i8, !dbg !446
  store i8 %14, i8* %2, align 1, !dbg !447
  br label %15, !dbg !447

; <label>:15:                                     ; preds = %10, %9
  %16 = load i8, i8* %2, align 1, !dbg !448
  ret i8 %16, !dbg !448
}

; Function Attrs: nounwind uwtable
define internal signext i8 @RemoveStaleLockFile(i8*) #0 !dbg !449 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !452, metadata !30), !dbg !453
  call void @llvm.dbg.declare(metadata i32* %4, metadata !454, metadata !30), !dbg !455
  call void @llvm.dbg.declare(metadata i32* %5, metadata !456, metadata !30), !dbg !457
  call void @llvm.dbg.declare(metadata i32* %6, metadata !458, metadata !30), !dbg !459
  %7 = load i8*, i8** %3, align 8, !dbg !460
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.19, i32 0, i32 0), i8* %7), !dbg !461
  %8 = call i32 @Id_BeginSuperUser(), !dbg !462
  store i32 %8, i32* %4, align 4, !dbg !463
  %9 = load i8*, i8** %3, align 8, !dbg !464
  %10 = call i32 @unlink(i8* %9) #8, !dbg !465
  store i32 %10, i32* %5, align 4, !dbg !466
  %11 = call i32* @__errno_location() #1, !dbg !467
  %12 = load i32, i32* %11, align 4, !dbg !468
  store i32 %12, i32* %6, align 4, !dbg !469
  %13 = load i32, i32* %4, align 4, !dbg !470
  call void @Id_EndSuperUser(i32 %13), !dbg !471
  %14 = load i32, i32* %5, align 4, !dbg !472
  %15 = icmp slt i32 %14, 0, !dbg !474
  br i1 %15, label %16, label %20, !dbg !475

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %3, align 8, !dbg !476
  %18 = load i32, i32* %6, align 4, !dbg !478
  %19 = call i8* @Err_Errno2String(i32 %18), !dbg !479
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i32 0, i32 0), i8* %17, i8* %19), !dbg !480
  store i8 0, i8* %2, align 1, !dbg !481
  br label %21, !dbg !481

; <label>:20:                                     ; preds = %1
  store i8 1, i8* %2, align 1, !dbg !482
  br label %21, !dbg !482

; <label>:21:                                     ; preds = %20, %16
  %22 = load i8, i8* %2, align 1, !dbg !483
  ret i8 %22, !dbg !483
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Posix_Free(i8*) #6 !dbg !484 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !488, metadata !30), !dbg !489
  call void @llvm.dbg.declare(metadata i32* %3, metadata !490, metadata !30), !dbg !491
  %4 = call i32* @__errno_location() #1, !dbg !492
  %5 = load i32, i32* %4, align 4, !dbg !493
  store i32 %5, i32* %3, align 4, !dbg !491
  %6 = load i8*, i8** %2, align 8, !dbg !494
  call void @free(i8* %6) #8, !dbg !495
  %7 = load i32, i32* %3, align 4, !dbg !496
  %8 = call i32* @__errno_location() #1, !dbg !497
  store i32 %7, i32* %8, align 4, !dbg !498
  ret void, !dbg !499
}

; Function Attrs: nounwind uwtable
define signext i8 @FileLock_UnlockDevice(i8*) #0 !dbg !500 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !501, metadata !30), !dbg !502
  call void @llvm.dbg.declare(metadata i32* %4, metadata !503, metadata !30), !dbg !504
  call void @llvm.dbg.declare(metadata i32* %5, metadata !505, metadata !30), !dbg !506
  call void @llvm.dbg.declare(metadata i32* %6, metadata !507, metadata !30), !dbg !508
  call void @llvm.dbg.declare(metadata i8** %7, metadata !509, metadata !30), !dbg !510
  %8 = load i8*, i8** %3, align 8, !dbg !511
  %9 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* %8), !dbg !512
  store i8* %9, i8** %7, align 8, !dbg !513
  %10 = call i32 @Id_BeginSuperUser(), !dbg !514
  store i32 %10, i32* %4, align 4, !dbg !515
  %11 = load i8*, i8** %7, align 8, !dbg !516
  %12 = call i32 @unlink(i8* %11) #8, !dbg !517
  store i32 %12, i32* %5, align 4, !dbg !518
  %13 = call i32* @__errno_location() #1, !dbg !519
  %14 = load i32, i32* %13, align 4, !dbg !520
  store i32 %14, i32* %6, align 4, !dbg !521
  %15 = load i32, i32* %4, align 4, !dbg !522
  call void @Id_EndSuperUser(i32 %15), !dbg !523
  %16 = load i32, i32* %5, align 4, !dbg !524
  %17 = icmp slt i32 %16, 0, !dbg !526
  br i1 %17, label %18, label %23, !dbg !527

; <label>:18:                                     ; preds = %1
  %19 = load i8*, i8** %7, align 8, !dbg !528
  %20 = load i32, i32* %6, align 4, !dbg !530
  %21 = call i8* @Err_Errno2String(i32 %20), !dbg !531
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i8* %19, i8* %21), !dbg !532
  %22 = load i8*, i8** %7, align 8, !dbg !533
  call void @Posix_Free(i8* %22), !dbg !534
  store i8 0, i8* %2, align 1, !dbg !535
  br label %25, !dbg !535

; <label>:23:                                     ; preds = %1
  %24 = load i8*, i8** %7, align 8, !dbg !536
  call void @Posix_Free(i8* %24), !dbg !537
  store i8 1, i8* %2, align 1, !dbg !538
  br label %25, !dbg !538

; <label>:25:                                     ; preds = %23, %18
  %26 = load i8, i8* %2, align 1, !dbg !539
  ret i8 %26, !dbg !539
}

declare i32 @Id_BeginSuperUser() #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

declare void @Id_EndSuperUser(i32) #2

declare void @Log(i8*, ...) #2

declare i8* @Err_Errno2String(i32) #2

; Function Attrs: nounwind uwtable
define void @FileLockAppendMessage(%struct.MsgList**, i32) #0 !dbg !540 {
  %3 = alloca %struct.MsgList**, align 8
  %4 = alloca i32, align 4
  store %struct.MsgList** %0, %struct.MsgList*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MsgList*** %3, metadata !604, metadata !30), !dbg !605
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !606, metadata !30), !dbg !607
  %5 = load i32, i32* %4, align 4, !dbg !608
  %6 = load i32, i32* %4, align 4, !dbg !609
  %7 = call i8* @Err_Errno2String(i32 %6), !dbg !610
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i32 %5, i8* %7), !dbg !611
  ret void, !dbg !612
}

; Function Attrs: nounwind uwtable
define i8* @FileLockGetExecutionID() #0 !dbg !613 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !616, metadata !30), !dbg !617
  %2 = call i32 @getpid() #8, !dbg !618
  %3 = call i8* @FileLockProcessDescriptor(i32 %2), !dbg !619
  store i8* %3, i8** %1, align 8, !dbg !617
  %4 = load i8*, i8** %1, align 8, !dbg !621
  ret i8* %4, !dbg !622
}

; Function Attrs: nounwind uwtable
define internal i8* @FileLockProcessDescriptor(i32) #0 !dbg !623 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [22 x i8*], align 16
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !628, metadata !30), !dbg !629
  call void @llvm.dbg.declare(metadata [64 x i8]* %4, metadata !630, metadata !30), !dbg !634
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !635, metadata !30), !dbg !639
  call void @llvm.dbg.declare(metadata i8** %6, metadata !640, metadata !30), !dbg !641
  store i8* null, i8** %6, align 8, !dbg !641
  %13 = load i32, i32* %3, align 4, !dbg !642
  %14 = call signext i8 @FileLockIsValidProcess(i32 %13), !dbg !644
  %15 = icmp ne i8 %14, 0, !dbg !644
  br i1 %15, label %17, label %16, !dbg !645

; <label>:16:                                     ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !646
  br label %129, !dbg !646

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i32 0, i32 0, !dbg !648
  %19 = load i32, i32* %3, align 4, !dbg !649
  %20 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %18, i64 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i32 %19), !dbg !650
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i32 0, i32 0, !dbg !651
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !653
  %23 = call i32 @FileReadSlashProc(i8* %21, i8* %22, i64 1024), !dbg !654
  %24 = icmp eq i32 %23, 0, !dbg !655
  br i1 %24, label %25, label %120, !dbg !656

; <label>:25:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata i8** %7, metadata !657, metadata !30), !dbg !659
  call void @llvm.dbg.declare(metadata i8** %8, metadata !660, metadata !30), !dbg !661
  call void @llvm.dbg.declare(metadata i8** %9, metadata !662, metadata !30), !dbg !663
  call void @llvm.dbg.declare(metadata i32* %10, metadata !664, metadata !30), !dbg !665
  call void @llvm.dbg.declare(metadata [22 x i8*]* %11, metadata !666, metadata !30), !dbg !670
  call void @llvm.dbg.declare(metadata i8** %12, metadata !671, metadata !30), !dbg !672
  store i8* null, i8** %12, align 8, !dbg !672
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !673
  %27 = call i8* @strchr(i8* %26, i32 40) #10, !dbg !674
  store i8* %27, i8** %7, align 8, !dbg !675
  %28 = load i8*, i8** %7, align 8, !dbg !676
  %29 = icmp eq i8* %28, null, !dbg !678
  br i1 %29, label %40, label %30, !dbg !679

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %7, align 8, !dbg !680
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !682
  %33 = icmp eq i8* %31, %32, !dbg !683
  br i1 %33, label %40, label %34, !dbg !684

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %7, align 8, !dbg !685
  %36 = getelementptr inbounds i8, i8* %35, i64 -1, !dbg !687
  %37 = load i8, i8* %36, align 1, !dbg !688
  %38 = sext i8 %37 to i32, !dbg !688
  %39 = icmp ne i32 %38, 32, !dbg !689
  br i1 %39, label %40, label %41, !dbg !690

; <label>:40:                                     ; preds = %34, %30, %25
  br label %121, !dbg !691

; <label>:41:                                     ; preds = %34
  %42 = load i8*, i8** %7, align 8, !dbg !693
  %43 = getelementptr inbounds i8, i8* %42, i64 -1, !dbg !694
  store i8 0, i8* %43, align 1, !dbg !695
  %44 = load i8*, i8** %7, align 8, !dbg !696
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !697
  %46 = call i8* @strrchr(i8* %45, i32 41) #10, !dbg !698
  store i8* %46, i8** %8, align 8, !dbg !699
  %47 = load i8*, i8** %8, align 8, !dbg !700
  %48 = icmp eq i8* %47, null, !dbg !702
  br i1 %48, label %49, label %50, !dbg !703

; <label>:49:                                     ; preds = %41
  br label %121, !dbg !704

; <label>:50:                                     ; preds = %41
  %51 = load i8*, i8** %8, align 8, !dbg !706
  %52 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !707
  store i8* %52, i8** %9, align 8, !dbg !708
  %53 = load i8*, i8** %9, align 8, !dbg !709
  %54 = load i8, i8* %53, align 1, !dbg !711
  %55 = sext i8 %54 to i32, !dbg !711
  %56 = icmp ne i32 %55, 32, !dbg !712
  br i1 %56, label %57, label %58, !dbg !713

; <label>:57:                                     ; preds = %50
  br label %121, !dbg !714

; <label>:58:                                     ; preds = %50
  %59 = load i8*, i8** %9, align 8, !dbg !716
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !716
  store i8* %60, i8** %9, align 8, !dbg !716
  store i8 0, i8* %59, align 1, !dbg !717
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !718
  %62 = call i8* @strtok_r(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8** %12) #8, !dbg !719
  %63 = getelementptr inbounds [22 x i8*], [22 x i8*]* %11, i64 0, i64 0, !dbg !720
  store i8* %62, i8** %63, align 16, !dbg !721
  %64 = load i8*, i8** %7, align 8, !dbg !722
  %65 = getelementptr inbounds [22 x i8*], [22 x i8*]* %11, i64 0, i64 1, !dbg !723
  store i8* %64, i8** %65, align 8, !dbg !724
  %66 = load i8*, i8** %7, align 8, !dbg !725
  store i8* %66, i8** %8, align 8, !dbg !726
  br label %67, !dbg !727

; <label>:67:                                     ; preds = %71, %58
  %68 = load i8*, i8** %8, align 8, !dbg !728
  %69 = call i8* @strchr(i8* %68, i32 32) #10, !dbg !730
  store i8* %69, i8** %8, align 8, !dbg !731
  %70 = icmp ne i8* %69, null, !dbg !732
  br i1 %70, label %71, label %73, !dbg !733

; <label>:71:                                     ; preds = %67
  %72 = load i8*, i8** %8, align 8, !dbg !734
  store i8 95, i8* %72, align 1, !dbg !736
  br label %67, !dbg !737, !llvm.loop !739

; <label>:73:                                     ; preds = %67
  %74 = load i8*, i8** %7, align 8, !dbg !740
  %75 = call i64 @strlen(i8* %74) #10, !dbg !742
  %76 = icmp ugt i64 %75, 64, !dbg !743
  br i1 %76, label %77, label %82, !dbg !744

; <label>:77:                                     ; preds = %73
  %78 = load i8*, i8** %7, align 8, !dbg !745
  %79 = getelementptr inbounds i8, i8* %78, i64 63, !dbg !745
  store i8 41, i8* %79, align 1, !dbg !747
  %80 = load i8*, i8** %7, align 8, !dbg !748
  %81 = getelementptr inbounds i8, i8* %80, i64 64, !dbg !748
  store i8 0, i8* %81, align 1, !dbg !749
  br label %82, !dbg !750

; <label>:82:                                     ; preds = %77, %73
  store i32 2, i32* %10, align 4, !dbg !751
  br label %83, !dbg !753

; <label>:83:                                     ; preds = %105, %82
  %84 = load i32, i32* %10, align 4, !dbg !754
  %85 = icmp ult i32 %84, 22, !dbg !757
  br i1 %85, label %86, label %108, !dbg !758

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* %10, align 4, !dbg !759
  %88 = icmp eq i32 %87, 2, !dbg !761
  br i1 %88, label %89, label %91, !dbg !762

; <label>:89:                                     ; preds = %86
  %90 = load i8*, i8** %9, align 8, !dbg !763
  br label %92, !dbg !765

; <label>:91:                                     ; preds = %86
  br label %92, !dbg !766

; <label>:92:                                     ; preds = %91, %89
  %93 = phi i8* [ %90, %89 ], [ null, %91 ], !dbg !768
  %94 = call i8* @strtok_r(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8** %12) #8, !dbg !770
  %95 = load i32, i32* %10, align 4, !dbg !771
  %96 = zext i32 %95 to i64, !dbg !772
  %97 = getelementptr inbounds [22 x i8*], [22 x i8*]* %11, i64 0, i64 %96, !dbg !772
  store i8* %94, i8** %97, align 8, !dbg !773
  %98 = load i32, i32* %10, align 4, !dbg !774
  %99 = zext i32 %98 to i64, !dbg !776
  %100 = getelementptr inbounds [22 x i8*], [22 x i8*]* %11, i64 0, i64 %99, !dbg !776
  %101 = load i8*, i8** %100, align 8, !dbg !776
  %102 = icmp eq i8* %101, null, !dbg !777
  br i1 %102, label %103, label %104, !dbg !778

; <label>:103:                                    ; preds = %92
  br label %108, !dbg !779

; <label>:104:                                    ; preds = %92
  br label %105, !dbg !781

; <label>:105:                                    ; preds = %104
  %106 = load i32, i32* %10, align 4, !dbg !782
  %107 = add i32 %106, 1, !dbg !782
  store i32 %107, i32* %10, align 4, !dbg !782
  br label %83, !dbg !784, !llvm.loop !785

; <label>:108:                                    ; preds = %103, %83
  %109 = load i32, i32* %10, align 4, !dbg !787
  %110 = icmp eq i32 %109, 22, !dbg !789
  br i1 %110, label %111, label %119, !dbg !790

; <label>:111:                                    ; preds = %108
  %112 = getelementptr inbounds [22 x i8*], [22 x i8*]* %11, i64 0, i64 0, !dbg !791
  %113 = load i8*, i8** %112, align 16, !dbg !791
  %114 = getelementptr inbounds [22 x i8*], [22 x i8*]* %11, i64 0, i64 21, !dbg !793
  %115 = load i8*, i8** %114, align 8, !dbg !793
  %116 = getelementptr inbounds [22 x i8*], [22 x i8*]* %11, i64 0, i64 1, !dbg !794
  %117 = load i8*, i8** %116, align 8, !dbg !794
  %118 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* %113, i8* %115, i8* %117), !dbg !795
  store i8* %118, i8** %6, align 8, !dbg !796
  br label %119, !dbg !797

; <label>:119:                                    ; preds = %111, %108
  br label %120, !dbg !798

; <label>:120:                                    ; preds = %119, %17
  br label %121, !dbg !799

; <label>:121:                                    ; preds = %120, %57, %49, %40
  %122 = load i8*, i8** %6, align 8, !dbg !801
  %123 = icmp eq i8* %122, null, !dbg !803
  br i1 %123, label %124, label %127, !dbg !804

; <label>:124:                                    ; preds = %121
  %125 = load i32, i32* %3, align 4, !dbg !805
  %126 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 %125), !dbg !807
  store i8* %126, i8** %6, align 8, !dbg !808
  br label %127, !dbg !809

; <label>:127:                                    ; preds = %124, %121
  %128 = load i8*, i8** %6, align 8, !dbg !810
  store i8* %128, i8** %2, align 8, !dbg !811
  br label %129, !dbg !811

; <label>:129:                                    ; preds = %127, %16
  %130 = load i8*, i8** %2, align 8, !dbg !812
  ret i8* %130, !dbg !812
}

; Function Attrs: nounwind uwtable
define signext i8 @FileLockValidExecutionID(i8*) #0 !dbg !813 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !814, metadata !30), !dbg !815
  call void @llvm.dbg.declare(metadata i32* %4, metadata !816, metadata !30), !dbg !817
  call void @llvm.dbg.declare(metadata i32* %5, metadata !818, metadata !30), !dbg !819
  call void @llvm.dbg.declare(metadata i8* %6, metadata !820, metadata !30), !dbg !821
  call void @llvm.dbg.declare(metadata i8* %7, metadata !822, metadata !30), !dbg !823
  call void @llvm.dbg.declare(metadata i8** %8, metadata !824, metadata !30), !dbg !825
  call void @llvm.dbg.declare(metadata i64* %9, metadata !826, metadata !30), !dbg !827
  call void @llvm.dbg.declare(metadata i64* %10, metadata !828, metadata !30), !dbg !829
  %11 = load i8*, i8** %3, align 8, !dbg !830
  %12 = call signext i8 @FileLockParseProcessDescriptor(i8* %11, i32* %4, i64* %9), !dbg !831
  store i8 %12, i8* %6, align 1, !dbg !832
  %13 = load i8, i8* %6, align 1, !dbg !833
  %14 = icmp ne i8 %13, 0, !dbg !833
  br i1 %14, label %17, label %15, !dbg !835

; <label>:15:                                     ; preds = %1
  %16 = load i8*, i8** %3, align 8, !dbg !836
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.FileLockValidExecutionID, i32 0, i32 0), i8* %16), !dbg !838
  store i8 1, i8* %2, align 1, !dbg !839
  br label %38, !dbg !839

; <label>:17:                                     ; preds = %1
  %18 = load i32, i32* %4, align 4, !dbg !840
  %19 = call i8* @FileLockProcessDescriptor(i32 %18), !dbg !841
  store i8* %19, i8** %8, align 8, !dbg !842
  %20 = load i8*, i8** %8, align 8, !dbg !843
  %21 = icmp eq i8* %20, null, !dbg !845
  br i1 %21, label %22, label %23, !dbg !846

; <label>:22:                                     ; preds = %17
  store i8 0, i8* %2, align 1, !dbg !847
  br label %38, !dbg !847

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %8, align 8, !dbg !849
  %25 = call signext i8 @FileLockParseProcessDescriptor(i8* %24, i32* %5, i64* %10), !dbg !850
  store i8 %25, i8* %7, align 1, !dbg !851
  %26 = load i8*, i8** %8, align 8, !dbg !852
  call void @Posix_Free(i8* %26), !dbg !853
  %27 = load i64, i64* %9, align 8, !dbg !854
  %28 = icmp ne i64 %27, 0, !dbg !856
  br i1 %28, label %29, label %37, !dbg !857

; <label>:29:                                     ; preds = %23
  %30 = load i64, i64* %10, align 8, !dbg !858
  %31 = icmp ne i64 %30, 0, !dbg !859
  br i1 %31, label %32, label %37, !dbg !860

; <label>:32:                                     ; preds = %29
  %33 = load i64, i64* %9, align 8, !dbg !861
  %34 = load i64, i64* %10, align 8, !dbg !862
  %35 = icmp ne i64 %33, %34, !dbg !863
  br i1 %35, label %36, label %37, !dbg !864

; <label>:36:                                     ; preds = %32
  store i8 0, i8* %2, align 1, !dbg !866
  br label %38, !dbg !866

; <label>:37:                                     ; preds = %32, %29, %23
  store i8 1, i8* %2, align 1, !dbg !868
  br label %38, !dbg !868

; <label>:38:                                     ; preds = %37, %36, %22, %15
  %39 = load i8, i8* %2, align 1, !dbg !870
  ret i8 %39, !dbg !870
}

; Function Attrs: nounwind uwtable
define internal signext i8 @FileLockParseProcessDescriptor(i8*, i32*, i64*) #0 !dbg !871 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !876, metadata !30), !dbg !877
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !878, metadata !30), !dbg !879
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !880, metadata !30), !dbg !881
  %8 = load i8*, i8** %5, align 8, !dbg !882
  %9 = load i32*, i32** %6, align 8, !dbg !884
  %10 = load i64*, i64** %7, align 8, !dbg !885
  %11 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32* %9, i64* %10) #8, !dbg !886
  %12 = icmp ne i32 %11, 2, !dbg !887
  br i1 %12, label %13, label %22, !dbg !888

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %5, align 8, !dbg !889
  %15 = load i32*, i32** %6, align 8, !dbg !892
  %16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i32* %15) #8, !dbg !893
  %17 = icmp eq i32 %16, 1, !dbg !894
  br i1 %17, label %18, label %20, !dbg !895

; <label>:18:                                     ; preds = %13
  %19 = load i64*, i64** %7, align 8, !dbg !896
  store i64 0, i64* %19, align 8, !dbg !898
  br label %21, !dbg !899

; <label>:20:                                     ; preds = %13
  store i8 0, i8* %4, align 1, !dbg !900
  br label %28, !dbg !900

; <label>:21:                                     ; preds = %18
  br label %22, !dbg !902

; <label>:22:                                     ; preds = %21, %3
  %23 = load i32*, i32** %6, align 8, !dbg !903
  %24 = load i32, i32* %23, align 4, !dbg !904
  %25 = icmp sge i32 %24, 0, !dbg !905
  %26 = zext i1 %25 to i32, !dbg !905
  %27 = trunc i32 %26 to i8, !dbg !904
  store i8 %27, i8* %4, align 1, !dbg !906
  br label %28, !dbg !906

; <label>:28:                                     ; preds = %22, %20
  %29 = load i8, i8* %4, align 1, !dbg !907
  ret i8 %29, !dbg !907
}

declare void @Warning(i8*, ...) #2

; Function Attrs: nounwind uwtable
define %struct.FileLockToken* @FileLock_Lock(i8*, i8 signext, i32, i32*, %struct.MsgList**) #0 !dbg !908 {
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.MsgList**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.FileLockToken*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !913, metadata !30), !dbg !914
  store i8 %1, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !915, metadata !30), !dbg !916
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !917, metadata !30), !dbg !918
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !919, metadata !30), !dbg !920
  store %struct.MsgList** %4, %struct.MsgList*** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.MsgList*** %10, metadata !921, metadata !30), !dbg !922
  call void @llvm.dbg.declare(metadata i32* %11, metadata !923, metadata !30), !dbg !924
  store i32 0, i32* %11, align 4, !dbg !924
  call void @llvm.dbg.declare(metadata i8** %12, metadata !925, metadata !30), !dbg !926
  call void @llvm.dbg.declare(metadata %struct.FileLockToken** %13, metadata !927, metadata !30), !dbg !928
  %15 = load i8*, i8** %6, align 8, !dbg !929
  %16 = call i8* @FileLockNormalizePath(i8* %15), !dbg !930
  store i8* %16, i8** %12, align 8, !dbg !931
  %17 = load i8*, i8** %12, align 8, !dbg !932
  %18 = icmp eq i8* %17, null, !dbg !934
  br i1 %18, label %19, label %20, !dbg !935

; <label>:19:                                     ; preds = %5
  store i32 22, i32* %11, align 4, !dbg !936
  store %struct.FileLockToken* null, %struct.FileLockToken** %13, align 8, !dbg !938
  br label %30, !dbg !939

; <label>:20:                                     ; preds = %5
  %21 = load i8*, i8** %12, align 8, !dbg !940
  %22 = load i8, i8* %7, align 1, !dbg !942
  %23 = icmp ne i8 %22, 0, !dbg !943
  %24 = xor i1 %23, true, !dbg !943
  %25 = zext i1 %24 to i32, !dbg !943
  %26 = trunc i32 %25 to i8, !dbg !943
  %27 = load i32, i32* %8, align 4, !dbg !944
  %28 = call %struct.FileLockToken* @FileLockIntrinsic(i8* %21, i8 signext %26, i32 %27, i32* %11), !dbg !945
  store %struct.FileLockToken* %28, %struct.FileLockToken** %13, align 8, !dbg !946
  %29 = load i8*, i8** %12, align 8, !dbg !947
  call void @Posix_Free(i8* %29), !dbg !948
  br label %30

; <label>:30:                                     ; preds = %20, %19
  %31 = load i32*, i32** %9, align 8, !dbg !949
  %32 = icmp ne i32* %31, null, !dbg !951
  br i1 %32, label %33, label %36, !dbg !952

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %11, align 4, !dbg !953
  %35 = load i32*, i32** %9, align 8, !dbg !955
  store i32 %34, i32* %35, align 4, !dbg !956
  br label %36, !dbg !957

; <label>:36:                                     ; preds = %33, %30
  %37 = load %struct.FileLockToken*, %struct.FileLockToken** %13, align 8, !dbg !958
  %38 = icmp eq %struct.FileLockToken* %37, null, !dbg !960
  br i1 %38, label %39, label %48, !dbg !961

; <label>:39:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata i32* %14, metadata !962, metadata !30), !dbg !964
  %40 = load i32, i32* %11, align 4, !dbg !965
  %41 = icmp eq i32 %40, 0, !dbg !967
  br i1 %41, label %42, label %43, !dbg !968

; <label>:42:                                     ; preds = %39
  store i32 11, i32* %14, align 4, !dbg !969
  br label %45, !dbg !971

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %11, align 4, !dbg !972
  store i32 %44, i32* %14, align 4, !dbg !974
  br label %45

; <label>:45:                                     ; preds = %43, %42
  %46 = load %struct.MsgList**, %struct.MsgList*** %10, align 8, !dbg !975
  %47 = load i32, i32* %14, align 4, !dbg !976
  call void @FileLockAppendMessage(%struct.MsgList** %46, i32 %47), !dbg !977
  br label %48, !dbg !978

; <label>:48:                                     ; preds = %45, %36
  %49 = load %struct.FileLockToken*, %struct.FileLockToken** %13, align 8, !dbg !979
  ret %struct.FileLockToken* %49, !dbg !980
}

; Function Attrs: nounwind uwtable
define internal i8* @FileLockNormalizePath(i8*) #0 !dbg !981 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !984, metadata !30), !dbg !985
  call void @llvm.dbg.declare(metadata i8** %3, metadata !986, metadata !30), !dbg !987
  call void @llvm.dbg.declare(metadata i8** %4, metadata !988, metadata !30), !dbg !989
  store i8* null, i8** %4, align 8, !dbg !989
  call void @llvm.dbg.declare(metadata i8** %5, metadata !990, metadata !30), !dbg !991
  store i8* null, i8** %5, align 8, !dbg !991
  %7 = load i8*, i8** %2, align 8, !dbg !992
  call void @File_GetPathName(i8* %7, i8** %4, i8** %5), !dbg !993
  %8 = load i8*, i8** %4, align 8, !dbg !994
  %9 = load i8, i8* %8, align 1, !dbg !996
  %10 = sext i8 %9 to i32, !dbg !996
  %11 = icmp eq i32 %10, 0, !dbg !997
  br i1 %11, label %12, label %23, !dbg !998

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !999
  %14 = call signext i8 @File_IsFullPath(i8* %13), !dbg !1002
  %15 = icmp ne i8 %14, 0, !dbg !1002
  br i1 %15, label %16, label %19, !dbg !1003

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %5, align 8, !dbg !1004
  %18 = call i8* (i8*, ...) @Unicode_Join(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* %17, i8* null), !dbg !1006
  store i8* %18, i8** %3, align 8, !dbg !1007
  br label %22, !dbg !1008

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** %5, align 8, !dbg !1009
  %21 = call i8* (i8*, ...) @Unicode_Join(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* %20, i8* null), !dbg !1011
  store i8* %21, i8** %3, align 8, !dbg !1012
  br label %22

; <label>:22:                                     ; preds = %19, %16
  br label %36, !dbg !1013

; <label>:23:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1014, metadata !30), !dbg !1016
  %24 = load i8*, i8** %4, align 8, !dbg !1017
  %25 = call i8* @File_FullPath(i8* %24), !dbg !1018
  store i8* %25, i8** %6, align 8, !dbg !1016
  %26 = load i8*, i8** %6, align 8, !dbg !1019
  %27 = icmp eq i8* %26, null, !dbg !1020
  br i1 %27, label %28, label %29, !dbg !1021

; <label>:28:                                     ; preds = %23
  br label %33, !dbg !1022

; <label>:29:                                     ; preds = %23
  %30 = load i8*, i8** %6, align 8, !dbg !1024
  %31 = load i8*, i8** %5, align 8, !dbg !1026
  %32 = call i8* (i8*, ...) @Unicode_Join(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* %31, i8* null), !dbg !1027
  br label %33, !dbg !1028

; <label>:33:                                     ; preds = %29, %28
  %34 = phi i8* [ null, %28 ], [ %32, %29 ], !dbg !1029
  store i8* %34, i8** %3, align 8, !dbg !1031
  %35 = load i8*, i8** %6, align 8, !dbg !1032
  call void @Posix_Free(i8* %35), !dbg !1033
  br label %36

; <label>:36:                                     ; preds = %33, %22
  %37 = load i8*, i8** %4, align 8, !dbg !1034
  call void @Posix_Free(i8* %37), !dbg !1035
  %38 = load i8*, i8** %5, align 8, !dbg !1036
  call void @Posix_Free(i8* %38), !dbg !1037
  %39 = load i8*, i8** %3, align 8, !dbg !1038
  ret i8* %39, !dbg !1039
}

declare %struct.FileLockToken* @FileLockIntrinsic(i8*, i8 signext, i32, i32*) #2

; Function Attrs: nounwind uwtable
define signext i8 @FileLock_IsLocked(i8*, i32*, %struct.MsgList**) #0 !dbg !1040 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.MsgList**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1043, metadata !30), !dbg !1044
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1045, metadata !30), !dbg !1046
  store %struct.MsgList** %2, %struct.MsgList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.MsgList*** %6, metadata !1047, metadata !30), !dbg !1048
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1049, metadata !30), !dbg !1050
  store i32 0, i32* %7, align 4, !dbg !1050
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1051, metadata !30), !dbg !1052
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1053, metadata !30), !dbg !1054
  %10 = load i8*, i8** %4, align 8, !dbg !1055
  %11 = call i8* @FileLockNormalizePath(i8* %10), !dbg !1056
  store i8* %11, i8** %9, align 8, !dbg !1057
  %12 = load i8*, i8** %9, align 8, !dbg !1058
  %13 = icmp eq i8* %12, null, !dbg !1060
  br i1 %13, label %14, label %15, !dbg !1061

; <label>:14:                                     ; preds = %3
  store i32 22, i32* %7, align 4, !dbg !1062
  store i8 0, i8* %8, align 1, !dbg !1064
  br label %19, !dbg !1065

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %9, align 8, !dbg !1066
  %17 = call signext i8 @FileLockIsLocked(i8* %16, i32* %7), !dbg !1068
  store i8 %17, i8* %8, align 1, !dbg !1069
  %18 = load i8*, i8** %9, align 8, !dbg !1070
  call void @Posix_Free(i8* %18), !dbg !1071
  br label %19

; <label>:19:                                     ; preds = %15, %14
  %20 = load i32*, i32** %5, align 8, !dbg !1072
  %21 = icmp ne i32* %20, null, !dbg !1074
  br i1 %21, label %22, label %25, !dbg !1075

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %7, align 4, !dbg !1076
  %24 = load i32*, i32** %5, align 8, !dbg !1078
  store i32 %23, i32* %24, align 4, !dbg !1079
  br label %25, !dbg !1080

; <label>:25:                                     ; preds = %22, %19
  %26 = load i32, i32* %7, align 4, !dbg !1081
  %27 = icmp ne i32 %26, 0, !dbg !1083
  br i1 %27, label %28, label %31, !dbg !1084

; <label>:28:                                     ; preds = %25
  %29 = load %struct.MsgList**, %struct.MsgList*** %6, align 8, !dbg !1085
  %30 = load i32, i32* %7, align 4, !dbg !1087
  call void @FileLockAppendMessage(%struct.MsgList** %29, i32 %30), !dbg !1088
  br label %31, !dbg !1089

; <label>:31:                                     ; preds = %28, %25
  %32 = load i8, i8* %8, align 1, !dbg !1090
  ret i8 %32, !dbg !1091
}

declare signext i8 @FileLockIsLocked(i8*, i32*) #2

; Function Attrs: nounwind uwtable
define signext i8 @FileLock_Unlock(%struct.FileLockToken*, i32*, %struct.MsgList**) #0 !dbg !1092 {
  %4 = alloca %struct.FileLockToken*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.MsgList**, align 8
  %7 = alloca i32, align 4
  store %struct.FileLockToken* %0, %struct.FileLockToken** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.FileLockToken** %4, metadata !1097, metadata !30), !dbg !1098
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1099, metadata !30), !dbg !1100
  store %struct.MsgList** %2, %struct.MsgList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.MsgList*** %6, metadata !1101, metadata !30), !dbg !1102
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1103, metadata !30), !dbg !1104
  %8 = load %struct.FileLockToken*, %struct.FileLockToken** %4, align 8, !dbg !1105
  %9 = call i32 @FileUnlockIntrinsic(%struct.FileLockToken* %8), !dbg !1106
  store i32 %9, i32* %7, align 4, !dbg !1107
  %10 = load i32*, i32** %5, align 8, !dbg !1108
  %11 = icmp ne i32* %10, null, !dbg !1110
  br i1 %11, label %12, label %15, !dbg !1111

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %7, align 4, !dbg !1112
  %14 = load i32*, i32** %5, align 8, !dbg !1114
  store i32 %13, i32* %14, align 4, !dbg !1115
  br label %15, !dbg !1116

; <label>:15:                                     ; preds = %12, %3
  %16 = load i32, i32* %7, align 4, !dbg !1117
  %17 = icmp ne i32 %16, 0, !dbg !1119
  br i1 %17, label %18, label %21, !dbg !1120

; <label>:18:                                     ; preds = %15
  %19 = load %struct.MsgList**, %struct.MsgList*** %6, align 8, !dbg !1121
  %20 = load i32, i32* %7, align 4, !dbg !1123
  call void @FileLockAppendMessage(%struct.MsgList** %19, i32 %20), !dbg !1124
  br label %21, !dbg !1125

; <label>:21:                                     ; preds = %18, %15
  %22 = load i32, i32* %7, align 4, !dbg !1126
  %23 = icmp eq i32 %22, 0, !dbg !1127
  %24 = zext i1 %23 to i32, !dbg !1127
  %25 = trunc i32 %24 to i8, !dbg !1128
  ret i8 %25, !dbg !1129
}

declare i32 @FileUnlockIntrinsic(%struct.FileLockToken*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @IsLinkingAvailable(i8*) #0 !dbg !1130 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca %struct.statfs, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1131, metadata !30), !dbg !1132
  call void @llvm.dbg.declare(metadata %struct.statfs* %4, metadata !1133, metadata !30), !dbg !1162
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1163, metadata !30), !dbg !1164
  %6 = call signext i8 @HostType_OSIsVMK(), !dbg !1165
  %7 = icmp ne i8 %6, 0, !dbg !1165
  br i1 %7, label %8, label %9, !dbg !1167

; <label>:8:                                      ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !1168
  br label %28, !dbg !1168

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1170
  %11 = call i32 @statfs64(i8* %10, %struct.statfs* %4) #8, !dbg !1171
  store i32 %11, i32* %5, align 4, !dbg !1172
  %12 = load i32, i32* %5, align 4, !dbg !1173
  %13 = icmp eq i32 %12, -1, !dbg !1175
  br i1 %13, label %14, label %19, !dbg !1176

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !1177
  %16 = call i32* @__errno_location() #1, !dbg !1179
  %17 = load i32, i32* %16, align 4, !dbg !1180
  %18 = call i8* @Err_Errno2String(i32 %17), !dbg !1181
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0), i8* %15, i8* %18), !dbg !1183
  store i8 0, i8* %2, align 1, !dbg !1184
  br label %28, !dbg !1184

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds %struct.statfs, %struct.statfs* %4, i32 0, i32 0, !dbg !1185
  %21 = load i64, i64* %20, align 8, !dbg !1185
  switch i64 %21, label %24 [
    i64 44543, label %22
    i64 4989, label %22
    i64 61265, label %22
    i64 61267, label %22
    i64 18475, label %22
    i64 26985, label %22
    i64 19920820, label %22
    i64 19920821, label %22
    i64 19920822, label %22
    i64 19920823, label %22
    i64 72020, label %22
    i64 1382369651, label %22
    i64 1481003842, label %22
    i64 16914836, label %22
    i64 827541066, label %22
    i64 20859, label %23
    i64 19780, label %23
  ], !dbg !1186

; <label>:22:                                     ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  store i8 1, i8* %2, align 1, !dbg !1187
  br label %28, !dbg !1187

; <label>:23:                                     ; preds = %19, %19
  store i8 0, i8* %2, align 1, !dbg !1189
  br label %28, !dbg !1189

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.statfs, %struct.statfs* %4, i32 0, i32 0, !dbg !1190
  %26 = load i64, i64* %25, align 8, !dbg !1190
  %27 = trunc i64 %26 to i32, !dbg !1191
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i32 0, i32 0), i32 %27), !dbg !1192
  store i8 0, i8* %2, align 1, !dbg !1193
  br label %28, !dbg !1193

; <label>:28:                                     ; preds = %24, %23, %22, %14, %8
  %29 = load i8, i8* %2, align 1, !dbg !1194
  ret i8 %29, !dbg !1194
}

declare i32 @creat64(i8*, i32) #2

declare i32 @Posix_Open(i8*, i32, ...) #2

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) #3

declare signext i8 @HostType_OSIsVMK() #2

; Function Attrs: nounwind
declare i32 @statfs64(i8*, %struct.statfs*) #3

declare %struct._IO_FILE* @Posix_Fopen(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i32 @Hostinfo_QueryProcessExistence(i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @FileReadSlashProc(i8*, i8*, i64) #0 !dbg !1195 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1198, metadata !30), !dbg !1199
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1200, metadata !30), !dbg !1201
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1202, metadata !30), !dbg !1203
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1204, metadata !30), !dbg !1205
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1206, metadata !30), !dbg !1207
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1208, metadata !30), !dbg !1209
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1210, metadata !30), !dbg !1211
  %12 = load i8*, i8** %5, align 8, !dbg !1212
  %13 = call i32 (i8*, i32, ...) @Posix_Open(i8* %12, i32 0, i32 0), !dbg !1213
  store i32 %13, i32* %8, align 4, !dbg !1214
  %14 = load i32, i32* %8, align 4, !dbg !1215
  %15 = icmp eq i32 %14, -1, !dbg !1217
  br i1 %15, label %16, label %19, !dbg !1218

; <label>:16:                                     ; preds = %3
  %17 = call i32* @__errno_location() #1, !dbg !1219
  %18 = load i32, i32* %17, align 4, !dbg !1221
  store i32 %18, i32* %4, align 4, !dbg !1222
  br label %44, !dbg !1222

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %8, align 4, !dbg !1223
  %21 = load i8*, i8** %6, align 8, !dbg !1224
  %22 = load i64, i64* %7, align 8, !dbg !1225
  %23 = sub i64 %22, 1, !dbg !1226
  %24 = call i64 @read(i32 %20, i8* %21, i64 %23), !dbg !1227
  store i64 %24, i64* %11, align 8, !dbg !1228
  %25 = call i32* @__errno_location() #1, !dbg !1229
  %26 = load i32, i32* %25, align 4, !dbg !1230
  store i32 %26, i32* %9, align 4, !dbg !1231
  %27 = load i32, i32* %8, align 4, !dbg !1232
  %28 = call i32 @close(i32 %27), !dbg !1233
  %29 = load i64, i64* %11, align 8, !dbg !1234
  %30 = icmp eq i64 %29, -1, !dbg !1236
  br i1 %30, label %31, label %33, !dbg !1237

; <label>:31:                                     ; preds = %19
  %32 = load i32, i32* %9, align 4, !dbg !1238
  store i32 %32, i32* %4, align 4, !dbg !1240
  br label %44, !dbg !1240

; <label>:33:                                     ; preds = %19
  %34 = load i64, i64* %11, align 8, !dbg !1241
  %35 = load i8*, i8** %6, align 8, !dbg !1242
  %36 = getelementptr inbounds i8, i8* %35, i64 %34, !dbg !1242
  store i8 0, i8* %36, align 1, !dbg !1243
  %37 = load i8*, i8** %6, align 8, !dbg !1244
  %38 = call i8* @strchr(i8* %37, i32 10) #10, !dbg !1245
  store i8* %38, i8** %10, align 8, !dbg !1246
  %39 = load i8*, i8** %10, align 8, !dbg !1247
  %40 = icmp ne i8* %39, null, !dbg !1249
  br i1 %40, label %41, label %43, !dbg !1250

; <label>:41:                                     ; preds = %33
  %42 = load i8*, i8** %10, align 8, !dbg !1251
  store i8 0, i8* %42, align 1, !dbg !1253
  br label %43, !dbg !1254

; <label>:43:                                     ; preds = %41, %33
  store i32 0, i32* %4, align 4, !dbg !1255
  br label %44, !dbg !1255

; <label>:44:                                     ; preds = %43, %31, %16
  %45 = load i32, i32* %4, align 4, !dbg !1256
  ret i32 %45, !dbg !1256
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

; Function Attrs: nounwind
declare i8* @strtok_r(i8*, i8*, i8**) #3

declare i64 @read(i32, i8*, i64) #2

declare void @File_GetPathName(i8*, i8**, i8**) #2

declare signext i8 @File_IsFullPath(i8*) #2

declare i8* @Unicode_Join(i8*, ...) #2

declare i8* @File_FullPath(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "fileLockPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hostinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "HOSTINFO_PROCESS_QUERY_DEAD", value: 0)
!7 = !DIEnumerator(name: "HOSTINFO_PROCESS_QUERY_ALIVE", value: 1)
!8 = !DIEnumerator(name: "HOSTINFO_PROCESS_QUERY_UNKNOWN", value: 2)
!9 = !{!10, !11, !16}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileLockToken", file: !13, line: 55, baseType: !14)
!13 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/fileLock.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "FileLockToken", file: !15, line: 59, flags: DIFlagFwdDecl)
!15 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/fileIO.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!16 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!20 = distinct !DISubprogram(name: "FileLock_LockDevice", scope: !21, file: !21, line: 454, type: !22, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!21 = !DIFile(filename: "fileLockPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !25}
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !{}
!29 = !DILocalVariable(name: "deviceName", arg: 1, scope: !20, file: !21, line: 454, type: !25)
!30 = !DIExpression()
!31 = !DILocation(line: 454, column: 33, scope: !20)
!32 = !DILocalVariable(name: "hostID", scope: !20, file: !21, line: 456, type: !25)
!33 = !DILocation(line: 456, column: 16, scope: !20)
!34 = !DILocalVariable(name: "uniqueID", scope: !20, file: !21, line: 457, type: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8000, align: 8, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 1000)
!38 = !DILocation(line: 457, column: 9, scope: !20)
!39 = !DILocalVariable(name: "lockFileName", scope: !20, file: !21, line: 458, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!41 = !DILocation(line: 458, column: 10, scope: !20)
!42 = !DILocalVariable(name: "lockFileLink", scope: !20, file: !21, line: 459, type: !40)
!43 = !DILocation(line: 459, column: 10, scope: !20)
!44 = !DILocalVariable(name: "status", scope: !20, file: !21, line: 461, type: !24)
!45 = !DILocation(line: 461, column: 8, scope: !20)
!46 = !DILocation(line: 466, column: 36, scope: !20)
!47 = !DILocation(line: 465, column: 19, scope: !20)
!48 = !DILocation(line: 465, column: 17, scope: !20)
!49 = !DILocation(line: 469, column: 36, scope: !20)
!50 = !DILocation(line: 469, column: 48, scope: !20)
!51 = !DILocation(line: 468, column: 19, scope: !20)
!52 = !DILocation(line: 468, column: 17, scope: !20)
!53 = !DILocation(line: 474, column: 13, scope: !20)
!54 = !DILocation(line: 474, column: 11, scope: !20)
!55 = !DILocation(line: 475, column: 16, scope: !20)
!56 = !DILocation(line: 476, column: 16, scope: !20)
!57 = !DILocation(line: 476, column: 26, scope: !20)
!58 = !DILocation(line: 475, column: 4, scope: !20)
!59 = !DILocation(line: 478, column: 4, scope: !20)
!60 = !DILocation(line: 478, column: 44, scope: !61)
!61 = !DILexicalBlockFile(scope: !20, file: !21, discriminator: 1)
!62 = !DILocation(line: 478, column: 58, scope: !61)
!63 = !DILocation(line: 479, column: 44, scope: !20)
!64 = !DILocation(line: 478, column: 21, scope: !61)
!65 = !DILocation(line: 478, column: 19, scope: !61)
!66 = !DILocation(line: 479, column: 55, scope: !20)
!67 = !DILocation(line: 478, column: 4, scope: !61)
!68 = !DILocalVariable(name: "pid", scope: !69, file: !21, line: 480, type: !24)
!69 = distinct !DILexicalBlock(scope: !20, file: !21, line: 479, column: 61)
!70 = !DILocation(line: 480, column: 11, scope: !69)
!71 = !DILocalVariable(name: "fileID", scope: !69, file: !21, line: 481, type: !35)
!72 = !DILocation(line: 481, column: 12, scope: !69)
!73 = !DILocation(line: 489, column: 33, scope: !69)
!74 = !DILocation(line: 489, column: 53, scope: !69)
!75 = !DILocation(line: 489, column: 15, scope: !69)
!76 = !DILocation(line: 489, column: 7, scope: !69)
!77 = !DILocation(line: 491, column: 10, scope: !78)
!78 = distinct !DILexicalBlock(scope: !69, file: !21, line: 489, column: 62)
!79 = !DILocation(line: 493, column: 10, scope: !78)
!80 = distinct !{!80, !59}
!81 = !DILocation(line: 495, column: 17, scope: !78)
!82 = !DILocation(line: 496, column: 10, scope: !78)
!83 = !DILocation(line: 498, column: 10, scope: !78)
!84 = !DILocation(line: 501, column: 18, scope: !85)
!85 = distinct !DILexicalBlock(scope: !69, file: !21, line: 501, column: 11)
!86 = !DILocation(line: 501, column: 26, scope: !85)
!87 = !DILocation(line: 501, column: 11, scope: !85)
!88 = !DILocation(line: 501, column: 34, scope: !85)
!89 = !DILocation(line: 501, column: 11, scope: !69)
!90 = !DILocation(line: 503, column: 17, scope: !91)
!91 = distinct !DILexicalBlock(scope: !85, file: !21, line: 501, column: 40)
!92 = !DILocation(line: 504, column: 10, scope: !91)
!93 = !DILocation(line: 507, column: 34, scope: !94)
!94 = distinct !DILexicalBlock(scope: !69, file: !21, line: 507, column: 11)
!95 = !DILocation(line: 507, column: 11, scope: !94)
!96 = !DILocation(line: 507, column: 11, scope: !69)
!97 = !DILocation(line: 508, column: 17, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !21, line: 507, column: 40)
!99 = !DILocation(line: 509, column: 10, scope: !98)
!100 = !DILocation(line: 513, column: 31, scope: !101)
!101 = distinct !DILexicalBlock(scope: !69, file: !21, line: 513, column: 10)
!102 = !DILocation(line: 513, column: 11, scope: !101)
!103 = !DILocation(line: 513, column: 10, scope: !69)
!104 = !DILocation(line: 514, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !21, line: 513, column: 46)
!106 = !DILocation(line: 515, column: 10, scope: !105)
!107 = !DILocation(line: 478, column: 4, scope: !108)
!108 = !DILexicalBlockFile(scope: !20, file: !21, discriminator: 2)
!109 = !DILocation(line: 478, column: 4, scope: !110)
!110 = !DILexicalBlockFile(scope: !20, file: !21, discriminator: 3)
!111 = !DILocation(line: 521, column: 15, scope: !20)
!112 = !DILocation(line: 521, column: 4, scope: !20)
!113 = !DILocation(line: 522, column: 15, scope: !20)
!114 = !DILocation(line: 522, column: 4, scope: !20)
!115 = !DILocation(line: 523, column: 11, scope: !20)
!116 = !DILocation(line: 523, column: 4, scope: !20)
!117 = distinct !DISubprogram(name: "FileLockCreateLockFile", scope: !21, file: !21, line: 348, type: !118, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!118 = !DISubroutineType(types: !119)
!119 = !{!24, !25, !25, !25}
!120 = !DILocalVariable(name: "lockFileName", arg: 1, scope: !117, file: !21, line: 348, type: !25)
!121 = !DILocation(line: 348, column: 36, scope: !117)
!122 = !DILocalVariable(name: "lockFileLink", arg: 2, scope: !117, file: !21, line: 349, type: !25)
!123 = !DILocation(line: 349, column: 36, scope: !117)
!124 = !DILocalVariable(name: "uniqueID", arg: 3, scope: !117, file: !21, line: 350, type: !25)
!125 = !DILocation(line: 350, column: 36, scope: !117)
!126 = !DILocalVariable(name: "err", scope: !117, file: !21, line: 352, type: !24)
!127 = !DILocation(line: 352, column: 8, scope: !117)
!128 = !DILocalVariable(name: "lockFD", scope: !117, file: !21, line: 353, type: !24)
!129 = !DILocation(line: 353, column: 8, scope: !117)
!130 = !DILocalVariable(name: "status", scope: !117, file: !21, line: 354, type: !24)
!131 = !DILocation(line: 354, column: 8, scope: !117)
!132 = !DILocalVariable(name: "saveErrno", scope: !117, file: !21, line: 355, type: !24)
!133 = !DILocation(line: 355, column: 8, scope: !117)
!134 = !DILocalVariable(name: "useLinking", scope: !117, file: !21, line: 356, type: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !136, line: 230, baseType: !27)
!136 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!137 = !DILocation(line: 356, column: 9, scope: !117)
!138 = !DILocation(line: 356, column: 41, scope: !117)
!139 = !DILocation(line: 356, column: 22, scope: !117)
!140 = !DILocalVariable(name: "uid", scope: !117, file: !21, line: 357, type: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !142, line: 80, baseType: !143)
!142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !144, line: 125, baseType: !16)
!144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!145 = !DILocation(line: 357, column: 10, scope: !117)
!146 = !DILocation(line: 359, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !117, file: !21, line: 359, column: 8)
!148 = !DILocation(line: 359, column: 8, scope: !117)
!149 = !DILocation(line: 360, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !21, line: 359, column: 20)
!151 = !DILocation(line: 360, column: 11, scope: !150)
!152 = !DILocation(line: 361, column: 22, scope: !150)
!153 = !DILocation(line: 361, column: 16, scope: !150)
!154 = !DILocation(line: 361, column: 14, scope: !150)
!155 = !DILocation(line: 362, column: 20, scope: !150)
!156 = !DILocation(line: 362, column: 19, scope: !150)
!157 = !DILocation(line: 362, column: 17, scope: !150)
!158 = !DILocation(line: 363, column: 23, scope: !150)
!159 = !DILocation(line: 363, column: 7, scope: !150)
!160 = !DILocation(line: 365, column: 11, scope: !161)
!161 = distinct !DILexicalBlock(scope: !150, file: !21, line: 365, column: 11)
!162 = !DILocation(line: 365, column: 18, scope: !161)
!163 = !DILocation(line: 365, column: 11, scope: !150)
!164 = !DILocation(line: 367, column: 14, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !21, line: 365, column: 25)
!166 = !DILocation(line: 367, column: 45, scope: !165)
!167 = !DILocation(line: 367, column: 28, scope: !165)
!168 = !DILocation(line: 366, column: 10, scope: !165)
!169 = !DILocation(line: 369, column: 18, scope: !165)
!170 = !DILocation(line: 369, column: 28, scope: !165)
!171 = !DILocation(line: 369, column: 17, scope: !165)
!172 = !DILocation(line: 369, column: 10, scope: !165)
!173 = !DILocation(line: 371, column: 4, scope: !150)
!174 = !DILocation(line: 380, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !147, file: !21, line: 371, column: 11)
!176 = !DILocation(line: 380, column: 11, scope: !175)
!177 = !DILocation(line: 381, column: 27, scope: !175)
!178 = !DILocation(line: 381, column: 16, scope: !175)
!179 = !DILocation(line: 381, column: 14, scope: !175)
!180 = !DILocation(line: 383, column: 20, scope: !175)
!181 = !DILocation(line: 383, column: 19, scope: !175)
!182 = !DILocation(line: 383, column: 17, scope: !175)
!183 = !DILocation(line: 384, column: 23, scope: !175)
!184 = !DILocation(line: 384, column: 7, scope: !175)
!185 = !DILocation(line: 386, column: 11, scope: !186)
!186 = distinct !DILexicalBlock(scope: !175, file: !21, line: 386, column: 11)
!187 = !DILocation(line: 386, column: 18, scope: !186)
!188 = !DILocation(line: 386, column: 11, scope: !175)
!189 = !DILocation(line: 388, column: 14, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !21, line: 386, column: 25)
!191 = !DILocation(line: 388, column: 45, scope: !190)
!192 = !DILocation(line: 388, column: 28, scope: !190)
!193 = !DILocation(line: 387, column: 10, scope: !190)
!194 = !DILocation(line: 390, column: 18, scope: !190)
!195 = !DILocation(line: 390, column: 28, scope: !190)
!196 = !DILocation(line: 390, column: 17, scope: !190)
!197 = !DILocation(line: 390, column: 10, scope: !190)
!198 = !DILocation(line: 394, column: 16, scope: !117)
!199 = !DILocation(line: 394, column: 24, scope: !117)
!200 = !DILocation(line: 394, column: 41, scope: !117)
!201 = !DILocation(line: 394, column: 34, scope: !117)
!202 = !DILocation(line: 394, column: 10, scope: !203)
!203 = !DILexicalBlockFile(scope: !117, file: !21, discriminator: 1)
!204 = !DILocation(line: 394, column: 10, scope: !117)
!205 = !DILocation(line: 394, column: 8, scope: !117)
!206 = !DILocation(line: 395, column: 17, scope: !117)
!207 = !DILocation(line: 395, column: 16, scope: !117)
!208 = !DILocation(line: 395, column: 14, scope: !117)
!209 = !DILocation(line: 397, column: 10, scope: !117)
!210 = !DILocation(line: 397, column: 4, scope: !117)
!211 = !DILocation(line: 399, column: 8, scope: !212)
!212 = distinct !DILexicalBlock(scope: !117, file: !21, line: 399, column: 8)
!213 = !DILocation(line: 399, column: 22, scope: !212)
!214 = !DILocation(line: 399, column: 15, scope: !212)
!215 = !DILocation(line: 399, column: 12, scope: !212)
!216 = !DILocation(line: 399, column: 8, scope: !117)
!217 = !DILocation(line: 401, column: 15, scope: !218)
!218 = distinct !DILexicalBlock(scope: !212, file: !21, line: 399, column: 33)
!219 = !DILocation(line: 401, column: 46, scope: !218)
!220 = !DILocation(line: 401, column: 29, scope: !218)
!221 = !DILocation(line: 400, column: 7, scope: !218)
!222 = !DILocation(line: 402, column: 14, scope: !218)
!223 = !DILocation(line: 403, column: 7, scope: !218)
!224 = !DILocation(line: 406, column: 10, scope: !117)
!225 = !DILocation(line: 406, column: 8, scope: !117)
!226 = !DILocation(line: 408, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !117, file: !21, line: 408, column: 8)
!228 = !DILocation(line: 408, column: 19, scope: !227)
!229 = !DILocation(line: 408, column: 28, scope: !230)
!230 = !DILexicalBlockFile(scope: !227, file: !21, discriminator: 1)
!231 = !DILocation(line: 408, column: 42, scope: !230)
!232 = !DILocation(line: 408, column: 23, scope: !230)
!233 = !DILocation(line: 408, column: 56, scope: !230)
!234 = !DILocation(line: 408, column: 8, scope: !230)
!235 = !DILocation(line: 409, column: 18, scope: !236)
!236 = distinct !DILexicalBlock(scope: !227, file: !21, line: 408, column: 62)
!237 = !DILocation(line: 409, column: 17, scope: !236)
!238 = !DILocation(line: 409, column: 22, scope: !236)
!239 = !DILocation(line: 409, column: 16, scope: !236)
!240 = !DILocation(line: 409, column: 14, scope: !236)
!241 = !DILocation(line: 410, column: 4, scope: !236)
!242 = !DILocation(line: 412, column: 20, scope: !117)
!243 = !DILocation(line: 412, column: 4, scope: !117)
!244 = !DILocation(line: 415, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !117, file: !21, line: 415, column: 8)
!246 = !DILocation(line: 415, column: 8, scope: !117)
!247 = !DILocation(line: 416, column: 13, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !21, line: 415, column: 20)
!249 = !DILocation(line: 416, column: 11, scope: !248)
!250 = !DILocation(line: 417, column: 20, scope: !248)
!251 = !DILocation(line: 417, column: 13, scope: !248)
!252 = !DILocation(line: 417, column: 11, scope: !248)
!253 = !DILocation(line: 418, column: 23, scope: !248)
!254 = !DILocation(line: 418, column: 7, scope: !248)
!255 = !DILocation(line: 420, column: 11, scope: !256)
!256 = distinct !DILexicalBlock(scope: !248, file: !21, line: 420, column: 11)
!257 = !DILocation(line: 420, column: 15, scope: !256)
!258 = !DILocation(line: 420, column: 11, scope: !248)
!259 = !DILocation(line: 422, column: 18, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !21, line: 420, column: 20)
!261 = !DILocation(line: 422, column: 50, scope: !260)
!262 = !DILocation(line: 422, column: 49, scope: !260)
!263 = !DILocation(line: 422, column: 32, scope: !264)
!264 = !DILexicalBlockFile(scope: !260, file: !21, discriminator: 1)
!265 = !DILocation(line: 421, column: 10, scope: !260)
!266 = !DILocation(line: 423, column: 7, scope: !260)
!267 = !DILocation(line: 425, column: 4, scope: !248)
!268 = !DILocation(line: 427, column: 11, scope: !117)
!269 = !DILocation(line: 427, column: 4, scope: !117)
!270 = !DILocation(line: 428, column: 1, scope: !117)
!271 = distinct !DISubprogram(name: "GetLockFileValues", scope: !21, file: !21, line: 234, type: !272, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!272 = !DISubroutineType(types: !273)
!273 = !{!24, !25, !274, !40}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!275 = !DILocalVariable(name: "lockFileName", arg: 1, scope: !271, file: !21, line: 234, type: !25)
!276 = !DILocation(line: 234, column: 31, scope: !271)
!277 = !DILocalVariable(name: "pid", arg: 2, scope: !271, file: !21, line: 235, type: !274)
!278 = !DILocation(line: 235, column: 24, scope: !271)
!279 = !DILocalVariable(name: "hostID", arg: 3, scope: !271, file: !21, line: 236, type: !40)
!280 = !DILocation(line: 236, column: 25, scope: !271)
!281 = !DILocalVariable(name: "p", scope: !271, file: !21, line: 238, type: !40)
!282 = !DILocation(line: 238, column: 10, scope: !271)
!283 = !DILocalVariable(name: "saveErrno", scope: !271, file: !21, line: 239, type: !24)
!284 = !DILocation(line: 239, column: 8, scope: !271)
!285 = !DILocalVariable(name: "lockFile", scope: !271, file: !21, line: 240, type: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !288, line: 48, baseType: !289)
!288 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !290, line: 241, size: 1728, align: 64, elements: !291)
!290 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !312, !313, !314, !315, !318, !320, !322, !326, !329, !331, !332, !333, !334, !335, !339, !340}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !289, file: !290, line: 242, baseType: !24, size: 32, align: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !289, file: !290, line: 247, baseType: !40, size: 64, align: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !289, file: !290, line: 248, baseType: !40, size: 64, align: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !289, file: !290, line: 249, baseType: !40, size: 64, align: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !289, file: !290, line: 250, baseType: !40, size: 64, align: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !289, file: !290, line: 251, baseType: !40, size: 64, align: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !289, file: !290, line: 252, baseType: !40, size: 64, align: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !289, file: !290, line: 253, baseType: !40, size: 64, align: 64, offset: 448)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !289, file: !290, line: 254, baseType: !40, size: 64, align: 64, offset: 512)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !289, file: !290, line: 256, baseType: !40, size: 64, align: 64, offset: 576)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !289, file: !290, line: 257, baseType: !40, size: 64, align: 64, offset: 640)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !289, file: !290, line: 258, baseType: !40, size: 64, align: 64, offset: 704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !289, file: !290, line: 260, baseType: !305, size: 64, align: 64, offset: 768)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !290, line: 156, size: 192, align: 64, elements: !307)
!307 = !{!308, !309, !311}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !306, file: !290, line: 157, baseType: !305, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !306, file: !290, line: 158, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !306, file: !290, line: 162, baseType: !24, size: 32, align: 32, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !289, file: !290, line: 262, baseType: !310, size: 64, align: 64, offset: 832)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !289, file: !290, line: 264, baseType: !24, size: 32, align: 32, offset: 896)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !289, file: !290, line: 268, baseType: !24, size: 32, align: 32, offset: 928)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !289, file: !290, line: 270, baseType: !316, size: 64, align: 64, offset: 960)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !144, line: 131, baseType: !317)
!317 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !289, file: !290, line: 274, baseType: !319, size: 16, align: 16, offset: 1024)
!319 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !289, file: !290, line: 275, baseType: !321, size: 8, align: 8, offset: 1040)
!321 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !289, file: !290, line: 276, baseType: !323, size: 8, align: 8, offset: 1048)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, align: 8, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 1)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !289, file: !290, line: 280, baseType: !327, size: 64, align: 64, offset: 1088)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !290, line: 150, baseType: null)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !289, file: !290, line: 289, baseType: !330, size: 64, align: 64, offset: 1152)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !144, line: 132, baseType: !317)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !289, file: !290, line: 297, baseType: !10, size: 64, align: 64, offset: 1216)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !289, file: !290, line: 298, baseType: !10, size: 64, align: 64, offset: 1280)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !289, file: !290, line: 299, baseType: !10, size: 64, align: 64, offset: 1344)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !289, file: !290, line: 300, baseType: !10, size: 64, align: 64, offset: 1408)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !289, file: !290, line: 302, baseType: !336, size: 64, align: 64, offset: 1472)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !337, line: 216, baseType: !338)
!337 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!338 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !289, file: !290, line: 303, baseType: !24, size: 32, align: 32, offset: 1536)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !289, file: !290, line: 305, baseType: !341, size: 160, align: 8, offset: 1568)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, align: 8, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 20)
!344 = !DILocation(line: 240, column: 10, scope: !271)
!345 = !DILocalVariable(name: "line", scope: !271, file: !21, line: 241, type: !35)
!346 = !DILocation(line: 241, column: 9, scope: !271)
!347 = !DILocalVariable(name: "deleteLockFile", scope: !271, file: !21, line: 242, type: !135)
!348 = !DILocation(line: 242, column: 9, scope: !271)
!349 = !DILocalVariable(name: "uid", scope: !271, file: !21, line: 243, type: !141)
!350 = !DILocation(line: 243, column: 10, scope: !271)
!351 = !DILocalVariable(name: "status", scope: !271, file: !21, line: 244, type: !24)
!352 = !DILocation(line: 244, column: 8, scope: !271)
!353 = !DILocation(line: 250, column: 10, scope: !271)
!354 = !DILocation(line: 250, column: 8, scope: !271)
!355 = !DILocation(line: 251, column: 27, scope: !271)
!356 = !DILocation(line: 251, column: 15, scope: !271)
!357 = !DILocation(line: 251, column: 13, scope: !271)
!358 = !DILocation(line: 252, column: 17, scope: !271)
!359 = !DILocation(line: 252, column: 16, scope: !271)
!360 = !DILocation(line: 252, column: 14, scope: !271)
!361 = !DILocation(line: 253, column: 20, scope: !271)
!362 = !DILocation(line: 253, column: 4, scope: !271)
!363 = !DILocation(line: 255, column: 8, scope: !364)
!364 = distinct !DILexicalBlock(scope: !271, file: !21, line: 255, column: 8)
!365 = !DILocation(line: 255, column: 17, scope: !364)
!366 = !DILocation(line: 255, column: 8, scope: !271)
!367 = !DILocation(line: 257, column: 15, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !21, line: 255, column: 25)
!369 = !DILocation(line: 257, column: 46, scope: !368)
!370 = !DILocation(line: 257, column: 29, scope: !368)
!371 = !DILocation(line: 256, column: 7, scope: !368)
!372 = !DILocation(line: 259, column: 15, scope: !368)
!373 = !DILocation(line: 259, column: 25, scope: !368)
!374 = !DILocation(line: 259, column: 14, scope: !368)
!375 = !DILocation(line: 259, column: 7, scope: !368)
!376 = !DILocation(line: 262, column: 14, scope: !271)
!377 = !DILocation(line: 262, column: 33, scope: !271)
!378 = !DILocation(line: 262, column: 8, scope: !271)
!379 = !DILocation(line: 262, column: 6, scope: !271)
!380 = !DILocation(line: 263, column: 17, scope: !271)
!381 = !DILocation(line: 263, column: 16, scope: !271)
!382 = !DILocation(line: 263, column: 14, scope: !271)
!383 = !DILocation(line: 265, column: 11, scope: !271)
!384 = !DILocation(line: 265, column: 4, scope: !271)
!385 = !DILocation(line: 267, column: 8, scope: !386)
!386 = distinct !DILexicalBlock(scope: !271, file: !21, line: 267, column: 8)
!387 = !DILocation(line: 267, column: 10, scope: !386)
!388 = !DILocation(line: 267, column: 8, scope: !271)
!389 = !DILocation(line: 269, column: 15, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !21, line: 267, column: 18)
!391 = !DILocation(line: 269, column: 46, scope: !390)
!392 = !DILocation(line: 269, column: 29, scope: !390)
!393 = !DILocation(line: 268, column: 7, scope: !390)
!394 = !DILocation(line: 271, column: 22, scope: !390)
!395 = !DILocation(line: 272, column: 4, scope: !390)
!396 = !DILocation(line: 273, column: 22, scope: !397)
!397 = distinct !DILexicalBlock(scope: !386, file: !21, line: 272, column: 11)
!398 = !DILocation(line: 273, column: 40, scope: !397)
!399 = !DILocation(line: 273, column: 45, scope: !397)
!400 = !DILocation(line: 273, column: 15, scope: !397)
!401 = !DILocation(line: 273, column: 7, scope: !397)
!402 = !DILocation(line: 276, column: 25, scope: !403)
!403 = distinct !DILexicalBlock(scope: !397, file: !21, line: 273, column: 54)
!404 = !DILocation(line: 277, column: 10, scope: !403)
!405 = !DILocation(line: 277, column: 10, scope: !406)
!406 = !DILexicalBlockFile(scope: !403, file: !21, discriminator: 1)
!407 = !DILocation(line: 281, column: 61, scope: !403)
!408 = !DILocation(line: 281, column: 10, scope: !403)
!409 = !DILocation(line: 282, column: 25, scope: !403)
!410 = !DILocation(line: 283, column: 7, scope: !403)
!411 = !DILocation(line: 286, column: 11, scope: !271)
!412 = !DILocation(line: 287, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !271, file: !21, line: 287, column: 8)
!414 = !DILocation(line: 287, column: 8, scope: !271)
!415 = !DILocation(line: 288, column: 14, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !21, line: 287, column: 24)
!417 = !DILocation(line: 289, column: 32, scope: !418)
!418 = distinct !DILexicalBlock(scope: !416, file: !21, line: 289, column: 11)
!419 = !DILocation(line: 289, column: 12, scope: !418)
!420 = !DILocation(line: 289, column: 11, scope: !416)
!421 = !DILocation(line: 290, column: 17, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !21, line: 289, column: 47)
!423 = !DILocation(line: 291, column: 7, scope: !422)
!424 = !DILocation(line: 292, column: 4, scope: !416)
!425 = !DILocation(line: 294, column: 11, scope: !271)
!426 = !DILocation(line: 294, column: 4, scope: !271)
!427 = !DILocation(line: 295, column: 1, scope: !271)
!428 = distinct !DISubprogram(name: "FileLockIsValidProcess", scope: !21, file: !21, line: 316, type: !429, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!429 = !DISubroutineType(types: !430)
!430 = !{!135, !24}
!431 = !DILocalVariable(name: "pid", arg: 1, scope: !428, file: !21, line: 316, type: !24)
!432 = !DILocation(line: 316, column: 28, scope: !428)
!433 = !DILocalVariable(name: "value", scope: !428, file: !21, line: 318, type: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "HostinfoProcessQuery", file: !4, line: 46, baseType: !3)
!435 = !DILocation(line: 318, column: 25, scope: !428)
!436 = !DILocation(line: 318, column: 64, scope: !428)
!437 = !DILocation(line: 318, column: 33, scope: !428)
!438 = !DILocation(line: 320, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !428, file: !21, line: 320, column: 8)
!440 = !DILocation(line: 320, column: 14, scope: !439)
!441 = !DILocation(line: 320, column: 8, scope: !428)
!442 = !DILocation(line: 321, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !21, line: 320, column: 49)
!444 = !DILocation(line: 324, column: 12, scope: !428)
!445 = !DILocation(line: 324, column: 18, scope: !428)
!446 = !DILocation(line: 324, column: 11, scope: !428)
!447 = !DILocation(line: 324, column: 4, scope: !428)
!448 = !DILocation(line: 325, column: 1, scope: !428)
!449 = distinct !DISubprogram(name: "RemoveStaleLockFile", scope: !21, file: !21, line: 189, type: !450, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!450 = !DISubroutineType(types: !451)
!451 = !{!135, !25}
!452 = !DILocalVariable(name: "lockFileName", arg: 1, scope: !449, file: !21, line: 189, type: !25)
!453 = !DILocation(line: 189, column: 33, scope: !449)
!454 = !DILocalVariable(name: "uid", scope: !449, file: !21, line: 191, type: !141)
!455 = !DILocation(line: 191, column: 10, scope: !449)
!456 = !DILocalVariable(name: "ret", scope: !449, file: !21, line: 192, type: !24)
!457 = !DILocation(line: 192, column: 8, scope: !449)
!458 = !DILocalVariable(name: "saveErrno", scope: !449, file: !21, line: 193, type: !24)
!459 = !DILocation(line: 193, column: 8, scope: !449)
!460 = !DILocation(line: 199, column: 47, scope: !449)
!461 = !DILocation(line: 198, column: 4, scope: !449)
!462 = !DILocation(line: 201, column: 10, scope: !449)
!463 = !DILocation(line: 201, column: 8, scope: !449)
!464 = !DILocation(line: 202, column: 17, scope: !449)
!465 = !DILocation(line: 202, column: 10, scope: !449)
!466 = !DILocation(line: 202, column: 8, scope: !449)
!467 = !DILocation(line: 203, column: 17, scope: !449)
!468 = !DILocation(line: 203, column: 16, scope: !449)
!469 = !DILocation(line: 203, column: 14, scope: !449)
!470 = !DILocation(line: 204, column: 20, scope: !449)
!471 = !DILocation(line: 204, column: 4, scope: !449)
!472 = !DILocation(line: 206, column: 8, scope: !473)
!473 = distinct !DILexicalBlock(scope: !449, file: !21, line: 206, column: 8)
!474 = !DILocation(line: 206, column: 12, scope: !473)
!475 = !DILocation(line: 206, column: 8, scope: !449)
!476 = !DILocation(line: 208, column: 15, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !21, line: 206, column: 17)
!478 = !DILocation(line: 208, column: 46, scope: !477)
!479 = !DILocation(line: 208, column: 29, scope: !477)
!480 = !DILocation(line: 207, column: 7, scope: !477)
!481 = !DILocation(line: 210, column: 7, scope: !477)
!482 = !DILocation(line: 213, column: 4, scope: !449)
!483 = !DILocation(line: 214, column: 1, scope: !449)
!484 = distinct !DISubprogram(name: "Posix_Free", scope: !485, file: !485, line: 129, type: !486, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!485 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/posix.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!486 = !DISubroutineType(types: !487)
!487 = !{null, !10}
!488 = !DILocalVariable(name: "p", arg: 1, scope: !484, file: !485, line: 129, type: !10)
!489 = !DILocation(line: 129, column: 18, scope: !484)
!490 = !DILocalVariable(name: "err", scope: !484, file: !485, line: 131, type: !24)
!491 = !DILocation(line: 131, column: 8, scope: !484)
!492 = !DILocation(line: 131, column: 15, scope: !484)
!493 = !DILocation(line: 131, column: 14, scope: !484)
!494 = !DILocation(line: 132, column: 9, scope: !484)
!495 = !DILocation(line: 132, column: 4, scope: !484)
!496 = !DILocation(line: 133, column: 11, scope: !484)
!497 = !DILocation(line: 133, column: 5, scope: !484)
!498 = !DILocation(line: 133, column: 9, scope: !484)
!499 = !DILocation(line: 134, column: 1, scope: !484)
!500 = distinct !DISubprogram(name: "FileLock_UnlockDevice", scope: !21, file: !21, line: 544, type: !450, isLocal: false, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!501 = !DILocalVariable(name: "deviceName", arg: 1, scope: !500, file: !21, line: 544, type: !25)
!502 = !DILocation(line: 544, column: 35, scope: !500)
!503 = !DILocalVariable(name: "uid", scope: !500, file: !21, line: 546, type: !141)
!504 = !DILocation(line: 546, column: 10, scope: !500)
!505 = !DILocalVariable(name: "ret", scope: !500, file: !21, line: 547, type: !24)
!506 = !DILocation(line: 547, column: 8, scope: !500)
!507 = !DILocalVariable(name: "saveErrno", scope: !500, file: !21, line: 548, type: !24)
!508 = !DILocation(line: 548, column: 8, scope: !500)
!509 = !DILocalVariable(name: "path", scope: !500, file: !21, line: 549, type: !40)
!510 = !DILocation(line: 549, column: 10, scope: !500)
!511 = !DILocation(line: 553, column: 60, scope: !500)
!512 = !DILocation(line: 553, column: 11, scope: !500)
!513 = !DILocation(line: 553, column: 9, scope: !500)
!514 = !DILocation(line: 557, column: 10, scope: !500)
!515 = !DILocation(line: 557, column: 8, scope: !500)
!516 = !DILocation(line: 558, column: 17, scope: !500)
!517 = !DILocation(line: 558, column: 10, scope: !500)
!518 = !DILocation(line: 558, column: 8, scope: !500)
!519 = !DILocation(line: 559, column: 17, scope: !500)
!520 = !DILocation(line: 559, column: 16, scope: !500)
!521 = !DILocation(line: 559, column: 14, scope: !500)
!522 = !DILocation(line: 560, column: 20, scope: !500)
!523 = !DILocation(line: 560, column: 4, scope: !500)
!524 = !DILocation(line: 562, column: 8, scope: !525)
!525 = distinct !DILexicalBlock(scope: !500, file: !21, line: 562, column: 8)
!526 = !DILocation(line: 562, column: 12, scope: !525)
!527 = !DILocation(line: 562, column: 8, scope: !500)
!528 = !DILocation(line: 564, column: 11, scope: !529)
!529 = distinct !DILexicalBlock(scope: !525, file: !21, line: 562, column: 17)
!530 = !DILocation(line: 564, column: 34, scope: !529)
!531 = !DILocation(line: 564, column: 17, scope: !529)
!532 = !DILocation(line: 563, column: 7, scope: !529)
!533 = !DILocation(line: 565, column: 18, scope: !529)
!534 = !DILocation(line: 565, column: 7, scope: !529)
!535 = !DILocation(line: 567, column: 7, scope: !529)
!536 = !DILocation(line: 570, column: 15, scope: !500)
!537 = !DILocation(line: 570, column: 4, scope: !500)
!538 = !DILocation(line: 572, column: 4, scope: !500)
!539 = !DILocation(line: 573, column: 1, scope: !500)
!540 = distinct !DISubprogram(name: "FileLockAppendMessage", scope: !21, file: !21, line: 593, type: !541, isLocal: false, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !543, !24}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "MsgList", file: !546, line: 48, baseType: !547)
!546 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/msgList.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MsgList", file: !546, line: 49, size: 320, align: 64, elements: !548)
!548 = !{!549, !550, !551, !552, !603}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !546, line: 50, baseType: !544, size: 64, align: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !547, file: !546, line: 51, baseType: !40, size: 64, align: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !547, file: !546, line: 52, baseType: !40, size: 64, align: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !547, file: !546, line: 53, baseType: !553, size: 64, align: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "MsgFmt_Arg", file: !555, line: 128, baseType: !556)
!555 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/msgfmt.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MsgFmt_Arg", file: !555, line: 102, size: 256, align: 64, elements: !557)
!557 = !{!558, !561, !562, !592, !597}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !556, file: !555, line: 103, baseType: !559, size: 32, align: 32)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !136, line: 174, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !142, line: 196, baseType: !24)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !556, file: !555, line: 104, baseType: !559, size: 32, align: 32, offset: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !556, file: !555, line: 118, baseType: !563, size: 64, align: 64, offset: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !556, file: !555, line: 105, size: 64, align: 64, elements: !564)
!564 = !{!565, !566, !569, !573, !576, !578, !579, !583, !588, !590, !591}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "signed32", scope: !563, file: !555, line: 106, baseType: !559, size: 32, align: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "signed64", scope: !563, file: !555, line: 107, baseType: !567, size: 64, align: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !136, line: 172, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !142, line: 197, baseType: !317)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned32", scope: !563, file: !555, line: 108, baseType: !570, size: 32, align: 32)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !136, line: 173, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !572, line: 51, baseType: !16)
!572 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!573 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned64", scope: !563, file: !555, line: 109, baseType: !574, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !136, line: 171, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !572, line: 55, baseType: !338)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "float64", scope: !563, file: !555, line: 110, baseType: !577, size: 64, align: 64)
!577 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "string8char", scope: !563, file: !555, line: 111, baseType: !40, size: 64, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "string8", scope: !563, file: !555, line: 112, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8", file: !136, line: 178, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !142, line: 194, baseType: !321)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "string16", scope: !563, file: !555, line: 113, baseType: !584, size: 64, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16", file: !136, line: 176, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !142, line: 195, baseType: !587)
!587 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "string32", scope: !563, file: !555, line: 114, baseType: !589, size: 64, align: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !563, file: !555, line: 115, baseType: !559, size: 32, align: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !563, file: !555, line: 117, baseType: !10, size: 64, align: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !556, file: !555, line: 122, baseType: !593, size: 64, align: 32, offset: 128)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !556, file: !555, line: 119, size: 64, align: 32, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "platform", scope: !593, file: !555, line: 120, baseType: !559, size: 32, align: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !593, file: !555, line: 121, baseType: !559, size: 32, align: 32, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !556, file: !555, line: 127, baseType: !598, size: 64, align: 64, offset: 192)
!598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !556, file: !555, line: 123, size: 64, align: 64, elements: !599)
!599 = !{!600, !601, !602}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !598, file: !555, line: 124, baseType: !559, size: 32, align: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "localString", scope: !598, file: !555, line: 125, baseType: !40, size: 64, align: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !598, file: !555, line: 126, baseType: !574, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "numArgs", scope: !547, file: !546, line: 54, baseType: !24, size: 32, align: 32, offset: 256)
!604 = !DILocalVariable(name: "msgs", arg: 1, scope: !540, file: !21, line: 593, type: !543)
!605 = !DILocation(line: 593, column: 33, scope: !540)
!606 = !DILocalVariable(name: "err", arg: 2, scope: !540, file: !21, line: 594, type: !24)
!607 = !DILocation(line: 594, column: 27, scope: !540)
!608 = !DILocation(line: 598, column: 8, scope: !540)
!609 = !DILocation(line: 598, column: 30, scope: !540)
!610 = !DILocation(line: 598, column: 13, scope: !540)
!611 = !DILocation(line: 597, column: 4, scope: !540)
!612 = !DILocation(line: 604, column: 1, scope: !540)
!613 = distinct !DISubprogram(name: "FileLockGetExecutionID", scope: !21, file: !21, line: 930, type: !614, isLocal: false, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!614 = !DISubroutineType(types: !615)
!615 = !{!40}
!616 = !DILocalVariable(name: "descriptor", scope: !613, file: !21, line: 932, type: !40)
!617 = !DILocation(line: 932, column: 10, scope: !613)
!618 = !DILocation(line: 932, column: 49, scope: !613)
!619 = !DILocation(line: 932, column: 23, scope: !620)
!620 = !DILexicalBlockFile(scope: !613, file: !21, discriminator: 1)
!621 = !DILocation(line: 936, column: 11, scope: !613)
!622 = !DILocation(line: 936, column: 4, scope: !613)
!623 = distinct !DISubprogram(name: "FileLockProcessDescriptor", scope: !21, file: !21, line: 692, type: !624, isLocal: true, isDefinition: true, scopeLine: 693, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!624 = !DISubroutineType(types: !625)
!625 = !{!40, !626}
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !142, line: 98, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !144, line: 133, baseType: !24)
!628 = !DILocalVariable(name: "pid", arg: 1, scope: !623, file: !21, line: 692, type: !626)
!629 = !DILocation(line: 692, column: 33, scope: !623)
!630 = !DILocalVariable(name: "path", scope: !623, file: !21, line: 694, type: !631)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 512, align: 8, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 64)
!634 = !DILocation(line: 694, column: 9, scope: !623)
!635 = !DILocalVariable(name: "buffer", scope: !623, file: !21, line: 695, type: !636)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8192, align: 8, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 1024)
!639 = !DILocation(line: 695, column: 9, scope: !623)
!640 = !DILocalVariable(name: "descriptor", scope: !623, file: !21, line: 696, type: !40)
!641 = !DILocation(line: 696, column: 10, scope: !623)
!642 = !DILocation(line: 698, column: 32, scope: !643)
!643 = distinct !DILexicalBlock(scope: !623, file: !21, line: 698, column: 8)
!644 = !DILocation(line: 698, column: 9, scope: !643)
!645 = !DILocation(line: 698, column: 8, scope: !623)
!646 = !DILocation(line: 699, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !643, file: !21, line: 698, column: 38)
!648 = !DILocation(line: 702, column: 16, scope: !623)
!649 = !DILocation(line: 702, column: 52, scope: !623)
!650 = !DILocation(line: 702, column: 4, scope: !623)
!651 = !DILocation(line: 704, column: 26, scope: !652)
!652 = distinct !DILexicalBlock(scope: !623, file: !21, line: 704, column: 8)
!653 = !DILocation(line: 704, column: 32, scope: !652)
!654 = !DILocation(line: 704, column: 8, scope: !652)
!655 = !DILocation(line: 704, column: 55, scope: !652)
!656 = !DILocation(line: 704, column: 8, scope: !623)
!657 = !DILocalVariable(name: "p", scope: !658, file: !21, line: 705, type: !40)
!658 = distinct !DILexicalBlock(scope: !652, file: !21, line: 704, column: 61)
!659 = !DILocation(line: 705, column: 13, scope: !658)
!660 = !DILocalVariable(name: "q", scope: !658, file: !21, line: 706, type: !40)
!661 = !DILocation(line: 706, column: 13, scope: !658)
!662 = !DILocalVariable(name: "rest", scope: !658, file: !21, line: 707, type: !40)
!663 = !DILocation(line: 707, column: 13, scope: !658)
!664 = !DILocalVariable(name: "argc", scope: !658, file: !21, line: 708, type: !570)
!665 = !DILocation(line: 708, column: 14, scope: !658)
!666 = !DILocalVariable(name: "argv", scope: !658, file: !21, line: 709, type: !667)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1408, align: 64, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 22)
!670 = !DILocation(line: 709, column: 13, scope: !658)
!671 = !DILocalVariable(name: "savePtr", scope: !658, file: !21, line: 710, type: !40)
!672 = !DILocation(line: 710, column: 13, scope: !658)
!673 = !DILocation(line: 723, column: 18, scope: !658)
!674 = !DILocation(line: 723, column: 11, scope: !658)
!675 = !DILocation(line: 723, column: 9, scope: !658)
!676 = !DILocation(line: 725, column: 12, scope: !677)
!677 = distinct !DILexicalBlock(scope: !658, file: !21, line: 725, column: 11)
!678 = !DILocation(line: 725, column: 14, scope: !677)
!679 = !DILocation(line: 725, column: 22, scope: !677)
!680 = !DILocation(line: 725, column: 26, scope: !681)
!681 = !DILexicalBlockFile(scope: !677, file: !21, discriminator: 1)
!682 = !DILocation(line: 725, column: 31, scope: !681)
!683 = !DILocation(line: 725, column: 28, scope: !681)
!684 = !DILocation(line: 725, column: 39, scope: !681)
!685 = !DILocation(line: 725, column: 45, scope: !686)
!686 = !DILexicalBlockFile(scope: !677, file: !21, discriminator: 2)
!687 = !DILocation(line: 725, column: 47, scope: !686)
!688 = !DILocation(line: 725, column: 43, scope: !686)
!689 = !DILocation(line: 725, column: 52, scope: !686)
!690 = !DILocation(line: 725, column: 11, scope: !686)
!691 = !DILocation(line: 726, column: 10, scope: !692)
!692 = distinct !DILexicalBlock(scope: !677, file: !21, line: 725, column: 61)
!693 = !DILocation(line: 729, column: 9, scope: !658)
!694 = !DILocation(line: 729, column: 11, scope: !658)
!695 = !DILocation(line: 729, column: 16, scope: !658)
!696 = !DILocation(line: 731, column: 19, scope: !658)
!697 = !DILocation(line: 731, column: 21, scope: !658)
!698 = !DILocation(line: 731, column: 11, scope: !658)
!699 = !DILocation(line: 731, column: 9, scope: !658)
!700 = !DILocation(line: 732, column: 11, scope: !701)
!701 = distinct !DILexicalBlock(scope: !658, file: !21, line: 732, column: 11)
!702 = !DILocation(line: 732, column: 13, scope: !701)
!703 = !DILocation(line: 732, column: 11, scope: !658)
!704 = !DILocation(line: 733, column: 10, scope: !705)
!705 = distinct !DILexicalBlock(scope: !701, file: !21, line: 732, column: 21)
!706 = !DILocation(line: 736, column: 14, scope: !658)
!707 = !DILocation(line: 736, column: 16, scope: !658)
!708 = !DILocation(line: 736, column: 12, scope: !658)
!709 = !DILocation(line: 737, column: 12, scope: !710)
!710 = distinct !DILexicalBlock(scope: !658, file: !21, line: 737, column: 11)
!711 = !DILocation(line: 737, column: 11, scope: !710)
!712 = !DILocation(line: 737, column: 17, scope: !710)
!713 = !DILocation(line: 737, column: 11, scope: !658)
!714 = !DILocation(line: 738, column: 10, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !21, line: 737, column: 25)
!716 = !DILocation(line: 741, column: 12, scope: !658)
!717 = !DILocation(line: 741, column: 15, scope: !658)
!718 = !DILocation(line: 743, column: 26, scope: !658)
!719 = !DILocation(line: 743, column: 17, scope: !658)
!720 = !DILocation(line: 743, column: 7, scope: !658)
!721 = !DILocation(line: 743, column: 15, scope: !658)
!722 = !DILocation(line: 744, column: 17, scope: !658)
!723 = !DILocation(line: 744, column: 7, scope: !658)
!724 = !DILocation(line: 744, column: 15, scope: !658)
!725 = !DILocation(line: 747, column: 11, scope: !658)
!726 = !DILocation(line: 747, column: 9, scope: !658)
!727 = !DILocation(line: 749, column: 7, scope: !658)
!728 = !DILocation(line: 749, column: 26, scope: !729)
!729 = !DILexicalBlockFile(scope: !658, file: !21, discriminator: 1)
!730 = !DILocation(line: 749, column: 19, scope: !729)
!731 = !DILocation(line: 749, column: 17, scope: !729)
!732 = !DILocation(line: 749, column: 35, scope: !729)
!733 = !DILocation(line: 749, column: 7, scope: !729)
!734 = !DILocation(line: 750, column: 11, scope: !735)
!735 = distinct !DILexicalBlock(scope: !658, file: !21, line: 749, column: 43)
!736 = !DILocation(line: 750, column: 13, scope: !735)
!737 = !DILocation(line: 749, column: 7, scope: !738)
!738 = !DILexicalBlockFile(scope: !658, file: !21, discriminator: 2)
!739 = distinct !{!739, !727}
!740 = !DILocation(line: 753, column: 18, scope: !741)
!741 = distinct !DILexicalBlock(scope: !658, file: !21, line: 753, column: 11)
!742 = !DILocation(line: 753, column: 11, scope: !741)
!743 = !DILocation(line: 753, column: 21, scope: !741)
!744 = !DILocation(line: 753, column: 11, scope: !658)
!745 = !DILocation(line: 754, column: 10, scope: !746)
!746 = distinct !DILexicalBlock(scope: !741, file: !21, line: 753, column: 27)
!747 = !DILocation(line: 754, column: 20, scope: !746)
!748 = !DILocation(line: 755, column: 10, scope: !746)
!749 = !DILocation(line: 755, column: 16, scope: !746)
!750 = !DILocation(line: 756, column: 7, scope: !746)
!751 = !DILocation(line: 758, column: 17, scope: !752)
!752 = distinct !DILexicalBlock(scope: !658, file: !21, line: 758, column: 7)
!753 = !DILocation(line: 758, column: 12, scope: !752)
!754 = !DILocation(line: 758, column: 22, scope: !755)
!755 = !DILexicalBlockFile(scope: !756, file: !21, discriminator: 1)
!756 = distinct !DILexicalBlock(scope: !752, file: !21, line: 758, column: 7)
!757 = !DILocation(line: 758, column: 27, scope: !755)
!758 = !DILocation(line: 758, column: 7, scope: !755)
!759 = !DILocation(line: 759, column: 33, scope: !760)
!760 = distinct !DILexicalBlock(scope: !756, file: !21, line: 758, column: 41)
!761 = !DILocation(line: 759, column: 38, scope: !760)
!762 = !DILocation(line: 759, column: 32, scope: !760)
!763 = !DILocation(line: 759, column: 46, scope: !764)
!764 = !DILexicalBlockFile(scope: !760, file: !21, discriminator: 1)
!765 = !DILocation(line: 759, column: 32, scope: !764)
!766 = !DILocation(line: 759, column: 32, scope: !767)
!767 = !DILexicalBlockFile(scope: !760, file: !21, discriminator: 2)
!768 = !DILocation(line: 759, column: 32, scope: !769)
!769 = !DILexicalBlockFile(scope: !760, file: !21, discriminator: 3)
!770 = !DILocation(line: 759, column: 23, scope: !769)
!771 = !DILocation(line: 759, column: 15, scope: !769)
!772 = !DILocation(line: 759, column: 10, scope: !769)
!773 = !DILocation(line: 759, column: 21, scope: !769)
!774 = !DILocation(line: 761, column: 19, scope: !775)
!775 = distinct !DILexicalBlock(scope: !760, file: !21, line: 761, column: 14)
!776 = !DILocation(line: 761, column: 14, scope: !775)
!777 = !DILocation(line: 761, column: 25, scope: !775)
!778 = !DILocation(line: 761, column: 14, scope: !760)
!779 = !DILocation(line: 762, column: 13, scope: !780)
!780 = distinct !DILexicalBlock(scope: !775, file: !21, line: 761, column: 33)
!781 = !DILocation(line: 764, column: 7, scope: !760)
!782 = !DILocation(line: 758, column: 37, scope: !783)
!783 = !DILexicalBlockFile(scope: !756, file: !21, discriminator: 2)
!784 = !DILocation(line: 758, column: 7, scope: !783)
!785 = distinct !{!785, !786}
!786 = !DILocation(line: 758, column: 7, scope: !658)
!787 = !DILocation(line: 766, column: 11, scope: !788)
!788 = distinct !DILexicalBlock(scope: !658, file: !21, line: 766, column: 11)
!789 = !DILocation(line: 766, column: 16, scope: !788)
!790 = !DILocation(line: 766, column: 11, scope: !658)
!791 = !DILocation(line: 767, column: 56, scope: !792)
!792 = distinct !DILexicalBlock(scope: !788, file: !21, line: 766, column: 23)
!793 = !DILocation(line: 767, column: 65, scope: !792)
!794 = !DILocation(line: 768, column: 40, scope: !792)
!795 = !DILocation(line: 767, column: 23, scope: !792)
!796 = !DILocation(line: 767, column: 21, scope: !792)
!797 = !DILocation(line: 769, column: 7, scope: !792)
!798 = !DILocation(line: 770, column: 4, scope: !658)
!799 = !DILocation(line: 704, column: 58, scope: !800)
!800 = !DILexicalBlockFile(scope: !652, file: !21, discriminator: 1)
!801 = !DILocation(line: 774, column: 8, scope: !802)
!802 = distinct !DILexicalBlock(scope: !623, file: !21, line: 774, column: 8)
!803 = !DILocation(line: 774, column: 19, scope: !802)
!804 = !DILocation(line: 774, column: 8, scope: !623)
!805 = !DILocation(line: 780, column: 50, scope: !806)
!806 = distinct !DILexicalBlock(scope: !802, file: !21, line: 774, column: 27)
!807 = !DILocation(line: 780, column: 20, scope: !806)
!808 = !DILocation(line: 780, column: 18, scope: !806)
!809 = !DILocation(line: 781, column: 4, scope: !806)
!810 = !DILocation(line: 783, column: 11, scope: !623)
!811 = !DILocation(line: 783, column: 4, scope: !623)
!812 = !DILocation(line: 784, column: 1, scope: !623)
!813 = distinct !DISubprogram(name: "FileLockValidExecutionID", scope: !21, file: !21, line: 997, type: !450, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!814 = !DILocalVariable(name: "executionID", arg: 1, scope: !813, file: !21, line: 997, type: !25)
!815 = !DILocation(line: 997, column: 38, scope: !813)
!816 = !DILocalVariable(name: "filePID", scope: !813, file: !21, line: 999, type: !626)
!817 = !DILocation(line: 999, column: 10, scope: !813)
!818 = !DILocalVariable(name: "procPID", scope: !813, file: !21, line: 1000, type: !626)
!819 = !DILocation(line: 1000, column: 10, scope: !813)
!820 = !DILocalVariable(name: "gotFileData", scope: !813, file: !21, line: 1001, type: !135)
!821 = !DILocation(line: 1001, column: 9, scope: !813)
!822 = !DILocalVariable(name: "gotProcData", scope: !813, file: !21, line: 1002, type: !135)
!823 = !DILocation(line: 1002, column: 9, scope: !813)
!824 = !DILocalVariable(name: "procDescriptor", scope: !813, file: !21, line: 1003, type: !40)
!825 = !DILocation(line: 1003, column: 10, scope: !813)
!826 = !DILocalVariable(name: "fileCreationTime", scope: !813, file: !21, line: 1004, type: !574)
!827 = !DILocation(line: 1004, column: 11, scope: !813)
!828 = !DILocalVariable(name: "procCreationTime", scope: !813, file: !21, line: 1005, type: !574)
!829 = !DILocation(line: 1005, column: 11, scope: !813)
!830 = !DILocation(line: 1007, column: 49, scope: !813)
!831 = !DILocation(line: 1007, column: 18, scope: !813)
!832 = !DILocation(line: 1007, column: 16, scope: !813)
!833 = !DILocation(line: 1010, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !813, file: !21, line: 1010, column: 8)
!835 = !DILocation(line: 1010, column: 8, scope: !813)
!836 = !DILocation(line: 1012, column: 29, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !21, line: 1010, column: 22)
!838 = !DILocation(line: 1011, column: 7, scope: !837)
!839 = !DILocation(line: 1014, column: 7, scope: !837)
!840 = !DILocation(line: 1017, column: 47, scope: !813)
!841 = !DILocation(line: 1017, column: 21, scope: !813)
!842 = !DILocation(line: 1017, column: 19, scope: !813)
!843 = !DILocation(line: 1019, column: 8, scope: !844)
!844 = distinct !DILexicalBlock(scope: !813, file: !21, line: 1019, column: 8)
!845 = !DILocation(line: 1019, column: 23, scope: !844)
!846 = !DILocation(line: 1019, column: 8, scope: !813)
!847 = !DILocation(line: 1020, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !844, file: !21, line: 1019, column: 31)
!849 = !DILocation(line: 1023, column: 49, scope: !813)
!850 = !DILocation(line: 1023, column: 18, scope: !813)
!851 = !DILocation(line: 1023, column: 16, scope: !813)
!852 = !DILocation(line: 1029, column: 15, scope: !813)
!853 = !DILocation(line: 1029, column: 4, scope: !813)
!854 = !DILocation(line: 1031, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !813, file: !21, line: 1031, column: 8)
!856 = !DILocation(line: 1031, column: 26, scope: !855)
!857 = !DILocation(line: 1031, column: 32, scope: !855)
!858 = !DILocation(line: 1032, column: 9, scope: !855)
!859 = !DILocation(line: 1032, column: 26, scope: !855)
!860 = !DILocation(line: 1032, column: 32, scope: !855)
!861 = !DILocation(line: 1033, column: 9, scope: !855)
!862 = !DILocation(line: 1033, column: 29, scope: !855)
!863 = !DILocation(line: 1033, column: 26, scope: !855)
!864 = !DILocation(line: 1031, column: 8, scope: !865)
!865 = !DILexicalBlockFile(scope: !813, file: !21, discriminator: 1)
!866 = !DILocation(line: 1034, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !855, file: !21, line: 1033, column: 48)
!868 = !DILocation(line: 1036, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !855, file: !21, line: 1035, column: 11)
!870 = !DILocation(line: 1038, column: 1, scope: !813)
!871 = distinct !DISubprogram(name: "FileLockParseProcessDescriptor", scope: !21, file: !21, line: 959, type: !872, isLocal: true, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!872 = !DISubroutineType(types: !873)
!873 = !{!135, !25, !874, !875}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!876 = !DILocalVariable(name: "procDescriptor", arg: 1, scope: !871, file: !21, line: 959, type: !25)
!877 = !DILocation(line: 959, column: 44, scope: !871)
!878 = !DILocalVariable(name: "pid", arg: 2, scope: !871, file: !21, line: 960, type: !874)
!879 = !DILocation(line: 960, column: 39, scope: !871)
!880 = !DILocalVariable(name: "procCreationTime", arg: 3, scope: !871, file: !21, line: 961, type: !875)
!881 = !DILocation(line: 961, column: 40, scope: !871)
!882 = !DILocation(line: 967, column: 15, scope: !883)
!883 = distinct !DILexicalBlock(scope: !871, file: !21, line: 967, column: 8)
!884 = !DILocation(line: 967, column: 45, scope: !883)
!885 = !DILocation(line: 967, column: 50, scope: !883)
!886 = !DILocation(line: 967, column: 8, scope: !883)
!887 = !DILocation(line: 967, column: 68, scope: !883)
!888 = !DILocation(line: 967, column: 8, scope: !871)
!889 = !DILocation(line: 968, column: 18, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !21, line: 968, column: 11)
!891 = distinct !DILexicalBlock(scope: !883, file: !21, line: 967, column: 74)
!892 = !DILocation(line: 968, column: 40, scope: !890)
!893 = !DILocation(line: 968, column: 11, scope: !890)
!894 = !DILocation(line: 968, column: 45, scope: !890)
!895 = !DILocation(line: 968, column: 11, scope: !891)
!896 = !DILocation(line: 969, column: 11, scope: !897)
!897 = distinct !DILexicalBlock(scope: !890, file: !21, line: 968, column: 51)
!898 = !DILocation(line: 969, column: 28, scope: !897)
!899 = !DILocation(line: 970, column: 7, scope: !897)
!900 = !DILocation(line: 971, column: 10, scope: !901)
!901 = distinct !DILexicalBlock(scope: !890, file: !21, line: 970, column: 14)
!902 = !DILocation(line: 973, column: 4, scope: !891)
!903 = !DILocation(line: 975, column: 12, scope: !871)
!904 = !DILocation(line: 975, column: 11, scope: !871)
!905 = !DILocation(line: 975, column: 16, scope: !871)
!906 = !DILocation(line: 975, column: 4, scope: !871)
!907 = !DILocation(line: 976, column: 1, scope: !871)
!908 = distinct !DISubprogram(name: "FileLock_Lock", scope: !21, file: !21, line: 1129, type: !909, isLocal: false, isDefinition: true, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!909 = !DISubroutineType(types: !910)
!910 = !{!11, !25, !911, !912, !274, !543}
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!913 = !DILocalVariable(name: "filePath", arg: 1, scope: !908, file: !21, line: 1129, type: !25)
!914 = !DILocation(line: 1129, column: 27, scope: !908)
!915 = !DILocalVariable(name: "readOnly", arg: 2, scope: !908, file: !21, line: 1130, type: !911)
!916 = !DILocation(line: 1130, column: 26, scope: !908)
!917 = !DILocalVariable(name: "maxWaitTimeMsec", arg: 3, scope: !908, file: !21, line: 1131, type: !912)
!918 = !DILocation(line: 1131, column: 28, scope: !908)
!919 = !DILocalVariable(name: "err", arg: 4, scope: !908, file: !21, line: 1132, type: !274)
!920 = !DILocation(line: 1132, column: 20, scope: !908)
!921 = !DILocalVariable(name: "msgs", arg: 5, scope: !908, file: !21, line: 1133, type: !543)
!922 = !DILocation(line: 1133, column: 25, scope: !908)
!923 = !DILocalVariable(name: "res", scope: !908, file: !21, line: 1135, type: !24)
!924 = !DILocation(line: 1135, column: 8, scope: !908)
!925 = !DILocalVariable(name: "normalizedPath", scope: !908, file: !21, line: 1136, type: !40)
!926 = !DILocation(line: 1136, column: 10, scope: !908)
!927 = !DILocalVariable(name: "tokenPtr", scope: !908, file: !21, line: 1137, type: !11)
!928 = !DILocation(line: 1137, column: 19, scope: !908)
!929 = !DILocation(line: 1142, column: 43, scope: !908)
!930 = !DILocation(line: 1142, column: 21, scope: !908)
!931 = !DILocation(line: 1142, column: 19, scope: !908)
!932 = !DILocation(line: 1144, column: 8, scope: !933)
!933 = distinct !DILexicalBlock(scope: !908, file: !21, line: 1144, column: 8)
!934 = !DILocation(line: 1144, column: 23, scope: !933)
!935 = !DILocation(line: 1144, column: 8, scope: !908)
!936 = !DILocation(line: 1145, column: 11, scope: !937)
!937 = distinct !DILexicalBlock(scope: !933, file: !21, line: 1144, column: 31)
!938 = !DILocation(line: 1147, column: 16, scope: !937)
!939 = !DILocation(line: 1148, column: 4, scope: !937)
!940 = !DILocation(line: 1149, column: 36, scope: !941)
!941 = distinct !DILexicalBlock(scope: !933, file: !21, line: 1148, column: 11)
!942 = !DILocation(line: 1149, column: 53, scope: !941)
!943 = !DILocation(line: 1149, column: 52, scope: !941)
!944 = !DILocation(line: 1149, column: 63, scope: !941)
!945 = !DILocation(line: 1149, column: 18, scope: !941)
!946 = !DILocation(line: 1149, column: 16, scope: !941)
!947 = !DILocation(line: 1152, column: 18, scope: !941)
!948 = !DILocation(line: 1152, column: 7, scope: !941)
!949 = !DILocation(line: 1155, column: 8, scope: !950)
!950 = distinct !DILexicalBlock(scope: !908, file: !21, line: 1155, column: 8)
!951 = !DILocation(line: 1155, column: 12, scope: !950)
!952 = !DILocation(line: 1155, column: 8, scope: !908)
!953 = !DILocation(line: 1156, column: 14, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !21, line: 1155, column: 20)
!955 = !DILocation(line: 1156, column: 8, scope: !954)
!956 = !DILocation(line: 1156, column: 12, scope: !954)
!957 = !DILocation(line: 1157, column: 4, scope: !954)
!958 = !DILocation(line: 1159, column: 8, scope: !959)
!959 = distinct !DILexicalBlock(scope: !908, file: !21, line: 1159, column: 8)
!960 = !DILocation(line: 1159, column: 17, scope: !959)
!961 = !DILocation(line: 1159, column: 8, scope: !908)
!962 = !DILocalVariable(name: "errnoValue", scope: !963, file: !21, line: 1160, type: !24)
!963 = distinct !DILexicalBlock(scope: !959, file: !21, line: 1159, column: 25)
!964 = !DILocation(line: 1160, column: 11, scope: !963)
!965 = !DILocation(line: 1162, column: 11, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !21, line: 1162, column: 11)
!967 = !DILocation(line: 1162, column: 15, scope: !966)
!968 = !DILocation(line: 1162, column: 11, scope: !963)
!969 = !DILocation(line: 1163, column: 21, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !21, line: 1162, column: 21)
!971 = !DILocation(line: 1165, column: 7, scope: !970)
!972 = !DILocation(line: 1166, column: 23, scope: !973)
!973 = distinct !DILexicalBlock(scope: !966, file: !21, line: 1165, column: 14)
!974 = !DILocation(line: 1166, column: 21, scope: !973)
!975 = !DILocation(line: 1169, column: 29, scope: !963)
!976 = !DILocation(line: 1169, column: 35, scope: !963)
!977 = !DILocation(line: 1169, column: 7, scope: !963)
!978 = !DILocation(line: 1170, column: 4, scope: !963)
!979 = !DILocation(line: 1172, column: 11, scope: !908)
!980 = !DILocation(line: 1172, column: 4, scope: !908)
!981 = distinct !DISubprogram(name: "FileLockNormalizePath", scope: !21, file: !21, line: 1060, type: !982, isLocal: true, isDefinition: true, scopeLine: 1061, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!982 = !DISubroutineType(types: !983)
!983 = !{!40, !25}
!984 = !DILocalVariable(name: "filePath", arg: 1, scope: !981, file: !21, line: 1060, type: !25)
!985 = !DILocation(line: 1060, column: 35, scope: !981)
!986 = !DILocalVariable(name: "result", scope: !981, file: !21, line: 1062, type: !40)
!987 = !DILocation(line: 1062, column: 10, scope: !981)
!988 = !DILocalVariable(name: "dirName", scope: !981, file: !21, line: 1064, type: !40)
!989 = !DILocation(line: 1064, column: 10, scope: !981)
!990 = !DILocalVariable(name: "fileName", scope: !981, file: !21, line: 1065, type: !40)
!991 = !DILocation(line: 1065, column: 10, scope: !981)
!992 = !DILocation(line: 1074, column: 21, scope: !981)
!993 = !DILocation(line: 1074, column: 4, scope: !981)
!994 = !DILocation(line: 1080, column: 9, scope: !995)
!995 = distinct !DILexicalBlock(scope: !981, file: !21, line: 1080, column: 8)
!996 = !DILocation(line: 1080, column: 8, scope: !995)
!997 = !DILocation(line: 1080, column: 17, scope: !995)
!998 = !DILocation(line: 1080, column: 8, scope: !981)
!999 = !DILocation(line: 1081, column: 27, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !21, line: 1081, column: 11)
!1001 = distinct !DILexicalBlock(scope: !995, file: !21, line: 1080, column: 26)
!1002 = !DILocation(line: 1081, column: 11, scope: !1000)
!1003 = !DILocation(line: 1081, column: 11, scope: !1001)
!1004 = !DILocation(line: 1082, column: 37, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !21, line: 1081, column: 38)
!1006 = !DILocation(line: 1082, column: 19, scope: !1005)
!1007 = !DILocation(line: 1082, column: 17, scope: !1005)
!1008 = !DILocation(line: 1083, column: 7, scope: !1005)
!1009 = !DILocation(line: 1084, column: 42, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1000, file: !21, line: 1083, column: 14)
!1011 = !DILocation(line: 1084, column: 19, scope: !1010)
!1012 = !DILocation(line: 1084, column: 17, scope: !1010)
!1013 = !DILocation(line: 1086, column: 4, scope: !1001)
!1014 = !DILocalVariable(name: "fullPath", scope: !1015, file: !21, line: 1087, type: !40)
!1015 = distinct !DILexicalBlock(scope: !995, file: !21, line: 1086, column: 11)
!1016 = !DILocation(line: 1087, column: 13, scope: !1015)
!1017 = !DILocation(line: 1087, column: 38, scope: !1015)
!1018 = !DILocation(line: 1087, column: 24, scope: !1015)
!1019 = !DILocation(line: 1089, column: 17, scope: !1015)
!1020 = !DILocation(line: 1089, column: 26, scope: !1015)
!1021 = !DILocation(line: 1089, column: 16, scope: !1015)
!1022 = !DILocation(line: 1089, column: 16, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1015, file: !21, discriminator: 1)
!1024 = !DILocation(line: 1089, column: 56, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1015, file: !21, discriminator: 2)
!1026 = !DILocation(line: 1090, column: 57, scope: !1015)
!1027 = !DILocation(line: 1089, column: 43, scope: !1025)
!1028 = !DILocation(line: 1089, column: 16, scope: !1025)
!1029 = !DILocation(line: 1089, column: 16, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1015, file: !21, discriminator: 3)
!1031 = !DILocation(line: 1089, column: 14, scope: !1030)
!1032 = !DILocation(line: 1092, column: 18, scope: !1015)
!1033 = !DILocation(line: 1092, column: 7, scope: !1015)
!1034 = !DILocation(line: 1095, column: 15, scope: !981)
!1035 = !DILocation(line: 1095, column: 4, scope: !981)
!1036 = !DILocation(line: 1096, column: 15, scope: !981)
!1037 = !DILocation(line: 1096, column: 4, scope: !981)
!1038 = !DILocation(line: 1098, column: 11, scope: !981)
!1039 = !DILocation(line: 1098, column: 4, scope: !981)
!1040 = distinct !DISubprogram(name: "FileLock_IsLocked", scope: !21, file: !21, line: 1191, type: !1041, isLocal: false, isDefinition: true, scopeLine: 1194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!135, !25, !274, !543}
!1043 = !DILocalVariable(name: "filePath", arg: 1, scope: !1040, file: !21, line: 1191, type: !25)
!1044 = !DILocation(line: 1191, column: 31, scope: !1040)
!1045 = !DILocalVariable(name: "err", arg: 2, scope: !1040, file: !21, line: 1192, type: !274)
!1046 = !DILocation(line: 1192, column: 24, scope: !1040)
!1047 = !DILocalVariable(name: "msgs", arg: 3, scope: !1040, file: !21, line: 1193, type: !543)
!1048 = !DILocation(line: 1193, column: 29, scope: !1040)
!1049 = !DILocalVariable(name: "res", scope: !1040, file: !21, line: 1195, type: !24)
!1050 = !DILocation(line: 1195, column: 8, scope: !1040)
!1051 = !DILocalVariable(name: "isLocked", scope: !1040, file: !21, line: 1196, type: !135)
!1052 = !DILocation(line: 1196, column: 9, scope: !1040)
!1053 = !DILocalVariable(name: "normalizedPath", scope: !1040, file: !21, line: 1197, type: !40)
!1054 = !DILocation(line: 1197, column: 10, scope: !1040)
!1055 = !DILocation(line: 1201, column: 43, scope: !1040)
!1056 = !DILocation(line: 1201, column: 21, scope: !1040)
!1057 = !DILocation(line: 1201, column: 19, scope: !1040)
!1058 = !DILocation(line: 1203, column: 8, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1040, file: !21, line: 1203, column: 8)
!1060 = !DILocation(line: 1203, column: 23, scope: !1059)
!1061 = !DILocation(line: 1203, column: 8, scope: !1040)
!1062 = !DILocation(line: 1204, column: 11, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !21, line: 1203, column: 31)
!1064 = !DILocation(line: 1206, column: 16, scope: !1063)
!1065 = !DILocation(line: 1207, column: 4, scope: !1063)
!1066 = !DILocation(line: 1208, column: 35, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1059, file: !21, line: 1207, column: 11)
!1068 = !DILocation(line: 1208, column: 18, scope: !1067)
!1069 = !DILocation(line: 1208, column: 16, scope: !1067)
!1070 = !DILocation(line: 1210, column: 18, scope: !1067)
!1071 = !DILocation(line: 1210, column: 7, scope: !1067)
!1072 = !DILocation(line: 1213, column: 8, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1040, file: !21, line: 1213, column: 8)
!1074 = !DILocation(line: 1213, column: 12, scope: !1073)
!1075 = !DILocation(line: 1213, column: 8, scope: !1040)
!1076 = !DILocation(line: 1214, column: 14, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !21, line: 1213, column: 20)
!1078 = !DILocation(line: 1214, column: 8, scope: !1077)
!1079 = !DILocation(line: 1214, column: 12, scope: !1077)
!1080 = !DILocation(line: 1215, column: 4, scope: !1077)
!1081 = !DILocation(line: 1217, column: 8, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1040, file: !21, line: 1217, column: 8)
!1083 = !DILocation(line: 1217, column: 12, scope: !1082)
!1084 = !DILocation(line: 1217, column: 8, scope: !1040)
!1085 = !DILocation(line: 1218, column: 29, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !21, line: 1217, column: 18)
!1087 = !DILocation(line: 1218, column: 35, scope: !1086)
!1088 = !DILocation(line: 1218, column: 7, scope: !1086)
!1089 = !DILocation(line: 1219, column: 4, scope: !1086)
!1090 = !DILocation(line: 1221, column: 11, scope: !1040)
!1091 = !DILocation(line: 1221, column: 4, scope: !1040)
!1092 = distinct !DISubprogram(name: "FileLock_Unlock", scope: !21, file: !21, line: 1243, type: !1093, isLocal: false, isDefinition: true, scopeLine: 1246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!135, !1095, !274, !543}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64, align: 64)
!1096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!1097 = !DILocalVariable(name: "lockToken", arg: 1, scope: !1092, file: !21, line: 1243, type: !1095)
!1098 = !DILocation(line: 1243, column: 38, scope: !1092)
!1099 = !DILocalVariable(name: "err", arg: 2, scope: !1092, file: !21, line: 1244, type: !274)
!1100 = !DILocation(line: 1244, column: 22, scope: !1092)
!1101 = !DILocalVariable(name: "msgs", arg: 3, scope: !1092, file: !21, line: 1245, type: !543)
!1102 = !DILocation(line: 1245, column: 27, scope: !1092)
!1103 = !DILocalVariable(name: "res", scope: !1092, file: !21, line: 1247, type: !24)
!1104 = !DILocation(line: 1247, column: 8, scope: !1092)
!1105 = !DILocation(line: 1251, column: 48, scope: !1092)
!1106 = !DILocation(line: 1251, column: 10, scope: !1092)
!1107 = !DILocation(line: 1251, column: 8, scope: !1092)
!1108 = !DILocation(line: 1253, column: 8, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1092, file: !21, line: 1253, column: 8)
!1110 = !DILocation(line: 1253, column: 12, scope: !1109)
!1111 = !DILocation(line: 1253, column: 8, scope: !1092)
!1112 = !DILocation(line: 1254, column: 14, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1109, file: !21, line: 1253, column: 20)
!1114 = !DILocation(line: 1254, column: 8, scope: !1113)
!1115 = !DILocation(line: 1254, column: 12, scope: !1113)
!1116 = !DILocation(line: 1255, column: 4, scope: !1113)
!1117 = !DILocation(line: 1257, column: 8, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1092, file: !21, line: 1257, column: 8)
!1119 = !DILocation(line: 1257, column: 12, scope: !1118)
!1120 = !DILocation(line: 1257, column: 8, scope: !1092)
!1121 = !DILocation(line: 1258, column: 29, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !21, line: 1257, column: 18)
!1123 = !DILocation(line: 1258, column: 35, scope: !1122)
!1124 = !DILocation(line: 1258, column: 7, scope: !1122)
!1125 = !DILocation(line: 1259, column: 4, scope: !1122)
!1126 = !DILocation(line: 1261, column: 12, scope: !1092)
!1127 = !DILocation(line: 1261, column: 16, scope: !1092)
!1128 = !DILocation(line: 1261, column: 11, scope: !1092)
!1129 = !DILocation(line: 1261, column: 4, scope: !1092)
!1130 = distinct !DISubprogram(name: "IsLinkingAvailable", scope: !21, file: !21, line: 98, type: !450, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!1131 = !DILocalVariable(name: "fileName", arg: 1, scope: !1130, file: !21, line: 98, type: !25)
!1132 = !DILocation(line: 98, column: 32, scope: !1130)
!1133 = !DILocalVariable(name: "buf", scope: !1130, file: !21, line: 100, type: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs", file: !1135, line: 24, size: 960, align: 64, elements: !1136)
!1135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/statfs.h", directory: "/home/lichi/Desktop/open-vm-tools/line219")
!1136 = !{!1137, !1139, !1140, !1142, !1143, !1144, !1146, !1147, !1155, !1156, !1157, !1158}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !1134, file: !1135, line: 26, baseType: !1138, size: 64, align: 64)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsword_t", file: !144, line: 170, baseType: !317)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !1134, file: !1135, line: 27, baseType: !1138, size: 64, align: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !1134, file: !1135, line: 35, baseType: !1141, size: 64, align: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsblkcnt64_t", file: !144, line: 163, baseType: !338)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !1134, file: !1135, line: 36, baseType: !1141, size: 64, align: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !1134, file: !1135, line: 37, baseType: !1141, size: 64, align: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !1134, file: !1135, line: 38, baseType: !1145, size: 64, align: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsfilcnt64_t", file: !144, line: 167, baseType: !338)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !1134, file: !1135, line: 39, baseType: !1145, size: 64, align: 64, offset: 384)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !1134, file: !1135, line: 41, baseType: !1148, size: 64, align: 32, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsid_t", file: !144, line: 134, baseType: !1149)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 134, size: 64, align: 32, elements: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !1149, file: !144, line: 134, baseType: !1152, size: 64, align: 32)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, align: 32, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 2)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !1134, file: !1135, line: 42, baseType: !1138, size: 64, align: 64, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !1134, file: !1135, line: 43, baseType: !1138, size: 64, align: 64, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1134, file: !1135, line: 44, baseType: !1138, size: 64, align: 64, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !1134, file: !1135, line: 45, baseType: !1159, size: 256, align: 64, offset: 704)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1138, size: 256, align: 64, elements: !1160)
!1160 = !{!1161}
!1161 = !DISubrange(count: 4)
!1162 = !DILocation(line: 100, column: 18, scope: !1130)
!1163 = !DILocalVariable(name: "status", scope: !1130, file: !21, line: 101, type: !24)
!1164 = !DILocation(line: 101, column: 8, scope: !1130)
!1165 = !DILocation(line: 110, column: 8, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1130, file: !21, line: 110, column: 8)
!1167 = !DILocation(line: 110, column: 8, scope: !1130)
!1168 = !DILocation(line: 111, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !21, line: 110, column: 28)
!1170 = !DILocation(line: 114, column: 20, scope: !1130)
!1171 = !DILocation(line: 114, column: 13, scope: !1130)
!1172 = !DILocation(line: 114, column: 11, scope: !1130)
!1173 = !DILocation(line: 116, column: 8, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1130, file: !21, line: 116, column: 8)
!1175 = !DILocation(line: 116, column: 15, scope: !1174)
!1176 = !DILocation(line: 116, column: 8, scope: !1130)
!1177 = !DILocation(line: 117, column: 50, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !21, line: 116, column: 22)
!1179 = !DILocation(line: 118, column: 29, scope: !1178)
!1180 = !DILocation(line: 118, column: 28, scope: !1178)
!1181 = !DILocation(line: 118, column: 11, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1178, file: !21, discriminator: 1)
!1183 = !DILocation(line: 117, column: 7, scope: !1178)
!1184 = !DILocation(line: 120, column: 7, scope: !1178)
!1185 = !DILocation(line: 137, column: 16, scope: !1130)
!1186 = !DILocation(line: 137, column: 4, scope: !1130)
!1187 = !DILocation(line: 154, column: 9, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1130, file: !21, line: 137, column: 24)
!1189 = !DILocation(line: 157, column: 9, scope: !1188)
!1190 = !DILocation(line: 165, column: 31, scope: !1130)
!1191 = !DILocation(line: 165, column: 12, scope: !1130)
!1192 = !DILocation(line: 164, column: 4, scope: !1130)
!1193 = !DILocation(line: 168, column: 4, scope: !1130)
!1194 = !DILocation(line: 169, column: 1, scope: !1130)
!1195 = distinct !DISubprogram(name: "FileReadSlashProc", scope: !21, file: !21, line: 626, type: !1196, isLocal: true, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!24, !25, !40, !336}
!1198 = !DILocalVariable(name: "procPath", arg: 1, scope: !1195, file: !21, line: 626, type: !25)
!1199 = !DILocation(line: 626, column: 31, scope: !1195)
!1200 = !DILocalVariable(name: "buffer", arg: 2, scope: !1195, file: !21, line: 627, type: !40)
!1201 = !DILocation(line: 627, column: 25, scope: !1195)
!1202 = !DILocalVariable(name: "bufferSize", arg: 3, scope: !1195, file: !21, line: 628, type: !336)
!1203 = !DILocation(line: 628, column: 26, scope: !1195)
!1204 = !DILocalVariable(name: "fd", scope: !1195, file: !21, line: 630, type: !24)
!1205 = !DILocation(line: 630, column: 8, scope: !1195)
!1206 = !DILocalVariable(name: "err", scope: !1195, file: !21, line: 631, type: !24)
!1207 = !DILocation(line: 631, column: 8, scope: !1195)
!1208 = !DILocalVariable(name: "p", scope: !1195, file: !21, line: 632, type: !40)
!1209 = !DILocation(line: 632, column: 10, scope: !1195)
!1210 = !DILocalVariable(name: "len", scope: !1195, file: !21, line: 633, type: !336)
!1211 = !DILocation(line: 633, column: 11, scope: !1195)
!1212 = !DILocation(line: 639, column: 20, scope: !1195)
!1213 = !DILocation(line: 639, column: 9, scope: !1195)
!1214 = !DILocation(line: 639, column: 7, scope: !1195)
!1215 = !DILocation(line: 641, column: 8, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1195, file: !21, line: 641, column: 8)
!1217 = !DILocation(line: 641, column: 11, scope: !1216)
!1218 = !DILocation(line: 641, column: 8, scope: !1195)
!1219 = !DILocation(line: 642, column: 15, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !21, line: 641, column: 18)
!1221 = !DILocation(line: 642, column: 14, scope: !1220)
!1222 = !DILocation(line: 642, column: 7, scope: !1220)
!1223 = !DILocation(line: 645, column: 15, scope: !1195)
!1224 = !DILocation(line: 645, column: 19, scope: !1195)
!1225 = !DILocation(line: 645, column: 27, scope: !1195)
!1226 = !DILocation(line: 645, column: 38, scope: !1195)
!1227 = !DILocation(line: 645, column: 10, scope: !1195)
!1228 = !DILocation(line: 645, column: 8, scope: !1195)
!1229 = !DILocation(line: 646, column: 11, scope: !1195)
!1230 = !DILocation(line: 646, column: 10, scope: !1195)
!1231 = !DILocation(line: 646, column: 8, scope: !1195)
!1232 = !DILocation(line: 648, column: 10, scope: !1195)
!1233 = !DILocation(line: 648, column: 4, scope: !1195)
!1234 = !DILocation(line: 650, column: 8, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1195, file: !21, line: 650, column: 8)
!1236 = !DILocation(line: 650, column: 12, scope: !1235)
!1237 = !DILocation(line: 650, column: 8, scope: !1195)
!1238 = !DILocation(line: 651, column: 14, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !21, line: 650, column: 19)
!1240 = !DILocation(line: 651, column: 7, scope: !1239)
!1241 = !DILocation(line: 654, column: 11, scope: !1195)
!1242 = !DILocation(line: 654, column: 4, scope: !1195)
!1243 = !DILocation(line: 654, column: 16, scope: !1195)
!1244 = !DILocation(line: 656, column: 15, scope: !1195)
!1245 = !DILocation(line: 656, column: 8, scope: !1195)
!1246 = !DILocation(line: 656, column: 6, scope: !1195)
!1247 = !DILocation(line: 658, column: 8, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1195, file: !21, line: 658, column: 8)
!1249 = !DILocation(line: 658, column: 10, scope: !1248)
!1250 = !DILocation(line: 658, column: 8, scope: !1195)
!1251 = !DILocation(line: 659, column: 8, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !21, line: 658, column: 18)
!1253 = !DILocation(line: 659, column: 10, scope: !1252)
!1254 = !DILocation(line: 660, column: 4, scope: !1252)
!1255 = !DILocation(line: 662, column: 4, scope: !1195)
!1256 = !DILocation(line: 663, column: 1, scope: !1195)
