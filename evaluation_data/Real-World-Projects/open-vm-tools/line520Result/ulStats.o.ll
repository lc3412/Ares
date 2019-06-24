; ModuleID = './ulStats.o.i'
source_filename = "./ulStats.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Atomic_uint64 = type { i64 }
%struct.ListItem = type { %struct.ListItem*, %struct.ListItem* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.Atomic_uint32 = type { i32 }
%struct.MXUserHeader = type { i32, i8*, i32, %struct.anon, {}*, {}*, %struct.ListItem }
%struct.anon = type { i32 }
%struct.MXRecLock = type { %union.pthread_mutex_t, i32, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.MXUserHisto = type { i8*, i64*, i64, i64, i64, i32, [10 x %struct.TopOwner] }
%struct.TopOwner = type { i8*, i64 }
%struct.MXUserBasicStats = type { i8*, i64, i64, i64, i64, double }
%struct.MXUserAcquisitionStats = type { double, i64, i64, i64, i64, i64, i64, i64, %struct.MXUserBasicStats }
%struct.MXUserAcquireStats = type { %struct.MXUserAcquisitionStats, %struct.Atomic_uint64 }
%struct.MXUserHeldStats = type { i64, %struct.MXUserBasicStats, %struct.Atomic_uint64 }

@mxLockMemPtr = internal global %struct.Atomic_uint64 zeroinitializer, align 8
@mxUserLockList = internal global %struct.ListItem* null, align 8
@mxUserHistoLine = internal global i8* null, align 8
@mxUserMaxLineLength = internal global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MXUser: h l=%u t=%s min=%lu max=%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" %u-%lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"MXUser: ht l=%u t=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" %p-%lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"MXUser: e l=%u t=%s c=%lu min=%lu max=%lu mean=%lu sd=%lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@mxUserContentionRatioFloor = internal global double 0.000000e+00, align 8
@mxUserContentionCountFloor = internal global i64 0, align 8
@mxUserContentionDurationFloor = internal global i64 0, align 8
@.str.7 = private unnamed_addr constant [50 x i8] c"MXUser: ce l=%u a=%lu s=%lu sc=%lu sct=%lu t=%lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@mxUserStatsContext = internal global i8* null, align 8
@mxUserStatsFunc = internal global void (i8*, i8*, %struct.__va_list_tag*)* null, align 8
@mxUserTrackHeldTimes = internal global i8 0, align 1
@MXUser_PerLockData.lastReportedSerialNumber = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"MXUser: n n=%s l=%d r=0x%x\0A\00", align 1
@MXUserAllocSerialNumber.firstFreeSerialNumber = internal global %struct.Atomic_uint32 { i32 1 }, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"%s: too many locks!\0A\00", align 1
@__FUNCTION__.MXUserAllocSerialNumber = private unnamed_addr constant [24 x i8] c"MXUserAllocSerialNumber\00", align 1

; Function Attrs: nounwind uwtable
define void @MXUserAddToList(%struct.MXUserHeader*) #0 !dbg !96 {
  %2 = alloca %struct.MXUserHeader*, align 8
  %3 = alloca %struct.MXRecLock*, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !99, metadata !100), !dbg !101
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !102, metadata !100), !dbg !141
  %4 = call %struct.MXRecLock* @MXUserInternalSingleton(%struct.Atomic_uint64* @mxLockMemPtr), !dbg !142
  store %struct.MXRecLock* %4, %struct.MXRecLock** %3, align 8, !dbg !141
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !143
  %6 = icmp ne %struct.MXRecLock* %5, null, !dbg !143
  br i1 %6, label %7, label %12, !dbg !145

; <label>:7:                                      ; preds = %1
  %8 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !146
  call void @MXRecLockAcquire(%struct.MXRecLock* %8, i64* null), !dbg !148
  %9 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !149
  %10 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %9, i32 0, i32 6, !dbg !150
  call void @CircList_Queue(%struct.ListItem* %10, %struct.ListItem** @mxUserLockList), !dbg !151
  %11 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !152
  call void @MXRecLockRelease(%struct.MXRecLock* %11), !dbg !153
  br label %12, !dbg !154

; <label>:12:                                     ; preds = %7, %1
  ret void, !dbg !155
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.MXRecLock* @MXUserInternalSingleton(%struct.Atomic_uint64*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockAcquire(%struct.MXRecLock*, i64*) #3 !dbg !156 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !163, metadata !100), !dbg !164
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !165, metadata !100), !dbg !166
  call void @llvm.dbg.declare(metadata i32* %5, metadata !167, metadata !100), !dbg !168
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !169
  %8 = call i32 @MXRecLockCount(%struct.MXRecLock* %7), !dbg !171
  %9 = icmp sgt i32 %8, 0, !dbg !172
  %10 = zext i1 %9 to i32, !dbg !172
  %11 = sext i32 %10 to i64, !dbg !173
  %12 = icmp ne i64 %11, 0, !dbg !174
  br i1 %12, label %13, label %25, !dbg !175

; <label>:13:                                     ; preds = %2
  %14 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !176
  %15 = call signext i8 @MXRecLockIsOwner(%struct.MXRecLock* %14), !dbg !178
  %16 = sext i8 %15 to i32, !dbg !178
  %17 = icmp ne i32 %16, 0, !dbg !178
  br i1 %17, label %18, label %25, !dbg !179

; <label>:18:                                     ; preds = %13
  %19 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !180
  call void @MXRecLockIncCount(%struct.MXRecLock* %19, i32 1), !dbg !182
  %20 = load i64*, i64** %4, align 8, !dbg !183
  %21 = icmp ne i64* %20, null, !dbg !185
  br i1 %21, label %22, label %24, !dbg !186

; <label>:22:                                     ; preds = %18
  %23 = load i64*, i64** %4, align 8, !dbg !187
  store i64 0, i64* %23, align 8, !dbg !189
  br label %24, !dbg !190

; <label>:24:                                     ; preds = %22, %18
  br label %46, !dbg !191

; <label>:25:                                     ; preds = %13, %2
  %26 = load i64*, i64** %4, align 8, !dbg !192
  %27 = icmp eq i64* %26, null, !dbg !194
  %28 = xor i1 %27, true, !dbg !195
  %29 = xor i1 %28, true, !dbg !196
  %30 = zext i1 %29 to i32, !dbg !196
  %31 = sext i32 %30 to i64, !dbg !196
  %32 = icmp ne i64 %31, 0, !dbg !197
  br i1 %32, label %33, label %36, !dbg !198

; <label>:33:                                     ; preds = %25
  %34 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !199
  %35 = call i32 @MXRecLockAcquireInternal(%struct.MXRecLock* %34), !dbg !201
  store i32 %35, i32* %5, align 4, !dbg !202
  br label %44, !dbg !203

; <label>:36:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i64* %6, metadata !204, metadata !100), !dbg !206
  %37 = call i64 @Hostinfo_SystemTimerNS(), !dbg !207
  store i64 %37, i64* %6, align 8, !dbg !206
  %38 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !208
  %39 = call i32 @MXRecLockAcquireInternal(%struct.MXRecLock* %38), !dbg !209
  store i32 %39, i32* %5, align 4, !dbg !210
  %40 = call i64 @Hostinfo_SystemTimerNS(), !dbg !211
  %41 = load i64, i64* %6, align 8, !dbg !212
  %42 = sub nsw i64 %40, %41, !dbg !213
  %43 = load i64*, i64** %4, align 8, !dbg !214
  store i64 %42, i64* %43, align 8, !dbg !215
  br label %44

; <label>:44:                                     ; preds = %36, %33
  %45 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !216
  call void @MXRecLockIncCount(%struct.MXRecLock* %45, i32 1), !dbg !217
  br label %46, !dbg !218

; <label>:46:                                     ; preds = %44, %24
  ret void, !dbg !219
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @CircList_Queue(%struct.ListItem*, %struct.ListItem**) #3 !dbg !220 {
  %3 = alloca %struct.ListItem*, align 8
  %4 = alloca %struct.ListItem**, align 8
  %5 = alloca %struct.ListItem*, align 8
  store %struct.ListItem* %0, %struct.ListItem** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ListItem** %3, metadata !224, metadata !100), !dbg !225
  store %struct.ListItem** %1, %struct.ListItem*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ListItem*** %4, metadata !226, metadata !100), !dbg !227
  call void @llvm.dbg.declare(metadata %struct.ListItem** %5, metadata !228, metadata !100), !dbg !229
  %6 = load %struct.ListItem**, %struct.ListItem*** %4, align 8, !dbg !230
  %7 = load %struct.ListItem*, %struct.ListItem** %6, align 8, !dbg !231
  store %struct.ListItem* %7, %struct.ListItem** %5, align 8, !dbg !232
  %8 = load %struct.ListItem*, %struct.ListItem** %5, align 8, !dbg !233
  %9 = call signext i8 @CircList_IsEmpty(%struct.ListItem* %8), !dbg !235
  %10 = icmp ne i8 %9, 0, !dbg !235
  br i1 %10, label %11, label %15, !dbg !236

; <label>:11:                                     ; preds = %2
  %12 = load %struct.ListItem*, %struct.ListItem** %3, align 8, !dbg !237
  call void @CircList_InitItem(%struct.ListItem* %12), !dbg !239
  %13 = load %struct.ListItem*, %struct.ListItem** %3, align 8, !dbg !240
  %14 = load %struct.ListItem**, %struct.ListItem*** %4, align 8, !dbg !241
  store %struct.ListItem* %13, %struct.ListItem** %14, align 8, !dbg !242
  br label %32, !dbg !243

; <label>:15:                                     ; preds = %2
  %16 = load %struct.ListItem*, %struct.ListItem** %5, align 8, !dbg !244
  %17 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %16, i32 0, i32 0, !dbg !246
  %18 = load %struct.ListItem*, %struct.ListItem** %17, align 8, !dbg !246
  %19 = load %struct.ListItem*, %struct.ListItem** %3, align 8, !dbg !247
  %20 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %19, i32 0, i32 0, !dbg !248
  store %struct.ListItem* %18, %struct.ListItem** %20, align 8, !dbg !249
  %21 = load %struct.ListItem*, %struct.ListItem** %5, align 8, !dbg !250
  %22 = load %struct.ListItem*, %struct.ListItem** %3, align 8, !dbg !251
  %23 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %22, i32 0, i32 1, !dbg !252
  store %struct.ListItem* %21, %struct.ListItem** %23, align 8, !dbg !253
  %24 = load %struct.ListItem*, %struct.ListItem** %3, align 8, !dbg !254
  %25 = load %struct.ListItem*, %struct.ListItem** %3, align 8, !dbg !255
  %26 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %25, i32 0, i32 0, !dbg !256
  %27 = load %struct.ListItem*, %struct.ListItem** %26, align 8, !dbg !256
  %28 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %27, i32 0, i32 1, !dbg !257
  store %struct.ListItem* %24, %struct.ListItem** %28, align 8, !dbg !258
  %29 = load %struct.ListItem*, %struct.ListItem** %3, align 8, !dbg !259
  %30 = load %struct.ListItem*, %struct.ListItem** %5, align 8, !dbg !260
  %31 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %30, i32 0, i32 0, !dbg !261
  store %struct.ListItem* %29, %struct.ListItem** %31, align 8, !dbg !262
  br label %32

; <label>:32:                                     ; preds = %15, %11
  ret void, !dbg !263
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockRelease(%struct.MXRecLock*) #3 !dbg !264 {
  %2 = alloca %struct.MXRecLock*, align 8
  %3 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !267, metadata !100), !dbg !268
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !269
  call void @MXRecLockDecCount(%struct.MXRecLock* %4, i32 1), !dbg !270
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !271
  %6 = call i32 @MXRecLockCount(%struct.MXRecLock* %5), !dbg !273
  %7 = icmp eq i32 %6, 0, !dbg !274
  %8 = xor i1 %7, true, !dbg !275
  %9 = xor i1 %8, true, !dbg !276
  %10 = zext i1 %9 to i32, !dbg !276
  %11 = sext i32 %10 to i64, !dbg !276
  %12 = icmp ne i64 %11, 0, !dbg !277
  br i1 %12, label %13, label %16, !dbg !278

; <label>:13:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %3, metadata !279, metadata !100), !dbg !281
  %14 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !282
  %15 = call i32 @MXRecLockReleaseInternal(%struct.MXRecLock* %14), !dbg !283
  store i32 %15, i32* %3, align 4, !dbg !281
  br label %16, !dbg !284

; <label>:16:                                     ; preds = %13, %1
  ret void, !dbg !285
}

; Function Attrs: nounwind uwtable
define void @MXUserRemoveFromList(%struct.MXUserHeader*) #0 !dbg !286 {
  %2 = alloca %struct.MXUserHeader*, align 8
  %3 = alloca %struct.MXRecLock*, align 8
  store %struct.MXUserHeader* %0, %struct.MXUserHeader** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %2, metadata !287, metadata !100), !dbg !288
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !289, metadata !100), !dbg !290
  %4 = call %struct.MXRecLock* @MXUserInternalSingleton(%struct.Atomic_uint64* @mxLockMemPtr), !dbg !291
  store %struct.MXRecLock* %4, %struct.MXRecLock** %3, align 8, !dbg !290
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !292
  %6 = icmp ne %struct.MXRecLock* %5, null, !dbg !292
  br i1 %6, label %7, label %12, !dbg !294

; <label>:7:                                      ; preds = %1
  %8 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !295
  call void @MXRecLockAcquire(%struct.MXRecLock* %8, i64* null), !dbg !297
  %9 = load %struct.MXUserHeader*, %struct.MXUserHeader** %2, align 8, !dbg !298
  %10 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %9, i32 0, i32 6, !dbg !299
  call void @CircList_DeleteItem(%struct.ListItem* %10, %struct.ListItem** @mxUserLockList), !dbg !300
  %11 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !301
  call void @MXRecLockRelease(%struct.MXRecLock* %11), !dbg !302
  br label %12, !dbg !303

; <label>:12:                                     ; preds = %7, %1
  ret void, !dbg !304
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @CircList_DeleteItem(%struct.ListItem*, %struct.ListItem**) #3 !dbg !305 {
  %3 = alloca %struct.ListItem*, align 8
  %4 = alloca %struct.ListItem**, align 8
  %5 = alloca %struct.ListItem*, align 8
  store %struct.ListItem* %0, %struct.ListItem** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ListItem** %3, metadata !306, metadata !100), !dbg !307
  store %struct.ListItem** %1, %struct.ListItem*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ListItem*** %4, metadata !308, metadata !100), !dbg !309
  call void @llvm.dbg.declare(metadata %struct.ListItem** %5, metadata !310, metadata !100), !dbg !311
  %6 = load %struct.ListItem*, %struct.ListItem** %3, align 8, !dbg !312
  %7 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %6, i32 0, i32 1, !dbg !313
  %8 = load %struct.ListItem*, %struct.ListItem** %7, align 8, !dbg !313
  store %struct.ListItem* %8, %struct.ListItem** %5, align 8, !dbg !314
  %9 = load %struct.ListItem*, %struct.ListItem** %3, align 8, !dbg !315
  %10 = load %struct.ListItem*, %struct.ListItem** %5, align 8, !dbg !317
  %11 = icmp eq %struct.ListItem* %9, %10, !dbg !318
  br i1 %11, label %12, label %14, !dbg !319

; <label>:12:                                     ; preds = %2
  %13 = load %struct.ListItem**, %struct.ListItem*** %4, align 8, !dbg !320
  store %struct.ListItem* null, %struct.ListItem** %13, align 8, !dbg !322
  br label %33, !dbg !323

; <label>:14:                                     ; preds = %2
  %15 = load %struct.ListItem*, %struct.ListItem** %3, align 8, !dbg !324
  %16 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %15, i32 0, i32 0, !dbg !326
  %17 = load %struct.ListItem*, %struct.ListItem** %16, align 8, !dbg !326
  %18 = load %struct.ListItem*, %struct.ListItem** %5, align 8, !dbg !327
  %19 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %18, i32 0, i32 0, !dbg !328
  store %struct.ListItem* %17, %struct.ListItem** %19, align 8, !dbg !329
  %20 = load %struct.ListItem*, %struct.ListItem** %5, align 8, !dbg !330
  %21 = load %struct.ListItem*, %struct.ListItem** %3, align 8, !dbg !331
  %22 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %21, i32 0, i32 0, !dbg !332
  %23 = load %struct.ListItem*, %struct.ListItem** %22, align 8, !dbg !332
  %24 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %23, i32 0, i32 1, !dbg !333
  store %struct.ListItem* %20, %struct.ListItem** %24, align 8, !dbg !334
  %25 = load %struct.ListItem**, %struct.ListItem*** %4, align 8, !dbg !335
  %26 = load %struct.ListItem*, %struct.ListItem** %25, align 8, !dbg !337
  %27 = load %struct.ListItem*, %struct.ListItem** %3, align 8, !dbg !338
  %28 = icmp eq %struct.ListItem* %26, %27, !dbg !339
  br i1 %28, label %29, label %32, !dbg !340

; <label>:29:                                     ; preds = %14
  %30 = load %struct.ListItem*, %struct.ListItem** %5, align 8, !dbg !341
  %31 = load %struct.ListItem**, %struct.ListItem*** %4, align 8, !dbg !343
  store %struct.ListItem* %30, %struct.ListItem** %31, align 8, !dbg !344
  br label %32, !dbg !345

; <label>:32:                                     ; preds = %29, %14
  br label %33

; <label>:33:                                     ; preds = %32, %12
  ret void, !dbg !346
}

; Function Attrs: nounwind uwtable
define %struct.MXUserHisto* @MXUserHistoSetUp(i8*, i64, i32) #0 !dbg !347 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MXUserHisto*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !370, metadata !100), !dbg !371
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !372, metadata !100), !dbg !373
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !374, metadata !100), !dbg !375
  call void @llvm.dbg.declare(metadata %struct.MXUserHisto** %7, metadata !376, metadata !100), !dbg !377
  %8 = call i8* @UtilSafeCalloc0(i64 1, i64 208), !dbg !378
  %9 = bitcast i8* %8 to %struct.MXUserHisto*, !dbg !378
  store %struct.MXUserHisto* %9, %struct.MXUserHisto** %7, align 8, !dbg !379
  %10 = load i8*, i8** %4, align 8, !dbg !380
  %11 = call i8* @UtilSafeStrdup0(i8* %10), !dbg !381
  %12 = load %struct.MXUserHisto*, %struct.MXUserHisto** %7, align 8, !dbg !382
  %13 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %12, i32 0, i32 0, !dbg !383
  store i8* %11, i8** %13, align 8, !dbg !384
  %14 = load i32, i32* %6, align 4, !dbg !385
  %15 = mul i32 100, %14, !dbg !386
  %16 = load %struct.MXUserHisto*, %struct.MXUserHisto** %7, align 8, !dbg !387
  %17 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %16, i32 0, i32 5, !dbg !388
  store i32 %15, i32* %17, align 8, !dbg !389
  %18 = load %struct.MXUserHisto*, %struct.MXUserHisto** %7, align 8, !dbg !390
  %19 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %18, i32 0, i32 5, !dbg !391
  %20 = load i32, i32* %19, align 8, !dbg !391
  %21 = zext i32 %20 to i64, !dbg !392
  %22 = call i8* @UtilSafeCalloc0(i64 %21, i64 8), !dbg !393
  %23 = bitcast i8* %22 to i64*, !dbg !393
  %24 = load %struct.MXUserHisto*, %struct.MXUserHisto** %7, align 8, !dbg !394
  %25 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %24, i32 0, i32 1, !dbg !395
  store i64* %23, i64** %25, align 8, !dbg !396
  %26 = load %struct.MXUserHisto*, %struct.MXUserHisto** %7, align 8, !dbg !397
  %27 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %26, i32 0, i32 2, !dbg !398
  store i64 0, i64* %27, align 8, !dbg !399
  %28 = load i64, i64* %5, align 8, !dbg !400
  %29 = load %struct.MXUserHisto*, %struct.MXUserHisto** %7, align 8, !dbg !401
  %30 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %29, i32 0, i32 3, !dbg !402
  store i64 %28, i64* %30, align 8, !dbg !403
  %31 = load %struct.MXUserHisto*, %struct.MXUserHisto** %7, align 8, !dbg !404
  %32 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %31, i32 0, i32 3, !dbg !405
  %33 = load i64, i64* %32, align 8, !dbg !405
  %34 = load %struct.MXUserHisto*, %struct.MXUserHisto** %7, align 8, !dbg !406
  %35 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %34, i32 0, i32 4, !dbg !407
  store i64 %33, i64* %35, align 8, !dbg !408
  br label %36, !dbg !409

; <label>:36:                                     ; preds = %40, %3
  %37 = load i32, i32* %6, align 4, !dbg !410
  %38 = add i32 %37, -1, !dbg !410
  store i32 %38, i32* %6, align 4, !dbg !410
  %39 = icmp ne i32 %37, 0, !dbg !412
  br i1 %39, label %40, label %45, !dbg !412

; <label>:40:                                     ; preds = %36
  %41 = load %struct.MXUserHisto*, %struct.MXUserHisto** %7, align 8, !dbg !413
  %42 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %41, i32 0, i32 4, !dbg !415
  %43 = load i64, i64* %42, align 8, !dbg !416
  %44 = mul i64 %43, 10, !dbg !416
  store i64 %44, i64* %42, align 8, !dbg !416
  br label %36, !dbg !417, !llvm.loop !419

; <label>:45:                                     ; preds = %36
  %46 = load %struct.MXUserHisto*, %struct.MXUserHisto** %7, align 8, !dbg !420
  ret %struct.MXUserHisto* %46, !dbg !421
}

declare i8* @UtilSafeCalloc0(i64, i64) #2

declare i8* @UtilSafeStrdup0(i8*) #2

; Function Attrs: nounwind uwtable
define void @MXUserHistoTearDown(%struct.MXUserHisto*) #0 !dbg !422 {
  %2 = alloca %struct.MXUserHisto*, align 8
  store %struct.MXUserHisto* %0, %struct.MXUserHisto** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHisto** %2, metadata !425, metadata !100), !dbg !426
  %3 = load %struct.MXUserHisto*, %struct.MXUserHisto** %2, align 8, !dbg !427
  %4 = icmp ne %struct.MXUserHisto* %3, null, !dbg !429
  br i1 %4, label %5, label %15, !dbg !430

; <label>:5:                                      ; preds = %1
  %6 = load %struct.MXUserHisto*, %struct.MXUserHisto** %2, align 8, !dbg !431
  %7 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %6, i32 0, i32 0, !dbg !433
  %8 = load i8*, i8** %7, align 8, !dbg !433
  call void @free(i8* %8) #8, !dbg !434
  %9 = load %struct.MXUserHisto*, %struct.MXUserHisto** %2, align 8, !dbg !435
  %10 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %9, i32 0, i32 1, !dbg !436
  %11 = load i64*, i64** %10, align 8, !dbg !436
  %12 = bitcast i64* %11 to i8*, !dbg !435
  call void @free(i8* %12) #8, !dbg !437
  %13 = load %struct.MXUserHisto*, %struct.MXUserHisto** %2, align 8, !dbg !438
  %14 = bitcast %struct.MXUserHisto* %13 to i8*, !dbg !438
  call void @free(i8* %14) #8, !dbg !439
  br label %15, !dbg !440

; <label>:15:                                     ; preds = %5, %1
  ret void, !dbg !441
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @MXUserHistoSample(%struct.MXUserHisto*, i64, i8*) #0 !dbg !442 {
  %4 = alloca %struct.MXUserHisto*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.MXUserHisto* %0, %struct.MXUserHisto** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHisto** %4, metadata !445, metadata !100), !dbg !446
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !447, metadata !100), !dbg !448
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !449, metadata !100), !dbg !450
  call void @llvm.dbg.declare(metadata i32* %7, metadata !451, metadata !100), !dbg !452
  call void @llvm.dbg.declare(metadata i32* %8, metadata !453, metadata !100), !dbg !454
  %9 = load %struct.MXUserHisto*, %struct.MXUserHisto** %4, align 8, !dbg !455
  %10 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %9, i32 0, i32 2, !dbg !456
  %11 = load i64, i64* %10, align 8, !dbg !457
  %12 = add i64 %11, 1, !dbg !457
  store i64 %12, i64* %10, align 8, !dbg !457
  %13 = load i64, i64* %5, align 8, !dbg !458
  %14 = load %struct.MXUserHisto*, %struct.MXUserHisto** %4, align 8, !dbg !460
  %15 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %14, i32 0, i32 3, !dbg !461
  %16 = load i64, i64* %15, align 8, !dbg !461
  %17 = icmp ult i64 %13, %16, !dbg !462
  br i1 %17, label %18, label %19, !dbg !463

; <label>:18:                                     ; preds = %3
  store i32 0, i32* %8, align 4, !dbg !464
  br label %38, !dbg !466

; <label>:19:                                     ; preds = %3
  %20 = load i64, i64* %5, align 8, !dbg !467
  %21 = load %struct.MXUserHisto*, %struct.MXUserHisto** %4, align 8, !dbg !469
  %22 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %21, i32 0, i32 3, !dbg !470
  %23 = load i64, i64* %22, align 8, !dbg !470
  %24 = udiv i64 %20, %23, !dbg !471
  %25 = call i32 @MXUserHistoIndex(i64 %24), !dbg !472
  store i32 %25, i32* %8, align 4, !dbg !473
  %26 = load i32, i32* %8, align 4, !dbg !474
  %27 = load %struct.MXUserHisto*, %struct.MXUserHisto** %4, align 8, !dbg !476
  %28 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %27, i32 0, i32 5, !dbg !477
  %29 = load i32, i32* %28, align 8, !dbg !477
  %30 = sub i32 %29, 1, !dbg !478
  %31 = icmp ugt i32 %26, %30, !dbg !479
  br i1 %31, label %32, label %37, !dbg !480

; <label>:32:                                     ; preds = %19
  %33 = load %struct.MXUserHisto*, %struct.MXUserHisto** %4, align 8, !dbg !481
  %34 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %33, i32 0, i32 5, !dbg !483
  %35 = load i32, i32* %34, align 8, !dbg !483
  %36 = sub i32 %35, 1, !dbg !484
  store i32 %36, i32* %8, align 4, !dbg !485
  br label %37, !dbg !486

; <label>:37:                                     ; preds = %32, %19
  br label %38

; <label>:38:                                     ; preds = %37, %18
  %39 = load i32, i32* %8, align 4, !dbg !487
  %40 = zext i32 %39 to i64, !dbg !488
  %41 = load %struct.MXUserHisto*, %struct.MXUserHisto** %4, align 8, !dbg !488
  %42 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %41, i32 0, i32 1, !dbg !489
  %43 = load i64*, i64** %42, align 8, !dbg !489
  %44 = getelementptr inbounds i64, i64* %43, i64 %40, !dbg !488
  %45 = load i64, i64* %44, align 8, !dbg !490
  %46 = add i64 %45, 1, !dbg !490
  store i64 %46, i64* %44, align 8, !dbg !490
  store i32 0, i32* %8, align 4, !dbg !491
  store i32 0, i32* %7, align 4, !dbg !492
  br label %47, !dbg !494

; <label>:47:                                     ; preds = %81, %38
  %48 = load i32, i32* %7, align 4, !dbg !495
  %49 = icmp ult i32 %48, 10, !dbg !498
  br i1 %49, label %50, label %84, !dbg !499

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %7, align 4, !dbg !500
  %52 = zext i32 %51 to i64, !dbg !503
  %53 = load %struct.MXUserHisto*, %struct.MXUserHisto** %4, align 8, !dbg !503
  %54 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %53, i32 0, i32 6, !dbg !504
  %55 = getelementptr inbounds [10 x %struct.TopOwner], [10 x %struct.TopOwner]* %54, i64 0, i64 %52, !dbg !503
  %56 = getelementptr inbounds %struct.TopOwner, %struct.TopOwner* %55, i32 0, i32 0, !dbg !505
  %57 = load i8*, i8** %56, align 8, !dbg !505
  %58 = load i8*, i8** %6, align 8, !dbg !506
  %59 = icmp eq i8* %57, %58, !dbg !507
  br i1 %59, label %60, label %62, !dbg !508

; <label>:60:                                     ; preds = %50
  %61 = load i32, i32* %7, align 4, !dbg !509
  store i32 %61, i32* %8, align 4, !dbg !511
  br label %84, !dbg !512

; <label>:62:                                     ; preds = %50
  %63 = load i32, i32* %7, align 4, !dbg !513
  %64 = zext i32 %63 to i64, !dbg !515
  %65 = load %struct.MXUserHisto*, %struct.MXUserHisto** %4, align 8, !dbg !515
  %66 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %65, i32 0, i32 6, !dbg !516
  %67 = getelementptr inbounds [10 x %struct.TopOwner], [10 x %struct.TopOwner]* %66, i64 0, i64 %64, !dbg !515
  %68 = getelementptr inbounds %struct.TopOwner, %struct.TopOwner* %67, i32 0, i32 1, !dbg !517
  %69 = load i64, i64* %68, align 8, !dbg !517
  %70 = load i32, i32* %8, align 4, !dbg !518
  %71 = zext i32 %70 to i64, !dbg !519
  %72 = load %struct.MXUserHisto*, %struct.MXUserHisto** %4, align 8, !dbg !519
  %73 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %72, i32 0, i32 6, !dbg !520
  %74 = getelementptr inbounds [10 x %struct.TopOwner], [10 x %struct.TopOwner]* %73, i64 0, i64 %71, !dbg !519
  %75 = getelementptr inbounds %struct.TopOwner, %struct.TopOwner* %74, i32 0, i32 1, !dbg !521
  %76 = load i64, i64* %75, align 8, !dbg !521
  %77 = icmp ult i64 %69, %76, !dbg !522
  br i1 %77, label %78, label %80, !dbg !523

; <label>:78:                                     ; preds = %62
  %79 = load i32, i32* %7, align 4, !dbg !524
  store i32 %79, i32* %8, align 4, !dbg !526
  br label %80, !dbg !527

; <label>:80:                                     ; preds = %78, %62
  br label %81, !dbg !528

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %7, align 4, !dbg !529
  %83 = add i32 %82, 1, !dbg !529
  store i32 %83, i32* %7, align 4, !dbg !529
  br label %47, !dbg !531, !llvm.loop !532

; <label>:84:                                     ; preds = %60, %47
  %85 = load i64, i64* %5, align 8, !dbg !534
  %86 = load i32, i32* %8, align 4, !dbg !536
  %87 = zext i32 %86 to i64, !dbg !537
  %88 = load %struct.MXUserHisto*, %struct.MXUserHisto** %4, align 8, !dbg !537
  %89 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %88, i32 0, i32 6, !dbg !538
  %90 = getelementptr inbounds [10 x %struct.TopOwner], [10 x %struct.TopOwner]* %89, i64 0, i64 %87, !dbg !537
  %91 = getelementptr inbounds %struct.TopOwner, %struct.TopOwner* %90, i32 0, i32 1, !dbg !539
  %92 = load i64, i64* %91, align 8, !dbg !539
  %93 = icmp ugt i64 %85, %92, !dbg !540
  br i1 %93, label %94, label %109, !dbg !541

; <label>:94:                                     ; preds = %84
  %95 = load i8*, i8** %6, align 8, !dbg !542
  %96 = load i32, i32* %8, align 4, !dbg !544
  %97 = zext i32 %96 to i64, !dbg !545
  %98 = load %struct.MXUserHisto*, %struct.MXUserHisto** %4, align 8, !dbg !545
  %99 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %98, i32 0, i32 6, !dbg !546
  %100 = getelementptr inbounds [10 x %struct.TopOwner], [10 x %struct.TopOwner]* %99, i64 0, i64 %97, !dbg !545
  %101 = getelementptr inbounds %struct.TopOwner, %struct.TopOwner* %100, i32 0, i32 0, !dbg !547
  store i8* %95, i8** %101, align 8, !dbg !548
  %102 = load i64, i64* %5, align 8, !dbg !549
  %103 = load i32, i32* %8, align 4, !dbg !550
  %104 = zext i32 %103 to i64, !dbg !551
  %105 = load %struct.MXUserHisto*, %struct.MXUserHisto** %4, align 8, !dbg !551
  %106 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %105, i32 0, i32 6, !dbg !552
  %107 = getelementptr inbounds [10 x %struct.TopOwner], [10 x %struct.TopOwner]* %106, i64 0, i64 %104, !dbg !551
  %108 = getelementptr inbounds %struct.TopOwner, %struct.TopOwner* %107, i32 0, i32 1, !dbg !553
  store i64 %102, i64* %108, align 8, !dbg !554
  br label %109, !dbg !555

; <label>:109:                                    ; preds = %94, %84
  ret void, !dbg !556
}

; Function Attrs: nounwind uwtable
define internal i32 @MXUserHistoIndex(i64) #0 !dbg !557 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !560, metadata !100), !dbg !561
  call void @llvm.dbg.declare(metadata i32* %3, metadata !562, metadata !100), !dbg !563
  %6 = load i64, i64* %2, align 8, !dbg !564
  %7 = icmp eq i64 %6, 0, !dbg !566
  br i1 %7, label %8, label %9, !dbg !567

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %3, align 4, !dbg !568
  br label %15, !dbg !570

; <label>:9:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !571, metadata !100), !dbg !573
  store i32 0, i32* %4, align 4, !dbg !573
  call void @llvm.dbg.declare(metadata i32* %5, metadata !574, metadata !100), !dbg !575
  store i32 0, i32* %5, align 4, !dbg !575
  %10 = load i64, i64* %2, align 8, !dbg !576
  call void @LogFixed_Base10(i64 %10, i32* %4, i32* %5), !dbg !577
  %11 = load i32, i32* %4, align 4, !dbg !578
  %12 = mul i32 100, %11, !dbg !579
  %13 = load i32, i32* %5, align 4, !dbg !580
  %14 = udiv i32 %12, %13, !dbg !581
  store i32 %14, i32* %3, align 4, !dbg !582
  br label %15

