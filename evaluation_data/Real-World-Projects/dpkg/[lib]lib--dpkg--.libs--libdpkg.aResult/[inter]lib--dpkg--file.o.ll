; ModuleID = './[inter]lib--dpkg--file.o.i'
source_filename = "./[inter]lib--dpkg--file.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.varbuf = type { i64, i64, i8* }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.pager = type opaque

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to stat source file '%.250s'\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"unable to change ownership of target file '%.250s'\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"unable to set mode of target file '%.250s'\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"file.c\00", align 1
@__func__.file_unlock = private unnamed_addr constant [12 x i8] c"file_unlock\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%s (%s) fd is %d < 0\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"unable to unlock %s\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"unable to check file '%s' lock status\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"%s is locked by another process\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"unable to lock %s\00", align 1
@__func__.file_show = private unnamed_addr constant [10 x i8] c"file_show\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"filename is NULL\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"cannot open file %s\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"pager to show file\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"cannot write file %s into the pager\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"%s is not a regular file\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"cannot read %s\00", align 1

; Function Attrs: nounwind uwtable
define void @file_copy_perms(i8*, i8*) #0 !dbg !21 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !29, metadata !30), !dbg !31
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !32, metadata !30), !dbg !33
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !34, metadata !30), !dbg !76
  %6 = load i8*, i8** %3, align 8, !dbg !77
  %7 = call i32 @stat(i8* %6, %struct.stat* %5) #6, !dbg !79
  %8 = icmp eq i32 %7, -1, !dbg !80
  br i1 %8, label %9, label %17, !dbg !81

; <label>:9:                                      ; preds = %2
  %10 = call i32* @__errno_location() #1, !dbg !82
  %11 = load i32, i32* %10, align 4, !dbg !85
  %12 = icmp eq i32 %11, 2, !dbg !86
  br i1 %12, label %13, label %14, !dbg !87

; <label>:13:                                     ; preds = %9
  br label %38, !dbg !88

; <label>:14:                                     ; preds = %9
  %15 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !89
  %16 = load i8*, i8** %3, align 8, !dbg !90
  call void (i8*, ...) @ohshite(i8* %15, i8* %16) #7, !dbg !91
  unreachable, !dbg !93

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %4, align 8, !dbg !94
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 4, !dbg !96
  %20 = load i32, i32* %19, align 4, !dbg !96
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 5, !dbg !97
  %22 = load i32, i32* %21, align 8, !dbg !97
  %23 = call i32 @chown(i8* %18, i32 %20, i32 %22) #6, !dbg !98
  %24 = icmp eq i32 %23, -1, !dbg !99
  br i1 %24, label %25, label %28, !dbg !100

; <label>:25:                                     ; preds = %17
  %26 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !101
  %27 = load i8*, i8** %4, align 8, !dbg !102
  call void (i8*, ...) @ohshite(i8* %26, i8* %27) #7, !dbg !103
  unreachable, !dbg !105

; <label>:28:                                     ; preds = %17
  %29 = load i8*, i8** %4, align 8, !dbg !106
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3, !dbg !108
  %31 = load i32, i32* %30, align 8, !dbg !108
  %32 = and i32 %31, -61441, !dbg !109
  %33 = call i32 @chmod(i8* %29, i32 %32) #6, !dbg !110
  %34 = icmp eq i32 %33, -1, !dbg !111
  br i1 %34, label %35, label %38, !dbg !112

; <label>:35:                                     ; preds = %28
  %36 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !113
  %37 = load i8*, i8** %4, align 8, !dbg !114
  call void (i8*, ...) @ohshite(i8* %36, i8* %37) #7, !dbg !115
  unreachable, !dbg !117

; <label>:38:                                     ; preds = %13, %28
  ret void, !dbg !118
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @chown(i8*, i32, i32) #2

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @file_slurp(i8*, %struct.varbuf*, %struct.dpkg_error*) #0 !dbg !119 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.varbuf*, align 8
  %7 = alloca %struct.dpkg_error*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !138, metadata !30), !dbg !139
  store %struct.varbuf* %1, %struct.varbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %6, metadata !140, metadata !30), !dbg !141
  store %struct.dpkg_error* %2, %struct.dpkg_error** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %7, metadata !142, metadata !30), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %8, metadata !144, metadata !30), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %9, metadata !146, metadata !30), !dbg !147
  %10 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !148
  call void @varbuf_init(%struct.varbuf* %10, i64 0), !dbg !149
  %11 = load i8*, i8** %5, align 8, !dbg !150
  %12 = call i32 (i8*, i32, ...) @open(i8* %11, i32 0), !dbg !151
  store i32 %12, i32* %8, align 4, !dbg !152
  %13 = load i32, i32* %8, align 4, !dbg !153
  %14 = icmp slt i32 %13, 0, !dbg !155
  br i1 %14, label %15, label %20, !dbg !156

; <label>:15:                                     ; preds = %3
  %16 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !157
  %17 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !158
  %18 = load i8*, i8** %5, align 8, !dbg !159
  %19 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_errno(%struct.dpkg_error* %16, i8* %17, i8* %18), !dbg !160
  store i32 %19, i32* %4, align 4, !dbg !162
  br label %29, !dbg !162

; <label>:20:                                     ; preds = %3
  %21 = load i32, i32* %8, align 4, !dbg !163
  %22 = load i8*, i8** %5, align 8, !dbg !164
  %23 = load %struct.varbuf*, %struct.varbuf** %6, align 8, !dbg !165
  %24 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !166
  %25 = call i32 @file_slurp_fd(i32 %21, i8* %22, %struct.varbuf* %23, %struct.dpkg_error* %24), !dbg !167
  store i32 %25, i32* %9, align 4, !dbg !168
  %26 = load i32, i32* %8, align 4, !dbg !169
  %27 = call i32 @close(i32 %26), !dbg !170
  %28 = load i32, i32* %9, align 4, !dbg !171
  store i32 %28, i32* %4, align 4, !dbg !172
  br label %29, !dbg !172

; <label>:29:                                     ; preds = %20, %15
  %30 = load i32, i32* %4, align 4, !dbg !173
  ret i32 %30, !dbg !173
}

declare void @varbuf_init(%struct.varbuf*, i64) #5

declare i32 @open(i8*, i32, ...) #5

declare i32 @dpkg_put_errno(%struct.dpkg_error*, i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal i32 @file_slurp_fd(i32, i8*, %struct.varbuf*, %struct.dpkg_error*) #0 !dbg !174 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.varbuf*, align 8
  %9 = alloca %struct.dpkg_error*, align 8
  %10 = alloca %struct.stat, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !177, metadata !30), !dbg !178
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !179, metadata !30), !dbg !180
  store %struct.varbuf* %2, %struct.varbuf** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %8, metadata !181, metadata !30), !dbg !182
  store %struct.dpkg_error* %3, %struct.dpkg_error** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %9, metadata !183, metadata !30), !dbg !184
  call void @llvm.dbg.declare(metadata %struct.stat* %10, metadata !185, metadata !30), !dbg !186
  %11 = load i32, i32* %6, align 4, !dbg !187
  %12 = call i32 @fstat(i32 %11, %struct.stat* %10) #6, !dbg !189
  %13 = icmp slt i32 %12, 0, !dbg !190
  br i1 %13, label %14, label %19, !dbg !191

