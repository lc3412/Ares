; ModuleID = './ulCondVar.o.i'
source_filename = "./ulCondVar.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MXUserCondVar = type { i32, %struct.MXUserHeader*, %struct.MXRecLock*, %struct.Atomic_uint32, %union.pthread_cond_t }
%struct.Atomic_uint32 = type { i32 }
%union.pthread_cond_t = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct.MXUserHeader = type { i32, i8*, i32, %struct.anon, void (%struct.MXUserHeader*)*, void (%struct.MXUserHeader*)*, %struct.ListItem }
%struct.anon = type { i32 }
%struct.ListItem = type { %struct.ListItem*, %struct.ListItem* }
%struct.MXRecLock = type { %union.pthread_mutex_t, i32, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_condattr_t = type { i32 }
%struct.timeval = type { i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s: native lock initialization routine failed\0A\00", align 1
@__FUNCTION__.MXUserCreateCondVar = private unnamed_addr constant [20 x i8] c"MXUserCreateCondVar\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: invalid use of lock %s with condVar (0x%p; %s)\0A\00", align 1
@__FUNCTION__.MXUserWaitCondVar = private unnamed_addr constant [18 x i8] c"MXUserWaitCondVar\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: failure %d on condVar (0x%p; %s) \0A\00", align 1
@__FUNCTION__.MXUser_SignalCondVar = private unnamed_addr constant [21 x i8] c"MXUser_SignalCondVar\00", align 1
@__FUNCTION__.MXUser_BroadcastCondVar = private unnamed_addr constant [24 x i8] c"MXUser_BroadcastCondVar\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: Attempted destroy on active condVar (0x%p; %s)\0A\00", align 1
@__FUNCTION__.MXUser_DestroyCondVar = private unnamed_addr constant [22 x i8] c"MXUser_DestroyCondVar\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: failure %d on condVar (0x%p; %s)\0A\00", align 1
@__FUNCTION__.MXUserWaitInternal = private unnamed_addr constant [19 x i8] c"MXUserWaitInternal\00", align 1

; Function Attrs: nounwind uwtable
define %struct.MXUserCondVar* @MXUserCreateCondVar(%struct.MXUserHeader*, %struct.MXRecLock*) #0 !dbg !30 {
  %3 = alloca %struct.MXUserHeader*, align 8
  %4 = alloca %struct.MXRecLock*, align 8
  %5 = alloca %struct.MXUserCondVar*, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %3, metadata !141, metadata !142), !dbg !143
  store %struct.MXRecLock* %1, %struct.MXRecLock** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %4, metadata !144, metadata !142), !dbg !145
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %5, metadata !146, metadata !142), !dbg !147
  %6 = call i8* @UtilSafeCalloc0(i64 1, i64 80), !dbg !148
  %7 = bitcast i8* %6 to %struct.MXUserCondVar*, !dbg !148
  store %struct.MXUserCondVar* %7, %struct.MXUserCondVar** %5, align 8, !dbg !147
  %8 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %5, align 8, !dbg !149
  %9 = call signext i8 @MXUserCreateInternal(%struct.MXUserCondVar* %8), !dbg !151
  %10 = icmp ne i8 %9, 0, !dbg !152
  %11 = xor i1 %10, true, !dbg !152
  %12 = zext i1 %11 to i32, !dbg !152
  %13 = sext i32 %12 to i64, !dbg !153
  %14 = icmp ne i64 %13, 0, !dbg !154
  br i1 %14, label %15, label %16, !dbg !155

; <label>:15:                                     ; preds = %2
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.MXUserCreateCondVar, i32 0, i32 0)) #8, !dbg !156
  unreachable, !dbg !156

; <label>:16:                                     ; preds = %2
  %17 = call i32 @MXUserGetSignature(i32 6), !dbg !158
  %18 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %5, align 8, !dbg !159
  %19 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %18, i32 0, i32 0, !dbg !160
  store i32 %17, i32* %19, align 8, !dbg !161
  %20 = load %struct.MXUserHeader*, %struct.MXUserHeader** %3, align 8, !dbg !162
  %21 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %5, align 8, !dbg !163
  %22 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %21, i32 0, i32 1, !dbg !164
  store %struct.MXUserHeader* %20, %struct.MXUserHeader** %22, align 8, !dbg !165
  %23 = load %struct.MXRecLock*, %struct.MXRecLock** %4, align 8, !dbg !166
  %24 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %5, align 8, !dbg !167
  %25 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %24, i32 0, i32 2, !dbg !168
  store %struct.MXRecLock* %23, %struct.MXRecLock** %25, align 8, !dbg !169
  %26 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %5, align 8, !dbg !170
  ret %struct.MXUserCondVar* %26, !dbg !171
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @UtilSafeCalloc0(i64, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXUserCreateInternal(%struct.MXUserCondVar*) #3 !dbg !172 {
  %2 = alloca %struct.MXUserCondVar*, align 8
  store %struct.MXUserCondVar* %0, %struct.MXUserCondVar** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %2, metadata !176, metadata !142), !dbg !177
  %3 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !178
  %4 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %3, i32 0, i32 4, !dbg !179
  %5 = call i32 @pthread_cond_init(%union.pthread_cond_t* %4, %union.pthread_condattr_t* null) #9, !dbg !180
  %6 = icmp eq i32 %5, 0, !dbg !181
  %7 = zext i1 %6 to i32, !dbg !181
  %8 = trunc i32 %7 to i8, !dbg !180
  ret i8 %8, !dbg !182
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

declare i32 @MXUserGetSignature(i32) #2

; Function Attrs: nounwind uwtable
define void @MXUserWaitCondVar(%struct.MXUserHeader*, %struct.MXRecLock*, %struct.MXUserCondVar*, i32) #0 !dbg !183 {
  %5 = alloca %struct.MXUserHeader*, align 8
  %6 = alloca %struct.MXRecLock*, align 8
  %7 = alloca %struct.MXUserCondVar*, align 8
  %8 = alloca i32, align 4
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %5, metadata !186, metadata !142), !dbg !187
  store %struct.MXRecLock* %1, %struct.MXRecLock** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %6, metadata !188, metadata !142), !dbg !189
  store %struct.MXUserCondVar* %2, %struct.MXUserCondVar** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %7, metadata !190, metadata !142), !dbg !191
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !192, metadata !142), !dbg !193
  %9 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %7, align 8, !dbg !194
  %10 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %9, i32 0, i32 2, !dbg !196
  %11 = load %struct.MXRecLock*, %struct.MXRecLock** %10, align 8, !dbg !196
  %12 = load %struct.MXRecLock*, %struct.MXRecLock** %6, align 8, !dbg !197
  %13 = icmp ne %struct.MXRecLock* %11, %12, !dbg !198
  br i1 %13, label %14, label %24, !dbg !199

; <label>:14:                                     ; preds = %4
  %15 = load %struct.MXUserHeader*, %struct.MXUserHeader** %5, align 8, !dbg !200
  %16 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %15, i32 0, i32 1, !dbg !202
  %17 = load i8*, i8** %16, align 8, !dbg !202
  %18 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %7, align 8, !dbg !203
  %19 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %7, align 8, !dbg !204
  %20 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %19, i32 0, i32 1, !dbg !205
  %21 = load %struct.MXUserHeader*, %struct.MXUserHeader** %20, align 8, !dbg !205
  %22 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %21, i32 0, i32 1, !dbg !206
  %23 = load i8*, i8** %22, align 8, !dbg !206
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.MXUserWaitCondVar, i32 0, i32 0), i8* %17, %struct.MXUserCondVar* %18, i8* %23) #8, !dbg !207
  unreachable, !dbg !207

