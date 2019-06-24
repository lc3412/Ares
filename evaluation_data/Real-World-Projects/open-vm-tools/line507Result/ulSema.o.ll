; ModuleID = './ulSema.o.i'
source_filename = "./ulSema.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MXUserHeader = type { i32, i8*, i32, %struct.anon, {}*, {}*, %struct.ListItem }
%struct.anon = type { i32 }
%struct.ListItem = type { %struct.ListItem*, %struct.ListItem* }
%struct.MXUserSemaphore = type { %struct.MXUserHeader, %struct.Atomic_uint32, %union.sem_t, %struct.Atomic_uint64 }
%struct.Atomic_uint32 = type { i32 }
%union.sem_t = type { i64, [24 x i8] }
%struct.Atomic_uint64 = type { i64 }
%struct.MXUserAcquireStats = type { %struct.MXUserAcquisitionStats, %struct.Atomic_uint64 }
%struct.MXUserAcquisitionStats = type { double, i64, i64, i64, i64, i64, i64, i64, %struct.MXUserBasicStats }
%struct.MXUserBasicStats = type { i8*, i64, i64, i64, i64, double }
%struct.MXUserHisto = type opaque
%struct.timeval = type { i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s: semaphore @ %p\0A\00", align 1
@__FUNCTION__.MXUserDumpSemaphore = private unnamed_addr constant [20 x i8] c"MXUserDumpSemaphore\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\09signature 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\09name %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\09rank 0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\09serial number %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\09reference count %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\09address of native semaphore %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Sema-%p\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s: unknown stats mode: %d!\0A\00", align 1
@__FUNCTION__.MXUser_CreateSemaphore = private unnamed_addr constant [23 x i8] c"MXUser_CreateSemaphore\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"%s: native lock initialization routine failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"%s: Attempted destroy on semaphore while in use\0A\00", align 1
@__FUNCTION__.MXUser_DestroySemaphore = private unnamed_addr constant [24 x i8] c"MXUser_DestroySemaphore\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"%s: Internal error (%d)\0A\00", align 1
@__FUNCTION__.MXUser_DownSemaphore = private unnamed_addr constant [21 x i8] c"MXUser_DownSemaphore\00", align 1
@__FUNCTION__.MXUser_TimedDownSemaphore = private unnamed_addr constant [26 x i8] c"MXUser_TimedDownSemaphore\00", align 1
@__FUNCTION__.MXUser_TryDownSemaphore = private unnamed_addr constant [24 x i8] c"MXUser_TryDownSemaphore\00", align 1
@__FUNCTION__.MXUser_UpSemaphore = private unnamed_addr constant [19 x i8] c"MXUser_UpSemaphore\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"HOT SEMAPHORE (%s); contention ratio %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @MXUserDumpSemaphore(%struct.MXUserHeader*) #0 !dbg !94 {
  %2 = alloca %struct.MXUserHeader*, align 8
  %3 = alloca %struct.MXUserSemaphore*, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !99, metadata !100), !dbg !101
  call void @llvm.dbg.declare(metadata %struct.MXUserSemaphore** %3, metadata !102, metadata !100), !dbg !103
  %4 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !104
  %5 = bitcast %struct.MXUserHeader* %4 to %struct.MXUserSemaphore*, !dbg !105
  store %struct.MXUserSemaphore* %5, %struct.MXUserSemaphore** %3, align 8, !dbg !103
  %6 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !106
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.MXUserDumpSemaphore, i32 0, i32 0), %struct.MXUserSemaphore* %6), !dbg !107
  %7 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !108
  %8 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %7, i32 0, i32 0, !dbg !109
  %9 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %8, i32 0, i32 0, !dbg !110
  %10 = load i32, i32* %9, align 8, !dbg !110
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 %10), !dbg !111
  %11 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !112
  %12 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %11, i32 0, i32 0, !dbg !113
  %13 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %12, i32 0, i32 1, !dbg !114
  %14 = load i8*, i8** %13, align 8, !dbg !114
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* %14), !dbg !115
  %15 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !116
  %16 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %15, i32 0, i32 0, !dbg !117
  %17 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %16, i32 0, i32 2, !dbg !118
  %18 = load i32, i32* %17, align 8, !dbg !118
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 %18), !dbg !119
  %19 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !120
  %20 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %19, i32 0, i32 0, !dbg !121
  %21 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %20, i32 0, i32 3, !dbg !122
  %22 = bitcast %struct.anon* %21 to i32*, !dbg !123
  %23 = load i32, i32* %22, align 4, !dbg !123
  %24 = and i32 %23, 16777215, !dbg !123
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 %24), !dbg !124
  %25 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !125
  %26 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %25, i32 0, i32 1, !dbg !126
  %27 = call i32 @Atomic_Read32(%struct.Atomic_uint32* %26), !dbg !127
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i32 %27), !dbg !128
  %28 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !130
  %29 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %28, i32 0, i32 2, !dbg !131
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), %union.sem_t* %29), !dbg !132
  ret void, !dbg !133
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @Warning(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_Read32(%struct.Atomic_uint32*) #3 !dbg !134 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  %3 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !139, metadata !100), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %3, metadata !141, metadata !100), !dbg !142
  %4 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !143
  %5 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %4, i32 0, i32 0, !dbg !144
  %6 = call i32 asm sideeffect "mov $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %5) #7, !dbg !145, !srcloc !146
  store i32 %6, i32* %3, align 4, !dbg !145
  %7 = load i32, i32* %3, align 4, !dbg !147
  ret i32 %7, !dbg !148
}

; Function Attrs: nounwind uwtable
define %struct.MXUserSemaphore* @MXUser_CreateSemaphore(i8*, i32) #0 !dbg !149 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.MXUserSemaphore*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !154, metadata !100), !dbg !155
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !156, metadata !100), !dbg !157
  call void @llvm.dbg.declare(metadata i8** %5, metadata !158, metadata !100), !dbg !159
  call void @llvm.dbg.declare(metadata %struct.MXUserSemaphore** %6, metadata !160, metadata !100), !dbg !161
  %8 = call i8* @UtilSafeCalloc0(i64 1, i64 104), !dbg !162
  %9 = bitcast i8* %8 to %struct.MXUserSemaphore*, !dbg !162
  store %struct.MXUserSemaphore* %9, %struct.MXUserSemaphore** %6, align 8, !dbg !161
  %10 = load i8*, i8** %3, align 8, !dbg !163
  %11 = icmp eq i8* %10, null, !dbg !165
  br i1 %11, label %12, label %15, !dbg !166

; <label>:12:                                     ; preds = %2
  %13 = call i8* @llvm.returnaddress(i32 0), !dbg !167
  %14 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %13), !dbg !169
  store i8* %14, i8** %5, align 8, !dbg !171
  br label %18, !dbg !172

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %3, align 8, !dbg !173
  %17 = call i8* @UtilSafeStrdup0(i8* %16), !dbg !175
  store i8* %17, i8** %5, align 8, !dbg !176
  br label %18

; <label>:18:                                     ; preds = %15, %12
  %19 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %6, align 8, !dbg !177
  %20 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %19, i32 0, i32 2, !dbg !179
  %21 = call i32 @MXUserInit(%union.sem_t* %20), !dbg !180
  %22 = icmp eq i32 %21, 0, !dbg !181
  %23 = xor i1 %22, true, !dbg !182
  %24 = xor i1 %23, true, !dbg !183
  %25 = zext i1 %24 to i32, !dbg !183
  %26 = sext i32 %25 to i64, !dbg !183
  %27 = icmp ne i64 %26, 0, !dbg !184
  br i1 %27, label %28, label %75, !dbg !185

; <label>:28:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %7, metadata !186, metadata !100), !dbg !188
  %29 = call i32 @MXUserGetSignature(i32 5), !dbg !189
  %30 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %6, align 8, !dbg !190
  %31 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %30, i32 0, i32 0, !dbg !191
  %32 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %31, i32 0, i32 0, !dbg !192
  store i32 %29, i32* %32, align 8, !dbg !193
  %33 = load i8*, i8** %5, align 8, !dbg !194
  %34 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %6, align 8, !dbg !195
  %35 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %34, i32 0, i32 0, !dbg !196
  %36 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %35, i32 0, i32 1, !dbg !197
  store i8* %33, i8** %36, align 8, !dbg !198
  %37 = load i32, i32* %4, align 4, !dbg !199
  %38 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %6, align 8, !dbg !200
  %39 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %38, i32 0, i32 0, !dbg !201
  %40 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %39, i32 0, i32 2, !dbg !202
  store i32 %37, i32* %40, align 8, !dbg !203
  %41 = call i32 @MXUserAllocSerialNumber(), !dbg !204
  %42 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %6, align 8, !dbg !205
  %43 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %42, i32 0, i32 0, !dbg !206
  %44 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %43, i32 0, i32 3, !dbg !207
  %45 = bitcast %struct.anon* %44 to i32*, !dbg !208
  %46 = load i32, i32* %45, align 4, !dbg !209
  %47 = and i32 %41, 16777215, !dbg !209
  %48 = and i32 %46, -16777216, !dbg !209
  %49 = or i32 %48, %47, !dbg !209
  store i32 %49, i32* %45, align 4, !dbg !209
  %50 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %6, align 8, !dbg !210
  %51 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %50, i32 0, i32 0, !dbg !211
  %52 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %51, i32 0, i32 4, !dbg !212
  %53 = bitcast {}** %52 to void (%struct.MXUserHeader*)**, !dbg !212
  store void (%struct.MXUserHeader*)* @MXUserDumpSemaphore, void (%struct.MXUserHeader*)** %53, align 8, !dbg !213
  %54 = call i32 @MXUserStatsMode(), !dbg !214
  store i32 %54, i32* %7, align 4, !dbg !215
  %55 = call i32 @MXUserStatsMode(), !dbg !216
  switch i32 %55, label %70 [
    i32 0, label %56
    i32 1, label %63
    i32 2, label %63
  ], !dbg !217

; <label>:56:                                     ; preds = %28
  %57 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %6, align 8, !dbg !218
  %58 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %57, i32 0, i32 3, !dbg !220
  call void @MXUserDisableStats(%struct.Atomic_uint64* %58, %struct.Atomic_uint64* null), !dbg !221
  %59 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %6, align 8, !dbg !222
  %60 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %59, i32 0, i32 0, !dbg !223
  %61 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %60, i32 0, i32 5, !dbg !224
  %62 = bitcast {}** %61 to void (%struct.MXUserHeader*)**, !dbg !224
  store void (%struct.MXUserHeader*)* null, void (%struct.MXUserHeader*)** %62, align 8, !dbg !225
  br label %72, !dbg !226

; <label>:63:                                     ; preds = %28, %28
  %64 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %6, align 8, !dbg !227
  %65 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %64, i32 0, i32 3, !dbg !228
  call void @MXUserEnableStats(%struct.Atomic_uint64* %65, %struct.Atomic_uint64* null), !dbg !229
  %66 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %6, align 8, !dbg !230
  %67 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %66, i32 0, i32 0, !dbg !231
  %68 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %67, i32 0, i32 5, !dbg !232
  %69 = bitcast {}** %68 to void (%struct.MXUserHeader*)**, !dbg !232
  store void (%struct.MXUserHeader*)* @MXUserStatsActionSema, void (%struct.MXUserHeader*)** %69, align 8, !dbg !233
  br label %72, !dbg !234

; <label>:70:                                     ; preds = %28
  %71 = load i32, i32* %7, align 4, !dbg !235
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.MXUser_CreateSemaphore, i32 0, i32 0), i32 %71) #8, !dbg !236
  unreachable, !dbg !236

; <label>:72:                                     ; preds = %63, %56
  %73 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %6, align 8, !dbg !237
  %74 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %73, i32 0, i32 0, !dbg !238
  call void @MXUserAddToList(%struct.MXUserHeader* %74), !dbg !239
  br label %76, !dbg !240

; <label>:75:                                     ; preds = %18
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.MXUser_CreateSemaphore, i32 0, i32 0)) #8, !dbg !241
  unreachable, !dbg !241

; <label>:76:                                     ; preds = %72
  %77 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %6, align 8, !dbg !243
  ret %struct.MXUserSemaphore* %77, !dbg !244
}

declare i8* @UtilSafeCalloc0(i64, i64) #2

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i8* @llvm.returnaddress(i32) #1

declare i8* @UtilSafeStrdup0(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @MXUserInit(%union.sem_t*) #0 !dbg !245 {
  %2 = alloca %union.sem_t*, align 8
  store %union.sem_t* %0, %union.sem_t** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sem_t** %2, metadata !250, metadata !100), !dbg !251
  %3 = load %union.sem_t*, %union.sem_t** %2, align 8, !dbg !252
  %4 = call i32 @sem_init(%union.sem_t* %3, i32 0, i32 0) #7, !dbg !253
  %5 = icmp eq i32 %4, -1, !dbg !254
  br i1 %5, label %6, label %9, !dbg !255

; <label>:6:                                      ; preds = %1
  %7 = call i32* @__errno_location() #1, !dbg !256
  %8 = load i32, i32* %7, align 4, !dbg !258
  br label %10, !dbg !259

; <label>:9:                                      ; preds = %1
  br label %10, !dbg !260

; <label>:10:                                     ; preds = %9, %6
  %11 = phi i32 [ %8, %6 ], [ 0, %9 ], !dbg !262
  ret i32 %11, !dbg !264
}

declare i32 @MXUserGetSignature(i32) #2

declare i32 @MXUserAllocSerialNumber() #2

declare i32 @MXUserStatsMode() #2

declare void @MXUserDisableStats(%struct.Atomic_uint64*, %struct.Atomic_uint64*) #2

declare void @MXUserEnableStats(%struct.Atomic_uint64*, %struct.Atomic_uint64*) #2