; <label>:14:                                     ; preds = %4
  %15 = load %struct.dpkg_error*, %struct.dpkg_error** %9, align 8, !dbg !192
  %16 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)) #6, !dbg !193
  %17 = load i8*, i8** %7, align 8, !dbg !194
  %18 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_errno(%struct.dpkg_error* %15, i8* %16, i8* %17), !dbg !195
  store i32 %18, i32* %5, align 4, !dbg !197
  br label %56, !dbg !197

; <label>:19:                                     ; preds = %4
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !198
  %21 = load i32, i32* %20, align 8, !dbg !198
  %22 = and i32 %21, 61440, !dbg !198
  %23 = icmp eq i32 %22, 32768, !dbg !200
  br i1 %23, label %29, label %24, !dbg !201

; <label>:24:                                     ; preds = %19
  %25 = load %struct.dpkg_error*, %struct.dpkg_error** %9, align 8, !dbg !202
  %26 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #6, !dbg !203
  %27 = load i8*, i8** %7, align 8, !dbg !204
  %28 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %25, i8* %26, i8* %27), !dbg !205
  store i32 %28, i32* %5, align 4, !dbg !207
  br label %56, !dbg !207

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8, !dbg !208
  %31 = load i64, i64* %30, align 8, !dbg !208
  %32 = icmp eq i64 %31, 0, !dbg !210
  br i1 %32, label %33, label %34, !dbg !211

; <label>:33:                                     ; preds = %29
  store i32 0, i32* %5, align 4, !dbg !212
  br label %56, !dbg !212

; <label>:34:                                     ; preds = %29
  %35 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !213
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8, !dbg !214
  %37 = load i64, i64* %36, align 8, !dbg !214
  call void @varbuf_init(%struct.varbuf* %35, i64 %37), !dbg !215
  %38 = load i32, i32* %6, align 4, !dbg !216
  %39 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !218
  %40 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %39, i32 0, i32 2, !dbg !219
  %41 = load i8*, i8** %40, align 8, !dbg !219
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8, !dbg !220
  %43 = load i64, i64* %42, align 8, !dbg !220
  %44 = call i64 @fd_read(i32 %38, i8* %41, i64 %43), !dbg !221
  %45 = icmp slt i64 %44, 0, !dbg !222
  br i1 %45, label %46, label %51, !dbg !223

; <label>:46:                                     ; preds = %34
  %47 = load %struct.dpkg_error*, %struct.dpkg_error** %9, align 8, !dbg !224
  %48 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0)) #6, !dbg !225
  %49 = load i8*, i8** %7, align 8, !dbg !226
  %50 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_errno(%struct.dpkg_error* %47, i8* %48, i8* %49), !dbg !227
  store i32 %50, i32* %5, align 4, !dbg !229
  br label %56, !dbg !229

; <label>:51:                                     ; preds = %34
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8, !dbg !230
  %53 = load i64, i64* %52, align 8, !dbg !230
  %54 = load %struct.varbuf*, %struct.varbuf** %8, align 8, !dbg !231
  %55 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %54, i32 0, i32 0, !dbg !232
  store i64 %53, i64* %55, align 8, !dbg !233
  store i32 0, i32* %5, align 4, !dbg !234
  br label %56, !dbg !234

; <label>:56:                                     ; preds = %51, %46, %33, %24, %14
  %57 = load i32, i32* %5, align 4, !dbg !235
  ret i32 %57, !dbg !235
}

declare i32 @close(i32) #5

; Function Attrs: nounwind uwtable
define void @file_unlock(i32, i8*, i8*) #0 !dbg !236 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.flock, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !239, metadata !30), !dbg !240
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !241, metadata !30), !dbg !242
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !243, metadata !30), !dbg !244
  call void @llvm.dbg.declare(metadata %struct.flock* %7, metadata !245, metadata !30), !dbg !256
  %8 = load i32, i32* %4, align 4, !dbg !257
  %9 = icmp slt i32 %8, 0, !dbg !259
  br i1 %9, label %10, label %14, !dbg !260

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %6, align 8, !dbg !261
  %12 = load i8*, i8** %5, align 8, !dbg !262
  %13 = load i32, i32* %4, align 4, !dbg !263
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.file_unlock, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* %11, i8* %12, i32 %13) #7, !dbg !264
  unreachable, !dbg !264

; <label>:14:                                     ; preds = %3
  call void @file_lock_setup(%struct.flock* %7, i16 signext 2), !dbg !265
  %15 = load i32, i32* %4, align 4, !dbg !266
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %15, i32 6, %struct.flock* %7), !dbg !268
  %17 = icmp eq i32 %16, -1, !dbg !269
  br i1 %17, label %18, label %21, !dbg !270

; <label>:18:                                     ; preds = %14
  %19 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !271
  %20 = load i8*, i8** %6, align 8, !dbg !272
  call void (i8*, ...) @ohshite(i8* %19, i8* %20) #7, !dbg !273
  unreachable, !dbg !275

; <label>:21:                                     ; preds = %14
  ret void, !dbg !276
}

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal void @file_lock_setup(%struct.flock*, i16 signext) #0 !dbg !277 {
  %3 = alloca %struct.flock*, align 8
  %4 = alloca i16, align 2
  store %struct.flock* %0, %struct.flock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.flock** %3, metadata !281, metadata !30), !dbg !282
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !283, metadata !30), !dbg !284
  %5 = load i16, i16* %4, align 2, !dbg !285
  %6 = load %struct.flock*, %struct.flock** %3, align 8, !dbg !286
  %7 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 0, !dbg !287
  store i16 %5, i16* %7, align 8, !dbg !288
  %8 = load %struct.flock*, %struct.flock** %3, align 8, !dbg !289
  %9 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 1, !dbg !290
  store i16 0, i16* %9, align 2, !dbg !291
  %10 = load %struct.flock*, %struct.flock** %3, align 8, !dbg !292
  %11 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 2, !dbg !293
  store i64 0, i64* %11, align 8, !dbg !294
  %12 = load %struct.flock*, %struct.flock** %3, align 8, !dbg !295
  %13 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 3, !dbg !296
  store i64 0, i64* %13, align 8, !dbg !297
  %14 = load %struct.flock*, %struct.flock** %3, align 8, !dbg !298
  %15 = getelementptr inbounds %struct.flock, %struct.flock* %14, i32 0, i32 4, !dbg !299
  store i32 0, i32* %15, align 8, !dbg !300
  ret void, !dbg !301
}

declare i32 @fcntl(i32, i32, ...) #5