; <label>:24:                                     ; preds = %4
  %25 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %7, align 8, !dbg !208
  %26 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %25, i32 0, i32 3, !dbg !209
  call void @Atomic_Inc32(%struct.Atomic_uint32* %26), !dbg !210
  %27 = load %struct.MXRecLock*, %struct.MXRecLock** %6, align 8, !dbg !211
  %28 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %7, align 8, !dbg !212
  %29 = load i32, i32* %8, align 4, !dbg !213
  call void @MXUserWaitInternal(%struct.MXRecLock* %27, %struct.MXUserCondVar* %28, i32 %29), !dbg !214
  %30 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %7, align 8, !dbg !215
  %31 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %30, i32 0, i32 3, !dbg !216
  call void @Atomic_Dec32(%struct.Atomic_uint32* %31), !dbg !217
  ret void, !dbg !218
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Inc32(%struct.Atomic_uint32*) #3 !dbg !219 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !223, metadata !142), !dbg !224
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !225
  %4 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %3, i32 0, i32 0, !dbg !226
  call void asm sideeffect "lock; incl $0", "=*m,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %4, i32* %4) #9, !dbg !227, !srcloc !228
  ret void, !dbg !229
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserWaitInternal(%struct.MXRecLock*, %struct.MXUserCondVar*, i32) #3 !dbg !230 {
  %4 = alloca %struct.MXRecLock*, align 8
  %5 = alloca %struct.MXUserCondVar*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timespec, align 8
  %11 = alloca i64, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %4, metadata !233, metadata !142), !dbg !234
  store %struct.MXUserCondVar* %1, %struct.MXUserCondVar** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %5, metadata !235, metadata !142), !dbg !236
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !237, metadata !142), !dbg !238
  call void @llvm.dbg.declare(metadata i32* %7, metadata !239, metadata !142), !dbg !240
  call void @llvm.dbg.declare(metadata i32* %8, metadata !241, metadata !142), !dbg !242
  %12 = load %struct.MXRecLock*, %struct.MXRecLock** %4, align 8, !dbg !243
  %13 = call i32 @MXRecLockCount(%struct.MXRecLock* %12), !dbg !244
  store i32 %13, i32* %8, align 4, !dbg !242
  %14 = load %struct.MXRecLock*, %struct.MXRecLock** %4, align 8, !dbg !245
  %15 = load i32, i32* %8, align 4, !dbg !246
  call void @MXRecLockDecCount(%struct.MXRecLock* %14, i32 %15), !dbg !247
  %16 = load i32, i32* %6, align 4, !dbg !248
  %17 = icmp eq i32 %16, -1, !dbg !250
  br i1 %17, label %18, label %24, !dbg !251

; <label>:18:                                     ; preds = %3
  %19 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %5, align 8, !dbg !252
  %20 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %19, i32 0, i32 4, !dbg !254
  %21 = load %struct.MXRecLock*, %struct.MXRecLock** %4, align 8, !dbg !255
  %22 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %21, i32 0, i32 0, !dbg !256
  %23 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %20, %union.pthread_mutex_t* %22), !dbg !257
  store i32 %23, i32* %7, align 4, !dbg !258
  br label %48, !dbg !259

; <label>:24:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.timeval* %9, metadata !260, metadata !142), !dbg !268
  call void @llvm.dbg.declare(metadata %struct.timespec* %10, metadata !269, metadata !142), !dbg !275
  call void @llvm.dbg.declare(metadata i64* %11, metadata !276, metadata !142), !dbg !277
  %25 = call i32 @gettimeofday(%struct.timeval* %9, %struct.timezone* null) #9, !dbg !278
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0, !dbg !279
  %27 = load i64, i64* %26, align 8, !dbg !279
  %28 = mul i64 %27, 1000000000, !dbg !280
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1, !dbg !281
  %30 = load i64, i64* %29, align 8, !dbg !281
  %31 = mul i64 %30, 1000, !dbg !282
  %32 = add i64 %28, %31, !dbg !283
  %33 = load i32, i32* %6, align 4, !dbg !284
  %34 = zext i32 %33 to i64, !dbg !285
  %35 = mul i64 %34, 1000000, !dbg !286
  %36 = add i64 %32, %35, !dbg !287
  store i64 %36, i64* %11, align 8, !dbg !288
  %37 = load i64, i64* %11, align 8, !dbg !289
  %38 = udiv i64 %37, 1000000000, !dbg !290
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0, !dbg !291
  store i64 %38, i64* %39, align 8, !dbg !292
  %40 = load i64, i64* %11, align 8, !dbg !293
  %41 = urem i64 %40, 1000000000, !dbg !294
  %42 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1, !dbg !295
  store i64 %41, i64* %42, align 8, !dbg !296
  %43 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %5, align 8, !dbg !297
  %44 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %43, i32 0, i32 4, !dbg !298
  %45 = load %struct.MXRecLock*, %struct.MXRecLock** %4, align 8, !dbg !299
  %46 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %45, i32 0, i32 0, !dbg !300
  %47 = call i32 @pthread_cond_timedwait(%union.pthread_cond_t* %44, %union.pthread_mutex_t* %46, %struct.timespec* %10), !dbg !301
  store i32 %47, i32* %7, align 4, !dbg !302
  br label %48

; <label>:48:                                     ; preds = %24, %18
  %49 = load %struct.MXRecLock*, %struct.MXRecLock** %4, align 8, !dbg !303
  %50 = load i32, i32* %8, align 4, !dbg !304
  call void @MXRecLockIncCount(%struct.MXRecLock* %49, i32 %50), !dbg !305
  %51 = load i32, i32* %7, align 4, !dbg !306
  %52 = icmp ne i32 %51, 0, !dbg !308
  br i1 %52, label %53, label %65, !dbg !309

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %7, align 4, !dbg !310
  %55 = icmp ne i32 %54, 110, !dbg !313
  br i1 %55, label %56, label %64, !dbg !314

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %7, align 4, !dbg !315
  %58 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %5, align 8, !dbg !317
  %59 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %5, align 8, !dbg !318
  %60 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %59, i32 0, i32 1, !dbg !319
  %61 = load %struct.MXUserHeader*, %struct.MXUserHeader** %60, align 8, !dbg !319
  %62 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %61, i32 0, i32 1, !dbg !320
  %63 = load i8*, i8** %62, align 8, !dbg !320
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.MXUserWaitInternal, i32 0, i32 0), i32 %57, %struct.MXUserCondVar* %58, i8* %63) #8, !dbg !321
  unreachable, !dbg !321

; <label>:64:                                     ; preds = %53
  br label %65, !dbg !322

; <label>:65:                                     ; preds = %64, %48
  ret void, !dbg !323
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Dec32(%struct.Atomic_uint32*) #3 !dbg !324 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !325, metadata !142), !dbg !326
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !327
  %4 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %3, i32 0, i32 0, !dbg !328
  call void asm sideeffect "lock; decl $0", "=*m,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %4, i32* %4) #9, !dbg !329, !srcloc !330
  ret void, !dbg !331
}

