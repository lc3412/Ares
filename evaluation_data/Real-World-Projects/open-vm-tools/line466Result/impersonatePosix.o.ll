; ModuleID = './impersonatePosix.o.i'
source_filename = "./impersonatePosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImpersonationState = type { i8*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@impLinux = internal global %struct.ImpersonationState* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"impersonatePosix.c\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Impersonate: setspecific: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to lookup owner for: %s. Reason: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to lookup user with uid: %u. Reason: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Failed to get password entry for uid 0: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Failed to get password entry for : %s. Reason: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @ImpersonateInit() #0 !dbg !28 {
  ret void, !dbg !31
}

; Function Attrs: nounwind uwtable
define %struct.ImpersonationState* @ImpersonateGetTLS() #0 !dbg !32 {
  %1 = alloca %struct.ImpersonationState*, align 8
  %2 = alloca %struct.ImpersonationState*, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.ImpersonationState** %2, metadata !35, metadata !36), !dbg !37
  store %struct.ImpersonationState* null, %struct.ImpersonationState** %2, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %3, metadata !38, metadata !36), !dbg !39
  %4 = load %struct.ImpersonationState*, %struct.ImpersonationState** @impLinux, align 8, !dbg !40
  store %struct.ImpersonationState* %4, %struct.ImpersonationState** %2, align 8, !dbg !41
  %5 = load %struct.ImpersonationState*, %struct.ImpersonationState** %2, align 8, !dbg !42
  %6 = icmp ne %struct.ImpersonationState* %5, null, !dbg !44
  br i1 %6, label %7, label %9, !dbg !45

; <label>:7:                                      ; preds = %0
  %8 = load %struct.ImpersonationState*, %struct.ImpersonationState** %2, align 8, !dbg !46
  store %struct.ImpersonationState* %8, %struct.ImpersonationState** %1, align 8, !dbg !48
  br label %35, !dbg !48

; <label>:9:                                      ; preds = %0
  %10 = call noalias i8* @calloc(i64 1, i64 16) #7, !dbg !49
  %11 = bitcast i8* %10 to %struct.ImpersonationState*, !dbg !49
  store %struct.ImpersonationState* %11, %struct.ImpersonationState** %2, align 8, !dbg !50
  %12 = load %struct.ImpersonationState*, %struct.ImpersonationState** %2, align 8, !dbg !51
  %13 = icmp ne %struct.ImpersonationState* %12, null, !dbg !54
  %14 = xor i1 %13, true, !dbg !54
  %15 = zext i1 %14 to i32, !dbg !54
  %16 = sext i32 %15 to i64, !dbg !55
  %17 = icmp ne i64 %16, 0, !dbg !56
  br i1 %17, label %18, label %19, !dbg !57

; <label>:18:                                     ; preds = %9
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 149) #8, !dbg !58
  unreachable, !dbg !58

; <label>:19:                                     ; preds = %9
  %20 = load %struct.ImpersonationState*, %struct.ImpersonationState** %2, align 8, !dbg !61
  store %struct.ImpersonationState* %20, %struct.ImpersonationState** @impLinux, align 8, !dbg !62
  store i32 0, i32* %3, align 4, !dbg !63
  %21 = load i32, i32* %3, align 4, !dbg !64
  %22 = icmp ne i32 %21, 0, !dbg !66
  br i1 %22, label %23, label %33, !dbg !67

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %3, align 4, !dbg !68
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 %24), !dbg !70
  %25 = load i32, i32* %3, align 4, !dbg !71
  %26 = icmp eq i32 %25, 0, !dbg !74
  %27 = xor i1 %26, true, !dbg !75
  %28 = zext i1 %27 to i32, !dbg !75
  %29 = sext i32 %28 to i64, !dbg !76
  %30 = icmp ne i64 %29, 0, !dbg !77
  br i1 %30, label %31, label %32, !dbg !78

; <label>:31:                                     ; preds = %23
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 158) #8, !dbg !79
  unreachable, !dbg !79

; <label>:32:                                     ; preds = %23
  br label %33, !dbg !82

; <label>:33:                                     ; preds = %32, %19
  %34 = load %struct.ImpersonationState*, %struct.ImpersonationState** %2, align 8, !dbg !83
  store %struct.ImpersonationState* %34, %struct.ImpersonationState** %1, align 8, !dbg !84
  br label %35, !dbg !84

; <label>:35:                                     ; preds = %33, %7
  %36 = load %struct.ImpersonationState*, %struct.ImpersonationState** %1, align 8, !dbg !85
  ret %struct.ImpersonationState* %36, !dbg !85
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #3

declare void @Warning(i8*, ...) #4

; Function Attrs: nounwind uwtable
define signext i8 @ImpersonateRunas(i8*, i8*, %struct.passwd*) #0 !dbg !86 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !105, metadata !36), !dbg !106
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !107, metadata !36), !dbg !108
  store %struct.passwd* %2, %struct.passwd** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.passwd** %6, metadata !109, metadata !36), !dbg !110
  %7 = load i8*, i8** %4, align 8, !dbg !111
  %8 = call signext i8 @ImpersonateOwner(i8* %7), !dbg !112
  ret i8 %8, !dbg !113
}

; Function Attrs: nounwind uwtable
define signext i8 @ImpersonateOwner(i8*) #0 !dbg !114 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca [8192 x i8], align 16
  %6 = alloca %struct.passwd, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !117, metadata !36), !dbg !118
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !119, metadata !36), !dbg !157
  call void @llvm.dbg.declare(metadata [8192 x i8]* %5, metadata !158, metadata !36), !dbg !162
  call void @llvm.dbg.declare(metadata %struct.passwd* %6, metadata !163, metadata !36), !dbg !164
  call void @llvm.dbg.declare(metadata %struct.passwd** %7, metadata !165, metadata !36), !dbg !167
  store %struct.passwd* %6, %struct.passwd** %7, align 8, !dbg !167
  call void @llvm.dbg.declare(metadata i32* %8, metadata !168, metadata !36), !dbg !169
  %9 = load i8*, i8** %3, align 8, !dbg !170
  %10 = call i32 @Posix_Stat(i8* %9, %struct.stat* %4), !dbg !172
  %11 = icmp eq i32 %10, -1, !dbg !173
  br i1 %11, label %12, label %17, !dbg !174

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %3, align 8, !dbg !175
  %14 = call i32* @__errno_location() #1, !dbg !177
  %15 = load i32, i32* %14, align 4, !dbg !178
  %16 = call i8* @Err_Errno2String(i32 %15), !dbg !179
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i8* %13, i8* %16), !dbg !181
  store i8 0, i8* %2, align 1, !dbg !182
  br label %38, !dbg !182

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 4, !dbg !183
  %19 = load i32, i32* %18, align 4, !dbg !183
  %20 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i32 0, i32 0, !dbg !185
  %21 = call i32 @Posix_Getpwuid_r(i32 %19, %struct.passwd* %6, i8* %20, i64 8192, %struct.passwd** %7), !dbg !186
  store i32 %21, i32* %8, align 4, !dbg !187
  %22 = icmp ne i32 %21, 0, !dbg !188
  br i1 %22, label %26, label %23, !dbg !189

; <label>:23:                                     ; preds = %17
  %24 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !190
  %25 = icmp ne %struct.passwd* %24, null, !dbg !190
  br i1 %25, label %35, label %26, !dbg !192

