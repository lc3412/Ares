; ModuleID = './impersonate.o.i'
source_filename = "./impersonate.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Atomic_uint64 = type { i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.MXUserRecLock = type opaque
%struct.ImpersonationState = type { i8*, i32 }

@impersonationEnabled = global i8 0, align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"impersonate.c\00", align 1
@impersonateLockStorage = internal global %struct.Atomic_uint64 zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"impersonateLock\00", align 1

; Function Attrs: nounwind uwtable
define void @Impersonate_Init() #0 !dbg !31 {
  %1 = load i8, i8* @impersonationEnabled, align 1, !dbg !34
  %2 = icmp ne i8 %1, 0, !dbg !34
  br i1 %2, label %4, label %3, !dbg !36

; <label>:3:                                      ; preds = %0
  call void @ImpersonateInit(), !dbg !37
  store i8 1, i8* @impersonationEnabled, align 1, !dbg !39
  br label %4, !dbg !40

; <label>:4:                                      ; preds = %3, %0
  ret void, !dbg !41
}

declare void @ImpersonateInit() #1

; Function Attrs: nounwind uwtable
define signext i8 @Impersonate_Runas(i8*, i8*, %struct.passwd*) #0 !dbg !42 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !66, metadata !67), !dbg !68
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !69, metadata !67), !dbg !70
  store %struct.passwd* %2, %struct.passwd** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.passwd** %7, metadata !71, metadata !67), !dbg !72
  call void @llvm.dbg.declare(metadata i8* %8, metadata !73, metadata !67), !dbg !74
  %9 = load i8, i8* @impersonationEnabled, align 1, !dbg !75
  %10 = icmp ne i8 %9, 0, !dbg !75
  br i1 %10, label %12, label %11, !dbg !77

; <label>:11:                                     ; preds = %3
  store i8 1, i8* %4, align 1, !dbg !78
  br label %18, !dbg !78

; <label>:12:                                     ; preds = %3
  call void @ImpersonateLock(i8 signext 1), !dbg !80
  %13 = load i8*, i8** %5, align 8, !dbg !81
  %14 = load i8*, i8** %6, align 8, !dbg !82
  %15 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !83
  %16 = call signext i8 @ImpersonateRunas(i8* %13, i8* %14, %struct.passwd* %15), !dbg !84
  store i8 %16, i8* %8, align 1, !dbg !85
  call void @ImpersonateLock(i8 signext 0), !dbg !86
  %17 = load i8, i8* %8, align 1, !dbg !87
  store i8 %17, i8* %4, align 1, !dbg !88
  br label %18, !dbg !88

; <label>:18:                                     ; preds = %12, %11
  %19 = load i8, i8* %4, align 1, !dbg !89
  ret i8 %19, !dbg !89
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @ImpersonateLock(i8 signext) #3 !dbg !90 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.MXUserRecLock*, align 8
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !93, metadata !67), !dbg !94
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %3, metadata !95, metadata !67), !dbg !96
  %4 = call %struct.MXUserRecLock* @ImpersonateGetLock(), !dbg !97
  store %struct.MXUserRecLock* %4, %struct.MXUserRecLock** %3, align 8, !dbg !96
  %5 = load i8, i8* %2, align 1, !dbg !98
  %6 = icmp ne i8 %5, 0, !dbg !98
  br i1 %6, label %7, label %9, !dbg !100

; <label>:7:                                      ; preds = %1
  %8 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !101
  call void @MXUser_AcquireRecLock(%struct.MXUserRecLock* %8), !dbg !103
  br label %11, !dbg !104

; <label>:9:                                      ; preds = %1
  %10 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %3, align 8, !dbg !105
  call void @MXUser_ReleaseRecLock(%struct.MXUserRecLock* %10), !dbg !107
  br label %11

; <label>:11:                                     ; preds = %9, %7
  ret void, !dbg !108
}

declare signext i8 @ImpersonateRunas(i8*, i8*, %struct.passwd*) #1

; Function Attrs: nounwind uwtable
define signext i8 @Impersonate_Owner(i8*) #0 !dbg !109 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !112, metadata !67), !dbg !113
  call void @llvm.dbg.declare(metadata i8* %4, metadata !114, metadata !67), !dbg !115
  %5 = load i8, i8* @impersonationEnabled, align 1, !dbg !116
  %6 = icmp ne i8 %5, 0, !dbg !116
  br i1 %6, label %8, label %7, !dbg !118

; <label>:7:                                      ; preds = %1
  store i8 1, i8* %2, align 1, !dbg !119
  br label %12, !dbg !119