; <label>:15:                                     ; preds = %9, %8
  %16 = load i32, i32* %3, align 4, !dbg !583
  ret i32 %16, !dbg !584
}

; Function Attrs: nounwind uwtable
define void @MXUserHistoDump(%struct.MXUserHisto*, %struct.MXUserHeader*) #0 !dbg !585 {
  %3 = alloca %struct.MXUserHisto*, align 8
  %4 = alloca %struct.MXUserHeader*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  store %struct.MXUserHisto* %0, %struct.MXUserHisto** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHisto** %3, metadata !588, metadata !100), !dbg !589
  store %struct.MXUserHeader* %1, %struct.MXUserHeader** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %4, metadata !590, metadata !100), !dbg !591
  %12 = load %struct.MXUserHisto*, %struct.MXUserHisto** %3, align 8, !dbg !592
  %13 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %12, i32 0, i32 2, !dbg !594
  %14 = load i64, i64* %13, align 8, !dbg !594
  %15 = icmp ne i64 %14, 0, !dbg !592
  br i1 %15, label %16, label %172, !dbg !595

; <label>:16:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !596, metadata !100), !dbg !598
  call void @llvm.dbg.declare(metadata i32* %6, metadata !599, metadata !100), !dbg !600
  call void @llvm.dbg.declare(metadata i32* %7, metadata !601, metadata !100), !dbg !602
  %17 = load i8*, i8** @mxUserHistoLine, align 8, !dbg !603
  %18 = load i32, i32* @mxUserMaxLineLength, align 4, !dbg !604
  %19 = zext i32 %18 to i64, !dbg !604
  %20 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !605
  %21 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %20, i32 0, i32 3, !dbg !606
  %22 = bitcast %struct.anon* %21 to i32*, !dbg !607
  %23 = load i32, i32* %22, align 4, !dbg !607
  %24 = and i32 %23, 16777215, !dbg !607
  %25 = load %struct.MXUserHisto*, %struct.MXUserHisto** %3, align 8, !dbg !608
  %26 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %25, i32 0, i32 0, !dbg !609
  %27 = load i8*, i8** %26, align 8, !dbg !609
  %28 = load %struct.MXUserHisto*, %struct.MXUserHisto** %3, align 8, !dbg !610
  %29 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %28, i32 0, i32 3, !dbg !611
  %30 = load i64, i64* %29, align 8, !dbg !611
  %31 = load %struct.MXUserHisto*, %struct.MXUserHisto** %3, align 8, !dbg !612
  %32 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %31, i32 0, i32 4, !dbg !613
  %33 = load i64, i64* %32, align 8, !dbg !613
  %34 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %17, i64 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i32 %24, i8* %27, i64 %30, i64 %33), !dbg !614
  store i32 %34, i32* %6, align 4, !dbg !615
  %35 = load i32, i32* %6, align 4, !dbg !616
  %36 = sub i32 %35, 1, !dbg !617
  %37 = zext i32 %36 to i64, !dbg !618
  %38 = load i8*, i8** @mxUserHistoLine, align 8, !dbg !618
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !618
  store i8* %39, i8** %5, align 8, !dbg !619
  %40 = load i32, i32* @mxUserMaxLineLength, align 4, !dbg !620
  %41 = load i32, i32* %6, align 4, !dbg !621
  %42 = sub i32 %40, %41, !dbg !622
  %43 = sub i32 %42, 2, !dbg !623
  store i32 %43, i32* %7, align 4, !dbg !624
  store i32 0, i32* %6, align 4, !dbg !625
  br label %44, !dbg !627

; <label>:44:                                     ; preds = %91, %16
  %45 = load i32, i32* %6, align 4, !dbg !628
  %46 = load %struct.MXUserHisto*, %struct.MXUserHisto** %3, align 8, !dbg !631
  %47 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %46, i32 0, i32 5, !dbg !632
  %48 = load i32, i32* %47, align 8, !dbg !632
  %49 = icmp ult i32 %45, %48, !dbg !633
  br i1 %49, label %50, label %94, !dbg !634

; <label>:50:                                     ; preds = %44
  %51 = load i32, i32* %6, align 4, !dbg !635
  %52 = zext i32 %51 to i64, !dbg !638
  %53 = load %struct.MXUserHisto*, %struct.MXUserHisto** %3, align 8, !dbg !638
  %54 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %53, i32 0, i32 1, !dbg !639
  %55 = load i64*, i64** %54, align 8, !dbg !639
  %56 = getelementptr inbounds i64, i64* %55, i64 %52, !dbg !638
  %57 = load i64, i64* %56, align 8, !dbg !638
  %58 = icmp ne i64 %57, 0, !dbg !640
  br i1 %58, label %59, label %90, !dbg !641

; <label>:59:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i32* %8, metadata !642, metadata !100), !dbg !644
  call void @llvm.dbg.declare(metadata [32 x i8]* %9, metadata !645, metadata !100), !dbg !649
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 0, !dbg !650
  %61 = load i32, i32* %6, align 4, !dbg !651
  %62 = load i32, i32* %6, align 4, !dbg !652
  %63 = zext i32 %62 to i64, !dbg !653
  %64 = load %struct.MXUserHisto*, %struct.MXUserHisto** %3, align 8, !dbg !653
  %65 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %64, i32 0, i32 1, !dbg !654
  %66 = load i64*, i64** %65, align 8, !dbg !654
  %67 = getelementptr inbounds i64, i64* %66, i64 %63, !dbg !653
  %68 = load i64, i64* %67, align 8, !dbg !653
  %69 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %60, i64 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %61, i64 %68), !dbg !655
  store i32 %69, i32* %8, align 4, !dbg !656
  %70 = load i32, i32* %8, align 4, !dbg !657
  %71 = load i32, i32* %7, align 4, !dbg !659
  %72 = icmp ult i32 %70, %71, !dbg !660
  br i1 %72, label %73, label %88, !dbg !661

; <label>:73:                                     ; preds = %59
  %74 = load i8*, i8** %5, align 8, !dbg !662
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 0, !dbg !664
  %76 = load i32, i32* %8, align 4, !dbg !665
  %77 = add i32 %76, 1, !dbg !666
  %78 = zext i32 %77 to i64, !dbg !665
  %79 = call i8* @Str_Strcpy(i8* %74, i8* %75, i64 %78), !dbg !667
  %80 = load i32, i32* %8, align 4, !dbg !668
  %81 = sub i32 %80, 1, !dbg !669
  %82 = load i8*, i8** %5, align 8, !dbg !670
  %83 = zext i32 %81 to i64, !dbg !670
  %84 = getelementptr inbounds i8, i8* %82, i64 %83, !dbg !670
  store i8* %84, i8** %5, align 8, !dbg !670
  %85 = load i32, i32* %8, align 4, !dbg !671
  %86 = load i32, i32* %7, align 4, !dbg !672
  %87 = sub i32 %86, %85, !dbg !672
  store i32 %87, i32* %7, align 4, !dbg !672
  br label %89, !dbg !673

; <label>:88:                                     ; preds = %59
  br label %94, !dbg !674

; <label>:89:                                     ; preds = %73
  br label %90, !dbg !676

; <label>:90:                                     ; preds = %89, %50
  br label %91, !dbg !677

; <label>:91:                                     ; preds = %90
  %92 = load i32, i32* %6, align 4, !dbg !678
  %93 = add i32 %92, 1, !dbg !678
  store i32 %93, i32* %6, align 4, !dbg !678
  br label %44, !dbg !680, !llvm.loop !681

; <label>:94:                                     ; preds = %88, %44
  %95 = load i8*, i8** @mxUserHistoLine, align 8, !dbg !683
  call void (i8*, ...) @MXUserStatsLog(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %95), !dbg !684
  %96 = load i8*, i8** @mxUserHistoLine, align 8, !dbg !685
  %97 = load i32, i32* @mxUserMaxLineLength, align 4, !dbg !686
  %98 = zext i32 %97 to i64, !dbg !686
  %99 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !687
  %100 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %99, i32 0, i32 3, !dbg !688
  %101 = bitcast %struct.anon* %100 to i32*, !dbg !689
  %102 = load i32, i32* %101, align 4, !dbg !689
  %103 = and i32 %102, 16777215, !dbg !689
  %104 = load %struct.MXUserHisto*, %struct.MXUserHisto** %3, align 8, !dbg !690
  %105 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %104, i32 0, i32 0, !dbg !691
  %106 = load i8*, i8** %105, align 8, !dbg !691
  %107 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %96, i64 %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %103, i8* %106), !dbg !692
  store i32 %107, i32* %6, align 4, !dbg !693
  %108 = load i32, i32* %6, align 4, !dbg !694
  %109 = sub i32 %108, 1, !dbg !695
  %110 = zext i32 %109 to i64, !dbg !696
  %111 = load i8*, i8** @mxUserHistoLine, align 8, !dbg !696
  %112 = getelementptr inbounds i8, i8* %111, i64 %110, !dbg !696
  store i8* %112, i8** %5, align 8, !dbg !697
  %113 = load i32, i32* @mxUserMaxLineLength, align 4, !dbg !698
  %114 = load i32, i32* %6, align 4, !dbg !699
  %115 = sub i32 %113, %114, !dbg !700
  %116 = sub i32 %115, 2, !dbg !701
  store i32 %116, i32* %7, align 4, !dbg !702
  store i32 0, i32* %6, align 4, !dbg !703
  br label %117, !dbg !705

; <label>:117:                                    ; preds = %167, %94
  %118 = load i32, i32* %6, align 4, !dbg !706
  %119 = icmp ult i32 %118, 10, !dbg !709
  br i1 %119, label %120, label %170, !dbg !710

; <label>:120:                                    ; preds = %117
  %121 = load i32, i32* %6, align 4, !dbg !711
  %122 = zext i32 %121 to i64, !dbg !714
  %123 = load %struct.MXUserHisto*, %struct.MXUserHisto** %3, align 8, !dbg !714
  %124 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %123, i32 0, i32 6, !dbg !715
  %125 = getelementptr inbounds [10 x %struct.TopOwner], [10 x %struct.TopOwner]* %124, i64 0, i64 %122, !dbg !714
  %126 = getelementptr inbounds %struct.TopOwner, %struct.TopOwner* %125, i32 0, i32 0, !dbg !716
  %127 = load i8*, i8** %126, align 8, !dbg !716
  %128 = icmp ne i8* %127, null, !dbg !717
  br i1 %128, label %129, label %166, !dbg !718

; <label>:129:                                    ; preds = %120
  call void @llvm.dbg.declare(metadata i32* %10, metadata !719, metadata !100), !dbg !721
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !722, metadata !100), !dbg !723
  %130 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !724
  %131 = load i32, i32* %6, align 4, !dbg !725
  %132 = zext i32 %131 to i64, !dbg !726
  %133 = load %struct.MXUserHisto*, %struct.MXUserHisto** %3, align 8, !dbg !726
  %134 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %133, i32 0, i32 6, !dbg !727
  %135 = getelementptr inbounds [10 x %struct.TopOwner], [10 x %struct.TopOwner]* %134, i64 0, i64 %132, !dbg !726
  %136 = getelementptr inbounds %struct.TopOwner, %struct.TopOwner* %135, i32 0, i32 0, !dbg !728
  %137 = load i8*, i8** %136, align 8, !dbg !728
  %138 = load i32, i32* %6, align 4, !dbg !729
  %139 = zext i32 %138 to i64, !dbg !730
  %140 = load %struct.MXUserHisto*, %struct.MXUserHisto** %3, align 8, !dbg !730
  %141 = getelementptr inbounds %struct.MXUserHisto, %struct.MXUserHisto* %140, i32 0, i32 6, !dbg !731
  %142 = getelementptr inbounds [10 x %struct.TopOwner], [10 x %struct.TopOwner]* %141, i64 0, i64 %139, !dbg !730
  %143 = getelementptr inbounds %struct.TopOwner, %struct.TopOwner* %142, i32 0, i32 1, !dbg !732
  %144 = load i64, i64* %143, align 8, !dbg !732
  %145 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %130, i64 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %137, i64 %144), !dbg !733
  store i32 %145, i32* %10, align 4, !dbg !734
  %146 = load i32, i32* %10, align 4, !dbg !735
  %147 = load i32, i32* %7, align 4, !dbg !737
  %148 = icmp ult i32 %146, %147, !dbg !738
  br i1 %148, label %149, label %164, !dbg !739

; <label>:149:                                    ; preds = %129
  %150 = load i8*, i8** %5, align 8, !dbg !740
  %151 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !742
  %152 = load i32, i32* %10, align 4, !dbg !743
  %153 = add i32 %152, 1, !dbg !744
  %154 = zext i32 %153 to i64, !dbg !743
  %155 = call i8* @Str_Strcpy(i8* %150, i8* %151, i64 %154), !dbg !745
  %156 = load i32, i32* %10, align 4, !dbg !746
  %157 = sub i32 %156, 1, !dbg !747
  %158 = load i8*, i8** %5, align 8, !dbg !748
  %159 = zext i32 %157 to i64, !dbg !748
  %160 = getelementptr inbounds i8, i8* %158, i64 %159, !dbg !748
  store i8* %160, i8** %5, align 8, !dbg !748
  %161 = load i32, i32* %10, align 4, !dbg !749
  %162 = load i32, i32* %7, align 4, !dbg !750
  %163 = sub i32 %162, %161, !dbg !750
  store i32 %163, i32* %7, align 4, !dbg !750
  br label %165, !dbg !751

; <label>:164:                                    ; preds = %129
  br label %170, !dbg !752

; <label>:165:                                    ; preds = %149
  br label %166, !dbg !754

; <label>:166:                                    ; preds = %165, %120
  br label %167, !dbg !755

; <label>:167:                                    ; preds = %166
  %168 = load i32, i32* %6, align 4, !dbg !756
  %169 = add i32 %168, 1, !dbg !756
  store i32 %169, i32* %6, align 4, !dbg !756
  br label %117, !dbg !758, !llvm.loop !759

; <label>:170:                                    ; preds = %164, %117
  %171 = load i8*, i8** @mxUserHistoLine, align 8, !dbg !761
  call void (i8*, ...) @MXUserStatsLog(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %171), !dbg !762
  br label %172, !dbg !763

; <label>:172:                                    ; preds = %170, %2
  ret void, !dbg !764
}

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #2

declare i8* @Str_Strcpy(i8*, i8*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserStatsLog(i8*, ...) #3 !dbg !765 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !768, metadata !100), !dbg !769
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !770, metadata !100), !dbg !778
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !779
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !779
  call void @llvm.va_start(i8* %5), !dbg !779
  %6 = load void (i8*, i8*, %struct.__va_list_tag*)*, void (i8*, i8*, %struct.__va_list_tag*)** @mxUserStatsFunc, align 8, !dbg !780
  %7 = load i8*, i8** @mxUserStatsContext, align 8, !dbg !781
  %8 = load i8*, i8** %2, align 8, !dbg !782
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !783
  call void %6(i8* %7, i8* %8, %struct.__va_list_tag* %9), !dbg !784
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !785
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !785
  call void @llvm.va_end(i8* %11), !dbg !785
  ret void, !dbg !786
}

; Function Attrs: nounwind uwtable
define void @MXUserBasicStatsSample(%struct.MXUserBasicStats*, i64) #0 !dbg !787 {
  %3 = alloca %struct.MXUserBasicStats*, align 8
  %4 = alloca i64, align 8
  store %struct.MXUserBasicStats* %0, %struct.MXUserBasicStats** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserBasicStats** %3, metadata !800, metadata !100), !dbg !801
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !802, metadata !100), !dbg !803
  %5 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !804
  %6 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %5, i32 0, i32 1, !dbg !805
  %7 = load i64, i64* %6, align 8, !dbg !806
  %8 = add i64 %7, 1, !dbg !806
  store i64 %8, i64* %6, align 8, !dbg !806
  %9 = load i64, i64* %4, align 8, !dbg !807
  %10 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !809
  %11 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %10, i32 0, i32 2, !dbg !810
  %12 = load i64, i64* %11, align 8, !dbg !810
  %13 = icmp ult i64 %9, %12, !dbg !811
  br i1 %13, label %14, label %18, !dbg !812

; <label>:14:                                     ; preds = %2
  %15 = load i64, i64* %4, align 8, !dbg !813
  %16 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !815
  %17 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %16, i32 0, i32 2, !dbg !816
  store i64 %15, i64* %17, align 8, !dbg !817
  br label %18, !dbg !818

; <label>:18:                                     ; preds = %14, %2
  %19 = load i64, i64* %4, align 8, !dbg !819
  %20 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !821
  %21 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %20, i32 0, i32 3, !dbg !822
  %22 = load i64, i64* %21, align 8, !dbg !822
  %23 = icmp ugt i64 %19, %22, !dbg !823
  br i1 %23, label %24, label %28, !dbg !824

; <label>:24:                                     ; preds = %18
  %25 = load i64, i64* %4, align 8, !dbg !825
  %26 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !827
  %27 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %26, i32 0, i32 3, !dbg !828
  store i64 %25, i64* %27, align 8, !dbg !829
  br label %28, !dbg !830

; <label>:28:                                     ; preds = %24, %18
  %29 = load i64, i64* %4, align 8, !dbg !831
  %30 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !832
  %31 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %30, i32 0, i32 4, !dbg !833
  %32 = load i64, i64* %31, align 8, !dbg !834
  %33 = add i64 %32, %29, !dbg !834
  store i64 %33, i64* %31, align 8, !dbg !834
  %34 = load i64, i64* %4, align 8, !dbg !835
  %35 = uitofp i64 %34 to double, !dbg !836
  %36 = load i64, i64* %4, align 8, !dbg !837
  %37 = uitofp i64 %36 to double, !dbg !838
  %38 = fmul double %35, %37, !dbg !839
  %39 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !840
  %40 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %39, i32 0, i32 5, !dbg !841
  %41 = load double, double* %40, align 8, !dbg !842
  %42 = fadd double %41, %38, !dbg !842
  store double %42, double* %40, align 8, !dbg !842
  ret void, !dbg !843
}

; Function Attrs: nounwind uwtable
define void @MXUserBasicStatsSetUp(%struct.MXUserBasicStats*, i8*) #0 !dbg !844 {
  %3 = alloca %struct.MXUserBasicStats*, align 8
  %4 = alloca i8*, align 8
  store %struct.MXUserBasicStats* %0, %struct.MXUserBasicStats** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserBasicStats** %3, metadata !847, metadata !100), !dbg !848
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !849, metadata !100), !dbg !850
  %5 = load i8*, i8** %4, align 8, !dbg !851
  %6 = call i8* @UtilSafeStrdup0(i8* %5), !dbg !852
  %7 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !853
  %8 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %7, i32 0, i32 0, !dbg !854
  store i8* %6, i8** %8, align 8, !dbg !855
  %9 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !856
  %10 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %9, i32 0, i32 1, !dbg !857
  store i64 0, i64* %10, align 8, !dbg !858
  %11 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !859
  %12 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %11, i32 0, i32 2, !dbg !860
  store i64 -1, i64* %12, align 8, !dbg !861
  %13 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !862
  %14 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %13, i32 0, i32 3, !dbg !863
  store i64 0, i64* %14, align 8, !dbg !864
  %15 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !865
  %16 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %15, i32 0, i32 4, !dbg !866
  store i64 0, i64* %16, align 8, !dbg !867
  %17 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !868
  %18 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %17, i32 0, i32 5, !dbg !869
  store double 0.000000e+00, double* %18, align 8, !dbg !870
  ret void, !dbg !871
}

; Function Attrs: nounwind uwtable
define void @MXUserDumpBasicStats(%struct.MXUserBasicStats*, %struct.MXUserHeader*) #0 !dbg !872 {
  %3 = alloca %struct.MXUserBasicStats*, align 8
  %4 = alloca %struct.MXUserHeader*, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.MXUserBasicStats* %0, %struct.MXUserBasicStats** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserBasicStats** %3, metadata !875, metadata !100), !dbg !876
  store %struct.MXUserHeader* %1, %struct.MXUserHeader** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %4, metadata !877, metadata !100), !dbg !878
  call void @llvm.dbg.declare(metadata i64* %5, metadata !879, metadata !100), !dbg !880
  %9 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !881
  %10 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %9, i32 0, i32 1, !dbg !883
  %11 = load i64, i64* %10, align 8, !dbg !883
  %12 = icmp ult i64 %11, 2, !dbg !884
  br i1 %12, label %13, label %20, !dbg !885

; <label>:13:                                     ; preds = %2
  %14 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !886
  %15 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %14, i32 0, i32 1, !dbg !889
  %16 = load i64, i64* %15, align 8, !dbg !889
  %17 = icmp eq i64 %16, 0, !dbg !890
  br i1 %17, label %18, label %19, !dbg !891

; <label>:18:                                     ; preds = %13
  br label %79, !dbg !892

; <label>:19:                                     ; preds = %13
  store i64 0, i64* %5, align 8, !dbg !894
  br label %53, !dbg !895

; <label>:20:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !896, metadata !100), !dbg !898
  call void @llvm.dbg.declare(metadata double* %7, metadata !899, metadata !100), !dbg !900
  call void @llvm.dbg.declare(metadata double* %8, metadata !901, metadata !100), !dbg !902
  %21 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !903
  %22 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %21, i32 0, i32 1, !dbg !904
  %23 = load i64, i64* %22, align 8, !dbg !904
  %24 = uitofp i64 %23 to double, !dbg !905
  store double %24, double* %6, align 8, !dbg !906
  %25 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !907
  %26 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %25, i32 0, i32 4, !dbg !908
  %27 = load i64, i64* %26, align 8, !dbg !908
  %28 = uitofp i64 %27 to double, !dbg !909
  %29 = load double, double* %6, align 8, !dbg !910
  %30 = fdiv double %28, %29, !dbg !911
  store double %30, double* %7, align 8, !dbg !912
  %31 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !913
  %32 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %31, i32 0, i32 5, !dbg !914
  %33 = load double, double* %32, align 8, !dbg !914
  %34 = load double, double* %6, align 8, !dbg !915
  %35 = load double, double* %7, align 8, !dbg !916
  %36 = fmul double %34, %35, !dbg !917
  %37 = load double, double* %7, align 8, !dbg !918
  %38 = fmul double %36, %37, !dbg !919
  %39 = fsub double %33, %38, !dbg !920
  %40 = load double, double* %6, align 8, !dbg !921
  %41 = fsub double %40, 1.000000e+00, !dbg !922
  %42 = fdiv double %39, %41, !dbg !923
  store double %42, double* %8, align 8, !dbg !924
  %43 = load double, double* %8, align 8, !dbg !925
  %44 = fcmp olt double %43, 0.000000e+00, !dbg !926
  br i1 %44, label %45, label %46, !dbg !927

; <label>:45:                                     ; preds = %20
  br label %51, !dbg !928

; <label>:46:                                     ; preds = %20
  %47 = load double, double* %8, align 8, !dbg !930
  %48 = call double @MXUserSqrt(double %47), !dbg !932
  %49 = fadd double %48, 5.000000e-01, !dbg !933
  %50 = fptoui double %49 to i64, !dbg !934
  br label %51, !dbg !935

; <label>:51:                                     ; preds = %46, %45
  %52 = phi i64 [ 0, %45 ], [ %50, %46 ], !dbg !936
  store i64 %52, i64* %5, align 8, !dbg !938
  br label %53

; <label>:53:                                     ; preds = %51, %19
  %54 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !939
  %55 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %54, i32 0, i32 3, !dbg !940
  %56 = bitcast %struct.anon* %55 to i32*, !dbg !941
  %57 = load i32, i32* %56, align 4, !dbg !941
  %58 = and i32 %57, 16777215, !dbg !941
  %59 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !942
  %60 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %59, i32 0, i32 0, !dbg !943
  %61 = load i8*, i8** %60, align 8, !dbg !943
  %62 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !944
  %63 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %62, i32 0, i32 1, !dbg !945
  %64 = load i64, i64* %63, align 8, !dbg !945
  %65 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !946
  %66 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %65, i32 0, i32 2, !dbg !947
  %67 = load i64, i64* %66, align 8, !dbg !947
  %68 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !948
  %69 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %68, i32 0, i32 3, !dbg !949
  %70 = load i64, i64* %69, align 8, !dbg !949
  %71 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !950
  %72 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %71, i32 0, i32 4, !dbg !951
  %73 = load i64, i64* %72, align 8, !dbg !951
  %74 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %3, align 8, !dbg !952
  %75 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %74, i32 0, i32 1, !dbg !953
  %76 = load i64, i64* %75, align 8, !dbg !953
  %77 = udiv i64 %73, %76, !dbg !954
  %78 = load i64, i64* %5, align 8, !dbg !955
  call void (i8*, ...) @MXUserStatsLog(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0), i32 %58, i8* %61, i64 %64, i64 %67, i64 %70, i64 %77, i64 %78), !dbg !956
  br label %79, !dbg !957

; <label>:79:                                     ; preds = %53, %18
  ret void, !dbg !958
}

; Function Attrs: nounwind uwtable
define internal double @MXUserSqrt(double) #0 !dbg !960 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !963, metadata !100), !dbg !964
  call void @llvm.dbg.declare(metadata double* %4, metadata !965, metadata !100), !dbg !966
  call void @llvm.dbg.declare(metadata double* %5, metadata !967, metadata !100), !dbg !968
  %6 = load double, double* %3, align 8, !dbg !969
  store double %6, double* %5, align 8, !dbg !968
  %7 = load double, double* %3, align 8, !dbg !970
  %8 = fcmp oeq double %7, 0.000000e+00, !dbg !972
  br i1 %8, label %9, label %10, !dbg !973

; <label>:9:                                      ; preds = %1
  store double 0.000000e+00, double* %2, align 8, !dbg !974
  br label %27, !dbg !974

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !976, !llvm.loop !977

; <label>:11:                                     ; preds = %19, %10
  %12 = load double, double* %5, align 8, !dbg !978
  store double %12, double* %4, align 8, !dbg !980
  %13 = load double, double* %4, align 8, !dbg !981
  %14 = load double, double* %3, align 8, !dbg !982
  %15 = load double, double* %4, align 8, !dbg !983
  %16 = fdiv double %14, %15, !dbg !984
  %17 = fadd double %13, %16, !dbg !985
  %18 = fdiv double %17, 2.000000e+00, !dbg !986
  store double %18, double* %5, align 8, !dbg !987
  br label %19, !dbg !988

; <label>:19:                                     ; preds = %11
  %20 = load double, double* %5, align 8, !dbg !989
  %21 = load double, double* %4, align 8, !dbg !991
  %22 = fsub double %20, %21, !dbg !992
  %23 = call double @fabs(double %22) #1, !dbg !993
  %24 = fcmp ogt double %23, 1.000000e-10, !dbg !994
  br i1 %24, label %11, label %25, !dbg !995, !llvm.loop !977

; <label>:25:                                     ; preds = %19
  %26 = load double, double* %5, align 8, !dbg !996
  store double %26, double* %2, align 8, !dbg !997
  br label %27, !dbg !997

; <label>:27:                                     ; preds = %25, %9
  %28 = load double, double* %2, align 8, !dbg !998
  ret double %28, !dbg !998
}

; Function Attrs: nounwind uwtable
define void @MXUserBasicStatsTearDown(%struct.MXUserBasicStats*) #0 !dbg !999 {
  %2 = alloca %struct.MXUserBasicStats*, align 8
  store %struct.MXUserBasicStats* %0, %struct.MXUserBasicStats** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserBasicStats** %2, metadata !1002, metadata !100), !dbg !1003
  %3 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %2, align 8, !dbg !1004
  %4 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %3, i32 0, i32 0, !dbg !1005
  %5 = load i8*, i8** %4, align 8, !dbg !1005
  call void @free(i8* %5) #8, !dbg !1006
  %6 = load %struct.MXUserBasicStats*, %struct.MXUserBasicStats** %2, align 8, !dbg !1007
  %7 = getelementptr inbounds %struct.MXUserBasicStats, %struct.MXUserBasicStats* %6, i32 0, i32 0, !dbg !1008
  store i8* null, i8** %7, align 8, !dbg !1009
  ret void, !dbg !1010
}

; Function Attrs: nounwind uwtable
define void @MXUserAcquisitionStatsSetUp(%struct.MXUserAcquisitionStats*) #0 !dbg !1011 {
  %2 = alloca %struct.MXUserAcquisitionStats*, align 8
  store %struct.MXUserAcquisitionStats* %0, %struct.MXUserAcquisitionStats** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquisitionStats** %2, metadata !1027, metadata !100), !dbg !1028
  %3 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %2, align 8, !dbg !1029
  %4 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %3, i32 0, i32 8, !dbg !1030
  call void @MXUserBasicStatsSetUp(%struct.MXUserBasicStats* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !dbg !1031
  %5 = load double, double* @mxUserContentionRatioFloor, align 8, !dbg !1032
  %6 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %2, align 8, !dbg !1033
  %7 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %6, i32 0, i32 0, !dbg !1034
  store double %5, double* %7, align 8, !dbg !1035
  %8 = load i64, i64* @mxUserContentionCountFloor, align 8, !dbg !1036
  %9 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %2, align 8, !dbg !1037
  %10 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %9, i32 0, i32 1, !dbg !1038
  store i64 %8, i64* %10, align 8, !dbg !1039
  %11 = load i64, i64* @mxUserContentionDurationFloor, align 8, !dbg !1040
  %12 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %2, align 8, !dbg !1041
  %13 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %12, i32 0, i32 2, !dbg !1042
  store i64 %11, i64* %13, align 8, !dbg !1043
  %14 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %2, align 8, !dbg !1044
  %15 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %14, i32 0, i32 3, !dbg !1045
  store i64 0, i64* %15, align 8, !dbg !1046
  %16 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %2, align 8, !dbg !1047
  %17 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %16, i32 0, i32 4, !dbg !1048
  store i64 0, i64* %17, align 8, !dbg !1049
  %18 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %2, align 8, !dbg !1050
  %19 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %18, i32 0, i32 5, !dbg !1051
  store i64 0, i64* %19, align 8, !dbg !1052
  %20 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %2, align 8, !dbg !1053
  %21 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %20, i32 0, i32 7, !dbg !1054
  store i64 0, i64* %21, align 8, !dbg !1055
  %22 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %2, align 8, !dbg !1056
  %23 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %22, i32 0, i32 6, !dbg !1057
  store i64 0, i64* %23, align 8, !dbg !1058
  ret void, !dbg !1059
}

; Function Attrs: nounwind uwtable
define void @MXUserAcquisitionSample(%struct.MXUserAcquisitionStats*, i8 signext, i8 signext, i64) #0 !dbg !1060 {
  %5 = alloca %struct.MXUserAcquisitionStats*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store %struct.MXUserAcquisitionStats* %0, %struct.MXUserAcquisitionStats** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquisitionStats** %5, metadata !1063, metadata !100), !dbg !1064
  store i8 %1, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1065, metadata !100), !dbg !1066
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1067, metadata !100), !dbg !1068
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1069, metadata !100), !dbg !1070
  %9 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1071
  %10 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %9, i32 0, i32 3, !dbg !1072
  %11 = load i64, i64* %10, align 8, !dbg !1073
  %12 = add i64 %11, 1, !dbg !1073
  store i64 %12, i64* %10, align 8, !dbg !1073
  %13 = load i8, i8* %6, align 1, !dbg !1074
  %14 = icmp ne i8 %13, 0, !dbg !1074
  br i1 %14, label %15, label %41, !dbg !1076

; <label>:15:                                     ; preds = %4
  %16 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1077
  %17 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %16, i32 0, i32 4, !dbg !1079
  %18 = load i64, i64* %17, align 8, !dbg !1080
  %19 = add i64 %18, 1, !dbg !1080
  store i64 %19, i64* %17, align 8, !dbg !1080
  %20 = load i8, i8* %7, align 1, !dbg !1081
  %21 = icmp ne i8 %20, 0, !dbg !1081
  br i1 %21, label %22, label %37, !dbg !1083

; <label>:22:                                     ; preds = %15
  %23 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1084
  %24 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %23, i32 0, i32 5, !dbg !1086
  %25 = load i64, i64* %24, align 8, !dbg !1087
  %26 = add i64 %25, 1, !dbg !1087
  store i64 %26, i64* %24, align 8, !dbg !1087
  %27 = load i64, i64* %8, align 8, !dbg !1088
  %28 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1089
  %29 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %28, i32 0, i32 7, !dbg !1090
  %30 = load i64, i64* %29, align 8, !dbg !1091
  %31 = add i64 %30, %27, !dbg !1091
  store i64 %31, i64* %29, align 8, !dbg !1091
  %32 = load i64, i64* %8, align 8, !dbg !1092
  %33 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1093
  %34 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %33, i32 0, i32 6, !dbg !1094
  %35 = load i64, i64* %34, align 8, !dbg !1095
  %36 = add i64 %35, %32, !dbg !1095
  store i64 %36, i64* %34, align 8, !dbg !1095
  br label %37, !dbg !1096

; <label>:37:                                     ; preds = %22, %15
  %38 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1097
  %39 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %38, i32 0, i32 8, !dbg !1098
  %40 = load i64, i64* %8, align 8, !dbg !1099
  call void @MXUserBasicStatsSample(%struct.MXUserBasicStats* %39, i64 %40), !dbg !1100
  br label %47, !dbg !1101

; <label>:41:                                     ; preds = %4
  %42 = load i64, i64* %8, align 8, !dbg !1102
  %43 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1104
  %44 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %43, i32 0, i32 7, !dbg !1105
  %45 = load i64, i64* %44, align 8, !dbg !1106
  %46 = add i64 %45, %42, !dbg !1106
  store i64 %46, i64* %44, align 8, !dbg !1106
  br label %47

; <label>:47:                                     ; preds = %41, %37
  ret void, !dbg !1107
}