; Function Attrs: nounwind uwtable
define zeroext i1 @file_is_locked(i32, i8*) #0 !dbg !302 {
  %3 = alloca i1, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.flock, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !306, metadata !30), !dbg !307
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !308, metadata !30), !dbg !309
  call void @llvm.dbg.declare(metadata %struct.flock* %6, metadata !310, metadata !30), !dbg !311
  call void @file_lock_setup(%struct.flock* %6, i16 signext 1), !dbg !312
  %7 = load i32, i32* %4, align 4, !dbg !313
  %8 = call i32 (i32, i32, ...) @fcntl(i32 %7, i32 5, %struct.flock* %6), !dbg !315
  %9 = icmp eq i32 %8, -1, !dbg !316
  br i1 %9, label %10, label %13, !dbg !317

; <label>:10:                                     ; preds = %2
  %11 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0)) #6, !dbg !318
  %12 = load i8*, i8** %5, align 8, !dbg !319
  call void (i8*, ...) @ohshit(i8* %11, i8* %12) #7, !dbg !320
  unreachable, !dbg !322

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 0, !dbg !323
  %15 = load i16, i16* %14, align 8, !dbg !323
  %16 = sext i16 %15 to i32, !dbg !325
  %17 = icmp eq i32 %16, 1, !dbg !326
  br i1 %17, label %18, label %24, !dbg !327

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 4, !dbg !328
  %20 = load i32, i32* %19, align 8, !dbg !328
  %21 = call i32 @getpid() #6, !dbg !330
  %22 = icmp ne i32 %20, %21, !dbg !331
  br i1 %22, label %23, label %24, !dbg !332

; <label>:23:                                     ; preds = %18
  store i1 true, i1* %3, align 1, !dbg !333
  br label %25, !dbg !333

; <label>:24:                                     ; preds = %18, %13
  store i1 false, i1* %3, align 1, !dbg !334
  br label %25, !dbg !334

; <label>:25:                                     ; preds = %24, %23
  %26 = load i1, i1* %3, align 1, !dbg !335
  ret i1 %26, !dbg !335
}

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #4

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: nounwind uwtable
define void @file_lock(i32*, i32, i8*, i8*) #0 !dbg !336 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.flock, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !339, metadata !30), !dbg !340
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !341, metadata !30), !dbg !342
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !343, metadata !30), !dbg !344
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !345, metadata !30), !dbg !346
  call void @llvm.dbg.declare(metadata %struct.flock* %9, metadata !347, metadata !30), !dbg !348
  call void @llvm.dbg.declare(metadata i32* %10, metadata !349, metadata !30), !dbg !350
  %11 = load i32*, i32** %5, align 8, !dbg !351
  %12 = load i32, i32* %11, align 4, !dbg !352
  %13 = load i8*, i8** %7, align 8, !dbg !353
  call void @setcloexec(i32 %12, i8* %13), !dbg !354
  call void @file_lock_setup(%struct.flock* %9, i16 signext 1), !dbg !355
  %14 = load i32, i32* %6, align 4, !dbg !356
  %15 = icmp eq i32 %14, 1, !dbg !358
  br i1 %15, label %16, label %17, !dbg !359

; <label>:16:                                     ; preds = %4
  store i32 7, i32* %10, align 4, !dbg !360
  br label %18, !dbg !361

; <label>:17:                                     ; preds = %4
  store i32 6, i32* %10, align 4, !dbg !362
  br label %18

; <label>:18:                                     ; preds = %17, %16
  %19 = load i32*, i32** %5, align 8, !dbg !363
  %20 = load i32, i32* %19, align 4, !dbg !365
  %21 = load i32, i32* %10, align 4, !dbg !366
  %22 = call i32 (i32, i32, ...) @fcntl(i32 %20, i32 %21, %struct.flock* %9), !dbg !367
  %23 = icmp eq i32 %22, -1, !dbg !368
  br i1 %23, label %24, label %38, !dbg !369

; <label>:24:                                     ; preds = %18
  %25 = call i32* @__errno_location() #1, !dbg !370
  %26 = load i32, i32* %25, align 4, !dbg !373
  %27 = icmp eq i32 %26, 13, !dbg !374
  br i1 %27, label %32, label %28, !dbg !375

; <label>:28:                                     ; preds = %24
  %29 = call i32* @__errno_location() #1, !dbg !376
  %30 = load i32, i32* %29, align 4, !dbg !378
  %31 = icmp eq i32 %30, 11, !dbg !379
  br i1 %31, label %32, label %35, !dbg !380

; <label>:32:                                     ; preds = %28, %24
  %33 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !381
  %34 = load i8*, i8** %8, align 8, !dbg !382
  call void (i8*, ...) @ohshit(i8* %33, i8* %34) #7, !dbg !383
  unreachable, !dbg !384

; <label>:35:                                     ; preds = %28
  %36 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #6, !dbg !385
  %37 = load i8*, i8** %8, align 8, !dbg !386
  call void (i8*, ...) @ohshite(i8* %36, i8* %37) #7, !dbg !387
  unreachable, !dbg !388

; <label>:38:                                     ; preds = %18
  %39 = load i32*, i32** %5, align 8, !dbg !389
  %40 = load i8*, i8** %7, align 8, !dbg !390
  %41 = load i8*, i8** %8, align 8, !dbg !391
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @file_unlock_cleanup, i32 -1, i32 3, i32* %39, i8* %40, i8* %41), !dbg !392
  ret void, !dbg !393
}

declare void @setcloexec(i32, i8*) #5

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #5

; Function Attrs: nounwind uwtable
define internal void @file_unlock_cleanup(i32, i8**) #0 !dbg !394 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !398, metadata !30), !dbg !399
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !400, metadata !30), !dbg !401
  call void @llvm.dbg.declare(metadata i32* %5, metadata !402, metadata !30), !dbg !403
  %8 = load i8**, i8*** %4, align 8, !dbg !404
  %9 = getelementptr inbounds i8*, i8** %8, i64 0, !dbg !404
  %10 = load i8*, i8** %9, align 8, !dbg !404
  %11 = bitcast i8* %10 to i32*, !dbg !405
  %12 = load i32, i32* %11, align 4, !dbg !406
  store i32 %12, i32* %5, align 4, !dbg !403
  call void @llvm.dbg.declare(metadata i8** %6, metadata !407, metadata !30), !dbg !408
  %13 = load i8**, i8*** %4, align 8, !dbg !409
  %14 = getelementptr inbounds i8*, i8** %13, i64 1, !dbg !409
  %15 = load i8*, i8** %14, align 8, !dbg !409
  store i8* %15, i8** %6, align 8, !dbg !408
  call void @llvm.dbg.declare(metadata i8** %7, metadata !410, metadata !30), !dbg !411
  %16 = load i8**, i8*** %4, align 8, !dbg !412
  %17 = getelementptr inbounds i8*, i8** %16, i64 2, !dbg !412
  %18 = load i8*, i8** %17, align 8, !dbg !412
  store i8* %18, i8** %7, align 8, !dbg !411
  %19 = load i32, i32* %5, align 4, !dbg !413
  %20 = load i8*, i8** %6, align 8, !dbg !414
  %21 = load i8*, i8** %7, align 8, !dbg !415
  call void @file_unlock(i32 %19, i8* %20, i8* %21), !dbg !416
  ret void, !dbg !417
}