; <label>:8:                                      ; preds = %1
  call void @ImpersonateLock(i8 signext 1), !dbg !121
  %9 = load i8*, i8** %3, align 8, !dbg !122
  %10 = call signext i8 @ImpersonateOwner(i8* %9), !dbg !123
  store i8 %10, i8* %4, align 1, !dbg !124
  call void @ImpersonateLock(i8 signext 0), !dbg !125
  %11 = load i8, i8* %4, align 1, !dbg !126
  store i8 %11, i8* %2, align 1, !dbg !127
  br label %12, !dbg !127

; <label>:12:                                     ; preds = %8, %7
  %13 = load i8, i8* %2, align 1, !dbg !128
  ret i8 %13, !dbg !128
}

declare signext i8 @ImpersonateOwner(i8*) #1

; Function Attrs: nounwind uwtable
define signext i8 @Impersonate_Do(i8*, %struct.passwd*) #0 !dbg !129 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !132, metadata !67), !dbg !133
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.passwd** %5, metadata !134, metadata !67), !dbg !135
  call void @llvm.dbg.declare(metadata i8* %6, metadata !136, metadata !67), !dbg !137
  %7 = load i8, i8* @impersonationEnabled, align 1, !dbg !138
  %8 = icmp ne i8 %7, 0, !dbg !138
  br i1 %8, label %10, label %9, !dbg !140

; <label>:9:                                      ; preds = %2
  store i8 1, i8* %3, align 1, !dbg !141
  br label %15, !dbg !141

; <label>:10:                                     ; preds = %2
  call void @ImpersonateLock(i8 signext 1), !dbg !143
  %11 = load i8*, i8** %4, align 8, !dbg !144
  %12 = load %struct.passwd*, %struct.passwd** %5, align 8, !dbg !145
  %13 = call signext i8 @ImpersonateDo(i8* %11, %struct.passwd* %12), !dbg !146
  store i8 %13, i8* %6, align 1, !dbg !147
  call void @ImpersonateLock(i8 signext 0), !dbg !148
  %14 = load i8, i8* %6, align 1, !dbg !149
  store i8 %14, i8* %3, align 1, !dbg !150
  br label %15, !dbg !150

; <label>:15:                                     ; preds = %10, %9
  %16 = load i8, i8* %3, align 1, !dbg !151
  ret i8 %16, !dbg !151
}

declare signext i8 @ImpersonateDo(i8*, %struct.passwd*) #1

; Function Attrs: nounwind uwtable
define signext i8 @Impersonate_Undo() #0 !dbg !152 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca %struct.ImpersonationState*, align 8
  call void @llvm.dbg.declare(metadata i8* %2, metadata !155, metadata !67), !dbg !156
  call void @llvm.dbg.declare(metadata %struct.ImpersonationState** %3, metadata !157, metadata !67), !dbg !166
  store %struct.ImpersonationState* null, %struct.ImpersonationState** %3, align 8, !dbg !166
  %4 = load i8, i8* @impersonationEnabled, align 1, !dbg !167
  %5 = icmp ne i8 %4, 0, !dbg !167
  br i1 %5, label %7, label %6, !dbg !169

; <label>:6:                                      ; preds = %0
  store i8 1, i8* %1, align 1, !dbg !170
  br label %21, !dbg !170

; <label>:7:                                      ; preds = %0
  call void @ImpersonateLock(i8 signext 1), !dbg !172
  %8 = call %struct.ImpersonationState* @ImpersonateGetTLS(), !dbg !173
  store %struct.ImpersonationState* %8, %struct.ImpersonationState** %3, align 8, !dbg !174
  %9 = load %struct.ImpersonationState*, %struct.ImpersonationState** %3, align 8, !dbg !175
  %10 = getelementptr inbounds %struct.ImpersonationState, %struct.ImpersonationState* %9, i32 0, i32 1, !dbg !176
  %11 = load i32, i32* %10, align 8, !dbg !177
  %12 = add nsw i32 %11, -1, !dbg !177
  store i32 %12, i32* %10, align 8, !dbg !177
  %13 = load %struct.ImpersonationState*, %struct.ImpersonationState** %3, align 8, !dbg !178
  %14 = getelementptr inbounds %struct.ImpersonationState, %struct.ImpersonationState* %13, i32 0, i32 1, !dbg !180
  %15 = load i32, i32* %14, align 8, !dbg !180
  %16 = icmp sgt i32 %15, 0, !dbg !181
  br i1 %16, label %17, label %18, !dbg !182

; <label>:17:                                     ; preds = %7
  call void @ImpersonateLock(i8 signext 0), !dbg !183
  store i8 1, i8* %1, align 1, !dbg !185
  br label %21, !dbg !185

; <label>:18:                                     ; preds = %7
  %19 = call signext i8 @ImpersonateUndo(), !dbg !186
  store i8 %19, i8* %2, align 1, !dbg !187
  call void @ImpersonateLock(i8 signext 0), !dbg !188
  %20 = load i8, i8* %2, align 1, !dbg !189
  store i8 %20, i8* %1, align 1, !dbg !190
  br label %21, !dbg !190

