; ModuleID = './vmcheck.o.i'
source_filename = "./vmcheck.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.33 = type { i8*, i8* }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%union.Backdoor_proto = type { %struct.anon }
%struct.anon = type { %union.anon, i64, %union.anon.2, %union.anon.5, %union.anon.8, %union.anon.11 }
%union.anon = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.11 = type { i64 }
%struct.anon.3 = type { i16, i16 }
%struct.anon.14 = type { %union.anon.15, %union.anon.18, %union.anon.21, %union.anon.24, %union.anon.27, %union.anon.30 }
%union.anon.15 = type { i64 }
%union.anon.18 = type { i64 }
%union.anon.21 = type { i64 }
%union.anon.24 = type { i64 }
%union.anon.27 = type { i64 }
%union.anon.30 = type { i64 }
%struct.sigaction = type { %union.anon.34, %struct.__sigset_t, i32, void ()* }
%union.anon.34 = type { void (i32)* }

@.str = private unnamed_addr constant [13 x i8] c"VMwareVMware\00", align 1
@gHvVendor = internal constant [2 x %struct.anon.33] [%struct.anon.33 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0) }, %struct.anon.33 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: detected %s.\0A\00", align 1
@__FUNCTION__.VmCheck_IsVirtualWorld = private unnamed_addr constant [23 x i8] c"VmCheck_IsVirtualWorld\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: detected Xen.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: detected Virtual PC.\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: backdoor not detected.\0A\00", align 1
@.str.5 = private unnamed_addr constant [150 x i8] c"The version of this program is incompatible with your %s.\0AFor information on updating your VMware Tools please see\0Ahttp://www.vmware.com/info?id=99\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"VMware software\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"KVMKVMKVM\00\00\00\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Linux KVM\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"XenVMMXenVMM\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Xen\00", align 1
@VmCheckSafe.signals = private unnamed_addr constant [2 x i32] [i32 4, i32 11], align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"%s: Failed to set signal handlers.\0A\00", align 1
@__FUNCTION__.VmCheckSafe = private unnamed_addr constant [12 x i8] c"VmCheckSafe\00", align 1
@jmpBuf = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@jmpIsSet = internal global i8 0, align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"%s: Failed to reset signal handlers.\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Received SEGV, exiting.\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @VmCheck_GetVersion(i32*, i32*) #0 !dbg !63 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.Backdoor_proto, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !72, metadata !73), !dbg !74
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !75, metadata !73), !dbg !76
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %6, metadata !77, metadata !73), !dbg !259
  %7 = bitcast %union.Backdoor_proto* %6 to %struct.anon*, !dbg !260
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1, !dbg !261
  store i64 -1447909481, i64* %8, align 8, !dbg !262
  %9 = bitcast %union.Backdoor_proto* %6 to %struct.anon*, !dbg !263
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 2, !dbg !264
  %11 = bitcast %union.anon.2* %10 to %struct.anon.3*, !dbg !265
  %12 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1, !dbg !266
  store i16 -1, i16* %12, align 2, !dbg !267
  %13 = bitcast %union.Backdoor_proto* %6 to %struct.anon*, !dbg !268
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 2, !dbg !269
  %15 = bitcast %union.anon.2* %14 to %struct.anon.3*, !dbg !270
  %16 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %15, i32 0, i32 0, !dbg !271
  store i16 10, i16* %16, align 8, !dbg !272
  call void @Backdoor(%union.Backdoor_proto* %6), !dbg !273
  %17 = bitcast %union.Backdoor_proto* %6 to %struct.anon.14*, !dbg !274
  %18 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %17, i32 0, i32 0, !dbg !276
  %19 = bitcast %union.anon.15* %18 to i32*, !dbg !277
  %20 = load i32, i32* %19, align 8, !dbg !277
  %21 = icmp eq i32 %20, -1, !dbg !278
  br i1 %21, label %22, label %23, !dbg !279

; <label>:22:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !280
  br label %52, !dbg !280

; <label>:23:                                     ; preds = %2
  %24 = bitcast %union.Backdoor_proto* %6 to %struct.anon.14*, !dbg !282
  %25 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %24, i32 0, i32 1, !dbg !284
  %26 = bitcast %union.anon.18* %25 to i32*, !dbg !285
  %27 = load i32, i32* %26, align 8, !dbg !285
  %28 = icmp ne i32 %27, 1447909480, !dbg !286
  br i1 %28, label %29, label %30, !dbg !287

; <label>:29:                                     ; preds = %23
  store i8 0, i8* %3, align 1, !dbg !288
  br label %52, !dbg !288

; <label>:30:                                     ; preds = %23
  %31 = bitcast %union.Backdoor_proto* %6 to %struct.anon.14*, !dbg !290
  %32 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %31, i32 0, i32 0, !dbg !291
  %33 = bitcast %union.anon.15* %32 to i32*, !dbg !292
  %34 = load i32, i32* %33, align 8, !dbg !292
  %35 = load i32*, i32** %4, align 8, !dbg !293
  store i32 %34, i32* %35, align 4, !dbg !294
  %36 = bitcast %union.Backdoor_proto* %6 to %struct.anon*, !dbg !295
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 2, !dbg !297
  %38 = bitcast %union.anon.2* %37 to %struct.anon.3*, !dbg !298
  %39 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %38, i32 0, i32 1, !dbg !299
  %40 = load i16, i16* %39, align 2, !dbg !299
  %41 = zext i16 %40 to i32, !dbg !300
  %42 = icmp eq i32 %41, 65535, !dbg !301
  br i1 %42, label %43, label %45, !dbg !302

; <label>:43:                                     ; preds = %30
  %44 = load i32*, i32** %5, align 8, !dbg !303
  store i32 0, i32* %44, align 4, !dbg !304
  br label %51, !dbg !305

; <label>:45:                                     ; preds = %30
  %46 = bitcast %union.Backdoor_proto* %6 to %struct.anon.14*, !dbg !306
  %47 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %46, i32 0, i32 2, !dbg !307
  %48 = bitcast %union.anon.21* %47 to i32*, !dbg !308
  %49 = load i32, i32* %48, align 8, !dbg !308
  %50 = load i32*, i32** %5, align 8, !dbg !309
  store i32 %49, i32* %50, align 4, !dbg !310
  br label %51

; <label>:51:                                     ; preds = %45, %43
  store i8 1, i8* %3, align 1, !dbg !311
  br label %52, !dbg !311