; Function Attrs: nounwind uwtable
define internal void @MXUserStatsActionSema(%struct.MXUserHeader*) #0 !dbg !265 {
  %2 = alloca %struct.MXUserHeader*, align 8
  %3 = alloca %struct.MXUserSemaphore*, align 8
  %4 = alloca %struct.MXUserAcquireStats*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca double, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !266, metadata !100), !dbg !267
  call void @llvm.dbg.declare(metadata %struct.MXUserSemaphore** %3, metadata !268, metadata !100), !dbg !269
  %8 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !270
  %9 = bitcast %struct.MXUserHeader* %8 to %struct.MXUserSemaphore*, !dbg !271
  store %struct.MXUserSemaphore* %9, %struct.MXUserSemaphore** %3, align 8, !dbg !269
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquireStats** %4, metadata !272, metadata !100), !dbg !301
  %10 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !302
  %11 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %10, i32 0, i32 3, !dbg !303
  %12 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %11), !dbg !304
  %13 = bitcast i8* %12 to %struct.MXUserAcquireStats*, !dbg !304
  store %struct.MXUserAcquireStats* %13, %struct.MXUserAcquireStats** %4, align 8, !dbg !301
  %14 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %4, align 8, !dbg !305
  %15 = icmp ne %struct.MXUserAcquireStats* %14, null, !dbg !307
  %16 = xor i1 %15, true, !dbg !308
  %17 = xor i1 %16, true, !dbg !309
  %18 = zext i1 %17 to i32, !dbg !309
  %19 = sext i32 %18 to i64, !dbg !309
  %20 = icmp ne i64 %19, 0, !dbg !310
  br i1 %20, label %21, label %54, !dbg !311

; <label>:21:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !312, metadata !100), !dbg !315
  call void @llvm.dbg.declare(metadata i8* %6, metadata !316, metadata !100), !dbg !317
  call void @llvm.dbg.declare(metadata double* %7, metadata !318, metadata !100), !dbg !319
  %22 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %4, align 8, !dbg !320
  %23 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %22, i32 0, i32 0, !dbg !321
  %24 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !322
  call void @MXUserDumpAcquisitionStats(%struct.MXUserAcquisitionStats* %23, %struct.MXUserHeader* %24), !dbg !323
  %25 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %4, align 8, !dbg !324
  %26 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %25, i32 0, i32 1, !dbg !326
  %27 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %26), !dbg !327
  %28 = icmp ne i8* %27, null, !dbg !328
  br i1 %28, label %29, label %35, !dbg !329

; <label>:29:                                     ; preds = %21
  %30 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %4, align 8, !dbg !330
  %31 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %30, i32 0, i32 1, !dbg !332
  %32 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %31), !dbg !333
  %33 = bitcast i8* %32 to %struct.MXUserHisto*, !dbg !333
  %34 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !334
  call void @MXUserHistoDump(%struct.MXUserHisto* %33, %struct.MXUserHeader* %34), !dbg !335
  br label %35, !dbg !337

; <label>:35:                                     ; preds = %29, %21
  %36 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %4, align 8, !dbg !338
  %37 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %36, i32 0, i32 0, !dbg !339
  call void @MXUserKitchen(%struct.MXUserAcquisitionStats* %37, double* %7, i8* %5, i8* %6), !dbg !340
  %38 = load i8, i8* %5, align 1, !dbg !341
  %39 = icmp ne i8 %38, 0, !dbg !341
  br i1 %39, label %40, label %53, !dbg !343

; <label>:40:                                     ; preds = %35
  %41 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !344
  %42 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %41, i32 0, i32 3, !dbg !346
  %43 = call signext i8 @MXUserForceAcquisitionHisto(%struct.Atomic_uint64* %42, i64 1000, i32 7), !dbg !347
  %44 = load i8, i8* %6, align 1, !dbg !348
  %45 = icmp ne i8 %44, 0, !dbg !348
  br i1 %45, label %46, label %52, !dbg !350

; <label>:46:                                     ; preds = %40
  %47 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !351
  %48 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %47, i32 0, i32 0, !dbg !353
  %49 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %48, i32 0, i32 1, !dbg !354
  %50 = load i8*, i8** %49, align 8, !dbg !354
  %51 = load double, double* %7, align 8, !dbg !355
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0), i8* %50, double %51), !dbg !356
  br label %52, !dbg !357

; <label>:52:                                     ; preds = %46, %40
  br label %53, !dbg !358

; <label>:53:                                     ; preds = %52, %35
  br label %54, !dbg !359

; <label>:54:                                     ; preds = %53, %1
  ret void, !dbg !360
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

declare void @MXUserAddToList(%struct.MXUserHeader*) #2

; Function Attrs: nounwind uwtable
define void @MXUser_DestroySemaphore(%struct.MXUserSemaphore*) #0 !dbg !361 {
  %2 = alloca %struct.MXUserSemaphore*, align 8
  %3 = alloca i32, align 4
  store %struct.MXUserSemaphore* %0, %struct.MXUserSemaphore** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserSemaphore** %2, metadata !364, metadata !100), !dbg !365
  %4 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !366
  %5 = icmp ne %struct.MXUserSemaphore* %4, null, !dbg !368
  %6 = xor i1 %5, true, !dbg !369
  %7 = xor i1 %6, true, !dbg !370
  %8 = zext i1 %7 to i32, !dbg !370
  %9 = sext i32 %8 to i64, !dbg !370
  %10 = icmp ne i64 %9, 0, !dbg !371
  br i1 %10, label %11, label %49, !dbg !372

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %3, metadata !373, metadata !100), !dbg !375
  %12 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !376
  %13 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %12, i32 0, i32 0, !dbg !377
  call void @MXUserValidateHeader(%struct.MXUserHeader* %13, i32 5), !dbg !378
  %14 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !379
  %15 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %14, i32 0, i32 1, !dbg !381
  %16 = call i32 @Atomic_Read32(%struct.Atomic_uint32* %15), !dbg !382
  %17 = icmp ne i32 %16, 0, !dbg !383
  br i1 %17, label %18, label %21, !dbg !384

; <label>:18:                                     ; preds = %11
  %19 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !385
  %20 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %19, i32 0, i32 0, !dbg !387
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.MXUser_DestroySemaphore, i32 0, i32 0)), !dbg !388
  br label %21, !dbg !389

; <label>:21:                                     ; preds = %18, %11
  %22 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !390
  %23 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %22, i32 0, i32 0, !dbg !391
  %24 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %23, i32 0, i32 0, !dbg !392
  store i32 0, i32* %24, align 8, !dbg !393
  %25 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !394
  %26 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %25, i32 0, i32 2, !dbg !395
  %27 = call i32 @MXUserDestroy(%union.sem_t* %26), !dbg !396
  store i32 %27, i32* %3, align 4, !dbg !397
  %28 = load i32, i32* %3, align 4, !dbg !398
  %29 = icmp ne i32 %28, 0, !dbg !400
  %30 = zext i1 %29 to i32, !dbg !400
  %31 = sext i32 %30 to i64, !dbg !401
  %32 = icmp ne i64 %31, 0, !dbg !402
  br i1 %32, label %33, label %37, !dbg !403

; <label>:33:                                     ; preds = %21
  %34 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !404
  %35 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %34, i32 0, i32 0, !dbg !406
  %36 = load i32, i32* %3, align 4, !dbg !407
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.MXUser_DestroySemaphore, i32 0, i32 0), i32 %36), !dbg !408
  br label %37, !dbg !409

; <label>:37:                                     ; preds = %33, %21
  %38 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !410
  %39 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %38, i32 0, i32 0, !dbg !411
  call void @MXUserRemoveFromList(%struct.MXUserHeader* %39), !dbg !412
  %40 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !413
  %41 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %40, i32 0, i32 0, !dbg !414
  %42 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %41, i32 0, i32 1, !dbg !415
  %43 = load i8*, i8** %42, align 8, !dbg !415
  call void @free(i8* %43) #7, !dbg !416
  %44 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !417
  %45 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %44, i32 0, i32 0, !dbg !418
  %46 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %45, i32 0, i32 1, !dbg !419
  store i8* null, i8** %46, align 8, !dbg !420
  %47 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !421
  %48 = bitcast %struct.MXUserSemaphore* %47 to i8*, !dbg !421
  call void @free(i8* %48) #7, !dbg !422
  br label %49, !dbg !423

; <label>:49:                                     ; preds = %37, %1
  ret void, !dbg !424
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserValidateHeader(%struct.MXUserHeader*, i32) #3 !dbg !425 {
  %3 = alloca %struct.MXUserHeader*, align 8
  %4 = alloca i32, align 4
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %3, metadata !429, metadata !100), !dbg !430
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !431, metadata !100), !dbg !432
  ret void, !dbg !433
}

declare void @MXUserDumpAndPanic(%struct.MXUserHeader*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @MXUserDestroy(%union.sem_t*) #0 !dbg !434 {
  %2 = alloca %union.sem_t*, align 8
  store %union.sem_t* %0, %union.sem_t** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sem_t** %2, metadata !435, metadata !100), !dbg !436
  %3 = load %union.sem_t*, %union.sem_t** %2, align 8, !dbg !437
  %4 = call i32 @sem_destroy(%union.sem_t* %3) #7, !dbg !438
  %5 = icmp eq i32 %4, -1, !dbg !439
  br i1 %5, label %6, label %9, !dbg !440

; <label>:6:                                      ; preds = %1
  %7 = call i32* @__errno_location() #1, !dbg !441
  %8 = load i32, i32* %7, align 4, !dbg !443
  br label %10, !dbg !444

; <label>:9:                                      ; preds = %1
  br label %10, !dbg !445

; <label>:10:                                     ; preds = %9, %6
  %11 = phi i32 [ %8, %6 ], [ 0, %9 ], !dbg !447
  ret i32 %11, !dbg !449
}

declare void @MXUserRemoveFromList(%struct.MXUserHeader*) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define void @MXUser_DownSemaphore(%struct.MXUserSemaphore*) #0 !dbg !450 {
  %2 = alloca %struct.MXUserSemaphore*, align 8
  %3 = alloca i32, align 4
  store %struct.MXUserSemaphore* %0, %struct.MXUserSemaphore** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserSemaphore** %2, metadata !451, metadata !100), !dbg !452
  call void @llvm.dbg.declare(metadata i32* %3, metadata !453, metadata !100), !dbg !454
  %4 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !455
  %5 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %4, i32 0, i32 0, !dbg !456
  call void @MXUserValidateHeader(%struct.MXUserHeader* %5, i32 5), !dbg !457
  %6 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !458
  %7 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %6, i32 0, i32 1, !dbg !459
  call void @Atomic_Inc32(%struct.Atomic_uint32* %7), !dbg !460
  %8 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !461
  %9 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %8, i32 0, i32 0, !dbg !462
  call void @MXUserAcquisitionTracking(%struct.MXUserHeader* %9, i8 signext 1), !dbg !463
  %10 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !464
  %11 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %10, i32 0, i32 2, !dbg !467
  %12 = call i32 @MXUserDown(%union.sem_t* %11), !dbg !468
  store i32 %12, i32* %3, align 4, !dbg !469
  %13 = load i32, i32* %3, align 4, !dbg !470
  %14 = icmp ne i32 %13, 0, !dbg !472
  %15 = zext i1 %14 to i32, !dbg !472
  %16 = sext i32 %15 to i64, !dbg !473
  %17 = icmp ne i64 %16, 0, !dbg !474
  br i1 %17, label %18, label %22, !dbg !475

; <label>:18:                                     ; preds = %1
  %19 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !476
  %20 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %19, i32 0, i32 0, !dbg !478
  %21 = load i32, i32* %3, align 4, !dbg !479
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.MXUser_DownSemaphore, i32 0, i32 0), i32 %21), !dbg !480
  br label %22, !dbg !481

; <label>:22:                                     ; preds = %18, %1
  %23 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !482
  %24 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %23, i32 0, i32 0, !dbg !483
  call void @MXUserReleaseTracking(%struct.MXUserHeader* %24), !dbg !484
  %25 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !485
  %26 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %25, i32 0, i32 1, !dbg !486
  call void @Atomic_Dec32(%struct.Atomic_uint32* %26), !dbg !487
  ret void, !dbg !488
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Inc32(%struct.Atomic_uint32*) #3 !dbg !489 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !493, metadata !100), !dbg !494
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !495
  %4 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %3, i32 0, i32 0, !dbg !496
  call void asm sideeffect "lock; incl $0", "=*m,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %4, i32* %4) #7, !dbg !497, !srcloc !498
  ret void, !dbg !499
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserAcquisitionTracking(%struct.MXUserHeader*, i8 signext) #3 !dbg !500 {
  %3 = alloca %struct.MXUserHeader*, align 8
  %4 = alloca i8, align 1
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %3, metadata !503, metadata !100), !dbg !504
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !505, metadata !100), !dbg !506
  ret void, !dbg !507
}

; Function Attrs: nounwind uwtable
define internal i32 @MXUserDown(%union.sem_t*) #0 !dbg !508 {
  %2 = alloca %union.sem_t*, align 8
  %3 = alloca i32, align 4
  store %union.sem_t* %0, %union.sem_t** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sem_t** %2, metadata !509, metadata !100), !dbg !510
  call void @llvm.dbg.declare(metadata i32* %3, metadata !511, metadata !100), !dbg !512
  br label %4, !dbg !513, !llvm.loop !514

; <label>:4:                                      ; preds = %14, %1
  %5 = load %union.sem_t*, %union.sem_t** %2, align 8, !dbg !515
  %6 = call i32 @sem_wait(%union.sem_t* %5), !dbg !517
  %7 = icmp eq i32 %6, -1, !dbg !518
  br i1 %7, label %8, label %11, !dbg !519

; <label>:8:                                      ; preds = %4
  %9 = call i32* @__errno_location() #1, !dbg !520
  %10 = load i32, i32* %9, align 4, !dbg !522
  br label %12, !dbg !523

