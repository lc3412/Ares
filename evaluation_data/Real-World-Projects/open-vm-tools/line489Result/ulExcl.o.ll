; ModuleID = './ulExcl.o.i'
source_filename = "./ulExcl.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MXUserExclLock = type { %struct.MXUserHeader, %struct.MXRecLock, %struct.Atomic_uint64, %struct.Atomic_uint64 }
%struct.MXUserHeader = type { i32, i8*, i32, %struct.anon, void (%struct.MXUserHeader*)*, void (%struct.MXUserHeader*)*, %struct.ListItem }
%struct.anon = type { i32 }
%struct.ListItem = type { %struct.ListItem*, %struct.ListItem* }
%struct.MXRecLock = type { %union.pthread_mutex_t, i32, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.Atomic_uint64 = type { i64 }
%struct.MXUserHeldStats = type { i64, %struct.MXUserBasicStats, %struct.Atomic_uint64 }
%struct.MXUserBasicStats = type { i8*, i64, i64, i64, i64, double }
%struct.MXUserAcquireStats = type { %struct.MXUserAcquisitionStats, %struct.Atomic_uint64 }
%struct.MXUserAcquisitionStats = type { double, i64, i64, i64, i64, i64, i64, i64, %struct.MXUserBasicStats }
%struct.MXUserHisto = type opaque
%struct.MXUserCondVar = type opaque
%union.pthread_mutexattr_t = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"X-%p\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: native lock initialization routine failed\0A\00", align 1
@__FUNCTION__.MXUser_CreateExclLock = private unnamed_addr constant [22 x i8] c"MXUser_CreateExclLock\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: unknown stats mode: %d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%s: Destroy of an acquired exclusive lock\0A\00", align 1
@__FUNCTION__.MXUser_DestroyExclLock = private unnamed_addr constant [23 x i8] c"MXUser_DestroyExclLock\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: Exclusive lock @ %p\0A\00", align 1
@__FUNCTION__.MXUserDumpExclLock = private unnamed_addr constant [19 x i8] c"MXUserDumpExclLock\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\09signature 0x%X\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\09name %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\09rank 0x%X\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\09serial number %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"\09lock count %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"\09address of owner data %p\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"HOT LOCK (%s); contention ratio %f\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"2.18\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_EnableStatsExclLock(%struct.MXUserExclLock*, i8 signext, i8 signext) #0 !dbg !111 {
  %4 = alloca %struct.MXUserExclLock*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %4, metadata !116, metadata !117), !dbg !118
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !119, metadata !117), !dbg !120
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !121, metadata !117), !dbg !122
  %7 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %4, align 8, !dbg !123
  %8 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %7, i32 0, i32 0, !dbg !124
  call void @MXUserValidateHeader(%struct.MXUserHeader* %8, i32 4), !dbg !125
  ret i8 0, !dbg !126
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserValidateHeader(%struct.MXUserHeader*, i32) #2 !dbg !127 {
  %3 = alloca %struct.MXUserHeader*, align 8
  %4 = alloca i32, align 4
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %3, metadata !132, metadata !117), !dbg !133
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !134, metadata !117), !dbg !135
  ret void, !dbg !136
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_DisableStatsExclLock(%struct.MXUserExclLock*) #0 !dbg !137 {
  %2 = alloca %struct.MXUserExclLock*, align 8
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %2, metadata !140, metadata !117), !dbg !141
  %3 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !142
  %4 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %3, i32 0, i32 0, !dbg !143
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 4), !dbg !144
  ret i8 0, !dbg !145
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_SetContentionRatioFloorExclLock(%struct.MXUserExclLock*, double) #0 !dbg !146 {
  %3 = alloca %struct.MXUserExclLock*, align 8
  %4 = alloca double, align 8
  %5 = alloca i8, align 1
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %3, metadata !150, metadata !117), !dbg !151
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !152, metadata !117), !dbg !153
  call void @llvm.dbg.declare(metadata i8* %5, metadata !154, metadata !117), !dbg !155
  %6 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !156
  %7 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %6, i32 0, i32 0, !dbg !157
  call void @MXUserValidateHeader(%struct.MXUserHeader* %7, i32 4), !dbg !158
  store i8 0, i8* %5, align 1, !dbg !159
  %8 = load i8, i8* %5, align 1, !dbg !162
  ret i8 %8, !dbg !163
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_SetContentionCountFloorExclLock(%struct.MXUserExclLock*, i64) #0 !dbg !164 {
  %3 = alloca %struct.MXUserExclLock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %3, metadata !167, metadata !117), !dbg !168
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !169, metadata !117), !dbg !170
  call void @llvm.dbg.declare(metadata i8* %5, metadata !171, metadata !117), !dbg !172
  %6 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !173
  %7 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %6, i32 0, i32 0, !dbg !174
  call void @MXUserValidateHeader(%struct.MXUserHeader* %7, i32 4), !dbg !175
  store i8 0, i8* %5, align 1, !dbg !176
  %8 = load i8, i8* %5, align 1, !dbg !179
  ret i8 %8, !dbg !180
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_SetContentionDurationFloorExclLock(%struct.MXUserExclLock*, i64) #0 !dbg !181 {
  %3 = alloca %struct.MXUserExclLock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %3, metadata !182, metadata !117), !dbg !183
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !184, metadata !117), !dbg !185
  call void @llvm.dbg.declare(metadata i8* %5, metadata !186, metadata !117), !dbg !187
  %6 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !188
  %7 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %6, i32 0, i32 0, !dbg !189
  call void @MXUserValidateHeader(%struct.MXUserHeader* %7, i32 4), !dbg !190
  store i8 0, i8* %5, align 1, !dbg !191
  %8 = load i8, i8* %5, align 1, !dbg !194
  ret i8 %8, !dbg !195
}

; Function Attrs: nounwind uwtable
define %struct.MXUserExclLock* @MXUser_CreateExclLock(i8*, i32) #0 !dbg !196 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.MXUserExclLock*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !201, metadata !117), !dbg !202
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !203, metadata !117), !dbg !204
  call void @llvm.dbg.declare(metadata i32* %5, metadata !205, metadata !117), !dbg !206
  call void @llvm.dbg.declare(metadata i8** %6, metadata !207, metadata !117), !dbg !208
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %7, metadata !209, metadata !117), !dbg !210
  %8 = call i8* @UtilSafeCalloc0(i64 1, i64 128), !dbg !211
  %9 = bitcast i8* %8 to %struct.MXUserExclLock*, !dbg !211
  store %struct.MXUserExclLock* %9, %struct.MXUserExclLock** %7, align 8, !dbg !210
  %10 = load i8*, i8** %3, align 8, !dbg !212
  %11 = icmp eq i8* %10, null, !dbg !214
  br i1 %11, label %12, label %15, !dbg !215

; <label>:12:                                     ; preds = %2
  %13 = call i8* @llvm.returnaddress(i32 0), !dbg !216
  %14 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %13), !dbg !218
  store i8* %14, i8** %6, align 8, !dbg !220
  br label %18, !dbg !221

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %3, align 8, !dbg !222
  %17 = call i8* @UtilSafeStrdup0(i8* %16), !dbg !224
  store i8* %17, i8** %6, align 8, !dbg !225
  br label %18

; <label>:18:                                     ; preds = %15, %12
  %19 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !226
  %20 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %19, i32 0, i32 1, !dbg !228
  %21 = call signext i8 @MXRecLockInit(%struct.MXRecLock* %20), !dbg !229
  %22 = icmp ne i8 %21, 0, !dbg !230
  %23 = xor i1 %22, true, !dbg !230
  %24 = zext i1 %23 to i32, !dbg !230
  %25 = sext i32 %24 to i64, !dbg !231
  %26 = icmp ne i64 %25, 0, !dbg !232
  br i1 %26, label %27, label %28, !dbg !233

; <label>:27:                                     ; preds = %18
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.MXUser_CreateExclLock, i32 0, i32 0)) #9, !dbg !234
  unreachable, !dbg !234

; <label>:28:                                     ; preds = %18
  %29 = call i32 @MXUserGetSignature(i32 4), !dbg !236
  %30 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !237
  %31 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %30, i32 0, i32 0, !dbg !238
  %32 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %31, i32 0, i32 0, !dbg !239
  store i32 %29, i32* %32, align 8, !dbg !240
  %33 = load i8*, i8** %6, align 8, !dbg !241
  %34 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !242
  %35 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %34, i32 0, i32 0, !dbg !243
  %36 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %35, i32 0, i32 1, !dbg !244
  store i8* %33, i8** %36, align 8, !dbg !245
  %37 = load i32, i32* %4, align 4, !dbg !246
  %38 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !247
  %39 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %38, i32 0, i32 0, !dbg !248
  %40 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %39, i32 0, i32 2, !dbg !249
  store i32 %37, i32* %40, align 8, !dbg !250
  %41 = call i32 @MXUserAllocSerialNumber(), !dbg !251
  %42 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !252
  %43 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %42, i32 0, i32 0, !dbg !253
  %44 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %43, i32 0, i32 3, !dbg !254
  %45 = bitcast %struct.anon* %44 to i32*, !dbg !255
  %46 = load i32, i32* %45, align 4, !dbg !256
  %47 = and i32 %41, 16777215, !dbg !256
  %48 = and i32 %46, -16777216, !dbg !256
  %49 = or i32 %48, %47, !dbg !256
  store i32 %49, i32* %45, align 4, !dbg !256
  %50 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !257
  %51 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %50, i32 0, i32 0, !dbg !258
  %52 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %51, i32 0, i32 4, !dbg !259
  store void (%struct.MXUserHeader*)* @MXUserDumpExclLock, void (%struct.MXUserHeader*)** %52, align 8, !dbg !260
  %53 = call i32 @MXUserStatsMode(), !dbg !261
  store i32 %53, i32* %5, align 4, !dbg !262
  %54 = call i32 @MXUserStatsMode(), !dbg !263
  switch i32 %54, label %77 [
    i32 0, label %55
    i32 1, label %63
    i32 2, label %69
  ], !dbg !264

; <label>:55:                                     ; preds = %28
  %56 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !265
  %57 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %56, i32 0, i32 3, !dbg !267
  %58 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !268
  %59 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %58, i32 0, i32 2, !dbg !269
  call void @MXUserDisableStats(%struct.Atomic_uint64* %57, %struct.Atomic_uint64* %59), !dbg !270
  %60 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !271
  %61 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %60, i32 0, i32 0, !dbg !272
  %62 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %61, i32 0, i32 5, !dbg !273
  store void (%struct.MXUserHeader*)* null, void (%struct.MXUserHeader*)** %62, align 8, !dbg !274
  br label %79, !dbg !275

; <label>:63:                                     ; preds = %28
  %64 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !276
  %65 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %64, i32 0, i32 3, !dbg !277
  call void @MXUserEnableStats(%struct.Atomic_uint64* %65, %struct.Atomic_uint64* null), !dbg !278
  %66 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !279
  %67 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %66, i32 0, i32 0, !dbg !280
  %68 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %67, i32 0, i32 5, !dbg !281
  store void (%struct.MXUserHeader*)* @MXUserStatsActionExcl, void (%struct.MXUserHeader*)** %68, align 8, !dbg !282
  br label %79, !dbg !283

; <label>:69:                                     ; preds = %28
  %70 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !284
  %71 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %70, i32 0, i32 3, !dbg !285
  %72 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !286
  %73 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %72, i32 0, i32 2, !dbg !287
  call void @MXUserEnableStats(%struct.Atomic_uint64* %71, %struct.Atomic_uint64* %73), !dbg !288
  %74 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !289
  %75 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %74, i32 0, i32 0, !dbg !290
  %76 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %75, i32 0, i32 5, !dbg !291
  store void (%struct.MXUserHeader*)* @MXUserStatsActionExcl, void (%struct.MXUserHeader*)** %76, align 8, !dbg !292
  br label %79, !dbg !293

; <label>:77:                                     ; preds = %28
  %78 = load i32, i32* %5, align 4, !dbg !294
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.MXUser_CreateExclLock, i32 0, i32 0), i32 %78) #9, !dbg !295
  unreachable, !dbg !295

; <label>:79:                                     ; preds = %69, %63, %55
  %80 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !296
  %81 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %80, i32 0, i32 0, !dbg !297
  call void @MXUserAddToList(%struct.MXUserHeader* %81), !dbg !298
  %82 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !299
  ret %struct.MXUserExclLock* %82, !dbg !300
}

declare i8* @UtilSafeCalloc0(i64, i64) #3

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @llvm.returnaddress(i32) #1

declare i8* @UtilSafeStrdup0(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXRecLockInit(%struct.MXRecLock*) #2 !dbg !301 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i8, align 1
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !305, metadata !117), !dbg !306
  call void @llvm.dbg.declare(metadata i8* %3, metadata !307, metadata !117), !dbg !308
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !309
  %5 = call i32 @MXRecLockCreateInternal(%struct.MXRecLock* %4), !dbg !310
  %6 = icmp eq i32 %5, 0, !dbg !311
  %7 = zext i1 %6 to i32, !dbg !311
  %8 = trunc i32 %7 to i8, !dbg !312
  store i8 %8, i8* %3, align 1, !dbg !308
  %9 = load i8, i8* %3, align 1, !dbg !313
  %10 = icmp ne i8 %9, 0, !dbg !313
  br i1 %10, label %11, label %15, !dbg !315

; <label>:11:                                     ; preds = %1
  %12 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !316
  call void @MXRecLockSetNoOwner(%struct.MXRecLock* %12), !dbg !318
  %13 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !319
  %14 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %13, i32 0, i32 1, !dbg !320
  store i32 0, i32* %14, align 8, !dbg !321
  br label %15, !dbg !322

; <label>:15:                                     ; preds = %11, %1
  %16 = load i8, i8* %3, align 1, !dbg !323
  ret i8 %16, !dbg !324
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

declare i32 @MXUserGetSignature(i32) #3

declare i32 @MXUserAllocSerialNumber() #3

; Function Attrs: nounwind uwtable
define internal void @MXUserDumpExclLock(%struct.MXUserHeader*) #0 !dbg !325 {
  %2 = alloca %struct.MXUserHeader*, align 8
  %3 = alloca %struct.MXUserExclLock*, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !328, metadata !117), !dbg !329
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %3, metadata !330, metadata !117), !dbg !331
  %4 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !332
  %5 = bitcast %struct.MXUserHeader* %4 to %struct.MXUserExclLock*, !dbg !333
  store %struct.MXUserExclLock* %5, %struct.MXUserExclLock** %3, align 8, !dbg !331
  %6 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !334
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.MXUserDumpExclLock, i32 0, i32 0), %struct.MXUserExclLock* %6), !dbg !335
  %7 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !336
  %8 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %7, i32 0, i32 0, !dbg !337
  %9 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %8, i32 0, i32 0, !dbg !338
  %10 = load i32, i32* %9, align 8, !dbg !338
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %10), !dbg !339
  %11 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !340
  %12 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %11, i32 0, i32 0, !dbg !341
  %13 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %12, i32 0, i32 1, !dbg !342
  %14 = load i8*, i8** %13, align 8, !dbg !342
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* %14), !dbg !343
  %15 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !344
  %16 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %15, i32 0, i32 0, !dbg !345
  %17 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %16, i32 0, i32 2, !dbg !346
  %18 = load i32, i32* %17, align 8, !dbg !346
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 %18), !dbg !347
  %19 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !348
  %20 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %19, i32 0, i32 0, !dbg !349
  %21 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %20, i32 0, i32 3, !dbg !350
  %22 = bitcast %struct.anon* %21 to i32*, !dbg !351
  %23 = load i32, i32* %22, align 4, !dbg !351
  %24 = and i32 %23, 16777215, !dbg !351
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 %24), !dbg !352
  %25 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !353
  %26 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %25, i32 0, i32 1, !dbg !354
  %27 = call i32 @MXRecLockCount(%struct.MXRecLock* %26), !dbg !355
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 %27), !dbg !356
  %28 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !358
  %29 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %28, i32 0, i32 1, !dbg !359
  %30 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %29, i32 0, i32 2, !dbg !360
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i64* %30), !dbg !361
  ret void, !dbg !362
}