; <label>:52:                                     ; preds = %51, %29, %22
  %53 = load i8, i8* %3, align 1, !dbg !312
  ret i8 %53, !dbg !312
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @Backdoor(%union.Backdoor_proto*) #2

; Function Attrs: nounwind uwtable
define signext i8 @VmCheck_IsVirtualWorld() #0 !dbg !313 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !316, metadata !73), !dbg !317
  call void @llvm.dbg.declare(metadata i32* %3, metadata !318, metadata !73), !dbg !319
  call void @llvm.dbg.declare(metadata i8** %4, metadata !320, metadata !73), !dbg !322
  call void @llvm.dbg.declare(metadata i32* %5, metadata !323, metadata !73), !dbg !324
  %6 = call i8* @Hostinfo_HypervisorCPUIDSig(), !dbg !325
  store i8* %6, i8** %4, align 8, !dbg !326
  %7 = load i8*, i8** %4, align 8, !dbg !327
  %8 = icmp eq i8* %7, null, !dbg !329
  br i1 %8, label %13, label %9, !dbg !330

; <label>:9:                                      ; preds = %0
  %10 = load i8*, i8** %4, align 8, !dbg !331
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #9, !dbg !332
  %12 = icmp ne i32 %11, 0, !dbg !333
  br i1 %12, label %13, label %52, !dbg !334

; <label>:13:                                     ; preds = %9, %0
  %14 = load i8*, i8** %4, align 8, !dbg !336
  %15 = icmp ne i8* %14, null, !dbg !339
  br i1 %15, label %16, label %42, !dbg !340

; <label>:16:                                     ; preds = %13
  store i32 0, i32* %5, align 4, !dbg !341
  br label %17, !dbg !344

; <label>:17:                                     ; preds = %38, %16
  %18 = load i32, i32* %5, align 4, !dbg !345
  %19 = zext i32 %18 to i64, !dbg !345
  %20 = icmp ult i64 %19, 2, !dbg !348
  br i1 %20, label %21, label %41, !dbg !349

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %4, align 8, !dbg !350
  %23 = load i32, i32* %5, align 4, !dbg !353
  %24 = zext i32 %23 to i64, !dbg !354
  %25 = getelementptr inbounds [2 x %struct.anon.33], [2 x %struct.anon.33]* @gHvVendor, i64 0, i64 %24, !dbg !354
  %26 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %25, i32 0, i32 0, !dbg !355
  %27 = load i8*, i8** %26, align 16, !dbg !355
  %28 = call i32 @strcmp(i8* %22, i8* %27) #9, !dbg !356
  %29 = icmp eq i32 %28, 0, !dbg !357
  br i1 %29, label %30, label %37, !dbg !358

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* %5, align 4, !dbg !359
  %32 = zext i32 %31 to i64, !dbg !361
  %33 = getelementptr inbounds [2 x %struct.anon.33], [2 x %struct.anon.33]* @gHvVendor, i64 0, i64 %32, !dbg !361
  %34 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %33, i32 0, i32 1, !dbg !362
  %35 = load i8*, i8** %34, align 8, !dbg !362
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.VmCheck_IsVirtualWorld, i32 0, i32 0), i8* %35), !dbg !363
  %36 = load i8*, i8** %4, align 8, !dbg !364
  call void @free(i8* %36) #10, !dbg !365
  store i8 0, i8* %1, align 1, !dbg !366
  br label %64, !dbg !366

; <label>:37:                                     ; preds = %21
  br label %38, !dbg !367

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %5, align 4, !dbg !368
  %40 = add i32 %39, 1, !dbg !368
  store i32 %40, i32* %5, align 4, !dbg !368
  br label %17, !dbg !370, !llvm.loop !371

; <label>:41:                                     ; preds = %17
  br label %42, !dbg !373

; <label>:42:                                     ; preds = %41, %13
  %43 = load i8*, i8** %4, align 8, !dbg !374
  call void @free(i8* %43) #10, !dbg !375
  %44 = call signext i8 @VmCheckSafe(i8 ()* @Hostinfo_TouchXen), !dbg !376
  %45 = icmp ne i8 %44, 0, !dbg !376
  br i1 %45, label %46, label %47, !dbg !378

; <label>:46:                                     ; preds = %42
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.VmCheck_IsVirtualWorld, i32 0, i32 0)), !dbg !379
  store i8 0, i8* %1, align 1, !dbg !381
  br label %64, !dbg !381

; <label>:47:                                     ; preds = %42
  %48 = call signext i8 @VmCheckSafe(i8 ()* @Hostinfo_TouchVirtualPC), !dbg !382
  %49 = icmp ne i8 %48, 0, !dbg !382
  br i1 %49, label %50, label %51, !dbg !384

; <label>:50:                                     ; preds = %47
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.VmCheck_IsVirtualWorld, i32 0, i32 0)), !dbg !385
  store i8 0, i8* %1, align 1, !dbg !387
  br label %64, !dbg !387

; <label>:51:                                     ; preds = %47
  br label %54, !dbg !388

; <label>:52:                                     ; preds = %9
  %53 = load i8*, i8** %4, align 8, !dbg !389
  call void @free(i8* %53) #10, !dbg !391
  br label %54

; <label>:54:                                     ; preds = %52, %51
  %55 = call signext i8 @VmCheckSafe(i8 ()* @Hostinfo_TouchBackDoor), !dbg !392
  %56 = icmp ne i8 %55, 0, !dbg !392
  br i1 %56, label %58, label %57, !dbg !394

; <label>:57:                                     ; preds = %54
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.VmCheck_IsVirtualWorld, i32 0, i32 0)), !dbg !395
  store i8 0, i8* %1, align 1, !dbg !397
  br label %64, !dbg !397

; <label>:58:                                     ; preds = %54
  %59 = call signext i8 @VmCheck_GetVersion(i32* %2, i32* %3), !dbg !398
  %60 = load i32, i32* %2, align 4, !dbg !399
  %61 = icmp ne i32 %60, 6, !dbg !401
  br i1 %61, label %62, label %63, !dbg !402

; <label>:62:                                     ; preds = %58
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)), !dbg !403
  store i8 0, i8* %1, align 1, !dbg !405
  br label %64, !dbg !405

; <label>:63:                                     ; preds = %58
  store i8 1, i8* %1, align 1, !dbg !406
  br label %64, !dbg !406