; <label>:11:                                     ; preds = %4
  br label %12, !dbg !524

; <label>:12:                                     ; preds = %11, %8
  %13 = phi i32 [ %10, %8 ], [ 0, %11 ], !dbg !526
  store i32 %13, i32* %3, align 4, !dbg !528
  br label %14, !dbg !529

; <label>:14:                                     ; preds = %12
  %15 = load i32, i32* %3, align 4, !dbg !530
  %16 = icmp eq i32 %15, 4, !dbg !532
  br i1 %16, label %4, label %17, !dbg !533, !llvm.loop !514

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %3, align 4, !dbg !534
  ret i32 %18, !dbg !535
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserReleaseTracking(%struct.MXUserHeader*) #3 !dbg !536 {
  %2 = alloca %struct.MXUserHeader*, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !537, metadata !100), !dbg !538
  ret void, !dbg !539
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Dec32(%struct.Atomic_uint32*) #3 !dbg !540 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !541, metadata !100), !dbg !542
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !543
  %4 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %3, i32 0, i32 0, !dbg !544
  call void asm sideeffect "lock; decl $0", "=*m,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %4, i32* %4) #7, !dbg !545, !srcloc !546
  ret void, !dbg !547
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_TimedDownSemaphore(%struct.MXUserSemaphore*, i32) #0 !dbg !548 {
  %3 = alloca %struct.MXUserSemaphore*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.MXUserSemaphore* %0, %struct.MXUserSemaphore** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserSemaphore** %3, metadata !551, metadata !100), !dbg !552
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !553, metadata !100), !dbg !554
  call void @llvm.dbg.declare(metadata i32* %5, metadata !555, metadata !100), !dbg !556
  call void @llvm.dbg.declare(metadata i8* %6, metadata !557, metadata !100), !dbg !558
  store i8 0, i8* %6, align 1, !dbg !558
  %7 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !559
  %8 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %7, i32 0, i32 0, !dbg !560
  call void @MXUserValidateHeader(%struct.MXUserHeader* %8, i32 5), !dbg !561
  %9 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !562
  %10 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %9, i32 0, i32 1, !dbg !563
  call void @Atomic_Inc32(%struct.Atomic_uint32* %10), !dbg !564
  %11 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !565
  %12 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %11, i32 0, i32 0, !dbg !566
  call void @MXUserAcquisitionTracking(%struct.MXUserHeader* %12, i8 signext 1), !dbg !567
  %13 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !568
  %14 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %13, i32 0, i32 2, !dbg !571
  %15 = load i32, i32* %4, align 4, !dbg !572
  %16 = call i32 @MXUserTimedDown(%union.sem_t* %14, i32 %15, i8* %6), !dbg !573
  store i32 %16, i32* %5, align 4, !dbg !574
  %17 = load i32, i32* %5, align 4, !dbg !575
  %18 = icmp ne i32 %17, 0, !dbg !577
  %19 = zext i1 %18 to i32, !dbg !577
  %20 = sext i32 %19 to i64, !dbg !578
  %21 = icmp ne i64 %20, 0, !dbg !579
  br i1 %21, label %22, label %26, !dbg !580

; <label>:22:                                     ; preds = %2
  %23 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !581
  %24 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %23, i32 0, i32 0, !dbg !583
  %25 = load i32, i32* %5, align 4, !dbg !584
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.MXUser_TimedDownSemaphore, i32 0, i32 0), i32 %25), !dbg !585
  br label %26, !dbg !586

; <label>:26:                                     ; preds = %22, %2
  %27 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !587
  %28 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %27, i32 0, i32 0, !dbg !588
  call void @MXUserReleaseTracking(%struct.MXUserHeader* %28), !dbg !589
  %29 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %3, align 8, !dbg !590
  %30 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %29, i32 0, i32 1, !dbg !591
  call void @Atomic_Dec32(%struct.Atomic_uint32* %30), !dbg !592
  %31 = load i8, i8* %6, align 1, !dbg !593
  ret i8 %31, !dbg !594
}

; Function Attrs: nounwind uwtable
define internal i32 @MXUserTimedDown(%union.sem_t*, i32, i8*) #0 !dbg !595 {
  %4 = alloca %union.sem_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timespec, align 8
  store %union.sem_t* %0, %union.sem_t** %4, align 8
  call void @llvm.dbg.declare(metadata %union.sem_t** %4, metadata !599, metadata !100), !dbg !600
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !601, metadata !100), !dbg !602
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !603, metadata !100), !dbg !604
  call void @llvm.dbg.declare(metadata i32* %7, metadata !605, metadata !100), !dbg !606
  call void @llvm.dbg.declare(metadata i64* %8, metadata !607, metadata !100), !dbg !608
  call void @llvm.dbg.declare(metadata %struct.timeval* %9, metadata !609, metadata !100), !dbg !616
  call void @llvm.dbg.declare(metadata %struct.timespec* %10, metadata !617, metadata !100), !dbg !623
  %11 = call i32 @gettimeofday(%struct.timeval* %9, %struct.timezone* null) #7, !dbg !624
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0, !dbg !625
  %13 = load i64, i64* %12, align 8, !dbg !625
  %14 = mul i64 %13, 1000000000, !dbg !626
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1, !dbg !627
  %16 = load i64, i64* %15, align 8, !dbg !627
  %17 = mul i64 %16, 1000, !dbg !628
  %18 = add i64 %14, %17, !dbg !629
  %19 = load i32, i32* %5, align 4, !dbg !630
  %20 = zext i32 %19 to i64, !dbg !631
  %21 = mul i64 %20, 1000000, !dbg !632
  %22 = add i64 %18, %21, !dbg !633
  store i64 %22, i64* %8, align 8, !dbg !634
  %23 = load i64, i64* %8, align 8, !dbg !635
  %24 = udiv i64 %23, 1000000000, !dbg !636
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0, !dbg !637
  store i64 %24, i64* %25, align 8, !dbg !638
  %26 = load i64, i64* %8, align 8, !dbg !639
  %27 = urem i64 %26, 1000000000, !dbg !640
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1, !dbg !641
  store i64 %27, i64* %28, align 8, !dbg !642
  br label %29, !dbg !643, !llvm.loop !644

; <label>:29:                                     ; preds = %50, %3
  %30 = load %union.sem_t*, %union.sem_t** %4, align 8, !dbg !645
  %31 = call i32 @sem_timedwait(%union.sem_t* %30, %struct.timespec* %10), !dbg !647
  %32 = icmp eq i32 %31, -1, !dbg !648
  br i1 %32, label %33, label %36, !dbg !649

; <label>:33:                                     ; preds = %29
  %34 = call i32* @__errno_location() #1, !dbg !650
  %35 = load i32, i32* %34, align 4, !dbg !652
  br label %37, !dbg !653

; <label>:36:                                     ; preds = %29
  br label %37, !dbg !654

; <label>:37:                                     ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ], !dbg !656
  store i32 %38, i32* %7, align 4, !dbg !658
  %39 = load i32, i32* %7, align 4, !dbg !659
  %40 = icmp eq i32 %39, 0, !dbg !661
  br i1 %40, label %41, label %43, !dbg !662

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !663
  store i8 1, i8* %42, align 1, !dbg !665
  br label %49, !dbg !666

; <label>:43:                                     ; preds = %37
  %44 = load i8*, i8** %6, align 8, !dbg !667
  store i8 0, i8* %44, align 1, !dbg !669
  %45 = load i32, i32* %7, align 4, !dbg !670
  %46 = icmp eq i32 %45, 110, !dbg !672
  br i1 %46, label %47, label %48, !dbg !673

; <label>:47:                                     ; preds = %43
  store i32 0, i32* %7, align 4, !dbg !674
  br label %48, !dbg !676

; <label>:48:                                     ; preds = %47, %43
  br label %49

; <label>:49:                                     ; preds = %48, %41
  br label %50, !dbg !677

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* %7, align 4, !dbg !678
  %52 = icmp eq i32 %51, 4, !dbg !680
  br i1 %52, label %29, label %53, !dbg !681, !llvm.loop !644

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %7, align 4, !dbg !682
  ret i32 %54, !dbg !683
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_TryDownSemaphore(%struct.MXUserSemaphore*) #0 !dbg !684 {
  %2 = alloca %struct.MXUserSemaphore*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.MXUserSemaphore* %0, %struct.MXUserSemaphore** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserSemaphore** %2, metadata !687, metadata !100), !dbg !688
  call void @llvm.dbg.declare(metadata i32* %3, metadata !689, metadata !100), !dbg !690
  call void @llvm.dbg.declare(metadata i8* %4, metadata !691, metadata !100), !dbg !692
  store i8 0, i8* %4, align 1, !dbg !692
  %5 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !693
  %6 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %5, i32 0, i32 0, !dbg !694
  call void @MXUserValidateHeader(%struct.MXUserHeader* %6, i32 5), !dbg !695
  %7 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !696
  %8 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %7, i32 0, i32 1, !dbg !697
  call void @Atomic_Inc32(%struct.Atomic_uint32* %8), !dbg !698
  %9 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !699
  %10 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %9, i32 0, i32 2, !dbg !700
  %11 = call i32 @MXUserTryDown(%union.sem_t* %10, i8* %4), !dbg !701
  store i32 %11, i32* %3, align 4, !dbg !702
  %12 = load i32, i32* %3, align 4, !dbg !703
  %13 = icmp ne i32 %12, 0, !dbg !705
  %14 = zext i1 %13 to i32, !dbg !705
  %15 = sext i32 %14 to i64, !dbg !706
  %16 = icmp ne i64 %15, 0, !dbg !707
  br i1 %16, label %17, label %21, !dbg !708

; <label>:17:                                     ; preds = %1
  %18 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !709
  %19 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %18, i32 0, i32 0, !dbg !711
  %20 = load i32, i32* %3, align 4, !dbg !712
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.MXUser_TryDownSemaphore, i32 0, i32 0), i32 %20), !dbg !713
  br label %21, !dbg !714

; <label>:21:                                     ; preds = %17, %1
  %22 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !715
  %23 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %22, i32 0, i32 1, !dbg !716
  call void @Atomic_Dec32(%struct.Atomic_uint32* %23), !dbg !717
  %24 = load i8, i8* %4, align 1, !dbg !718
  ret i8 %24, !dbg !719
}

; Function Attrs: nounwind uwtable
define internal i32 @MXUserTryDown(%union.sem_t*, i8*) #0 !dbg !720 {
  %3 = alloca %union.sem_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %union.sem_t* %0, %union.sem_t** %3, align 8
  call void @llvm.dbg.declare(metadata %union.sem_t** %3, metadata !723, metadata !100), !dbg !724
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !725, metadata !100), !dbg !726
  call void @llvm.dbg.declare(metadata i32* %5, metadata !727, metadata !100), !dbg !728
  %6 = load %union.sem_t*, %union.sem_t** %3, align 8, !dbg !729
  %7 = call i32 @sem_trywait(%union.sem_t* %6) #7, !dbg !730
  %8 = icmp eq i32 %7, -1, !dbg !731
  br i1 %8, label %9, label %12, !dbg !732

; <label>:9:                                      ; preds = %2
  %10 = call i32* @__errno_location() #1, !dbg !733
  %11 = load i32, i32* %10, align 4, !dbg !735
  br label %13, !dbg !736

; <label>:12:                                     ; preds = %2
  br label %13, !dbg !737

; <label>:13:                                     ; preds = %12, %9
  %14 = phi i32 [ %11, %9 ], [ 0, %12 ], !dbg !739
  store i32 %14, i32* %5, align 4, !dbg !741
  %15 = load i32, i32* %5, align 4, !dbg !742
  %16 = icmp eq i32 %15, 0, !dbg !744
  br i1 %16, label %17, label %19, !dbg !745

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %4, align 8, !dbg !746
  store i8 1, i8* %18, align 1, !dbg !748
  br label %28, !dbg !749

; <label>:19:                                     ; preds = %13
  %20 = load i8*, i8** %4, align 8, !dbg !750
  store i8 0, i8* %20, align 1, !dbg !752
  %21 = load i32, i32* %5, align 4, !dbg !753
  %22 = icmp eq i32 %21, 11, !dbg !755
  br i1 %22, label %26, label %23, !dbg !756

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %5, align 4, !dbg !757
  %25 = icmp eq i32 %24, 4, !dbg !759
  br i1 %25, label %26, label %27, !dbg !760

; <label>:26:                                     ; preds = %23, %19
  store i32 0, i32* %5, align 4, !dbg !761
  br label %27, !dbg !763

; <label>:27:                                     ; preds = %26, %23
  br label %28

; <label>:28:                                     ; preds = %27, %17
  %29 = load i32, i32* %5, align 4, !dbg !764
  ret i32 %29, !dbg !765
}

; Function Attrs: nounwind uwtable
define void @MXUser_UpSemaphore(%struct.MXUserSemaphore*) #0 !dbg !766 {
  %2 = alloca %struct.MXUserSemaphore*, align 8
  %3 = alloca i32, align 4
  store %struct.MXUserSemaphore* %0, %struct.MXUserSemaphore** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserSemaphore** %2, metadata !767, metadata !100), !dbg !768
  call void @llvm.dbg.declare(metadata i32* %3, metadata !769, metadata !100), !dbg !770
  %4 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !771
  %5 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %4, i32 0, i32 0, !dbg !772
  call void @MXUserValidateHeader(%struct.MXUserHeader* %5, i32 5), !dbg !773
  %6 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !774
  %7 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %6, i32 0, i32 2, !dbg !775
  %8 = call i32 @MXUserUp(%union.sem_t* %7), !dbg !776
  store i32 %8, i32* %3, align 4, !dbg !777
  %9 = load i32, i32* %3, align 4, !dbg !778
  %10 = icmp ne i32 %9, 0, !dbg !780
  %11 = zext i1 %10 to i32, !dbg !780
  %12 = sext i32 %11 to i64, !dbg !781
  %13 = icmp ne i64 %12, 0, !dbg !782
  br i1 %13, label %14, label %18, !dbg !783