; <label>:21:                                     ; preds = %18, %17, %6
  %22 = load i8, i8* %1, align 1, !dbg !191
  ret i8 %22, !dbg !191
}

declare %struct.ImpersonationState* @ImpersonateGetTLS() #1

declare signext i8 @ImpersonateUndo() #1

; Function Attrs: nounwind uwtable
define i8* @Impersonate_Who() #0 !dbg !192 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ImpersonationState*, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !195, metadata !67), !dbg !196
  call void @llvm.dbg.declare(metadata %struct.ImpersonationState** %3, metadata !197, metadata !67), !dbg !198
  store %struct.ImpersonationState* null, %struct.ImpersonationState** %3, align 8, !dbg !198
  %4 = load i8, i8* @impersonationEnabled, align 1, !dbg !199
  %5 = icmp ne i8 %4, 0, !dbg !199
  br i1 %5, label %8, label %6, !dbg !201

; <label>:6:                                      ; preds = %0
  %7 = call noalias i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #6, !dbg !202
  store i8* %7, i8** %1, align 8, !dbg !204
  br label %23, !dbg !204

; <label>:8:                                      ; preds = %0
  call void @ImpersonateLock(i8 signext 1), !dbg !205
  %9 = call %struct.ImpersonationState* @ImpersonateGetTLS(), !dbg !206
  store %struct.ImpersonationState* %9, %struct.ImpersonationState** %3, align 8, !dbg !207
  %10 = load %struct.ImpersonationState*, %struct.ImpersonationState** %3, align 8, !dbg !208
  %11 = getelementptr inbounds %struct.ImpersonationState, %struct.ImpersonationState* %10, i32 0, i32 0, !dbg !209
  %12 = load i8*, i8** %11, align 8, !dbg !209
  %13 = call noalias i8* @strdup(i8* %12) #6, !dbg !210
  store i8* %13, i8** %2, align 8, !dbg !211
  %14 = load i8*, i8** %2, align 8, !dbg !212
  %15 = icmp ne i8* %14, null, !dbg !215
  %16 = xor i1 %15, true, !dbg !215
  %17 = zext i1 %16 to i32, !dbg !215
  %18 = sext i32 %17 to i64, !dbg !216
  %19 = icmp ne i64 %18, 0, !dbg !217
  br i1 %19, label %20, label %21, !dbg !218

; <label>:20:                                     ; preds = %8
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 323) #7, !dbg !219
  unreachable, !dbg !219

; <label>:21:                                     ; preds = %8
  call void @ImpersonateLock(i8 signext 0), !dbg !222
  %22 = load i8*, i8** %2, align 8, !dbg !223
  store i8* %22, i8** %1, align 8, !dbg !224
  br label %23, !dbg !224

; <label>:23:                                     ; preds = %21, %6
  %24 = load i8*, i8** %1, align 8, !dbg !225
  ret i8* %24, !dbg !225
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #4

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

; Function Attrs: nounwind uwtable
define signext i8 @Impersonate_ForceRoot() #0 !dbg !226 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !227, metadata !67), !dbg !228
  %3 = load i8, i8* @impersonationEnabled, align 1, !dbg !229
  %4 = icmp ne i8 %3, 0, !dbg !229
  br i1 %4, label %6, label %5, !dbg !231

; <label>:5:                                      ; preds = %0
  store i8 1, i8* %1, align 1, !dbg !232
  br label %9, !dbg !232

; <label>:6:                                      ; preds = %0
  call void @ImpersonateLock(i8 signext 1), !dbg !234
  %7 = call signext i8 @ImpersonateForceRoot(), !dbg !235
  store i8 %7, i8* %2, align 1, !dbg !236
  call void @ImpersonateLock(i8 signext 0), !dbg !237
  %8 = load i8, i8* %2, align 1, !dbg !238
  store i8 %8, i8* %1, align 1, !dbg !239
  br label %9, !dbg !239

; <label>:9:                                      ; preds = %6, %5
  %10 = load i8, i8* %1, align 1, !dbg !240
  ret i8 %10, !dbg !240
}

declare signext i8 @ImpersonateForceRoot() #1

; Function Attrs: nounwind uwtable
define signext i8 @Impersonate_UnforceRoot() #0 !dbg !241 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !242, metadata !67), !dbg !243
  %3 = load i8, i8* @impersonationEnabled, align 1, !dbg !244
  %4 = icmp ne i8 %3, 0, !dbg !244
  br i1 %4, label %6, label %5, !dbg !246

; <label>:5:                                      ; preds = %0
  store i8 1, i8* %1, align 1, !dbg !247
  br label %9, !dbg !247