; Function Attrs: nounwind uwtable
define void @MXUser_SignalCondVar(%struct.MXUserCondVar*) #0 !dbg !332 {
  %2 = alloca %struct.MXUserCondVar*, align 8
  %3 = alloca i32, align 4
  store %struct.MXUserCondVar* %0, %struct.MXUserCondVar** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %2, metadata !335, metadata !142), !dbg !336
  call void @llvm.dbg.declare(metadata i32* %3, metadata !337, metadata !142), !dbg !338
  %4 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !339
  %5 = call i32 @MXUserSignalInternal(%struct.MXUserCondVar* %4), !dbg !340
  store i32 %5, i32* %3, align 4, !dbg !341
  %6 = load i32, i32* %3, align 4, !dbg !342
  %7 = icmp ne i32 %6, 0, !dbg !344
  br i1 %7, label %8, label %16, !dbg !345

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !346
  %10 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !348
  %11 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !349
  %12 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %11, i32 0, i32 1, !dbg !350
  %13 = load %struct.MXUserHeader*, %struct.MXUserHeader** %12, align 8, !dbg !350
  %14 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %13, i32 0, i32 1, !dbg !351
  %15 = load i8*, i8** %14, align 8, !dbg !351
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.MXUser_SignalCondVar, i32 0, i32 0), i32 %9, %struct.MXUserCondVar* %10, i8* %15) #8, !dbg !352
  unreachable, !dbg !352

; <label>:16:                                     ; preds = %1
  ret void, !dbg !353
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXUserSignalInternal(%struct.MXUserCondVar*) #3 !dbg !354 {
  %2 = alloca %struct.MXUserCondVar*, align 8
  store %struct.MXUserCondVar* %0, %struct.MXUserCondVar** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %2, metadata !357, metadata !142), !dbg !358
  %3 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !359
  %4 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %3, i32 0, i32 4, !dbg !360
  %5 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %4) #9, !dbg !361
  ret i32 %5, !dbg !362
}

; Function Attrs: nounwind uwtable
define void @MXUser_BroadcastCondVar(%struct.MXUserCondVar*) #0 !dbg !363 {
  %2 = alloca %struct.MXUserCondVar*, align 8
  %3 = alloca i32, align 4
  store %struct.MXUserCondVar* %0, %struct.MXUserCondVar** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %2, metadata !364, metadata !142), !dbg !365
  call void @llvm.dbg.declare(metadata i32* %3, metadata !366, metadata !142), !dbg !367
  %4 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !368
  %5 = call i32 @MXUserBroadcastInternal(%struct.MXUserCondVar* %4), !dbg !369
  store i32 %5, i32* %3, align 4, !dbg !370
  %6 = load i32, i32* %3, align 4, !dbg !371
  %7 = icmp ne i32 %6, 0, !dbg !373
  br i1 %7, label %8, label %16, !dbg !374

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !375
  %10 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !377
  %11 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !378
  %12 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %11, i32 0, i32 1, !dbg !379
  %13 = load %struct.MXUserHeader*, %struct.MXUserHeader** %12, align 8, !dbg !379
  %14 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %13, i32 0, i32 1, !dbg !380
  %15 = load i8*, i8** %14, align 8, !dbg !380
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.MXUser_BroadcastCondVar, i32 0, i32 0), i32 %9, %struct.MXUserCondVar* %10, i8* %15) #8, !dbg !381
  unreachable, !dbg !381

; <label>:16:                                     ; preds = %1
  ret void, !dbg !382
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXUserBroadcastInternal(%struct.MXUserCondVar*) #3 !dbg !383 {
  %2 = alloca %struct.MXUserCondVar*, align 8
  store %struct.MXUserCondVar* %0, %struct.MXUserCondVar** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %2, metadata !384, metadata !142), !dbg !385
  %3 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !386
  %4 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %3, i32 0, i32 4, !dbg !387
  %5 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %4) #9, !dbg !388
  ret i32 %5, !dbg !389
}

; Function Attrs: nounwind uwtable
define void @MXUser_DestroyCondVar(%struct.MXUserCondVar*) #0 !dbg !390 {
  %2 = alloca %struct.MXUserCondVar*, align 8
  store %struct.MXUserCondVar* %0, %struct.MXUserCondVar** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %2, metadata !391, metadata !142), !dbg !392
  %3 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !393
  %4 = icmp ne %struct.MXUserCondVar* %3, null, !dbg !395
  br i1 %4, label %5, label %27, !dbg !396

; <label>:5:                                      ; preds = %1
  %6 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !397
  %7 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %6, i32 0, i32 3, !dbg !400
  %8 = call i32 @Atomic_Read32(%struct.Atomic_uint32* %7), !dbg !401
  %9 = icmp ne i32 %8, 0, !dbg !402
  br i1 %9, label %10, label %17, !dbg !403

; <label>:10:                                     ; preds = %5
  %11 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !404
  %12 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !406
  %13 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %12, i32 0, i32 1, !dbg !407
  %14 = load %struct.MXUserHeader*, %struct.MXUserHeader** %13, align 8, !dbg !407
  %15 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %14, i32 0, i32 1, !dbg !408
  %16 = load i8*, i8** %15, align 8, !dbg !408
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.MXUser_DestroyCondVar, i32 0, i32 0), %struct.MXUserCondVar* %11, i8* %16) #8, !dbg !409
  unreachable, !dbg !409

; <label>:17:                                     ; preds = %5
  %18 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !410
  %19 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %18, i32 0, i32 0, !dbg !411
  store i32 0, i32* %19, align 8, !dbg !412
  %20 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !413
  call void @MXUserDestroyInternal(%struct.MXUserCondVar* %20), !dbg !414
  %21 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !415
  %22 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %21, i32 0, i32 1, !dbg !416
  store %struct.MXUserHeader* null, %struct.MXUserHeader** %22, align 8, !dbg !417
  %23 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !418
  %24 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %23, i32 0, i32 2, !dbg !419
  store %struct.MXRecLock* null, %struct.MXRecLock** %24, align 8, !dbg !420
  %25 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !421
  %26 = bitcast %struct.MXUserCondVar* %25 to i8*, !dbg !421
  call void @free(i8* %26) #9, !dbg !422
  br label %27, !dbg !423

; <label>:27:                                     ; preds = %17, %1
  ret void, !dbg !424
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_Read32(%struct.Atomic_uint32*) #3 !dbg !425 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  %3 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !430, metadata !142), !dbg !431
  call void @llvm.dbg.declare(metadata i32* %3, metadata !432, metadata !142), !dbg !433
  %4 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !434
  %5 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %4, i32 0, i32 0, !dbg !435
  %6 = call i32 asm sideeffect "mov $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %5) #9, !dbg !436, !srcloc !437
  store i32 %6, i32* %3, align 4, !dbg !436
  %7 = load i32, i32* %3, align 4, !dbg !438
  ret i32 %7, !dbg !439
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserDestroyInternal(%struct.MXUserCondVar*) #3 !dbg !440 {
  %2 = alloca %struct.MXUserCondVar*, align 8
  store %struct.MXUserCondVar* %0, %struct.MXUserCondVar** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %2, metadata !441, metadata !142), !dbg !442
  %3 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %2, align 8, !dbg !443
  %4 = getelementptr inbounds %struct.MXUserCondVar, %struct.MXUserCondVar* %3, i32 0, i32 4, !dbg !444
  %5 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %4) #9, !dbg !445
  ret void, !dbg !446
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockCount(%struct.MXRecLock*) #3 !dbg !447 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !452, metadata !142), !dbg !453
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !454
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 1, !dbg !455
  %5 = load i32, i32* %4, align 8, !dbg !455
  ret i32 %5, !dbg !456
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockDecCount(%struct.MXRecLock*, i32) #3 !dbg !457 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !460, metadata !142), !dbg !461
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !462, metadata !142), !dbg !463
  call void @llvm.dbg.declare(metadata i32* %5, metadata !464, metadata !142), !dbg !465
  %6 = load i32, i32* %4, align 4, !dbg !466
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !467
  %8 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %7, i32 0, i32 1, !dbg !468
  %9 = load i32, i32* %8, align 8, !dbg !469
  %10 = sub nsw i32 %9, %6, !dbg !469
  store i32 %10, i32* %8, align 8, !dbg !469
  store i32 %10, i32* %5, align 4, !dbg !465
  %11 = load i32, i32* %5, align 4, !dbg !470
  %12 = icmp eq i32 %11, 0, !dbg !472
  %13 = xor i1 %12, true, !dbg !473
  %14 = xor i1 %13, true, !dbg !474
  %15 = zext i1 %14 to i32, !dbg !474
  %16 = sext i32 %15 to i64, !dbg !474
  %17 = icmp ne i64 %16, 0, !dbg !475
  br i1 %17, label %18, label %20, !dbg !476