; <label>:14:                                     ; preds = %1
  %15 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %2, align 8, !dbg !784
  %16 = getelementptr inbounds %struct.MXUserSemaphore, %struct.MXUserSemaphore* %15, i32 0, i32 0, !dbg !786
  %17 = load i32, i32* %3, align 4, !dbg !787
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.MXUser_UpSemaphore, i32 0, i32 0), i32 %17), !dbg !788
  br label %18, !dbg !789

; <label>:18:                                     ; preds = %14, %1
  ret void, !dbg !790
}

; Function Attrs: nounwind uwtable
define internal i32 @MXUserUp(%union.sem_t*) #0 !dbg !791 {
  %2 = alloca %union.sem_t*, align 8
  store %union.sem_t* %0, %union.sem_t** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sem_t** %2, metadata !792, metadata !100), !dbg !793
  %3 = load %union.sem_t*, %union.sem_t** %2, align 8, !dbg !794
  %4 = call i32 @sem_post(%union.sem_t* %3) #7, !dbg !795
  %5 = icmp eq i32 %4, -1, !dbg !796
  br i1 %5, label %6, label %9, !dbg !797

; <label>:6:                                      ; preds = %1
  %7 = call i32* @__errno_location() #1, !dbg !798
  %8 = load i32, i32* %7, align 4, !dbg !800
  br label %10, !dbg !801

; <label>:9:                                      ; preds = %1
  br label %10, !dbg !802

; <label>:10:                                     ; preds = %9, %6
  %11 = phi i32 [ %8, %6 ], [ 0, %9 ], !dbg !804
  ret i32 %11, !dbg !806
}

; Function Attrs: nounwind uwtable
define %struct.MXUserSemaphore* @MXUser_CreateSingletonSemaphore(%struct.Atomic_uint64*, i8*, i32) #0 !dbg !807 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MXUserSemaphore*, align 8
  %8 = alloca %struct.MXUserSemaphore*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !811, metadata !100), !dbg !812
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !813, metadata !100), !dbg !814
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !815, metadata !100), !dbg !816
  call void @llvm.dbg.declare(metadata %struct.MXUserSemaphore** %7, metadata !817, metadata !100), !dbg !818
  %9 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !819
  %10 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %9), !dbg !820
  %11 = bitcast i8* %10 to %struct.MXUserSemaphore*, !dbg !820
  store %struct.MXUserSemaphore* %11, %struct.MXUserSemaphore** %7, align 8, !dbg !821
  %12 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %7, align 8, !dbg !822
  %13 = icmp eq %struct.MXUserSemaphore* %12, null, !dbg !824
  %14 = zext i1 %13 to i32, !dbg !824
  %15 = sext i32 %14 to i64, !dbg !825
  %16 = icmp ne i64 %15, 0, !dbg !826
  br i1 %16, label %17, label %35, !dbg !827

; <label>:17:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.MXUserSemaphore** %8, metadata !828, metadata !100), !dbg !830
  %18 = load i8*, i8** %5, align 8, !dbg !831
  %19 = load i32, i32* %6, align 4, !dbg !832
  %20 = call %struct.MXUserSemaphore* @MXUser_CreateSemaphore(i8* %18, i32 %19), !dbg !833
  store %struct.MXUserSemaphore* %20, %struct.MXUserSemaphore** %8, align 8, !dbg !830
  %21 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !834
  %22 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %8, align 8, !dbg !835
  %23 = bitcast %struct.MXUserSemaphore* %22 to i8*, !dbg !836
  %24 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %21, i8* null, i8* %23), !dbg !837
  %25 = bitcast i8* %24 to %struct.MXUserSemaphore*, !dbg !837
  store %struct.MXUserSemaphore* %25, %struct.MXUserSemaphore** %7, align 8, !dbg !838
  %26 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %7, align 8, !dbg !839
  %27 = icmp ne %struct.MXUserSemaphore* %26, null, !dbg !839
  br i1 %27, label %28, label %30, !dbg !841

; <label>:28:                                     ; preds = %17
  %29 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %8, align 8, !dbg !842
  call void @MXUser_DestroySemaphore(%struct.MXUserSemaphore* %29), !dbg !844
  br label %34, !dbg !845

; <label>:30:                                     ; preds = %17
  %31 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !846
  %32 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %31), !dbg !848
  %33 = bitcast i8* %32 to %struct.MXUserSemaphore*, !dbg !848
  store %struct.MXUserSemaphore* %33, %struct.MXUserSemaphore** %7, align 8, !dbg !849
  br label %34

; <label>:34:                                     ; preds = %30, %28
  br label %35, !dbg !850

; <label>:35:                                     ; preds = %34, %3
  %36 = load %struct.MXUserSemaphore*, %struct.MXUserSemaphore** %7, align 8, !dbg !851
  ret %struct.MXUserSemaphore* %36, !dbg !852
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #3 !dbg !853 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !858, metadata !100), !dbg !859
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !860
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !861
  %5 = inttoptr i64 %4 to i8*, !dbg !862
  ret i8* %5, !dbg !863
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64*, i8*, i8*) #3 !dbg !864 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !869, metadata !100), !dbg !870
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !871, metadata !100), !dbg !872
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !873, metadata !100), !dbg !874
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !875
  %8 = load i8*, i8** %5, align 8, !dbg !876
  %9 = ptrtoint i8* %8 to i64, !dbg !877
  %10 = load i8*, i8** %6, align 8, !dbg !878
  %11 = ptrtoint i8* %10 to i64, !dbg !879
  %12 = call i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64* %7, i64 %9, i64 %11), !dbg !880
  %13 = inttoptr i64 %12 to i8*, !dbg !881
  ret i8* %13, !dbg !882
}