declare i32 @MXUserStatsMode() #3

declare void @MXUserDisableStats(%struct.Atomic_uint64*, %struct.Atomic_uint64*) #3

declare void @MXUserEnableStats(%struct.Atomic_uint64*, %struct.Atomic_uint64*) #3

; Function Attrs: nounwind uwtable
define internal void @MXUserStatsActionExcl(%struct.MXUserHeader*) #0 !dbg !363 {
  %2 = alloca %struct.MXUserHeader*, align 8
  %3 = alloca %struct.MXUserExclLock*, align 8
  %4 = alloca %struct.MXUserHeldStats*, align 8
  %5 = alloca %struct.MXUserAcquireStats*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca double, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !364, metadata !117), !dbg !365
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %3, metadata !366, metadata !117), !dbg !367
  %9 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !368
  %10 = bitcast %struct.MXUserHeader* %9 to %struct.MXUserExclLock*, !dbg !369
  store %struct.MXUserExclLock* %10, %struct.MXUserExclLock** %3, align 8, !dbg !367
  call void @llvm.dbg.declare(metadata %struct.MXUserHeldStats** %4, metadata !370, metadata !117), !dbg !390
  %11 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !391
  %12 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %11, i32 0, i32 2, !dbg !392
  %13 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %12), !dbg !393
  %14 = bitcast i8* %13 to %struct.MXUserHeldStats*, !dbg !393
  store %struct.MXUserHeldStats* %14, %struct.MXUserHeldStats** %4, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquireStats** %5, metadata !394, metadata !117), !dbg !413
  %15 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !414
  %16 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %15, i32 0, i32 3, !dbg !415
  %17 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %16), !dbg !416
  %18 = bitcast i8* %17 to %struct.MXUserAcquireStats*, !dbg !416
  store %struct.MXUserAcquireStats* %18, %struct.MXUserAcquireStats** %5, align 8, !dbg !413
  %19 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !417
  %20 = icmp ne %struct.MXUserHeldStats* %19, null, !dbg !419
  %21 = zext i1 %20 to i32, !dbg !419
  %22 = sext i32 %21 to i64, !dbg !420
  %23 = icmp ne i64 %22, 0, !dbg !421
  br i1 %23, label %24, label %39, !dbg !422

; <label>:24:                                     ; preds = %1
  %25 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !423
  %26 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %25, i32 0, i32 1, !dbg !425
  %27 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !426
  call void @MXUserDumpBasicStats(%struct.MXUserBasicStats* %26, %struct.MXUserHeader* %27), !dbg !427
  %28 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !428
  %29 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %28, i32 0, i32 2, !dbg !430
  %30 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %29), !dbg !431
  %31 = icmp ne i8* %30, null, !dbg !432
  br i1 %31, label %32, label %38, !dbg !433

; <label>:32:                                     ; preds = %24
  %33 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !434
  %34 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %33, i32 0, i32 2, !dbg !436
  %35 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %34), !dbg !437
  %36 = bitcast i8* %35 to %struct.MXUserHisto*, !dbg !437
  %37 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !438
  call void @MXUserHistoDump(%struct.MXUserHisto* %36, %struct.MXUserHeader* %37), !dbg !439
  br label %38, !dbg !441

; <label>:38:                                     ; preds = %32, %24
  br label %39, !dbg !442

; <label>:39:                                     ; preds = %38, %1
  %40 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !443
  %41 = icmp ne %struct.MXUserAcquireStats* %40, null, !dbg !445
  %42 = xor i1 %41, true, !dbg !446
  %43 = xor i1 %42, true, !dbg !447
  %44 = zext i1 %43 to i32, !dbg !447
  %45 = sext i32 %44 to i64, !dbg !447
  %46 = icmp ne i64 %45, 0, !dbg !448
  br i1 %46, label %47, label %91, !dbg !449

; <label>:47:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata i8* %6, metadata !450, metadata !117), !dbg !452
  call void @llvm.dbg.declare(metadata i8* %7, metadata !453, metadata !117), !dbg !454
  call void @llvm.dbg.declare(metadata double* %8, metadata !455, metadata !117), !dbg !456
  %48 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !457
  %49 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %48, i32 0, i32 0, !dbg !458
  %50 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !459
  call void @MXUserDumpAcquisitionStats(%struct.MXUserAcquisitionStats* %49, %struct.MXUserHeader* %50), !dbg !460
  %51 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !461
  %52 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %51, i32 0, i32 1, !dbg !463
  %53 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %52), !dbg !464
  %54 = icmp ne i8* %53, null, !dbg !465
  br i1 %54, label %55, label %61, !dbg !466

; <label>:55:                                     ; preds = %47
  %56 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !467
  %57 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %56, i32 0, i32 1, !dbg !469
  %58 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %57), !dbg !470
  %59 = bitcast i8* %58 to %struct.MXUserHisto*, !dbg !470
  %60 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !471
  call void @MXUserHistoDump(%struct.MXUserHisto* %59, %struct.MXUserHeader* %60), !dbg !472
  br label %61, !dbg !474

; <label>:61:                                     ; preds = %55, %47
  %62 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !475
  %63 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %62, i32 0, i32 0, !dbg !476
  call void @MXUserKitchen(%struct.MXUserAcquisitionStats* %63, double* %8, i8* %6, i8* %7), !dbg !477
  %64 = load i8, i8* %6, align 1, !dbg !478
  %65 = sext i8 %64 to i64, !dbg !480
  %66 = icmp ne i64 %65, 0, !dbg !481
  br i1 %66, label %67, label %90, !dbg !482

; <label>:67:                                     ; preds = %61
  %68 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !483
  %69 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %68, i32 0, i32 3, !dbg !485
  %70 = call signext i8 @MXUserForceAcquisitionHisto(%struct.Atomic_uint64* %69, i64 1000, i32 7), !dbg !486
  %71 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %4, align 8, !dbg !487
  %72 = icmp ne %struct.MXUserHeldStats* %71, null, !dbg !489
  %73 = zext i1 %72 to i32, !dbg !489
  %74 = sext i32 %73 to i64, !dbg !490
  %75 = icmp ne i64 %74, 0, !dbg !491
  br i1 %75, label %76, label %80, !dbg !492

; <label>:76:                                     ; preds = %67
  %77 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !493
  %78 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %77, i32 0, i32 2, !dbg !495
  %79 = call signext i8 @MXUserForceHeldHisto(%struct.Atomic_uint64* %78, i64 1000, i32 7), !dbg !496
  br label %80, !dbg !497

; <label>:80:                                     ; preds = %76, %67
  %81 = load i8, i8* %7, align 1, !dbg !498
  %82 = icmp ne i8 %81, 0, !dbg !498
  br i1 %82, label %83, label %89, !dbg !500

; <label>:83:                                     ; preds = %80
  %84 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !501
  %85 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %84, i32 0, i32 0, !dbg !503
  %86 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %85, i32 0, i32 1, !dbg !504
  %87 = load i8*, i8** %86, align 8, !dbg !504
  %88 = load double, double* %8, align 8, !dbg !505
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i8* %87, double %88), !dbg !506
  br label %89, !dbg !507

; <label>:89:                                     ; preds = %83, %80
  br label %90, !dbg !508

; <label>:90:                                     ; preds = %89, %61
  br label %91, !dbg !509

; <label>:91:                                     ; preds = %90, %39
  ret void, !dbg !510
}

declare void @MXUserAddToList(%struct.MXUserHeader*) #3

; Function Attrs: nounwind uwtable
define void @MXUser_DestroyExclLock(%struct.MXUserExclLock*) #0 !dbg !511 {
  %2 = alloca %struct.MXUserExclLock*, align 8
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %2, metadata !514, metadata !117), !dbg !515
  %3 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !516
  %4 = icmp ne %struct.MXUserExclLock* %3, null, !dbg !518
  br i1 %4, label %5, label %32, !dbg !519

; <label>:5:                                      ; preds = %1
  %6 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !520
  %7 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %6, i32 0, i32 0, !dbg !522
  call void @MXUserValidateHeader(%struct.MXUserHeader* %7, i32 4), !dbg !523
  %8 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !524
  %9 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %8, i32 0, i32 1, !dbg !526
  %10 = call i32 @MXRecLockCount(%struct.MXRecLock* %9), !dbg !527
  %11 = icmp sgt i32 %10, 0, !dbg !528
  br i1 %11, label %12, label %15, !dbg !529

; <label>:12:                                     ; preds = %5
  %13 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !530
  %14 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %13, i32 0, i32 0, !dbg !532
  call void (%struct.MXUserHeader*, i8*, ...) @MXUserDumpAndPanic(%struct.MXUserHeader* %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.MXUser_DestroyExclLock, i32 0, i32 0)), !dbg !533
  br label %15, !dbg !534

; <label>:15:                                     ; preds = %12, %5
  %16 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !535
  %17 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %16, i32 0, i32 1, !dbg !536
  call void @MXRecLockDestroy(%struct.MXRecLock* %17), !dbg !537
  %18 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !538
  %19 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %18, i32 0, i32 0, !dbg !539
  call void @MXUserRemoveFromList(%struct.MXUserHeader* %19), !dbg !540
  %20 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !541
  %21 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %20, i32 0, i32 0, !dbg !542
  %22 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %21, i32 0, i32 0, !dbg !543
  store i32 0, i32* %22, align 8, !dbg !544
  %23 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !545
  %24 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %23, i32 0, i32 0, !dbg !546
  %25 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %24, i32 0, i32 1, !dbg !547
  %26 = load i8*, i8** %25, align 8, !dbg !547
  call void @free(i8* %26) #10, !dbg !548
  %27 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !549
  %28 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %27, i32 0, i32 0, !dbg !550
  %29 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %28, i32 0, i32 1, !dbg !551
  store i8* null, i8** %29, align 8, !dbg !552
  %30 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !553
  %31 = bitcast %struct.MXUserExclLock* %30 to i8*, !dbg !553
  call void @free(i8* %31) #10, !dbg !554
  br label %32, !dbg !555

; <label>:32:                                     ; preds = %15, %1
  ret void, !dbg !556
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockCount(%struct.MXRecLock*) #2 !dbg !557 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !562, metadata !117), !dbg !563
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !564
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 1, !dbg !565
  %5 = load i32, i32* %4, align 8, !dbg !565
  ret i32 %5, !dbg !566
}

declare void @MXUserDumpAndPanic(%struct.MXUserHeader*, i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockDestroy(%struct.MXRecLock*) #2 !dbg !567 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !570, metadata !117), !dbg !571
  call void @llvm.dbg.declare(metadata i32* %3, metadata !572, metadata !117), !dbg !573
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !574
  %5 = call i32 @MXRecLockDestroyInternal(%struct.MXRecLock* %4), !dbg !575
  store i32 %5, i32* %3, align 4, !dbg !573
  ret void, !dbg !576
}

declare void @MXUserRemoveFromList(%struct.MXUserHeader*) #3

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define void @MXUser_AcquireExclLock(%struct.MXUserExclLock*) #0 !dbg !577 {
  %2 = alloca %struct.MXUserExclLock*, align 8
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %2, metadata !578, metadata !117), !dbg !579
  %3 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !580
  %4 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %3, i32 0, i32 0, !dbg !581
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 4), !dbg !582
  %5 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !583
  %6 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %5, i32 0, i32 0, !dbg !584
  call void @MXUserAcquisitionTracking(%struct.MXUserHeader* %6, i8 signext 1), !dbg !585
  %7 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !586
  %8 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %7, i32 0, i32 1, !dbg !589
  call void @MXRecLockAcquire(%struct.MXRecLock* %8, i64* null), !dbg !590
  ret void, !dbg !591
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserAcquisitionTracking(%struct.MXUserHeader*, i8 signext) #2 !dbg !592 {
  %3 = alloca %struct.MXUserHeader*, align 8
  %4 = alloca i8, align 1
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %3, metadata !595, metadata !117), !dbg !596
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !597, metadata !117), !dbg !598
  ret void, !dbg !599
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockAcquire(%struct.MXRecLock*, i64*) #2 !dbg !600 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !604, metadata !117), !dbg !605
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !606, metadata !117), !dbg !607
  call void @llvm.dbg.declare(metadata i32* %5, metadata !608, metadata !117), !dbg !609
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !610
  %8 = call i32 @MXRecLockCount(%struct.MXRecLock* %7), !dbg !612
  %9 = icmp sgt i32 %8, 0, !dbg !613
  %10 = zext i1 %9 to i32, !dbg !613
  %11 = sext i32 %10 to i64, !dbg !614
  %12 = icmp ne i64 %11, 0, !dbg !615
  br i1 %12, label %13, label %25, !dbg !616

; <label>:13:                                     ; preds = %2
  %14 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !617
  %15 = call signext i8 @MXRecLockIsOwner(%struct.MXRecLock* %14), !dbg !619
  %16 = sext i8 %15 to i32, !dbg !619
  %17 = icmp ne i32 %16, 0, !dbg !619
  br i1 %17, label %18, label %25, !dbg !620

; <label>:18:                                     ; preds = %13
  %19 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !621
  call void @MXRecLockIncCount(%struct.MXRecLock* %19, i32 1), !dbg !623
  %20 = load i64*, i64** %4, align 8, !dbg !624
  %21 = icmp ne i64* %20, null, !dbg !626
  br i1 %21, label %22, label %24, !dbg !627

; <label>:22:                                     ; preds = %18
  %23 = load i64*, i64** %4, align 8, !dbg !628
  store i64 0, i64* %23, align 8, !dbg !630
  br label %24, !dbg !631

; <label>:24:                                     ; preds = %22, %18
  br label %46, !dbg !632

; <label>:25:                                     ; preds = %13, %2
  %26 = load i64*, i64** %4, align 8, !dbg !633
  %27 = icmp eq i64* %26, null, !dbg !635
  %28 = xor i1 %27, true, !dbg !636
  %29 = xor i1 %28, true, !dbg !637
  %30 = zext i1 %29 to i32, !dbg !637
  %31 = sext i32 %30 to i64, !dbg !637
  %32 = icmp ne i64 %31, 0, !dbg !638
  br i1 %32, label %33, label %36, !dbg !639

; <label>:33:                                     ; preds = %25
  %34 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !640
  %35 = call i32 @MXRecLockAcquireInternal(%struct.MXRecLock* %34), !dbg !642
  store i32 %35, i32* %5, align 4, !dbg !643
  br label %44, !dbg !644

; <label>:36:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i64* %6, metadata !645, metadata !117), !dbg !647
  %37 = call i64 @Hostinfo_SystemTimerNS(), !dbg !648
  store i64 %37, i64* %6, align 8, !dbg !647
  %38 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !649
  %39 = call i32 @MXRecLockAcquireInternal(%struct.MXRecLock* %38), !dbg !650
  store i32 %39, i32* %5, align 4, !dbg !651
  %40 = call i64 @Hostinfo_SystemTimerNS(), !dbg !652
  %41 = load i64, i64* %6, align 8, !dbg !653
  %42 = sub nsw i64 %40, %41, !dbg !654
  %43 = load i64*, i64** %4, align 8, !dbg !655
  store i64 %42, i64* %43, align 8, !dbg !656
  br label %44

; <label>:44:                                     ; preds = %36, %33
  %45 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !657
  call void @MXRecLockIncCount(%struct.MXRecLock* %45, i32 1), !dbg !658
  br label %46, !dbg !659

; <label>:46:                                     ; preds = %44, %24
  ret void, !dbg !660
}