; Function Attrs: nounwind uwtable
define void @MXUserDumpAcquisitionStats(%struct.MXUserAcquisitionStats*, %struct.MXUserHeader*) #0 !dbg !1108 {
  %3 = alloca %struct.MXUserAcquisitionStats*, align 8
  %4 = alloca %struct.MXUserHeader*, align 8
  store %struct.MXUserAcquisitionStats* %0, %struct.MXUserAcquisitionStats** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquisitionStats** %3, metadata !1111, metadata !100), !dbg !1112
  store %struct.MXUserHeader* %1, %struct.MXUserHeader** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %4, metadata !1113, metadata !100), !dbg !1114
  %5 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %3, align 8, !dbg !1115
  %6 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %5, i32 0, i32 3, !dbg !1117
  %7 = load i64, i64* %6, align 8, !dbg !1117
  %8 = icmp ugt i64 %7, 0, !dbg !1118
  br i1 %8, label %9, label %39, !dbg !1119

; <label>:9:                                      ; preds = %2
  %10 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %3, align 8, !dbg !1120
  %11 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %10, i32 0, i32 4, !dbg !1123
  %12 = load i64, i64* %11, align 8, !dbg !1123
  %13 = icmp ugt i64 %12, 0, !dbg !1124
  br i1 %13, label %14, label %18, !dbg !1125

; <label>:14:                                     ; preds = %9
  %15 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %3, align 8, !dbg !1126
  %16 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %15, i32 0, i32 8, !dbg !1128
  %17 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !1129
  call void @MXUserDumpBasicStats(%struct.MXUserBasicStats* %16, %struct.MXUserHeader* %17), !dbg !1130
  br label %18, !dbg !1131

; <label>:18:                                     ; preds = %14, %9
  %19 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !1132
  %20 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %19, i32 0, i32 3, !dbg !1133
  %21 = bitcast %struct.anon* %20 to i32*, !dbg !1134
  %22 = load i32, i32* %21, align 4, !dbg !1134
  %23 = and i32 %22, 16777215, !dbg !1134
  %24 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %3, align 8, !dbg !1135
  %25 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %24, i32 0, i32 3, !dbg !1136
  %26 = load i64, i64* %25, align 8, !dbg !1136
  %27 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %3, align 8, !dbg !1137
  %28 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %27, i32 0, i32 4, !dbg !1138
  %29 = load i64, i64* %28, align 8, !dbg !1138
  %30 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %3, align 8, !dbg !1139
  %31 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %30, i32 0, i32 5, !dbg !1140
  %32 = load i64, i64* %31, align 8, !dbg !1140
  %33 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %3, align 8, !dbg !1141
  %34 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %33, i32 0, i32 6, !dbg !1142
  %35 = load i64, i64* %34, align 8, !dbg !1142
  %36 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %3, align 8, !dbg !1143
  %37 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %36, i32 0, i32 7, !dbg !1144
  %38 = load i64, i64* %37, align 8, !dbg !1144
  call void (i8*, ...) @MXUserStatsLog(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0), i32 %23, i64 %26, i64 %29, i64 %32, i64 %35, i64 %38), !dbg !1145
  br label %39, !dbg !1146

; <label>:39:                                     ; preds = %18, %2
  ret void, !dbg !1147
}

; Function Attrs: nounwind uwtable
define void @MXUserAcquisitionStatsTearDown(%struct.MXUserAcquisitionStats*) #0 !dbg !1148 {
  %2 = alloca %struct.MXUserAcquisitionStats*, align 8
  store %struct.MXUserAcquisitionStats* %0, %struct.MXUserAcquisitionStats** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquisitionStats** %2, metadata !1149, metadata !100), !dbg !1150
  %3 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %2, align 8, !dbg !1151
  %4 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %3, i32 0, i32 8, !dbg !1152
  call void @MXUserBasicStatsTearDown(%struct.MXUserBasicStats* %4), !dbg !1153
  ret void, !dbg !1154
}

; Function Attrs: nounwind uwtable
define void @MXUserKitchen(%struct.MXUserAcquisitionStats*, double*, i8*, i8*) #0 !dbg !1155 {
  %5 = alloca %struct.MXUserAcquisitionStats*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.MXUserAcquisitionStats* %0, %struct.MXUserAcquisitionStats** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquisitionStats** %5, metadata !1160, metadata !100), !dbg !1161
  store double* %1, double** %6, align 8
  call void @llvm.dbg.declare(metadata double** %6, metadata !1162, metadata !100), !dbg !1163
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1164, metadata !100), !dbg !1165
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1166, metadata !100), !dbg !1167
  %11 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1168
  %12 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %11, i32 0, i32 3, !dbg !1170
  %13 = load i64, i64* %12, align 8, !dbg !1170
  %14 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1171
  %15 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %14, i32 0, i32 1, !dbg !1172
  %16 = load i64, i64* %15, align 8, !dbg !1172
  %17 = icmp ult i64 %13, %16, !dbg !1173
  br i1 %17, label %18, label %20, !dbg !1174

; <label>:18:                                     ; preds = %4
  %19 = load double*, double** %6, align 8, !dbg !1175
  store double 0.000000e+00, double* %19, align 8, !dbg !1177
  br label %54, !dbg !1178

; <label>:20:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %9, metadata !1179, metadata !100), !dbg !1181
  call void @llvm.dbg.declare(metadata double* %10, metadata !1182, metadata !100), !dbg !1183
  %21 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1184
  %22 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %21, i32 0, i32 3, !dbg !1185
  %23 = load i64, i64* %22, align 8, !dbg !1185
  %24 = uitofp i64 %23 to double, !dbg !1186
  %25 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1187
  %26 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %25, i32 0, i32 4, !dbg !1188
  %27 = load i64, i64* %26, align 8, !dbg !1188
  %28 = uitofp i64 %27 to double, !dbg !1187
  %29 = fsub double %24, %28, !dbg !1189
  %30 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1190
  %31 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %30, i32 0, i32 3, !dbg !1191
  %32 = load i64, i64* %31, align 8, !dbg !1191
  %33 = uitofp i64 %32 to double, !dbg !1192
  %34 = fdiv double %29, %33, !dbg !1193
  store double %34, double* %9, align 8, !dbg !1194
  %35 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1195
  %36 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %35, i32 0, i32 5, !dbg !1196
  %37 = load i64, i64* %36, align 8, !dbg !1196
  %38 = uitofp i64 %37 to double, !dbg !1197
  %39 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1198
  %40 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %39, i32 0, i32 4, !dbg !1199
  %41 = load i64, i64* %40, align 8, !dbg !1199
  %42 = uitofp i64 %41 to double, !dbg !1200
  %43 = fdiv double %38, %42, !dbg !1201
  store double %43, double* %10, align 8, !dbg !1202
  %44 = load double, double* %9, align 8, !dbg !1203
  %45 = load double, double* %10, align 8, !dbg !1204
  %46 = fcmp olt double %44, %45, !dbg !1205
  br i1 %46, label %47, label %49, !dbg !1206

; <label>:47:                                     ; preds = %20
  %48 = load double, double* %10, align 8, !dbg !1207
  br label %51, !dbg !1209

; <label>:49:                                     ; preds = %20
  %50 = load double, double* %9, align 8, !dbg !1210
  br label %51, !dbg !1212

; <label>:51:                                     ; preds = %49, %47
  %52 = phi double [ %48, %47 ], [ %50, %49 ], !dbg !1213
  %53 = load double*, double** %6, align 8, !dbg !1215
  store double %52, double* %53, align 8, !dbg !1216
  br label %54

; <label>:54:                                     ; preds = %51, %18
  %55 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1217
  %56 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %55, i32 0, i32 1, !dbg !1219
  %57 = load i64, i64* %56, align 8, !dbg !1219
  %58 = icmp eq i64 %57, 0, !dbg !1220
  br i1 %58, label %59, label %62, !dbg !1221

; <label>:59:                                     ; preds = %54
  %60 = load i8*, i8** %7, align 8, !dbg !1222
  store i8 0, i8* %60, align 1, !dbg !1224
  %61 = load i8*, i8** %8, align 8, !dbg !1225
  store i8 0, i8* %61, align 1, !dbg !1226
  br label %83, !dbg !1227

; <label>:62:                                     ; preds = %54
  %63 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1228
  %64 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %63, i32 0, i32 1, !dbg !1230
  %65 = load i64, i64* %64, align 8, !dbg !1230
  %66 = icmp eq i64 %65, -1, !dbg !1231
  br i1 %66, label %67, label %70, !dbg !1232

; <label>:67:                                     ; preds = %62
  %68 = load i8*, i8** %7, align 8, !dbg !1233
  store i8 1, i8* %68, align 1, !dbg !1235
  %69 = load i8*, i8** %8, align 8, !dbg !1236
  store i8 0, i8* %69, align 1, !dbg !1237
  br label %83, !dbg !1238

; <label>:70:                                     ; preds = %62
  %71 = load double*, double** %6, align 8, !dbg !1239
  %72 = load double, double* %71, align 8, !dbg !1241
  %73 = load %struct.MXUserAcquisitionStats*, %struct.MXUserAcquisitionStats** %5, align 8, !dbg !1242
  %74 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %73, i32 0, i32 0, !dbg !1243
  %75 = load double, double* %74, align 8, !dbg !1243
  %76 = fcmp ogt double %72, %75, !dbg !1244
  br i1 %76, label %77, label %80, !dbg !1245

; <label>:77:                                     ; preds = %70
  %78 = load i8*, i8** %7, align 8, !dbg !1246
  store i8 1, i8* %78, align 1, !dbg !1248
  %79 = load i8*, i8** %8, align 8, !dbg !1249
  store i8 1, i8* %79, align 1, !dbg !1250
  br label %83, !dbg !1251

; <label>:80:                                     ; preds = %70
  %81 = load i8*, i8** %8, align 8, !dbg !1252
  store i8 0, i8* %81, align 1, !dbg !1254
  %82 = load i8*, i8** %7, align 8, !dbg !1255
  store i8 0, i8* %82, align 1, !dbg !1256
  br label %83

; <label>:83:                                     ; preds = %59, %67, %80, %77
  ret void, !dbg !1257
}

; Function Attrs: nounwind uwtable
define void @MXUser_StatisticsControl(double, i64, i64) #0 !dbg !1258 {
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1261, metadata !100), !dbg !1262
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1263, metadata !100), !dbg !1264
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1265, metadata !100), !dbg !1266
  %7 = load double, double* %4, align 8, !dbg !1267
  store double %7, double* @mxUserContentionRatioFloor, align 8, !dbg !1268
  %8 = load i64, i64* %5, align 8, !dbg !1269
  store i64 %8, i64* @mxUserContentionCountFloor, align 8, !dbg !1270
  %9 = load i64, i64* %6, align 8, !dbg !1271
  store i64 %9, i64* @mxUserContentionDurationFloor, align 8, !dbg !1272
  ret void, !dbg !1273
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUserForceAcquisitionHisto(%struct.Atomic_uint64*, i64, i32) #0 !dbg !1274 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MXUserAcquireStats*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !1278, metadata !100), !dbg !1279
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1280, metadata !100), !dbg !1281
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1282, metadata !100), !dbg !1283
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquireStats** %7, metadata !1284, metadata !100), !dbg !1291
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1292
  %9 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %8), !dbg !1293
  %10 = bitcast i8* %9 to %struct.MXUserAcquireStats*, !dbg !1293
  store %struct.MXUserAcquireStats* %10, %struct.MXUserAcquireStats** %7, align 8, !dbg !1291
  %11 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %7, align 8, !dbg !1294
  %12 = icmp ne %struct.MXUserAcquireStats* %11, null, !dbg !1296
  %13 = xor i1 %12, true, !dbg !1297
  %14 = xor i1 %13, true, !dbg !1298
  %15 = zext i1 %14 to i32, !dbg !1298
  %16 = sext i32 %15 to i64, !dbg !1298
  %17 = icmp ne i64 %16, 0, !dbg !1299
  br i1 %17, label %18, label %23, !dbg !1300

; <label>:18:                                     ; preds = %3
  %19 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %7, align 8, !dbg !1301
  %20 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %19, i32 0, i32 1, !dbg !1303
  %21 = load i64, i64* %5, align 8, !dbg !1304
  %22 = load i32, i32* %6, align 4, !dbg !1305
  call void @MXUserForceHisto(%struct.Atomic_uint64* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i64 %21, i32 %22), !dbg !1306
  br label %23, !dbg !1307

; <label>:23:                                     ; preds = %18, %3
  %24 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %7, align 8, !dbg !1308
  %25 = icmp ne %struct.MXUserAcquireStats* %24, null, !dbg !1309
  %26 = zext i1 %25 to i32, !dbg !1309
  %27 = trunc i32 %26 to i8, !dbg !1310
  ret i8 %27, !dbg !1311
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadPtr(%struct.Atomic_uint64*) #3 !dbg !1312 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !1317, metadata !100), !dbg !1318
  %3 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !1319
  %4 = call i64 @Atomic_Read64(%struct.Atomic_uint64* %3), !dbg !1320
  %5 = inttoptr i64 %4 to i8*, !dbg !1321
  ret i8* %5, !dbg !1322
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXUserForceHisto(%struct.Atomic_uint64*, i8*, i64, i32) #3 !dbg !1323 {
  %5 = alloca %struct.Atomic_uint64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.MXUserHisto*, align 8
  %10 = alloca %struct.MXUserHisto*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %5, metadata !1326, metadata !100), !dbg !1327
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1328, metadata !100), !dbg !1329
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1330, metadata !100), !dbg !1331
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1332, metadata !100), !dbg !1333
  call void @llvm.dbg.declare(metadata %struct.MXUserHisto** %9, metadata !1334, metadata !100), !dbg !1335
  %11 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %5, align 8, !dbg !1336
  %12 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %11), !dbg !1337
  %13 = bitcast i8* %12 to %struct.MXUserHisto*, !dbg !1337
  store %struct.MXUserHisto* %13, %struct.MXUserHisto** %9, align 8, !dbg !1335
  %14 = load %struct.MXUserHisto*, %struct.MXUserHisto** %9, align 8, !dbg !1338
  %15 = icmp eq %struct.MXUserHisto* %14, null, !dbg !1340
  br i1 %15, label %16, label %31, !dbg !1341

; <label>:16:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.MXUserHisto** %10, metadata !1342, metadata !100), !dbg !1344
  %17 = load i8*, i8** %6, align 8, !dbg !1345
  %18 = load i64, i64* %7, align 8, !dbg !1346
  %19 = load i32, i32* %8, align 4, !dbg !1347
  %20 = call %struct.MXUserHisto* @MXUserHistoSetUp(i8* %17, i64 %18, i32 %19), !dbg !1348
  store %struct.MXUserHisto* %20, %struct.MXUserHisto** %9, align 8, !dbg !1349
  %21 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %5, align 8, !dbg !1350
  %22 = load %struct.MXUserHisto*, %struct.MXUserHisto** %9, align 8, !dbg !1351
  %23 = bitcast %struct.MXUserHisto* %22 to i8*, !dbg !1352
  %24 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %21, i8* null, i8* %23), !dbg !1353
  %25 = bitcast i8* %24 to %struct.MXUserHisto*, !dbg !1353
  store %struct.MXUserHisto* %25, %struct.MXUserHisto** %10, align 8, !dbg !1354
  %26 = load %struct.MXUserHisto*, %struct.MXUserHisto** %10, align 8, !dbg !1355
  %27 = icmp ne %struct.MXUserHisto* %26, null, !dbg !1355
  br i1 %27, label %28, label %30, !dbg !1357

; <label>:28:                                     ; preds = %16
  %29 = load %struct.MXUserHisto*, %struct.MXUserHisto** %9, align 8, !dbg !1358
  call void @MXUserHistoTearDown(%struct.MXUserHisto* %29), !dbg !1360
  br label %30, !dbg !1361

; <label>:30:                                     ; preds = %28, %16
  br label %31, !dbg !1362

; <label>:31:                                     ; preds = %30, %4
  ret void, !dbg !1363
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUserForceHeldHisto(%struct.Atomic_uint64*, i64, i32) #0 !dbg !1364 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MXUserHeldStats*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !1365, metadata !100), !dbg !1366
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1367, metadata !100), !dbg !1368
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1369, metadata !100), !dbg !1370
  call void @llvm.dbg.declare(metadata %struct.MXUserHeldStats** %7, metadata !1371, metadata !100), !dbg !1379
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1380
  %9 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %8), !dbg !1381
  %10 = bitcast i8* %9 to %struct.MXUserHeldStats*, !dbg !1381
  store %struct.MXUserHeldStats* %10, %struct.MXUserHeldStats** %7, align 8, !dbg !1379
  %11 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %7, align 8, !dbg !1382
  %12 = icmp ne %struct.MXUserHeldStats* %11, null, !dbg !1384
  %13 = xor i1 %12, true, !dbg !1385
  %14 = xor i1 %13, true, !dbg !1386
  %15 = zext i1 %14 to i32, !dbg !1386
  %16 = sext i32 %15 to i64, !dbg !1386
  %17 = icmp ne i64 %16, 0, !dbg !1387
  br i1 %17, label %18, label %23, !dbg !1388

; <label>:18:                                     ; preds = %3
  %19 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %7, align 8, !dbg !1389
  %20 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %19, i32 0, i32 2, !dbg !1391
  %21 = load i64, i64* %5, align 8, !dbg !1392
  %22 = load i32, i32* %6, align 4, !dbg !1393
  call void @MXUserForceHisto(%struct.Atomic_uint64* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i64 %21, i32 %22), !dbg !1394
  br label %23, !dbg !1395

; <label>:23:                                     ; preds = %18, %3
  %24 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %7, align 8, !dbg !1396
  %25 = icmp ne %struct.MXUserHeldStats* %24, null, !dbg !1397
  %26 = zext i1 %25 to i32, !dbg !1397
  %27 = trunc i32 %26 to i8, !dbg !1398
  ret i8 %27, !dbg !1399
}

; Function Attrs: nounwind uwtable
define i32 @MXUserStatsMode() #0 !dbg !1400 {
  ret i32 0, !dbg !1401
}

; Function Attrs: nounwind uwtable
define void @MXUser_SetStatsFunc(i8*, i32, i8 signext, void (i8*, i8*, %struct.__va_list_tag*)*) #0 !dbg !1404 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca void (i8*, i8*, %struct.__va_list_tag*)*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1407, metadata !100), !dbg !1408
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1409, metadata !100), !dbg !1410
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1411, metadata !100), !dbg !1412
  store void (i8*, i8*, %struct.__va_list_tag*)* %3, void (i8*, i8*, %struct.__va_list_tag*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, %struct.__va_list_tag*)** %8, metadata !1413, metadata !100), !dbg !1414
  %9 = load i8*, i8** @mxUserHistoLine, align 8, !dbg !1415
  call void @free(i8* %9) #8, !dbg !1416
  %10 = load i32, i32* %6, align 4, !dbg !1417
  %11 = zext i32 %10 to i64, !dbg !1418
  %12 = call i8* @UtilSafeMalloc0(i64 %11), !dbg !1419
  store i8* %12, i8** @mxUserHistoLine, align 8, !dbg !1420
  %13 = load i8*, i8** %5, align 8, !dbg !1421
  store i8* %13, i8** @mxUserStatsContext, align 8, !dbg !1422
  %14 = load i32, i32* %6, align 4, !dbg !1423
  store i32 %14, i32* @mxUserMaxLineLength, align 4, !dbg !1424
  %15 = load void (i8*, i8*, %struct.__va_list_tag*)*, void (i8*, i8*, %struct.__va_list_tag*)** %8, align 8, !dbg !1425
  store void (i8*, i8*, %struct.__va_list_tag*)* %15, void (i8*, i8*, %struct.__va_list_tag*)** @mxUserStatsFunc, align 8, !dbg !1426
  %16 = load i8, i8* %7, align 1, !dbg !1427
  store i8 %16, i8* @mxUserTrackHeldTimes, align 1, !dbg !1428
  ret void, !dbg !1429
}

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: nounwind uwtable
define void @MXUser_PerLockData() #0 !dbg !49 {
  %1 = alloca %struct.MXRecLock*, align 8
  %2 = alloca %struct.ListItem*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.MXUserHeader*, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %1, metadata !1430, metadata !100), !dbg !1431
  %5 = call %struct.MXRecLock* @MXUserInternalSingleton(%struct.Atomic_uint64* @mxLockMemPtr), !dbg !1432
  store %struct.MXRecLock* %5, %struct.MXRecLock** %1, align 8, !dbg !1431
  %6 = load void (i8*, i8*, %struct.__va_list_tag*)*, void (i8*, i8*, %struct.__va_list_tag*)** @mxUserStatsFunc, align 8, !dbg !1433
  %7 = icmp eq void (i8*, i8*, %struct.__va_list_tag*)* %6, null, !dbg !1435
  br i1 %7, label %8, label %9, !dbg !1436

; <label>:8:                                      ; preds = %0
  br label %92, !dbg !1437

; <label>:9:                                      ; preds = %0
  %10 = load %struct.MXRecLock*, %struct.MXRecLock** %1, align 8, !dbg !1439
  %11 = icmp ne %struct.MXRecLock* %10, null, !dbg !1439
  br i1 %11, label %12, label %92, !dbg !1441

; <label>:12:                                     ; preds = %9
  %13 = load %struct.MXRecLock*, %struct.MXRecLock** %1, align 8, !dbg !1442
  %14 = call signext i8 @MXRecLockTryAcquire(%struct.MXRecLock* %13), !dbg !1444
  %15 = sext i8 %14 to i32, !dbg !1444
  %16 = icmp ne i32 %15, 0, !dbg !1444
  br i1 %16, label %17, label %92, !dbg !1445

; <label>:17:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.ListItem** %2, metadata !1446, metadata !100), !dbg !1448
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1449, metadata !100), !dbg !1450
  %18 = load i32, i32* @MXUser_PerLockData.lastReportedSerialNumber, align 4, !dbg !1451
  store i32 %18, i32* %3, align 4, !dbg !1452
  %19 = load %struct.ListItem*, %struct.ListItem** @mxUserLockList, align 8, !dbg !1453
  %20 = call %struct.ListItem* @CircList_First(%struct.ListItem* %19), !dbg !1455
  store %struct.ListItem* %20, %struct.ListItem** %2, align 8, !dbg !1456
  br label %21, !dbg !1457

; <label>:21:                                     ; preds = %87, %17
  %22 = load %struct.ListItem*, %struct.ListItem** %2, align 8, !dbg !1458
  %23 = icmp ne %struct.ListItem* %22, null, !dbg !1461
  br i1 %23, label %24, label %89, !dbg !1462

; <label>:24:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata %struct.MXUserHeader** %4, metadata !1463, metadata !100), !dbg !1465
  %25 = load %struct.ListItem*, %struct.ListItem** %2, align 8, !dbg !1466
  %26 = bitcast %struct.ListItem* %25 to i8*, !dbg !1467
  %27 = getelementptr inbounds i8, i8* %26, i64 sub (i64 0, i64 ptrtoint (%struct.ListItem* getelementptr inbounds (%struct.MXUserHeader, %struct.MXUserHeader* null, i32 0, i32 6) to i64)), !dbg !1468
  %28 = bitcast i8* %27 to %struct.MXUserHeader*, !dbg !1469
  store %struct.MXUserHeader* %28, %struct.MXUserHeader** %4, align 8, !dbg !1465
  %29 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !1470
  %30 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %29, i32 0, i32 3, !dbg !1472
  %31 = bitcast %struct.anon* %30 to i32*, !dbg !1473
  %32 = load i32, i32* %31, align 4, !dbg !1473
  %33 = and i32 %32, 16777215, !dbg !1473
  %34 = load i32, i32* @MXUser_PerLockData.lastReportedSerialNumber, align 4, !dbg !1474
  %35 = icmp ugt i32 %33, %34, !dbg !1475
  br i1 %35, label %36, label %62, !dbg !1476

; <label>:36:                                     ; preds = %24
  %37 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !1477
  %38 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %37, i32 0, i32 1, !dbg !1479
  %39 = load i8*, i8** %38, align 8, !dbg !1479
  %40 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !1480
  %41 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %40, i32 0, i32 3, !dbg !1481
  %42 = bitcast %struct.anon* %41 to i32*, !dbg !1482
  %43 = load i32, i32* %42, align 4, !dbg !1482
  %44 = and i32 %43, 16777215, !dbg !1482
  %45 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !1483
  %46 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %45, i32 0, i32 2, !dbg !1484
  %47 = load i32, i32* %46, align 8, !dbg !1484
  call void (i8*, ...) @MXUserStatsLog(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i8* %39, i32 %44, i32 %47), !dbg !1485
  %48 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !1486
  %49 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %48, i32 0, i32 3, !dbg !1488
  %50 = bitcast %struct.anon* %49 to i32*, !dbg !1489
  %51 = load i32, i32* %50, align 4, !dbg !1489
  %52 = and i32 %51, 16777215, !dbg !1489
  %53 = load i32, i32* %3, align 4, !dbg !1490
  %54 = icmp ugt i32 %52, %53, !dbg !1491
  br i1 %54, label %55, label %61, !dbg !1492

; <label>:55:                                     ; preds = %36
  %56 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !1493
  %57 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %56, i32 0, i32 3, !dbg !1495
  %58 = bitcast %struct.anon* %57 to i32*, !dbg !1496
  %59 = load i32, i32* %58, align 4, !dbg !1496
  %60 = and i32 %59, 16777215, !dbg !1496
  store i32 %60, i32* %3, align 4, !dbg !1497
  br label %61, !dbg !1498

; <label>:61:                                     ; preds = %55, %36
  br label %62, !dbg !1499

; <label>:62:                                     ; preds = %61, %24
  %63 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !1500
  %64 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %63, i32 0, i32 5, !dbg !1502
  %65 = bitcast {}** %64 to void (%struct.MXUserHeader*)**, !dbg !1502
  %66 = load void (%struct.MXUserHeader*)*, void (%struct.MXUserHeader*)** %65, align 8, !dbg !1502
  %67 = icmp ne void (%struct.MXUserHeader*)* %66, null, !dbg !1500
  br i1 %67, label %68, label %74, !dbg !1503

; <label>:68:                                     ; preds = %62
  %69 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !1504
  %70 = getelementptr inbounds %struct.MXUserHeader, %struct.MXUserHeader* %69, i32 0, i32 5, !dbg !1506
  %71 = bitcast {}** %70 to void (%struct.MXUserHeader*)**, !dbg !1506
  %72 = load void (%struct.MXUserHeader*)*, void (%struct.MXUserHeader*)** %71, align 8, !dbg !1506
  %73 = load %struct.MXUserHeader*, %struct.MXUserHeader** %4, align 8, !dbg !1507
  call void %72(%struct.MXUserHeader* %73), !dbg !1508
  br label %74, !dbg !1509

; <label>:74:                                     ; preds = %68, %62
  br label %75, !dbg !1510

; <label>:75:                                     ; preds = %74
  %76 = load %struct.ListItem*, %struct.ListItem** %2, align 8, !dbg !1511
  %77 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %76, i32 0, i32 1, !dbg !1513
  %78 = load %struct.ListItem*, %struct.ListItem** %77, align 8, !dbg !1513
  %79 = load %struct.ListItem*, %struct.ListItem** @mxUserLockList, align 8, !dbg !1514
  %80 = call %struct.ListItem* @CircList_First(%struct.ListItem* %79), !dbg !1515
  %81 = icmp eq %struct.ListItem* %78, %80, !dbg !1516
  br i1 %81, label %82, label %83, !dbg !1517

; <label>:82:                                     ; preds = %75
  br label %87, !dbg !1518

; <label>:83:                                     ; preds = %75
  %84 = load %struct.ListItem*, %struct.ListItem** %2, align 8, !dbg !1520
  %85 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %84, i32 0, i32 1, !dbg !1522
  %86 = load %struct.ListItem*, %struct.ListItem** %85, align 8, !dbg !1522
  br label %87, !dbg !1523

; <label>:87:                                     ; preds = %83, %82
  %88 = phi %struct.ListItem* [ null, %82 ], [ %86, %83 ], !dbg !1524
  store %struct.ListItem* %88, %struct.ListItem** %2, align 8, !dbg !1526
  br label %21, !dbg !1527, !llvm.loop !1528

; <label>:89:                                     ; preds = %21
  %90 = load i32, i32* %3, align 4, !dbg !1530
  store i32 %90, i32* @MXUser_PerLockData.lastReportedSerialNumber, align 4, !dbg !1531
  %91 = load %struct.MXRecLock*, %struct.MXRecLock** %1, align 8, !dbg !1532
  call void @MXRecLockRelease(%struct.MXRecLock* %91), !dbg !1533
  br label %92, !dbg !1534

; <label>:92:                                     ; preds = %8, %89, %12, %9
  ret void, !dbg !1535
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXRecLockTryAcquire(%struct.MXRecLock*) #3 !dbg !1536 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !1539, metadata !100), !dbg !1540
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1541, metadata !100), !dbg !1542
  %5 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1543
  %6 = call i32 @MXRecLockCount(%struct.MXRecLock* %5), !dbg !1545
  %7 = icmp sgt i32 %6, 0, !dbg !1546
  %8 = zext i1 %7 to i32, !dbg !1546
  %9 = sext i32 %8 to i64, !dbg !1547
  %10 = icmp ne i64 %9, 0, !dbg !1548
  br i1 %10, label %11, label %18, !dbg !1549

; <label>:11:                                     ; preds = %1
  %12 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1550
  %13 = call signext i8 @MXRecLockIsOwner(%struct.MXRecLock* %12), !dbg !1552
  %14 = sext i8 %13 to i32, !dbg !1552
  %15 = icmp ne i32 %14, 0, !dbg !1552
  br i1 %15, label %16, label %18, !dbg !1553

; <label>:16:                                     ; preds = %11
  %17 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1554
  call void @MXRecLockIncCount(%struct.MXRecLock* %17, i32 1), !dbg !1556
  store i8 1, i8* %2, align 1, !dbg !1557
  br label %31, !dbg !1557

; <label>:18:                                     ; preds = %11, %1
  %19 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1558
  %20 = call i32 @MXRecLockTryAcquireInternal(%struct.MXRecLock* %19), !dbg !1559
  store i32 %20, i32* %4, align 4, !dbg !1560
  %21 = load i32, i32* %4, align 4, !dbg !1561
  %22 = icmp eq i32 %21, 0, !dbg !1563
  %23 = xor i1 %22, true, !dbg !1564
  %24 = xor i1 %23, true, !dbg !1565
  %25 = zext i1 %24 to i32, !dbg !1565
  %26 = sext i32 %25 to i64, !dbg !1565
  %27 = icmp ne i64 %26, 0, !dbg !1566
  br i1 %27, label %28, label %30, !dbg !1567

; <label>:28:                                     ; preds = %18
  %29 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1568
  call void @MXRecLockIncCount(%struct.MXRecLock* %29, i32 1), !dbg !1570
  store i8 1, i8* %2, align 1, !dbg !1571
  br label %31, !dbg !1571

; <label>:30:                                     ; preds = %18
  store i8 0, i8* %2, align 1, !dbg !1572
  br label %31, !dbg !1572

; <label>:31:                                     ; preds = %30, %28, %16
  %32 = load i8, i8* %2, align 1, !dbg !1573
  ret i8 %32, !dbg !1573
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.ListItem* @CircList_First(%struct.ListItem*) #3 !dbg !1574 {
  %2 = alloca %struct.ListItem*, align 8
  store %struct.ListItem* %0, %struct.ListItem** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ListItem** %2, metadata !1577, metadata !100), !dbg !1578
  %3 = load %struct.ListItem*, %struct.ListItem** %2, align 8, !dbg !1579
  ret %struct.ListItem* %3, !dbg !1580
}

; Function Attrs: nounwind uwtable
define i32 @MXUserAllocSerialNumber() #0 !dbg !54 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1581, metadata !100), !dbg !1582
  %2 = call i32 @Atomic_ReadInc32(%struct.Atomic_uint32* @MXUserAllocSerialNumber.firstFreeSerialNumber), !dbg !1583
  store i32 %2, i32* %1, align 4, !dbg !1584
  %3 = load i32, i32* %1, align 4, !dbg !1585
  %4 = icmp ugt i32 %3, 16777215, !dbg !1587
  br i1 %4, label %5, label %6, !dbg !1588

; <label>:5:                                      ; preds = %0
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.MXUserAllocSerialNumber, i32 0, i32 0)) #9, !dbg !1589
  unreachable, !dbg !1589

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* %1, align 4, !dbg !1591
  ret i32 %7, !dbg !1592
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadInc32(%struct.Atomic_uint32*) #3 !dbg !1593 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !1597, metadata !100), !dbg !1598
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !1599
  %4 = call i32 @Atomic_ReadAdd32(%struct.Atomic_uint32* %3, i32 1), !dbg !1600
  ret i32 %4, !dbg !1601
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

; Function Attrs: nounwind uwtable
define signext i8 @MXUserSetContentionRatioFloor(%struct.Atomic_uint64*, double) #0 !dbg !1602 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.MXUserAcquireStats*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !1605, metadata !100), !dbg !1606
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1607, metadata !100), !dbg !1608
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquireStats** %5, metadata !1609, metadata !100), !dbg !1610
  %6 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1611
  %7 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %6), !dbg !1612
  %8 = bitcast i8* %7 to %struct.MXUserAcquireStats*, !dbg !1612
  store %struct.MXUserAcquireStats* %8, %struct.MXUserAcquireStats** %5, align 8, !dbg !1610
  %9 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1613
  %10 = icmp ne %struct.MXUserAcquireStats* %9, null, !dbg !1615
  %11 = xor i1 %10, true, !dbg !1616
  %12 = xor i1 %11, true, !dbg !1617
  %13 = zext i1 %12 to i32, !dbg !1617
  %14 = sext i32 %13 to i64, !dbg !1617
  %15 = icmp ne i64 %14, 0, !dbg !1618
  br i1 %15, label %16, label %21, !dbg !1619