; Function Attrs: nounwind uwtable
define void @file_show(i8*) #0 !dbg !418 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pager*, align 8
  %4 = alloca %struct.dpkg_error, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !421, metadata !30), !dbg !422
  call void @llvm.dbg.declare(metadata %struct.pager** %3, metadata !423, metadata !30), !dbg !427
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %4, metadata !428, metadata !30), !dbg !429
  call void @llvm.dbg.declare(metadata i32* %5, metadata !430, metadata !30), !dbg !431
  call void @llvm.dbg.declare(metadata i32* %6, metadata !432, metadata !30), !dbg !433
  %7 = load i8*, i8** %2, align 8, !dbg !434
  %8 = icmp eq i8* %7, null, !dbg !436
  br i1 %8, label %9, label %10, !dbg !437

; <label>:9:                                      ; preds = %1
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 209, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_show, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !438
  unreachable, !dbg !438

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !439
  %12 = call i32 (i8*, i32, ...) @open(i8* %11, i32 0), !dbg !440
  store i32 %12, i32* %5, align 4, !dbg !441
  %13 = load i32, i32* %5, align 4, !dbg !442
  %14 = icmp slt i32 %13, 0, !dbg !444
  br i1 %14, label %15, label %18, !dbg !445

; <label>:15:                                     ; preds = %10
  %16 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #6, !dbg !446
  %17 = load i8*, i8** %2, align 8, !dbg !447
  call void (i8*, ...) @ohshite(i8* %16, i8* %17) #7, !dbg !448
  unreachable, !dbg !450

; <label>:18:                                     ; preds = %10
  %19 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)) #6, !dbg !451
  %20 = call %struct.pager* @pager_spawn(i8* %19), !dbg !452
  store %struct.pager* %20, %struct.pager** %3, align 8, !dbg !454
  %21 = load i32, i32* %5, align 4, !dbg !455
  %22 = call i64 @buffer_copy_IntInt(i32 %21, i32 0, i8* null, i32 4, i32 1, i32 2, i64 -1, %struct.dpkg_error* %4), !dbg !456
  %23 = trunc i64 %22 to i32, !dbg !456
  store i32 %23, i32* %6, align 4, !dbg !457
  %24 = load %struct.pager*, %struct.pager** %3, align 8, !dbg !458
  call void @pager_reap(%struct.pager* %24), !dbg !459
  %25 = load i32, i32* %5, align 4, !dbg !460
  %26 = call i32 @close(i32 %25), !dbg !461
  %27 = load i32, i32* %6, align 4, !dbg !462
  %28 = icmp slt i32 %27, 0, !dbg !464
  br i1 %28, label %29, label %39, !dbg !465

; <label>:29:                                     ; preds = %18
  %30 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %4, i32 0, i32 1, !dbg !466
  %31 = load i32, i32* %30, align 4, !dbg !466
  %32 = icmp ne i32 %31, 32, !dbg !468
  br i1 %32, label %33, label %39, !dbg !469

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %4, i32 0, i32 1, !dbg !470
  %35 = load i32, i32* %34, align 4, !dbg !470
  %36 = call i32* @__errno_location() #1, !dbg !472
  store i32 %35, i32* %36, align 4, !dbg !473
  %37 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0)) #6, !dbg !474
  %38 = load i8*, i8** %2, align 8, !dbg !475
  call void (i8*, ...) @ohshite(i8* %37, i8* %38) #7, !dbg !476
  unreachable, !dbg !478

; <label>:39:                                     ; preds = %29, %18
  ret void, !dbg !479
}

declare %struct.pager* @pager_spawn(i8*) #5

declare i64 @buffer_copy_IntInt(i32, i32, i8*, i32, i32, i32, i64, %struct.dpkg_error*) #5

declare void @pager_reap(%struct.pager*) #5

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

declare i32 @dpkg_put_error(%struct.dpkg_error*, i8*, ...) #5