; <label>:26:                                     ; preds = %23, %17
  %27 = load i32, i32* %8, align 4, !dbg !193
  %28 = icmp eq i32 %27, 0, !dbg !196
  br i1 %28, label %29, label %30, !dbg !197

; <label>:29:                                     ; preds = %26
  store i32 2, i32* %8, align 4, !dbg !198
  br label %30, !dbg !200

; <label>:30:                                     ; preds = %29, %26
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 4, !dbg !201
  %32 = load i32, i32* %31, align 4, !dbg !201
  %33 = load i32, i32* %8, align 4, !dbg !202
  %34 = call i8* @Err_Errno2String(i32 %33), !dbg !203
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i32 %32, i8* %34), !dbg !204
  store i8 0, i8* %2, align 1, !dbg !205
  br label %38, !dbg !205

; <label>:35:                                     ; preds = %23
  %36 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !206
  %37 = call signext i8 @ImpersonateDoPosix(%struct.passwd* %36), !dbg !207
  store i8 %37, i8* %2, align 1, !dbg !208
  br label %38, !dbg !208

; <label>:38:                                     ; preds = %35, %30, %12
  %39 = load i8, i8* %2, align 1, !dbg !209
  ret i8 %39, !dbg !209
}

declare i32 @Posix_Stat(i8*, %struct.stat*) #4

declare i8* @Err_Errno2String(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @Posix_Getpwuid_r(i32, %struct.passwd*, i8*, i64, %struct.passwd**) #4

; Function Attrs: nounwind uwtable
define internal signext i8 @ImpersonateDoPosix(%struct.passwd*) #0 !dbg !210 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ImpersonationState*, align 8
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.passwd** %2, metadata !213, metadata !36), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %3, metadata !215, metadata !36), !dbg !216
  store i32 0, i32* %3, align 4, !dbg !216
  call void @llvm.dbg.declare(metadata %struct.ImpersonationState** %4, metadata !217, metadata !36), !dbg !218
  store %struct.ImpersonationState* null, %struct.ImpersonationState** %4, align 8, !dbg !218
  %5 = call %struct.ImpersonationState* @ImpersonateGetTLS(), !dbg !219
  store %struct.ImpersonationState* %5, %struct.ImpersonationState** %4, align 8, !dbg !220
  %6 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !221
  %7 = getelementptr inbounds %struct.passwd, %struct.passwd* %6, i32 0, i32 2, !dbg !223
  %8 = load i32, i32* %7, align 8, !dbg !223
  %9 = call i32 @geteuid() #7, !dbg !224
  %10 = icmp eq i32 %8, %9, !dbg !225
  br i1 %10, label %11, label %16, !dbg !226

; <label>:11:                                     ; preds = %1
  %12 = load %struct.ImpersonationState*, %struct.ImpersonationState** %4, align 8, !dbg !227
  %13 = getelementptr inbounds %struct.ImpersonationState, %struct.ImpersonationState* %12, i32 0, i32 1, !dbg !229
  %14 = load i32, i32* %13, align 8, !dbg !230
  %15 = add nsw i32 %14, 1, !dbg !230
  store i32 %15, i32* %13, align 8, !dbg !230
  br label %91, !dbg !231

; <label>:16:                                     ; preds = %1
  %17 = call i32 @geteuid() #7, !dbg !232
  %18 = icmp eq i32 %17, 0, !dbg !235
  %19 = xor i1 %18, true, !dbg !236
  %20 = zext i1 %19 to i32, !dbg !236
  %21 = sext i32 %20 to i64, !dbg !237
  %22 = icmp ne i64 %21, 0, !dbg !238
  br i1 %22, label %23, label %24, !dbg !239

; <label>:23:                                     ; preds = %16
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 363) #8, !dbg !240
  unreachable, !dbg !240

; <label>:24:                                     ; preds = %16
  %25 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !243
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 3, !dbg !244
  %27 = load i32, i32* %26, align 4, !dbg !244
  %28 = call i32 @Id_SetGid(i32 %27), !dbg !245
  store i32 %28, i32* %3, align 4, !dbg !246
  %29 = load i32, i32* %3, align 4, !dbg !247
  %30 = icmp slt i32 %29, 0, !dbg !249
  br i1 %30, label %31, label %32, !dbg !250

; <label>:31:                                     ; preds = %24
  br label %80, !dbg !251

; <label>:32:                                     ; preds = %24
  %33 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !253
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 0, !dbg !254
  %35 = load i8*, i8** %34, align 8, !dbg !254
  %36 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !255
  %37 = getelementptr inbounds %struct.passwd, %struct.passwd* %36, i32 0, i32 3, !dbg !256
  %38 = load i32, i32* %37, align 4, !dbg !256
  %39 = call i32 @initgroups(i8* %35, i32 %38), !dbg !257
  store i32 %39, i32* %3, align 4, !dbg !258
  %40 = load i32, i32* %3, align 4, !dbg !259
  %41 = icmp slt i32 %40, 0, !dbg !261
  br i1 %41, label %42, label %43, !dbg !262

; <label>:42:                                     ; preds = %32
  br label %80, !dbg !263

; <label>:43:                                     ; preds = %32
  %44 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !265
  %45 = getelementptr inbounds %struct.passwd, %struct.passwd* %44, i32 0, i32 2, !dbg !266
  %46 = load i32, i32* %45, align 8, !dbg !266
  %47 = call i32 @Id_SetEUid(i32 %46), !dbg !267
  store i32 %47, i32* %3, align 4, !dbg !268
  %48 = load i32, i32* %3, align 4, !dbg !269
  %49 = icmp slt i32 %48, 0, !dbg !271
  br i1 %49, label %50, label %51, !dbg !272

; <label>:50:                                     ; preds = %43
  br label %80, !dbg !273

; <label>:51:                                     ; preds = %43
  %52 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !275
  %53 = getelementptr inbounds %struct.passwd, %struct.passwd* %52, i32 0, i32 0, !dbg !276
  %54 = load i8*, i8** %53, align 8, !dbg !276
  %55 = call i32 @Posix_Setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %54, i32 1), !dbg !277
  %56 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !278
  %57 = getelementptr inbounds %struct.passwd, %struct.passwd* %56, i32 0, i32 5, !dbg !279
  %58 = load i8*, i8** %57, align 8, !dbg !279
  %59 = call i32 @Posix_Setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* %58, i32 1), !dbg !280
  %60 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !281
  %61 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i32 0, i32 6, !dbg !282
  %62 = load i8*, i8** %61, align 8, !dbg !282
  %63 = call i32 @Posix_Setenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %62, i32 1), !dbg !283
  %64 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !284
  %65 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i32 0, i32 0, !dbg !285
  %66 = load i8*, i8** %65, align 8, !dbg !285
  %67 = call noalias i8* @strdup(i8* %66) #7, !dbg !286
  %68 = load %struct.ImpersonationState*, %struct.ImpersonationState** %4, align 8, !dbg !287
  %69 = getelementptr inbounds %struct.ImpersonationState, %struct.ImpersonationState* %68, i32 0, i32 0, !dbg !288
  store i8* %67, i8** %69, align 8, !dbg !289
  %70 = load %struct.ImpersonationState*, %struct.ImpersonationState** %4, align 8, !dbg !290
  %71 = getelementptr inbounds %struct.ImpersonationState, %struct.ImpersonationState* %70, i32 0, i32 0, !dbg !293
  %72 = load i8*, i8** %71, align 8, !dbg !293
  %73 = icmp ne i8* %72, null, !dbg !294
  %74 = xor i1 %73, true, !dbg !294
  %75 = zext i1 %74 to i32, !dbg !294
  %76 = sext i32 %75 to i64, !dbg !295
  %77 = icmp ne i64 %76, 0, !dbg !296
  br i1 %77, label %78, label %79, !dbg !297