; Function Attrs: nounwind uwtable
define void @MXUser_ReleaseExclLock(%struct.MXUserExclLock*) #0 !dbg !661 {
  %2 = alloca %struct.MXUserExclLock*, align 8
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %2, metadata !662, metadata !117), !dbg !663
  %3 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !664
  %4 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %3, i32 0, i32 0, !dbg !665
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 4), !dbg !666
  %5 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !667
  %6 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %5, i32 0, i32 0, !dbg !668
  call void @MXUserReleaseTracking(%struct.MXUserHeader* %6), !dbg !669
  %7 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !670
  %8 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %7, i32 0, i32 1, !dbg !671
  call void @MXRecLockRelease(%struct.MXRecLock* %8), !dbg !672
  ret void, !dbg !673
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserReleaseTracking(%struct.MXUserHeader*) #2 !dbg !674 {
  %2 = alloca %struct.MXUserHeader*, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !675, metadata !117), !dbg !676
  ret void, !dbg !677
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockRelease(%struct.MXRecLock*) #2 !dbg !678 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !679, metadata !117), !dbg !680
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !681
  call void @MXRecLockDecCount(%struct.MXRecLock* %4, i32 1), !dbg !682
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !683
  %6 = call i32 @MXRecLockCount(%struct.MXRecLock* %5), !dbg !685
  %7 = icmp eq i32 %6, 0, !dbg !686
  %8 = xor i1 %7, true, !dbg !687
  %9 = xor i1 %8, true, !dbg !688
  %10 = zext i1 %9 to i32, !dbg !688
  %11 = sext i32 %10 to i64, !dbg !688
  %12 = icmp ne i64 %11, 0, !dbg !689
  br i1 %12, label %13, label %16, !dbg !690

; <label>:13:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %3, metadata !691, metadata !117), !dbg !693
  %14 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !694
  %15 = call i32 @MXRecLockReleaseInternal(%struct.MXRecLock* %14), !dbg !695
  store i32 %15, i32* %3, align 4, !dbg !693
  br label %16, !dbg !696

; <label>:16:                                     ; preds = %13, %1
  ret void, !dbg !697
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_TryAcquireExclLock(%struct.MXUserExclLock*) #0 !dbg !698 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.MXUserExclLock*, align 8
  %4 = alloca i8, align 1
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %3, metadata !699, metadata !117), !dbg !700
  call void @llvm.dbg.declare(metadata i8* %4, metadata !701, metadata !117), !dbg !702
  %5 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !703
  %6 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %5, i32 0, i32 0, !dbg !704
  call void @MXUserValidateHeader(%struct.MXUserHeader* %6, i32 4), !dbg !705
  %7 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !706
  %8 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %7, i32 0, i32 0, !dbg !708
  %9 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %8, i32 0, i32 1, !dbg !709
  %10 = load i8*, i8** %9, align 8, !dbg !709
  %11 = call signext i8 @MXUserTryAcquireFail(i8* %10), !dbg !710
  %12 = icmp ne i8 %11, 0, !dbg !710
  br i1 %12, label %13, label %14, !dbg !711

; <label>:13:                                     ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !712
  br label %25, !dbg !712

; <label>:14:                                     ; preds = %1
  %15 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !714
  %16 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %15, i32 0, i32 1, !dbg !715
  %17 = call signext i8 @MXRecLockTryAcquire(%struct.MXRecLock* %16), !dbg !716
  store i8 %17, i8* %4, align 1, !dbg !717
  %18 = load i8, i8* %4, align 1, !dbg !718
  %19 = icmp ne i8 %18, 0, !dbg !718
  br i1 %19, label %20, label %23, !dbg !720

; <label>:20:                                     ; preds = %14
  %21 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !721
  %22 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %21, i32 0, i32 0, !dbg !723
  call void @MXUserAcquisitionTracking(%struct.MXUserHeader* %22, i8 signext 0), !dbg !724
  br label %23, !dbg !725

; <label>:23:                                     ; preds = %20, %14
  %24 = load i8, i8* %4, align 1, !dbg !726
  store i8 %24, i8* %2, align 1, !dbg !727
  br label %25, !dbg !727

; <label>:25:                                     ; preds = %23, %13
  %26 = load i8, i8* %2, align 1, !dbg !728
  ret i8 %26, !dbg !728
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXUserTryAcquireFail(i8*) #2 !dbg !729 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !732, metadata !117), !dbg !733
  ret i8 0, !dbg !734
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXRecLockTryAcquire(%struct.MXRecLock*) #2 !dbg !735 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !736, metadata !117), !dbg !737
  call void @llvm.dbg.declare(metadata i32* %4, metadata !738, metadata !117), !dbg !739
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !740
  %6 = call i32 @MXRecLockCount(%struct.MXRecLock* %5), !dbg !742
  %7 = icmp sgt i32 %6, 0, !dbg !743
  %8 = zext i1 %7 to i32, !dbg !743
  %9 = sext i32 %8 to i64, !dbg !744
  %10 = icmp ne i64 %9, 0, !dbg !745
  br i1 %10, label %11, label %18, !dbg !746

; <label>:11:                                     ; preds = %1
  %12 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !747
  %13 = call signext i8 @MXRecLockIsOwner(%struct.MXRecLock* %12), !dbg !749
  %14 = sext i8 %13 to i32, !dbg !749
  %15 = icmp ne i32 %14, 0, !dbg !749
  br i1 %15, label %16, label %18, !dbg !750

; <label>:16:                                     ; preds = %11
  %17 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !751
  call void @MXRecLockIncCount(%struct.MXRecLock* %17, i32 1), !dbg !753
  store i8 1, i8* %2, align 1, !dbg !754
  br label %31, !dbg !754

; <label>:18:                                     ; preds = %11, %1
  %19 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !755
  %20 = call i32 @MXRecLockTryAcquireInternal(%struct.MXRecLock* %19), !dbg !756
  store i32 %20, i32* %4, align 4, !dbg !757
  %21 = load i32, i32* %4, align 4, !dbg !758
  %22 = icmp eq i32 %21, 0, !dbg !760
  %23 = xor i1 %22, true, !dbg !761
  %24 = xor i1 %23, true, !dbg !762
  %25 = zext i1 %24 to i32, !dbg !762
  %26 = sext i32 %25 to i64, !dbg !762
  %27 = icmp ne i64 %26, 0, !dbg !763
  br i1 %27, label %28, label %30, !dbg !764

; <label>:28:                                     ; preds = %18
  %29 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !765
  call void @MXRecLockIncCount(%struct.MXRecLock* %29, i32 1), !dbg !767
  store i8 1, i8* %2, align 1, !dbg !768
  br label %31, !dbg !768

; <label>:30:                                     ; preds = %18
  store i8 0, i8* %2, align 1, !dbg !769
  br label %31, !dbg !769

; <label>:31:                                     ; preds = %30, %28, %16
  %32 = load i8, i8* %2, align 1, !dbg !770
  ret i8 %32, !dbg !770
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUser_IsCurThreadHoldingExclLock(%struct.MXUserExclLock*) #0 !dbg !771 {
  %2 = alloca %struct.MXUserExclLock*, align 8
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %2, metadata !772, metadata !117), !dbg !773
  %3 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !774
  %4 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %3, i32 0, i32 0, !dbg !775
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 4), !dbg !776
  %5 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !777
  %6 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %5, i32 0, i32 1, !dbg !778
  %7 = call signext i8 @MXRecLockIsOwner(%struct.MXRecLock* %6), !dbg !779
  ret i8 %7, !dbg !780
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXRecLockIsOwner(%struct.MXRecLock*) #2 !dbg !781 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !784, metadata !117), !dbg !785
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !786
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 2, !dbg !787
  %5 = load i64, i64* %4, align 8, !dbg !787
  %6 = call i64 @MXUserNativeThreadID(), !dbg !788
  %7 = call i32 @pthread_equal(i64 %5, i64 %6) #1, !dbg !789
  %8 = trunc i32 %7 to i8, !dbg !791
  ret i8 %8, !dbg !792
}

; Function Attrs: nounwind uwtable
define %struct.MXUserExclLock* @MXUser_CreateSingletonExclLockInt(%struct.Atomic_uint64*, i8*, i32) #0 !dbg !793 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MXUserExclLock*, align 8
  %8 = alloca %struct.MXUserExclLock*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !797, metadata !117), !dbg !798
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !799, metadata !117), !dbg !800
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !801, metadata !117), !dbg !802
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %7, metadata !803, metadata !117), !dbg !804
  %9 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !805
  %10 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %9), !dbg !806
  %11 = bitcast i8* %10 to %struct.MXUserExclLock*, !dbg !806
  store %struct.MXUserExclLock* %11, %struct.MXUserExclLock** %7, align 8, !dbg !807
  %12 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !808
  %13 = icmp eq %struct.MXUserExclLock* %12, null, !dbg !810
  %14 = zext i1 %13 to i32, !dbg !810
  %15 = sext i32 %14 to i64, !dbg !811
  %16 = icmp ne i64 %15, 0, !dbg !812
  br i1 %16, label %17, label %35, !dbg !813

; <label>:17:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %8, metadata !814, metadata !117), !dbg !816
  %18 = load i8*, i8** %5, align 8, !dbg !817
  %19 = load i32, i32* %6, align 4, !dbg !818
  %20 = call %struct.MXUserExclLock* @MXUser_CreateExclLock(i8* %18, i32 %19), !dbg !819
  store %struct.MXUserExclLock* %20, %struct.MXUserExclLock** %8, align 8, !dbg !816
  %21 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !820
  %22 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %8, align 8, !dbg !821
  %23 = bitcast %struct.MXUserExclLock* %22 to i8*, !dbg !822
  %24 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %21, i8* null, i8* %23), !dbg !823
  %25 = bitcast i8* %24 to %struct.MXUserExclLock*, !dbg !823
  store %struct.MXUserExclLock* %25, %struct.MXUserExclLock** %7, align 8, !dbg !824
  %26 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !825
  %27 = icmp ne %struct.MXUserExclLock* %26, null, !dbg !825
  br i1 %27, label %28, label %30, !dbg !827

; <label>:28:                                     ; preds = %17
  %29 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %8, align 8, !dbg !828
  call void @MXUser_DestroyExclLock(%struct.MXUserExclLock* %29), !dbg !830
  br label %34, !dbg !831

; <label>:30:                                     ; preds = %17
  %31 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !832
  %32 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %31), !dbg !834
  %33 = bitcast i8* %32 to %struct.MXUserExclLock*, !dbg !834
  store %struct.MXUserExclLock* %33, %struct.MXUserExclLock** %7, align 8, !dbg !835
  br label %34

; <label>:34:                                     ; preds = %30, %28
  br label %35, !dbg !836

; <label>:35:                                     ; preds = %34, %3
  %36 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %7, align 8, !dbg !837
  ret %struct.MXUserExclLock* %36, !dbg !838
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #2 !dbg !839 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !844, metadata !117), !dbg !845
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !846
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !847
  %5 = inttoptr i64 %4 to i8*, !dbg !848
  ret i8* %5, !dbg !849
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64*, i8*, i8*) #2 !dbg !850 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !855, metadata !117), !dbg !856
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !857, metadata !117), !dbg !858
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !859, metadata !117), !dbg !860
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !861
  %8 = load i8*, i8** %5, align 8, !dbg !862
  %9 = ptrtoint i8* %8 to i64, !dbg !863
  %10 = load i8*, i8** %6, align 8, !dbg !864
  %11 = ptrtoint i8* %10 to i64, !dbg !865
  %12 = call i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64* %7, i64 %9, i64 %11), !dbg !866
  %13 = inttoptr i64 %12 to i8*, !dbg !867
  ret i8* %13, !dbg !868
}

; Function Attrs: nounwind uwtable
define %struct.MXUserCondVar* @MXUser_CreateCondVarExclLock(%struct.MXUserExclLock*) #0 !dbg !869 {
  %2 = alloca %struct.MXUserExclLock*, align 8
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %2, metadata !875, metadata !117), !dbg !876
  %3 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !877
  %4 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %3, i32 0, i32 0, !dbg !878
  call void @MXUserValidateHeader(%struct.MXUserHeader* %4, i32 4), !dbg !879
  %5 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !880
  %6 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %5, i32 0, i32 0, !dbg !881
  %7 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !882
  %8 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %7, i32 0, i32 1, !dbg !883
  %9 = call %struct.MXUserCondVar* @MXUserCreateCondVar(%struct.MXUserHeader* %6, %struct.MXRecLock* %8), !dbg !884
  ret %struct.MXUserCondVar* %9, !dbg !885
}

declare %struct.MXUserCondVar* @MXUserCreateCondVar(%struct.MXUserHeader*, %struct.MXRecLock*) #3

; Function Attrs: nounwind uwtable
define void @MXUser_WaitCondVarExclLock(%struct.MXUserExclLock*, %struct.MXUserCondVar*) #0 !dbg !886 {
  %3 = alloca %struct.MXUserExclLock*, align 8
  %4 = alloca %struct.MXUserCondVar*, align 8
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %3, metadata !889, metadata !117), !dbg !890
  store %struct.MXUserCondVar* %1, %struct.MXUserCondVar** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %4, metadata !891, metadata !117), !dbg !892
  %5 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !893
  %6 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %5, i32 0, i32 0, !dbg !894
  call void @MXUserValidateHeader(%struct.MXUserHeader* %6, i32 4), !dbg !895
  %7 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !896
  %8 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %7, i32 0, i32 0, !dbg !897
  %9 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %3, align 8, !dbg !898
  %10 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %9, i32 0, i32 1, !dbg !899
  %11 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %4, align 8, !dbg !900
  call void @MXUserWaitCondVar(%struct.MXUserHeader* %8, %struct.MXRecLock* %10, %struct.MXUserCondVar* %11, i32 -1), !dbg !901
  ret void, !dbg !902
}

declare void @MXUserWaitCondVar(%struct.MXUserHeader*, %struct.MXRecLock*, %struct.MXUserCondVar*, i32) #3

; Function Attrs: nounwind uwtable
define void @MXUser_TimedWaitCondVarExclLock(%struct.MXUserExclLock*, %struct.MXUserCondVar*, i32) #0 !dbg !903 {
  %4 = alloca %struct.MXUserExclLock*, align 8
  %5 = alloca %struct.MXUserCondVar*, align 8
  %6 = alloca i32, align 4
  store %struct.MXUserExclLock* %0, %struct.MXUserExclLock** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserExclLock** %4, metadata !906, metadata !117), !dbg !907
  store %struct.MXUserCondVar* %1, %struct.MXUserCondVar** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserCondVar** %5, metadata !908, metadata !117), !dbg !909
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !910, metadata !117), !dbg !911
  %7 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %4, align 8, !dbg !912
  %8 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %7, i32 0, i32 0, !dbg !913
  call void @MXUserValidateHeader(%struct.MXUserHeader* %8, i32 4), !dbg !914
  %9 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %4, align 8, !dbg !915
  %10 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %9, i32 0, i32 0, !dbg !916
  %11 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %4, align 8, !dbg !917
  %12 = getelementptr inbounds %struct.MXUserExclLock, %struct.MXUserExclLock* %11, i32 0, i32 1, !dbg !918
  %13 = load %struct.MXUserCondVar*, %struct.MXUserCondVar** %5, align 8, !dbg !919
  %14 = load i32, i32* %6, align 4, !dbg !920
  call void @MXUserWaitCondVar(%struct.MXUserHeader* %10, %struct.MXRecLock* %12, %struct.MXUserCondVar* %13, i32 %14), !dbg !921
  ret void, !dbg !922
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockCreateInternal(%struct.MXRecLock*) #2 !dbg !923 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !926, metadata !117), !dbg !927
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !928
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !929
  %5 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %4, %union.pthread_mutexattr_t* null) #10, !dbg !930
  ret i32 %5, !dbg !931
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockSetNoOwner(%struct.MXRecLock*) #2 !dbg !932 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !933, metadata !117), !dbg !934
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !935
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 2, !dbg !936
  %5 = bitcast i64* %4 to i8*, !dbg !937
  call void @llvm.memset.p0i8.i64(i8* %5, i8 -1, i64 8, i32 8, i1 false), !dbg !937
  ret void, !dbg !938
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare void @Warning(i8*, ...) #3

declare void @MXUserDumpBasicStats(%struct.MXUserBasicStats*, %struct.MXUserHeader*) #3

declare void @MXUserHistoDump(%struct.MXUserHisto*, %struct.MXUserHeader*) #3

declare void @MXUserDumpAcquisitionStats(%struct.MXUserAcquisitionStats*, %struct.MXUserHeader*) #3

declare void @MXUserKitchen(%struct.MXUserAcquisitionStats*, double*, i8*, i8*) #3