; <label>:6:                                      ; preds = %0
  call void @ImpersonateLock(i8 signext 1), !dbg !249
  %7 = call signext i8 @ImpersonateUnforceRoot(), !dbg !250
  store i8 %7, i8* %2, align 1, !dbg !251
  call void @ImpersonateLock(i8 signext 0), !dbg !252
  %8 = load i8, i8* %2, align 1, !dbg !253
  store i8 %8, i8* %1, align 1, !dbg !254
  br label %9, !dbg !254

; <label>:9:                                      ; preds = %6, %5
  %10 = load i8, i8* %1, align 1, !dbg !255
  ret i8 %10, !dbg !255
}

declare signext i8 @ImpersonateUnforceRoot() #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.MXUserRecLock* @ImpersonateGetLock() #3 !dbg !256 {
  %1 = alloca %struct.MXUserRecLock*, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %1, metadata !259, metadata !67), !dbg !260
  %2 = call %struct.MXUserRecLock* @MXUser_CreateSingletonRecLock(%struct.Atomic_uint64* @impersonateLockStorage, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 -268406715), !dbg !261
  store %struct.MXUserRecLock* %2, %struct.MXUserRecLock** %1, align 8, !dbg !260
  %3 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %1, align 8, !dbg !262
  ret %struct.MXUserRecLock* %3, !dbg !263
}

declare void @MXUser_AcquireRecLock(%struct.MXUserRecLock*) #1

declare void @MXUser_ReleaseRecLock(%struct.MXUserRecLock*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.MXUserRecLock* @MXUser_CreateSingletonRecLock(%struct.Atomic_uint64*, i8*, i32) #3 !dbg !264 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MXUserRecLock*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !271, metadata !67), !dbg !272
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !273, metadata !67), !dbg !274
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !275, metadata !67), !dbg !276
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %7, metadata !277, metadata !67), !dbg !278
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !279
  %9 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %8), !dbg !280
  %10 = bitcast i8* %9 to %struct.MXUserRecLock*, !dbg !281
  store %struct.MXUserRecLock* %10, %struct.MXUserRecLock** %7, align 8, !dbg !282
  %11 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !283
  %12 = icmp eq %struct.MXUserRecLock* %11, null, !dbg !285
  %13 = zext i1 %12 to i32, !dbg !285
  %14 = sext i32 %13 to i64, !dbg !286
  %15 = icmp ne i64 %14, 0, !dbg !287
  br i1 %15, label %16, label %21, !dbg !288

; <label>:16:                                     ; preds = %3
  %17 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !289
  %18 = load i8*, i8** %5, align 8, !dbg !291
  %19 = load i32, i32* %6, align 4, !dbg !292
  %20 = call %struct.MXUserRecLock* @MXUser_CreateSingletonRecLockInt(%struct.Atomic_uint64* %17, i8* %18, i32 %19), !dbg !293
  store %struct.MXUserRecLock* %20, %struct.MXUserRecLock** %7, align 8, !dbg !294
  br label %21, !dbg !295

; <label>:21:                                     ; preds = %16, %3
  %22 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %7, align 8, !dbg !296
  ret %struct.MXUserRecLock* %22, !dbg !297
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #3 !dbg !298 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !303, metadata !67), !dbg !304
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !305
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !306
  %5 = inttoptr i64 %4 to i8*, !dbg !307
  ret i8* %5, !dbg !308
}