; <label>:16:                                     ; preds = %2
  %17 = load double, double* %4, align 8, !dbg !1620
  %18 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1622
  %19 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %18, i32 0, i32 0, !dbg !1623
  %20 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %19, i32 0, i32 0, !dbg !1624
  store double %17, double* %20, align 8, !dbg !1625
  br label %21, !dbg !1626

; <label>:21:                                     ; preds = %16, %2
  %22 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1627
  %23 = icmp ne %struct.MXUserAcquireStats* %22, null, !dbg !1628
  %24 = zext i1 %23 to i32, !dbg !1628
  %25 = trunc i32 %24 to i8, !dbg !1629
  ret i8 %25, !dbg !1630
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUserSetContentionCountFloor(%struct.Atomic_uint64*, i64) #0 !dbg !1631 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.MXUserAcquireStats*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !1634, metadata !100), !dbg !1635
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1636, metadata !100), !dbg !1637
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquireStats** %5, metadata !1638, metadata !100), !dbg !1639
  %6 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1640
  %7 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %6), !dbg !1641
  %8 = bitcast i8* %7 to %struct.MXUserAcquireStats*, !dbg !1641
  store %struct.MXUserAcquireStats* %8, %struct.MXUserAcquireStats** %5, align 8, !dbg !1639
  %9 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1642
  %10 = icmp ne %struct.MXUserAcquireStats* %9, null, !dbg !1644
  %11 = xor i1 %10, true, !dbg !1645
  %12 = xor i1 %11, true, !dbg !1646
  %13 = zext i1 %12 to i32, !dbg !1646
  %14 = sext i32 %13 to i64, !dbg !1646
  %15 = icmp ne i64 %14, 0, !dbg !1647
  br i1 %15, label %16, label %21, !dbg !1648

; <label>:16:                                     ; preds = %2
  %17 = load i64, i64* %4, align 8, !dbg !1649
  %18 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1651
  %19 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %18, i32 0, i32 0, !dbg !1652
  %20 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %19, i32 0, i32 1, !dbg !1653
  store i64 %17, i64* %20, align 8, !dbg !1654
  br label %21, !dbg !1655

; <label>:21:                                     ; preds = %16, %2
  %22 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1656
  %23 = icmp ne %struct.MXUserAcquireStats* %22, null, !dbg !1657
  %24 = zext i1 %23 to i32, !dbg !1657
  %25 = trunc i32 %24 to i8, !dbg !1658
  ret i8 %25, !dbg !1659
}

; Function Attrs: nounwind uwtable
define signext i8 @MXUserSetContentionDurationFloor(%struct.Atomic_uint64*, i64) #0 !dbg !1660 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.MXUserAcquireStats*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !1661, metadata !100), !dbg !1662
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1663, metadata !100), !dbg !1664
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquireStats** %5, metadata !1665, metadata !100), !dbg !1666
  %6 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1667
  %7 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %6), !dbg !1668
  %8 = bitcast i8* %7 to %struct.MXUserAcquireStats*, !dbg !1668
  store %struct.MXUserAcquireStats* %8, %struct.MXUserAcquireStats** %5, align 8, !dbg !1666
  %9 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1669
  %10 = icmp ne %struct.MXUserAcquireStats* %9, null, !dbg !1671
  %11 = xor i1 %10, true, !dbg !1672
  %12 = xor i1 %11, true, !dbg !1673
  %13 = zext i1 %12 to i32, !dbg !1673
  %14 = sext i32 %13 to i64, !dbg !1673
  %15 = icmp ne i64 %14, 0, !dbg !1674
  br i1 %15, label %16, label %21, !dbg !1675

; <label>:16:                                     ; preds = %2
  %17 = load i64, i64* %4, align 8, !dbg !1676
  %18 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1678
  %19 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %18, i32 0, i32 0, !dbg !1679
  %20 = getelementptr inbounds %struct.MXUserAcquisitionStats, %struct.MXUserAcquisitionStats* %19, i32 0, i32 2, !dbg !1680
  store i64 %17, i64* %20, align 8, !dbg !1681
  br label %21, !dbg !1682

; <label>:21:                                     ; preds = %16, %2
  %22 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1683
  %23 = icmp ne %struct.MXUserAcquireStats* %22, null, !dbg !1684
  %24 = zext i1 %23 to i32, !dbg !1684
  %25 = trunc i32 %24 to i8, !dbg !1685
  ret i8 %25, !dbg !1686
}

; Function Attrs: nounwind uwtable
define void @MXUserDisableStats(%struct.Atomic_uint64*, %struct.Atomic_uint64*) #0 !dbg !1687 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca %struct.MXUserAcquireStats*, align 8
  %6 = alloca %struct.MXUserHeldStats*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !1690, metadata !100), !dbg !1691
  store %struct.Atomic_uint64* %1, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !1692, metadata !100), !dbg !1693
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1694
  %8 = icmp ne %struct.Atomic_uint64* %7, null, !dbg !1696
  br i1 %8, label %9, label %29, !dbg !1697

; <label>:9:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquireStats** %5, metadata !1698, metadata !100), !dbg !1700
  %10 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1701
  %11 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %10), !dbg !1702
  %12 = bitcast i8* %11 to %struct.MXUserAcquireStats*, !dbg !1702
  store %struct.MXUserAcquireStats* %12, %struct.MXUserAcquireStats** %5, align 8, !dbg !1700
  %13 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1703
  %14 = icmp ne %struct.MXUserAcquireStats* %13, null, !dbg !1705
  %15 = zext i1 %14 to i32, !dbg !1705
  %16 = sext i32 %15 to i64, !dbg !1706
  %17 = icmp ne i64 %16, 0, !dbg !1707
  br i1 %17, label %18, label %27, !dbg !1708

; <label>:18:                                     ; preds = %9
  %19 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1709
  %20 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %19, i32 0, i32 0, !dbg !1711
  call void @MXUserAcquisitionStatsTearDown(%struct.MXUserAcquisitionStats* %20), !dbg !1712
  %21 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1713
  %22 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %21, i32 0, i32 1, !dbg !1714
  %23 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %22), !dbg !1715
  %24 = bitcast i8* %23 to %struct.MXUserHisto*, !dbg !1715
  call void @MXUserHistoTearDown(%struct.MXUserHisto* %24), !dbg !1716
  %25 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1718
  %26 = bitcast %struct.MXUserAcquireStats* %25 to i8*, !dbg !1718
  call void @free(i8* %26) #8, !dbg !1719
  br label %27, !dbg !1720

; <label>:27:                                     ; preds = %18, %9
  %28 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1721
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %28, i8* null), !dbg !1722
  br label %29, !dbg !1723

; <label>:29:                                     ; preds = %27, %2
  %30 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1724
  %31 = icmp ne %struct.Atomic_uint64* %30, null, !dbg !1726
  br i1 %31, label %32, label %52, !dbg !1727

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct.MXUserHeldStats** %6, metadata !1728, metadata !100), !dbg !1730
  %33 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1731
  %34 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %33), !dbg !1732
  %35 = bitcast i8* %34 to %struct.MXUserHeldStats*, !dbg !1732
  store %struct.MXUserHeldStats* %35, %struct.MXUserHeldStats** %6, align 8, !dbg !1730
  %36 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %6, align 8, !dbg !1733
  %37 = icmp ne %struct.MXUserHeldStats* %36, null, !dbg !1735
  %38 = zext i1 %37 to i32, !dbg !1735
  %39 = sext i32 %38 to i64, !dbg !1736
  %40 = icmp ne i64 %39, 0, !dbg !1737
  br i1 %40, label %41, label %50, !dbg !1738

; <label>:41:                                     ; preds = %32
  %42 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %6, align 8, !dbg !1739
  %43 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %42, i32 0, i32 1, !dbg !1741
  call void @MXUserBasicStatsTearDown(%struct.MXUserBasicStats* %43), !dbg !1742
  %44 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %6, align 8, !dbg !1743
  %45 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %44, i32 0, i32 2, !dbg !1744
  %46 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %45), !dbg !1745
  %47 = bitcast i8* %46 to %struct.MXUserHisto*, !dbg !1745
  call void @MXUserHistoTearDown(%struct.MXUserHisto* %47), !dbg !1746
  %48 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %6, align 8, !dbg !1748
  %49 = bitcast %struct.MXUserHeldStats* %48 to i8*, !dbg !1748
  call void @free(i8* %49) #8, !dbg !1749
  br label %50, !dbg !1750

; <label>:50:                                     ; preds = %41, %32
  %51 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1751
  call void @Atomic_WritePtr(%struct.Atomic_uint64* %51, i8* null), !dbg !1752
  br label %52, !dbg !1753

; <label>:52:                                     ; preds = %50, %29
  ret void, !dbg !1754
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_WritePtr(%struct.Atomic_uint64*, i8*) #3 !dbg !1755 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !1760, metadata !100), !dbg !1761
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1762, metadata !100), !dbg !1763
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1764
  %6 = load i8*, i8** %4, align 8, !dbg !1765
  %7 = ptrtoint i8* %6 to i64, !dbg !1766
  call void @Atomic_Write64(%struct.Atomic_uint64* %5, i64 %7), !dbg !1767
  ret void, !dbg !1768
}

; Function Attrs: nounwind uwtable
define void @MXUserEnableStats(%struct.Atomic_uint64*, %struct.Atomic_uint64*) #0 !dbg !1769 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca %struct.MXUserAcquireStats*, align 8
  %6 = alloca %struct.MXUserAcquireStats*, align 8
  %7 = alloca %struct.MXUserHeldStats*, align 8
  %8 = alloca %struct.MXUserHeldStats*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !1770, metadata !100), !dbg !1771
  store %struct.Atomic_uint64* %1, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !1772, metadata !100), !dbg !1773
  %9 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1774
  %10 = icmp ne %struct.Atomic_uint64* %9, null, !dbg !1776
  br i1 %10, label %11, label %39, !dbg !1777

; <label>:11:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquireStats** %5, metadata !1778, metadata !100), !dbg !1780
  %12 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1781
  %13 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %12), !dbg !1782
  %14 = bitcast i8* %13 to %struct.MXUserAcquireStats*, !dbg !1782
  store %struct.MXUserAcquireStats* %14, %struct.MXUserAcquireStats** %5, align 8, !dbg !1780
  %15 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1783
  %16 = icmp eq %struct.MXUserAcquireStats* %15, null, !dbg !1785
  %17 = xor i1 %16, true, !dbg !1786
  %18 = xor i1 %17, true, !dbg !1787
  %19 = zext i1 %18 to i32, !dbg !1787
  %20 = sext i32 %19 to i64, !dbg !1787
  %21 = icmp ne i64 %20, 0, !dbg !1788
  br i1 %21, label %22, label %38, !dbg !1789

; <label>:22:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.MXUserAcquireStats** %6, metadata !1790, metadata !100), !dbg !1792
  %23 = call i8* @UtilSafeCalloc0(i64 1, i64 120), !dbg !1793
  %24 = bitcast i8* %23 to %struct.MXUserAcquireStats*, !dbg !1793
  store %struct.MXUserAcquireStats* %24, %struct.MXUserAcquireStats** %5, align 8, !dbg !1794
  %25 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1795
  %26 = getelementptr inbounds %struct.MXUserAcquireStats, %struct.MXUserAcquireStats* %25, i32 0, i32 0, !dbg !1796
  call void @MXUserAcquisitionStatsSetUp(%struct.MXUserAcquisitionStats* %26), !dbg !1797
  %27 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !1798
  %28 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1799
  %29 = bitcast %struct.MXUserAcquireStats* %28 to i8*, !dbg !1800
  %30 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %27, i8* null, i8* %29), !dbg !1801
  %31 = bitcast i8* %30 to %struct.MXUserAcquireStats*, !dbg !1801
  store %struct.MXUserAcquireStats* %31, %struct.MXUserAcquireStats** %6, align 8, !dbg !1802
  %32 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %6, align 8, !dbg !1803
  %33 = icmp ne %struct.MXUserAcquireStats* %32, null, !dbg !1803
  br i1 %33, label %34, label %37, !dbg !1805

; <label>:34:                                     ; preds = %22
  %35 = load %struct.MXUserAcquireStats*, %struct.MXUserAcquireStats** %5, align 8, !dbg !1806
  %36 = bitcast %struct.MXUserAcquireStats* %35 to i8*, !dbg !1806
  call void @free(i8* %36) #8, !dbg !1808
  br label %37, !dbg !1809

; <label>:37:                                     ; preds = %34, %22
  br label %38, !dbg !1810

; <label>:38:                                     ; preds = %37, %11
  br label %39, !dbg !1811

; <label>:39:                                     ; preds = %38, %2
  %40 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1812
  %41 = icmp ne %struct.Atomic_uint64* %40, null, !dbg !1814
  br i1 %41, label %42, label %70, !dbg !1815

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata %struct.MXUserHeldStats** %7, metadata !1816, metadata !100), !dbg !1818
  %43 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1819
  %44 = call i8* @Atomic_ReadPtr(%struct.Atomic_uint64* %43), !dbg !1820
  %45 = bitcast i8* %44 to %struct.MXUserHeldStats*, !dbg !1820
  store %struct.MXUserHeldStats* %45, %struct.MXUserHeldStats** %7, align 8, !dbg !1818
  %46 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %7, align 8, !dbg !1821
  %47 = icmp eq %struct.MXUserHeldStats* %46, null, !dbg !1823
  %48 = xor i1 %47, true, !dbg !1824
  %49 = xor i1 %48, true, !dbg !1825
  %50 = zext i1 %49 to i32, !dbg !1825
  %51 = sext i32 %50 to i64, !dbg !1825
  %52 = icmp ne i64 %51, 0, !dbg !1826
  br i1 %52, label %53, label %69, !dbg !1827

; <label>:53:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata %struct.MXUserHeldStats** %8, metadata !1828, metadata !100), !dbg !1830
  %54 = call i8* @UtilSafeCalloc0(i64 1, i64 64), !dbg !1831
  %55 = bitcast i8* %54 to %struct.MXUserHeldStats*, !dbg !1831
  store %struct.MXUserHeldStats* %55, %struct.MXUserHeldStats** %7, align 8, !dbg !1832
  %56 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %7, align 8, !dbg !1833
  %57 = getelementptr inbounds %struct.MXUserHeldStats, %struct.MXUserHeldStats* %56, i32 0, i32 1, !dbg !1834
  call void @MXUserBasicStatsSetUp(%struct.MXUserBasicStats* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !dbg !1835
  %58 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1836
  %59 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %7, align 8, !dbg !1837
  %60 = bitcast %struct.MXUserHeldStats* %59 to i8*, !dbg !1838
  %61 = call i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64* %58, i8* null, i8* %60), !dbg !1839
  %62 = bitcast i8* %61 to %struct.MXUserHeldStats*, !dbg !1839
  store %struct.MXUserHeldStats* %62, %struct.MXUserHeldStats** %8, align 8, !dbg !1840
  %63 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %8, align 8, !dbg !1841
  %64 = icmp ne %struct.MXUserHeldStats* %63, null, !dbg !1841
  br i1 %64, label %65, label %68, !dbg !1843

; <label>:65:                                     ; preds = %53
  %66 = load %struct.MXUserHeldStats*, %struct.MXUserHeldStats** %7, align 8, !dbg !1844
  %67 = bitcast %struct.MXUserHeldStats* %66 to i8*, !dbg !1844
  call void @free(i8* %67) #8, !dbg !1846
  br label %68, !dbg !1847

; <label>:68:                                     ; preds = %65, %53
  br label %69, !dbg !1848

; <label>:69:                                     ; preds = %68, %42
  br label %70, !dbg !1849

; <label>:70:                                     ; preds = %69, %39
  ret void, !dbg !1850
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Atomic_ReadIfEqualWritePtr(%struct.Atomic_uint64*, i8*, i8*) #3 !dbg !1851 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !1854, metadata !100), !dbg !1855
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1856, metadata !100), !dbg !1857
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1858, metadata !100), !dbg !1859
  %7 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !1860
  %8 = load i8*, i8** %5, align 8, !dbg !1861
  %9 = ptrtoint i8* %8 to i64, !dbg !1862
  %10 = load i8*, i8** %6, align 8, !dbg !1863
  %11 = ptrtoint i8* %10 to i64, !dbg !1864
  %12 = call i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64* %7, i64 %9, i64 %11), !dbg !1865
  %13 = inttoptr i64 %12 to i8*, !dbg !1866
  ret i8* %13, !dbg !1867
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockCount(%struct.MXRecLock*) #3 !dbg !1868 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1873, metadata !100), !dbg !1874
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1875
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 1, !dbg !1876
  %5 = load i32, i32* %4, align 8, !dbg !1876
  ret i32 %5, !dbg !1877
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @MXRecLockIsOwner(%struct.MXRecLock*) #3 !dbg !1878 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1881, metadata !100), !dbg !1882
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1883
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 2, !dbg !1884
  %5 = load i64, i64* %4, align 8, !dbg !1884
  %6 = call i64 @MXUserNativeThreadID(), !dbg !1885
  %7 = call i32 @pthread_equal(i64 %5, i64 %6) #1, !dbg !1886
  %8 = trunc i32 %7 to i8, !dbg !1888
  ret i8 %8, !dbg !1889
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockIncCount(%struct.MXRecLock*, i32) #3 !dbg !1890 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !1893, metadata !100), !dbg !1894
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1895, metadata !100), !dbg !1896
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1897, metadata !100), !dbg !1898
  %6 = load i32, i32* %4, align 4, !dbg !1899
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1900
  %8 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %7, i32 0, i32 1, !dbg !1901
  %9 = load i32, i32* %8, align 8, !dbg !1902
  %10 = add nsw i32 %9, %6, !dbg !1902
  store i32 %10, i32* %8, align 8, !dbg !1902
  store i32 %10, i32* %5, align 4, !dbg !1898
  %11 = load i32, i32* %5, align 4, !dbg !1903
  %12 = load i32, i32* %4, align 4, !dbg !1905
  %13 = icmp eq i32 %11, %12, !dbg !1906
  %14 = xor i1 %13, true, !dbg !1907
  %15 = xor i1 %14, true, !dbg !1908
  %16 = zext i1 %15 to i32, !dbg !1908
  %17 = sext i32 %16 to i64, !dbg !1908
  %18 = icmp ne i64 %17, 0, !dbg !1909
  br i1 %18, label %19, label %21, !dbg !1910

; <label>:19:                                     ; preds = %2
  %20 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1911
  call void @MXRecLockSetOwner(%struct.MXRecLock* %20), !dbg !1913
  br label %21, !dbg !1914

; <label>:21:                                     ; preds = %19, %2
  ret void, !dbg !1915
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockAcquireInternal(%struct.MXRecLock*) #3 !dbg !1916 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1919, metadata !100), !dbg !1920
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1921
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !1922
  %5 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %4) #8, !dbg !1923
  ret i32 %5, !dbg !1924
}

declare i64 @Hostinfo_SystemTimerNS() #2

; Function Attrs: nounwind readnone
declare i32 @pthread_equal(i64, i64) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @MXUserNativeThreadID() #3 !dbg !1925 {
  %1 = call i64 @pthread_self() #1, !dbg !1928
  ret i64 %1, !dbg !1929
}

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockSetOwner(%struct.MXRecLock*) #3 !dbg !1930 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1931, metadata !100), !dbg !1932
  %3 = call i64 @MXUserNativeThreadID(), !dbg !1933
  %4 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1934
  %5 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %4, i32 0, i32 2, !dbg !1935
  store i64 %3, i64* %5, align 8, !dbg !1936
  ret void, !dbg !1937
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @CircList_IsEmpty(%struct.ListItem*) #3 !dbg !1938 {
  %2 = alloca %struct.ListItem*, align 8
  store %struct.ListItem* %0, %struct.ListItem** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ListItem** %2, metadata !1943, metadata !100), !dbg !1944
  %3 = load %struct.ListItem*, %struct.ListItem** %2, align 8, !dbg !1945
  %4 = icmp eq %struct.ListItem* %3, null, !dbg !1946
  %5 = zext i1 %4 to i32, !dbg !1946
  %6 = trunc i32 %5 to i8, !dbg !1945
  ret i8 %6, !dbg !1947
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @CircList_InitItem(%struct.ListItem*) #3 !dbg !1948 {
  %2 = alloca %struct.ListItem*, align 8
  store %struct.ListItem* %0, %struct.ListItem** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ListItem** %2, metadata !1951, metadata !100), !dbg !1952
  %3 = load %struct.ListItem*, %struct.ListItem** %2, align 8, !dbg !1953
  %4 = load %struct.ListItem*, %struct.ListItem** %2, align 8, !dbg !1954
  %5 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %4, i32 0, i32 1, !dbg !1955
  store %struct.ListItem* %3, %struct.ListItem** %5, align 8, !dbg !1956
  %6 = load %struct.ListItem*, %struct.ListItem** %2, align 8, !dbg !1957
  %7 = getelementptr inbounds %struct.ListItem, %struct.ListItem* %6, i32 0, i32 0, !dbg !1958
  store %struct.ListItem* %3, %struct.ListItem** %7, align 8, !dbg !1959
  ret void, !dbg !1960
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockDecCount(%struct.MXRecLock*, i32) #3 !dbg !1961 {
  %3 = alloca %struct.MXRecLock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.MXRecLock* %0, %struct.MXRecLock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %3, metadata !1962, metadata !100), !dbg !1963
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1964, metadata !100), !dbg !1965
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1966, metadata !100), !dbg !1967
  %6 = load i32, i32* %4, align 4, !dbg !1968
  %7 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1969
  %8 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %7, i32 0, i32 1, !dbg !1970
  %9 = load i32, i32* %8, align 8, !dbg !1971
  %10 = sub nsw i32 %9, %6, !dbg !1971
  store i32 %10, i32* %8, align 8, !dbg !1971
  store i32 %10, i32* %5, align 4, !dbg !1967
  %11 = load i32, i32* %5, align 4, !dbg !1972
  %12 = icmp eq i32 %11, 0, !dbg !1974
  %13 = xor i1 %12, true, !dbg !1975
  %14 = xor i1 %13, true, !dbg !1976
  %15 = zext i1 %14 to i32, !dbg !1976
  %16 = sext i32 %15 to i64, !dbg !1976
  %17 = icmp ne i64 %16, 0, !dbg !1977
  br i1 %17, label %18, label %20, !dbg !1978

; <label>:18:                                     ; preds = %2
  %19 = load %struct.MXRecLock*, %struct.MXRecLock** %3, align 8, !dbg !1979
  call void @MXRecLockSetNoOwner(%struct.MXRecLock* %19), !dbg !1981
  br label %20, !dbg !1982

; <label>:20:                                     ; preds = %18, %2
  ret void, !dbg !1983
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockReleaseInternal(%struct.MXRecLock*) #3 !dbg !1984 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1985, metadata !100), !dbg !1986
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1987
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !1988
  %5 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %4) #8, !dbg !1989
  ret i32 %5, !dbg !1990
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MXRecLockSetNoOwner(%struct.MXRecLock*) #3 !dbg !1991 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !1992, metadata !100), !dbg !1993
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !1994
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 2, !dbg !1995
  %5 = bitcast i64* %4 to i8*, !dbg !1996
  call void @llvm.memset.p0i8.i64(i8* %5, i8 -1, i64 8, i32 8, i1 false), !dbg !1996
  ret void, !dbg !1997
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #4