declare signext i8 @MXUserForceAcquisitionHisto(%struct.Atomic_uint64*, i64, i32) #3

declare signext i8 @MXUserForceHeldHisto(%struct.Atomic_uint64*, i64, i32) #3

declare void @Log(i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockDestroyInternal(%struct.MXRecLock*) #2 !dbg !939 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !940, metadata !117), !dbg !941
  call void @llvm.dbg.declare(metadata i32* %3, metadata !942, metadata !117), !dbg !943
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !944
  %6 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %5, i32 0, i32 0, !dbg !945
  %7 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %6) #10, !dbg !946
  store i32 %7, i32* %3, align 4, !dbg !943
  br i1 icmp ne (i8* ()* @gnu_get_libc_version, i8* ()* null), label %8, label %15, !dbg !947

; <label>:8:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !948, metadata !117), !dbg !951
  %9 = call i8* @gnu_get_libc_version(), !dbg !952
  store i8* %9, i8** %4, align 8, !dbg !951
  %10 = load i8*, i8** %4, align 8, !dbg !953
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #11, !dbg !955
  %12 = icmp sge i32 %11, 0, !dbg !956
  br i1 %12, label %13, label %14, !dbg !957

; <label>:13:                                     ; preds = %8
  store i32 0, i32* %3, align 4, !dbg !958
  br label %14, !dbg !960

; <label>:14:                                     ; preds = %13, %8
  br label %15, !dbg !961

; <label>:15:                                     ; preds = %14, %1
  %16 = load i32, i32* %3, align 4, !dbg !962
  ret i32 %16, !dbg !963
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #5

declare extern_weak i8* @gnu_get_libc_version() #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockIncCount(%struct.MXRecLock*, i32) #2 !dbg !964 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !967, metadata !117), !dbg !968
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !969, metadata !117), !dbg !970
  call void @llvm.dbg.declare(metadata i32* %5, metadata !971, metadata !117), !dbg !972
  %6 = load i32, i32* %4, align 4, !dbg !973
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !974
  %8 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %7, i32 0, i32 1, !dbg !975
  %9 = load i32, i32* %8, align 8, !dbg !976
  %10 = add nsw i32 %9, %6, !dbg !976
  store i32 %10, i32* %8, align 8, !dbg !976
  store i32 %10, i32* %5, align 4, !dbg !972
  %11 = load i32, i32* %5, align 4, !dbg !977
  %12 = load i32, i32* %4, align 4, !dbg !979
  %13 = icmp eq i32 %11, %12, !dbg !980
  %14 = xor i1 %13, true, !dbg !981
  %15 = xor i1 %14, true, !dbg !982
  %16 = zext i1 %15 to i32, !dbg !982
  %17 = sext i32 %16 to i64, !dbg !982
  %18 = icmp ne i64 %17, 0, !dbg !983
  br i1 %18, label %19, label %21, !dbg !984

; <label>:19:                                     ; preds = %2
  %20 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !985
  call void @MXRecLockSetOwner(%struct.MXRecLock* %20), !dbg !987
  br label %21, !dbg !988

; <label>:21:                                     ; preds = %19, %2
  ret void, !dbg !989
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockAcquireInternal(%struct.MXRecLock*) #2 !dbg !990 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !991, metadata !117), !dbg !992
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !993
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !994
  %5 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %4) #10, !dbg !995
  ret i32 %5, !dbg !996
}

declare i64 @Hostinfo_SystemTimerNS() #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockSetOwner(%struct.MXRecLock*) #2 !dbg !997 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !998, metadata !117), !dbg !999
  %3 = call i64 @MXUserNativeThreadID(), !dbg !1000
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1001
  %5 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %4, i32 0, i32 2, !dbg !1002
  store i64 %3, i64* %5, align 8, !dbg !1003
  ret void, !dbg !1004
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @MXUserNativeThreadID() #2 !dbg !1005 {
  %1 = call i64 @pthread_self() #1, !dbg !1008
  ret i64 %1, !dbg !1009
}

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockDecCount(%struct.MXRecLock*, i32) #2 !dbg !1010 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !1011, metadata !117), !dbg !1012
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1013, metadata !117), !dbg !1014
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1015, metadata !117), !dbg !1016
  %6 = load i32, i32* %4, align 4, !dbg !1017
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1018
  %8 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %7, i32 0, i32 1, !dbg !1019
  %9 = load i32, i32* %8, align 8, !dbg !1020
  %10 = sub nsw i32 %9, %6, !dbg !1020
  store i32 %10, i32* %8, align 8, !dbg !1020
  store i32 %10, i32* %5, align 4, !dbg !1016
  %11 = load i32, i32* %5, align 4, !dbg !1021
  %12 = icmp eq i32 %11, 0, !dbg !1023
  %13 = xor i1 %12, true, !dbg !1024
  %14 = xor i1 %13, true, !dbg !1025
  %15 = zext i1 %14 to i32, !dbg !1025
  %16 = sext i32 %15 to i64, !dbg !1025
  %17 = icmp ne i64 %16, 0, !dbg !1026
  br i1 %17, label %18, label %20, !dbg !1027

; <label>:18:                                     ; preds = %2
  %19 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1028
  call void @MXRecLockSetNoOwner(%struct.MXRecLock* %19), !dbg !1030
  br label %20, !dbg !1031

; <label>:20:                                     ; preds = %18, %2
  ret void, !dbg !1032
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockReleaseInternal(%struct.MXRecLock*) #2 !dbg !1033 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1034, metadata !117), !dbg !1035
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1036
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !1037
  %5 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %4) #10, !dbg !1038
  ret i32 %5, !dbg !1039
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockTryAcquireInternal(%struct.MXRecLock*) #2 !dbg !1040 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1041, metadata !117), !dbg !1042
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1043
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !1044
  %5 = call i32 @pthread_mutex_trylock(%union.pthread_mutex_t* %4) #10, !dbg !1045
  ret i32 %5, !dbg !1046
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(%union.pthread_mutex_t*) #5