declare %struct.MXUserRecLock* @MXUser_CreateSingletonRecLockInt(%struct.Atomic_uint64*, i8*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #3 !dbg !309 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !314, metadata !67), !dbg !315
  call void @llvm.dbg.declare(metadata i64* %3, metadata !316, metadata !67), !dbg !317
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !318
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !319
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #6, !dbg !320, !srcloc !321
  store i64 %6, i64* %3, align 8, !dbg !320
  %7 = load i64, i64* %3, align 8, !dbg !322
  ret i64 %7, !dbg !323
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !12)
!1 = !DIFile(filename: "impersonate.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line460")
!2 = !{}
!3 = !{!4, !8, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserRecLock", file: !6, line: 39, baseType: !7)
!6 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line460")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserRecLock", file: !6, line: 39, flags: DIFlagFwdDecl)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !10, line: 122, baseType: !11)
!10 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line460")
!11 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!12 = !{!13, !18}
!13 = distinct !DIGlobalVariable(name: "impersonationEnabled", scope: !0, file: !14, line: 37, type: !15, isLocal: false, isDefinition: true, variable: i8* @impersonationEnabled)
!14 = !DIFile(filename: "impersonate.c", directory: "/home/lichi/Desktop/open-vm-tools/line460")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !16, line: 230, baseType: !17)
!16 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line460")
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = distinct !DIGlobalVariable(name: "impersonateLockStorage", scope: !0, file: !14, line: 35, type: !19, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @impersonateLockStorage)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !20, line: 3829, baseType: !21)
!20 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line460")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !20, line: 139, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !20, line: 137, size: 64, align: 64, elements: !23)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !22, file: !20, line: 138, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !16, line: 171, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !10, line: 55, baseType: !11)
!28 = !{i32 2, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!31 = distinct !DISubprogram(name: "Impersonate_Init", scope: !14, file: !14, line: 116, type: !32, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!32 = !DISubroutineType(types: !33)
!33 = !{null}
!34 = !DILocation(line: 118, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !14, line: 118, column: 8)
!36 = !DILocation(line: 118, column: 8, scope: !31)
!37 = !DILocation(line: 119, column: 7, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !14, line: 118, column: 31)
!39 = !DILocation(line: 120, column: 28, scope: !38)
!40 = !DILocation(line: 121, column: 4, scope: !38)
!41 = !DILocation(line: 122, column: 1, scope: !31)
!42 = distinct !DISubprogram(name: "Impersonate_Runas", scope: !14, file: !14, line: 149, type: !43, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!43 = !DISubroutineType(types: !44)
!44 = !{!15, !45, !45, !47}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "AuthToken", file: !48, line: 42, baseType: !49)
!48 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/auth.h", directory: "/home/lichi/Desktop/open-vm-tools/line460")
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !52, line: 49, size: 384, align: 64, elements: !53)
!52 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/open-vm-tools/line460")
!53 = !{!54, !56, !57, !61, !63, !64, !65}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !51, file: !52, line: 51, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !51, file: !52, line: 52, baseType: !55, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !51, file: !52, line: 53, baseType: !58, size: 32, align: 32, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !59, line: 125, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line460")
!60 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !51, file: !52, line: 54, baseType: !62, size: 32, align: 32, offset: 160)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !59, line: 126, baseType: !60)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !51, file: !52, line: 55, baseType: !55, size: 64, align: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !51, file: !52, line: 56, baseType: !55, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !51, file: !52, line: 57, baseType: !55, size: 64, align: 64, offset: 320)
!66 = !DILocalVariable(name: "cfg", arg: 1, scope: !42, file: !14, line: 149, type: !45)
!67 = !DIExpression()
!68 = !DILocation(line: 149, column: 31, scope: !42)
!69 = !DILocalVariable(name: "caller", arg: 2, scope: !42, file: !14, line: 150, type: !45)
!70 = !DILocation(line: 150, column: 31, scope: !42)
!71 = !DILocalVariable(name: "callerToken", arg: 3, scope: !42, file: !14, line: 151, type: !47)
!72 = !DILocation(line: 151, column: 29, scope: !42)
!73 = !DILocalVariable(name: "res", scope: !42, file: !14, line: 153, type: !15)
!74 = !DILocation(line: 153, column: 9, scope: !42)
!75 = !DILocation(line: 155, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !42, file: !14, line: 155, column: 8)
!77 = !DILocation(line: 155, column: 8, scope: !42)
!78 = !DILocation(line: 156, column: 7, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !14, line: 155, column: 31)
!80 = !DILocation(line: 159, column: 4, scope: !42)
!81 = !DILocation(line: 160, column: 27, scope: !42)
!82 = !DILocation(line: 160, column: 32, scope: !42)
!83 = !DILocation(line: 160, column: 40, scope: !42)
!84 = !DILocation(line: 160, column: 10, scope: !42)
!85 = !DILocation(line: 160, column: 8, scope: !42)
!86 = !DILocation(line: 161, column: 4, scope: !42)
!87 = !DILocation(line: 163, column: 11, scope: !42)
!88 = !DILocation(line: 163, column: 4, scope: !42)
!89 = !DILocation(line: 164, column: 1, scope: !42)
!90 = distinct !DISubprogram(name: "ImpersonateLock", scope: !14, file: !14, line: 84, type: !91, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !15}
!93 = !DILocalVariable(name: "lock", arg: 1, scope: !90, file: !14, line: 84, type: !15)
!94 = !DILocation(line: 84, column: 22, scope: !90)
!95 = !DILocalVariable(name: "impersonateLock", scope: !90, file: !14, line: 86, type: !4)
!96 = !DILocation(line: 86, column: 19, scope: !90)
!97 = !DILocation(line: 86, column: 37, scope: !90)
!98 = !DILocation(line: 88, column: 8, scope: !99)
!99 = distinct !DILexicalBlock(scope: !90, file: !14, line: 88, column: 8)
!100 = !DILocation(line: 88, column: 8, scope: !90)
!101 = !DILocation(line: 89, column: 29, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !14, line: 88, column: 14)
!103 = !DILocation(line: 89, column: 7, scope: !102)
!104 = !DILocation(line: 90, column: 4, scope: !102)
!105 = !DILocation(line: 91, column: 29, scope: !106)
!106 = distinct !DILexicalBlock(scope: !99, file: !14, line: 90, column: 11)
!107 = !DILocation(line: 91, column: 7, scope: !106)
!108 = !DILocation(line: 93, column: 1, scope: !90)
!109 = distinct !DISubprogram(name: "Impersonate_Owner", scope: !14, file: !14, line: 184, type: !110, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!110 = !DISubroutineType(types: !111)
!111 = !{!15, !45}
!112 = !DILocalVariable(name: "file", arg: 1, scope: !109, file: !14, line: 184, type: !45)
!113 = !DILocation(line: 184, column: 31, scope: !109)
!114 = !DILocalVariable(name: "res", scope: !109, file: !14, line: 186, type: !15)
!115 = !DILocation(line: 186, column: 9, scope: !109)
!116 = !DILocation(line: 188, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !14, line: 188, column: 8)
!118 = !DILocation(line: 188, column: 8, scope: !109)
!119 = !DILocation(line: 189, column: 7, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !14, line: 188, column: 31)
!121 = !DILocation(line: 192, column: 4, scope: !109)
!122 = !DILocation(line: 193, column: 27, scope: !109)
!123 = !DILocation(line: 193, column: 10, scope: !109)
!124 = !DILocation(line: 193, column: 8, scope: !109)
!125 = !DILocation(line: 194, column: 4, scope: !109)
!126 = !DILocation(line: 196, column: 11, scope: !109)
!127 = !DILocation(line: 196, column: 4, scope: !109)
!128 = !DILocation(line: 197, column: 1, scope: !109)
!129 = distinct !DISubprogram(name: "Impersonate_Do", scope: !14, file: !14, line: 221, type: !130, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!130 = !DISubroutineType(types: !131)
!131 = !{!15, !45, !47}
!132 = !DILocalVariable(name: "user", arg: 1, scope: !129, file: !14, line: 221, type: !45)
!133 = !DILocation(line: 221, column: 28, scope: !129)
!134 = !DILocalVariable(name: "token", arg: 2, scope: !129, file: !14, line: 222, type: !47)
!135 = !DILocation(line: 222, column: 26, scope: !129)
!136 = !DILocalVariable(name: "res", scope: !129, file: !14, line: 224, type: !15)
!137 = !DILocation(line: 224, column: 9, scope: !129)
!138 = !DILocation(line: 226, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !129, file: !14, line: 226, column: 8)
!140 = !DILocation(line: 226, column: 8, scope: !129)
!141 = !DILocation(line: 227, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !14, line: 226, column: 31)
!143 = !DILocation(line: 230, column: 4, scope: !129)
!144 = !DILocation(line: 231, column: 24, scope: !129)
!145 = !DILocation(line: 231, column: 30, scope: !129)
!146 = !DILocation(line: 231, column: 10, scope: !129)
!147 = !DILocation(line: 231, column: 8, scope: !129)
!148 = !DILocation(line: 232, column: 4, scope: !129)
!149 = !DILocation(line: 234, column: 11, scope: !129)
!150 = !DILocation(line: 234, column: 4, scope: !129)
!151 = !DILocation(line: 235, column: 1, scope: !129)
!152 = distinct !DISubprogram(name: "Impersonate_Undo", scope: !14, file: !14, line: 258, type: !153, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!153 = !DISubroutineType(types: !154)
!154 = !{!15}
!155 = !DILocalVariable(name: "res", scope: !152, file: !14, line: 260, type: !15)
!156 = !DILocation(line: 260, column: 9, scope: !152)
!157 = !DILocalVariable(name: "imp", scope: !152, file: !14, line: 261, type: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImpersonationState", file: !160, line: 49, baseType: !161)
!160 = !DIFile(filename: "impersonateInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line460")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ImpersonationState", file: !160, line: 41, size: 128, align: 64, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "impersonatedUser", scope: !161, file: !160, line: 42, baseType: !45, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "refCount", scope: !161, file: !160, line: 43, baseType: !165, size: 32, align: 32, offset: 64)
!165 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!166 = !DILocation(line: 261, column: 24, scope: !152)
!167 = !DILocation(line: 263, column: 9, scope: !168)
!168 = distinct !DILexicalBlock(scope: !152, file: !14, line: 263, column: 8)
!169 = !DILocation(line: 263, column: 8, scope: !152)
!170 = !DILocation(line: 264, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !14, line: 263, column: 31)
!172 = !DILocation(line: 267, column: 4, scope: !152)
!173 = !DILocation(line: 268, column: 10, scope: !152)
!174 = !DILocation(line: 268, column: 8, scope: !152)
!175 = !DILocation(line: 272, column: 4, scope: !152)
!176 = !DILocation(line: 272, column: 9, scope: !152)
!177 = !DILocation(line: 272, column: 17, scope: !152)
!178 = !DILocation(line: 279, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !152, file: !14, line: 279, column: 8)
!180 = !DILocation(line: 279, column: 13, scope: !179)
!181 = !DILocation(line: 279, column: 22, scope: !179)
!182 = !DILocation(line: 279, column: 8, scope: !152)
!183 = !DILocation(line: 280, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !14, line: 279, column: 27)
!185 = !DILocation(line: 281, column: 7, scope: !184)
!186 = !DILocation(line: 284, column: 10, scope: !152)
!187 = !DILocation(line: 284, column: 8, scope: !152)
!188 = !DILocation(line: 285, column: 4, scope: !152)
!189 = !DILocation(line: 287, column: 11, scope: !152)
!190 = !DILocation(line: 287, column: 4, scope: !152)
!191 = !DILocation(line: 288, column: 1, scope: !152)
!192 = distinct !DISubprogram(name: "Impersonate_Who", scope: !14, file: !14, line: 309, type: !193, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!193 = !DISubroutineType(types: !194)
!194 = !{!55}
!195 = !DILocalVariable(name: "impUser", scope: !192, file: !14, line: 311, type: !55)
!196 = !DILocation(line: 311, column: 10, scope: !192)
!197 = !DILocalVariable(name: "imp", scope: !192, file: !14, line: 312, type: !158)
!198 = !DILocation(line: 312, column: 24, scope: !192)
!199 = !DILocation(line: 314, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !192, file: !14, line: 314, column: 8)
!201 = !DILocation(line: 314, column: 8, scope: !192)
!202 = !DILocation(line: 315, column: 14, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !14, line: 314, column: 31)
!204 = !DILocation(line: 315, column: 7, scope: !203)
!205 = !DILocation(line: 318, column: 4, scope: !192)
!206 = !DILocation(line: 319, column: 10, scope: !192)
!207 = !DILocation(line: 319, column: 8, scope: !192)
!208 = !DILocation(line: 322, column: 21, scope: !192)
!209 = !DILocation(line: 322, column: 26, scope: !192)
!210 = !DILocation(line: 322, column: 14, scope: !192)
!211 = !DILocation(line: 322, column: 12, scope: !192)
!212 = !DILocation(line: 323, column: 30, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !14, line: 323, column: 10)
!214 = distinct !DILexicalBlock(scope: !192, file: !14, line: 323, column: 5)
!215 = !DILocation(line: 323, column: 28, scope: !213)
!216 = !DILocation(line: 323, column: 27, scope: !213)
!217 = !DILocation(line: 323, column: 10, scope: !213)
!218 = !DILocation(line: 323, column: 10, scope: !214)
!219 = !DILocation(line: 323, column: 47, scope: !220)
!220 = !DILexicalBlockFile(scope: !221, file: !14, discriminator: 1)
!221 = distinct !DILexicalBlock(scope: !213, file: !14, line: 323, column: 45)
!222 = !DILocation(line: 324, column: 4, scope: !192)
!223 = !DILocation(line: 326, column: 11, scope: !192)
!224 = !DILocation(line: 326, column: 4, scope: !192)
!225 = !DILocation(line: 327, column: 1, scope: !192)
!226 = distinct !DISubprogram(name: "Impersonate_ForceRoot", scope: !14, file: !14, line: 350, type: !153, isLocal: false, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!227 = !DILocalVariable(name: "res", scope: !226, file: !14, line: 352, type: !15)
!228 = !DILocation(line: 352, column: 9, scope: !226)
!229 = !DILocation(line: 354, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !14, line: 354, column: 8)
!231 = !DILocation(line: 354, column: 8, scope: !226)
!232 = !DILocation(line: 355, column: 7, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !14, line: 354, column: 31)
!234 = !DILocation(line: 358, column: 4, scope: !226)
!235 = !DILocation(line: 359, column: 10, scope: !226)
!236 = !DILocation(line: 359, column: 8, scope: !226)
!237 = !DILocation(line: 360, column: 4, scope: !226)
!238 = !DILocation(line: 362, column: 11, scope: !226)
!239 = !DILocation(line: 362, column: 4, scope: !226)
!240 = !DILocation(line: 363, column: 1, scope: !226)
!241 = distinct !DISubprogram(name: "Impersonate_UnforceRoot", scope: !14, file: !14, line: 384, type: !153, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!242 = !DILocalVariable(name: "res", scope: !241, file: !14, line: 386, type: !15)
!243 = !DILocation(line: 386, column: 9, scope: !241)
!244 = !DILocation(line: 388, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !14, line: 388, column: 8)
!246 = !DILocation(line: 388, column: 8, scope: !241)
!247 = !DILocation(line: 389, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !14, line: 388, column: 31)
!249 = !DILocation(line: 392, column: 4, scope: !241)
!250 = !DILocation(line: 393, column: 10, scope: !241)
!251 = !DILocation(line: 393, column: 8, scope: !241)
!252 = !DILocation(line: 394, column: 4, scope: !241)
!253 = !DILocation(line: 396, column: 11, scope: !241)
!254 = !DILocation(line: 396, column: 4, scope: !241)
!255 = !DILocation(line: 397, column: 1, scope: !241)
!256 = distinct !DISubprogram(name: "ImpersonateGetLock", scope: !14, file: !14, line: 57, type: !257, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!257 = !DISubroutineType(types: !258)
!258 = !{!4}
!259 = !DILocalVariable(name: "lock", scope: !256, file: !14, line: 59, type: !4)
!260 = !DILocation(line: 59, column: 19, scope: !256)
!261 = !DILocation(line: 59, column: 26, scope: !256)
!262 = !DILocation(line: 62, column: 11, scope: !256)
!263 = !DILocation(line: 62, column: 4, scope: !256)
!264 = distinct !DISubprogram(name: "MXUser_CreateSingletonRecLock", scope: !6, file: !6, line: 128, type: !265, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!265 = !DISubroutineType(types: !266)
!266 = !{!4, !267, !45, !268}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "MX_Rank", file: !16, line: 1167, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !16, line: 173, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 51, baseType: !60)
!271 = !DILocalVariable(name: "lockStorage", arg: 1, scope: !264, file: !6, line: 128, type: !267)
!272 = !DILocation(line: 128, column: 43, scope: !264)
!273 = !DILocalVariable(name: "name", arg: 2, scope: !264, file: !6, line: 129, type: !45)
!274 = !DILocation(line: 129, column: 43, scope: !264)
!275 = !DILocalVariable(name: "rank", arg: 3, scope: !264, file: !6, line: 130, type: !268)
!276 = !DILocation(line: 130, column: 39, scope: !264)
!277 = !DILocalVariable(name: "lock", scope: !264, file: !6, line: 132, type: !4)
!278 = !DILocation(line: 132, column: 19, scope: !264)
!279 = !DILocation(line: 136, column: 44, scope: !264)
!280 = !DILocation(line: 136, column: 29, scope: !264)
!281 = !DILocation(line: 136, column: 11, scope: !264)
!282 = !DILocation(line: 136, column: 9, scope: !264)
!283 = !DILocation(line: 138, column: 26, scope: !284)
!284 = distinct !DILexicalBlock(scope: !264, file: !6, line: 138, column: 8)
!285 = !DILocation(line: 138, column: 31, scope: !284)
!286 = !DILocation(line: 138, column: 25, scope: !284)
!287 = !DILocation(line: 138, column: 8, scope: !284)
!288 = !DILocation(line: 138, column: 8, scope: !264)
!289 = !DILocation(line: 139, column: 47, scope: !290)
!290 = distinct !DILexicalBlock(scope: !284, file: !6, line: 138, column: 14)
!291 = !DILocation(line: 139, column: 60, scope: !290)
!292 = !DILocation(line: 139, column: 66, scope: !290)
!293 = !DILocation(line: 139, column: 14, scope: !290)
!294 = !DILocation(line: 139, column: 12, scope: !290)
!295 = !DILocation(line: 140, column: 4, scope: !290)
!296 = !DILocation(line: 142, column: 11, scope: !264)
!297 = !DILocation(line: 142, column: 4, scope: !264)
!298 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !20, file: !20, line: 3829, type: !299, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!299 = !DISubroutineType(types: !300)
!300 = !{!8, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!303 = !DILocalVariable(name: "var", arg: 1, scope: !298, file: !20, line: 3829, type: !301)
!304 = !DILocation(line: 3829, column: 368, scope: !298)
!305 = !DILocation(line: 3829, column: 415, scope: !298)
!306 = !DILocation(line: 3829, column: 401, scope: !298)
!307 = !DILocation(line: 3829, column: 382, scope: !298)
!308 = !DILocation(line: 3829, column: 375, scope: !298)
!309 = distinct !DISubprogram(name: "Atomic_Read64", scope: !20, file: !20, line: 2143, type: !310, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!310 = !DISubroutineType(types: !311)
!311 = !{!26, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!314 = !DILocalVariable(name: "var", arg: 1, scope: !309, file: !20, line: 2143, type: !312)
!315 = !DILocation(line: 2143, column: 36, scope: !309)
!316 = !DILocalVariable(name: "value", scope: !309, file: !20, line: 2146, type: !26)
!317 = !DILocation(line: 2146, column: 11, scope: !309)
!318 = !DILocation(line: 2160, column: 14, scope: !309)
!319 = !DILocation(line: 2160, column: 19, scope: !309)
!320 = !DILocation(line: 2157, column: 4, scope: !309)
!321 = !{i32 82772}
!322 = !DILocation(line: 2213, column: 11, scope: !309)
!323 = !DILocation(line: 2213, column: 4, scope: !309)