; <label>:64:                                     ; preds = %63, %62, %57, %50, %46, %30
  %65 = load i8, i8* %1, align 1, !dbg !407
  ret i8 %65, !dbg !407
}

declare i8* @Hostinfo_HypervisorCPUIDSig() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @Debug(i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal signext i8 @VmCheckSafe(i8 ()*) #0 !dbg !408 {
  %2 = alloca i8 ()*, align 8
  %3 = alloca i8, align 1
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x %struct.sigaction], align 16
  store i8 ()* %0, i8 ()** %2, align 8
  call void @llvm.dbg.declare(metadata i8 ()** %2, metadata !413, metadata !73), !dbg !414
  call void @llvm.dbg.declare(metadata i8* %3, metadata !415, metadata !73), !dbg !416
  store i8 0, i8* %3, align 1, !dbg !416
  br label %6, !dbg !417, !llvm.loop !418

; <label>:6:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata [2 x i32]* %4, metadata !419, metadata !73), !dbg !422
  %7 = bitcast [2 x i32]* %4 to i8*, !dbg !422
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([2 x i32]* @VmCheckSafe.signals to i8*), i64 8, i32 4, i1 false), !dbg !422
  call void @llvm.dbg.declare(metadata [2 x %struct.sigaction]* %5, metadata !423, metadata !73), !dbg !519
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i32 0, i32 0, !dbg !520
  %9 = getelementptr inbounds [2 x %struct.sigaction], [2 x %struct.sigaction]* %5, i32 0, i32 0, !dbg !522
  %10 = call i32 @Signal_SetGroupHandler(i32* %8, %struct.sigaction* %9, i32 2, void (i32)* @VmCheckSegvHandler), !dbg !523
  %11 = icmp eq i32 %10, 0, !dbg !524
  br i1 %11, label %12, label %13, !dbg !525

; <label>:12:                                     ; preds = %6
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.VmCheckSafe, i32 0, i32 0)), !dbg !526
  br label %27, !dbg !528

; <label>:13:                                     ; preds = %6
  %14 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @jmpBuf, i32 0, i32 0), i32 1) #11, !dbg !529
  %15 = icmp eq i32 %14, 0, !dbg !531
  br i1 %15, label %16, label %19, !dbg !532

; <label>:16:                                     ; preds = %13
  store i8 1, i8* @jmpIsSet, align 1, !dbg !533
  %17 = load i8 ()*, i8 ()** %2, align 8, !dbg !535
  %18 = call signext i8 %17(), !dbg !535
  store i8 %18, i8* %3, align 1, !dbg !536
  br label %20, !dbg !537

; <label>:19:                                     ; preds = %13
  store i8 0, i8* @jmpIsSet, align 1, !dbg !538
  br label %20

; <label>:20:                                     ; preds = %19, %16
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i32 0, i32 0, !dbg !540
  %22 = getelementptr inbounds [2 x %struct.sigaction], [2 x %struct.sigaction]* %5, i32 0, i32 0, !dbg !542
  %23 = call i32 @Signal_ResetGroupHandler(i32* %21, %struct.sigaction* %22, i32 2), !dbg !543
  %24 = icmp eq i32 %23, 0, !dbg !544
  br i1 %24, label %25, label %26, !dbg !545

; <label>:25:                                     ; preds = %20
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.VmCheckSafe, i32 0, i32 0)), !dbg !546
  br label %26, !dbg !548

; <label>:26:                                     ; preds = %25, %20
  br label %27, !dbg !549

; <label>:27:                                     ; preds = %26, %12
  %28 = load i8, i8* %3, align 1, !dbg !550
  ret i8 %28, !dbg !551
}

declare signext i8 @Hostinfo_TouchXen() #2

declare signext i8 @Hostinfo_TouchVirtualPC() #2

declare signext i8 @Hostinfo_TouchBackDoor() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @Signal_SetGroupHandler(i32*, %struct.sigaction*, i32, void (i32)*) #2

; Function Attrs: nounwind uwtable
define internal void @VmCheckSegvHandler(i32) #0 !dbg !552 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !553, metadata !73), !dbg !554
  %3 = load i8, i8* @jmpIsSet, align 1, !dbg !555
  %4 = icmp ne i8 %3, 0, !dbg !555
  br i1 %4, label %5, label %6, !dbg !557

; <label>:5:                                      ; preds = %1
  call void @siglongjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @jmpBuf, i32 0, i32 0), i32 1) #12, !dbg !558
  unreachable, !dbg !558

; <label>:6:                                      ; preds = %1
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0)) #13, !dbg !560
  unreachable, !dbg !560
                                                  ; No predecessors!
  ret void, !dbg !562
}

declare void @Warning(i8*, ...) #2

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(%struct.__jmp_buf_tag*, i32) #6

declare i32 @Signal_ResetGroupHandler(i32*, %struct.sigaction*, i32) #2