; Function Attrs: nounwind readnone
declare i32 @pthread_equal(i64, i64) #8

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #2 !dbg !1047 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !1052, metadata !117), !dbg !1053
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1054, metadata !117), !dbg !1055
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !1056
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !1057
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #10, !dbg !1058, !srcloc !1059
  store i64 %6, i64* %3, align 8, !dbg !1058
  %7 = load i64, i64* %3, align 8, !dbg !1060
  ret i64 %7, !dbg !1061
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64*, i64, i64) #2 !dbg !1062 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !1066, metadata !117), !dbg !1067
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1068, metadata !117), !dbg !1069
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1070, metadata !117), !dbg !1071
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1072, metadata !117), !dbg !1073
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1074
  %9 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %8, i32 0, i32 0, !dbg !1075
  %10 = load i64, i64* %6, align 8, !dbg !1076
  %11 = load i64, i64* %5, align 8, !dbg !1077
  %12 = call i64 asm sideeffect "lock; cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64 %11, i64* %9) #10, !dbg !1078, !srcloc !1079
  store i64 %12, i64* %7, align 8, !dbg !1078
  %13 = load i64, i64* %7, align 8, !dbg !1080
  ret i64 %13, !dbg !1081
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!108, !109}
!llvm.ident = !{!110}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15)
!1 = !DIFile(filename: "ulExcl.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line489")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 440, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "ulInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line489")
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
!15 = !{!16, !17, !107, !104}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserExclLock", file: !19, line: 38, baseType: !20)
!19 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line489")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserExclLock", file: !21, line: 26, size: 1024, align: 64, elements: !22)
!21 = !DIFile(filename: "ulExcl.c", directory: "/home/lichi/Desktop/open-vm-tools/line489")
!22 = !{!23, !57, !96, !106}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !20, file: !21, line: 28, baseType: !24, size: 448, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHeader", file: !4, line: 469, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserHeader", file: !4, line: 456, size: 448, align: 64, elements: !26)
!26 = !{!27, !33, !36, !38, !43, !48, !49}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !25, file: !4, line: 457, baseType: !28, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !29, line: 173, baseType: !30)
!29 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line489")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 51, baseType: !32)
!31 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line489")
!32 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !4, line: 458, baseType: !34, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !25, file: !4, line: 459, baseType: !37, size: 32, align: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "MX_Rank", file: !29, line: 1167, baseType: !28)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !25, file: !4, line: 464, baseType: !39, size: 32, align: 32, offset: 160)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !25, file: !4, line: 461, size: 32, align: 32, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !39, file: !4, line: 462, baseType: !32, size: 24, align: 32, flags: DIFlagBitField, extraData: i64 0)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "badHeader", scope: !39, file: !4, line: 463, baseType: !32, size: 1, align: 32, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "dumpFunc", scope: !25, file: !4, line: 466, baseType: !44, size: 64, align: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "statsFunc", scope: !25, file: !4, line: 467, baseType: !44, size: 64, align: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !25, file: !4, line: 468, baseType: !50, size: 128, align: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ListItem", file: !51, line: 45, baseType: !52)
!51 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/circList.h", directory: "/home/lichi/Desktop/open-vm-tools/line489")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ListItem", file: !51, line: 42, size: 128, align: 64, elements: !53)
!53 = !{!54, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !52, file: !51, line: 43, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !51, line: 44, baseType: !55, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "recursiveLock", scope: !20, file: !21, line: 29, baseType: !58, size: 448, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXRecLock", file: !4, line: 67, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 58, size: 448, align: 64, elements: !60)
!60 = !{!61, !91, !92}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nativeLock", scope: !59, file: !4, line: 62, baseType: !62, size: 320, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !63, line: 128, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line489")
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !63, line: 90, size: 320, align: 64, elements: !65)
!65 = !{!66, !85, !89}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !64, file: !63, line: 125, baseType: !67, size: 320, align: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !63, line: 92, size: 320, align: 64, elements: !68)
!68 = !{!69, !71, !72, !73, !74, !75, !77, !78}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !67, file: !63, line: 94, baseType: !70, size: 32, align: 32)
!70 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !67, file: !63, line: 95, baseType: !32, size: 32, align: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !67, file: !63, line: 96, baseType: !70, size: 32, align: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !67, file: !63, line: 98, baseType: !32, size: 32, align: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !67, file: !63, line: 102, baseType: !70, size: 32, align: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !67, file: !63, line: 104, baseType: !76, size: 16, align: 16, offset: 160)
!76 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !67, file: !63, line: 105, baseType: !76, size: 16, align: 16, offset: 176)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !67, file: !63, line: 106, baseType: !79, size: 128, align: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !63, line: 79, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !63, line: 75, size: 128, align: 64, elements: !81)
!81 = !{!82, !84}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !80, file: !63, line: 77, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !80, file: !63, line: 78, baseType: !83, size: 64, align: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !64, file: !63, line: 126, baseType: !86, size: 320, align: 8)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 320, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 40)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !64, file: !63, line: 127, baseType: !90, size: 64, align: 64)
!90 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "referenceCount", scope: !59, file: !4, line: 65, baseType: !70, size: 32, align: 32, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "nativeThreadID", scope: !59, file: !4, line: 66, baseType: !93, size: 64, align: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserThreadID", file: !4, line: 39, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !63, line: 60, baseType: !95)
!95 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "heldStatsMem", scope: !20, file: !21, line: 30, baseType: !97, size: 64, align: 64, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !98, line: 3829, baseType: !99)
!98 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line489")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !98, line: 139, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !98, line: 137, size: 64, align: 64, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !100, file: !98, line: 138, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !29, line: 171, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !31, line: 55, baseType: !95)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "acquireStatsMem", scope: !20, file: !21, line: 31, baseType: !97, size: 64, align: 64, offset: 960)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !31, line: 122, baseType: !95)
!108 = !{i32 2, !"Dwarf Version", i32 4}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!111 = distinct !DISubprogram(name: "MXUser_EnableStatsExclLock", scope: !21, file: !21, line: 125, type: !112, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !17, !114, !114}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !29, line: 230, baseType: !35)
!115 = !{}
!116 = !DILocalVariable(name: "lock", arg: 1, scope: !111, file: !21, line: 125, type: !17)
!117 = !DIExpression()
!118 = !DILocation(line: 125, column: 44, scope: !111)
!119 = !DILocalVariable(name: "trackAcquisitionTime", arg: 2, scope: !111, file: !21, line: 126, type: !114)
!120 = !DILocation(line: 126, column: 33, scope: !111)
!121 = !DILocalVariable(name: "trackHeldTime", arg: 3, scope: !111, file: !21, line: 127, type: !114)
!122 = !DILocation(line: 127, column: 33, scope: !111)
!123 = !DILocation(line: 130, column: 26, scope: !111)
!124 = !DILocation(line: 130, column: 32, scope: !111)
!125 = !DILocation(line: 130, column: 4, scope: !111)
!126 = !DILocation(line: 137, column: 4, scope: !111)
!127 = distinct !DISubprogram(name: "MXUserValidateHeader", scope: !4, file: !4, line: 507, type: !128, isLocal: true, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !130, !131}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserObjectType", file: !4, line: 450, baseType: !3)
!132 = !DILocalVariable(name: "header", arg: 1, scope: !127, file: !4, line: 507, type: !130)
!133 = !DILocation(line: 507, column: 36, scope: !127)
!134 = !DILocalVariable(name: "objectType", arg: 2, scope: !127, file: !4, line: 508, type: !131)
!135 = !DILocation(line: 508, column: 39, scope: !127)
!136 = !DILocation(line: 510, column: 4, scope: !127)
!137 = distinct !DISubprogram(name: "MXUser_DisableStatsExclLock", scope: !21, file: !21, line: 159, type: !138, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!138 = !DISubroutineType(types: !139)
!139 = !{!114, !17}
!140 = !DILocalVariable(name: "lock", arg: 1, scope: !137, file: !21, line: 159, type: !17)
!141 = !DILocation(line: 159, column: 45, scope: !137)
!142 = !DILocation(line: 162, column: 26, scope: !137)
!143 = !DILocation(line: 162, column: 32, scope: !137)
!144 = !DILocation(line: 162, column: 4, scope: !137)
!145 = !DILocation(line: 168, column: 4, scope: !137)
!146 = distinct !DISubprogram(name: "MXUser_SetContentionRatioFloorExclLock", scope: !21, file: !21, line: 190, type: !147, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!147 = !DISubroutineType(types: !148)
!148 = !{!114, !17, !149}
!149 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!150 = !DILocalVariable(name: "lock", arg: 1, scope: !146, file: !21, line: 190, type: !17)
!151 = !DILocation(line: 190, column: 56, scope: !146)
!152 = !DILocalVariable(name: "ratio", arg: 2, scope: !146, file: !21, line: 191, type: !149)
!153 = !DILocation(line: 191, column: 47, scope: !146)
!154 = !DILocalVariable(name: "result", scope: !146, file: !21, line: 193, type: !114)
!155 = !DILocation(line: 193, column: 9, scope: !146)
!156 = !DILocation(line: 196, column: 26, scope: !146)
!157 = !DILocation(line: 196, column: 32, scope: !146)
!158 = !DILocation(line: 196, column: 4, scope: !146)
!159 = !DILocation(line: 201, column: 14, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !21, line: 200, column: 11)
!161 = distinct !DILexicalBlock(scope: !146, file: !21, line: 198, column: 8)
!162 = !DILocation(line: 204, column: 11, scope: !146)
!163 = !DILocation(line: 204, column: 4, scope: !146)
!164 = distinct !DISubprogram(name: "MXUser_SetContentionCountFloorExclLock", scope: !21, file: !21, line: 226, type: !165, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!165 = !DISubroutineType(types: !166)
!166 = !{!114, !17, !104}
!167 = !DILocalVariable(name: "lock", arg: 1, scope: !164, file: !21, line: 226, type: !17)
!168 = !DILocation(line: 226, column: 56, scope: !164)
!169 = !DILocalVariable(name: "count", arg: 2, scope: !164, file: !21, line: 227, type: !104)
!170 = !DILocation(line: 227, column: 47, scope: !164)
!171 = !DILocalVariable(name: "result", scope: !164, file: !21, line: 229, type: !114)
!172 = !DILocation(line: 229, column: 9, scope: !164)
!173 = !DILocation(line: 232, column: 26, scope: !164)
!174 = !DILocation(line: 232, column: 32, scope: !164)
!175 = !DILocation(line: 232, column: 4, scope: !164)
!176 = !DILocation(line: 237, column: 14, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !21, line: 236, column: 11)
!178 = distinct !DILexicalBlock(scope: !164, file: !21, line: 234, column: 8)
!179 = !DILocation(line: 240, column: 11, scope: !164)
!180 = !DILocation(line: 240, column: 4, scope: !164)
!181 = distinct !DISubprogram(name: "MXUser_SetContentionDurationFloorExclLock", scope: !21, file: !21, line: 262, type: !165, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!182 = !DILocalVariable(name: "lock", arg: 1, scope: !181, file: !21, line: 262, type: !17)
!183 = !DILocation(line: 262, column: 59, scope: !181)
!184 = !DILocalVariable(name: "duration", arg: 2, scope: !181, file: !21, line: 263, type: !104)
!185 = !DILocation(line: 263, column: 50, scope: !181)
!186 = !DILocalVariable(name: "result", scope: !181, file: !21, line: 265, type: !114)
!187 = !DILocation(line: 265, column: 9, scope: !181)
!188 = !DILocation(line: 268, column: 26, scope: !181)
!189 = !DILocation(line: 268, column: 32, scope: !181)
!190 = !DILocation(line: 268, column: 4, scope: !181)
!191 = !DILocation(line: 274, column: 14, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !21, line: 273, column: 11)
!193 = distinct !DILexicalBlock(scope: !181, file: !21, line: 270, column: 8)
!194 = !DILocation(line: 277, column: 11, scope: !181)
!195 = !DILocation(line: 277, column: 4, scope: !181)
!196 = distinct !DISubprogram(name: "MXUser_CreateExclLock", scope: !21, file: !21, line: 333, type: !197, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!197 = !DISubroutineType(types: !198)
!198 = !{!17, !199, !37}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!201 = !DILocalVariable(name: "userName", arg: 1, scope: !196, file: !21, line: 333, type: !199)
!202 = !DILocation(line: 333, column: 35, scope: !196)
!203 = !DILocalVariable(name: "rank", arg: 2, scope: !196, file: !21, line: 334, type: !37)
!204 = !DILocation(line: 334, column: 31, scope: !196)
!205 = !DILocalVariable(name: "statsMode", scope: !196, file: !21, line: 336, type: !28)
!206 = !DILocation(line: 336, column: 11, scope: !196)
!207 = !DILocalVariable(name: "properName", scope: !196, file: !21, line: 337, type: !34)
!208 = !DILocation(line: 337, column: 10, scope: !196)
!209 = !DILocalVariable(name: "lock", scope: !196, file: !21, line: 338, type: !17)
!210 = !DILocation(line: 338, column: 20, scope: !196)
!211 = !DILocation(line: 338, column: 27, scope: !196)
!212 = !DILocation(line: 340, column: 8, scope: !213)
!213 = distinct !DILexicalBlock(scope: !196, file: !21, line: 340, column: 8)
!214 = !DILocation(line: 340, column: 17, scope: !213)
!215 = !DILocation(line: 340, column: 8, scope: !196)
!216 = !DILocation(line: 341, column: 50, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !21, line: 340, column: 25)
!218 = !DILocation(line: 341, column: 20, scope: !219)
!219 = !DILexicalBlockFile(scope: !217, file: !21, discriminator: 1)
!220 = !DILocation(line: 341, column: 18, scope: !217)
!221 = !DILocation(line: 342, column: 4, scope: !217)
!222 = !DILocation(line: 343, column: 37, scope: !223)
!223 = distinct !DILexicalBlock(scope: !213, file: !21, line: 342, column: 11)
!224 = !DILocation(line: 343, column: 20, scope: !223)
!225 = !DILocation(line: 343, column: 18, scope: !223)
!226 = !DILocation(line: 346, column: 42, scope: !227)
!227 = distinct !DILexicalBlock(scope: !196, file: !21, line: 346, column: 8)
!228 = !DILocation(line: 346, column: 48, scope: !227)
!229 = !DILocation(line: 346, column: 27, scope: !227)
!230 = !DILocation(line: 346, column: 26, scope: !227)
!231 = !DILocation(line: 346, column: 25, scope: !227)
!232 = !DILocation(line: 346, column: 8, scope: !227)
!233 = !DILocation(line: 346, column: 8, scope: !196)
!234 = !DILocation(line: 347, column: 7, scope: !235)
!235 = distinct !DILexicalBlock(scope: !227, file: !21, line: 346, column: 69)
!236 = !DILocation(line: 350, column: 29, scope: !196)
!237 = !DILocation(line: 350, column: 4, scope: !196)
!238 = !DILocation(line: 350, column: 10, scope: !196)
!239 = !DILocation(line: 350, column: 17, scope: !196)
!240 = !DILocation(line: 350, column: 27, scope: !196)
!241 = !DILocation(line: 351, column: 24, scope: !196)
!242 = !DILocation(line: 351, column: 4, scope: !196)
!243 = !DILocation(line: 351, column: 10, scope: !196)
!244 = !DILocation(line: 351, column: 17, scope: !196)
!245 = !DILocation(line: 351, column: 22, scope: !196)
!246 = !DILocation(line: 352, column: 24, scope: !196)
!247 = !DILocation(line: 352, column: 4, scope: !196)
!248 = !DILocation(line: 352, column: 10, scope: !196)
!249 = !DILocation(line: 352, column: 17, scope: !196)
!250 = !DILocation(line: 352, column: 22, scope: !196)
!251 = !DILocation(line: 353, column: 37, scope: !196)
!252 = !DILocation(line: 353, column: 4, scope: !196)
!253 = !DILocation(line: 353, column: 10, scope: !196)
!254 = !DILocation(line: 353, column: 17, scope: !196)
!255 = !DILocation(line: 353, column: 22, scope: !196)
!256 = !DILocation(line: 353, column: 35, scope: !196)
!257 = !DILocation(line: 354, column: 4, scope: !196)
!258 = !DILocation(line: 354, column: 10, scope: !196)
!259 = !DILocation(line: 354, column: 17, scope: !196)
!260 = !DILocation(line: 354, column: 26, scope: !196)
!261 = !DILocation(line: 356, column: 16, scope: !196)
!262 = !DILocation(line: 356, column: 14, scope: !196)
!263 = !DILocation(line: 358, column: 12, scope: !196)
!264 = !DILocation(line: 358, column: 4, scope: !196)
!265 = !DILocation(line: 360, column: 27, scope: !266)
!266 = distinct !DILexicalBlock(scope: !196, file: !21, line: 358, column: 31)
!267 = !DILocation(line: 360, column: 33, scope: !266)
!268 = !DILocation(line: 360, column: 51, scope: !266)
!269 = !DILocation(line: 360, column: 57, scope: !266)
!270 = !DILocation(line: 360, column: 7, scope: !266)
!271 = !DILocation(line: 361, column: 7, scope: !266)
!272 = !DILocation(line: 361, column: 13, scope: !266)
!273 = !DILocation(line: 361, column: 20, scope: !266)
!274 = !DILocation(line: 361, column: 30, scope: !266)
!275 = !DILocation(line: 362, column: 7, scope: !266)
!276 = !DILocation(line: 365, column: 26, scope: !266)
!277 = !DILocation(line: 365, column: 32, scope: !266)
!278 = !DILocation(line: 365, column: 7, scope: !266)
!279 = !DILocation(line: 366, column: 7, scope: !266)
!280 = !DILocation(line: 366, column: 13, scope: !266)
!281 = !DILocation(line: 366, column: 20, scope: !266)
!282 = !DILocation(line: 366, column: 30, scope: !266)
!283 = !DILocation(line: 367, column: 7, scope: !266)
!284 = !DILocation(line: 370, column: 26, scope: !266)
!285 = !DILocation(line: 370, column: 32, scope: !266)
!286 = !DILocation(line: 370, column: 50, scope: !266)
!287 = !DILocation(line: 370, column: 56, scope: !266)
!288 = !DILocation(line: 370, column: 7, scope: !266)
!289 = !DILocation(line: 371, column: 7, scope: !266)
!290 = !DILocation(line: 371, column: 13, scope: !266)
!291 = !DILocation(line: 371, column: 20, scope: !266)
!292 = !DILocation(line: 371, column: 30, scope: !266)
!293 = !DILocation(line: 372, column: 7, scope: !266)
!294 = !DILocation(line: 375, column: 60, scope: !266)
!295 = !DILocation(line: 375, column: 7, scope: !266)
!296 = !DILocation(line: 378, column: 21, scope: !196)
!297 = !DILocation(line: 378, column: 27, scope: !196)
!298 = !DILocation(line: 378, column: 4, scope: !196)
!299 = !DILocation(line: 380, column: 11, scope: !196)
!300 = !DILocation(line: 380, column: 4, scope: !196)
!301 = distinct !DISubprogram(name: "MXRecLockInit", scope: !4, file: !4, line: 264, type: !302, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!302 = !DISubroutineType(types: !303)
!303 = !{!114, !304}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!305 = !DILocalVariable(name: "lock", arg: 1, scope: !301, file: !4, line: 264, type: !304)
!306 = !DILocation(line: 264, column: 26, scope: !301)
!307 = !DILocalVariable(name: "success", scope: !301, file: !4, line: 266, type: !114)
!308 = !DILocation(line: 266, column: 9, scope: !301)
!309 = !DILocation(line: 266, column: 44, scope: !301)
!310 = !DILocation(line: 266, column: 20, scope: !301)
!311 = !DILocation(line: 266, column: 50, scope: !301)
!312 = !DILocation(line: 266, column: 19, scope: !301)
!313 = !DILocation(line: 268, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !301, file: !4, line: 268, column: 8)
!315 = !DILocation(line: 268, column: 8, scope: !301)
!316 = !DILocation(line: 269, column: 27, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !4, line: 268, column: 17)
!318 = !DILocation(line: 269, column: 7, scope: !317)
!319 = !DILocation(line: 271, column: 7, scope: !317)
!320 = !DILocation(line: 271, column: 13, scope: !317)
!321 = !DILocation(line: 271, column: 28, scope: !317)
!322 = !DILocation(line: 272, column: 4, scope: !317)
!323 = !DILocation(line: 274, column: 11, scope: !301)
!324 = !DILocation(line: 274, column: 4, scope: !301)
!325 = distinct !DISubprogram(name: "MXUserDumpExclLock", scope: !21, file: !21, line: 298, type: !326, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !130}
!328 = !DILocalVariable(name: "header", arg: 1, scope: !325, file: !21, line: 298, type: !130)
!329 = !DILocation(line: 298, column: 34, scope: !325)
!330 = !DILocalVariable(name: "lock", scope: !325, file: !21, line: 300, type: !17)
!331 = !DILocation(line: 300, column: 20, scope: !325)
!332 = !DILocation(line: 300, column: 46, scope: !325)
!333 = !DILocation(line: 300, column: 27, scope: !325)
!334 = !DILocation(line: 302, column: 55, scope: !325)
!335 = !DILocation(line: 302, column: 4, scope: !325)
!336 = !DILocation(line: 304, column: 34, scope: !325)
!337 = !DILocation(line: 304, column: 40, scope: !325)
!338 = !DILocation(line: 304, column: 47, scope: !325)
!339 = !DILocation(line: 304, column: 4, scope: !325)
!340 = !DILocation(line: 305, column: 27, scope: !325)
!341 = !DILocation(line: 305, column: 33, scope: !325)
!342 = !DILocation(line: 305, column: 40, scope: !325)
!343 = !DILocation(line: 305, column: 4, scope: !325)
!344 = !DILocation(line: 306, column: 29, scope: !325)
!345 = !DILocation(line: 306, column: 35, scope: !325)
!346 = !DILocation(line: 306, column: 42, scope: !325)
!347 = !DILocation(line: 306, column: 4, scope: !325)
!348 = !DILocation(line: 307, column: 36, scope: !325)
!349 = !DILocation(line: 307, column: 42, scope: !325)
!350 = !DILocation(line: 307, column: 49, scope: !325)
!351 = !DILocation(line: 307, column: 54, scope: !325)
!352 = !DILocation(line: 307, column: 4, scope: !325)
!353 = !DILocation(line: 309, column: 49, scope: !325)
!354 = !DILocation(line: 309, column: 55, scope: !325)
!355 = !DILocation(line: 309, column: 33, scope: !325)
!356 = !DILocation(line: 309, column: 4, scope: !357)
!357 = !DILexicalBlockFile(scope: !325, file: !21, discriminator: 1)
!358 = !DILocation(line: 312, column: 13, scope: !325)
!359 = !DILocation(line: 312, column: 19, scope: !325)
!360 = !DILocation(line: 312, column: 33, scope: !325)
!361 = !DILocation(line: 311, column: 4, scope: !325)
!362 = !DILocation(line: 313, column: 1, scope: !325)
!363 = distinct !DISubprogram(name: "MXUserStatsActionExcl", scope: !21, file: !21, line: 52, type: !326, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!364 = !DILocalVariable(name: "header", arg: 1, scope: !363, file: !21, line: 52, type: !130)
!365 = !DILocation(line: 52, column: 37, scope: !363)
!366 = !DILocalVariable(name: "lock", scope: !363, file: !21, line: 54, type: !17)
!367 = !DILocation(line: 54, column: 20, scope: !363)
!368 = !DILocation(line: 54, column: 46, scope: !363)
!369 = !DILocation(line: 54, column: 27, scope: !363)
!370 = !DILocalVariable(name: "heldStats", scope: !363, file: !21, line: 55, type: !371)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHeldStats", file: !4, line: 569, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 564, size: 512, align: 64, elements: !374)
!374 = !{!375, !379, !389}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "holdStart", scope: !373, file: !4, line: 566, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmTimeType", file: !29, line: 354, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !29, line: 172, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !31, line: 40, baseType: !90)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !373, file: !4, line: 567, baseType: !380, size: 384, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserBasicStats", file: !4, line: 539, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 532, size: 384, align: 64, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "typeName", scope: !381, file: !4, line: 533, baseType: !34, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "numSamples", scope: !381, file: !4, line: 534, baseType: !104, size: 64, align: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "minTime", scope: !381, file: !4, line: 535, baseType: !104, size: 64, align: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "maxTime", scope: !381, file: !4, line: 536, baseType: !104, size: 64, align: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "timeSum", scope: !381, file: !4, line: 537, baseType: !104, size: 64, align: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "timeSquaredSum", scope: !381, file: !4, line: 538, baseType: !149, size: 64, align: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "histo", scope: !373, file: !4, line: 568, baseType: !97, size: 64, align: 64, offset: 448)
!390 = !DILocation(line: 55, column: 21, scope: !363)
!391 = !DILocation(line: 55, column: 49, scope: !363)
!392 = !DILocation(line: 55, column: 55, scope: !363)
!393 = !DILocation(line: 55, column: 33, scope: !363)
!394 = !DILocalVariable(name: "acquireStats", scope: !363, file: !21, line: 56, type: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserAcquireStats", file: !4, line: 562, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 558, size: 960, align: 64, elements: !398)
!398 = !{!399, !412}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !397, file: !4, line: 560, baseType: !400, size: 896, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserAcquisitionStats", file: !4, line: 552, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 541, size: 896, align: 64, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "contentionRatioFloor", scope: !401, file: !4, line: 542, baseType: !149, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "contentionCountFloor", scope: !401, file: !4, line: 543, baseType: !104, size: 64, align: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "contentionDurationFloor", scope: !401, file: !4, line: 544, baseType: !104, size: 64, align: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "numAttempts", scope: !401, file: !4, line: 545, baseType: !104, size: 64, align: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "numSuccesses", scope: !401, file: !4, line: 546, baseType: !104, size: 64, align: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "numSuccessesContended", scope: !401, file: !4, line: 547, baseType: !104, size: 64, align: 64, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "successContentionTime", scope: !401, file: !4, line: 548, baseType: !104, size: 64, align: 64, offset: 384)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "totalContentionTime", scope: !401, file: !4, line: 549, baseType: !104, size: 64, align: 64, offset: 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "basicStats", scope: !401, file: !4, line: 551, baseType: !380, size: 384, align: 64, offset: 512)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "histo", scope: !397, file: !4, line: 561, baseType: !97, size: 64, align: 64, offset: 896)
!413 = !DILocation(line: 56, column: 24, scope: !363)
!414 = !DILocation(line: 56, column: 55, scope: !363)
!415 = !DILocation(line: 56, column: 61, scope: !363)
!416 = !DILocation(line: 56, column: 39, scope: !363)
!417 = !DILocation(line: 58, column: 26, scope: !418)
!418 = distinct !DILexicalBlock(scope: !363, file: !21, line: 58, column: 8)
!419 = !DILocation(line: 58, column: 36, scope: !418)
!420 = !DILocation(line: 58, column: 25, scope: !418)
!421 = !DILocation(line: 58, column: 8, scope: !418)
!422 = !DILocation(line: 58, column: 8, scope: !363)
!423 = !DILocation(line: 59, column: 29, scope: !424)
!424 = distinct !DILexicalBlock(scope: !418, file: !21, line: 58, column: 14)
!425 = !DILocation(line: 59, column: 40, scope: !424)
!426 = !DILocation(line: 59, column: 46, scope: !424)
!427 = !DILocation(line: 59, column: 7, scope: !424)
!428 = !DILocation(line: 61, column: 27, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !21, line: 61, column: 11)
!430 = !DILocation(line: 61, column: 38, scope: !429)
!431 = !DILocation(line: 61, column: 11, scope: !429)
!432 = !DILocation(line: 61, column: 45, scope: !429)
!433 = !DILocation(line: 61, column: 11, scope: !424)
!434 = !DILocation(line: 62, column: 42, scope: !435)
!435 = distinct !DILexicalBlock(scope: !429, file: !21, line: 61, column: 53)
!436 = !DILocation(line: 62, column: 53, scope: !435)
!437 = !DILocation(line: 62, column: 26, scope: !435)
!438 = !DILocation(line: 62, column: 61, scope: !435)
!439 = !DILocation(line: 62, column: 10, scope: !440)
!440 = !DILexicalBlockFile(scope: !435, file: !21, discriminator: 1)
!441 = !DILocation(line: 63, column: 7, scope: !435)
!442 = !DILocation(line: 64, column: 4, scope: !424)
!443 = !DILocation(line: 66, column: 28, scope: !444)
!444 = distinct !DILexicalBlock(scope: !363, file: !21, line: 66, column: 8)
!445 = !DILocation(line: 66, column: 41, scope: !444)
!446 = !DILocation(line: 66, column: 26, scope: !444)
!447 = !DILocation(line: 66, column: 25, scope: !444)
!448 = !DILocation(line: 66, column: 8, scope: !444)
!449 = !DILocation(line: 66, column: 8, scope: !363)
!450 = !DILocalVariable(name: "isHot", scope: !451, file: !21, line: 67, type: !114)
!451 = distinct !DILexicalBlock(scope: !444, file: !21, line: 66, column: 14)
!452 = !DILocation(line: 67, column: 12, scope: !451)
!453 = !DILocalVariable(name: "doLog", scope: !451, file: !21, line: 68, type: !114)
!454 = !DILocation(line: 68, column: 12, scope: !451)
!455 = !DILocalVariable(name: "contentionRatio", scope: !451, file: !21, line: 69, type: !149)
!456 = !DILocation(line: 69, column: 14, scope: !451)
!457 = !DILocation(line: 75, column: 35, scope: !451)
!458 = !DILocation(line: 75, column: 49, scope: !451)
!459 = !DILocation(line: 75, column: 55, scope: !451)
!460 = !DILocation(line: 75, column: 7, scope: !451)
!461 = !DILocation(line: 77, column: 27, scope: !462)
!462 = distinct !DILexicalBlock(scope: !451, file: !21, line: 77, column: 11)
!463 = !DILocation(line: 77, column: 41, scope: !462)
!464 = !DILocation(line: 77, column: 11, scope: !462)
!465 = !DILocation(line: 77, column: 48, scope: !462)
!466 = !DILocation(line: 77, column: 11, scope: !451)
!467 = !DILocation(line: 78, column: 42, scope: !468)
!468 = distinct !DILexicalBlock(scope: !462, file: !21, line: 77, column: 56)
!469 = !DILocation(line: 78, column: 56, scope: !468)
!470 = !DILocation(line: 78, column: 26, scope: !468)
!471 = !DILocation(line: 78, column: 64, scope: !468)
!472 = !DILocation(line: 78, column: 10, scope: !473)
!473 = !DILexicalBlockFile(scope: !468, file: !21, discriminator: 1)
!474 = !DILocation(line: 79, column: 7, scope: !468)
!475 = !DILocation(line: 85, column: 22, scope: !451)
!476 = !DILocation(line: 85, column: 36, scope: !451)
!477 = !DILocation(line: 85, column: 7, scope: !451)
!478 = !DILocation(line: 87, column: 29, scope: !479)
!479 = distinct !DILexicalBlock(scope: !451, file: !21, line: 87, column: 11)
!480 = !DILocation(line: 87, column: 28, scope: !479)
!481 = !DILocation(line: 87, column: 11, scope: !479)
!482 = !DILocation(line: 87, column: 11, scope: !451)
!483 = !DILocation(line: 88, column: 39, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !21, line: 87, column: 41)
!485 = !DILocation(line: 88, column: 45, scope: !484)
!486 = !DILocation(line: 88, column: 10, scope: !484)
!487 = !DILocation(line: 92, column: 32, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !21, line: 92, column: 14)
!489 = !DILocation(line: 92, column: 42, scope: !488)
!490 = !DILocation(line: 92, column: 31, scope: !488)
!491 = !DILocation(line: 92, column: 14, scope: !488)
!492 = !DILocation(line: 92, column: 14, scope: !484)
!493 = !DILocation(line: 93, column: 35, scope: !494)
!494 = distinct !DILexicalBlock(scope: !488, file: !21, line: 92, column: 20)
!495 = !DILocation(line: 93, column: 41, scope: !494)
!496 = !DILocation(line: 93, column: 13, scope: !494)
!497 = !DILocation(line: 96, column: 10, scope: !494)
!498 = !DILocation(line: 98, column: 14, scope: !499)
!499 = distinct !DILexicalBlock(scope: !484, file: !21, line: 98, column: 14)
!500 = !DILocation(line: 98, column: 14, scope: !484)
!501 = !DILocation(line: 100, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !21, line: 98, column: 21)
!503 = !DILocation(line: 100, column: 23, scope: !502)
!504 = !DILocation(line: 100, column: 30, scope: !502)
!505 = !DILocation(line: 100, column: 36, scope: !502)
!506 = !DILocation(line: 99, column: 13, scope: !502)
!507 = !DILocation(line: 101, column: 10, scope: !502)
!508 = !DILocation(line: 102, column: 7, scope: !484)
!509 = !DILocation(line: 103, column: 4, scope: !451)
!510 = !DILocation(line: 104, column: 1, scope: !363)
!511 = distinct !DISubprogram(name: "MXUser_DestroyExclLock", scope: !21, file: !21, line: 401, type: !512, isLocal: false, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !17}
!514 = !DILocalVariable(name: "lock", arg: 1, scope: !511, file: !21, line: 401, type: !17)
!515 = !DILocation(line: 401, column: 40, scope: !511)
!516 = !DILocation(line: 403, column: 8, scope: !517)
!517 = distinct !DILexicalBlock(scope: !511, file: !21, line: 403, column: 8)
!518 = !DILocation(line: 403, column: 13, scope: !517)
!519 = !DILocation(line: 403, column: 8, scope: !511)
!520 = !DILocation(line: 404, column: 29, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !21, line: 403, column: 21)
!522 = !DILocation(line: 404, column: 35, scope: !521)
!523 = !DILocation(line: 404, column: 7, scope: !521)
!524 = !DILocation(line: 406, column: 27, scope: !525)
!525 = distinct !DILexicalBlock(scope: !521, file: !21, line: 406, column: 11)
!526 = !DILocation(line: 406, column: 33, scope: !525)
!527 = !DILocation(line: 406, column: 11, scope: !525)
!528 = !DILocation(line: 406, column: 48, scope: !525)
!529 = !DILocation(line: 406, column: 11, scope: !521)
!530 = !DILocation(line: 407, column: 30, scope: !531)
!531 = distinct !DILexicalBlock(scope: !525, file: !21, line: 406, column: 53)
!532 = !DILocation(line: 407, column: 36, scope: !531)
!533 = !DILocation(line: 407, column: 10, scope: !531)
!534 = !DILocation(line: 410, column: 7, scope: !531)
!535 = !DILocation(line: 412, column: 25, scope: !521)
!536 = !DILocation(line: 412, column: 31, scope: !521)
!537 = !DILocation(line: 412, column: 7, scope: !521)
!538 = !DILocation(line: 414, column: 29, scope: !521)
!539 = !DILocation(line: 414, column: 35, scope: !521)
!540 = !DILocation(line: 414, column: 7, scope: !521)
!541 = !DILocation(line: 420, column: 7, scope: !521)
!542 = !DILocation(line: 420, column: 13, scope: !521)
!543 = !DILocation(line: 420, column: 20, scope: !521)
!544 = !DILocation(line: 420, column: 30, scope: !521)
!545 = !DILocation(line: 421, column: 12, scope: !521)
!546 = !DILocation(line: 421, column: 18, scope: !521)
!547 = !DILocation(line: 421, column: 25, scope: !521)
!548 = !DILocation(line: 421, column: 7, scope: !521)
!549 = !DILocation(line: 422, column: 7, scope: !521)
!550 = !DILocation(line: 422, column: 13, scope: !521)
!551 = !DILocation(line: 422, column: 20, scope: !521)
!552 = !DILocation(line: 422, column: 25, scope: !521)
!553 = !DILocation(line: 423, column: 12, scope: !521)
!554 = !DILocation(line: 423, column: 7, scope: !521)
!555 = !DILocation(line: 424, column: 4, scope: !521)
!556 = !DILocation(line: 425, column: 1, scope: !511)
!557 = distinct !DISubprogram(name: "MXRecLockCount", scope: !4, file: !4, line: 290, type: !558, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!558 = !DISubroutineType(types: !559)
!559 = !{!70, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!562 = !DILocalVariable(name: "lock", arg: 1, scope: !557, file: !4, line: 290, type: !560)
!563 = !DILocation(line: 290, column: 33, scope: !557)
!564 = !DILocation(line: 295, column: 11, scope: !557)
!565 = !DILocation(line: 295, column: 17, scope: !557)
!566 = !DILocation(line: 295, column: 4, scope: !557)
!567 = distinct !DISubprogram(name: "MXRecLockDestroy", scope: !4, file: !4, line: 279, type: !568, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !304}
!570 = !DILocalVariable(name: "lock", arg: 1, scope: !567, file: !4, line: 279, type: !304)
!571 = !DILocation(line: 279, column: 29, scope: !567)
!572 = !DILocalVariable(name: "err", scope: !567, file: !4, line: 281, type: !70)
!573 = !DILocation(line: 281, column: 8, scope: !567)
!574 = !DILocation(line: 281, column: 39, scope: !567)
!575 = !DILocation(line: 281, column: 14, scope: !567)
!576 = !DILocation(line: 286, column: 1, scope: !567)
!577 = distinct !DISubprogram(name: "MXUser_AcquireExclLock", scope: !21, file: !21, line: 445, type: !512, isLocal: false, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!578 = !DILocalVariable(name: "lock", arg: 1, scope: !577, file: !21, line: 445, type: !17)
!579 = !DILocation(line: 445, column: 40, scope: !577)
!580 = !DILocation(line: 448, column: 26, scope: !577)
!581 = !DILocation(line: 448, column: 32, scope: !577)
!582 = !DILocation(line: 448, column: 4, scope: !577)
!583 = !DILocation(line: 450, column: 31, scope: !577)
!584 = !DILocation(line: 450, column: 37, scope: !577)
!585 = !DILocation(line: 450, column: 4, scope: !577)
!586 = !DILocation(line: 482, column: 25, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !21, line: 481, column: 11)
!588 = distinct !DILexicalBlock(scope: !577, file: !21, line: 452, column: 8)
!589 = !DILocation(line: 482, column: 31, scope: !587)
!590 = !DILocation(line: 482, column: 7, scope: !587)
!591 = !DILocation(line: 491, column: 1, scope: !577)
!592 = distinct !DISubprogram(name: "MXUserAcquisitionTracking", scope: !4, file: !4, line: 494, type: !593, isLocal: true, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !130, !114}
!595 = !DILocalVariable(name: "header", arg: 1, scope: !592, file: !4, line: 494, type: !130)
!596 = !DILocation(line: 494, column: 41, scope: !592)
!597 = !DILocalVariable(name: "checkRank", arg: 2, scope: !592, file: !4, line: 495, type: !114)
!598 = !DILocation(line: 495, column: 32, scope: !592)
!599 = !DILocation(line: 497, column: 4, scope: !592)
!600 = distinct !DISubprogram(name: "MXRecLockAcquire", scope: !4, file: !4, line: 328, type: !601, isLocal: true, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !304, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!604 = !DILocalVariable(name: "lock", arg: 1, scope: !600, file: !4, line: 328, type: !304)
!605 = !DILocation(line: 328, column: 29, scope: !600)
!606 = !DILocalVariable(name: "duration", arg: 2, scope: !600, file: !4, line: 329, type: !603)
!607 = !DILocation(line: 329, column: 30, scope: !600)
!608 = !DILocalVariable(name: "err", scope: !600, file: !4, line: 331, type: !70)
!609 = !DILocation(line: 331, column: 8, scope: !600)
!610 = !DILocation(line: 333, column: 41, scope: !611)
!611 = distinct !DILexicalBlock(scope: !600, file: !4, line: 333, column: 8)
!612 = !DILocation(line: 333, column: 26, scope: !611)
!613 = !DILocation(line: 333, column: 47, scope: !611)
!614 = !DILocation(line: 333, column: 25, scope: !611)
!615 = !DILocation(line: 333, column: 8, scope: !611)
!616 = !DILocation(line: 333, column: 56, scope: !611)
!617 = !DILocation(line: 333, column: 76, scope: !618)
!618 = !DILexicalBlockFile(scope: !611, file: !4, discriminator: 1)
!619 = !DILocation(line: 333, column: 59, scope: !618)
!620 = !DILocation(line: 333, column: 8, scope: !618)
!621 = !DILocation(line: 334, column: 25, scope: !622)
!622 = distinct !DILexicalBlock(scope: !611, file: !4, line: 333, column: 83)
!623 = !DILocation(line: 334, column: 7, scope: !622)
!624 = !DILocation(line: 336, column: 11, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !4, line: 336, column: 11)
!626 = !DILocation(line: 336, column: 20, scope: !625)
!627 = !DILocation(line: 336, column: 11, scope: !622)
!628 = !DILocation(line: 337, column: 11, scope: !629)
!629 = distinct !DILexicalBlock(scope: !625, file: !4, line: 336, column: 28)
!630 = !DILocation(line: 337, column: 20, scope: !629)
!631 = !DILocation(line: 338, column: 7, scope: !629)
!632 = !DILocation(line: 340, column: 7, scope: !622)
!633 = !DILocation(line: 343, column: 28, scope: !634)
!634 = distinct !DILexicalBlock(scope: !600, file: !4, line: 343, column: 8)
!635 = !DILocation(line: 343, column: 37, scope: !634)
!636 = !DILocation(line: 343, column: 26, scope: !634)
!637 = !DILocation(line: 343, column: 25, scope: !634)
!638 = !DILocation(line: 343, column: 8, scope: !634)
!639 = !DILocation(line: 343, column: 8, scope: !600)
!640 = !DILocation(line: 344, column: 38, scope: !641)
!641 = distinct !DILexicalBlock(scope: !634, file: !4, line: 343, column: 14)
!642 = !DILocation(line: 344, column: 13, scope: !641)
!643 = !DILocation(line: 344, column: 11, scope: !641)
!644 = !DILocation(line: 345, column: 4, scope: !641)
!645 = !DILocalVariable(name: "start", scope: !646, file: !4, line: 346, type: !376)
!646 = distinct !DILexicalBlock(scope: !634, file: !4, line: 345, column: 11)
!647 = !DILocation(line: 346, column: 18, scope: !646)
!648 = !DILocation(line: 346, column: 26, scope: !646)
!649 = !DILocation(line: 348, column: 38, scope: !646)
!650 = !DILocation(line: 348, column: 13, scope: !646)
!651 = !DILocation(line: 348, column: 11, scope: !646)
!652 = !DILocation(line: 350, column: 19, scope: !646)
!653 = !DILocation(line: 350, column: 46, scope: !646)
!654 = !DILocation(line: 350, column: 44, scope: !646)
!655 = !DILocation(line: 350, column: 8, scope: !646)
!656 = !DILocation(line: 350, column: 17, scope: !646)
!657 = !DILocation(line: 359, column: 22, scope: !600)
!658 = !DILocation(line: 359, column: 4, scope: !600)
!659 = !DILocation(line: 361, column: 4, scope: !600)
!660 = !DILocation(line: 362, column: 1, scope: !600)
!661 = distinct !DISubprogram(name: "MXUser_ReleaseExclLock", scope: !21, file: !21, line: 511, type: !512, isLocal: false, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!662 = !DILocalVariable(name: "lock", arg: 1, scope: !661, file: !21, line: 511, type: !17)
!663 = !DILocation(line: 511, column: 40, scope: !661)
!664 = !DILocation(line: 514, column: 26, scope: !661)
!665 = !DILocation(line: 514, column: 32, scope: !661)
!666 = !DILocation(line: 514, column: 4, scope: !661)
!667 = !DILocation(line: 545, column: 27, scope: !661)
!668 = !DILocation(line: 545, column: 33, scope: !661)
!669 = !DILocation(line: 545, column: 4, scope: !661)
!670 = !DILocation(line: 547, column: 22, scope: !661)
!671 = !DILocation(line: 547, column: 28, scope: !661)
!672 = !DILocation(line: 547, column: 4, scope: !661)
!673 = !DILocation(line: 548, column: 1, scope: !661)
!674 = distinct !DISubprogram(name: "MXUserReleaseTracking", scope: !4, file: !4, line: 501, type: !326, isLocal: true, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!675 = !DILocalVariable(name: "header", arg: 1, scope: !674, file: !4, line: 501, type: !130)
!676 = !DILocation(line: 501, column: 37, scope: !674)
!677 = !DILocation(line: 503, column: 4, scope: !674)
!678 = distinct !DISubprogram(name: "MXRecLockRelease", scope: !4, file: !4, line: 393, type: !568, isLocal: true, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!679 = !DILocalVariable(name: "lock", arg: 1, scope: !678, file: !4, line: 393, type: !304)
!680 = !DILocation(line: 393, column: 29, scope: !678)
!681 = !DILocation(line: 395, column: 22, scope: !678)
!682 = !DILocation(line: 395, column: 4, scope: !678)
!683 = !DILocation(line: 397, column: 43, scope: !684)
!684 = distinct !DILexicalBlock(scope: !678, file: !4, line: 397, column: 8)
!685 = !DILocation(line: 397, column: 28, scope: !684)
!686 = !DILocation(line: 397, column: 49, scope: !684)
!687 = !DILocation(line: 397, column: 26, scope: !684)
!688 = !DILocation(line: 397, column: 25, scope: !684)
!689 = !DILocation(line: 397, column: 8, scope: !684)
!690 = !DILocation(line: 397, column: 8, scope: !678)
!691 = !DILocalVariable(name: "err", scope: !692, file: !4, line: 398, type: !70)
!692 = distinct !DILexicalBlock(scope: !684, file: !4, line: 397, column: 60)
!693 = !DILocation(line: 398, column: 11, scope: !692)
!694 = !DILocation(line: 398, column: 42, scope: !692)
!695 = !DILocation(line: 398, column: 17, scope: !692)
!696 = !DILocation(line: 404, column: 4, scope: !692)
!697 = !DILocation(line: 405, column: 1, scope: !678)
!698 = distinct !DISubprogram(name: "MXUser_TryAcquireExclLock", scope: !21, file: !21, line: 573, type: !138, isLocal: false, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!699 = !DILocalVariable(name: "lock", arg: 1, scope: !698, file: !21, line: 573, type: !17)
!700 = !DILocation(line: 573, column: 43, scope: !698)
!701 = !DILocalVariable(name: "success", scope: !698, file: !21, line: 575, type: !114)
!702 = !DILocation(line: 575, column: 9, scope: !698)
!703 = !DILocation(line: 578, column: 26, scope: !698)
!704 = !DILocation(line: 578, column: 32, scope: !698)
!705 = !DILocation(line: 578, column: 4, scope: !698)
!706 = !DILocation(line: 580, column: 29, scope: !707)
!707 = distinct !DILexicalBlock(scope: !698, file: !21, line: 580, column: 8)
!708 = !DILocation(line: 580, column: 35, scope: !707)
!709 = !DILocation(line: 580, column: 42, scope: !707)
!710 = !DILocation(line: 580, column: 8, scope: !707)
!711 = !DILocation(line: 580, column: 8, scope: !698)
!712 = !DILocation(line: 581, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !707, file: !21, line: 580, column: 49)
!714 = !DILocation(line: 584, column: 35, scope: !698)
!715 = !DILocation(line: 584, column: 41, scope: !698)
!716 = !DILocation(line: 584, column: 14, scope: !698)
!717 = !DILocation(line: 584, column: 12, scope: !698)
!718 = !DILocation(line: 586, column: 8, scope: !719)
!719 = distinct !DILexicalBlock(scope: !698, file: !21, line: 586, column: 8)
!720 = !DILocation(line: 586, column: 8, scope: !698)
!721 = !DILocation(line: 587, column: 34, scope: !722)
!722 = distinct !DILexicalBlock(scope: !719, file: !21, line: 586, column: 17)
!723 = !DILocation(line: 587, column: 40, scope: !722)
!724 = !DILocation(line: 587, column: 7, scope: !722)
!725 = !DILocation(line: 594, column: 4, scope: !722)
!726 = !DILocation(line: 607, column: 11, scope: !698)
!727 = !DILocation(line: 607, column: 4, scope: !698)
!728 = !DILocation(line: 608, column: 1, scope: !698)
!729 = distinct !DISubprogram(name: "MXUserTryAcquireFail", scope: !4, file: !4, line: 515, type: !730, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!730 = !DISubroutineType(types: !731)
!731 = !{!114, !199}
!732 = !DILocalVariable(name: "name", arg: 1, scope: !729, file: !4, line: 515, type: !199)
!733 = !DILocation(line: 515, column: 34, scope: !729)
!734 = !DILocation(line: 519, column: 4, scope: !729)
!735 = distinct !DISubprogram(name: "MXRecLockTryAcquire", scope: !4, file: !4, line: 366, type: !302, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!736 = !DILocalVariable(name: "lock", arg: 1, scope: !735, file: !4, line: 366, type: !304)
!737 = !DILocation(line: 366, column: 32, scope: !735)
!738 = !DILocalVariable(name: "err", scope: !735, file: !4, line: 368, type: !70)
!739 = !DILocation(line: 368, column: 8, scope: !735)
!740 = !DILocation(line: 370, column: 41, scope: !741)
!741 = distinct !DILexicalBlock(scope: !735, file: !4, line: 370, column: 8)
!742 = !DILocation(line: 370, column: 26, scope: !741)
!743 = !DILocation(line: 370, column: 47, scope: !741)
!744 = !DILocation(line: 370, column: 25, scope: !741)
!745 = !DILocation(line: 370, column: 8, scope: !741)
!746 = !DILocation(line: 370, column: 56, scope: !741)
!747 = !DILocation(line: 370, column: 76, scope: !748)
!748 = !DILexicalBlockFile(scope: !741, file: !4, discriminator: 1)
!749 = !DILocation(line: 370, column: 59, scope: !748)
!750 = !DILocation(line: 370, column: 8, scope: !748)
!751 = !DILocation(line: 371, column: 25, scope: !752)
!752 = distinct !DILexicalBlock(scope: !741, file: !4, line: 370, column: 83)
!753 = !DILocation(line: 371, column: 7, scope: !752)
!754 = !DILocation(line: 373, column: 7, scope: !752)
!755 = !DILocation(line: 376, column: 38, scope: !735)
!756 = !DILocation(line: 376, column: 10, scope: !735)
!757 = !DILocation(line: 376, column: 8, scope: !735)
!758 = !DILocation(line: 378, column: 28, scope: !759)
!759 = distinct !DILexicalBlock(scope: !735, file: !4, line: 378, column: 8)
!760 = !DILocation(line: 378, column: 32, scope: !759)
!761 = !DILocation(line: 378, column: 26, scope: !759)
!762 = !DILocation(line: 378, column: 25, scope: !759)
!763 = !DILocation(line: 378, column: 8, scope: !759)
!764 = !DILocation(line: 378, column: 8, scope: !735)
!765 = !DILocation(line: 379, column: 25, scope: !766)
!766 = distinct !DILexicalBlock(scope: !759, file: !4, line: 378, column: 43)
!767 = !DILocation(line: 379, column: 7, scope: !766)
!768 = !DILocation(line: 381, column: 7, scope: !766)
!769 = !DILocation(line: 388, column: 4, scope: !735)
!770 = !DILocation(line: 389, column: 1, scope: !735)
!771 = distinct !DISubprogram(name: "MXUser_IsCurThreadHoldingExclLock", scope: !21, file: !21, line: 629, type: !138, isLocal: false, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!772 = !DILocalVariable(name: "lock", arg: 1, scope: !771, file: !21, line: 629, type: !17)
!773 = !DILocation(line: 629, column: 51, scope: !771)
!774 = !DILocation(line: 632, column: 26, scope: !771)
!775 = !DILocation(line: 632, column: 32, scope: !771)
!776 = !DILocation(line: 632, column: 4, scope: !771)
!777 = !DILocation(line: 634, column: 29, scope: !771)
!778 = !DILocation(line: 634, column: 35, scope: !771)
!779 = !DILocation(line: 634, column: 11, scope: !771)
!780 = !DILocation(line: 634, column: 4, scope: !771)
!781 = distinct !DISubprogram(name: "MXRecLockIsOwner", scope: !4, file: !4, line: 220, type: !782, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!782 = !DISubroutineType(types: !783)
!783 = !{!114, !560}
!784 = !DILocalVariable(name: "lock", arg: 1, scope: !781, file: !4, line: 220, type: !560)
!785 = !DILocation(line: 220, column: 35, scope: !781)
!786 = !DILocation(line: 222, column: 25, scope: !781)
!787 = !DILocation(line: 222, column: 31, scope: !781)
!788 = !DILocation(line: 222, column: 47, scope: !781)
!789 = !DILocation(line: 222, column: 11, scope: !790)
!790 = !DILexicalBlockFile(scope: !781, file: !4, discriminator: 1)
!791 = !DILocation(line: 222, column: 11, scope: !781)
!792 = !DILocation(line: 222, column: 4, scope: !781)
!793 = distinct !DISubprogram(name: "MXUser_CreateSingletonExclLockInt", scope: !21, file: !21, line: 658, type: !794, isLocal: false, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!794 = !DISubroutineType(types: !795)
!795 = !{!17, !796, !199, !37}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!797 = !DILocalVariable(name: "lockStorage", arg: 1, scope: !793, file: !21, line: 658, type: !796)
!798 = !DILocation(line: 658, column: 47, scope: !793)
!799 = !DILocalVariable(name: "name", arg: 2, scope: !793, file: !21, line: 659, type: !199)
!800 = !DILocation(line: 659, column: 47, scope: !793)
!801 = !DILocalVariable(name: "rank", arg: 3, scope: !793, file: !21, line: 660, type: !37)
!802 = !DILocation(line: 660, column: 43, scope: !793)
!803 = !DILocalVariable(name: "lock", scope: !793, file: !21, line: 662, type: !17)
!804 = !DILocation(line: 662, column: 20, scope: !793)
!805 = !DILocation(line: 666, column: 26, scope: !793)
!806 = !DILocation(line: 666, column: 11, scope: !793)
!807 = !DILocation(line: 666, column: 9, scope: !793)
!808 = !DILocation(line: 668, column: 26, scope: !809)
!809 = distinct !DILexicalBlock(scope: !793, file: !21, line: 668, column: 8)
!810 = !DILocation(line: 668, column: 31, scope: !809)
!811 = !DILocation(line: 668, column: 25, scope: !809)
!812 = !DILocation(line: 668, column: 8, scope: !809)
!813 = !DILocation(line: 668, column: 8, scope: !793)
!814 = !DILocalVariable(name: "newLock", scope: !815, file: !21, line: 669, type: !17)
!815 = distinct !DILexicalBlock(scope: !809, file: !21, line: 668, column: 14)
!816 = !DILocation(line: 669, column: 23, scope: !815)
!817 = !DILocation(line: 669, column: 55, scope: !815)
!818 = !DILocation(line: 669, column: 61, scope: !815)
!819 = !DILocation(line: 669, column: 33, scope: !815)
!820 = !DILocation(line: 671, column: 41, scope: !815)
!821 = !DILocation(line: 671, column: 68, scope: !815)
!822 = !DILocation(line: 671, column: 59, scope: !815)
!823 = !DILocation(line: 671, column: 14, scope: !815)
!824 = !DILocation(line: 671, column: 12, scope: !815)
!825 = !DILocation(line: 673, column: 11, scope: !826)
!826 = distinct !DILexicalBlock(scope: !815, file: !21, line: 673, column: 11)
!827 = !DILocation(line: 673, column: 11, scope: !815)
!828 = !DILocation(line: 674, column: 33, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !21, line: 673, column: 17)
!830 = !DILocation(line: 674, column: 10, scope: !829)
!831 = !DILocation(line: 675, column: 7, scope: !829)
!832 = !DILocation(line: 676, column: 32, scope: !833)
!833 = distinct !DILexicalBlock(scope: !826, file: !21, line: 675, column: 14)
!834 = !DILocation(line: 676, column: 17, scope: !833)
!835 = !DILocation(line: 676, column: 15, scope: !833)
!836 = !DILocation(line: 678, column: 4, scope: !815)
!837 = !DILocation(line: 680, column: 11, scope: !793)
!838 = !DILocation(line: 680, column: 4, scope: !793)
!839 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !98, file: !98, line: 3829, type: !840, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!840 = !DISubroutineType(types: !841)
!841 = !{!16, !842}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64, align: 64)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!844 = !DILocalVariable(name: "var", arg: 1, scope: !839, file: !98, line: 3829, type: !842)
!845 = !DILocation(line: 3829, column: 368, scope: !839)
!846 = !DILocation(line: 3829, column: 415, scope: !839)
!847 = !DILocation(line: 3829, column: 401, scope: !839)
!848 = !DILocation(line: 3829, column: 382, scope: !839)
!849 = !DILocation(line: 3829, column: 375, scope: !839)
!850 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWritePtr", scope: !98, file: !98, line: 3829, type: !851, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!851 = !DISubroutineType(types: !852)
!852 = !{!16, !796, !853, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64, align: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!855 = !DILocalVariable(name: "var", arg: 1, scope: !850, file: !98, line: 3829, type: !796)
!856 = !DILocation(line: 3829, column: 757, scope: !850)
!857 = !DILocalVariable(name: "oldVal", arg: 2, scope: !850, file: !98, line: 3829, type: !853)
!858 = !DILocation(line: 3829, column: 775, scope: !850)
!859 = !DILocalVariable(name: "newVal", arg: 3, scope: !850, file: !98, line: 3829, type: !853)
!860 = !DILocation(line: 3829, column: 796, scope: !850)
!861 = !DILocation(line: 3829, column: 858, scope: !850)
!862 = !DILocation(line: 3829, column: 882, scope: !850)
!863 = !DILocation(line: 3829, column: 871, scope: !850)
!864 = !DILocation(line: 3829, column: 909, scope: !850)
!865 = !DILocation(line: 3829, column: 898, scope: !850)
!866 = !DILocation(line: 3829, column: 832, scope: !850)
!867 = !DILocation(line: 3829, column: 813, scope: !850)
!868 = !DILocation(line: 3829, column: 806, scope: !850)
!869 = distinct !DISubprogram(name: "MXUser_CreateCondVarExclLock", scope: !21, file: !21, line: 702, type: !870, isLocal: false, isDefinition: true, scopeLine: 703, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!870 = !DISubroutineType(types: !871)
!871 = !{!872, !17}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64, align: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserCondVar", file: !19, line: 42, baseType: !874)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserCondVar", file: !19, line: 42, flags: DIFlagFwdDecl)
!875 = !DILocalVariable(name: "lock", arg: 1, scope: !869, file: !21, line: 702, type: !17)
!876 = !DILocation(line: 702, column: 46, scope: !869)
!877 = !DILocation(line: 705, column: 26, scope: !869)
!878 = !DILocation(line: 705, column: 32, scope: !869)
!879 = !DILocation(line: 705, column: 4, scope: !869)
!880 = !DILocation(line: 707, column: 32, scope: !869)
!881 = !DILocation(line: 707, column: 38, scope: !869)
!882 = !DILocation(line: 707, column: 47, scope: !869)
!883 = !DILocation(line: 707, column: 53, scope: !869)
!884 = !DILocation(line: 707, column: 11, scope: !869)
!885 = !DILocation(line: 707, column: 4, scope: !869)
!886 = distinct !DISubprogram(name: "MXUser_WaitCondVarExclLock", scope: !21, file: !21, line: 731, type: !887, isLocal: false, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !17, !872}
!889 = !DILocalVariable(name: "lock", arg: 1, scope: !886, file: !21, line: 731, type: !17)
!890 = !DILocation(line: 731, column: 44, scope: !886)
!891 = !DILocalVariable(name: "condVar", arg: 2, scope: !886, file: !21, line: 732, type: !872)
!892 = !DILocation(line: 732, column: 43, scope: !886)
!893 = !DILocation(line: 735, column: 26, scope: !886)
!894 = !DILocation(line: 735, column: 32, scope: !886)
!895 = !DILocation(line: 735, column: 4, scope: !886)
!896 = !DILocation(line: 737, column: 23, scope: !886)
!897 = !DILocation(line: 737, column: 29, scope: !886)
!898 = !DILocation(line: 737, column: 38, scope: !886)
!899 = !DILocation(line: 737, column: 44, scope: !886)
!900 = !DILocation(line: 737, column: 59, scope: !886)
!901 = !DILocation(line: 737, column: 4, scope: !886)
!902 = !DILocation(line: 739, column: 1, scope: !886)
!903 = distinct !DISubprogram(name: "MXUser_TimedWaitCondVarExclLock", scope: !21, file: !21, line: 762, type: !904, isLocal: false, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !17, !872, !28}
!906 = !DILocalVariable(name: "lock", arg: 1, scope: !903, file: !21, line: 762, type: !17)
!907 = !DILocation(line: 762, column: 49, scope: !903)
!908 = !DILocalVariable(name: "condVar", arg: 2, scope: !903, file: !21, line: 763, type: !872)
!909 = !DILocation(line: 763, column: 48, scope: !903)
!910 = !DILocalVariable(name: "waitTimeMsec", arg: 3, scope: !903, file: !21, line: 764, type: !28)
!911 = !DILocation(line: 764, column: 40, scope: !903)
!912 = !DILocation(line: 767, column: 26, scope: !903)
!913 = !DILocation(line: 767, column: 32, scope: !903)
!914 = !DILocation(line: 767, column: 4, scope: !903)
!915 = !DILocation(line: 769, column: 23, scope: !903)
!916 = !DILocation(line: 769, column: 29, scope: !903)
!917 = !DILocation(line: 769, column: 38, scope: !903)
!918 = !DILocation(line: 769, column: 44, scope: !903)
!919 = !DILocation(line: 769, column: 59, scope: !903)
!920 = !DILocation(line: 770, column: 22, scope: !903)
!921 = !DILocation(line: 769, column: 4, scope: !903)
!922 = !DILocation(line: 771, column: 1, scope: !903)
!923 = distinct !DISubprogram(name: "MXRecLockCreateInternal", scope: !4, file: !4, line: 174, type: !924, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!924 = !DISubroutineType(types: !925)
!925 = !{!70, !304}
!926 = !DILocalVariable(name: "lock", arg: 1, scope: !923, file: !4, line: 174, type: !304)
!927 = !DILocation(line: 174, column: 36, scope: !923)
!928 = !DILocation(line: 176, column: 31, scope: !923)
!929 = !DILocation(line: 176, column: 37, scope: !923)
!930 = !DILocation(line: 176, column: 11, scope: !923)
!931 = !DILocation(line: 176, column: 4, scope: !923)
!932 = distinct !DISubprogram(name: "MXRecLockSetNoOwner", scope: !4, file: !4, line: 227, type: !568, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!933 = !DILocalVariable(name: "lock", arg: 1, scope: !932, file: !4, line: 227, type: !304)
!934 = !DILocation(line: 227, column: 32, scope: !932)
!935 = !DILocation(line: 230, column: 12, scope: !932)
!936 = !DILocation(line: 230, column: 18, scope: !932)
!937 = !DILocation(line: 230, column: 4, scope: !932)
!938 = !DILocation(line: 231, column: 1, scope: !932)
!939 = distinct !DISubprogram(name: "MXRecLockDestroyInternal", scope: !4, file: !4, line: 181, type: !924, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!940 = !DILocalVariable(name: "lock", arg: 1, scope: !939, file: !4, line: 181, type: !304)
!941 = !DILocation(line: 181, column: 37, scope: !939)
!942 = !DILocalVariable(name: "err", scope: !939, file: !4, line: 183, type: !70)
!943 = !DILocation(line: 183, column: 8, scope: !939)
!944 = !DILocation(line: 183, column: 37, scope: !939)
!945 = !DILocation(line: 183, column: 43, scope: !939)
!946 = !DILocation(line: 183, column: 14, scope: !939)
!947 = !DILocation(line: 188, column: 8, scope: !939)
!948 = !DILocalVariable(name: "version", scope: !949, file: !4, line: 200, type: !199)
!949 = distinct !DILexicalBlock(scope: !950, file: !4, line: 188, column: 37)
!950 = distinct !DILexicalBlock(scope: !939, file: !4, line: 188, column: 8)
!951 = !DILocation(line: 200, column: 19, scope: !949)
!952 = !DILocation(line: 200, column: 29, scope: !949)
!953 = !DILocation(line: 202, column: 18, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !4, line: 202, column: 11)
!955 = !DILocation(line: 202, column: 11, scope: !954)
!956 = !DILocation(line: 202, column: 35, scope: !954)
!957 = !DILocation(line: 202, column: 11, scope: !949)
!958 = !DILocation(line: 203, column: 14, scope: !959)
!959 = distinct !DILexicalBlock(scope: !954, file: !4, line: 202, column: 41)
!960 = !DILocation(line: 204, column: 7, scope: !959)
!961 = !DILocation(line: 205, column: 4, scope: !949)
!962 = !DILocation(line: 208, column: 11, scope: !939)
!963 = !DILocation(line: 208, column: 4, scope: !939)
!964 = distinct !DISubprogram(name: "MXRecLockIncCount", scope: !4, file: !4, line: 300, type: !965, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !304, !70}
!967 = !DILocalVariable(name: "lock", arg: 1, scope: !964, file: !4, line: 300, type: !304)
!968 = !DILocation(line: 300, column: 30, scope: !964)
!969 = !DILocalVariable(name: "count", arg: 2, scope: !964, file: !4, line: 301, type: !70)
!970 = !DILocation(line: 301, column: 23, scope: !964)
!971 = !DILocalVariable(name: "newCount", scope: !964, file: !4, line: 303, type: !70)
!972 = !DILocation(line: 303, column: 8, scope: !964)
!973 = !DILocation(line: 303, column: 44, scope: !964)
!974 = !DILocation(line: 303, column: 20, scope: !964)
!975 = !DILocation(line: 303, column: 26, scope: !964)
!976 = !DILocation(line: 303, column: 41, scope: !964)
!977 = !DILocation(line: 307, column: 28, scope: !978)
!978 = distinct !DILexicalBlock(scope: !964, file: !4, line: 307, column: 8)
!979 = !DILocation(line: 307, column: 40, scope: !978)
!980 = !DILocation(line: 307, column: 37, scope: !978)
!981 = !DILocation(line: 307, column: 26, scope: !978)
!982 = !DILocation(line: 307, column: 25, scope: !978)
!983 = !DILocation(line: 307, column: 8, scope: !978)
!984 = !DILocation(line: 307, column: 8, scope: !964)
!985 = !DILocation(line: 308, column: 25, scope: !986)
!986 = distinct !DILexicalBlock(scope: !978, file: !4, line: 307, column: 52)
!987 = !DILocation(line: 308, column: 7, scope: !986)
!988 = !DILocation(line: 309, column: 4, scope: !986)
!989 = !DILocation(line: 310, column: 1, scope: !964)
!990 = distinct !DISubprogram(name: "MXRecLockAcquireInternal", scope: !4, file: !4, line: 242, type: !924, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!991 = !DILocalVariable(name: "lock", arg: 1, scope: !990, file: !4, line: 242, type: !304)
!992 = !DILocation(line: 242, column: 37, scope: !990)
!993 = !DILocation(line: 244, column: 31, scope: !990)
!994 = !DILocation(line: 244, column: 37, scope: !990)
!995 = !DILocation(line: 244, column: 11, scope: !990)
!996 = !DILocation(line: 244, column: 4, scope: !990)
!997 = distinct !DISubprogram(name: "MXRecLockSetOwner", scope: !4, file: !4, line: 235, type: !568, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!998 = !DILocalVariable(name: "lock", arg: 1, scope: !997, file: !4, line: 235, type: !304)
!999 = !DILocation(line: 235, column: 30, scope: !997)
!1000 = !DILocation(line: 237, column: 27, scope: !997)
!1001 = !DILocation(line: 237, column: 4, scope: !997)
!1002 = !DILocation(line: 237, column: 10, scope: !997)
!1003 = !DILocation(line: 237, column: 25, scope: !997)
!1004 = !DILocation(line: 238, column: 1, scope: !997)
!1005 = distinct !DISubprogram(name: "MXUserNativeThreadID", scope: !4, file: !4, line: 213, type: !1006, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!93}
!1008 = !DILocation(line: 215, column: 11, scope: !1005)
!1009 = !DILocation(line: 215, column: 4, scope: !1005)
!1010 = distinct !DISubprogram(name: "MXRecLockDecCount", scope: !4, file: !4, line: 314, type: !965, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!1011 = !DILocalVariable(name: "lock", arg: 1, scope: !1010, file: !4, line: 314, type: !304)
!1012 = !DILocation(line: 314, column: 30, scope: !1010)
!1013 = !DILocalVariable(name: "count", arg: 2, scope: !1010, file: !4, line: 315, type: !70)
!1014 = !DILocation(line: 315, column: 23, scope: !1010)
!1015 = !DILocalVariable(name: "newCount", scope: !1010, file: !4, line: 317, type: !70)
!1016 = !DILocation(line: 317, column: 8, scope: !1010)
!1017 = !DILocation(line: 317, column: 44, scope: !1010)
!1018 = !DILocation(line: 317, column: 20, scope: !1010)
!1019 = !DILocation(line: 317, column: 26, scope: !1010)
!1020 = !DILocation(line: 317, column: 41, scope: !1010)
!1021 = !DILocation(line: 321, column: 28, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1010, file: !4, line: 321, column: 8)
!1023 = !DILocation(line: 321, column: 37, scope: !1022)
!1024 = !DILocation(line: 321, column: 26, scope: !1022)
!1025 = !DILocation(line: 321, column: 25, scope: !1022)
!1026 = !DILocation(line: 321, column: 8, scope: !1022)
!1027 = !DILocation(line: 321, column: 8, scope: !1010)
!1028 = !DILocation(line: 322, column: 27, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1022, file: !4, line: 321, column: 48)
!1030 = !DILocation(line: 322, column: 7, scope: !1029)
!1031 = !DILocation(line: 323, column: 4, scope: !1029)
!1032 = !DILocation(line: 324, column: 1, scope: !1010)
!1033 = distinct !DISubprogram(name: "MXRecLockReleaseInternal", scope: !4, file: !4, line: 256, type: !924, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!1034 = !DILocalVariable(name: "lock", arg: 1, scope: !1033, file: !4, line: 256, type: !304)
!1035 = !DILocation(line: 256, column: 37, scope: !1033)
!1036 = !DILocation(line: 258, column: 33, scope: !1033)
!1037 = !DILocation(line: 258, column: 39, scope: !1033)
!1038 = !DILocation(line: 258, column: 11, scope: !1033)
!1039 = !DILocation(line: 258, column: 4, scope: !1033)
!1040 = distinct !DISubprogram(name: "MXRecLockTryAcquireInternal", scope: !4, file: !4, line: 249, type: !924, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!1041 = !DILocalVariable(name: "lock", arg: 1, scope: !1040, file: !4, line: 249, type: !304)
!1042 = !DILocation(line: 249, column: 40, scope: !1040)
!1043 = !DILocation(line: 251, column: 34, scope: !1040)
!1044 = !DILocation(line: 251, column: 40, scope: !1040)
!1045 = !DILocation(line: 251, column: 11, scope: !1040)
!1046 = !DILocation(line: 251, column: 4, scope: !1040)
!1047 = distinct !DISubprogram(name: "Atomic_Read64", scope: !98, file: !98, line: 2143, type: !1048, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!104, !1050}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!1052 = !DILocalVariable(name: "var", arg: 1, scope: !1047, file: !98, line: 2143, type: !1050)
!1053 = !DILocation(line: 2143, column: 36, scope: !1047)
!1054 = !DILocalVariable(name: "value", scope: !1047, file: !98, line: 2146, type: !104)
!1055 = !DILocation(line: 2146, column: 11, scope: !1047)
!1056 = !DILocation(line: 2160, column: 14, scope: !1047)
!1057 = !DILocation(line: 2160, column: 19, scope: !1047)
!1058 = !DILocation(line: 2157, column: 4, scope: !1047)
!1059 = !{i32 134648}
!1060 = !DILocation(line: 2213, column: 11, scope: !1047)
!1061 = !DILocation(line: 2213, column: 4, scope: !1047)
!1062 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite64", scope: !98, file: !98, line: 1190, type: !1063, isLocal: true, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !115)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!104, !1065, !104, !104}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!1066 = !DILocalVariable(name: "var", arg: 1, scope: !1062, file: !98, line: 1190, type: !1065)
!1067 = !DILocation(line: 1190, column: 42, scope: !1062)
!1068 = !DILocalVariable(name: "oldVal", arg: 2, scope: !1062, file: !98, line: 1191, type: !104)
!1069 = !DILocation(line: 1191, column: 34, scope: !1062)
!1070 = !DILocalVariable(name: "newVal", arg: 3, scope: !1062, file: !98, line: 1192, type: !104)
!1071 = !DILocation(line: 1192, column: 34, scope: !1062)
!1072 = !DILocalVariable(name: "val", scope: !1062, file: !98, line: 1240, type: !104)
!1073 = !DILocation(line: 1240, column: 11, scope: !1062)
!1074 = !DILocation(line: 1246, column: 15, scope: !1062)
!1075 = !DILocation(line: 1246, column: 20, scope: !1062)
!1076 = !DILocation(line: 1247, column: 14, scope: !1062)
!1077 = !DILocation(line: 1248, column: 14, scope: !1062)
!1078 = !DILocation(line: 1243, column: 4, scope: !1062)
!1079 = !{i32 127090}
!1080 = !DILocation(line: 1251, column: 11, scope: !1062)
!1081 = !DILocation(line: 1251, column: 4, scope: !1062)