; <label>:78:                                     ; preds = %51
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 395) #8, !dbg !298
  unreachable, !dbg !298

; <label>:79:                                     ; preds = %51
  br label %80, !dbg !301

; <label>:80:                                     ; preds = %79, %50, %42, %31
  %81 = load %struct.ImpersonationState*, %struct.ImpersonationState** %4, align 8, !dbg !303
  %82 = getelementptr inbounds %struct.ImpersonationState, %struct.ImpersonationState* %81, i32 0, i32 1, !dbg !304
  store i32 1, i32* %82, align 8, !dbg !305
  %83 = load i32, i32* %3, align 4, !dbg !306
  %84 = icmp eq i32 %83, 0, !dbg !309
  %85 = xor i1 %84, true, !dbg !310
  %86 = zext i1 %85 to i32, !dbg !310
  %87 = sext i32 %86 to i64, !dbg !311
  %88 = icmp ne i64 %87, 0, !dbg !312
  br i1 %88, label %89, label %90, !dbg !313

; <label>:89:                                     ; preds = %80
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 399) #8, !dbg !314
  unreachable, !dbg !314

; <label>:90:                                     ; preds = %80
  br label %91, !dbg !317

; <label>:91:                                     ; preds = %90, %11
  %92 = load i32, i32* %3, align 4, !dbg !318
  %93 = icmp ne i32 %92, 0, !dbg !318
  %94 = select i1 %93, i32 0, i32 1, !dbg !318
  %95 = trunc i32 %94 to i8, !dbg !319
  ret i8 %95, !dbg !320
}

; Function Attrs: nounwind uwtable
define signext i8 @ImpersonateUndo() #0 !dbg !321 {
  %1 = alloca [8192 x i8], align 16
  %2 = alloca %struct.passwd, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca %struct.ImpersonationState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [8192 x i8]* %1, metadata !324, metadata !36), !dbg !325
  call void @llvm.dbg.declare(metadata %struct.passwd* %2, metadata !326, metadata !36), !dbg !327
  call void @llvm.dbg.declare(metadata %struct.passwd** %3, metadata !328, metadata !36), !dbg !329
  store %struct.passwd* %2, %struct.passwd** %3, align 8, !dbg !329
  call void @llvm.dbg.declare(metadata %struct.ImpersonationState** %4, metadata !330, metadata !36), !dbg !331
  store %struct.ImpersonationState* null, %struct.ImpersonationState** %4, align 8, !dbg !331
  call void @llvm.dbg.declare(metadata i32* %5, metadata !332, metadata !36), !dbg !333
  call void @llvm.dbg.declare(metadata i32* %6, metadata !334, metadata !36), !dbg !335
  %7 = call %struct.ImpersonationState* @ImpersonateGetTLS(), !dbg !336
  store %struct.ImpersonationState* %7, %struct.ImpersonationState** %4, align 8, !dbg !337
  %8 = getelementptr inbounds [8192 x i8], [8192 x i8]* %1, i32 0, i32 0, !dbg !338
  %9 = call i32 @Posix_Getpwuid_r(i32 0, %struct.passwd* %2, i8* %8, i64 8192, %struct.passwd** %3), !dbg !340
  store i32 %9, i32* %6, align 4, !dbg !341
  %10 = icmp ne i32 %9, 0, !dbg !342
  br i1 %10, label %14, label %11, !dbg !343

; <label>:11:                                     ; preds = %0
  %12 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !344
  %13 = icmp ne %struct.passwd* %12, null, !dbg !344
  br i1 %13, label %22, label %14, !dbg !346

; <label>:14:                                     ; preds = %11, %0
  %15 = load i32, i32* %6, align 4, !dbg !347
  %16 = icmp eq i32 %15, 0, !dbg !350
  br i1 %16, label %17, label %18, !dbg !351

; <label>:17:                                     ; preds = %14
  store i32 2, i32* %6, align 4, !dbg !352
  br label %18, !dbg !354

; <label>:18:                                     ; preds = %17, %14
  %19 = load i32, i32* %6, align 4, !dbg !355
  store i32 %19, i32* %5, align 4, !dbg !356
  %20 = load i32, i32* %6, align 4, !dbg !357
  %21 = call i8* @Err_Errno2String(i32 %20), !dbg !358
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i8* %21), !dbg !359
  br label %67, !dbg !360

; <label>:22:                                     ; preds = %11
  %23 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !361
  %24 = getelementptr inbounds %struct.passwd, %struct.passwd* %23, i32 0, i32 2, !dbg !362
  %25 = load i32, i32* %24, align 8, !dbg !362
  %26 = call i32 @Id_SetEUid(i32 %25), !dbg !363
  store i32 %26, i32* %5, align 4, !dbg !364
  %27 = load i32, i32* %5, align 4, !dbg !365
  %28 = icmp slt i32 %27, 0, !dbg !367
  br i1 %28, label %29, label %30, !dbg !368

; <label>:29:                                     ; preds = %22
  br label %67, !dbg !369

; <label>:30:                                     ; preds = %22
  %31 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !371
  %32 = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 3, !dbg !372
  %33 = load i32, i32* %32, align 4, !dbg !372
  %34 = call i32 @Id_SetGid(i32 %33), !dbg !373
  store i32 %34, i32* %5, align 4, !dbg !374
  %35 = load i32, i32* %5, align 4, !dbg !375
  %36 = icmp slt i32 %35, 0, !dbg !377
  br i1 %36, label %37, label %38, !dbg !378

; <label>:37:                                     ; preds = %30
  br label %67, !dbg !379

; <label>:38:                                     ; preds = %30
  %39 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !381
  %40 = getelementptr inbounds %struct.passwd, %struct.passwd* %39, i32 0, i32 0, !dbg !382
  %41 = load i8*, i8** %40, align 8, !dbg !382
  %42 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !383
  %43 = getelementptr inbounds %struct.passwd, %struct.passwd* %42, i32 0, i32 3, !dbg !384
  %44 = load i32, i32* %43, align 4, !dbg !384
  %45 = call i32 @initgroups(i8* %41, i32 %44), !dbg !385
  store i32 %45, i32* %5, align 4, !dbg !386
  %46 = load i32, i32* %5, align 4, !dbg !387
  %47 = icmp slt i32 %46, 0, !dbg !389
  br i1 %47, label %48, label %49, !dbg !390

; <label>:48:                                     ; preds = %38
  br label %67, !dbg !391