; <label>:18:                                     ; preds = %2
  %19 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !477
  call void @MXRecLockSetNoOwner(%struct.MXRecLock* %19), !dbg !479
  br label %20, !dbg !480

; <label>:20:                                     ; preds = %18, %2
  ret void, !dbg !481
}

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #5

declare i32 @pthread_cond_timedwait(%union.pthread_cond_t*, %union.pthread_mutex_t*, %struct.timespec*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockIncCount(%struct.MXRecLock*, i32) #3 !dbg !482 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !483, metadata !142), !dbg !484
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !485, metadata !142), !dbg !486
  call void @llvm.dbg.declare(metadata i32* %5, metadata !487, metadata !142), !dbg !488
  %6 = load i32, i32* %4, align 4, !dbg !489
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !490
  %8 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %7, i32 0, i32 1, !dbg !491
  %9 = load i32, i32* %8, align 8, !dbg !492
  %10 = add nsw i32 %9, %6, !dbg !492
  store i32 %10, i32* %8, align 8, !dbg !492
  store i32 %10, i32* %5, align 4, !dbg !488
  %11 = load i32, i32* %5, align 4, !dbg !493
  %12 = load i32, i32* %4, align 4, !dbg !495
  %13 = icmp eq i32 %11, %12, !dbg !496
  %14 = xor i1 %13, true, !dbg !497
  %15 = xor i1 %14, true, !dbg !498
  %16 = zext i1 %15 to i32, !dbg !498
  %17 = sext i32 %16 to i64, !dbg !498
  %18 = icmp ne i64 %17, 0, !dbg !499
  br i1 %18, label %19, label %21, !dbg !500

; <label>:19:                                     ; preds = %2
  %20 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !501
  call void @MXRecLockSetOwner(%struct.MXRecLock* %20), !dbg !503
  br label %21, !dbg !504