; Function Attrs: nounwind
declare i32 @sem_init(%union.sem_t*, i32, i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare void @MXUserDumpAcquisitionStats(%struct.MXUserAcquisitionStats*, %struct.MXUserHeader*) #2

declare void @MXUserHistoDump(%struct.MXUserHisto*, %struct.MXUserHeader*) #2

declare void @MXUserKitchen(%struct.MXUserAcquisitionStats*, double*, i8*, i8*) #2

declare signext i8 @MXUserForceAcquisitionHisto(%struct.Atomic_uint64*, i64, i32) #2

declare void @Log(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @sem_destroy(%union.sem_t*) #5

declare i32 @sem_wait(%union.sem_t*) #2

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #5

declare i32 @sem_timedwait(%union.sem_t*, %struct.timespec*) #2

; Function Attrs: nounwind
declare i32 @sem_trywait(%union.sem_t*) #5

; Function Attrs: nounwind
declare i32 @sem_post(%union.sem_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #3 !dbg !883 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !888, metadata !100), !dbg !889
  call void @llvm.dbg.declare(metadata i64* %3, metadata !890, metadata !100), !dbg !891
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !892
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !893
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #7, !dbg !894, !srcloc !895
  store i64 %6, i64* %3, align 8, !dbg !894
  %7 = load i64, i64* %3, align 8, !dbg !896
  ret i64 %7, !dbg !897
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64*, i64, i64) #3 !dbg !898 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !902, metadata !100), !dbg !903
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !904, metadata !100), !dbg !905
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !906, metadata !100), !dbg !907
  call void @llvm.dbg.declare(metadata i64* %7, metadata !908, metadata !100), !dbg !909
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !910
  %9 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %8, i32 0, i32 0, !dbg !911
  %10 = load i64, i64* %6, align 8, !dbg !912
  %11 = load i64, i64* %5, align 8, !dbg !913
  %12 = call i64 asm sideeffect "lock; cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64 %11, i64* %9) #7, !dbg !914, !srcloc !915
  store i64 %12, i64* %7, align 8, !dbg !914
  %13 = load i64, i64* %7, align 8, !dbg !916
  ret i64 %13, !dbg !917
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!91, !92}
!llvm.ident = !{!93}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15)
!1 = !DIFile(filename: "ulSema.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line507")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 440, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "ulInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line507")
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
!15 = !{!16, !85, !82, !86, !74, !90}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserSemaphore", file: !18, line: 43, baseType: !19)
!18 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line507")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserSemaphore", file: !20, line: 62, size: 832, align: 64, elements: !21)
!20 = !DIFile(filename: "ulSema.c", directory: "/home/lichi/Desktop/open-vm-tools/line507")
!21 = !{!22, !56, !63, !75}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !19, file: !20, line: 64, baseType: !23, size: 448, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHeader", file: !4, line: 469, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserHeader", file: !4, line: 456, size: 448, align: 64, elements: !25)
!25 = !{!26, !32, !35, !37, !42, !47, !48}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !24, file: !4, line: 457, baseType: !27, size: 32, align: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !28, line: 173, baseType: !29)
!28 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line507")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 51, baseType: !31)
!30 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line507")
!31 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !24, file: !4, line: 458, baseType: !33, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !24, file: !4, line: 459, baseType: !36, size: 32, align: 32, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "MX_Rank", file: !28, line: 1167, baseType: !27)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !24, file: !4, line: 464, baseType: !38, size: 32, align: 32, offset: 160)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !24, file: !4, line: 461, size: 32, align: 32, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !38, file: !4, line: 462, baseType: !31, size: 24, align: 32, flags: DIFlagBitField, extraData: i64 0)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "badHeader", scope: !38, file: !4, line: 463, baseType: !31, size: 1, align: 32, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "dumpFunc", scope: !24, file: !4, line: 466, baseType: !43, size: 64, align: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "statsFunc", scope: !24, file: !4, line: 467, baseType: !43, size: 64, align: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !24, file: !4, line: 468, baseType: !49, size: 128, align: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "ListItem", file: !50, line: 45, baseType: !51)
!50 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/circList.h", directory: "/home/lichi/Desktop/open-vm-tools/line507")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ListItem", file: !50, line: 42, size: 128, align: 64, elements: !52)
!52 = !{!53, !55}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !51, file: !50, line: 43, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !51, file: !50, line: 44, baseType: !54, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "activeUserCount", scope: !19, file: !20, line: 65, baseType: !57, size: 32, align: 32, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !58, line: 135, baseType: !59)
!58 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line507")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !58, line: 133, size: 32, align: 32, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !59, file: !58, line: 134, baseType: !62, size: 32, align: 32)
!62 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "nativeSemaphore", scope: !19, file: !20, line: 66, baseType: !64, size: 256, align: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "NativeSemaphore", file: !20, line: 58, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !66, line: 40, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "/home/lichi/Desktop/open-vm-tools/line507")
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !66, line: 36, size: 256, align: 64, elements: !68)
!68 = !{!69, !73}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !67, file: !66, line: 38, baseType: !70, size: 256, align: 8)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 256, align: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !67, file: !66, line: 39, baseType: !74, size: 64, align: 64)
!74 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "acquireStatsMem", scope: !19, file: !20, line: 67, baseType: !76, size: 64, align: 64, offset: 768)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !58, line: 3829, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !58, line: 139, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !58, line: 137, size: 64, align: 64, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !78, file: !58, line: 138, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !28, line: 171, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !30, line: 55, baseType: !84)
!84 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !87, line: 75, baseType: !88)
!87 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line507")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !89, line: 139, baseType: !74)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line507")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !30, line: 122, baseType: !84)
!91 = !{i32 2, !"Dwarf Version", i32 4}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!94 = distinct !DISubprogram(name: "MXUserDumpSemaphore", scope: !20, file: !20, line: 412, type: !95, isLocal: false, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!98 = !{}
!99 = !DILocalVariable(name: "header", arg: 1, scope: !94, file: !20, line: 412, type: !97)
!100 = !DIExpression()
!101 = !DILocation(line: 412, column: 35, scope: !94)
!102 = !DILocalVariable(name: "sema", scope: !94, file: !20, line: 414, type: !16)
!103 = !DILocation(line: 414, column: 21, scope: !94)
!104 = !DILocation(line: 414, column: 48, scope: !94)
!105 = !DILocation(line: 414, column: 28, scope: !94)
!106 = !DILocation(line: 416, column: 50, scope: !94)
!107 = !DILocation(line: 416, column: 4, scope: !94)
!108 = !DILocation(line: 418, column: 34, scope: !94)
!109 = !DILocation(line: 418, column: 40, scope: !94)
!110 = !DILocation(line: 418, column: 47, scope: !94)
!111 = !DILocation(line: 418, column: 4, scope: !94)
!112 = !DILocation(line: 419, column: 27, scope: !94)
!113 = !DILocation(line: 419, column: 33, scope: !94)
!114 = !DILocation(line: 419, column: 40, scope: !94)
!115 = !DILocation(line: 419, column: 4, scope: !94)
!116 = !DILocation(line: 420, column: 29, scope: !94)
!117 = !DILocation(line: 420, column: 35, scope: !94)
!118 = !DILocation(line: 420, column: 42, scope: !94)
!119 = !DILocation(line: 420, column: 4, scope: !94)
!120 = !DILocation(line: 421, column: 36, scope: !94)
!121 = !DILocation(line: 421, column: 42, scope: !94)
!122 = !DILocation(line: 421, column: 49, scope: !94)
!123 = !DILocation(line: 421, column: 54, scope: !94)
!124 = !DILocation(line: 421, column: 4, scope: !94)
!125 = !DILocation(line: 423, column: 53, scope: !94)
!126 = !DILocation(line: 423, column: 59, scope: !94)
!127 = !DILocation(line: 423, column: 38, scope: !94)
!128 = !DILocation(line: 423, column: 4, scope: !129)
!129 = !DILexicalBlockFile(scope: !94, file: !20, discriminator: 1)
!130 = !DILocation(line: 424, column: 51, scope: !94)
!131 = !DILocation(line: 424, column: 57, scope: !94)
!132 = !DILocation(line: 424, column: 4, scope: !94)
!133 = !DILocation(line: 425, column: 1, scope: !94)
!134 = distinct !DISubprogram(name: "Atomic_Read32", scope: !58, file: !58, line: 911, type: !135, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!135 = !DISubroutineType(types: !136)
!136 = !{!27, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!139 = !DILocalVariable(name: "var", arg: 1, scope: !134, file: !58, line: 911, type: !137)
!140 = !DILocation(line: 911, column: 36, scope: !134)
!141 = !DILocalVariable(name: "value", scope: !134, file: !58, line: 913, type: !27)
!142 = !DILocation(line: 913, column: 11, scope: !134)
!143 = !DILocation(line: 938, column: 14, scope: !134)
!144 = !DILocation(line: 938, column: 19, scope: !134)
!145 = !DILocation(line: 935, column: 4, scope: !134)
!146 = !{i32 128478}
!147 = !DILocation(line: 953, column: 11, scope: !134)
!148 = !DILocation(line: 953, column: 4, scope: !134)
!149 = distinct !DISubprogram(name: "MXUser_CreateSemaphore", scope: !20, file: !20, line: 449, type: !150, isLocal: false, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!150 = !DISubroutineType(types: !151)
!151 = !{!16, !152, !36}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!154 = !DILocalVariable(name: "userName", arg: 1, scope: !149, file: !20, line: 449, type: !152)
!155 = !DILocation(line: 449, column: 36, scope: !149)
!156 = !DILocalVariable(name: "rank", arg: 2, scope: !149, file: !20, line: 450, type: !36)
!157 = !DILocation(line: 450, column: 32, scope: !149)
!158 = !DILocalVariable(name: "properName", scope: !149, file: !20, line: 452, type: !33)
!159 = !DILocation(line: 452, column: 10, scope: !149)
!160 = !DILocalVariable(name: "sema", scope: !149, file: !20, line: 453, type: !16)
!161 = !DILocation(line: 453, column: 21, scope: !149)
!162 = !DILocation(line: 453, column: 28, scope: !149)
!163 = !DILocation(line: 455, column: 8, scope: !164)
!164 = distinct !DILexicalBlock(scope: !149, file: !20, line: 455, column: 8)
!165 = !DILocation(line: 455, column: 17, scope: !164)
!166 = !DILocation(line: 455, column: 8, scope: !149)
!167 = !DILocation(line: 456, column: 53, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !20, line: 455, column: 25)
!169 = !DILocation(line: 456, column: 20, scope: !170)
!170 = !DILexicalBlockFile(scope: !168, file: !20, discriminator: 1)
!171 = !DILocation(line: 456, column: 18, scope: !168)
!172 = !DILocation(line: 457, column: 4, scope: !168)
!173 = !DILocation(line: 458, column: 37, scope: !174)
!174 = distinct !DILexicalBlock(scope: !164, file: !20, line: 457, column: 11)
!175 = !DILocation(line: 458, column: 20, scope: !174)
!176 = !DILocation(line: 458, column: 18, scope: !174)
!177 = !DILocation(line: 461, column: 40, scope: !178)
!178 = distinct !DILexicalBlock(scope: !149, file: !20, line: 461, column: 8)
!179 = !DILocation(line: 461, column: 46, scope: !178)
!180 = !DILocation(line: 461, column: 28, scope: !178)
!181 = !DILocation(line: 461, column: 63, scope: !178)
!182 = !DILocation(line: 461, column: 26, scope: !178)
!183 = !DILocation(line: 461, column: 25, scope: !178)
!184 = !DILocation(line: 461, column: 8, scope: !178)
!185 = !DILocation(line: 461, column: 8, scope: !149)
!186 = !DILocalVariable(name: "statsMode", scope: !187, file: !20, line: 462, type: !27)
!187 = distinct !DILexicalBlock(scope: !178, file: !20, line: 461, column: 74)
!188 = !DILocation(line: 462, column: 14, scope: !187)
!189 = !DILocation(line: 464, column: 32, scope: !187)
!190 = !DILocation(line: 464, column: 7, scope: !187)
!191 = !DILocation(line: 464, column: 13, scope: !187)
!192 = !DILocation(line: 464, column: 20, scope: !187)
!193 = !DILocation(line: 464, column: 30, scope: !187)
!194 = !DILocation(line: 465, column: 27, scope: !187)
!195 = !DILocation(line: 465, column: 7, scope: !187)
!196 = !DILocation(line: 465, column: 13, scope: !187)
!197 = !DILocation(line: 465, column: 20, scope: !187)
!198 = !DILocation(line: 465, column: 25, scope: !187)
!199 = !DILocation(line: 466, column: 27, scope: !187)
!200 = !DILocation(line: 466, column: 7, scope: !187)
!201 = !DILocation(line: 466, column: 13, scope: !187)
!202 = !DILocation(line: 466, column: 20, scope: !187)
!203 = !DILocation(line: 466, column: 25, scope: !187)
!204 = !DILocation(line: 467, column: 40, scope: !187)
!205 = !DILocation(line: 467, column: 7, scope: !187)
!206 = !DILocation(line: 467, column: 13, scope: !187)
!207 = !DILocation(line: 467, column: 20, scope: !187)
!208 = !DILocation(line: 467, column: 25, scope: !187)
!209 = !DILocation(line: 467, column: 38, scope: !187)
!210 = !DILocation(line: 468, column: 7, scope: !187)
!211 = !DILocation(line: 468, column: 13, scope: !187)
!212 = !DILocation(line: 468, column: 20, scope: !187)
!213 = !DILocation(line: 468, column: 29, scope: !187)
!214 = !DILocation(line: 470, column: 19, scope: !187)
!215 = !DILocation(line: 470, column: 17, scope: !187)
!216 = !DILocation(line: 472, column: 15, scope: !187)
!217 = !DILocation(line: 472, column: 7, scope: !187)
!218 = !DILocation(line: 474, column: 30, scope: !219)
!219 = distinct !DILexicalBlock(scope: !187, file: !20, line: 472, column: 34)
!220 = !DILocation(line: 474, column: 36, scope: !219)
!221 = !DILocation(line: 474, column: 10, scope: !219)
!222 = !DILocation(line: 475, column: 10, scope: !219)
!223 = !DILocation(line: 475, column: 16, scope: !219)
!224 = !DILocation(line: 475, column: 23, scope: !219)
!225 = !DILocation(line: 475, column: 33, scope: !219)
!226 = !DILocation(line: 476, column: 10, scope: !219)
!227 = !DILocation(line: 480, column: 29, scope: !219)
!228 = !DILocation(line: 480, column: 35, scope: !219)
!229 = !DILocation(line: 480, column: 10, scope: !219)
!230 = !DILocation(line: 481, column: 10, scope: !219)
!231 = !DILocation(line: 481, column: 16, scope: !219)
!232 = !DILocation(line: 481, column: 23, scope: !219)
!233 = !DILocation(line: 481, column: 33, scope: !219)
!234 = !DILocation(line: 482, column: 10, scope: !219)
!235 = !DILocation(line: 485, column: 63, scope: !219)
!236 = !DILocation(line: 485, column: 10, scope: !219)
!237 = !DILocation(line: 488, column: 24, scope: !187)
!238 = !DILocation(line: 488, column: 30, scope: !187)
!239 = !DILocation(line: 488, column: 7, scope: !187)
!240 = !DILocation(line: 489, column: 4, scope: !187)
!241 = !DILocation(line: 490, column: 7, scope: !242)
!242 = distinct !DILexicalBlock(scope: !178, file: !20, line: 489, column: 11)
!243 = !DILocation(line: 493, column: 11, scope: !149)
!244 = !DILocation(line: 493, column: 4, scope: !149)
!245 = distinct !DISubprogram(name: "MXUserInit", scope: !20, file: !20, line: 237, type: !246, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !249}
!248 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!250 = !DILocalVariable(name: "sema", arg: 1, scope: !245, file: !20, line: 237, type: !249)
!251 = !DILocation(line: 237, column: 29, scope: !245)
!252 = !DILocation(line: 239, column: 21, scope: !245)
!253 = !DILocation(line: 239, column: 12, scope: !245)
!254 = !DILocation(line: 239, column: 33, scope: !245)
!255 = !DILocation(line: 239, column: 11, scope: !245)
!256 = !DILocation(line: 239, column: 43, scope: !257)
!257 = !DILexicalBlockFile(scope: !245, file: !20, discriminator: 1)
!258 = !DILocation(line: 239, column: 42, scope: !257)
!259 = !DILocation(line: 239, column: 11, scope: !257)
!260 = !DILocation(line: 239, column: 11, scope: !261)
!261 = !DILexicalBlockFile(scope: !245, file: !20, discriminator: 2)
!262 = !DILocation(line: 239, column: 11, scope: !263)
!263 = !DILexicalBlockFile(scope: !245, file: !20, discriminator: 3)
!264 = !DILocation(line: 239, column: 4, scope: !263)
!265 = distinct !DISubprogram(name: "MXUserStatsActionSema", scope: !20, file: !20, line: 355, type: !95, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!266 = !DILocalVariable(name: "header", arg: 1, scope: !265, file: !20, line: 355, type: !97)
!267 = !DILocation(line: 355, column: 37, scope: !265)
!268 = !DILocalVariable(name: "sema", scope: !265, file: !20, line: 357, type: !16)
!269 = !DILocation(line: 357, column: 21, scope: !265)
!270 = !DILocation(line: 357, column: 48, scope: !265)
!271 = !DILocation(line: 357, column: 28, scope: !265)
!272 = !DILocalVariable(name: "acquireStats", scope: !265, file: !20, line: 358, type: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserAcquireStats", file: !4, line: 562, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 558, size: 960, align: 64, elements: !276)
!276 = !{!277, !300}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !275, file: !4, line: 560, baseType: !278, size: 896, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserAcquisitionStats", file: !4, line: 552, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 541, size: 896, align: 64, elements: !280)
!280 = !{!281, !283, !284, !285, !286, !287, !288, !289, !290}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "contentionRatioFloor", scope: !279, file: !4, line: 542, baseType: !282, size: 64, align: 64)
!282 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "contentionCountFloor", scope: !279, file: !4, line: 543, baseType: !82, size: 64, align: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "contentionDurationFloor", scope: !279, file: !4, line: 544, baseType: !82, size: 64, align: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "numAttempts", scope: !279, file: !4, line: 545, baseType: !82, size: 64, align: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "numSuccesses", scope: !279, file: !4, line: 546, baseType: !82, size: 64, align: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "numSuccessesContended", scope: !279, file: !4, line: 547, baseType: !82, size: 64, align: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "successContentionTime", scope: !279, file: !4, line: 548, baseType: !82, size: 64, align: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "totalContentionTime", scope: !279, file: !4, line: 549, baseType: !82, size: 64, align: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "basicStats", scope: !279, file: !4, line: 551, baseType: !291, size: 384, align: 64, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserBasicStats", file: !4, line: 539, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 532, size: 384, align: 64, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "typeName", scope: !292, file: !4, line: 533, baseType: !33, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "numSamples", scope: !292, file: !4, line: 534, baseType: !82, size: 64, align: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "minTime", scope: !292, file: !4, line: 535, baseType: !82, size: 64, align: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "maxTime", scope: !292, file: !4, line: 536, baseType: !82, size: 64, align: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "timeSum", scope: !292, file: !4, line: 537, baseType: !82, size: 64, align: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "timeSquaredSum", scope: !292, file: !4, line: 538, baseType: !282, size: 64, align: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "histo", scope: !275, file: !4, line: 561, baseType: !76, size: 64, align: 64, offset: 896)
!301 = !DILocation(line: 358, column: 24, scope: !265)
!302 = !DILocation(line: 358, column: 55, scope: !265)
!303 = !DILocation(line: 358, column: 61, scope: !265)
!304 = !DILocation(line: 358, column: 39, scope: !265)
!305 = !DILocation(line: 360, column: 28, scope: !306)
!306 = distinct !DILexicalBlock(scope: !265, file: !20, line: 360, column: 8)
!307 = !DILocation(line: 360, column: 41, scope: !306)
!308 = !DILocation(line: 360, column: 26, scope: !306)
!309 = !DILocation(line: 360, column: 25, scope: !306)
!310 = !DILocation(line: 360, column: 8, scope: !306)
!311 = !DILocation(line: 360, column: 8, scope: !265)
!312 = !DILocalVariable(name: "isHot", scope: !313, file: !20, line: 361, type: !314)
!313 = distinct !DILexicalBlock(scope: !306, file: !20, line: 360, column: 14)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !28, line: 230, baseType: !34)
!315 = !DILocation(line: 361, column: 12, scope: !313)
!316 = !DILocalVariable(name: "doLog", scope: !313, file: !20, line: 362, type: !314)
!317 = !DILocation(line: 362, column: 12, scope: !313)
!318 = !DILocalVariable(name: "contentionRatio", scope: !313, file: !20, line: 363, type: !282)
!319 = !DILocation(line: 363, column: 14, scope: !313)
!320 = !DILocation(line: 369, column: 35, scope: !313)
!321 = !DILocation(line: 369, column: 49, scope: !313)
!322 = !DILocation(line: 369, column: 55, scope: !313)
!323 = !DILocation(line: 369, column: 7, scope: !313)
!324 = !DILocation(line: 371, column: 27, scope: !325)
!325 = distinct !DILexicalBlock(scope: !313, file: !20, line: 371, column: 11)
!326 = !DILocation(line: 371, column: 41, scope: !325)
!327 = !DILocation(line: 371, column: 11, scope: !325)
!328 = !DILocation(line: 371, column: 48, scope: !325)
!329 = !DILocation(line: 371, column: 11, scope: !313)
!330 = !DILocation(line: 372, column: 42, scope: !331)
!331 = distinct !DILexicalBlock(scope: !325, file: !20, line: 371, column: 56)
!332 = !DILocation(line: 372, column: 56, scope: !331)
!333 = !DILocation(line: 372, column: 26, scope: !331)
!334 = !DILocation(line: 372, column: 64, scope: !331)
!335 = !DILocation(line: 372, column: 10, scope: !336)
!336 = !DILexicalBlockFile(scope: !331, file: !20, discriminator: 1)
!337 = !DILocation(line: 373, column: 7, scope: !331)
!338 = !DILocation(line: 379, column: 22, scope: !313)
!339 = !DILocation(line: 379, column: 36, scope: !313)
!340 = !DILocation(line: 379, column: 7, scope: !313)
!341 = !DILocation(line: 381, column: 11, scope: !342)
!342 = distinct !DILexicalBlock(scope: !313, file: !20, line: 381, column: 11)
!343 = !DILocation(line: 381, column: 11, scope: !313)
!344 = !DILocation(line: 382, column: 39, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !20, line: 381, column: 18)
!346 = !DILocation(line: 382, column: 45, scope: !345)
!347 = !DILocation(line: 382, column: 10, scope: !345)
!348 = !DILocation(line: 386, column: 14, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !20, line: 386, column: 14)
!350 = !DILocation(line: 386, column: 14, scope: !345)
!351 = !DILocation(line: 388, column: 17, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !20, line: 386, column: 21)
!353 = !DILocation(line: 388, column: 23, scope: !352)
!354 = !DILocation(line: 388, column: 30, scope: !352)
!355 = !DILocation(line: 388, column: 36, scope: !352)
!356 = !DILocation(line: 387, column: 13, scope: !352)
!357 = !DILocation(line: 389, column: 10, scope: !352)
!358 = !DILocation(line: 390, column: 7, scope: !345)
!359 = !DILocation(line: 391, column: 4, scope: !313)
!360 = !DILocation(line: 392, column: 1, scope: !265)
!361 = distinct !DISubprogram(name: "MXUser_DestroySemaphore", scope: !20, file: !20, line: 514, type: !362, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !16}
!364 = !DILocalVariable(name: "sema", arg: 1, scope: !361, file: !20, line: 514, type: !16)
!365 = !DILocation(line: 514, column: 42, scope: !361)
!366 = !DILocation(line: 516, column: 28, scope: !367)
!367 = distinct !DILexicalBlock(scope: !361, file: !20, line: 516, column: 8)
!368 = !DILocation(line: 516, column: 33, scope: !367)
!369 = !DILocation(line: 516, column: 26, scope: !367)
!370 = !DILocation(line: 516, column: 25, scope: !367)
!371 = !DILocation(line: 516, column: 8, scope: !367)
!372 = !DILocation(line: 516, column: 8, scope: !361)
!373 = !DILocalVariable(name: "err", scope: !374, file: !20, line: 517, type: !248)
!374 = distinct !DILexicalBlock(scope: !367, file: !20, line: 516, column: 14)
!375 = !DILocation(line: 517, column: 11, scope: !374)
!376 = !DILocation(line: 519, column: 29, scope: !374)
!377 = !DILocation(line: 519, column: 35, scope: !374)
!378 = !DILocation(line: 519, column: 7, scope: !374)
!379 = !DILocation(line: 521, column: 26, scope: !380)
!380 = distinct !DILexicalBlock(scope: !374, file: !20, line: 521, column: 11)
!381 = !DILocation(line: 521, column: 32, scope: !380)
!382 = !DILocation(line: 521, column: 11, scope: !380)
!383 = !DILocation(line: 521, column: 49, scope: !380)
!384 = !DILocation(line: 521, column: 11, scope: !374)
!385 = !DILocation(line: 522, column: 30, scope: !386)
!386 = distinct !DILexicalBlock(scope: !380, file: !20, line: 521, column: 55)
!387 = !DILocation(line: 522, column: 36, scope: !386)
!388 = !DILocation(line: 522, column: 10, scope: !386)
!389 = !DILocation(line: 525, column: 7, scope: !386)
!390 = !DILocation(line: 527, column: 7, scope: !374)
!391 = !DILocation(line: 527, column: 13, scope: !374)
!392 = !DILocation(line: 527, column: 20, scope: !374)
!393 = !DILocation(line: 527, column: 30, scope: !374)
!394 = !DILocation(line: 529, column: 28, scope: !374)
!395 = !DILocation(line: 529, column: 34, scope: !374)
!396 = !DILocation(line: 529, column: 13, scope: !374)
!397 = !DILocation(line: 529, column: 11, scope: !374)
!398 = !DILocation(line: 531, column: 29, scope: !399)
!399 = distinct !DILexicalBlock(scope: !374, file: !20, line: 531, column: 11)
!400 = !DILocation(line: 531, column: 33, scope: !399)
!401 = !DILocation(line: 531, column: 28, scope: !399)
!402 = !DILocation(line: 531, column: 11, scope: !399)
!403 = !DILocation(line: 531, column: 11, scope: !374)
!404 = !DILocation(line: 532, column: 30, scope: !405)
!405 = distinct !DILexicalBlock(scope: !399, file: !20, line: 531, column: 44)
!406 = !DILocation(line: 532, column: 36, scope: !405)
!407 = !DILocation(line: 533, column: 43, scope: !405)
!408 = !DILocation(line: 532, column: 10, scope: !405)
!409 = !DILocation(line: 534, column: 7, scope: !405)
!410 = !DILocation(line: 536, column: 29, scope: !374)
!411 = !DILocation(line: 536, column: 35, scope: !374)
!412 = !DILocation(line: 536, column: 7, scope: !374)
!413 = !DILocation(line: 551, column: 12, scope: !374)
!414 = !DILocation(line: 551, column: 18, scope: !374)
!415 = !DILocation(line: 551, column: 25, scope: !374)
!416 = !DILocation(line: 551, column: 7, scope: !374)
!417 = !DILocation(line: 552, column: 7, scope: !374)
!418 = !DILocation(line: 552, column: 13, scope: !374)
!419 = !DILocation(line: 552, column: 20, scope: !374)
!420 = !DILocation(line: 552, column: 25, scope: !374)
!421 = !DILocation(line: 553, column: 12, scope: !374)
!422 = !DILocation(line: 553, column: 7, scope: !374)
!423 = !DILocation(line: 554, column: 4, scope: !374)
!424 = !DILocation(line: 555, column: 1, scope: !361)
!425 = distinct !DISubprogram(name: "MXUserValidateHeader", scope: !4, file: !4, line: 507, type: !426, isLocal: true, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !97, !428}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserObjectType", file: !4, line: 450, baseType: !3)
!429 = !DILocalVariable(name: "header", arg: 1, scope: !425, file: !4, line: 507, type: !97)
!430 = !DILocation(line: 507, column: 36, scope: !425)
!431 = !DILocalVariable(name: "objectType", arg: 2, scope: !425, file: !4, line: 508, type: !428)
!432 = !DILocation(line: 508, column: 39, scope: !425)
!433 = !DILocation(line: 510, column: 4, scope: !425)
!434 = distinct !DISubprogram(name: "MXUserDestroy", scope: !20, file: !20, line: 243, type: !246, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!435 = !DILocalVariable(name: "sema", arg: 1, scope: !434, file: !20, line: 243, type: !249)
!436 = !DILocation(line: 243, column: 32, scope: !434)
!437 = !DILocation(line: 245, column: 24, scope: !434)
!438 = !DILocation(line: 245, column: 12, scope: !434)
!439 = !DILocation(line: 245, column: 30, scope: !434)
!440 = !DILocation(line: 245, column: 11, scope: !434)
!441 = !DILocation(line: 245, column: 40, scope: !442)
!442 = !DILexicalBlockFile(scope: !434, file: !20, discriminator: 1)
!443 = !DILocation(line: 245, column: 39, scope: !442)
!444 = !DILocation(line: 245, column: 11, scope: !442)
!445 = !DILocation(line: 245, column: 11, scope: !446)
!446 = !DILexicalBlockFile(scope: !434, file: !20, discriminator: 2)
!447 = !DILocation(line: 245, column: 11, scope: !448)
!448 = !DILexicalBlockFile(scope: !434, file: !20, discriminator: 3)
!449 = !DILocation(line: 245, column: 4, scope: !448)
!450 = distinct !DISubprogram(name: "MXUser_DownSemaphore", scope: !20, file: !20, line: 577, type: !362, isLocal: false, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!451 = !DILocalVariable(name: "sema", arg: 1, scope: !450, file: !20, line: 577, type: !16)
!452 = !DILocation(line: 577, column: 39, scope: !450)
!453 = !DILocalVariable(name: "err", scope: !450, file: !20, line: 579, type: !248)
!454 = !DILocation(line: 579, column: 8, scope: !450)
!455 = !DILocation(line: 582, column: 26, scope: !450)
!456 = !DILocation(line: 582, column: 32, scope: !450)
!457 = !DILocation(line: 582, column: 4, scope: !450)
!458 = !DILocation(line: 584, column: 18, scope: !450)
!459 = !DILocation(line: 584, column: 24, scope: !450)
!460 = !DILocation(line: 584, column: 4, scope: !450)
!461 = !DILocation(line: 586, column: 31, scope: !450)
!462 = !DILocation(line: 586, column: 37, scope: !450)
!463 = !DILocation(line: 586, column: 4, scope: !450)
!464 = !DILocation(line: 621, column: 25, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !20, line: 620, column: 11)
!466 = distinct !DILexicalBlock(scope: !450, file: !20, line: 588, column: 8)
!467 = !DILocation(line: 621, column: 31, scope: !465)
!468 = !DILocation(line: 621, column: 13, scope: !465)
!469 = !DILocation(line: 621, column: 11, scope: !465)
!470 = !DILocation(line: 624, column: 26, scope: !471)
!471 = distinct !DILexicalBlock(scope: !450, file: !20, line: 624, column: 8)
!472 = !DILocation(line: 624, column: 30, scope: !471)
!473 = !DILocation(line: 624, column: 25, scope: !471)
!474 = !DILocation(line: 624, column: 8, scope: !471)
!475 = !DILocation(line: 624, column: 8, scope: !450)
!476 = !DILocation(line: 625, column: 27, scope: !477)
!477 = distinct !DILexicalBlock(scope: !471, file: !20, line: 624, column: 41)
!478 = !DILocation(line: 625, column: 33, scope: !477)
!479 = !DILocation(line: 626, column: 40, scope: !477)
!480 = !DILocation(line: 625, column: 7, scope: !477)
!481 = !DILocation(line: 627, column: 4, scope: !477)
!482 = !DILocation(line: 629, column: 27, scope: !450)
!483 = !DILocation(line: 629, column: 33, scope: !450)
!484 = !DILocation(line: 629, column: 4, scope: !450)
!485 = !DILocation(line: 631, column: 18, scope: !450)
!486 = !DILocation(line: 631, column: 24, scope: !450)
!487 = !DILocation(line: 631, column: 4, scope: !450)
!488 = !DILocation(line: 632, column: 1, scope: !450)
!489 = distinct !DISubprogram(name: "Atomic_Inc32", scope: !58, file: !58, line: 1636, type: !490, isLocal: true, isDefinition: true, scopeLine: 1637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!493 = !DILocalVariable(name: "var", arg: 1, scope: !489, file: !58, line: 1636, type: !492)
!494 = !DILocation(line: 1636, column: 29, scope: !489)
!495 = !DILocation(line: 1645, column: 15, scope: !489)
!496 = !DILocation(line: 1645, column: 20, scope: !489)
!497 = !DILocation(line: 1643, column: 4, scope: !489)
!498 = !{i32 134101}
!499 = !DILocation(line: 1655, column: 1, scope: !489)
!500 = distinct !DISubprogram(name: "MXUserAcquisitionTracking", scope: !4, file: !4, line: 494, type: !501, isLocal: true, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !97, !314}
!503 = !DILocalVariable(name: "header", arg: 1, scope: !500, file: !4, line: 494, type: !97)
!504 = !DILocation(line: 494, column: 41, scope: !500)
!505 = !DILocalVariable(name: "checkRank", arg: 2, scope: !500, file: !4, line: 495, type: !314)
!506 = !DILocation(line: 495, column: 32, scope: !500)
!507 = !DILocation(line: 497, column: 4, scope: !500)
!508 = distinct !DISubprogram(name: "MXUserDown", scope: !20, file: !20, line: 249, type: !246, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!509 = !DILocalVariable(name: "sema", arg: 1, scope: !508, file: !20, line: 249, type: !249)
!510 = !DILocation(line: 249, column: 29, scope: !508)
!511 = !DILocalVariable(name: "err", scope: !508, file: !20, line: 251, type: !248)
!512 = !DILocation(line: 251, column: 8, scope: !508)
!513 = !DILocation(line: 254, column: 4, scope: !508)
!514 = distinct !{!514, !513}
!515 = !DILocation(line: 255, column: 23, scope: !516)
!516 = distinct !DILexicalBlock(scope: !508, file: !20, line: 254, column: 7)
!517 = !DILocation(line: 255, column: 14, scope: !516)
!518 = !DILocation(line: 255, column: 29, scope: !516)
!519 = !DILocation(line: 255, column: 13, scope: !516)
!520 = !DILocation(line: 255, column: 39, scope: !521)
!521 = !DILexicalBlockFile(scope: !516, file: !20, discriminator: 1)
!522 = !DILocation(line: 255, column: 38, scope: !521)
!523 = !DILocation(line: 255, column: 13, scope: !521)
!524 = !DILocation(line: 255, column: 13, scope: !525)
!525 = !DILexicalBlockFile(scope: !516, file: !20, discriminator: 2)
!526 = !DILocation(line: 255, column: 13, scope: !527)
!527 = !DILexicalBlockFile(scope: !516, file: !20, discriminator: 3)
!528 = !DILocation(line: 255, column: 11, scope: !527)
!529 = !DILocation(line: 256, column: 4, scope: !516)
!530 = !DILocation(line: 256, column: 13, scope: !531)
!531 = !DILexicalBlockFile(scope: !508, file: !20, discriminator: 1)
!532 = !DILocation(line: 256, column: 17, scope: !531)
!533 = !DILocation(line: 256, column: 4, scope: !531)
!534 = !DILocation(line: 258, column: 11, scope: !508)
!535 = !DILocation(line: 258, column: 4, scope: !508)
!536 = distinct !DISubprogram(name: "MXUserReleaseTracking", scope: !4, file: !4, line: 501, type: !95, isLocal: true, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!537 = !DILocalVariable(name: "header", arg: 1, scope: !536, file: !4, line: 501, type: !97)
!538 = !DILocation(line: 501, column: 37, scope: !536)
!539 = !DILocation(line: 503, column: 4, scope: !536)
!540 = distinct !DISubprogram(name: "Atomic_Dec32", scope: !58, file: !58, line: 1676, type: !490, isLocal: true, isDefinition: true, scopeLine: 1677, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!541 = !DILocalVariable(name: "var", arg: 1, scope: !540, file: !58, line: 1676, type: !492)
!542 = !DILocation(line: 1676, column: 29, scope: !540)
!543 = !DILocation(line: 1685, column: 15, scope: !540)
!544 = !DILocation(line: 1685, column: 20, scope: !540)
!545 = !DILocation(line: 1683, column: 4, scope: !540)
!546 = !{i32 134391}
!547 = !DILocation(line: 1695, column: 1, scope: !540)
!548 = distinct !DISubprogram(name: "MXUser_TimedDownSemaphore", scope: !20, file: !20, line: 655, type: !549, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!549 = !DISubroutineType(types: !550)
!550 = !{!314, !16, !27}
!551 = !DILocalVariable(name: "sema", arg: 1, scope: !548, file: !20, line: 655, type: !16)
!552 = !DILocation(line: 655, column: 44, scope: !548)
!553 = !DILocalVariable(name: "waitTimeMsec", arg: 2, scope: !548, file: !20, line: 656, type: !27)
!554 = !DILocation(line: 656, column: 34, scope: !548)
!555 = !DILocalVariable(name: "err", scope: !548, file: !20, line: 658, type: !248)
!556 = !DILocation(line: 658, column: 8, scope: !548)
!557 = !DILocalVariable(name: "downOccurred", scope: !548, file: !20, line: 659, type: !314)
!558 = !DILocation(line: 659, column: 9, scope: !548)
!559 = !DILocation(line: 662, column: 26, scope: !548)
!560 = !DILocation(line: 662, column: 32, scope: !548)
!561 = !DILocation(line: 662, column: 4, scope: !548)
!562 = !DILocation(line: 664, column: 18, scope: !548)
!563 = !DILocation(line: 664, column: 24, scope: !548)
!564 = !DILocation(line: 664, column: 4, scope: !548)
!565 = !DILocation(line: 666, column: 31, scope: !548)
!566 = !DILocation(line: 666, column: 37, scope: !548)
!567 = !DILocation(line: 666, column: 4, scope: !548)
!568 = !DILocation(line: 705, column: 30, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !20, line: 704, column: 11)
!570 = distinct !DILexicalBlock(scope: !548, file: !20, line: 668, column: 8)
!571 = !DILocation(line: 705, column: 36, scope: !569)
!572 = !DILocation(line: 705, column: 53, scope: !569)
!573 = !DILocation(line: 705, column: 13, scope: !569)
!574 = !DILocation(line: 705, column: 11, scope: !569)
!575 = !DILocation(line: 709, column: 26, scope: !576)
!576 = distinct !DILexicalBlock(scope: !548, file: !20, line: 709, column: 8)
!577 = !DILocation(line: 709, column: 30, scope: !576)
!578 = !DILocation(line: 709, column: 25, scope: !576)
!579 = !DILocation(line: 709, column: 8, scope: !576)
!580 = !DILocation(line: 709, column: 8, scope: !548)
!581 = !DILocation(line: 710, column: 27, scope: !582)
!582 = distinct !DILexicalBlock(scope: !576, file: !20, line: 709, column: 41)
!583 = !DILocation(line: 710, column: 33, scope: !582)
!584 = !DILocation(line: 711, column: 40, scope: !582)
!585 = !DILocation(line: 710, column: 7, scope: !582)
!586 = !DILocation(line: 712, column: 4, scope: !582)
!587 = !DILocation(line: 714, column: 27, scope: !548)
!588 = !DILocation(line: 714, column: 33, scope: !548)
!589 = !DILocation(line: 714, column: 4, scope: !548)
!590 = !DILocation(line: 716, column: 18, scope: !548)
!591 = !DILocation(line: 716, column: 24, scope: !548)
!592 = !DILocation(line: 716, column: 4, scope: !548)
!593 = !DILocation(line: 718, column: 11, scope: !548)
!594 = !DILocation(line: 718, column: 4, scope: !548)
!595 = distinct !DISubprogram(name: "MXUserTimedDown", scope: !20, file: !20, line: 262, type: !596, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!596 = !DISubroutineType(types: !597)
!597 = !{!248, !249, !27, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!599 = !DILocalVariable(name: "sema", arg: 1, scope: !595, file: !20, line: 262, type: !249)
!600 = !DILocation(line: 262, column: 34, scope: !595)
!601 = !DILocalVariable(name: "waitTimeMsec", arg: 2, scope: !595, file: !20, line: 263, type: !27)
!602 = !DILocation(line: 263, column: 24, scope: !595)
!603 = !DILocalVariable(name: "downOccurred", arg: 3, scope: !595, file: !20, line: 264, type: !598)
!604 = !DILocation(line: 264, column: 23, scope: !595)
!605 = !DILocalVariable(name: "err", scope: !595, file: !20, line: 266, type: !248)
!606 = !DILocation(line: 266, column: 8, scope: !595)
!607 = !DILocalVariable(name: "endNS", scope: !595, file: !20, line: 267, type: !82)
!608 = !DILocation(line: 267, column: 11, scope: !595)
!609 = !DILocalVariable(name: "curTime", scope: !595, file: !20, line: 268, type: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !611, line: 30, size: 128, align: 64, elements: !612)
!611 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line507")
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !610, file: !611, line: 32, baseType: !88, size: 64, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !610, file: !611, line: 33, baseType: !615, size: 64, align: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !89, line: 141, baseType: !74)
!616 = !DILocation(line: 268, column: 19, scope: !595)
!617 = !DILocalVariable(name: "endTime", scope: !595, file: !20, line: 269, type: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !87, line: 120, size: 128, align: 64, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !618, file: !87, line: 122, baseType: !88, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !618, file: !87, line: 123, baseType: !622, size: 64, align: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !89, line: 175, baseType: !74)
!623 = !DILocation(line: 269, column: 20, scope: !595)
!624 = !DILocation(line: 277, column: 4, scope: !595)
!625 = !DILocation(line: 278, column: 30, scope: !595)
!626 = !DILocation(line: 278, column: 37, scope: !595)
!627 = !DILocation(line: 279, column: 30, scope: !595)
!628 = !DILocation(line: 279, column: 38, scope: !595)
!629 = !DILocation(line: 278, column: 61, scope: !595)
!630 = !DILocation(line: 280, column: 22, scope: !595)
!631 = !DILocation(line: 280, column: 13, scope: !595)
!632 = !DILocation(line: 280, column: 35, scope: !595)
!633 = !DILocation(line: 279, column: 46, scope: !595)
!634 = !DILocation(line: 278, column: 10, scope: !595)
!635 = !DILocation(line: 282, column: 31, scope: !595)
!636 = !DILocation(line: 282, column: 37, scope: !595)
!637 = !DILocation(line: 282, column: 12, scope: !595)
!638 = !DILocation(line: 282, column: 19, scope: !595)
!639 = !DILocation(line: 283, column: 34, scope: !595)
!640 = !DILocation(line: 283, column: 40, scope: !595)
!641 = !DILocation(line: 283, column: 12, scope: !595)
!642 = !DILocation(line: 283, column: 20, scope: !595)
!643 = !DILocation(line: 285, column: 4, scope: !595)
!644 = distinct !{!644, !643}
!645 = !DILocation(line: 286, column: 28, scope: !646)
!646 = distinct !DILexicalBlock(scope: !595, file: !20, line: 285, column: 7)
!647 = !DILocation(line: 286, column: 14, scope: !646)
!648 = !DILocation(line: 286, column: 44, scope: !646)
!649 = !DILocation(line: 286, column: 13, scope: !646)
!650 = !DILocation(line: 286, column: 54, scope: !651)
!651 = !DILexicalBlockFile(scope: !646, file: !20, discriminator: 1)
!652 = !DILocation(line: 286, column: 53, scope: !651)
!653 = !DILocation(line: 286, column: 13, scope: !651)
!654 = !DILocation(line: 286, column: 13, scope: !655)
!655 = !DILexicalBlockFile(scope: !646, file: !20, discriminator: 2)
!656 = !DILocation(line: 286, column: 13, scope: !657)
!657 = !DILexicalBlockFile(scope: !646, file: !20, discriminator: 3)
!658 = !DILocation(line: 286, column: 11, scope: !657)
!659 = !DILocation(line: 288, column: 11, scope: !660)
!660 = distinct !DILexicalBlock(scope: !646, file: !20, line: 288, column: 11)
!661 = !DILocation(line: 288, column: 15, scope: !660)
!662 = !DILocation(line: 288, column: 11, scope: !646)
!663 = !DILocation(line: 289, column: 11, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !20, line: 288, column: 21)
!665 = !DILocation(line: 289, column: 24, scope: !664)
!666 = !DILocation(line: 290, column: 7, scope: !664)
!667 = !DILocation(line: 291, column: 11, scope: !668)
!668 = distinct !DILexicalBlock(scope: !660, file: !20, line: 290, column: 14)
!669 = !DILocation(line: 291, column: 24, scope: !668)
!670 = !DILocation(line: 294, column: 14, scope: !671)
!671 = distinct !DILexicalBlock(scope: !668, file: !20, line: 294, column: 14)
!672 = !DILocation(line: 294, column: 18, scope: !671)
!673 = !DILocation(line: 294, column: 14, scope: !668)
!674 = !DILocation(line: 295, column: 17, scope: !675)
!675 = distinct !DILexicalBlock(scope: !671, file: !20, line: 294, column: 31)
!676 = !DILocation(line: 296, column: 10, scope: !675)
!677 = !DILocation(line: 298, column: 4, scope: !646)
!678 = !DILocation(line: 298, column: 13, scope: !679)
!679 = !DILexicalBlockFile(scope: !595, file: !20, discriminator: 1)
!680 = !DILocation(line: 298, column: 17, scope: !679)
!681 = !DILocation(line: 298, column: 4, scope: !679)
!682 = !DILocation(line: 300, column: 11, scope: !595)
!683 = !DILocation(line: 300, column: 4, scope: !595)
!684 = distinct !DISubprogram(name: "MXUser_TryDownSemaphore", scope: !20, file: !20, line: 745, type: !685, isLocal: false, isDefinition: true, scopeLine: 746, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!685 = !DISubroutineType(types: !686)
!686 = !{!314, !16}
!687 = !DILocalVariable(name: "sema", arg: 1, scope: !684, file: !20, line: 745, type: !16)
!688 = !DILocation(line: 745, column: 42, scope: !684)
!689 = !DILocalVariable(name: "err", scope: !684, file: !20, line: 747, type: !248)
!690 = !DILocation(line: 747, column: 8, scope: !684)
!691 = !DILocalVariable(name: "downOccurred", scope: !684, file: !20, line: 748, type: !314)
!692 = !DILocation(line: 748, column: 9, scope: !684)
!693 = !DILocation(line: 751, column: 26, scope: !684)
!694 = !DILocation(line: 751, column: 32, scope: !684)
!695 = !DILocation(line: 751, column: 4, scope: !684)
!696 = !DILocation(line: 753, column: 18, scope: !684)
!697 = !DILocation(line: 753, column: 24, scope: !684)
!698 = !DILocation(line: 753, column: 4, scope: !684)
!699 = !DILocation(line: 755, column: 25, scope: !684)
!700 = !DILocation(line: 755, column: 31, scope: !684)
!701 = !DILocation(line: 755, column: 10, scope: !684)
!702 = !DILocation(line: 755, column: 8, scope: !684)
!703 = !DILocation(line: 757, column: 26, scope: !704)
!704 = distinct !DILexicalBlock(scope: !684, file: !20, line: 757, column: 8)
!705 = !DILocation(line: 757, column: 30, scope: !704)
!706 = !DILocation(line: 757, column: 25, scope: !704)
!707 = !DILocation(line: 757, column: 8, scope: !704)
!708 = !DILocation(line: 757, column: 8, scope: !684)
!709 = !DILocation(line: 758, column: 27, scope: !710)
!710 = distinct !DILexicalBlock(scope: !704, file: !20, line: 757, column: 41)
!711 = !DILocation(line: 758, column: 33, scope: !710)
!712 = !DILocation(line: 759, column: 40, scope: !710)
!713 = !DILocation(line: 758, column: 7, scope: !710)
!714 = !DILocation(line: 760, column: 4, scope: !710)
!715 = !DILocation(line: 773, column: 18, scope: !684)
!716 = !DILocation(line: 773, column: 24, scope: !684)
!717 = !DILocation(line: 773, column: 4, scope: !684)
!718 = !DILocation(line: 775, column: 11, scope: !684)
!719 = !DILocation(line: 775, column: 4, scope: !684)
!720 = distinct !DISubprogram(name: "MXUserTryDown", scope: !20, file: !20, line: 304, type: !721, isLocal: true, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!721 = !DISubroutineType(types: !722)
!722 = !{!248, !249, !598}
!723 = !DILocalVariable(name: "sema", arg: 1, scope: !720, file: !20, line: 304, type: !249)
!724 = !DILocation(line: 304, column: 32, scope: !720)
!725 = !DILocalVariable(name: "downOccurred", arg: 2, scope: !720, file: !20, line: 305, type: !598)
!726 = !DILocation(line: 305, column: 21, scope: !720)
!727 = !DILocalVariable(name: "err", scope: !720, file: !20, line: 307, type: !248)
!728 = !DILocation(line: 307, column: 8, scope: !720)
!729 = !DILocation(line: 307, column: 27, scope: !720)
!730 = !DILocation(line: 307, column: 15, scope: !720)
!731 = !DILocation(line: 307, column: 33, scope: !720)
!732 = !DILocation(line: 307, column: 14, scope: !720)
!733 = !DILocation(line: 307, column: 43, scope: !734)
!734 = !DILexicalBlockFile(scope: !720, file: !20, discriminator: 1)
!735 = !DILocation(line: 307, column: 42, scope: !734)
!736 = !DILocation(line: 307, column: 14, scope: !734)
!737 = !DILocation(line: 307, column: 14, scope: !738)
!738 = !DILexicalBlockFile(scope: !720, file: !20, discriminator: 2)
!739 = !DILocation(line: 307, column: 14, scope: !740)
!740 = !DILexicalBlockFile(scope: !720, file: !20, discriminator: 3)
!741 = !DILocation(line: 307, column: 8, scope: !740)
!742 = !DILocation(line: 309, column: 8, scope: !743)
!743 = distinct !DILexicalBlock(scope: !720, file: !20, line: 309, column: 8)
!744 = !DILocation(line: 309, column: 12, scope: !743)
!745 = !DILocation(line: 309, column: 8, scope: !720)
!746 = !DILocation(line: 310, column: 8, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !20, line: 309, column: 18)
!748 = !DILocation(line: 310, column: 21, scope: !747)
!749 = !DILocation(line: 311, column: 4, scope: !747)
!750 = !DILocation(line: 312, column: 8, scope: !751)
!751 = distinct !DILexicalBlock(scope: !743, file: !20, line: 311, column: 11)
!752 = !DILocation(line: 312, column: 21, scope: !751)
!753 = !DILocation(line: 322, column: 12, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !20, line: 322, column: 11)
!755 = !DILocation(line: 322, column: 16, scope: !754)
!756 = !DILocation(line: 322, column: 26, scope: !754)
!757 = !DILocation(line: 322, column: 30, scope: !758)
!758 = !DILexicalBlockFile(scope: !754, file: !20, discriminator: 1)
!759 = !DILocation(line: 322, column: 34, scope: !758)
!760 = !DILocation(line: 322, column: 11, scope: !758)
!761 = !DILocation(line: 323, column: 14, scope: !762)
!762 = distinct !DILexicalBlock(scope: !754, file: !20, line: 322, column: 45)
!763 = !DILocation(line: 324, column: 7, scope: !762)
!764 = !DILocation(line: 327, column: 11, scope: !720)
!765 = !DILocation(line: 327, column: 4, scope: !720)
!766 = distinct !DISubprogram(name: "MXUser_UpSemaphore", scope: !20, file: !20, line: 797, type: !362, isLocal: false, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!767 = !DILocalVariable(name: "sema", arg: 1, scope: !766, file: !20, line: 797, type: !16)
!768 = !DILocation(line: 797, column: 37, scope: !766)
!769 = !DILocalVariable(name: "err", scope: !766, file: !20, line: 799, type: !248)
!770 = !DILocation(line: 799, column: 8, scope: !766)
!771 = !DILocation(line: 802, column: 26, scope: !766)
!772 = !DILocation(line: 802, column: 32, scope: !766)
!773 = !DILocation(line: 802, column: 4, scope: !766)
!774 = !DILocation(line: 813, column: 20, scope: !766)
!775 = !DILocation(line: 813, column: 26, scope: !766)
!776 = !DILocation(line: 813, column: 10, scope: !766)
!777 = !DILocation(line: 813, column: 8, scope: !766)
!778 = !DILocation(line: 815, column: 26, scope: !779)
!779 = distinct !DILexicalBlock(scope: !766, file: !20, line: 815, column: 8)
!780 = !DILocation(line: 815, column: 30, scope: !779)
!781 = !DILocation(line: 815, column: 25, scope: !779)
!782 = !DILocation(line: 815, column: 8, scope: !779)
!783 = !DILocation(line: 815, column: 8, scope: !766)
!784 = !DILocation(line: 816, column: 27, scope: !785)
!785 = distinct !DILexicalBlock(scope: !779, file: !20, line: 815, column: 41)
!786 = !DILocation(line: 816, column: 33, scope: !785)
!787 = !DILocation(line: 817, column: 40, scope: !785)
!788 = !DILocation(line: 816, column: 7, scope: !785)
!789 = !DILocation(line: 818, column: 4, scope: !785)
!790 = !DILocation(line: 819, column: 1, scope: !766)
!791 = distinct !DISubprogram(name: "MXUserUp", scope: !20, file: !20, line: 331, type: !246, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!792 = !DILocalVariable(name: "sema", arg: 1, scope: !791, file: !20, line: 331, type: !249)
!793 = !DILocation(line: 331, column: 27, scope: !791)
!794 = !DILocation(line: 333, column: 21, scope: !791)
!795 = !DILocation(line: 333, column: 12, scope: !791)
!796 = !DILocation(line: 333, column: 27, scope: !791)
!797 = !DILocation(line: 333, column: 11, scope: !791)
!798 = !DILocation(line: 333, column: 37, scope: !799)
!799 = !DILexicalBlockFile(scope: !791, file: !20, discriminator: 1)
!800 = !DILocation(line: 333, column: 36, scope: !799)
!801 = !DILocation(line: 333, column: 11, scope: !799)
!802 = !DILocation(line: 333, column: 11, scope: !803)
!803 = !DILexicalBlockFile(scope: !791, file: !20, discriminator: 2)
!804 = !DILocation(line: 333, column: 11, scope: !805)
!805 = !DILexicalBlockFile(scope: !791, file: !20, discriminator: 3)
!806 = !DILocation(line: 333, column: 4, scope: !805)
!807 = distinct !DISubprogram(name: "MXUser_CreateSingletonSemaphore", scope: !20, file: !20, line: 843, type: !808, isLocal: false, isDefinition: true, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!808 = !DISubroutineType(types: !809)
!809 = !{!16, !810, !152, !36}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!811 = !DILocalVariable(name: "semaStorage", arg: 1, scope: !807, file: !20, line: 843, type: !810)
!812 = !DILocation(line: 843, column: 45, scope: !807)
!813 = !DILocalVariable(name: "name", arg: 2, scope: !807, file: !20, line: 844, type: !152)
!814 = !DILocation(line: 844, column: 45, scope: !807)
!815 = !DILocalVariable(name: "rank", arg: 3, scope: !807, file: !20, line: 845, type: !36)
!816 = !DILocation(line: 845, column: 41, scope: !807)
!817 = !DILocalVariable(name: "sema", scope: !807, file: !20, line: 847, type: !16)
!818 = !DILocation(line: 847, column: 21, scope: !807)
!819 = !DILocation(line: 851, column: 26, scope: !807)
!820 = !DILocation(line: 851, column: 11, scope: !807)
!821 = !DILocation(line: 851, column: 9, scope: !807)
!822 = !DILocation(line: 853, column: 26, scope: !823)
!823 = distinct !DILexicalBlock(scope: !807, file: !20, line: 853, column: 8)
!824 = !DILocation(line: 853, column: 31, scope: !823)
!825 = !DILocation(line: 853, column: 25, scope: !823)
!826 = !DILocation(line: 853, column: 8, scope: !823)
!827 = !DILocation(line: 853, column: 8, scope: !807)
!828 = !DILocalVariable(name: "newSema", scope: !829, file: !20, line: 854, type: !16)
!829 = distinct !DILexicalBlock(scope: !823, file: !20, line: 853, column: 14)
!830 = !DILocation(line: 854, column: 24, scope: !829)
!831 = !DILocation(line: 854, column: 57, scope: !829)
!832 = !DILocation(line: 854, column: 63, scope: !829)
!833 = !DILocation(line: 854, column: 34, scope: !829)
!834 = !DILocation(line: 856, column: 41, scope: !829)
!835 = !DILocation(line: 856, column: 68, scope: !829)
!836 = !DILocation(line: 856, column: 59, scope: !829)
!837 = !DILocation(line: 856, column: 14, scope: !829)
!838 = !DILocation(line: 856, column: 12, scope: !829)
!839 = !DILocation(line: 858, column: 11, scope: !840)
!840 = distinct !DILexicalBlock(scope: !829, file: !20, line: 858, column: 11)
!841 = !DILocation(line: 858, column: 11, scope: !829)
!842 = !DILocation(line: 859, column: 34, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !20, line: 858, column: 17)
!844 = !DILocation(line: 859, column: 10, scope: !843)
!845 = !DILocation(line: 860, column: 7, scope: !843)
!846 = !DILocation(line: 861, column: 32, scope: !847)
!847 = distinct !DILexicalBlock(scope: !840, file: !20, line: 860, column: 14)
!848 = !DILocation(line: 861, column: 17, scope: !847)
!849 = !DILocation(line: 861, column: 15, scope: !847)
!850 = !DILocation(line: 863, column: 4, scope: !829)
!851 = !DILocation(line: 865, column: 11, scope: !807)
!852 = !DILocation(line: 865, column: 4, scope: !807)
!853 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !58, file: !58, line: 3829, type: !854, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!854 = !DISubroutineType(types: !855)
!855 = !{!85, !856}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64, align: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!858 = !DILocalVariable(name: "var", arg: 1, scope: !853, file: !58, line: 3829, type: !856)
!859 = !DILocation(line: 3829, column: 368, scope: !853)
!860 = !DILocation(line: 3829, column: 415, scope: !853)
!861 = !DILocation(line: 3829, column: 401, scope: !853)
!862 = !DILocation(line: 3829, column: 382, scope: !853)
!863 = !DILocation(line: 3829, column: 375, scope: !853)
!864 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWritePtr", scope: !58, file: !58, line: 3829, type: !865, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!865 = !DISubroutineType(types: !866)
!866 = !{!85, !810, !867, !867}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64, align: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!869 = !DILocalVariable(name: "var", arg: 1, scope: !864, file: !58, line: 3829, type: !810)
!870 = !DILocation(line: 3829, column: 757, scope: !864)
!871 = !DILocalVariable(name: "oldVal", arg: 2, scope: !864, file: !58, line: 3829, type: !867)
!872 = !DILocation(line: 3829, column: 775, scope: !864)
!873 = !DILocalVariable(name: "newVal", arg: 3, scope: !864, file: !58, line: 3829, type: !867)
!874 = !DILocation(line: 3829, column: 796, scope: !864)
!875 = !DILocation(line: 3829, column: 858, scope: !864)
!876 = !DILocation(line: 3829, column: 882, scope: !864)
!877 = !DILocation(line: 3829, column: 871, scope: !864)
!878 = !DILocation(line: 3829, column: 909, scope: !864)
!879 = !DILocation(line: 3829, column: 898, scope: !864)
!880 = !DILocation(line: 3829, column: 832, scope: !864)
!881 = !DILocation(line: 3829, column: 813, scope: !864)
!882 = !DILocation(line: 3829, column: 806, scope: !864)
!883 = distinct !DISubprogram(name: "Atomic_Read64", scope: !58, file: !58, line: 2143, type: !884, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!884 = !DISubroutineType(types: !885)
!885 = !{!82, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64, align: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!888 = !DILocalVariable(name: "var", arg: 1, scope: !883, file: !58, line: 2143, type: !886)
!889 = !DILocation(line: 2143, column: 36, scope: !883)
!890 = !DILocalVariable(name: "value", scope: !883, file: !58, line: 2146, type: !82)
!891 = !DILocation(line: 2146, column: 11, scope: !883)
!892 = !DILocation(line: 2160, column: 14, scope: !883)
!893 = !DILocation(line: 2160, column: 19, scope: !883)
!894 = !DILocation(line: 2157, column: 4, scope: !883)
!895 = !{i32 138346}
!896 = !DILocation(line: 2213, column: 11, scope: !883)
!897 = !DILocation(line: 2213, column: 4, scope: !883)
!898 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite64", scope: !58, file: !58, line: 1190, type: !899, isLocal: true, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!899 = !DISubroutineType(types: !900)
!900 = !{!82, !901, !82, !82}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!902 = !DILocalVariable(name: "var", arg: 1, scope: !898, file: !58, line: 1190, type: !901)
!903 = !DILocation(line: 1190, column: 42, scope: !898)
!904 = !DILocalVariable(name: "oldVal", arg: 2, scope: !898, file: !58, line: 1191, type: !82)
!905 = !DILocation(line: 1191, column: 34, scope: !898)
!906 = !DILocalVariable(name: "newVal", arg: 3, scope: !898, file: !58, line: 1192, type: !82)
!907 = !DILocation(line: 1192, column: 34, scope: !898)
!908 = !DILocalVariable(name: "val", scope: !898, file: !58, line: 1240, type: !82)
!909 = !DILocation(line: 1240, column: 11, scope: !898)
!910 = !DILocation(line: 1246, column: 15, scope: !898)
!911 = !DILocation(line: 1246, column: 20, scope: !898)
!912 = !DILocation(line: 1247, column: 14, scope: !898)
!913 = !DILocation(line: 1248, column: 14, scope: !898)
!914 = !DILocation(line: 1243, column: 4, scope: !898)
!915 = !{i32 130788}
!916 = !DILocation(line: 1251, column: 11, scope: !898)
!917 = !DILocation(line: 1251, column: 4, scope: !898)