; <label>:49:                                     ; preds = %38
  %50 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !393
  %51 = getelementptr inbounds %struct.passwd, %struct.passwd* %50, i32 0, i32 0, !dbg !394
  %52 = load i8*, i8** %51, align 8, !dbg !394
  %53 = call i32 @Posix_Setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %52, i32 1), !dbg !395
  %54 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !396
  %55 = getelementptr inbounds %struct.passwd, %struct.passwd* %54, i32 0, i32 5, !dbg !397
  %56 = load i8*, i8** %55, align 8, !dbg !397
  %57 = call i32 @Posix_Setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* %56, i32 1), !dbg !398
  %58 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !399
  %59 = getelementptr inbounds %struct.passwd, %struct.passwd* %58, i32 0, i32 6, !dbg !400
  %60 = load i8*, i8** %59, align 8, !dbg !400
  %61 = call i32 @Posix_Setenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %60, i32 1), !dbg !401
  %62 = load %struct.ImpersonationState*, %struct.ImpersonationState** %4, align 8, !dbg !402
  %63 = getelementptr inbounds %struct.ImpersonationState, %struct.ImpersonationState* %62, i32 0, i32 0, !dbg !403
  %64 = load i8*, i8** %63, align 8, !dbg !403
  call void @free(i8* %64) #7, !dbg !404
  %65 = load %struct.ImpersonationState*, %struct.ImpersonationState** %4, align 8, !dbg !405
  %66 = getelementptr inbounds %struct.ImpersonationState, %struct.ImpersonationState* %65, i32 0, i32 0, !dbg !406
  store i8* null, i8** %66, align 8, !dbg !407
  store i32 0, i32* %5, align 4, !dbg !408
  br label %67, !dbg !409

; <label>:67:                                     ; preds = %49, %48, %37, %29, %18
  %68 = load i32, i32* %5, align 4, !dbg !410
  %69 = icmp eq i32 %68, 0, !dbg !413
  %70 = xor i1 %69, true, !dbg !414
  %71 = zext i1 %70 to i32, !dbg !414
  %72 = sext i32 %71 to i64, !dbg !415
  %73 = icmp ne i64 %72, 0, !dbg !416
  br i1 %73, label %74, label %75, !dbg !417

; <label>:74:                                     ; preds = %67
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 317) #8, !dbg !418
  unreachable, !dbg !418

; <label>:75:                                     ; preds = %67
  %76 = load i32, i32* %5, align 4, !dbg !421
  %77 = icmp ne i32 %76, 0, !dbg !421
  %78 = select i1 %77, i32 0, i32 1, !dbg !421
  %79 = trunc i32 %78 to i8, !dbg !422
  ret i8 %79, !dbg !423
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Id_SetEUid(i32) #6 !dbg !424 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !428, metadata !36), !dbg !429
  %3 = load i32, i32* %2, align 4, !dbg !430
  %4 = call i32 @Id_SetRESUid(i32 -1, i32 %3, i32 -1), !dbg !431
  ret i32 %4, !dbg !432
}

declare i32 @Id_SetGid(i32) #4

declare i32 @initgroups(i8*, i32) #4

declare i32 @Posix_Setenv(i8*, i8*, i32) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @ImpersonateDo(i8*, %struct.passwd*) #0 !dbg !433 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca [8192 x i8], align 16
  %7 = alloca %struct.passwd, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !436, metadata !36), !dbg !437
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.passwd** %5, metadata !438, metadata !36), !dbg !439
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !440, metadata !36), !dbg !441
  call void @llvm.dbg.declare(metadata %struct.passwd* %7, metadata !442, metadata !36), !dbg !443
  call void @llvm.dbg.declare(metadata %struct.passwd** %8, metadata !444, metadata !36), !dbg !445
  store %struct.passwd* %7, %struct.passwd** %8, align 8, !dbg !445
  call void @llvm.dbg.declare(metadata i32* %9, metadata !446, metadata !36), !dbg !447
  %10 = load i8*, i8** %4, align 8, !dbg !448
  %11 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0, !dbg !450
  %12 = call i32 @Posix_Getpwnam_r(i8* %10, %struct.passwd* %7, i8* %11, i64 8192, %struct.passwd** %8), !dbg !451
  store i32 %12, i32* %9, align 4, !dbg !452
  %13 = icmp ne i32 %12, 0, !dbg !453
  br i1 %13, label %17, label %14, !dbg !454

; <label>:14:                                     ; preds = %2
  %15 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !455
  %16 = icmp ne %struct.passwd* %15, null, !dbg !455
  br i1 %16, label %25, label %17, !dbg !457

; <label>:17:                                     ; preds = %14, %2
  %18 = load i32, i32* %9, align 4, !dbg !458
  %19 = icmp eq i32 %18, 0, !dbg !461
  br i1 %19, label %20, label %21, !dbg !462

; <label>:20:                                     ; preds = %17
  store i32 2, i32* %9, align 4, !dbg !463
  br label %21, !dbg !465

; <label>:21:                                     ; preds = %20, %17
  %22 = load i8*, i8** %4, align 8, !dbg !466
  %23 = load i32, i32* %9, align 4, !dbg !467
  %24 = call i8* @Err_Errno2String(i32 %23), !dbg !468
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0), i8* %22, i8* %24), !dbg !469
  store i8 0, i8* %3, align 1, !dbg !470
  br label %28, !dbg !470

; <label>:25:                                     ; preds = %14
  %26 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !471
  %27 = call signext i8 @ImpersonateDoPosix(%struct.passwd* %26), !dbg !472
  store i8 %27, i8* %3, align 1, !dbg !473
  br label %28, !dbg !473

; <label>:28:                                     ; preds = %25, %21
  %29 = load i8, i8* %3, align 1, !dbg !474
  ret i8 %29, !dbg !474
}

declare i32 @Posix_Getpwnam_r(i8*, %struct.passwd*, i8*, i64, %struct.passwd**) #4

; Function Attrs: nounwind uwtable
define signext i8 @ImpersonateForceRoot() #0 !dbg !475 {
  ret i8 1, !dbg !476
}

; Function Attrs: nounwind uwtable
define signext i8 @ImpersonateUnforceRoot() #0 !dbg !477 {
  ret i8 1, !dbg !478
}

declare i32 @Id_SetRESUid(i32, i32, i32) #4