declare void @LogFixed_Base10(i64, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: nounwind readnone
declare double @fabs(double) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_Read64(%struct.Atomic_uint64*) #3 !dbg !1998 {
  %2 = alloca %struct.Atomic_uint64*, align 8
  %3 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %2, metadata !2003, metadata !100), !dbg !2004
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2005, metadata !100), !dbg !2006
  %4 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %2, align 8, !dbg !2007
  %5 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %4, i32 0, i32 0, !dbg !2008
  %6 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %5) #8, !dbg !2009, !srcloc !2010
  store i64 %6, i64* %3, align 8, !dbg !2009
  %7 = load i64, i64* %3, align 8, !dbg !2011
  ret i64 %7, !dbg !2012
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MXRecLockTryAcquireInternal(%struct.MXRecLock*) #3 !dbg !2013 {
  %2 = alloca %struct.MXRecLock*, align 8
  store %struct.MXRecLock* %0, %struct.MXRecLock** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MXRecLock** %2, metadata !2014, metadata !100), !dbg !2015
  %3 = load %struct.MXRecLock*, %struct.MXRecLock** %2, align 8, !dbg !2016
  %4 = getelementptr inbounds %struct.MXRecLock, %struct.MXRecLock* %3, i32 0, i32 0, !dbg !2017
  %5 = call i32 @pthread_mutex_trylock(%union.pthread_mutex_t* %4) #8, !dbg !2018
  ret i32 %5, !dbg !2019
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(%union.pthread_mutex_t*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadAdd32(%struct.Atomic_uint32*, i32) #3 !dbg !2020 {
  %3 = alloca %struct.Atomic_uint32*, align 8
  %4 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %3, metadata !2023, metadata !100), !dbg !2024
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2025, metadata !100), !dbg !2026
  %5 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %3, align 8, !dbg !2027
  %6 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %5, i32 0, i32 0, !dbg !2028
  %7 = load i32, i32* %4, align 4, !dbg !2029
  %8 = call i32 asm sideeffect "lock; xaddl $0, $1", "=r,=*m,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %6, i32 %7, i32* %6) #8, !dbg !2030, !srcloc !2031
  store i32 %8, i32* %4, align 4, !dbg !2030
  %9 = load i32, i32* %4, align 4, !dbg !2032
  ret i32 %9, !dbg !2033
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Write64(%struct.Atomic_uint64*, i64) #3 !dbg !2034 {
  %3 = alloca %struct.Atomic_uint64*, align 8
  %4 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %3, metadata !2038, metadata !100), !dbg !2039
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2040, metadata !100), !dbg !2041
  %5 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %3, align 8, !dbg !2042
  %6 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %5, i32 0, i32 0, !dbg !2043
  %7 = load i64, i64* %4, align 8, !dbg !2044
  call void asm sideeffect "movq $1, $0", "=*m,r,~{dirflag},~{fpsr},~{flags}"(i64* %6, i64 %7) #8, !dbg !2045, !srcloc !2046
  ret void, !dbg !2047
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Atomic_ReadIfEqualWrite64(%struct.Atomic_uint64*, i64, i64) #3 !dbg !2048 {
  %4 = alloca %struct.Atomic_uint64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Atomic_uint64* %0, %struct.Atomic_uint64** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint64** %4, metadata !2051, metadata !100), !dbg !2052
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2053, metadata !100), !dbg !2054
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2055, metadata !100), !dbg !2056
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2057, metadata !100), !dbg !2058
  %8 = load %struct.Atomic_uint64*, %struct.Atomic_uint64** %4, align 8, !dbg !2059
  %9 = getelementptr inbounds %struct.Atomic_uint64, %struct.Atomic_uint64* %8, i32 0, i32 0, !dbg !2060
  %10 = load i64, i64* %6, align 8, !dbg !2061
  %11 = load i64, i64* %5, align 8, !dbg !2062
  %12 = call i64 asm sideeffect "lock; cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64 %11, i64* %9) #8, !dbg !2063, !srcloc !2064
  store i64 %12, i64* %7, align 8, !dbg !2063
  %13 = load i64, i64* %7, align 8, !dbg !2065
  ret i64 %13, !dbg !2066
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!93, !94}
!llvm.ident = !{!95}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !47)
!1 = !DIFile(filename: "ulStats.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line520")
!2 = !{}
!3 = !{!4, !5, !6, !11, !21, !44, !46}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !7, line: 171, baseType: !8)
!7 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line520")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 55, baseType: !10)
!9 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line520")
!10 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHeader", file: !13, line: 469, baseType: !14)
!13 = !DIFile(filename: "ulInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line520")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserHeader", file: !13, line: 456, size: 448, align: 64, elements: !15)
!15 = !{!16, !20, !23, !25, !30, !35, !36}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !14, file: !13, line: 457, baseType: !17, size: 32, align: 32)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !7, line: 173, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 51, baseType: !19)
!19 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !13, line: 458, baseType: !21, size: 64, align: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !14, file: !13, line: 459, baseType: !24, size: 32, align: 32, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "MX_Rank", file: !7, line: 1167, baseType: !17)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !14, file: !13, line: 464, baseType: !26, size: 32, align: 32, offset: 160)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !13, line: 461, size: 32, align: 32, elements: !27)
!27 = !{!28, !29}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !26, file: !13, line: 462, baseType: !19, size: 24, align: 32, flags: DIFlagBitField, extraData: i64 0)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "badHeader", scope: !26, file: !13, line: 463, baseType: !19, size: 1, align: 32, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "dumpFunc", scope: !14, file: !13, line: 466, baseType: !31, size: 64, align: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "statsFunc", scope: !14, file: !13, line: 467, baseType: !31, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !14, file: !13, line: 468, baseType: !37, size: 128, align: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "ListItem", file: !38, line: 45, baseType: !39)
!38 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/circList.h", directory: "/home/lichi/Desktop/open-vm-tools/line520")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ListItem", file: !38, line: 42, size: 128, align: 64, elements: !40)
!40 = !{!41, !43}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !39, file: !38, line: 43, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !39, file: !38, line: 44, baseType: !42, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 216, baseType: !10)
!45 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line520")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 122, baseType: !10)
!47 = !{!48, !53, !63, !70, !72, !73, !74, !75, !76, !77, !78, !91}
!48 = distinct !DIGlobalVariable(name: "lastReportedSerialNumber", scope: !49, file: !50, line: 1082, type: !17, isLocal: true, isDefinition: true, variable: i32* @MXUser_PerLockData.lastReportedSerialNumber)
!49 = distinct !DISubprogram(name: "MXUser_PerLockData", scope: !50, file: !50, line: 1071, type: !51, isLocal: false, isDefinition: true, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!50 = !DIFile(filename: "ulStats.c", directory: "/home/lichi/Desktop/open-vm-tools/line520")
!51 = !DISubroutineType(types: !52)
!52 = !{null}
!53 = distinct !DIGlobalVariable(name: "firstFreeSerialNumber", scope: !54, file: !50, line: 1138, type: !57, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint32* @MXUserAllocSerialNumber.firstFreeSerialNumber)
!54 = distinct !DISubprogram(name: "MXUserAllocSerialNumber", scope: !50, file: !50, line: 1134, type: !55, isLocal: false, isDefinition: true, scopeLine: 1135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{!17}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !58, line: 135, baseType: !59)
!58 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line520")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !58, line: 133, size: 32, align: 32, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !59, file: !58, line: 134, baseType: !62, size: 32, align: 32)
!62 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!63 = distinct !DIGlobalVariable(name: "mxLockMemPtr", scope: !0, file: !50, line: 40, type: !64, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @mxLockMemPtr)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !58, line: 3829, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !58, line: 139, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !58, line: 137, size: 64, align: 64, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !66, file: !58, line: 138, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!70 = distinct !DIGlobalVariable(name: "mxUserLockList", scope: !0, file: !50, line: 41, type: !71, isLocal: true, isDefinition: true, variable: %struct.ListItem** @mxUserLockList)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!72 = distinct !DIGlobalVariable(name: "mxUserHistoLine", scope: !0, file: !50, line: 61, type: !21, isLocal: true, isDefinition: true, variable: i8** @mxUserHistoLine)
!73 = distinct !DIGlobalVariable(name: "mxUserMaxLineLength", scope: !0, file: !50, line: 62, type: !17, isLocal: true, isDefinition: true, variable: i32* @mxUserMaxLineLength)
!74 = distinct !DIGlobalVariable(name: "mxUserContentionRatioFloor", scope: !0, file: !50, line: 36, type: !5, isLocal: true, isDefinition: true, variable: double* @mxUserContentionRatioFloor)
!75 = distinct !DIGlobalVariable(name: "mxUserContentionCountFloor", scope: !0, file: !50, line: 37, type: !6, isLocal: true, isDefinition: true, variable: i64* @mxUserContentionCountFloor)
!76 = distinct !DIGlobalVariable(name: "mxUserContentionDurationFloor", scope: !0, file: !50, line: 38, type: !6, isLocal: true, isDefinition: true, variable: i64* @mxUserContentionDurationFloor)
!77 = distinct !DIGlobalVariable(name: "mxUserStatsContext", scope: !0, file: !50, line: 63, type: !4, isLocal: true, isDefinition: true, variable: i8** @mxUserStatsContext)
!78 = distinct !DIGlobalVariable(name: "mxUserStatsFunc", scope: !0, file: !50, line: 64, type: !79, isLocal: true, isDefinition: true, variable: void (i8*, i8*, %struct.__va_list_tag*)** @mxUserStatsFunc)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !4, !82, !84}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 1003, size: 192, align: 64, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !85, file: !1, line: 1003, baseType: !19, size: 32, align: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !85, file: !1, line: 1003, baseType: !19, size: 32, align: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !85, file: !1, line: 1003, baseType: !4, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !85, file: !1, line: 1003, baseType: !4, size: 64, align: 64, offset: 128)
!91 = distinct !DIGlobalVariable(name: "mxUserTrackHeldTimes", scope: !0, file: !50, line: 60, type: !92, isLocal: true, isDefinition: true, variable: i8* @mxUserTrackHeldTimes)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !7, line: 230, baseType: !22)
!93 = !{i32 2, !"Dwarf Version", i32 4}
!94 = !{i32 2, !"Debug Info Version", i32 3}
!95 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!96 = distinct !DISubprogram(name: "MXUserAddToList", scope: !50, file: !50, line: 86, type: !97, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !11}
!99 = !DILocalVariable(name: "header", arg: 1, scope: !96, file: !50, line: 86, type: !11)
!100 = !DIExpression()
!101 = !DILocation(line: 86, column: 31, scope: !96)
!102 = !DILocalVariable(name: "listLock", scope: !96, file: !50, line: 88, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXRecLock", file: !13, line: 67, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 58, size: 448, align: 64, elements: !106)
!106 = !{!107, !137, !138}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "nativeLock", scope: !105, file: !13, line: 62, baseType: !108, size: 320, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !109, line: 128, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line520")
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !109, line: 90, size: 320, align: 64, elements: !111)
!111 = !{!112, !131, !135}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !110, file: !109, line: 125, baseType: !113, size: 320, align: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !109, line: 92, size: 320, align: 64, elements: !114)
!114 = !{!115, !117, !118, !119, !120, !121, !123, !124}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !113, file: !109, line: 94, baseType: !116, size: 32, align: 32)
!116 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !113, file: !109, line: 95, baseType: !19, size: 32, align: 32, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !113, file: !109, line: 96, baseType: !116, size: 32, align: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !113, file: !109, line: 98, baseType: !19, size: 32, align: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !113, file: !109, line: 102, baseType: !116, size: 32, align: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !113, file: !109, line: 104, baseType: !122, size: 16, align: 16, offset: 160)
!122 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !113, file: !109, line: 105, baseType: !122, size: 16, align: 16, offset: 176)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !113, file: !109, line: 106, baseType: !125, size: 128, align: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !109, line: 79, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !109, line: 75, size: 128, align: 64, elements: !127)
!127 = !{!128, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !126, file: !109, line: 77, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !126, file: !109, line: 78, baseType: !129, size: 64, align: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !110, file: !109, line: 126, baseType: !132, size: 320, align: 8)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 320, align: 8, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 40)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !110, file: !109, line: 127, baseType: !136, size: 64, align: 64)
!136 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "referenceCount", scope: !105, file: !13, line: 65, baseType: !116, size: 32, align: 32, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nativeThreadID", scope: !105, file: !13, line: 66, baseType: !139, size: 64, align: 64, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserThreadID", file: !13, line: 39, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !109, line: 60, baseType: !10)
!141 = !DILocation(line: 88, column: 15, scope: !96)
!142 = !DILocation(line: 88, column: 26, scope: !96)
!143 = !DILocation(line: 91, column: 8, scope: !144)
!144 = distinct !DILexicalBlock(scope: !96, file: !50, line: 91, column: 8)
!145 = !DILocation(line: 91, column: 8, scope: !96)
!146 = !DILocation(line: 92, column: 24, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !50, line: 91, column: 18)
!148 = !DILocation(line: 92, column: 7, scope: !147)
!149 = !DILocation(line: 94, column: 23, scope: !147)
!150 = !DILocation(line: 94, column: 31, scope: !147)
!151 = !DILocation(line: 94, column: 7, scope: !147)
!152 = !DILocation(line: 95, column: 24, scope: !147)
!153 = !DILocation(line: 95, column: 7, scope: !147)
!154 = !DILocation(line: 96, column: 4, scope: !147)
!155 = !DILocation(line: 97, column: 1, scope: !96)
!156 = distinct !DISubprogram(name: "MXRecLockAcquire", scope: !13, file: !13, line: 328, type: !157, isLocal: true, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !103, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmTimeType", file: !7, line: 354, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !7, line: 172, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !9, line: 40, baseType: !136)
!163 = !DILocalVariable(name: "lock", arg: 1, scope: !156, file: !13, line: 328, type: !103)
!164 = !DILocation(line: 328, column: 29, scope: !156)
!165 = !DILocalVariable(name: "duration", arg: 2, scope: !156, file: !13, line: 329, type: !159)
!166 = !DILocation(line: 329, column: 30, scope: !156)
!167 = !DILocalVariable(name: "err", scope: !156, file: !13, line: 331, type: !116)
!168 = !DILocation(line: 331, column: 8, scope: !156)
!169 = !DILocation(line: 333, column: 41, scope: !170)
!170 = distinct !DILexicalBlock(scope: !156, file: !13, line: 333, column: 8)
!171 = !DILocation(line: 333, column: 26, scope: !170)
!172 = !DILocation(line: 333, column: 47, scope: !170)
!173 = !DILocation(line: 333, column: 25, scope: !170)
!174 = !DILocation(line: 333, column: 8, scope: !170)
!175 = !DILocation(line: 333, column: 56, scope: !170)
!176 = !DILocation(line: 333, column: 76, scope: !177)
!177 = !DILexicalBlockFile(scope: !170, file: !13, discriminator: 1)
!178 = !DILocation(line: 333, column: 59, scope: !177)
!179 = !DILocation(line: 333, column: 8, scope: !177)
!180 = !DILocation(line: 334, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !170, file: !13, line: 333, column: 83)
!182 = !DILocation(line: 334, column: 7, scope: !181)
!183 = !DILocation(line: 336, column: 11, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !13, line: 336, column: 11)
!185 = !DILocation(line: 336, column: 20, scope: !184)
!186 = !DILocation(line: 336, column: 11, scope: !181)
!187 = !DILocation(line: 337, column: 11, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !13, line: 336, column: 28)
!189 = !DILocation(line: 337, column: 20, scope: !188)
!190 = !DILocation(line: 338, column: 7, scope: !188)
!191 = !DILocation(line: 340, column: 7, scope: !181)
!192 = !DILocation(line: 343, column: 28, scope: !193)
!193 = distinct !DILexicalBlock(scope: !156, file: !13, line: 343, column: 8)
!194 = !DILocation(line: 343, column: 37, scope: !193)
!195 = !DILocation(line: 343, column: 26, scope: !193)
!196 = !DILocation(line: 343, column: 25, scope: !193)
!197 = !DILocation(line: 343, column: 8, scope: !193)
!198 = !DILocation(line: 343, column: 8, scope: !156)
!199 = !DILocation(line: 344, column: 38, scope: !200)
!200 = distinct !DILexicalBlock(scope: !193, file: !13, line: 343, column: 14)
!201 = !DILocation(line: 344, column: 13, scope: !200)
!202 = !DILocation(line: 344, column: 11, scope: !200)
!203 = !DILocation(line: 345, column: 4, scope: !200)
!204 = !DILocalVariable(name: "start", scope: !205, file: !13, line: 346, type: !160)
!205 = distinct !DILexicalBlock(scope: !193, file: !13, line: 345, column: 11)
!206 = !DILocation(line: 346, column: 18, scope: !205)
!207 = !DILocation(line: 346, column: 26, scope: !205)
!208 = !DILocation(line: 348, column: 38, scope: !205)
!209 = !DILocation(line: 348, column: 13, scope: !205)
!210 = !DILocation(line: 348, column: 11, scope: !205)
!211 = !DILocation(line: 350, column: 19, scope: !205)
!212 = !DILocation(line: 350, column: 46, scope: !205)
!213 = !DILocation(line: 350, column: 44, scope: !205)
!214 = !DILocation(line: 350, column: 8, scope: !205)
!215 = !DILocation(line: 350, column: 17, scope: !205)
!216 = !DILocation(line: 359, column: 22, scope: !156)
!217 = !DILocation(line: 359, column: 4, scope: !156)
!218 = !DILocation(line: 361, column: 4, scope: !156)
!219 = !DILocation(line: 362, column: 1, scope: !156)
!220 = distinct !DISubprogram(name: "CircList_Queue", scope: !38, file: !38, line: 304, type: !221, isLocal: true, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !71, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!224 = !DILocalVariable(name: "p", arg: 1, scope: !220, file: !38, line: 304, type: !71)
!225 = !DILocation(line: 304, column: 26, scope: !220)
!226 = !DILocalVariable(name: "headp", arg: 2, scope: !220, file: !38, line: 305, type: !223)
!227 = !DILocation(line: 305, column: 27, scope: !220)
!228 = !DILocalVariable(name: "head", scope: !220, file: !38, line: 307, type: !71)
!229 = !DILocation(line: 307, column: 14, scope: !220)
!230 = !DILocation(line: 309, column: 12, scope: !220)
!231 = !DILocation(line: 309, column: 11, scope: !220)
!232 = !DILocation(line: 309, column: 9, scope: !220)
!233 = !DILocation(line: 310, column: 25, scope: !234)
!234 = distinct !DILexicalBlock(scope: !220, file: !38, line: 310, column: 8)
!235 = !DILocation(line: 310, column: 8, scope: !234)
!236 = !DILocation(line: 310, column: 8, scope: !220)
!237 = !DILocation(line: 311, column: 25, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !38, line: 310, column: 32)
!239 = !DILocation(line: 311, column: 7, scope: !238)
!240 = !DILocation(line: 312, column: 16, scope: !238)
!241 = !DILocation(line: 312, column: 8, scope: !238)
!242 = !DILocation(line: 312, column: 14, scope: !238)
!243 = !DILocation(line: 313, column: 4, scope: !238)
!244 = !DILocation(line: 314, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !234, file: !38, line: 313, column: 11)
!246 = !DILocation(line: 314, column: 23, scope: !245)
!247 = !DILocation(line: 314, column: 7, scope: !245)
!248 = !DILocation(line: 314, column: 10, scope: !245)
!249 = !DILocation(line: 314, column: 15, scope: !245)
!250 = !DILocation(line: 315, column: 17, scope: !245)
!251 = !DILocation(line: 315, column: 7, scope: !245)
!252 = !DILocation(line: 315, column: 10, scope: !245)
!253 = !DILocation(line: 315, column: 15, scope: !245)
!254 = !DILocation(line: 316, column: 23, scope: !245)
!255 = !DILocation(line: 316, column: 7, scope: !245)
!256 = !DILocation(line: 316, column: 10, scope: !245)
!257 = !DILocation(line: 316, column: 16, scope: !245)
!258 = !DILocation(line: 316, column: 21, scope: !245)
!259 = !DILocation(line: 317, column: 20, scope: !245)
!260 = !DILocation(line: 317, column: 7, scope: !245)
!261 = !DILocation(line: 317, column: 13, scope: !245)
!262 = !DILocation(line: 317, column: 18, scope: !245)
!263 = !DILocation(line: 319, column: 1, scope: !220)
!264 = distinct !DISubprogram(name: "MXRecLockRelease", scope: !13, file: !13, line: 393, type: !265, isLocal: true, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !103}
!267 = !DILocalVariable(name: "lock", arg: 1, scope: !264, file: !13, line: 393, type: !103)
!268 = !DILocation(line: 393, column: 29, scope: !264)
!269 = !DILocation(line: 395, column: 22, scope: !264)
!270 = !DILocation(line: 395, column: 4, scope: !264)
!271 = !DILocation(line: 397, column: 43, scope: !272)
!272 = distinct !DILexicalBlock(scope: !264, file: !13, line: 397, column: 8)
!273 = !DILocation(line: 397, column: 28, scope: !272)
!274 = !DILocation(line: 397, column: 49, scope: !272)
!275 = !DILocation(line: 397, column: 26, scope: !272)
!276 = !DILocation(line: 397, column: 25, scope: !272)
!277 = !DILocation(line: 397, column: 8, scope: !272)
!278 = !DILocation(line: 397, column: 8, scope: !264)
!279 = !DILocalVariable(name: "err", scope: !280, file: !13, line: 398, type: !116)
!280 = distinct !DILexicalBlock(scope: !272, file: !13, line: 397, column: 60)
!281 = !DILocation(line: 398, column: 11, scope: !280)
!282 = !DILocation(line: 398, column: 42, scope: !280)
!283 = !DILocation(line: 398, column: 17, scope: !280)
!284 = !DILocation(line: 404, column: 4, scope: !280)
!285 = !DILocation(line: 405, column: 1, scope: !264)
!286 = distinct !DISubprogram(name: "MXUserRemoveFromList", scope: !50, file: !50, line: 117, type: !97, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!287 = !DILocalVariable(name: "header", arg: 1, scope: !286, file: !50, line: 117, type: !11)
!288 = !DILocation(line: 117, column: 36, scope: !286)
!289 = !DILocalVariable(name: "listLock", scope: !286, file: !50, line: 119, type: !103)
!290 = !DILocation(line: 119, column: 15, scope: !286)
!291 = !DILocation(line: 119, column: 26, scope: !286)
!292 = !DILocation(line: 122, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !286, file: !50, line: 122, column: 8)
!294 = !DILocation(line: 122, column: 8, scope: !286)
!295 = !DILocation(line: 123, column: 24, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !50, line: 122, column: 18)
!297 = !DILocation(line: 123, column: 7, scope: !296)
!298 = !DILocation(line: 125, column: 28, scope: !296)
!299 = !DILocation(line: 125, column: 36, scope: !296)
!300 = !DILocation(line: 125, column: 7, scope: !296)
!301 = !DILocation(line: 126, column: 24, scope: !296)
!302 = !DILocation(line: 126, column: 7, scope: !296)
!303 = !DILocation(line: 127, column: 4, scope: !296)
!304 = !DILocation(line: 128, column: 1, scope: !286)
!305 = distinct !DISubprogram(name: "CircList_DeleteItem", scope: !38, file: !38, line: 265, type: !221, isLocal: true, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!306 = !DILocalVariable(name: "p", arg: 1, scope: !305, file: !38, line: 265, type: !71)
!307 = !DILocation(line: 265, column: 31, scope: !305)
!308 = !DILocalVariable(name: "headp", arg: 2, scope: !305, file: !38, line: 266, type: !223)
!309 = !DILocation(line: 266, column: 32, scope: !305)
!310 = !DILocalVariable(name: "next", scope: !305, file: !38, line: 268, type: !71)
!311 = !DILocation(line: 268, column: 14, scope: !305)
!312 = !DILocation(line: 273, column: 11, scope: !305)
!313 = !DILocation(line: 273, column: 14, scope: !305)
!314 = !DILocation(line: 273, column: 9, scope: !305)
!315 = !DILocation(line: 274, column: 8, scope: !316)
!316 = distinct !DILexicalBlock(scope: !305, file: !38, line: 274, column: 8)
!317 = !DILocation(line: 274, column: 13, scope: !316)
!318 = !DILocation(line: 274, column: 10, scope: !316)
!319 = !DILocation(line: 274, column: 8, scope: !305)
!320 = !DILocation(line: 275, column: 8, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !38, line: 274, column: 19)
!322 = !DILocation(line: 275, column: 14, scope: !321)
!323 = !DILocation(line: 276, column: 4, scope: !321)
!324 = !DILocation(line: 277, column: 20, scope: !325)
!325 = distinct !DILexicalBlock(scope: !316, file: !38, line: 276, column: 11)
!326 = !DILocation(line: 277, column: 23, scope: !325)
!327 = !DILocation(line: 277, column: 7, scope: !325)
!328 = !DILocation(line: 277, column: 13, scope: !325)
!329 = !DILocation(line: 277, column: 18, scope: !325)
!330 = !DILocation(line: 278, column: 23, scope: !325)
!331 = !DILocation(line: 278, column: 7, scope: !325)
!332 = !DILocation(line: 278, column: 10, scope: !325)
!333 = !DILocation(line: 278, column: 16, scope: !325)
!334 = !DILocation(line: 278, column: 21, scope: !325)
!335 = !DILocation(line: 279, column: 12, scope: !336)
!336 = distinct !DILexicalBlock(scope: !325, file: !38, line: 279, column: 11)
!337 = !DILocation(line: 279, column: 11, scope: !336)
!338 = !DILocation(line: 279, column: 21, scope: !336)
!339 = !DILocation(line: 279, column: 18, scope: !336)
!340 = !DILocation(line: 279, column: 11, scope: !325)
!341 = !DILocation(line: 280, column: 19, scope: !342)
!342 = distinct !DILexicalBlock(scope: !336, file: !38, line: 279, column: 24)
!343 = !DILocation(line: 280, column: 11, scope: !342)
!344 = !DILocation(line: 280, column: 17, scope: !342)
!345 = !DILocation(line: 281, column: 7, scope: !342)
!346 = !DILocation(line: 283, column: 1, scope: !305)
!347 = distinct !DISubprogram(name: "MXUserHistoSetUp", scope: !50, file: !50, line: 192, type: !348, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !21, !6, !17}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHisto", file: !13, line: 578, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserHisto", file: !50, line: 50, size: 1664, align: 64, elements: !353)
!353 = !{!354, !355, !357, !358, !359, !360, !361}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "typeName", scope: !352, file: !50, line: 51, baseType: !21, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "binData", scope: !352, file: !50, line: 52, baseType: !356, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "totalSamples", scope: !352, file: !50, line: 53, baseType: !6, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "minValue", scope: !352, file: !50, line: 54, baseType: !6, size: 64, align: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "maxValue", scope: !352, file: !50, line: 55, baseType: !6, size: 64, align: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "numBins", scope: !352, file: !50, line: 56, baseType: !17, size: 32, align: 32, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ownerArray", scope: !352, file: !50, line: 57, baseType: !362, size: 1280, align: 64, offset: 384)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 1280, align: 64, elements: !368)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "TopOwner", file: !50, line: 46, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 43, size: 128, align: 64, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !364, file: !50, line: 44, baseType: !4, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "timeValue", scope: !364, file: !50, line: 45, baseType: !6, size: 64, align: 64, offset: 64)
!368 = !{!369}
!369 = !DISubrange(count: 10)
!370 = !DILocalVariable(name: "typeName", arg: 1, scope: !347, file: !50, line: 192, type: !21)
!371 = !DILocation(line: 192, column: 24, scope: !347)
!372 = !DILocalVariable(name: "minValue", arg: 2, scope: !347, file: !50, line: 193, type: !6)
!373 = !DILocation(line: 193, column: 25, scope: !347)
!374 = !DILocalVariable(name: "decades", arg: 3, scope: !347, file: !50, line: 194, type: !17)
!375 = !DILocation(line: 194, column: 25, scope: !347)
!376 = !DILocalVariable(name: "histo", scope: !347, file: !50, line: 196, type: !350)
!377 = !DILocation(line: 196, column: 17, scope: !347)
!378 = !DILocation(line: 201, column: 12, scope: !347)
!379 = !DILocation(line: 201, column: 10, scope: !347)
!380 = !DILocation(line: 203, column: 39, scope: !347)
!381 = !DILocation(line: 203, column: 22, scope: !347)
!382 = !DILocation(line: 203, column: 4, scope: !347)
!383 = !DILocation(line: 203, column: 11, scope: !347)
!384 = !DILocation(line: 203, column: 20, scope: !347)
!385 = !DILocation(line: 204, column: 27, scope: !347)
!386 = !DILocation(line: 204, column: 25, scope: !347)
!387 = !DILocation(line: 204, column: 4, scope: !347)
!388 = !DILocation(line: 204, column: 11, scope: !347)
!389 = !DILocation(line: 204, column: 19, scope: !347)
!390 = !DILocation(line: 205, column: 38, scope: !347)
!391 = !DILocation(line: 205, column: 45, scope: !347)
!392 = !DILocation(line: 205, column: 37, scope: !347)
!393 = !DILocation(line: 205, column: 21, scope: !347)
!394 = !DILocation(line: 205, column: 4, scope: !347)
!395 = !DILocation(line: 205, column: 11, scope: !347)
!396 = !DILocation(line: 205, column: 19, scope: !347)
!397 = !DILocation(line: 206, column: 4, scope: !347)
!398 = !DILocation(line: 206, column: 11, scope: !347)
!399 = !DILocation(line: 206, column: 24, scope: !347)
!400 = !DILocation(line: 207, column: 22, scope: !347)
!401 = !DILocation(line: 207, column: 4, scope: !347)
!402 = !DILocation(line: 207, column: 11, scope: !347)
!403 = !DILocation(line: 207, column: 20, scope: !347)
!404 = !DILocation(line: 209, column: 22, scope: !347)
!405 = !DILocation(line: 209, column: 29, scope: !347)
!406 = !DILocation(line: 209, column: 4, scope: !347)
!407 = !DILocation(line: 209, column: 11, scope: !347)
!408 = !DILocation(line: 209, column: 20, scope: !347)
!409 = !DILocation(line: 211, column: 4, scope: !347)
!410 = !DILocation(line: 211, column: 18, scope: !411)
!411 = !DILexicalBlockFile(scope: !347, file: !50, discriminator: 1)
!412 = !DILocation(line: 211, column: 4, scope: !411)
!413 = !DILocation(line: 212, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !347, file: !50, line: 211, column: 22)
!415 = !DILocation(line: 212, column: 14, scope: !414)
!416 = !DILocation(line: 212, column: 23, scope: !414)
!417 = !DILocation(line: 211, column: 4, scope: !418)
!418 = !DILexicalBlockFile(scope: !347, file: !50, discriminator: 2)
!419 = distinct !{!419, !409}
!420 = !DILocation(line: 215, column: 11, scope: !347)
!421 = !DILocation(line: 215, column: 4, scope: !347)
!422 = distinct !DISubprogram(name: "MXUserHistoTearDown", scope: !50, file: !50, line: 236, type: !423, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !350}
!425 = !DILocalVariable(name: "histo", arg: 1, scope: !422, file: !50, line: 236, type: !350)
!426 = !DILocation(line: 236, column: 34, scope: !422)
!427 = !DILocation(line: 238, column: 8, scope: !428)
!428 = distinct !DILexicalBlock(scope: !422, file: !50, line: 238, column: 8)
!429 = !DILocation(line: 238, column: 14, scope: !428)
!430 = !DILocation(line: 238, column: 8, scope: !422)
!431 = !DILocation(line: 239, column: 12, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !50, line: 238, column: 22)
!433 = !DILocation(line: 239, column: 19, scope: !432)
!434 = !DILocation(line: 239, column: 7, scope: !432)
!435 = !DILocation(line: 240, column: 12, scope: !432)
!436 = !DILocation(line: 240, column: 19, scope: !432)
!437 = !DILocation(line: 240, column: 7, scope: !432)
!438 = !DILocation(line: 241, column: 12, scope: !432)
!439 = !DILocation(line: 241, column: 7, scope: !432)
!440 = !DILocation(line: 242, column: 4, scope: !432)
!441 = !DILocation(line: 243, column: 1, scope: !422)
!442 = distinct !DISubprogram(name: "MXUserHistoSample", scope: !50, file: !50, line: 266, type: !443, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !350, !6, !4}
!445 = !DILocalVariable(name: "histo", arg: 1, scope: !442, file: !50, line: 266, type: !350)
!446 = !DILocation(line: 266, column: 32, scope: !442)
!447 = !DILocalVariable(name: "durationNS", arg: 2, scope: !442, file: !50, line: 267, type: !6)
!448 = !DILocation(line: 267, column: 26, scope: !442)
!449 = !DILocalVariable(name: "ownerRetAddr", arg: 3, scope: !442, file: !50, line: 268, type: !4)
!450 = !DILocation(line: 268, column: 25, scope: !442)
!451 = !DILocalVariable(name: "i", scope: !442, file: !50, line: 270, type: !17)
!452 = !DILocation(line: 270, column: 11, scope: !442)
!453 = !DILocalVariable(name: "index", scope: !442, file: !50, line: 271, type: !17)
!454 = !DILocation(line: 271, column: 11, scope: !442)
!455 = !DILocation(line: 275, column: 4, scope: !442)
!456 = !DILocation(line: 275, column: 11, scope: !442)
!457 = !DILocation(line: 275, column: 23, scope: !442)
!458 = !DILocation(line: 277, column: 8, scope: !459)
!459 = distinct !DILexicalBlock(scope: !442, file: !50, line: 277, column: 8)
!460 = !DILocation(line: 277, column: 21, scope: !459)
!461 = !DILocation(line: 277, column: 28, scope: !459)
!462 = !DILocation(line: 277, column: 19, scope: !459)
!463 = !DILocation(line: 277, column: 8, scope: !442)
!464 = !DILocation(line: 278, column: 13, scope: !465)
!465 = distinct !DILexicalBlock(scope: !459, file: !50, line: 277, column: 38)
!466 = !DILocation(line: 279, column: 4, scope: !465)
!467 = !DILocation(line: 280, column: 32, scope: !468)
!468 = distinct !DILexicalBlock(scope: !459, file: !50, line: 279, column: 11)
!469 = !DILocation(line: 280, column: 45, scope: !468)
!470 = !DILocation(line: 280, column: 52, scope: !468)
!471 = !DILocation(line: 280, column: 43, scope: !468)
!472 = !DILocation(line: 280, column: 15, scope: !468)
!473 = !DILocation(line: 280, column: 13, scope: !468)
!474 = !DILocation(line: 282, column: 11, scope: !475)
!475 = distinct !DILexicalBlock(scope: !468, file: !50, line: 282, column: 11)
!476 = !DILocation(line: 282, column: 19, scope: !475)
!477 = !DILocation(line: 282, column: 26, scope: !475)
!478 = !DILocation(line: 282, column: 34, scope: !475)
!479 = !DILocation(line: 282, column: 17, scope: !475)
!480 = !DILocation(line: 282, column: 11, scope: !468)
!481 = !DILocation(line: 283, column: 18, scope: !482)
!482 = distinct !DILexicalBlock(scope: !475, file: !50, line: 282, column: 39)
!483 = !DILocation(line: 283, column: 25, scope: !482)
!484 = !DILocation(line: 283, column: 33, scope: !482)
!485 = !DILocation(line: 283, column: 16, scope: !482)
!486 = !DILocation(line: 284, column: 7, scope: !482)
!487 = !DILocation(line: 289, column: 19, scope: !442)
!488 = !DILocation(line: 289, column: 4, scope: !442)
!489 = !DILocation(line: 289, column: 11, scope: !442)
!490 = !DILocation(line: 289, column: 25, scope: !442)
!491 = !DILocation(line: 291, column: 10, scope: !442)
!492 = !DILocation(line: 293, column: 11, scope: !493)
!493 = distinct !DILexicalBlock(scope: !442, file: !50, line: 293, column: 4)
!494 = !DILocation(line: 293, column: 9, scope: !493)
!495 = !DILocation(line: 293, column: 16, scope: !496)
!496 = !DILexicalBlockFile(scope: !497, file: !50, discriminator: 1)
!497 = distinct !DILexicalBlock(scope: !493, file: !50, line: 293, column: 4)
!498 = !DILocation(line: 293, column: 18, scope: !496)
!499 = !DILocation(line: 293, column: 4, scope: !496)
!500 = !DILocation(line: 294, column: 29, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !50, line: 294, column: 11)
!502 = distinct !DILexicalBlock(scope: !497, file: !50, line: 293, column: 29)
!503 = !DILocation(line: 294, column: 11, scope: !501)
!504 = !DILocation(line: 294, column: 18, scope: !501)
!505 = !DILocation(line: 294, column: 32, scope: !501)
!506 = !DILocation(line: 294, column: 43, scope: !501)
!507 = !DILocation(line: 294, column: 40, scope: !501)
!508 = !DILocation(line: 294, column: 11, scope: !502)
!509 = !DILocation(line: 295, column: 18, scope: !510)
!510 = distinct !DILexicalBlock(scope: !501, file: !50, line: 294, column: 57)
!511 = !DILocation(line: 295, column: 16, scope: !510)
!512 = !DILocation(line: 296, column: 10, scope: !510)
!513 = !DILocation(line: 299, column: 29, scope: !514)
!514 = distinct !DILexicalBlock(scope: !502, file: !50, line: 299, column: 11)
!515 = !DILocation(line: 299, column: 11, scope: !514)
!516 = !DILocation(line: 299, column: 18, scope: !514)
!517 = !DILocation(line: 299, column: 32, scope: !514)
!518 = !DILocation(line: 300, column: 29, scope: !514)
!519 = !DILocation(line: 300, column: 11, scope: !514)
!520 = !DILocation(line: 300, column: 18, scope: !514)
!521 = !DILocation(line: 300, column: 36, scope: !514)
!522 = !DILocation(line: 299, column: 42, scope: !514)
!523 = !DILocation(line: 299, column: 11, scope: !502)
!524 = !DILocation(line: 301, column: 18, scope: !525)
!525 = distinct !DILexicalBlock(scope: !514, file: !50, line: 300, column: 47)
!526 = !DILocation(line: 301, column: 16, scope: !525)
!527 = !DILocation(line: 302, column: 7, scope: !525)
!528 = !DILocation(line: 303, column: 4, scope: !502)
!529 = !DILocation(line: 293, column: 25, scope: !530)
!530 = !DILexicalBlockFile(scope: !497, file: !50, discriminator: 2)
!531 = !DILocation(line: 293, column: 4, scope: !530)
!532 = distinct !{!532, !533}
!533 = !DILocation(line: 293, column: 4, scope: !442)
!534 = !DILocation(line: 305, column: 8, scope: !535)
!535 = distinct !DILexicalBlock(scope: !442, file: !50, line: 305, column: 8)
!536 = !DILocation(line: 305, column: 39, scope: !535)
!537 = !DILocation(line: 305, column: 21, scope: !535)
!538 = !DILocation(line: 305, column: 28, scope: !535)
!539 = !DILocation(line: 305, column: 46, scope: !535)
!540 = !DILocation(line: 305, column: 19, scope: !535)
!541 = !DILocation(line: 305, column: 8, scope: !442)
!542 = !DILocation(line: 306, column: 42, scope: !543)
!543 = distinct !DILexicalBlock(scope: !535, file: !50, line: 305, column: 57)
!544 = !DILocation(line: 306, column: 25, scope: !543)
!545 = !DILocation(line: 306, column: 7, scope: !543)
!546 = !DILocation(line: 306, column: 14, scope: !543)
!547 = !DILocation(line: 306, column: 32, scope: !543)
!548 = !DILocation(line: 306, column: 40, scope: !543)
!549 = !DILocation(line: 307, column: 44, scope: !543)
!550 = !DILocation(line: 307, column: 25, scope: !543)
!551 = !DILocation(line: 307, column: 7, scope: !543)
!552 = !DILocation(line: 307, column: 14, scope: !543)
!553 = !DILocation(line: 307, column: 32, scope: !543)
!554 = !DILocation(line: 307, column: 42, scope: !543)
!555 = !DILocation(line: 308, column: 4, scope: !543)
!556 = !DILocation(line: 309, column: 1, scope: !442)
!557 = distinct !DISubprogram(name: "MXUserHistoIndex", scope: !50, file: !50, line: 150, type: !558, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!558 = !DISubroutineType(types: !559)
!559 = !{!17, !6}
!560 = !DILocalVariable(name: "value", arg: 1, scope: !557, file: !50, line: 150, type: !6)
!561 = !DILocation(line: 150, column: 25, scope: !557)
!562 = !DILocalVariable(name: "index", scope: !557, file: !50, line: 152, type: !17)
!563 = !DILocation(line: 152, column: 11, scope: !557)
!564 = !DILocation(line: 154, column: 8, scope: !565)
!565 = distinct !DILexicalBlock(scope: !557, file: !50, line: 154, column: 8)
!566 = !DILocation(line: 154, column: 14, scope: !565)
!567 = !DILocation(line: 154, column: 8, scope: !557)
!568 = !DILocation(line: 155, column: 13, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !50, line: 154, column: 20)
!570 = !DILocation(line: 156, column: 4, scope: !569)
!571 = !DILocalVariable(name: "numerator", scope: !572, file: !50, line: 157, type: !17)
!572 = distinct !DILexicalBlock(scope: !565, file: !50, line: 156, column: 11)
!573 = !DILocation(line: 157, column: 14, scope: !572)
!574 = !DILocalVariable(name: "denominator", scope: !572, file: !50, line: 158, type: !17)
!575 = !DILocation(line: 158, column: 14, scope: !572)
!576 = !DILocation(line: 160, column: 23, scope: !572)
!577 = !DILocation(line: 160, column: 7, scope: !572)
!578 = !DILocation(line: 162, column: 22, scope: !572)
!579 = !DILocation(line: 162, column: 20, scope: !572)
!580 = !DILocation(line: 162, column: 35, scope: !572)
!581 = !DILocation(line: 162, column: 33, scope: !572)
!582 = !DILocation(line: 162, column: 13, scope: !572)
!583 = !DILocation(line: 165, column: 11, scope: !557)
!584 = !DILocation(line: 165, column: 4, scope: !557)
!585 = distinct !DISubprogram(name: "MXUserHistoDump", scope: !50, file: !50, line: 359, type: !586, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !350, !11}
!588 = !DILocalVariable(name: "histo", arg: 1, scope: !585, file: !50, line: 359, type: !350)
!589 = !DILocation(line: 359, column: 30, scope: !585)
!590 = !DILocalVariable(name: "header", arg: 2, scope: !585, file: !50, line: 360, type: !11)
!591 = !DILocation(line: 360, column: 31, scope: !585)
!592 = !DILocation(line: 365, column: 8, scope: !593)
!593 = distinct !DILexicalBlock(scope: !585, file: !50, line: 365, column: 8)
!594 = !DILocation(line: 365, column: 15, scope: !593)
!595 = !DILocation(line: 365, column: 8, scope: !585)
!596 = !DILocalVariable(name: "p", scope: !597, file: !50, line: 366, type: !21)
!597 = distinct !DILexicalBlock(scope: !593, file: !50, line: 365, column: 29)
!598 = !DILocation(line: 366, column: 13, scope: !597)
!599 = !DILocalVariable(name: "i", scope: !597, file: !50, line: 367, type: !17)
!600 = !DILocation(line: 367, column: 14, scope: !597)
!601 = !DILocalVariable(name: "spaceLeft", scope: !597, file: !50, line: 368, type: !17)
!602 = !DILocation(line: 368, column: 14, scope: !597)
!603 = !DILocation(line: 372, column: 23, scope: !597)
!604 = !DILocation(line: 372, column: 40, scope: !597)
!605 = !DILocation(line: 374, column: 23, scope: !597)
!606 = !DILocation(line: 374, column: 31, scope: !597)
!607 = !DILocation(line: 374, column: 36, scope: !597)
!608 = !DILocation(line: 374, column: 50, scope: !597)
!609 = !DILocation(line: 374, column: 57, scope: !597)
!610 = !DILocation(line: 375, column: 23, scope: !597)
!611 = !DILocation(line: 375, column: 30, scope: !597)
!612 = !DILocation(line: 375, column: 40, scope: !597)
!613 = !DILocation(line: 375, column: 47, scope: !597)
!614 = !DILocation(line: 372, column: 11, scope: !597)
!615 = !DILocation(line: 372, column: 9, scope: !597)
!616 = !DILocation(line: 383, column: 28, scope: !597)
!617 = !DILocation(line: 383, column: 30, scope: !597)
!618 = !DILocation(line: 383, column: 12, scope: !597)
!619 = !DILocation(line: 383, column: 9, scope: !597)
!620 = !DILocation(line: 384, column: 19, scope: !597)
!621 = !DILocation(line: 384, column: 41, scope: !597)
!622 = !DILocation(line: 384, column: 39, scope: !597)
!623 = !DILocation(line: 384, column: 43, scope: !597)
!624 = !DILocation(line: 384, column: 17, scope: !597)
!625 = !DILocation(line: 387, column: 14, scope: !626)
!626 = distinct !DILexicalBlock(scope: !597, file: !50, line: 387, column: 7)
!627 = !DILocation(line: 387, column: 12, scope: !626)
!628 = !DILocation(line: 387, column: 19, scope: !629)
!629 = !DILexicalBlockFile(scope: !630, file: !50, discriminator: 1)
!630 = distinct !DILexicalBlock(scope: !626, file: !50, line: 387, column: 7)
!631 = !DILocation(line: 387, column: 23, scope: !629)
!632 = !DILocation(line: 387, column: 30, scope: !629)
!633 = !DILocation(line: 387, column: 21, scope: !629)
!634 = !DILocation(line: 387, column: 7, scope: !629)
!635 = !DILocation(line: 388, column: 29, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !50, line: 388, column: 14)
!637 = distinct !DILexicalBlock(scope: !630, file: !50, line: 387, column: 44)
!638 = !DILocation(line: 388, column: 14, scope: !636)
!639 = !DILocation(line: 388, column: 21, scope: !636)
!640 = !DILocation(line: 388, column: 32, scope: !636)
!641 = !DILocation(line: 388, column: 14, scope: !637)
!642 = !DILocalVariable(name: "len", scope: !643, file: !50, line: 389, type: !17)
!643 = distinct !DILexicalBlock(scope: !636, file: !50, line: 388, column: 38)
!644 = !DILocation(line: 389, column: 20, scope: !643)
!645 = !DILocalVariable(name: "binEntry", scope: !643, file: !50, line: 390, type: !646)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, align: 8, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 32)
!649 = !DILocation(line: 390, column: 18, scope: !643)
!650 = !DILocation(line: 392, column: 31, scope: !643)
!651 = !DILocation(line: 393, column: 31, scope: !643)
!652 = !DILocation(line: 393, column: 49, scope: !643)
!653 = !DILocation(line: 393, column: 34, scope: !643)
!654 = !DILocation(line: 393, column: 41, scope: !643)
!655 = !DILocation(line: 392, column: 19, scope: !643)
!656 = !DILocation(line: 392, column: 17, scope: !643)
!657 = !DILocation(line: 395, column: 17, scope: !658)
!658 = distinct !DILexicalBlock(scope: !643, file: !50, line: 395, column: 17)
!659 = !DILocation(line: 395, column: 23, scope: !658)
!660 = !DILocation(line: 395, column: 21, scope: !658)
!661 = !DILocation(line: 395, column: 17, scope: !643)
!662 = !DILocation(line: 404, column: 27, scope: !663)
!663 = distinct !DILexicalBlock(scope: !658, file: !50, line: 395, column: 34)
!664 = !DILocation(line: 404, column: 30, scope: !663)
!665 = !DILocation(line: 404, column: 40, scope: !663)
!666 = !DILocation(line: 404, column: 44, scope: !663)
!667 = !DILocation(line: 404, column: 16, scope: !663)
!668 = !DILocation(line: 405, column: 21, scope: !663)
!669 = !DILocation(line: 405, column: 25, scope: !663)
!670 = !DILocation(line: 405, column: 18, scope: !663)
!671 = !DILocation(line: 406, column: 29, scope: !663)
!672 = !DILocation(line: 406, column: 26, scope: !663)
!673 = !DILocation(line: 407, column: 13, scope: !663)
!674 = !DILocation(line: 408, column: 16, scope: !675)
!675 = distinct !DILexicalBlock(scope: !658, file: !50, line: 407, column: 20)
!676 = !DILocation(line: 410, column: 10, scope: !643)
!677 = !DILocation(line: 411, column: 7, scope: !637)
!678 = !DILocation(line: 387, column: 40, scope: !679)
!679 = !DILexicalBlockFile(scope: !630, file: !50, discriminator: 2)
!680 = !DILocation(line: 387, column: 7, scope: !679)
!681 = distinct !{!681, !682}
!682 = !DILocation(line: 387, column: 7, scope: !597)
!683 = !DILocation(line: 413, column: 28, scope: !597)
!684 = !DILocation(line: 413, column: 7, scope: !597)
!685 = !DILocation(line: 415, column: 23, scope: !597)
!686 = !DILocation(line: 415, column: 40, scope: !597)
!687 = !DILocation(line: 416, column: 49, scope: !597)
!688 = !DILocation(line: 416, column: 57, scope: !597)
!689 = !DILocation(line: 416, column: 62, scope: !597)
!690 = !DILocation(line: 417, column: 23, scope: !597)
!691 = !DILocation(line: 417, column: 30, scope: !597)
!692 = !DILocation(line: 415, column: 11, scope: !597)
!693 = !DILocation(line: 415, column: 9, scope: !597)
!694 = !DILocation(line: 419, column: 28, scope: !597)
!695 = !DILocation(line: 419, column: 30, scope: !597)
!696 = !DILocation(line: 419, column: 12, scope: !597)
!697 = !DILocation(line: 419, column: 9, scope: !597)
!698 = !DILocation(line: 420, column: 19, scope: !597)
!699 = !DILocation(line: 420, column: 41, scope: !597)
!700 = !DILocation(line: 420, column: 39, scope: !597)
!701 = !DILocation(line: 420, column: 43, scope: !597)
!702 = !DILocation(line: 420, column: 17, scope: !597)
!703 = !DILocation(line: 422, column: 14, scope: !704)
!704 = distinct !DILexicalBlock(scope: !597, file: !50, line: 422, column: 7)
!705 = !DILocation(line: 422, column: 12, scope: !704)
!706 = !DILocation(line: 422, column: 19, scope: !707)
!707 = !DILexicalBlockFile(scope: !708, file: !50, discriminator: 1)
!708 = distinct !DILexicalBlock(scope: !704, file: !50, line: 422, column: 7)
!709 = !DILocation(line: 422, column: 21, scope: !707)
!710 = !DILocation(line: 422, column: 7, scope: !707)
!711 = !DILocation(line: 423, column: 32, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !50, line: 423, column: 14)
!713 = distinct !DILexicalBlock(scope: !708, file: !50, line: 422, column: 32)
!714 = !DILocation(line: 423, column: 14, scope: !712)
!715 = !DILocation(line: 423, column: 21, scope: !712)
!716 = !DILocation(line: 423, column: 35, scope: !712)
!717 = !DILocation(line: 423, column: 43, scope: !712)
!718 = !DILocation(line: 423, column: 14, scope: !713)
!719 = !DILocalVariable(name: "len", scope: !720, file: !50, line: 424, type: !17)
!720 = distinct !DILexicalBlock(scope: !712, file: !50, line: 423, column: 51)
!721 = !DILocation(line: 424, column: 20, scope: !720)
!722 = !DILocalVariable(name: "binEntry", scope: !720, file: !50, line: 425, type: !646)
!723 = !DILocation(line: 425, column: 18, scope: !720)
!724 = !DILocation(line: 428, column: 31, scope: !720)
!725 = !DILocation(line: 429, column: 49, scope: !720)
!726 = !DILocation(line: 429, column: 31, scope: !720)
!727 = !DILocation(line: 429, column: 38, scope: !720)
!728 = !DILocation(line: 429, column: 52, scope: !720)
!729 = !DILocation(line: 430, column: 49, scope: !720)
!730 = !DILocation(line: 430, column: 31, scope: !720)
!731 = !DILocation(line: 430, column: 38, scope: !720)
!732 = !DILocation(line: 430, column: 52, scope: !720)
!733 = !DILocation(line: 428, column: 19, scope: !720)
!734 = !DILocation(line: 428, column: 17, scope: !720)
!735 = !DILocation(line: 432, column: 17, scope: !736)
!736 = distinct !DILexicalBlock(scope: !720, file: !50, line: 432, column: 17)
!737 = !DILocation(line: 432, column: 23, scope: !736)
!738 = !DILocation(line: 432, column: 21, scope: !736)
!739 = !DILocation(line: 432, column: 17, scope: !720)
!740 = !DILocation(line: 441, column: 27, scope: !741)
!741 = distinct !DILexicalBlock(scope: !736, file: !50, line: 432, column: 34)
!742 = !DILocation(line: 441, column: 30, scope: !741)
!743 = !DILocation(line: 441, column: 40, scope: !741)
!744 = !DILocation(line: 441, column: 44, scope: !741)
!745 = !DILocation(line: 441, column: 16, scope: !741)
!746 = !DILocation(line: 442, column: 21, scope: !741)
!747 = !DILocation(line: 442, column: 25, scope: !741)
!748 = !DILocation(line: 442, column: 18, scope: !741)
!749 = !DILocation(line: 443, column: 29, scope: !741)
!750 = !DILocation(line: 443, column: 26, scope: !741)
!751 = !DILocation(line: 444, column: 13, scope: !741)
!752 = !DILocation(line: 445, column: 16, scope: !753)
!753 = distinct !DILexicalBlock(scope: !736, file: !50, line: 444, column: 20)
!754 = !DILocation(line: 447, column: 10, scope: !720)
!755 = !DILocation(line: 448, column: 7, scope: !713)
!756 = !DILocation(line: 422, column: 28, scope: !757)
!757 = !DILexicalBlockFile(scope: !708, file: !50, discriminator: 2)
!758 = !DILocation(line: 422, column: 7, scope: !757)
!759 = distinct !{!759, !760}
!760 = !DILocation(line: 422, column: 7, scope: !597)
!761 = !DILocation(line: 450, column: 28, scope: !597)
!762 = !DILocation(line: 450, column: 7, scope: !597)
!763 = !DILocation(line: 451, column: 4, scope: !597)
!764 = !DILocation(line: 452, column: 1, scope: !585)
!765 = distinct !DISubprogram(name: "MXUserStatsLog", scope: !50, file: !50, line: 329, type: !766, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !82, null}
!768 = !DILocalVariable(name: "fmt", arg: 1, scope: !765, file: !50, line: 329, type: !82)
!769 = !DILocation(line: 329, column: 28, scope: !765)
!770 = !DILocalVariable(name: "ap", scope: !765, file: !50, line: 332, type: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !772, line: 98, baseType: !773)
!772 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line520")
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !772, line: 40, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 332, baseType: !775)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 192, align: 64, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 1)
!778 = !DILocation(line: 332, column: 12, scope: !765)
!779 = !DILocation(line: 336, column: 3, scope: !765)
!780 = !DILocation(line: 337, column: 6, scope: !765)
!781 = !DILocation(line: 337, column: 23, scope: !765)
!782 = !DILocation(line: 337, column: 43, scope: !765)
!783 = !DILocation(line: 337, column: 48, scope: !765)
!784 = !DILocation(line: 337, column: 4, scope: !765)
!785 = !DILocation(line: 338, column: 3, scope: !765)
!786 = !DILocation(line: 339, column: 1, scope: !765)
!787 = distinct !DISubprogram(name: "MXUserBasicStatsSample", scope: !50, file: !50, line: 472, type: !788, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !790, !6}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserBasicStats", file: !13, line: 539, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 532, size: 384, align: 64, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "typeName", scope: !792, file: !13, line: 533, baseType: !21, size: 64, align: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "numSamples", scope: !792, file: !13, line: 534, baseType: !6, size: 64, align: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "minTime", scope: !792, file: !13, line: 535, baseType: !6, size: 64, align: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "maxTime", scope: !792, file: !13, line: 536, baseType: !6, size: 64, align: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "timeSum", scope: !792, file: !13, line: 537, baseType: !6, size: 64, align: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "timeSquaredSum", scope: !792, file: !13, line: 538, baseType: !5, size: 64, align: 64, offset: 320)
!800 = !DILocalVariable(name: "stats", arg: 1, scope: !787, file: !50, line: 472, type: !790)
!801 = !DILocation(line: 472, column: 42, scope: !787)
!802 = !DILocalVariable(name: "durationNS", arg: 2, scope: !787, file: !50, line: 473, type: !6)
!803 = !DILocation(line: 473, column: 31, scope: !787)
!804 = !DILocation(line: 475, column: 4, scope: !787)
!805 = !DILocation(line: 475, column: 11, scope: !787)
!806 = !DILocation(line: 475, column: 21, scope: !787)
!807 = !DILocation(line: 477, column: 8, scope: !808)
!808 = distinct !DILexicalBlock(scope: !787, file: !50, line: 477, column: 8)
!809 = !DILocation(line: 477, column: 21, scope: !808)
!810 = !DILocation(line: 477, column: 28, scope: !808)
!811 = !DILocation(line: 477, column: 19, scope: !808)
!812 = !DILocation(line: 477, column: 8, scope: !787)
!813 = !DILocation(line: 478, column: 24, scope: !814)
!814 = distinct !DILexicalBlock(scope: !808, file: !50, line: 477, column: 37)
!815 = !DILocation(line: 478, column: 7, scope: !814)
!816 = !DILocation(line: 478, column: 14, scope: !814)
!817 = !DILocation(line: 478, column: 22, scope: !814)
!818 = !DILocation(line: 479, column: 4, scope: !814)
!819 = !DILocation(line: 481, column: 8, scope: !820)
!820 = distinct !DILexicalBlock(scope: !787, file: !50, line: 481, column: 8)
!821 = !DILocation(line: 481, column: 21, scope: !820)
!822 = !DILocation(line: 481, column: 28, scope: !820)
!823 = !DILocation(line: 481, column: 19, scope: !820)
!824 = !DILocation(line: 481, column: 8, scope: !787)
!825 = !DILocation(line: 482, column: 24, scope: !826)
!826 = distinct !DILexicalBlock(scope: !820, file: !50, line: 481, column: 37)
!827 = !DILocation(line: 482, column: 7, scope: !826)
!828 = !DILocation(line: 482, column: 14, scope: !826)
!829 = !DILocation(line: 482, column: 22, scope: !826)
!830 = !DILocation(line: 483, column: 4, scope: !826)
!831 = !DILocation(line: 485, column: 22, scope: !787)
!832 = !DILocation(line: 485, column: 4, scope: !787)
!833 = !DILocation(line: 485, column: 11, scope: !787)
!834 = !DILocation(line: 485, column: 19, scope: !787)
!835 = !DILocation(line: 488, column: 39, scope: !787)
!836 = !DILocation(line: 488, column: 30, scope: !787)
!837 = !DILocation(line: 488, column: 63, scope: !787)
!838 = !DILocation(line: 488, column: 54, scope: !787)
!839 = !DILocation(line: 488, column: 51, scope: !787)
!840 = !DILocation(line: 488, column: 4, scope: !787)
!841 = !DILocation(line: 488, column: 11, scope: !787)
!842 = !DILocation(line: 488, column: 26, scope: !787)
!843 = !DILocation(line: 489, column: 1, scope: !787)
!844 = distinct !DISubprogram(name: "MXUserBasicStatsSetUp", scope: !50, file: !50, line: 509, type: !845, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !790, !21}
!847 = !DILocalVariable(name: "stats", arg: 1, scope: !844, file: !50, line: 509, type: !790)
!848 = !DILocation(line: 509, column: 41, scope: !844)
!849 = !DILocalVariable(name: "typeName", arg: 2, scope: !844, file: !50, line: 510, type: !21)
!850 = !DILocation(line: 510, column: 29, scope: !844)
!851 = !DILocation(line: 512, column: 39, scope: !844)
!852 = !DILocation(line: 512, column: 22, scope: !844)
!853 = !DILocation(line: 512, column: 4, scope: !844)
!854 = !DILocation(line: 512, column: 11, scope: !844)
!855 = !DILocation(line: 512, column: 20, scope: !844)
!856 = !DILocation(line: 513, column: 4, scope: !844)
!857 = !DILocation(line: 513, column: 11, scope: !844)
!858 = !DILocation(line: 513, column: 22, scope: !844)
!859 = !DILocation(line: 514, column: 4, scope: !844)
!860 = !DILocation(line: 514, column: 11, scope: !844)
!861 = !DILocation(line: 514, column: 19, scope: !844)
!862 = !DILocation(line: 515, column: 4, scope: !844)
!863 = !DILocation(line: 515, column: 11, scope: !844)
!864 = !DILocation(line: 515, column: 19, scope: !844)
!865 = !DILocation(line: 516, column: 4, scope: !844)
!866 = !DILocation(line: 516, column: 11, scope: !844)
!867 = !DILocation(line: 516, column: 19, scope: !844)
!868 = !DILocation(line: 517, column: 4, scope: !844)
!869 = !DILocation(line: 517, column: 11, scope: !844)
!870 = !DILocation(line: 517, column: 26, scope: !844)
!871 = !DILocation(line: 518, column: 1, scope: !844)
!872 = distinct !DISubprogram(name: "MXUserDumpBasicStats", scope: !50, file: !50, line: 558, type: !873, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !790, !11}
!875 = !DILocalVariable(name: "stats", arg: 1, scope: !872, file: !50, line: 558, type: !790)
!876 = !DILocation(line: 558, column: 40, scope: !872)
!877 = !DILocalVariable(name: "header", arg: 2, scope: !872, file: !50, line: 559, type: !11)
!878 = !DILocation(line: 559, column: 36, scope: !872)
!879 = !DILocalVariable(name: "stdDev", scope: !872, file: !50, line: 561, type: !6)
!880 = !DILocation(line: 561, column: 11, scope: !872)
!881 = !DILocation(line: 563, column: 8, scope: !882)
!882 = distinct !DILexicalBlock(scope: !872, file: !50, line: 563, column: 8)
!883 = !DILocation(line: 563, column: 15, scope: !882)
!884 = !DILocation(line: 563, column: 26, scope: !882)
!885 = !DILocation(line: 563, column: 8, scope: !872)
!886 = !DILocation(line: 571, column: 11, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !50, line: 571, column: 11)
!888 = distinct !DILexicalBlock(scope: !882, file: !50, line: 563, column: 31)
!889 = !DILocation(line: 571, column: 18, scope: !887)
!890 = !DILocation(line: 571, column: 29, scope: !887)
!891 = !DILocation(line: 571, column: 11, scope: !888)
!892 = !DILocation(line: 572, column: 10, scope: !893)
!893 = distinct !DILexicalBlock(scope: !887, file: !50, line: 571, column: 35)
!894 = !DILocation(line: 575, column: 14, scope: !888)
!895 = !DILocation(line: 576, column: 4, scope: !888)
!896 = !DILocalVariable(name: "num", scope: !897, file: !50, line: 577, type: !5)
!897 = distinct !DILexicalBlock(scope: !882, file: !50, line: 576, column: 11)
!898 = !DILocation(line: 577, column: 14, scope: !897)
!899 = !DILocalVariable(name: "mean", scope: !897, file: !50, line: 578, type: !5)
!900 = !DILocation(line: 578, column: 14, scope: !897)
!901 = !DILocalVariable(name: "variance", scope: !897, file: !50, line: 579, type: !5)
!902 = !DILocation(line: 579, column: 14, scope: !897)
!903 = !DILocation(line: 581, column: 22, scope: !897)
!904 = !DILocation(line: 581, column: 29, scope: !897)
!905 = !DILocation(line: 581, column: 13, scope: !897)
!906 = !DILocation(line: 581, column: 11, scope: !897)
!907 = !DILocation(line: 582, column: 24, scope: !897)
!908 = !DILocation(line: 582, column: 31, scope: !897)
!909 = !DILocation(line: 582, column: 15, scope: !897)
!910 = !DILocation(line: 582, column: 42, scope: !897)
!911 = !DILocation(line: 582, column: 40, scope: !897)
!912 = !DILocation(line: 582, column: 12, scope: !897)
!913 = !DILocation(line: 583, column: 19, scope: !897)
!914 = !DILocation(line: 583, column: 26, scope: !897)
!915 = !DILocation(line: 583, column: 44, scope: !897)
!916 = !DILocation(line: 583, column: 48, scope: !897)
!917 = !DILocation(line: 583, column: 47, scope: !897)
!918 = !DILocation(line: 583, column: 53, scope: !897)
!919 = !DILocation(line: 583, column: 52, scope: !897)
!920 = !DILocation(line: 583, column: 41, scope: !897)
!921 = !DILocation(line: 583, column: 63, scope: !897)
!922 = !DILocation(line: 583, column: 67, scope: !897)
!923 = !DILocation(line: 583, column: 60, scope: !897)
!924 = !DILocation(line: 583, column: 16, scope: !897)
!925 = !DILocation(line: 585, column: 17, scope: !897)
!926 = !DILocation(line: 585, column: 26, scope: !897)
!927 = !DILocation(line: 585, column: 16, scope: !897)
!928 = !DILocation(line: 585, column: 16, scope: !929)
!929 = !DILexicalBlockFile(scope: !897, file: !50, discriminator: 1)
!930 = !DILocation(line: 585, column: 60, scope: !931)
!931 = !DILexicalBlockFile(scope: !897, file: !50, discriminator: 2)
!932 = !DILocation(line: 585, column: 49, scope: !931)
!933 = !DILocation(line: 585, column: 70, scope: !931)
!934 = !DILocation(line: 585, column: 39, scope: !931)
!935 = !DILocation(line: 585, column: 16, scope: !931)
!936 = !DILocation(line: 585, column: 16, scope: !937)
!937 = !DILexicalBlockFile(scope: !897, file: !50, discriminator: 3)
!938 = !DILocation(line: 585, column: 14, scope: !937)
!939 = !DILocation(line: 590, column: 19, scope: !872)
!940 = !DILocation(line: 590, column: 27, scope: !872)
!941 = !DILocation(line: 590, column: 32, scope: !872)
!942 = !DILocation(line: 590, column: 46, scope: !872)
!943 = !DILocation(line: 590, column: 53, scope: !872)
!944 = !DILocation(line: 591, column: 19, scope: !872)
!945 = !DILocation(line: 591, column: 26, scope: !872)
!946 = !DILocation(line: 591, column: 38, scope: !872)
!947 = !DILocation(line: 591, column: 45, scope: !872)
!948 = !DILocation(line: 591, column: 54, scope: !872)
!949 = !DILocation(line: 591, column: 61, scope: !872)
!950 = !DILocation(line: 592, column: 19, scope: !872)
!951 = !DILocation(line: 592, column: 26, scope: !872)
!952 = !DILocation(line: 592, column: 34, scope: !872)
!953 = !DILocation(line: 592, column: 41, scope: !872)
!954 = !DILocation(line: 592, column: 33, scope: !872)
!955 = !DILocation(line: 592, column: 53, scope: !872)
!956 = !DILocation(line: 588, column: 4, scope: !872)
!957 = !DILocation(line: 593, column: 1, scope: !872)
!958 = !DILocation(line: 593, column: 1, scope: !959)
!959 = !DILexicalBlockFile(scope: !872, file: !50, discriminator: 1)
!960 = distinct !DISubprogram(name: "MXUserSqrt", scope: !50, file: !50, line: 540, type: !961, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!961 = !DISubroutineType(types: !962)
!962 = !{!5, !5}
!963 = !DILocalVariable(name: "x", arg: 1, scope: !960, file: !50, line: 540, type: !5)
!964 = !DILocation(line: 540, column: 19, scope: !960)
!965 = !DILocalVariable(name: "xn", scope: !960, file: !50, line: 542, type: !5)
!966 = !DILocation(line: 542, column: 11, scope: !960)
!967 = !DILocalVariable(name: "xn1", scope: !960, file: !50, line: 543, type: !5)
!968 = !DILocation(line: 543, column: 11, scope: !960)
!969 = !DILocation(line: 543, column: 17, scope: !960)
!970 = !DILocation(line: 545, column: 8, scope: !971)
!971 = distinct !DILexicalBlock(scope: !960, file: !50, line: 545, column: 8)
!972 = !DILocation(line: 545, column: 10, scope: !971)
!973 = !DILocation(line: 545, column: 8, scope: !960)
!974 = !DILocation(line: 546, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !971, file: !50, line: 545, column: 18)
!976 = !DILocation(line: 549, column: 4, scope: !960)
!977 = distinct !{!977, !976}
!978 = !DILocation(line: 550, column: 12, scope: !979)
!979 = distinct !DILexicalBlock(scope: !960, file: !50, line: 549, column: 7)
!980 = !DILocation(line: 550, column: 10, scope: !979)
!981 = !DILocation(line: 551, column: 14, scope: !979)
!982 = !DILocation(line: 551, column: 19, scope: !979)
!983 = !DILocation(line: 551, column: 21, scope: !979)
!984 = !DILocation(line: 551, column: 20, scope: !979)
!985 = !DILocation(line: 551, column: 17, scope: !979)
!986 = !DILocation(line: 551, column: 25, scope: !979)
!987 = !DILocation(line: 551, column: 11, scope: !979)
!988 = !DILocation(line: 552, column: 4, scope: !979)
!989 = !DILocation(line: 552, column: 18, scope: !990)
!990 = !DILexicalBlockFile(scope: !960, file: !50, discriminator: 1)
!991 = !DILocation(line: 552, column: 24, scope: !990)
!992 = !DILocation(line: 552, column: 22, scope: !990)
!993 = !DILocation(line: 552, column: 13, scope: !990)
!994 = !DILocation(line: 552, column: 28, scope: !990)
!995 = !DILocation(line: 552, column: 4, scope: !990)
!996 = !DILocation(line: 554, column: 11, scope: !960)
!997 = !DILocation(line: 554, column: 4, scope: !960)
!998 = !DILocation(line: 555, column: 1, scope: !960)
!999 = distinct !DISubprogram(name: "MXUserBasicStatsTearDown", scope: !50, file: !50, line: 613, type: !1000, isLocal: false, isDefinition: true, scopeLine: 614, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !790}
!1002 = !DILocalVariable(name: "stats", arg: 1, scope: !999, file: !50, line: 613, type: !790)
!1003 = !DILocation(line: 613, column: 44, scope: !999)
!1004 = !DILocation(line: 615, column: 9, scope: !999)
!1005 = !DILocation(line: 615, column: 16, scope: !999)
!1006 = !DILocation(line: 615, column: 4, scope: !999)
!1007 = !DILocation(line: 616, column: 4, scope: !999)
!1008 = !DILocation(line: 616, column: 11, scope: !999)
!1009 = !DILocation(line: 616, column: 20, scope: !999)
!1010 = !DILocation(line: 617, column: 1, scope: !999)
!1011 = distinct !DISubprogram(name: "MXUserAcquisitionStatsSetUp", scope: !50, file: !50, line: 639, type: !1012, isLocal: false, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64, align: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserAcquisitionStats", file: !13, line: 552, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 541, size: 896, align: 64, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "contentionRatioFloor", scope: !1016, file: !13, line: 542, baseType: !5, size: 64, align: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "contentionCountFloor", scope: !1016, file: !13, line: 543, baseType: !6, size: 64, align: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "contentionDurationFloor", scope: !1016, file: !13, line: 544, baseType: !6, size: 64, align: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "numAttempts", scope: !1016, file: !13, line: 545, baseType: !6, size: 64, align: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "numSuccesses", scope: !1016, file: !13, line: 546, baseType: !6, size: 64, align: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "numSuccessesContended", scope: !1016, file: !13, line: 547, baseType: !6, size: 64, align: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "successContentionTime", scope: !1016, file: !13, line: 548, baseType: !6, size: 64, align: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "totalContentionTime", scope: !1016, file: !13, line: 549, baseType: !6, size: 64, align: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "basicStats", scope: !1016, file: !13, line: 551, baseType: !791, size: 384, align: 64, offset: 512)
!1027 = !DILocalVariable(name: "stats", arg: 1, scope: !1011, file: !50, line: 639, type: !1014)
!1028 = !DILocation(line: 639, column: 53, scope: !1011)
!1029 = !DILocation(line: 641, column: 27, scope: !1011)
!1030 = !DILocation(line: 641, column: 34, scope: !1011)
!1031 = !DILocation(line: 641, column: 4, scope: !1011)
!1032 = !DILocation(line: 643, column: 34, scope: !1011)
!1033 = !DILocation(line: 643, column: 4, scope: !1011)
!1034 = !DILocation(line: 643, column: 11, scope: !1011)
!1035 = !DILocation(line: 643, column: 32, scope: !1011)
!1036 = !DILocation(line: 644, column: 34, scope: !1011)
!1037 = !DILocation(line: 644, column: 4, scope: !1011)
!1038 = !DILocation(line: 644, column: 11, scope: !1011)
!1039 = !DILocation(line: 644, column: 32, scope: !1011)
!1040 = !DILocation(line: 645, column: 37, scope: !1011)
!1041 = !DILocation(line: 645, column: 4, scope: !1011)
!1042 = !DILocation(line: 645, column: 11, scope: !1011)
!1043 = !DILocation(line: 645, column: 35, scope: !1011)
!1044 = !DILocation(line: 646, column: 4, scope: !1011)
!1045 = !DILocation(line: 646, column: 11, scope: !1011)
!1046 = !DILocation(line: 646, column: 23, scope: !1011)
!1047 = !DILocation(line: 647, column: 4, scope: !1011)
!1048 = !DILocation(line: 647, column: 11, scope: !1011)
!1049 = !DILocation(line: 647, column: 24, scope: !1011)
!1050 = !DILocation(line: 648, column: 4, scope: !1011)
!1051 = !DILocation(line: 648, column: 11, scope: !1011)
!1052 = !DILocation(line: 648, column: 33, scope: !1011)
!1053 = !DILocation(line: 649, column: 4, scope: !1011)
!1054 = !DILocation(line: 649, column: 11, scope: !1011)
!1055 = !DILocation(line: 649, column: 31, scope: !1011)
!1056 = !DILocation(line: 650, column: 4, scope: !1011)
!1057 = !DILocation(line: 650, column: 11, scope: !1011)
!1058 = !DILocation(line: 650, column: 33, scope: !1011)
!1059 = !DILocation(line: 651, column: 1, scope: !1011)
!1060 = distinct !DISubprogram(name: "MXUserAcquisitionSample", scope: !50, file: !50, line: 671, type: !1061, isLocal: false, isDefinition: true, scopeLine: 675, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !1014, !92, !92, !6}
!1063 = !DILocalVariable(name: "stats", arg: 1, scope: !1060, file: !50, line: 671, type: !1014)
!1064 = !DILocation(line: 671, column: 49, scope: !1060)
!1065 = !DILocalVariable(name: "wasAcquired", arg: 2, scope: !1060, file: !50, line: 672, type: !92)
!1066 = !DILocation(line: 672, column: 30, scope: !1060)
!1067 = !DILocalVariable(name: "wasContended", arg: 3, scope: !1060, file: !50, line: 673, type: !92)
!1068 = !DILocation(line: 673, column: 30, scope: !1060)
!1069 = !DILocalVariable(name: "elapsedTime", arg: 4, scope: !1060, file: !50, line: 674, type: !6)
!1070 = !DILocation(line: 674, column: 32, scope: !1060)
!1071 = !DILocation(line: 676, column: 4, scope: !1060)
!1072 = !DILocation(line: 676, column: 11, scope: !1060)
!1073 = !DILocation(line: 676, column: 22, scope: !1060)
!1074 = !DILocation(line: 678, column: 8, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1060, file: !50, line: 678, column: 8)
!1076 = !DILocation(line: 678, column: 8, scope: !1060)
!1077 = !DILocation(line: 679, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !50, line: 678, column: 21)
!1079 = !DILocation(line: 679, column: 14, scope: !1078)
!1080 = !DILocation(line: 679, column: 26, scope: !1078)
!1081 = !DILocation(line: 681, column: 11, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !50, line: 681, column: 11)
!1083 = !DILocation(line: 681, column: 11, scope: !1078)
!1084 = !DILocation(line: 682, column: 10, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !50, line: 681, column: 25)
!1086 = !DILocation(line: 682, column: 17, scope: !1085)
!1087 = !DILocation(line: 682, column: 38, scope: !1085)
!1088 = !DILocation(line: 683, column: 40, scope: !1085)
!1089 = !DILocation(line: 683, column: 10, scope: !1085)
!1090 = !DILocation(line: 683, column: 17, scope: !1085)
!1091 = !DILocation(line: 683, column: 37, scope: !1085)
!1092 = !DILocation(line: 684, column: 42, scope: !1085)
!1093 = !DILocation(line: 684, column: 10, scope: !1085)
!1094 = !DILocation(line: 684, column: 17, scope: !1085)
!1095 = !DILocation(line: 684, column: 39, scope: !1085)
!1096 = !DILocation(line: 685, column: 7, scope: !1085)
!1097 = !DILocation(line: 687, column: 31, scope: !1078)
!1098 = !DILocation(line: 687, column: 38, scope: !1078)
!1099 = !DILocation(line: 687, column: 50, scope: !1078)
!1100 = !DILocation(line: 687, column: 7, scope: !1078)
!1101 = !DILocation(line: 688, column: 4, scope: !1078)
!1102 = !DILocation(line: 691, column: 37, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1075, file: !50, line: 688, column: 11)
!1104 = !DILocation(line: 691, column: 7, scope: !1103)
!1105 = !DILocation(line: 691, column: 14, scope: !1103)
!1106 = !DILocation(line: 691, column: 34, scope: !1103)
!1107 = !DILocation(line: 693, column: 1, scope: !1060)
!1108 = distinct !DISubprogram(name: "MXUserDumpAcquisitionStats", scope: !50, file: !50, line: 713, type: !1109, isLocal: false, isDefinition: true, scopeLine: 715, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !1014, !11}
!1111 = !DILocalVariable(name: "stats", arg: 1, scope: !1108, file: !50, line: 713, type: !1014)
!1112 = !DILocation(line: 713, column: 52, scope: !1108)
!1113 = !DILocalVariable(name: "header", arg: 2, scope: !1108, file: !50, line: 714, type: !11)
!1114 = !DILocation(line: 714, column: 42, scope: !1108)
!1115 = !DILocation(line: 716, column: 8, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1108, file: !50, line: 716, column: 8)
!1117 = !DILocation(line: 716, column: 15, scope: !1116)
!1118 = !DILocation(line: 716, column: 27, scope: !1116)
!1119 = !DILocation(line: 716, column: 8, scope: !1108)
!1120 = !DILocation(line: 717, column: 11, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !50, line: 717, column: 11)
!1122 = distinct !DILexicalBlock(scope: !1116, file: !50, line: 716, column: 32)
!1123 = !DILocation(line: 717, column: 18, scope: !1121)
!1124 = !DILocation(line: 717, column: 31, scope: !1121)
!1125 = !DILocation(line: 717, column: 11, scope: !1122)
!1126 = !DILocation(line: 718, column: 32, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1121, file: !50, line: 717, column: 36)
!1128 = !DILocation(line: 718, column: 39, scope: !1127)
!1129 = !DILocation(line: 718, column: 51, scope: !1127)
!1130 = !DILocation(line: 718, column: 10, scope: !1127)
!1131 = !DILocation(line: 719, column: 7, scope: !1127)
!1132 = !DILocation(line: 723, column: 22, scope: !1122)
!1133 = !DILocation(line: 723, column: 30, scope: !1122)
!1134 = !DILocation(line: 723, column: 35, scope: !1122)
!1135 = !DILocation(line: 724, column: 22, scope: !1122)
!1136 = !DILocation(line: 724, column: 29, scope: !1122)
!1137 = !DILocation(line: 725, column: 22, scope: !1122)
!1138 = !DILocation(line: 725, column: 29, scope: !1122)
!1139 = !DILocation(line: 726, column: 22, scope: !1122)
!1140 = !DILocation(line: 726, column: 29, scope: !1122)
!1141 = !DILocation(line: 727, column: 22, scope: !1122)
!1142 = !DILocation(line: 727, column: 29, scope: !1122)
!1143 = !DILocation(line: 728, column: 22, scope: !1122)
!1144 = !DILocation(line: 728, column: 29, scope: !1122)
!1145 = !DILocation(line: 721, column: 7, scope: !1122)
!1146 = !DILocation(line: 729, column: 4, scope: !1122)
!1147 = !DILocation(line: 730, column: 1, scope: !1108)
!1148 = distinct !DISubprogram(name: "MXUserAcquisitionStatsTearDown", scope: !50, file: !50, line: 750, type: !1012, isLocal: false, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1149 = !DILocalVariable(name: "stats", arg: 1, scope: !1148, file: !50, line: 750, type: !1014)
!1150 = !DILocation(line: 750, column: 56, scope: !1148)
!1151 = !DILocation(line: 752, column: 30, scope: !1148)
!1152 = !DILocation(line: 752, column: 37, scope: !1148)
!1153 = !DILocation(line: 752, column: 4, scope: !1148)
!1154 = !DILocation(line: 753, column: 1, scope: !1148)
!1155 = distinct !DISubprogram(name: "MXUserKitchen", scope: !50, file: !50, line: 774, type: !1156, isLocal: false, isDefinition: true, scopeLine: 778, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1014, !1158, !1159, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!1160 = !DILocalVariable(name: "stats", arg: 1, scope: !1155, file: !50, line: 774, type: !1014)
!1161 = !DILocation(line: 774, column: 39, scope: !1155)
!1162 = !DILocalVariable(name: "contentionRatio", arg: 2, scope: !1155, file: !50, line: 775, type: !1158)
!1163 = !DILocation(line: 775, column: 23, scope: !1155)
!1164 = !DILocalVariable(name: "isHot", arg: 3, scope: !1155, file: !50, line: 776, type: !1159)
!1165 = !DILocation(line: 776, column: 21, scope: !1155)
!1166 = !DILocalVariable(name: "doLog", arg: 4, scope: !1155, file: !50, line: 777, type: !1159)
!1167 = !DILocation(line: 777, column: 21, scope: !1155)
!1168 = !DILocation(line: 783, column: 8, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1155, file: !50, line: 783, column: 8)
!1170 = !DILocation(line: 783, column: 15, scope: !1169)
!1171 = !DILocation(line: 783, column: 29, scope: !1169)
!1172 = !DILocation(line: 783, column: 36, scope: !1169)
!1173 = !DILocation(line: 783, column: 27, scope: !1169)
!1174 = !DILocation(line: 783, column: 8, scope: !1155)
!1175 = !DILocation(line: 784, column: 8, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1169, file: !50, line: 783, column: 58)
!1177 = !DILocation(line: 784, column: 24, scope: !1176)
!1178 = !DILocation(line: 785, column: 4, scope: !1176)
!1179 = !DILocalVariable(name: "basic", scope: !1180, file: !50, line: 786, type: !5)
!1180 = distinct !DILexicalBlock(scope: !1169, file: !50, line: 785, column: 11)
!1181 = !DILocation(line: 786, column: 14, scope: !1180)
!1182 = !DILocalVariable(name: "acquisition", scope: !1180, file: !50, line: 787, type: !5)
!1183 = !DILocation(line: 787, column: 14, scope: !1180)
!1184 = !DILocation(line: 796, column: 25, scope: !1180)
!1185 = !DILocation(line: 796, column: 32, scope: !1180)
!1186 = !DILocation(line: 796, column: 16, scope: !1180)
!1187 = !DILocation(line: 796, column: 46, scope: !1180)
!1188 = !DILocation(line: 796, column: 53, scope: !1180)
!1189 = !DILocation(line: 796, column: 44, scope: !1180)
!1190 = !DILocation(line: 797, column: 26, scope: !1180)
!1191 = !DILocation(line: 797, column: 33, scope: !1180)
!1192 = !DILocation(line: 797, column: 17, scope: !1180)
!1193 = !DILocation(line: 796, column: 67, scope: !1180)
!1194 = !DILocation(line: 796, column: 13, scope: !1180)
!1195 = !DILocation(line: 799, column: 31, scope: !1180)
!1196 = !DILocation(line: 799, column: 38, scope: !1180)
!1197 = !DILocation(line: 799, column: 22, scope: !1180)
!1198 = !DILocation(line: 800, column: 32, scope: !1180)
!1199 = !DILocation(line: 800, column: 39, scope: !1180)
!1200 = !DILocation(line: 800, column: 23, scope: !1180)
!1201 = !DILocation(line: 799, column: 61, scope: !1180)
!1202 = !DILocation(line: 799, column: 19, scope: !1180)
!1203 = !DILocation(line: 802, column: 27, scope: !1180)
!1204 = !DILocation(line: 802, column: 35, scope: !1180)
!1205 = !DILocation(line: 802, column: 33, scope: !1180)
!1206 = !DILocation(line: 802, column: 26, scope: !1180)
!1207 = !DILocation(line: 802, column: 50, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1180, file: !50, discriminator: 1)
!1209 = !DILocation(line: 802, column: 26, scope: !1208)
!1210 = !DILocation(line: 802, column: 64, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1180, file: !50, discriminator: 2)
!1212 = !DILocation(line: 802, column: 26, scope: !1211)
!1213 = !DILocation(line: 802, column: 26, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1180, file: !50, discriminator: 3)
!1215 = !DILocation(line: 802, column: 8, scope: !1214)
!1216 = !DILocation(line: 802, column: 24, scope: !1214)
!1217 = !DILocation(line: 816, column: 8, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1155, file: !50, line: 816, column: 8)
!1219 = !DILocation(line: 816, column: 15, scope: !1218)
!1220 = !DILocation(line: 816, column: 36, scope: !1218)
!1221 = !DILocation(line: 816, column: 8, scope: !1155)
!1222 = !DILocation(line: 817, column: 8, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !50, line: 816, column: 42)
!1224 = !DILocation(line: 817, column: 14, scope: !1223)
!1225 = !DILocation(line: 818, column: 8, scope: !1223)
!1226 = !DILocation(line: 818, column: 14, scope: !1223)
!1227 = !DILocation(line: 820, column: 7, scope: !1223)
!1228 = !DILocation(line: 823, column: 8, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1155, file: !50, line: 823, column: 8)
!1230 = !DILocation(line: 823, column: 15, scope: !1229)
!1231 = !DILocation(line: 823, column: 36, scope: !1229)
!1232 = !DILocation(line: 823, column: 8, scope: !1155)
!1233 = !DILocation(line: 824, column: 8, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1229, file: !50, line: 823, column: 54)
!1235 = !DILocation(line: 824, column: 14, scope: !1234)
!1236 = !DILocation(line: 825, column: 8, scope: !1234)
!1237 = !DILocation(line: 825, column: 14, scope: !1234)
!1238 = !DILocation(line: 827, column: 7, scope: !1234)
!1239 = !DILocation(line: 835, column: 9, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1155, file: !50, line: 835, column: 8)
!1241 = !DILocation(line: 835, column: 8, scope: !1240)
!1242 = !DILocation(line: 835, column: 27, scope: !1240)
!1243 = !DILocation(line: 835, column: 34, scope: !1240)
!1244 = !DILocation(line: 835, column: 25, scope: !1240)
!1245 = !DILocation(line: 835, column: 8, scope: !1155)
!1246 = !DILocation(line: 836, column: 8, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !50, line: 835, column: 56)
!1248 = !DILocation(line: 836, column: 14, scope: !1247)
!1249 = !DILocation(line: 837, column: 8, scope: !1247)
!1250 = !DILocation(line: 837, column: 14, scope: !1247)
!1251 = !DILocation(line: 838, column: 4, scope: !1247)
!1252 = !DILocation(line: 839, column: 8, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1240, file: !50, line: 838, column: 11)
!1254 = !DILocation(line: 839, column: 14, scope: !1253)
!1255 = !DILocation(line: 840, column: 8, scope: !1253)
!1256 = !DILocation(line: 840, column: 14, scope: !1253)
!1257 = !DILocation(line: 842, column: 1, scope: !1155)
!1258 = distinct !DISubprogram(name: "MXUser_StatisticsControl", scope: !50, file: !50, line: 863, type: !1259, isLocal: false, isDefinition: true, scopeLine: 866, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !5, !6, !6}
!1261 = !DILocalVariable(name: "contentionRatioFloor", arg: 1, scope: !1258, file: !50, line: 863, type: !5)
!1262 = !DILocation(line: 863, column: 33, scope: !1258)
!1263 = !DILocalVariable(name: "minAccessCountFloor", arg: 2, scope: !1258, file: !50, line: 864, type: !6)
!1264 = !DILocation(line: 864, column: 33, scope: !1258)
!1265 = !DILocalVariable(name: "contentionDurationFloor", arg: 3, scope: !1258, file: !50, line: 865, type: !6)
!1266 = !DILocation(line: 865, column: 33, scope: !1258)
!1267 = !DILocation(line: 869, column: 33, scope: !1258)
!1268 = !DILocation(line: 869, column: 31, scope: !1258)
!1269 = !DILocation(line: 870, column: 33, scope: !1258)
!1270 = !DILocation(line: 870, column: 31, scope: !1258)
!1271 = !DILocation(line: 871, column: 36, scope: !1258)
!1272 = !DILocation(line: 871, column: 34, scope: !1258)
!1273 = !DILocation(line: 872, column: 1, scope: !1258)
!1274 = distinct !DISubprogram(name: "MXUserForceAcquisitionHisto", scope: !50, file: !50, line: 930, type: !1275, isLocal: false, isDefinition: true, scopeLine: 933, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!92, !1277, !6, !17}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!1278 = !DILocalVariable(name: "mem", arg: 1, scope: !1274, file: !50, line: 930, type: !1277)
!1279 = !DILocation(line: 930, column: 41, scope: !1274)
!1280 = !DILocalVariable(name: "minValue", arg: 2, scope: !1274, file: !50, line: 931, type: !6)
!1281 = !DILocation(line: 931, column: 36, scope: !1274)
!1282 = !DILocalVariable(name: "decades", arg: 3, scope: !1274, file: !50, line: 932, type: !17)
!1283 = !DILocation(line: 932, column: 36, scope: !1274)
!1284 = !DILocalVariable(name: "acquireStats", scope: !1274, file: !50, line: 934, type: !1285)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64, align: 64)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserAcquireStats", file: !13, line: 562, baseType: !1287)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 558, size: 960, align: 64, elements: !1288)
!1288 = !{!1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1287, file: !13, line: 560, baseType: !1015, size: 896, align: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "histo", scope: !1287, file: !13, line: 561, baseType: !64, size: 64, align: 64, offset: 896)
!1291 = !DILocation(line: 934, column: 24, scope: !1274)
!1292 = !DILocation(line: 934, column: 54, scope: !1274)
!1293 = !DILocation(line: 934, column: 39, scope: !1274)
!1294 = !DILocation(line: 936, column: 28, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1274, file: !50, line: 936, column: 8)
!1296 = !DILocation(line: 936, column: 41, scope: !1295)
!1297 = !DILocation(line: 936, column: 26, scope: !1295)
!1298 = !DILocation(line: 936, column: 25, scope: !1295)
!1299 = !DILocation(line: 936, column: 8, scope: !1295)
!1300 = !DILocation(line: 936, column: 8, scope: !1274)
!1301 = !DILocation(line: 937, column: 25, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1295, file: !50, line: 936, column: 14)
!1303 = !DILocation(line: 937, column: 39, scope: !1302)
!1304 = !DILocation(line: 938, column: 24, scope: !1302)
!1305 = !DILocation(line: 938, column: 34, scope: !1302)
!1306 = !DILocation(line: 937, column: 7, scope: !1302)
!1307 = !DILocation(line: 939, column: 4, scope: !1302)
!1308 = !DILocation(line: 941, column: 12, scope: !1274)
!1309 = !DILocation(line: 941, column: 25, scope: !1274)
!1310 = !DILocation(line: 941, column: 11, scope: !1274)
!1311 = !DILocation(line: 941, column: 4, scope: !1274)
!1312 = distinct !DISubprogram(name: "Atomic_ReadPtr", scope: !58, file: !58, line: 3829, type: !1313, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!4, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64, align: 64)
!1316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!1317 = !DILocalVariable(name: "var", arg: 1, scope: !1312, file: !58, line: 3829, type: !1315)
!1318 = !DILocation(line: 3829, column: 368, scope: !1312)
!1319 = !DILocation(line: 3829, column: 415, scope: !1312)
!1320 = !DILocation(line: 3829, column: 401, scope: !1312)
!1321 = !DILocation(line: 3829, column: 382, scope: !1312)
!1322 = !DILocation(line: 3829, column: 375, scope: !1312)
!1323 = distinct !DISubprogram(name: "MXUserForceHisto", scope: !50, file: !50, line: 892, type: !1324, isLocal: true, isDefinition: true, scopeLine: 896, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !1277, !21, !6, !17}
!1326 = !DILocalVariable(name: "histoPtr", arg: 1, scope: !1323, file: !50, line: 892, type: !1277)
!1327 = !DILocation(line: 892, column: 30, scope: !1323)
!1328 = !DILocalVariable(name: "typeName", arg: 2, scope: !1323, file: !50, line: 893, type: !21)
!1329 = !DILocation(line: 893, column: 24, scope: !1323)
!1330 = !DILocalVariable(name: "minValue", arg: 3, scope: !1323, file: !50, line: 894, type: !6)
!1331 = !DILocation(line: 894, column: 25, scope: !1323)
!1332 = !DILocalVariable(name: "decades", arg: 4, scope: !1323, file: !50, line: 895, type: !17)
!1333 = !DILocation(line: 895, column: 25, scope: !1323)
!1334 = !DILocalVariable(name: "ptr", scope: !1323, file: !50, line: 897, type: !350)
!1335 = !DILocation(line: 897, column: 17, scope: !1323)
!1336 = !DILocation(line: 897, column: 38, scope: !1323)
!1337 = !DILocation(line: 897, column: 23, scope: !1323)
!1338 = !DILocation(line: 899, column: 8, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1323, file: !50, line: 899, column: 8)
!1340 = !DILocation(line: 899, column: 12, scope: !1339)
!1341 = !DILocation(line: 899, column: 8, scope: !1323)
!1342 = !DILocalVariable(name: "before", scope: !1343, file: !50, line: 900, type: !350)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !50, line: 899, column: 20)
!1344 = !DILocation(line: 900, column: 20, scope: !1343)
!1345 = !DILocation(line: 902, column: 30, scope: !1343)
!1346 = !DILocation(line: 902, column: 40, scope: !1343)
!1347 = !DILocation(line: 902, column: 50, scope: !1343)
!1348 = !DILocation(line: 902, column: 13, scope: !1343)
!1349 = !DILocation(line: 902, column: 11, scope: !1343)
!1350 = !DILocation(line: 904, column: 43, scope: !1343)
!1351 = !DILocation(line: 904, column: 67, scope: !1343)
!1352 = !DILocation(line: 904, column: 58, scope: !1343)
!1353 = !DILocation(line: 904, column: 16, scope: !1343)
!1354 = !DILocation(line: 904, column: 14, scope: !1343)
!1355 = !DILocation(line: 906, column: 11, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1343, file: !50, line: 906, column: 11)
!1357 = !DILocation(line: 906, column: 11, scope: !1343)
!1358 = !DILocation(line: 907, column: 30, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !50, line: 906, column: 19)
!1360 = !DILocation(line: 907, column: 10, scope: !1359)
!1361 = !DILocation(line: 908, column: 7, scope: !1359)
!1362 = !DILocation(line: 909, column: 4, scope: !1343)
!1363 = !DILocation(line: 910, column: 1, scope: !1323)
!1364 = distinct !DISubprogram(name: "MXUserForceHeldHisto", scope: !50, file: !50, line: 962, type: !1275, isLocal: false, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1365 = !DILocalVariable(name: "mem", arg: 1, scope: !1364, file: !50, line: 962, type: !1277)
!1366 = !DILocation(line: 962, column: 34, scope: !1364)
!1367 = !DILocalVariable(name: "minValue", arg: 2, scope: !1364, file: !50, line: 963, type: !6)
!1368 = !DILocation(line: 963, column: 29, scope: !1364)
!1369 = !DILocalVariable(name: "decades", arg: 3, scope: !1364, file: !50, line: 964, type: !17)
!1370 = !DILocation(line: 964, column: 29, scope: !1364)
!1371 = !DILocalVariable(name: "heldStats", scope: !1364, file: !50, line: 966, type: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64, align: 64)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserHeldStats", file: !13, line: 569, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 564, size: 512, align: 64, elements: !1375)
!1375 = !{!1376, !1377, !1378}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "holdStart", scope: !1374, file: !13, line: 566, baseType: !160, size: 64, align: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1374, file: !13, line: 567, baseType: !791, size: 384, align: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "histo", scope: !1374, file: !13, line: 568, baseType: !64, size: 64, align: 64, offset: 448)
!1379 = !DILocation(line: 966, column: 21, scope: !1364)
!1380 = !DILocation(line: 966, column: 48, scope: !1364)
!1381 = !DILocation(line: 966, column: 33, scope: !1364)
!1382 = !DILocation(line: 968, column: 28, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1364, file: !50, line: 968, column: 8)
!1384 = !DILocation(line: 968, column: 38, scope: !1383)
!1385 = !DILocation(line: 968, column: 26, scope: !1383)
!1386 = !DILocation(line: 968, column: 25, scope: !1383)
!1387 = !DILocation(line: 968, column: 8, scope: !1383)
!1388 = !DILocation(line: 968, column: 8, scope: !1364)
!1389 = !DILocation(line: 969, column: 25, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1383, file: !50, line: 968, column: 14)
!1391 = !DILocation(line: 969, column: 36, scope: !1390)
!1392 = !DILocation(line: 970, column: 24, scope: !1390)
!1393 = !DILocation(line: 970, column: 34, scope: !1390)
!1394 = !DILocation(line: 969, column: 7, scope: !1390)
!1395 = !DILocation(line: 971, column: 4, scope: !1390)
!1396 = !DILocation(line: 973, column: 12, scope: !1364)
!1397 = !DILocation(line: 973, column: 22, scope: !1364)
!1398 = !DILocation(line: 973, column: 11, scope: !1364)
!1399 = !DILocation(line: 973, column: 4, scope: !1364)
!1400 = distinct !DISubprogram(name: "MXUserStatsMode", scope: !50, file: !50, line: 996, type: !55, isLocal: false, isDefinition: true, scopeLine: 997, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1401 = !DILocation(line: 1001, column: 7, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !50, line: 1000, column: 11)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !50, line: 998, column: 8)
!1404 = distinct !DISubprogram(name: "MXUser_SetStatsFunc", scope: !50, file: !50, line: 1027, type: !1405, isLocal: false, isDefinition: true, scopeLine: 1033, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !4, !17, !92, !79}
!1407 = !DILocalVariable(name: "context", arg: 1, scope: !1404, file: !50, line: 1027, type: !4)
!1408 = !DILocation(line: 1027, column: 27, scope: !1404)
!1409 = !DILocalVariable(name: "maxLineLength", arg: 2, scope: !1404, file: !50, line: 1028, type: !17)
!1410 = !DILocation(line: 1028, column: 28, scope: !1404)
!1411 = !DILocalVariable(name: "trackHeldTimes", arg: 3, scope: !1404, file: !50, line: 1029, type: !92)
!1412 = !DILocation(line: 1029, column: 26, scope: !1404)
!1413 = !DILocalVariable(name: "statsFunc", arg: 4, scope: !1404, file: !50, line: 1030, type: !79)
!1414 = !DILocation(line: 1030, column: 28, scope: !1404)
!1415 = !DILocation(line: 1036, column: 9, scope: !1404)
!1416 = !DILocation(line: 1036, column: 4, scope: !1404)
!1417 = !DILocation(line: 1037, column: 39, scope: !1404)
!1418 = !DILocation(line: 1037, column: 38, scope: !1404)
!1419 = !DILocation(line: 1037, column: 22, scope: !1404)
!1420 = !DILocation(line: 1037, column: 20, scope: !1404)
!1421 = !DILocation(line: 1039, column: 25, scope: !1404)
!1422 = !DILocation(line: 1039, column: 23, scope: !1404)
!1423 = !DILocation(line: 1040, column: 26, scope: !1404)
!1424 = !DILocation(line: 1040, column: 24, scope: !1404)
!1425 = !DILocation(line: 1041, column: 22, scope: !1404)
!1426 = !DILocation(line: 1041, column: 20, scope: !1404)
!1427 = !DILocation(line: 1042, column: 27, scope: !1404)
!1428 = !DILocation(line: 1042, column: 25, scope: !1404)
!1429 = !DILocation(line: 1043, column: 1, scope: !1404)
!1430 = !DILocalVariable(name: "listLock", scope: !49, file: !50, line: 1073, type: !103)
!1431 = !DILocation(line: 1073, column: 15, scope: !49)
!1432 = !DILocation(line: 1073, column: 26, scope: !49)
!1433 = !DILocation(line: 1075, column: 8, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !49, file: !50, line: 1075, column: 8)
!1435 = !DILocation(line: 1075, column: 24, scope: !1434)
!1436 = !DILocation(line: 1075, column: 8, scope: !49)
!1437 = !DILocation(line: 1076, column: 7, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !50, line: 1075, column: 32)
!1439 = !DILocation(line: 1079, column: 8, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !49, file: !50, line: 1079, column: 8)
!1441 = !DILocation(line: 1079, column: 17, scope: !1440)
!1442 = !DILocation(line: 1079, column: 40, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1440, file: !50, discriminator: 1)
!1444 = !DILocation(line: 1079, column: 20, scope: !1443)
!1445 = !DILocation(line: 1079, column: 8, scope: !1443)
!1446 = !DILocalVariable(name: "entry", scope: !1447, file: !50, line: 1080, type: !71)
!1447 = distinct !DILexicalBlock(scope: !1440, file: !50, line: 1079, column: 51)
!1448 = !DILocation(line: 1080, column: 17, scope: !1447)
!1449 = !DILocalVariable(name: "highestSerialNumber", scope: !1447, file: !50, line: 1081, type: !17)
!1450 = !DILocation(line: 1081, column: 14, scope: !1447)
!1451 = !DILocation(line: 1084, column: 29, scope: !1447)
!1452 = !DILocation(line: 1084, column: 27, scope: !1447)
!1453 = !DILocation(line: 1086, column: 36, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1447, file: !50, line: 1086, column: 7)
!1455 = !DILocation(line: 1086, column: 21, scope: !1454)
!1456 = !DILocation(line: 1086, column: 18, scope: !1454)
!1457 = !DILocation(line: 1086, column: 12, scope: !1454)
!1458 = !DILocation(line: 1086, column: 55, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1460, file: !50, discriminator: 1)
!1460 = distinct !DILexicalBlock(scope: !1454, file: !50, line: 1086, column: 7)
!1461 = !DILocation(line: 1086, column: 62, scope: !1459)
!1462 = !DILocation(line: 1086, column: 7, scope: !1459)
!1463 = !DILocalVariable(name: "header", scope: !1464, file: !50, line: 1087, type: !11)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !50, line: 1086, column: 24)
!1465 = !DILocation(line: 1087, column: 24, scope: !1464)
!1466 = !DILocation(line: 1087, column: 60, scope: !1464)
!1467 = !DILocation(line: 1087, column: 51, scope: !1464)
!1468 = !DILocation(line: 1087, column: 67, scope: !1464)
!1469 = !DILocation(line: 1087, column: 34, scope: !1464)
!1470 = !DILocation(line: 1090, column: 14, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1464, file: !50, line: 1090, column: 14)
!1472 = !DILocation(line: 1090, column: 22, scope: !1471)
!1473 = !DILocation(line: 1090, column: 27, scope: !1471)
!1474 = !DILocation(line: 1090, column: 42, scope: !1471)
!1475 = !DILocation(line: 1090, column: 40, scope: !1471)
!1476 = !DILocation(line: 1090, column: 14, scope: !1464)
!1477 = !DILocation(line: 1091, column: 60, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1471, file: !50, line: 1090, column: 68)
!1479 = !DILocation(line: 1091, column: 68, scope: !1478)
!1480 = !DILocation(line: 1092, column: 28, scope: !1478)
!1481 = !DILocation(line: 1092, column: 36, scope: !1478)
!1482 = !DILocation(line: 1092, column: 41, scope: !1478)
!1483 = !DILocation(line: 1092, column: 55, scope: !1478)
!1484 = !DILocation(line: 1092, column: 63, scope: !1478)
!1485 = !DILocation(line: 1091, column: 13, scope: !1478)
!1486 = !DILocation(line: 1094, column: 17, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1478, file: !50, line: 1094, column: 17)
!1488 = !DILocation(line: 1094, column: 25, scope: !1487)
!1489 = !DILocation(line: 1094, column: 30, scope: !1487)
!1490 = !DILocation(line: 1094, column: 45, scope: !1487)
!1491 = !DILocation(line: 1094, column: 43, scope: !1487)
!1492 = !DILocation(line: 1094, column: 17, scope: !1478)
!1493 = !DILocation(line: 1095, column: 38, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1487, file: !50, line: 1094, column: 66)
!1495 = !DILocation(line: 1095, column: 46, scope: !1494)
!1496 = !DILocation(line: 1095, column: 51, scope: !1494)
!1497 = !DILocation(line: 1095, column: 36, scope: !1494)
!1498 = !DILocation(line: 1096, column: 13, scope: !1494)
!1499 = !DILocation(line: 1097, column: 10, scope: !1478)
!1500 = !DILocation(line: 1103, column: 14, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1464, file: !50, line: 1103, column: 14)
!1502 = !DILocation(line: 1103, column: 22, scope: !1501)
!1503 = !DILocation(line: 1103, column: 14, scope: !1464)
!1504 = !DILocation(line: 1104, column: 15, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !50, line: 1103, column: 33)
!1506 = !DILocation(line: 1104, column: 23, scope: !1505)
!1507 = !DILocation(line: 1104, column: 34, scope: !1505)
!1508 = !DILocation(line: 1104, column: 13, scope: !1505)
!1509 = !DILocation(line: 1105, column: 10, scope: !1505)
!1510 = !DILocation(line: 1106, column: 7, scope: !1464)
!1511 = !DILocation(line: 1086, column: 21, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1460, file: !50, discriminator: 2)
!1513 = !DILocation(line: 1086, column: 29, scope: !1512)
!1514 = !DILocation(line: 1086, column: 53, scope: !1512)
!1515 = !DILocation(line: 1086, column: 38, scope: !1512)
!1516 = !DILocation(line: 1086, column: 34, scope: !1512)
!1517 = !DILocation(line: 1086, column: 19, scope: !1512)
!1518 = !DILocation(line: 1086, column: 19, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1460, file: !50, discriminator: 3)
!1520 = !DILocation(line: 1086, column: 9, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1460, file: !50, discriminator: 4)
!1522 = !DILocation(line: 1086, column: 17, scope: !1521)
!1523 = !DILocation(line: 1086, column: 19, scope: !1521)
!1524 = !DILocation(line: 1086, column: 19, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1460, file: !50, discriminator: 5)
!1526 = !DILocation(line: 1086, column: 16, scope: !1525)
!1527 = !DILocation(line: 1086, column: 7, scope: !1525)
!1528 = distinct !{!1528, !1529}
!1529 = !DILocation(line: 1086, column: 7, scope: !1447)
!1530 = !DILocation(line: 1108, column: 34, scope: !1447)
!1531 = !DILocation(line: 1108, column: 32, scope: !1447)
!1532 = !DILocation(line: 1110, column: 24, scope: !1447)
!1533 = !DILocation(line: 1110, column: 7, scope: !1447)
!1534 = !DILocation(line: 1111, column: 4, scope: !1447)
!1535 = !DILocation(line: 1112, column: 1, scope: !49)
!1536 = distinct !DISubprogram(name: "MXRecLockTryAcquire", scope: !13, file: !13, line: 366, type: !1537, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!92, !103}
!1539 = !DILocalVariable(name: "lock", arg: 1, scope: !1536, file: !13, line: 366, type: !103)
!1540 = !DILocation(line: 366, column: 32, scope: !1536)
!1541 = !DILocalVariable(name: "err", scope: !1536, file: !13, line: 368, type: !116)
!1542 = !DILocation(line: 368, column: 8, scope: !1536)
!1543 = !DILocation(line: 370, column: 41, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1536, file: !13, line: 370, column: 8)
!1545 = !DILocation(line: 370, column: 26, scope: !1544)
!1546 = !DILocation(line: 370, column: 47, scope: !1544)
!1547 = !DILocation(line: 370, column: 25, scope: !1544)
!1548 = !DILocation(line: 370, column: 8, scope: !1544)
!1549 = !DILocation(line: 370, column: 56, scope: !1544)
!1550 = !DILocation(line: 370, column: 76, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1544, file: !13, discriminator: 1)
!1552 = !DILocation(line: 370, column: 59, scope: !1551)
!1553 = !DILocation(line: 370, column: 8, scope: !1551)
!1554 = !DILocation(line: 371, column: 25, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1544, file: !13, line: 370, column: 83)
!1556 = !DILocation(line: 371, column: 7, scope: !1555)
!1557 = !DILocation(line: 373, column: 7, scope: !1555)
!1558 = !DILocation(line: 376, column: 38, scope: !1536)
!1559 = !DILocation(line: 376, column: 10, scope: !1536)
!1560 = !DILocation(line: 376, column: 8, scope: !1536)
!1561 = !DILocation(line: 378, column: 28, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1536, file: !13, line: 378, column: 8)
!1563 = !DILocation(line: 378, column: 32, scope: !1562)
!1564 = !DILocation(line: 378, column: 26, scope: !1562)
!1565 = !DILocation(line: 378, column: 25, scope: !1562)
!1566 = !DILocation(line: 378, column: 8, scope: !1562)
!1567 = !DILocation(line: 378, column: 8, scope: !1536)
!1568 = !DILocation(line: 379, column: 25, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1562, file: !13, line: 378, column: 43)
!1570 = !DILocation(line: 379, column: 7, scope: !1569)
!1571 = !DILocation(line: 381, column: 7, scope: !1569)
!1572 = !DILocation(line: 388, column: 4, scope: !1536)
!1573 = !DILocation(line: 389, column: 1, scope: !1536)
!1574 = distinct !DISubprogram(name: "CircList_First", scope: !38, file: !38, line: 111, type: !1575, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!71, !71}
!1577 = !DILocalVariable(name: "item", arg: 1, scope: !1574, file: !38, line: 111, type: !71)
!1578 = !DILocation(line: 111, column: 26, scope: !1574)
!1579 = !DILocation(line: 113, column: 11, scope: !1574)
!1580 = !DILocation(line: 113, column: 4, scope: !1574)
!1581 = !DILocalVariable(name: "value", scope: !54, file: !50, line: 1136, type: !17)
!1582 = !DILocation(line: 1136, column: 11, scope: !54)
!1583 = !DILocation(line: 1140, column: 12, scope: !54)
!1584 = !DILocation(line: 1140, column: 10, scope: !54)
!1585 = !DILocation(line: 1147, column: 8, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !54, file: !50, line: 1147, column: 8)
!1587 = !DILocation(line: 1147, column: 14, scope: !1586)
!1588 = !DILocation(line: 1147, column: 8, scope: !54)
!1589 = !DILocation(line: 1148, column: 7, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !50, line: 1147, column: 26)
!1591 = !DILocation(line: 1151, column: 11, scope: !54)
!1592 = !DILocation(line: 1151, column: 4, scope: !54)
!1593 = distinct !DISubprogram(name: "Atomic_ReadInc32", scope: !58, file: !58, line: 1927, type: !1594, isLocal: true, isDefinition: true, scopeLine: 1928, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!17, !1596}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!1597 = !DILocalVariable(name: "var", arg: 1, scope: !1593, file: !58, line: 1927, type: !1596)
!1598 = !DILocation(line: 1927, column: 33, scope: !1593)
!1599 = !DILocation(line: 1929, column: 28, scope: !1593)
!1600 = !DILocation(line: 1929, column: 11, scope: !1593)
!1601 = !DILocation(line: 1929, column: 4, scope: !1593)
!1602 = distinct !DISubprogram(name: "MXUserSetContentionRatioFloor", scope: !50, file: !50, line: 1172, type: !1603, isLocal: false, isDefinition: true, scopeLine: 1174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!92, !1277, !5}
!1605 = !DILocalVariable(name: "mem", arg: 1, scope: !1602, file: !50, line: 1172, type: !1277)
!1606 = !DILocation(line: 1172, column: 43, scope: !1602)
!1607 = !DILocalVariable(name: "ratio", arg: 2, scope: !1602, file: !50, line: 1173, type: !5)
!1608 = !DILocation(line: 1173, column: 38, scope: !1602)
!1609 = !DILocalVariable(name: "acquireStats", scope: !1602, file: !50, line: 1175, type: !1285)
!1610 = !DILocation(line: 1175, column: 24, scope: !1602)
!1611 = !DILocation(line: 1175, column: 54, scope: !1602)
!1612 = !DILocation(line: 1175, column: 39, scope: !1602)
!1613 = !DILocation(line: 1177, column: 28, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1602, file: !50, line: 1177, column: 8)
!1615 = !DILocation(line: 1177, column: 41, scope: !1614)
!1616 = !DILocation(line: 1177, column: 26, scope: !1614)
!1617 = !DILocation(line: 1177, column: 25, scope: !1614)
!1618 = !DILocation(line: 1177, column: 8, scope: !1614)
!1619 = !DILocation(line: 1177, column: 8, scope: !1602)
!1620 = !DILocation(line: 1178, column: 49, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1614, file: !50, line: 1177, column: 14)
!1622 = !DILocation(line: 1178, column: 7, scope: !1621)
!1623 = !DILocation(line: 1178, column: 21, scope: !1621)
!1624 = !DILocation(line: 1178, column: 26, scope: !1621)
!1625 = !DILocation(line: 1178, column: 47, scope: !1621)
!1626 = !DILocation(line: 1179, column: 4, scope: !1621)
!1627 = !DILocation(line: 1181, column: 12, scope: !1602)
!1628 = !DILocation(line: 1181, column: 25, scope: !1602)
!1629 = !DILocation(line: 1181, column: 11, scope: !1602)
!1630 = !DILocation(line: 1181, column: 4, scope: !1602)
!1631 = distinct !DISubprogram(name: "MXUserSetContentionCountFloor", scope: !50, file: !50, line: 1202, type: !1632, isLocal: false, isDefinition: true, scopeLine: 1204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!92, !1277, !6}
!1634 = !DILocalVariable(name: "mem", arg: 1, scope: !1631, file: !50, line: 1202, type: !1277)
!1635 = !DILocation(line: 1202, column: 43, scope: !1631)
!1636 = !DILocalVariable(name: "count", arg: 2, scope: !1631, file: !50, line: 1203, type: !6)
!1637 = !DILocation(line: 1203, column: 38, scope: !1631)
!1638 = !DILocalVariable(name: "acquireStats", scope: !1631, file: !50, line: 1205, type: !1285)
!1639 = !DILocation(line: 1205, column: 24, scope: !1631)
!1640 = !DILocation(line: 1205, column: 54, scope: !1631)
!1641 = !DILocation(line: 1205, column: 39, scope: !1631)
!1642 = !DILocation(line: 1207, column: 28, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1631, file: !50, line: 1207, column: 8)
!1644 = !DILocation(line: 1207, column: 41, scope: !1643)
!1645 = !DILocation(line: 1207, column: 26, scope: !1643)
!1646 = !DILocation(line: 1207, column: 25, scope: !1643)
!1647 = !DILocation(line: 1207, column: 8, scope: !1643)
!1648 = !DILocation(line: 1207, column: 8, scope: !1631)
!1649 = !DILocation(line: 1208, column: 49, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1643, file: !50, line: 1207, column: 14)
!1651 = !DILocation(line: 1208, column: 7, scope: !1650)
!1652 = !DILocation(line: 1208, column: 21, scope: !1650)
!1653 = !DILocation(line: 1208, column: 26, scope: !1650)
!1654 = !DILocation(line: 1208, column: 47, scope: !1650)
!1655 = !DILocation(line: 1209, column: 4, scope: !1650)
!1656 = !DILocation(line: 1211, column: 12, scope: !1631)
!1657 = !DILocation(line: 1211, column: 25, scope: !1631)
!1658 = !DILocation(line: 1211, column: 11, scope: !1631)
!1659 = !DILocation(line: 1211, column: 4, scope: !1631)
!1660 = distinct !DISubprogram(name: "MXUserSetContentionDurationFloor", scope: !50, file: !50, line: 1232, type: !1632, isLocal: false, isDefinition: true, scopeLine: 1234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1661 = !DILocalVariable(name: "mem", arg: 1, scope: !1660, file: !50, line: 1232, type: !1277)
!1662 = !DILocation(line: 1232, column: 46, scope: !1660)
!1663 = !DILocalVariable(name: "count", arg: 2, scope: !1660, file: !50, line: 1233, type: !6)
!1664 = !DILocation(line: 1233, column: 41, scope: !1660)
!1665 = !DILocalVariable(name: "acquireStats", scope: !1660, file: !50, line: 1235, type: !1285)
!1666 = !DILocation(line: 1235, column: 24, scope: !1660)
!1667 = !DILocation(line: 1235, column: 54, scope: !1660)
!1668 = !DILocation(line: 1235, column: 39, scope: !1660)
!1669 = !DILocation(line: 1237, column: 28, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1660, file: !50, line: 1237, column: 8)
!1671 = !DILocation(line: 1237, column: 41, scope: !1670)
!1672 = !DILocation(line: 1237, column: 26, scope: !1670)
!1673 = !DILocation(line: 1237, column: 25, scope: !1670)
!1674 = !DILocation(line: 1237, column: 8, scope: !1670)
!1675 = !DILocation(line: 1237, column: 8, scope: !1660)
!1676 = !DILocation(line: 1238, column: 52, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1670, file: !50, line: 1237, column: 14)
!1678 = !DILocation(line: 1238, column: 7, scope: !1677)
!1679 = !DILocation(line: 1238, column: 21, scope: !1677)
!1680 = !DILocation(line: 1238, column: 26, scope: !1677)
!1681 = !DILocation(line: 1238, column: 50, scope: !1677)
!1682 = !DILocation(line: 1239, column: 4, scope: !1677)
!1683 = !DILocation(line: 1241, column: 12, scope: !1660)
!1684 = !DILocation(line: 1241, column: 25, scope: !1660)
!1685 = !DILocation(line: 1241, column: 11, scope: !1660)
!1686 = !DILocation(line: 1241, column: 4, scope: !1660)
!1687 = distinct !DISubprogram(name: "MXUserDisableStats", scope: !50, file: !50, line: 1263, type: !1688, isLocal: false, isDefinition: true, scopeLine: 1265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !1277, !1277}
!1690 = !DILocalVariable(name: "acquisitionMem", arg: 1, scope: !1687, file: !50, line: 1263, type: !1277)
!1691 = !DILocation(line: 1263, column: 32, scope: !1687)
!1692 = !DILocalVariable(name: "heldMem", arg: 2, scope: !1687, file: !50, line: 1264, type: !1277)
!1693 = !DILocation(line: 1264, column: 32, scope: !1687)
!1694 = !DILocation(line: 1266, column: 8, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1687, file: !50, line: 1266, column: 8)
!1696 = !DILocation(line: 1266, column: 23, scope: !1695)
!1697 = !DILocation(line: 1266, column: 8, scope: !1687)
!1698 = !DILocalVariable(name: "acquireStats", scope: !1699, file: !50, line: 1267, type: !1285)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !50, line: 1266, column: 31)
!1700 = !DILocation(line: 1267, column: 27, scope: !1699)
!1701 = !DILocation(line: 1267, column: 57, scope: !1699)
!1702 = !DILocation(line: 1267, column: 42, scope: !1699)
!1703 = !DILocation(line: 1269, column: 29, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1699, file: !50, line: 1269, column: 11)
!1705 = !DILocation(line: 1269, column: 42, scope: !1704)
!1706 = !DILocation(line: 1269, column: 28, scope: !1704)
!1707 = !DILocation(line: 1269, column: 11, scope: !1704)
!1708 = !DILocation(line: 1269, column: 11, scope: !1699)
!1709 = !DILocation(line: 1270, column: 42, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1704, file: !50, line: 1269, column: 17)
!1711 = !DILocation(line: 1270, column: 56, scope: !1710)
!1712 = !DILocation(line: 1270, column: 10, scope: !1710)
!1713 = !DILocation(line: 1271, column: 46, scope: !1710)
!1714 = !DILocation(line: 1271, column: 60, scope: !1710)
!1715 = !DILocation(line: 1271, column: 30, scope: !1710)
!1716 = !DILocation(line: 1271, column: 10, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1710, file: !50, discriminator: 1)
!1718 = !DILocation(line: 1273, column: 15, scope: !1710)
!1719 = !DILocation(line: 1273, column: 10, scope: !1710)
!1720 = !DILocation(line: 1274, column: 7, scope: !1710)
!1721 = !DILocation(line: 1276, column: 23, scope: !1699)
!1722 = !DILocation(line: 1276, column: 7, scope: !1699)
!1723 = !DILocation(line: 1277, column: 4, scope: !1699)
!1724 = !DILocation(line: 1279, column: 8, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1687, file: !50, line: 1279, column: 8)
!1726 = !DILocation(line: 1279, column: 16, scope: !1725)
!1727 = !DILocation(line: 1279, column: 8, scope: !1687)
!1728 = !DILocalVariable(name: "heldStats", scope: !1729, file: !50, line: 1280, type: !1372)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !50, line: 1279, column: 24)
!1730 = !DILocation(line: 1280, column: 24, scope: !1729)
!1731 = !DILocation(line: 1280, column: 51, scope: !1729)
!1732 = !DILocation(line: 1280, column: 36, scope: !1729)
!1733 = !DILocation(line: 1282, column: 29, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1729, file: !50, line: 1282, column: 11)
!1735 = !DILocation(line: 1282, column: 39, scope: !1734)
!1736 = !DILocation(line: 1282, column: 28, scope: !1734)
!1737 = !DILocation(line: 1282, column: 11, scope: !1734)
!1738 = !DILocation(line: 1282, column: 11, scope: !1729)
!1739 = !DILocation(line: 1283, column: 36, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1734, file: !50, line: 1282, column: 17)
!1741 = !DILocation(line: 1283, column: 47, scope: !1740)
!1742 = !DILocation(line: 1283, column: 10, scope: !1740)
!1743 = !DILocation(line: 1284, column: 46, scope: !1740)
!1744 = !DILocation(line: 1284, column: 57, scope: !1740)
!1745 = !DILocation(line: 1284, column: 30, scope: !1740)
!1746 = !DILocation(line: 1284, column: 10, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1740, file: !50, discriminator: 1)
!1748 = !DILocation(line: 1286, column: 15, scope: !1740)
!1749 = !DILocation(line: 1286, column: 10, scope: !1740)
!1750 = !DILocation(line: 1287, column: 7, scope: !1740)
!1751 = !DILocation(line: 1289, column: 23, scope: !1729)
!1752 = !DILocation(line: 1289, column: 7, scope: !1729)
!1753 = !DILocation(line: 1290, column: 4, scope: !1729)
!1754 = !DILocation(line: 1291, column: 1, scope: !1687)
!1755 = distinct !DISubprogram(name: "Atomic_WritePtr", scope: !58, file: !58, line: 3829, type: !1756, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{null, !1277, !1758}
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64, align: 64)
!1759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1760 = !DILocalVariable(name: "var", arg: 1, scope: !1755, file: !58, line: 3829, type: !1277)
!1761 = !DILocation(line: 3829, column: 470, scope: !1755)
!1762 = !DILocalVariable(name: "val", arg: 2, scope: !1755, file: !58, line: 3829, type: !1758)
!1763 = !DILocation(line: 3829, column: 488, scope: !1755)
!1764 = !DILocation(line: 3829, column: 510, scope: !1755)
!1765 = !DILocation(line: 3829, column: 534, scope: !1755)
!1766 = !DILocation(line: 3829, column: 523, scope: !1755)
!1767 = !DILocation(line: 3829, column: 495, scope: !1755)
!1768 = !DILocation(line: 3829, column: 540, scope: !1755)
!1769 = distinct !DISubprogram(name: "MXUserEnableStats", scope: !50, file: !50, line: 1311, type: !1688, isLocal: false, isDefinition: true, scopeLine: 1313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1770 = !DILocalVariable(name: "acquisitionMem", arg: 1, scope: !1769, file: !50, line: 1311, type: !1277)
!1771 = !DILocation(line: 1311, column: 31, scope: !1769)
!1772 = !DILocalVariable(name: "heldMem", arg: 2, scope: !1769, file: !50, line: 1312, type: !1277)
!1773 = !DILocation(line: 1312, column: 31, scope: !1769)
!1774 = !DILocation(line: 1315, column: 8, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1769, file: !50, line: 1315, column: 8)
!1776 = !DILocation(line: 1315, column: 23, scope: !1775)
!1777 = !DILocation(line: 1315, column: 8, scope: !1769)
!1778 = !DILocalVariable(name: "acquireStats", scope: !1779, file: !50, line: 1316, type: !1285)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !50, line: 1315, column: 31)
!1780 = !DILocation(line: 1316, column: 27, scope: !1779)
!1781 = !DILocation(line: 1316, column: 57, scope: !1779)
!1782 = !DILocation(line: 1316, column: 42, scope: !1779)
!1783 = !DILocation(line: 1318, column: 31, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !50, line: 1318, column: 11)
!1785 = !DILocation(line: 1318, column: 44, scope: !1784)
!1786 = !DILocation(line: 1318, column: 29, scope: !1784)
!1787 = !DILocation(line: 1318, column: 28, scope: !1784)
!1788 = !DILocation(line: 1318, column: 11, scope: !1784)
!1789 = !DILocation(line: 1318, column: 11, scope: !1779)
!1790 = !DILocalVariable(name: "before", scope: !1791, file: !50, line: 1319, type: !1285)
!1791 = distinct !DILexicalBlock(scope: !1784, file: !50, line: 1318, column: 17)
!1792 = !DILocation(line: 1319, column: 30, scope: !1791)
!1793 = !DILocation(line: 1321, column: 25, scope: !1791)
!1794 = !DILocation(line: 1321, column: 23, scope: !1791)
!1795 = !DILocation(line: 1322, column: 39, scope: !1791)
!1796 = !DILocation(line: 1322, column: 53, scope: !1791)
!1797 = !DILocation(line: 1322, column: 10, scope: !1791)
!1798 = !DILocation(line: 1324, column: 46, scope: !1791)
!1799 = !DILocation(line: 1325, column: 55, scope: !1791)
!1800 = !DILocation(line: 1325, column: 46, scope: !1791)
!1801 = !DILocation(line: 1324, column: 19, scope: !1791)
!1802 = !DILocation(line: 1324, column: 17, scope: !1791)
!1803 = !DILocation(line: 1327, column: 14, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1791, file: !50, line: 1327, column: 14)
!1805 = !DILocation(line: 1327, column: 14, scope: !1791)
!1806 = !DILocation(line: 1328, column: 18, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1804, file: !50, line: 1327, column: 22)
!1808 = !DILocation(line: 1328, column: 13, scope: !1807)
!1809 = !DILocation(line: 1329, column: 10, scope: !1807)
!1810 = !DILocation(line: 1330, column: 7, scope: !1791)
!1811 = !DILocation(line: 1331, column: 4, scope: !1779)
!1812 = !DILocation(line: 1333, column: 8, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1769, file: !50, line: 1333, column: 8)
!1814 = !DILocation(line: 1333, column: 16, scope: !1813)
!1815 = !DILocation(line: 1333, column: 8, scope: !1769)
!1816 = !DILocalVariable(name: "heldStats", scope: !1817, file: !50, line: 1334, type: !1372)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !50, line: 1333, column: 24)
!1818 = !DILocation(line: 1334, column: 24, scope: !1817)
!1819 = !DILocation(line: 1334, column: 51, scope: !1817)
!1820 = !DILocation(line: 1334, column: 36, scope: !1817)
!1821 = !DILocation(line: 1336, column: 31, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1817, file: !50, line: 1336, column: 11)
!1823 = !DILocation(line: 1336, column: 41, scope: !1822)
!1824 = !DILocation(line: 1336, column: 29, scope: !1822)
!1825 = !DILocation(line: 1336, column: 28, scope: !1822)
!1826 = !DILocation(line: 1336, column: 11, scope: !1822)
!1827 = !DILocation(line: 1336, column: 11, scope: !1817)
!1828 = !DILocalVariable(name: "before", scope: !1829, file: !50, line: 1337, type: !1372)
!1829 = distinct !DILexicalBlock(scope: !1822, file: !50, line: 1336, column: 17)
!1830 = !DILocation(line: 1337, column: 27, scope: !1829)
!1831 = !DILocation(line: 1339, column: 22, scope: !1829)
!1832 = !DILocation(line: 1339, column: 20, scope: !1829)
!1833 = !DILocation(line: 1340, column: 33, scope: !1829)
!1834 = !DILocation(line: 1340, column: 44, scope: !1829)
!1835 = !DILocation(line: 1340, column: 10, scope: !1829)
!1836 = !DILocation(line: 1342, column: 46, scope: !1829)
!1837 = !DILocation(line: 1343, column: 55, scope: !1829)
!1838 = !DILocation(line: 1343, column: 46, scope: !1829)
!1839 = !DILocation(line: 1342, column: 19, scope: !1829)
!1840 = !DILocation(line: 1342, column: 17, scope: !1829)
!1841 = !DILocation(line: 1345, column: 14, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1829, file: !50, line: 1345, column: 14)
!1843 = !DILocation(line: 1345, column: 14, scope: !1829)
!1844 = !DILocation(line: 1346, column: 18, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !50, line: 1345, column: 22)
!1846 = !DILocation(line: 1346, column: 13, scope: !1845)
!1847 = !DILocation(line: 1347, column: 10, scope: !1845)
!1848 = !DILocation(line: 1348, column: 7, scope: !1829)
!1849 = !DILocation(line: 1349, column: 4, scope: !1817)
!1850 = !DILocation(line: 1350, column: 1, scope: !1769)
!1851 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWritePtr", scope: !58, file: !58, line: 3829, type: !1852, isLocal: true, isDefinition: true, scopeLine: 3829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!4, !1277, !1758, !1758}
!1854 = !DILocalVariable(name: "var", arg: 1, scope: !1851, file: !58, line: 3829, type: !1277)
!1855 = !DILocation(line: 3829, column: 757, scope: !1851)
!1856 = !DILocalVariable(name: "oldVal", arg: 2, scope: !1851, file: !58, line: 3829, type: !1758)
!1857 = !DILocation(line: 3829, column: 775, scope: !1851)
!1858 = !DILocalVariable(name: "newVal", arg: 3, scope: !1851, file: !58, line: 3829, type: !1758)
!1859 = !DILocation(line: 3829, column: 796, scope: !1851)
!1860 = !DILocation(line: 3829, column: 858, scope: !1851)
!1861 = !DILocation(line: 3829, column: 882, scope: !1851)
!1862 = !DILocation(line: 3829, column: 871, scope: !1851)
!1863 = !DILocation(line: 3829, column: 909, scope: !1851)
!1864 = !DILocation(line: 3829, column: 898, scope: !1851)
!1865 = !DILocation(line: 3829, column: 832, scope: !1851)
!1866 = !DILocation(line: 3829, column: 813, scope: !1851)
!1867 = !DILocation(line: 3829, column: 806, scope: !1851)
!1868 = distinct !DISubprogram(name: "MXRecLockCount", scope: !13, file: !13, line: 290, type: !1869, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!116, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64, align: 64)
!1872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!1873 = !DILocalVariable(name: "lock", arg: 1, scope: !1868, file: !13, line: 290, type: !1871)
!1874 = !DILocation(line: 290, column: 33, scope: !1868)
!1875 = !DILocation(line: 295, column: 11, scope: !1868)
!1876 = !DILocation(line: 295, column: 17, scope: !1868)
!1877 = !DILocation(line: 295, column: 4, scope: !1868)
!1878 = distinct !DISubprogram(name: "MXRecLockIsOwner", scope: !13, file: !13, line: 220, type: !1879, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!92, !1871}
!1881 = !DILocalVariable(name: "lock", arg: 1, scope: !1878, file: !13, line: 220, type: !1871)
!1882 = !DILocation(line: 220, column: 35, scope: !1878)
!1883 = !DILocation(line: 222, column: 25, scope: !1878)
!1884 = !DILocation(line: 222, column: 31, scope: !1878)
!1885 = !DILocation(line: 222, column: 47, scope: !1878)
!1886 = !DILocation(line: 222, column: 11, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1878, file: !13, discriminator: 1)
!1888 = !DILocation(line: 222, column: 11, scope: !1878)
!1889 = !DILocation(line: 222, column: 4, scope: !1878)
!1890 = distinct !DISubprogram(name: "MXRecLockIncCount", scope: !13, file: !13, line: 300, type: !1891, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{null, !103, !116}
!1893 = !DILocalVariable(name: "lock", arg: 1, scope: !1890, file: !13, line: 300, type: !103)
!1894 = !DILocation(line: 300, column: 30, scope: !1890)
!1895 = !DILocalVariable(name: "count", arg: 2, scope: !1890, file: !13, line: 301, type: !116)
!1896 = !DILocation(line: 301, column: 23, scope: !1890)
!1897 = !DILocalVariable(name: "newCount", scope: !1890, file: !13, line: 303, type: !116)
!1898 = !DILocation(line: 303, column: 8, scope: !1890)
!1899 = !DILocation(line: 303, column: 44, scope: !1890)
!1900 = !DILocation(line: 303, column: 20, scope: !1890)
!1901 = !DILocation(line: 303, column: 26, scope: !1890)
!1902 = !DILocation(line: 303, column: 41, scope: !1890)
!1903 = !DILocation(line: 307, column: 28, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1890, file: !13, line: 307, column: 8)
!1905 = !DILocation(line: 307, column: 40, scope: !1904)
!1906 = !DILocation(line: 307, column: 37, scope: !1904)
!1907 = !DILocation(line: 307, column: 26, scope: !1904)
!1908 = !DILocation(line: 307, column: 25, scope: !1904)
!1909 = !DILocation(line: 307, column: 8, scope: !1904)
!1910 = !DILocation(line: 307, column: 8, scope: !1890)
!1911 = !DILocation(line: 308, column: 25, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1904, file: !13, line: 307, column: 52)
!1913 = !DILocation(line: 308, column: 7, scope: !1912)
!1914 = !DILocation(line: 309, column: 4, scope: !1912)
!1915 = !DILocation(line: 310, column: 1, scope: !1890)
!1916 = distinct !DISubprogram(name: "MXRecLockAcquireInternal", scope: !13, file: !13, line: 242, type: !1917, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!116, !103}
!1919 = !DILocalVariable(name: "lock", arg: 1, scope: !1916, file: !13, line: 242, type: !103)
!1920 = !DILocation(line: 242, column: 37, scope: !1916)
!1921 = !DILocation(line: 244, column: 31, scope: !1916)
!1922 = !DILocation(line: 244, column: 37, scope: !1916)
!1923 = !DILocation(line: 244, column: 11, scope: !1916)
!1924 = !DILocation(line: 244, column: 4, scope: !1916)
!1925 = distinct !DISubprogram(name: "MXUserNativeThreadID", scope: !13, file: !13, line: 213, type: !1926, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!139}
!1928 = !DILocation(line: 215, column: 11, scope: !1925)
!1929 = !DILocation(line: 215, column: 4, scope: !1925)
!1930 = distinct !DISubprogram(name: "MXRecLockSetOwner", scope: !13, file: !13, line: 235, type: !265, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1931 = !DILocalVariable(name: "lock", arg: 1, scope: !1930, file: !13, line: 235, type: !103)
!1932 = !DILocation(line: 235, column: 30, scope: !1930)
!1933 = !DILocation(line: 237, column: 27, scope: !1930)
!1934 = !DILocation(line: 237, column: 4, scope: !1930)
!1935 = !DILocation(line: 237, column: 10, scope: !1930)
!1936 = !DILocation(line: 237, column: 25, scope: !1930)
!1937 = !DILocation(line: 238, column: 1, scope: !1930)
!1938 = distinct !DISubprogram(name: "CircList_IsEmpty", scope: !38, file: !38, line: 65, type: !1939, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!92, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64, align: 64)
!1942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!1943 = !DILocalVariable(name: "item", arg: 1, scope: !1938, file: !38, line: 65, type: !1941)
!1944 = !DILocation(line: 65, column: 34, scope: !1938)
!1945 = !DILocation(line: 67, column: 11, scope: !1938)
!1946 = !DILocation(line: 67, column: 16, scope: !1938)
!1947 = !DILocation(line: 67, column: 4, scope: !1938)
!1948 = distinct !DISubprogram(name: "CircList_InitItem", scope: !38, file: !38, line: 88, type: !1949, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !71}
!1951 = !DILocalVariable(name: "item", arg: 1, scope: !1948, file: !38, line: 88, type: !71)
!1952 = !DILocation(line: 88, column: 29, scope: !1948)
!1953 = !DILocation(line: 90, column: 30, scope: !1948)
!1954 = !DILocation(line: 90, column: 17, scope: !1948)
!1955 = !DILocation(line: 90, column: 23, scope: !1948)
!1956 = !DILocation(line: 90, column: 28, scope: !1948)
!1957 = !DILocation(line: 90, column: 4, scope: !1948)
!1958 = !DILocation(line: 90, column: 10, scope: !1948)
!1959 = !DILocation(line: 90, column: 15, scope: !1948)
!1960 = !DILocation(line: 91, column: 1, scope: !1948)
!1961 = distinct !DISubprogram(name: "MXRecLockDecCount", scope: !13, file: !13, line: 314, type: !1891, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1962 = !DILocalVariable(name: "lock", arg: 1, scope: !1961, file: !13, line: 314, type: !103)
!1963 = !DILocation(line: 314, column: 30, scope: !1961)
!1964 = !DILocalVariable(name: "count", arg: 2, scope: !1961, file: !13, line: 315, type: !116)
!1965 = !DILocation(line: 315, column: 23, scope: !1961)
!1966 = !DILocalVariable(name: "newCount", scope: !1961, file: !13, line: 317, type: !116)
!1967 = !DILocation(line: 317, column: 8, scope: !1961)
!1968 = !DILocation(line: 317, column: 44, scope: !1961)
!1969 = !DILocation(line: 317, column: 20, scope: !1961)
!1970 = !DILocation(line: 317, column: 26, scope: !1961)
!1971 = !DILocation(line: 317, column: 41, scope: !1961)
!1972 = !DILocation(line: 321, column: 28, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1961, file: !13, line: 321, column: 8)
!1974 = !DILocation(line: 321, column: 37, scope: !1973)
!1975 = !DILocation(line: 321, column: 26, scope: !1973)
!1976 = !DILocation(line: 321, column: 25, scope: !1973)
!1977 = !DILocation(line: 321, column: 8, scope: !1973)
!1978 = !DILocation(line: 321, column: 8, scope: !1961)
!1979 = !DILocation(line: 322, column: 27, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1973, file: !13, line: 321, column: 48)
!1981 = !DILocation(line: 322, column: 7, scope: !1980)
!1982 = !DILocation(line: 323, column: 4, scope: !1980)
!1983 = !DILocation(line: 324, column: 1, scope: !1961)
!1984 = distinct !DISubprogram(name: "MXRecLockReleaseInternal", scope: !13, file: !13, line: 256, type: !1917, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1985 = !DILocalVariable(name: "lock", arg: 1, scope: !1984, file: !13, line: 256, type: !103)
!1986 = !DILocation(line: 256, column: 37, scope: !1984)
!1987 = !DILocation(line: 258, column: 33, scope: !1984)
!1988 = !DILocation(line: 258, column: 39, scope: !1984)
!1989 = !DILocation(line: 258, column: 11, scope: !1984)
!1990 = !DILocation(line: 258, column: 4, scope: !1984)
!1991 = distinct !DISubprogram(name: "MXRecLockSetNoOwner", scope: !13, file: !13, line: 227, type: !265, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1992 = !DILocalVariable(name: "lock", arg: 1, scope: !1991, file: !13, line: 227, type: !103)
!1993 = !DILocation(line: 227, column: 32, scope: !1991)
!1994 = !DILocation(line: 230, column: 12, scope: !1991)
!1995 = !DILocation(line: 230, column: 18, scope: !1991)
!1996 = !DILocation(line: 230, column: 4, scope: !1991)
!1997 = !DILocation(line: 231, column: 1, scope: !1991)
!1998 = distinct !DISubprogram(name: "Atomic_Read64", scope: !58, file: !58, line: 2143, type: !1999, isLocal: true, isDefinition: true, scopeLine: 2144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!6, !2001}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64, align: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!2003 = !DILocalVariable(name: "var", arg: 1, scope: !1998, file: !58, line: 2143, type: !2001)
!2004 = !DILocation(line: 2143, column: 36, scope: !1998)
!2005 = !DILocalVariable(name: "value", scope: !1998, file: !58, line: 2146, type: !6)
!2006 = !DILocation(line: 2146, column: 11, scope: !1998)
!2007 = !DILocation(line: 2160, column: 14, scope: !1998)
!2008 = !DILocation(line: 2160, column: 19, scope: !1998)
!2009 = !DILocation(line: 2157, column: 4, scope: !1998)
!2010 = !{i32 176785}
!2011 = !DILocation(line: 2213, column: 11, scope: !1998)
!2012 = !DILocation(line: 2213, column: 4, scope: !1998)
!2013 = distinct !DISubprogram(name: "MXRecLockTryAcquireInternal", scope: !13, file: !13, line: 249, type: !1917, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2014 = !DILocalVariable(name: "lock", arg: 1, scope: !2013, file: !13, line: 249, type: !103)
!2015 = !DILocation(line: 249, column: 40, scope: !2013)
!2016 = !DILocation(line: 251, column: 34, scope: !2013)
!2017 = !DILocation(line: 251, column: 40, scope: !2013)
!2018 = !DILocation(line: 251, column: 11, scope: !2013)
!2019 = !DILocation(line: 251, column: 4, scope: !2013)
!2020 = distinct !DISubprogram(name: "Atomic_ReadAdd32", scope: !58, file: !58, line: 1864, type: !2021, isLocal: true, isDefinition: true, scopeLine: 1866, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!17, !1596, !17}
!2023 = !DILocalVariable(name: "var", arg: 1, scope: !2020, file: !58, line: 1864, type: !1596)
!2024 = !DILocation(line: 1864, column: 33, scope: !2020)
!2025 = !DILocalVariable(name: "val", arg: 2, scope: !2020, file: !58, line: 1865, type: !17)
!2026 = !DILocation(line: 1865, column: 25, scope: !2020)
!2027 = !DILocation(line: 1896, column: 15, scope: !2020)
!2028 = !DILocation(line: 1896, column: 20, scope: !2020)
!2029 = !DILocation(line: 1897, column: 14, scope: !2020)
!2030 = !DILocation(line: 1893, column: 4, scope: !2020)
!2031 = !{i32 174635}
!2032 = !DILocation(line: 1900, column: 11, scope: !2020)
!2033 = !DILocation(line: 1900, column: 4, scope: !2020)
!2034 = distinct !DISubprogram(name: "Atomic_Write64", scope: !58, file: !58, line: 2604, type: !2035, isLocal: true, isDefinition: true, scopeLine: 2606, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !2037, !6}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!2038 = !DILocalVariable(name: "var", arg: 1, scope: !2034, file: !58, line: 2604, type: !2037)
!2039 = !DILocation(line: 2604, column: 31, scope: !2034)
!2040 = !DILocalVariable(name: "val", arg: 2, scope: !2034, file: !58, line: 2605, type: !6)
!2041 = !DILocation(line: 2605, column: 23, scope: !2034)
!2042 = !DILocation(line: 2622, column: 15, scope: !2034)
!2043 = !DILocation(line: 2622, column: 20, scope: !2034)
!2044 = !DILocation(line: 2623, column: 14, scope: !2034)
!2045 = !DILocation(line: 2620, column: 4, scope: !2034)
!2046 = !{i32 180459}
!2047 = !DILocation(line: 2643, column: 1, scope: !2034)
!2048 = distinct !DISubprogram(name: "Atomic_ReadIfEqualWrite64", scope: !58, file: !58, line: 1190, type: !2049, isLocal: true, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!6, !2037, !6, !6}
!2051 = !DILocalVariable(name: "var", arg: 1, scope: !2048, file: !58, line: 1190, type: !2037)
!2052 = !DILocation(line: 1190, column: 42, scope: !2048)
!2053 = !DILocalVariable(name: "oldVal", arg: 2, scope: !2048, file: !58, line: 1191, type: !6)
!2054 = !DILocation(line: 1191, column: 34, scope: !2048)
!2055 = !DILocalVariable(name: "newVal", arg: 3, scope: !2048, file: !58, line: 1192, type: !6)
!2056 = !DILocation(line: 1192, column: 34, scope: !2048)
!2057 = !DILocalVariable(name: "val", scope: !2048, file: !58, line: 1240, type: !6)
!2058 = !DILocation(line: 1240, column: 11, scope: !2048)
!2059 = !DILocation(line: 1246, column: 15, scope: !2048)
!2060 = !DILocation(line: 1246, column: 20, scope: !2048)
!2061 = !DILocation(line: 1247, column: 14, scope: !2048)
!2062 = !DILocation(line: 1248, column: 14, scope: !2048)
!2063 = !DILocation(line: 1243, column: 4, scope: !2048)
!2064 = !{i32 169227}
!2065 = !DILocation(line: 1251, column: 11, scope: !2048)
!2066 = !DILocation(line: 1251, column: 4, scope: !2048)