declare i64 @fd_read(i32, i8*, i64) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !14)
!1 = !DIFile(filename: "[inter]lib--dpkg--file.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!7 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!8 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "file_lock_flags", file: !10, line: 56, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!11 = !{!12, !13}
!12 = !DIEnumerator(name: "FILE_LOCK_NOWAIT", value: 0)
!13 = !DIEnumerator(name: "FILE_LOCK_WAIT", value: 1)
!14 = !{!15, !16}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !{i32 2, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!21 = distinct !DISubprogram(name: "file_copy_perms", scope: !22, file: !22, line: 46, type: !23, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!22 = !DIFile(filename: "file.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !{}
!29 = !DILocalVariable(name: "src", arg: 1, scope: !21, file: !22, line: 46, type: !25)
!30 = !DIExpression()
!31 = !DILocation(line: 46, column: 29, scope: !21)
!32 = !DILocalVariable(name: "dst", arg: 2, scope: !21, file: !22, line: 46, type: !25)
!33 = !DILocation(line: 46, column: 46, scope: !21)
!34 = !DILocalVariable(name: "stab", scope: !21, file: !22, line: 48, type: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !36, line: 46, size: 1152, align: 64, elements: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!37 = !{!38, !42, !44, !46, !49, !51, !53, !54, !55, !58, !60, !62, !70, !71, !72}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !35, file: !36, line: 48, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !40, line: 124, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!41 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !35, file: !36, line: 53, baseType: !43, size: 64, align: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !40, line: 127, baseType: !41)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !35, file: !36, line: 61, baseType: !45, size: 64, align: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !40, line: 130, baseType: !41)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !35, file: !36, line: 62, baseType: !47, size: 32, align: 32, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !40, line: 129, baseType: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !35, file: !36, line: 64, baseType: !50, size: 32, align: 32, offset: 224)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !40, line: 125, baseType: !48)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !35, file: !36, line: 65, baseType: !52, size: 32, align: 32, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !40, line: 126, baseType: !48)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !35, file: !36, line: 67, baseType: !17, size: 32, align: 32, offset: 288)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !35, file: !36, line: 69, baseType: !39, size: 64, align: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !35, file: !36, line: 74, baseType: !56, size: 64, align: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !40, line: 131, baseType: !57)
!57 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !35, file: !36, line: 78, baseType: !59, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !40, line: 153, baseType: !57)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !35, file: !36, line: 80, baseType: !61, size: 64, align: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !40, line: 158, baseType: !57)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !35, file: !36, line: 91, baseType: !63, size: 128, align: 64, offset: 576)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !64, line: 120, size: 128, align: 64, elements: !65)
!64 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!65 = !{!66, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !63, file: !64, line: 122, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !40, line: 139, baseType: !57)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !63, file: !64, line: 123, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !40, line: 175, baseType: !57)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !35, file: !36, line: 92, baseType: !63, size: 128, align: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !35, file: !36, line: 93, baseType: !63, size: 128, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !35, file: !36, line: 106, baseType: !73, size: 192, align: 64, offset: 960)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 192, align: 64, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 3)
!76 = !DILocation(line: 48, column: 14, scope: !21)
!77 = !DILocation(line: 50, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !21, file: !22, line: 50, column: 6)
!79 = !DILocation(line: 50, column: 6, scope: !78)
!80 = !DILocation(line: 50, column: 23, scope: !78)
!81 = !DILocation(line: 50, column: 6, scope: !21)
!82 = !DILocation(line: 51, column: 8, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !22, line: 51, column: 6)
!84 = distinct !DILexicalBlock(scope: !78, file: !22, line: 50, column: 30)
!85 = !DILocation(line: 51, column: 7, scope: !83)
!86 = !DILocation(line: 51, column: 12, scope: !83)
!87 = !DILocation(line: 51, column: 6, scope: !84)
!88 = !DILocation(line: 52, column: 4, scope: !83)
!89 = !DILocation(line: 53, column: 10, scope: !84)
!90 = !DILocation(line: 53, column: 52, scope: !84)
!91 = !DILocation(line: 53, column: 3, scope: !92)
!92 = !DILexicalBlockFile(scope: !84, file: !22, discriminator: 1)
!93 = !DILocation(line: 53, column: 3, scope: !84)
!94 = !DILocation(line: 56, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !21, file: !22, line: 56, column: 6)
!96 = !DILocation(line: 56, column: 22, scope: !95)
!97 = !DILocation(line: 56, column: 35, scope: !95)
!98 = !DILocation(line: 56, column: 6, scope: !95)
!99 = !DILocation(line: 56, column: 43, scope: !95)
!100 = !DILocation(line: 56, column: 6, scope: !21)
!101 = !DILocation(line: 57, column: 10, scope: !95)
!102 = !DILocation(line: 58, column: 11, scope: !95)
!103 = !DILocation(line: 57, column: 3, scope: !104)
!104 = !DILexicalBlockFile(scope: !95, file: !22, discriminator: 1)
!105 = !DILocation(line: 57, column: 3, scope: !95)
!106 = !DILocation(line: 60, column: 12, scope: !107)
!107 = distinct !DILexicalBlock(scope: !21, file: !22, line: 60, column: 6)
!108 = !DILocation(line: 60, column: 23, scope: !107)
!109 = !DILocation(line: 60, column: 31, scope: !107)
!110 = !DILocation(line: 60, column: 6, scope: !107)
!111 = !DILocation(line: 60, column: 42, scope: !107)
!112 = !DILocation(line: 60, column: 6, scope: !21)
!113 = !DILocation(line: 61, column: 10, scope: !107)
!114 = !DILocation(line: 61, column: 59, scope: !107)
!115 = !DILocation(line: 61, column: 3, scope: !116)
!116 = !DILexicalBlockFile(scope: !107, file: !22, discriminator: 1)
!117 = !DILocation(line: 61, column: 3, scope: !107)
!118 = !DILocation(line: 62, column: 1, scope: !21)
!119 = distinct !DISubprogram(name: "file_slurp", scope: !22, file: !22, line: 89, type: !120, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!120 = !DISubroutineType(types: !121)
!121 = !{!17, !25, !122, !132}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !124, line: 55, size: 192, align: 64, elements: !125)
!124 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!125 = !{!126, !129, !130}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !123, file: !124, line: 56, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !128, line: 216, baseType: !41)
!128 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !123, file: !124, line: 56, baseType: !127, size: 64, align: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !123, file: !124, line: 57, baseType: !131, size: 64, align: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !4, line: 42, size: 128, align: 64, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !4, line: 43, baseType: !3, size: 32, align: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !133, file: !4, line: 45, baseType: !17, size: 32, align: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !133, file: !4, line: 46, baseType: !131, size: 64, align: 64, offset: 64)
!138 = !DILocalVariable(name: "filename", arg: 1, scope: !119, file: !22, line: 89, type: !25)
!139 = !DILocation(line: 89, column: 24, scope: !119)
!140 = !DILocalVariable(name: "vb", arg: 2, scope: !119, file: !22, line: 89, type: !122)
!141 = !DILocation(line: 89, column: 49, scope: !119)
!142 = !DILocalVariable(name: "err", arg: 3, scope: !119, file: !22, line: 89, type: !132)
!143 = !DILocation(line: 89, column: 72, scope: !119)
!144 = !DILocalVariable(name: "fd", scope: !119, file: !22, line: 91, type: !17)
!145 = !DILocation(line: 91, column: 6, scope: !119)
!146 = !DILocalVariable(name: "rc", scope: !119, file: !22, line: 92, type: !17)
!147 = !DILocation(line: 92, column: 6, scope: !119)
!148 = !DILocation(line: 94, column: 14, scope: !119)
!149 = !DILocation(line: 94, column: 2, scope: !119)
!150 = !DILocation(line: 96, column: 12, scope: !119)
!151 = !DILocation(line: 96, column: 7, scope: !119)
!152 = !DILocation(line: 96, column: 5, scope: !119)
!153 = !DILocation(line: 97, column: 6, scope: !154)
!154 = distinct !DILexicalBlock(scope: !119, file: !22, line: 97, column: 6)
!155 = !DILocation(line: 97, column: 9, scope: !154)
!156 = !DILocation(line: 97, column: 6, scope: !119)
!157 = !DILocation(line: 98, column: 25, scope: !154)
!158 = !DILocation(line: 98, column: 29, scope: !154)
!159 = !DILocation(line: 98, column: 50, scope: !154)
!160 = !DILocation(line: 98, column: 10, scope: !161)
!161 = !DILexicalBlockFile(scope: !154, file: !22, discriminator: 1)
!162 = !DILocation(line: 98, column: 3, scope: !154)
!163 = !DILocation(line: 100, column: 21, scope: !119)
!164 = !DILocation(line: 100, column: 25, scope: !119)
!165 = !DILocation(line: 100, column: 35, scope: !119)
!166 = !DILocation(line: 100, column: 39, scope: !119)
!167 = !DILocation(line: 100, column: 7, scope: !119)
!168 = !DILocation(line: 100, column: 5, scope: !119)
!169 = !DILocation(line: 102, column: 14, scope: !119)
!170 = !DILocation(line: 102, column: 8, scope: !119)
!171 = !DILocation(line: 104, column: 9, scope: !119)
!172 = !DILocation(line: 104, column: 2, scope: !119)
!173 = !DILocation(line: 105, column: 1, scope: !119)
!174 = distinct !DISubprogram(name: "file_slurp_fd", scope: !22, file: !22, line: 65, type: !175, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!175 = !DISubroutineType(types: !176)
!176 = !{!17, !17, !25, !122, !132}
!177 = !DILocalVariable(name: "fd", arg: 1, scope: !174, file: !22, line: 65, type: !17)
!178 = !DILocation(line: 65, column: 19, scope: !174)
!179 = !DILocalVariable(name: "filename", arg: 2, scope: !174, file: !22, line: 65, type: !25)
!180 = !DILocation(line: 65, column: 35, scope: !174)
!181 = !DILocalVariable(name: "vb", arg: 3, scope: !174, file: !22, line: 65, type: !122)
!182 = !DILocation(line: 65, column: 60, scope: !174)
!183 = !DILocalVariable(name: "err", arg: 4, scope: !174, file: !22, line: 66, type: !132)
!184 = !DILocation(line: 66, column: 34, scope: !174)
!185 = !DILocalVariable(name: "st", scope: !174, file: !22, line: 68, type: !35)
!186 = !DILocation(line: 68, column: 14, scope: !174)
!187 = !DILocation(line: 70, column: 12, scope: !188)
!188 = distinct !DILexicalBlock(scope: !174, file: !22, line: 70, column: 6)
!189 = !DILocation(line: 70, column: 6, scope: !188)
!190 = !DILocation(line: 70, column: 21, scope: !188)
!191 = !DILocation(line: 70, column: 6, scope: !174)
!192 = !DILocation(line: 71, column: 25, scope: !188)
!193 = !DILocation(line: 71, column: 29, scope: !188)
!194 = !DILocation(line: 71, column: 50, scope: !188)
!195 = !DILocation(line: 71, column: 10, scope: !196)
!196 = !DILexicalBlockFile(scope: !188, file: !22, discriminator: 1)
!197 = !DILocation(line: 71, column: 3, scope: !188)
!198 = !DILocation(line: 73, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !174, file: !22, line: 73, column: 6)
!200 = !DILocation(line: 73, column: 20, scope: !199)
!201 = !DILocation(line: 73, column: 6, scope: !174)
!202 = !DILocation(line: 74, column: 25, scope: !199)
!203 = !DILocation(line: 74, column: 29, scope: !199)
!204 = !DILocation(line: 75, column: 25, scope: !199)
!205 = !DILocation(line: 74, column: 10, scope: !206)
!206 = !DILexicalBlockFile(scope: !199, file: !22, discriminator: 1)
!207 = !DILocation(line: 74, column: 3, scope: !199)
!208 = !DILocation(line: 77, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !174, file: !22, line: 77, column: 6)
!210 = !DILocation(line: 77, column: 17, scope: !209)
!211 = !DILocation(line: 77, column: 6, scope: !174)
!212 = !DILocation(line: 78, column: 3, scope: !209)
!213 = !DILocation(line: 80, column: 14, scope: !174)
!214 = !DILocation(line: 80, column: 21, scope: !174)
!215 = !DILocation(line: 80, column: 2, scope: !174)
!216 = !DILocation(line: 81, column: 14, scope: !217)
!217 = distinct !DILexicalBlock(scope: !174, file: !22, line: 81, column: 6)
!218 = !DILocation(line: 81, column: 18, scope: !217)
!219 = !DILocation(line: 81, column: 22, scope: !217)
!220 = !DILocation(line: 81, column: 30, scope: !217)
!221 = !DILocation(line: 81, column: 6, scope: !217)
!222 = !DILocation(line: 81, column: 39, scope: !217)
!223 = !DILocation(line: 81, column: 6, scope: !174)
!224 = !DILocation(line: 82, column: 25, scope: !217)
!225 = !DILocation(line: 82, column: 29, scope: !217)
!226 = !DILocation(line: 82, column: 50, scope: !217)
!227 = !DILocation(line: 82, column: 10, scope: !228)
!228 = !DILexicalBlockFile(scope: !217, file: !22, discriminator: 1)
!229 = !DILocation(line: 82, column: 3, scope: !217)
!230 = !DILocation(line: 83, column: 16, scope: !174)
!231 = !DILocation(line: 83, column: 2, scope: !174)
!232 = !DILocation(line: 83, column: 6, scope: !174)
!233 = !DILocation(line: 83, column: 11, scope: !174)
!234 = !DILocation(line: 85, column: 2, scope: !174)
!235 = !DILocation(line: 86, column: 1, scope: !174)
!236 = distinct !DISubprogram(name: "file_unlock", scope: !22, file: !22, line: 121, type: !237, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !17, !25, !25}
!239 = !DILocalVariable(name: "lockfd", arg: 1, scope: !236, file: !22, line: 121, type: !17)
!240 = !DILocation(line: 121, column: 17, scope: !236)
!241 = !DILocalVariable(name: "lockfile", arg: 2, scope: !236, file: !22, line: 121, type: !25)
!242 = !DILocation(line: 121, column: 37, scope: !236)
!243 = !DILocalVariable(name: "lockdesc", arg: 3, scope: !236, file: !22, line: 121, type: !25)
!244 = !DILocation(line: 121, column: 59, scope: !236)
!245 = !DILocalVariable(name: "fl", scope: !236, file: !22, line: 123, type: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flock", file: !247, line: 35, size: 256, align: 64, elements: !248)
!247 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fcntl.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!248 = !{!249, !251, !252, !253, !254}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "l_type", scope: !246, file: !247, line: 37, baseType: !250, size: 16, align: 16)
!250 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "l_whence", scope: !246, file: !247, line: 38, baseType: !250, size: 16, align: 16, offset: 16)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "l_start", scope: !246, file: !247, line: 40, baseType: !56, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "l_len", scope: !246, file: !247, line: 41, baseType: !56, size: 64, align: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "l_pid", scope: !246, file: !247, line: 46, baseType: !255, size: 32, align: 32, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !40, line: 133, baseType: !17)
!256 = !DILocation(line: 123, column: 15, scope: !236)
!257 = !DILocation(line: 125, column: 6, scope: !258)
!258 = distinct !DILexicalBlock(scope: !236, file: !22, line: 125, column: 6)
!259 = !DILocation(line: 125, column: 13, scope: !258)
!260 = !DILocation(line: 125, column: 6, scope: !236)
!261 = !DILocation(line: 126, column: 65, scope: !258)
!262 = !DILocation(line: 126, column: 75, scope: !258)
!263 = !DILocation(line: 126, column: 85, scope: !258)
!264 = !DILocation(line: 126, column: 3, scope: !258)
!265 = !DILocation(line: 128, column: 2, scope: !236)
!266 = !DILocation(line: 130, column: 12, scope: !267)
!267 = distinct !DILexicalBlock(scope: !236, file: !22, line: 130, column: 6)
!268 = !DILocation(line: 130, column: 6, scope: !267)
!269 = !DILocation(line: 130, column: 33, scope: !267)
!270 = !DILocation(line: 130, column: 6, scope: !236)
!271 = !DILocation(line: 131, column: 10, scope: !267)
!272 = !DILocation(line: 131, column: 36, scope: !267)
!273 = !DILocation(line: 131, column: 3, scope: !274)
!274 = !DILexicalBlockFile(scope: !267, file: !22, discriminator: 1)
!275 = !DILocation(line: 131, column: 3, scope: !267)
!276 = !DILocation(line: 132, column: 1, scope: !236)
!277 = distinct !DISubprogram(name: "file_lock_setup", scope: !22, file: !22, line: 108, type: !278, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !280, !250}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!281 = !DILocalVariable(name: "fl", arg: 1, scope: !277, file: !22, line: 108, type: !280)
!282 = !DILocation(line: 108, column: 31, scope: !277)
!283 = !DILocalVariable(name: "type", arg: 2, scope: !277, file: !22, line: 108, type: !250)
!284 = !DILocation(line: 108, column: 41, scope: !277)
!285 = !DILocation(line: 110, column: 15, scope: !277)
!286 = !DILocation(line: 110, column: 2, scope: !277)
!287 = !DILocation(line: 110, column: 6, scope: !277)
!288 = !DILocation(line: 110, column: 13, scope: !277)
!289 = !DILocation(line: 111, column: 2, scope: !277)
!290 = !DILocation(line: 111, column: 6, scope: !277)
!291 = !DILocation(line: 111, column: 15, scope: !277)
!292 = !DILocation(line: 112, column: 2, scope: !277)
!293 = !DILocation(line: 112, column: 6, scope: !277)
!294 = !DILocation(line: 112, column: 14, scope: !277)
!295 = !DILocation(line: 113, column: 2, scope: !277)
!296 = !DILocation(line: 113, column: 6, scope: !277)
!297 = !DILocation(line: 113, column: 12, scope: !277)
!298 = !DILocation(line: 114, column: 2, scope: !277)
!299 = !DILocation(line: 114, column: 6, scope: !277)
!300 = !DILocation(line: 114, column: 12, scope: !277)
!301 = !DILocation(line: 115, column: 1, scope: !277)
!302 = distinct !DISubprogram(name: "file_is_locked", scope: !22, file: !22, line: 151, type: !303, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!303 = !DISubroutineType(types: !304)
!304 = !{!305, !17, !25}
!305 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!306 = !DILocalVariable(name: "lockfd", arg: 1, scope: !302, file: !22, line: 151, type: !17)
!307 = !DILocation(line: 151, column: 20, scope: !302)
!308 = !DILocalVariable(name: "filename", arg: 2, scope: !302, file: !22, line: 151, type: !25)
!309 = !DILocation(line: 151, column: 40, scope: !302)
!310 = !DILocalVariable(name: "fl", scope: !302, file: !22, line: 153, type: !246)
!311 = !DILocation(line: 153, column: 15, scope: !302)
!312 = !DILocation(line: 155, column: 2, scope: !302)
!313 = !DILocation(line: 157, column: 12, scope: !314)
!314 = distinct !DILexicalBlock(scope: !302, file: !22, line: 157, column: 6)
!315 = !DILocation(line: 157, column: 6, scope: !314)
!316 = !DILocation(line: 157, column: 33, scope: !314)
!317 = !DILocation(line: 157, column: 6, scope: !302)
!318 = !DILocation(line: 158, column: 9, scope: !314)
!319 = !DILocation(line: 158, column: 53, scope: !314)
!320 = !DILocation(line: 158, column: 3, scope: !321)
!321 = !DILexicalBlockFile(scope: !314, file: !22, discriminator: 1)
!322 = !DILocation(line: 158, column: 3, scope: !314)
!323 = !DILocation(line: 160, column: 9, scope: !324)
!324 = distinct !DILexicalBlock(scope: !302, file: !22, line: 160, column: 6)
!325 = !DILocation(line: 160, column: 6, scope: !324)
!326 = !DILocation(line: 160, column: 16, scope: !324)
!327 = !DILocation(line: 160, column: 26, scope: !324)
!328 = !DILocation(line: 160, column: 32, scope: !329)
!329 = !DILexicalBlockFile(scope: !324, file: !22, discriminator: 1)
!330 = !DILocation(line: 160, column: 41, scope: !329)
!331 = !DILocation(line: 160, column: 38, scope: !329)
!332 = !DILocation(line: 160, column: 6, scope: !329)
!333 = !DILocation(line: 161, column: 3, scope: !324)
!334 = !DILocation(line: 163, column: 3, scope: !324)
!335 = !DILocation(line: 164, column: 1, scope: !302)
!336 = distinct !DISubprogram(name: "file_lock", scope: !22, file: !22, line: 176, type: !337, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !16, !9, !25, !25}
!339 = !DILocalVariable(name: "lockfd", arg: 1, scope: !336, file: !22, line: 176, type: !16)
!340 = !DILocation(line: 176, column: 16, scope: !336)
!341 = !DILocalVariable(name: "flags", arg: 2, scope: !336, file: !22, line: 176, type: !9)
!342 = !DILocation(line: 176, column: 45, scope: !336)
!343 = !DILocalVariable(name: "filename", arg: 3, scope: !336, file: !22, line: 176, type: !25)
!344 = !DILocation(line: 176, column: 64, scope: !336)
!345 = !DILocalVariable(name: "desc", arg: 4, scope: !336, file: !22, line: 177, type: !25)
!346 = !DILocation(line: 177, column: 23, scope: !336)
!347 = !DILocalVariable(name: "fl", scope: !336, file: !22, line: 179, type: !246)
!348 = !DILocation(line: 179, column: 15, scope: !336)
!349 = !DILocalVariable(name: "lock_cmd", scope: !336, file: !22, line: 180, type: !17)
!350 = !DILocation(line: 180, column: 6, scope: !336)
!351 = !DILocation(line: 182, column: 14, scope: !336)
!352 = !DILocation(line: 182, column: 13, scope: !336)
!353 = !DILocation(line: 182, column: 22, scope: !336)
!354 = !DILocation(line: 182, column: 2, scope: !336)
!355 = !DILocation(line: 184, column: 2, scope: !336)
!356 = !DILocation(line: 186, column: 6, scope: !357)
!357 = distinct !DILexicalBlock(scope: !336, file: !22, line: 186, column: 6)
!358 = !DILocation(line: 186, column: 12, scope: !357)
!359 = !DILocation(line: 186, column: 6, scope: !336)
!360 = !DILocation(line: 187, column: 12, scope: !357)
!361 = !DILocation(line: 187, column: 3, scope: !357)
!362 = !DILocation(line: 189, column: 12, scope: !357)
!363 = !DILocation(line: 191, column: 13, scope: !364)
!364 = distinct !DILexicalBlock(scope: !336, file: !22, line: 191, column: 6)
!365 = !DILocation(line: 191, column: 12, scope: !364)
!366 = !DILocation(line: 191, column: 21, scope: !364)
!367 = !DILocation(line: 191, column: 6, scope: !364)
!368 = !DILocation(line: 191, column: 36, scope: !364)
!369 = !DILocation(line: 191, column: 6, scope: !336)
!370 = !DILocation(line: 192, column: 8, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !22, line: 192, column: 6)
!372 = distinct !DILexicalBlock(scope: !364, file: !22, line: 191, column: 43)
!373 = !DILocation(line: 192, column: 7, scope: !371)
!374 = !DILocation(line: 192, column: 12, scope: !371)
!375 = !DILocation(line: 192, column: 22, scope: !371)
!376 = !DILocation(line: 192, column: 27, scope: !377)
!377 = !DILexicalBlockFile(scope: !371, file: !22, discriminator: 1)
!378 = !DILocation(line: 192, column: 26, scope: !377)
!379 = !DILocation(line: 192, column: 31, scope: !377)
!380 = !DILocation(line: 192, column: 6, scope: !377)
!381 = !DILocation(line: 193, column: 10, scope: !371)
!382 = !DILocation(line: 193, column: 48, scope: !371)
!383 = !DILocation(line: 193, column: 4, scope: !377)
!384 = !DILocation(line: 193, column: 4, scope: !371)
!385 = !DILocation(line: 195, column: 11, scope: !371)
!386 = !DILocation(line: 195, column: 35, scope: !371)
!387 = !DILocation(line: 195, column: 4, scope: !377)
!388 = !DILocation(line: 195, column: 4, scope: !371)
!389 = !DILocation(line: 198, column: 43, scope: !336)
!390 = !DILocation(line: 198, column: 51, scope: !336)
!391 = !DILocation(line: 198, column: 61, scope: !336)
!392 = !DILocation(line: 198, column: 2, scope: !336)
!393 = !DILocation(line: 199, column: 1, scope: !336)
!394 = distinct !DISubprogram(name: "file_unlock_cleanup", scope: !22, file: !22, line: 135, type: !395, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !17, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!398 = !DILocalVariable(name: "argc", arg: 1, scope: !394, file: !22, line: 135, type: !17)
!399 = !DILocation(line: 135, column: 25, scope: !394)
!400 = !DILocalVariable(name: "argv", arg: 2, scope: !394, file: !22, line: 135, type: !397)
!401 = !DILocation(line: 135, column: 38, scope: !394)
!402 = !DILocalVariable(name: "lockfd", scope: !394, file: !22, line: 137, type: !17)
!403 = !DILocation(line: 137, column: 6, scope: !394)
!404 = !DILocation(line: 137, column: 23, scope: !394)
!405 = !DILocation(line: 137, column: 16, scope: !394)
!406 = !DILocation(line: 137, column: 15, scope: !394)
!407 = !DILocalVariable(name: "lockfile", scope: !394, file: !22, line: 138, type: !25)
!408 = !DILocation(line: 138, column: 14, scope: !394)
!409 = !DILocation(line: 138, column: 25, scope: !394)
!410 = !DILocalVariable(name: "lockdesc", scope: !394, file: !22, line: 139, type: !25)
!411 = !DILocation(line: 139, column: 14, scope: !394)
!412 = !DILocation(line: 139, column: 25, scope: !394)
!413 = !DILocation(line: 141, column: 14, scope: !394)
!414 = !DILocation(line: 141, column: 22, scope: !394)
!415 = !DILocation(line: 141, column: 32, scope: !394)
!416 = !DILocation(line: 141, column: 2, scope: !394)
!417 = !DILocation(line: 142, column: 1, scope: !394)
!418 = distinct !DISubprogram(name: "file_show", scope: !22, file: !22, line: 202, type: !419, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !25}
!421 = !DILocalVariable(name: "filename", arg: 1, scope: !418, file: !22, line: 202, type: !25)
!422 = !DILocation(line: 202, column: 23, scope: !418)
!423 = !DILocalVariable(name: "pager", scope: !418, file: !22, line: 204, type: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "pager", file: !426, line: 36, flags: DIFlagFwdDecl)
!426 = !DIFile(filename: "../../lib/dpkg/pager.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!427 = !DILocation(line: 204, column: 16, scope: !418)
!428 = !DILocalVariable(name: "err", scope: !418, file: !22, line: 205, type: !133)
!429 = !DILocation(line: 205, column: 20, scope: !418)
!430 = !DILocalVariable(name: "fd", scope: !418, file: !22, line: 206, type: !17)
!431 = !DILocation(line: 206, column: 6, scope: !418)
!432 = !DILocalVariable(name: "rc", scope: !418, file: !22, line: 206, type: !17)
!433 = !DILocation(line: 206, column: 10, scope: !418)
!434 = !DILocation(line: 208, column: 6, scope: !435)
!435 = distinct !DILexicalBlock(scope: !418, file: !22, line: 208, column: 6)
!436 = !DILocation(line: 208, column: 15, scope: !435)
!437 = !DILocation(line: 208, column: 6, scope: !418)
!438 = !DILocation(line: 209, column: 3, scope: !435)
!439 = !DILocation(line: 211, column: 12, scope: !418)
!440 = !DILocation(line: 211, column: 7, scope: !418)
!441 = !DILocation(line: 211, column: 5, scope: !418)
!442 = !DILocation(line: 212, column: 6, scope: !443)
!443 = distinct !DILexicalBlock(scope: !418, file: !22, line: 212, column: 6)
!444 = !DILocation(line: 212, column: 9, scope: !443)
!445 = !DILocation(line: 212, column: 6, scope: !418)
!446 = !DILocation(line: 213, column: 10, scope: !443)
!447 = !DILocation(line: 213, column: 36, scope: !443)
!448 = !DILocation(line: 213, column: 3, scope: !449)
!449 = !DILexicalBlockFile(scope: !443, file: !22, discriminator: 1)
!450 = !DILocation(line: 213, column: 3, scope: !443)
!451 = !DILocation(line: 215, column: 21, scope: !418)
!452 = !DILocation(line: 215, column: 10, scope: !453)
!453 = !DILexicalBlockFile(scope: !418, file: !22, discriminator: 1)
!454 = !DILocation(line: 215, column: 8, scope: !418)
!455 = !DILocation(line: 216, column: 26, scope: !418)
!456 = !DILocation(line: 216, column: 7, scope: !418)
!457 = !DILocation(line: 216, column: 5, scope: !418)
!458 = !DILocation(line: 217, column: 13, scope: !418)
!459 = !DILocation(line: 217, column: 2, scope: !418)
!460 = !DILocation(line: 219, column: 8, scope: !418)
!461 = !DILocation(line: 219, column: 2, scope: !418)
!462 = !DILocation(line: 221, column: 6, scope: !463)
!463 = distinct !DILexicalBlock(scope: !418, file: !22, line: 221, column: 6)
!464 = !DILocation(line: 221, column: 9, scope: !463)
!465 = !DILocation(line: 221, column: 13, scope: !463)
!466 = !DILocation(line: 221, column: 20, scope: !467)
!467 = !DILexicalBlockFile(scope: !463, file: !22, discriminator: 1)
!468 = !DILocation(line: 221, column: 29, scope: !467)
!469 = !DILocation(line: 221, column: 6, scope: !467)
!470 = !DILocation(line: 222, column: 14, scope: !471)
!471 = distinct !DILexicalBlock(scope: !463, file: !22, line: 221, column: 38)
!472 = !DILocation(line: 222, column: 4, scope: !471)
!473 = !DILocation(line: 222, column: 8, scope: !471)
!474 = !DILocation(line: 223, column: 10, scope: !471)
!475 = !DILocation(line: 223, column: 52, scope: !471)
!476 = !DILocation(line: 223, column: 3, scope: !477)
!477 = !DILexicalBlockFile(scope: !471, file: !22, discriminator: 1)
!478 = !DILocation(line: 223, column: 3, scope: !471)
!479 = !DILocation(line: 225, column: 1, scope: !418)