; Function Attrs: nounwind
declare i32 @geteuid() #2

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !12)
!1 = !DIFile(filename: "impersonatePosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line466")
!2 = !{}
!3 = !{!4, !5, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !8, line: 43, baseType: !9)
!8 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/open-vm-tools/line466")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !10, line: 125, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line466")
!11 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!12 = !{!13}
!13 = distinct !DIGlobalVariable(name: "impLinux", scope: !0, file: !14, line: 48, type: !15, isLocal: true, isDefinition: true, variable: %struct.ImpersonationState** @impLinux)
!14 = !DIFile(filename: "impersonatePosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line466")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImpersonationState", file: !17, line: 49, baseType: !18)
!17 = !DIFile(filename: "impersonateInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line466")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ImpersonationState", file: !17, line: 41, size: 128, align: 64, elements: !19)
!19 = !{!20, !23}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "impersonatedUser", scope: !18, file: !17, line: 42, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "refCount", scope: !18, file: !17, line: 43, baseType: !24, size: 32, align: 32, offset: 64)
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!28 = distinct !DISubprogram(name: "ImpersonateInit", scope: !14, file: !14, line: 70, type: !29, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{null}
!31 = !DILocation(line: 83, column: 1, scope: !28)
!32 = distinct !DISubprogram(name: "ImpersonateGetTLS", scope: !14, file: !14, line: 131, type: !33, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!33 = !DISubroutineType(types: !34)
!34 = !{!15}
!35 = !DILocalVariable(name: "ptr", scope: !32, file: !14, line: 133, type: !15)
!36 = !DIExpression()
!37 = !DILocation(line: 133, column: 24, scope: !32)
!38 = !DILocalVariable(name: "status", scope: !32, file: !14, line: 134, type: !24)
!39 = !DILocation(line: 134, column: 8, scope: !32)
!40 = !DILocation(line: 141, column: 8, scope: !32)
!41 = !DILocation(line: 141, column: 6, scope: !32)
!42 = !DILocation(line: 143, column: 8, scope: !43)
!43 = distinct !DILexicalBlock(scope: !32, file: !14, line: 143, column: 8)
!44 = !DILocation(line: 143, column: 12, scope: !43)
!45 = !DILocation(line: 143, column: 8, scope: !32)
!46 = !DILocation(line: 144, column: 14, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !14, line: 143, column: 20)
!48 = !DILocation(line: 144, column: 7, scope: !47)
!49 = !DILocation(line: 148, column: 10, scope: !32)
!50 = !DILocation(line: 148, column: 8, scope: !32)
!51 = !DILocation(line: 149, column: 30, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !14, line: 149, column: 10)
!53 = distinct !DILexicalBlock(scope: !32, file: !14, line: 149, column: 5)
!54 = !DILocation(line: 149, column: 28, scope: !52)
!55 = !DILocation(line: 149, column: 27, scope: !52)
!56 = !DILocation(line: 149, column: 10, scope: !52)
!57 = !DILocation(line: 149, column: 10, scope: !53)
!58 = !DILocation(line: 149, column: 43, scope: !59)
!59 = !DILexicalBlockFile(scope: !60, file: !14, discriminator: 1)
!60 = distinct !DILexicalBlock(scope: !52, file: !14, line: 149, column: 41)
!61 = !DILocation(line: 153, column: 13, scope: !32)
!62 = !DILocation(line: 153, column: 11, scope: !32)
!63 = !DILocation(line: 154, column: 9, scope: !32)
!64 = !DILocation(line: 156, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !32, file: !14, line: 156, column: 8)
!66 = !DILocation(line: 156, column: 15, scope: !65)
!67 = !DILocation(line: 156, column: 8, scope: !32)
!68 = !DILocation(line: 157, column: 49, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !14, line: 156, column: 21)
!70 = !DILocation(line: 157, column: 7, scope: !69)
!71 = !DILocation(line: 158, column: 33, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !14, line: 158, column: 13)
!73 = distinct !DILexicalBlock(scope: !69, file: !14, line: 158, column: 8)
!74 = !DILocation(line: 158, column: 40, scope: !72)
!75 = !DILocation(line: 158, column: 31, scope: !72)
!76 = !DILocation(line: 158, column: 30, scope: !72)
!77 = !DILocation(line: 158, column: 13, scope: !72)
!78 = !DILocation(line: 158, column: 13, scope: !73)
!79 = !DILocation(line: 158, column: 54, scope: !80)
!80 = !DILexicalBlockFile(scope: !81, file: !14, discriminator: 1)
!81 = distinct !DILexicalBlock(scope: !72, file: !14, line: 158, column: 52)
!82 = !DILocation(line: 159, column: 4, scope: !69)
!83 = !DILocation(line: 161, column: 11, scope: !32)
!84 = !DILocation(line: 161, column: 4, scope: !32)
!85 = !DILocation(line: 162, column: 1, scope: !32)
!86 = distinct !DISubprogram(name: "ImpersonateRunas", scope: !14, file: !14, line: 182, type: !87, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !21, !21, !91}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !90, line: 230, baseType: !6)
!90 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line466")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "AuthToken", file: !92, line: 42, baseType: !93)
!92 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/auth.h", directory: "/home/lichi/Desktop/open-vm-tools/line466")
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !8, line: 49, size: 384, align: 64, elements: !96)
!96 = !{!97, !98, !99, !100, !102, !103, !104}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !95, file: !8, line: 51, baseType: !5, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !95, file: !8, line: 52, baseType: !5, size: 64, align: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !95, file: !8, line: 53, baseType: !9, size: 32, align: 32, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !95, file: !8, line: 54, baseType: !101, size: 32, align: 32, offset: 160)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !10, line: 126, baseType: !11)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !95, file: !8, line: 55, baseType: !5, size: 64, align: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !95, file: !8, line: 56, baseType: !5, size: 64, align: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !95, file: !8, line: 57, baseType: !5, size: 64, align: 64, offset: 320)
!105 = !DILocalVariable(name: "cfg", arg: 1, scope: !86, file: !14, line: 182, type: !21)
!106 = !DILocation(line: 182, column: 30, scope: !86)
!107 = !DILocalVariable(name: "caller", arg: 2, scope: !86, file: !14, line: 183, type: !21)
!108 = !DILocation(line: 183, column: 30, scope: !86)
!109 = !DILocalVariable(name: "callerToken", arg: 3, scope: !86, file: !14, line: 184, type: !91)
!110 = !DILocation(line: 184, column: 28, scope: !86)
!111 = !DILocation(line: 191, column: 28, scope: !86)
!112 = !DILocation(line: 191, column: 11, scope: !86)
!113 = !DILocation(line: 191, column: 4, scope: !86)
!114 = distinct !DISubprogram(name: "ImpersonateOwner", scope: !14, file: !14, line: 212, type: !115, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!115 = !DISubroutineType(types: !116)
!116 = !{!89, !21}
!117 = !DILocalVariable(name: "file", arg: 1, scope: !114, file: !14, line: 212, type: !21)
!118 = !DILocation(line: 212, column: 30, scope: !114)
!119 = !DILocalVariable(name: "buf", scope: !114, file: !14, line: 214, type: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !121, line: 46, size: 1152, align: 64, elements: !122)
!121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line466")
!122 = !{!123, !126, !128, !130, !132, !133, !134, !135, !136, !139, !141, !143, !151, !152, !153}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !120, file: !121, line: 48, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !10, line: 124, baseType: !125)
!125 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !120, file: !121, line: 53, baseType: !127, size: 64, align: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !10, line: 127, baseType: !125)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !120, file: !121, line: 61, baseType: !129, size: 64, align: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !10, line: 130, baseType: !125)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !120, file: !121, line: 62, baseType: !131, size: 32, align: 32, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !10, line: 129, baseType: !11)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !120, file: !121, line: 64, baseType: !9, size: 32, align: 32, offset: 224)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !120, file: !121, line: 65, baseType: !101, size: 32, align: 32, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !120, file: !121, line: 67, baseType: !24, size: 32, align: 32, offset: 288)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !120, file: !121, line: 69, baseType: !124, size: 64, align: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !120, file: !121, line: 74, baseType: !137, size: 64, align: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !10, line: 131, baseType: !138)
!138 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !120, file: !121, line: 78, baseType: !140, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !10, line: 153, baseType: !138)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !120, file: !121, line: 80, baseType: !142, size: 64, align: 64, offset: 512)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !10, line: 158, baseType: !138)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !120, file: !121, line: 91, baseType: !144, size: 128, align: 64, offset: 576)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !145, line: 120, size: 128, align: 64, elements: !146)
!145 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line466")
!146 = !{!147, !149}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !144, file: !145, line: 122, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !10, line: 139, baseType: !138)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !144, file: !145, line: 123, baseType: !150, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !10, line: 175, baseType: !138)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !120, file: !121, line: 92, baseType: !144, size: 128, align: 64, offset: 704)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !120, file: !121, line: 93, baseType: !144, size: 128, align: 64, offset: 832)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !120, file: !121, line: 106, baseType: !154, size: 192, align: 64, offset: 960)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 192, align: 64, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 3)
!157 = !DILocation(line: 214, column: 16, scope: !114)
!158 = !DILocalVariable(name: "buffer", scope: !114, file: !14, line: 215, type: !159)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 65536, align: 8, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 8192)
!162 = !DILocation(line: 215, column: 9, scope: !114)
!163 = !DILocalVariable(name: "pw", scope: !114, file: !14, line: 216, type: !95)
!164 = !DILocation(line: 216, column: 18, scope: !114)
!165 = !DILocalVariable(name: "ppw", scope: !114, file: !14, line: 217, type: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!167 = !DILocation(line: 217, column: 19, scope: !114)
!168 = !DILocalVariable(name: "error", scope: !114, file: !14, line: 218, type: !24)
!169 = !DILocation(line: 218, column: 8, scope: !114)
!170 = !DILocation(line: 220, column: 19, scope: !171)
!171 = distinct !DILexicalBlock(scope: !114, file: !14, line: 220, column: 8)
!172 = !DILocation(line: 220, column: 8, scope: !171)
!173 = !DILocation(line: 220, column: 31, scope: !171)
!174 = !DILocation(line: 220, column: 8, scope: !114)
!175 = !DILocation(line: 221, column: 63, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !14, line: 220, column: 38)
!177 = !DILocation(line: 222, column: 33, scope: !176)
!178 = !DILocation(line: 222, column: 32, scope: !176)
!179 = !DILocation(line: 222, column: 15, scope: !180)
!180 = !DILexicalBlockFile(scope: !176, file: !14, discriminator: 1)
!181 = !DILocation(line: 221, column: 7, scope: !176)
!182 = !DILocation(line: 223, column: 7, scope: !176)
!183 = !DILocation(line: 226, column: 38, scope: !184)
!184 = distinct !DILexicalBlock(scope: !114, file: !14, line: 226, column: 8)
!185 = !DILocation(line: 226, column: 51, scope: !184)
!186 = !DILocation(line: 226, column: 17, scope: !184)
!187 = !DILocation(line: 226, column: 15, scope: !184)
!188 = !DILocation(line: 226, column: 73, scope: !184)
!189 = !DILocation(line: 226, column: 78, scope: !184)
!190 = !DILocation(line: 226, column: 82, scope: !191)
!191 = !DILexicalBlockFile(scope: !184, file: !14, discriminator: 1)
!192 = !DILocation(line: 226, column: 8, scope: !191)
!193 = !DILocation(line: 227, column: 11, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !14, line: 227, column: 11)
!195 = distinct !DILexicalBlock(scope: !184, file: !14, line: 226, column: 87)
!196 = !DILocation(line: 227, column: 17, scope: !194)
!197 = !DILocation(line: 227, column: 11, scope: !195)
!198 = !DILocation(line: 228, column: 16, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !14, line: 227, column: 23)
!200 = !DILocation(line: 229, column: 7, scope: !199)
!201 = !DILocation(line: 230, column: 77, scope: !195)
!202 = !DILocation(line: 231, column: 32, scope: !195)
!203 = !DILocation(line: 231, column: 15, scope: !195)
!204 = !DILocation(line: 230, column: 7, scope: !195)
!205 = !DILocation(line: 232, column: 7, scope: !195)
!206 = !DILocation(line: 235, column: 30, scope: !114)
!207 = !DILocation(line: 235, column: 11, scope: !114)
!208 = !DILocation(line: 235, column: 4, scope: !114)
!209 = !DILocation(line: 236, column: 1, scope: !114)
!210 = distinct !DISubprogram(name: "ImpersonateDoPosix", scope: !14, file: !14, line: 343, type: !211, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!211 = !DISubroutineType(types: !212)
!212 = !{!89, !166}
!213 = !DILocalVariable(name: "pwd", arg: 1, scope: !210, file: !14, line: 343, type: !166)
!214 = !DILocation(line: 343, column: 35, scope: !210)
!215 = !DILocalVariable(name: "ret", scope: !210, file: !14, line: 345, type: !24)
!216 = !DILocation(line: 345, column: 8, scope: !210)
!217 = !DILocalVariable(name: "imp", scope: !210, file: !14, line: 346, type: !15)
!218 = !DILocation(line: 346, column: 24, scope: !210)
!219 = !DILocation(line: 352, column: 10, scope: !210)
!220 = !DILocation(line: 352, column: 8, scope: !210)
!221 = !DILocation(line: 355, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !210, file: !14, line: 355, column: 8)
!223 = !DILocation(line: 355, column: 13, scope: !222)
!224 = !DILocation(line: 355, column: 23, scope: !222)
!225 = !DILocation(line: 355, column: 20, scope: !222)
!226 = !DILocation(line: 355, column: 8, scope: !210)
!227 = !DILocation(line: 356, column: 7, scope: !228)
!228 = distinct !DILexicalBlock(scope: !222, file: !14, line: 355, column: 34)
!229 = !DILocation(line: 356, column: 12, scope: !228)
!230 = !DILocation(line: 356, column: 20, scope: !228)
!231 = !DILocation(line: 359, column: 7, scope: !228)
!232 = !DILocation(line: 363, column: 30, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !14, line: 363, column: 10)
!234 = distinct !DILexicalBlock(scope: !210, file: !14, line: 363, column: 5)
!235 = !DILocation(line: 363, column: 40, scope: !233)
!236 = !DILocation(line: 363, column: 28, scope: !233)
!237 = !DILocation(line: 363, column: 27, scope: !233)
!238 = !DILocation(line: 363, column: 10, scope: !233)
!239 = !DILocation(line: 363, column: 10, scope: !234)
!240 = !DILocation(line: 363, column: 54, scope: !241)
!241 = !DILexicalBlockFile(scope: !242, file: !14, discriminator: 1)
!242 = distinct !DILexicalBlock(scope: !233, file: !14, line: 363, column: 52)
!243 = !DILocation(line: 365, column: 20, scope: !210)
!244 = !DILocation(line: 365, column: 25, scope: !210)
!245 = !DILocation(line: 365, column: 10, scope: !210)
!246 = !DILocation(line: 365, column: 8, scope: !210)
!247 = !DILocation(line: 366, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !210, file: !14, line: 366, column: 8)
!249 = !DILocation(line: 366, column: 12, scope: !248)
!250 = !DILocation(line: 366, column: 8, scope: !210)
!251 = !DILocation(line: 367, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !14, line: 366, column: 17)
!253 = !DILocation(line: 375, column: 21, scope: !210)
!254 = !DILocation(line: 375, column: 26, scope: !210)
!255 = !DILocation(line: 375, column: 35, scope: !210)
!256 = !DILocation(line: 375, column: 40, scope: !210)
!257 = !DILocation(line: 375, column: 10, scope: !210)
!258 = !DILocation(line: 375, column: 8, scope: !210)
!259 = !DILocation(line: 376, column: 8, scope: !260)
!260 = distinct !DILexicalBlock(scope: !210, file: !14, line: 376, column: 8)
!261 = !DILocation(line: 376, column: 12, scope: !260)
!262 = !DILocation(line: 376, column: 8, scope: !210)
!263 = !DILocation(line: 377, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !14, line: 376, column: 17)
!265 = !DILocation(line: 383, column: 21, scope: !210)
!266 = !DILocation(line: 383, column: 26, scope: !210)
!267 = !DILocation(line: 383, column: 10, scope: !210)
!268 = !DILocation(line: 383, column: 8, scope: !210)
!269 = !DILocation(line: 384, column: 8, scope: !270)
!270 = distinct !DILexicalBlock(scope: !210, file: !14, line: 384, column: 8)
!271 = !DILocation(line: 384, column: 12, scope: !270)
!272 = !DILocation(line: 384, column: 8, scope: !210)
!273 = !DILocation(line: 385, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !14, line: 384, column: 17)
!275 = !DILocation(line: 390, column: 25, scope: !210)
!276 = !DILocation(line: 390, column: 30, scope: !210)
!277 = !DILocation(line: 390, column: 4, scope: !210)
!278 = !DILocation(line: 391, column: 25, scope: !210)
!279 = !DILocation(line: 391, column: 30, scope: !210)
!280 = !DILocation(line: 391, column: 4, scope: !210)
!281 = !DILocation(line: 392, column: 26, scope: !210)
!282 = !DILocation(line: 392, column: 31, scope: !210)
!283 = !DILocation(line: 392, column: 4, scope: !210)
!284 = !DILocation(line: 394, column: 35, scope: !210)
!285 = !DILocation(line: 394, column: 40, scope: !210)
!286 = !DILocation(line: 394, column: 28, scope: !210)
!287 = !DILocation(line: 394, column: 4, scope: !210)
!288 = !DILocation(line: 394, column: 9, scope: !210)
!289 = !DILocation(line: 394, column: 26, scope: !210)
!290 = !DILocation(line: 395, column: 30, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !14, line: 395, column: 10)
!292 = distinct !DILexicalBlock(scope: !210, file: !14, line: 395, column: 5)
!293 = !DILocation(line: 395, column: 35, scope: !291)
!294 = !DILocation(line: 395, column: 28, scope: !291)
!295 = !DILocation(line: 395, column: 27, scope: !291)
!296 = !DILocation(line: 395, column: 10, scope: !291)
!297 = !DILocation(line: 395, column: 10, scope: !292)
!298 = !DILocation(line: 395, column: 61, scope: !299)
!299 = !DILexicalBlockFile(scope: !300, file: !14, discriminator: 1)
!300 = distinct !DILexicalBlock(scope: !291, file: !14, line: 395, column: 59)
!301 = !DILocation(line: 395, column: 4, scope: !302)
!302 = !DILexicalBlockFile(scope: !210, file: !14, discriminator: 2)
!303 = !DILocation(line: 398, column: 4, scope: !210)
!304 = !DILocation(line: 398, column: 9, scope: !210)
!305 = !DILocation(line: 398, column: 18, scope: !210)
!306 = !DILocation(line: 399, column: 30, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !14, line: 399, column: 10)
!308 = distinct !DILexicalBlock(scope: !210, file: !14, line: 399, column: 5)
!309 = !DILocation(line: 399, column: 34, scope: !307)
!310 = !DILocation(line: 399, column: 28, scope: !307)
!311 = !DILocation(line: 399, column: 27, scope: !307)
!312 = !DILocation(line: 399, column: 10, scope: !307)
!313 = !DILocation(line: 399, column: 10, scope: !308)
!314 = !DILocation(line: 399, column: 48, scope: !315)
!315 = !DILexicalBlockFile(scope: !316, file: !14, discriminator: 1)
!316 = distinct !DILexicalBlock(scope: !307, file: !14, line: 399, column: 46)
!317 = !DILocation(line: 399, column: 4, scope: !302)
!318 = !DILocation(line: 404, column: 12, scope: !210)
!319 = !DILocation(line: 404, column: 11, scope: !210)
!320 = !DILocation(line: 404, column: 4, scope: !210)
!321 = distinct !DISubprogram(name: "ImpersonateUndo", scope: !14, file: !14, line: 255, type: !322, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!322 = !DISubroutineType(types: !323)
!323 = !{!89}
!324 = !DILocalVariable(name: "buffer", scope: !321, file: !14, line: 257, type: !159)
!325 = !DILocation(line: 257, column: 9, scope: !321)
!326 = !DILocalVariable(name: "pw", scope: !321, file: !14, line: 258, type: !95)
!327 = !DILocation(line: 258, column: 18, scope: !321)
!328 = !DILocalVariable(name: "ppw", scope: !321, file: !14, line: 259, type: !166)
!329 = !DILocation(line: 259, column: 19, scope: !321)
!330 = !DILocalVariable(name: "imp", scope: !321, file: !14, line: 260, type: !15)
!331 = !DILocation(line: 260, column: 24, scope: !321)
!332 = !DILocalVariable(name: "ret", scope: !321, file: !14, line: 261, type: !24)
!333 = !DILocation(line: 261, column: 8, scope: !321)
!334 = !DILocalVariable(name: "error", scope: !321, file: !14, line: 262, type: !24)
!335 = !DILocation(line: 262, column: 8, scope: !321)
!336 = !DILocation(line: 268, column: 10, scope: !321)
!337 = !DILocation(line: 268, column: 8, scope: !321)
!338 = !DILocation(line: 272, column: 42, scope: !339)
!339 = distinct !DILexicalBlock(scope: !321, file: !14, line: 272, column: 8)
!340 = !DILocation(line: 272, column: 17, scope: !339)
!341 = !DILocation(line: 272, column: 15, scope: !339)
!342 = !DILocation(line: 272, column: 64, scope: !339)
!343 = !DILocation(line: 272, column: 69, scope: !339)
!344 = !DILocation(line: 272, column: 73, scope: !345)
!345 = !DILexicalBlockFile(scope: !339, file: !14, discriminator: 1)
!346 = !DILocation(line: 272, column: 8, scope: !345)
!347 = !DILocation(line: 273, column: 11, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !14, line: 273, column: 11)
!349 = distinct !DILexicalBlock(scope: !339, file: !14, line: 272, column: 78)
!350 = !DILocation(line: 273, column: 17, scope: !348)
!351 = !DILocation(line: 273, column: 11, scope: !349)
!352 = !DILocation(line: 274, column: 16, scope: !353)
!353 = distinct !DILexicalBlock(scope: !348, file: !14, line: 273, column: 23)
!354 = !DILocation(line: 275, column: 7, scope: !353)
!355 = !DILocation(line: 276, column: 13, scope: !349)
!356 = !DILocation(line: 276, column: 11, scope: !349)
!357 = !DILocation(line: 278, column: 32, scope: !349)
!358 = !DILocation(line: 278, column: 15, scope: !349)
!359 = !DILocation(line: 277, column: 7, scope: !349)
!360 = !DILocation(line: 279, column: 7, scope: !349)
!361 = !DILocation(line: 286, column: 21, scope: !321)
!362 = !DILocation(line: 286, column: 26, scope: !321)
!363 = !DILocation(line: 286, column: 10, scope: !321)
!364 = !DILocation(line: 286, column: 8, scope: !321)
!365 = !DILocation(line: 287, column: 8, scope: !366)
!366 = distinct !DILexicalBlock(scope: !321, file: !14, line: 287, column: 8)
!367 = !DILocation(line: 287, column: 12, scope: !366)
!368 = !DILocation(line: 287, column: 8, scope: !321)
!369 = !DILocation(line: 288, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !14, line: 287, column: 17)
!371 = !DILocation(line: 292, column: 20, scope: !321)
!372 = !DILocation(line: 292, column: 25, scope: !321)
!373 = !DILocation(line: 292, column: 10, scope: !321)
!374 = !DILocation(line: 292, column: 8, scope: !321)
!375 = !DILocation(line: 293, column: 8, scope: !376)
!376 = distinct !DILexicalBlock(scope: !321, file: !14, line: 293, column: 8)
!377 = !DILocation(line: 293, column: 12, scope: !376)
!378 = !DILocation(line: 293, column: 8, scope: !321)
!379 = !DILocation(line: 294, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !14, line: 293, column: 17)
!381 = !DILocation(line: 302, column: 21, scope: !321)
!382 = !DILocation(line: 302, column: 26, scope: !321)
!383 = !DILocation(line: 302, column: 35, scope: !321)
!384 = !DILocation(line: 302, column: 40, scope: !321)
!385 = !DILocation(line: 302, column: 10, scope: !321)
!386 = !DILocation(line: 302, column: 8, scope: !321)
!387 = !DILocation(line: 303, column: 8, scope: !388)
!388 = distinct !DILexicalBlock(scope: !321, file: !14, line: 303, column: 8)
!389 = !DILocation(line: 303, column: 12, scope: !388)
!390 = !DILocation(line: 303, column: 8, scope: !321)
!391 = !DILocation(line: 304, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !14, line: 303, column: 17)
!393 = !DILocation(line: 308, column: 25, scope: !321)
!394 = !DILocation(line: 308, column: 30, scope: !321)
!395 = !DILocation(line: 308, column: 4, scope: !321)
!396 = !DILocation(line: 309, column: 25, scope: !321)
!397 = !DILocation(line: 309, column: 30, scope: !321)
!398 = !DILocation(line: 309, column: 4, scope: !321)
!399 = !DILocation(line: 310, column: 26, scope: !321)
!400 = !DILocation(line: 310, column: 31, scope: !321)
!401 = !DILocation(line: 310, column: 4, scope: !321)
!402 = !DILocation(line: 312, column: 17, scope: !321)
!403 = !DILocation(line: 312, column: 22, scope: !321)
!404 = !DILocation(line: 312, column: 4, scope: !321)
!405 = !DILocation(line: 313, column: 4, scope: !321)
!406 = !DILocation(line: 313, column: 9, scope: !321)
!407 = !DILocation(line: 313, column: 26, scope: !321)
!408 = !DILocation(line: 314, column: 8, scope: !321)
!409 = !DILocation(line: 314, column: 4, scope: !321)
!410 = !DILocation(line: 317, column: 30, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !14, line: 317, column: 10)
!412 = distinct !DILexicalBlock(scope: !321, file: !14, line: 317, column: 5)
!413 = !DILocation(line: 317, column: 34, scope: !411)
!414 = !DILocation(line: 317, column: 28, scope: !411)
!415 = !DILocation(line: 317, column: 27, scope: !411)
!416 = !DILocation(line: 317, column: 10, scope: !411)
!417 = !DILocation(line: 317, column: 10, scope: !412)
!418 = !DILocation(line: 317, column: 48, scope: !419)
!419 = !DILexicalBlockFile(scope: !420, file: !14, discriminator: 1)
!420 = distinct !DILexicalBlock(scope: !411, file: !14, line: 317, column: 46)
!421 = !DILocation(line: 321, column: 12, scope: !321)
!422 = !DILocation(line: 321, column: 11, scope: !321)
!423 = !DILocation(line: 321, column: 4, scope: !321)
!424 = distinct !DISubprogram(name: "Id_SetEUid", scope: !425, file: !425, line: 92, type: !426, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!425 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/su.h", directory: "/home/lichi/Desktop/open-vm-tools/line466")
!426 = !DISubroutineType(types: !427)
!427 = !{!24, !7}
!428 = !DILocalVariable(name: "euid", arg: 1, scope: !424, file: !425, line: 92, type: !7)
!429 = !DILocation(line: 92, column: 18, scope: !424)
!430 = !DILocation(line: 94, column: 35, scope: !424)
!431 = !DILocation(line: 94, column: 11, scope: !424)
!432 = !DILocation(line: 94, column: 4, scope: !424)
!433 = distinct !DISubprogram(name: "ImpersonateDo", scope: !14, file: !14, line: 428, type: !434, isLocal: false, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!434 = !DISubroutineType(types: !435)
!435 = !{!89, !21, !91}
!436 = !DILocalVariable(name: "user", arg: 1, scope: !433, file: !14, line: 428, type: !21)
!437 = !DILocation(line: 428, column: 27, scope: !433)
!438 = !DILocalVariable(name: "token", arg: 2, scope: !433, file: !14, line: 429, type: !91)
!439 = !DILocation(line: 429, column: 25, scope: !433)
!440 = !DILocalVariable(name: "buffer", scope: !433, file: !14, line: 431, type: !159)
!441 = !DILocation(line: 431, column: 9, scope: !433)
!442 = !DILocalVariable(name: "pw", scope: !433, file: !14, line: 432, type: !95)
!443 = !DILocation(line: 432, column: 18, scope: !433)
!444 = !DILocalVariable(name: "ppw", scope: !433, file: !14, line: 433, type: !166)
!445 = !DILocation(line: 433, column: 19, scope: !433)
!446 = !DILocalVariable(name: "error", scope: !433, file: !14, line: 434, type: !24)
!447 = !DILocation(line: 434, column: 8, scope: !433)
!448 = !DILocation(line: 436, column: 34, scope: !449)
!449 = distinct !DILexicalBlock(scope: !433, file: !14, line: 436, column: 8)
!450 = !DILocation(line: 436, column: 45, scope: !449)
!451 = !DILocation(line: 436, column: 17, scope: !449)
!452 = !DILocation(line: 436, column: 15, scope: !449)
!453 = !DILocation(line: 436, column: 67, scope: !449)
!454 = !DILocation(line: 436, column: 72, scope: !449)
!455 = !DILocation(line: 436, column: 76, scope: !456)
!456 = !DILexicalBlockFile(scope: !449, file: !14, discriminator: 1)
!457 = !DILocation(line: 436, column: 8, scope: !456)
!458 = !DILocation(line: 437, column: 11, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !14, line: 437, column: 11)
!460 = distinct !DILexicalBlock(scope: !449, file: !14, line: 436, column: 81)
!461 = !DILocation(line: 437, column: 17, scope: !459)
!462 = !DILocation(line: 437, column: 11, scope: !460)
!463 = !DILocation(line: 438, column: 16, scope: !464)
!464 = distinct !DILexicalBlock(scope: !459, file: !14, line: 437, column: 23)
!465 = !DILocation(line: 439, column: 7, scope: !464)
!466 = !DILocation(line: 440, column: 70, scope: !460)
!467 = !DILocation(line: 441, column: 32, scope: !460)
!468 = !DILocation(line: 441, column: 15, scope: !460)
!469 = !DILocation(line: 440, column: 7, scope: !460)
!470 = !DILocation(line: 442, column: 7, scope: !460)
!471 = !DILocation(line: 445, column: 30, scope: !433)
!472 = !DILocation(line: 445, column: 11, scope: !433)
!473 = !DILocation(line: 445, column: 4, scope: !433)
!474 = !DILocation(line: 446, column: 1, scope: !433)
!475 = distinct !DISubprogram(name: "ImpersonateForceRoot", scope: !14, file: !14, line: 469, type: !322, isLocal: false, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!476 = !DILocation(line: 471, column: 4, scope: !475)
!477 = distinct !DISubprogram(name: "ImpersonateUnforceRoot", scope: !14, file: !14, line: 492, type: !322, isLocal: false, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!478 = !DILocation(line: 494, column: 4, scope: !477)
