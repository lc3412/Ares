; ModuleID = './libguestlib_la-vmGuestLib.o.i'
source_filename = "./libguestlib_la-vmGuestLib.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._VMGuestLibHandle = type opaque
%struct.VMGuestLibHandleType = type { i32, i64, i64, i8* }
%struct.VMGuestLibStatisticsV3 = type { i32, [0 x %struct.GuestLibV3Stat] }
%struct.GuestLibV3Stat = type { i32, %union.anon }
%union.anon = type { %struct.GuestLibV3ByteArray }
%struct.GuestLibV3ByteArray = type { i8, %struct.anon }
%struct.anon = type { i32, i8* }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.VMGuestLibDataV2 = type <{ %struct.VMGuestLibHeader, %struct.StatUint32, %struct.StatUint32, %struct.StatUint32, %struct.StatUint64, %struct.StatUint32, %struct.StatUint32, %struct.StatUint32, %struct.StatUint32, %struct.StatUint32, %struct.StatUint32, %struct.StatUint32, %struct.StatUint32, %struct.StatUint32, %struct.StatUint32, %struct.StatUint32, %struct.StatUint32, %struct.StatUint64, %struct.anon.0 }>
%struct.VMGuestLibHeader = type <{ i32, i64 }>
%struct.StatUint32 = type { i8, i32 }
%struct.StatUint64 = type <{ i8, [3 x i8], i64 }>
%struct.anon.0 = type { i8, [512 x i8] }
%struct.VMGuestLibDataV3 = type { %struct.VMGuestLibHeader, i32, [0 x i8] }
%struct.GuestLibV3StatUint32 = type { i8, i32 }
%struct.GuestLibV3StatUint64 = type { i8, i64 }
%struct.GuestLibV3String = type { i8, i8* }
%struct.GuestLibIoctlParam = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.GuestLibIoctlAtomicUpdateCookie }
%struct.GuestLibIoctlAtomicUpdateCookie = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"VMware Guest API is not running in a Virtual Machine\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"VMware Guest API is not enabled on the host\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"This value is not available on this host\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"VMGuestLib_UpdateInfo() has not been called\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"There is not enough system memory\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"The provided memory buffer is too small\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"The provided handle is invalid\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"One or more arguments were invalid\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Other error\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Host does not support this request.\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"VMGuestLib_OpenHandle: Not in a VM.\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"VMGuestLib_OpenHandle: Unable to allocate memory\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"VMGuestLibUpdateInfo failed: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"guestlib.stat.get\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"guestlib.info.get\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Failed to retrieve info: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Unknown command\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Bad reply received from host.\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Unable to retrieve version\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Incorrect data version returned\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Incorrect data size returned\0A\00", align 1
@VMGuestLibIoctl.request = internal global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), align 8
@.str.27 = private unnamed_addr constant [16 x i8] c"guestlib.ioctl \00", align 1

; Function Attrs: nounwind uwtable
define i8* @VMGuestLib_GetErrorText(i32) #0 !dbg !267 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !271, metadata !272), !dbg !273
  %4 = load i32, i32* %3, align 4, !dbg !274
  switch i32 %4, label %16 [
    i32 0, label %5
    i32 2, label %6
    i32 3, label %7
    i32 4, label %8
    i32 5, label %9
    i32 6, label %10
    i32 7, label %11
    i32 8, label %12
    i32 9, label %13
    i32 1, label %14
    i32 10, label %15
  ], !dbg !275

; <label>:5:                                      ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8** %2, align 8, !dbg !276
  br label %17, !dbg !276

; <label>:6:                                      ; preds = %1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i32 0, i32 0), i8** %2, align 8, !dbg !278
  br label %17, !dbg !278

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8** %2, align 8, !dbg !279
  br label %17, !dbg !279

; <label>:8:                                      ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8** %2, align 8, !dbg !280
  br label %17, !dbg !280

; <label>:9:                                      ; preds = %1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i8** %2, align 8, !dbg !281
  br label %17, !dbg !281

; <label>:10:                                     ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8** %2, align 8, !dbg !282
  br label %17, !dbg !282

; <label>:11:                                     ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i8** %2, align 8, !dbg !283
  br label %17, !dbg !283

; <label>:12:                                     ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i8** %2, align 8, !dbg !284
  br label %17, !dbg !284

; <label>:13:                                     ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i8** %2, align 8, !dbg !285
  br label %17, !dbg !285

; <label>:14:                                     ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8** %2, align 8, !dbg !286
  br label %17, !dbg !286

; <label>:15:                                     ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), i8** %2, align 8, !dbg !287
  br label %17, !dbg !287

; <label>:16:                                     ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8** %2, align 8, !dbg !288
  br label %17, !dbg !288

; <label>:17:                                     ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %18 = load i8*, i8** %2, align 8, !dbg !289
  ret i8* %18, !dbg !289
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_OpenHandle(%struct._VMGuestLibHandle**) #0 !dbg !290 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._VMGuestLibHandle**, align 8
  %4 = alloca %struct.VMGuestLibHandleType*, align 8
  store %struct._VMGuestLibHandle** %0, %struct._VMGuestLibHandle*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle*** %3, metadata !294, metadata !272), !dbg !295
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibHandleType** %4, metadata !296, metadata !272), !dbg !297
  %5 = call signext i8 @VmCheck_IsVirtualWorld(), !dbg !298
  %6 = icmp ne i8 %5, 0, !dbg !298
  br i1 %6, label %8, label %7, !dbg !300

; <label>:7:                                      ; preds = %1
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0)), !dbg !301
  store i32 2, i32* %2, align 4, !dbg !303
  br label %22, !dbg !303

; <label>:8:                                      ; preds = %1
  %9 = load %struct._VMGuestLibHandle**, %struct._VMGuestLibHandle*** %3, align 8, !dbg !304
  %10 = icmp eq %struct._VMGuestLibHandle** null, %9, !dbg !306
  br i1 %10, label %11, label %12, !dbg !307

; <label>:11:                                     ; preds = %8
  store i32 9, i32* %2, align 4, !dbg !308
  br label %22, !dbg !308

; <label>:12:                                     ; preds = %8
  %13 = call i8* @UtilSafeCalloc0(i64 1, i64 32), !dbg !310
  %14 = bitcast i8* %13 to %struct.VMGuestLibHandleType*, !dbg !310
  store %struct.VMGuestLibHandleType* %14, %struct.VMGuestLibHandleType** %4, align 8, !dbg !311
  %15 = load %struct.VMGuestLibHandleType*, %struct.VMGuestLibHandleType** %4, align 8, !dbg !312
  %16 = icmp ne %struct.VMGuestLibHandleType* %15, null, !dbg !312
  br i1 %16, label %18, label %17, !dbg !314

; <label>:17:                                     ; preds = %12
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0)), !dbg !315
  store i32 6, i32* %2, align 4, !dbg !317
  br label %22, !dbg !317

; <label>:18:                                     ; preds = %12
  %19 = load %struct.VMGuestLibHandleType*, %struct.VMGuestLibHandleType** %4, align 8, !dbg !318
  %20 = bitcast %struct.VMGuestLibHandleType* %19 to %struct._VMGuestLibHandle*, !dbg !319
  %21 = load %struct._VMGuestLibHandle**, %struct._VMGuestLibHandle*** %3, align 8, !dbg !320
  store %struct._VMGuestLibHandle* %20, %struct._VMGuestLibHandle** %21, align 8, !dbg !321
  store i32 0, i32* %2, align 4, !dbg !322
  br label %22, !dbg !322

; <label>:22:                                     ; preds = %18, %17, %11, %7
  %23 = load i32, i32* %2, align 4, !dbg !323
  ret i32 %23, !dbg !323
}

declare signext i8 @VmCheck_IsVirtualWorld() #2

declare void @Debug(i8*, ...) #2

declare i8* @UtilSafeCalloc0(i64, i64) #2

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_CloseHandle(%struct._VMGuestLibHandle*) #0 !dbg !324 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.VMGuestLibStatisticsV3*, align 8
  %6 = alloca i32, align 4
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !327, metadata !272), !dbg !328
  call void @llvm.dbg.declare(metadata i8** %4, metadata !329, metadata !272), !dbg !330
  %7 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !331
  %8 = icmp eq %struct._VMGuestLibHandle* null, %7, !dbg !333
  br i1 %8, label %9, label %10, !dbg !334

; <label>:9:                                      ; preds = %1
  store i32 8, i32* %2, align 4, !dbg !335
  br label %56, !dbg !335

; <label>:10:                                     ; preds = %1
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !337
  %12 = bitcast %struct._VMGuestLibHandle* %11 to %struct.VMGuestLibHandleType*, !dbg !338
  %13 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %12, i32 0, i32 3, !dbg !338
  %14 = load i8*, i8** %13, align 8, !dbg !338
  store i8* %14, i8** %4, align 8, !dbg !339
  %15 = load i8*, i8** %4, align 8, !dbg !340
  %16 = icmp ne i8* %15, null, !dbg !342
  br i1 %16, label %17, label %49, !dbg !343

; <label>:17:                                     ; preds = %10
  %18 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !344
  %19 = bitcast %struct._VMGuestLibHandle* %18 to %struct.VMGuestLibHandleType*, !dbg !345
  %20 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %19, i32 0, i32 1, !dbg !345
  %21 = load i64, i64* %20, align 8, !dbg !345
  %22 = icmp ne i64 %21, 0, !dbg !346
  br i1 %22, label %23, label %49, !dbg !347

; <label>:23:                                     ; preds = %17
  %24 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !348
  %25 = bitcast %struct._VMGuestLibHandle* %24 to %struct.VMGuestLibHandleType*, !dbg !349
  %26 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %25, i32 0, i32 0, !dbg !349
  %27 = load i32, i32* %26, align 8, !dbg !349
  %28 = icmp eq i32 %27, 3, !dbg !350
  br i1 %28, label %29, label %49, !dbg !351

; <label>:29:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibStatisticsV3** %5, metadata !353, metadata !272), !dbg !428
  %30 = load i8*, i8** %4, align 8, !dbg !429
  %31 = bitcast i8* %30 to %struct.VMGuestLibStatisticsV3*, !dbg !429
  store %struct.VMGuestLibStatisticsV3* %31, %struct.VMGuestLibStatisticsV3** %5, align 8, !dbg !428
  call void @llvm.dbg.declare(metadata i32* %6, metadata !430, metadata !272), !dbg !431
  store i32 0, i32* %6, align 4, !dbg !432
  br label %32, !dbg !434

; <label>:32:                                     ; preds = %45, %29
  %33 = load i32, i32* %6, align 4, !dbg !435
  %34 = load %struct.VMGuestLibStatisticsV3*, %struct.VMGuestLibStatisticsV3** %5, align 8, !dbg !438
  %35 = getelementptr inbounds %struct.VMGuestLibStatisticsV3, %struct.VMGuestLibStatisticsV3* %34, i32 0, i32 0, !dbg !439
  %36 = load i32, i32* %35, align 8, !dbg !439
  %37 = icmp ult i32 %33, %36, !dbg !440
  br i1 %37, label %38, label %48, !dbg !441

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %6, align 4, !dbg !442
  %40 = zext i32 %39 to i64, !dbg !444
  %41 = load %struct.VMGuestLibStatisticsV3*, %struct.VMGuestLibStatisticsV3** %5, align 8, !dbg !444
  %42 = getelementptr inbounds %struct.VMGuestLibStatisticsV3, %struct.VMGuestLibStatisticsV3* %41, i32 0, i32 1, !dbg !445
  %43 = getelementptr inbounds [0 x %struct.GuestLibV3Stat], [0 x %struct.GuestLibV3Stat]* %42, i64 0, i64 %40, !dbg !444
  %44 = bitcast %struct.GuestLibV3Stat* %43 to i8*, !dbg !446
  call void @xdr_free(i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.GuestLibV3Stat*)* @xdr_GuestLibV3Stat to i32 (%struct.XDR*, i8*, ...)*), i8* %44) #6, !dbg !447
  br label %45, !dbg !448

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %6, align 4, !dbg !449
  %47 = add i32 %46, 1, !dbg !449
  store i32 %47, i32* %6, align 4, !dbg !449
  br label %32, !dbg !451, !llvm.loop !452

; <label>:48:                                     ; preds = %32
  br label %49, !dbg !454

; <label>:49:                                     ; preds = %48, %23, %17, %10
  %50 = load i8*, i8** %4, align 8, !dbg !455
  call void @free(i8* %50) #6, !dbg !456
  %51 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !457
  %52 = bitcast %struct._VMGuestLibHandle* %51 to %struct.VMGuestLibHandleType*, !dbg !458
  %53 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %52, i32 0, i32 3, !dbg !458
  store i8* null, i8** %53, align 8, !dbg !459
  %54 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !460
  %55 = bitcast %struct._VMGuestLibHandle* %54 to i8*, !dbg !460
  call void @free(i8* %55) #6, !dbg !461
  store i32 0, i32* %2, align 4, !dbg !462
  br label %56, !dbg !462

; <label>:56:                                     ; preds = %49, %9
  %57 = load i32, i32* %2, align 4, !dbg !463
  ret i32 %57, !dbg !463
}

; Function Attrs: nounwind
declare void @xdr_free(i32 (%struct.XDR*, i8*, ...)*, i8*) #3

declare i32 @xdr_GuestLibV3Stat(%struct.XDR*, %struct.GuestLibV3Stat*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_UpdateInfo(%struct._VMGuestLibHandle*) #0 !dbg !464 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32, align 4
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !465, metadata !272), !dbg !466
  call void @llvm.dbg.declare(metadata i32* %4, metadata !467, metadata !272), !dbg !468
  %5 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !469
  %6 = icmp eq %struct._VMGuestLibHandle* null, %5, !dbg !471
  br i1 %6, label %7, label %8, !dbg !472

; <label>:7:                                      ; preds = %1
  store i32 8, i32* %2, align 4, !dbg !473
  br label %20, !dbg !473

; <label>:8:                                      ; preds = %1
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !475
  %10 = call i32 @VMGuestLibUpdateInfo(%struct._VMGuestLibHandle* %9), !dbg !476
  store i32 %10, i32* %4, align 4, !dbg !477
  %11 = load i32, i32* %4, align 4, !dbg !478
  %12 = icmp ne i32 %11, 0, !dbg !480
  br i1 %12, label %13, label %19, !dbg !481

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %4, align 4, !dbg !482
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i32 %14), !dbg !484
  %15 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !485
  %16 = bitcast %struct._VMGuestLibHandle* %15 to %struct.VMGuestLibHandleType*, !dbg !486
  %17 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %16, i32 0, i32 1, !dbg !486
  store i64 0, i64* %17, align 8, !dbg !487
  %18 = load i32, i32* %4, align 4, !dbg !488
  store i32 %18, i32* %2, align 4, !dbg !489
  br label %20, !dbg !489

; <label>:19:                                     ; preds = %8
  store i32 0, i32* %2, align 4, !dbg !490
  br label %20, !dbg !490

; <label>:20:                                     ; preds = %19, %13, %7
  %21 = load i32, i32* %2, align 4, !dbg !491
  ret i32 %21, !dbg !491
}

; Function Attrs: nounwind uwtable
define internal i32 @VMGuestLibUpdateInfo(%struct._VMGuestLibHandle*) #0 !dbg !492 {
  %2 = alloca %struct._VMGuestLibHandle*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.VMGuestLibDataV2*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.VMGuestLibDataV2*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.VMGuestLibDataV3*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.XDR, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.VMGuestLibStatisticsV3*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %2, metadata !493, metadata !272), !dbg !494
  call void @llvm.dbg.declare(metadata i8** %3, metadata !495, metadata !272), !dbg !496
  store i8* null, i8** %3, align 8, !dbg !496
  call void @llvm.dbg.declare(metadata i64* %4, metadata !497, metadata !272), !dbg !498
  call void @llvm.dbg.declare(metadata i32* %5, metadata !499, metadata !272), !dbg !500
  store i32 9, i32* %5, align 4, !dbg !500
  call void @llvm.dbg.declare(metadata i32* %6, metadata !501, metadata !272), !dbg !502
  %20 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !503
  %21 = bitcast %struct._VMGuestLibHandle* %20 to %struct.VMGuestLibHandleType*, !dbg !504
  %22 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %21, i32 0, i32 0, !dbg !504
  %23 = load i32, i32* %22, align 8, !dbg !504
  store i32 %23, i32* %6, align 4, !dbg !502
  %24 = load i32, i32* %6, align 4, !dbg !505
  %25 = icmp eq i32 %24, 0, !dbg !507
  br i1 %25, label %26, label %27, !dbg !508

; <label>:26:                                     ; preds = %1
  store i32 3, i32* %6, align 4, !dbg !509
  br label %27, !dbg !511

; <label>:27:                                     ; preds = %26, %1
  br label %28, !dbg !512, !llvm.loop !513

; <label>:28:                                     ; preds = %87, %27
  call void @llvm.dbg.declare(metadata [64 x i8]* %7, metadata !514, metadata !272), !dbg !519
  call void @llvm.dbg.declare(metadata i32* %8, metadata !520, metadata !272), !dbg !521
  store i32 0, i32* %8, align 4, !dbg !521
  %29 = load i8*, i8** %3, align 8, !dbg !522
  call void @free(i8* %29) #6, !dbg !523
  store i8* null, i8** %3, align 8, !dbg !524
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 0, !dbg !525
  %31 = load i32, i32* %6, align 4, !dbg !526
  %32 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %30, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i32 %31), !dbg !527
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i32 0, i32 0, !dbg !528
  %34 = call i32 (i8**, i64*, i8*, ...) @RpcChannel_SendOne(i8** %3, i64* %4, i8* %33), !dbg !530
  %35 = icmp ne i32 %34, 0, !dbg !530
  br i1 %35, label %36, label %57, !dbg !531

; <label>:36:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %9, metadata !532, metadata !272), !dbg !534
  %37 = load i8*, i8** %3, align 8, !dbg !535
  %38 = bitcast i8* %37 to %struct.VMGuestLibDataV2*, !dbg !536
  store %struct.VMGuestLibDataV2* %38, %struct.VMGuestLibDataV2** %9, align 8, !dbg !534
  call void @llvm.dbg.declare(metadata i64* %10, metadata !537, metadata !272), !dbg !538
  %39 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !539
  %40 = bitcast %struct._VMGuestLibHandle* %39 to %struct.VMGuestLibHandleType*, !dbg !540
  %41 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %40, i32 0, i32 1, !dbg !540
  %42 = load i64, i64* %41, align 8, !dbg !540
  store i64 %42, i64* %10, align 8, !dbg !538
  %43 = load i64, i64* %10, align 8, !dbg !541
  %44 = icmp ne i64 %43, 0, !dbg !543
  br i1 %44, label %45, label %56, !dbg !544

; <label>:45:                                     ; preds = %36
  %46 = load i64, i64* %10, align 8, !dbg !545
  %47 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %9, align 8, !dbg !547
  %48 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %47, i32 0, i32 0, !dbg !548
  %49 = getelementptr inbounds %struct.VMGuestLibHeader, %struct.VMGuestLibHeader* %48, i32 0, i32 1, !dbg !549
  %50 = load i64, i64* %49, align 1, !dbg !549
  %51 = icmp ne i64 %46, %50, !dbg !550
  br i1 %51, label %52, label %56, !dbg !551

; <label>:52:                                     ; preds = %45
  store i32 3, i32* %6, align 4, !dbg !552
  %53 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !554
  %54 = bitcast %struct._VMGuestLibHandle* %53 to %struct.VMGuestLibHandleType*, !dbg !555
  %55 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %54, i32 0, i32 1, !dbg !555
  store i64 0, i64* %55, align 8, !dbg !556
  br label %87, !dbg !557

; <label>:56:                                     ; preds = %45, %36
  store i32 0, i32* %5, align 4, !dbg !558
  br label %90, !dbg !559

; <label>:57:                                     ; preds = %28
  %58 = load i8*, i8** %3, align 8, !dbg !560
  %59 = icmp ne i8* %58, null, !dbg !560
  br i1 %59, label %60, label %62, !dbg !560

; <label>:60:                                     ; preds = %57
  %61 = load i8*, i8** %3, align 8, !dbg !561
  br label %63, !dbg !563

; <label>:62:                                     ; preds = %57
  br label %63, !dbg !564

; <label>:63:                                     ; preds = %62, %60
  %64 = phi i8* [ %61, %60 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %62 ], !dbg !566
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8* %64), !dbg !568
  %65 = load i32, i32* %6, align 4, !dbg !569
  %66 = icmp eq i32 %65, 2, !dbg !571
  br i1 %66, label %71, label %67, !dbg !572

; <label>:67:                                     ; preds = %63
  %68 = load i8*, i8** %3, align 8, !dbg !573
  %69 = call i32 @strncmp(i8* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i64 16) #7, !dbg !574
  %70 = icmp eq i32 %69, 0, !dbg !575
  br i1 %70, label %71, label %72, !dbg !576

; <label>:71:                                     ; preds = %67, %63
  store i32 3, i32* %5, align 4, !dbg !577
  br label %90, !dbg !579

; <label>:72:                                     ; preds = %67
  %73 = load i32, i32* %6, align 4, !dbg !580
  %74 = icmp eq i32 %73, 3, !dbg !582
  br i1 %74, label %75, label %79, !dbg !583

; <label>:75:                                     ; preds = %72
  store i32 2, i32* %6, align 4, !dbg !584
  %76 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !586
  %77 = bitcast %struct._VMGuestLibHandle* %76 to %struct.VMGuestLibHandleType*, !dbg !587
  %78 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %77, i32 0, i32 1, !dbg !587
  store i64 0, i64* %78, align 8, !dbg !588
  br label %87, !dbg !589

; <label>:79:                                     ; preds = %72
  %80 = load i8*, i8** %3, align 8, !dbg !590
  %81 = call signext i8 @StrUtil_GetNextUintToken(i32* %6, i32* %8, i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)), !dbg !592
  %82 = icmp ne i8 %81, 0, !dbg !592
  br i1 %82, label %84, label %83, !dbg !593

; <label>:83:                                     ; preds = %79
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0)), !dbg !594
  store i32 1, i32* %5, align 4, !dbg !596
  br label %90, !dbg !597

; <label>:84:                                     ; preds = %79
  br label %85

; <label>:85:                                     ; preds = %84
  br label %86

; <label>:86:                                     ; preds = %85
  br label %87, !dbg !598

; <label>:87:                                     ; preds = %86, %75, %52
  %88 = load i32, i32* %5, align 4, !dbg !599
  %89 = icmp ne i32 %88, 0, !dbg !601
  br i1 %89, label %28, label %90, !dbg !602, !llvm.loop !513

; <label>:90:                                     ; preds = %87, %83, %71, %56
  %91 = load i32, i32* %5, align 4, !dbg !603
  %92 = icmp ne i32 %91, 0, !dbg !605
  br i1 %92, label %93, label %94, !dbg !606

; <label>:93:                                     ; preds = %90
  br label %334, !dbg !607

; <label>:94:                                     ; preds = %90
  %95 = load i64, i64* %4, align 8, !dbg !609
  %96 = icmp ult i64 %95, 4, !dbg !611
  br i1 %96, label %97, label %98, !dbg !612

; <label>:97:                                     ; preds = %94
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0)), !dbg !613
  store i32 1, i32* %5, align 4, !dbg !615
  br label %334, !dbg !616

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %6, align 4, !dbg !617
  %100 = icmp eq i32 %99, 2, !dbg !619
  br i1 %100, label %101, label %167, !dbg !620

; <label>:101:                                    ; preds = %98
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %11, metadata !621, metadata !272), !dbg !623
  %102 = load i8*, i8** %3, align 8, !dbg !624
  %103 = bitcast i8* %102 to %struct.VMGuestLibDataV2*, !dbg !625
  store %struct.VMGuestLibDataV2* %103, %struct.VMGuestLibDataV2** %11, align 8, !dbg !623
  call void @llvm.dbg.declare(metadata i64* %12, metadata !626, metadata !272), !dbg !627
  store i64 669, i64* %12, align 8, !dbg !627
  %104 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %11, align 8, !dbg !628
  %105 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %104, i32 0, i32 0, !dbg !630
  %106 = getelementptr inbounds %struct.VMGuestLibHeader, %struct.VMGuestLibHeader* %105, i32 0, i32 0, !dbg !631
  %107 = load i32, i32* %106, align 1, !dbg !631
  %108 = load i32, i32* %6, align 4, !dbg !632
  %109 = icmp ne i32 %107, %108, !dbg !633
  br i1 %109, label %110, label %111, !dbg !634

; <label>:110:                                    ; preds = %101
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0)), !dbg !635
  store i32 1, i32* %5, align 4, !dbg !637
  br label %334, !dbg !638

; <label>:111:                                    ; preds = %101
  %112 = load i64, i64* %4, align 8, !dbg !639
  %113 = load i64, i64* %12, align 8, !dbg !641
  %114 = icmp ne i64 %112, %113, !dbg !642
  br i1 %114, label %115, label %116, !dbg !643

; <label>:115:                                    ; preds = %111
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0)), !dbg !644
  store i32 1, i32* %5, align 4, !dbg !646
  br label %334, !dbg !647

; <label>:116:                                    ; preds = %111
  %117 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %11, align 8, !dbg !648
  %118 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %117, i32 0, i32 0, !dbg !649
  %119 = getelementptr inbounds %struct.VMGuestLibHeader, %struct.VMGuestLibHeader* %118, i32 0, i32 0, !dbg !650
  %120 = load i32, i32* %119, align 1, !dbg !650
  %121 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !651
  %122 = bitcast %struct._VMGuestLibHandle* %121 to %struct.VMGuestLibHandleType*, !dbg !652
  %123 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %122, i32 0, i32 0, !dbg !652
  store i32 %120, i32* %123, align 8, !dbg !653
  %124 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %11, align 8, !dbg !654
  %125 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %124, i32 0, i32 0, !dbg !655
  %126 = getelementptr inbounds %struct.VMGuestLibHeader, %struct.VMGuestLibHeader* %125, i32 0, i32 1, !dbg !656
  %127 = load i64, i64* %126, align 1, !dbg !656
  %128 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !657
  %129 = bitcast %struct._VMGuestLibHandle* %128 to %struct.VMGuestLibHandleType*, !dbg !658
  %130 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %129, i32 0, i32 1, !dbg !658
  store i64 %127, i64* %130, align 8, !dbg !659
  %131 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !660
  %132 = bitcast %struct._VMGuestLibHandle* %131 to %struct.VMGuestLibHandleType*, !dbg !662
  %133 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %132, i32 0, i32 2, !dbg !662
  %134 = load i64, i64* %133, align 8, !dbg !662
  %135 = load i64, i64* %12, align 8, !dbg !663
  %136 = icmp ult i64 %134, %135, !dbg !664
  br i1 %136, label %137, label %151, !dbg !665

; <label>:137:                                    ; preds = %116
  %138 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !666
  %139 = bitcast %struct._VMGuestLibHandle* %138 to %struct.VMGuestLibHandleType*, !dbg !668
  %140 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %139, i32 0, i32 3, !dbg !668
  %141 = load i8*, i8** %140, align 8, !dbg !668
  call void @free(i8* %141) #6, !dbg !669
  %142 = load i64, i64* %12, align 8, !dbg !670
  %143 = call i8* @UtilSafeCalloc0(i64 1, i64 %142), !dbg !671
  %144 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !672
  %145 = bitcast %struct._VMGuestLibHandle* %144 to %struct.VMGuestLibHandleType*, !dbg !673
  %146 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %145, i32 0, i32 3, !dbg !673
  store i8* %143, i8** %146, align 8, !dbg !674
  %147 = load i64, i64* %12, align 8, !dbg !675
  %148 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !676
  %149 = bitcast %struct._VMGuestLibHandle* %148 to %struct.VMGuestLibHandleType*, !dbg !677
  %150 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %149, i32 0, i32 2, !dbg !677
  store i64 %147, i64* %150, align 8, !dbg !678
  br label %151, !dbg !679

; <label>:151:                                    ; preds = %137, %116
  %152 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !680
  %153 = bitcast %struct._VMGuestLibHandle* %152 to %struct.VMGuestLibHandleType*, !dbg !681
  %154 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %153, i32 0, i32 3, !dbg !681
  %155 = load i8*, i8** %154, align 8, !dbg !681
  %156 = load i8*, i8** %3, align 8, !dbg !682
  %157 = load i64, i64* %4, align 8, !dbg !683
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %155, i8* %156, i64 %157, i32 1, i1 false), !dbg !684
  %158 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !685
  %159 = bitcast %struct._VMGuestLibHandle* %158 to %struct.VMGuestLibHandleType*, !dbg !686
  %160 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %159, i32 0, i32 3, !dbg !686
  %161 = load i8*, i8** %160, align 8, !dbg !686
  %162 = bitcast i8* %161 to %struct.VMGuestLibDataV2*, !dbg !687
  store %struct.VMGuestLibDataV2* %162, %struct.VMGuestLibDataV2** %11, align 8, !dbg !688
  %163 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %11, align 8, !dbg !689
  %164 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %163, i32 0, i32 18, !dbg !690
  %165 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %164, i32 0, i32 1, !dbg !691
  %166 = getelementptr inbounds [512 x i8], [512 x i8]* %165, i64 0, i64 511, !dbg !689
  store i8 0, i8* %166, align 1, !dbg !692
  store i32 0, i32* %5, align 4, !dbg !693
  br label %333, !dbg !694

; <label>:167:                                    ; preds = %98
  %168 = load i32, i32* %6, align 4, !dbg !695
  %169 = icmp eq i32 %168, 3, !dbg !698
  br i1 %169, label %170, label %331, !dbg !695

; <label>:170:                                    ; preds = %167
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV3** %13, metadata !699, metadata !272), !dbg !701
  %171 = load i8*, i8** %3, align 8, !dbg !702
  %172 = bitcast i8* %171 to %struct.VMGuestLibDataV3*, !dbg !703
  store %struct.VMGuestLibDataV3* %172, %struct.VMGuestLibDataV3** %13, align 8, !dbg !701
  call void @llvm.dbg.declare(metadata i64* %14, metadata !704, metadata !272), !dbg !705
  call void @llvm.dbg.declare(metadata %struct.XDR* %15, metadata !706, metadata !272), !dbg !707
  call void @llvm.dbg.declare(metadata i32* %16, metadata !708, metadata !272), !dbg !709
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibStatisticsV3** %17, metadata !710, metadata !272), !dbg !711
  %173 = load %struct.VMGuestLibDataV3*, %struct.VMGuestLibDataV3** %13, align 8, !dbg !712
  %174 = getelementptr inbounds %struct.VMGuestLibDataV3, %struct.VMGuestLibDataV3* %173, i32 0, i32 0, !dbg !714
  %175 = getelementptr inbounds %struct.VMGuestLibHeader, %struct.VMGuestLibHeader* %174, i32 0, i32 0, !dbg !715
  %176 = load i32, i32* %175, align 1, !dbg !715
  %177 = load i32, i32* %6, align 4, !dbg !716
  %178 = icmp ne i32 %176, %177, !dbg !717
  br i1 %178, label %179, label %180, !dbg !718

; <label>:179:                                    ; preds = %170
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0)), !dbg !719
  store i32 1, i32* %5, align 4, !dbg !721
  br label %334, !dbg !722

; <label>:180:                                    ; preds = %170
  %181 = load i64, i64* %4, align 8, !dbg !723
  %182 = icmp ult i64 %181, 16, !dbg !725
  br i1 %182, label %183, label %184, !dbg !726

; <label>:183:                                    ; preds = %180
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0)), !dbg !727
  store i32 1, i32* %5, align 4, !dbg !729
  br label %334, !dbg !730

; <label>:184:                                    ; preds = %180
  %185 = load %struct.VMGuestLibDataV3*, %struct.VMGuestLibDataV3** %13, align 8, !dbg !731
  %186 = getelementptr inbounds %struct.VMGuestLibDataV3, %struct.VMGuestLibDataV3* %185, i32 0, i32 0, !dbg !732
  %187 = getelementptr inbounds %struct.VMGuestLibHeader, %struct.VMGuestLibHeader* %186, i32 0, i32 0, !dbg !733
  %188 = load i32, i32* %187, align 1, !dbg !733
  %189 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !734
  %190 = bitcast %struct._VMGuestLibHandle* %189 to %struct.VMGuestLibHandleType*, !dbg !735
  %191 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %190, i32 0, i32 0, !dbg !735
  store i32 %188, i32* %191, align 8, !dbg !736
  %192 = load %struct.VMGuestLibDataV3*, %struct.VMGuestLibDataV3** %13, align 8, !dbg !737
  %193 = getelementptr inbounds %struct.VMGuestLibDataV3, %struct.VMGuestLibDataV3* %192, i32 0, i32 0, !dbg !738
  %194 = getelementptr inbounds %struct.VMGuestLibHeader, %struct.VMGuestLibHeader* %193, i32 0, i32 1, !dbg !739
  %195 = load i64, i64* %194, align 1, !dbg !739
  %196 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !740
  %197 = bitcast %struct._VMGuestLibHandle* %196 to %struct.VMGuestLibHandleType*, !dbg !741
  %198 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %197, i32 0, i32 1, !dbg !741
  store i64 %195, i64* %198, align 8, !dbg !742
  %199 = load %struct.VMGuestLibDataV3*, %struct.VMGuestLibDataV3** %13, align 8, !dbg !743
  %200 = getelementptr inbounds %struct.VMGuestLibDataV3, %struct.VMGuestLibDataV3* %199, i32 0, i32 2, !dbg !744
  %201 = getelementptr inbounds [0 x i8], [0 x i8]* %200, i32 0, i32 0, !dbg !743
  %202 = load %struct.VMGuestLibDataV3*, %struct.VMGuestLibDataV3** %13, align 8, !dbg !745
  %203 = getelementptr inbounds %struct.VMGuestLibDataV3, %struct.VMGuestLibDataV3* %202, i32 0, i32 1, !dbg !746
  %204 = load i32, i32* %203, align 1, !dbg !746
  call void @xdrmem_create(%struct.XDR* %15, i8* %201, i32 %204, i32 1) #6, !dbg !747
  %205 = call i32 @xdr_GuestLibV3StatCount(%struct.XDR* %15, i32* %16), !dbg !748
  %206 = icmp ne i32 %205, 0, !dbg !748
  br i1 %206, label %221, label %207, !dbg !750

; <label>:207:                                    ; preds = %184
  br label %208, !dbg !751, !llvm.loop !753

; <label>:208:                                    ; preds = %207
  %209 = getelementptr inbounds %struct.XDR, %struct.XDR* %15, i32 0, i32 1, !dbg !754
  %210 = load %struct.xdr_ops*, %struct.xdr_ops** %209, align 8, !dbg !754
  %211 = getelementptr inbounds %struct.xdr_ops, %struct.xdr_ops* %210, i32 0, i32 7, !dbg !758
  %212 = load void (%struct.XDR*)*, void (%struct.XDR*)** %211, align 8, !dbg !758
  %213 = icmp ne void (%struct.XDR*)* %212, null, !dbg !759
  br i1 %213, label %214, label %219, !dbg !759

; <label>:214:                                    ; preds = %208
  %215 = getelementptr inbounds %struct.XDR, %struct.XDR* %15, i32 0, i32 1, !dbg !760
  %216 = load %struct.xdr_ops*, %struct.xdr_ops** %215, align 8, !dbg !760
  %217 = getelementptr inbounds %struct.xdr_ops, %struct.xdr_ops* %216, i32 0, i32 7, !dbg !762
  %218 = load void (%struct.XDR*)*, void (%struct.XDR*)** %217, align 8, !dbg !762
  call void %218(%struct.XDR* %15), !dbg !763
  br label %219, !dbg !763

; <label>:219:                                    ; preds = %214, %208
  br label %220, !dbg !764

; <label>:220:                                    ; preds = %219
  br label %334, !dbg !766

; <label>:221:                                    ; preds = %184
  %222 = load i32, i32* %16, align 4, !dbg !767
  %223 = icmp uge i32 %222, 38, !dbg !769
  br i1 %223, label %224, label %225, !dbg !770

; <label>:224:                                    ; preds = %221
  store i32 37, i32* %16, align 4, !dbg !771
  br label %225, !dbg !773

; <label>:225:                                    ; preds = %224, %221
  %226 = load i32, i32* %16, align 4, !dbg !774
  %227 = zext i32 %226 to i64, !dbg !774
  %228 = mul i64 %227, 32, !dbg !775
  %229 = add i64 8, %228, !dbg !776
  store i64 %229, i64* %14, align 8, !dbg !777
  %230 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !778
  %231 = bitcast %struct._VMGuestLibHandle* %230 to %struct.VMGuestLibHandleType*, !dbg !780
  %232 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %231, i32 0, i32 2, !dbg !780
  %233 = load i64, i64* %232, align 8, !dbg !780
  %234 = load i64, i64* %14, align 8, !dbg !781
  %235 = icmp ult i64 %233, %234, !dbg !782
  br i1 %235, label %236, label %250, !dbg !783

; <label>:236:                                    ; preds = %225
  %237 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !784
  %238 = bitcast %struct._VMGuestLibHandle* %237 to %struct.VMGuestLibHandleType*, !dbg !786
  %239 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %238, i32 0, i32 3, !dbg !786
  %240 = load i8*, i8** %239, align 8, !dbg !786
  call void @free(i8* %240) #6, !dbg !787
  %241 = load i64, i64* %14, align 8, !dbg !788
  %242 = call i8* @UtilSafeCalloc0(i64 1, i64 %241), !dbg !789
  %243 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !790
  %244 = bitcast %struct._VMGuestLibHandle* %243 to %struct.VMGuestLibHandleType*, !dbg !791
  %245 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %244, i32 0, i32 3, !dbg !791
  store i8* %242, i8** %245, align 8, !dbg !792
  %246 = load i64, i64* %14, align 8, !dbg !793
  %247 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !794
  %248 = bitcast %struct._VMGuestLibHandle* %247 to %struct.VMGuestLibHandleType*, !dbg !795
  %249 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %248, i32 0, i32 2, !dbg !795
  store i64 %246, i64* %249, align 8, !dbg !796
  br label %250, !dbg !797

; <label>:250:                                    ; preds = %236, %225
  %251 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !798
  %252 = bitcast %struct._VMGuestLibHandle* %251 to %struct.VMGuestLibHandleType*, !dbg !799
  %253 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %252, i32 0, i32 3, !dbg !799
  %254 = load i8*, i8** %253, align 8, !dbg !799
  %255 = bitcast i8* %254 to %struct.VMGuestLibStatisticsV3*, !dbg !800
  store %struct.VMGuestLibStatisticsV3* %255, %struct.VMGuestLibStatisticsV3** %17, align 8, !dbg !801
  %256 = load i32, i32* %16, align 4, !dbg !802
  %257 = load %struct.VMGuestLibStatisticsV3*, %struct.VMGuestLibStatisticsV3** %17, align 8, !dbg !803
  %258 = getelementptr inbounds %struct.VMGuestLibStatisticsV3, %struct.VMGuestLibStatisticsV3* %257, i32 0, i32 0, !dbg !804
  store i32 %256, i32* %258, align 8, !dbg !805
  store i32 0, i32* %16, align 4, !dbg !806
  br label %259, !dbg !808

; <label>:259:                                    ; preds = %288, %250
  %260 = load i32, i32* %16, align 4, !dbg !809
  %261 = load %struct.VMGuestLibStatisticsV3*, %struct.VMGuestLibStatisticsV3** %17, align 8, !dbg !812
  %262 = getelementptr inbounds %struct.VMGuestLibStatisticsV3, %struct.VMGuestLibStatisticsV3* %261, i32 0, i32 0, !dbg !813
  %263 = load i32, i32* %262, align 8, !dbg !813
  %264 = icmp ult i32 %260, %263, !dbg !814
  br i1 %264, label %265, label %291, !dbg !815

; <label>:265:                                    ; preds = %259
  call void @llvm.dbg.declare(metadata i32* %18, metadata !816, metadata !272), !dbg !818
  %266 = load i32, i32* %16, align 4, !dbg !819
  %267 = add i32 %266, 1, !dbg !820
  store i32 %267, i32* %18, align 4, !dbg !818
  %268 = load i32, i32* %16, align 4, !dbg !821
  %269 = zext i32 %268 to i64, !dbg !823
  %270 = load %struct.VMGuestLibStatisticsV3*, %struct.VMGuestLibStatisticsV3** %17, align 8, !dbg !823
  %271 = getelementptr inbounds %struct.VMGuestLibStatisticsV3, %struct.VMGuestLibStatisticsV3* %270, i32 0, i32 1, !dbg !824
  %272 = getelementptr inbounds [0 x %struct.GuestLibV3Stat], [0 x %struct.GuestLibV3Stat]* %271, i64 0, i64 %269, !dbg !823
  %273 = call i32 @xdr_GuestLibV3Stat(%struct.XDR* %15, %struct.GuestLibV3Stat* %272), !dbg !825
  %274 = icmp ne i32 %273, 0, !dbg !825
  br i1 %274, label %276, label %275, !dbg !826

; <label>:275:                                    ; preds = %265
  br label %291, !dbg !827

; <label>:276:                                    ; preds = %265
  %277 = load i32, i32* %16, align 4, !dbg !829
  %278 = zext i32 %277 to i64, !dbg !831
  %279 = load %struct.VMGuestLibStatisticsV3*, %struct.VMGuestLibStatisticsV3** %17, align 8, !dbg !831
  %280 = getelementptr inbounds %struct.VMGuestLibStatisticsV3, %struct.VMGuestLibStatisticsV3* %279, i32 0, i32 1, !dbg !832
  %281 = getelementptr inbounds [0 x %struct.GuestLibV3Stat], [0 x %struct.GuestLibV3Stat]* %280, i64 0, i64 %278, !dbg !831
  %282 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %281, i32 0, i32 0, !dbg !833
  %283 = load i32, i32* %282, align 8, !dbg !833
  %284 = load i32, i32* %18, align 4, !dbg !834
  %285 = icmp ne i32 %283, %284, !dbg !835
  br i1 %285, label %286, label %287, !dbg !836

; <label>:286:                                    ; preds = %276
  br label %291, !dbg !837

; <label>:287:                                    ; preds = %276
  br label %288, !dbg !839

; <label>:288:                                    ; preds = %287
  %289 = load i32, i32* %16, align 4, !dbg !840
  %290 = add i32 %289, 1, !dbg !840
  store i32 %290, i32* %16, align 4, !dbg !840
  br label %259, !dbg !842, !llvm.loop !843

; <label>:291:                                    ; preds = %286, %275, %259
  %292 = load i32, i32* %16, align 4, !dbg !845
  %293 = load %struct.VMGuestLibStatisticsV3*, %struct.VMGuestLibStatisticsV3** %17, align 8, !dbg !847
  %294 = getelementptr inbounds %struct.VMGuestLibStatisticsV3, %struct.VMGuestLibStatisticsV3* %293, i32 0, i32 0, !dbg !848
  %295 = load i32, i32* %294, align 8, !dbg !848
  %296 = icmp uge i32 %292, %295, !dbg !849
  br i1 %296, label %297, label %298, !dbg !850

; <label>:297:                                    ; preds = %291
  store i32 0, i32* %5, align 4, !dbg !851
  br label %317, !dbg !853

; <label>:298:                                    ; preds = %291
  call void @llvm.dbg.declare(metadata i32* %19, metadata !854, metadata !272), !dbg !856
  store i32 0, i32* %19, align 4, !dbg !857
  br label %299, !dbg !859

; <label>:299:                                    ; preds = %310, %298
  %300 = load i32, i32* %19, align 4, !dbg !860
  %301 = load i32, i32* %16, align 4, !dbg !863
  %302 = icmp ult i32 %300, %301, !dbg !864
  br i1 %302, label %303, label %313, !dbg !865

; <label>:303:                                    ; preds = %299
  %304 = load i32, i32* %19, align 4, !dbg !866
  %305 = zext i32 %304 to i64, !dbg !868
  %306 = load %struct.VMGuestLibStatisticsV3*, %struct.VMGuestLibStatisticsV3** %17, align 8, !dbg !868
  %307 = getelementptr inbounds %struct.VMGuestLibStatisticsV3, %struct.VMGuestLibStatisticsV3* %306, i32 0, i32 1, !dbg !869
  %308 = getelementptr inbounds [0 x %struct.GuestLibV3Stat], [0 x %struct.GuestLibV3Stat]* %307, i64 0, i64 %305, !dbg !868
  %309 = bitcast %struct.GuestLibV3Stat* %308 to i8*, !dbg !870
  call void @xdr_free(i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.GuestLibV3Stat*)* @xdr_GuestLibV3Stat to i32 (%struct.XDR*, i8*, ...)*), i8* %309) #6, !dbg !871
  br label %310, !dbg !872

; <label>:310:                                    ; preds = %303
  %311 = load i32, i32* %19, align 4, !dbg !873
  %312 = add i32 %311, 1, !dbg !873
  store i32 %312, i32* %19, align 4, !dbg !873
  br label %299, !dbg !875, !llvm.loop !876

; <label>:313:                                    ; preds = %299
  %314 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %2, align 8, !dbg !878
  %315 = bitcast %struct._VMGuestLibHandle* %314 to %struct.VMGuestLibHandleType*, !dbg !879
  %316 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %315, i32 0, i32 1, !dbg !879
  store i64 0, i64* %316, align 8, !dbg !880
  br label %317

; <label>:317:                                    ; preds = %313, %297
  br label %318, !dbg !881, !llvm.loop !882

; <label>:318:                                    ; preds = %317
  %319 = getelementptr inbounds %struct.XDR, %struct.XDR* %15, i32 0, i32 1, !dbg !883
  %320 = load %struct.xdr_ops*, %struct.xdr_ops** %319, align 8, !dbg !883
  %321 = getelementptr inbounds %struct.xdr_ops, %struct.xdr_ops* %320, i32 0, i32 7, !dbg !887
  %322 = load void (%struct.XDR*)*, void (%struct.XDR*)** %321, align 8, !dbg !887
  %323 = icmp ne void (%struct.XDR*)* %322, null, !dbg !888
  br i1 %323, label %324, label %329, !dbg !888

; <label>:324:                                    ; preds = %318
  %325 = getelementptr inbounds %struct.XDR, %struct.XDR* %15, i32 0, i32 1, !dbg !889
  %326 = load %struct.xdr_ops*, %struct.xdr_ops** %325, align 8, !dbg !889
  %327 = getelementptr inbounds %struct.xdr_ops, %struct.xdr_ops* %326, i32 0, i32 7, !dbg !891
  %328 = load void (%struct.XDR*)*, void (%struct.XDR*)** %327, align 8, !dbg !891
  call void %328(%struct.XDR* %15), !dbg !892
  br label %329, !dbg !892

; <label>:329:                                    ; preds = %324, %318
  br label %330, !dbg !893

; <label>:330:                                    ; preds = %329
  br label %332, !dbg !895

; <label>:331:                                    ; preds = %167
  store i32 1, i32* %5, align 4, !dbg !896
  br label %332

; <label>:332:                                    ; preds = %331, %330
  br label %333

; <label>:333:                                    ; preds = %332, %151
  br label %334, !dbg !898

; <label>:334:                                    ; preds = %333, %220, %183, %179, %115, %110, %97, %93
  %335 = load i8*, i8** %3, align 8, !dbg !900
  call void @free(i8* %335) #6, !dbg !901
  %336 = load i32, i32* %5, align 4, !dbg !902
  ret i32 %336, !dbg !903
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetSessionId(%struct._VMGuestLibHandle*, i64*) #0 !dbg !904 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._VMGuestLibHandle*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %4, metadata !908, metadata !272), !dbg !909
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !910, metadata !272), !dbg !911
  call void @llvm.dbg.declare(metadata i8** %6, metadata !912, metadata !272), !dbg !913
  call void @llvm.dbg.declare(metadata i32* %7, metadata !914, metadata !272), !dbg !915
  %8 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !916
  %9 = load i64*, i64** %5, align 8, !dbg !917
  %10 = bitcast i64* %9 to i8*, !dbg !917
  %11 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %8, i8* %10, i8** %6), !dbg !918
  store i32 %11, i32* %7, align 4, !dbg !919
  %12 = load i32, i32* %7, align 4, !dbg !920
  %13 = icmp ne i32 0, %12, !dbg !922
  br i1 %13, label %14, label %16, !dbg !923

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %7, align 4, !dbg !924
  store i32 %15, i32* %3, align 4, !dbg !926
  br label %22, !dbg !926

; <label>:16:                                     ; preds = %2
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !927
  %18 = bitcast %struct._VMGuestLibHandle* %17 to %struct.VMGuestLibHandleType*, !dbg !928
  %19 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %18, i32 0, i32 1, !dbg !928
  %20 = load i64, i64* %19, align 8, !dbg !928
  %21 = load i64*, i64** %5, align 8, !dbg !929
  store i64 %20, i64* %21, align 8, !dbg !930
  store i32 0, i32* %3, align 4, !dbg !931
  br label %22, !dbg !931

; <label>:22:                                     ; preds = %16, %14
  %23 = load i32, i32* %3, align 4, !dbg !932
  ret i32 %23, !dbg !932
}

; Function Attrs: nounwind uwtable
define internal i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle*, i8*, i8**) #0 !dbg !933 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._VMGuestLibHandle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %5, metadata !937, metadata !272), !dbg !938
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !939, metadata !272), !dbg !940
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !941, metadata !272), !dbg !942
  %8 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %5, align 8, !dbg !943
  %9 = icmp eq %struct._VMGuestLibHandle* null, %8, !dbg !945
  br i1 %9, label %10, label %11, !dbg !946

; <label>:10:                                     ; preds = %3
  store i32 8, i32* %4, align 4, !dbg !947
  br label %28, !dbg !947

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %6, align 8, !dbg !949
  %13 = icmp eq i8* null, %12, !dbg !951
  br i1 %13, label %14, label %15, !dbg !952

; <label>:14:                                     ; preds = %11
  store i32 9, i32* %4, align 4, !dbg !953
  br label %28, !dbg !953

; <label>:15:                                     ; preds = %11
  %16 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %5, align 8, !dbg !955
  %17 = bitcast %struct._VMGuestLibHandle* %16 to %struct.VMGuestLibHandleType*, !dbg !956
  %18 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %17, i32 0, i32 3, !dbg !956
  %19 = load i8*, i8** %18, align 8, !dbg !956
  %20 = load i8**, i8*** %7, align 8, !dbg !957
  store i8* %19, i8** %20, align 8, !dbg !958
  %21 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %5, align 8, !dbg !959
  %22 = bitcast %struct._VMGuestLibHandle* %21 to %struct.VMGuestLibHandleType*, !dbg !961
  %23 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %22, i32 0, i32 1, !dbg !961
  %24 = load i64, i64* %23, align 8, !dbg !961
  %25 = icmp eq i64 0, %24, !dbg !962
  br i1 %25, label %26, label %27, !dbg !963

; <label>:26:                                     ; preds = %15
  store i32 5, i32* %4, align 4, !dbg !964
  br label %28, !dbg !964

; <label>:27:                                     ; preds = %15
  store i32 0, i32* %4, align 4, !dbg !966
  br label %28, !dbg !966

; <label>:28:                                     ; preds = %27, %26, %14, %10
  %29 = load i32, i32* %4, align 4, !dbg !967
  ret i32 %29, !dbg !967
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetCpuReservationMHz(%struct._VMGuestLibHandle*, i32*) #0 !dbg !968 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !972, metadata !272), !dbg !973
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !974, metadata !272), !dbg !975
  call void @llvm.dbg.declare(metadata i32* %5, metadata !976, metadata !272), !dbg !977
  store i32 1, i32* %5, align 4, !dbg !977
  br label %10, !dbg !978, !llvm.loop !979

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !980, metadata !272), !dbg !982
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !983
  %12 = load i32*, i32** %4, align 8, !dbg !985
  %13 = bitcast i32* %12 to i8*, !dbg !986
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !987
  store i32 %14, i32* %5, align 4, !dbg !988
  %15 = load i32, i32* %5, align 4, !dbg !989
  %16 = icmp ne i32 0, %15, !dbg !990
  br i1 %16, label %17, label %18, !dbg !991

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !992

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !996
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !999
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !999
  %22 = load i32, i32* %21, align 8, !dbg !999
  %23 = icmp eq i32 %22, 2, !dbg !1000
  br i1 %23, label %24, label %44, !dbg !1001

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !1002, !llvm.loop !1005

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !1007, metadata !272), !dbg !1009
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1010
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !1012
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !1012
  %29 = load i8*, i8** %28, align 8, !dbg !1012
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !1013
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1014
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1015
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 1, !dbg !1016
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !1017
  %34 = load i8, i8* %33, align 1, !dbg !1017
  %35 = icmp ne i8 %34, 0, !dbg !1015
  br i1 %35, label %37, label %36, !dbg !1018

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !1019
  br label %43, !dbg !1023

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1024
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 1, !dbg !1026
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !1027
  %41 = load i32, i32* %40, align 1, !dbg !1027
  %42 = load i32*, i32** %4, align 8, !dbg !1028
  store i32 %41, i32* %42, align 4, !dbg !1029
  store i32 0, i32* %5, align 4, !dbg !1030
  br label %43, !dbg !1031

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !1032

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1034
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !1037
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !1037
  %48 = load i32, i32* %47, align 8, !dbg !1037
  %49 = icmp eq i32 %48, 3, !dbg !1038
  br i1 %49, label %50, label %79, !dbg !1039

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !1040, !llvm.loop !1043

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1045, metadata !272), !dbg !1047
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !1048, metadata !272), !dbg !1049
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1050
  %53 = load i32*, i32** %4, align 8, !dbg !1052
  %54 = bitcast i32* %53 to i8*, !dbg !1053
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !1054
  store i32 %55, i32* %5, align 4, !dbg !1055
  %56 = load i32, i32* %5, align 4, !dbg !1056
  %57 = icmp ne i32 0, %56, !dbg !1057
  br i1 %57, label %58, label %59, !dbg !1058

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !1059

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1063
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 1, %struct.GuestLibV3Stat* %9), !dbg !1065
  store i32 %61, i32* %5, align 4, !dbg !1066
  %62 = load i32, i32* %5, align 4, !dbg !1067
  %63 = icmp ne i32 %62, 0, !dbg !1068
  br i1 %63, label %64, label %65, !dbg !1069

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !1070

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1074
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !1077
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !1078
  %69 = load i8, i8* %68, align 8, !dbg !1078
  %70 = icmp ne i8 %69, 0, !dbg !1079
  br i1 %70, label %72, label %71, !dbg !1080

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !1081
  br label %78, !dbg !1084

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1085
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !1087
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !1088
  %76 = load i32, i32* %75, align 4, !dbg !1088
  %77 = load i32*, i32** %4, align 8, !dbg !1089
  store i32 %76, i32* %77, align 4, !dbg !1090
  store i32 0, i32* %5, align 4, !dbg !1091
  br label %78, !dbg !1092

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !1093

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !1095

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !1097
  ret i32 %82, !dbg !1098
}

; Function Attrs: nounwind uwtable
define internal i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle*, i32, %struct.GuestLibV3Stat*) #0 !dbg !1099 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._VMGuestLibHandle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.GuestLibV3Stat*, align 8
  %8 = alloca %struct.VMGuestLibStatisticsV3*, align 8
  %9 = alloca i32, align 4
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %5, metadata !1103, metadata !272), !dbg !1104
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1105, metadata !272), !dbg !1106
  store %struct.GuestLibV3Stat* %2, %struct.GuestLibV3Stat** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat** %7, metadata !1107, metadata !272), !dbg !1108
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibStatisticsV3** %8, metadata !1109, metadata !272), !dbg !1110
  %10 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %5, align 8, !dbg !1111
  %11 = bitcast %struct._VMGuestLibHandle* %10 to %struct.VMGuestLibHandleType*, !dbg !1112
  %12 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %11, i32 0, i32 3, !dbg !1112
  %13 = load i8*, i8** %12, align 8, !dbg !1112
  %14 = bitcast i8* %13 to %struct.VMGuestLibStatisticsV3*, !dbg !1113
  store %struct.VMGuestLibStatisticsV3* %14, %struct.VMGuestLibStatisticsV3** %8, align 8, !dbg !1110
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1114, metadata !272), !dbg !1115
  %15 = load i32, i32* %6, align 4, !dbg !1116
  %16 = sub i32 %15, 1, !dbg !1117
  store i32 %16, i32* %9, align 4, !dbg !1115
  %17 = load i32, i32* %9, align 4, !dbg !1118
  %18 = load %struct.VMGuestLibStatisticsV3*, %struct.VMGuestLibStatisticsV3** %8, align 8, !dbg !1120
  %19 = getelementptr inbounds %struct.VMGuestLibStatisticsV3, %struct.VMGuestLibStatisticsV3* %18, i32 0, i32 0, !dbg !1121
  %20 = load i32, i32* %19, align 8, !dbg !1121
  %21 = icmp uge i32 %17, %20, !dbg !1122
  br i1 %21, label %22, label %23, !dbg !1123

; <label>:22:                                     ; preds = %3
  store i32 10, i32* %4, align 4, !dbg !1124
  br label %32, !dbg !1124

; <label>:23:                                     ; preds = %3
  %24 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %7, align 8, !dbg !1126
  %25 = bitcast %struct.GuestLibV3Stat* %24 to i8*, !dbg !1127
  %26 = load i32, i32* %9, align 4, !dbg !1128
  %27 = zext i32 %26 to i64, !dbg !1129
  %28 = load %struct.VMGuestLibStatisticsV3*, %struct.VMGuestLibStatisticsV3** %8, align 8, !dbg !1129
  %29 = getelementptr inbounds %struct.VMGuestLibStatisticsV3, %struct.VMGuestLibStatisticsV3* %28, i32 0, i32 1, !dbg !1130
  %30 = getelementptr inbounds [0 x %struct.GuestLibV3Stat], [0 x %struct.GuestLibV3Stat]* %29, i64 0, i64 %27, !dbg !1129
  %31 = bitcast %struct.GuestLibV3Stat* %30 to i8*, !dbg !1127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %31, i64 32, i32 8, i1 false), !dbg !1127
  store i32 0, i32* %4, align 4, !dbg !1131
  br label %32, !dbg !1131

; <label>:32:                                     ; preds = %23, %22
  %33 = load i32, i32* %4, align 4, !dbg !1132
  ret i32 %33, !dbg !1132
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetCpuLimitMHz(%struct._VMGuestLibHandle*, i32*) #0 !dbg !1133 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !1134, metadata !272), !dbg !1135
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1136, metadata !272), !dbg !1137
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1138, metadata !272), !dbg !1139
  store i32 1, i32* %5, align 4, !dbg !1139
  br label %10, !dbg !1140, !llvm.loop !1141

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1142, metadata !272), !dbg !1144
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1145
  %12 = load i32*, i32** %4, align 8, !dbg !1147
  %13 = bitcast i32* %12 to i8*, !dbg !1148
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !1149
  store i32 %14, i32* %5, align 4, !dbg !1150
  %15 = load i32, i32* %5, align 4, !dbg !1151
  %16 = icmp ne i32 0, %15, !dbg !1152
  br i1 %16, label %17, label %18, !dbg !1153

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !1154

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1158
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !1161
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !1161
  %22 = load i32, i32* %21, align 8, !dbg !1161
  %23 = icmp eq i32 %22, 2, !dbg !1162
  br i1 %23, label %24, label %44, !dbg !1163

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !1164, !llvm.loop !1167

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !1169, metadata !272), !dbg !1171
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1172
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !1174
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !1174
  %29 = load i8*, i8** %28, align 8, !dbg !1174
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !1175
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1176
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1177
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 2, !dbg !1178
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !1179
  %34 = load i8, i8* %33, align 1, !dbg !1179
  %35 = icmp ne i8 %34, 0, !dbg !1177
  br i1 %35, label %37, label %36, !dbg !1180

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !1181
  br label %43, !dbg !1185

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1186
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 2, !dbg !1188
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !1189
  %41 = load i32, i32* %40, align 1, !dbg !1189
  %42 = load i32*, i32** %4, align 8, !dbg !1190
  store i32 %41, i32* %42, align 4, !dbg !1191
  store i32 0, i32* %5, align 4, !dbg !1192
  br label %43, !dbg !1193

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !1194

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1196
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !1199
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !1199
  %48 = load i32, i32* %47, align 8, !dbg !1199
  %49 = icmp eq i32 %48, 3, !dbg !1200
  br i1 %49, label %50, label %79, !dbg !1201

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !1202, !llvm.loop !1205

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1207, metadata !272), !dbg !1209
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !1210, metadata !272), !dbg !1211
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1212
  %53 = load i32*, i32** %4, align 8, !dbg !1214
  %54 = bitcast i32* %53 to i8*, !dbg !1215
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !1216
  store i32 %55, i32* %5, align 4, !dbg !1217
  %56 = load i32, i32* %5, align 4, !dbg !1218
  %57 = icmp ne i32 0, %56, !dbg !1219
  br i1 %57, label %58, label %59, !dbg !1220

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !1221

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1225
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 2, %struct.GuestLibV3Stat* %9), !dbg !1227
  store i32 %61, i32* %5, align 4, !dbg !1228
  %62 = load i32, i32* %5, align 4, !dbg !1229
  %63 = icmp ne i32 %62, 0, !dbg !1230
  br i1 %63, label %64, label %65, !dbg !1231

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !1232

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1236
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !1239
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !1240
  %69 = load i8, i8* %68, align 8, !dbg !1240
  %70 = icmp ne i8 %69, 0, !dbg !1241
  br i1 %70, label %72, label %71, !dbg !1242

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !1243
  br label %78, !dbg !1246

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1247
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !1249
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !1250
  %76 = load i32, i32* %75, align 4, !dbg !1250
  %77 = load i32*, i32** %4, align 8, !dbg !1251
  store i32 %76, i32* %77, align 4, !dbg !1252
  store i32 0, i32* %5, align 4, !dbg !1253
  br label %78, !dbg !1254

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !1255

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !1257

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !1259
  ret i32 %82, !dbg !1260
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetCpuShares(%struct._VMGuestLibHandle*, i32*) #0 !dbg !1261 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !1262, metadata !272), !dbg !1263
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1264, metadata !272), !dbg !1265
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1266, metadata !272), !dbg !1267
  store i32 1, i32* %5, align 4, !dbg !1267
  br label %10, !dbg !1268, !llvm.loop !1269

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1270, metadata !272), !dbg !1272
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1273
  %12 = load i32*, i32** %4, align 8, !dbg !1275
  %13 = bitcast i32* %12 to i8*, !dbg !1276
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !1277
  store i32 %14, i32* %5, align 4, !dbg !1278
  %15 = load i32, i32* %5, align 4, !dbg !1279
  %16 = icmp ne i32 0, %15, !dbg !1280
  br i1 %16, label %17, label %18, !dbg !1281

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !1282

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1286
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !1289
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !1289
  %22 = load i32, i32* %21, align 8, !dbg !1289
  %23 = icmp eq i32 %22, 2, !dbg !1290
  br i1 %23, label %24, label %44, !dbg !1291

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !1292, !llvm.loop !1295

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !1297, metadata !272), !dbg !1299
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1300
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !1302
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !1302
  %29 = load i8*, i8** %28, align 8, !dbg !1302
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !1303
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1304
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1305
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 3, !dbg !1306
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !1307
  %34 = load i8, i8* %33, align 1, !dbg !1307
  %35 = icmp ne i8 %34, 0, !dbg !1305
  br i1 %35, label %37, label %36, !dbg !1308

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !1309
  br label %43, !dbg !1313

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1314
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 3, !dbg !1316
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !1317
  %41 = load i32, i32* %40, align 1, !dbg !1317
  %42 = load i32*, i32** %4, align 8, !dbg !1318
  store i32 %41, i32* %42, align 4, !dbg !1319
  store i32 0, i32* %5, align 4, !dbg !1320
  br label %43, !dbg !1321

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !1322

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1324
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !1327
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !1327
  %48 = load i32, i32* %47, align 8, !dbg !1327
  %49 = icmp eq i32 %48, 3, !dbg !1328
  br i1 %49, label %50, label %79, !dbg !1329

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !1330, !llvm.loop !1333

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1335, metadata !272), !dbg !1337
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !1338, metadata !272), !dbg !1339
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1340
  %53 = load i32*, i32** %4, align 8, !dbg !1342
  %54 = bitcast i32* %53 to i8*, !dbg !1343
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !1344
  store i32 %55, i32* %5, align 4, !dbg !1345
  %56 = load i32, i32* %5, align 4, !dbg !1346
  %57 = icmp ne i32 0, %56, !dbg !1347
  br i1 %57, label %58, label %59, !dbg !1348

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !1349

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1353
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 3, %struct.GuestLibV3Stat* %9), !dbg !1355
  store i32 %61, i32* %5, align 4, !dbg !1356
  %62 = load i32, i32* %5, align 4, !dbg !1357
  %63 = icmp ne i32 %62, 0, !dbg !1358
  br i1 %63, label %64, label %65, !dbg !1359

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !1360

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1364
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !1367
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !1368
  %69 = load i8, i8* %68, align 8, !dbg !1368
  %70 = icmp ne i8 %69, 0, !dbg !1369
  br i1 %70, label %72, label %71, !dbg !1370

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !1371
  br label %78, !dbg !1374

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1375
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !1377
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !1378
  %76 = load i32, i32* %75, align 4, !dbg !1378
  %77 = load i32*, i32** %4, align 8, !dbg !1379
  store i32 %76, i32* %77, align 4, !dbg !1380
  store i32 0, i32* %5, align 4, !dbg !1381
  br label %78, !dbg !1382

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !1383

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !1385

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !1387
  ret i32 %82, !dbg !1388
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetCpuUsedMs(%struct._VMGuestLibHandle*, i64*) #0 !dbg !1389 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !1393, metadata !272), !dbg !1394
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1395, metadata !272), !dbg !1396
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1397, metadata !272), !dbg !1398
  store i32 1, i32* %5, align 4, !dbg !1398
  br label %10, !dbg !1399, !llvm.loop !1400

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1401, metadata !272), !dbg !1403
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1404
  %12 = load i64*, i64** %4, align 8, !dbg !1406
  %13 = bitcast i64* %12 to i8*, !dbg !1407
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !1408
  store i32 %14, i32* %5, align 4, !dbg !1409
  %15 = load i32, i32* %5, align 4, !dbg !1410
  %16 = icmp ne i32 0, %15, !dbg !1411
  br i1 %16, label %17, label %18, !dbg !1412

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !1413

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1417
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !1420
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !1420
  %22 = load i32, i32* %21, align 8, !dbg !1420
  %23 = icmp eq i32 %22, 2, !dbg !1421
  br i1 %23, label %24, label %44, !dbg !1422

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !1423, !llvm.loop !1426

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !1428, metadata !272), !dbg !1430
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1431
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !1433
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !1433
  %29 = load i8*, i8** %28, align 8, !dbg !1433
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !1434
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1435
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1436
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 4, !dbg !1437
  %33 = getelementptr inbounds %struct.StatUint64, %struct.StatUint64* %32, i32 0, i32 0, !dbg !1438
  %34 = load i8, i8* %33, align 1, !dbg !1438
  %35 = icmp ne i8 %34, 0, !dbg !1436
  br i1 %35, label %37, label %36, !dbg !1439

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !1440
  br label %43, !dbg !1444

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1445
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 4, !dbg !1447
  %40 = getelementptr inbounds %struct.StatUint64, %struct.StatUint64* %39, i32 0, i32 2, !dbg !1448
  %41 = load i64, i64* %40, align 1, !dbg !1448
  %42 = load i64*, i64** %4, align 8, !dbg !1449
  store i64 %41, i64* %42, align 8, !dbg !1450
  store i32 0, i32* %5, align 4, !dbg !1451
  br label %43, !dbg !1452

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !1453

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1455
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !1458
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !1458
  %48 = load i32, i32* %47, align 8, !dbg !1458
  %49 = icmp eq i32 %48, 3, !dbg !1459
  br i1 %49, label %50, label %79, !dbg !1460

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !1461, !llvm.loop !1464

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1466, metadata !272), !dbg !1468
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !1469, metadata !272), !dbg !1470
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1471
  %53 = load i64*, i64** %4, align 8, !dbg !1473
  %54 = bitcast i64* %53 to i8*, !dbg !1474
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !1475
  store i32 %55, i32* %5, align 4, !dbg !1476
  %56 = load i32, i32* %5, align 4, !dbg !1477
  %57 = icmp ne i32 0, %56, !dbg !1478
  br i1 %57, label %58, label %59, !dbg !1479

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !1480

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1484
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 4, %struct.GuestLibV3Stat* %9), !dbg !1486
  store i32 %61, i32* %5, align 4, !dbg !1487
  %62 = load i32, i32* %5, align 4, !dbg !1488
  %63 = icmp ne i32 %62, 0, !dbg !1489
  br i1 %63, label %64, label %65, !dbg !1490

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !1491

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1495
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint64*, !dbg !1498
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %67, i32 0, i32 0, !dbg !1499
  %69 = load i8, i8* %68, align 8, !dbg !1499
  %70 = icmp ne i8 %69, 0, !dbg !1500
  br i1 %70, label %72, label %71, !dbg !1501

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !1502
  br label %78, !dbg !1505

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1506
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint64*, !dbg !1508
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %74, i32 0, i32 1, !dbg !1509
  %76 = load i64, i64* %75, align 8, !dbg !1509
  %77 = load i64*, i64** %4, align 8, !dbg !1510
  store i64 %76, i64* %77, align 8, !dbg !1511
  store i32 0, i32* %5, align 4, !dbg !1512
  br label %78, !dbg !1513

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !1514

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !1516

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !1518
  ret i32 %82, !dbg !1519
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetHostProcessorSpeed(%struct._VMGuestLibHandle*, i32*) #0 !dbg !1520 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !1521, metadata !272), !dbg !1522
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1523, metadata !272), !dbg !1524
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1525, metadata !272), !dbg !1526
  store i32 1, i32* %5, align 4, !dbg !1526
  br label %10, !dbg !1527, !llvm.loop !1528

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1529, metadata !272), !dbg !1531
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1532
  %12 = load i32*, i32** %4, align 8, !dbg !1534
  %13 = bitcast i32* %12 to i8*, !dbg !1535
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !1536
  store i32 %14, i32* %5, align 4, !dbg !1537
  %15 = load i32, i32* %5, align 4, !dbg !1538
  %16 = icmp ne i32 0, %15, !dbg !1539
  br i1 %16, label %17, label %18, !dbg !1540

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !1541

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1545
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !1548
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !1548
  %22 = load i32, i32* %21, align 8, !dbg !1548
  %23 = icmp eq i32 %22, 2, !dbg !1549
  br i1 %23, label %24, label %44, !dbg !1550

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !1551, !llvm.loop !1554

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !1556, metadata !272), !dbg !1558
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1559
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !1561
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !1561
  %29 = load i8*, i8** %28, align 8, !dbg !1561
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !1562
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1563
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1564
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 5, !dbg !1565
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !1566
  %34 = load i8, i8* %33, align 1, !dbg !1566
  %35 = icmp ne i8 %34, 0, !dbg !1564
  br i1 %35, label %37, label %36, !dbg !1567

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !1568
  br label %43, !dbg !1572

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1573
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 5, !dbg !1575
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !1576
  %41 = load i32, i32* %40, align 1, !dbg !1576
  %42 = load i32*, i32** %4, align 8, !dbg !1577
  store i32 %41, i32* %42, align 4, !dbg !1578
  store i32 0, i32* %5, align 4, !dbg !1579
  br label %43, !dbg !1580

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !1581

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1583
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !1586
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !1586
  %48 = load i32, i32* %47, align 8, !dbg !1586
  %49 = icmp eq i32 %48, 3, !dbg !1587
  br i1 %49, label %50, label %79, !dbg !1588

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !1589, !llvm.loop !1592

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1594, metadata !272), !dbg !1596
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !1597, metadata !272), !dbg !1598
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1599
  %53 = load i32*, i32** %4, align 8, !dbg !1601
  %54 = bitcast i32* %53 to i8*, !dbg !1602
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !1603
  store i32 %55, i32* %5, align 4, !dbg !1604
  %56 = load i32, i32* %5, align 4, !dbg !1605
  %57 = icmp ne i32 0, %56, !dbg !1606
  br i1 %57, label %58, label %59, !dbg !1607

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !1608

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1612
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 5, %struct.GuestLibV3Stat* %9), !dbg !1614
  store i32 %61, i32* %5, align 4, !dbg !1615
  %62 = load i32, i32* %5, align 4, !dbg !1616
  %63 = icmp ne i32 %62, 0, !dbg !1617
  br i1 %63, label %64, label %65, !dbg !1618

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !1619

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1623
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !1626
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !1627
  %69 = load i8, i8* %68, align 8, !dbg !1627
  %70 = icmp ne i8 %69, 0, !dbg !1628
  br i1 %70, label %72, label %71, !dbg !1629

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !1630
  br label %78, !dbg !1633

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1634
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !1636
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !1637
  %76 = load i32, i32* %75, align 4, !dbg !1637
  %77 = load i32*, i32** %4, align 8, !dbg !1638
  store i32 %76, i32* %77, align 4, !dbg !1639
  store i32 0, i32* %5, align 4, !dbg !1640
  br label %78, !dbg !1641

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !1642

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !1644

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !1646
  ret i32 %82, !dbg !1647
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemReservationMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !1648 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !1649, metadata !272), !dbg !1650
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1651, metadata !272), !dbg !1652
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1653, metadata !272), !dbg !1654
  store i32 1, i32* %5, align 4, !dbg !1654
  br label %10, !dbg !1655, !llvm.loop !1656

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1657, metadata !272), !dbg !1659
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1660
  %12 = load i32*, i32** %4, align 8, !dbg !1662
  %13 = bitcast i32* %12 to i8*, !dbg !1663
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !1664
  store i32 %14, i32* %5, align 4, !dbg !1665
  %15 = load i32, i32* %5, align 4, !dbg !1666
  %16 = icmp ne i32 0, %15, !dbg !1667
  br i1 %16, label %17, label %18, !dbg !1668

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !1669

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1673
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !1676
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !1676
  %22 = load i32, i32* %21, align 8, !dbg !1676
  %23 = icmp eq i32 %22, 2, !dbg !1677
  br i1 %23, label %24, label %44, !dbg !1678

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !1679, !llvm.loop !1682

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !1684, metadata !272), !dbg !1686
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1687
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !1689
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !1689
  %29 = load i8*, i8** %28, align 8, !dbg !1689
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !1690
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1691
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1692
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 6, !dbg !1693
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !1694
  %34 = load i8, i8* %33, align 1, !dbg !1694
  %35 = icmp ne i8 %34, 0, !dbg !1692
  br i1 %35, label %37, label %36, !dbg !1695

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !1696
  br label %43, !dbg !1700

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1701
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 6, !dbg !1703
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !1704
  %41 = load i32, i32* %40, align 1, !dbg !1704
  %42 = load i32*, i32** %4, align 8, !dbg !1705
  store i32 %41, i32* %42, align 4, !dbg !1706
  store i32 0, i32* %5, align 4, !dbg !1707
  br label %43, !dbg !1708

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !1709

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1711
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !1714
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !1714
  %48 = load i32, i32* %47, align 8, !dbg !1714
  %49 = icmp eq i32 %48, 3, !dbg !1715
  br i1 %49, label %50, label %79, !dbg !1716

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !1717, !llvm.loop !1720

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1722, metadata !272), !dbg !1724
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !1725, metadata !272), !dbg !1726
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1727
  %53 = load i32*, i32** %4, align 8, !dbg !1729
  %54 = bitcast i32* %53 to i8*, !dbg !1730
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !1731
  store i32 %55, i32* %5, align 4, !dbg !1732
  %56 = load i32, i32* %5, align 4, !dbg !1733
  %57 = icmp ne i32 0, %56, !dbg !1734
  br i1 %57, label %58, label %59, !dbg !1735

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !1736

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1740
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 6, %struct.GuestLibV3Stat* %9), !dbg !1742
  store i32 %61, i32* %5, align 4, !dbg !1743
  %62 = load i32, i32* %5, align 4, !dbg !1744
  %63 = icmp ne i32 %62, 0, !dbg !1745
  br i1 %63, label %64, label %65, !dbg !1746

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !1747

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1751
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !1754
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !1755
  %69 = load i8, i8* %68, align 8, !dbg !1755
  %70 = icmp ne i8 %69, 0, !dbg !1756
  br i1 %70, label %72, label %71, !dbg !1757

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !1758
  br label %78, !dbg !1761

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1762
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !1764
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !1765
  %76 = load i32, i32* %75, align 4, !dbg !1765
  %77 = load i32*, i32** %4, align 8, !dbg !1766
  store i32 %76, i32* %77, align 4, !dbg !1767
  store i32 0, i32* %5, align 4, !dbg !1768
  br label %78, !dbg !1769

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !1770

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !1772

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !1774
  ret i32 %82, !dbg !1775
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemLimitMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !1776 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !1777, metadata !272), !dbg !1778
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1779, metadata !272), !dbg !1780
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1781, metadata !272), !dbg !1782
  store i32 1, i32* %5, align 4, !dbg !1782
  br label %10, !dbg !1783, !llvm.loop !1784

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1785, metadata !272), !dbg !1787
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1788
  %12 = load i32*, i32** %4, align 8, !dbg !1790
  %13 = bitcast i32* %12 to i8*, !dbg !1791
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !1792
  store i32 %14, i32* %5, align 4, !dbg !1793
  %15 = load i32, i32* %5, align 4, !dbg !1794
  %16 = icmp ne i32 0, %15, !dbg !1795
  br i1 %16, label %17, label %18, !dbg !1796

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !1797

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1801
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !1804
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !1804
  %22 = load i32, i32* %21, align 8, !dbg !1804
  %23 = icmp eq i32 %22, 2, !dbg !1805
  br i1 %23, label %24, label %44, !dbg !1806

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !1807, !llvm.loop !1810

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !1812, metadata !272), !dbg !1814
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1815
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !1817
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !1817
  %29 = load i8*, i8** %28, align 8, !dbg !1817
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !1818
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1819
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1820
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 7, !dbg !1821
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !1822
  %34 = load i8, i8* %33, align 1, !dbg !1822
  %35 = icmp ne i8 %34, 0, !dbg !1820
  br i1 %35, label %37, label %36, !dbg !1823

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !1824
  br label %43, !dbg !1828

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1829
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 7, !dbg !1831
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !1832
  %41 = load i32, i32* %40, align 1, !dbg !1832
  %42 = load i32*, i32** %4, align 8, !dbg !1833
  store i32 %41, i32* %42, align 4, !dbg !1834
  store i32 0, i32* %5, align 4, !dbg !1835
  br label %43, !dbg !1836

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !1837

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1839
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !1842
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !1842
  %48 = load i32, i32* %47, align 8, !dbg !1842
  %49 = icmp eq i32 %48, 3, !dbg !1843
  br i1 %49, label %50, label %79, !dbg !1844

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !1845, !llvm.loop !1848

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1850, metadata !272), !dbg !1852
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !1853, metadata !272), !dbg !1854
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1855
  %53 = load i32*, i32** %4, align 8, !dbg !1857
  %54 = bitcast i32* %53 to i8*, !dbg !1858
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !1859
  store i32 %55, i32* %5, align 4, !dbg !1860
  %56 = load i32, i32* %5, align 4, !dbg !1861
  %57 = icmp ne i32 0, %56, !dbg !1862
  br i1 %57, label %58, label %59, !dbg !1863

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !1864

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1868
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 7, %struct.GuestLibV3Stat* %9), !dbg !1870
  store i32 %61, i32* %5, align 4, !dbg !1871
  %62 = load i32, i32* %5, align 4, !dbg !1872
  %63 = icmp ne i32 %62, 0, !dbg !1873
  br i1 %63, label %64, label %65, !dbg !1874

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !1875

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1879
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !1882
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !1883
  %69 = load i8, i8* %68, align 8, !dbg !1883
  %70 = icmp ne i8 %69, 0, !dbg !1884
  br i1 %70, label %72, label %71, !dbg !1885

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !1886
  br label %78, !dbg !1889

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !1890
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !1892
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !1893
  %76 = load i32, i32* %75, align 4, !dbg !1893
  %77 = load i32*, i32** %4, align 8, !dbg !1894
  store i32 %76, i32* %77, align 4, !dbg !1895
  store i32 0, i32* %5, align 4, !dbg !1896
  br label %78, !dbg !1897

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !1898

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !1900

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !1902
  ret i32 %82, !dbg !1903
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemShares(%struct._VMGuestLibHandle*, i32*) #0 !dbg !1904 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !1905, metadata !272), !dbg !1906
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1907, metadata !272), !dbg !1908
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1909, metadata !272), !dbg !1910
  store i32 1, i32* %5, align 4, !dbg !1910
  br label %10, !dbg !1911, !llvm.loop !1912

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1913, metadata !272), !dbg !1915
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1916
  %12 = load i32*, i32** %4, align 8, !dbg !1918
  %13 = bitcast i32* %12 to i8*, !dbg !1919
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !1920
  store i32 %14, i32* %5, align 4, !dbg !1921
  %15 = load i32, i32* %5, align 4, !dbg !1922
  %16 = icmp ne i32 0, %15, !dbg !1923
  br i1 %16, label %17, label %18, !dbg !1924

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !1925

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1929
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !1932
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !1932
  %22 = load i32, i32* %21, align 8, !dbg !1932
  %23 = icmp eq i32 %22, 2, !dbg !1933
  br i1 %23, label %24, label %44, !dbg !1934

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !1935, !llvm.loop !1938

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !1940, metadata !272), !dbg !1942
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1943
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !1945
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !1945
  %29 = load i8*, i8** %28, align 8, !dbg !1945
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !1946
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1947
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1948
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 8, !dbg !1949
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !1950
  %34 = load i8, i8* %33, align 1, !dbg !1950
  %35 = icmp ne i8 %34, 0, !dbg !1948
  br i1 %35, label %37, label %36, !dbg !1951

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !1952
  br label %43, !dbg !1956

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !1957
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 8, !dbg !1959
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !1960
  %41 = load i32, i32* %40, align 1, !dbg !1960
  %42 = load i32*, i32** %4, align 8, !dbg !1961
  store i32 %41, i32* %42, align 4, !dbg !1962
  store i32 0, i32* %5, align 4, !dbg !1963
  br label %43, !dbg !1964

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !1965

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1967
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !1970
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !1970
  %48 = load i32, i32* %47, align 8, !dbg !1970
  %49 = icmp eq i32 %48, 3, !dbg !1971
  br i1 %49, label %50, label %79, !dbg !1972

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !1973, !llvm.loop !1976

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1978, metadata !272), !dbg !1980
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !1981, metadata !272), !dbg !1982
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1983
  %53 = load i32*, i32** %4, align 8, !dbg !1985
  %54 = bitcast i32* %53 to i8*, !dbg !1986
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !1987
  store i32 %55, i32* %5, align 4, !dbg !1988
  %56 = load i32, i32* %5, align 4, !dbg !1989
  %57 = icmp ne i32 0, %56, !dbg !1990
  br i1 %57, label %58, label %59, !dbg !1991

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !1992

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !1996
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 8, %struct.GuestLibV3Stat* %9), !dbg !1998
  store i32 %61, i32* %5, align 4, !dbg !1999
  %62 = load i32, i32* %5, align 4, !dbg !2000
  %63 = icmp ne i32 %62, 0, !dbg !2001
  br i1 %63, label %64, label %65, !dbg !2002

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !2003

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2007
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !2010
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !2011
  %69 = load i8, i8* %68, align 8, !dbg !2011
  %70 = icmp ne i8 %69, 0, !dbg !2012
  br i1 %70, label %72, label %71, !dbg !2013

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !2014
  br label %78, !dbg !2017

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2018
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !2020
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !2021
  %76 = load i32, i32* %75, align 4, !dbg !2021
  %77 = load i32*, i32** %4, align 8, !dbg !2022
  store i32 %76, i32* %77, align 4, !dbg !2023
  store i32 0, i32* %5, align 4, !dbg !2024
  br label %78, !dbg !2025

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !2026

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !2028

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !2030
  ret i32 %82, !dbg !2031
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemMappedMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !2032 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !2033, metadata !272), !dbg !2034
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2035, metadata !272), !dbg !2036
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2037, metadata !272), !dbg !2038
  store i32 1, i32* %5, align 4, !dbg !2038
  br label %10, !dbg !2039, !llvm.loop !2040

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2041, metadata !272), !dbg !2043
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2044
  %12 = load i32*, i32** %4, align 8, !dbg !2046
  %13 = bitcast i32* %12 to i8*, !dbg !2047
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !2048
  store i32 %14, i32* %5, align 4, !dbg !2049
  %15 = load i32, i32* %5, align 4, !dbg !2050
  %16 = icmp ne i32 0, %15, !dbg !2051
  br i1 %16, label %17, label %18, !dbg !2052

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !2053

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2057
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !2060
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !2060
  %22 = load i32, i32* %21, align 8, !dbg !2060
  %23 = icmp eq i32 %22, 2, !dbg !2061
  br i1 %23, label %24, label %44, !dbg !2062

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !2063, !llvm.loop !2066

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !2068, metadata !272), !dbg !2070
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2071
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !2073
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !2073
  %29 = load i8*, i8** %28, align 8, !dbg !2073
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !2074
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2075
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2076
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 9, !dbg !2077
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !2078
  %34 = load i8, i8* %33, align 1, !dbg !2078
  %35 = icmp ne i8 %34, 0, !dbg !2076
  br i1 %35, label %37, label %36, !dbg !2079

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !2080
  br label %43, !dbg !2084

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2085
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 9, !dbg !2087
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !2088
  %41 = load i32, i32* %40, align 1, !dbg !2088
  %42 = load i32*, i32** %4, align 8, !dbg !2089
  store i32 %41, i32* %42, align 4, !dbg !2090
  store i32 0, i32* %5, align 4, !dbg !2091
  br label %43, !dbg !2092

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !2093

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2095
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !2098
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !2098
  %48 = load i32, i32* %47, align 8, !dbg !2098
  %49 = icmp eq i32 %48, 3, !dbg !2099
  br i1 %49, label %50, label %79, !dbg !2100

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !2101, !llvm.loop !2104

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2106, metadata !272), !dbg !2108
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !2109, metadata !272), !dbg !2110
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2111
  %53 = load i32*, i32** %4, align 8, !dbg !2113
  %54 = bitcast i32* %53 to i8*, !dbg !2114
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !2115
  store i32 %55, i32* %5, align 4, !dbg !2116
  %56 = load i32, i32* %5, align 4, !dbg !2117
  %57 = icmp ne i32 0, %56, !dbg !2118
  br i1 %57, label %58, label %59, !dbg !2119

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !2120

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2124
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 9, %struct.GuestLibV3Stat* %9), !dbg !2126
  store i32 %61, i32* %5, align 4, !dbg !2127
  %62 = load i32, i32* %5, align 4, !dbg !2128
  %63 = icmp ne i32 %62, 0, !dbg !2129
  br i1 %63, label %64, label %65, !dbg !2130

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !2131

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2135
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !2138
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !2139
  %69 = load i8, i8* %68, align 8, !dbg !2139
  %70 = icmp ne i8 %69, 0, !dbg !2140
  br i1 %70, label %72, label %71, !dbg !2141

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !2142
  br label %78, !dbg !2145

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2146
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !2148
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !2149
  %76 = load i32, i32* %75, align 4, !dbg !2149
  %77 = load i32*, i32** %4, align 8, !dbg !2150
  store i32 %76, i32* %77, align 4, !dbg !2151
  store i32 0, i32* %5, align 4, !dbg !2152
  br label %78, !dbg !2153

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !2154

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !2156

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !2158
  ret i32 %82, !dbg !2159
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemActiveMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !2160 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !2161, metadata !272), !dbg !2162
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2163, metadata !272), !dbg !2164
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2165, metadata !272), !dbg !2166
  store i32 1, i32* %5, align 4, !dbg !2166
  br label %10, !dbg !2167, !llvm.loop !2168

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2169, metadata !272), !dbg !2171
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2172
  %12 = load i32*, i32** %4, align 8, !dbg !2174
  %13 = bitcast i32* %12 to i8*, !dbg !2175
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !2176
  store i32 %14, i32* %5, align 4, !dbg !2177
  %15 = load i32, i32* %5, align 4, !dbg !2178
  %16 = icmp ne i32 0, %15, !dbg !2179
  br i1 %16, label %17, label %18, !dbg !2180

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !2181

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2185
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !2188
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !2188
  %22 = load i32, i32* %21, align 8, !dbg !2188
  %23 = icmp eq i32 %22, 2, !dbg !2189
  br i1 %23, label %24, label %44, !dbg !2190

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !2191, !llvm.loop !2194

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !2196, metadata !272), !dbg !2198
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2199
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !2201
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !2201
  %29 = load i8*, i8** %28, align 8, !dbg !2201
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !2202
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2203
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2204
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 10, !dbg !2205
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !2206
  %34 = load i8, i8* %33, align 1, !dbg !2206
  %35 = icmp ne i8 %34, 0, !dbg !2204
  br i1 %35, label %37, label %36, !dbg !2207

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !2208
  br label %43, !dbg !2212

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2213
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 10, !dbg !2215
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !2216
  %41 = load i32, i32* %40, align 1, !dbg !2216
  %42 = load i32*, i32** %4, align 8, !dbg !2217
  store i32 %41, i32* %42, align 4, !dbg !2218
  store i32 0, i32* %5, align 4, !dbg !2219
  br label %43, !dbg !2220

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !2221

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2223
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !2226
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !2226
  %48 = load i32, i32* %47, align 8, !dbg !2226
  %49 = icmp eq i32 %48, 3, !dbg !2227
  br i1 %49, label %50, label %79, !dbg !2228

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !2229, !llvm.loop !2232

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2234, metadata !272), !dbg !2236
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !2237, metadata !272), !dbg !2238
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2239
  %53 = load i32*, i32** %4, align 8, !dbg !2241
  %54 = bitcast i32* %53 to i8*, !dbg !2242
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !2243
  store i32 %55, i32* %5, align 4, !dbg !2244
  %56 = load i32, i32* %5, align 4, !dbg !2245
  %57 = icmp ne i32 0, %56, !dbg !2246
  br i1 %57, label %58, label %59, !dbg !2247

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !2248

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2252
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 10, %struct.GuestLibV3Stat* %9), !dbg !2254
  store i32 %61, i32* %5, align 4, !dbg !2255
  %62 = load i32, i32* %5, align 4, !dbg !2256
  %63 = icmp ne i32 %62, 0, !dbg !2257
  br i1 %63, label %64, label %65, !dbg !2258

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !2259

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2263
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !2266
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !2267
  %69 = load i8, i8* %68, align 8, !dbg !2267
  %70 = icmp ne i8 %69, 0, !dbg !2268
  br i1 %70, label %72, label %71, !dbg !2269

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !2270
  br label %78, !dbg !2273

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2274
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !2276
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !2277
  %76 = load i32, i32* %75, align 4, !dbg !2277
  %77 = load i32*, i32** %4, align 8, !dbg !2278
  store i32 %76, i32* %77, align 4, !dbg !2279
  store i32 0, i32* %5, align 4, !dbg !2280
  br label %78, !dbg !2281

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !2282

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !2284

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !2286
  ret i32 %82, !dbg !2287
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemOverheadMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !2288 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !2289, metadata !272), !dbg !2290
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2291, metadata !272), !dbg !2292
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2293, metadata !272), !dbg !2294
  store i32 1, i32* %5, align 4, !dbg !2294
  br label %10, !dbg !2295, !llvm.loop !2296

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2297, metadata !272), !dbg !2299
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2300
  %12 = load i32*, i32** %4, align 8, !dbg !2302
  %13 = bitcast i32* %12 to i8*, !dbg !2303
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !2304
  store i32 %14, i32* %5, align 4, !dbg !2305
  %15 = load i32, i32* %5, align 4, !dbg !2306
  %16 = icmp ne i32 0, %15, !dbg !2307
  br i1 %16, label %17, label %18, !dbg !2308

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !2309

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2313
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !2316
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !2316
  %22 = load i32, i32* %21, align 8, !dbg !2316
  %23 = icmp eq i32 %22, 2, !dbg !2317
  br i1 %23, label %24, label %44, !dbg !2318

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !2319, !llvm.loop !2322

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !2324, metadata !272), !dbg !2326
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2327
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !2329
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !2329
  %29 = load i8*, i8** %28, align 8, !dbg !2329
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !2330
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2331
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2332
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 11, !dbg !2333
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !2334
  %34 = load i8, i8* %33, align 1, !dbg !2334
  %35 = icmp ne i8 %34, 0, !dbg !2332
  br i1 %35, label %37, label %36, !dbg !2335

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !2336
  br label %43, !dbg !2340

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2341
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 11, !dbg !2343
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !2344
  %41 = load i32, i32* %40, align 1, !dbg !2344
  %42 = load i32*, i32** %4, align 8, !dbg !2345
  store i32 %41, i32* %42, align 4, !dbg !2346
  store i32 0, i32* %5, align 4, !dbg !2347
  br label %43, !dbg !2348

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !2349

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2351
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !2354
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !2354
  %48 = load i32, i32* %47, align 8, !dbg !2354
  %49 = icmp eq i32 %48, 3, !dbg !2355
  br i1 %49, label %50, label %79, !dbg !2356

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !2357, !llvm.loop !2360

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2362, metadata !272), !dbg !2364
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !2365, metadata !272), !dbg !2366
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2367
  %53 = load i32*, i32** %4, align 8, !dbg !2369
  %54 = bitcast i32* %53 to i8*, !dbg !2370
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !2371
  store i32 %55, i32* %5, align 4, !dbg !2372
  %56 = load i32, i32* %5, align 4, !dbg !2373
  %57 = icmp ne i32 0, %56, !dbg !2374
  br i1 %57, label %58, label %59, !dbg !2375

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !2376

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2380
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 11, %struct.GuestLibV3Stat* %9), !dbg !2382
  store i32 %61, i32* %5, align 4, !dbg !2383
  %62 = load i32, i32* %5, align 4, !dbg !2384
  %63 = icmp ne i32 %62, 0, !dbg !2385
  br i1 %63, label %64, label %65, !dbg !2386

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !2387

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2391
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !2394
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !2395
  %69 = load i8, i8* %68, align 8, !dbg !2395
  %70 = icmp ne i8 %69, 0, !dbg !2396
  br i1 %70, label %72, label %71, !dbg !2397

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !2398
  br label %78, !dbg !2401

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2402
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !2404
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !2405
  %76 = load i32, i32* %75, align 4, !dbg !2405
  %77 = load i32*, i32** %4, align 8, !dbg !2406
  store i32 %76, i32* %77, align 4, !dbg !2407
  store i32 0, i32* %5, align 4, !dbg !2408
  br label %78, !dbg !2409

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !2410

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !2412

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !2414
  ret i32 %82, !dbg !2415
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemBalloonedMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !2416 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !2417, metadata !272), !dbg !2418
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2419, metadata !272), !dbg !2420
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2421, metadata !272), !dbg !2422
  store i32 1, i32* %5, align 4, !dbg !2422
  br label %10, !dbg !2423, !llvm.loop !2424

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2425, metadata !272), !dbg !2427
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2428
  %12 = load i32*, i32** %4, align 8, !dbg !2430
  %13 = bitcast i32* %12 to i8*, !dbg !2431
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !2432
  store i32 %14, i32* %5, align 4, !dbg !2433
  %15 = load i32, i32* %5, align 4, !dbg !2434
  %16 = icmp ne i32 0, %15, !dbg !2435
  br i1 %16, label %17, label %18, !dbg !2436

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !2437

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2441
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !2444
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !2444
  %22 = load i32, i32* %21, align 8, !dbg !2444
  %23 = icmp eq i32 %22, 2, !dbg !2445
  br i1 %23, label %24, label %44, !dbg !2446

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !2447, !llvm.loop !2450

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !2452, metadata !272), !dbg !2454
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2455
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !2457
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !2457
  %29 = load i8*, i8** %28, align 8, !dbg !2457
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !2458
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2459
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2460
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 12, !dbg !2461
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !2462
  %34 = load i8, i8* %33, align 1, !dbg !2462
  %35 = icmp ne i8 %34, 0, !dbg !2460
  br i1 %35, label %37, label %36, !dbg !2463

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !2464
  br label %43, !dbg !2468

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2469
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 12, !dbg !2471
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !2472
  %41 = load i32, i32* %40, align 1, !dbg !2472
  %42 = load i32*, i32** %4, align 8, !dbg !2473
  store i32 %41, i32* %42, align 4, !dbg !2474
  store i32 0, i32* %5, align 4, !dbg !2475
  br label %43, !dbg !2476

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !2477

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2479
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !2482
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !2482
  %48 = load i32, i32* %47, align 8, !dbg !2482
  %49 = icmp eq i32 %48, 3, !dbg !2483
  br i1 %49, label %50, label %79, !dbg !2484

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !2485, !llvm.loop !2488

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2490, metadata !272), !dbg !2492
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !2493, metadata !272), !dbg !2494
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2495
  %53 = load i32*, i32** %4, align 8, !dbg !2497
  %54 = bitcast i32* %53 to i8*, !dbg !2498
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !2499
  store i32 %55, i32* %5, align 4, !dbg !2500
  %56 = load i32, i32* %5, align 4, !dbg !2501
  %57 = icmp ne i32 0, %56, !dbg !2502
  br i1 %57, label %58, label %59, !dbg !2503

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !2504

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2508
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 12, %struct.GuestLibV3Stat* %9), !dbg !2510
  store i32 %61, i32* %5, align 4, !dbg !2511
  %62 = load i32, i32* %5, align 4, !dbg !2512
  %63 = icmp ne i32 %62, 0, !dbg !2513
  br i1 %63, label %64, label %65, !dbg !2514

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !2515

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2519
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !2522
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !2523
  %69 = load i8, i8* %68, align 8, !dbg !2523
  %70 = icmp ne i8 %69, 0, !dbg !2524
  br i1 %70, label %72, label %71, !dbg !2525

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !2526
  br label %78, !dbg !2529

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2530
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !2532
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !2533
  %76 = load i32, i32* %75, align 4, !dbg !2533
  %77 = load i32*, i32** %4, align 8, !dbg !2534
  store i32 %76, i32* %77, align 4, !dbg !2535
  store i32 0, i32* %5, align 4, !dbg !2536
  br label %78, !dbg !2537

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !2538

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !2540

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !2542
  ret i32 %82, !dbg !2543
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemSwappedMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !2544 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !2545, metadata !272), !dbg !2546
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2547, metadata !272), !dbg !2548
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2549, metadata !272), !dbg !2550
  store i32 1, i32* %5, align 4, !dbg !2550
  br label %10, !dbg !2551, !llvm.loop !2552

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2553, metadata !272), !dbg !2555
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2556
  %12 = load i32*, i32** %4, align 8, !dbg !2558
  %13 = bitcast i32* %12 to i8*, !dbg !2559
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !2560
  store i32 %14, i32* %5, align 4, !dbg !2561
  %15 = load i32, i32* %5, align 4, !dbg !2562
  %16 = icmp ne i32 0, %15, !dbg !2563
  br i1 %16, label %17, label %18, !dbg !2564

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !2565

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2569
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !2572
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !2572
  %22 = load i32, i32* %21, align 8, !dbg !2572
  %23 = icmp eq i32 %22, 2, !dbg !2573
  br i1 %23, label %24, label %44, !dbg !2574

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !2575, !llvm.loop !2578

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !2580, metadata !272), !dbg !2582
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2583
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !2585
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !2585
  %29 = load i8*, i8** %28, align 8, !dbg !2585
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !2586
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2587
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2588
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 13, !dbg !2589
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !2590
  %34 = load i8, i8* %33, align 1, !dbg !2590
  %35 = icmp ne i8 %34, 0, !dbg !2588
  br i1 %35, label %37, label %36, !dbg !2591

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !2592
  br label %43, !dbg !2596

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2597
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 13, !dbg !2599
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !2600
  %41 = load i32, i32* %40, align 1, !dbg !2600
  %42 = load i32*, i32** %4, align 8, !dbg !2601
  store i32 %41, i32* %42, align 4, !dbg !2602
  store i32 0, i32* %5, align 4, !dbg !2603
  br label %43, !dbg !2604

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !2605

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2607
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !2610
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !2610
  %48 = load i32, i32* %47, align 8, !dbg !2610
  %49 = icmp eq i32 %48, 3, !dbg !2611
  br i1 %49, label %50, label %79, !dbg !2612

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !2613, !llvm.loop !2616

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2618, metadata !272), !dbg !2620
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !2621, metadata !272), !dbg !2622
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2623
  %53 = load i32*, i32** %4, align 8, !dbg !2625
  %54 = bitcast i32* %53 to i8*, !dbg !2626
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !2627
  store i32 %55, i32* %5, align 4, !dbg !2628
  %56 = load i32, i32* %5, align 4, !dbg !2629
  %57 = icmp ne i32 0, %56, !dbg !2630
  br i1 %57, label %58, label %59, !dbg !2631

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !2632

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2636
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 13, %struct.GuestLibV3Stat* %9), !dbg !2638
  store i32 %61, i32* %5, align 4, !dbg !2639
  %62 = load i32, i32* %5, align 4, !dbg !2640
  %63 = icmp ne i32 %62, 0, !dbg !2641
  br i1 %63, label %64, label %65, !dbg !2642

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !2643

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2647
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !2650
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !2651
  %69 = load i8, i8* %68, align 8, !dbg !2651
  %70 = icmp ne i8 %69, 0, !dbg !2652
  br i1 %70, label %72, label %71, !dbg !2653

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !2654
  br label %78, !dbg !2657

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2658
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !2660
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !2661
  %76 = load i32, i32* %75, align 4, !dbg !2661
  %77 = load i32*, i32** %4, align 8, !dbg !2662
  store i32 %76, i32* %77, align 4, !dbg !2663
  store i32 0, i32* %5, align 4, !dbg !2664
  br label %78, !dbg !2665

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !2666

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !2668

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !2670
  ret i32 %82, !dbg !2671
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemSharedMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !2672 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !2673, metadata !272), !dbg !2674
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2675, metadata !272), !dbg !2676
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2677, metadata !272), !dbg !2678
  store i32 1, i32* %5, align 4, !dbg !2678
  br label %10, !dbg !2679, !llvm.loop !2680

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2681, metadata !272), !dbg !2683
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2684
  %12 = load i32*, i32** %4, align 8, !dbg !2686
  %13 = bitcast i32* %12 to i8*, !dbg !2687
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !2688
  store i32 %14, i32* %5, align 4, !dbg !2689
  %15 = load i32, i32* %5, align 4, !dbg !2690
  %16 = icmp ne i32 0, %15, !dbg !2691
  br i1 %16, label %17, label %18, !dbg !2692

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !2693

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2697
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !2700
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !2700
  %22 = load i32, i32* %21, align 8, !dbg !2700
  %23 = icmp eq i32 %22, 2, !dbg !2701
  br i1 %23, label %24, label %44, !dbg !2702

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !2703, !llvm.loop !2706

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !2708, metadata !272), !dbg !2710
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2711
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !2713
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !2713
  %29 = load i8*, i8** %28, align 8, !dbg !2713
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !2714
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2715
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2716
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 14, !dbg !2717
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !2718
  %34 = load i8, i8* %33, align 1, !dbg !2718
  %35 = icmp ne i8 %34, 0, !dbg !2716
  br i1 %35, label %37, label %36, !dbg !2719

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !2720
  br label %43, !dbg !2724

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2725
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 14, !dbg !2727
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !2728
  %41 = load i32, i32* %40, align 1, !dbg !2728
  %42 = load i32*, i32** %4, align 8, !dbg !2729
  store i32 %41, i32* %42, align 4, !dbg !2730
  store i32 0, i32* %5, align 4, !dbg !2731
  br label %43, !dbg !2732

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !2733

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2735
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !2738
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !2738
  %48 = load i32, i32* %47, align 8, !dbg !2738
  %49 = icmp eq i32 %48, 3, !dbg !2739
  br i1 %49, label %50, label %79, !dbg !2740

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !2741, !llvm.loop !2744

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2746, metadata !272), !dbg !2748
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !2749, metadata !272), !dbg !2750
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2751
  %53 = load i32*, i32** %4, align 8, !dbg !2753
  %54 = bitcast i32* %53 to i8*, !dbg !2754
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !2755
  store i32 %55, i32* %5, align 4, !dbg !2756
  %56 = load i32, i32* %5, align 4, !dbg !2757
  %57 = icmp ne i32 0, %56, !dbg !2758
  br i1 %57, label %58, label %59, !dbg !2759

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !2760

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2764
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 14, %struct.GuestLibV3Stat* %9), !dbg !2766
  store i32 %61, i32* %5, align 4, !dbg !2767
  %62 = load i32, i32* %5, align 4, !dbg !2768
  %63 = icmp ne i32 %62, 0, !dbg !2769
  br i1 %63, label %64, label %65, !dbg !2770

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !2771

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2775
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !2778
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !2779
  %69 = load i8, i8* %68, align 8, !dbg !2779
  %70 = icmp ne i8 %69, 0, !dbg !2780
  br i1 %70, label %72, label %71, !dbg !2781

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !2782
  br label %78, !dbg !2785

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2786
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !2788
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !2789
  %76 = load i32, i32* %75, align 4, !dbg !2789
  %77 = load i32*, i32** %4, align 8, !dbg !2790
  store i32 %76, i32* %77, align 4, !dbg !2791
  store i32 0, i32* %5, align 4, !dbg !2792
  br label %78, !dbg !2793

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !2794

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !2796

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !2798
  ret i32 %82, !dbg !2799
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemSharedSavedMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !2800 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !2801, metadata !272), !dbg !2802
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2803, metadata !272), !dbg !2804
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2805, metadata !272), !dbg !2806
  store i32 1, i32* %5, align 4, !dbg !2806
  br label %10, !dbg !2807, !llvm.loop !2808

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2809, metadata !272), !dbg !2811
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2812
  %12 = load i32*, i32** %4, align 8, !dbg !2814
  %13 = bitcast i32* %12 to i8*, !dbg !2815
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !2816
  store i32 %14, i32* %5, align 4, !dbg !2817
  %15 = load i32, i32* %5, align 4, !dbg !2818
  %16 = icmp ne i32 0, %15, !dbg !2819
  br i1 %16, label %17, label %18, !dbg !2820

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !2821

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2825
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !2828
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !2828
  %22 = load i32, i32* %21, align 8, !dbg !2828
  %23 = icmp eq i32 %22, 2, !dbg !2829
  br i1 %23, label %24, label %44, !dbg !2830

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !2831, !llvm.loop !2834

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !2836, metadata !272), !dbg !2838
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2839
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !2841
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !2841
  %29 = load i8*, i8** %28, align 8, !dbg !2841
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !2842
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2843
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2844
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 15, !dbg !2845
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !2846
  %34 = load i8, i8* %33, align 1, !dbg !2846
  %35 = icmp ne i8 %34, 0, !dbg !2844
  br i1 %35, label %37, label %36, !dbg !2847

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !2848
  br label %43, !dbg !2852

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2853
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 15, !dbg !2855
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !2856
  %41 = load i32, i32* %40, align 1, !dbg !2856
  %42 = load i32*, i32** %4, align 8, !dbg !2857
  store i32 %41, i32* %42, align 4, !dbg !2858
  store i32 0, i32* %5, align 4, !dbg !2859
  br label %43, !dbg !2860

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !2861

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2863
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !2866
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !2866
  %48 = load i32, i32* %47, align 8, !dbg !2866
  %49 = icmp eq i32 %48, 3, !dbg !2867
  br i1 %49, label %50, label %79, !dbg !2868

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !2869, !llvm.loop !2872

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2874, metadata !272), !dbg !2876
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !2877, metadata !272), !dbg !2878
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2879
  %53 = load i32*, i32** %4, align 8, !dbg !2881
  %54 = bitcast i32* %53 to i8*, !dbg !2882
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !2883
  store i32 %55, i32* %5, align 4, !dbg !2884
  %56 = load i32, i32* %5, align 4, !dbg !2885
  %57 = icmp ne i32 0, %56, !dbg !2886
  br i1 %57, label %58, label %59, !dbg !2887

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !2888

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2892
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 15, %struct.GuestLibV3Stat* %9), !dbg !2894
  store i32 %61, i32* %5, align 4, !dbg !2895
  %62 = load i32, i32* %5, align 4, !dbg !2896
  %63 = icmp ne i32 %62, 0, !dbg !2897
  br i1 %63, label %64, label %65, !dbg !2898

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !2899

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2903
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !2906
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !2907
  %69 = load i8, i8* %68, align 8, !dbg !2907
  %70 = icmp ne i8 %69, 0, !dbg !2908
  br i1 %70, label %72, label %71, !dbg !2909

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !2910
  br label %78, !dbg !2913

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !2914
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !2916
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !2917
  %76 = load i32, i32* %75, align 4, !dbg !2917
  %77 = load i32*, i32** %4, align 8, !dbg !2918
  store i32 %76, i32* %77, align 4, !dbg !2919
  store i32 0, i32* %5, align 4, !dbg !2920
  br label %78, !dbg !2921

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !2922

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !2924

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !2926
  ret i32 %82, !dbg !2927
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemUsedMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !2928 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !2929, metadata !272), !dbg !2930
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2931, metadata !272), !dbg !2932
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2933, metadata !272), !dbg !2934
  store i32 1, i32* %5, align 4, !dbg !2934
  br label %10, !dbg !2935, !llvm.loop !2936

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2937, metadata !272), !dbg !2939
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2940
  %12 = load i32*, i32** %4, align 8, !dbg !2942
  %13 = bitcast i32* %12 to i8*, !dbg !2943
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !2944
  store i32 %14, i32* %5, align 4, !dbg !2945
  %15 = load i32, i32* %5, align 4, !dbg !2946
  %16 = icmp ne i32 0, %15, !dbg !2947
  br i1 %16, label %17, label %18, !dbg !2948

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !2949

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2953
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !2956
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !2956
  %22 = load i32, i32* %21, align 8, !dbg !2956
  %23 = icmp eq i32 %22, 2, !dbg !2957
  br i1 %23, label %24, label %44, !dbg !2958

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !2959, !llvm.loop !2962

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !2964, metadata !272), !dbg !2966
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2967
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !2969
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !2969
  %29 = load i8*, i8** %28, align 8, !dbg !2969
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !2970
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2971
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2972
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 16, !dbg !2973
  %33 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %32, i32 0, i32 0, !dbg !2974
  %34 = load i8, i8* %33, align 1, !dbg !2974
  %35 = icmp ne i8 %34, 0, !dbg !2972
  br i1 %35, label %37, label %36, !dbg !2975

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !2976
  br label %43, !dbg !2980

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !2981
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 16, !dbg !2983
  %40 = getelementptr inbounds %struct.StatUint32, %struct.StatUint32* %39, i32 0, i32 1, !dbg !2984
  %41 = load i32, i32* %40, align 1, !dbg !2984
  %42 = load i32*, i32** %4, align 8, !dbg !2985
  store i32 %41, i32* %42, align 4, !dbg !2986
  store i32 0, i32* %5, align 4, !dbg !2987
  br label %43, !dbg !2988

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !2989

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !2991
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !2994
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !2994
  %48 = load i32, i32* %47, align 8, !dbg !2994
  %49 = icmp eq i32 %48, 3, !dbg !2995
  br i1 %49, label %50, label %79, !dbg !2996

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !2997, !llvm.loop !3000

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3002, metadata !272), !dbg !3004
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !3005, metadata !272), !dbg !3006
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3007
  %53 = load i32*, i32** %4, align 8, !dbg !3009
  %54 = bitcast i32* %53 to i8*, !dbg !3010
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !3011
  store i32 %55, i32* %5, align 4, !dbg !3012
  %56 = load i32, i32* %5, align 4, !dbg !3013
  %57 = icmp ne i32 0, %56, !dbg !3014
  br i1 %57, label %58, label %59, !dbg !3015

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !3016

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3020
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 16, %struct.GuestLibV3Stat* %9), !dbg !3022
  store i32 %61, i32* %5, align 4, !dbg !3023
  %62 = load i32, i32* %5, align 4, !dbg !3024
  %63 = icmp ne i32 %62, 0, !dbg !3025
  br i1 %63, label %64, label %65, !dbg !3026

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !3027

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !3031
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint32*, !dbg !3034
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %67, i32 0, i32 0, !dbg !3035
  %69 = load i8, i8* %68, align 8, !dbg !3035
  %70 = icmp ne i8 %69, 0, !dbg !3036
  br i1 %70, label %72, label %71, !dbg !3037

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !3038
  br label %78, !dbg !3041

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !3042
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint32*, !dbg !3044
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %74, i32 0, i32 1, !dbg !3045
  %76 = load i32, i32* %75, align 4, !dbg !3045
  %77 = load i32*, i32** %4, align 8, !dbg !3046
  store i32 %76, i32* %77, align 4, !dbg !3047
  store i32 0, i32* %5, align 4, !dbg !3048
  br label %78, !dbg !3049

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !3050

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !3052

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !3054
  ret i32 %82, !dbg !3055
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetElapsedMs(%struct._VMGuestLibHandle*, i64*) #0 !dbg !3056 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.VMGuestLibDataV2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3057, metadata !272), !dbg !3058
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3059, metadata !272), !dbg !3060
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3061, metadata !272), !dbg !3062
  store i32 1, i32* %5, align 4, !dbg !3062
  br label %10, !dbg !3063, !llvm.loop !3064

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3065, metadata !272), !dbg !3067
  %11 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3068
  %12 = load i64*, i64** %4, align 8, !dbg !3070
  %13 = bitcast i64* %12 to i8*, !dbg !3071
  %14 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %11, i8* %13, i8** %6), !dbg !3072
  store i32 %14, i32* %5, align 4, !dbg !3073
  %15 = load i32, i32* %5, align 4, !dbg !3074
  %16 = icmp ne i32 0, %15, !dbg !3075
  br i1 %16, label %17, label %18, !dbg !3076

; <label>:17:                                     ; preds = %10
  br label %81, !dbg !3077

; <label>:18:                                     ; preds = %10
  %19 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3081
  %20 = bitcast %struct._VMGuestLibHandle* %19 to %struct.VMGuestLibHandleType*, !dbg !3084
  %21 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %20, i32 0, i32 0, !dbg !3084
  %22 = load i32, i32* %21, align 8, !dbg !3084
  %23 = icmp eq i32 %22, 2, !dbg !3085
  br i1 %23, label %24, label %44, !dbg !3086

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !3087, !llvm.loop !3090

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %7, metadata !3092, metadata !272), !dbg !3094
  %26 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3095
  %27 = bitcast %struct._VMGuestLibHandle* %26 to %struct.VMGuestLibHandleType*, !dbg !3097
  %28 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %27, i32 0, i32 3, !dbg !3097
  %29 = load i8*, i8** %28, align 8, !dbg !3097
  %30 = bitcast i8* %29 to %struct.VMGuestLibDataV2*, !dbg !3098
  store %struct.VMGuestLibDataV2* %30, %struct.VMGuestLibDataV2** %7, align 8, !dbg !3099
  %31 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !3100
  %32 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %31, i32 0, i32 17, !dbg !3101
  %33 = getelementptr inbounds %struct.StatUint64, %struct.StatUint64* %32, i32 0, i32 0, !dbg !3102
  %34 = load i8, i8* %33, align 1, !dbg !3102
  %35 = icmp ne i8 %34, 0, !dbg !3100
  br i1 %35, label %37, label %36, !dbg !3103

; <label>:36:                                     ; preds = %25
  store i32 4, i32* %5, align 4, !dbg !3104
  br label %43, !dbg !3108

; <label>:37:                                     ; preds = %25
  %38 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %7, align 8, !dbg !3109
  %39 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %38, i32 0, i32 17, !dbg !3111
  %40 = getelementptr inbounds %struct.StatUint64, %struct.StatUint64* %39, i32 0, i32 2, !dbg !3112
  %41 = load i64, i64* %40, align 1, !dbg !3112
  %42 = load i64*, i64** %4, align 8, !dbg !3113
  store i64 %41, i64* %42, align 8, !dbg !3114
  store i32 0, i32* %5, align 4, !dbg !3115
  br label %43, !dbg !3116

; <label>:43:                                     ; preds = %37, %36
  br label %80, !dbg !3117

; <label>:44:                                     ; preds = %18
  %45 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3119
  %46 = bitcast %struct._VMGuestLibHandle* %45 to %struct.VMGuestLibHandleType*, !dbg !3122
  %47 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %46, i32 0, i32 0, !dbg !3122
  %48 = load i32, i32* %47, align 8, !dbg !3122
  %49 = icmp eq i32 %48, 3, !dbg !3123
  br i1 %49, label %50, label %79, !dbg !3124

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !3125, !llvm.loop !3128

; <label>:51:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3130, metadata !272), !dbg !3132
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %9, metadata !3133, metadata !272), !dbg !3134
  %52 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3135
  %53 = load i64*, i64** %4, align 8, !dbg !3137
  %54 = bitcast i64* %53 to i8*, !dbg !3138
  %55 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %52, i8* %54, i8** %8), !dbg !3139
  store i32 %55, i32* %5, align 4, !dbg !3140
  %56 = load i32, i32* %5, align 4, !dbg !3141
  %57 = icmp ne i32 0, %56, !dbg !3142
  br i1 %57, label %58, label %59, !dbg !3143

; <label>:58:                                     ; preds = %51
  br label %78, !dbg !3144

; <label>:59:                                     ; preds = %51
  %60 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3148
  %61 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %60, i32 17, %struct.GuestLibV3Stat* %9), !dbg !3150
  store i32 %61, i32* %5, align 4, !dbg !3151
  %62 = load i32, i32* %5, align 4, !dbg !3152
  %63 = icmp ne i32 %62, 0, !dbg !3153
  br i1 %63, label %64, label %65, !dbg !3154

; <label>:64:                                     ; preds = %59
  br label %78, !dbg !3155

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !3159
  %67 = bitcast %union.anon* %66 to %struct.GuestLibV3StatUint64*, !dbg !3162
  %68 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %67, i32 0, i32 0, !dbg !3163
  %69 = load i8, i8* %68, align 8, !dbg !3163
  %70 = icmp ne i8 %69, 0, !dbg !3164
  br i1 %70, label %72, label %71, !dbg !3165

; <label>:71:                                     ; preds = %65
  store i32 4, i32* %5, align 4, !dbg !3166
  br label %78, !dbg !3169

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %9, i32 0, i32 1, !dbg !3170
  %74 = bitcast %union.anon* %73 to %struct.GuestLibV3StatUint64*, !dbg !3172
  %75 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %74, i32 0, i32 1, !dbg !3173
  %76 = load i64, i64* %75, align 8, !dbg !3173
  %77 = load i64*, i64** %4, align 8, !dbg !3174
  store i64 %76, i64* %77, align 8, !dbg !3175
  store i32 0, i32* %5, align 4, !dbg !3176
  br label %78, !dbg !3177

; <label>:78:                                     ; preds = %72, %71, %64, %58
  br label %79, !dbg !3178

; <label>:79:                                     ; preds = %78, %44
  br label %80

; <label>:80:                                     ; preds = %79, %43
  br label %81, !dbg !3180

; <label>:81:                                     ; preds = %80, %17
  %82 = load i32, i32* %5, align 4, !dbg !3182
  ret i32 %82, !dbg !3183
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetResourcePoolPath(%struct._VMGuestLibHandle*, i64*, i8*) #0 !dbg !3184 {
  %4 = alloca %struct._VMGuestLibHandle*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.VMGuestLibDataV2*, align 8
  %10 = alloca %struct.VMGuestLibStatisticsV3*, align 8
  %11 = alloca %struct.GuestLibV3Stat*, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %4, metadata !3187, metadata !272), !dbg !3188
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3189, metadata !272), !dbg !3190
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3191, metadata !272), !dbg !3192
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3193, metadata !272), !dbg !3194
  store i32 1, i32* %7, align 4, !dbg !3194
  br label %12, !dbg !3195, !llvm.loop !3196

; <label>:12:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3197, metadata !272), !dbg !3199
  %13 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !3200
  %14 = icmp eq %struct._VMGuestLibHandle* null, %13, !dbg !3202
  br i1 %14, label %15, label %16, !dbg !3203

; <label>:15:                                     ; preds = %12
  store i32 8, i32* %7, align 4, !dbg !3204
  br label %116, !dbg !3206

; <label>:16:                                     ; preds = %12
  %17 = load i64*, i64** %5, align 8, !dbg !3207
  %18 = icmp eq i64* null, %17, !dbg !3209
  br i1 %18, label %22, label %19, !dbg !3210

; <label>:19:                                     ; preds = %16
  %20 = load i8*, i8** %6, align 8, !dbg !3211
  %21 = icmp eq i8* null, %20, !dbg !3213
  br i1 %21, label %22, label %23, !dbg !3214

; <label>:22:                                     ; preds = %19, %16
  store i32 9, i32* %7, align 4, !dbg !3215
  br label %116, !dbg !3217

; <label>:23:                                     ; preds = %19
  %24 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !3218
  %25 = bitcast %struct._VMGuestLibHandle* %24 to %struct.VMGuestLibHandleType*, !dbg !3220
  %26 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %25, i32 0, i32 1, !dbg !3220
  %27 = load i64, i64* %26, align 8, !dbg !3220
  %28 = icmp eq i64 0, %27, !dbg !3221
  br i1 %28, label %29, label %30, !dbg !3222

; <label>:29:                                     ; preds = %23
  store i32 5, i32* %7, align 4, !dbg !3223
  br label %116, !dbg !3225

; <label>:30:                                     ; preds = %23
  %31 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !3226
  %32 = bitcast %struct._VMGuestLibHandle* %31 to %struct.VMGuestLibHandleType*, !dbg !3228
  %33 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %32, i32 0, i32 0, !dbg !3228
  %34 = load i32, i32* %33, align 8, !dbg !3228
  %35 = icmp eq i32 %34, 2, !dbg !3229
  br i1 %35, label %36, label %69, !dbg !3230

; <label>:36:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibDataV2** %9, metadata !3231, metadata !272), !dbg !3233
  %37 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !3234
  %38 = bitcast %struct._VMGuestLibHandle* %37 to %struct.VMGuestLibHandleType*, !dbg !3235
  %39 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %38, i32 0, i32 3, !dbg !3235
  %40 = load i8*, i8** %39, align 8, !dbg !3235
  %41 = bitcast i8* %40 to %struct.VMGuestLibDataV2*, !dbg !3236
  store %struct.VMGuestLibDataV2* %41, %struct.VMGuestLibDataV2** %9, align 8, !dbg !3237
  %42 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %9, align 8, !dbg !3238
  %43 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %42, i32 0, i32 18, !dbg !3240
  %44 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %43, i32 0, i32 0, !dbg !3241
  %45 = load i8, i8* %44, align 1, !dbg !3241
  %46 = icmp ne i8 %45, 0, !dbg !3238
  br i1 %46, label %48, label %47, !dbg !3242

; <label>:47:                                     ; preds = %36
  store i32 4, i32* %7, align 4, !dbg !3243
  br label %116, !dbg !3245

; <label>:48:                                     ; preds = %36
  %49 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %9, align 8, !dbg !3246
  %50 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %49, i32 0, i32 18, !dbg !3247
  %51 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %50, i32 0, i32 1, !dbg !3248
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %51, i32 0, i32 0, !dbg !3246
  %53 = call i64 @strlen(i8* %52) #7, !dbg !3249
  %54 = add i64 %53, 1, !dbg !3250
  store i64 %54, i64* %8, align 8, !dbg !3251
  %55 = load i64*, i64** %5, align 8, !dbg !3252
  %56 = load i64, i64* %55, align 8, !dbg !3254
  %57 = load i64, i64* %8, align 8, !dbg !3255
  %58 = icmp ult i64 %56, %57, !dbg !3256
  br i1 %58, label %59, label %62, !dbg !3257

; <label>:59:                                     ; preds = %48
  %60 = load i64, i64* %8, align 8, !dbg !3258
  %61 = load i64*, i64** %5, align 8, !dbg !3260
  store i64 %60, i64* %61, align 8, !dbg !3261
  store i32 7, i32* %7, align 4, !dbg !3262
  br label %116, !dbg !3263

; <label>:62:                                     ; preds = %48
  %63 = load i8*, i8** %6, align 8, !dbg !3264
  %64 = load %struct.VMGuestLibDataV2*, %struct.VMGuestLibDataV2** %9, align 8, !dbg !3265
  %65 = getelementptr inbounds %struct.VMGuestLibDataV2, %struct.VMGuestLibDataV2* %64, i32 0, i32 18, !dbg !3266
  %66 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %65, i32 0, i32 1, !dbg !3267
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %66, i32 0, i32 0, !dbg !3268
  %68 = load i64, i64* %8, align 8, !dbg !3269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %67, i64 %68, i32 1, i1 false), !dbg !3268
  store i32 0, i32* %7, align 4, !dbg !3270
  br label %115, !dbg !3271

; <label>:69:                                     ; preds = %30
  %70 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !3272
  %71 = bitcast %struct._VMGuestLibHandle* %70 to %struct.VMGuestLibHandleType*, !dbg !3275
  %72 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %71, i32 0, i32 0, !dbg !3275
  %73 = load i32, i32* %72, align 8, !dbg !3275
  %74 = icmp eq i32 %73, 3, !dbg !3276
  br i1 %74, label %75, label %114, !dbg !3277

; <label>:75:                                     ; preds = %69
  call void @llvm.dbg.declare(metadata %struct.VMGuestLibStatisticsV3** %10, metadata !3278, metadata !272), !dbg !3280
  %76 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %4, align 8, !dbg !3281
  %77 = bitcast %struct._VMGuestLibHandle* %76 to %struct.VMGuestLibHandleType*, !dbg !3282
  %78 = getelementptr inbounds %struct.VMGuestLibHandleType, %struct.VMGuestLibHandleType* %77, i32 0, i32 3, !dbg !3282
  %79 = load i8*, i8** %78, align 8, !dbg !3282
  %80 = bitcast i8* %79 to %struct.VMGuestLibStatisticsV3*, !dbg !3283
  store %struct.VMGuestLibStatisticsV3* %80, %struct.VMGuestLibStatisticsV3** %10, align 8, !dbg !3280
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat** %11, metadata !3284, metadata !272), !dbg !3285
  %81 = load %struct.VMGuestLibStatisticsV3*, %struct.VMGuestLibStatisticsV3** %10, align 8, !dbg !3286
  %82 = getelementptr inbounds %struct.VMGuestLibStatisticsV3, %struct.VMGuestLibStatisticsV3* %81, i32 0, i32 1, !dbg !3287
  %83 = getelementptr inbounds [0 x %struct.GuestLibV3Stat], [0 x %struct.GuestLibV3Stat]* %82, i64 0, i64 17, !dbg !3286
  store %struct.GuestLibV3Stat* %83, %struct.GuestLibV3Stat** %11, align 8, !dbg !3285
  %84 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %11, align 8, !dbg !3288
  %85 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %84, i32 0, i32 1, !dbg !3290
  %86 = bitcast %union.anon* %85 to %struct.GuestLibV3String*, !dbg !3291
  %87 = getelementptr inbounds %struct.GuestLibV3String, %struct.GuestLibV3String* %86, i32 0, i32 0, !dbg !3292
  %88 = load i8, i8* %87, align 8, !dbg !3292
  %89 = icmp ne i8 %88, 0, !dbg !3288
  br i1 %89, label %91, label %90, !dbg !3293

; <label>:90:                                     ; preds = %75
  store i32 4, i32* %7, align 4, !dbg !3294
  br label %116, !dbg !3296

; <label>:91:                                     ; preds = %75
  %92 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %11, align 8, !dbg !3297
  %93 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %92, i32 0, i32 1, !dbg !3298
  %94 = bitcast %union.anon* %93 to %struct.GuestLibV3String*, !dbg !3299
  %95 = getelementptr inbounds %struct.GuestLibV3String, %struct.GuestLibV3String* %94, i32 0, i32 1, !dbg !3300
  %96 = load i8*, i8** %95, align 8, !dbg !3300
  %97 = call i64 @strlen(i8* %96) #7, !dbg !3301
  %98 = add i64 %97, 1, !dbg !3302
  store i64 %98, i64* %8, align 8, !dbg !3303
  %99 = load i64*, i64** %5, align 8, !dbg !3304
  %100 = load i64, i64* %99, align 8, !dbg !3306
  %101 = load i64, i64* %8, align 8, !dbg !3307
  %102 = icmp ult i64 %100, %101, !dbg !3308
  br i1 %102, label %103, label %106, !dbg !3309

; <label>:103:                                    ; preds = %91
  %104 = load i64, i64* %8, align 8, !dbg !3310
  %105 = load i64*, i64** %5, align 8, !dbg !3312
  store i64 %104, i64* %105, align 8, !dbg !3313
  store i32 7, i32* %7, align 4, !dbg !3314
  br label %116, !dbg !3315

; <label>:106:                                    ; preds = %91
  %107 = load i8*, i8** %6, align 8, !dbg !3316
  %108 = load %struct.GuestLibV3Stat*, %struct.GuestLibV3Stat** %11, align 8, !dbg !3317
  %109 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %108, i32 0, i32 1, !dbg !3318
  %110 = bitcast %union.anon* %109 to %struct.GuestLibV3String*, !dbg !3319
  %111 = getelementptr inbounds %struct.GuestLibV3String, %struct.GuestLibV3String* %110, i32 0, i32 1, !dbg !3320
  %112 = load i8*, i8** %111, align 8, !dbg !3320
  %113 = load i64, i64* %8, align 8, !dbg !3321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %112, i64 %113, i32 1, i1 false), !dbg !3322
  store i32 0, i32* %7, align 4, !dbg !3323
  br label %114, !dbg !3324

; <label>:114:                                    ; preds = %106, %69
  br label %115

; <label>:115:                                    ; preds = %114, %62
  br label %116, !dbg !3325

; <label>:116:                                    ; preds = %115, %103, %90, %59, %47, %29, %22, %15
  %117 = load i32, i32* %7, align 4, !dbg !3326
  ret i32 %117, !dbg !3327
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetCpuStolenMs(%struct._VMGuestLibHandle*, i64*) #0 !dbg !3328 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3329, metadata !272), !dbg !3330
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3331, metadata !272), !dbg !3332
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3333, metadata !272), !dbg !3334
  store i32 1, i32* %5, align 4, !dbg !3334
  br label %8, !dbg !3335, !llvm.loop !3336

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3337, metadata !272), !dbg !3339
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !3340, metadata !272), !dbg !3341
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3342
  %10 = load i64*, i64** %4, align 8, !dbg !3344
  %11 = bitcast i64* %10 to i8*, !dbg !3345
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !3346
  store i32 %12, i32* %5, align 4, !dbg !3347
  %13 = load i32, i32* %5, align 4, !dbg !3348
  %14 = icmp ne i32 0, %13, !dbg !3349
  br i1 %14, label %15, label %16, !dbg !3350

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !3351

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3355
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 19, %struct.GuestLibV3Stat* %7), !dbg !3357
  store i32 %18, i32* %5, align 4, !dbg !3358
  %19 = load i32, i32* %5, align 4, !dbg !3359
  %20 = icmp ne i32 %19, 0, !dbg !3360
  br i1 %20, label %21, label %22, !dbg !3361

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !3362

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3366
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint64*, !dbg !3369
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %24, i32 0, i32 0, !dbg !3370
  %26 = load i8, i8* %25, align 8, !dbg !3370
  %27 = icmp ne i8 %26, 0, !dbg !3371
  br i1 %27, label %29, label %28, !dbg !3372

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !3373
  br label %35, !dbg !3376

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3377
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint64*, !dbg !3379
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %31, i32 0, i32 1, !dbg !3380
  %33 = load i64, i64* %32, align 8, !dbg !3380
  %34 = load i64*, i64** %4, align 8, !dbg !3381
  store i64 %33, i64* %34, align 8, !dbg !3382
  store i32 0, i32* %5, align 4, !dbg !3383
  br label %35, !dbg !3384

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !3385
  ret i32 %36, !dbg !3386
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemTargetSizeMB(%struct._VMGuestLibHandle*, i64*) #0 !dbg !3387 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3388, metadata !272), !dbg !3389
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3390, metadata !272), !dbg !3391
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3392, metadata !272), !dbg !3393
  store i32 1, i32* %5, align 4, !dbg !3393
  br label %8, !dbg !3394, !llvm.loop !3395

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3396, metadata !272), !dbg !3398
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !3399, metadata !272), !dbg !3400
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3401
  %10 = load i64*, i64** %4, align 8, !dbg !3403
  %11 = bitcast i64* %10 to i8*, !dbg !3404
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !3405
  store i32 %12, i32* %5, align 4, !dbg !3406
  %13 = load i32, i32* %5, align 4, !dbg !3407
  %14 = icmp ne i32 0, %13, !dbg !3408
  br i1 %14, label %15, label %16, !dbg !3409

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !3410

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3414
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 20, %struct.GuestLibV3Stat* %7), !dbg !3416
  store i32 %18, i32* %5, align 4, !dbg !3417
  %19 = load i32, i32* %5, align 4, !dbg !3418
  %20 = icmp ne i32 %19, 0, !dbg !3419
  br i1 %20, label %21, label %22, !dbg !3420

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !3421

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3425
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint64*, !dbg !3428
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %24, i32 0, i32 0, !dbg !3429
  %26 = load i8, i8* %25, align 8, !dbg !3429
  %27 = icmp ne i8 %26, 0, !dbg !3430
  br i1 %27, label %29, label %28, !dbg !3431

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !3432
  br label %35, !dbg !3435

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3436
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint64*, !dbg !3438
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %31, i32 0, i32 1, !dbg !3439
  %33 = load i64, i64* %32, align 8, !dbg !3439
  %34 = load i64*, i64** %4, align 8, !dbg !3440
  store i64 %33, i64* %34, align 8, !dbg !3441
  store i32 0, i32* %5, align 4, !dbg !3442
  br label %35, !dbg !3443

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !3444
  ret i32 %36, !dbg !3445
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetHostNumCpuCores(%struct._VMGuestLibHandle*, i32*) #0 !dbg !3446 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3447, metadata !272), !dbg !3448
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !3449, metadata !272), !dbg !3450
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3451, metadata !272), !dbg !3452
  store i32 1, i32* %5, align 4, !dbg !3452
  br label %8, !dbg !3453, !llvm.loop !3454

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3455, metadata !272), !dbg !3457
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !3458, metadata !272), !dbg !3459
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3460
  %10 = load i32*, i32** %4, align 8, !dbg !3462
  %11 = bitcast i32* %10 to i8*, !dbg !3463
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !3464
  store i32 %12, i32* %5, align 4, !dbg !3465
  %13 = load i32, i32* %5, align 4, !dbg !3466
  %14 = icmp ne i32 0, %13, !dbg !3467
  br i1 %14, label %15, label %16, !dbg !3468

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !3469

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3473
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 21, %struct.GuestLibV3Stat* %7), !dbg !3475
  store i32 %18, i32* %5, align 4, !dbg !3476
  %19 = load i32, i32* %5, align 4, !dbg !3477
  %20 = icmp ne i32 %19, 0, !dbg !3478
  br i1 %20, label %21, label %22, !dbg !3479

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !3480

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3484
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint32*, !dbg !3487
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %24, i32 0, i32 0, !dbg !3488
  %26 = load i8, i8* %25, align 8, !dbg !3488
  %27 = icmp ne i8 %26, 0, !dbg !3489
  br i1 %27, label %29, label %28, !dbg !3490

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !3491
  br label %35, !dbg !3494

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3495
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint32*, !dbg !3497
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %31, i32 0, i32 1, !dbg !3498
  %33 = load i32, i32* %32, align 4, !dbg !3498
  %34 = load i32*, i32** %4, align 8, !dbg !3499
  store i32 %33, i32* %34, align 4, !dbg !3500
  store i32 0, i32* %5, align 4, !dbg !3501
  br label %35, !dbg !3502

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !3503
  ret i32 %36, !dbg !3504
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetHostCpuUsedMs(%struct._VMGuestLibHandle*, i64*) #0 !dbg !3505 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3506, metadata !272), !dbg !3507
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3508, metadata !272), !dbg !3509
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3510, metadata !272), !dbg !3511
  store i32 1, i32* %5, align 4, !dbg !3511
  br label %8, !dbg !3512, !llvm.loop !3513

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3514, metadata !272), !dbg !3516
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !3517, metadata !272), !dbg !3518
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3519
  %10 = load i64*, i64** %4, align 8, !dbg !3521
  %11 = bitcast i64* %10 to i8*, !dbg !3522
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !3523
  store i32 %12, i32* %5, align 4, !dbg !3524
  %13 = load i32, i32* %5, align 4, !dbg !3525
  %14 = icmp ne i32 0, %13, !dbg !3526
  br i1 %14, label %15, label %16, !dbg !3527

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !3528

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3532
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 22, %struct.GuestLibV3Stat* %7), !dbg !3534
  store i32 %18, i32* %5, align 4, !dbg !3535
  %19 = load i32, i32* %5, align 4, !dbg !3536
  %20 = icmp ne i32 %19, 0, !dbg !3537
  br i1 %20, label %21, label %22, !dbg !3538

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !3539

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3543
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint64*, !dbg !3546
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %24, i32 0, i32 0, !dbg !3547
  %26 = load i8, i8* %25, align 8, !dbg !3547
  %27 = icmp ne i8 %26, 0, !dbg !3548
  br i1 %27, label %29, label %28, !dbg !3549

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !3550
  br label %35, !dbg !3553

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3554
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint64*, !dbg !3556
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %31, i32 0, i32 1, !dbg !3557
  %33 = load i64, i64* %32, align 8, !dbg !3557
  %34 = load i64*, i64** %4, align 8, !dbg !3558
  store i64 %33, i64* %34, align 8, !dbg !3559
  store i32 0, i32* %5, align 4, !dbg !3560
  br label %35, !dbg !3561

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !3562
  ret i32 %36, !dbg !3563
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetHostMemSwappedMB(%struct._VMGuestLibHandle*, i64*) #0 !dbg !3564 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3565, metadata !272), !dbg !3566
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3567, metadata !272), !dbg !3568
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3569, metadata !272), !dbg !3570
  store i32 1, i32* %5, align 4, !dbg !3570
  br label %8, !dbg !3571, !llvm.loop !3572

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3573, metadata !272), !dbg !3575
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !3576, metadata !272), !dbg !3577
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3578
  %10 = load i64*, i64** %4, align 8, !dbg !3580
  %11 = bitcast i64* %10 to i8*, !dbg !3581
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !3582
  store i32 %12, i32* %5, align 4, !dbg !3583
  %13 = load i32, i32* %5, align 4, !dbg !3584
  %14 = icmp ne i32 0, %13, !dbg !3585
  br i1 %14, label %15, label %16, !dbg !3586

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !3587

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3591
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 23, %struct.GuestLibV3Stat* %7), !dbg !3593
  store i32 %18, i32* %5, align 4, !dbg !3594
  %19 = load i32, i32* %5, align 4, !dbg !3595
  %20 = icmp ne i32 %19, 0, !dbg !3596
  br i1 %20, label %21, label %22, !dbg !3597

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !3598

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3602
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint64*, !dbg !3605
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %24, i32 0, i32 0, !dbg !3606
  %26 = load i8, i8* %25, align 8, !dbg !3606
  %27 = icmp ne i8 %26, 0, !dbg !3607
  br i1 %27, label %29, label %28, !dbg !3608

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !3609
  br label %35, !dbg !3612

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3613
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint64*, !dbg !3615
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %31, i32 0, i32 1, !dbg !3616
  %33 = load i64, i64* %32, align 8, !dbg !3616
  %34 = load i64*, i64** %4, align 8, !dbg !3617
  store i64 %33, i64* %34, align 8, !dbg !3618
  store i32 0, i32* %5, align 4, !dbg !3619
  br label %35, !dbg !3620

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !3621
  ret i32 %36, !dbg !3622
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetHostMemSharedMB(%struct._VMGuestLibHandle*, i64*) #0 !dbg !3623 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3624, metadata !272), !dbg !3625
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3626, metadata !272), !dbg !3627
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3628, metadata !272), !dbg !3629
  store i32 1, i32* %5, align 4, !dbg !3629
  br label %8, !dbg !3630, !llvm.loop !3631

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3632, metadata !272), !dbg !3634
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !3635, metadata !272), !dbg !3636
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3637
  %10 = load i64*, i64** %4, align 8, !dbg !3639
  %11 = bitcast i64* %10 to i8*, !dbg !3640
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !3641
  store i32 %12, i32* %5, align 4, !dbg !3642
  %13 = load i32, i32* %5, align 4, !dbg !3643
  %14 = icmp ne i32 0, %13, !dbg !3644
  br i1 %14, label %15, label %16, !dbg !3645

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !3646

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3650
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 24, %struct.GuestLibV3Stat* %7), !dbg !3652
  store i32 %18, i32* %5, align 4, !dbg !3653
  %19 = load i32, i32* %5, align 4, !dbg !3654
  %20 = icmp ne i32 %19, 0, !dbg !3655
  br i1 %20, label %21, label %22, !dbg !3656

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !3657

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3661
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint64*, !dbg !3664
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %24, i32 0, i32 0, !dbg !3665
  %26 = load i8, i8* %25, align 8, !dbg !3665
  %27 = icmp ne i8 %26, 0, !dbg !3666
  br i1 %27, label %29, label %28, !dbg !3667

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !3668
  br label %35, !dbg !3671

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3672
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint64*, !dbg !3674
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %31, i32 0, i32 1, !dbg !3675
  %33 = load i64, i64* %32, align 8, !dbg !3675
  %34 = load i64*, i64** %4, align 8, !dbg !3676
  store i64 %33, i64* %34, align 8, !dbg !3677
  store i32 0, i32* %5, align 4, !dbg !3678
  br label %35, !dbg !3679

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !3680
  ret i32 %36, !dbg !3681
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetHostMemUsedMB(%struct._VMGuestLibHandle*, i64*) #0 !dbg !3682 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3683, metadata !272), !dbg !3684
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3685, metadata !272), !dbg !3686
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3687, metadata !272), !dbg !3688
  store i32 1, i32* %5, align 4, !dbg !3688
  br label %8, !dbg !3689, !llvm.loop !3690

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3691, metadata !272), !dbg !3693
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !3694, metadata !272), !dbg !3695
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3696
  %10 = load i64*, i64** %4, align 8, !dbg !3698
  %11 = bitcast i64* %10 to i8*, !dbg !3699
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !3700
  store i32 %12, i32* %5, align 4, !dbg !3701
  %13 = load i32, i32* %5, align 4, !dbg !3702
  %14 = icmp ne i32 0, %13, !dbg !3703
  br i1 %14, label %15, label %16, !dbg !3704

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !3705

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3709
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 25, %struct.GuestLibV3Stat* %7), !dbg !3711
  store i32 %18, i32* %5, align 4, !dbg !3712
  %19 = load i32, i32* %5, align 4, !dbg !3713
  %20 = icmp ne i32 %19, 0, !dbg !3714
  br i1 %20, label %21, label %22, !dbg !3715

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !3716

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3720
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint64*, !dbg !3723
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %24, i32 0, i32 0, !dbg !3724
  %26 = load i8, i8* %25, align 8, !dbg !3724
  %27 = icmp ne i8 %26, 0, !dbg !3725
  br i1 %27, label %29, label %28, !dbg !3726

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !3727
  br label %35, !dbg !3730

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3731
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint64*, !dbg !3733
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %31, i32 0, i32 1, !dbg !3734
  %33 = load i64, i64* %32, align 8, !dbg !3734
  %34 = load i64*, i64** %4, align 8, !dbg !3735
  store i64 %33, i64* %34, align 8, !dbg !3736
  store i32 0, i32* %5, align 4, !dbg !3737
  br label %35, !dbg !3738

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !3739
  ret i32 %36, !dbg !3740
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetHostMemPhysMB(%struct._VMGuestLibHandle*, i64*) #0 !dbg !3741 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3742, metadata !272), !dbg !3743
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3744, metadata !272), !dbg !3745
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3746, metadata !272), !dbg !3747
  store i32 1, i32* %5, align 4, !dbg !3747
  br label %8, !dbg !3748, !llvm.loop !3749

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3750, metadata !272), !dbg !3752
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !3753, metadata !272), !dbg !3754
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3755
  %10 = load i64*, i64** %4, align 8, !dbg !3757
  %11 = bitcast i64* %10 to i8*, !dbg !3758
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !3759
  store i32 %12, i32* %5, align 4, !dbg !3760
  %13 = load i32, i32* %5, align 4, !dbg !3761
  %14 = icmp ne i32 0, %13, !dbg !3762
  br i1 %14, label %15, label %16, !dbg !3763

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !3764

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3768
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 26, %struct.GuestLibV3Stat* %7), !dbg !3770
  store i32 %18, i32* %5, align 4, !dbg !3771
  %19 = load i32, i32* %5, align 4, !dbg !3772
  %20 = icmp ne i32 %19, 0, !dbg !3773
  br i1 %20, label %21, label %22, !dbg !3774

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !3775

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3779
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint64*, !dbg !3782
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %24, i32 0, i32 0, !dbg !3783
  %26 = load i8, i8* %25, align 8, !dbg !3783
  %27 = icmp ne i8 %26, 0, !dbg !3784
  br i1 %27, label %29, label %28, !dbg !3785

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !3786
  br label %35, !dbg !3789

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3790
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint64*, !dbg !3792
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %31, i32 0, i32 1, !dbg !3793
  %33 = load i64, i64* %32, align 8, !dbg !3793
  %34 = load i64*, i64** %4, align 8, !dbg !3794
  store i64 %33, i64* %34, align 8, !dbg !3795
  store i32 0, i32* %5, align 4, !dbg !3796
  br label %35, !dbg !3797

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !3798
  ret i32 %36, !dbg !3799
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetHostMemPhysFreeMB(%struct._VMGuestLibHandle*, i64*) #0 !dbg !3800 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3801, metadata !272), !dbg !3802
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3803, metadata !272), !dbg !3804
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3805, metadata !272), !dbg !3806
  store i32 1, i32* %5, align 4, !dbg !3806
  br label %8, !dbg !3807, !llvm.loop !3808

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3809, metadata !272), !dbg !3811
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !3812, metadata !272), !dbg !3813
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3814
  %10 = load i64*, i64** %4, align 8, !dbg !3816
  %11 = bitcast i64* %10 to i8*, !dbg !3817
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !3818
  store i32 %12, i32* %5, align 4, !dbg !3819
  %13 = load i32, i32* %5, align 4, !dbg !3820
  %14 = icmp ne i32 0, %13, !dbg !3821
  br i1 %14, label %15, label %16, !dbg !3822

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !3823

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3827
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 27, %struct.GuestLibV3Stat* %7), !dbg !3829
  store i32 %18, i32* %5, align 4, !dbg !3830
  %19 = load i32, i32* %5, align 4, !dbg !3831
  %20 = icmp ne i32 %19, 0, !dbg !3832
  br i1 %20, label %21, label %22, !dbg !3833

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !3834

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3838
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint64*, !dbg !3841
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %24, i32 0, i32 0, !dbg !3842
  %26 = load i8, i8* %25, align 8, !dbg !3842
  %27 = icmp ne i8 %26, 0, !dbg !3843
  br i1 %27, label %29, label %28, !dbg !3844

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !3845
  br label %35, !dbg !3848

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3849
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint64*, !dbg !3851
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %31, i32 0, i32 1, !dbg !3852
  %33 = load i64, i64* %32, align 8, !dbg !3852
  %34 = load i64*, i64** %4, align 8, !dbg !3853
  store i64 %33, i64* %34, align 8, !dbg !3854
  store i32 0, i32* %5, align 4, !dbg !3855
  br label %35, !dbg !3856

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !3857
  ret i32 %36, !dbg !3858
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetHostMemKernOvhdMB(%struct._VMGuestLibHandle*, i64*) #0 !dbg !3859 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3860, metadata !272), !dbg !3861
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3862, metadata !272), !dbg !3863
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3864, metadata !272), !dbg !3865
  store i32 1, i32* %5, align 4, !dbg !3865
  br label %8, !dbg !3866, !llvm.loop !3867

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3868, metadata !272), !dbg !3870
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !3871, metadata !272), !dbg !3872
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3873
  %10 = load i64*, i64** %4, align 8, !dbg !3875
  %11 = bitcast i64* %10 to i8*, !dbg !3876
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !3877
  store i32 %12, i32* %5, align 4, !dbg !3878
  %13 = load i32, i32* %5, align 4, !dbg !3879
  %14 = icmp ne i32 0, %13, !dbg !3880
  br i1 %14, label %15, label %16, !dbg !3881

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !3882

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3886
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 28, %struct.GuestLibV3Stat* %7), !dbg !3888
  store i32 %18, i32* %5, align 4, !dbg !3889
  %19 = load i32, i32* %5, align 4, !dbg !3890
  %20 = icmp ne i32 %19, 0, !dbg !3891
  br i1 %20, label %21, label %22, !dbg !3892

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !3893

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3897
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint64*, !dbg !3900
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %24, i32 0, i32 0, !dbg !3901
  %26 = load i8, i8* %25, align 8, !dbg !3901
  %27 = icmp ne i8 %26, 0, !dbg !3902
  br i1 %27, label %29, label %28, !dbg !3903

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !3904
  br label %35, !dbg !3907

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3908
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint64*, !dbg !3910
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %31, i32 0, i32 1, !dbg !3911
  %33 = load i64, i64* %32, align 8, !dbg !3911
  %34 = load i64*, i64** %4, align 8, !dbg !3912
  store i64 %33, i64* %34, align 8, !dbg !3913
  store i32 0, i32* %5, align 4, !dbg !3914
  br label %35, !dbg !3915

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !3916
  ret i32 %36, !dbg !3917
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetHostMemMappedMB(%struct._VMGuestLibHandle*, i64*) #0 !dbg !3918 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3919, metadata !272), !dbg !3920
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3921, metadata !272), !dbg !3922
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3923, metadata !272), !dbg !3924
  store i32 1, i32* %5, align 4, !dbg !3924
  br label %8, !dbg !3925, !llvm.loop !3926

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3927, metadata !272), !dbg !3929
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !3930, metadata !272), !dbg !3931
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3932
  %10 = load i64*, i64** %4, align 8, !dbg !3934
  %11 = bitcast i64* %10 to i8*, !dbg !3935
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !3936
  store i32 %12, i32* %5, align 4, !dbg !3937
  %13 = load i32, i32* %5, align 4, !dbg !3938
  %14 = icmp ne i32 0, %13, !dbg !3939
  br i1 %14, label %15, label %16, !dbg !3940

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !3941

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3945
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 29, %struct.GuestLibV3Stat* %7), !dbg !3947
  store i32 %18, i32* %5, align 4, !dbg !3948
  %19 = load i32, i32* %5, align 4, !dbg !3949
  %20 = icmp ne i32 %19, 0, !dbg !3950
  br i1 %20, label %21, label %22, !dbg !3951

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !3952

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3956
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint64*, !dbg !3959
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %24, i32 0, i32 0, !dbg !3960
  %26 = load i8, i8* %25, align 8, !dbg !3960
  %27 = icmp ne i8 %26, 0, !dbg !3961
  br i1 %27, label %29, label %28, !dbg !3962

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !3963
  br label %35, !dbg !3966

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !3967
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint64*, !dbg !3969
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %31, i32 0, i32 1, !dbg !3970
  %33 = load i64, i64* %32, align 8, !dbg !3970
  %34 = load i64*, i64** %4, align 8, !dbg !3971
  store i64 %33, i64* %34, align 8, !dbg !3972
  store i32 0, i32* %5, align 4, !dbg !3973
  br label %35, !dbg !3974

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !3975
  ret i32 %36, !dbg !3976
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetHostMemUnmappedMB(%struct._VMGuestLibHandle*, i64*) #0 !dbg !3977 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !3978, metadata !272), !dbg !3979
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3980, metadata !272), !dbg !3981
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3982, metadata !272), !dbg !3983
  store i32 1, i32* %5, align 4, !dbg !3983
  br label %8, !dbg !3984, !llvm.loop !3985

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3986, metadata !272), !dbg !3988
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !3989, metadata !272), !dbg !3990
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !3991
  %10 = load i64*, i64** %4, align 8, !dbg !3993
  %11 = bitcast i64* %10 to i8*, !dbg !3994
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !3995
  store i32 %12, i32* %5, align 4, !dbg !3996
  %13 = load i32, i32* %5, align 4, !dbg !3997
  %14 = icmp ne i32 0, %13, !dbg !3998
  br i1 %14, label %15, label %16, !dbg !3999

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !4000

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4004
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 30, %struct.GuestLibV3Stat* %7), !dbg !4006
  store i32 %18, i32* %5, align 4, !dbg !4007
  %19 = load i32, i32* %5, align 4, !dbg !4008
  %20 = icmp ne i32 %19, 0, !dbg !4009
  br i1 %20, label %21, label %22, !dbg !4010

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !4011

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4015
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint64*, !dbg !4018
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %24, i32 0, i32 0, !dbg !4019
  %26 = load i8, i8* %25, align 8, !dbg !4019
  %27 = icmp ne i8 %26, 0, !dbg !4020
  br i1 %27, label %29, label %28, !dbg !4021

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !4022
  br label %35, !dbg !4025

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4026
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint64*, !dbg !4028
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint64, %struct.GuestLibV3StatUint64* %31, i32 0, i32 1, !dbg !4029
  %33 = load i64, i64* %32, align 8, !dbg !4029
  %34 = load i64*, i64** %4, align 8, !dbg !4030
  store i64 %33, i64* %34, align 8, !dbg !4031
  store i32 0, i32* %5, align 4, !dbg !4032
  br label %35, !dbg !4033

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !4034
  ret i32 %36, !dbg !4035
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemZippedMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !4036 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !4037, metadata !272), !dbg !4038
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4039, metadata !272), !dbg !4040
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4041, metadata !272), !dbg !4042
  store i32 1, i32* %5, align 4, !dbg !4042
  br label %8, !dbg !4043, !llvm.loop !4044

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4045, metadata !272), !dbg !4047
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !4048, metadata !272), !dbg !4049
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4050
  %10 = load i32*, i32** %4, align 8, !dbg !4052
  %11 = bitcast i32* %10 to i8*, !dbg !4053
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !4054
  store i32 %12, i32* %5, align 4, !dbg !4055
  %13 = load i32, i32* %5, align 4, !dbg !4056
  %14 = icmp ne i32 0, %13, !dbg !4057
  br i1 %14, label %15, label %16, !dbg !4058

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !4059

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4063
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 31, %struct.GuestLibV3Stat* %7), !dbg !4065
  store i32 %18, i32* %5, align 4, !dbg !4066
  %19 = load i32, i32* %5, align 4, !dbg !4067
  %20 = icmp ne i32 %19, 0, !dbg !4068
  br i1 %20, label %21, label %22, !dbg !4069

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !4070

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4074
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint32*, !dbg !4077
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %24, i32 0, i32 0, !dbg !4078
  %26 = load i8, i8* %25, align 8, !dbg !4078
  %27 = icmp ne i8 %26, 0, !dbg !4079
  br i1 %27, label %29, label %28, !dbg !4080

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !4081
  br label %35, !dbg !4084

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4085
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint32*, !dbg !4087
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %31, i32 0, i32 1, !dbg !4088
  %33 = load i32, i32* %32, align 4, !dbg !4088
  %34 = load i32*, i32** %4, align 8, !dbg !4089
  store i32 %33, i32* %34, align 4, !dbg !4090
  store i32 0, i32* %5, align 4, !dbg !4091
  br label %35, !dbg !4092

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !4093
  ret i32 %36, !dbg !4094
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemZipSavedMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !4095 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !4096, metadata !272), !dbg !4097
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4098, metadata !272), !dbg !4099
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4100, metadata !272), !dbg !4101
  store i32 1, i32* %5, align 4, !dbg !4101
  br label %8, !dbg !4102, !llvm.loop !4103

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4104, metadata !272), !dbg !4106
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !4107, metadata !272), !dbg !4108
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4109
  %10 = load i32*, i32** %4, align 8, !dbg !4111
  %11 = bitcast i32* %10 to i8*, !dbg !4112
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !4113
  store i32 %12, i32* %5, align 4, !dbg !4114
  %13 = load i32, i32* %5, align 4, !dbg !4115
  %14 = icmp ne i32 0, %13, !dbg !4116
  br i1 %14, label %15, label %16, !dbg !4117

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !4118

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4122
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 32, %struct.GuestLibV3Stat* %7), !dbg !4124
  store i32 %18, i32* %5, align 4, !dbg !4125
  %19 = load i32, i32* %5, align 4, !dbg !4126
  %20 = icmp ne i32 %19, 0, !dbg !4127
  br i1 %20, label %21, label %22, !dbg !4128

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !4129

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4133
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint32*, !dbg !4136
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %24, i32 0, i32 0, !dbg !4137
  %26 = load i8, i8* %25, align 8, !dbg !4137
  %27 = icmp ne i8 %26, 0, !dbg !4138
  br i1 %27, label %29, label %28, !dbg !4139

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !4140
  br label %35, !dbg !4143

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4144
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint32*, !dbg !4146
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %31, i32 0, i32 1, !dbg !4147
  %33 = load i32, i32* %32, align 4, !dbg !4147
  %34 = load i32*, i32** %4, align 8, !dbg !4148
  store i32 %33, i32* %34, align 4, !dbg !4149
  store i32 0, i32* %5, align 4, !dbg !4150
  br label %35, !dbg !4151

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !4152
  ret i32 %36, !dbg !4153
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemLLSwappedMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !4154 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !4155, metadata !272), !dbg !4156
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4157, metadata !272), !dbg !4158
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4159, metadata !272), !dbg !4160
  store i32 1, i32* %5, align 4, !dbg !4160
  br label %8, !dbg !4161, !llvm.loop !4162

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4163, metadata !272), !dbg !4165
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !4166, metadata !272), !dbg !4167
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4168
  %10 = load i32*, i32** %4, align 8, !dbg !4170
  %11 = bitcast i32* %10 to i8*, !dbg !4171
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !4172
  store i32 %12, i32* %5, align 4, !dbg !4173
  %13 = load i32, i32* %5, align 4, !dbg !4174
  %14 = icmp ne i32 0, %13, !dbg !4175
  br i1 %14, label %15, label %16, !dbg !4176

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !4177

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4181
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 33, %struct.GuestLibV3Stat* %7), !dbg !4183
  store i32 %18, i32* %5, align 4, !dbg !4184
  %19 = load i32, i32* %5, align 4, !dbg !4185
  %20 = icmp ne i32 %19, 0, !dbg !4186
  br i1 %20, label %21, label %22, !dbg !4187

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !4188

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4192
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint32*, !dbg !4195
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %24, i32 0, i32 0, !dbg !4196
  %26 = load i8, i8* %25, align 8, !dbg !4196
  %27 = icmp ne i8 %26, 0, !dbg !4197
  br i1 %27, label %29, label %28, !dbg !4198

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !4199
  br label %35, !dbg !4202

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4203
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint32*, !dbg !4205
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %31, i32 0, i32 1, !dbg !4206
  %33 = load i32, i32* %32, align 4, !dbg !4206
  %34 = load i32*, i32** %4, align 8, !dbg !4207
  store i32 %33, i32* %34, align 4, !dbg !4208
  store i32 0, i32* %5, align 4, !dbg !4209
  br label %35, !dbg !4210

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !4211
  ret i32 %36, !dbg !4212
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemSwapTargetMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !4213 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !4214, metadata !272), !dbg !4215
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4216, metadata !272), !dbg !4217
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4218, metadata !272), !dbg !4219
  store i32 1, i32* %5, align 4, !dbg !4219
  br label %8, !dbg !4220, !llvm.loop !4221

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4222, metadata !272), !dbg !4224
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !4225, metadata !272), !dbg !4226
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4227
  %10 = load i32*, i32** %4, align 8, !dbg !4229
  %11 = bitcast i32* %10 to i8*, !dbg !4230
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !4231
  store i32 %12, i32* %5, align 4, !dbg !4232
  %13 = load i32, i32* %5, align 4, !dbg !4233
  %14 = icmp ne i32 0, %13, !dbg !4234
  br i1 %14, label %15, label %16, !dbg !4235

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !4236

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4240
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 34, %struct.GuestLibV3Stat* %7), !dbg !4242
  store i32 %18, i32* %5, align 4, !dbg !4243
  %19 = load i32, i32* %5, align 4, !dbg !4244
  %20 = icmp ne i32 %19, 0, !dbg !4245
  br i1 %20, label %21, label %22, !dbg !4246

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !4247

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4251
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint32*, !dbg !4254
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %24, i32 0, i32 0, !dbg !4255
  %26 = load i8, i8* %25, align 8, !dbg !4255
  %27 = icmp ne i8 %26, 0, !dbg !4256
  br i1 %27, label %29, label %28, !dbg !4257

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !4258
  br label %35, !dbg !4261

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4262
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint32*, !dbg !4264
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %31, i32 0, i32 1, !dbg !4265
  %33 = load i32, i32* %32, align 4, !dbg !4265
  %34 = load i32*, i32** %4, align 8, !dbg !4266
  store i32 %33, i32* %34, align 4, !dbg !4267
  store i32 0, i32* %5, align 4, !dbg !4268
  br label %35, !dbg !4269

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !4270
  ret i32 %36, !dbg !4271
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemBalloonTargetMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !4272 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !4273, metadata !272), !dbg !4274
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4275, metadata !272), !dbg !4276
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4277, metadata !272), !dbg !4278
  store i32 1, i32* %5, align 4, !dbg !4278
  br label %8, !dbg !4279, !llvm.loop !4280

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4281, metadata !272), !dbg !4283
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !4284, metadata !272), !dbg !4285
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4286
  %10 = load i32*, i32** %4, align 8, !dbg !4288
  %11 = bitcast i32* %10 to i8*, !dbg !4289
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !4290
  store i32 %12, i32* %5, align 4, !dbg !4291
  %13 = load i32, i32* %5, align 4, !dbg !4292
  %14 = icmp ne i32 0, %13, !dbg !4293
  br i1 %14, label %15, label %16, !dbg !4294

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !4295

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4299
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 35, %struct.GuestLibV3Stat* %7), !dbg !4301
  store i32 %18, i32* %5, align 4, !dbg !4302
  %19 = load i32, i32* %5, align 4, !dbg !4303
  %20 = icmp ne i32 %19, 0, !dbg !4304
  br i1 %20, label %21, label %22, !dbg !4305

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !4306

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4310
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint32*, !dbg !4313
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %24, i32 0, i32 0, !dbg !4314
  %26 = load i8, i8* %25, align 8, !dbg !4314
  %27 = icmp ne i8 %26, 0, !dbg !4315
  br i1 %27, label %29, label %28, !dbg !4316

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !4317
  br label %35, !dbg !4320

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4321
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint32*, !dbg !4323
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %31, i32 0, i32 1, !dbg !4324
  %33 = load i32, i32* %32, align 4, !dbg !4324
  %34 = load i32*, i32** %4, align 8, !dbg !4325
  store i32 %33, i32* %34, align 4, !dbg !4326
  store i32 0, i32* %5, align 4, !dbg !4327
  br label %35, !dbg !4328

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !4329
  ret i32 %36, !dbg !4330
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_GetMemBalloonMaxMB(%struct._VMGuestLibHandle*, i32*) #0 !dbg !4331 {
  %3 = alloca %struct._VMGuestLibHandle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.GuestLibV3Stat, align 8
  store %struct._VMGuestLibHandle* %0, %struct._VMGuestLibHandle** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._VMGuestLibHandle** %3, metadata !4332, metadata !272), !dbg !4333
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4334, metadata !272), !dbg !4335
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4336, metadata !272), !dbg !4337
  store i32 1, i32* %5, align 4, !dbg !4337
  br label %8, !dbg !4338, !llvm.loop !4339

; <label>:8:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4340, metadata !272), !dbg !4342
  call void @llvm.dbg.declare(metadata %struct.GuestLibV3Stat* %7, metadata !4343, metadata !272), !dbg !4344
  %9 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4345
  %10 = load i32*, i32** %4, align 8, !dbg !4347
  %11 = bitcast i32* %10 to i8*, !dbg !4348
  %12 = call i32 @VMGuestLibCheckArgs(%struct._VMGuestLibHandle* %9, i8* %11, i8** %6), !dbg !4349
  store i32 %12, i32* %5, align 4, !dbg !4350
  %13 = load i32, i32* %5, align 4, !dbg !4351
  %14 = icmp ne i32 0, %13, !dbg !4352
  br i1 %14, label %15, label %16, !dbg !4353

; <label>:15:                                     ; preds = %8
  br label %35, !dbg !4354

; <label>:16:                                     ; preds = %8
  %17 = load %struct._VMGuestLibHandle*, %struct._VMGuestLibHandle** %3, align 8, !dbg !4358
  %18 = call i32 @VMGuestLibGetStatisticsV3(%struct._VMGuestLibHandle* %17, i32 36, %struct.GuestLibV3Stat* %7), !dbg !4360
  store i32 %18, i32* %5, align 4, !dbg !4361
  %19 = load i32, i32* %5, align 4, !dbg !4362
  %20 = icmp ne i32 %19, 0, !dbg !4363
  br i1 %20, label %21, label %22, !dbg !4364

; <label>:21:                                     ; preds = %16
  br label %35, !dbg !4365

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4369
  %24 = bitcast %union.anon* %23 to %struct.GuestLibV3StatUint32*, !dbg !4372
  %25 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %24, i32 0, i32 0, !dbg !4373
  %26 = load i8, i8* %25, align 8, !dbg !4373
  %27 = icmp ne i8 %26, 0, !dbg !4374
  br i1 %27, label %29, label %28, !dbg !4375

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %5, align 4, !dbg !4376
  br label %35, !dbg !4379

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.GuestLibV3Stat, %struct.GuestLibV3Stat* %7, i32 0, i32 1, !dbg !4380
  %31 = bitcast %union.anon* %30 to %struct.GuestLibV3StatUint32*, !dbg !4382
  %32 = getelementptr inbounds %struct.GuestLibV3StatUint32, %struct.GuestLibV3StatUint32* %31, i32 0, i32 1, !dbg !4383
  %33 = load i32, i32* %32, align 4, !dbg !4383
  %34 = load i32*, i32** %4, align 8, !dbg !4384
  store i32 %33, i32* %34, align 4, !dbg !4385
  store i32 0, i32* %5, align 4, !dbg !4386
  br label %35, !dbg !4387

; <label>:35:                                     ; preds = %29, %28, %21, %15
  %36 = load i32, i32* %5, align 4, !dbg !4388
  ret i32 %36, !dbg !4389
}

; Function Attrs: nounwind uwtable
define signext i8 @VMGuestLib_AtomicUpdateCookie(i8*, i8*, i8**, i64*) #0 !dbg !4390 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.GuestLibIoctlParam, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4393, metadata !272), !dbg !4394
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4395, metadata !272), !dbg !4396
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !4397, metadata !272), !dbg !4398
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !4399, metadata !272), !dbg !4400
  call void @llvm.dbg.declare(metadata %struct.GuestLibIoctlParam* %9, metadata !4401, metadata !272), !dbg !4402
  %10 = getelementptr inbounds %struct.GuestLibIoctlParam, %struct.GuestLibIoctlParam* %9, i32 0, i32 0, !dbg !4403
  store i32 1, i32* %10, align 8, !dbg !4404
  %11 = load i8*, i8** %5, align 8, !dbg !4405
  %12 = getelementptr inbounds %struct.GuestLibIoctlParam, %struct.GuestLibIoctlParam* %9, i32 0, i32 1, !dbg !4406
  %13 = bitcast %union.anon.1* %12 to %struct.GuestLibIoctlAtomicUpdateCookie*, !dbg !4407
  %14 = getelementptr inbounds %struct.GuestLibIoctlAtomicUpdateCookie, %struct.GuestLibIoctlAtomicUpdateCookie* %13, i32 0, i32 0, !dbg !4408
  store i8* %11, i8** %14, align 8, !dbg !4409
  %15 = load i8*, i8** %6, align 8, !dbg !4410
  %16 = getelementptr inbounds %struct.GuestLibIoctlParam, %struct.GuestLibIoctlParam* %9, i32 0, i32 1, !dbg !4411
  %17 = bitcast %union.anon.1* %16 to %struct.GuestLibIoctlAtomicUpdateCookie*, !dbg !4412
  %18 = getelementptr inbounds %struct.GuestLibIoctlAtomicUpdateCookie, %struct.GuestLibIoctlAtomicUpdateCookie* %17, i32 0, i32 1, !dbg !4413
  store i8* %15, i8** %18, align 8, !dbg !4414
  %19 = load i8**, i8*** %7, align 8, !dbg !4415
  %20 = load i64*, i64** %8, align 8, !dbg !4416
  %21 = call signext i8 @VMGuestLibIoctl(%struct.GuestLibIoctlParam* %9, i8** %19, i64* %20), !dbg !4417
  ret i8 %21, !dbg !4418
}

; Function Attrs: nounwind uwtable
define internal signext i8 @VMGuestLibIoctl(%struct.GuestLibIoctlParam*, i8**, i64*) #0 !dbg !256 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.GuestLibIoctlParam*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.XDR, align 8
  %9 = alloca i8, align 1
  store %struct.GuestLibIoctlParam* %0, %struct.GuestLibIoctlParam** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestLibIoctlParam** %5, metadata !4419, metadata !272), !dbg !4420
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !4421, metadata !272), !dbg !4422
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4423, metadata !272), !dbg !4424
  call void @llvm.dbg.declare(metadata %struct.XDR* %8, metadata !4425, metadata !272), !dbg !4426
  call void @llvm.dbg.declare(metadata i8* %9, metadata !4427, metadata !272), !dbg !4428
  %10 = load %struct.GuestLibIoctlParam*, %struct.GuestLibIoctlParam** %5, align 8, !dbg !4429
  %11 = icmp eq %struct.GuestLibIoctlParam* %10, null, !dbg !4431
  br i1 %11, label %17, label %12, !dbg !4432

; <label>:12:                                     ; preds = %3
  %13 = load %struct.GuestLibIoctlParam*, %struct.GuestLibIoctlParam** %5, align 8, !dbg !4433
  %14 = getelementptr inbounds %struct.GuestLibIoctlParam, %struct.GuestLibIoctlParam* %13, i32 0, i32 0, !dbg !4435
  %15 = load i32, i32* %14, align 8, !dbg !4435
  %16 = icmp uge i32 %15, 2, !dbg !4436
  br i1 %16, label %17, label %18, !dbg !4437

; <label>:17:                                     ; preds = %12, %3
  store i8 0, i8* %4, align 1, !dbg !4438
  br label %46, !dbg !4438

; <label>:18:                                     ; preds = %12
  %19 = call %struct.XDR* @DynXdr_Create(%struct.XDR* %8), !dbg !4440
  %20 = icmp eq %struct.XDR* null, %19, !dbg !4442
  br i1 %20, label %21, label %22, !dbg !4443

; <label>:21:                                     ; preds = %18
  store i8 0, i8* %4, align 1, !dbg !4444
  br label %46, !dbg !4444

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** @VMGuestLibIoctl.request, align 8, !dbg !4446
  %24 = load i8*, i8** @VMGuestLibIoctl.request, align 8, !dbg !4448
  %25 = call i64 @strlen(i8* %24) #7, !dbg !4449
  %26 = call signext i8 @DynXdr_AppendRaw(%struct.XDR* %8, i8* %23, i64 %25), !dbg !4450
  %27 = icmp ne i8 %26, 0, !dbg !4452
  br i1 %27, label %28, label %32, !dbg !4453

; <label>:28:                                     ; preds = %22
  %29 = load %struct.GuestLibIoctlParam*, %struct.GuestLibIoctlParam** %5, align 8, !dbg !4454
  %30 = call i32 @xdr_GuestLibIoctlParam(%struct.XDR* %8, %struct.GuestLibIoctlParam* %29), !dbg !4455
  %31 = icmp ne i32 %30, 0, !dbg !4455
  br i1 %31, label %33, label %32, !dbg !4456

; <label>:32:                                     ; preds = %28, %22
  call void @DynXdr_Destroy(%struct.XDR* %8, i8 signext 1), !dbg !4458
  store i8 0, i8* %4, align 1, !dbg !4460
  br label %46, !dbg !4460

; <label>:33:                                     ; preds = %28
  %34 = call i8* @DynXdr_Get(%struct.XDR* %8), !dbg !4461
  %35 = getelementptr inbounds %struct.XDR, %struct.XDR* %8, i32 0, i32 1, !dbg !4462
  %36 = load %struct.xdr_ops*, %struct.xdr_ops** %35, align 8, !dbg !4462
  %37 = getelementptr inbounds %struct.xdr_ops, %struct.xdr_ops* %36, i32 0, i32 4, !dbg !4463
  %38 = load i32 (%struct.XDR*)*, i32 (%struct.XDR*)** %37, align 8, !dbg !4463
  %39 = call i32 %38(%struct.XDR* %8), !dbg !4464
  %40 = zext i32 %39 to i64, !dbg !4465
  %41 = load i8**, i8*** %6, align 8, !dbg !4466
  %42 = load i64*, i64** %7, align 8, !dbg !4467
  %43 = call i32 @RpcChannel_SendOneRaw(i8* %34, i64 %40, i8** %41, i64* %42), !dbg !4468
  %44 = trunc i32 %43 to i8, !dbg !4470
  store i8 %44, i8* %9, align 1, !dbg !4471
  call void @DynXdr_Destroy(%struct.XDR* %8, i8 signext 1), !dbg !4472
  %45 = load i8, i8* %9, align 1, !dbg !4473
  store i8 %45, i8* %4, align 1, !dbg !4474
  br label %46, !dbg !4474

; <label>:46:                                     ; preds = %33, %32, %21, %17
  %47 = load i8, i8* %4, align 1, !dbg !4475
  ret i8 %47, !dbg !4475
}

; Function Attrs: nounwind uwtable
define i32 @VMGuestLib_StatGet(i8*, i8*, i8**, i64*) #0 !dbg !4476 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4479, metadata !272), !dbg !4480
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4481, metadata !272), !dbg !4482
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !4483, metadata !272), !dbg !4484
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !4485, metadata !272), !dbg !4486
  call void @llvm.dbg.declare(metadata [256 x i8]* %10, metadata !4487, metadata !272), !dbg !4491
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4492, metadata !272), !dbg !4493
  call void @llvm.dbg.declare(metadata i8* %12, metadata !4494, metadata !272), !dbg !4495
  %13 = load i8*, i8** %6, align 8, !dbg !4496
  %14 = icmp eq i8* %13, null, !dbg !4498
  br i1 %14, label %15, label %16, !dbg !4499

; <label>:15:                                     ; preds = %4
  store i32 9, i32* %5, align 4, !dbg !4500
  br label %44, !dbg !4500

; <label>:16:                                     ; preds = %4
  %17 = load i8*, i8** %7, align 8, !dbg !4502
  %18 = icmp eq i8* %17, null, !dbg !4504
  br i1 %18, label %19, label %20, !dbg !4505

; <label>:19:                                     ; preds = %16
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8** %7, align 8, !dbg !4506
  br label %20, !dbg !4508

; <label>:20:                                     ; preds = %19, %16
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !4509
  %22 = load i8*, i8** %6, align 8, !dbg !4510
  %23 = load i8*, i8** %7, align 8, !dbg !4511
  %24 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %21, i64 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8* %22, i8* %23), !dbg !4512
  store i32 %24, i32* %11, align 4, !dbg !4513
  %25 = load i32, i32* %11, align 4, !dbg !4514
  %26 = icmp eq i32 %25, -1, !dbg !4516
  br i1 %26, label %31, label %27, !dbg !4517

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %11, align 4, !dbg !4518
  %29 = sext i32 %28 to i64, !dbg !4518
  %30 = icmp uge i64 %29, 256, !dbg !4520
  br i1 %30, label %31, label %32, !dbg !4521

; <label>:31:                                     ; preds = %27, %20
  store i32 7, i32* %5, align 4, !dbg !4522
  br label %44, !dbg !4522

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !4524
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !4525
  %35 = call i64 @strlen(i8* %34) #7, !dbg !4526
  %36 = load i8**, i8*** %8, align 8, !dbg !4527
  %37 = load i64*, i64** %9, align 8, !dbg !4528
  %38 = call i32 @RpcChannel_SendOneRaw(i8* %33, i64 %35, i8** %36, i64* %37), !dbg !4529
  %39 = trunc i32 %38 to i8, !dbg !4531
  store i8 %39, i8* %12, align 1, !dbg !4532
  %40 = load i8, i8* %12, align 1, !dbg !4533
  %41 = sext i8 %40 to i32, !dbg !4533
  %42 = icmp ne i32 %41, 0, !dbg !4533
  %43 = select i1 %42, i32 0, i32 4, !dbg !4533
  store i32 %43, i32* %5, align 4, !dbg !4534
  br label %44, !dbg !4534

; <label>:44:                                     ; preds = %32, %31, %15
  %45 = load i32, i32* %5, align 4, !dbg !4535
  ret i32 %45, !dbg !4535
}

declare i32 @Str_Snprintf(i8*, i64, i8*, ...) #2

declare i32 @RpcChannel_SendOneRaw(i8*, i64, i8**, i64*) #2

; Function Attrs: nounwind uwtable
define void @VMGuestLib_StatFree(i8*, i64) #0 !dbg !4536 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4539, metadata !272), !dbg !4540
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4541, metadata !272), !dbg !4542
  %5 = load i8*, i8** %3, align 8, !dbg !4543
  call void @free(i8* %5) #6, !dbg !4544
  ret void, !dbg !4545
}

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #2

declare i32 @RpcChannel_SendOne(i8**, i64*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare signext i8 @StrUtil_GetNextUintToken(i32*, i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @xdrmem_create(%struct.XDR*, i8*, i32, i32) #3

declare i32 @xdr_GuestLibV3StatCount(%struct.XDR*, i32*) #2

declare %struct.XDR* @DynXdr_Create(%struct.XDR*) #2

declare signext i8 @DynXdr_AppendRaw(%struct.XDR*, i8*, i64) #2

declare i32 @xdr_GuestLibIoctlParam(%struct.XDR*, %struct.GuestLibIoctlParam*) #2

declare void @DynXdr_Destroy(%struct.XDR*, i8 signext) #2

declare i8* @DynXdr_Get(%struct.XDR*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!264, !265}
!llvm.ident = !{!266}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !70, globals: !254)
!1 = !DIFile(filename: "libguestlib_la-vmGuestLib.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!2 = !{!3, !17, !59, !65}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 43, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmGuestLib.h", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !DIEnumerator(name: "VMGUESTLIB_ERROR_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "VMGUESTLIB_ERROR_OTHER", value: 1)
!8 = !DIEnumerator(name: "VMGUESTLIB_ERROR_NOT_RUNNING_IN_VM", value: 2)
!9 = !DIEnumerator(name: "VMGUESTLIB_ERROR_NOT_ENABLED", value: 3)
!10 = !DIEnumerator(name: "VMGUESTLIB_ERROR_NOT_AVAILABLE", value: 4)
!11 = !DIEnumerator(name: "VMGUESTLIB_ERROR_NO_INFO", value: 5)
!12 = !DIEnumerator(name: "VMGUESTLIB_ERROR_MEMORY", value: 6)
!13 = !DIEnumerator(name: "VMGUESTLIB_ERROR_BUFFER_TOO_SMALL", value: 7)
!14 = !DIEnumerator(name: "VMGUESTLIB_ERROR_INVALID_HANDLE", value: 8)
!15 = !DIEnumerator(name: "VMGUESTLIB_ERROR_INVALID_ARG", value: 9)
!16 = !DIEnumerator(name: "VMGUESTLIB_ERROR_UNSUPPORTED_VERSION", value: 10)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GuestLibV3TypeIds", file: !18, line: 47, size: 32, align: 32, elements: !19)
!18 = !DIFile(filename: "guestlibV3.h", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!20 = !DIEnumerator(name: "GUESTLIB_TYPE_RESERVED", value: 0)
!21 = !DIEnumerator(name: "GUESTLIB_CPU_RESERVATION_MHZ", value: 1)
!22 = !DIEnumerator(name: "GUESTLIB_CPU_LIMIT_MHZ", value: 2)
!23 = !DIEnumerator(name: "GUESTLIB_CPU_SHARES", value: 3)
!24 = !DIEnumerator(name: "GUESTLIB_CPU_USED_MS", value: 4)
!25 = !DIEnumerator(name: "GUESTLIB_HOST_MHZ", value: 5)
!26 = !DIEnumerator(name: "GUESTLIB_MEM_RESERVATION_MB", value: 6)
!27 = !DIEnumerator(name: "GUESTLIB_MEM_LIMIT_MB", value: 7)
!28 = !DIEnumerator(name: "GUESTLIB_MEM_SHARES", value: 8)
!29 = !DIEnumerator(name: "GUESTLIB_MEM_MAPPED_MB", value: 9)
!30 = !DIEnumerator(name: "GUESTLIB_MEM_ACTIVE_MB", value: 10)
!31 = !DIEnumerator(name: "GUESTLIB_MEM_OVERHEAD_MB", value: 11)
!32 = !DIEnumerator(name: "GUESTLIB_MEM_BALLOONED_MB", value: 12)
!33 = !DIEnumerator(name: "GUESTLIB_MEM_SWAPPED_MB", value: 13)
!34 = !DIEnumerator(name: "GUESTLIB_MEM_SHARED_MB", value: 14)
!35 = !DIEnumerator(name: "GUESTLIB_MEM_SHARED_SAVED_MB", value: 15)
!36 = !DIEnumerator(name: "GUESTLIB_MEM_USED_MB", value: 16)
!37 = !DIEnumerator(name: "GUESTLIB_ELAPSED_MS", value: 17)
!38 = !DIEnumerator(name: "GUESTLIB_RESOURCE_POOL_PATH", value: 18)
!39 = !DIEnumerator(name: "GUESTLIB_CPU_STOLEN_MS", value: 19)
!40 = !DIEnumerator(name: "GUESTLIB_MEM_TARGET_SIZE_MB", value: 20)
!41 = !DIEnumerator(name: "GUESTLIB_HOST_CPU_NUM_CORES", value: 21)
!42 = !DIEnumerator(name: "GUESTLIB_HOST_CPU_USED_MS", value: 22)
!43 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_SWAPPED_MB", value: 23)
!44 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_SHARED_MB", value: 24)
!45 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_USED_MB", value: 25)
!46 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_PHYS_MB", value: 26)
!47 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_PHYS_FREE_MB", value: 27)
!48 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_KERN_OVHD_MB", value: 28)
!49 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_MAPPED_MB", value: 29)
!50 = !DIEnumerator(name: "GUESTLIB_HOST_MEM_UNMAPPED_MB", value: 30)
!51 = !DIEnumerator(name: "GUESTLIB_MEM_ZIPPED_MB", value: 31)
!52 = !DIEnumerator(name: "GUESTLIB_MEM_ZIPSAVED_MB", value: 32)
!53 = !DIEnumerator(name: "GUESTLIB_MEM_LLSWAPPED_MB", value: 33)
!54 = !DIEnumerator(name: "GUESTLIB_MEM_SWAP_TARGET_MB", value: 34)
!55 = !DIEnumerator(name: "GUESTLIB_MEM_BALLOON_TARGET_MB", value: 35)
!56 = !DIEnumerator(name: "GUESTLIB_MEM_BALLOON_MAX_MB", value: 36)
!57 = !DIEnumerator(name: "GUESTLIB_RESOURCE_POOL_PATH_LONG", value: 37)
!58 = !DIEnumerator(name: "GUESTLIB_MAX_STATISTIC_ID", value: 38)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !60, line: 81, size: 32, align: 32, elements: !61)
!60 = !DIFile(filename: "/usr/include/rpc/xdr.h", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!63 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!64 = !DIEnumerator(name: "XDR_FREE", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GuestLibIoctlId", file: !66, line: 28, size: 32, align: 32, elements: !67)
!66 = !DIFile(filename: "guestlibIoctl.h", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "GUESTLIB_IOCTL_ATOMIC_UPDATE_COOKIE", value: 1)
!69 = !DIEnumerator(name: "GUESTLIB_IOCTL_MAX", value: 2)
!70 = !{!71, !72, !75, !96, !132, !176, !230, !240}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMGuestLibHandle", file: !4, line: 74, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "_VMGuestLibHandle", file: !4, line: 73, flags: DIFlagFwdDecl)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMGuestLibHandleType", file: !77, line: 70, baseType: !78)
!77 = !DIFile(filename: "vmGuestLib.c", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 55, size: 256, align: 64, elements: !79)
!79 = !{!80, !86, !92, !95}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !78, file: !77, line: 56, baseType: !81, size: 32, align: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !82, line: 173, baseType: !83)
!82 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !84, line: 51, baseType: !85)
!84 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!85 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sessionId", scope: !78, file: !77, line: 57, baseType: !87, size: 64, align: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMSessionId", file: !88, line: 28, baseType: !89)
!88 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmSessionId.h", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !82, line: 171, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !84, line: 55, baseType: !91)
!91 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "dataSize", scope: !78, file: !77, line: 68, baseType: !93, size: 64, align: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 216, baseType: !91)
!94 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!95 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !78, file: !77, line: 69, baseType: !71, size: 64, align: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdrproc_t", file: !60, line: 152, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !103, !71, null}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !101, line: 37, baseType: !102)
!101 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!102 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !60, line: 109, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !60, line: 110, size: 384, align: 64, elements: !106)
!106 = !{!107, !108, !172, !173, !174, !175}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !105, file: !60, line: 112, baseType: !59, size: 32, align: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !105, file: !60, line: 136, baseType: !109, size: 64, align: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !60, line: 113, size: 640, align: 64, elements: !111)
!111 = !{!112, !118, !124, !136, !142, !148, !152, !158, !162, !166}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !110, file: !60, line: 115, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!100, !103, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !110, file: !60, line: 117, baseType: !119, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!100, !103, !122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !110, file: !60, line: 119, baseType: !125, size: 64, align: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!100, !103, !128, !134}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !129, line: 116, baseType: !130)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !131, line: 183, baseType: !132)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !129, line: 35, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !131, line: 32, baseType: !85)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !110, file: !60, line: 121, baseType: !137, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!100, !103, !140, !134}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !110, file: !60, line: 123, baseType: !143, size: 64, align: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!134, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !110, file: !60, line: 125, baseType: !149, size: 64, align: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!100, !103, !134}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !110, file: !60, line: 127, baseType: !153, size: 64, align: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !103, !134}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !129, line: 196, baseType: !102)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !110, file: !60, line: 129, baseType: !159, size: 64, align: 64, offset: 448)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !103}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !110, file: !60, line: 131, baseType: !163, size: 64, align: 64, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!100, !103, !156}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !110, file: !60, line: 133, baseType: !167, size: 64, align: 64, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!100, !103, !170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !105, file: !60, line: 137, baseType: !128, size: 64, align: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !105, file: !60, line: 138, baseType: !128, size: 64, align: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !105, file: !60, line: 139, baseType: !128, size: 64, align: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !105, file: !60, line: 140, baseType: !134, size: 32, align: 32, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMGuestLibDataV2", file: !178, line: 180, baseType: !179)
!178 = !DIFile(filename: "vmGuestLibInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1332")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VMGuestLibDataV2", file: !178, line: 138, size: 5352, align: 8, elements: !180)
!180 = !{!181, !187, !194, !195, !196, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !179, file: !178, line: 140, baseType: !182, size: 96, align: 8)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMGuestLibHeader", file: !178, line: 128, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 123, size: 96, align: 8, elements: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !183, file: !178, line: 124, baseType: !81, size: 32, align: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sessionId", scope: !183, file: !178, line: 125, baseType: !87, size: 64, align: 64, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "cpuReservationMHz", scope: !179, file: !178, line: 145, baseType: !188, size: 64, align: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "StatUint32", file: !178, line: 52, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 49, size: 64, align: 32, elements: !190)
!190 = !{!191, !193}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !189, file: !178, line: 50, baseType: !192, size: 8, align: 8)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !82, line: 230, baseType: !133)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !189, file: !178, line: 51, baseType: !81, size: 32, align: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cpuLimitMHz", scope: !179, file: !178, line: 146, baseType: !188, size: 64, align: 32, offset: 160)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "cpuShares", scope: !179, file: !178, line: 147, baseType: !188, size: 64, align: 32, offset: 224)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "cpuUsedMs", scope: !179, file: !178, line: 148, baseType: !197, size: 96, align: 8, offset: 288)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "StatUint64", file: !178, line: 69, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 63, size: 96, align: 8, elements: !199)
!199 = !{!200, !201, !208}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !198, file: !178, line: 64, baseType: !192, size: 8, align: 8)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !198, file: !178, line: 65, baseType: !202, size: 24, align: 8, offset: 8)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 24, align: 8, elements: !206)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !82, line: 177, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !84, line: 48, baseType: !205)
!205 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!206 = !{!207}
!207 = !DISubrange(count: 3)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !178, line: 66, baseType: !89, size: 64, align: 64, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "hostMHz", scope: !179, file: !178, line: 151, baseType: !188, size: 64, align: 32, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "memReservationMB", scope: !179, file: !178, line: 154, baseType: !188, size: 64, align: 32, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "memLimitMB", scope: !179, file: !178, line: 155, baseType: !188, size: 64, align: 32, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "memShares", scope: !179, file: !178, line: 156, baseType: !188, size: 64, align: 32, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "memMappedMB", scope: !179, file: !178, line: 157, baseType: !188, size: 64, align: 32, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "memActiveMB", scope: !179, file: !178, line: 158, baseType: !188, size: 64, align: 32, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "memOverheadMB", scope: !179, file: !178, line: 159, baseType: !188, size: 64, align: 32, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "memBalloonedMB", scope: !179, file: !178, line: 160, baseType: !188, size: 64, align: 32, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "memSwappedMB", scope: !179, file: !178, line: 161, baseType: !188, size: 64, align: 32, offset: 896)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "memSharedMB", scope: !179, file: !178, line: 162, baseType: !188, size: 64, align: 32, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "memSharedSavedMB", scope: !179, file: !178, line: 163, baseType: !188, size: 64, align: 32, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "memUsedMB", scope: !179, file: !178, line: 164, baseType: !188, size: 64, align: 32, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "elapsedMs", scope: !179, file: !178, line: 167, baseType: !197, size: 96, align: 8, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "resourcePoolPath", scope: !179, file: !178, line: 177, baseType: !223, size: 4104, align: 8, offset: 1248)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !178, line: 174, size: 4104, align: 8, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !223, file: !178, line: 175, baseType: !192, size: 8, align: 8)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !223, file: !178, line: 176, baseType: !227, size: 4096, align: 8, offset: 8)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 4096, align: 8, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 512)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMGuestLibDataV3", file: !178, line: 213, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VMGuestLibDataV3", file: !178, line: 204, size: 128, align: 8, elements: !233)
!233 = !{!234, !235, !236}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !232, file: !178, line: 206, baseType: !182, size: 96, align: 8)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "dataSize", scope: !232, file: !178, line: 209, baseType: !81, size: 32, align: 32, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !232, file: !178, line: 210, baseType: !237, align: 8, offset: 128)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, align: 8, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 0)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibIoctlParam", file: !66, line: 46, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibIoctlParam", file: !66, line: 40, size: 192, align: 64, elements: !243)
!243 = !{!244, !246}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !242, file: !66, line: 41, baseType: !245, size: 32, align: 32)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibIoctlId", file: !66, line: 32, baseType: !65)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "GuestLibIoctlParam_u", scope: !242, file: !66, line: 44, baseType: !247, size: 128, align: 64, offset: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !66, line: 42, size: 128, align: 64, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "atomicUpdateCookie", scope: !247, file: !66, line: 43, baseType: !250, size: 128, align: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibIoctlAtomicUpdateCookie", file: !66, line: 34, size: 128, align: 64, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !250, file: !66, line: 35, baseType: !132, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !250, file: !66, line: 36, baseType: !132, size: 64, align: 64, offset: 64)
!254 = !{!255}
!255 = distinct !DIGlobalVariable(name: "request", scope: !256, file: !77, line: 1788, type: !140, isLocal: true, isDefinition: true, variable: i8** @VMGuestLibIoctl.request)
!256 = distinct !DISubprogram(name: "VMGuestLibIoctl", scope: !77, file: !77, line: 1782, type: !257, isLocal: true, isDefinition: true, scopeLine: 1785, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!257 = !DISubroutineType(types: !258)
!258 = !{!192, !259, !261, !262}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!263 = !{}
!264 = !{i32 2, !"Dwarf Version", i32 4}
!265 = !{i32 2, !"Debug Info Version", i32 3}
!266 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!267 = distinct !DISubprogram(name: "VMGuestLib_GetErrorText", scope: !77, file: !77, line: 150, type: !268, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!268 = !DISubroutineType(types: !269)
!269 = !{!140, !270}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMGuestLibError", file: !4, line: 55, baseType: !3)
!271 = !DILocalVariable(name: "error", arg: 1, scope: !267, file: !77, line: 150, type: !270)
!272 = !DIExpression()
!273 = !DILocation(line: 150, column: 41, scope: !267)
!274 = !DILocation(line: 152, column: 12, scope: !267)
!275 = !DILocation(line: 152, column: 4, scope: !267)
!276 = !DILocation(line: 154, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !267, file: !77, line: 152, column: 19)
!278 = !DILocation(line: 157, column: 7, scope: !277)
!279 = !DILocation(line: 160, column: 7, scope: !277)
!280 = !DILocation(line: 163, column: 7, scope: !277)
!281 = !DILocation(line: 166, column: 7, scope: !277)
!282 = !DILocation(line: 169, column: 7, scope: !277)
!283 = !DILocation(line: 172, column: 7, scope: !277)
!284 = !DILocation(line: 175, column: 7, scope: !277)
!285 = !DILocation(line: 178, column: 7, scope: !277)
!286 = !DILocation(line: 181, column: 7, scope: !277)
!287 = !DILocation(line: 184, column: 7, scope: !277)
!288 = !DILocation(line: 188, column: 7, scope: !277)
!289 = !DILocation(line: 192, column: 1, scope: !267)
!290 = distinct !DISubprogram(name: "VMGuestLib_OpenHandle", scope: !77, file: !77, line: 258, type: !291, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!291 = !DISubroutineType(types: !292)
!292 = !{!270, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!294 = !DILocalVariable(name: "handle", arg: 1, scope: !290, file: !77, line: 258, type: !293)
!295 = !DILocation(line: 258, column: 41, scope: !290)
!296 = !DILocalVariable(name: "data", scope: !290, file: !77, line: 260, type: !75)
!297 = !DILocation(line: 260, column: 26, scope: !290)
!298 = !DILocation(line: 262, column: 9, scope: !299)
!299 = distinct !DILexicalBlock(scope: !290, file: !77, line: 262, column: 8)
!300 = !DILocation(line: 262, column: 8, scope: !290)
!301 = !DILocation(line: 263, column: 7, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !77, line: 262, column: 35)
!303 = !DILocation(line: 264, column: 7, scope: !302)
!304 = !DILocation(line: 267, column: 15, scope: !305)
!305 = distinct !DILexicalBlock(scope: !290, file: !77, line: 267, column: 7)
!306 = !DILocation(line: 267, column: 12, scope: !305)
!307 = !DILocation(line: 267, column: 7, scope: !290)
!308 = !DILocation(line: 268, column: 7, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !77, line: 267, column: 23)
!310 = !DILocation(line: 271, column: 11, scope: !290)
!311 = !DILocation(line: 271, column: 9, scope: !290)
!312 = !DILocation(line: 272, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !290, file: !77, line: 272, column: 8)
!314 = !DILocation(line: 272, column: 8, scope: !290)
!315 = !DILocation(line: 273, column: 7, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !77, line: 272, column: 15)
!317 = !DILocation(line: 274, column: 7, scope: !316)
!318 = !DILocation(line: 277, column: 32, scope: !290)
!319 = !DILocation(line: 277, column: 14, scope: !290)
!320 = !DILocation(line: 277, column: 5, scope: !290)
!321 = !DILocation(line: 277, column: 12, scope: !290)
!322 = !DILocation(line: 278, column: 4, scope: !290)
!323 = !DILocation(line: 279, column: 1, scope: !290)
!324 = distinct !DISubprogram(name: "VMGuestLib_CloseHandle", scope: !77, file: !77, line: 301, type: !325, isLocal: false, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!325 = !DISubroutineType(types: !326)
!326 = !{!270, !72}
!327 = !DILocalVariable(name: "handle", arg: 1, scope: !324, file: !77, line: 301, type: !72)
!328 = !DILocation(line: 301, column: 41, scope: !324)
!329 = !DILocalVariable(name: "data", scope: !324, file: !77, line: 303, type: !71)
!330 = !DILocation(line: 303, column: 10, scope: !324)
!331 = !DILocation(line: 305, column: 15, scope: !332)
!332 = distinct !DILexicalBlock(scope: !324, file: !77, line: 305, column: 7)
!333 = !DILocation(line: 305, column: 12, scope: !332)
!334 = !DILocation(line: 305, column: 7, scope: !324)
!335 = !DILocation(line: 306, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !77, line: 305, column: 23)
!337 = !DILocation(line: 309, column: 38, scope: !324)
!338 = !DILocation(line: 309, column: 48, scope: !324)
!339 = !DILocation(line: 309, column: 9, scope: !324)
!340 = !DILocation(line: 310, column: 8, scope: !341)
!341 = distinct !DILexicalBlock(scope: !324, file: !77, line: 310, column: 8)
!342 = !DILocation(line: 310, column: 13, scope: !341)
!343 = !DILocation(line: 310, column: 20, scope: !341)
!344 = !DILocation(line: 311, column: 35, scope: !341)
!345 = !DILocation(line: 311, column: 45, scope: !341)
!346 = !DILocation(line: 311, column: 56, scope: !341)
!347 = !DILocation(line: 311, column: 61, scope: !341)
!348 = !DILocation(line: 312, column: 35, scope: !341)
!349 = !DILocation(line: 312, column: 45, scope: !341)
!350 = !DILocation(line: 312, column: 54, scope: !341)
!351 = !DILocation(line: 310, column: 8, scope: !352)
!352 = !DILexicalBlockFile(scope: !324, file: !77, discriminator: 1)
!353 = !DILocalVariable(name: "v3stats", scope: !354, file: !77, line: 313, type: !355)
!354 = distinct !DILexicalBlock(scope: !341, file: !77, line: 312, column: 60)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMGuestLibStatisticsV3", file: !77, line: 52, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 49, size: 64, align: 64, elements: !358)
!358 = !{!359, !361}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "numStats", scope: !357, file: !77, line: 50, baseType: !360, size: 32, align: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibV3StatCount", file: !18, line: 45, baseType: !81)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !357, file: !77, line: 51, baseType: !362, align: 64, offset: 64)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, align: 64, elements: !238)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibV3Stat", file: !18, line: 132, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibV3Stat", file: !18, line: 90, size: 256, align: 64, elements: !365)
!365 = !{!366, !368}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !364, file: !18, line: 91, baseType: !367, size: 32, align: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibV3TypeIds", file: !18, line: 88, baseType: !17)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "GuestLibV3Stat_u", scope: !364, file: !18, line: 130, baseType: !369, size: 192, align: 64, offset: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !364, file: !18, line: 92, size: 192, align: 64, elements: !370)
!370 = !{!371, !376, !377, !378, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "cpuReservationMHz", scope: !369, file: !18, line: 93, baseType: !372, size: 64, align: 32)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibV3StatUint32", file: !18, line: 17, size: 64, align: 32, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !372, file: !18, line: 18, baseType: !192, size: 8, align: 8)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !372, file: !18, line: 19, baseType: !81, size: 32, align: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "cpuLimitMHz", scope: !369, file: !18, line: 94, baseType: !372, size: 64, align: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "cpuShares", scope: !369, file: !18, line: 95, baseType: !372, size: 64, align: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "cpuUsedMs", scope: !369, file: !18, line: 96, baseType: !379, size: 128, align: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibV3StatUint64", file: !18, line: 23, size: 128, align: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !379, file: !18, line: 24, baseType: !192, size: 8, align: 8)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !379, file: !18, line: 25, baseType: !89, size: 64, align: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "hostMHz", scope: !369, file: !18, line: 97, baseType: !372, size: 64, align: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "memReservationMB", scope: !369, file: !18, line: 98, baseType: !372, size: 64, align: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "memLimitMB", scope: !369, file: !18, line: 99, baseType: !372, size: 64, align: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "memShares", scope: !369, file: !18, line: 100, baseType: !372, size: 64, align: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "memMappedMB", scope: !369, file: !18, line: 101, baseType: !372, size: 64, align: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "memActiveMB", scope: !369, file: !18, line: 102, baseType: !372, size: 64, align: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "memOverheadMB", scope: !369, file: !18, line: 103, baseType: !372, size: 64, align: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "memBalloonedMB", scope: !369, file: !18, line: 104, baseType: !372, size: 64, align: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "memSwappedMB", scope: !369, file: !18, line: 105, baseType: !372, size: 64, align: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "memSharedMB", scope: !369, file: !18, line: 106, baseType: !372, size: 64, align: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "memSharedSavedMB", scope: !369, file: !18, line: 107, baseType: !372, size: 64, align: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "memUsedMB", scope: !369, file: !18, line: 108, baseType: !372, size: 64, align: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "elapsedMs", scope: !369, file: !18, line: 109, baseType: !379, size: 128, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "resourcePoolPath", scope: !369, file: !18, line: 110, baseType: !397, size: 128, align: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibV3String", file: !18, line: 30, size: 128, align: 64, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !397, file: !18, line: 31, baseType: !192, size: 8, align: 8)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !397, file: !18, line: 32, baseType: !132, size: 64, align: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "cpuStolenMs", scope: !369, file: !18, line: 111, baseType: !379, size: 128, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "memTargetSizeMB", scope: !369, file: !18, line: 112, baseType: !379, size: 128, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "hostCpuNumCores", scope: !369, file: !18, line: 113, baseType: !372, size: 64, align: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "hostCpuUsedMs", scope: !369, file: !18, line: 114, baseType: !379, size: 128, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemSwappedMB", scope: !369, file: !18, line: 115, baseType: !379, size: 128, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemSharedMB", scope: !369, file: !18, line: 116, baseType: !379, size: 128, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemUsedMB", scope: !369, file: !18, line: 117, baseType: !379, size: 128, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemPhysMB", scope: !369, file: !18, line: 118, baseType: !379, size: 128, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemPhysFreeMB", scope: !369, file: !18, line: 119, baseType: !379, size: 128, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemKernOvhdMB", scope: !369, file: !18, line: 120, baseType: !379, size: 128, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemMappedMB", scope: !369, file: !18, line: 121, baseType: !379, size: 128, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "hostMemUnmappedMB", scope: !369, file: !18, line: 122, baseType: !379, size: 128, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "memZippedMB", scope: !369, file: !18, line: 123, baseType: !372, size: 64, align: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "memZipSavedMB", scope: !369, file: !18, line: 124, baseType: !372, size: 64, align: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "memLLSwappedMB", scope: !369, file: !18, line: 125, baseType: !372, size: 64, align: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "memSwapTargetMB", scope: !369, file: !18, line: 126, baseType: !372, size: 64, align: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "memBalloonTargetMB", scope: !369, file: !18, line: 127, baseType: !372, size: 64, align: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "memBalloonMaxMB", scope: !369, file: !18, line: 128, baseType: !372, size: 64, align: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "resourcePoolPathLong", scope: !369, file: !18, line: 129, baseType: !420, size: 192, align: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibV3ByteArray", file: !18, line: 36, size: 192, align: 64, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !420, file: !18, line: 37, baseType: !192, size: 8, align: 8)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !420, file: !18, line: 41, baseType: !424, size: 128, align: 64, offset: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !420, file: !18, line: 38, size: 128, align: 64, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "value_len", scope: !424, file: !18, line: 39, baseType: !134, size: 32, align: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "value_val", scope: !424, file: !18, line: 40, baseType: !132, size: 64, align: 64, offset: 64)
!428 = !DILocation(line: 313, column: 31, scope: !354)
!429 = !DILocation(line: 313, column: 41, scope: !354)
!430 = !DILocalVariable(name: "count", scope: !354, file: !77, line: 314, type: !360)
!431 = !DILocation(line: 314, column: 27, scope: !354)
!432 = !DILocation(line: 316, column: 18, scope: !433)
!433 = distinct !DILexicalBlock(scope: !354, file: !77, line: 316, column: 7)
!434 = !DILocation(line: 316, column: 12, scope: !433)
!435 = !DILocation(line: 316, column: 23, scope: !436)
!436 = !DILexicalBlockFile(scope: !437, file: !77, discriminator: 1)
!437 = distinct !DILexicalBlock(scope: !433, file: !77, line: 316, column: 7)
!438 = !DILocation(line: 316, column: 31, scope: !436)
!439 = !DILocation(line: 316, column: 40, scope: !436)
!440 = !DILocation(line: 316, column: 29, scope: !436)
!441 = !DILocation(line: 316, column: 7, scope: !436)
!442 = !DILocation(line: 317, column: 77, scope: !443)
!443 = distinct !DILexicalBlock(scope: !437, file: !77, line: 316, column: 59)
!444 = !DILocation(line: 317, column: 62, scope: !443)
!445 = !DILocation(line: 317, column: 71, scope: !443)
!446 = !DILocation(line: 317, column: 52, scope: !443)
!447 = !DILocation(line: 317, column: 10, scope: !443)
!448 = !DILocation(line: 318, column: 7, scope: !443)
!449 = !DILocation(line: 316, column: 55, scope: !450)
!450 = !DILexicalBlockFile(scope: !437, file: !77, discriminator: 2)
!451 = !DILocation(line: 316, column: 7, scope: !450)
!452 = distinct !{!452, !453}
!453 = !DILocation(line: 316, column: 7, scope: !354)
!454 = !DILocation(line: 319, column: 4, scope: !354)
!455 = !DILocation(line: 320, column: 9, scope: !324)
!456 = !DILocation(line: 320, column: 4, scope: !324)
!457 = !DILocation(line: 323, column: 31, scope: !324)
!458 = !DILocation(line: 323, column: 41, scope: !324)
!459 = !DILocation(line: 323, column: 47, scope: !324)
!460 = !DILocation(line: 324, column: 9, scope: !324)
!461 = !DILocation(line: 324, column: 4, scope: !324)
!462 = !DILocation(line: 326, column: 4, scope: !324)
!463 = !DILocation(line: 327, column: 1, scope: !324)
!464 = distinct !DISubprogram(name: "VMGuestLib_UpdateInfo", scope: !77, file: !77, line: 591, type: !325, isLocal: false, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!465 = !DILocalVariable(name: "handle", arg: 1, scope: !464, file: !77, line: 591, type: !72)
!466 = !DILocation(line: 591, column: 40, scope: !464)
!467 = !DILocalVariable(name: "error", scope: !464, file: !77, line: 593, type: !270)
!468 = !DILocation(line: 593, column: 20, scope: !464)
!469 = !DILocation(line: 595, column: 15, scope: !470)
!470 = distinct !DILexicalBlock(scope: !464, file: !77, line: 595, column: 7)
!471 = !DILocation(line: 595, column: 12, scope: !470)
!472 = !DILocation(line: 595, column: 7, scope: !464)
!473 = !DILocation(line: 596, column: 7, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !77, line: 595, column: 23)
!475 = !DILocation(line: 604, column: 33, scope: !464)
!476 = !DILocation(line: 604, column: 12, scope: !464)
!477 = !DILocation(line: 604, column: 10, scope: !464)
!478 = !DILocation(line: 605, column: 8, scope: !479)
!479 = distinct !DILexicalBlock(scope: !464, file: !77, line: 605, column: 8)
!480 = !DILocation(line: 605, column: 14, scope: !479)
!481 = !DILocation(line: 605, column: 8, scope: !464)
!482 = !DILocation(line: 606, column: 50, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !77, line: 605, column: 43)
!484 = !DILocation(line: 606, column: 7, scope: !483)
!485 = !DILocation(line: 607, column: 34, scope: !483)
!486 = !DILocation(line: 607, column: 44, scope: !483)
!487 = !DILocation(line: 607, column: 55, scope: !483)
!488 = !DILocation(line: 608, column: 14, scope: !483)
!489 = !DILocation(line: 608, column: 7, scope: !483)
!490 = !DILocation(line: 611, column: 4, scope: !464)
!491 = !DILocation(line: 612, column: 1, scope: !464)
!492 = distinct !DISubprogram(name: "VMGuestLibUpdateInfo", scope: !77, file: !77, line: 349, type: !325, isLocal: true, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!493 = !DILocalVariable(name: "handle", arg: 1, scope: !492, file: !77, line: 349, type: !72)
!494 = !DILocation(line: 349, column: 39, scope: !492)
!495 = !DILocalVariable(name: "reply", scope: !492, file: !77, line: 351, type: !132)
!496 = !DILocation(line: 351, column: 10, scope: !492)
!497 = !DILocalVariable(name: "replyLen", scope: !492, file: !77, line: 352, type: !93)
!498 = !DILocation(line: 352, column: 11, scope: !492)
!499 = !DILocalVariable(name: "ret", scope: !492, file: !77, line: 353, type: !270)
!500 = !DILocation(line: 353, column: 20, scope: !492)
!501 = !DILocalVariable(name: "hostVersion", scope: !492, file: !77, line: 354, type: !81)
!502 = !DILocation(line: 354, column: 11, scope: !492)
!503 = !DILocation(line: 354, column: 52, scope: !492)
!504 = !DILocation(line: 354, column: 62, scope: !492)
!505 = !DILocation(line: 361, column: 8, scope: !506)
!506 = distinct !DILexicalBlock(scope: !492, file: !77, line: 361, column: 8)
!507 = !DILocation(line: 361, column: 20, scope: !506)
!508 = !DILocation(line: 361, column: 8, scope: !492)
!509 = !DILocation(line: 362, column: 19, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !77, line: 361, column: 26)
!511 = !DILocation(line: 363, column: 4, scope: !510)
!512 = !DILocation(line: 365, column: 4, scope: !492)
!513 = distinct !{!513, !512}
!514 = !DILocalVariable(name: "commandBuf", scope: !515, file: !77, line: 366, type: !516)
!515 = distinct !DILexicalBlock(scope: !492, file: !77, line: 365, column: 7)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 512, align: 8, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 64)
!519 = !DILocation(line: 366, column: 12, scope: !515)
!520 = !DILocalVariable(name: "index", scope: !515, file: !77, line: 367, type: !85)
!521 = !DILocation(line: 367, column: 20, scope: !515)
!522 = !DILocation(line: 370, column: 12, scope: !515)
!523 = !DILocation(line: 370, column: 7, scope: !515)
!524 = !DILocation(line: 371, column: 13, scope: !515)
!525 = !DILocation(line: 377, column: 19, scope: !515)
!526 = !DILocation(line: 379, column: 19, scope: !515)
!527 = !DILocation(line: 377, column: 7, scope: !515)
!528 = !DILocation(line: 382, column: 49, scope: !529)
!529 = distinct !DILexicalBlock(scope: !515, file: !77, line: 382, column: 11)
!530 = !DILocation(line: 382, column: 11, scope: !529)
!531 = !DILocation(line: 382, column: 11, scope: !515)
!532 = !DILocalVariable(name: "v2reply", scope: !533, file: !77, line: 383, type: !176)
!533 = distinct !DILexicalBlock(scope: !529, file: !77, line: 382, column: 62)
!534 = !DILocation(line: 383, column: 28, scope: !533)
!535 = !DILocation(line: 383, column: 58, scope: !533)
!536 = !DILocation(line: 383, column: 38, scope: !533)
!537 = !DILocalVariable(name: "sessionId", scope: !533, file: !77, line: 384, type: !87)
!538 = !DILocation(line: 384, column: 22, scope: !533)
!539 = !DILocation(line: 384, column: 61, scope: !533)
!540 = !DILocation(line: 384, column: 71, scope: !533)
!541 = !DILocation(line: 388, column: 14, scope: !542)
!542 = distinct !DILexicalBlock(scope: !533, file: !77, line: 388, column: 14)
!543 = !DILocation(line: 388, column: 24, scope: !542)
!544 = !DILocation(line: 388, column: 29, scope: !542)
!545 = !DILocation(line: 388, column: 32, scope: !546)
!546 = !DILexicalBlockFile(scope: !542, file: !77, discriminator: 1)
!547 = !DILocation(line: 388, column: 45, scope: !546)
!548 = !DILocation(line: 388, column: 54, scope: !546)
!549 = !DILocation(line: 388, column: 58, scope: !546)
!550 = !DILocation(line: 388, column: 42, scope: !546)
!551 = !DILocation(line: 388, column: 14, scope: !546)
!552 = !DILocation(line: 390, column: 25, scope: !553)
!553 = distinct !DILexicalBlock(scope: !542, file: !77, line: 388, column: 69)
!554 = !DILocation(line: 391, column: 40, scope: !553)
!555 = !DILocation(line: 391, column: 50, scope: !553)
!556 = !DILocation(line: 391, column: 61, scope: !553)
!557 = !DILocation(line: 392, column: 13, scope: !553)
!558 = !DILocation(line: 394, column: 14, scope: !533)
!559 = !DILocation(line: 395, column: 10, scope: !533)
!560 = !DILocation(line: 402, column: 46, scope: !515)
!561 = !DILocation(line: 402, column: 54, scope: !562)
!562 = !DILexicalBlockFile(scope: !515, file: !77, discriminator: 1)
!563 = !DILocation(line: 402, column: 46, scope: !562)
!564 = !DILocation(line: 402, column: 46, scope: !565)
!565 = !DILexicalBlockFile(scope: !515, file: !77, discriminator: 2)
!566 = !DILocation(line: 402, column: 46, scope: !567)
!567 = !DILexicalBlockFile(scope: !515, file: !77, discriminator: 3)
!568 = !DILocation(line: 402, column: 7, scope: !567)
!569 = !DILocation(line: 404, column: 11, scope: !570)
!570 = distinct !DILexicalBlock(scope: !515, file: !77, line: 404, column: 11)
!571 = !DILocation(line: 404, column: 23, scope: !570)
!572 = !DILocation(line: 404, column: 28, scope: !570)
!573 = !DILocation(line: 405, column: 19, scope: !570)
!574 = !DILocation(line: 405, column: 11, scope: !570)
!575 = !DILocation(line: 405, column: 71, scope: !570)
!576 = !DILocation(line: 404, column: 11, scope: !562)
!577 = !DILocation(line: 413, column: 14, scope: !578)
!578 = distinct !DILexicalBlock(scope: !570, file: !77, line: 405, column: 77)
!579 = !DILocation(line: 414, column: 10, scope: !578)
!580 = !DILocation(line: 415, column: 18, scope: !581)
!581 = distinct !DILexicalBlock(scope: !570, file: !77, line: 415, column: 18)
!582 = !DILocation(line: 415, column: 30, scope: !581)
!583 = !DILocation(line: 415, column: 18, scope: !570)
!584 = !DILocation(line: 421, column: 22, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !77, line: 415, column: 36)
!586 = !DILocation(line: 422, column: 37, scope: !585)
!587 = !DILocation(line: 422, column: 47, scope: !585)
!588 = !DILocation(line: 422, column: 58, scope: !585)
!589 = !DILocation(line: 423, column: 10, scope: !585)
!590 = !DILocation(line: 424, column: 66, scope: !591)
!591 = distinct !DILexicalBlock(scope: !581, file: !77, line: 424, column: 18)
!592 = !DILocation(line: 424, column: 19, scope: !591)
!593 = !DILocation(line: 424, column: 18, scope: !581)
!594 = !DILocation(line: 430, column: 10, scope: !595)
!595 = distinct !DILexicalBlock(scope: !591, file: !77, line: 424, column: 79)
!596 = !DILocation(line: 431, column: 14, scope: !595)
!597 = !DILocation(line: 432, column: 10, scope: !595)
!598 = !DILocation(line: 435, column: 4, scope: !515)
!599 = !DILocation(line: 435, column: 13, scope: !600)
!600 = !DILexicalBlockFile(scope: !492, file: !77, discriminator: 1)
!601 = !DILocation(line: 435, column: 17, scope: !600)
!602 = !DILocation(line: 435, column: 4, scope: !600)
!603 = !DILocation(line: 437, column: 8, scope: !604)
!604 = distinct !DILexicalBlock(scope: !492, file: !77, line: 437, column: 8)
!605 = !DILocation(line: 437, column: 12, scope: !604)
!606 = !DILocation(line: 437, column: 8, scope: !492)
!607 = !DILocation(line: 438, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !604, file: !77, line: 437, column: 41)
!609 = !DILocation(line: 442, column: 8, scope: !610)
!610 = distinct !DILexicalBlock(scope: !492, file: !77, line: 442, column: 8)
!611 = !DILocation(line: 442, column: 17, scope: !610)
!612 = !DILocation(line: 442, column: 8, scope: !492)
!613 = !DILocation(line: 443, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !610, file: !77, line: 442, column: 39)
!615 = !DILocation(line: 444, column: 11, scope: !614)
!616 = !DILocation(line: 445, column: 7, scope: !614)
!617 = !DILocation(line: 448, column: 8, scope: !618)
!618 = distinct !DILexicalBlock(scope: !492, file: !77, line: 448, column: 8)
!619 = !DILocation(line: 448, column: 20, scope: !618)
!620 = !DILocation(line: 448, column: 8, scope: !492)
!621 = !DILocalVariable(name: "v2reply", scope: !622, file: !77, line: 449, type: !176)
!622 = distinct !DILexicalBlock(scope: !618, file: !77, line: 448, column: 26)
!623 = !DILocation(line: 449, column: 25, scope: !622)
!624 = !DILocation(line: 449, column: 55, scope: !622)
!625 = !DILocation(line: 449, column: 35, scope: !622)
!626 = !DILocalVariable(name: "dataSize", scope: !622, file: !77, line: 450, type: !93)
!627 = !DILocation(line: 450, column: 14, scope: !622)
!628 = !DILocation(line: 453, column: 11, scope: !629)
!629 = distinct !DILexicalBlock(scope: !622, file: !77, line: 453, column: 11)
!630 = !DILocation(line: 453, column: 20, scope: !629)
!631 = !DILocation(line: 453, column: 24, scope: !629)
!632 = !DILocation(line: 453, column: 35, scope: !629)
!633 = !DILocation(line: 453, column: 32, scope: !629)
!634 = !DILocation(line: 453, column: 11, scope: !622)
!635 = !DILocation(line: 454, column: 10, scope: !636)
!636 = distinct !DILexicalBlock(scope: !629, file: !77, line: 453, column: 48)
!637 = !DILocation(line: 455, column: 14, scope: !636)
!638 = !DILocation(line: 456, column: 10, scope: !636)
!639 = !DILocation(line: 458, column: 11, scope: !640)
!640 = distinct !DILexicalBlock(scope: !622, file: !77, line: 458, column: 11)
!641 = !DILocation(line: 458, column: 23, scope: !640)
!642 = !DILocation(line: 458, column: 20, scope: !640)
!643 = !DILocation(line: 458, column: 11, scope: !622)
!644 = !DILocation(line: 459, column: 10, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !77, line: 458, column: 33)
!646 = !DILocation(line: 460, column: 14, scope: !645)
!647 = !DILocation(line: 461, column: 10, scope: !645)
!648 = !DILocation(line: 465, column: 55, scope: !622)
!649 = !DILocation(line: 465, column: 64, scope: !622)
!650 = !DILocation(line: 465, column: 68, scope: !622)
!651 = !DILocation(line: 465, column: 34, scope: !622)
!652 = !DILocation(line: 465, column: 44, scope: !622)
!653 = !DILocation(line: 465, column: 53, scope: !622)
!654 = !DILocation(line: 466, column: 57, scope: !622)
!655 = !DILocation(line: 466, column: 66, scope: !622)
!656 = !DILocation(line: 466, column: 70, scope: !622)
!657 = !DILocation(line: 466, column: 34, scope: !622)
!658 = !DILocation(line: 466, column: 44, scope: !622)
!659 = !DILocation(line: 466, column: 55, scope: !622)
!660 = !DILocation(line: 467, column: 38, scope: !661)
!661 = distinct !DILexicalBlock(scope: !622, file: !77, line: 467, column: 11)
!662 = !DILocation(line: 467, column: 48, scope: !661)
!663 = !DILocation(line: 467, column: 60, scope: !661)
!664 = !DILocation(line: 467, column: 58, scope: !661)
!665 = !DILocation(line: 467, column: 11, scope: !622)
!666 = !DILocation(line: 469, column: 42, scope: !667)
!667 = distinct !DILexicalBlock(scope: !661, file: !77, line: 467, column: 70)
!668 = !DILocation(line: 469, column: 52, scope: !667)
!669 = !DILocation(line: 469, column: 10, scope: !667)
!670 = !DILocation(line: 470, column: 77, scope: !667)
!671 = !DILocation(line: 470, column: 55, scope: !667)
!672 = !DILocation(line: 470, column: 37, scope: !667)
!673 = !DILocation(line: 470, column: 47, scope: !667)
!674 = !DILocation(line: 470, column: 53, scope: !667)
!675 = !DILocation(line: 471, column: 59, scope: !667)
!676 = !DILocation(line: 471, column: 37, scope: !667)
!677 = !DILocation(line: 471, column: 47, scope: !667)
!678 = !DILocation(line: 471, column: 57, scope: !667)
!679 = !DILocation(line: 472, column: 7, scope: !667)
!680 = !DILocation(line: 473, column: 41, scope: !622)
!681 = !DILocation(line: 473, column: 51, scope: !622)
!682 = !DILocation(line: 473, column: 58, scope: !622)
!683 = !DILocation(line: 473, column: 65, scope: !622)
!684 = !DILocation(line: 473, column: 7, scope: !622)
!685 = !DILocation(line: 476, column: 44, scope: !622)
!686 = !DILocation(line: 476, column: 54, scope: !622)
!687 = !DILocation(line: 476, column: 17, scope: !622)
!688 = !DILocation(line: 476, column: 15, scope: !622)
!689 = !DILocation(line: 477, column: 7, scope: !622)
!690 = !DILocation(line: 477, column: 16, scope: !622)
!691 = !DILocation(line: 477, column: 33, scope: !622)
!692 = !DILocation(line: 477, column: 83, scope: !622)
!693 = !DILocation(line: 478, column: 11, scope: !622)
!694 = !DILocation(line: 479, column: 4, scope: !622)
!695 = !DILocation(line: 479, column: 15, scope: !696)
!696 = !DILexicalBlockFile(scope: !697, file: !77, discriminator: 1)
!697 = distinct !DILexicalBlock(scope: !618, file: !77, line: 479, column: 15)
!698 = !DILocation(line: 479, column: 27, scope: !696)
!699 = !DILocalVariable(name: "v3reply", scope: !700, file: !77, line: 480, type: !230)
!700 = distinct !DILexicalBlock(scope: !697, file: !77, line: 479, column: 33)
!701 = !DILocation(line: 480, column: 25, scope: !700)
!702 = !DILocation(line: 480, column: 55, scope: !700)
!703 = !DILocation(line: 480, column: 35, scope: !700)
!704 = !DILocalVariable(name: "dataSize", scope: !700, file: !77, line: 481, type: !93)
!705 = !DILocation(line: 481, column: 14, scope: !700)
!706 = !DILocalVariable(name: "xdrs", scope: !700, file: !77, line: 482, type: !104)
!707 = !DILocation(line: 482, column: 11, scope: !700)
!708 = !DILocalVariable(name: "count", scope: !700, file: !77, line: 483, type: !360)
!709 = !DILocation(line: 483, column: 27, scope: !700)
!710 = !DILocalVariable(name: "v3stats", scope: !700, file: !77, line: 484, type: !355)
!711 = !DILocation(line: 484, column: 31, scope: !700)
!712 = !DILocation(line: 487, column: 11, scope: !713)
!713 = distinct !DILexicalBlock(scope: !700, file: !77, line: 487, column: 11)
!714 = !DILocation(line: 487, column: 20, scope: !713)
!715 = !DILocation(line: 487, column: 24, scope: !713)
!716 = !DILocation(line: 487, column: 35, scope: !713)
!717 = !DILocation(line: 487, column: 32, scope: !713)
!718 = !DILocation(line: 487, column: 11, scope: !700)
!719 = !DILocation(line: 488, column: 10, scope: !720)
!720 = distinct !DILexicalBlock(scope: !713, file: !77, line: 487, column: 48)
!721 = !DILocation(line: 489, column: 14, scope: !720)
!722 = !DILocation(line: 490, column: 10, scope: !720)
!723 = !DILocation(line: 492, column: 11, scope: !724)
!724 = distinct !DILexicalBlock(scope: !700, file: !77, line: 492, column: 11)
!725 = !DILocation(line: 492, column: 20, scope: !724)
!726 = !DILocation(line: 492, column: 11, scope: !700)
!727 = !DILocation(line: 493, column: 10, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !77, line: 492, column: 39)
!729 = !DILocation(line: 494, column: 14, scope: !728)
!730 = !DILocation(line: 495, column: 10, scope: !728)
!731 = !DILocation(line: 499, column: 55, scope: !700)
!732 = !DILocation(line: 499, column: 64, scope: !700)
!733 = !DILocation(line: 499, column: 68, scope: !700)
!734 = !DILocation(line: 499, column: 34, scope: !700)
!735 = !DILocation(line: 499, column: 44, scope: !700)
!736 = !DILocation(line: 499, column: 53, scope: !700)
!737 = !DILocation(line: 500, column: 57, scope: !700)
!738 = !DILocation(line: 500, column: 66, scope: !700)
!739 = !DILocation(line: 500, column: 70, scope: !700)
!740 = !DILocation(line: 500, column: 34, scope: !700)
!741 = !DILocation(line: 500, column: 44, scope: !700)
!742 = !DILocation(line: 500, column: 55, scope: !700)
!743 = !DILocation(line: 506, column: 28, scope: !700)
!744 = !DILocation(line: 506, column: 37, scope: !700)
!745 = !DILocation(line: 506, column: 43, scope: !700)
!746 = !DILocation(line: 506, column: 52, scope: !700)
!747 = !DILocation(line: 506, column: 7, scope: !700)
!748 = !DILocation(line: 508, column: 12, scope: !749)
!749 = distinct !DILexicalBlock(scope: !700, file: !77, line: 508, column: 11)
!750 = !DILocation(line: 508, column: 11, scope: !700)
!751 = !DILocation(line: 509, column: 9, scope: !752)
!752 = distinct !DILexicalBlock(scope: !749, file: !77, line: 508, column: 52)
!753 = distinct !{!753, !751}
!754 = !DILocation(line: 509, column: 12, scope: !755)
!755 = !DILexicalBlockFile(scope: !756, file: !77, discriminator: 1)
!756 = distinct !DILexicalBlock(scope: !757, file: !77, line: 509, column: 18)
!757 = distinct !DILexicalBlock(scope: !752, file: !77, line: 509, column: 12)
!758 = !DILocation(line: 509, column: 19, scope: !755)
!759 = !DILocation(line: 509, column: 18, scope: !755)
!760 = !DILocation(line: 509, column: 12, scope: !761)
!761 = !DILexicalBlockFile(scope: !756, file: !77, discriminator: 2)
!762 = !DILocation(line: 509, column: 19, scope: !761)
!763 = !DILocation(line: 509, column: 30, scope: !761)
!764 = !DILocation(line: 509, column: 12, scope: !765)
!765 = !DILexicalBlockFile(scope: !757, file: !77, discriminator: 3)
!766 = !DILocation(line: 510, column: 10, scope: !752)
!767 = !DILocation(line: 512, column: 11, scope: !768)
!768 = distinct !DILexicalBlock(scope: !700, file: !77, line: 512, column: 11)
!769 = !DILocation(line: 512, column: 17, scope: !768)
!770 = !DILocation(line: 512, column: 11, scope: !700)
!771 = !DILocation(line: 517, column: 16, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !77, line: 512, column: 47)
!773 = !DILocation(line: 518, column: 7, scope: !772)
!774 = !DILocation(line: 521, column: 37, scope: !700)
!775 = !DILocation(line: 521, column: 43, scope: !700)
!776 = !DILocation(line: 521, column: 34, scope: !700)
!777 = !DILocation(line: 521, column: 16, scope: !700)
!778 = !DILocation(line: 522, column: 38, scope: !779)
!779 = distinct !DILexicalBlock(scope: !700, file: !77, line: 522, column: 11)
!780 = !DILocation(line: 522, column: 48, scope: !779)
!781 = !DILocation(line: 522, column: 60, scope: !779)
!782 = !DILocation(line: 522, column: 58, scope: !779)
!783 = !DILocation(line: 522, column: 11, scope: !700)
!784 = !DILocation(line: 523, column: 42, scope: !785)
!785 = distinct !DILexicalBlock(scope: !779, file: !77, line: 522, column: 70)
!786 = !DILocation(line: 523, column: 52, scope: !785)
!787 = !DILocation(line: 523, column: 10, scope: !785)
!788 = !DILocation(line: 524, column: 77, scope: !785)
!789 = !DILocation(line: 524, column: 55, scope: !785)
!790 = !DILocation(line: 524, column: 37, scope: !785)
!791 = !DILocation(line: 524, column: 47, scope: !785)
!792 = !DILocation(line: 524, column: 53, scope: !785)
!793 = !DILocation(line: 525, column: 59, scope: !785)
!794 = !DILocation(line: 525, column: 37, scope: !785)
!795 = !DILocation(line: 525, column: 47, scope: !785)
!796 = !DILocation(line: 525, column: 57, scope: !785)
!797 = !DILocation(line: 526, column: 7, scope: !785)
!798 = !DILocation(line: 529, column: 44, scope: !700)
!799 = !DILocation(line: 529, column: 54, scope: !700)
!800 = !DILocation(line: 529, column: 17, scope: !700)
!801 = !DILocation(line: 529, column: 15, scope: !700)
!802 = !DILocation(line: 530, column: 27, scope: !700)
!803 = !DILocation(line: 530, column: 7, scope: !700)
!804 = !DILocation(line: 530, column: 16, scope: !700)
!805 = !DILocation(line: 530, column: 25, scope: !700)
!806 = !DILocation(line: 531, column: 18, scope: !807)
!807 = distinct !DILexicalBlock(scope: !700, file: !77, line: 531, column: 7)
!808 = !DILocation(line: 531, column: 12, scope: !807)
!809 = !DILocation(line: 531, column: 23, scope: !810)
!810 = !DILexicalBlockFile(scope: !811, file: !77, discriminator: 1)
!811 = distinct !DILexicalBlock(scope: !807, file: !77, line: 531, column: 7)
!812 = !DILocation(line: 531, column: 31, scope: !810)
!813 = !DILocation(line: 531, column: 40, scope: !810)
!814 = !DILocation(line: 531, column: 29, scope: !810)
!815 = !DILocation(line: 531, column: 7, scope: !810)
!816 = !DILocalVariable(name: "statId", scope: !817, file: !77, line: 532, type: !367)
!817 = distinct !DILexicalBlock(scope: !811, file: !77, line: 531, column: 59)
!818 = !DILocation(line: 532, column: 28, scope: !817)
!819 = !DILocation(line: 532, column: 37, scope: !817)
!820 = !DILocation(line: 532, column: 43, scope: !817)
!821 = !DILocation(line: 535, column: 57, scope: !822)
!822 = distinct !DILexicalBlock(scope: !817, file: !77, line: 535, column: 14)
!823 = !DILocation(line: 535, column: 42, scope: !822)
!824 = !DILocation(line: 535, column: 51, scope: !822)
!825 = !DILocation(line: 535, column: 15, scope: !822)
!826 = !DILocation(line: 535, column: 14, scope: !817)
!827 = !DILocation(line: 536, column: 13, scope: !828)
!828 = distinct !DILexicalBlock(scope: !822, file: !77, line: 535, column: 66)
!829 = !DILocation(line: 540, column: 29, scope: !830)
!830 = distinct !DILexicalBlock(scope: !817, file: !77, line: 540, column: 14)
!831 = !DILocation(line: 540, column: 14, scope: !830)
!832 = !DILocation(line: 540, column: 23, scope: !830)
!833 = !DILocation(line: 540, column: 36, scope: !830)
!834 = !DILocation(line: 540, column: 41, scope: !830)
!835 = !DILocation(line: 540, column: 38, scope: !830)
!836 = !DILocation(line: 540, column: 14, scope: !817)
!837 = !DILocation(line: 541, column: 13, scope: !838)
!838 = distinct !DILexicalBlock(scope: !830, file: !77, line: 540, column: 49)
!839 = !DILocation(line: 543, column: 7, scope: !817)
!840 = !DILocation(line: 531, column: 55, scope: !841)
!841 = !DILexicalBlockFile(scope: !811, file: !77, discriminator: 2)
!842 = !DILocation(line: 531, column: 7, scope: !841)
!843 = distinct !{!843, !844}
!844 = !DILocation(line: 531, column: 7, scope: !700)
!845 = !DILocation(line: 544, column: 11, scope: !846)
!846 = distinct !DILexicalBlock(scope: !700, file: !77, line: 544, column: 11)
!847 = !DILocation(line: 544, column: 20, scope: !846)
!848 = !DILocation(line: 544, column: 29, scope: !846)
!849 = !DILocation(line: 544, column: 17, scope: !846)
!850 = !DILocation(line: 544, column: 11, scope: !700)
!851 = !DILocation(line: 545, column: 14, scope: !852)
!852 = distinct !DILexicalBlock(scope: !846, file: !77, line: 544, column: 39)
!853 = !DILocation(line: 546, column: 7, scope: !852)
!854 = !DILocalVariable(name: "c", scope: !855, file: !77, line: 551, type: !360)
!855 = distinct !DILexicalBlock(scope: !846, file: !77, line: 546, column: 14)
!856 = !DILocation(line: 551, column: 30, scope: !855)
!857 = !DILocation(line: 553, column: 17, scope: !858)
!858 = distinct !DILexicalBlock(scope: !855, file: !77, line: 553, column: 10)
!859 = !DILocation(line: 553, column: 15, scope: !858)
!860 = !DILocation(line: 553, column: 22, scope: !861)
!861 = !DILexicalBlockFile(scope: !862, file: !77, discriminator: 1)
!862 = distinct !DILexicalBlock(scope: !858, file: !77, line: 553, column: 10)
!863 = !DILocation(line: 553, column: 26, scope: !861)
!864 = !DILocation(line: 553, column: 24, scope: !861)
!865 = !DILocation(line: 553, column: 10, scope: !861)
!866 = !DILocation(line: 554, column: 80, scope: !867)
!867 = distinct !DILexicalBlock(scope: !862, file: !77, line: 553, column: 38)
!868 = !DILocation(line: 554, column: 65, scope: !867)
!869 = !DILocation(line: 554, column: 74, scope: !867)
!870 = !DILocation(line: 554, column: 55, scope: !867)
!871 = !DILocation(line: 554, column: 13, scope: !867)
!872 = !DILocation(line: 555, column: 10, scope: !867)
!873 = !DILocation(line: 553, column: 34, scope: !874)
!874 = !DILexicalBlockFile(scope: !862, file: !77, discriminator: 2)
!875 = !DILocation(line: 553, column: 10, scope: !874)
!876 = distinct !{!876, !877}
!877 = !DILocation(line: 553, column: 10, scope: !855)
!878 = !DILocation(line: 556, column: 37, scope: !855)
!879 = !DILocation(line: 556, column: 47, scope: !855)
!880 = !DILocation(line: 556, column: 58, scope: !855)
!881 = !DILocation(line: 560, column: 6, scope: !700)
!882 = distinct !{!882, !881}
!883 = !DILocation(line: 560, column: 9, scope: !884)
!884 = !DILexicalBlockFile(scope: !885, file: !77, discriminator: 1)
!885 = distinct !DILexicalBlock(scope: !886, file: !77, line: 560, column: 15)
!886 = distinct !DILexicalBlock(scope: !700, file: !77, line: 560, column: 9)
!887 = !DILocation(line: 560, column: 16, scope: !884)
!888 = !DILocation(line: 560, column: 15, scope: !884)
!889 = !DILocation(line: 560, column: 9, scope: !890)
!890 = !DILexicalBlockFile(scope: !885, file: !77, discriminator: 2)
!891 = !DILocation(line: 560, column: 16, scope: !890)
!892 = !DILocation(line: 560, column: 27, scope: !890)
!893 = !DILocation(line: 560, column: 9, scope: !894)
!894 = !DILexicalBlockFile(scope: !886, file: !77, discriminator: 3)
!895 = !DILocation(line: 561, column: 4, scope: !700)
!896 = !DILocation(line: 565, column: 11, scope: !897)
!897 = distinct !DILexicalBlock(scope: !697, file: !77, line: 561, column: 11)
!898 = !DILocation(line: 448, column: 23, scope: !899)
!899 = !DILexicalBlockFile(scope: !618, file: !77, discriminator: 1)
!900 = !DILocation(line: 569, column: 9, scope: !492)
!901 = !DILocation(line: 569, column: 4, scope: !492)
!902 = !DILocation(line: 570, column: 11, scope: !492)
!903 = !DILocation(line: 570, column: 4, scope: !492)
!904 = distinct !DISubprogram(name: "VMGuestLib_GetSessionId", scope: !77, file: !77, line: 632, type: !905, isLocal: false, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!905 = !DISubroutineType(types: !906)
!906 = !{!270, !72, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!908 = !DILocalVariable(name: "handle", arg: 1, scope: !904, file: !77, line: 632, type: !72)
!909 = !DILocation(line: 632, column: 42, scope: !904)
!910 = !DILocalVariable(name: "id", arg: 2, scope: !904, file: !77, line: 633, type: !907)
!911 = !DILocation(line: 633, column: 38, scope: !904)
!912 = !DILocalVariable(name: "data", scope: !904, file: !77, line: 635, type: !71)
!913 = !DILocation(line: 635, column: 10, scope: !904)
!914 = !DILocalVariable(name: "error", scope: !904, file: !77, line: 636, type: !270)
!915 = !DILocation(line: 636, column: 20, scope: !904)
!916 = !DILocation(line: 638, column: 32, scope: !904)
!917 = !DILocation(line: 638, column: 40, scope: !904)
!918 = !DILocation(line: 638, column: 12, scope: !904)
!919 = !DILocation(line: 638, column: 10, scope: !904)
!920 = !DILocation(line: 639, column: 36, scope: !921)
!921 = distinct !DILexicalBlock(scope: !904, file: !77, line: 639, column: 8)
!922 = !DILocation(line: 639, column: 33, scope: !921)
!923 = !DILocation(line: 639, column: 8, scope: !904)
!924 = !DILocation(line: 640, column: 14, scope: !925)
!925 = distinct !DILexicalBlock(scope: !921, file: !77, line: 639, column: 43)
!926 = !DILocation(line: 640, column: 7, scope: !925)
!927 = !DILocation(line: 643, column: 37, scope: !904)
!928 = !DILocation(line: 643, column: 47, scope: !904)
!929 = !DILocation(line: 643, column: 5, scope: !904)
!930 = !DILocation(line: 643, column: 8, scope: !904)
!931 = !DILocation(line: 645, column: 4, scope: !904)
!932 = !DILocation(line: 646, column: 1, scope: !904)
!933 = distinct !DISubprogram(name: "VMGuestLibCheckArgs", scope: !77, file: !77, line: 215, type: !934, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!934 = !DISubroutineType(types: !935)
!935 = !{!270, !72, !71, !936}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!937 = !DILocalVariable(name: "handle", arg: 1, scope: !933, file: !77, line: 215, type: !72)
!938 = !DILocation(line: 215, column: 38, scope: !933)
!939 = !DILocalVariable(name: "outArg", arg: 2, scope: !933, file: !77, line: 216, type: !71)
!940 = !DILocation(line: 216, column: 27, scope: !933)
!941 = !DILocalVariable(name: "data", arg: 3, scope: !933, file: !77, line: 217, type: !936)
!942 = !DILocation(line: 217, column: 28, scope: !933)
!943 = !DILocation(line: 221, column: 15, scope: !944)
!944 = distinct !DILexicalBlock(scope: !933, file: !77, line: 221, column: 7)
!945 = !DILocation(line: 221, column: 12, scope: !944)
!946 = !DILocation(line: 221, column: 7, scope: !933)
!947 = !DILocation(line: 222, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !77, line: 221, column: 23)
!949 = !DILocation(line: 225, column: 15, scope: !950)
!950 = distinct !DILexicalBlock(scope: !933, file: !77, line: 225, column: 7)
!951 = !DILocation(line: 225, column: 12, scope: !950)
!952 = !DILocation(line: 225, column: 7, scope: !933)
!953 = !DILocation(line: 226, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !77, line: 225, column: 23)
!955 = !DILocation(line: 229, column: 39, scope: !933)
!956 = !DILocation(line: 229, column: 49, scope: !933)
!957 = !DILocation(line: 229, column: 5, scope: !933)
!958 = !DILocation(line: 229, column: 10, scope: !933)
!959 = !DILocation(line: 231, column: 40, scope: !960)
!960 = distinct !DILexicalBlock(scope: !933, file: !77, line: 231, column: 8)
!961 = !DILocation(line: 231, column: 50, scope: !960)
!962 = !DILocation(line: 231, column: 10, scope: !960)
!963 = !DILocation(line: 231, column: 8, scope: !933)
!964 = !DILocation(line: 232, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !960, file: !77, line: 231, column: 62)
!966 = !DILocation(line: 235, column: 4, scope: !933)
!967 = !DILocation(line: 236, column: 1, scope: !933)
!968 = distinct !DISubprogram(name: "VMGuestLib_GetCpuReservationMHz", scope: !77, file: !77, line: 705, type: !969, isLocal: false, isDefinition: true, scopeLine: 707, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!969 = !DISubroutineType(types: !970)
!970 = !{!270, !72, !971}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!972 = !DILocalVariable(name: "handle", arg: 1, scope: !968, file: !77, line: 705, type: !72)
!973 = !DILocation(line: 705, column: 50, scope: !968)
!974 = !DILocalVariable(name: "cpuReservationMHz", arg: 2, scope: !968, file: !77, line: 706, type: !971)
!975 = !DILocation(line: 706, column: 41, scope: !968)
!976 = !DILocalVariable(name: "error", scope: !968, file: !77, line: 708, type: !270)
!977 = !DILocation(line: 708, column: 20, scope: !968)
!978 = !DILocation(line: 709, column: 4, scope: !968)
!979 = distinct !{!979, !978}
!980 = !DILocalVariable(name: "_data", scope: !981, file: !77, line: 709, type: !71)
!981 = distinct !DILexicalBlock(scope: !968, file: !77, line: 709, column: 7)
!982 = !DILocation(line: 709, column: 15, scope: !981)
!983 = !DILocation(line: 709, column: 53, scope: !984)
!984 = !DILexicalBlockFile(scope: !981, file: !77, discriminator: 1)
!985 = !DILocation(line: 709, column: 63, scope: !984)
!986 = !DILocation(line: 709, column: 62, scope: !984)
!987 = !DILocation(line: 709, column: 32, scope: !984)
!988 = !DILocation(line: 709, column: 30, scope: !984)
!989 = !DILocation(line: 709, column: 125, scope: !984)
!990 = !DILocation(line: 709, column: 121, scope: !984)
!991 = !DILocation(line: 709, column: 96, scope: !984)
!992 = !DILocation(line: 709, column: 135, scope: !993)
!993 = !DILexicalBlockFile(scope: !994, file: !77, discriminator: 2)
!994 = distinct !DILexicalBlock(scope: !995, file: !77, line: 709, column: 133)
!995 = distinct !DILexicalBlock(scope: !981, file: !77, line: 709, column: 96)
!996 = !DILocation(line: 709, column: 175, scope: !997)
!997 = !DILexicalBlockFile(scope: !998, file: !77, discriminator: 3)
!998 = distinct !DILexicalBlock(scope: !981, file: !77, line: 709, column: 148)
!999 = !DILocation(line: 709, column: 185, scope: !997)
!1000 = !DILocation(line: 709, column: 194, scope: !997)
!1001 = !DILocation(line: 709, column: 148, scope: !997)
!1002 = !DILocation(line: 709, column: 202, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1004, file: !77, discriminator: 4)
!1004 = distinct !DILexicalBlock(scope: !998, file: !77, line: 709, column: 200)
!1005 = distinct !{!1005, !1006}
!1006 = !DILocation(line: 709, column: 202, scope: !1004)
!1007 = !DILocalVariable(name: "_dataV2", scope: !1008, file: !77, line: 709, type: !176)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !77, line: 709, column: 205)
!1009 = !DILocation(line: 709, column: 225, scope: !1008)
!1010 = !DILocation(line: 709, column: 262, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1008, file: !77, discriminator: 5)
!1012 = !DILocation(line: 709, column: 272, scope: !1011)
!1013 = !DILocation(line: 709, column: 235, scope: !1011)
!1014 = !DILocation(line: 709, column: 225, scope: !1011)
!1015 = !DILocation(line: 709, column: 295, scope: !1011)
!1016 = !DILocation(line: 709, column: 304, scope: !1011)
!1017 = !DILocation(line: 709, column: 322, scope: !1011)
!1018 = !DILocation(line: 709, column: 294, scope: !1011)
!1019 = !DILocation(line: 709, column: 339, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1021, file: !77, discriminator: 6)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !77, line: 709, column: 329)
!1022 = distinct !DILexicalBlock(scope: !1008, file: !77, line: 709, column: 294)
!1023 = !DILocation(line: 709, column: 373, scope: !1020)
!1024 = !DILocation(line: 709, column: 405, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1008, file: !77, discriminator: 7)
!1026 = !DILocation(line: 709, column: 414, scope: !1025)
!1027 = !DILocation(line: 709, column: 432, scope: !1025)
!1028 = !DILocation(line: 709, column: 384, scope: !1025)
!1029 = !DILocation(line: 709, column: 403, scope: !1025)
!1030 = !DILocation(line: 709, column: 447, scope: !1025)
!1031 = !DILocation(line: 709, column: 475, scope: !1025)
!1032 = !DILocation(line: 709, column: 488, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1004, file: !77, discriminator: 8)
!1034 = !DILocation(line: 709, column: 526, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1036, file: !77, discriminator: 9)
!1036 = distinct !DILexicalBlock(scope: !998, file: !77, line: 709, column: 499)
!1037 = !DILocation(line: 709, column: 536, scope: !1035)
!1038 = !DILocation(line: 709, column: 545, scope: !1035)
!1039 = !DILocation(line: 709, column: 499, scope: !1035)
!1040 = !DILocation(line: 709, column: 553, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1042, file: !77, discriminator: 10)
!1042 = distinct !DILexicalBlock(scope: !1036, file: !77, line: 709, column: 551)
!1043 = distinct !{!1043, !1044}
!1044 = !DILocation(line: 709, column: 553, scope: !1042)
!1045 = !DILocalVariable(name: "_data", scope: !1046, file: !77, line: 709, type: !71)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !77, line: 709, column: 556)
!1047 = !DILocation(line: 709, column: 564, scope: !1046)
!1048 = !DILocalVariable(name: "_stat", scope: !1046, file: !77, line: 709, type: !363)
!1049 = !DILocation(line: 709, column: 586, scope: !1046)
!1050 = !DILocation(line: 709, column: 624, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1046, file: !77, discriminator: 11)
!1052 = !DILocation(line: 709, column: 634, scope: !1051)
!1053 = !DILocation(line: 709, column: 633, scope: !1051)
!1054 = !DILocation(line: 709, column: 603, scope: !1051)
!1055 = !DILocation(line: 709, column: 601, scope: !1051)
!1056 = !DILocation(line: 709, column: 696, scope: !1051)
!1057 = !DILocation(line: 709, column: 692, scope: !1051)
!1058 = !DILocation(line: 709, column: 667, scope: !1051)
!1059 = !DILocation(line: 709, column: 706, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1061, file: !77, discriminator: 12)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !77, line: 709, column: 704)
!1062 = distinct !DILexicalBlock(scope: !1046, file: !77, line: 709, column: 667)
!1063 = !DILocation(line: 709, column: 763, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1046, file: !77, discriminator: 13)
!1065 = !DILocation(line: 709, column: 736, scope: !1064)
!1066 = !DILocation(line: 709, column: 734, scope: !1064)
!1067 = !DILocation(line: 709, column: 818, scope: !1064)
!1068 = !DILocation(line: 709, column: 825, scope: !1064)
!1069 = !DILocation(line: 709, column: 817, scope: !1064)
!1070 = !DILocation(line: 709, column: 856, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1072, file: !77, discriminator: 14)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !77, line: 709, column: 854)
!1073 = distinct !DILexicalBlock(scope: !1046, file: !77, line: 709, column: 817)
!1074 = !DILocation(line: 709, column: 876, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1076, file: !77, discriminator: 15)
!1076 = distinct !DILexicalBlock(scope: !1046, file: !77, line: 709, column: 869)
!1077 = !DILocation(line: 709, column: 893, scope: !1075)
!1078 = !DILocation(line: 709, column: 911, scope: !1075)
!1079 = !DILocation(line: 709, column: 870, scope: !1075)
!1080 = !DILocation(line: 709, column: 869, scope: !1075)
!1081 = !DILocation(line: 709, column: 928, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1083, file: !77, discriminator: 16)
!1083 = distinct !DILexicalBlock(scope: !1076, file: !77, line: 709, column: 918)
!1084 = !DILocation(line: 709, column: 962, scope: !1082)
!1085 = !DILocation(line: 709, column: 1156, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1046, file: !77, discriminator: 17)
!1087 = !DILocation(line: 709, column: 1173, scope: !1086)
!1088 = !DILocation(line: 709, column: 1191, scope: !1086)
!1089 = !DILocation(line: 709, column: 1129, scope: !1086)
!1090 = !DILocation(line: 709, column: 1148, scope: !1086)
!1091 = !DILocation(line: 709, column: 1206, scope: !1086)
!1092 = !DILocation(line: 709, column: 1234, scope: !1086)
!1093 = !DILocation(line: 709, column: 1247, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1042, file: !77, discriminator: 18)
!1095 = !DILocation(line: 709, column: 1249, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !981, file: !77, discriminator: 19)
!1097 = !DILocation(line: 712, column: 11, scope: !968)
!1098 = !DILocation(line: 712, column: 4, scope: !968)
!1099 = distinct !DISubprogram(name: "VMGuestLibGetStatisticsV3", scope: !77, file: !77, line: 666, type: !1100, isLocal: true, isDefinition: true, scopeLine: 669, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!270, !72, !367, !1102}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!1103 = !DILocalVariable(name: "handle", arg: 1, scope: !1099, file: !77, line: 666, type: !72)
!1104 = !DILocation(line: 666, column: 44, scope: !1099)
!1105 = !DILocalVariable(name: "statId", arg: 2, scope: !1099, file: !77, line: 667, type: !367)
!1106 = !DILocation(line: 667, column: 45, scope: !1099)
!1107 = !DILocalVariable(name: "outStat", arg: 3, scope: !1099, file: !77, line: 668, type: !1102)
!1108 = !DILocation(line: 668, column: 43, scope: !1099)
!1109 = !DILocalVariable(name: "stats", scope: !1099, file: !77, line: 670, type: !355)
!1110 = !DILocation(line: 670, column: 28, scope: !1099)
!1111 = !DILocation(line: 670, column: 63, scope: !1099)
!1112 = !DILocation(line: 670, column: 73, scope: !1099)
!1113 = !DILocation(line: 670, column: 36, scope: !1099)
!1114 = !DILocalVariable(name: "statIdx", scope: !1099, file: !77, line: 671, type: !81)
!1115 = !DILocation(line: 671, column: 11, scope: !1099)
!1116 = !DILocation(line: 671, column: 21, scope: !1099)
!1117 = !DILocation(line: 671, column: 28, scope: !1099)
!1118 = !DILocation(line: 679, column: 8, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1099, file: !77, line: 679, column: 8)
!1120 = !DILocation(line: 679, column: 19, scope: !1119)
!1121 = !DILocation(line: 679, column: 26, scope: !1119)
!1122 = !DILocation(line: 679, column: 16, scope: !1119)
!1123 = !DILocation(line: 679, column: 8, scope: !1099)
!1124 = !DILocation(line: 680, column: 7, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1119, file: !77, line: 679, column: 36)
!1126 = !DILocation(line: 683, column: 11, scope: !1099)
!1127 = !DILocation(line: 683, column: 4, scope: !1099)
!1128 = !DILocation(line: 683, column: 34, scope: !1099)
!1129 = !DILocation(line: 683, column: 21, scope: !1099)
!1130 = !DILocation(line: 683, column: 28, scope: !1099)
!1131 = !DILocation(line: 684, column: 4, scope: !1099)
!1132 = !DILocation(line: 685, column: 1, scope: !1099)
!1133 = distinct !DISubprogram(name: "VMGuestLib_GetCpuLimitMHz", scope: !77, file: !77, line: 733, type: !969, isLocal: false, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!1134 = !DILocalVariable(name: "handle", arg: 1, scope: !1133, file: !77, line: 733, type: !72)
!1135 = !DILocation(line: 733, column: 44, scope: !1133)
!1136 = !DILocalVariable(name: "cpuLimitMHz", arg: 2, scope: !1133, file: !77, line: 734, type: !971)
!1137 = !DILocation(line: 734, column: 35, scope: !1133)
!1138 = !DILocalVariable(name: "error", scope: !1133, file: !77, line: 736, type: !270)
!1139 = !DILocation(line: 736, column: 20, scope: !1133)
!1140 = !DILocation(line: 737, column: 4, scope: !1133)
!1141 = distinct !{!1141, !1140}
!1142 = !DILocalVariable(name: "_data", scope: !1143, file: !77, line: 737, type: !71)
!1143 = distinct !DILexicalBlock(scope: !1133, file: !77, line: 737, column: 7)
!1144 = !DILocation(line: 737, column: 15, scope: !1143)
!1145 = !DILocation(line: 737, column: 53, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1143, file: !77, discriminator: 1)
!1147 = !DILocation(line: 737, column: 63, scope: !1146)
!1148 = !DILocation(line: 737, column: 62, scope: !1146)
!1149 = !DILocation(line: 737, column: 32, scope: !1146)
!1150 = !DILocation(line: 737, column: 30, scope: !1146)
!1151 = !DILocation(line: 737, column: 119, scope: !1146)
!1152 = !DILocation(line: 737, column: 115, scope: !1146)
!1153 = !DILocation(line: 737, column: 90, scope: !1146)
!1154 = !DILocation(line: 737, column: 129, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1156, file: !77, discriminator: 2)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !77, line: 737, column: 127)
!1157 = distinct !DILexicalBlock(scope: !1143, file: !77, line: 737, column: 90)
!1158 = !DILocation(line: 737, column: 169, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1160, file: !77, discriminator: 3)
!1160 = distinct !DILexicalBlock(scope: !1143, file: !77, line: 737, column: 142)
!1161 = !DILocation(line: 737, column: 179, scope: !1159)
!1162 = !DILocation(line: 737, column: 188, scope: !1159)
!1163 = !DILocation(line: 737, column: 142, scope: !1159)
!1164 = !DILocation(line: 737, column: 196, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1166, file: !77, discriminator: 4)
!1166 = distinct !DILexicalBlock(scope: !1160, file: !77, line: 737, column: 194)
!1167 = distinct !{!1167, !1168}
!1168 = !DILocation(line: 737, column: 196, scope: !1166)
!1169 = !DILocalVariable(name: "_dataV2", scope: !1170, file: !77, line: 737, type: !176)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !77, line: 737, column: 199)
!1171 = !DILocation(line: 737, column: 219, scope: !1170)
!1172 = !DILocation(line: 737, column: 256, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1170, file: !77, discriminator: 5)
!1174 = !DILocation(line: 737, column: 266, scope: !1173)
!1175 = !DILocation(line: 737, column: 229, scope: !1173)
!1176 = !DILocation(line: 737, column: 219, scope: !1173)
!1177 = !DILocation(line: 737, column: 289, scope: !1173)
!1178 = !DILocation(line: 737, column: 298, scope: !1173)
!1179 = !DILocation(line: 737, column: 310, scope: !1173)
!1180 = !DILocation(line: 737, column: 288, scope: !1173)
!1181 = !DILocation(line: 737, column: 327, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1183, file: !77, discriminator: 6)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !77, line: 737, column: 317)
!1184 = distinct !DILexicalBlock(scope: !1170, file: !77, line: 737, column: 288)
!1185 = !DILocation(line: 737, column: 361, scope: !1182)
!1186 = !DILocation(line: 737, column: 387, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1170, file: !77, discriminator: 7)
!1188 = !DILocation(line: 737, column: 396, scope: !1187)
!1189 = !DILocation(line: 737, column: 408, scope: !1187)
!1190 = !DILocation(line: 737, column: 372, scope: !1187)
!1191 = !DILocation(line: 737, column: 385, scope: !1187)
!1192 = !DILocation(line: 737, column: 423, scope: !1187)
!1193 = !DILocation(line: 737, column: 451, scope: !1187)
!1194 = !DILocation(line: 737, column: 464, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1166, file: !77, discriminator: 8)
!1196 = !DILocation(line: 737, column: 502, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1198, file: !77, discriminator: 9)
!1198 = distinct !DILexicalBlock(scope: !1160, file: !77, line: 737, column: 475)
!1199 = !DILocation(line: 737, column: 512, scope: !1197)
!1200 = !DILocation(line: 737, column: 521, scope: !1197)
!1201 = !DILocation(line: 737, column: 475, scope: !1197)
!1202 = !DILocation(line: 737, column: 529, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !77, discriminator: 10)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !77, line: 737, column: 527)
!1205 = distinct !{!1205, !1206}
!1206 = !DILocation(line: 737, column: 529, scope: !1204)
!1207 = !DILocalVariable(name: "_data", scope: !1208, file: !77, line: 737, type: !71)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !77, line: 737, column: 532)
!1209 = !DILocation(line: 737, column: 540, scope: !1208)
!1210 = !DILocalVariable(name: "_stat", scope: !1208, file: !77, line: 737, type: !363)
!1211 = !DILocation(line: 737, column: 562, scope: !1208)
!1212 = !DILocation(line: 737, column: 600, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1208, file: !77, discriminator: 11)
!1214 = !DILocation(line: 737, column: 610, scope: !1213)
!1215 = !DILocation(line: 737, column: 609, scope: !1213)
!1216 = !DILocation(line: 737, column: 579, scope: !1213)
!1217 = !DILocation(line: 737, column: 577, scope: !1213)
!1218 = !DILocation(line: 737, column: 666, scope: !1213)
!1219 = !DILocation(line: 737, column: 662, scope: !1213)
!1220 = !DILocation(line: 737, column: 637, scope: !1213)
!1221 = !DILocation(line: 737, column: 676, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1223, file: !77, discriminator: 12)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !77, line: 737, column: 674)
!1224 = distinct !DILexicalBlock(scope: !1208, file: !77, line: 737, column: 637)
!1225 = !DILocation(line: 737, column: 733, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1208, file: !77, discriminator: 13)
!1227 = !DILocation(line: 737, column: 706, scope: !1226)
!1228 = !DILocation(line: 737, column: 704, scope: !1226)
!1229 = !DILocation(line: 737, column: 782, scope: !1226)
!1230 = !DILocation(line: 737, column: 789, scope: !1226)
!1231 = !DILocation(line: 737, column: 781, scope: !1226)
!1232 = !DILocation(line: 737, column: 820, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !77, discriminator: 14)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !77, line: 737, column: 818)
!1235 = distinct !DILexicalBlock(scope: !1208, file: !77, line: 737, column: 781)
!1236 = !DILocation(line: 737, column: 840, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1238, file: !77, discriminator: 15)
!1238 = distinct !DILexicalBlock(scope: !1208, file: !77, line: 737, column: 833)
!1239 = !DILocation(line: 737, column: 857, scope: !1237)
!1240 = !DILocation(line: 737, column: 869, scope: !1237)
!1241 = !DILocation(line: 737, column: 834, scope: !1237)
!1242 = !DILocation(line: 737, column: 833, scope: !1237)
!1243 = !DILocation(line: 737, column: 886, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1245, file: !77, discriminator: 16)
!1245 = distinct !DILexicalBlock(scope: !1238, file: !77, line: 737, column: 876)
!1246 = !DILocation(line: 737, column: 920, scope: !1244)
!1247 = !DILocation(line: 737, column: 1096, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1208, file: !77, discriminator: 17)
!1249 = !DILocation(line: 737, column: 1113, scope: !1248)
!1250 = !DILocation(line: 737, column: 1125, scope: !1248)
!1251 = !DILocation(line: 737, column: 1075, scope: !1248)
!1252 = !DILocation(line: 737, column: 1088, scope: !1248)
!1253 = !DILocation(line: 737, column: 1140, scope: !1248)
!1254 = !DILocation(line: 737, column: 1168, scope: !1248)
!1255 = !DILocation(line: 737, column: 1181, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1204, file: !77, discriminator: 18)
!1257 = !DILocation(line: 737, column: 1183, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1143, file: !77, discriminator: 19)
!1259 = !DILocation(line: 740, column: 11, scope: !1133)
!1260 = !DILocation(line: 740, column: 4, scope: !1133)
!1261 = distinct !DISubprogram(name: "VMGuestLib_GetCpuShares", scope: !77, file: !77, line: 761, type: !969, isLocal: false, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!1262 = !DILocalVariable(name: "handle", arg: 1, scope: !1261, file: !77, line: 761, type: !72)
!1263 = !DILocation(line: 761, column: 42, scope: !1261)
!1264 = !DILocalVariable(name: "cpuShares", arg: 2, scope: !1261, file: !77, line: 762, type: !971)
!1265 = !DILocation(line: 762, column: 33, scope: !1261)
!1266 = !DILocalVariable(name: "error", scope: !1261, file: !77, line: 764, type: !270)
!1267 = !DILocation(line: 764, column: 20, scope: !1261)
!1268 = !DILocation(line: 765, column: 4, scope: !1261)
!1269 = distinct !{!1269, !1268}
!1270 = !DILocalVariable(name: "_data", scope: !1271, file: !77, line: 765, type: !71)
!1271 = distinct !DILexicalBlock(scope: !1261, file: !77, line: 765, column: 7)
!1272 = !DILocation(line: 765, column: 15, scope: !1271)
!1273 = !DILocation(line: 765, column: 53, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1271, file: !77, discriminator: 1)
!1275 = !DILocation(line: 765, column: 63, scope: !1274)
!1276 = !DILocation(line: 765, column: 62, scope: !1274)
!1277 = !DILocation(line: 765, column: 32, scope: !1274)
!1278 = !DILocation(line: 765, column: 30, scope: !1274)
!1279 = !DILocation(line: 765, column: 117, scope: !1274)
!1280 = !DILocation(line: 765, column: 113, scope: !1274)
!1281 = !DILocation(line: 765, column: 88, scope: !1274)
!1282 = !DILocation(line: 765, column: 127, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1284, file: !77, discriminator: 2)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !77, line: 765, column: 125)
!1285 = distinct !DILexicalBlock(scope: !1271, file: !77, line: 765, column: 88)
!1286 = !DILocation(line: 765, column: 167, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1288, file: !77, discriminator: 3)
!1288 = distinct !DILexicalBlock(scope: !1271, file: !77, line: 765, column: 140)
!1289 = !DILocation(line: 765, column: 177, scope: !1287)
!1290 = !DILocation(line: 765, column: 186, scope: !1287)
!1291 = !DILocation(line: 765, column: 140, scope: !1287)
!1292 = !DILocation(line: 765, column: 194, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1294, file: !77, discriminator: 4)
!1294 = distinct !DILexicalBlock(scope: !1288, file: !77, line: 765, column: 192)
!1295 = distinct !{!1295, !1296}
!1296 = !DILocation(line: 765, column: 194, scope: !1294)
!1297 = !DILocalVariable(name: "_dataV2", scope: !1298, file: !77, line: 765, type: !176)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !77, line: 765, column: 197)
!1299 = !DILocation(line: 765, column: 217, scope: !1298)
!1300 = !DILocation(line: 765, column: 254, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1298, file: !77, discriminator: 5)
!1302 = !DILocation(line: 765, column: 264, scope: !1301)
!1303 = !DILocation(line: 765, column: 227, scope: !1301)
!1304 = !DILocation(line: 765, column: 217, scope: !1301)
!1305 = !DILocation(line: 765, column: 287, scope: !1301)
!1306 = !DILocation(line: 765, column: 296, scope: !1301)
!1307 = !DILocation(line: 765, column: 306, scope: !1301)
!1308 = !DILocation(line: 765, column: 286, scope: !1301)
!1309 = !DILocation(line: 765, column: 323, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1311, file: !77, discriminator: 6)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !77, line: 765, column: 313)
!1312 = distinct !DILexicalBlock(scope: !1298, file: !77, line: 765, column: 286)
!1313 = !DILocation(line: 765, column: 357, scope: !1310)
!1314 = !DILocation(line: 765, column: 381, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1298, file: !77, discriminator: 7)
!1316 = !DILocation(line: 765, column: 390, scope: !1315)
!1317 = !DILocation(line: 765, column: 400, scope: !1315)
!1318 = !DILocation(line: 765, column: 368, scope: !1315)
!1319 = !DILocation(line: 765, column: 379, scope: !1315)
!1320 = !DILocation(line: 765, column: 415, scope: !1315)
!1321 = !DILocation(line: 765, column: 443, scope: !1315)
!1322 = !DILocation(line: 765, column: 456, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1294, file: !77, discriminator: 8)
!1324 = !DILocation(line: 765, column: 494, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1326, file: !77, discriminator: 9)
!1326 = distinct !DILexicalBlock(scope: !1288, file: !77, line: 765, column: 467)
!1327 = !DILocation(line: 765, column: 504, scope: !1325)
!1328 = !DILocation(line: 765, column: 513, scope: !1325)
!1329 = !DILocation(line: 765, column: 467, scope: !1325)
!1330 = !DILocation(line: 765, column: 521, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1332, file: !77, discriminator: 10)
!1332 = distinct !DILexicalBlock(scope: !1326, file: !77, line: 765, column: 519)
!1333 = distinct !{!1333, !1334}
!1334 = !DILocation(line: 765, column: 521, scope: !1332)
!1335 = !DILocalVariable(name: "_data", scope: !1336, file: !77, line: 765, type: !71)
!1336 = distinct !DILexicalBlock(scope: !1332, file: !77, line: 765, column: 524)
!1337 = !DILocation(line: 765, column: 532, scope: !1336)
!1338 = !DILocalVariable(name: "_stat", scope: !1336, file: !77, line: 765, type: !363)
!1339 = !DILocation(line: 765, column: 554, scope: !1336)
!1340 = !DILocation(line: 765, column: 592, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1336, file: !77, discriminator: 11)
!1342 = !DILocation(line: 765, column: 602, scope: !1341)
!1343 = !DILocation(line: 765, column: 601, scope: !1341)
!1344 = !DILocation(line: 765, column: 571, scope: !1341)
!1345 = !DILocation(line: 765, column: 569, scope: !1341)
!1346 = !DILocation(line: 765, column: 656, scope: !1341)
!1347 = !DILocation(line: 765, column: 652, scope: !1341)
!1348 = !DILocation(line: 765, column: 627, scope: !1341)
!1349 = !DILocation(line: 765, column: 666, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1351, file: !77, discriminator: 12)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !77, line: 765, column: 664)
!1352 = distinct !DILexicalBlock(scope: !1336, file: !77, line: 765, column: 627)
!1353 = !DILocation(line: 765, column: 723, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1336, file: !77, discriminator: 13)
!1355 = !DILocation(line: 765, column: 696, scope: !1354)
!1356 = !DILocation(line: 765, column: 694, scope: !1354)
!1357 = !DILocation(line: 765, column: 769, scope: !1354)
!1358 = !DILocation(line: 765, column: 776, scope: !1354)
!1359 = !DILocation(line: 765, column: 768, scope: !1354)
!1360 = !DILocation(line: 765, column: 807, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1362, file: !77, discriminator: 14)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !77, line: 765, column: 805)
!1363 = distinct !DILexicalBlock(scope: !1336, file: !77, line: 765, column: 768)
!1364 = !DILocation(line: 765, column: 827, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1366, file: !77, discriminator: 15)
!1366 = distinct !DILexicalBlock(scope: !1336, file: !77, line: 765, column: 820)
!1367 = !DILocation(line: 765, column: 844, scope: !1365)
!1368 = !DILocation(line: 765, column: 854, scope: !1365)
!1369 = !DILocation(line: 765, column: 821, scope: !1365)
!1370 = !DILocation(line: 765, column: 820, scope: !1365)
!1371 = !DILocation(line: 765, column: 871, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1373, file: !77, discriminator: 16)
!1373 = distinct !DILexicalBlock(scope: !1366, file: !77, line: 765, column: 861)
!1374 = !DILocation(line: 765, column: 905, scope: !1372)
!1375 = !DILocation(line: 765, column: 1075, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1336, file: !77, discriminator: 17)
!1377 = !DILocation(line: 765, column: 1092, scope: !1376)
!1378 = !DILocation(line: 765, column: 1102, scope: !1376)
!1379 = !DILocation(line: 765, column: 1056, scope: !1376)
!1380 = !DILocation(line: 765, column: 1067, scope: !1376)
!1381 = !DILocation(line: 765, column: 1117, scope: !1376)
!1382 = !DILocation(line: 765, column: 1145, scope: !1376)
!1383 = !DILocation(line: 765, column: 1158, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1332, file: !77, discriminator: 18)
!1385 = !DILocation(line: 765, column: 1160, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1271, file: !77, discriminator: 19)
!1387 = !DILocation(line: 768, column: 11, scope: !1261)
!1388 = !DILocation(line: 768, column: 4, scope: !1261)
!1389 = distinct !DISubprogram(name: "VMGuestLib_GetCpuUsedMs", scope: !77, file: !77, line: 789, type: !1390, isLocal: false, isDefinition: true, scopeLine: 791, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!270, !72, !1392}
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!1393 = !DILocalVariable(name: "handle", arg: 1, scope: !1389, file: !77, line: 789, type: !72)
!1394 = !DILocation(line: 789, column: 42, scope: !1389)
!1395 = !DILocalVariable(name: "cpuUsedMs", arg: 2, scope: !1389, file: !77, line: 790, type: !1392)
!1396 = !DILocation(line: 790, column: 33, scope: !1389)
!1397 = !DILocalVariable(name: "error", scope: !1389, file: !77, line: 792, type: !270)
!1398 = !DILocation(line: 792, column: 20, scope: !1389)
!1399 = !DILocation(line: 793, column: 4, scope: !1389)
!1400 = distinct !{!1400, !1399}
!1401 = !DILocalVariable(name: "_data", scope: !1402, file: !77, line: 793, type: !71)
!1402 = distinct !DILexicalBlock(scope: !1389, file: !77, line: 793, column: 7)
!1403 = !DILocation(line: 793, column: 15, scope: !1402)
!1404 = !DILocation(line: 793, column: 53, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1402, file: !77, discriminator: 1)
!1406 = !DILocation(line: 793, column: 63, scope: !1405)
!1407 = !DILocation(line: 793, column: 62, scope: !1405)
!1408 = !DILocation(line: 793, column: 32, scope: !1405)
!1409 = !DILocation(line: 793, column: 30, scope: !1405)
!1410 = !DILocation(line: 793, column: 117, scope: !1405)
!1411 = !DILocation(line: 793, column: 113, scope: !1405)
!1412 = !DILocation(line: 793, column: 88, scope: !1405)
!1413 = !DILocation(line: 793, column: 127, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1415, file: !77, discriminator: 2)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !77, line: 793, column: 125)
!1416 = distinct !DILexicalBlock(scope: !1402, file: !77, line: 793, column: 88)
!1417 = !DILocation(line: 793, column: 167, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1419, file: !77, discriminator: 3)
!1419 = distinct !DILexicalBlock(scope: !1402, file: !77, line: 793, column: 140)
!1420 = !DILocation(line: 793, column: 177, scope: !1418)
!1421 = !DILocation(line: 793, column: 186, scope: !1418)
!1422 = !DILocation(line: 793, column: 140, scope: !1418)
!1423 = !DILocation(line: 793, column: 194, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1425, file: !77, discriminator: 4)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !77, line: 793, column: 192)
!1426 = distinct !{!1426, !1427}
!1427 = !DILocation(line: 793, column: 194, scope: !1425)
!1428 = !DILocalVariable(name: "_dataV2", scope: !1429, file: !77, line: 793, type: !176)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !77, line: 793, column: 197)
!1430 = !DILocation(line: 793, column: 217, scope: !1429)
!1431 = !DILocation(line: 793, column: 254, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1429, file: !77, discriminator: 5)
!1433 = !DILocation(line: 793, column: 264, scope: !1432)
!1434 = !DILocation(line: 793, column: 227, scope: !1432)
!1435 = !DILocation(line: 793, column: 217, scope: !1432)
!1436 = !DILocation(line: 793, column: 287, scope: !1432)
!1437 = !DILocation(line: 793, column: 296, scope: !1432)
!1438 = !DILocation(line: 793, column: 306, scope: !1432)
!1439 = !DILocation(line: 793, column: 286, scope: !1432)
!1440 = !DILocation(line: 793, column: 323, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1442, file: !77, discriminator: 6)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !77, line: 793, column: 313)
!1443 = distinct !DILexicalBlock(scope: !1429, file: !77, line: 793, column: 286)
!1444 = !DILocation(line: 793, column: 357, scope: !1441)
!1445 = !DILocation(line: 793, column: 381, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1429, file: !77, discriminator: 7)
!1447 = !DILocation(line: 793, column: 390, scope: !1446)
!1448 = !DILocation(line: 793, column: 400, scope: !1446)
!1449 = !DILocation(line: 793, column: 368, scope: !1446)
!1450 = !DILocation(line: 793, column: 379, scope: !1446)
!1451 = !DILocation(line: 793, column: 415, scope: !1446)
!1452 = !DILocation(line: 793, column: 443, scope: !1446)
!1453 = !DILocation(line: 793, column: 456, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1425, file: !77, discriminator: 8)
!1455 = !DILocation(line: 793, column: 494, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1457, file: !77, discriminator: 9)
!1457 = distinct !DILexicalBlock(scope: !1419, file: !77, line: 793, column: 467)
!1458 = !DILocation(line: 793, column: 504, scope: !1456)
!1459 = !DILocation(line: 793, column: 513, scope: !1456)
!1460 = !DILocation(line: 793, column: 467, scope: !1456)
!1461 = !DILocation(line: 793, column: 521, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1463, file: !77, discriminator: 10)
!1463 = distinct !DILexicalBlock(scope: !1457, file: !77, line: 793, column: 519)
!1464 = distinct !{!1464, !1465}
!1465 = !DILocation(line: 793, column: 521, scope: !1463)
!1466 = !DILocalVariable(name: "_data", scope: !1467, file: !77, line: 793, type: !71)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !77, line: 793, column: 524)
!1468 = !DILocation(line: 793, column: 532, scope: !1467)
!1469 = !DILocalVariable(name: "_stat", scope: !1467, file: !77, line: 793, type: !363)
!1470 = !DILocation(line: 793, column: 554, scope: !1467)
!1471 = !DILocation(line: 793, column: 592, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1467, file: !77, discriminator: 11)
!1473 = !DILocation(line: 793, column: 602, scope: !1472)
!1474 = !DILocation(line: 793, column: 601, scope: !1472)
!1475 = !DILocation(line: 793, column: 571, scope: !1472)
!1476 = !DILocation(line: 793, column: 569, scope: !1472)
!1477 = !DILocation(line: 793, column: 656, scope: !1472)
!1478 = !DILocation(line: 793, column: 652, scope: !1472)
!1479 = !DILocation(line: 793, column: 627, scope: !1472)
!1480 = !DILocation(line: 793, column: 666, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1482, file: !77, discriminator: 12)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !77, line: 793, column: 664)
!1483 = distinct !DILexicalBlock(scope: !1467, file: !77, line: 793, column: 627)
!1484 = !DILocation(line: 793, column: 723, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1467, file: !77, discriminator: 13)
!1486 = !DILocation(line: 793, column: 696, scope: !1485)
!1487 = !DILocation(line: 793, column: 694, scope: !1485)
!1488 = !DILocation(line: 793, column: 770, scope: !1485)
!1489 = !DILocation(line: 793, column: 777, scope: !1485)
!1490 = !DILocation(line: 793, column: 769, scope: !1485)
!1491 = !DILocation(line: 793, column: 808, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1493, file: !77, discriminator: 14)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !77, line: 793, column: 806)
!1494 = distinct !DILexicalBlock(scope: !1467, file: !77, line: 793, column: 769)
!1495 = !DILocation(line: 793, column: 828, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1497, file: !77, discriminator: 15)
!1497 = distinct !DILexicalBlock(scope: !1467, file: !77, line: 793, column: 821)
!1498 = !DILocation(line: 793, column: 845, scope: !1496)
!1499 = !DILocation(line: 793, column: 855, scope: !1496)
!1500 = !DILocation(line: 793, column: 822, scope: !1496)
!1501 = !DILocation(line: 793, column: 821, scope: !1496)
!1502 = !DILocation(line: 793, column: 872, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1504, file: !77, discriminator: 16)
!1504 = distinct !DILexicalBlock(scope: !1497, file: !77, line: 793, column: 862)
!1505 = !DILocation(line: 793, column: 906, scope: !1503)
!1506 = !DILocation(line: 793, column: 1076, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1467, file: !77, discriminator: 17)
!1508 = !DILocation(line: 793, column: 1093, scope: !1507)
!1509 = !DILocation(line: 793, column: 1103, scope: !1507)
!1510 = !DILocation(line: 793, column: 1057, scope: !1507)
!1511 = !DILocation(line: 793, column: 1068, scope: !1507)
!1512 = !DILocation(line: 793, column: 1118, scope: !1507)
!1513 = !DILocation(line: 793, column: 1146, scope: !1507)
!1514 = !DILocation(line: 793, column: 1159, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1463, file: !77, discriminator: 18)
!1516 = !DILocation(line: 793, column: 1161, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1402, file: !77, discriminator: 19)
!1518 = !DILocation(line: 796, column: 11, scope: !1389)
!1519 = !DILocation(line: 796, column: 4, scope: !1389)
!1520 = distinct !DISubprogram(name: "VMGuestLib_GetHostProcessorSpeed", scope: !77, file: !77, line: 819, type: !969, isLocal: false, isDefinition: true, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!1521 = !DILocalVariable(name: "handle", arg: 1, scope: !1520, file: !77, line: 819, type: !72)
!1522 = !DILocation(line: 819, column: 51, scope: !1520)
!1523 = !DILocalVariable(name: "mhz", arg: 2, scope: !1520, file: !77, line: 820, type: !971)
!1524 = !DILocation(line: 820, column: 42, scope: !1520)
!1525 = !DILocalVariable(name: "error", scope: !1520, file: !77, line: 822, type: !270)
!1526 = !DILocation(line: 822, column: 20, scope: !1520)
!1527 = !DILocation(line: 823, column: 4, scope: !1520)
!1528 = distinct !{!1528, !1527}
!1529 = !DILocalVariable(name: "_data", scope: !1530, file: !77, line: 823, type: !71)
!1530 = distinct !DILexicalBlock(scope: !1520, file: !77, line: 823, column: 7)
!1531 = !DILocation(line: 823, column: 15, scope: !1530)
!1532 = !DILocation(line: 823, column: 53, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1530, file: !77, discriminator: 1)
!1534 = !DILocation(line: 823, column: 63, scope: !1533)
!1535 = !DILocation(line: 823, column: 62, scope: !1533)
!1536 = !DILocation(line: 823, column: 32, scope: !1533)
!1537 = !DILocation(line: 823, column: 30, scope: !1533)
!1538 = !DILocation(line: 823, column: 111, scope: !1533)
!1539 = !DILocation(line: 823, column: 107, scope: !1533)
!1540 = !DILocation(line: 823, column: 82, scope: !1533)
!1541 = !DILocation(line: 823, column: 121, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1543, file: !77, discriminator: 2)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !77, line: 823, column: 119)
!1544 = distinct !DILexicalBlock(scope: !1530, file: !77, line: 823, column: 82)
!1545 = !DILocation(line: 823, column: 161, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1547, file: !77, discriminator: 3)
!1547 = distinct !DILexicalBlock(scope: !1530, file: !77, line: 823, column: 134)
!1548 = !DILocation(line: 823, column: 171, scope: !1546)
!1549 = !DILocation(line: 823, column: 180, scope: !1546)
!1550 = !DILocation(line: 823, column: 134, scope: !1546)
!1551 = !DILocation(line: 823, column: 188, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1553, file: !77, discriminator: 4)
!1553 = distinct !DILexicalBlock(scope: !1547, file: !77, line: 823, column: 186)
!1554 = distinct !{!1554, !1555}
!1555 = !DILocation(line: 823, column: 188, scope: !1553)
!1556 = !DILocalVariable(name: "_dataV2", scope: !1557, file: !77, line: 823, type: !176)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !77, line: 823, column: 191)
!1558 = !DILocation(line: 823, column: 211, scope: !1557)
!1559 = !DILocation(line: 823, column: 248, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1557, file: !77, discriminator: 5)
!1561 = !DILocation(line: 823, column: 258, scope: !1560)
!1562 = !DILocation(line: 823, column: 221, scope: !1560)
!1563 = !DILocation(line: 823, column: 211, scope: !1560)
!1564 = !DILocation(line: 823, column: 281, scope: !1560)
!1565 = !DILocation(line: 823, column: 290, scope: !1560)
!1566 = !DILocation(line: 823, column: 298, scope: !1560)
!1567 = !DILocation(line: 823, column: 280, scope: !1560)
!1568 = !DILocation(line: 823, column: 315, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1570, file: !77, discriminator: 6)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !77, line: 823, column: 305)
!1571 = distinct !DILexicalBlock(scope: !1557, file: !77, line: 823, column: 280)
!1572 = !DILocation(line: 823, column: 349, scope: !1569)
!1573 = !DILocation(line: 823, column: 367, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1557, file: !77, discriminator: 7)
!1575 = !DILocation(line: 823, column: 376, scope: !1574)
!1576 = !DILocation(line: 823, column: 384, scope: !1574)
!1577 = !DILocation(line: 823, column: 360, scope: !1574)
!1578 = !DILocation(line: 823, column: 365, scope: !1574)
!1579 = !DILocation(line: 823, column: 399, scope: !1574)
!1580 = !DILocation(line: 823, column: 427, scope: !1574)
!1581 = !DILocation(line: 823, column: 440, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1553, file: !77, discriminator: 8)
!1583 = !DILocation(line: 823, column: 478, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1585, file: !77, discriminator: 9)
!1585 = distinct !DILexicalBlock(scope: !1547, file: !77, line: 823, column: 451)
!1586 = !DILocation(line: 823, column: 488, scope: !1584)
!1587 = !DILocation(line: 823, column: 497, scope: !1584)
!1588 = !DILocation(line: 823, column: 451, scope: !1584)
!1589 = !DILocation(line: 823, column: 505, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1591, file: !77, discriminator: 10)
!1591 = distinct !DILexicalBlock(scope: !1585, file: !77, line: 823, column: 503)
!1592 = distinct !{!1592, !1593}
!1593 = !DILocation(line: 823, column: 505, scope: !1591)
!1594 = !DILocalVariable(name: "_data", scope: !1595, file: !77, line: 823, type: !71)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !77, line: 823, column: 508)
!1596 = !DILocation(line: 823, column: 516, scope: !1595)
!1597 = !DILocalVariable(name: "_stat", scope: !1595, file: !77, line: 823, type: !363)
!1598 = !DILocation(line: 823, column: 538, scope: !1595)
!1599 = !DILocation(line: 823, column: 576, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1595, file: !77, discriminator: 11)
!1601 = !DILocation(line: 823, column: 586, scope: !1600)
!1602 = !DILocation(line: 823, column: 585, scope: !1600)
!1603 = !DILocation(line: 823, column: 555, scope: !1600)
!1604 = !DILocation(line: 823, column: 553, scope: !1600)
!1605 = !DILocation(line: 823, column: 634, scope: !1600)
!1606 = !DILocation(line: 823, column: 630, scope: !1600)
!1607 = !DILocation(line: 823, column: 605, scope: !1600)
!1608 = !DILocation(line: 823, column: 644, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1610, file: !77, discriminator: 12)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !77, line: 823, column: 642)
!1611 = distinct !DILexicalBlock(scope: !1595, file: !77, line: 823, column: 605)
!1612 = !DILocation(line: 823, column: 701, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1595, file: !77, discriminator: 13)
!1614 = !DILocation(line: 823, column: 674, scope: !1613)
!1615 = !DILocation(line: 823, column: 672, scope: !1613)
!1616 = !DILocation(line: 823, column: 745, scope: !1613)
!1617 = !DILocation(line: 823, column: 752, scope: !1613)
!1618 = !DILocation(line: 823, column: 744, scope: !1613)
!1619 = !DILocation(line: 823, column: 783, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1621, file: !77, discriminator: 14)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !77, line: 823, column: 781)
!1622 = distinct !DILexicalBlock(scope: !1595, file: !77, line: 823, column: 744)
!1623 = !DILocation(line: 823, column: 803, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1625, file: !77, discriminator: 15)
!1625 = distinct !DILexicalBlock(scope: !1595, file: !77, line: 823, column: 796)
!1626 = !DILocation(line: 823, column: 820, scope: !1624)
!1627 = !DILocation(line: 823, column: 828, scope: !1624)
!1628 = !DILocation(line: 823, column: 797, scope: !1624)
!1629 = !DILocation(line: 823, column: 796, scope: !1624)
!1630 = !DILocation(line: 823, column: 845, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1632, file: !77, discriminator: 16)
!1632 = distinct !DILexicalBlock(scope: !1625, file: !77, line: 823, column: 835)
!1633 = !DILocation(line: 823, column: 879, scope: !1631)
!1634 = !DILocation(line: 823, column: 1035, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1595, file: !77, discriminator: 17)
!1636 = !DILocation(line: 823, column: 1052, scope: !1635)
!1637 = !DILocation(line: 823, column: 1060, scope: !1635)
!1638 = !DILocation(line: 823, column: 1022, scope: !1635)
!1639 = !DILocation(line: 823, column: 1027, scope: !1635)
!1640 = !DILocation(line: 823, column: 1075, scope: !1635)
!1641 = !DILocation(line: 823, column: 1103, scope: !1635)
!1642 = !DILocation(line: 823, column: 1116, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1591, file: !77, discriminator: 18)
!1644 = !DILocation(line: 823, column: 1118, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1530, file: !77, discriminator: 19)
!1646 = !DILocation(line: 826, column: 11, scope: !1520)
!1647 = !DILocation(line: 826, column: 4, scope: !1520)
!1648 = distinct !DISubprogram(name: "VMGuestLib_GetMemReservationMB", scope: !77, file: !77, line: 847, type: !969, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!1649 = !DILocalVariable(name: "handle", arg: 1, scope: !1648, file: !77, line: 847, type: !72)
!1650 = !DILocation(line: 847, column: 49, scope: !1648)
!1651 = !DILocalVariable(name: "memReservationMB", arg: 2, scope: !1648, file: !77, line: 848, type: !971)
!1652 = !DILocation(line: 848, column: 40, scope: !1648)
!1653 = !DILocalVariable(name: "error", scope: !1648, file: !77, line: 850, type: !270)
!1654 = !DILocation(line: 850, column: 20, scope: !1648)
!1655 = !DILocation(line: 851, column: 4, scope: !1648)
!1656 = distinct !{!1656, !1655}
!1657 = !DILocalVariable(name: "_data", scope: !1658, file: !77, line: 851, type: !71)
!1658 = distinct !DILexicalBlock(scope: !1648, file: !77, line: 851, column: 7)
!1659 = !DILocation(line: 851, column: 15, scope: !1658)
!1660 = !DILocation(line: 851, column: 53, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1658, file: !77, discriminator: 1)
!1662 = !DILocation(line: 851, column: 63, scope: !1661)
!1663 = !DILocation(line: 851, column: 62, scope: !1661)
!1664 = !DILocation(line: 851, column: 32, scope: !1661)
!1665 = !DILocation(line: 851, column: 30, scope: !1661)
!1666 = !DILocation(line: 851, column: 124, scope: !1661)
!1667 = !DILocation(line: 851, column: 120, scope: !1661)
!1668 = !DILocation(line: 851, column: 95, scope: !1661)
!1669 = !DILocation(line: 851, column: 134, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1671, file: !77, discriminator: 2)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !77, line: 851, column: 132)
!1672 = distinct !DILexicalBlock(scope: !1658, file: !77, line: 851, column: 95)
!1673 = !DILocation(line: 851, column: 174, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1675, file: !77, discriminator: 3)
!1675 = distinct !DILexicalBlock(scope: !1658, file: !77, line: 851, column: 147)
!1676 = !DILocation(line: 851, column: 184, scope: !1674)
!1677 = !DILocation(line: 851, column: 193, scope: !1674)
!1678 = !DILocation(line: 851, column: 147, scope: !1674)
!1679 = !DILocation(line: 851, column: 201, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1681, file: !77, discriminator: 4)
!1681 = distinct !DILexicalBlock(scope: !1675, file: !77, line: 851, column: 199)
!1682 = distinct !{!1682, !1683}
!1683 = !DILocation(line: 851, column: 201, scope: !1681)
!1684 = !DILocalVariable(name: "_dataV2", scope: !1685, file: !77, line: 851, type: !176)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !77, line: 851, column: 204)
!1686 = !DILocation(line: 851, column: 224, scope: !1685)
!1687 = !DILocation(line: 851, column: 261, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1685, file: !77, discriminator: 5)
!1689 = !DILocation(line: 851, column: 271, scope: !1688)
!1690 = !DILocation(line: 851, column: 234, scope: !1688)
!1691 = !DILocation(line: 851, column: 224, scope: !1688)
!1692 = !DILocation(line: 851, column: 294, scope: !1688)
!1693 = !DILocation(line: 851, column: 303, scope: !1688)
!1694 = !DILocation(line: 851, column: 320, scope: !1688)
!1695 = !DILocation(line: 851, column: 293, scope: !1688)
!1696 = !DILocation(line: 851, column: 337, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1698, file: !77, discriminator: 6)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !77, line: 851, column: 327)
!1699 = distinct !DILexicalBlock(scope: !1685, file: !77, line: 851, column: 293)
!1700 = !DILocation(line: 851, column: 371, scope: !1697)
!1701 = !DILocation(line: 851, column: 402, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1685, file: !77, discriminator: 7)
!1703 = !DILocation(line: 851, column: 411, scope: !1702)
!1704 = !DILocation(line: 851, column: 428, scope: !1702)
!1705 = !DILocation(line: 851, column: 382, scope: !1702)
!1706 = !DILocation(line: 851, column: 400, scope: !1702)
!1707 = !DILocation(line: 851, column: 443, scope: !1702)
!1708 = !DILocation(line: 851, column: 471, scope: !1702)
!1709 = !DILocation(line: 851, column: 484, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1681, file: !77, discriminator: 8)
!1711 = !DILocation(line: 851, column: 522, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1713, file: !77, discriminator: 9)
!1713 = distinct !DILexicalBlock(scope: !1675, file: !77, line: 851, column: 495)
!1714 = !DILocation(line: 851, column: 532, scope: !1712)
!1715 = !DILocation(line: 851, column: 541, scope: !1712)
!1716 = !DILocation(line: 851, column: 495, scope: !1712)
!1717 = !DILocation(line: 851, column: 549, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !77, discriminator: 10)
!1719 = distinct !DILexicalBlock(scope: !1713, file: !77, line: 851, column: 547)
!1720 = distinct !{!1720, !1721}
!1721 = !DILocation(line: 851, column: 549, scope: !1719)
!1722 = !DILocalVariable(name: "_data", scope: !1723, file: !77, line: 851, type: !71)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !77, line: 851, column: 552)
!1724 = !DILocation(line: 851, column: 560, scope: !1723)
!1725 = !DILocalVariable(name: "_stat", scope: !1723, file: !77, line: 851, type: !363)
!1726 = !DILocation(line: 851, column: 582, scope: !1723)
!1727 = !DILocation(line: 851, column: 620, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1723, file: !77, discriminator: 11)
!1729 = !DILocation(line: 851, column: 630, scope: !1728)
!1730 = !DILocation(line: 851, column: 629, scope: !1728)
!1731 = !DILocation(line: 851, column: 599, scope: !1728)
!1732 = !DILocation(line: 851, column: 597, scope: !1728)
!1733 = !DILocation(line: 851, column: 691, scope: !1728)
!1734 = !DILocation(line: 851, column: 687, scope: !1728)
!1735 = !DILocation(line: 851, column: 662, scope: !1728)
!1736 = !DILocation(line: 851, column: 701, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1738, file: !77, discriminator: 12)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !77, line: 851, column: 699)
!1739 = distinct !DILexicalBlock(scope: !1723, file: !77, line: 851, column: 662)
!1740 = !DILocation(line: 851, column: 758, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1723, file: !77, discriminator: 13)
!1742 = !DILocation(line: 851, column: 731, scope: !1741)
!1743 = !DILocation(line: 851, column: 729, scope: !1741)
!1744 = !DILocation(line: 851, column: 812, scope: !1741)
!1745 = !DILocation(line: 851, column: 819, scope: !1741)
!1746 = !DILocation(line: 851, column: 811, scope: !1741)
!1747 = !DILocation(line: 851, column: 850, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1749, file: !77, discriminator: 14)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !77, line: 851, column: 848)
!1750 = distinct !DILexicalBlock(scope: !1723, file: !77, line: 851, column: 811)
!1751 = !DILocation(line: 851, column: 870, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1753, file: !77, discriminator: 15)
!1753 = distinct !DILexicalBlock(scope: !1723, file: !77, line: 851, column: 863)
!1754 = !DILocation(line: 851, column: 887, scope: !1752)
!1755 = !DILocation(line: 851, column: 904, scope: !1752)
!1756 = !DILocation(line: 851, column: 864, scope: !1752)
!1757 = !DILocation(line: 851, column: 863, scope: !1752)
!1758 = !DILocation(line: 851, column: 921, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1760, file: !77, discriminator: 16)
!1760 = distinct !DILexicalBlock(scope: !1753, file: !77, line: 851, column: 911)
!1761 = !DILocation(line: 851, column: 955, scope: !1759)
!1762 = !DILocation(line: 851, column: 1146, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1723, file: !77, discriminator: 17)
!1764 = !DILocation(line: 851, column: 1163, scope: !1763)
!1765 = !DILocation(line: 851, column: 1180, scope: !1763)
!1766 = !DILocation(line: 851, column: 1120, scope: !1763)
!1767 = !DILocation(line: 851, column: 1138, scope: !1763)
!1768 = !DILocation(line: 851, column: 1195, scope: !1763)
!1769 = !DILocation(line: 851, column: 1223, scope: !1763)
!1770 = !DILocation(line: 851, column: 1236, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1719, file: !77, discriminator: 18)
!1772 = !DILocation(line: 851, column: 1238, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1658, file: !77, discriminator: 19)
!1774 = !DILocation(line: 854, column: 11, scope: !1648)
!1775 = !DILocation(line: 854, column: 4, scope: !1648)
!1776 = distinct !DISubprogram(name: "VMGuestLib_GetMemLimitMB", scope: !77, file: !77, line: 875, type: !969, isLocal: false, isDefinition: true, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!1777 = !DILocalVariable(name: "handle", arg: 1, scope: !1776, file: !77, line: 875, type: !72)
!1778 = !DILocation(line: 875, column: 43, scope: !1776)
!1779 = !DILocalVariable(name: "memLimitMB", arg: 2, scope: !1776, file: !77, line: 876, type: !971)
!1780 = !DILocation(line: 876, column: 34, scope: !1776)
!1781 = !DILocalVariable(name: "error", scope: !1776, file: !77, line: 878, type: !270)
!1782 = !DILocation(line: 878, column: 20, scope: !1776)
!1783 = !DILocation(line: 879, column: 4, scope: !1776)
!1784 = distinct !{!1784, !1783}
!1785 = !DILocalVariable(name: "_data", scope: !1786, file: !77, line: 879, type: !71)
!1786 = distinct !DILexicalBlock(scope: !1776, file: !77, line: 879, column: 7)
!1787 = !DILocation(line: 879, column: 15, scope: !1786)
!1788 = !DILocation(line: 879, column: 53, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1786, file: !77, discriminator: 1)
!1790 = !DILocation(line: 879, column: 63, scope: !1789)
!1791 = !DILocation(line: 879, column: 62, scope: !1789)
!1792 = !DILocation(line: 879, column: 32, scope: !1789)
!1793 = !DILocation(line: 879, column: 30, scope: !1789)
!1794 = !DILocation(line: 879, column: 118, scope: !1789)
!1795 = !DILocation(line: 879, column: 114, scope: !1789)
!1796 = !DILocation(line: 879, column: 89, scope: !1789)
!1797 = !DILocation(line: 879, column: 128, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1799, file: !77, discriminator: 2)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !77, line: 879, column: 126)
!1800 = distinct !DILexicalBlock(scope: !1786, file: !77, line: 879, column: 89)
!1801 = !DILocation(line: 879, column: 168, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1803, file: !77, discriminator: 3)
!1803 = distinct !DILexicalBlock(scope: !1786, file: !77, line: 879, column: 141)
!1804 = !DILocation(line: 879, column: 178, scope: !1802)
!1805 = !DILocation(line: 879, column: 187, scope: !1802)
!1806 = !DILocation(line: 879, column: 141, scope: !1802)
!1807 = !DILocation(line: 879, column: 195, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1809, file: !77, discriminator: 4)
!1809 = distinct !DILexicalBlock(scope: !1803, file: !77, line: 879, column: 193)
!1810 = distinct !{!1810, !1811}
!1811 = !DILocation(line: 879, column: 195, scope: !1809)
!1812 = !DILocalVariable(name: "_dataV2", scope: !1813, file: !77, line: 879, type: !176)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !77, line: 879, column: 198)
!1814 = !DILocation(line: 879, column: 218, scope: !1813)
!1815 = !DILocation(line: 879, column: 255, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1813, file: !77, discriminator: 5)
!1817 = !DILocation(line: 879, column: 265, scope: !1816)
!1818 = !DILocation(line: 879, column: 228, scope: !1816)
!1819 = !DILocation(line: 879, column: 218, scope: !1816)
!1820 = !DILocation(line: 879, column: 288, scope: !1816)
!1821 = !DILocation(line: 879, column: 297, scope: !1816)
!1822 = !DILocation(line: 879, column: 308, scope: !1816)
!1823 = !DILocation(line: 879, column: 287, scope: !1816)
!1824 = !DILocation(line: 879, column: 325, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1826, file: !77, discriminator: 6)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !77, line: 879, column: 315)
!1827 = distinct !DILexicalBlock(scope: !1813, file: !77, line: 879, column: 287)
!1828 = !DILocation(line: 879, column: 359, scope: !1825)
!1829 = !DILocation(line: 879, column: 384, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1813, file: !77, discriminator: 7)
!1831 = !DILocation(line: 879, column: 393, scope: !1830)
!1832 = !DILocation(line: 879, column: 404, scope: !1830)
!1833 = !DILocation(line: 879, column: 370, scope: !1830)
!1834 = !DILocation(line: 879, column: 382, scope: !1830)
!1835 = !DILocation(line: 879, column: 419, scope: !1830)
!1836 = !DILocation(line: 879, column: 447, scope: !1830)
!1837 = !DILocation(line: 879, column: 460, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1809, file: !77, discriminator: 8)
!1839 = !DILocation(line: 879, column: 498, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1841, file: !77, discriminator: 9)
!1841 = distinct !DILexicalBlock(scope: !1803, file: !77, line: 879, column: 471)
!1842 = !DILocation(line: 879, column: 508, scope: !1840)
!1843 = !DILocation(line: 879, column: 517, scope: !1840)
!1844 = !DILocation(line: 879, column: 471, scope: !1840)
!1845 = !DILocation(line: 879, column: 525, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1847, file: !77, discriminator: 10)
!1847 = distinct !DILexicalBlock(scope: !1841, file: !77, line: 879, column: 523)
!1848 = distinct !{!1848, !1849}
!1849 = !DILocation(line: 879, column: 525, scope: !1847)
!1850 = !DILocalVariable(name: "_data", scope: !1851, file: !77, line: 879, type: !71)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !77, line: 879, column: 528)
!1852 = !DILocation(line: 879, column: 536, scope: !1851)
!1853 = !DILocalVariable(name: "_stat", scope: !1851, file: !77, line: 879, type: !363)
!1854 = !DILocation(line: 879, column: 558, scope: !1851)
!1855 = !DILocation(line: 879, column: 596, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1851, file: !77, discriminator: 11)
!1857 = !DILocation(line: 879, column: 606, scope: !1856)
!1858 = !DILocation(line: 879, column: 605, scope: !1856)
!1859 = !DILocation(line: 879, column: 575, scope: !1856)
!1860 = !DILocation(line: 879, column: 573, scope: !1856)
!1861 = !DILocation(line: 879, column: 661, scope: !1856)
!1862 = !DILocation(line: 879, column: 657, scope: !1856)
!1863 = !DILocation(line: 879, column: 632, scope: !1856)
!1864 = !DILocation(line: 879, column: 671, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1866, file: !77, discriminator: 12)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !77, line: 879, column: 669)
!1867 = distinct !DILexicalBlock(scope: !1851, file: !77, line: 879, column: 632)
!1868 = !DILocation(line: 879, column: 728, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1851, file: !77, discriminator: 13)
!1870 = !DILocation(line: 879, column: 701, scope: !1869)
!1871 = !DILocation(line: 879, column: 699, scope: !1869)
!1872 = !DILocation(line: 879, column: 776, scope: !1869)
!1873 = !DILocation(line: 879, column: 783, scope: !1869)
!1874 = !DILocation(line: 879, column: 775, scope: !1869)
!1875 = !DILocation(line: 879, column: 814, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1877, file: !77, discriminator: 14)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !77, line: 879, column: 812)
!1878 = distinct !DILexicalBlock(scope: !1851, file: !77, line: 879, column: 775)
!1879 = !DILocation(line: 879, column: 834, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1881, file: !77, discriminator: 15)
!1881 = distinct !DILexicalBlock(scope: !1851, file: !77, line: 879, column: 827)
!1882 = !DILocation(line: 879, column: 851, scope: !1880)
!1883 = !DILocation(line: 879, column: 862, scope: !1880)
!1884 = !DILocation(line: 879, column: 828, scope: !1880)
!1885 = !DILocation(line: 879, column: 827, scope: !1880)
!1886 = !DILocation(line: 879, column: 879, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1888, file: !77, discriminator: 16)
!1888 = distinct !DILexicalBlock(scope: !1881, file: !77, line: 879, column: 869)
!1889 = !DILocation(line: 879, column: 913, scope: !1887)
!1890 = !DILocation(line: 879, column: 1086, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1851, file: !77, discriminator: 17)
!1892 = !DILocation(line: 879, column: 1103, scope: !1891)
!1893 = !DILocation(line: 879, column: 1114, scope: !1891)
!1894 = !DILocation(line: 879, column: 1066, scope: !1891)
!1895 = !DILocation(line: 879, column: 1078, scope: !1891)
!1896 = !DILocation(line: 879, column: 1129, scope: !1891)
!1897 = !DILocation(line: 879, column: 1157, scope: !1891)
!1898 = !DILocation(line: 879, column: 1170, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1847, file: !77, discriminator: 18)
!1900 = !DILocation(line: 879, column: 1172, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1786, file: !77, discriminator: 19)
!1902 = !DILocation(line: 882, column: 11, scope: !1776)
!1903 = !DILocation(line: 882, column: 4, scope: !1776)
!1904 = distinct !DISubprogram(name: "VMGuestLib_GetMemShares", scope: !77, file: !77, line: 903, type: !969, isLocal: false, isDefinition: true, scopeLine: 905, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!1905 = !DILocalVariable(name: "handle", arg: 1, scope: !1904, file: !77, line: 903, type: !72)
!1906 = !DILocation(line: 903, column: 42, scope: !1904)
!1907 = !DILocalVariable(name: "memShares", arg: 2, scope: !1904, file: !77, line: 904, type: !971)
!1908 = !DILocation(line: 904, column: 33, scope: !1904)
!1909 = !DILocalVariable(name: "error", scope: !1904, file: !77, line: 906, type: !270)
!1910 = !DILocation(line: 906, column: 20, scope: !1904)
!1911 = !DILocation(line: 907, column: 4, scope: !1904)
!1912 = distinct !{!1912, !1911}
!1913 = !DILocalVariable(name: "_data", scope: !1914, file: !77, line: 907, type: !71)
!1914 = distinct !DILexicalBlock(scope: !1904, file: !77, line: 907, column: 7)
!1915 = !DILocation(line: 907, column: 15, scope: !1914)
!1916 = !DILocation(line: 907, column: 53, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1914, file: !77, discriminator: 1)
!1918 = !DILocation(line: 907, column: 63, scope: !1917)
!1919 = !DILocation(line: 907, column: 62, scope: !1917)
!1920 = !DILocation(line: 907, column: 32, scope: !1917)
!1921 = !DILocation(line: 907, column: 30, scope: !1917)
!1922 = !DILocation(line: 907, column: 117, scope: !1917)
!1923 = !DILocation(line: 907, column: 113, scope: !1917)
!1924 = !DILocation(line: 907, column: 88, scope: !1917)
!1925 = !DILocation(line: 907, column: 127, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1927, file: !77, discriminator: 2)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !77, line: 907, column: 125)
!1928 = distinct !DILexicalBlock(scope: !1914, file: !77, line: 907, column: 88)
!1929 = !DILocation(line: 907, column: 167, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1931, file: !77, discriminator: 3)
!1931 = distinct !DILexicalBlock(scope: !1914, file: !77, line: 907, column: 140)
!1932 = !DILocation(line: 907, column: 177, scope: !1930)
!1933 = !DILocation(line: 907, column: 186, scope: !1930)
!1934 = !DILocation(line: 907, column: 140, scope: !1930)
!1935 = !DILocation(line: 907, column: 194, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1937, file: !77, discriminator: 4)
!1937 = distinct !DILexicalBlock(scope: !1931, file: !77, line: 907, column: 192)
!1938 = distinct !{!1938, !1939}
!1939 = !DILocation(line: 907, column: 194, scope: !1937)
!1940 = !DILocalVariable(name: "_dataV2", scope: !1941, file: !77, line: 907, type: !176)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !77, line: 907, column: 197)
!1942 = !DILocation(line: 907, column: 217, scope: !1941)
!1943 = !DILocation(line: 907, column: 254, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1941, file: !77, discriminator: 5)
!1945 = !DILocation(line: 907, column: 264, scope: !1944)
!1946 = !DILocation(line: 907, column: 227, scope: !1944)
!1947 = !DILocation(line: 907, column: 217, scope: !1944)
!1948 = !DILocation(line: 907, column: 287, scope: !1944)
!1949 = !DILocation(line: 907, column: 296, scope: !1944)
!1950 = !DILocation(line: 907, column: 306, scope: !1944)
!1951 = !DILocation(line: 907, column: 286, scope: !1944)
!1952 = !DILocation(line: 907, column: 323, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1954, file: !77, discriminator: 6)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !77, line: 907, column: 313)
!1955 = distinct !DILexicalBlock(scope: !1941, file: !77, line: 907, column: 286)
!1956 = !DILocation(line: 907, column: 357, scope: !1953)
!1957 = !DILocation(line: 907, column: 381, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1941, file: !77, discriminator: 7)
!1959 = !DILocation(line: 907, column: 390, scope: !1958)
!1960 = !DILocation(line: 907, column: 400, scope: !1958)
!1961 = !DILocation(line: 907, column: 368, scope: !1958)
!1962 = !DILocation(line: 907, column: 379, scope: !1958)
!1963 = !DILocation(line: 907, column: 415, scope: !1958)
!1964 = !DILocation(line: 907, column: 443, scope: !1958)
!1965 = !DILocation(line: 907, column: 456, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1937, file: !77, discriminator: 8)
!1967 = !DILocation(line: 907, column: 494, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1969, file: !77, discriminator: 9)
!1969 = distinct !DILexicalBlock(scope: !1931, file: !77, line: 907, column: 467)
!1970 = !DILocation(line: 907, column: 504, scope: !1968)
!1971 = !DILocation(line: 907, column: 513, scope: !1968)
!1972 = !DILocation(line: 907, column: 467, scope: !1968)
!1973 = !DILocation(line: 907, column: 521, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1975, file: !77, discriminator: 10)
!1975 = distinct !DILexicalBlock(scope: !1969, file: !77, line: 907, column: 519)
!1976 = distinct !{!1976, !1977}
!1977 = !DILocation(line: 907, column: 521, scope: !1975)
!1978 = !DILocalVariable(name: "_data", scope: !1979, file: !77, line: 907, type: !71)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !77, line: 907, column: 524)
!1980 = !DILocation(line: 907, column: 532, scope: !1979)
!1981 = !DILocalVariable(name: "_stat", scope: !1979, file: !77, line: 907, type: !363)
!1982 = !DILocation(line: 907, column: 554, scope: !1979)
!1983 = !DILocation(line: 907, column: 592, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !1979, file: !77, discriminator: 11)
!1985 = !DILocation(line: 907, column: 602, scope: !1984)
!1986 = !DILocation(line: 907, column: 601, scope: !1984)
!1987 = !DILocation(line: 907, column: 571, scope: !1984)
!1988 = !DILocation(line: 907, column: 569, scope: !1984)
!1989 = !DILocation(line: 907, column: 656, scope: !1984)
!1990 = !DILocation(line: 907, column: 652, scope: !1984)
!1991 = !DILocation(line: 907, column: 627, scope: !1984)
!1992 = !DILocation(line: 907, column: 666, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1994, file: !77, discriminator: 12)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !77, line: 907, column: 664)
!1995 = distinct !DILexicalBlock(scope: !1979, file: !77, line: 907, column: 627)
!1996 = !DILocation(line: 907, column: 723, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1979, file: !77, discriminator: 13)
!1998 = !DILocation(line: 907, column: 696, scope: !1997)
!1999 = !DILocation(line: 907, column: 694, scope: !1997)
!2000 = !DILocation(line: 907, column: 769, scope: !1997)
!2001 = !DILocation(line: 907, column: 776, scope: !1997)
!2002 = !DILocation(line: 907, column: 768, scope: !1997)
!2003 = !DILocation(line: 907, column: 807, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2005, file: !77, discriminator: 14)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !77, line: 907, column: 805)
!2006 = distinct !DILexicalBlock(scope: !1979, file: !77, line: 907, column: 768)
!2007 = !DILocation(line: 907, column: 827, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !2009, file: !77, discriminator: 15)
!2009 = distinct !DILexicalBlock(scope: !1979, file: !77, line: 907, column: 820)
!2010 = !DILocation(line: 907, column: 844, scope: !2008)
!2011 = !DILocation(line: 907, column: 854, scope: !2008)
!2012 = !DILocation(line: 907, column: 821, scope: !2008)
!2013 = !DILocation(line: 907, column: 820, scope: !2008)
!2014 = !DILocation(line: 907, column: 871, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2016, file: !77, discriminator: 16)
!2016 = distinct !DILexicalBlock(scope: !2009, file: !77, line: 907, column: 861)
!2017 = !DILocation(line: 907, column: 905, scope: !2015)
!2018 = !DILocation(line: 907, column: 1075, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !1979, file: !77, discriminator: 17)
!2020 = !DILocation(line: 907, column: 1092, scope: !2019)
!2021 = !DILocation(line: 907, column: 1102, scope: !2019)
!2022 = !DILocation(line: 907, column: 1056, scope: !2019)
!2023 = !DILocation(line: 907, column: 1067, scope: !2019)
!2024 = !DILocation(line: 907, column: 1117, scope: !2019)
!2025 = !DILocation(line: 907, column: 1145, scope: !2019)
!2026 = !DILocation(line: 907, column: 1158, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !1975, file: !77, discriminator: 18)
!2028 = !DILocation(line: 907, column: 1160, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !1914, file: !77, discriminator: 19)
!2030 = !DILocation(line: 910, column: 11, scope: !1904)
!2031 = !DILocation(line: 910, column: 4, scope: !1904)
!2032 = distinct !DISubprogram(name: "VMGuestLib_GetMemMappedMB", scope: !77, file: !77, line: 931, type: !969, isLocal: false, isDefinition: true, scopeLine: 933, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!2033 = !DILocalVariable(name: "handle", arg: 1, scope: !2032, file: !77, line: 931, type: !72)
!2034 = !DILocation(line: 931, column: 44, scope: !2032)
!2035 = !DILocalVariable(name: "memMappedMB", arg: 2, scope: !2032, file: !77, line: 932, type: !971)
!2036 = !DILocation(line: 932, column: 35, scope: !2032)
!2037 = !DILocalVariable(name: "error", scope: !2032, file: !77, line: 934, type: !270)
!2038 = !DILocation(line: 934, column: 20, scope: !2032)
!2039 = !DILocation(line: 935, column: 4, scope: !2032)
!2040 = distinct !{!2040, !2039}
!2041 = !DILocalVariable(name: "_data", scope: !2042, file: !77, line: 935, type: !71)
!2042 = distinct !DILexicalBlock(scope: !2032, file: !77, line: 935, column: 7)
!2043 = !DILocation(line: 935, column: 15, scope: !2042)
!2044 = !DILocation(line: 935, column: 53, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2042, file: !77, discriminator: 1)
!2046 = !DILocation(line: 935, column: 63, scope: !2045)
!2047 = !DILocation(line: 935, column: 62, scope: !2045)
!2048 = !DILocation(line: 935, column: 32, scope: !2045)
!2049 = !DILocation(line: 935, column: 30, scope: !2045)
!2050 = !DILocation(line: 935, column: 119, scope: !2045)
!2051 = !DILocation(line: 935, column: 115, scope: !2045)
!2052 = !DILocation(line: 935, column: 90, scope: !2045)
!2053 = !DILocation(line: 935, column: 129, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2055, file: !77, discriminator: 2)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !77, line: 935, column: 127)
!2056 = distinct !DILexicalBlock(scope: !2042, file: !77, line: 935, column: 90)
!2057 = !DILocation(line: 935, column: 169, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2059, file: !77, discriminator: 3)
!2059 = distinct !DILexicalBlock(scope: !2042, file: !77, line: 935, column: 142)
!2060 = !DILocation(line: 935, column: 179, scope: !2058)
!2061 = !DILocation(line: 935, column: 188, scope: !2058)
!2062 = !DILocation(line: 935, column: 142, scope: !2058)
!2063 = !DILocation(line: 935, column: 196, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2065, file: !77, discriminator: 4)
!2065 = distinct !DILexicalBlock(scope: !2059, file: !77, line: 935, column: 194)
!2066 = distinct !{!2066, !2067}
!2067 = !DILocation(line: 935, column: 196, scope: !2065)
!2068 = !DILocalVariable(name: "_dataV2", scope: !2069, file: !77, line: 935, type: !176)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !77, line: 935, column: 199)
!2070 = !DILocation(line: 935, column: 219, scope: !2069)
!2071 = !DILocation(line: 935, column: 256, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2069, file: !77, discriminator: 5)
!2073 = !DILocation(line: 935, column: 266, scope: !2072)
!2074 = !DILocation(line: 935, column: 229, scope: !2072)
!2075 = !DILocation(line: 935, column: 219, scope: !2072)
!2076 = !DILocation(line: 935, column: 289, scope: !2072)
!2077 = !DILocation(line: 935, column: 298, scope: !2072)
!2078 = !DILocation(line: 935, column: 310, scope: !2072)
!2079 = !DILocation(line: 935, column: 288, scope: !2072)
!2080 = !DILocation(line: 935, column: 327, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2082, file: !77, discriminator: 6)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !77, line: 935, column: 317)
!2083 = distinct !DILexicalBlock(scope: !2069, file: !77, line: 935, column: 288)
!2084 = !DILocation(line: 935, column: 361, scope: !2081)
!2085 = !DILocation(line: 935, column: 387, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2069, file: !77, discriminator: 7)
!2087 = !DILocation(line: 935, column: 396, scope: !2086)
!2088 = !DILocation(line: 935, column: 408, scope: !2086)
!2089 = !DILocation(line: 935, column: 372, scope: !2086)
!2090 = !DILocation(line: 935, column: 385, scope: !2086)
!2091 = !DILocation(line: 935, column: 423, scope: !2086)
!2092 = !DILocation(line: 935, column: 451, scope: !2086)
!2093 = !DILocation(line: 935, column: 464, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2065, file: !77, discriminator: 8)
!2095 = !DILocation(line: 935, column: 502, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2097, file: !77, discriminator: 9)
!2097 = distinct !DILexicalBlock(scope: !2059, file: !77, line: 935, column: 475)
!2098 = !DILocation(line: 935, column: 512, scope: !2096)
!2099 = !DILocation(line: 935, column: 521, scope: !2096)
!2100 = !DILocation(line: 935, column: 475, scope: !2096)
!2101 = !DILocation(line: 935, column: 529, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2103, file: !77, discriminator: 10)
!2103 = distinct !DILexicalBlock(scope: !2097, file: !77, line: 935, column: 527)
!2104 = distinct !{!2104, !2105}
!2105 = !DILocation(line: 935, column: 529, scope: !2103)
!2106 = !DILocalVariable(name: "_data", scope: !2107, file: !77, line: 935, type: !71)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !77, line: 935, column: 532)
!2108 = !DILocation(line: 935, column: 540, scope: !2107)
!2109 = !DILocalVariable(name: "_stat", scope: !2107, file: !77, line: 935, type: !363)
!2110 = !DILocation(line: 935, column: 562, scope: !2107)
!2111 = !DILocation(line: 935, column: 600, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2107, file: !77, discriminator: 11)
!2113 = !DILocation(line: 935, column: 610, scope: !2112)
!2114 = !DILocation(line: 935, column: 609, scope: !2112)
!2115 = !DILocation(line: 935, column: 579, scope: !2112)
!2116 = !DILocation(line: 935, column: 577, scope: !2112)
!2117 = !DILocation(line: 935, column: 666, scope: !2112)
!2118 = !DILocation(line: 935, column: 662, scope: !2112)
!2119 = !DILocation(line: 935, column: 637, scope: !2112)
!2120 = !DILocation(line: 935, column: 676, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2122, file: !77, discriminator: 12)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !77, line: 935, column: 674)
!2123 = distinct !DILexicalBlock(scope: !2107, file: !77, line: 935, column: 637)
!2124 = !DILocation(line: 935, column: 733, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2107, file: !77, discriminator: 13)
!2126 = !DILocation(line: 935, column: 706, scope: !2125)
!2127 = !DILocation(line: 935, column: 704, scope: !2125)
!2128 = !DILocation(line: 935, column: 782, scope: !2125)
!2129 = !DILocation(line: 935, column: 789, scope: !2125)
!2130 = !DILocation(line: 935, column: 781, scope: !2125)
!2131 = !DILocation(line: 935, column: 820, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2133, file: !77, discriminator: 14)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !77, line: 935, column: 818)
!2134 = distinct !DILexicalBlock(scope: !2107, file: !77, line: 935, column: 781)
!2135 = !DILocation(line: 935, column: 840, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2137, file: !77, discriminator: 15)
!2137 = distinct !DILexicalBlock(scope: !2107, file: !77, line: 935, column: 833)
!2138 = !DILocation(line: 935, column: 857, scope: !2136)
!2139 = !DILocation(line: 935, column: 869, scope: !2136)
!2140 = !DILocation(line: 935, column: 834, scope: !2136)
!2141 = !DILocation(line: 935, column: 833, scope: !2136)
!2142 = !DILocation(line: 935, column: 886, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2144, file: !77, discriminator: 16)
!2144 = distinct !DILexicalBlock(scope: !2137, file: !77, line: 935, column: 876)
!2145 = !DILocation(line: 935, column: 920, scope: !2143)
!2146 = !DILocation(line: 935, column: 1096, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2107, file: !77, discriminator: 17)
!2148 = !DILocation(line: 935, column: 1113, scope: !2147)
!2149 = !DILocation(line: 935, column: 1125, scope: !2147)
!2150 = !DILocation(line: 935, column: 1075, scope: !2147)
!2151 = !DILocation(line: 935, column: 1088, scope: !2147)
!2152 = !DILocation(line: 935, column: 1140, scope: !2147)
!2153 = !DILocation(line: 935, column: 1168, scope: !2147)
!2154 = !DILocation(line: 935, column: 1181, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2103, file: !77, discriminator: 18)
!2156 = !DILocation(line: 935, column: 1183, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2042, file: !77, discriminator: 19)
!2158 = !DILocation(line: 938, column: 11, scope: !2032)
!2159 = !DILocation(line: 938, column: 4, scope: !2032)
!2160 = distinct !DISubprogram(name: "VMGuestLib_GetMemActiveMB", scope: !77, file: !77, line: 959, type: !969, isLocal: false, isDefinition: true, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!2161 = !DILocalVariable(name: "handle", arg: 1, scope: !2160, file: !77, line: 959, type: !72)
!2162 = !DILocation(line: 959, column: 44, scope: !2160)
!2163 = !DILocalVariable(name: "memActiveMB", arg: 2, scope: !2160, file: !77, line: 960, type: !971)
!2164 = !DILocation(line: 960, column: 35, scope: !2160)
!2165 = !DILocalVariable(name: "error", scope: !2160, file: !77, line: 962, type: !270)
!2166 = !DILocation(line: 962, column: 20, scope: !2160)
!2167 = !DILocation(line: 963, column: 4, scope: !2160)
!2168 = distinct !{!2168, !2167}
!2169 = !DILocalVariable(name: "_data", scope: !2170, file: !77, line: 963, type: !71)
!2170 = distinct !DILexicalBlock(scope: !2160, file: !77, line: 963, column: 7)
!2171 = !DILocation(line: 963, column: 15, scope: !2170)
!2172 = !DILocation(line: 963, column: 53, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2170, file: !77, discriminator: 1)
!2174 = !DILocation(line: 963, column: 63, scope: !2173)
!2175 = !DILocation(line: 963, column: 62, scope: !2173)
!2176 = !DILocation(line: 963, column: 32, scope: !2173)
!2177 = !DILocation(line: 963, column: 30, scope: !2173)
!2178 = !DILocation(line: 963, column: 119, scope: !2173)
!2179 = !DILocation(line: 963, column: 115, scope: !2173)
!2180 = !DILocation(line: 963, column: 90, scope: !2173)
!2181 = !DILocation(line: 963, column: 129, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2183, file: !77, discriminator: 2)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !77, line: 963, column: 127)
!2184 = distinct !DILexicalBlock(scope: !2170, file: !77, line: 963, column: 90)
!2185 = !DILocation(line: 963, column: 169, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2187, file: !77, discriminator: 3)
!2187 = distinct !DILexicalBlock(scope: !2170, file: !77, line: 963, column: 142)
!2188 = !DILocation(line: 963, column: 179, scope: !2186)
!2189 = !DILocation(line: 963, column: 188, scope: !2186)
!2190 = !DILocation(line: 963, column: 142, scope: !2186)
!2191 = !DILocation(line: 963, column: 196, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2193, file: !77, discriminator: 4)
!2193 = distinct !DILexicalBlock(scope: !2187, file: !77, line: 963, column: 194)
!2194 = distinct !{!2194, !2195}
!2195 = !DILocation(line: 963, column: 196, scope: !2193)
!2196 = !DILocalVariable(name: "_dataV2", scope: !2197, file: !77, line: 963, type: !176)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !77, line: 963, column: 199)
!2198 = !DILocation(line: 963, column: 219, scope: !2197)
!2199 = !DILocation(line: 963, column: 256, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2197, file: !77, discriminator: 5)
!2201 = !DILocation(line: 963, column: 266, scope: !2200)
!2202 = !DILocation(line: 963, column: 229, scope: !2200)
!2203 = !DILocation(line: 963, column: 219, scope: !2200)
!2204 = !DILocation(line: 963, column: 289, scope: !2200)
!2205 = !DILocation(line: 963, column: 298, scope: !2200)
!2206 = !DILocation(line: 963, column: 310, scope: !2200)
!2207 = !DILocation(line: 963, column: 288, scope: !2200)
!2208 = !DILocation(line: 963, column: 327, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2210, file: !77, discriminator: 6)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !77, line: 963, column: 317)
!2211 = distinct !DILexicalBlock(scope: !2197, file: !77, line: 963, column: 288)
!2212 = !DILocation(line: 963, column: 361, scope: !2209)
!2213 = !DILocation(line: 963, column: 387, scope: !2214)
!2214 = !DILexicalBlockFile(scope: !2197, file: !77, discriminator: 7)
!2215 = !DILocation(line: 963, column: 396, scope: !2214)
!2216 = !DILocation(line: 963, column: 408, scope: !2214)
!2217 = !DILocation(line: 963, column: 372, scope: !2214)
!2218 = !DILocation(line: 963, column: 385, scope: !2214)
!2219 = !DILocation(line: 963, column: 423, scope: !2214)
!2220 = !DILocation(line: 963, column: 451, scope: !2214)
!2221 = !DILocation(line: 963, column: 464, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2193, file: !77, discriminator: 8)
!2223 = !DILocation(line: 963, column: 502, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2225, file: !77, discriminator: 9)
!2225 = distinct !DILexicalBlock(scope: !2187, file: !77, line: 963, column: 475)
!2226 = !DILocation(line: 963, column: 512, scope: !2224)
!2227 = !DILocation(line: 963, column: 521, scope: !2224)
!2228 = !DILocation(line: 963, column: 475, scope: !2224)
!2229 = !DILocation(line: 963, column: 529, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2231, file: !77, discriminator: 10)
!2231 = distinct !DILexicalBlock(scope: !2225, file: !77, line: 963, column: 527)
!2232 = distinct !{!2232, !2233}
!2233 = !DILocation(line: 963, column: 529, scope: !2231)
!2234 = !DILocalVariable(name: "_data", scope: !2235, file: !77, line: 963, type: !71)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !77, line: 963, column: 532)
!2236 = !DILocation(line: 963, column: 540, scope: !2235)
!2237 = !DILocalVariable(name: "_stat", scope: !2235, file: !77, line: 963, type: !363)
!2238 = !DILocation(line: 963, column: 562, scope: !2235)
!2239 = !DILocation(line: 963, column: 600, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2235, file: !77, discriminator: 11)
!2241 = !DILocation(line: 963, column: 610, scope: !2240)
!2242 = !DILocation(line: 963, column: 609, scope: !2240)
!2243 = !DILocation(line: 963, column: 579, scope: !2240)
!2244 = !DILocation(line: 963, column: 577, scope: !2240)
!2245 = !DILocation(line: 963, column: 666, scope: !2240)
!2246 = !DILocation(line: 963, column: 662, scope: !2240)
!2247 = !DILocation(line: 963, column: 637, scope: !2240)
!2248 = !DILocation(line: 963, column: 676, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2250, file: !77, discriminator: 12)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !77, line: 963, column: 674)
!2251 = distinct !DILexicalBlock(scope: !2235, file: !77, line: 963, column: 637)
!2252 = !DILocation(line: 963, column: 733, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2235, file: !77, discriminator: 13)
!2254 = !DILocation(line: 963, column: 706, scope: !2253)
!2255 = !DILocation(line: 963, column: 704, scope: !2253)
!2256 = !DILocation(line: 963, column: 782, scope: !2253)
!2257 = !DILocation(line: 963, column: 789, scope: !2253)
!2258 = !DILocation(line: 963, column: 781, scope: !2253)
!2259 = !DILocation(line: 963, column: 820, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2261, file: !77, discriminator: 14)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !77, line: 963, column: 818)
!2262 = distinct !DILexicalBlock(scope: !2235, file: !77, line: 963, column: 781)
!2263 = !DILocation(line: 963, column: 840, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2265, file: !77, discriminator: 15)
!2265 = distinct !DILexicalBlock(scope: !2235, file: !77, line: 963, column: 833)
!2266 = !DILocation(line: 963, column: 857, scope: !2264)
!2267 = !DILocation(line: 963, column: 869, scope: !2264)
!2268 = !DILocation(line: 963, column: 834, scope: !2264)
!2269 = !DILocation(line: 963, column: 833, scope: !2264)
!2270 = !DILocation(line: 963, column: 886, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2272, file: !77, discriminator: 16)
!2272 = distinct !DILexicalBlock(scope: !2265, file: !77, line: 963, column: 876)
!2273 = !DILocation(line: 963, column: 920, scope: !2271)
!2274 = !DILocation(line: 963, column: 1096, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2235, file: !77, discriminator: 17)
!2276 = !DILocation(line: 963, column: 1113, scope: !2275)
!2277 = !DILocation(line: 963, column: 1125, scope: !2275)
!2278 = !DILocation(line: 963, column: 1075, scope: !2275)
!2279 = !DILocation(line: 963, column: 1088, scope: !2275)
!2280 = !DILocation(line: 963, column: 1140, scope: !2275)
!2281 = !DILocation(line: 963, column: 1168, scope: !2275)
!2282 = !DILocation(line: 963, column: 1181, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2231, file: !77, discriminator: 18)
!2284 = !DILocation(line: 963, column: 1183, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2170, file: !77, discriminator: 19)
!2286 = !DILocation(line: 966, column: 11, scope: !2160)
!2287 = !DILocation(line: 966, column: 4, scope: !2160)
!2288 = distinct !DISubprogram(name: "VMGuestLib_GetMemOverheadMB", scope: !77, file: !77, line: 987, type: !969, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!2289 = !DILocalVariable(name: "handle", arg: 1, scope: !2288, file: !77, line: 987, type: !72)
!2290 = !DILocation(line: 987, column: 46, scope: !2288)
!2291 = !DILocalVariable(name: "memOverheadMB", arg: 2, scope: !2288, file: !77, line: 988, type: !971)
!2292 = !DILocation(line: 988, column: 37, scope: !2288)
!2293 = !DILocalVariable(name: "error", scope: !2288, file: !77, line: 990, type: !270)
!2294 = !DILocation(line: 990, column: 20, scope: !2288)
!2295 = !DILocation(line: 991, column: 4, scope: !2288)
!2296 = distinct !{!2296, !2295}
!2297 = !DILocalVariable(name: "_data", scope: !2298, file: !77, line: 991, type: !71)
!2298 = distinct !DILexicalBlock(scope: !2288, file: !77, line: 991, column: 7)
!2299 = !DILocation(line: 991, column: 15, scope: !2298)
!2300 = !DILocation(line: 991, column: 53, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2298, file: !77, discriminator: 1)
!2302 = !DILocation(line: 991, column: 63, scope: !2301)
!2303 = !DILocation(line: 991, column: 62, scope: !2301)
!2304 = !DILocation(line: 991, column: 32, scope: !2301)
!2305 = !DILocation(line: 991, column: 30, scope: !2301)
!2306 = !DILocation(line: 991, column: 121, scope: !2301)
!2307 = !DILocation(line: 991, column: 117, scope: !2301)
!2308 = !DILocation(line: 991, column: 92, scope: !2301)
!2309 = !DILocation(line: 991, column: 131, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2311, file: !77, discriminator: 2)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !77, line: 991, column: 129)
!2312 = distinct !DILexicalBlock(scope: !2298, file: !77, line: 991, column: 92)
!2313 = !DILocation(line: 991, column: 171, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !2315, file: !77, discriminator: 3)
!2315 = distinct !DILexicalBlock(scope: !2298, file: !77, line: 991, column: 144)
!2316 = !DILocation(line: 991, column: 181, scope: !2314)
!2317 = !DILocation(line: 991, column: 190, scope: !2314)
!2318 = !DILocation(line: 991, column: 144, scope: !2314)
!2319 = !DILocation(line: 991, column: 198, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2321, file: !77, discriminator: 4)
!2321 = distinct !DILexicalBlock(scope: !2315, file: !77, line: 991, column: 196)
!2322 = distinct !{!2322, !2323}
!2323 = !DILocation(line: 991, column: 198, scope: !2321)
!2324 = !DILocalVariable(name: "_dataV2", scope: !2325, file: !77, line: 991, type: !176)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !77, line: 991, column: 201)
!2326 = !DILocation(line: 991, column: 221, scope: !2325)
!2327 = !DILocation(line: 991, column: 258, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2325, file: !77, discriminator: 5)
!2329 = !DILocation(line: 991, column: 268, scope: !2328)
!2330 = !DILocation(line: 991, column: 231, scope: !2328)
!2331 = !DILocation(line: 991, column: 221, scope: !2328)
!2332 = !DILocation(line: 991, column: 291, scope: !2328)
!2333 = !DILocation(line: 991, column: 300, scope: !2328)
!2334 = !DILocation(line: 991, column: 314, scope: !2328)
!2335 = !DILocation(line: 991, column: 290, scope: !2328)
!2336 = !DILocation(line: 991, column: 331, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2338, file: !77, discriminator: 6)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !77, line: 991, column: 321)
!2339 = distinct !DILexicalBlock(scope: !2325, file: !77, line: 991, column: 290)
!2340 = !DILocation(line: 991, column: 365, scope: !2337)
!2341 = !DILocation(line: 991, column: 393, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2325, file: !77, discriminator: 7)
!2343 = !DILocation(line: 991, column: 402, scope: !2342)
!2344 = !DILocation(line: 991, column: 416, scope: !2342)
!2345 = !DILocation(line: 991, column: 376, scope: !2342)
!2346 = !DILocation(line: 991, column: 391, scope: !2342)
!2347 = !DILocation(line: 991, column: 431, scope: !2342)
!2348 = !DILocation(line: 991, column: 459, scope: !2342)
!2349 = !DILocation(line: 991, column: 472, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !2321, file: !77, discriminator: 8)
!2351 = !DILocation(line: 991, column: 510, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !2353, file: !77, discriminator: 9)
!2353 = distinct !DILexicalBlock(scope: !2315, file: !77, line: 991, column: 483)
!2354 = !DILocation(line: 991, column: 520, scope: !2352)
!2355 = !DILocation(line: 991, column: 529, scope: !2352)
!2356 = !DILocation(line: 991, column: 483, scope: !2352)
!2357 = !DILocation(line: 991, column: 537, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2359, file: !77, discriminator: 10)
!2359 = distinct !DILexicalBlock(scope: !2353, file: !77, line: 991, column: 535)
!2360 = distinct !{!2360, !2361}
!2361 = !DILocation(line: 991, column: 537, scope: !2359)
!2362 = !DILocalVariable(name: "_data", scope: !2363, file: !77, line: 991, type: !71)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !77, line: 991, column: 540)
!2364 = !DILocation(line: 991, column: 548, scope: !2363)
!2365 = !DILocalVariable(name: "_stat", scope: !2363, file: !77, line: 991, type: !363)
!2366 = !DILocation(line: 991, column: 570, scope: !2363)
!2367 = !DILocation(line: 991, column: 608, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2363, file: !77, discriminator: 11)
!2369 = !DILocation(line: 991, column: 618, scope: !2368)
!2370 = !DILocation(line: 991, column: 617, scope: !2368)
!2371 = !DILocation(line: 991, column: 587, scope: !2368)
!2372 = !DILocation(line: 991, column: 585, scope: !2368)
!2373 = !DILocation(line: 991, column: 676, scope: !2368)
!2374 = !DILocation(line: 991, column: 672, scope: !2368)
!2375 = !DILocation(line: 991, column: 647, scope: !2368)
!2376 = !DILocation(line: 991, column: 686, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !2378, file: !77, discriminator: 12)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !77, line: 991, column: 684)
!2379 = distinct !DILexicalBlock(scope: !2363, file: !77, line: 991, column: 647)
!2380 = !DILocation(line: 991, column: 743, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2363, file: !77, discriminator: 13)
!2382 = !DILocation(line: 991, column: 716, scope: !2381)
!2383 = !DILocation(line: 991, column: 714, scope: !2381)
!2384 = !DILocation(line: 991, column: 794, scope: !2381)
!2385 = !DILocation(line: 991, column: 801, scope: !2381)
!2386 = !DILocation(line: 991, column: 793, scope: !2381)
!2387 = !DILocation(line: 991, column: 832, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !2389, file: !77, discriminator: 14)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !77, line: 991, column: 830)
!2390 = distinct !DILexicalBlock(scope: !2363, file: !77, line: 991, column: 793)
!2391 = !DILocation(line: 991, column: 852, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !2393, file: !77, discriminator: 15)
!2393 = distinct !DILexicalBlock(scope: !2363, file: !77, line: 991, column: 845)
!2394 = !DILocation(line: 991, column: 869, scope: !2392)
!2395 = !DILocation(line: 991, column: 883, scope: !2392)
!2396 = !DILocation(line: 991, column: 846, scope: !2392)
!2397 = !DILocation(line: 991, column: 845, scope: !2392)
!2398 = !DILocation(line: 991, column: 900, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2400, file: !77, discriminator: 16)
!2400 = distinct !DILexicalBlock(scope: !2393, file: !77, line: 991, column: 890)
!2401 = !DILocation(line: 991, column: 934, scope: !2399)
!2402 = !DILocation(line: 991, column: 1116, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2363, file: !77, discriminator: 17)
!2404 = !DILocation(line: 991, column: 1133, scope: !2403)
!2405 = !DILocation(line: 991, column: 1147, scope: !2403)
!2406 = !DILocation(line: 991, column: 1093, scope: !2403)
!2407 = !DILocation(line: 991, column: 1108, scope: !2403)
!2408 = !DILocation(line: 991, column: 1162, scope: !2403)
!2409 = !DILocation(line: 991, column: 1190, scope: !2403)
!2410 = !DILocation(line: 991, column: 1203, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2359, file: !77, discriminator: 18)
!2412 = !DILocation(line: 991, column: 1205, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2298, file: !77, discriminator: 19)
!2414 = !DILocation(line: 994, column: 11, scope: !2288)
!2415 = !DILocation(line: 994, column: 4, scope: !2288)
!2416 = distinct !DISubprogram(name: "VMGuestLib_GetMemBalloonedMB", scope: !77, file: !77, line: 1015, type: !969, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!2417 = !DILocalVariable(name: "handle", arg: 1, scope: !2416, file: !77, line: 1015, type: !72)
!2418 = !DILocation(line: 1015, column: 47, scope: !2416)
!2419 = !DILocalVariable(name: "memBalloonedMB", arg: 2, scope: !2416, file: !77, line: 1016, type: !971)
!2420 = !DILocation(line: 1016, column: 38, scope: !2416)
!2421 = !DILocalVariable(name: "error", scope: !2416, file: !77, line: 1018, type: !270)
!2422 = !DILocation(line: 1018, column: 20, scope: !2416)
!2423 = !DILocation(line: 1019, column: 4, scope: !2416)
!2424 = distinct !{!2424, !2423}
!2425 = !DILocalVariable(name: "_data", scope: !2426, file: !77, line: 1019, type: !71)
!2426 = distinct !DILexicalBlock(scope: !2416, file: !77, line: 1019, column: 7)
!2427 = !DILocation(line: 1019, column: 15, scope: !2426)
!2428 = !DILocation(line: 1019, column: 53, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2426, file: !77, discriminator: 1)
!2430 = !DILocation(line: 1019, column: 63, scope: !2429)
!2431 = !DILocation(line: 1019, column: 62, scope: !2429)
!2432 = !DILocation(line: 1019, column: 32, scope: !2429)
!2433 = !DILocation(line: 1019, column: 30, scope: !2429)
!2434 = !DILocation(line: 1019, column: 122, scope: !2429)
!2435 = !DILocation(line: 1019, column: 118, scope: !2429)
!2436 = !DILocation(line: 1019, column: 93, scope: !2429)
!2437 = !DILocation(line: 1019, column: 132, scope: !2438)
!2438 = !DILexicalBlockFile(scope: !2439, file: !77, discriminator: 2)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !77, line: 1019, column: 130)
!2440 = distinct !DILexicalBlock(scope: !2426, file: !77, line: 1019, column: 93)
!2441 = !DILocation(line: 1019, column: 172, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !2443, file: !77, discriminator: 3)
!2443 = distinct !DILexicalBlock(scope: !2426, file: !77, line: 1019, column: 145)
!2444 = !DILocation(line: 1019, column: 182, scope: !2442)
!2445 = !DILocation(line: 1019, column: 191, scope: !2442)
!2446 = !DILocation(line: 1019, column: 145, scope: !2442)
!2447 = !DILocation(line: 1019, column: 199, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !2449, file: !77, discriminator: 4)
!2449 = distinct !DILexicalBlock(scope: !2443, file: !77, line: 1019, column: 197)
!2450 = distinct !{!2450, !2451}
!2451 = !DILocation(line: 1019, column: 199, scope: !2449)
!2452 = !DILocalVariable(name: "_dataV2", scope: !2453, file: !77, line: 1019, type: !176)
!2453 = distinct !DILexicalBlock(scope: !2449, file: !77, line: 1019, column: 202)
!2454 = !DILocation(line: 1019, column: 222, scope: !2453)
!2455 = !DILocation(line: 1019, column: 259, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !2453, file: !77, discriminator: 5)
!2457 = !DILocation(line: 1019, column: 269, scope: !2456)
!2458 = !DILocation(line: 1019, column: 232, scope: !2456)
!2459 = !DILocation(line: 1019, column: 222, scope: !2456)
!2460 = !DILocation(line: 1019, column: 292, scope: !2456)
!2461 = !DILocation(line: 1019, column: 301, scope: !2456)
!2462 = !DILocation(line: 1019, column: 316, scope: !2456)
!2463 = !DILocation(line: 1019, column: 291, scope: !2456)
!2464 = !DILocation(line: 1019, column: 333, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2466, file: !77, discriminator: 6)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !77, line: 1019, column: 323)
!2467 = distinct !DILexicalBlock(scope: !2453, file: !77, line: 1019, column: 291)
!2468 = !DILocation(line: 1019, column: 367, scope: !2465)
!2469 = !DILocation(line: 1019, column: 396, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2453, file: !77, discriminator: 7)
!2471 = !DILocation(line: 1019, column: 405, scope: !2470)
!2472 = !DILocation(line: 1019, column: 420, scope: !2470)
!2473 = !DILocation(line: 1019, column: 378, scope: !2470)
!2474 = !DILocation(line: 1019, column: 394, scope: !2470)
!2475 = !DILocation(line: 1019, column: 435, scope: !2470)
!2476 = !DILocation(line: 1019, column: 463, scope: !2470)
!2477 = !DILocation(line: 1019, column: 476, scope: !2478)
!2478 = !DILexicalBlockFile(scope: !2449, file: !77, discriminator: 8)
!2479 = !DILocation(line: 1019, column: 514, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2481, file: !77, discriminator: 9)
!2481 = distinct !DILexicalBlock(scope: !2443, file: !77, line: 1019, column: 487)
!2482 = !DILocation(line: 1019, column: 524, scope: !2480)
!2483 = !DILocation(line: 1019, column: 533, scope: !2480)
!2484 = !DILocation(line: 1019, column: 487, scope: !2480)
!2485 = !DILocation(line: 1019, column: 541, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2487, file: !77, discriminator: 10)
!2487 = distinct !DILexicalBlock(scope: !2481, file: !77, line: 1019, column: 539)
!2488 = distinct !{!2488, !2489}
!2489 = !DILocation(line: 1019, column: 541, scope: !2487)
!2490 = !DILocalVariable(name: "_data", scope: !2491, file: !77, line: 1019, type: !71)
!2491 = distinct !DILexicalBlock(scope: !2487, file: !77, line: 1019, column: 544)
!2492 = !DILocation(line: 1019, column: 552, scope: !2491)
!2493 = !DILocalVariable(name: "_stat", scope: !2491, file: !77, line: 1019, type: !363)
!2494 = !DILocation(line: 1019, column: 574, scope: !2491)
!2495 = !DILocation(line: 1019, column: 612, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2491, file: !77, discriminator: 11)
!2497 = !DILocation(line: 1019, column: 622, scope: !2496)
!2498 = !DILocation(line: 1019, column: 621, scope: !2496)
!2499 = !DILocation(line: 1019, column: 591, scope: !2496)
!2500 = !DILocation(line: 1019, column: 589, scope: !2496)
!2501 = !DILocation(line: 1019, column: 681, scope: !2496)
!2502 = !DILocation(line: 1019, column: 677, scope: !2496)
!2503 = !DILocation(line: 1019, column: 652, scope: !2496)
!2504 = !DILocation(line: 1019, column: 691, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2506, file: !77, discriminator: 12)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !77, line: 1019, column: 689)
!2507 = distinct !DILexicalBlock(scope: !2491, file: !77, line: 1019, column: 652)
!2508 = !DILocation(line: 1019, column: 748, scope: !2509)
!2509 = !DILexicalBlockFile(scope: !2491, file: !77, discriminator: 13)
!2510 = !DILocation(line: 1019, column: 721, scope: !2509)
!2511 = !DILocation(line: 1019, column: 719, scope: !2509)
!2512 = !DILocation(line: 1019, column: 800, scope: !2509)
!2513 = !DILocation(line: 1019, column: 807, scope: !2509)
!2514 = !DILocation(line: 1019, column: 799, scope: !2509)
!2515 = !DILocation(line: 1019, column: 838, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !2517, file: !77, discriminator: 14)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !77, line: 1019, column: 836)
!2518 = distinct !DILexicalBlock(scope: !2491, file: !77, line: 1019, column: 799)
!2519 = !DILocation(line: 1019, column: 858, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !2521, file: !77, discriminator: 15)
!2521 = distinct !DILexicalBlock(scope: !2491, file: !77, line: 1019, column: 851)
!2522 = !DILocation(line: 1019, column: 875, scope: !2520)
!2523 = !DILocation(line: 1019, column: 890, scope: !2520)
!2524 = !DILocation(line: 1019, column: 852, scope: !2520)
!2525 = !DILocation(line: 1019, column: 851, scope: !2520)
!2526 = !DILocation(line: 1019, column: 907, scope: !2527)
!2527 = !DILexicalBlockFile(scope: !2528, file: !77, discriminator: 16)
!2528 = distinct !DILexicalBlock(scope: !2521, file: !77, line: 1019, column: 897)
!2529 = !DILocation(line: 1019, column: 941, scope: !2527)
!2530 = !DILocation(line: 1019, column: 1126, scope: !2531)
!2531 = !DILexicalBlockFile(scope: !2491, file: !77, discriminator: 17)
!2532 = !DILocation(line: 1019, column: 1143, scope: !2531)
!2533 = !DILocation(line: 1019, column: 1158, scope: !2531)
!2534 = !DILocation(line: 1019, column: 1102, scope: !2531)
!2535 = !DILocation(line: 1019, column: 1118, scope: !2531)
!2536 = !DILocation(line: 1019, column: 1173, scope: !2531)
!2537 = !DILocation(line: 1019, column: 1201, scope: !2531)
!2538 = !DILocation(line: 1019, column: 1214, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2487, file: !77, discriminator: 18)
!2540 = !DILocation(line: 1019, column: 1216, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !2426, file: !77, discriminator: 19)
!2542 = !DILocation(line: 1022, column: 11, scope: !2416)
!2543 = !DILocation(line: 1022, column: 4, scope: !2416)
!2544 = distinct !DISubprogram(name: "VMGuestLib_GetMemSwappedMB", scope: !77, file: !77, line: 1043, type: !969, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!2545 = !DILocalVariable(name: "handle", arg: 1, scope: !2544, file: !77, line: 1043, type: !72)
!2546 = !DILocation(line: 1043, column: 45, scope: !2544)
!2547 = !DILocalVariable(name: "memSwappedMB", arg: 2, scope: !2544, file: !77, line: 1044, type: !971)
!2548 = !DILocation(line: 1044, column: 36, scope: !2544)
!2549 = !DILocalVariable(name: "error", scope: !2544, file: !77, line: 1046, type: !270)
!2550 = !DILocation(line: 1046, column: 20, scope: !2544)
!2551 = !DILocation(line: 1047, column: 4, scope: !2544)
!2552 = distinct !{!2552, !2551}
!2553 = !DILocalVariable(name: "_data", scope: !2554, file: !77, line: 1047, type: !71)
!2554 = distinct !DILexicalBlock(scope: !2544, file: !77, line: 1047, column: 7)
!2555 = !DILocation(line: 1047, column: 15, scope: !2554)
!2556 = !DILocation(line: 1047, column: 53, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2554, file: !77, discriminator: 1)
!2558 = !DILocation(line: 1047, column: 63, scope: !2557)
!2559 = !DILocation(line: 1047, column: 62, scope: !2557)
!2560 = !DILocation(line: 1047, column: 32, scope: !2557)
!2561 = !DILocation(line: 1047, column: 30, scope: !2557)
!2562 = !DILocation(line: 1047, column: 120, scope: !2557)
!2563 = !DILocation(line: 1047, column: 116, scope: !2557)
!2564 = !DILocation(line: 1047, column: 91, scope: !2557)
!2565 = !DILocation(line: 1047, column: 130, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2567, file: !77, discriminator: 2)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !77, line: 1047, column: 128)
!2568 = distinct !DILexicalBlock(scope: !2554, file: !77, line: 1047, column: 91)
!2569 = !DILocation(line: 1047, column: 170, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !2571, file: !77, discriminator: 3)
!2571 = distinct !DILexicalBlock(scope: !2554, file: !77, line: 1047, column: 143)
!2572 = !DILocation(line: 1047, column: 180, scope: !2570)
!2573 = !DILocation(line: 1047, column: 189, scope: !2570)
!2574 = !DILocation(line: 1047, column: 143, scope: !2570)
!2575 = !DILocation(line: 1047, column: 197, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !2577, file: !77, discriminator: 4)
!2577 = distinct !DILexicalBlock(scope: !2571, file: !77, line: 1047, column: 195)
!2578 = distinct !{!2578, !2579}
!2579 = !DILocation(line: 1047, column: 197, scope: !2577)
!2580 = !DILocalVariable(name: "_dataV2", scope: !2581, file: !77, line: 1047, type: !176)
!2581 = distinct !DILexicalBlock(scope: !2577, file: !77, line: 1047, column: 200)
!2582 = !DILocation(line: 1047, column: 220, scope: !2581)
!2583 = !DILocation(line: 1047, column: 257, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2581, file: !77, discriminator: 5)
!2585 = !DILocation(line: 1047, column: 267, scope: !2584)
!2586 = !DILocation(line: 1047, column: 230, scope: !2584)
!2587 = !DILocation(line: 1047, column: 220, scope: !2584)
!2588 = !DILocation(line: 1047, column: 290, scope: !2584)
!2589 = !DILocation(line: 1047, column: 299, scope: !2584)
!2590 = !DILocation(line: 1047, column: 312, scope: !2584)
!2591 = !DILocation(line: 1047, column: 289, scope: !2584)
!2592 = !DILocation(line: 1047, column: 329, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2594, file: !77, discriminator: 6)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !77, line: 1047, column: 319)
!2595 = distinct !DILexicalBlock(scope: !2581, file: !77, line: 1047, column: 289)
!2596 = !DILocation(line: 1047, column: 363, scope: !2593)
!2597 = !DILocation(line: 1047, column: 390, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !2581, file: !77, discriminator: 7)
!2599 = !DILocation(line: 1047, column: 399, scope: !2598)
!2600 = !DILocation(line: 1047, column: 412, scope: !2598)
!2601 = !DILocation(line: 1047, column: 374, scope: !2598)
!2602 = !DILocation(line: 1047, column: 388, scope: !2598)
!2603 = !DILocation(line: 1047, column: 427, scope: !2598)
!2604 = !DILocation(line: 1047, column: 455, scope: !2598)
!2605 = !DILocation(line: 1047, column: 468, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2577, file: !77, discriminator: 8)
!2607 = !DILocation(line: 1047, column: 506, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2609, file: !77, discriminator: 9)
!2609 = distinct !DILexicalBlock(scope: !2571, file: !77, line: 1047, column: 479)
!2610 = !DILocation(line: 1047, column: 516, scope: !2608)
!2611 = !DILocation(line: 1047, column: 525, scope: !2608)
!2612 = !DILocation(line: 1047, column: 479, scope: !2608)
!2613 = !DILocation(line: 1047, column: 533, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2615, file: !77, discriminator: 10)
!2615 = distinct !DILexicalBlock(scope: !2609, file: !77, line: 1047, column: 531)
!2616 = distinct !{!2616, !2617}
!2617 = !DILocation(line: 1047, column: 533, scope: !2615)
!2618 = !DILocalVariable(name: "_data", scope: !2619, file: !77, line: 1047, type: !71)
!2619 = distinct !DILexicalBlock(scope: !2615, file: !77, line: 1047, column: 536)
!2620 = !DILocation(line: 1047, column: 544, scope: !2619)
!2621 = !DILocalVariable(name: "_stat", scope: !2619, file: !77, line: 1047, type: !363)
!2622 = !DILocation(line: 1047, column: 566, scope: !2619)
!2623 = !DILocation(line: 1047, column: 604, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2619, file: !77, discriminator: 11)
!2625 = !DILocation(line: 1047, column: 614, scope: !2624)
!2626 = !DILocation(line: 1047, column: 613, scope: !2624)
!2627 = !DILocation(line: 1047, column: 583, scope: !2624)
!2628 = !DILocation(line: 1047, column: 581, scope: !2624)
!2629 = !DILocation(line: 1047, column: 671, scope: !2624)
!2630 = !DILocation(line: 1047, column: 667, scope: !2624)
!2631 = !DILocation(line: 1047, column: 642, scope: !2624)
!2632 = !DILocation(line: 1047, column: 681, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2634, file: !77, discriminator: 12)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !77, line: 1047, column: 679)
!2635 = distinct !DILexicalBlock(scope: !2619, file: !77, line: 1047, column: 642)
!2636 = !DILocation(line: 1047, column: 738, scope: !2637)
!2637 = !DILexicalBlockFile(scope: !2619, file: !77, discriminator: 13)
!2638 = !DILocation(line: 1047, column: 711, scope: !2637)
!2639 = !DILocation(line: 1047, column: 709, scope: !2637)
!2640 = !DILocation(line: 1047, column: 788, scope: !2637)
!2641 = !DILocation(line: 1047, column: 795, scope: !2637)
!2642 = !DILocation(line: 1047, column: 787, scope: !2637)
!2643 = !DILocation(line: 1047, column: 826, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2645, file: !77, discriminator: 14)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !77, line: 1047, column: 824)
!2646 = distinct !DILexicalBlock(scope: !2619, file: !77, line: 1047, column: 787)
!2647 = !DILocation(line: 1047, column: 846, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !2649, file: !77, discriminator: 15)
!2649 = distinct !DILexicalBlock(scope: !2619, file: !77, line: 1047, column: 839)
!2650 = !DILocation(line: 1047, column: 863, scope: !2648)
!2651 = !DILocation(line: 1047, column: 876, scope: !2648)
!2652 = !DILocation(line: 1047, column: 840, scope: !2648)
!2653 = !DILocation(line: 1047, column: 839, scope: !2648)
!2654 = !DILocation(line: 1047, column: 893, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !2656, file: !77, discriminator: 16)
!2656 = distinct !DILexicalBlock(scope: !2649, file: !77, line: 1047, column: 883)
!2657 = !DILocation(line: 1047, column: 927, scope: !2655)
!2658 = !DILocation(line: 1047, column: 1106, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2619, file: !77, discriminator: 17)
!2660 = !DILocation(line: 1047, column: 1123, scope: !2659)
!2661 = !DILocation(line: 1047, column: 1136, scope: !2659)
!2662 = !DILocation(line: 1047, column: 1084, scope: !2659)
!2663 = !DILocation(line: 1047, column: 1098, scope: !2659)
!2664 = !DILocation(line: 1047, column: 1151, scope: !2659)
!2665 = !DILocation(line: 1047, column: 1179, scope: !2659)
!2666 = !DILocation(line: 1047, column: 1192, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !2615, file: !77, discriminator: 18)
!2668 = !DILocation(line: 1047, column: 1194, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2554, file: !77, discriminator: 19)
!2670 = !DILocation(line: 1050, column: 11, scope: !2544)
!2671 = !DILocation(line: 1050, column: 4, scope: !2544)
!2672 = distinct !DISubprogram(name: "VMGuestLib_GetMemSharedMB", scope: !77, file: !77, line: 1071, type: !969, isLocal: false, isDefinition: true, scopeLine: 1073, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!2673 = !DILocalVariable(name: "handle", arg: 1, scope: !2672, file: !77, line: 1071, type: !72)
!2674 = !DILocation(line: 1071, column: 44, scope: !2672)
!2675 = !DILocalVariable(name: "memSharedMB", arg: 2, scope: !2672, file: !77, line: 1072, type: !971)
!2676 = !DILocation(line: 1072, column: 35, scope: !2672)
!2677 = !DILocalVariable(name: "error", scope: !2672, file: !77, line: 1074, type: !270)
!2678 = !DILocation(line: 1074, column: 20, scope: !2672)
!2679 = !DILocation(line: 1075, column: 4, scope: !2672)
!2680 = distinct !{!2680, !2679}
!2681 = !DILocalVariable(name: "_data", scope: !2682, file: !77, line: 1075, type: !71)
!2682 = distinct !DILexicalBlock(scope: !2672, file: !77, line: 1075, column: 7)
!2683 = !DILocation(line: 1075, column: 15, scope: !2682)
!2684 = !DILocation(line: 1075, column: 53, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2682, file: !77, discriminator: 1)
!2686 = !DILocation(line: 1075, column: 63, scope: !2685)
!2687 = !DILocation(line: 1075, column: 62, scope: !2685)
!2688 = !DILocation(line: 1075, column: 32, scope: !2685)
!2689 = !DILocation(line: 1075, column: 30, scope: !2685)
!2690 = !DILocation(line: 1075, column: 119, scope: !2685)
!2691 = !DILocation(line: 1075, column: 115, scope: !2685)
!2692 = !DILocation(line: 1075, column: 90, scope: !2685)
!2693 = !DILocation(line: 1075, column: 129, scope: !2694)
!2694 = !DILexicalBlockFile(scope: !2695, file: !77, discriminator: 2)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !77, line: 1075, column: 127)
!2696 = distinct !DILexicalBlock(scope: !2682, file: !77, line: 1075, column: 90)
!2697 = !DILocation(line: 1075, column: 169, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2699, file: !77, discriminator: 3)
!2699 = distinct !DILexicalBlock(scope: !2682, file: !77, line: 1075, column: 142)
!2700 = !DILocation(line: 1075, column: 179, scope: !2698)
!2701 = !DILocation(line: 1075, column: 188, scope: !2698)
!2702 = !DILocation(line: 1075, column: 142, scope: !2698)
!2703 = !DILocation(line: 1075, column: 196, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !2705, file: !77, discriminator: 4)
!2705 = distinct !DILexicalBlock(scope: !2699, file: !77, line: 1075, column: 194)
!2706 = distinct !{!2706, !2707}
!2707 = !DILocation(line: 1075, column: 196, scope: !2705)
!2708 = !DILocalVariable(name: "_dataV2", scope: !2709, file: !77, line: 1075, type: !176)
!2709 = distinct !DILexicalBlock(scope: !2705, file: !77, line: 1075, column: 199)
!2710 = !DILocation(line: 1075, column: 219, scope: !2709)
!2711 = !DILocation(line: 1075, column: 256, scope: !2712)
!2712 = !DILexicalBlockFile(scope: !2709, file: !77, discriminator: 5)
!2713 = !DILocation(line: 1075, column: 266, scope: !2712)
!2714 = !DILocation(line: 1075, column: 229, scope: !2712)
!2715 = !DILocation(line: 1075, column: 219, scope: !2712)
!2716 = !DILocation(line: 1075, column: 289, scope: !2712)
!2717 = !DILocation(line: 1075, column: 298, scope: !2712)
!2718 = !DILocation(line: 1075, column: 310, scope: !2712)
!2719 = !DILocation(line: 1075, column: 288, scope: !2712)
!2720 = !DILocation(line: 1075, column: 327, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2722, file: !77, discriminator: 6)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !77, line: 1075, column: 317)
!2723 = distinct !DILexicalBlock(scope: !2709, file: !77, line: 1075, column: 288)
!2724 = !DILocation(line: 1075, column: 361, scope: !2721)
!2725 = !DILocation(line: 1075, column: 387, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2709, file: !77, discriminator: 7)
!2727 = !DILocation(line: 1075, column: 396, scope: !2726)
!2728 = !DILocation(line: 1075, column: 408, scope: !2726)
!2729 = !DILocation(line: 1075, column: 372, scope: !2726)
!2730 = !DILocation(line: 1075, column: 385, scope: !2726)
!2731 = !DILocation(line: 1075, column: 423, scope: !2726)
!2732 = !DILocation(line: 1075, column: 451, scope: !2726)
!2733 = !DILocation(line: 1075, column: 464, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !2705, file: !77, discriminator: 8)
!2735 = !DILocation(line: 1075, column: 502, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !2737, file: !77, discriminator: 9)
!2737 = distinct !DILexicalBlock(scope: !2699, file: !77, line: 1075, column: 475)
!2738 = !DILocation(line: 1075, column: 512, scope: !2736)
!2739 = !DILocation(line: 1075, column: 521, scope: !2736)
!2740 = !DILocation(line: 1075, column: 475, scope: !2736)
!2741 = !DILocation(line: 1075, column: 529, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2743, file: !77, discriminator: 10)
!2743 = distinct !DILexicalBlock(scope: !2737, file: !77, line: 1075, column: 527)
!2744 = distinct !{!2744, !2745}
!2745 = !DILocation(line: 1075, column: 529, scope: !2743)
!2746 = !DILocalVariable(name: "_data", scope: !2747, file: !77, line: 1075, type: !71)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !77, line: 1075, column: 532)
!2748 = !DILocation(line: 1075, column: 540, scope: !2747)
!2749 = !DILocalVariable(name: "_stat", scope: !2747, file: !77, line: 1075, type: !363)
!2750 = !DILocation(line: 1075, column: 562, scope: !2747)
!2751 = !DILocation(line: 1075, column: 600, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2747, file: !77, discriminator: 11)
!2753 = !DILocation(line: 1075, column: 610, scope: !2752)
!2754 = !DILocation(line: 1075, column: 609, scope: !2752)
!2755 = !DILocation(line: 1075, column: 579, scope: !2752)
!2756 = !DILocation(line: 1075, column: 577, scope: !2752)
!2757 = !DILocation(line: 1075, column: 666, scope: !2752)
!2758 = !DILocation(line: 1075, column: 662, scope: !2752)
!2759 = !DILocation(line: 1075, column: 637, scope: !2752)
!2760 = !DILocation(line: 1075, column: 676, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2762, file: !77, discriminator: 12)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !77, line: 1075, column: 674)
!2763 = distinct !DILexicalBlock(scope: !2747, file: !77, line: 1075, column: 637)
!2764 = !DILocation(line: 1075, column: 733, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2747, file: !77, discriminator: 13)
!2766 = !DILocation(line: 1075, column: 706, scope: !2765)
!2767 = !DILocation(line: 1075, column: 704, scope: !2765)
!2768 = !DILocation(line: 1075, column: 782, scope: !2765)
!2769 = !DILocation(line: 1075, column: 789, scope: !2765)
!2770 = !DILocation(line: 1075, column: 781, scope: !2765)
!2771 = !DILocation(line: 1075, column: 820, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2773, file: !77, discriminator: 14)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !77, line: 1075, column: 818)
!2774 = distinct !DILexicalBlock(scope: !2747, file: !77, line: 1075, column: 781)
!2775 = !DILocation(line: 1075, column: 840, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !2777, file: !77, discriminator: 15)
!2777 = distinct !DILexicalBlock(scope: !2747, file: !77, line: 1075, column: 833)
!2778 = !DILocation(line: 1075, column: 857, scope: !2776)
!2779 = !DILocation(line: 1075, column: 869, scope: !2776)
!2780 = !DILocation(line: 1075, column: 834, scope: !2776)
!2781 = !DILocation(line: 1075, column: 833, scope: !2776)
!2782 = !DILocation(line: 1075, column: 886, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2784, file: !77, discriminator: 16)
!2784 = distinct !DILexicalBlock(scope: !2777, file: !77, line: 1075, column: 876)
!2785 = !DILocation(line: 1075, column: 920, scope: !2783)
!2786 = !DILocation(line: 1075, column: 1096, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2747, file: !77, discriminator: 17)
!2788 = !DILocation(line: 1075, column: 1113, scope: !2787)
!2789 = !DILocation(line: 1075, column: 1125, scope: !2787)
!2790 = !DILocation(line: 1075, column: 1075, scope: !2787)
!2791 = !DILocation(line: 1075, column: 1088, scope: !2787)
!2792 = !DILocation(line: 1075, column: 1140, scope: !2787)
!2793 = !DILocation(line: 1075, column: 1168, scope: !2787)
!2794 = !DILocation(line: 1075, column: 1181, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2743, file: !77, discriminator: 18)
!2796 = !DILocation(line: 1075, column: 1183, scope: !2797)
!2797 = !DILexicalBlockFile(scope: !2682, file: !77, discriminator: 19)
!2798 = !DILocation(line: 1078, column: 11, scope: !2672)
!2799 = !DILocation(line: 1078, column: 4, scope: !2672)
!2800 = distinct !DISubprogram(name: "VMGuestLib_GetMemSharedSavedMB", scope: !77, file: !77, line: 1099, type: !969, isLocal: false, isDefinition: true, scopeLine: 1101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!2801 = !DILocalVariable(name: "handle", arg: 1, scope: !2800, file: !77, line: 1099, type: !72)
!2802 = !DILocation(line: 1099, column: 49, scope: !2800)
!2803 = !DILocalVariable(name: "memSharedSavedMB", arg: 2, scope: !2800, file: !77, line: 1100, type: !971)
!2804 = !DILocation(line: 1100, column: 40, scope: !2800)
!2805 = !DILocalVariable(name: "error", scope: !2800, file: !77, line: 1102, type: !270)
!2806 = !DILocation(line: 1102, column: 20, scope: !2800)
!2807 = !DILocation(line: 1103, column: 4, scope: !2800)
!2808 = distinct !{!2808, !2807}
!2809 = !DILocalVariable(name: "_data", scope: !2810, file: !77, line: 1103, type: !71)
!2810 = distinct !DILexicalBlock(scope: !2800, file: !77, line: 1103, column: 7)
!2811 = !DILocation(line: 1103, column: 15, scope: !2810)
!2812 = !DILocation(line: 1103, column: 53, scope: !2813)
!2813 = !DILexicalBlockFile(scope: !2810, file: !77, discriminator: 1)
!2814 = !DILocation(line: 1103, column: 63, scope: !2813)
!2815 = !DILocation(line: 1103, column: 62, scope: !2813)
!2816 = !DILocation(line: 1103, column: 32, scope: !2813)
!2817 = !DILocation(line: 1103, column: 30, scope: !2813)
!2818 = !DILocation(line: 1103, column: 124, scope: !2813)
!2819 = !DILocation(line: 1103, column: 120, scope: !2813)
!2820 = !DILocation(line: 1103, column: 95, scope: !2813)
!2821 = !DILocation(line: 1103, column: 134, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !2823, file: !77, discriminator: 2)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !77, line: 1103, column: 132)
!2824 = distinct !DILexicalBlock(scope: !2810, file: !77, line: 1103, column: 95)
!2825 = !DILocation(line: 1103, column: 174, scope: !2826)
!2826 = !DILexicalBlockFile(scope: !2827, file: !77, discriminator: 3)
!2827 = distinct !DILexicalBlock(scope: !2810, file: !77, line: 1103, column: 147)
!2828 = !DILocation(line: 1103, column: 184, scope: !2826)
!2829 = !DILocation(line: 1103, column: 193, scope: !2826)
!2830 = !DILocation(line: 1103, column: 147, scope: !2826)
!2831 = !DILocation(line: 1103, column: 201, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2833, file: !77, discriminator: 4)
!2833 = distinct !DILexicalBlock(scope: !2827, file: !77, line: 1103, column: 199)
!2834 = distinct !{!2834, !2835}
!2835 = !DILocation(line: 1103, column: 201, scope: !2833)
!2836 = !DILocalVariable(name: "_dataV2", scope: !2837, file: !77, line: 1103, type: !176)
!2837 = distinct !DILexicalBlock(scope: !2833, file: !77, line: 1103, column: 204)
!2838 = !DILocation(line: 1103, column: 224, scope: !2837)
!2839 = !DILocation(line: 1103, column: 261, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !2837, file: !77, discriminator: 5)
!2841 = !DILocation(line: 1103, column: 271, scope: !2840)
!2842 = !DILocation(line: 1103, column: 234, scope: !2840)
!2843 = !DILocation(line: 1103, column: 224, scope: !2840)
!2844 = !DILocation(line: 1103, column: 294, scope: !2840)
!2845 = !DILocation(line: 1103, column: 303, scope: !2840)
!2846 = !DILocation(line: 1103, column: 320, scope: !2840)
!2847 = !DILocation(line: 1103, column: 293, scope: !2840)
!2848 = !DILocation(line: 1103, column: 337, scope: !2849)
!2849 = !DILexicalBlockFile(scope: !2850, file: !77, discriminator: 6)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !77, line: 1103, column: 327)
!2851 = distinct !DILexicalBlock(scope: !2837, file: !77, line: 1103, column: 293)
!2852 = !DILocation(line: 1103, column: 371, scope: !2849)
!2853 = !DILocation(line: 1103, column: 402, scope: !2854)
!2854 = !DILexicalBlockFile(scope: !2837, file: !77, discriminator: 7)
!2855 = !DILocation(line: 1103, column: 411, scope: !2854)
!2856 = !DILocation(line: 1103, column: 428, scope: !2854)
!2857 = !DILocation(line: 1103, column: 382, scope: !2854)
!2858 = !DILocation(line: 1103, column: 400, scope: !2854)
!2859 = !DILocation(line: 1103, column: 443, scope: !2854)
!2860 = !DILocation(line: 1103, column: 471, scope: !2854)
!2861 = !DILocation(line: 1103, column: 484, scope: !2862)
!2862 = !DILexicalBlockFile(scope: !2833, file: !77, discriminator: 8)
!2863 = !DILocation(line: 1103, column: 522, scope: !2864)
!2864 = !DILexicalBlockFile(scope: !2865, file: !77, discriminator: 9)
!2865 = distinct !DILexicalBlock(scope: !2827, file: !77, line: 1103, column: 495)
!2866 = !DILocation(line: 1103, column: 532, scope: !2864)
!2867 = !DILocation(line: 1103, column: 541, scope: !2864)
!2868 = !DILocation(line: 1103, column: 495, scope: !2864)
!2869 = !DILocation(line: 1103, column: 549, scope: !2870)
!2870 = !DILexicalBlockFile(scope: !2871, file: !77, discriminator: 10)
!2871 = distinct !DILexicalBlock(scope: !2865, file: !77, line: 1103, column: 547)
!2872 = distinct !{!2872, !2873}
!2873 = !DILocation(line: 1103, column: 549, scope: !2871)
!2874 = !DILocalVariable(name: "_data", scope: !2875, file: !77, line: 1103, type: !71)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !77, line: 1103, column: 552)
!2876 = !DILocation(line: 1103, column: 560, scope: !2875)
!2877 = !DILocalVariable(name: "_stat", scope: !2875, file: !77, line: 1103, type: !363)
!2878 = !DILocation(line: 1103, column: 582, scope: !2875)
!2879 = !DILocation(line: 1103, column: 620, scope: !2880)
!2880 = !DILexicalBlockFile(scope: !2875, file: !77, discriminator: 11)
!2881 = !DILocation(line: 1103, column: 630, scope: !2880)
!2882 = !DILocation(line: 1103, column: 629, scope: !2880)
!2883 = !DILocation(line: 1103, column: 599, scope: !2880)
!2884 = !DILocation(line: 1103, column: 597, scope: !2880)
!2885 = !DILocation(line: 1103, column: 691, scope: !2880)
!2886 = !DILocation(line: 1103, column: 687, scope: !2880)
!2887 = !DILocation(line: 1103, column: 662, scope: !2880)
!2888 = !DILocation(line: 1103, column: 701, scope: !2889)
!2889 = !DILexicalBlockFile(scope: !2890, file: !77, discriminator: 12)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !77, line: 1103, column: 699)
!2891 = distinct !DILexicalBlock(scope: !2875, file: !77, line: 1103, column: 662)
!2892 = !DILocation(line: 1103, column: 758, scope: !2893)
!2893 = !DILexicalBlockFile(scope: !2875, file: !77, discriminator: 13)
!2894 = !DILocation(line: 1103, column: 731, scope: !2893)
!2895 = !DILocation(line: 1103, column: 729, scope: !2893)
!2896 = !DILocation(line: 1103, column: 813, scope: !2893)
!2897 = !DILocation(line: 1103, column: 820, scope: !2893)
!2898 = !DILocation(line: 1103, column: 812, scope: !2893)
!2899 = !DILocation(line: 1103, column: 851, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2901, file: !77, discriminator: 14)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !77, line: 1103, column: 849)
!2902 = distinct !DILexicalBlock(scope: !2875, file: !77, line: 1103, column: 812)
!2903 = !DILocation(line: 1103, column: 871, scope: !2904)
!2904 = !DILexicalBlockFile(scope: !2905, file: !77, discriminator: 15)
!2905 = distinct !DILexicalBlock(scope: !2875, file: !77, line: 1103, column: 864)
!2906 = !DILocation(line: 1103, column: 888, scope: !2904)
!2907 = !DILocation(line: 1103, column: 905, scope: !2904)
!2908 = !DILocation(line: 1103, column: 865, scope: !2904)
!2909 = !DILocation(line: 1103, column: 864, scope: !2904)
!2910 = !DILocation(line: 1103, column: 922, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2912, file: !77, discriminator: 16)
!2912 = distinct !DILexicalBlock(scope: !2905, file: !77, line: 1103, column: 912)
!2913 = !DILocation(line: 1103, column: 956, scope: !2911)
!2914 = !DILocation(line: 1103, column: 1147, scope: !2915)
!2915 = !DILexicalBlockFile(scope: !2875, file: !77, discriminator: 17)
!2916 = !DILocation(line: 1103, column: 1164, scope: !2915)
!2917 = !DILocation(line: 1103, column: 1181, scope: !2915)
!2918 = !DILocation(line: 1103, column: 1121, scope: !2915)
!2919 = !DILocation(line: 1103, column: 1139, scope: !2915)
!2920 = !DILocation(line: 1103, column: 1196, scope: !2915)
!2921 = !DILocation(line: 1103, column: 1224, scope: !2915)
!2922 = !DILocation(line: 1103, column: 1237, scope: !2923)
!2923 = !DILexicalBlockFile(scope: !2871, file: !77, discriminator: 18)
!2924 = !DILocation(line: 1103, column: 1239, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !2810, file: !77, discriminator: 19)
!2926 = !DILocation(line: 1106, column: 11, scope: !2800)
!2927 = !DILocation(line: 1106, column: 4, scope: !2800)
!2928 = distinct !DISubprogram(name: "VMGuestLib_GetMemUsedMB", scope: !77, file: !77, line: 1127, type: !969, isLocal: false, isDefinition: true, scopeLine: 1129, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!2929 = !DILocalVariable(name: "handle", arg: 1, scope: !2928, file: !77, line: 1127, type: !72)
!2930 = !DILocation(line: 1127, column: 42, scope: !2928)
!2931 = !DILocalVariable(name: "memUsedMB", arg: 2, scope: !2928, file: !77, line: 1128, type: !971)
!2932 = !DILocation(line: 1128, column: 33, scope: !2928)
!2933 = !DILocalVariable(name: "error", scope: !2928, file: !77, line: 1130, type: !270)
!2934 = !DILocation(line: 1130, column: 20, scope: !2928)
!2935 = !DILocation(line: 1131, column: 4, scope: !2928)
!2936 = distinct !{!2936, !2935}
!2937 = !DILocalVariable(name: "_data", scope: !2938, file: !77, line: 1131, type: !71)
!2938 = distinct !DILexicalBlock(scope: !2928, file: !77, line: 1131, column: 7)
!2939 = !DILocation(line: 1131, column: 15, scope: !2938)
!2940 = !DILocation(line: 1131, column: 53, scope: !2941)
!2941 = !DILexicalBlockFile(scope: !2938, file: !77, discriminator: 1)
!2942 = !DILocation(line: 1131, column: 63, scope: !2941)
!2943 = !DILocation(line: 1131, column: 62, scope: !2941)
!2944 = !DILocation(line: 1131, column: 32, scope: !2941)
!2945 = !DILocation(line: 1131, column: 30, scope: !2941)
!2946 = !DILocation(line: 1131, column: 117, scope: !2941)
!2947 = !DILocation(line: 1131, column: 113, scope: !2941)
!2948 = !DILocation(line: 1131, column: 88, scope: !2941)
!2949 = !DILocation(line: 1131, column: 127, scope: !2950)
!2950 = !DILexicalBlockFile(scope: !2951, file: !77, discriminator: 2)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !77, line: 1131, column: 125)
!2952 = distinct !DILexicalBlock(scope: !2938, file: !77, line: 1131, column: 88)
!2953 = !DILocation(line: 1131, column: 167, scope: !2954)
!2954 = !DILexicalBlockFile(scope: !2955, file: !77, discriminator: 3)
!2955 = distinct !DILexicalBlock(scope: !2938, file: !77, line: 1131, column: 140)
!2956 = !DILocation(line: 1131, column: 177, scope: !2954)
!2957 = !DILocation(line: 1131, column: 186, scope: !2954)
!2958 = !DILocation(line: 1131, column: 140, scope: !2954)
!2959 = !DILocation(line: 1131, column: 194, scope: !2960)
!2960 = !DILexicalBlockFile(scope: !2961, file: !77, discriminator: 4)
!2961 = distinct !DILexicalBlock(scope: !2955, file: !77, line: 1131, column: 192)
!2962 = distinct !{!2962, !2963}
!2963 = !DILocation(line: 1131, column: 194, scope: !2961)
!2964 = !DILocalVariable(name: "_dataV2", scope: !2965, file: !77, line: 1131, type: !176)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !77, line: 1131, column: 197)
!2966 = !DILocation(line: 1131, column: 217, scope: !2965)
!2967 = !DILocation(line: 1131, column: 254, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2965, file: !77, discriminator: 5)
!2969 = !DILocation(line: 1131, column: 264, scope: !2968)
!2970 = !DILocation(line: 1131, column: 227, scope: !2968)
!2971 = !DILocation(line: 1131, column: 217, scope: !2968)
!2972 = !DILocation(line: 1131, column: 287, scope: !2968)
!2973 = !DILocation(line: 1131, column: 296, scope: !2968)
!2974 = !DILocation(line: 1131, column: 306, scope: !2968)
!2975 = !DILocation(line: 1131, column: 286, scope: !2968)
!2976 = !DILocation(line: 1131, column: 323, scope: !2977)
!2977 = !DILexicalBlockFile(scope: !2978, file: !77, discriminator: 6)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !77, line: 1131, column: 313)
!2979 = distinct !DILexicalBlock(scope: !2965, file: !77, line: 1131, column: 286)
!2980 = !DILocation(line: 1131, column: 357, scope: !2977)
!2981 = !DILocation(line: 1131, column: 381, scope: !2982)
!2982 = !DILexicalBlockFile(scope: !2965, file: !77, discriminator: 7)
!2983 = !DILocation(line: 1131, column: 390, scope: !2982)
!2984 = !DILocation(line: 1131, column: 400, scope: !2982)
!2985 = !DILocation(line: 1131, column: 368, scope: !2982)
!2986 = !DILocation(line: 1131, column: 379, scope: !2982)
!2987 = !DILocation(line: 1131, column: 415, scope: !2982)
!2988 = !DILocation(line: 1131, column: 443, scope: !2982)
!2989 = !DILocation(line: 1131, column: 456, scope: !2990)
!2990 = !DILexicalBlockFile(scope: !2961, file: !77, discriminator: 8)
!2991 = !DILocation(line: 1131, column: 494, scope: !2992)
!2992 = !DILexicalBlockFile(scope: !2993, file: !77, discriminator: 9)
!2993 = distinct !DILexicalBlock(scope: !2955, file: !77, line: 1131, column: 467)
!2994 = !DILocation(line: 1131, column: 504, scope: !2992)
!2995 = !DILocation(line: 1131, column: 513, scope: !2992)
!2996 = !DILocation(line: 1131, column: 467, scope: !2992)
!2997 = !DILocation(line: 1131, column: 521, scope: !2998)
!2998 = !DILexicalBlockFile(scope: !2999, file: !77, discriminator: 10)
!2999 = distinct !DILexicalBlock(scope: !2993, file: !77, line: 1131, column: 519)
!3000 = distinct !{!3000, !3001}
!3001 = !DILocation(line: 1131, column: 521, scope: !2999)
!3002 = !DILocalVariable(name: "_data", scope: !3003, file: !77, line: 1131, type: !71)
!3003 = distinct !DILexicalBlock(scope: !2999, file: !77, line: 1131, column: 524)
!3004 = !DILocation(line: 1131, column: 532, scope: !3003)
!3005 = !DILocalVariable(name: "_stat", scope: !3003, file: !77, line: 1131, type: !363)
!3006 = !DILocation(line: 1131, column: 554, scope: !3003)
!3007 = !DILocation(line: 1131, column: 592, scope: !3008)
!3008 = !DILexicalBlockFile(scope: !3003, file: !77, discriminator: 11)
!3009 = !DILocation(line: 1131, column: 602, scope: !3008)
!3010 = !DILocation(line: 1131, column: 601, scope: !3008)
!3011 = !DILocation(line: 1131, column: 571, scope: !3008)
!3012 = !DILocation(line: 1131, column: 569, scope: !3008)
!3013 = !DILocation(line: 1131, column: 656, scope: !3008)
!3014 = !DILocation(line: 1131, column: 652, scope: !3008)
!3015 = !DILocation(line: 1131, column: 627, scope: !3008)
!3016 = !DILocation(line: 1131, column: 666, scope: !3017)
!3017 = !DILexicalBlockFile(scope: !3018, file: !77, discriminator: 12)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !77, line: 1131, column: 664)
!3019 = distinct !DILexicalBlock(scope: !3003, file: !77, line: 1131, column: 627)
!3020 = !DILocation(line: 1131, column: 723, scope: !3021)
!3021 = !DILexicalBlockFile(scope: !3003, file: !77, discriminator: 13)
!3022 = !DILocation(line: 1131, column: 696, scope: !3021)
!3023 = !DILocation(line: 1131, column: 694, scope: !3021)
!3024 = !DILocation(line: 1131, column: 770, scope: !3021)
!3025 = !DILocation(line: 1131, column: 777, scope: !3021)
!3026 = !DILocation(line: 1131, column: 769, scope: !3021)
!3027 = !DILocation(line: 1131, column: 808, scope: !3028)
!3028 = !DILexicalBlockFile(scope: !3029, file: !77, discriminator: 14)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !77, line: 1131, column: 806)
!3030 = distinct !DILexicalBlock(scope: !3003, file: !77, line: 1131, column: 769)
!3031 = !DILocation(line: 1131, column: 828, scope: !3032)
!3032 = !DILexicalBlockFile(scope: !3033, file: !77, discriminator: 15)
!3033 = distinct !DILexicalBlock(scope: !3003, file: !77, line: 1131, column: 821)
!3034 = !DILocation(line: 1131, column: 845, scope: !3032)
!3035 = !DILocation(line: 1131, column: 855, scope: !3032)
!3036 = !DILocation(line: 1131, column: 822, scope: !3032)
!3037 = !DILocation(line: 1131, column: 821, scope: !3032)
!3038 = !DILocation(line: 1131, column: 872, scope: !3039)
!3039 = !DILexicalBlockFile(scope: !3040, file: !77, discriminator: 16)
!3040 = distinct !DILexicalBlock(scope: !3033, file: !77, line: 1131, column: 862)
!3041 = !DILocation(line: 1131, column: 906, scope: !3039)
!3042 = !DILocation(line: 1131, column: 1076, scope: !3043)
!3043 = !DILexicalBlockFile(scope: !3003, file: !77, discriminator: 17)
!3044 = !DILocation(line: 1131, column: 1093, scope: !3043)
!3045 = !DILocation(line: 1131, column: 1103, scope: !3043)
!3046 = !DILocation(line: 1131, column: 1057, scope: !3043)
!3047 = !DILocation(line: 1131, column: 1068, scope: !3043)
!3048 = !DILocation(line: 1131, column: 1118, scope: !3043)
!3049 = !DILocation(line: 1131, column: 1146, scope: !3043)
!3050 = !DILocation(line: 1131, column: 1159, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !2999, file: !77, discriminator: 18)
!3052 = !DILocation(line: 1131, column: 1161, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !2938, file: !77, discriminator: 19)
!3054 = !DILocation(line: 1134, column: 11, scope: !2928)
!3055 = !DILocation(line: 1134, column: 4, scope: !2928)
!3056 = distinct !DISubprogram(name: "VMGuestLib_GetElapsedMs", scope: !77, file: !77, line: 1155, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3057 = !DILocalVariable(name: "handle", arg: 1, scope: !3056, file: !77, line: 1155, type: !72)
!3058 = !DILocation(line: 1155, column: 42, scope: !3056)
!3059 = !DILocalVariable(name: "elapsedMs", arg: 2, scope: !3056, file: !77, line: 1156, type: !1392)
!3060 = !DILocation(line: 1156, column: 33, scope: !3056)
!3061 = !DILocalVariable(name: "error", scope: !3056, file: !77, line: 1158, type: !270)
!3062 = !DILocation(line: 1158, column: 20, scope: !3056)
!3063 = !DILocation(line: 1159, column: 4, scope: !3056)
!3064 = distinct !{!3064, !3063}
!3065 = !DILocalVariable(name: "_data", scope: !3066, file: !77, line: 1159, type: !71)
!3066 = distinct !DILexicalBlock(scope: !3056, file: !77, line: 1159, column: 7)
!3067 = !DILocation(line: 1159, column: 15, scope: !3066)
!3068 = !DILocation(line: 1159, column: 53, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !3066, file: !77, discriminator: 1)
!3070 = !DILocation(line: 1159, column: 63, scope: !3069)
!3071 = !DILocation(line: 1159, column: 62, scope: !3069)
!3072 = !DILocation(line: 1159, column: 32, scope: !3069)
!3073 = !DILocation(line: 1159, column: 30, scope: !3069)
!3074 = !DILocation(line: 1159, column: 117, scope: !3069)
!3075 = !DILocation(line: 1159, column: 113, scope: !3069)
!3076 = !DILocation(line: 1159, column: 88, scope: !3069)
!3077 = !DILocation(line: 1159, column: 127, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3079, file: !77, discriminator: 2)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !77, line: 1159, column: 125)
!3080 = distinct !DILexicalBlock(scope: !3066, file: !77, line: 1159, column: 88)
!3081 = !DILocation(line: 1159, column: 167, scope: !3082)
!3082 = !DILexicalBlockFile(scope: !3083, file: !77, discriminator: 3)
!3083 = distinct !DILexicalBlock(scope: !3066, file: !77, line: 1159, column: 140)
!3084 = !DILocation(line: 1159, column: 177, scope: !3082)
!3085 = !DILocation(line: 1159, column: 186, scope: !3082)
!3086 = !DILocation(line: 1159, column: 140, scope: !3082)
!3087 = !DILocation(line: 1159, column: 194, scope: !3088)
!3088 = !DILexicalBlockFile(scope: !3089, file: !77, discriminator: 4)
!3089 = distinct !DILexicalBlock(scope: !3083, file: !77, line: 1159, column: 192)
!3090 = distinct !{!3090, !3091}
!3091 = !DILocation(line: 1159, column: 194, scope: !3089)
!3092 = !DILocalVariable(name: "_dataV2", scope: !3093, file: !77, line: 1159, type: !176)
!3093 = distinct !DILexicalBlock(scope: !3089, file: !77, line: 1159, column: 197)
!3094 = !DILocation(line: 1159, column: 217, scope: !3093)
!3095 = !DILocation(line: 1159, column: 254, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !3093, file: !77, discriminator: 5)
!3097 = !DILocation(line: 1159, column: 264, scope: !3096)
!3098 = !DILocation(line: 1159, column: 227, scope: !3096)
!3099 = !DILocation(line: 1159, column: 217, scope: !3096)
!3100 = !DILocation(line: 1159, column: 287, scope: !3096)
!3101 = !DILocation(line: 1159, column: 296, scope: !3096)
!3102 = !DILocation(line: 1159, column: 306, scope: !3096)
!3103 = !DILocation(line: 1159, column: 286, scope: !3096)
!3104 = !DILocation(line: 1159, column: 323, scope: !3105)
!3105 = !DILexicalBlockFile(scope: !3106, file: !77, discriminator: 6)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !77, line: 1159, column: 313)
!3107 = distinct !DILexicalBlock(scope: !3093, file: !77, line: 1159, column: 286)
!3108 = !DILocation(line: 1159, column: 357, scope: !3105)
!3109 = !DILocation(line: 1159, column: 381, scope: !3110)
!3110 = !DILexicalBlockFile(scope: !3093, file: !77, discriminator: 7)
!3111 = !DILocation(line: 1159, column: 390, scope: !3110)
!3112 = !DILocation(line: 1159, column: 400, scope: !3110)
!3113 = !DILocation(line: 1159, column: 368, scope: !3110)
!3114 = !DILocation(line: 1159, column: 379, scope: !3110)
!3115 = !DILocation(line: 1159, column: 415, scope: !3110)
!3116 = !DILocation(line: 1159, column: 443, scope: !3110)
!3117 = !DILocation(line: 1159, column: 456, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !3089, file: !77, discriminator: 8)
!3119 = !DILocation(line: 1159, column: 494, scope: !3120)
!3120 = !DILexicalBlockFile(scope: !3121, file: !77, discriminator: 9)
!3121 = distinct !DILexicalBlock(scope: !3083, file: !77, line: 1159, column: 467)
!3122 = !DILocation(line: 1159, column: 504, scope: !3120)
!3123 = !DILocation(line: 1159, column: 513, scope: !3120)
!3124 = !DILocation(line: 1159, column: 467, scope: !3120)
!3125 = !DILocation(line: 1159, column: 521, scope: !3126)
!3126 = !DILexicalBlockFile(scope: !3127, file: !77, discriminator: 10)
!3127 = distinct !DILexicalBlock(scope: !3121, file: !77, line: 1159, column: 519)
!3128 = distinct !{!3128, !3129}
!3129 = !DILocation(line: 1159, column: 521, scope: !3127)
!3130 = !DILocalVariable(name: "_data", scope: !3131, file: !77, line: 1159, type: !71)
!3131 = distinct !DILexicalBlock(scope: !3127, file: !77, line: 1159, column: 524)
!3132 = !DILocation(line: 1159, column: 532, scope: !3131)
!3133 = !DILocalVariable(name: "_stat", scope: !3131, file: !77, line: 1159, type: !363)
!3134 = !DILocation(line: 1159, column: 554, scope: !3131)
!3135 = !DILocation(line: 1159, column: 592, scope: !3136)
!3136 = !DILexicalBlockFile(scope: !3131, file: !77, discriminator: 11)
!3137 = !DILocation(line: 1159, column: 602, scope: !3136)
!3138 = !DILocation(line: 1159, column: 601, scope: !3136)
!3139 = !DILocation(line: 1159, column: 571, scope: !3136)
!3140 = !DILocation(line: 1159, column: 569, scope: !3136)
!3141 = !DILocation(line: 1159, column: 656, scope: !3136)
!3142 = !DILocation(line: 1159, column: 652, scope: !3136)
!3143 = !DILocation(line: 1159, column: 627, scope: !3136)
!3144 = !DILocation(line: 1159, column: 666, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3146, file: !77, discriminator: 12)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !77, line: 1159, column: 664)
!3147 = distinct !DILexicalBlock(scope: !3131, file: !77, line: 1159, column: 627)
!3148 = !DILocation(line: 1159, column: 723, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3131, file: !77, discriminator: 13)
!3150 = !DILocation(line: 1159, column: 696, scope: !3149)
!3151 = !DILocation(line: 1159, column: 694, scope: !3149)
!3152 = !DILocation(line: 1159, column: 769, scope: !3149)
!3153 = !DILocation(line: 1159, column: 776, scope: !3149)
!3154 = !DILocation(line: 1159, column: 768, scope: !3149)
!3155 = !DILocation(line: 1159, column: 807, scope: !3156)
!3156 = !DILexicalBlockFile(scope: !3157, file: !77, discriminator: 14)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !77, line: 1159, column: 805)
!3158 = distinct !DILexicalBlock(scope: !3131, file: !77, line: 1159, column: 768)
!3159 = !DILocation(line: 1159, column: 827, scope: !3160)
!3160 = !DILexicalBlockFile(scope: !3161, file: !77, discriminator: 15)
!3161 = distinct !DILexicalBlock(scope: !3131, file: !77, line: 1159, column: 820)
!3162 = !DILocation(line: 1159, column: 844, scope: !3160)
!3163 = !DILocation(line: 1159, column: 854, scope: !3160)
!3164 = !DILocation(line: 1159, column: 821, scope: !3160)
!3165 = !DILocation(line: 1159, column: 820, scope: !3160)
!3166 = !DILocation(line: 1159, column: 871, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3168, file: !77, discriminator: 16)
!3168 = distinct !DILexicalBlock(scope: !3161, file: !77, line: 1159, column: 861)
!3169 = !DILocation(line: 1159, column: 905, scope: !3167)
!3170 = !DILocation(line: 1159, column: 1075, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !3131, file: !77, discriminator: 17)
!3172 = !DILocation(line: 1159, column: 1092, scope: !3171)
!3173 = !DILocation(line: 1159, column: 1102, scope: !3171)
!3174 = !DILocation(line: 1159, column: 1056, scope: !3171)
!3175 = !DILocation(line: 1159, column: 1067, scope: !3171)
!3176 = !DILocation(line: 1159, column: 1117, scope: !3171)
!3177 = !DILocation(line: 1159, column: 1145, scope: !3171)
!3178 = !DILocation(line: 1159, column: 1158, scope: !3179)
!3179 = !DILexicalBlockFile(scope: !3127, file: !77, discriminator: 18)
!3180 = !DILocation(line: 1159, column: 1160, scope: !3181)
!3181 = !DILexicalBlockFile(scope: !3066, file: !77, discriminator: 19)
!3182 = !DILocation(line: 1162, column: 11, scope: !3056)
!3183 = !DILocation(line: 1162, column: 4, scope: !3056)
!3184 = distinct !DISubprogram(name: "VMGuestLib_GetResourcePoolPath", scope: !77, file: !77, line: 1190, type: !3185, isLocal: false, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!270, !72, !262, !132}
!3187 = !DILocalVariable(name: "handle", arg: 1, scope: !3184, file: !77, line: 1190, type: !72)
!3188 = !DILocation(line: 1190, column: 49, scope: !3184)
!3189 = !DILocalVariable(name: "bufferSize", arg: 2, scope: !3184, file: !77, line: 1191, type: !262)
!3190 = !DILocation(line: 1191, column: 40, scope: !3184)
!3191 = !DILocalVariable(name: "pathBuffer", arg: 3, scope: !3184, file: !77, line: 1192, type: !132)
!3192 = !DILocation(line: 1192, column: 38, scope: !3184)
!3193 = !DILocalVariable(name: "error", scope: !3184, file: !77, line: 1194, type: !270)
!3194 = !DILocation(line: 1194, column: 20, scope: !3184)
!3195 = !DILocation(line: 1196, column: 4, scope: !3184)
!3196 = distinct !{!3196, !3195}
!3197 = !DILocalVariable(name: "size", scope: !3198, file: !77, line: 1197, type: !93)
!3198 = distinct !DILexicalBlock(scope: !3184, file: !77, line: 1196, column: 7)
!3199 = !DILocation(line: 1197, column: 14, scope: !3198)
!3200 = !DILocation(line: 1198, column: 18, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3198, file: !77, line: 1198, column: 10)
!3202 = !DILocation(line: 1198, column: 15, scope: !3201)
!3203 = !DILocation(line: 1198, column: 10, scope: !3198)
!3204 = !DILocation(line: 1199, column: 16, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3201, file: !77, line: 1198, column: 26)
!3206 = !DILocation(line: 1200, column: 10, scope: !3205)
!3207 = !DILocation(line: 1203, column: 18, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3198, file: !77, line: 1203, column: 10)
!3209 = !DILocation(line: 1203, column: 15, scope: !3208)
!3210 = !DILocation(line: 1203, column: 29, scope: !3208)
!3211 = !DILocation(line: 1203, column: 40, scope: !3212)
!3212 = !DILexicalBlockFile(scope: !3208, file: !77, discriminator: 1)
!3213 = !DILocation(line: 1203, column: 37, scope: !3212)
!3214 = !DILocation(line: 1203, column: 10, scope: !3212)
!3215 = !DILocation(line: 1204, column: 16, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3208, file: !77, line: 1203, column: 52)
!3217 = !DILocation(line: 1205, column: 10, scope: !3216)
!3218 = !DILocation(line: 1208, column: 43, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3198, file: !77, line: 1208, column: 11)
!3220 = !DILocation(line: 1208, column: 53, scope: !3219)
!3221 = !DILocation(line: 1208, column: 13, scope: !3219)
!3222 = !DILocation(line: 1208, column: 11, scope: !3198)
!3223 = !DILocation(line: 1209, column: 16, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3219, file: !77, line: 1208, column: 65)
!3225 = !DILocation(line: 1210, column: 10, scope: !3224)
!3226 = !DILocation(line: 1213, column: 38, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3198, file: !77, line: 1213, column: 11)
!3228 = !DILocation(line: 1213, column: 48, scope: !3227)
!3229 = !DILocation(line: 1213, column: 57, scope: !3227)
!3230 = !DILocation(line: 1213, column: 11, scope: !3198)
!3231 = !DILocalVariable(name: "dataV2", scope: !3232, file: !77, line: 1214, type: !176)
!3232 = distinct !DILexicalBlock(scope: !3227, file: !77, line: 1213, column: 63)
!3233 = !DILocation(line: 1214, column: 28, scope: !3232)
!3234 = !DILocation(line: 1216, column: 66, scope: !3232)
!3235 = !DILocation(line: 1216, column: 76, scope: !3232)
!3236 = !DILocation(line: 1216, column: 19, scope: !3232)
!3237 = !DILocation(line: 1216, column: 17, scope: !3232)
!3238 = !DILocation(line: 1218, column: 15, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3232, file: !77, line: 1218, column: 14)
!3240 = !DILocation(line: 1218, column: 23, scope: !3239)
!3241 = !DILocation(line: 1218, column: 40, scope: !3239)
!3242 = !DILocation(line: 1218, column: 14, scope: !3232)
!3243 = !DILocation(line: 1219, column: 19, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3239, file: !77, line: 1218, column: 47)
!3245 = !DILocation(line: 1220, column: 13, scope: !3244)
!3246 = !DILocation(line: 1227, column: 24, scope: !3232)
!3247 = !DILocation(line: 1227, column: 32, scope: !3232)
!3248 = !DILocation(line: 1227, column: 49, scope: !3232)
!3249 = !DILocation(line: 1227, column: 17, scope: !3232)
!3250 = !DILocation(line: 1227, column: 56, scope: !3232)
!3251 = !DILocation(line: 1227, column: 15, scope: !3232)
!3252 = !DILocation(line: 1228, column: 15, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3232, file: !77, line: 1228, column: 14)
!3254 = !DILocation(line: 1228, column: 14, scope: !3253)
!3255 = !DILocation(line: 1228, column: 28, scope: !3253)
!3256 = !DILocation(line: 1228, column: 26, scope: !3253)
!3257 = !DILocation(line: 1228, column: 14, scope: !3232)
!3258 = !DILocation(line: 1229, column: 27, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3253, file: !77, line: 1228, column: 34)
!3260 = !DILocation(line: 1229, column: 14, scope: !3259)
!3261 = !DILocation(line: 1229, column: 25, scope: !3259)
!3262 = !DILocation(line: 1230, column: 19, scope: !3259)
!3263 = !DILocation(line: 1231, column: 13, scope: !3259)
!3264 = !DILocation(line: 1234, column: 17, scope: !3232)
!3265 = !DILocation(line: 1234, column: 29, scope: !3232)
!3266 = !DILocation(line: 1234, column: 37, scope: !3232)
!3267 = !DILocation(line: 1234, column: 54, scope: !3232)
!3268 = !DILocation(line: 1234, column: 10, scope: !3232)
!3269 = !DILocation(line: 1234, column: 61, scope: !3232)
!3270 = !DILocation(line: 1235, column: 16, scope: !3232)
!3271 = !DILocation(line: 1236, column: 7, scope: !3232)
!3272 = !DILocation(line: 1236, column: 45, scope: !3273)
!3273 = !DILexicalBlockFile(scope: !3274, file: !77, discriminator: 1)
!3274 = distinct !DILexicalBlock(scope: !3227, file: !77, line: 1236, column: 18)
!3275 = !DILocation(line: 1236, column: 55, scope: !3273)
!3276 = !DILocation(line: 1236, column: 64, scope: !3273)
!3277 = !DILocation(line: 1236, column: 18, scope: !3273)
!3278 = !DILocalVariable(name: "stats", scope: !3279, file: !77, line: 1237, type: !355)
!3279 = distinct !DILexicalBlock(scope: !3274, file: !77, line: 1236, column: 70)
!3280 = !DILocation(line: 1237, column: 34, scope: !3279)
!3281 = !DILocation(line: 1237, column: 69, scope: !3279)
!3282 = !DILocation(line: 1237, column: 79, scope: !3279)
!3283 = !DILocation(line: 1237, column: 42, scope: !3279)
!3284 = !DILocalVariable(name: "stat", scope: !3279, file: !77, line: 1238, type: !1102)
!3285 = !DILocation(line: 1238, column: 26, scope: !3279)
!3286 = !DILocation(line: 1238, column: 34, scope: !3279)
!3287 = !DILocation(line: 1238, column: 41, scope: !3279)
!3288 = !DILocation(line: 1240, column: 15, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3279, file: !77, line: 1240, column: 14)
!3290 = !DILocation(line: 1240, column: 21, scope: !3289)
!3291 = !DILocation(line: 1240, column: 38, scope: !3289)
!3292 = !DILocation(line: 1240, column: 55, scope: !3289)
!3293 = !DILocation(line: 1240, column: 14, scope: !3279)
!3294 = !DILocation(line: 1241, column: 19, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3289, file: !77, line: 1240, column: 62)
!3296 = !DILocation(line: 1242, column: 13, scope: !3295)
!3297 = !DILocation(line: 1245, column: 24, scope: !3279)
!3298 = !DILocation(line: 1245, column: 30, scope: !3279)
!3299 = !DILocation(line: 1245, column: 47, scope: !3279)
!3300 = !DILocation(line: 1245, column: 64, scope: !3279)
!3301 = !DILocation(line: 1245, column: 17, scope: !3279)
!3302 = !DILocation(line: 1245, column: 71, scope: !3279)
!3303 = !DILocation(line: 1245, column: 15, scope: !3279)
!3304 = !DILocation(line: 1246, column: 15, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3279, file: !77, line: 1246, column: 14)
!3306 = !DILocation(line: 1246, column: 14, scope: !3305)
!3307 = !DILocation(line: 1246, column: 28, scope: !3305)
!3308 = !DILocation(line: 1246, column: 26, scope: !3305)
!3309 = !DILocation(line: 1246, column: 14, scope: !3279)
!3310 = !DILocation(line: 1247, column: 27, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3305, file: !77, line: 1246, column: 34)
!3312 = !DILocation(line: 1247, column: 14, scope: !3311)
!3313 = !DILocation(line: 1247, column: 25, scope: !3311)
!3314 = !DILocation(line: 1248, column: 19, scope: !3311)
!3315 = !DILocation(line: 1249, column: 13, scope: !3311)
!3316 = !DILocation(line: 1251, column: 17, scope: !3279)
!3317 = !DILocation(line: 1251, column: 29, scope: !3279)
!3318 = !DILocation(line: 1251, column: 35, scope: !3279)
!3319 = !DILocation(line: 1251, column: 52, scope: !3279)
!3320 = !DILocation(line: 1251, column: 69, scope: !3279)
!3321 = !DILocation(line: 1251, column: 76, scope: !3279)
!3322 = !DILocation(line: 1251, column: 10, scope: !3279)
!3323 = !DILocation(line: 1252, column: 16, scope: !3279)
!3324 = !DILocation(line: 1253, column: 7, scope: !3279)
!3325 = !DILocation(line: 1254, column: 4, scope: !3198)
!3326 = !DILocation(line: 1256, column: 11, scope: !3184)
!3327 = !DILocation(line: 1256, column: 4, scope: !3184)
!3328 = distinct !DISubprogram(name: "VMGuestLib_GetCpuStolenMs", scope: !77, file: !77, line: 1277, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1279, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3329 = !DILocalVariable(name: "handle", arg: 1, scope: !3328, file: !77, line: 1277, type: !72)
!3330 = !DILocation(line: 1277, column: 44, scope: !3328)
!3331 = !DILocalVariable(name: "cpuStolenMs", arg: 2, scope: !3328, file: !77, line: 1278, type: !1392)
!3332 = !DILocation(line: 1278, column: 35, scope: !3328)
!3333 = !DILocalVariable(name: "error", scope: !3328, file: !77, line: 1280, type: !270)
!3334 = !DILocation(line: 1280, column: 20, scope: !3328)
!3335 = !DILocation(line: 1281, column: 4, scope: !3328)
!3336 = distinct !{!3336, !3335}
!3337 = !DILocalVariable(name: "_data", scope: !3338, file: !77, line: 1281, type: !71)
!3338 = distinct !DILexicalBlock(scope: !3328, file: !77, line: 1281, column: 7)
!3339 = !DILocation(line: 1281, column: 15, scope: !3338)
!3340 = !DILocalVariable(name: "_stat", scope: !3338, file: !77, line: 1281, type: !363)
!3341 = !DILocation(line: 1281, column: 37, scope: !3338)
!3342 = !DILocation(line: 1281, column: 75, scope: !3343)
!3343 = !DILexicalBlockFile(scope: !3338, file: !77, discriminator: 1)
!3344 = !DILocation(line: 1281, column: 85, scope: !3343)
!3345 = !DILocation(line: 1281, column: 84, scope: !3343)
!3346 = !DILocation(line: 1281, column: 54, scope: !3343)
!3347 = !DILocation(line: 1281, column: 52, scope: !3343)
!3348 = !DILocation(line: 1281, column: 141, scope: !3343)
!3349 = !DILocation(line: 1281, column: 137, scope: !3343)
!3350 = !DILocation(line: 1281, column: 112, scope: !3343)
!3351 = !DILocation(line: 1281, column: 151, scope: !3352)
!3352 = !DILexicalBlockFile(scope: !3353, file: !77, discriminator: 2)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !77, line: 1281, column: 149)
!3354 = distinct !DILexicalBlock(scope: !3338, file: !77, line: 1281, column: 112)
!3355 = !DILocation(line: 1281, column: 208, scope: !3356)
!3356 = !DILexicalBlockFile(scope: !3338, file: !77, discriminator: 3)
!3357 = !DILocation(line: 1281, column: 181, scope: !3356)
!3358 = !DILocation(line: 1281, column: 179, scope: !3356)
!3359 = !DILocation(line: 1281, column: 257, scope: !3356)
!3360 = !DILocation(line: 1281, column: 264, scope: !3356)
!3361 = !DILocation(line: 1281, column: 256, scope: !3356)
!3362 = !DILocation(line: 1281, column: 295, scope: !3363)
!3363 = !DILexicalBlockFile(scope: !3364, file: !77, discriminator: 4)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !77, line: 1281, column: 293)
!3365 = distinct !DILexicalBlock(scope: !3338, file: !77, line: 1281, column: 256)
!3366 = !DILocation(line: 1281, column: 315, scope: !3367)
!3367 = !DILexicalBlockFile(scope: !3368, file: !77, discriminator: 5)
!3368 = distinct !DILexicalBlock(scope: !3338, file: !77, line: 1281, column: 308)
!3369 = !DILocation(line: 1281, column: 332, scope: !3367)
!3370 = !DILocation(line: 1281, column: 344, scope: !3367)
!3371 = !DILocation(line: 1281, column: 309, scope: !3367)
!3372 = !DILocation(line: 1281, column: 308, scope: !3367)
!3373 = !DILocation(line: 1281, column: 361, scope: !3374)
!3374 = !DILexicalBlockFile(scope: !3375, file: !77, discriminator: 6)
!3375 = distinct !DILexicalBlock(scope: !3368, file: !77, line: 1281, column: 351)
!3376 = !DILocation(line: 1281, column: 395, scope: !3374)
!3377 = !DILocation(line: 1281, column: 571, scope: !3378)
!3378 = !DILexicalBlockFile(scope: !3338, file: !77, discriminator: 7)
!3379 = !DILocation(line: 1281, column: 588, scope: !3378)
!3380 = !DILocation(line: 1281, column: 600, scope: !3378)
!3381 = !DILocation(line: 1281, column: 550, scope: !3378)
!3382 = !DILocation(line: 1281, column: 563, scope: !3378)
!3383 = !DILocation(line: 1281, column: 615, scope: !3378)
!3384 = !DILocation(line: 1281, column: 643, scope: !3378)
!3385 = !DILocation(line: 1284, column: 11, scope: !3328)
!3386 = !DILocation(line: 1284, column: 4, scope: !3328)
!3387 = distinct !DISubprogram(name: "VMGuestLib_GetMemTargetSizeMB", scope: !77, file: !77, line: 1305, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3388 = !DILocalVariable(name: "handle", arg: 1, scope: !3387, file: !77, line: 1305, type: !72)
!3389 = !DILocation(line: 1305, column: 48, scope: !3387)
!3390 = !DILocalVariable(name: "memTargetSizeMB", arg: 2, scope: !3387, file: !77, line: 1306, type: !1392)
!3391 = !DILocation(line: 1306, column: 39, scope: !3387)
!3392 = !DILocalVariable(name: "error", scope: !3387, file: !77, line: 1308, type: !270)
!3393 = !DILocation(line: 1308, column: 20, scope: !3387)
!3394 = !DILocation(line: 1309, column: 4, scope: !3387)
!3395 = distinct !{!3395, !3394}
!3396 = !DILocalVariable(name: "_data", scope: !3397, file: !77, line: 1309, type: !71)
!3397 = distinct !DILexicalBlock(scope: !3387, file: !77, line: 1309, column: 7)
!3398 = !DILocation(line: 1309, column: 15, scope: !3397)
!3399 = !DILocalVariable(name: "_stat", scope: !3397, file: !77, line: 1309, type: !363)
!3400 = !DILocation(line: 1309, column: 37, scope: !3397)
!3401 = !DILocation(line: 1309, column: 75, scope: !3402)
!3402 = !DILexicalBlockFile(scope: !3397, file: !77, discriminator: 1)
!3403 = !DILocation(line: 1309, column: 85, scope: !3402)
!3404 = !DILocation(line: 1309, column: 84, scope: !3402)
!3405 = !DILocation(line: 1309, column: 54, scope: !3402)
!3406 = !DILocation(line: 1309, column: 52, scope: !3402)
!3407 = !DILocation(line: 1309, column: 145, scope: !3402)
!3408 = !DILocation(line: 1309, column: 141, scope: !3402)
!3409 = !DILocation(line: 1309, column: 116, scope: !3402)
!3410 = !DILocation(line: 1309, column: 155, scope: !3411)
!3411 = !DILexicalBlockFile(scope: !3412, file: !77, discriminator: 2)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !77, line: 1309, column: 153)
!3413 = distinct !DILexicalBlock(scope: !3397, file: !77, line: 1309, column: 116)
!3414 = !DILocation(line: 1309, column: 212, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3397, file: !77, discriminator: 3)
!3416 = !DILocation(line: 1309, column: 185, scope: !3415)
!3417 = !DILocation(line: 1309, column: 183, scope: !3415)
!3418 = !DILocation(line: 1309, column: 266, scope: !3415)
!3419 = !DILocation(line: 1309, column: 273, scope: !3415)
!3420 = !DILocation(line: 1309, column: 265, scope: !3415)
!3421 = !DILocation(line: 1309, column: 304, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !3423, file: !77, discriminator: 4)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !77, line: 1309, column: 302)
!3424 = distinct !DILexicalBlock(scope: !3397, file: !77, line: 1309, column: 265)
!3425 = !DILocation(line: 1309, column: 324, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !3427, file: !77, discriminator: 5)
!3427 = distinct !DILexicalBlock(scope: !3397, file: !77, line: 1309, column: 317)
!3428 = !DILocation(line: 1309, column: 341, scope: !3426)
!3429 = !DILocation(line: 1309, column: 357, scope: !3426)
!3430 = !DILocation(line: 1309, column: 318, scope: !3426)
!3431 = !DILocation(line: 1309, column: 317, scope: !3426)
!3432 = !DILocation(line: 1309, column: 374, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3434, file: !77, discriminator: 6)
!3434 = distinct !DILexicalBlock(scope: !3427, file: !77, line: 1309, column: 364)
!3435 = !DILocation(line: 1309, column: 408, scope: !3433)
!3436 = !DILocation(line: 1309, column: 596, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !3397, file: !77, discriminator: 7)
!3438 = !DILocation(line: 1309, column: 613, scope: !3437)
!3439 = !DILocation(line: 1309, column: 629, scope: !3437)
!3440 = !DILocation(line: 1309, column: 571, scope: !3437)
!3441 = !DILocation(line: 1309, column: 588, scope: !3437)
!3442 = !DILocation(line: 1309, column: 644, scope: !3437)
!3443 = !DILocation(line: 1309, column: 672, scope: !3437)
!3444 = !DILocation(line: 1312, column: 11, scope: !3387)
!3445 = !DILocation(line: 1312, column: 4, scope: !3387)
!3446 = distinct !DISubprogram(name: "VMGuestLib_GetHostNumCpuCores", scope: !77, file: !77, line: 1333, type: !969, isLocal: false, isDefinition: true, scopeLine: 1335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3447 = !DILocalVariable(name: "handle", arg: 1, scope: !3446, file: !77, line: 1333, type: !72)
!3448 = !DILocation(line: 1333, column: 48, scope: !3446)
!3449 = !DILocalVariable(name: "hostNumCpuCores", arg: 2, scope: !3446, file: !77, line: 1334, type: !971)
!3450 = !DILocation(line: 1334, column: 39, scope: !3446)
!3451 = !DILocalVariable(name: "error", scope: !3446, file: !77, line: 1336, type: !270)
!3452 = !DILocation(line: 1336, column: 20, scope: !3446)
!3453 = !DILocation(line: 1337, column: 4, scope: !3446)
!3454 = distinct !{!3454, !3453}
!3455 = !DILocalVariable(name: "_data", scope: !3456, file: !77, line: 1337, type: !71)
!3456 = distinct !DILexicalBlock(scope: !3446, file: !77, line: 1337, column: 7)
!3457 = !DILocation(line: 1337, column: 15, scope: !3456)
!3458 = !DILocalVariable(name: "_stat", scope: !3456, file: !77, line: 1337, type: !363)
!3459 = !DILocation(line: 1337, column: 37, scope: !3456)
!3460 = !DILocation(line: 1337, column: 75, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !3456, file: !77, discriminator: 1)
!3462 = !DILocation(line: 1337, column: 85, scope: !3461)
!3463 = !DILocation(line: 1337, column: 84, scope: !3461)
!3464 = !DILocation(line: 1337, column: 54, scope: !3461)
!3465 = !DILocation(line: 1337, column: 52, scope: !3461)
!3466 = !DILocation(line: 1337, column: 145, scope: !3461)
!3467 = !DILocation(line: 1337, column: 141, scope: !3461)
!3468 = !DILocation(line: 1337, column: 116, scope: !3461)
!3469 = !DILocation(line: 1337, column: 155, scope: !3470)
!3470 = !DILexicalBlockFile(scope: !3471, file: !77, discriminator: 2)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !77, line: 1337, column: 153)
!3472 = distinct !DILexicalBlock(scope: !3456, file: !77, line: 1337, column: 116)
!3473 = !DILocation(line: 1337, column: 212, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !3456, file: !77, discriminator: 3)
!3475 = !DILocation(line: 1337, column: 185, scope: !3474)
!3476 = !DILocation(line: 1337, column: 183, scope: !3474)
!3477 = !DILocation(line: 1337, column: 266, scope: !3474)
!3478 = !DILocation(line: 1337, column: 273, scope: !3474)
!3479 = !DILocation(line: 1337, column: 265, scope: !3474)
!3480 = !DILocation(line: 1337, column: 304, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !3482, file: !77, discriminator: 4)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !77, line: 1337, column: 302)
!3483 = distinct !DILexicalBlock(scope: !3456, file: !77, line: 1337, column: 265)
!3484 = !DILocation(line: 1337, column: 324, scope: !3485)
!3485 = !DILexicalBlockFile(scope: !3486, file: !77, discriminator: 5)
!3486 = distinct !DILexicalBlock(scope: !3456, file: !77, line: 1337, column: 317)
!3487 = !DILocation(line: 1337, column: 341, scope: !3485)
!3488 = !DILocation(line: 1337, column: 357, scope: !3485)
!3489 = !DILocation(line: 1337, column: 318, scope: !3485)
!3490 = !DILocation(line: 1337, column: 317, scope: !3485)
!3491 = !DILocation(line: 1337, column: 374, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3493, file: !77, discriminator: 6)
!3493 = distinct !DILexicalBlock(scope: !3486, file: !77, line: 1337, column: 364)
!3494 = !DILocation(line: 1337, column: 408, scope: !3492)
!3495 = !DILocation(line: 1337, column: 596, scope: !3496)
!3496 = !DILexicalBlockFile(scope: !3456, file: !77, discriminator: 7)
!3497 = !DILocation(line: 1337, column: 613, scope: !3496)
!3498 = !DILocation(line: 1337, column: 629, scope: !3496)
!3499 = !DILocation(line: 1337, column: 571, scope: !3496)
!3500 = !DILocation(line: 1337, column: 588, scope: !3496)
!3501 = !DILocation(line: 1337, column: 644, scope: !3496)
!3502 = !DILocation(line: 1337, column: 672, scope: !3496)
!3503 = !DILocation(line: 1340, column: 11, scope: !3446)
!3504 = !DILocation(line: 1340, column: 4, scope: !3446)
!3505 = distinct !DISubprogram(name: "VMGuestLib_GetHostCpuUsedMs", scope: !77, file: !77, line: 1361, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1363, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3506 = !DILocalVariable(name: "handle", arg: 1, scope: !3505, file: !77, line: 1361, type: !72)
!3507 = !DILocation(line: 1361, column: 46, scope: !3505)
!3508 = !DILocalVariable(name: "hostCpuUsedMs", arg: 2, scope: !3505, file: !77, line: 1362, type: !1392)
!3509 = !DILocation(line: 1362, column: 37, scope: !3505)
!3510 = !DILocalVariable(name: "error", scope: !3505, file: !77, line: 1364, type: !270)
!3511 = !DILocation(line: 1364, column: 20, scope: !3505)
!3512 = !DILocation(line: 1365, column: 4, scope: !3505)
!3513 = distinct !{!3513, !3512}
!3514 = !DILocalVariable(name: "_data", scope: !3515, file: !77, line: 1365, type: !71)
!3515 = distinct !DILexicalBlock(scope: !3505, file: !77, line: 1365, column: 7)
!3516 = !DILocation(line: 1365, column: 15, scope: !3515)
!3517 = !DILocalVariable(name: "_stat", scope: !3515, file: !77, line: 1365, type: !363)
!3518 = !DILocation(line: 1365, column: 37, scope: !3515)
!3519 = !DILocation(line: 1365, column: 75, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !3515, file: !77, discriminator: 1)
!3521 = !DILocation(line: 1365, column: 85, scope: !3520)
!3522 = !DILocation(line: 1365, column: 84, scope: !3520)
!3523 = !DILocation(line: 1365, column: 54, scope: !3520)
!3524 = !DILocation(line: 1365, column: 52, scope: !3520)
!3525 = !DILocation(line: 1365, column: 143, scope: !3520)
!3526 = !DILocation(line: 1365, column: 139, scope: !3520)
!3527 = !DILocation(line: 1365, column: 114, scope: !3520)
!3528 = !DILocation(line: 1365, column: 153, scope: !3529)
!3529 = !DILexicalBlockFile(scope: !3530, file: !77, discriminator: 2)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !77, line: 1365, column: 151)
!3531 = distinct !DILexicalBlock(scope: !3515, file: !77, line: 1365, column: 114)
!3532 = !DILocation(line: 1365, column: 210, scope: !3533)
!3533 = !DILexicalBlockFile(scope: !3515, file: !77, discriminator: 3)
!3534 = !DILocation(line: 1365, column: 183, scope: !3533)
!3535 = !DILocation(line: 1365, column: 181, scope: !3533)
!3536 = !DILocation(line: 1365, column: 262, scope: !3533)
!3537 = !DILocation(line: 1365, column: 269, scope: !3533)
!3538 = !DILocation(line: 1365, column: 261, scope: !3533)
!3539 = !DILocation(line: 1365, column: 300, scope: !3540)
!3540 = !DILexicalBlockFile(scope: !3541, file: !77, discriminator: 4)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !77, line: 1365, column: 298)
!3542 = distinct !DILexicalBlock(scope: !3515, file: !77, line: 1365, column: 261)
!3543 = !DILocation(line: 1365, column: 320, scope: !3544)
!3544 = !DILexicalBlockFile(scope: !3545, file: !77, discriminator: 5)
!3545 = distinct !DILexicalBlock(scope: !3515, file: !77, line: 1365, column: 313)
!3546 = !DILocation(line: 1365, column: 337, scope: !3544)
!3547 = !DILocation(line: 1365, column: 351, scope: !3544)
!3548 = !DILocation(line: 1365, column: 314, scope: !3544)
!3549 = !DILocation(line: 1365, column: 313, scope: !3544)
!3550 = !DILocation(line: 1365, column: 368, scope: !3551)
!3551 = !DILexicalBlockFile(scope: !3552, file: !77, discriminator: 6)
!3552 = distinct !DILexicalBlock(scope: !3545, file: !77, line: 1365, column: 358)
!3553 = !DILocation(line: 1365, column: 402, scope: !3551)
!3554 = !DILocation(line: 1365, column: 584, scope: !3555)
!3555 = !DILexicalBlockFile(scope: !3515, file: !77, discriminator: 7)
!3556 = !DILocation(line: 1365, column: 601, scope: !3555)
!3557 = !DILocation(line: 1365, column: 615, scope: !3555)
!3558 = !DILocation(line: 1365, column: 561, scope: !3555)
!3559 = !DILocation(line: 1365, column: 576, scope: !3555)
!3560 = !DILocation(line: 1365, column: 630, scope: !3555)
!3561 = !DILocation(line: 1365, column: 658, scope: !3555)
!3562 = !DILocation(line: 1368, column: 11, scope: !3505)
!3563 = !DILocation(line: 1368, column: 4, scope: !3505)
!3564 = distinct !DISubprogram(name: "VMGuestLib_GetHostMemSwappedMB", scope: !77, file: !77, line: 1389, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1391, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3565 = !DILocalVariable(name: "handle", arg: 1, scope: !3564, file: !77, line: 1389, type: !72)
!3566 = !DILocation(line: 1389, column: 49, scope: !3564)
!3567 = !DILocalVariable(name: "hostMemSwappedMB", arg: 2, scope: !3564, file: !77, line: 1390, type: !1392)
!3568 = !DILocation(line: 1390, column: 40, scope: !3564)
!3569 = !DILocalVariable(name: "error", scope: !3564, file: !77, line: 1392, type: !270)
!3570 = !DILocation(line: 1392, column: 20, scope: !3564)
!3571 = !DILocation(line: 1393, column: 4, scope: !3564)
!3572 = distinct !{!3572, !3571}
!3573 = !DILocalVariable(name: "_data", scope: !3574, file: !77, line: 1393, type: !71)
!3574 = distinct !DILexicalBlock(scope: !3564, file: !77, line: 1393, column: 7)
!3575 = !DILocation(line: 1393, column: 15, scope: !3574)
!3576 = !DILocalVariable(name: "_stat", scope: !3574, file: !77, line: 1393, type: !363)
!3577 = !DILocation(line: 1393, column: 37, scope: !3574)
!3578 = !DILocation(line: 1393, column: 75, scope: !3579)
!3579 = !DILexicalBlockFile(scope: !3574, file: !77, discriminator: 1)
!3580 = !DILocation(line: 1393, column: 85, scope: !3579)
!3581 = !DILocation(line: 1393, column: 84, scope: !3579)
!3582 = !DILocation(line: 1393, column: 54, scope: !3579)
!3583 = !DILocation(line: 1393, column: 52, scope: !3579)
!3584 = !DILocation(line: 1393, column: 146, scope: !3579)
!3585 = !DILocation(line: 1393, column: 142, scope: !3579)
!3586 = !DILocation(line: 1393, column: 117, scope: !3579)
!3587 = !DILocation(line: 1393, column: 156, scope: !3588)
!3588 = !DILexicalBlockFile(scope: !3589, file: !77, discriminator: 2)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !77, line: 1393, column: 154)
!3590 = distinct !DILexicalBlock(scope: !3574, file: !77, line: 1393, column: 117)
!3591 = !DILocation(line: 1393, column: 213, scope: !3592)
!3592 = !DILexicalBlockFile(scope: !3574, file: !77, discriminator: 3)
!3593 = !DILocation(line: 1393, column: 186, scope: !3592)
!3594 = !DILocation(line: 1393, column: 184, scope: !3592)
!3595 = !DILocation(line: 1393, column: 268, scope: !3592)
!3596 = !DILocation(line: 1393, column: 275, scope: !3592)
!3597 = !DILocation(line: 1393, column: 267, scope: !3592)
!3598 = !DILocation(line: 1393, column: 306, scope: !3599)
!3599 = !DILexicalBlockFile(scope: !3600, file: !77, discriminator: 4)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !77, line: 1393, column: 304)
!3601 = distinct !DILexicalBlock(scope: !3574, file: !77, line: 1393, column: 267)
!3602 = !DILocation(line: 1393, column: 326, scope: !3603)
!3603 = !DILexicalBlockFile(scope: !3604, file: !77, discriminator: 5)
!3604 = distinct !DILexicalBlock(scope: !3574, file: !77, line: 1393, column: 319)
!3605 = !DILocation(line: 1393, column: 343, scope: !3603)
!3606 = !DILocation(line: 1393, column: 360, scope: !3603)
!3607 = !DILocation(line: 1393, column: 320, scope: !3603)
!3608 = !DILocation(line: 1393, column: 319, scope: !3603)
!3609 = !DILocation(line: 1393, column: 377, scope: !3610)
!3610 = !DILexicalBlockFile(scope: !3611, file: !77, discriminator: 6)
!3611 = distinct !DILexicalBlock(scope: !3604, file: !77, line: 1393, column: 367)
!3612 = !DILocation(line: 1393, column: 411, scope: !3610)
!3613 = !DILocation(line: 1393, column: 602, scope: !3614)
!3614 = !DILexicalBlockFile(scope: !3574, file: !77, discriminator: 7)
!3615 = !DILocation(line: 1393, column: 619, scope: !3614)
!3616 = !DILocation(line: 1393, column: 636, scope: !3614)
!3617 = !DILocation(line: 1393, column: 576, scope: !3614)
!3618 = !DILocation(line: 1393, column: 594, scope: !3614)
!3619 = !DILocation(line: 1393, column: 651, scope: !3614)
!3620 = !DILocation(line: 1393, column: 679, scope: !3614)
!3621 = !DILocation(line: 1396, column: 11, scope: !3564)
!3622 = !DILocation(line: 1396, column: 4, scope: !3564)
!3623 = distinct !DISubprogram(name: "VMGuestLib_GetHostMemSharedMB", scope: !77, file: !77, line: 1417, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1419, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3624 = !DILocalVariable(name: "handle", arg: 1, scope: !3623, file: !77, line: 1417, type: !72)
!3625 = !DILocation(line: 1417, column: 48, scope: !3623)
!3626 = !DILocalVariable(name: "hostMemSharedMB", arg: 2, scope: !3623, file: !77, line: 1418, type: !1392)
!3627 = !DILocation(line: 1418, column: 39, scope: !3623)
!3628 = !DILocalVariable(name: "error", scope: !3623, file: !77, line: 1420, type: !270)
!3629 = !DILocation(line: 1420, column: 20, scope: !3623)
!3630 = !DILocation(line: 1421, column: 4, scope: !3623)
!3631 = distinct !{!3631, !3630}
!3632 = !DILocalVariable(name: "_data", scope: !3633, file: !77, line: 1421, type: !71)
!3633 = distinct !DILexicalBlock(scope: !3623, file: !77, line: 1421, column: 7)
!3634 = !DILocation(line: 1421, column: 15, scope: !3633)
!3635 = !DILocalVariable(name: "_stat", scope: !3633, file: !77, line: 1421, type: !363)
!3636 = !DILocation(line: 1421, column: 37, scope: !3633)
!3637 = !DILocation(line: 1421, column: 75, scope: !3638)
!3638 = !DILexicalBlockFile(scope: !3633, file: !77, discriminator: 1)
!3639 = !DILocation(line: 1421, column: 85, scope: !3638)
!3640 = !DILocation(line: 1421, column: 84, scope: !3638)
!3641 = !DILocation(line: 1421, column: 54, scope: !3638)
!3642 = !DILocation(line: 1421, column: 52, scope: !3638)
!3643 = !DILocation(line: 1421, column: 145, scope: !3638)
!3644 = !DILocation(line: 1421, column: 141, scope: !3638)
!3645 = !DILocation(line: 1421, column: 116, scope: !3638)
!3646 = !DILocation(line: 1421, column: 155, scope: !3647)
!3647 = !DILexicalBlockFile(scope: !3648, file: !77, discriminator: 2)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !77, line: 1421, column: 153)
!3649 = distinct !DILexicalBlock(scope: !3633, file: !77, line: 1421, column: 116)
!3650 = !DILocation(line: 1421, column: 212, scope: !3651)
!3651 = !DILexicalBlockFile(scope: !3633, file: !77, discriminator: 3)
!3652 = !DILocation(line: 1421, column: 185, scope: !3651)
!3653 = !DILocation(line: 1421, column: 183, scope: !3651)
!3654 = !DILocation(line: 1421, column: 266, scope: !3651)
!3655 = !DILocation(line: 1421, column: 273, scope: !3651)
!3656 = !DILocation(line: 1421, column: 265, scope: !3651)
!3657 = !DILocation(line: 1421, column: 304, scope: !3658)
!3658 = !DILexicalBlockFile(scope: !3659, file: !77, discriminator: 4)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !77, line: 1421, column: 302)
!3660 = distinct !DILexicalBlock(scope: !3633, file: !77, line: 1421, column: 265)
!3661 = !DILocation(line: 1421, column: 324, scope: !3662)
!3662 = !DILexicalBlockFile(scope: !3663, file: !77, discriminator: 5)
!3663 = distinct !DILexicalBlock(scope: !3633, file: !77, line: 1421, column: 317)
!3664 = !DILocation(line: 1421, column: 341, scope: !3662)
!3665 = !DILocation(line: 1421, column: 357, scope: !3662)
!3666 = !DILocation(line: 1421, column: 318, scope: !3662)
!3667 = !DILocation(line: 1421, column: 317, scope: !3662)
!3668 = !DILocation(line: 1421, column: 374, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !3670, file: !77, discriminator: 6)
!3670 = distinct !DILexicalBlock(scope: !3663, file: !77, line: 1421, column: 364)
!3671 = !DILocation(line: 1421, column: 408, scope: !3669)
!3672 = !DILocation(line: 1421, column: 596, scope: !3673)
!3673 = !DILexicalBlockFile(scope: !3633, file: !77, discriminator: 7)
!3674 = !DILocation(line: 1421, column: 613, scope: !3673)
!3675 = !DILocation(line: 1421, column: 629, scope: !3673)
!3676 = !DILocation(line: 1421, column: 571, scope: !3673)
!3677 = !DILocation(line: 1421, column: 588, scope: !3673)
!3678 = !DILocation(line: 1421, column: 644, scope: !3673)
!3679 = !DILocation(line: 1421, column: 672, scope: !3673)
!3680 = !DILocation(line: 1424, column: 11, scope: !3623)
!3681 = !DILocation(line: 1424, column: 4, scope: !3623)
!3682 = distinct !DISubprogram(name: "VMGuestLib_GetHostMemUsedMB", scope: !77, file: !77, line: 1445, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3683 = !DILocalVariable(name: "handle", arg: 1, scope: !3682, file: !77, line: 1445, type: !72)
!3684 = !DILocation(line: 1445, column: 46, scope: !3682)
!3685 = !DILocalVariable(name: "hostMemUsedMB", arg: 2, scope: !3682, file: !77, line: 1446, type: !1392)
!3686 = !DILocation(line: 1446, column: 37, scope: !3682)
!3687 = !DILocalVariable(name: "error", scope: !3682, file: !77, line: 1448, type: !270)
!3688 = !DILocation(line: 1448, column: 20, scope: !3682)
!3689 = !DILocation(line: 1449, column: 4, scope: !3682)
!3690 = distinct !{!3690, !3689}
!3691 = !DILocalVariable(name: "_data", scope: !3692, file: !77, line: 1449, type: !71)
!3692 = distinct !DILexicalBlock(scope: !3682, file: !77, line: 1449, column: 7)
!3693 = !DILocation(line: 1449, column: 15, scope: !3692)
!3694 = !DILocalVariable(name: "_stat", scope: !3692, file: !77, line: 1449, type: !363)
!3695 = !DILocation(line: 1449, column: 37, scope: !3692)
!3696 = !DILocation(line: 1449, column: 75, scope: !3697)
!3697 = !DILexicalBlockFile(scope: !3692, file: !77, discriminator: 1)
!3698 = !DILocation(line: 1449, column: 85, scope: !3697)
!3699 = !DILocation(line: 1449, column: 84, scope: !3697)
!3700 = !DILocation(line: 1449, column: 54, scope: !3697)
!3701 = !DILocation(line: 1449, column: 52, scope: !3697)
!3702 = !DILocation(line: 1449, column: 143, scope: !3697)
!3703 = !DILocation(line: 1449, column: 139, scope: !3697)
!3704 = !DILocation(line: 1449, column: 114, scope: !3697)
!3705 = !DILocation(line: 1449, column: 153, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !3707, file: !77, discriminator: 2)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !77, line: 1449, column: 151)
!3708 = distinct !DILexicalBlock(scope: !3692, file: !77, line: 1449, column: 114)
!3709 = !DILocation(line: 1449, column: 210, scope: !3710)
!3710 = !DILexicalBlockFile(scope: !3692, file: !77, discriminator: 3)
!3711 = !DILocation(line: 1449, column: 183, scope: !3710)
!3712 = !DILocation(line: 1449, column: 181, scope: !3710)
!3713 = !DILocation(line: 1449, column: 262, scope: !3710)
!3714 = !DILocation(line: 1449, column: 269, scope: !3710)
!3715 = !DILocation(line: 1449, column: 261, scope: !3710)
!3716 = !DILocation(line: 1449, column: 300, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !3718, file: !77, discriminator: 4)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !77, line: 1449, column: 298)
!3719 = distinct !DILexicalBlock(scope: !3692, file: !77, line: 1449, column: 261)
!3720 = !DILocation(line: 1449, column: 320, scope: !3721)
!3721 = !DILexicalBlockFile(scope: !3722, file: !77, discriminator: 5)
!3722 = distinct !DILexicalBlock(scope: !3692, file: !77, line: 1449, column: 313)
!3723 = !DILocation(line: 1449, column: 337, scope: !3721)
!3724 = !DILocation(line: 1449, column: 351, scope: !3721)
!3725 = !DILocation(line: 1449, column: 314, scope: !3721)
!3726 = !DILocation(line: 1449, column: 313, scope: !3721)
!3727 = !DILocation(line: 1449, column: 368, scope: !3728)
!3728 = !DILexicalBlockFile(scope: !3729, file: !77, discriminator: 6)
!3729 = distinct !DILexicalBlock(scope: !3722, file: !77, line: 1449, column: 358)
!3730 = !DILocation(line: 1449, column: 402, scope: !3728)
!3731 = !DILocation(line: 1449, column: 584, scope: !3732)
!3732 = !DILexicalBlockFile(scope: !3692, file: !77, discriminator: 7)
!3733 = !DILocation(line: 1449, column: 601, scope: !3732)
!3734 = !DILocation(line: 1449, column: 615, scope: !3732)
!3735 = !DILocation(line: 1449, column: 561, scope: !3732)
!3736 = !DILocation(line: 1449, column: 576, scope: !3732)
!3737 = !DILocation(line: 1449, column: 630, scope: !3732)
!3738 = !DILocation(line: 1449, column: 658, scope: !3732)
!3739 = !DILocation(line: 1452, column: 11, scope: !3682)
!3740 = !DILocation(line: 1452, column: 4, scope: !3682)
!3741 = distinct !DISubprogram(name: "VMGuestLib_GetHostMemPhysMB", scope: !77, file: !77, line: 1473, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1475, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3742 = !DILocalVariable(name: "handle", arg: 1, scope: !3741, file: !77, line: 1473, type: !72)
!3743 = !DILocation(line: 1473, column: 46, scope: !3741)
!3744 = !DILocalVariable(name: "hostMemPhysMB", arg: 2, scope: !3741, file: !77, line: 1474, type: !1392)
!3745 = !DILocation(line: 1474, column: 37, scope: !3741)
!3746 = !DILocalVariable(name: "error", scope: !3741, file: !77, line: 1476, type: !270)
!3747 = !DILocation(line: 1476, column: 20, scope: !3741)
!3748 = !DILocation(line: 1477, column: 4, scope: !3741)
!3749 = distinct !{!3749, !3748}
!3750 = !DILocalVariable(name: "_data", scope: !3751, file: !77, line: 1477, type: !71)
!3751 = distinct !DILexicalBlock(scope: !3741, file: !77, line: 1477, column: 7)
!3752 = !DILocation(line: 1477, column: 15, scope: !3751)
!3753 = !DILocalVariable(name: "_stat", scope: !3751, file: !77, line: 1477, type: !363)
!3754 = !DILocation(line: 1477, column: 37, scope: !3751)
!3755 = !DILocation(line: 1477, column: 75, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3751, file: !77, discriminator: 1)
!3757 = !DILocation(line: 1477, column: 85, scope: !3756)
!3758 = !DILocation(line: 1477, column: 84, scope: !3756)
!3759 = !DILocation(line: 1477, column: 54, scope: !3756)
!3760 = !DILocation(line: 1477, column: 52, scope: !3756)
!3761 = !DILocation(line: 1477, column: 143, scope: !3756)
!3762 = !DILocation(line: 1477, column: 139, scope: !3756)
!3763 = !DILocation(line: 1477, column: 114, scope: !3756)
!3764 = !DILocation(line: 1477, column: 153, scope: !3765)
!3765 = !DILexicalBlockFile(scope: !3766, file: !77, discriminator: 2)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !77, line: 1477, column: 151)
!3767 = distinct !DILexicalBlock(scope: !3751, file: !77, line: 1477, column: 114)
!3768 = !DILocation(line: 1477, column: 210, scope: !3769)
!3769 = !DILexicalBlockFile(scope: !3751, file: !77, discriminator: 3)
!3770 = !DILocation(line: 1477, column: 183, scope: !3769)
!3771 = !DILocation(line: 1477, column: 181, scope: !3769)
!3772 = !DILocation(line: 1477, column: 262, scope: !3769)
!3773 = !DILocation(line: 1477, column: 269, scope: !3769)
!3774 = !DILocation(line: 1477, column: 261, scope: !3769)
!3775 = !DILocation(line: 1477, column: 300, scope: !3776)
!3776 = !DILexicalBlockFile(scope: !3777, file: !77, discriminator: 4)
!3777 = distinct !DILexicalBlock(scope: !3778, file: !77, line: 1477, column: 298)
!3778 = distinct !DILexicalBlock(scope: !3751, file: !77, line: 1477, column: 261)
!3779 = !DILocation(line: 1477, column: 320, scope: !3780)
!3780 = !DILexicalBlockFile(scope: !3781, file: !77, discriminator: 5)
!3781 = distinct !DILexicalBlock(scope: !3751, file: !77, line: 1477, column: 313)
!3782 = !DILocation(line: 1477, column: 337, scope: !3780)
!3783 = !DILocation(line: 1477, column: 351, scope: !3780)
!3784 = !DILocation(line: 1477, column: 314, scope: !3780)
!3785 = !DILocation(line: 1477, column: 313, scope: !3780)
!3786 = !DILocation(line: 1477, column: 368, scope: !3787)
!3787 = !DILexicalBlockFile(scope: !3788, file: !77, discriminator: 6)
!3788 = distinct !DILexicalBlock(scope: !3781, file: !77, line: 1477, column: 358)
!3789 = !DILocation(line: 1477, column: 402, scope: !3787)
!3790 = !DILocation(line: 1477, column: 584, scope: !3791)
!3791 = !DILexicalBlockFile(scope: !3751, file: !77, discriminator: 7)
!3792 = !DILocation(line: 1477, column: 601, scope: !3791)
!3793 = !DILocation(line: 1477, column: 615, scope: !3791)
!3794 = !DILocation(line: 1477, column: 561, scope: !3791)
!3795 = !DILocation(line: 1477, column: 576, scope: !3791)
!3796 = !DILocation(line: 1477, column: 630, scope: !3791)
!3797 = !DILocation(line: 1477, column: 658, scope: !3791)
!3798 = !DILocation(line: 1480, column: 11, scope: !3741)
!3799 = !DILocation(line: 1480, column: 4, scope: !3741)
!3800 = distinct !DISubprogram(name: "VMGuestLib_GetHostMemPhysFreeMB", scope: !77, file: !77, line: 1501, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1503, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3801 = !DILocalVariable(name: "handle", arg: 1, scope: !3800, file: !77, line: 1501, type: !72)
!3802 = !DILocation(line: 1501, column: 50, scope: !3800)
!3803 = !DILocalVariable(name: "hostMemPhysFreeMB", arg: 2, scope: !3800, file: !77, line: 1502, type: !1392)
!3804 = !DILocation(line: 1502, column: 41, scope: !3800)
!3805 = !DILocalVariable(name: "error", scope: !3800, file: !77, line: 1504, type: !270)
!3806 = !DILocation(line: 1504, column: 20, scope: !3800)
!3807 = !DILocation(line: 1505, column: 4, scope: !3800)
!3808 = distinct !{!3808, !3807}
!3809 = !DILocalVariable(name: "_data", scope: !3810, file: !77, line: 1505, type: !71)
!3810 = distinct !DILexicalBlock(scope: !3800, file: !77, line: 1505, column: 7)
!3811 = !DILocation(line: 1505, column: 15, scope: !3810)
!3812 = !DILocalVariable(name: "_stat", scope: !3810, file: !77, line: 1505, type: !363)
!3813 = !DILocation(line: 1505, column: 37, scope: !3810)
!3814 = !DILocation(line: 1505, column: 75, scope: !3815)
!3815 = !DILexicalBlockFile(scope: !3810, file: !77, discriminator: 1)
!3816 = !DILocation(line: 1505, column: 85, scope: !3815)
!3817 = !DILocation(line: 1505, column: 84, scope: !3815)
!3818 = !DILocation(line: 1505, column: 54, scope: !3815)
!3819 = !DILocation(line: 1505, column: 52, scope: !3815)
!3820 = !DILocation(line: 1505, column: 147, scope: !3815)
!3821 = !DILocation(line: 1505, column: 143, scope: !3815)
!3822 = !DILocation(line: 1505, column: 118, scope: !3815)
!3823 = !DILocation(line: 1505, column: 157, scope: !3824)
!3824 = !DILexicalBlockFile(scope: !3825, file: !77, discriminator: 2)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !77, line: 1505, column: 155)
!3826 = distinct !DILexicalBlock(scope: !3810, file: !77, line: 1505, column: 118)
!3827 = !DILocation(line: 1505, column: 214, scope: !3828)
!3828 = !DILexicalBlockFile(scope: !3810, file: !77, discriminator: 3)
!3829 = !DILocation(line: 1505, column: 187, scope: !3828)
!3830 = !DILocation(line: 1505, column: 185, scope: !3828)
!3831 = !DILocation(line: 1505, column: 271, scope: !3828)
!3832 = !DILocation(line: 1505, column: 278, scope: !3828)
!3833 = !DILocation(line: 1505, column: 270, scope: !3828)
!3834 = !DILocation(line: 1505, column: 309, scope: !3835)
!3835 = !DILexicalBlockFile(scope: !3836, file: !77, discriminator: 4)
!3836 = distinct !DILexicalBlock(scope: !3837, file: !77, line: 1505, column: 307)
!3837 = distinct !DILexicalBlock(scope: !3810, file: !77, line: 1505, column: 270)
!3838 = !DILocation(line: 1505, column: 329, scope: !3839)
!3839 = !DILexicalBlockFile(scope: !3840, file: !77, discriminator: 5)
!3840 = distinct !DILexicalBlock(scope: !3810, file: !77, line: 1505, column: 322)
!3841 = !DILocation(line: 1505, column: 346, scope: !3839)
!3842 = !DILocation(line: 1505, column: 364, scope: !3839)
!3843 = !DILocation(line: 1505, column: 323, scope: !3839)
!3844 = !DILocation(line: 1505, column: 322, scope: !3839)
!3845 = !DILocation(line: 1505, column: 381, scope: !3846)
!3846 = !DILexicalBlockFile(scope: !3847, file: !77, discriminator: 6)
!3847 = distinct !DILexicalBlock(scope: !3840, file: !77, line: 1505, column: 371)
!3848 = !DILocation(line: 1505, column: 415, scope: !3846)
!3849 = !DILocation(line: 1505, column: 609, scope: !3850)
!3850 = !DILexicalBlockFile(scope: !3810, file: !77, discriminator: 7)
!3851 = !DILocation(line: 1505, column: 626, scope: !3850)
!3852 = !DILocation(line: 1505, column: 644, scope: !3850)
!3853 = !DILocation(line: 1505, column: 582, scope: !3850)
!3854 = !DILocation(line: 1505, column: 601, scope: !3850)
!3855 = !DILocation(line: 1505, column: 659, scope: !3850)
!3856 = !DILocation(line: 1505, column: 687, scope: !3850)
!3857 = !DILocation(line: 1508, column: 11, scope: !3800)
!3858 = !DILocation(line: 1508, column: 4, scope: !3800)
!3859 = distinct !DISubprogram(name: "VMGuestLib_GetHostMemKernOvhdMB", scope: !77, file: !77, line: 1529, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1531, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3860 = !DILocalVariable(name: "handle", arg: 1, scope: !3859, file: !77, line: 1529, type: !72)
!3861 = !DILocation(line: 1529, column: 50, scope: !3859)
!3862 = !DILocalVariable(name: "hostMemKernOvhdMB", arg: 2, scope: !3859, file: !77, line: 1530, type: !1392)
!3863 = !DILocation(line: 1530, column: 41, scope: !3859)
!3864 = !DILocalVariable(name: "error", scope: !3859, file: !77, line: 1532, type: !270)
!3865 = !DILocation(line: 1532, column: 20, scope: !3859)
!3866 = !DILocation(line: 1533, column: 4, scope: !3859)
!3867 = distinct !{!3867, !3866}
!3868 = !DILocalVariable(name: "_data", scope: !3869, file: !77, line: 1533, type: !71)
!3869 = distinct !DILexicalBlock(scope: !3859, file: !77, line: 1533, column: 7)
!3870 = !DILocation(line: 1533, column: 15, scope: !3869)
!3871 = !DILocalVariable(name: "_stat", scope: !3869, file: !77, line: 1533, type: !363)
!3872 = !DILocation(line: 1533, column: 37, scope: !3869)
!3873 = !DILocation(line: 1533, column: 75, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !3869, file: !77, discriminator: 1)
!3875 = !DILocation(line: 1533, column: 85, scope: !3874)
!3876 = !DILocation(line: 1533, column: 84, scope: !3874)
!3877 = !DILocation(line: 1533, column: 54, scope: !3874)
!3878 = !DILocation(line: 1533, column: 52, scope: !3874)
!3879 = !DILocation(line: 1533, column: 147, scope: !3874)
!3880 = !DILocation(line: 1533, column: 143, scope: !3874)
!3881 = !DILocation(line: 1533, column: 118, scope: !3874)
!3882 = !DILocation(line: 1533, column: 157, scope: !3883)
!3883 = !DILexicalBlockFile(scope: !3884, file: !77, discriminator: 2)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !77, line: 1533, column: 155)
!3885 = distinct !DILexicalBlock(scope: !3869, file: !77, line: 1533, column: 118)
!3886 = !DILocation(line: 1533, column: 214, scope: !3887)
!3887 = !DILexicalBlockFile(scope: !3869, file: !77, discriminator: 3)
!3888 = !DILocation(line: 1533, column: 187, scope: !3887)
!3889 = !DILocation(line: 1533, column: 185, scope: !3887)
!3890 = !DILocation(line: 1533, column: 271, scope: !3887)
!3891 = !DILocation(line: 1533, column: 278, scope: !3887)
!3892 = !DILocation(line: 1533, column: 270, scope: !3887)
!3893 = !DILocation(line: 1533, column: 309, scope: !3894)
!3894 = !DILexicalBlockFile(scope: !3895, file: !77, discriminator: 4)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !77, line: 1533, column: 307)
!3896 = distinct !DILexicalBlock(scope: !3869, file: !77, line: 1533, column: 270)
!3897 = !DILocation(line: 1533, column: 329, scope: !3898)
!3898 = !DILexicalBlockFile(scope: !3899, file: !77, discriminator: 5)
!3899 = distinct !DILexicalBlock(scope: !3869, file: !77, line: 1533, column: 322)
!3900 = !DILocation(line: 1533, column: 346, scope: !3898)
!3901 = !DILocation(line: 1533, column: 364, scope: !3898)
!3902 = !DILocation(line: 1533, column: 323, scope: !3898)
!3903 = !DILocation(line: 1533, column: 322, scope: !3898)
!3904 = !DILocation(line: 1533, column: 381, scope: !3905)
!3905 = !DILexicalBlockFile(scope: !3906, file: !77, discriminator: 6)
!3906 = distinct !DILexicalBlock(scope: !3899, file: !77, line: 1533, column: 371)
!3907 = !DILocation(line: 1533, column: 415, scope: !3905)
!3908 = !DILocation(line: 1533, column: 609, scope: !3909)
!3909 = !DILexicalBlockFile(scope: !3869, file: !77, discriminator: 7)
!3910 = !DILocation(line: 1533, column: 626, scope: !3909)
!3911 = !DILocation(line: 1533, column: 644, scope: !3909)
!3912 = !DILocation(line: 1533, column: 582, scope: !3909)
!3913 = !DILocation(line: 1533, column: 601, scope: !3909)
!3914 = !DILocation(line: 1533, column: 659, scope: !3909)
!3915 = !DILocation(line: 1533, column: 687, scope: !3909)
!3916 = !DILocation(line: 1536, column: 11, scope: !3859)
!3917 = !DILocation(line: 1536, column: 4, scope: !3859)
!3918 = distinct !DISubprogram(name: "VMGuestLib_GetHostMemMappedMB", scope: !77, file: !77, line: 1557, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3919 = !DILocalVariable(name: "handle", arg: 1, scope: !3918, file: !77, line: 1557, type: !72)
!3920 = !DILocation(line: 1557, column: 48, scope: !3918)
!3921 = !DILocalVariable(name: "hostMemMappedMB", arg: 2, scope: !3918, file: !77, line: 1558, type: !1392)
!3922 = !DILocation(line: 1558, column: 39, scope: !3918)
!3923 = !DILocalVariable(name: "error", scope: !3918, file: !77, line: 1560, type: !270)
!3924 = !DILocation(line: 1560, column: 20, scope: !3918)
!3925 = !DILocation(line: 1561, column: 4, scope: !3918)
!3926 = distinct !{!3926, !3925}
!3927 = !DILocalVariable(name: "_data", scope: !3928, file: !77, line: 1561, type: !71)
!3928 = distinct !DILexicalBlock(scope: !3918, file: !77, line: 1561, column: 7)
!3929 = !DILocation(line: 1561, column: 15, scope: !3928)
!3930 = !DILocalVariable(name: "_stat", scope: !3928, file: !77, line: 1561, type: !363)
!3931 = !DILocation(line: 1561, column: 37, scope: !3928)
!3932 = !DILocation(line: 1561, column: 75, scope: !3933)
!3933 = !DILexicalBlockFile(scope: !3928, file: !77, discriminator: 1)
!3934 = !DILocation(line: 1561, column: 85, scope: !3933)
!3935 = !DILocation(line: 1561, column: 84, scope: !3933)
!3936 = !DILocation(line: 1561, column: 54, scope: !3933)
!3937 = !DILocation(line: 1561, column: 52, scope: !3933)
!3938 = !DILocation(line: 1561, column: 145, scope: !3933)
!3939 = !DILocation(line: 1561, column: 141, scope: !3933)
!3940 = !DILocation(line: 1561, column: 116, scope: !3933)
!3941 = !DILocation(line: 1561, column: 155, scope: !3942)
!3942 = !DILexicalBlockFile(scope: !3943, file: !77, discriminator: 2)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !77, line: 1561, column: 153)
!3944 = distinct !DILexicalBlock(scope: !3928, file: !77, line: 1561, column: 116)
!3945 = !DILocation(line: 1561, column: 212, scope: !3946)
!3946 = !DILexicalBlockFile(scope: !3928, file: !77, discriminator: 3)
!3947 = !DILocation(line: 1561, column: 185, scope: !3946)
!3948 = !DILocation(line: 1561, column: 183, scope: !3946)
!3949 = !DILocation(line: 1561, column: 266, scope: !3946)
!3950 = !DILocation(line: 1561, column: 273, scope: !3946)
!3951 = !DILocation(line: 1561, column: 265, scope: !3946)
!3952 = !DILocation(line: 1561, column: 304, scope: !3953)
!3953 = !DILexicalBlockFile(scope: !3954, file: !77, discriminator: 4)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !77, line: 1561, column: 302)
!3955 = distinct !DILexicalBlock(scope: !3928, file: !77, line: 1561, column: 265)
!3956 = !DILocation(line: 1561, column: 324, scope: !3957)
!3957 = !DILexicalBlockFile(scope: !3958, file: !77, discriminator: 5)
!3958 = distinct !DILexicalBlock(scope: !3928, file: !77, line: 1561, column: 317)
!3959 = !DILocation(line: 1561, column: 341, scope: !3957)
!3960 = !DILocation(line: 1561, column: 357, scope: !3957)
!3961 = !DILocation(line: 1561, column: 318, scope: !3957)
!3962 = !DILocation(line: 1561, column: 317, scope: !3957)
!3963 = !DILocation(line: 1561, column: 374, scope: !3964)
!3964 = !DILexicalBlockFile(scope: !3965, file: !77, discriminator: 6)
!3965 = distinct !DILexicalBlock(scope: !3958, file: !77, line: 1561, column: 364)
!3966 = !DILocation(line: 1561, column: 408, scope: !3964)
!3967 = !DILocation(line: 1561, column: 596, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !3928, file: !77, discriminator: 7)
!3969 = !DILocation(line: 1561, column: 613, scope: !3968)
!3970 = !DILocation(line: 1561, column: 629, scope: !3968)
!3971 = !DILocation(line: 1561, column: 571, scope: !3968)
!3972 = !DILocation(line: 1561, column: 588, scope: !3968)
!3973 = !DILocation(line: 1561, column: 644, scope: !3968)
!3974 = !DILocation(line: 1561, column: 672, scope: !3968)
!3975 = !DILocation(line: 1564, column: 11, scope: !3918)
!3976 = !DILocation(line: 1564, column: 4, scope: !3918)
!3977 = distinct !DISubprogram(name: "VMGuestLib_GetHostMemUnmappedMB", scope: !77, file: !77, line: 1585, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1587, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!3978 = !DILocalVariable(name: "handle", arg: 1, scope: !3977, file: !77, line: 1585, type: !72)
!3979 = !DILocation(line: 1585, column: 50, scope: !3977)
!3980 = !DILocalVariable(name: "hostMemUnmappedMB", arg: 2, scope: !3977, file: !77, line: 1586, type: !1392)
!3981 = !DILocation(line: 1586, column: 41, scope: !3977)
!3982 = !DILocalVariable(name: "error", scope: !3977, file: !77, line: 1588, type: !270)
!3983 = !DILocation(line: 1588, column: 20, scope: !3977)
!3984 = !DILocation(line: 1589, column: 4, scope: !3977)
!3985 = distinct !{!3985, !3984}
!3986 = !DILocalVariable(name: "_data", scope: !3987, file: !77, line: 1589, type: !71)
!3987 = distinct !DILexicalBlock(scope: !3977, file: !77, line: 1589, column: 7)
!3988 = !DILocation(line: 1589, column: 15, scope: !3987)
!3989 = !DILocalVariable(name: "_stat", scope: !3987, file: !77, line: 1589, type: !363)
!3990 = !DILocation(line: 1589, column: 37, scope: !3987)
!3991 = !DILocation(line: 1589, column: 75, scope: !3992)
!3992 = !DILexicalBlockFile(scope: !3987, file: !77, discriminator: 1)
!3993 = !DILocation(line: 1589, column: 85, scope: !3992)
!3994 = !DILocation(line: 1589, column: 84, scope: !3992)
!3995 = !DILocation(line: 1589, column: 54, scope: !3992)
!3996 = !DILocation(line: 1589, column: 52, scope: !3992)
!3997 = !DILocation(line: 1589, column: 147, scope: !3992)
!3998 = !DILocation(line: 1589, column: 143, scope: !3992)
!3999 = !DILocation(line: 1589, column: 118, scope: !3992)
!4000 = !DILocation(line: 1589, column: 157, scope: !4001)
!4001 = !DILexicalBlockFile(scope: !4002, file: !77, discriminator: 2)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !77, line: 1589, column: 155)
!4003 = distinct !DILexicalBlock(scope: !3987, file: !77, line: 1589, column: 118)
!4004 = !DILocation(line: 1589, column: 214, scope: !4005)
!4005 = !DILexicalBlockFile(scope: !3987, file: !77, discriminator: 3)
!4006 = !DILocation(line: 1589, column: 187, scope: !4005)
!4007 = !DILocation(line: 1589, column: 185, scope: !4005)
!4008 = !DILocation(line: 1589, column: 270, scope: !4005)
!4009 = !DILocation(line: 1589, column: 277, scope: !4005)
!4010 = !DILocation(line: 1589, column: 269, scope: !4005)
!4011 = !DILocation(line: 1589, column: 308, scope: !4012)
!4012 = !DILexicalBlockFile(scope: !4013, file: !77, discriminator: 4)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !77, line: 1589, column: 306)
!4014 = distinct !DILexicalBlock(scope: !3987, file: !77, line: 1589, column: 269)
!4015 = !DILocation(line: 1589, column: 328, scope: !4016)
!4016 = !DILexicalBlockFile(scope: !4017, file: !77, discriminator: 5)
!4017 = distinct !DILexicalBlock(scope: !3987, file: !77, line: 1589, column: 321)
!4018 = !DILocation(line: 1589, column: 345, scope: !4016)
!4019 = !DILocation(line: 1589, column: 363, scope: !4016)
!4020 = !DILocation(line: 1589, column: 322, scope: !4016)
!4021 = !DILocation(line: 1589, column: 321, scope: !4016)
!4022 = !DILocation(line: 1589, column: 380, scope: !4023)
!4023 = !DILexicalBlockFile(scope: !4024, file: !77, discriminator: 6)
!4024 = distinct !DILexicalBlock(scope: !4017, file: !77, line: 1589, column: 370)
!4025 = !DILocation(line: 1589, column: 414, scope: !4023)
!4026 = !DILocation(line: 1589, column: 608, scope: !4027)
!4027 = !DILexicalBlockFile(scope: !3987, file: !77, discriminator: 7)
!4028 = !DILocation(line: 1589, column: 625, scope: !4027)
!4029 = !DILocation(line: 1589, column: 643, scope: !4027)
!4030 = !DILocation(line: 1589, column: 581, scope: !4027)
!4031 = !DILocation(line: 1589, column: 600, scope: !4027)
!4032 = !DILocation(line: 1589, column: 658, scope: !4027)
!4033 = !DILocation(line: 1589, column: 686, scope: !4027)
!4034 = !DILocation(line: 1592, column: 11, scope: !3977)
!4035 = !DILocation(line: 1592, column: 4, scope: !3977)
!4036 = distinct !DISubprogram(name: "VMGuestLib_GetMemZippedMB", scope: !77, file: !77, line: 1613, type: !969, isLocal: false, isDefinition: true, scopeLine: 1615, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!4037 = !DILocalVariable(name: "handle", arg: 1, scope: !4036, file: !77, line: 1613, type: !72)
!4038 = !DILocation(line: 1613, column: 44, scope: !4036)
!4039 = !DILocalVariable(name: "memZippedMB", arg: 2, scope: !4036, file: !77, line: 1614, type: !971)
!4040 = !DILocation(line: 1614, column: 35, scope: !4036)
!4041 = !DILocalVariable(name: "error", scope: !4036, file: !77, line: 1616, type: !270)
!4042 = !DILocation(line: 1616, column: 20, scope: !4036)
!4043 = !DILocation(line: 1617, column: 4, scope: !4036)
!4044 = distinct !{!4044, !4043}
!4045 = !DILocalVariable(name: "_data", scope: !4046, file: !77, line: 1617, type: !71)
!4046 = distinct !DILexicalBlock(scope: !4036, file: !77, line: 1617, column: 7)
!4047 = !DILocation(line: 1617, column: 15, scope: !4046)
!4048 = !DILocalVariable(name: "_stat", scope: !4046, file: !77, line: 1617, type: !363)
!4049 = !DILocation(line: 1617, column: 37, scope: !4046)
!4050 = !DILocation(line: 1617, column: 75, scope: !4051)
!4051 = !DILexicalBlockFile(scope: !4046, file: !77, discriminator: 1)
!4052 = !DILocation(line: 1617, column: 85, scope: !4051)
!4053 = !DILocation(line: 1617, column: 84, scope: !4051)
!4054 = !DILocation(line: 1617, column: 54, scope: !4051)
!4055 = !DILocation(line: 1617, column: 52, scope: !4051)
!4056 = !DILocation(line: 1617, column: 141, scope: !4051)
!4057 = !DILocation(line: 1617, column: 137, scope: !4051)
!4058 = !DILocation(line: 1617, column: 112, scope: !4051)
!4059 = !DILocation(line: 1617, column: 151, scope: !4060)
!4060 = !DILexicalBlockFile(scope: !4061, file: !77, discriminator: 2)
!4061 = distinct !DILexicalBlock(scope: !4062, file: !77, line: 1617, column: 149)
!4062 = distinct !DILexicalBlock(scope: !4046, file: !77, line: 1617, column: 112)
!4063 = !DILocation(line: 1617, column: 208, scope: !4064)
!4064 = !DILexicalBlockFile(scope: !4046, file: !77, discriminator: 3)
!4065 = !DILocation(line: 1617, column: 181, scope: !4064)
!4066 = !DILocation(line: 1617, column: 179, scope: !4064)
!4067 = !DILocation(line: 1617, column: 257, scope: !4064)
!4068 = !DILocation(line: 1617, column: 264, scope: !4064)
!4069 = !DILocation(line: 1617, column: 256, scope: !4064)
!4070 = !DILocation(line: 1617, column: 295, scope: !4071)
!4071 = !DILexicalBlockFile(scope: !4072, file: !77, discriminator: 4)
!4072 = distinct !DILexicalBlock(scope: !4073, file: !77, line: 1617, column: 293)
!4073 = distinct !DILexicalBlock(scope: !4046, file: !77, line: 1617, column: 256)
!4074 = !DILocation(line: 1617, column: 315, scope: !4075)
!4075 = !DILexicalBlockFile(scope: !4076, file: !77, discriminator: 5)
!4076 = distinct !DILexicalBlock(scope: !4046, file: !77, line: 1617, column: 308)
!4077 = !DILocation(line: 1617, column: 332, scope: !4075)
!4078 = !DILocation(line: 1617, column: 344, scope: !4075)
!4079 = !DILocation(line: 1617, column: 309, scope: !4075)
!4080 = !DILocation(line: 1617, column: 308, scope: !4075)
!4081 = !DILocation(line: 1617, column: 361, scope: !4082)
!4082 = !DILexicalBlockFile(scope: !4083, file: !77, discriminator: 6)
!4083 = distinct !DILexicalBlock(scope: !4076, file: !77, line: 1617, column: 351)
!4084 = !DILocation(line: 1617, column: 395, scope: !4082)
!4085 = !DILocation(line: 1617, column: 571, scope: !4086)
!4086 = !DILexicalBlockFile(scope: !4046, file: !77, discriminator: 7)
!4087 = !DILocation(line: 1617, column: 588, scope: !4086)
!4088 = !DILocation(line: 1617, column: 600, scope: !4086)
!4089 = !DILocation(line: 1617, column: 550, scope: !4086)
!4090 = !DILocation(line: 1617, column: 563, scope: !4086)
!4091 = !DILocation(line: 1617, column: 615, scope: !4086)
!4092 = !DILocation(line: 1617, column: 643, scope: !4086)
!4093 = !DILocation(line: 1620, column: 11, scope: !4036)
!4094 = !DILocation(line: 1620, column: 4, scope: !4036)
!4095 = distinct !DISubprogram(name: "VMGuestLib_GetMemZipSavedMB", scope: !77, file: !77, line: 1641, type: !969, isLocal: false, isDefinition: true, scopeLine: 1643, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!4096 = !DILocalVariable(name: "handle", arg: 1, scope: !4095, file: !77, line: 1641, type: !72)
!4097 = !DILocation(line: 1641, column: 46, scope: !4095)
!4098 = !DILocalVariable(name: "memZipSavedMB", arg: 2, scope: !4095, file: !77, line: 1642, type: !971)
!4099 = !DILocation(line: 1642, column: 37, scope: !4095)
!4100 = !DILocalVariable(name: "error", scope: !4095, file: !77, line: 1644, type: !270)
!4101 = !DILocation(line: 1644, column: 20, scope: !4095)
!4102 = !DILocation(line: 1645, column: 4, scope: !4095)
!4103 = distinct !{!4103, !4102}
!4104 = !DILocalVariable(name: "_data", scope: !4105, file: !77, line: 1645, type: !71)
!4105 = distinct !DILexicalBlock(scope: !4095, file: !77, line: 1645, column: 7)
!4106 = !DILocation(line: 1645, column: 15, scope: !4105)
!4107 = !DILocalVariable(name: "_stat", scope: !4105, file: !77, line: 1645, type: !363)
!4108 = !DILocation(line: 1645, column: 37, scope: !4105)
!4109 = !DILocation(line: 1645, column: 75, scope: !4110)
!4110 = !DILexicalBlockFile(scope: !4105, file: !77, discriminator: 1)
!4111 = !DILocation(line: 1645, column: 85, scope: !4110)
!4112 = !DILocation(line: 1645, column: 84, scope: !4110)
!4113 = !DILocation(line: 1645, column: 54, scope: !4110)
!4114 = !DILocation(line: 1645, column: 52, scope: !4110)
!4115 = !DILocation(line: 1645, column: 143, scope: !4110)
!4116 = !DILocation(line: 1645, column: 139, scope: !4110)
!4117 = !DILocation(line: 1645, column: 114, scope: !4110)
!4118 = !DILocation(line: 1645, column: 153, scope: !4119)
!4119 = !DILexicalBlockFile(scope: !4120, file: !77, discriminator: 2)
!4120 = distinct !DILexicalBlock(scope: !4121, file: !77, line: 1645, column: 151)
!4121 = distinct !DILexicalBlock(scope: !4105, file: !77, line: 1645, column: 114)
!4122 = !DILocation(line: 1645, column: 210, scope: !4123)
!4123 = !DILexicalBlockFile(scope: !4105, file: !77, discriminator: 3)
!4124 = !DILocation(line: 1645, column: 183, scope: !4123)
!4125 = !DILocation(line: 1645, column: 181, scope: !4123)
!4126 = !DILocation(line: 1645, column: 261, scope: !4123)
!4127 = !DILocation(line: 1645, column: 268, scope: !4123)
!4128 = !DILocation(line: 1645, column: 260, scope: !4123)
!4129 = !DILocation(line: 1645, column: 299, scope: !4130)
!4130 = !DILexicalBlockFile(scope: !4131, file: !77, discriminator: 4)
!4131 = distinct !DILexicalBlock(scope: !4132, file: !77, line: 1645, column: 297)
!4132 = distinct !DILexicalBlock(scope: !4105, file: !77, line: 1645, column: 260)
!4133 = !DILocation(line: 1645, column: 319, scope: !4134)
!4134 = !DILexicalBlockFile(scope: !4135, file: !77, discriminator: 5)
!4135 = distinct !DILexicalBlock(scope: !4105, file: !77, line: 1645, column: 312)
!4136 = !DILocation(line: 1645, column: 336, scope: !4134)
!4137 = !DILocation(line: 1645, column: 350, scope: !4134)
!4138 = !DILocation(line: 1645, column: 313, scope: !4134)
!4139 = !DILocation(line: 1645, column: 312, scope: !4134)
!4140 = !DILocation(line: 1645, column: 367, scope: !4141)
!4141 = !DILexicalBlockFile(scope: !4142, file: !77, discriminator: 6)
!4142 = distinct !DILexicalBlock(scope: !4135, file: !77, line: 1645, column: 357)
!4143 = !DILocation(line: 1645, column: 401, scope: !4141)
!4144 = !DILocation(line: 1645, column: 583, scope: !4145)
!4145 = !DILexicalBlockFile(scope: !4105, file: !77, discriminator: 7)
!4146 = !DILocation(line: 1645, column: 600, scope: !4145)
!4147 = !DILocation(line: 1645, column: 614, scope: !4145)
!4148 = !DILocation(line: 1645, column: 560, scope: !4145)
!4149 = !DILocation(line: 1645, column: 575, scope: !4145)
!4150 = !DILocation(line: 1645, column: 629, scope: !4145)
!4151 = !DILocation(line: 1645, column: 657, scope: !4145)
!4152 = !DILocation(line: 1648, column: 11, scope: !4095)
!4153 = !DILocation(line: 1648, column: 4, scope: !4095)
!4154 = distinct !DISubprogram(name: "VMGuestLib_GetMemLLSwappedMB", scope: !77, file: !77, line: 1669, type: !969, isLocal: false, isDefinition: true, scopeLine: 1671, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!4155 = !DILocalVariable(name: "handle", arg: 1, scope: !4154, file: !77, line: 1669, type: !72)
!4156 = !DILocation(line: 1669, column: 47, scope: !4154)
!4157 = !DILocalVariable(name: "memLLSwappedMB", arg: 2, scope: !4154, file: !77, line: 1670, type: !971)
!4158 = !DILocation(line: 1670, column: 38, scope: !4154)
!4159 = !DILocalVariable(name: "error", scope: !4154, file: !77, line: 1672, type: !270)
!4160 = !DILocation(line: 1672, column: 20, scope: !4154)
!4161 = !DILocation(line: 1673, column: 4, scope: !4154)
!4162 = distinct !{!4162, !4161}
!4163 = !DILocalVariable(name: "_data", scope: !4164, file: !77, line: 1673, type: !71)
!4164 = distinct !DILexicalBlock(scope: !4154, file: !77, line: 1673, column: 7)
!4165 = !DILocation(line: 1673, column: 15, scope: !4164)
!4166 = !DILocalVariable(name: "_stat", scope: !4164, file: !77, line: 1673, type: !363)
!4167 = !DILocation(line: 1673, column: 37, scope: !4164)
!4168 = !DILocation(line: 1673, column: 75, scope: !4169)
!4169 = !DILexicalBlockFile(scope: !4164, file: !77, discriminator: 1)
!4170 = !DILocation(line: 1673, column: 85, scope: !4169)
!4171 = !DILocation(line: 1673, column: 84, scope: !4169)
!4172 = !DILocation(line: 1673, column: 54, scope: !4169)
!4173 = !DILocation(line: 1673, column: 52, scope: !4169)
!4174 = !DILocation(line: 1673, column: 144, scope: !4169)
!4175 = !DILocation(line: 1673, column: 140, scope: !4169)
!4176 = !DILocation(line: 1673, column: 115, scope: !4169)
!4177 = !DILocation(line: 1673, column: 154, scope: !4178)
!4178 = !DILexicalBlockFile(scope: !4179, file: !77, discriminator: 2)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !77, line: 1673, column: 152)
!4180 = distinct !DILexicalBlock(scope: !4164, file: !77, line: 1673, column: 115)
!4181 = !DILocation(line: 1673, column: 211, scope: !4182)
!4182 = !DILexicalBlockFile(scope: !4164, file: !77, discriminator: 3)
!4183 = !DILocation(line: 1673, column: 184, scope: !4182)
!4184 = !DILocation(line: 1673, column: 182, scope: !4182)
!4185 = !DILocation(line: 1673, column: 263, scope: !4182)
!4186 = !DILocation(line: 1673, column: 270, scope: !4182)
!4187 = !DILocation(line: 1673, column: 262, scope: !4182)
!4188 = !DILocation(line: 1673, column: 301, scope: !4189)
!4189 = !DILexicalBlockFile(scope: !4190, file: !77, discriminator: 4)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !77, line: 1673, column: 299)
!4191 = distinct !DILexicalBlock(scope: !4164, file: !77, line: 1673, column: 262)
!4192 = !DILocation(line: 1673, column: 321, scope: !4193)
!4193 = !DILexicalBlockFile(scope: !4194, file: !77, discriminator: 5)
!4194 = distinct !DILexicalBlock(scope: !4164, file: !77, line: 1673, column: 314)
!4195 = !DILocation(line: 1673, column: 338, scope: !4193)
!4196 = !DILocation(line: 1673, column: 353, scope: !4193)
!4197 = !DILocation(line: 1673, column: 315, scope: !4193)
!4198 = !DILocation(line: 1673, column: 314, scope: !4193)
!4199 = !DILocation(line: 1673, column: 370, scope: !4200)
!4200 = !DILexicalBlockFile(scope: !4201, file: !77, discriminator: 6)
!4201 = distinct !DILexicalBlock(scope: !4194, file: !77, line: 1673, column: 360)
!4202 = !DILocation(line: 1673, column: 404, scope: !4200)
!4203 = !DILocation(line: 1673, column: 589, scope: !4204)
!4204 = !DILexicalBlockFile(scope: !4164, file: !77, discriminator: 7)
!4205 = !DILocation(line: 1673, column: 606, scope: !4204)
!4206 = !DILocation(line: 1673, column: 621, scope: !4204)
!4207 = !DILocation(line: 1673, column: 565, scope: !4204)
!4208 = !DILocation(line: 1673, column: 581, scope: !4204)
!4209 = !DILocation(line: 1673, column: 636, scope: !4204)
!4210 = !DILocation(line: 1673, column: 664, scope: !4204)
!4211 = !DILocation(line: 1676, column: 11, scope: !4154)
!4212 = !DILocation(line: 1676, column: 4, scope: !4154)
!4213 = distinct !DISubprogram(name: "VMGuestLib_GetMemSwapTargetMB", scope: !77, file: !77, line: 1697, type: !969, isLocal: false, isDefinition: true, scopeLine: 1699, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!4214 = !DILocalVariable(name: "handle", arg: 1, scope: !4213, file: !77, line: 1697, type: !72)
!4215 = !DILocation(line: 1697, column: 48, scope: !4213)
!4216 = !DILocalVariable(name: "memSwapTargetMB", arg: 2, scope: !4213, file: !77, line: 1698, type: !971)
!4217 = !DILocation(line: 1698, column: 39, scope: !4213)
!4218 = !DILocalVariable(name: "error", scope: !4213, file: !77, line: 1700, type: !270)
!4219 = !DILocation(line: 1700, column: 20, scope: !4213)
!4220 = !DILocation(line: 1701, column: 4, scope: !4213)
!4221 = distinct !{!4221, !4220}
!4222 = !DILocalVariable(name: "_data", scope: !4223, file: !77, line: 1701, type: !71)
!4223 = distinct !DILexicalBlock(scope: !4213, file: !77, line: 1701, column: 7)
!4224 = !DILocation(line: 1701, column: 15, scope: !4223)
!4225 = !DILocalVariable(name: "_stat", scope: !4223, file: !77, line: 1701, type: !363)
!4226 = !DILocation(line: 1701, column: 37, scope: !4223)
!4227 = !DILocation(line: 1701, column: 75, scope: !4228)
!4228 = !DILexicalBlockFile(scope: !4223, file: !77, discriminator: 1)
!4229 = !DILocation(line: 1701, column: 85, scope: !4228)
!4230 = !DILocation(line: 1701, column: 84, scope: !4228)
!4231 = !DILocation(line: 1701, column: 54, scope: !4228)
!4232 = !DILocation(line: 1701, column: 52, scope: !4228)
!4233 = !DILocation(line: 1701, column: 145, scope: !4228)
!4234 = !DILocation(line: 1701, column: 141, scope: !4228)
!4235 = !DILocation(line: 1701, column: 116, scope: !4228)
!4236 = !DILocation(line: 1701, column: 155, scope: !4237)
!4237 = !DILexicalBlockFile(scope: !4238, file: !77, discriminator: 2)
!4238 = distinct !DILexicalBlock(scope: !4239, file: !77, line: 1701, column: 153)
!4239 = distinct !DILexicalBlock(scope: !4223, file: !77, line: 1701, column: 116)
!4240 = !DILocation(line: 1701, column: 212, scope: !4241)
!4241 = !DILexicalBlockFile(scope: !4223, file: !77, discriminator: 3)
!4242 = !DILocation(line: 1701, column: 185, scope: !4241)
!4243 = !DILocation(line: 1701, column: 183, scope: !4241)
!4244 = !DILocation(line: 1701, column: 266, scope: !4241)
!4245 = !DILocation(line: 1701, column: 273, scope: !4241)
!4246 = !DILocation(line: 1701, column: 265, scope: !4241)
!4247 = !DILocation(line: 1701, column: 304, scope: !4248)
!4248 = !DILexicalBlockFile(scope: !4249, file: !77, discriminator: 4)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !77, line: 1701, column: 302)
!4250 = distinct !DILexicalBlock(scope: !4223, file: !77, line: 1701, column: 265)
!4251 = !DILocation(line: 1701, column: 324, scope: !4252)
!4252 = !DILexicalBlockFile(scope: !4253, file: !77, discriminator: 5)
!4253 = distinct !DILexicalBlock(scope: !4223, file: !77, line: 1701, column: 317)
!4254 = !DILocation(line: 1701, column: 341, scope: !4252)
!4255 = !DILocation(line: 1701, column: 357, scope: !4252)
!4256 = !DILocation(line: 1701, column: 318, scope: !4252)
!4257 = !DILocation(line: 1701, column: 317, scope: !4252)
!4258 = !DILocation(line: 1701, column: 374, scope: !4259)
!4259 = !DILexicalBlockFile(scope: !4260, file: !77, discriminator: 6)
!4260 = distinct !DILexicalBlock(scope: !4253, file: !77, line: 1701, column: 364)
!4261 = !DILocation(line: 1701, column: 408, scope: !4259)
!4262 = !DILocation(line: 1701, column: 596, scope: !4263)
!4263 = !DILexicalBlockFile(scope: !4223, file: !77, discriminator: 7)
!4264 = !DILocation(line: 1701, column: 613, scope: !4263)
!4265 = !DILocation(line: 1701, column: 629, scope: !4263)
!4266 = !DILocation(line: 1701, column: 571, scope: !4263)
!4267 = !DILocation(line: 1701, column: 588, scope: !4263)
!4268 = !DILocation(line: 1701, column: 644, scope: !4263)
!4269 = !DILocation(line: 1701, column: 672, scope: !4263)
!4270 = !DILocation(line: 1704, column: 11, scope: !4213)
!4271 = !DILocation(line: 1704, column: 4, scope: !4213)
!4272 = distinct !DISubprogram(name: "VMGuestLib_GetMemBalloonTargetMB", scope: !77, file: !77, line: 1725, type: !969, isLocal: false, isDefinition: true, scopeLine: 1727, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!4273 = !DILocalVariable(name: "handle", arg: 1, scope: !4272, file: !77, line: 1725, type: !72)
!4274 = !DILocation(line: 1725, column: 51, scope: !4272)
!4275 = !DILocalVariable(name: "memBalloonTargetMB", arg: 2, scope: !4272, file: !77, line: 1726, type: !971)
!4276 = !DILocation(line: 1726, column: 42, scope: !4272)
!4277 = !DILocalVariable(name: "error", scope: !4272, file: !77, line: 1728, type: !270)
!4278 = !DILocation(line: 1728, column: 20, scope: !4272)
!4279 = !DILocation(line: 1729, column: 4, scope: !4272)
!4280 = distinct !{!4280, !4279}
!4281 = !DILocalVariable(name: "_data", scope: !4282, file: !77, line: 1729, type: !71)
!4282 = distinct !DILexicalBlock(scope: !4272, file: !77, line: 1729, column: 7)
!4283 = !DILocation(line: 1729, column: 15, scope: !4282)
!4284 = !DILocalVariable(name: "_stat", scope: !4282, file: !77, line: 1729, type: !363)
!4285 = !DILocation(line: 1729, column: 37, scope: !4282)
!4286 = !DILocation(line: 1729, column: 75, scope: !4287)
!4287 = !DILexicalBlockFile(scope: !4282, file: !77, discriminator: 1)
!4288 = !DILocation(line: 1729, column: 85, scope: !4287)
!4289 = !DILocation(line: 1729, column: 84, scope: !4287)
!4290 = !DILocation(line: 1729, column: 54, scope: !4287)
!4291 = !DILocation(line: 1729, column: 52, scope: !4287)
!4292 = !DILocation(line: 1729, column: 148, scope: !4287)
!4293 = !DILocation(line: 1729, column: 144, scope: !4287)
!4294 = !DILocation(line: 1729, column: 119, scope: !4287)
!4295 = !DILocation(line: 1729, column: 158, scope: !4296)
!4296 = !DILexicalBlockFile(scope: !4297, file: !77, discriminator: 2)
!4297 = distinct !DILexicalBlock(scope: !4298, file: !77, line: 1729, column: 156)
!4298 = distinct !DILexicalBlock(scope: !4282, file: !77, line: 1729, column: 119)
!4299 = !DILocation(line: 1729, column: 215, scope: !4300)
!4300 = !DILexicalBlockFile(scope: !4282, file: !77, discriminator: 3)
!4301 = !DILocation(line: 1729, column: 188, scope: !4300)
!4302 = !DILocation(line: 1729, column: 186, scope: !4300)
!4303 = !DILocation(line: 1729, column: 272, scope: !4300)
!4304 = !DILocation(line: 1729, column: 279, scope: !4300)
!4305 = !DILocation(line: 1729, column: 271, scope: !4300)
!4306 = !DILocation(line: 1729, column: 310, scope: !4307)
!4307 = !DILexicalBlockFile(scope: !4308, file: !77, discriminator: 4)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !77, line: 1729, column: 308)
!4309 = distinct !DILexicalBlock(scope: !4282, file: !77, line: 1729, column: 271)
!4310 = !DILocation(line: 1729, column: 330, scope: !4311)
!4311 = !DILexicalBlockFile(scope: !4312, file: !77, discriminator: 5)
!4312 = distinct !DILexicalBlock(scope: !4282, file: !77, line: 1729, column: 323)
!4313 = !DILocation(line: 1729, column: 347, scope: !4311)
!4314 = !DILocation(line: 1729, column: 366, scope: !4311)
!4315 = !DILocation(line: 1729, column: 324, scope: !4311)
!4316 = !DILocation(line: 1729, column: 323, scope: !4311)
!4317 = !DILocation(line: 1729, column: 383, scope: !4318)
!4318 = !DILexicalBlockFile(scope: !4319, file: !77, discriminator: 6)
!4319 = distinct !DILexicalBlock(scope: !4312, file: !77, line: 1729, column: 373)
!4320 = !DILocation(line: 1729, column: 417, scope: !4318)
!4321 = !DILocation(line: 1729, column: 614, scope: !4322)
!4322 = !DILexicalBlockFile(scope: !4282, file: !77, discriminator: 7)
!4323 = !DILocation(line: 1729, column: 631, scope: !4322)
!4324 = !DILocation(line: 1729, column: 650, scope: !4322)
!4325 = !DILocation(line: 1729, column: 586, scope: !4322)
!4326 = !DILocation(line: 1729, column: 606, scope: !4322)
!4327 = !DILocation(line: 1729, column: 665, scope: !4322)
!4328 = !DILocation(line: 1729, column: 693, scope: !4322)
!4329 = !DILocation(line: 1732, column: 11, scope: !4272)
!4330 = !DILocation(line: 1732, column: 4, scope: !4272)
!4331 = distinct !DISubprogram(name: "VMGuestLib_GetMemBalloonMaxMB", scope: !77, file: !77, line: 1753, type: !969, isLocal: false, isDefinition: true, scopeLine: 1755, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!4332 = !DILocalVariable(name: "handle", arg: 1, scope: !4331, file: !77, line: 1753, type: !72)
!4333 = !DILocation(line: 1753, column: 48, scope: !4331)
!4334 = !DILocalVariable(name: "memBalloonMaxMB", arg: 2, scope: !4331, file: !77, line: 1754, type: !971)
!4335 = !DILocation(line: 1754, column: 39, scope: !4331)
!4336 = !DILocalVariable(name: "error", scope: !4331, file: !77, line: 1756, type: !270)
!4337 = !DILocation(line: 1756, column: 20, scope: !4331)
!4338 = !DILocation(line: 1757, column: 4, scope: !4331)
!4339 = distinct !{!4339, !4338}
!4340 = !DILocalVariable(name: "_data", scope: !4341, file: !77, line: 1757, type: !71)
!4341 = distinct !DILexicalBlock(scope: !4331, file: !77, line: 1757, column: 7)
!4342 = !DILocation(line: 1757, column: 15, scope: !4341)
!4343 = !DILocalVariable(name: "_stat", scope: !4341, file: !77, line: 1757, type: !363)
!4344 = !DILocation(line: 1757, column: 37, scope: !4341)
!4345 = !DILocation(line: 1757, column: 75, scope: !4346)
!4346 = !DILexicalBlockFile(scope: !4341, file: !77, discriminator: 1)
!4347 = !DILocation(line: 1757, column: 85, scope: !4346)
!4348 = !DILocation(line: 1757, column: 84, scope: !4346)
!4349 = !DILocation(line: 1757, column: 54, scope: !4346)
!4350 = !DILocation(line: 1757, column: 52, scope: !4346)
!4351 = !DILocation(line: 1757, column: 145, scope: !4346)
!4352 = !DILocation(line: 1757, column: 141, scope: !4346)
!4353 = !DILocation(line: 1757, column: 116, scope: !4346)
!4354 = !DILocation(line: 1757, column: 155, scope: !4355)
!4355 = !DILexicalBlockFile(scope: !4356, file: !77, discriminator: 2)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !77, line: 1757, column: 153)
!4357 = distinct !DILexicalBlock(scope: !4341, file: !77, line: 1757, column: 116)
!4358 = !DILocation(line: 1757, column: 212, scope: !4359)
!4359 = !DILexicalBlockFile(scope: !4341, file: !77, discriminator: 3)
!4360 = !DILocation(line: 1757, column: 185, scope: !4359)
!4361 = !DILocation(line: 1757, column: 183, scope: !4359)
!4362 = !DILocation(line: 1757, column: 266, scope: !4359)
!4363 = !DILocation(line: 1757, column: 273, scope: !4359)
!4364 = !DILocation(line: 1757, column: 265, scope: !4359)
!4365 = !DILocation(line: 1757, column: 304, scope: !4366)
!4366 = !DILexicalBlockFile(scope: !4367, file: !77, discriminator: 4)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !77, line: 1757, column: 302)
!4368 = distinct !DILexicalBlock(scope: !4341, file: !77, line: 1757, column: 265)
!4369 = !DILocation(line: 1757, column: 324, scope: !4370)
!4370 = !DILexicalBlockFile(scope: !4371, file: !77, discriminator: 5)
!4371 = distinct !DILexicalBlock(scope: !4341, file: !77, line: 1757, column: 317)
!4372 = !DILocation(line: 1757, column: 341, scope: !4370)
!4373 = !DILocation(line: 1757, column: 357, scope: !4370)
!4374 = !DILocation(line: 1757, column: 318, scope: !4370)
!4375 = !DILocation(line: 1757, column: 317, scope: !4370)
!4376 = !DILocation(line: 1757, column: 374, scope: !4377)
!4377 = !DILexicalBlockFile(scope: !4378, file: !77, discriminator: 6)
!4378 = distinct !DILexicalBlock(scope: !4371, file: !77, line: 1757, column: 364)
!4379 = !DILocation(line: 1757, column: 408, scope: !4377)
!4380 = !DILocation(line: 1757, column: 596, scope: !4381)
!4381 = !DILexicalBlockFile(scope: !4341, file: !77, discriminator: 7)
!4382 = !DILocation(line: 1757, column: 613, scope: !4381)
!4383 = !DILocation(line: 1757, column: 629, scope: !4381)
!4384 = !DILocation(line: 1757, column: 571, scope: !4381)
!4385 = !DILocation(line: 1757, column: 588, scope: !4381)
!4386 = !DILocation(line: 1757, column: 644, scope: !4381)
!4387 = !DILocation(line: 1757, column: 672, scope: !4381)
!4388 = !DILocation(line: 1760, column: 11, scope: !4331)
!4389 = !DILocation(line: 1760, column: 4, scope: !4331)
!4390 = distinct !DISubprogram(name: "VMGuestLib_AtomicUpdateCookie", scope: !77, file: !77, line: 1825, type: !4391, isLocal: false, isDefinition: true, scopeLine: 1829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!192, !140, !140, !261, !262}
!4393 = !DILocalVariable(name: "src", arg: 1, scope: !4390, file: !77, line: 1825, type: !140)
!4394 = !DILocation(line: 1825, column: 43, scope: !4390)
!4395 = !DILocalVariable(name: "dst", arg: 2, scope: !4390, file: !77, line: 1826, type: !140)
!4396 = !DILocation(line: 1826, column: 43, scope: !4390)
!4397 = !DILocalVariable(name: "reply", arg: 3, scope: !4390, file: !77, line: 1827, type: !261)
!4398 = !DILocation(line: 1827, column: 38, scope: !4390)
!4399 = !DILocalVariable(name: "replySize", arg: 4, scope: !4390, file: !77, line: 1828, type: !262)
!4400 = !DILocation(line: 1828, column: 39, scope: !4390)
!4401 = !DILocalVariable(name: "param", scope: !4390, file: !77, line: 1830, type: !241)
!4402 = !DILocation(line: 1830, column: 23, scope: !4390)
!4403 = !DILocation(line: 1835, column: 10, scope: !4390)
!4404 = !DILocation(line: 1835, column: 12, scope: !4390)
!4405 = !DILocation(line: 1836, column: 64, scope: !4390)
!4406 = !DILocation(line: 1836, column: 10, scope: !4390)
!4407 = !DILocation(line: 1836, column: 31, scope: !4390)
!4408 = !DILocation(line: 1836, column: 50, scope: !4390)
!4409 = !DILocation(line: 1836, column: 54, scope: !4390)
!4410 = !DILocation(line: 1837, column: 64, scope: !4390)
!4411 = !DILocation(line: 1837, column: 10, scope: !4390)
!4412 = !DILocation(line: 1837, column: 31, scope: !4390)
!4413 = !DILocation(line: 1837, column: 50, scope: !4390)
!4414 = !DILocation(line: 1837, column: 54, scope: !4390)
!4415 = !DILocation(line: 1838, column: 35, scope: !4390)
!4416 = !DILocation(line: 1838, column: 42, scope: !4390)
!4417 = !DILocation(line: 1838, column: 11, scope: !4390)
!4418 = !DILocation(line: 1838, column: 4, scope: !4390)
!4419 = !DILocalVariable(name: "param", arg: 1, scope: !256, file: !77, line: 1782, type: !259)
!4420 = !DILocation(line: 1782, column: 43, scope: !256)
!4421 = !DILocalVariable(name: "reply", arg: 2, scope: !256, file: !77, line: 1783, type: !261)
!4422 = !DILocation(line: 1783, column: 24, scope: !256)
!4423 = !DILocalVariable(name: "replySize", arg: 3, scope: !256, file: !77, line: 1784, type: !262)
!4424 = !DILocation(line: 1784, column: 25, scope: !256)
!4425 = !DILocalVariable(name: "xdrs", scope: !256, file: !77, line: 1786, type: !104)
!4426 = !DILocation(line: 1786, column: 8, scope: !256)
!4427 = !DILocalVariable(name: "ret", scope: !256, file: !77, line: 1787, type: !192)
!4428 = !DILocation(line: 1787, column: 9, scope: !256)
!4429 = !DILocation(line: 1790, column: 8, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !256, file: !77, line: 1790, column: 8)
!4431 = !DILocation(line: 1790, column: 14, scope: !4430)
!4432 = !DILocation(line: 1790, column: 21, scope: !4430)
!4433 = !DILocation(line: 1790, column: 24, scope: !4434)
!4434 = !DILexicalBlockFile(scope: !4430, file: !77, discriminator: 1)
!4435 = !DILocation(line: 1790, column: 31, scope: !4434)
!4436 = !DILocation(line: 1790, column: 33, scope: !4434)
!4437 = !DILocation(line: 1790, column: 8, scope: !4434)
!4438 = !DILocation(line: 1791, column: 7, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4430, file: !77, line: 1790, column: 56)
!4440 = !DILocation(line: 1793, column: 15, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !256, file: !77, line: 1793, column: 7)
!4442 = !DILocation(line: 1793, column: 12, scope: !4441)
!4443 = !DILocation(line: 1793, column: 7, scope: !256)
!4444 = !DILocation(line: 1794, column: 7, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4441, file: !77, line: 1793, column: 37)
!4446 = !DILocation(line: 1796, column: 33, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !256, file: !77, line: 1796, column: 8)
!4448 = !DILocation(line: 1796, column: 49, scope: !4447)
!4449 = !DILocation(line: 1796, column: 42, scope: !4447)
!4450 = !DILocation(line: 1796, column: 9, scope: !4451)
!4451 = !DILexicalBlockFile(scope: !4447, file: !77, discriminator: 2)
!4452 = !DILocation(line: 1796, column: 9, scope: !4447)
!4453 = !DILocation(line: 1796, column: 59, scope: !4447)
!4454 = !DILocation(line: 1797, column: 61, scope: !4447)
!4455 = !DILocation(line: 1797, column: 9, scope: !4447)
!4456 = !DILocation(line: 1796, column: 8, scope: !4457)
!4457 = !DILexicalBlockFile(scope: !256, file: !77, discriminator: 1)
!4458 = !DILocation(line: 1798, column: 7, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4447, file: !77, line: 1797, column: 69)
!4460 = !DILocation(line: 1799, column: 7, scope: !4459)
!4461 = !DILocation(line: 1801, column: 32, scope: !256)
!4462 = !DILocation(line: 1801, column: 53, scope: !256)
!4463 = !DILocation(line: 1801, column: 60, scope: !256)
!4464 = !DILocation(line: 1801, column: 50, scope: !4457)
!4465 = !DILocation(line: 1801, column: 50, scope: !256)
!4466 = !DILocation(line: 1802, column: 32, scope: !256)
!4467 = !DILocation(line: 1802, column: 39, scope: !256)
!4468 = !DILocation(line: 1801, column: 10, scope: !4469)
!4469 = !DILexicalBlockFile(scope: !256, file: !77, discriminator: 2)
!4470 = !DILocation(line: 1801, column: 10, scope: !256)
!4471 = !DILocation(line: 1801, column: 8, scope: !256)
!4472 = !DILocation(line: 1803, column: 4, scope: !256)
!4473 = !DILocation(line: 1804, column: 11, scope: !256)
!4474 = !DILocation(line: 1804, column: 4, scope: !256)
!4475 = !DILocation(line: 1805, column: 1, scope: !256)
!4476 = distinct !DISubprogram(name: "VMGuestLib_StatGet", scope: !77, file: !77, line: 1868, type: !4477, isLocal: false, isDefinition: true, scopeLine: 1872, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!270, !140, !140, !261, !262}
!4479 = !DILocalVariable(name: "encoding", arg: 1, scope: !4476, file: !77, line: 1868, type: !140)
!4480 = !DILocation(line: 1868, column: 32, scope: !4476)
!4481 = !DILocalVariable(name: "stat", arg: 2, scope: !4476, file: !77, line: 1869, type: !140)
!4482 = !DILocation(line: 1869, column: 32, scope: !4476)
!4483 = !DILocalVariable(name: "reply", arg: 3, scope: !4476, file: !77, line: 1870, type: !261)
!4484 = !DILocation(line: 1870, column: 27, scope: !4476)
!4485 = !DILocalVariable(name: "replySize", arg: 4, scope: !4476, file: !77, line: 1871, type: !262)
!4486 = !DILocation(line: 1871, column: 28, scope: !4476)
!4487 = !DILocalVariable(name: "commandBuf", scope: !4476, file: !77, line: 1873, type: !4488)
!4488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 2048, align: 8, elements: !4489)
!4489 = !{!4490}
!4490 = !DISubrange(count: 256)
!4491 = !DILocation(line: 1873, column: 9, scope: !4476)
!4492 = !DILocalVariable(name: "bufRet", scope: !4476, file: !77, line: 1874, type: !102)
!4493 = !DILocation(line: 1874, column: 8, scope: !4476)
!4494 = !DILocalVariable(name: "ret", scope: !4476, file: !77, line: 1875, type: !192)
!4495 = !DILocation(line: 1875, column: 9, scope: !4476)
!4496 = !DILocation(line: 1877, column: 8, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4476, file: !77, line: 1877, column: 8)
!4498 = !DILocation(line: 1877, column: 17, scope: !4497)
!4499 = !DILocation(line: 1877, column: 8, scope: !4476)
!4500 = !DILocation(line: 1878, column: 7, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4497, file: !77, line: 1877, column: 25)
!4502 = !DILocation(line: 1880, column: 8, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4476, file: !77, line: 1880, column: 8)
!4504 = !DILocation(line: 1880, column: 13, scope: !4503)
!4505 = !DILocation(line: 1880, column: 8, scope: !4476)
!4506 = !DILocation(line: 1881, column: 12, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4503, file: !77, line: 1880, column: 21)
!4508 = !DILocation(line: 1882, column: 4, scope: !4507)
!4509 = !DILocation(line: 1888, column: 26, scope: !4476)
!4510 = !DILocation(line: 1889, column: 47, scope: !4476)
!4511 = !DILocation(line: 1889, column: 57, scope: !4476)
!4512 = !DILocation(line: 1888, column: 13, scope: !4476)
!4513 = !DILocation(line: 1888, column: 11, scope: !4476)
!4514 = !DILocation(line: 1890, column: 8, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4476, file: !77, line: 1890, column: 8)
!4516 = !DILocation(line: 1890, column: 15, scope: !4515)
!4517 = !DILocation(line: 1890, column: 21, scope: !4515)
!4518 = !DILocation(line: 1890, column: 24, scope: !4519)
!4519 = !DILexicalBlockFile(scope: !4515, file: !77, discriminator: 1)
!4520 = !DILocation(line: 1890, column: 31, scope: !4519)
!4521 = !DILocation(line: 1890, column: 8, scope: !4519)
!4522 = !DILocation(line: 1891, column: 7, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4515, file: !77, line: 1890, column: 53)
!4524 = !DILocation(line: 1894, column: 32, scope: !4476)
!4525 = !DILocation(line: 1894, column: 51, scope: !4476)
!4526 = !DILocation(line: 1894, column: 44, scope: !4476)
!4527 = !DILocation(line: 1895, column: 32, scope: !4476)
!4528 = !DILocation(line: 1895, column: 39, scope: !4476)
!4529 = !DILocation(line: 1894, column: 10, scope: !4530)
!4530 = !DILexicalBlockFile(scope: !4476, file: !77, discriminator: 1)
!4531 = !DILocation(line: 1894, column: 10, scope: !4476)
!4532 = !DILocation(line: 1894, column: 8, scope: !4476)
!4533 = !DILocation(line: 1897, column: 11, scope: !4476)
!4534 = !DILocation(line: 1897, column: 4, scope: !4476)
!4535 = !DILocation(line: 1898, column: 1, scope: !4476)
!4536 = distinct !DISubprogram(name: "VMGuestLib_StatFree", scope: !77, file: !77, line: 1917, type: !4537, isLocal: false, isDefinition: true, scopeLine: 1919, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !263)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{null, !132, !93}
!4539 = !DILocalVariable(name: "reply", arg: 1, scope: !4536, file: !77, line: 1917, type: !132)
!4540 = !DILocation(line: 1917, column: 27, scope: !4536)
!4541 = !DILocalVariable(name: "replySize", arg: 2, scope: !4536, file: !77, line: 1918, type: !93)
!4542 = !DILocation(line: 1918, column: 28, scope: !4536)
!4543 = !DILocation(line: 1920, column: 9, scope: !4536)
!4544 = !DILocation(line: 1920, column: 4, scope: !4536)
!4545 = !DILocation(line: 1921, column: 1, scope: !4536)