; Function Attrs: noreturn nounwind
declare void @siglongjmp(%struct.__jmp_buf_tag*, i32) #7

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #8

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind returns_twice }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !12, globals: !17)
!1 = !DIFile(filename: "vmcheck.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 35, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_vmx_type.h", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "VMX_TYPE_UNSET", value: 0)
!7 = !DIEnumerator(name: "VMX_TYPE_EXPRESS", value: 1)
!8 = !DIEnumerator(name: "VMX_TYPE_SCALABLE_SERVER", value: 2)
!9 = !DIEnumerator(name: "VMX_TYPE_WGS", value: 3)
!10 = !DIEnumerator(name: "VMX_TYPE_WORKSTATION", value: 4)
!11 = !DIEnumerator(name: "VMX_TYPE_WORKSTATION_ENTERPRISE", value: 5)
!12 = !{!13, !16}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 216, baseType: !15)
!14 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!15 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !{!18, !31, !57}
!18 = distinct !DIGlobalVariable(name: "gHvVendor", scope: !0, file: !19, line: 77, type: !20, isLocal: true, isDefinition: true, variable: [2 x %struct.anon.33]* @gHvVendor)
!19 = !DIFile(filename: "vmcheck.c", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, align: 64, elements: !29)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 74, size: 128, align: 64, elements: !23)
!23 = !{!24, !28}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "vendorSig", scope: !22, file: !19, line: 75, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "hypervisorName", scope: !22, file: !19, line: 76, baseType: !25, size: 64, align: 64, offset: 64)
!29 = !{!30}
!30 = !DISubrange(count: 2)
!31 = distinct !DIGlobalVariable(name: "jmpBuf", scope: !0, file: !19, line: 85, type: !32, isLocal: true, isDefinition: true, variable: [1 x %struct.__jmp_buf_tag]* @jmpBuf)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigjmp_buf", file: !33, line: 92, baseType: !34)
!33 = !DIFile(filename: "/usr/include/setjmp.h", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1600, align: 64, elements: !55)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__jmp_buf_tag", file: !33, line: 34, size: 1600, align: 64, elements: !36)
!36 = !{!37, !44, !46}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__jmpbuf", scope: !35, file: !33, line: 40, baseType: !38, size: 512, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__jmp_buf", file: !39, line: 31, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/setjmp.h", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 512, align: 64, elements: !42)
!41 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!42 = !{!43}
!43 = !DISubrange(count: 8)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__mask_was_saved", scope: !35, file: !33, line: 41, baseType: !45, size: 32, align: 32, offset: 512)
!45 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__saved_mask", scope: !35, file: !33, line: 42, baseType: !47, size: 1024, align: 64, offset: 576)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !48, line: 30, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 27, size: 1024, align: 64, elements: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !49, file: !48, line: 29, baseType: !52, size: 1024, align: 64)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1024, align: 64, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 16)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = distinct !DIGlobalVariable(name: "jmpIsSet", scope: !0, file: !19, line: 86, type: !58, isLocal: true, isDefinition: true, variable: i8* @jmpIsSet)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !59, line: 230, baseType: !27)
!59 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!60 = !{i32 2, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "VmCheck_GetVersion", scope: !19, file: !19, line: 205, type: !64, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{!58, !66, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !59, line: 173, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !69, line: 51, baseType: !70)
!69 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!70 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!71 = !{}
!72 = !DILocalVariable(name: "version", arg: 1, scope: !63, file: !19, line: 205, type: !66)
!73 = !DIExpression()
!74 = !DILocation(line: 205, column: 28, scope: !63)
!75 = !DILocalVariable(name: "type", arg: 2, scope: !63, file: !19, line: 206, type: !66)
!76 = !DILocation(line: 206, column: 29, scope: !63)
!77 = !DILocalVariable(name: "bp", scope: !63, file: !19, line: 208, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "Backdoor_proto", file: !79, line: 102, baseType: !80)
!79 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/backdoor_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !79, line: 85, size: 384, align: 64, elements: !81)
!81 = !{!82, !166}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !80, file: !79, line: 93, baseType: !83, size: 384, align: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !79, line: 86, size: 384, align: 64, elements: !84)
!84 = !{!85, !105, !106, !121, !136, !151}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !83, file: !79, line: 87, baseType: !86, size: 64, align: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !79, line: 87, size: 64, align: 64, elements: !87)
!87 = !{!88, !96, !97, !102}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !86, file: !79, line: 87, baseType: !89, size: 32, align: 16)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !86, file: !79, line: 87, size: 32, align: 16, elements: !90)
!90 = !{!91, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !89, file: !79, line: 87, baseType: !92, size: 16, align: 16)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !59, line: 175, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !69, line: 49, baseType: !94)
!94 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !89, file: !79, line: 87, baseType: !92, size: 16, align: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !86, file: !79, line: 87, baseType: !67, size: 32, align: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !86, file: !79, line: 87, baseType: !98, size: 64, align: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !86, file: !79, line: 87, size: 64, align: 32, elements: !99)
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !98, file: !79, line: 87, baseType: !67, size: 32, align: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !98, file: !79, line: 87, baseType: !67, size: 32, align: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !86, file: !79, line: 87, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !59, line: 171, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !69, line: 55, baseType: !15)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !83, file: !79, line: 88, baseType: !13, size: 64, align: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !83, file: !79, line: 89, baseType: !107, size: 64, align: 64, offset: 128)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !79, line: 89, size: 64, align: 64, elements: !108)
!108 = !{!109, !114, !115, !120}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !107, file: !79, line: 89, baseType: !110, size: 32, align: 16)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !107, file: !79, line: 89, size: 32, align: 16, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !110, file: !79, line: 89, baseType: !92, size: 16, align: 16)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !110, file: !79, line: 89, baseType: !92, size: 16, align: 16, offset: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !107, file: !79, line: 89, baseType: !67, size: 32, align: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !107, file: !79, line: 89, baseType: !116, size: 64, align: 32)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !107, file: !79, line: 89, size: 64, align: 32, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !116, file: !79, line: 89, baseType: !67, size: 32, align: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !116, file: !79, line: 89, baseType: !67, size: 32, align: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !107, file: !79, line: 89, baseType: !103, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !83, file: !79, line: 90, baseType: !122, size: 64, align: 64, offset: 192)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !79, line: 90, size: 64, align: 64, elements: !123)
!123 = !{!124, !129, !130, !135}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !122, file: !79, line: 90, baseType: !125, size: 32, align: 16)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !122, file: !79, line: 90, size: 32, align: 16, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !125, file: !79, line: 90, baseType: !92, size: 16, align: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !125, file: !79, line: 90, baseType: !92, size: 16, align: 16, offset: 16)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !122, file: !79, line: 90, baseType: !67, size: 32, align: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !122, file: !79, line: 90, baseType: !131, size: 64, align: 32)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !122, file: !79, line: 90, size: 64, align: 32, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !131, file: !79, line: 90, baseType: !67, size: 32, align: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !131, file: !79, line: 90, baseType: !67, size: 32, align: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !122, file: !79, line: 90, baseType: !103, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !83, file: !79, line: 91, baseType: !137, size: 64, align: 64, offset: 256)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !79, line: 91, size: 64, align: 64, elements: !138)
!138 = !{!139, !144, !145, !150}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !137, file: !79, line: 91, baseType: !140, size: 32, align: 16)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !79, line: 91, size: 32, align: 16, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !140, file: !79, line: 91, baseType: !92, size: 16, align: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !140, file: !79, line: 91, baseType: !92, size: 16, align: 16, offset: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !137, file: !79, line: 91, baseType: !67, size: 32, align: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !137, file: !79, line: 91, baseType: !146, size: 64, align: 32)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !79, line: 91, size: 64, align: 32, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !146, file: !79, line: 91, baseType: !67, size: 32, align: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !146, file: !79, line: 91, baseType: !67, size: 32, align: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !137, file: !79, line: 91, baseType: !103, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !83, file: !79, line: 92, baseType: !152, size: 64, align: 64, offset: 320)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !79, line: 92, size: 64, align: 64, elements: !153)
!153 = !{!154, !159, !160, !165}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !152, file: !79, line: 92, baseType: !155, size: 32, align: 16)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !79, line: 92, size: 32, align: 16, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !155, file: !79, line: 92, baseType: !92, size: 16, align: 16)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !155, file: !79, line: 92, baseType: !92, size: 16, align: 16, offset: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !152, file: !79, line: 92, baseType: !67, size: 32, align: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !152, file: !79, line: 92, baseType: !161, size: 64, align: 32)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !79, line: 92, size: 64, align: 32, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !161, file: !79, line: 92, baseType: !67, size: 32, align: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !161, file: !79, line: 92, baseType: !67, size: 32, align: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !152, file: !79, line: 92, baseType: !103, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !80, file: !79, line: 101, baseType: !167, size: 384, align: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !79, line: 94, size: 384, align: 64, elements: !168)
!168 = !{!169, !184, !199, !214, !229, !244}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !167, file: !79, line: 95, baseType: !170, size: 64, align: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !79, line: 95, size: 64, align: 64, elements: !171)
!171 = !{!172, !177, !178, !183}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !170, file: !79, line: 95, baseType: !173, size: 32, align: 16)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !170, file: !79, line: 95, size: 32, align: 16, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !173, file: !79, line: 95, baseType: !92, size: 16, align: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !173, file: !79, line: 95, baseType: !92, size: 16, align: 16, offset: 16)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !170, file: !79, line: 95, baseType: !67, size: 32, align: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !170, file: !79, line: 95, baseType: !179, size: 64, align: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !170, file: !79, line: 95, size: 64, align: 32, elements: !180)
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !179, file: !79, line: 95, baseType: !67, size: 32, align: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !179, file: !79, line: 95, baseType: !67, size: 32, align: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !170, file: !79, line: 95, baseType: !103, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !167, file: !79, line: 96, baseType: !185, size: 64, align: 64, offset: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !79, line: 96, size: 64, align: 64, elements: !186)
!186 = !{!187, !192, !193, !198}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !185, file: !79, line: 96, baseType: !188, size: 32, align: 16)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !79, line: 96, size: 32, align: 16, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !188, file: !79, line: 96, baseType: !92, size: 16, align: 16)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !188, file: !79, line: 96, baseType: !92, size: 16, align: 16, offset: 16)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !185, file: !79, line: 96, baseType: !67, size: 32, align: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !185, file: !79, line: 96, baseType: !194, size: 64, align: 32)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !79, line: 96, size: 64, align: 32, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !194, file: !79, line: 96, baseType: !67, size: 32, align: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !194, file: !79, line: 96, baseType: !67, size: 32, align: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !185, file: !79, line: 96, baseType: !103, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !167, file: !79, line: 97, baseType: !200, size: 64, align: 64, offset: 128)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !79, line: 97, size: 64, align: 64, elements: !201)
!201 = !{!202, !207, !208, !213}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !200, file: !79, line: 97, baseType: !203, size: 32, align: 16)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !79, line: 97, size: 32, align: 16, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !203, file: !79, line: 97, baseType: !92, size: 16, align: 16)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !203, file: !79, line: 97, baseType: !92, size: 16, align: 16, offset: 16)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !200, file: !79, line: 97, baseType: !67, size: 32, align: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !200, file: !79, line: 97, baseType: !209, size: 64, align: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !79, line: 97, size: 64, align: 32, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !209, file: !79, line: 97, baseType: !67, size: 32, align: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !209, file: !79, line: 97, baseType: !67, size: 32, align: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !200, file: !79, line: 97, baseType: !103, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !167, file: !79, line: 98, baseType: !215, size: 64, align: 64, offset: 192)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !79, line: 98, size: 64, align: 64, elements: !216)
!216 = !{!217, !222, !223, !228}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !215, file: !79, line: 98, baseType: !218, size: 32, align: 16)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !79, line: 98, size: 32, align: 16, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !218, file: !79, line: 98, baseType: !92, size: 16, align: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !218, file: !79, line: 98, baseType: !92, size: 16, align: 16, offset: 16)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !215, file: !79, line: 98, baseType: !67, size: 32, align: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !215, file: !79, line: 98, baseType: !224, size: 64, align: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !79, line: 98, size: 64, align: 32, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !224, file: !79, line: 98, baseType: !67, size: 32, align: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !224, file: !79, line: 98, baseType: !67, size: 32, align: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !215, file: !79, line: 98, baseType: !103, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !167, file: !79, line: 99, baseType: !230, size: 64, align: 64, offset: 256)
!230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !79, line: 99, size: 64, align: 64, elements: !231)
!231 = !{!232, !237, !238, !243}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !230, file: !79, line: 99, baseType: !233, size: 32, align: 16)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !230, file: !79, line: 99, size: 32, align: 16, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !233, file: !79, line: 99, baseType: !92, size: 16, align: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !233, file: !79, line: 99, baseType: !92, size: 16, align: 16, offset: 16)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !230, file: !79, line: 99, baseType: !67, size: 32, align: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !230, file: !79, line: 99, baseType: !239, size: 64, align: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !230, file: !79, line: 99, size: 64, align: 32, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !239, file: !79, line: 99, baseType: !67, size: 32, align: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !239, file: !79, line: 99, baseType: !67, size: 32, align: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !230, file: !79, line: 99, baseType: !103, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !167, file: !79, line: 100, baseType: !245, size: 64, align: 64, offset: 320)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !79, line: 100, size: 64, align: 64, elements: !246)
!246 = !{!247, !252, !253, !258}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !245, file: !79, line: 100, baseType: !248, size: 32, align: 16)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !79, line: 100, size: 32, align: 16, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !248, file: !79, line: 100, baseType: !92, size: 16, align: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !248, file: !79, line: 100, baseType: !92, size: 16, align: 16, offset: 16)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !245, file: !79, line: 100, baseType: !67, size: 32, align: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !245, file: !79, line: 100, baseType: !254, size: 64, align: 32)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !79, line: 100, size: 64, align: 32, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !254, file: !79, line: 100, baseType: !67, size: 32, align: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !254, file: !79, line: 100, baseType: !67, size: 32, align: 32, offset: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !245, file: !79, line: 100, baseType: !103, size: 64, align: 64)
!259 = !DILocation(line: 208, column: 19, scope: !63)
!260 = !DILocation(line: 214, column: 7, scope: !63)
!261 = !DILocation(line: 214, column: 10, scope: !63)
!262 = !DILocation(line: 214, column: 15, scope: !63)
!263 = !DILocation(line: 216, column: 7, scope: !63)
!264 = !DILocation(line: 216, column: 10, scope: !63)
!265 = !DILocation(line: 216, column: 13, scope: !63)
!266 = !DILocation(line: 216, column: 19, scope: !63)
!267 = !DILocation(line: 216, column: 24, scope: !63)
!268 = !DILocation(line: 218, column: 7, scope: !63)
!269 = !DILocation(line: 218, column: 10, scope: !63)
!270 = !DILocation(line: 218, column: 13, scope: !63)
!271 = !DILocation(line: 218, column: 19, scope: !63)
!272 = !DILocation(line: 218, column: 23, scope: !63)
!273 = !DILocation(line: 219, column: 4, scope: !63)
!274 = !DILocation(line: 220, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !63, file: !19, line: 220, column: 8)
!276 = !DILocation(line: 220, column: 15, scope: !275)
!277 = !DILocation(line: 220, column: 18, scope: !275)
!278 = !DILocation(line: 220, column: 23, scope: !275)
!279 = !DILocation(line: 220, column: 8, scope: !63)
!280 = !DILocation(line: 225, column: 7, scope: !281)
!281 = distinct !DILexicalBlock(scope: !275, file: !19, line: 220, column: 38)
!282 = !DILocation(line: 228, column: 11, scope: !283)
!283 = distinct !DILexicalBlock(scope: !63, file: !19, line: 228, column: 8)
!284 = !DILocation(line: 228, column: 15, scope: !283)
!285 = !DILocation(line: 228, column: 18, scope: !283)
!286 = !DILocation(line: 228, column: 23, scope: !283)
!287 = !DILocation(line: 228, column: 8, scope: !63)
!288 = !DILocation(line: 229, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !283, file: !19, line: 228, column: 38)
!290 = !DILocation(line: 232, column: 18, scope: !63)
!291 = !DILocation(line: 232, column: 22, scope: !63)
!292 = !DILocation(line: 232, column: 25, scope: !63)
!293 = !DILocation(line: 232, column: 5, scope: !63)
!294 = !DILocation(line: 232, column: 13, scope: !63)
!295 = !DILocation(line: 243, column: 11, scope: !296)
!296 = distinct !DILexicalBlock(scope: !63, file: !19, line: 243, column: 8)
!297 = !DILocation(line: 243, column: 14, scope: !296)
!298 = !DILocation(line: 243, column: 17, scope: !296)
!299 = !DILocation(line: 243, column: 23, scope: !296)
!300 = !DILocation(line: 243, column: 8, scope: !296)
!301 = !DILocation(line: 243, column: 28, scope: !296)
!302 = !DILocation(line: 243, column: 8, scope: !63)
!303 = !DILocation(line: 244, column: 8, scope: !296)
!304 = !DILocation(line: 244, column: 13, scope: !296)
!305 = !DILocation(line: 244, column: 7, scope: !296)
!306 = !DILocation(line: 246, column: 18, scope: !296)
!307 = !DILocation(line: 246, column: 22, scope: !296)
!308 = !DILocation(line: 246, column: 25, scope: !296)
!309 = !DILocation(line: 246, column: 8, scope: !296)
!310 = !DILocation(line: 246, column: 13, scope: !296)
!311 = !DILocation(line: 248, column: 4, scope: !63)
!312 = !DILocation(line: 249, column: 1, scope: !63)
!313 = distinct !DISubprogram(name: "VmCheck_IsVirtualWorld", scope: !19, file: !19, line: 270, type: !314, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!314 = !DISubroutineType(types: !315)
!315 = !{!58}
!316 = !DILocalVariable(name: "version", scope: !313, file: !19, line: 272, type: !67)
!317 = !DILocation(line: 272, column: 11, scope: !313)
!318 = !DILocalVariable(name: "dummy", scope: !313, file: !19, line: 273, type: !67)
!319 = !DILocation(line: 273, column: 11, scope: !313)
!320 = !DILocalVariable(name: "hypervisorSig", scope: !313, file: !19, line: 276, type: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!322 = !DILocation(line: 276, column: 10, scope: !313)
!323 = !DILocalVariable(name: "i", scope: !313, file: !19, line: 277, type: !67)
!324 = !DILocation(line: 277, column: 11, scope: !313)
!325 = !DILocation(line: 283, column: 20, scope: !313)
!326 = !DILocation(line: 283, column: 18, scope: !313)
!327 = !DILocation(line: 284, column: 8, scope: !328)
!328 = distinct !DILexicalBlock(scope: !313, file: !19, line: 284, column: 8)
!329 = !DILocation(line: 284, column: 22, scope: !328)
!330 = !DILocation(line: 284, column: 29, scope: !328)
!331 = !DILocation(line: 285, column: 17, scope: !328)
!332 = !DILocation(line: 285, column: 10, scope: !328)
!333 = !DILocation(line: 285, column: 48, scope: !328)
!334 = !DILocation(line: 284, column: 8, scope: !335)
!335 = !DILexicalBlockFile(scope: !313, file: !19, discriminator: 1)
!336 = !DILocation(line: 286, column: 11, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !19, line: 286, column: 11)
!338 = distinct !DILexicalBlock(scope: !328, file: !19, line: 285, column: 54)
!339 = !DILocation(line: 286, column: 25, scope: !337)
!340 = !DILocation(line: 286, column: 11, scope: !338)
!341 = !DILocation(line: 287, column: 17, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !19, line: 287, column: 10)
!343 = distinct !DILexicalBlock(scope: !337, file: !19, line: 286, column: 33)
!344 = !DILocation(line: 287, column: 15, scope: !342)
!345 = !DILocation(line: 287, column: 22, scope: !346)
!346 = !DILexicalBlockFile(scope: !347, file: !19, discriminator: 1)
!347 = distinct !DILexicalBlock(scope: !342, file: !19, line: 287, column: 10)
!348 = !DILocation(line: 287, column: 24, scope: !346)
!349 = !DILocation(line: 287, column: 10, scope: !346)
!350 = !DILocation(line: 288, column: 24, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !19, line: 288, column: 17)
!352 = distinct !DILexicalBlock(scope: !347, file: !19, line: 287, column: 75)
!353 = !DILocation(line: 288, column: 49, scope: !351)
!354 = !DILocation(line: 288, column: 39, scope: !351)
!355 = !DILocation(line: 288, column: 52, scope: !351)
!356 = !DILocation(line: 288, column: 17, scope: !351)
!357 = !DILocation(line: 288, column: 63, scope: !351)
!358 = !DILocation(line: 288, column: 17, scope: !352)
!359 = !DILocation(line: 290, column: 32, scope: !360)
!360 = distinct !DILexicalBlock(scope: !351, file: !19, line: 288, column: 69)
!361 = !DILocation(line: 290, column: 22, scope: !360)
!362 = !DILocation(line: 290, column: 35, scope: !360)
!363 = !DILocation(line: 289, column: 16, scope: !360)
!364 = !DILocation(line: 291, column: 21, scope: !360)
!365 = !DILocation(line: 291, column: 16, scope: !360)
!366 = !DILocation(line: 292, column: 16, scope: !360)
!367 = !DILocation(line: 294, column: 10, scope: !352)
!368 = !DILocation(line: 287, column: 71, scope: !369)
!369 = !DILexicalBlockFile(scope: !347, file: !19, discriminator: 2)
!370 = !DILocation(line: 287, column: 10, scope: !369)
!371 = distinct !{!371, !372}
!372 = !DILocation(line: 287, column: 10, scope: !343)
!373 = !DILocation(line: 295, column: 7, scope: !343)
!374 = !DILocation(line: 297, column: 12, scope: !338)
!375 = !DILocation(line: 297, column: 7, scope: !338)
!376 = !DILocation(line: 299, column: 11, scope: !377)
!377 = distinct !DILexicalBlock(scope: !338, file: !19, line: 299, column: 11)
!378 = !DILocation(line: 299, column: 11, scope: !338)
!379 = !DILocation(line: 300, column: 10, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !19, line: 299, column: 43)
!381 = !DILocation(line: 301, column: 10, scope: !380)
!382 = !DILocation(line: 304, column: 11, scope: !383)
!383 = distinct !DILexicalBlock(scope: !338, file: !19, line: 304, column: 11)
!384 = !DILocation(line: 304, column: 11, scope: !338)
!385 = !DILocation(line: 305, column: 10, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !19, line: 304, column: 49)
!387 = !DILocation(line: 306, column: 10, scope: !386)
!388 = !DILocation(line: 309, column: 4, scope: !338)
!389 = !DILocation(line: 310, column: 12, scope: !390)
!390 = distinct !DILexicalBlock(scope: !328, file: !19, line: 309, column: 11)
!391 = !DILocation(line: 310, column: 7, scope: !390)
!392 = !DILocation(line: 313, column: 9, scope: !393)
!393 = distinct !DILexicalBlock(scope: !313, file: !19, line: 313, column: 8)
!394 = !DILocation(line: 313, column: 8, scope: !313)
!395 = !DILocation(line: 314, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !19, line: 313, column: 46)
!397 = !DILocation(line: 315, column: 7, scope: !396)
!398 = !DILocation(line: 319, column: 4, scope: !313)
!399 = !DILocation(line: 332, column: 8, scope: !400)
!400 = distinct !DILexicalBlock(scope: !313, file: !19, line: 332, column: 8)
!401 = !DILocation(line: 332, column: 16, scope: !400)
!402 = !DILocation(line: 332, column: 8, scope: !313)
!403 = !DILocation(line: 333, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !19, line: 332, column: 24)
!405 = !DILocation(line: 337, column: 7, scope: !404)
!406 = !DILocation(line: 340, column: 4, scope: !313)
!407 = !DILocation(line: 341, column: 1, scope: !313)
!408 = distinct !DISubprogram(name: "VmCheckSafe", scope: !19, file: !19, line: 138, type: !409, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!409 = !DISubroutineType(types: !410)
!410 = !{!58, !411}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "SafeCheckFn", file: !19, line: 71, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!413 = !DILocalVariable(name: "checkFn", arg: 1, scope: !408, file: !19, line: 138, type: !411)
!414 = !DILocation(line: 138, column: 25, scope: !408)
!415 = !DILocalVariable(name: "result", scope: !408, file: !19, line: 140, type: !58)
!416 = !DILocation(line: 140, column: 9, scope: !408)
!417 = !DILocation(line: 154, column: 4, scope: !408)
!418 = distinct !{!418, !417}
!419 = !DILocalVariable(name: "signals", scope: !420, file: !19, line: 155, type: !421)
!420 = distinct !DILexicalBlock(scope: !408, file: !19, line: 154, column: 7)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, align: 32, elements: !29)
!422 = !DILocation(line: 155, column: 11, scope: !420)
!423 = !DILocalVariable(name: "olds", scope: !420, file: !19, line: 159, type: !424)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 2432, align: 64, elements: !29)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !426, line: 24, size: 1216, align: 64, elements: !427)
!426 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!427 = !{!428, !513, !514, !515}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !425, file: !426, line: 35, baseType: !429, size: 64, align: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !426, line: 28, size: 64, align: 64, elements: !430)
!430 = !{!431, !437}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !429, file: !426, line: 31, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !433, line: 85, baseType: !434)
!433 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !45}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !429, file: !426, line: 33, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !45, !441, !16}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !443, line: 133, baseType: !444)
!443 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 62, size: 1024, align: 64, elements: !445)
!445 = !{!446, !447, !448, !449}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !444, file: !443, line: 64, baseType: !45, size: 32, align: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !444, file: !443, line: 65, baseType: !45, size: 32, align: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !444, file: !443, line: 67, baseType: !45, size: 32, align: 32, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !444, file: !443, line: 132, baseType: !450, size: 896, align: 64, offset: 128)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !443, line: 69, size: 896, align: 64, elements: !451)
!451 = !{!452, !456, !464, !475, !481, !491, !502, !507}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !450, file: !443, line: 71, baseType: !453, size: 896, align: 32)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 896, align: 32, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 28)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !450, file: !443, line: 78, baseType: !457, size: 64, align: 32)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !443, line: 74, size: 64, align: 32, elements: !458)
!458 = !{!459, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !457, file: !443, line: 76, baseType: !460, size: 32, align: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !461, line: 133, baseType: !45)
!461 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1070")
!462 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !457, file: !443, line: 77, baseType: !463, size: 32, align: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !461, line: 125, baseType: !70)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !450, file: !443, line: 86, baseType: !465, size: 128, align: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !443, line: 81, size: 128, align: 64, elements: !466)
!466 = !{!467, !468, !469}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !465, file: !443, line: 83, baseType: !45, size: 32, align: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !465, file: !443, line: 84, baseType: !45, size: 32, align: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !465, file: !443, line: 85, baseType: !470, size: 64, align: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !443, line: 36, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !443, line: 32, size: 64, align: 64, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !471, file: !443, line: 34, baseType: !45, size: 32, align: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !471, file: !443, line: 35, baseType: !16, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !450, file: !443, line: 94, baseType: !476, size: 128, align: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !443, line: 89, size: 128, align: 64, elements: !477)
!477 = !{!478, !479, !480}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !476, file: !443, line: 91, baseType: !460, size: 32, align: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !476, file: !443, line: 92, baseType: !463, size: 32, align: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !476, file: !443, line: 93, baseType: !470, size: 64, align: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !450, file: !443, line: 104, baseType: !482, size: 256, align: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !443, line: 97, size: 256, align: 64, elements: !483)
!483 = !{!484, !485, !486, !487, !490}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !482, file: !443, line: 99, baseType: !460, size: 32, align: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !482, file: !443, line: 100, baseType: !463, size: 32, align: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !482, file: !443, line: 101, baseType: !45, size: 32, align: 32, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !482, file: !443, line: 102, baseType: !488, size: 64, align: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !443, line: 58, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !461, line: 135, baseType: !41)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !482, file: !443, line: 103, baseType: !488, size: 64, align: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !450, file: !443, line: 116, baseType: !492, size: 256, align: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !443, line: 107, size: 256, align: 64, elements: !493)
!493 = !{!494, !495, !497}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !492, file: !443, line: 109, baseType: !16, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !492, file: !443, line: 110, baseType: !496, size: 16, align: 16, offset: 64)
!496 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !492, file: !443, line: 115, baseType: !498, size: 128, align: 64, offset: 128)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !492, file: !443, line: 111, size: 128, align: 64, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !498, file: !443, line: 113, baseType: !16, size: 64, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !498, file: !443, line: 114, baseType: !16, size: 64, align: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !450, file: !443, line: 123, baseType: !503, size: 128, align: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !443, line: 119, size: 128, align: 64, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !503, file: !443, line: 121, baseType: !41, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !503, file: !443, line: 122, baseType: !45, size: 32, align: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !450, file: !443, line: 131, baseType: !508, size: 128, align: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !443, line: 126, size: 128, align: 64, elements: !509)
!509 = !{!510, !511, !512}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !508, file: !443, line: 128, baseType: !16, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !508, file: !443, line: 129, baseType: !45, size: 32, align: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !508, file: !443, line: 130, baseType: !70, size: 32, align: 32, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !425, file: !426, line: 43, baseType: !47, size: 1024, align: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !425, file: !426, line: 46, baseType: !45, size: 32, align: 32, offset: 1088)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !425, file: !426, line: 49, baseType: !516, size: 64, align: 64, offset: 1152)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null}
!519 = !DILocation(line: 159, column: 24, scope: !420)
!520 = !DILocation(line: 161, column: 34, scope: !521)
!521 = distinct !DILexicalBlock(scope: !420, file: !19, line: 161, column: 11)
!522 = !DILocation(line: 161, column: 43, scope: !521)
!523 = !DILocation(line: 161, column: 11, scope: !521)
!524 = !DILocation(line: 162, column: 54, scope: !521)
!525 = !DILocation(line: 161, column: 11, scope: !420)
!526 = !DILocation(line: 163, column: 10, scope: !527)
!527 = distinct !DILexicalBlock(scope: !521, file: !19, line: 162, column: 60)
!528 = !DILocation(line: 164, column: 10, scope: !527)
!529 = !DILocation(line: 167, column: 10, scope: !530)
!530 = distinct !DILexicalBlock(scope: !420, file: !19, line: 167, column: 10)
!531 = !DILocation(line: 167, column: 34, scope: !530)
!532 = !DILocation(line: 167, column: 10, scope: !420)
!533 = !DILocation(line: 168, column: 19, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !19, line: 167, column: 40)
!535 = !DILocation(line: 169, column: 19, scope: !534)
!536 = !DILocation(line: 169, column: 17, scope: !534)
!537 = !DILocation(line: 170, column: 7, scope: !534)
!538 = !DILocation(line: 171, column: 19, scope: !539)
!539 = distinct !DILexicalBlock(scope: !530, file: !19, line: 170, column: 14)
!540 = !DILocation(line: 174, column: 36, scope: !541)
!541 = distinct !DILexicalBlock(scope: !420, file: !19, line: 174, column: 11)
!542 = !DILocation(line: 174, column: 45, scope: !541)
!543 = !DILocation(line: 174, column: 11, scope: !541)
!544 = !DILocation(line: 174, column: 91, scope: !541)
!545 = !DILocation(line: 174, column: 11, scope: !420)
!546 = !DILocation(line: 175, column: 10, scope: !547)
!547 = distinct !DILexicalBlock(scope: !541, file: !19, line: 174, column: 97)
!548 = !DILocation(line: 176, column: 7, scope: !547)
!549 = !DILocation(line: 177, column: 4, scope: !420)
!550 = !DILocation(line: 180, column: 11, scope: !408)
!551 = !DILocation(line: 180, column: 4, scope: !408)
!552 = distinct !DISubprogram(name: "VmCheckSegvHandler", scope: !19, file: !19, line: 108, type: !435, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !71)
!553 = !DILocalVariable(name: "clientData", arg: 1, scope: !552, file: !19, line: 108, type: !45)
!554 = !DILocation(line: 108, column: 24, scope: !552)
!555 = !DILocation(line: 110, column: 8, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !19, line: 110, column: 8)
!557 = !DILocation(line: 110, column: 8, scope: !552)
!558 = !DILocation(line: 111, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !19, line: 110, column: 18)
!560 = !DILocation(line: 113, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !556, file: !19, line: 112, column: 11)
!562 = !DILocation(line: 115, column: 1, scope: !552)