; <label>:21:                                     ; preds = %19, %2
  ret void, !dbg !505
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockSetNoOwner(%struct.MXRecLock*) #3 !dbg !506 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !509, metadata !142), !dbg !510
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !511
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 2, !dbg !512
  %5 = bitcast i64* %4 to i8*, !dbg !513
  call void @llvm.memset.p0i8.i64(i8* %5, i8 -1, i64 8, i32 8, i1 false), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockSetOwner(%struct.MXRecLock*) #3 !dbg !515 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !516, metadata !142), !dbg !517
  %3 = call i64 @MXUserNativeThreadID(), !dbg !518
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !519
  %5 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %4, i32 0, i32 2, !dbg !520
  store i64 %3, i64* %5, align 8, !dbg !521
  ret void, !dbg !522
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @MXUserNativeThreadID() #3 !dbg !523 {
  %1 = call i64 @pthread_self() #1, !dbg !526
  ret i64 %1, !dbg !527
}

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #7

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(%union.pthread_cond_t*) #5

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(%union.pthread_cond_t*) #5

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(%union.pthread_cond_t*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15)
!1 = !DIFile(filename: "ulCondVar.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line483")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 440, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "ulInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line483")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "MXUSER_TYPE_NEVER_USE", value: 0)
!7 = !DIEnumerator(name: "MXUSER_TYPE_RW", value: 1)
!8 = !DIEnumerator(name: "MXUSER_TYPE_REC", value: 2)
!9 = !DIEnumerator(name: "MXUSER_TYPE_RANK", value: 3)
!10 = !DIEnumerator(name: "MXUSER_TYPE_EXCL", value: 4)
!11 = !DIEnumerator(name: "MXUSER_TYPE_SEMA", value: 5)
!12 = !DIEnumerator(name: "MXUSER_TYPE_CONDVAR", value: 6)
!13 = !DIEnumerator(name: "MXUSER_TYPE_BARRIER", value: 7)
!14 = !DIEnumerator(name: "MXUSER_TYPE_EVENT", value: 8)
!15 = !{!16, !17, !22, !26}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !18, line: 171, baseType: !19)
!18 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line483")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !20, line: 55, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line483")
!21 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !23, line: 75, baseType: !24)
!23 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line483")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !25, line: 139, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line483")
!26 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!27 = !{i32 2, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!30 = distinct !DISubprogram(name: "MXUserCreateCondVar", scope: !31, file: !31, line: 390, type: !32, isLocal: false, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!31 = !DIFile(filename: "ulCondVar.c", directory: "/home/lichi/Desktop/open-vm-tools/line483")
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !44, !74}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserCondVar", file: !36, line: 42, baseType: !37)
!36 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line483")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserCondVar", file: !31, line: 37, size: 640, align: 64, elements: !38)
!38 = !{!39, !43, !73, !111, !118}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !37, file: !31, line: 38, baseType: !40, size: 32, align: 32)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !18, line: 173, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !20, line: 51, baseType: !42)
!42 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !37, file: !31, line: 39, baseType: !44, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHeader", file: !4, line: 469, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserHeader", file: !4, line: 456, size: 448, align: 64, elements: !47)
!47 = !{!48, !49, !52, !54, !59, !64, !65}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !46, file: !4, line: 457, baseType: !40, size: 32, align: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !46, file: !4, line: 458, baseType: !50, size: 64, align: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !46, file: !4, line: 459, baseType: !53, size: 32, align: 32, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "MX_Rank", file: !18, line: 1167, baseType: !40)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !46, file: !4, line: 464, baseType: !55, size: 32, align: 32, offset: 160)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !46, file: !4, line: 461, size: 32, align: 32, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !55, file: !4, line: 462, baseType: !42, size: 24, align: 32, flags: DIFlagBitField, extraData: i64 0)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "badHeader", scope: !55, file: !4, line: 463, baseType: !42, size: 1, align: 32, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dumpFunc", scope: !46, file: !4, line: 466, baseType: !60, size: 64, align: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "statsFunc", scope: !46, file: !4, line: 467, baseType: !60, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !46, file: !4, line: 468, baseType: !66, size: 128, align: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "ListItem", file: !67, line: 45, baseType: !68)
!67 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/circList.h", directory: "/home/lichi/Desktop/open-vm-tools/line483")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ListItem", file: !67, line: 42, size: 128, align: 64, elements: !69)
!69 = !{!70, !72}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !68, file: !67, line: 43, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !68, file: !67, line: 44, baseType: !71, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ownerLock", scope: !37, file: !31, line: 40, baseType: !74, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXRecLock", file: !4, line: 67, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 58, size: 448, align: 64, elements: !77)
!77 = !{!78, !107, !108}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "nativeLock", scope: !76, file: !4, line: 62, baseType: !79, size: 320, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !80, line: 128, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line483")
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !80, line: 90, size: 320, align: 64, elements: !82)
!82 = !{!83, !102, !106}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !81, file: !80, line: 125, baseType: !84, size: 320, align: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !80, line: 92, size: 320, align: 64, elements: !85)
!85 = !{!86, !88, !89, !90, !91, !92, !94, !95}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !84, file: !80, line: 94, baseType: !87, size: 32, align: 32)
!87 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !84, file: !80, line: 95, baseType: !42, size: 32, align: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !84, file: !80, line: 96, baseType: !87, size: 32, align: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !84, file: !80, line: 98, baseType: !42, size: 32, align: 32, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !84, file: !80, line: 102, baseType: !87, size: 32, align: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !84, file: !80, line: 104, baseType: !93, size: 16, align: 16, offset: 160)
!93 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !84, file: !80, line: 105, baseType: !93, size: 16, align: 16, offset: 176)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !84, file: !80, line: 106, baseType: !96, size: 128, align: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !80, line: 79, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !80, line: 75, size: 128, align: 64, elements: !98)
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !97, file: !80, line: 77, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !97, file: !80, line: 78, baseType: !100, size: 64, align: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !81, file: !80, line: 126, baseType: !103, size: 320, align: 8)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 320, align: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 40)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !81, file: !80, line: 127, baseType: !26, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "referenceCount", scope: !76, file: !4, line: 65, baseType: !87, size: 32, align: 32, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "nativeThreadID", scope: !76, file: !4, line: 66, baseType: !109, size: 64, align: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserThreadID", file: !4, line: 39, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !80, line: 60, baseType: !21)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "referenceCount", scope: !37, file: !31, line: 41, baseType: !112, size: 32, align: 32, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !113, line: 135, baseType: !114)
!113 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line483")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !113, line: 133, size: 32, align: 32, elements: !115)
!115 = !{!116}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !114, file: !113, line: 134, baseType: !117, size: 32, align: 32)
!117 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "condObject", scope: !37, file: !31, line: 46, baseType: !119, size: 384, align: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !80, line: 154, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !80, line: 139, size: 384, align: 64, elements: !121)
!121 = !{!122, !134, !138}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !120, file: !80, line: 151, baseType: !123, size: 384, align: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !80, line: 141, size: 384, align: 64, elements: !124)
!124 = !{!125, !126, !127, !129, !130, !131, !132, !133}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !123, file: !80, line: 143, baseType: !87, size: 32, align: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__futex", scope: !123, file: !80, line: 144, baseType: !42, size: 32, align: 32, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__total_seq", scope: !123, file: !80, line: 145, baseType: !128, size: 64, align: 64, offset: 64)
!128 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__wakeup_seq", scope: !123, file: !80, line: 146, baseType: !128, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__woken_seq", scope: !123, file: !80, line: 147, baseType: !128, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__mutex", scope: !123, file: !80, line: 148, baseType: !16, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__nwaiters", scope: !123, file: !80, line: 149, baseType: !42, size: 32, align: 32, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__broadcast_seq", scope: !123, file: !80, line: 150, baseType: !42, size: 32, align: 32, offset: 352)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !120, file: !80, line: 152, baseType: !135, size: 384, align: 8)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 384, align: 8, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 48)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !120, file: !80, line: 153, baseType: !139, size: 64, align: 64)
!139 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!140 = !{}
!141 = !DILocalVariable(name: "header", arg: 1, scope: !30, file: !31, line: 390, type: !44)
!142 = !DIExpression()
!143 = !DILocation(line: 390, column: 35, scope: !30)
!144 = !DILocalVariable(name: "lock", arg: 2, scope: !30, file: !31, line: 391, type: !74)
!145 = !DILocation(line: 391, column: 32, scope: !30)
!146 = !DILocalVariable(name: "condVar", scope: !30, file: !31, line: 393, type: !34)
!147 = !DILocation(line: 393, column: 19, scope: !30)
!148 = !DILocation(line: 393, column: 29, scope: !30)
!149 = !DILocation(line: 395, column: 48, scope: !150)
!150 = distinct !DILexicalBlock(scope: !30, file: !31, line: 395, column: 8)
!151 = !DILocation(line: 395, column: 27, scope: !150)
!152 = !DILocation(line: 395, column: 26, scope: !150)
!153 = !DILocation(line: 395, column: 25, scope: !150)
!154 = !DILocation(line: 395, column: 8, scope: !150)
!155 = !DILocation(line: 395, column: 8, scope: !30)
!156 = !DILocation(line: 396, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !150, file: !31, line: 395, column: 63)
!158 = !DILocation(line: 399, column: 25, scope: !30)
!159 = !DILocation(line: 399, column: 4, scope: !30)
!160 = !DILocation(line: 399, column: 13, scope: !30)
!161 = !DILocation(line: 399, column: 23, scope: !30)
!162 = !DILocation(line: 400, column: 22, scope: !30)
!163 = !DILocation(line: 400, column: 4, scope: !30)
!164 = !DILocation(line: 400, column: 13, scope: !30)
!165 = !DILocation(line: 400, column: 20, scope: !30)
!166 = !DILocation(line: 401, column: 25, scope: !30)
!167 = !DILocation(line: 401, column: 4, scope: !30)
!168 = !DILocation(line: 401, column: 13, scope: !30)
!169 = !DILocation(line: 401, column: 23, scope: !30)
!170 = !DILocation(line: 403, column: 11, scope: !30)
!171 = !DILocation(line: 403, column: 4, scope: !30)
!172 = distinct !DISubprogram(name: "MXUserCreateInternal", scope: !31, file: !31, line: 217, type: !173, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!173 = !DISubroutineType(types: !174)
!174 = !{!175, !34}
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !18, line: 230, baseType: !51)
!176 = !DILocalVariable(name: "condVar", arg: 1, scope: !172, file: !31, line: 217, type: !34)
!177 = !DILocation(line: 217, column: 37, scope: !172)
!178 = !DILocation(line: 219, column: 30, scope: !172)
!179 = !DILocation(line: 219, column: 39, scope: !172)
!180 = !DILocation(line: 219, column: 11, scope: !172)
!181 = !DILocation(line: 219, column: 56, scope: !172)
!182 = !DILocation(line: 219, column: 4, scope: !172)
!183 = distinct !DISubprogram(name: "MXUserWaitCondVar", scope: !31, file: !31, line: 425, type: !184, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !44, !74, !34, !40}
!186 = !DILocalVariable(name: "header", arg: 1, scope: !183, file: !31, line: 425, type: !44)
!187 = !DILocation(line: 425, column: 33, scope: !183)
!188 = !DILocalVariable(name: "lock", arg: 2, scope: !183, file: !31, line: 426, type: !74)
!189 = !DILocation(line: 426, column: 30, scope: !183)
!190 = !DILocalVariable(name: "condVar", arg: 3, scope: !183, file: !31, line: 427, type: !34)
!191 = !DILocation(line: 427, column: 34, scope: !183)
!192 = !DILocalVariable(name: "waitTimeMsec", arg: 4, scope: !183, file: !31, line: 428, type: !40)
!193 = !DILocation(line: 428, column: 26, scope: !183)
!194 = !DILocation(line: 435, column: 8, scope: !195)
!195 = distinct !DILexicalBlock(scope: !183, file: !31, line: 435, column: 8)
!196 = !DILocation(line: 435, column: 17, scope: !195)
!197 = !DILocation(line: 435, column: 30, scope: !195)
!198 = !DILocation(line: 435, column: 27, scope: !195)
!199 = !DILocation(line: 435, column: 8, scope: !183)
!200 = !DILocation(line: 437, column: 28, scope: !201)
!201 = distinct !DILexicalBlock(scope: !195, file: !31, line: 435, column: 36)
!202 = !DILocation(line: 437, column: 36, scope: !201)
!203 = !DILocation(line: 437, column: 42, scope: !201)
!204 = !DILocation(line: 437, column: 51, scope: !201)
!205 = !DILocation(line: 437, column: 60, scope: !201)
!206 = !DILocation(line: 437, column: 68, scope: !201)
!207 = !DILocation(line: 436, column: 7, scope: !201)
!208 = !DILocation(line: 445, column: 18, scope: !183)
!209 = !DILocation(line: 445, column: 27, scope: !183)
!210 = !DILocation(line: 445, column: 4, scope: !183)
!211 = !DILocation(line: 446, column: 23, scope: !183)
!212 = !DILocation(line: 446, column: 29, scope: !183)
!213 = !DILocation(line: 446, column: 38, scope: !183)
!214 = !DILocation(line: 446, column: 4, scope: !183)
!215 = !DILocation(line: 447, column: 18, scope: !183)
!216 = !DILocation(line: 447, column: 27, scope: !183)
!217 = !DILocation(line: 447, column: 4, scope: !183)
!218 = !DILocation(line: 448, column: 1, scope: !183)
!219 = distinct !DISubprogram(name: "Atomic_Inc32", scope: !113, file: !113, line: 1636, type: !220, isLocal: true, isDefinition: true, scopeLine: 1637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !222}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!223 = !DILocalVariable(name: "var", arg: 1, scope: !219, file: !113, line: 1636, type: !222)
!224 = !DILocation(line: 1636, column: 29, scope: !219)
!225 = !DILocation(line: 1645, column: 15, scope: !219)
!226 = !DILocation(line: 1645, column: 20, scope: !219)
!227 = !DILocation(line: 1643, column: 4, scope: !219)
!228 = !{i32 149736}
!229 = !DILocation(line: 1655, column: 1, scope: !219)
!230 = distinct !DISubprogram(name: "MXUserWaitInternal", scope: !31, file: !31, line: 265, type: !231, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !74, !34, !40}
!233 = !DILocalVariable(name: "lock", arg: 1, scope: !230, file: !31, line: 265, type: !74)
!234 = !DILocation(line: 265, column: 31, scope: !230)
!235 = !DILocalVariable(name: "condVar", arg: 2, scope: !230, file: !31, line: 266, type: !34)
!236 = !DILocation(line: 266, column: 35, scope: !230)
!237 = !DILocalVariable(name: "waitTimeMsec", arg: 3, scope: !230, file: !31, line: 267, type: !40)
!238 = !DILocation(line: 267, column: 27, scope: !230)
!239 = !DILocalVariable(name: "err", scope: !230, file: !31, line: 269, type: !87)
!240 = !DILocation(line: 269, column: 8, scope: !230)
!241 = !DILocalVariable(name: "lockCount", scope: !230, file: !31, line: 270, type: !87)
!242 = !DILocation(line: 270, column: 8, scope: !230)
!243 = !DILocation(line: 270, column: 35, scope: !230)
!244 = !DILocation(line: 270, column: 20, scope: !230)
!245 = !DILocation(line: 280, column: 22, scope: !230)
!246 = !DILocation(line: 280, column: 28, scope: !230)
!247 = !DILocation(line: 280, column: 4, scope: !230)
!248 = !DILocation(line: 282, column: 8, scope: !249)
!249 = distinct !DILexicalBlock(scope: !230, file: !31, line: 282, column: 8)
!250 = !DILocation(line: 282, column: 21, scope: !249)
!251 = !DILocation(line: 282, column: 8, scope: !230)
!252 = !DILocation(line: 283, column: 32, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !31, line: 282, column: 36)
!254 = !DILocation(line: 283, column: 41, scope: !253)
!255 = !DILocation(line: 283, column: 54, scope: !253)
!256 = !DILocation(line: 283, column: 60, scope: !253)
!257 = !DILocation(line: 283, column: 13, scope: !253)
!258 = !DILocation(line: 283, column: 11, scope: !253)
!259 = !DILocation(line: 284, column: 4, scope: !253)
!260 = !DILocalVariable(name: "curTime", scope: !261, file: !31, line: 285, type: !262)
!261 = distinct !DILexicalBlock(scope: !249, file: !31, line: 284, column: 11)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !263, line: 30, size: 128, align: 64, elements: !264)
!263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line483")
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !262, file: !263, line: 32, baseType: !24, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !262, file: !263, line: 33, baseType: !267, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !25, line: 141, baseType: !26)
!268 = !DILocation(line: 285, column: 22, scope: !261)
!269 = !DILocalVariable(name: "endTime", scope: !261, file: !31, line: 286, type: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !23, line: 120, size: 128, align: 64, elements: !271)
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !270, file: !23, line: 122, baseType: !24, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !270, file: !23, line: 123, baseType: !274, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !25, line: 175, baseType: !26)
!275 = !DILocation(line: 286, column: 23, scope: !261)
!276 = !DILocalVariable(name: "endNS", scope: !261, file: !31, line: 287, type: !17)
!277 = !DILocation(line: 287, column: 14, scope: !261)
!278 = !DILocation(line: 295, column: 7, scope: !261)
!279 = !DILocation(line: 296, column: 33, scope: !261)
!280 = !DILocation(line: 296, column: 40, scope: !261)
!281 = !DILocation(line: 297, column: 33, scope: !261)
!282 = !DILocation(line: 297, column: 41, scope: !261)
!283 = !DILocation(line: 296, column: 64, scope: !261)
!284 = !DILocation(line: 298, column: 25, scope: !261)
!285 = !DILocation(line: 298, column: 16, scope: !261)
!286 = !DILocation(line: 298, column: 38, scope: !261)
!287 = !DILocation(line: 297, column: 49, scope: !261)
!288 = !DILocation(line: 296, column: 13, scope: !261)
!289 = !DILocation(line: 300, column: 34, scope: !261)
!290 = !DILocation(line: 300, column: 40, scope: !261)
!291 = !DILocation(line: 300, column: 15, scope: !261)
!292 = !DILocation(line: 300, column: 22, scope: !261)
!293 = !DILocation(line: 301, column: 37, scope: !261)
!294 = !DILocation(line: 301, column: 43, scope: !261)
!295 = !DILocation(line: 301, column: 15, scope: !261)
!296 = !DILocation(line: 301, column: 23, scope: !261)
!297 = !DILocation(line: 304, column: 37, scope: !261)
!298 = !DILocation(line: 304, column: 46, scope: !261)
!299 = !DILocation(line: 304, column: 59, scope: !261)
!300 = !DILocation(line: 304, column: 65, scope: !261)
!301 = !DILocation(line: 304, column: 13, scope: !261)
!302 = !DILocation(line: 304, column: 11, scope: !261)
!303 = !DILocation(line: 308, column: 22, scope: !230)
!304 = !DILocation(line: 308, column: 28, scope: !230)
!305 = !DILocation(line: 308, column: 4, scope: !230)
!306 = !DILocation(line: 310, column: 8, scope: !307)
!307 = distinct !DILexicalBlock(scope: !230, file: !31, line: 310, column: 8)
!308 = !DILocation(line: 310, column: 12, scope: !307)
!309 = !DILocation(line: 310, column: 8, scope: !230)
!310 = !DILocation(line: 311, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !31, line: 311, column: 11)
!312 = distinct !DILexicalBlock(scope: !307, file: !31, line: 310, column: 18)
!313 = !DILocation(line: 311, column: 15, scope: !311)
!314 = !DILocation(line: 311, column: 11, scope: !312)
!315 = !DILocation(line: 312, column: 72, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !31, line: 311, column: 28)
!317 = !DILocation(line: 313, column: 16, scope: !316)
!318 = !DILocation(line: 313, column: 25, scope: !316)
!319 = !DILocation(line: 313, column: 34, scope: !316)
!320 = !DILocation(line: 313, column: 42, scope: !316)
!321 = !DILocation(line: 312, column: 10, scope: !316)
!322 = !DILocation(line: 315, column: 4, scope: !312)
!323 = !DILocation(line: 316, column: 1, scope: !230)
!324 = distinct !DISubprogram(name: "Atomic_Dec32", scope: !113, file: !113, line: 1676, type: !220, isLocal: true, isDefinition: true, scopeLine: 1677, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!325 = !DILocalVariable(name: "var", arg: 1, scope: !324, file: !113, line: 1676, type: !222)
!326 = !DILocation(line: 1676, column: 29, scope: !324)
!327 = !DILocation(line: 1685, column: 15, scope: !324)
!328 = !DILocation(line: 1685, column: 20, scope: !324)
!329 = !DILocation(line: 1683, column: 4, scope: !324)
!330 = !{i32 150026}
!331 = !DILocation(line: 1695, column: 1, scope: !324)
!332 = distinct !DISubprogram(name: "MXUser_SignalCondVar", scope: !31, file: !31, line: 469, type: !333, isLocal: false, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !34}
!335 = !DILocalVariable(name: "condVar", arg: 1, scope: !332, file: !31, line: 469, type: !34)
!336 = !DILocation(line: 469, column: 37, scope: !332)
!337 = !DILocalVariable(name: "err", scope: !332, file: !31, line: 471, type: !87)
!338 = !DILocation(line: 471, column: 8, scope: !332)
!339 = !DILocation(line: 476, column: 31, scope: !332)
!340 = !DILocation(line: 476, column: 10, scope: !332)
!341 = !DILocation(line: 476, column: 8, scope: !332)
!342 = !DILocation(line: 478, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !332, file: !31, line: 478, column: 8)
!344 = !DILocation(line: 478, column: 12, scope: !343)
!345 = !DILocation(line: 478, column: 8, scope: !332)
!346 = !DILocation(line: 479, column: 70, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !31, line: 478, column: 18)
!348 = !DILocation(line: 480, column: 13, scope: !347)
!349 = !DILocation(line: 480, column: 22, scope: !347)
!350 = !DILocation(line: 480, column: 31, scope: !347)
!351 = !DILocation(line: 480, column: 39, scope: !347)
!352 = !DILocation(line: 479, column: 7, scope: !347)
!353 = !DILocation(line: 482, column: 1, scope: !332)
!354 = distinct !DISubprogram(name: "MXUserSignalInternal", scope: !31, file: !31, line: 338, type: !355, isLocal: true, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!355 = !DISubroutineType(types: !356)
!356 = !{!87, !34}
!357 = !DILocalVariable(name: "condVar", arg: 1, scope: !354, file: !31, line: 338, type: !34)
!358 = !DILocation(line: 338, column: 37, scope: !354)
!359 = !DILocation(line: 340, column: 32, scope: !354)
!360 = !DILocation(line: 340, column: 41, scope: !354)
!361 = !DILocation(line: 340, column: 11, scope: !354)
!362 = !DILocation(line: 340, column: 4, scope: !354)
!363 = distinct !DISubprogram(name: "MXUser_BroadcastCondVar", scope: !31, file: !31, line: 503, type: !333, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!364 = !DILocalVariable(name: "condVar", arg: 1, scope: !363, file: !31, line: 503, type: !34)
!365 = !DILocation(line: 503, column: 40, scope: !363)
!366 = !DILocalVariable(name: "err", scope: !363, file: !31, line: 505, type: !87)
!367 = !DILocation(line: 505, column: 8, scope: !363)
!368 = !DILocation(line: 510, column: 34, scope: !363)
!369 = !DILocation(line: 510, column: 10, scope: !363)
!370 = !DILocation(line: 510, column: 8, scope: !363)
!371 = !DILocation(line: 512, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !363, file: !31, line: 512, column: 8)
!373 = !DILocation(line: 512, column: 12, scope: !372)
!374 = !DILocation(line: 512, column: 8, scope: !363)
!375 = !DILocation(line: 513, column: 70, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !31, line: 512, column: 18)
!377 = !DILocation(line: 514, column: 13, scope: !376)
!378 = !DILocation(line: 514, column: 22, scope: !376)
!379 = !DILocation(line: 514, column: 31, scope: !376)
!380 = !DILocation(line: 514, column: 39, scope: !376)
!381 = !DILocation(line: 513, column: 7, scope: !376)
!382 = !DILocation(line: 516, column: 1, scope: !363)
!383 = distinct !DISubprogram(name: "MXUserBroadcastInternal", scope: !31, file: !31, line: 363, type: !355, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!384 = !DILocalVariable(name: "condVar", arg: 1, scope: !383, file: !31, line: 363, type: !34)
!385 = !DILocation(line: 363, column: 40, scope: !383)
!386 = !DILocation(line: 365, column: 35, scope: !383)
!387 = !DILocation(line: 365, column: 44, scope: !383)
!388 = !DILocation(line: 365, column: 11, scope: !383)
!389 = !DILocation(line: 365, column: 4, scope: !383)
!390 = distinct !DISubprogram(name: "MXUser_DestroyCondVar", scope: !31, file: !31, line: 538, type: !333, isLocal: false, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!391 = !DILocalVariable(name: "condVar", arg: 1, scope: !390, file: !31, line: 538, type: !34)
!392 = !DILocation(line: 538, column: 38, scope: !390)
!393 = !DILocation(line: 540, column: 8, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !31, line: 540, column: 8)
!395 = !DILocation(line: 540, column: 16, scope: !394)
!396 = !DILocation(line: 540, column: 8, scope: !390)
!397 = !DILocation(line: 543, column: 26, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !31, line: 543, column: 11)
!399 = distinct !DILexicalBlock(scope: !394, file: !31, line: 540, column: 24)
!400 = !DILocation(line: 543, column: 35, scope: !398)
!401 = !DILocation(line: 543, column: 11, scope: !398)
!402 = !DILocation(line: 543, column: 51, scope: !398)
!403 = !DILocation(line: 543, column: 11, scope: !399)
!404 = !DILocation(line: 545, column: 30, scope: !405)
!405 = distinct !DILexicalBlock(scope: !398, file: !31, line: 543, column: 57)
!406 = !DILocation(line: 545, column: 39, scope: !405)
!407 = !DILocation(line: 545, column: 48, scope: !405)
!408 = !DILocation(line: 545, column: 56, scope: !405)
!409 = !DILocation(line: 544, column: 10, scope: !405)
!410 = !DILocation(line: 548, column: 7, scope: !399)
!411 = !DILocation(line: 548, column: 16, scope: !399)
!412 = !DILocation(line: 548, column: 26, scope: !399)
!413 = !DILocation(line: 550, column: 29, scope: !399)
!414 = !DILocation(line: 550, column: 7, scope: !399)
!415 = !DILocation(line: 552, column: 7, scope: !399)
!416 = !DILocation(line: 552, column: 16, scope: !399)
!417 = !DILocation(line: 552, column: 23, scope: !399)
!418 = !DILocation(line: 553, column: 7, scope: !399)
!419 = !DILocation(line: 553, column: 16, scope: !399)
!420 = !DILocation(line: 553, column: 26, scope: !399)
!421 = !DILocation(line: 555, column: 12, scope: !399)
!422 = !DILocation(line: 555, column: 7, scope: !399)
!423 = !DILocation(line: 556, column: 4, scope: !399)
!424 = !DILocation(line: 557, column: 1, scope: !390)
!425 = distinct !DISubprogram(name: "Atomic_Read32", scope: !113, file: !113, line: 911, type: !426, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!426 = !DISubroutineType(types: !427)
!427 = !{!40, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!430 = !DILocalVariable(name: "var", arg: 1, scope: !425, file: !113, line: 911, type: !428)
!431 = !DILocation(line: 911, column: 36, scope: !425)
!432 = !DILocalVariable(name: "value", scope: !425, file: !113, line: 913, type: !40)
!433 = !DILocation(line: 913, column: 11, scope: !425)
!434 = !DILocation(line: 938, column: 14, scope: !425)
!435 = !DILocation(line: 938, column: 19, scope: !425)
!436 = !DILocation(line: 935, column: 4, scope: !425)
!437 = !{i32 144113}
!438 = !DILocation(line: 953, column: 11, scope: !425)
!439 = !DILocation(line: 953, column: 4, scope: !425)
!440 = distinct !DISubprogram(name: "MXUserDestroyInternal", scope: !31, file: !31, line: 240, type: !333, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!441 = !DILocalVariable(name: "condVar", arg: 1, scope: !440, file: !31, line: 240, type: !34)
!442 = !DILocation(line: 240, column: 38, scope: !440)
!443 = !DILocation(line: 242, column: 26, scope: !440)
!444 = !DILocation(line: 242, column: 35, scope: !440)
!445 = !DILocation(line: 242, column: 4, scope: !440)
!446 = !DILocation(line: 243, column: 1, scope: !440)
!447 = distinct !DISubprogram(name: "MXRecLockCount", scope: !4, file: !4, line: 290, type: !448, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!448 = !DISubroutineType(types: !449)
!449 = !{!87, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!452 = !DILocalVariable(name: "lock", arg: 1, scope: !447, file: !4, line: 290, type: !450)
!453 = !DILocation(line: 290, column: 33, scope: !447)
!454 = !DILocation(line: 295, column: 11, scope: !447)
!455 = !DILocation(line: 295, column: 17, scope: !447)
!456 = !DILocation(line: 295, column: 4, scope: !447)
!457 = distinct !DISubprogram(name: "MXRecLockDecCount", scope: !4, file: !4, line: 314, type: !458, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !74, !87}
!460 = !DILocalVariable(name: "lock", arg: 1, scope: !457, file: !4, line: 314, type: !74)
!461 = !DILocation(line: 314, column: 30, scope: !457)
!462 = !DILocalVariable(name: "count", arg: 2, scope: !457, file: !4, line: 315, type: !87)
!463 = !DILocation(line: 315, column: 23, scope: !457)
!464 = !DILocalVariable(name: "newCount", scope: !457, file: !4, line: 317, type: !87)
!465 = !DILocation(line: 317, column: 8, scope: !457)
!466 = !DILocation(line: 317, column: 44, scope: !457)
!467 = !DILocation(line: 317, column: 20, scope: !457)
!468 = !DILocation(line: 317, column: 26, scope: !457)
!469 = !DILocation(line: 317, column: 41, scope: !457)
!470 = !DILocation(line: 321, column: 28, scope: !471)
!471 = distinct !DILexicalBlock(scope: !457, file: !4, line: 321, column: 8)
!472 = !DILocation(line: 321, column: 37, scope: !471)
!473 = !DILocation(line: 321, column: 26, scope: !471)
!474 = !DILocation(line: 321, column: 25, scope: !471)
!475 = !DILocation(line: 321, column: 8, scope: !471)
!476 = !DILocation(line: 321, column: 8, scope: !457)
!477 = !DILocation(line: 322, column: 27, scope: !478)
!478 = distinct !DILexicalBlock(scope: !471, file: !4, line: 321, column: 48)
!479 = !DILocation(line: 322, column: 7, scope: !478)
!480 = !DILocation(line: 323, column: 4, scope: !478)
!481 = !DILocation(line: 324, column: 1, scope: !457)
!482 = distinct !DISubprogram(name: "MXRecLockIncCount", scope: !4, file: !4, line: 300, type: !458, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!483 = !DILocalVariable(name: "lock", arg: 1, scope: !482, file: !4, line: 300, type: !74)
!484 = !DILocation(line: 300, column: 30, scope: !482)
!485 = !DILocalVariable(name: "count", arg: 2, scope: !482, file: !4, line: 301, type: !87)
!486 = !DILocation(line: 301, column: 23, scope: !482)
!487 = !DILocalVariable(name: "newCount", scope: !482, file: !4, line: 303, type: !87)
!488 = !DILocation(line: 303, column: 8, scope: !482)
!489 = !DILocation(line: 303, column: 44, scope: !482)
!490 = !DILocation(line: 303, column: 20, scope: !482)
!491 = !DILocation(line: 303, column: 26, scope: !482)
!492 = !DILocation(line: 303, column: 41, scope: !482)
!493 = !DILocation(line: 307, column: 28, scope: !494)
!494 = distinct !DILexicalBlock(scope: !482, file: !4, line: 307, column: 8)
!495 = !DILocation(line: 307, column: 40, scope: !494)
!496 = !DILocation(line: 307, column: 37, scope: !494)
!497 = !DILocation(line: 307, column: 26, scope: !494)
!498 = !DILocation(line: 307, column: 25, scope: !494)
!499 = !DILocation(line: 307, column: 8, scope: !494)
!500 = !DILocation(line: 307, column: 8, scope: !482)
!501 = !DILocation(line: 308, column: 25, scope: !502)
!502 = distinct !DILexicalBlock(scope: !494, file: !4, line: 307, column: 52)
!503 = !DILocation(line: 308, column: 7, scope: !502)
!504 = !DILocation(line: 309, column: 4, scope: !502)
!505 = !DILocation(line: 310, column: 1, scope: !482)
!506 = distinct !DISubprogram(name: "MXRecLockSetNoOwner", scope: !4, file: !4, line: 227, type: !507, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !74}
!509 = !DILocalVariable(name: "lock", arg: 1, scope: !506, file: !4, line: 227, type: !74)
!510 = !DILocation(line: 227, column: 32, scope: !506)
!511 = !DILocation(line: 230, column: 12, scope: !506)
!512 = !DILocation(line: 230, column: 18, scope: !506)
!513 = !DILocation(line: 230, column: 4, scope: !506)
!514 = !DILocation(line: 231, column: 1, scope: !506)
!515 = distinct !DISubprogram(name: "MXRecLockSetOwner", scope: !4, file: !4, line: 235, type: !507, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!516 = !DILocalVariable(name: "lock", arg: 1, scope: !515, file: !4, line: 235, type: !74)
!517 = !DILocation(line: 235, column: 30, scope: !515)
!518 = !DILocation(line: 237, column: 27, scope: !515)
!519 = !DILocation(line: 237, column: 4, scope: !515)
!520 = !DILocation(line: 237, column: 10, scope: !515)
!521 = !DILocation(line: 237, column: 25, scope: !515)
!522 = !DILocation(line: 238, column: 1, scope: !515)
!523 = distinct !DISubprogram(name: "MXUserNativeThreadID", scope: !4, file: !4, line: 213, type: !524, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!524 = !DISubroutineType(types: !525)
!525 = !{!109}
!526 = !DILocation(line: 215, column: 11, scope: !523)
!527 = !DILocation(line: 215, column: 4, scope: !523)
