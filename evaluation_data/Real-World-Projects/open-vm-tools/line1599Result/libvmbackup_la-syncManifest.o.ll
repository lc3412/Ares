; ModuleID = './libvmbackup_la-syncManifest.o.i'
source_filename = "./libvmbackup_la-syncManifest.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SyncManifest = type { i8*, i8* }
%struct.VmBackupState = type { %struct.ToolsAppCtx*, %struct.VmBackupOp*, i8*, %struct.GStaticMutex, i8*, i8*, i32, %struct._GSource*, %struct._GSource*, %struct._GSource*, i8 (%struct.VmBackupState*)*, i8, i8, i8, i8, i8*, i8, i8, i8, i8, i8*, i32, i8*, i8*, i8*, i64, i8*, i32, i32, %struct.VmBackupSyncProvider*, %struct.VmBackupSyncCompleter*, i32, i32, i8, i8, i8 }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
%struct.VmBackupOp = type { i32 (%struct.VmBackupOp*)*, void (%struct.VmBackupOp*)*, void (%struct.VmBackupOp*)* }
%struct.GStaticMutex = type { %union._GMutex*, %union.pthread_mutex_t }
%union._GMutex = type { i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct.VmBackupSyncProvider = type { void (%struct.ToolsAppCtx*, i8*)*, i8 (%struct.VmBackupState*, i8*)*, void (%struct.VmBackupSyncProvider*)*, i8* }
%struct.VmBackupSyncCompleter = type { i8 (%struct.VmBackupState*, i8*)*, i8 (%struct.VmBackupState*, i8*)*, void (%struct.VmBackupSyncCompleter*)*, i8* }
%struct.SyncHandle = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"vmbackup\00", align 1
@syncManifestSwitch = internal constant [18 x i8] c"enableXmlManifest\00", align 16
@.str.1 = private unnamed_addr constant [34 x i8] c"No backup manifest - %s is false\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"No backup manifest requested\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"No backup manifest needed since using non-quiescing backend.\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@syncManifestName = internal constant [21 x i8] c"quiesce_manifest.xml\00", align 16
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Error opening backup manifest file %s\0A\00", align 1
@syncManifestFmt = internal constant [112 x i8] c"<quiesceManifest>\0A   <productVersion>%d</productVersion>\0A   <providerName>%s</providerName>\0A</quiesceManifest>\0A\00", align 16
@.str.7 = private unnamed_addr constant [46 x i8] c"Error writing backup manifest file %s: %d %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"req.genericManifest\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"Error trying to send VMBACKUP_EVENT_GENERIC_MANIFEST.\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.SyncManifest* @SyncNewManifest(%struct.VmBackupState*, %struct.SyncHandle*) #0 !dbg !81 {
  %3 = alloca %struct.SyncManifest*, align 8
  %4 = alloca %struct.VmBackupState*, align 8
  %5 = alloca %struct.SyncHandle*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca %struct.SyncManifest*, align 8
  store %struct.VmBackupState* %0, %struct.VmBackupState** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %4, metadata !348, metadata !349), !dbg !350
  store %struct.SyncHandle* %1, %struct.SyncHandle** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle** %5, metadata !351, metadata !349), !dbg !352
  call void @llvm.dbg.declare(metadata i8* %6, metadata !353, metadata !349), !dbg !354
  call void @llvm.dbg.declare(metadata i8** %7, metadata !355, metadata !349), !dbg !356
  call void @llvm.dbg.declare(metadata %struct.SyncManifest** %8, metadata !357, metadata !349), !dbg !358
  %9 = load %struct.VmBackupState*, %struct.VmBackupState** %4, align 8, !dbg !359
  %10 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %9, i32 0, i32 0, !dbg !361
  %11 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %10, align 8, !dbg !361
  %12 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %11, i32 0, i32 6, !dbg !362
  %13 = load %struct._GKeyFile*, %struct._GKeyFile** %12, align 8, !dbg !362
  %14 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @syncManifestSwitch, i32 0, i32 0), i32 1), !dbg !363
  %15 = icmp ne i32 %14, 0, !dbg !363
  br i1 %15, label %17, label %16, !dbg !364

; <label>:16:                                     ; preds = %2
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @syncManifestSwitch, i32 0, i32 0)), !dbg !365
  store %struct.SyncManifest* null, %struct.SyncManifest** %3, align 8, !dbg !367
  br label %42, !dbg !367

; <label>:17:                                     ; preds = %2
  %18 = load %struct.VmBackupState*, %struct.VmBackupState** %4, align 8, !dbg !368
  %19 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %18, i32 0, i32 12, !dbg !370
  %20 = load i8, i8* %19, align 1, !dbg !370
  %21 = icmp ne i8 %20, 0, !dbg !368
  br i1 %21, label %23, label %22, !dbg !371

; <label>:22:                                     ; preds = %17
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0)), !dbg !372
  store %struct.SyncManifest* null, %struct.SyncManifest** %3, align 8, !dbg !374
  br label %42, !dbg !374

; <label>:23:                                     ; preds = %17
  %24 = load %struct.SyncHandle*, %struct.SyncHandle** %5, align 8, !dbg !375
  call void @SyncDriver_GetAttr(%struct.SyncHandle* %24, i8** %7, i8* %6), !dbg !376
  %25 = load i8, i8* %6, align 1, !dbg !377
  %26 = icmp ne i8 %25, 0, !dbg !377
  br i1 %26, label %28, label %27, !dbg !379

; <label>:27:                                     ; preds = %23
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i32 0, i32 0)), !dbg !380
  store %struct.SyncManifest* null, %struct.SyncManifest** %3, align 8, !dbg !382
  br label %42, !dbg !382

; <label>:28:                                     ; preds = %23
  %29 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !383
  %30 = bitcast i8* %29 to %struct.SyncManifest*, !dbg !384
  store %struct.SyncManifest* %30, %struct.SyncManifest** %8, align 8, !dbg !385
  %31 = load %struct.VmBackupState*, %struct.VmBackupState** %4, align 8, !dbg !386
  %32 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %31, i32 0, i32 24, !dbg !387
  %33 = load i8*, i8** %32, align 8, !dbg !387
  %34 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @syncManifestName, i32 0, i32 0)), !dbg !388
  %35 = load %struct.SyncManifest*, %struct.SyncManifest** %8, align 8, !dbg !389
  %36 = getelementptr inbounds %struct.SyncManifest, %struct.SyncManifest* %35, i32 0, i32 0, !dbg !390
  store i8* %34, i8** %36, align 8, !dbg !391
  %37 = load i8*, i8** %7, align 8, !dbg !392
  %38 = call noalias i8* @g_strdup(i8* %37), !dbg !393
  %39 = load %struct.SyncManifest*, %struct.SyncManifest** %8, align 8, !dbg !394
  %40 = getelementptr inbounds %struct.SyncManifest, %struct.SyncManifest* %39, i32 0, i32 1, !dbg !395
  store i8* %38, i8** %40, align 8, !dbg !396
  %41 = load %struct.SyncManifest*, %struct.SyncManifest** %8, align 8, !dbg !397
  store %struct.SyncManifest* %41, %struct.SyncManifest** %3, align 8, !dbg !398
  br label %42, !dbg !398

; <label>:42:                                     ; preds = %28, %27, %22, %16
  %43 = load %struct.SyncManifest*, %struct.SyncManifest** %3, align 8, !dbg !399
  ret %struct.SyncManifest* %43, !dbg !399
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile*, i8*, i8*, i32) #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare void @SyncDriver_GetAttr(%struct.SyncHandle*, i8**, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @SyncManifestRelease(%struct.SyncManifest*) #0 !dbg !400 {
  %2 = alloca %struct.SyncManifest*, align 8
  store %struct.SyncManifest* %0, %struct.SyncManifest** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncManifest** %2, metadata !403, metadata !349), !dbg !404
  %3 = load %struct.SyncManifest*, %struct.SyncManifest** %2, align 8, !dbg !405
  %4 = icmp ne %struct.SyncManifest* %3, null, !dbg !407
  br i1 %4, label %5, label %14, !dbg !408

; <label>:5:                                      ; preds = %1
  %6 = load %struct.SyncManifest*, %struct.SyncManifest** %2, align 8, !dbg !409
  %7 = getelementptr inbounds %struct.SyncManifest, %struct.SyncManifest* %6, i32 0, i32 0, !dbg !411
  %8 = load i8*, i8** %7, align 8, !dbg !411
  call void @g_free(i8* %8), !dbg !412
  %9 = load %struct.SyncManifest*, %struct.SyncManifest** %2, align 8, !dbg !413
  %10 = getelementptr inbounds %struct.SyncManifest, %struct.SyncManifest* %9, i32 0, i32 1, !dbg !414
  %11 = load i8*, i8** %10, align 8, !dbg !414
  call void @g_free(i8* %11), !dbg !415
  %12 = load %struct.SyncManifest*, %struct.SyncManifest** %2, align 8, !dbg !416
  %13 = bitcast %struct.SyncManifest* %12 to i8*, !dbg !416
  call void @g_free(i8* %13), !dbg !417
  br label %14, !dbg !418

; <label>:14:                                     ; preds = %5, %1
  ret void, !dbg !419
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @SyncManifestSend(%struct.SyncManifest*) #0 !dbg !420 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.SyncManifest*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  store %struct.SyncManifest* %0, %struct.SyncManifest** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncManifest** %3, metadata !423, metadata !349), !dbg !424
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !425, metadata !349), !dbg !483
  call void @llvm.dbg.declare(metadata i32* %5, metadata !484, metadata !349), !dbg !485
  %6 = load %struct.SyncManifest*, %struct.SyncManifest** %3, align 8, !dbg !486
  %7 = getelementptr inbounds %struct.SyncManifest, %struct.SyncManifest* %6, i32 0, i32 0, !dbg !487
  %8 = load i8*, i8** %7, align 8, !dbg !487
  %9 = call i32 @unlink(i8* %8) #5, !dbg !488
  %10 = load %struct.SyncManifest*, %struct.SyncManifest** %3, align 8, !dbg !489
  %11 = getelementptr inbounds %struct.SyncManifest, %struct.SyncManifest* %10, i32 0, i32 0, !dbg !490
  %12 = load i8*, i8** %11, align 8, !dbg !490
  %13 = call %struct._IO_FILE* @fopen64(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !491
  store %struct._IO_FILE* %13, %struct._IO_FILE** %4, align 8, !dbg !492
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !493
  %15 = icmp eq %struct._IO_FILE* %14, null, !dbg !495
  br i1 %15, label %16, label %20, !dbg !496

; <label>:16:                                     ; preds = %1
  %17 = load %struct.SyncManifest*, %struct.SyncManifest** %3, align 8, !dbg !497
  %18 = getelementptr inbounds %struct.SyncManifest, %struct.SyncManifest* %17, i32 0, i32 0, !dbg !499
  %19 = load i8*, i8** %18, align 8, !dbg !499
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i8* %19), !dbg !500
  store i8 0, i8* %2, align 1, !dbg !501
  br label %47, !dbg !501

; <label>:20:                                     ; preds = %1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !502
  %22 = load %struct.SyncManifest*, %struct.SyncManifest** %3, align 8, !dbg !503
  %23 = getelementptr inbounds %struct.SyncManifest, %struct.SyncManifest* %22, i32 0, i32 1, !dbg !504
  %24 = load i8*, i8** %23, align 8, !dbg !504
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @syncManifestFmt, i32 0, i32 0), i32 10336, i8* %24), !dbg !505
  store i32 %25, i32* %5, align 4, !dbg !506
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !507
  %27 = call i32 @fclose(%struct._IO_FILE* %26), !dbg !508
  %28 = load i32, i32* %5, align 4, !dbg !509
  %29 = icmp slt i32 %28, 0, !dbg !511
  br i1 %29, label %30, label %39, !dbg !512

; <label>:30:                                     ; preds = %20
  %31 = load %struct.SyncManifest*, %struct.SyncManifest** %3, align 8, !dbg !513
  %32 = getelementptr inbounds %struct.SyncManifest, %struct.SyncManifest* %31, i32 0, i32 0, !dbg !515
  %33 = load i8*, i8** %32, align 8, !dbg !515
  %34 = call i32* @__errno_location() #1, !dbg !516
  %35 = load i32, i32* %34, align 4, !dbg !517
  %36 = call i32* @__errno_location() #1, !dbg !518
  %37 = load i32, i32* %36, align 4, !dbg !517
  %38 = call i8* @strerror(i32 %37) #5, !dbg !520
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0), i8* %33, i32 %35, i8* %38), !dbg !522
  store i8 0, i8* %2, align 1, !dbg !524
  br label %47, !dbg !524

; <label>:39:                                     ; preds = %20
  %40 = load %struct.SyncManifest*, %struct.SyncManifest** %3, align 8, !dbg !525
  %41 = getelementptr inbounds %struct.SyncManifest, %struct.SyncManifest* %40, i32 0, i32 0, !dbg !527
  %42 = load i8*, i8** %41, align 8, !dbg !527
  %43 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* %42), !dbg !528
  %44 = icmp ne i8 %43, 0, !dbg !528
  br i1 %44, label %46, label %45, !dbg !529

; <label>:45:                                     ; preds = %39
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i32 0, i32 0)), !dbg !530
  store i8 0, i8* %2, align 1, !dbg !532
  br label %47, !dbg !532

; <label>:46:                                     ; preds = %39
  store i8 1, i8* %2, align 1, !dbg !533
  br label %47, !dbg !533

; <label>:47:                                     ; preds = %46, %45, %30, %16
  %48 = load i8, i8* %2, align 1, !dbg !534
  ret i8 %48, !dbg !534
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

declare signext i8 @VmBackup_SendEvent(i8*, i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!78, !79}
!llvm.ident = !{!80}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !52, globals: !63)
!1 = !DIFile(filename: "libvmbackup_la-syncManifest.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!2 = !{!3, !7, !14, !25, !31, !43}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 43, size: 32, align: 32, elements: !9)
!8 = !DIFile(filename: "vmBackupInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!9 = !{!10, !11, !12, !13}
!10 = !DIEnumerator(name: "VMBACKUP_STATUS_PENDING", value: 0)
!11 = !DIEnumerator(name: "VMBACKUP_STATUS_FINISHED", value: 1)
!12 = !DIEnumerator(name: "VMBACKUP_STATUS_CANCELED", value: 2)
!13 = !DIEnumerator(name: "VMBACKUP_STATUS_ERROR", value: 3)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 63, size: 32, align: 32, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24}
!16 = !DIEnumerator(name: "VMBACKUP_MSTATE_IDLE", value: 0)
!17 = !DIEnumerator(name: "VMBACKUP_MSTATE_SCRIPT_FREEZE", value: 1)
!18 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_FREEZE_WAIT", value: 2)
!19 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_FREEZE", value: 3)
!20 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_THAW", value: 4)
!21 = !DIEnumerator(name: "VMBACKUP_MSTATE_SCRIPT_THAW", value: 5)
!22 = !DIEnumerator(name: "VMBACKUP_MSTATE_COMPLETE_WAIT", value: 6)
!23 = !DIEnumerator(name: "VMBACKUP_MSTATE_SCRIPT_ERROR", value: 7)
!24 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_ERROR", value: 8)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 50, size: 32, align: 32, elements: !26)
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "VMBACKUP_FREEZE_PENDING", value: 0)
!28 = !DIEnumerator(name: "VMBACKUP_FREEZE_FINISHED", value: 1)
!29 = !DIEnumerator(name: "VMBACKUP_FREEZE_CANCELED", value: 2)
!30 = !DIEnumerator(name: "VMBACKUP_FREEZE_ERROR", value: 3)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 51, size: 32, align: 32, elements: !33)
!32 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42}
!34 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!35 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!36 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!37 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!38 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!39 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!40 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!41 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!42 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 78, size: 32, align: 32, elements: !45)
!44 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/guestrpc/vmbackup.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!45 = !{!46, !47, !48, !49, !50, !51}
!46 = !DIEnumerator(name: "VMBACKUP_SUCCESS", value: 0)
!47 = !DIEnumerator(name: "VMBACKUP_INVALID_STATE", value: 1)
!48 = !DIEnumerator(name: "VMBACKUP_SCRIPT_ERROR", value: 2)
!49 = !DIEnumerator(name: "VMBACKUP_SYNC_ERROR", value: 3)
!50 = !DIEnumerator(name: "VMBACKUP_REMOTE_ABORT", value: 4)
!51 = !DIEnumerator(name: "VMBACKUP_UNEXPECTED_ERROR", value: 5)
!52 = !{!53, !62}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncManifest", file: !55, line: 37, baseType: !56)
!55 = !DIFile(filename: "syncManifest.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 34, size: 128, align: 64, elements: !57)
!57 = !{!58, !61}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !56, file: !55, line: 35, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "providerName", scope: !56, file: !55, line: 36, baseType: !59, size: 64, align: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!63 = !{!64, !70, !74}
!64 = distinct !DIGlobalVariable(name: "syncManifestSwitch", scope: !0, file: !65, line: 50, type: !66, isLocal: true, isDefinition: true, variable: [18 x i8]* @syncManifestSwitch)
!65 = !DIFile(filename: "syncManifest.c", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 144, align: 8, elements: !68)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!68 = !{!69}
!69 = !DISubrange(count: 18)
!70 = distinct !DIGlobalVariable(name: "syncManifestName", scope: !0, file: !65, line: 39, type: !71, isLocal: true, isDefinition: true, variable: [21 x i8]* @syncManifestName)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 168, align: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 21)
!74 = distinct !DIGlobalVariable(name: "syncManifestFmt", scope: !0, file: !65, line: 40, type: !75, isLocal: true, isDefinition: true, variable: [112 x i8]* @syncManifestFmt)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 896, align: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 112)
!78 = !{i32 2, !"Dwarf Version", i32 4}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!81 = distinct !DISubprogram(name: "SyncNewManifest", scope: !65, file: !65, line: 67, type: !82, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !347)
!82 = !DISubroutineType(types: !83)
!83 = !{!53, !84, !343}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupState", file: !8, line: 141, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupState", file: !8, line: 104, size: 1984, align: 64, elements: !87)
!87 = !{!88, !127, !143, !144, !191, !192, !193, !194, !272, !273, !274, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !292, !293, !294, !295, !296, !301, !302, !304, !306, !326, !338, !339, !340, !341, !342}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !86, file: !8, line: 105, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !92)
!92 = !{!93, !95, !100, !104, !105, !110, !115, !120, !121, !122, !125}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !91, file: !4, line: 243, baseType: !94, size: 32, align: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !4, line: 245, baseType: !96, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !99, line: 46, baseType: !60)
!99 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !91, file: !4, line: 247, baseType: !101, size: 32, align: 32, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !99, line: 50, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !99, line: 49, baseType: !103)
!103 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !91, file: !4, line: 249, baseType: !103, size: 32, align: 32, offset: 160)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !91, file: !4, line: 251, baseType: !106, size: 64, align: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !108, line: 56, baseType: !109)
!108 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !108, line: 56, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !91, file: !4, line: 253, baseType: !111, size: 64, align: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !113, line: 48, baseType: !114)
!113 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !113, line: 48, flags: DIFlagFwdDecl)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !91, file: !4, line: 255, baseType: !116, size: 64, align: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !118, line: 48, baseType: !119)
!118 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !118, line: 48, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !91, file: !4, line: 261, baseType: !103, size: 32, align: 32, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !91, file: !4, line: 263, baseType: !103, size: 32, align: 32, offset: 416)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !91, file: !4, line: 265, baseType: !123, size: 64, align: 64, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !91, file: !4, line: 273, baseType: !126, size: 64, align: 64, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !99, line: 77, baseType: !62)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "currentOp", scope: !86, file: !8, line: 106, baseType: !128, size: 64, align: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupOp", file: !8, line: 86, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupOp", file: !8, line: 82, size: 192, align: 64, elements: !131)
!131 = !{!132, !138, !142}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "queryFn", scope: !130, file: !8, line: 83, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupOpStatus", file: !8, line: 48, baseType: !7)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "releaseFn", scope: !130, file: !8, line: 84, baseType: !139, size: 64, align: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !137}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "cancelFn", scope: !130, file: !8, line: 85, baseType: !139, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "currentOpName", scope: !86, file: !8, line: 107, baseType: !124, size: 64, align: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "opLock", scope: !86, file: !8, line: 108, baseType: !145, size: 384, align: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticMutex", file: !146, line: 140, baseType: !147)
!146 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 133, size: 384, align: 64, elements: !148)
!148 = !{!149, !162}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !147, file: !146, line: 135, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !152, line: 51, baseType: !153)
!152 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !152, line: 58, size: 64, align: 64, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !153, file: !152, line: 61, baseType: !126, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !153, file: !152, line: 62, baseType: !157, size: 64, align: 32)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 64, align: 32, elements: !160)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !99, line: 55, baseType: !159)
!159 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!160 = !{!161}
!161 = !DISubrange(count: 2)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !147, file: !146, line: 138, baseType: !163, size: 320, align: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !164, line: 128, baseType: !165)
!164 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !164, line: 90, size: 320, align: 64, elements: !166)
!166 = !{!167, !185, !189}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !165, file: !164, line: 125, baseType: !168, size: 320, align: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !164, line: 92, size: 320, align: 64, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !177, !178}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !168, file: !164, line: 94, baseType: !103, size: 32, align: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !168, file: !164, line: 95, baseType: !159, size: 32, align: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !168, file: !164, line: 96, baseType: !103, size: 32, align: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !168, file: !164, line: 98, baseType: !159, size: 32, align: 32, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !168, file: !164, line: 102, baseType: !103, size: 32, align: 32, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !168, file: !164, line: 104, baseType: !176, size: 16, align: 16, offset: 160)
!176 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !168, file: !164, line: 105, baseType: !176, size: 16, align: 16, offset: 176)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !168, file: !164, line: 106, baseType: !179, size: 128, align: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !164, line: 79, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !164, line: 75, size: 128, align: 64, elements: !181)
!181 = !{!182, !184}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !180, file: !164, line: 77, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !180, file: !164, line: 78, baseType: !183, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !165, file: !164, line: 126, baseType: !186, size: 320, align: 8)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 320, align: 8, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 40)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !165, file: !164, line: 127, baseType: !190, size: 64, align: 64)
!190 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "volumes", scope: !86, file: !8, line: 109, baseType: !59, size: 64, align: 64, offset: 576)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "snapshots", scope: !86, file: !8, line: 110, baseType: !59, size: 64, align: 64, offset: 640)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pollPeriod", scope: !86, file: !8, line: 111, baseType: !158, size: 32, align: 32, offset: 704)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "abortTimer", scope: !86, file: !8, line: 112, baseType: !195, size: 64, align: 64, offset: 768)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !108, line: 64, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !108, line: 171, size: 768, align: 64, elements: !198)
!198 = !{!199, !200, !220, !249, !250, !254, !255, !256, !257, !265, !266, !267, !268}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !197, file: !108, line: 174, baseType: !126, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !197, file: !108, line: 175, baseType: !201, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !108, line: 77, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !108, line: 196, size: 192, align: 64, elements: !204)
!204 = !{!205, !209, !210}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !203, file: !108, line: 198, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !126}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !203, file: !108, line: 199, baseType: !206, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !203, file: !108, line: 200, baseType: !211, size: 64, align: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !126, !195, !214, !219}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !108, line: 155, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!101, !126}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !197, file: !108, line: 177, baseType: !221, size: 64, align: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !108, line: 130, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !108, line: 214, size: 384, align: 64, elements: !225)
!225 = !{!226, !231, !235, !239, !243, !244}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !224, file: !108, line: 216, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!101, !195, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !224, file: !108, line: 218, baseType: !232, size: 64, align: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!101, !195}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !224, file: !108, line: 219, baseType: !236, size: 64, align: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!101, !195, !215, !126}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !224, file: !108, line: 222, baseType: !240, size: 64, align: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !195}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !224, file: !108, line: 226, baseType: !215, size: 64, align: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !224, file: !108, line: 227, baseType: !245, size: 64, align: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !108, line: 212, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !197, file: !108, line: 178, baseType: !158, size: 32, align: 32, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !197, file: !108, line: 180, baseType: !251, size: 64, align: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !108, line: 48, baseType: !253)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !108, line: 48, flags: DIFlagFwdDecl)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !197, file: !108, line: 182, baseType: !102, size: 32, align: 32, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !108, line: 183, baseType: !158, size: 32, align: 32, offset: 352)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !197, file: !108, line: 184, baseType: !158, size: 32, align: 32, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !197, file: !108, line: 186, baseType: !258, size: 64, align: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !260, line: 37, baseType: !261)
!260 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !260, line: 39, size: 128, align: 64, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !261, file: !260, line: 41, baseType: !126, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !260, line: 42, baseType: !258, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !197, file: !108, line: 188, baseType: !195, size: 64, align: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !108, line: 189, baseType: !195, size: 64, align: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !108, line: 191, baseType: !59, size: 64, align: 64, offset: 640)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !197, file: !108, line: 193, baseType: !269, size: 64, align: 64, offset: 704)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !108, line: 65, baseType: !271)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !108, line: 65, flags: DIFlagFwdDecl)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "timerEvent", scope: !86, file: !8, line: 113, baseType: !195, size: 64, align: 64, offset: 832)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "keepAlive", scope: !86, file: !8, line: 114, baseType: !195, size: 64, align: 64, offset: 896)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !86, file: !8, line: 115, baseType: !275, size: 64, align: 64, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !280}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !279, line: 230, baseType: !60)
!279 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "forceRequeue", scope: !86, file: !8, line: 116, baseType: !278, size: 8, align: 8, offset: 1024)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "generateManifests", scope: !86, file: !8, line: 117, baseType: !278, size: 8, align: 8, offset: 1032)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceApps", scope: !86, file: !8, line: 118, baseType: !278, size: 8, align: 8, offset: 1040)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceFS", scope: !86, file: !8, line: 119, baseType: !278, size: 8, align: 8, offset: 1048)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "excludedFileSystems", scope: !86, file: !8, line: 120, baseType: !59, size: 64, align: 64, offset: 1088)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "allowHWProvider", scope: !86, file: !8, line: 121, baseType: !278, size: 8, align: 8, offset: 1152)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "execScripts", scope: !86, file: !8, line: 122, baseType: !278, size: 8, align: 8, offset: 1160)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "enableNullDriver", scope: !86, file: !8, line: 123, baseType: !278, size: 8, align: 8, offset: 1168)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "needsPriv", scope: !86, file: !8, line: 124, baseType: !278, size: 8, align: 8, offset: 1176)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "scriptArg", scope: !86, file: !8, line: 125, baseType: !291, size: 64, align: 64, offset: 1216)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !86, file: !8, line: 126, baseType: !158, size: 32, align: 32, offset: 1280)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !86, file: !8, line: 127, baseType: !126, size: 64, align: 64, offset: 1344)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "scripts", scope: !86, file: !8, line: 128, baseType: !62, size: 64, align: 64, offset: 1408)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "configDir", scope: !86, file: !8, line: 129, baseType: !124, size: 64, align: 64, offset: 1472)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "currentScript", scope: !86, file: !8, line: 130, baseType: !297, size: 64, align: 64, offset: 1536)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !298, line: 109, baseType: !299)
!298 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !300, line: 172, baseType: !190)
!300 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!301 = !DIDerivedType(tag: DW_TAG_member, name: "errorMsg", scope: !86, file: !8, line: 131, baseType: !291, size: 64, align: 64, offset: 1600)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "machineState", scope: !86, file: !8, line: 132, baseType: !303, size: 32, align: 32, offset: 1664)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupMState", file: !8, line: 73, baseType: !14)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "freezeStatus", scope: !86, file: !8, line: 133, baseType: !305, size: 32, align: 32, offset: 1696)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupFreezeStatus", file: !8, line: 55, baseType: !25)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "provider", scope: !86, file: !8, line: 134, baseType: !307, size: 64, align: 64, offset: 1728)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupSyncProvider", file: !8, line: 154, size: 256, align: 64, elements: !309)
!309 = !{!310, !316, !321, !325}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !308, file: !8, line: 158, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCorePoolCb", file: !312, line: 54, baseType: !313)
!312 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/threadPool.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !89, !126}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "snapshotDone", scope: !308, file: !8, line: 160, baseType: !317, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupProviderCallback", file: !8, line: 144, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!278, !84, !62}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !308, file: !8, line: 161, baseType: !322, size: 64, align: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !307}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !308, file: !8, line: 162, baseType: !62, size: 64, align: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "completer", scope: !86, file: !8, line: 135, baseType: !327, size: 64, align: 64, offset: 1792)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupSyncCompleter", file: !8, line: 171, size: 256, align: 64, elements: !329)
!329 = !{!330, !332, !333, !337}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !328, file: !8, line: 172, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupCompleterCallback", file: !8, line: 145, baseType: !318)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "snapshotCompleted", scope: !328, file: !8, line: 173, baseType: !331, size: 64, align: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !328, file: !8, line: 174, baseType: !334, size: 64, align: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !327}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !328, file: !8, line: 175, baseType: !62, size: 64, align: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupContext", scope: !86, file: !8, line: 136, baseType: !102, size: 32, align: 32, offset: 1856)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupType", scope: !86, file: !8, line: 137, baseType: !102, size: 32, align: 32, offset: 1888)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "vssBootableSystemState", scope: !86, file: !8, line: 138, baseType: !278, size: 8, align: 8, offset: 1920)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vssPartialFileSupport", scope: !86, file: !8, line: 139, baseType: !278, size: 8, align: 8, offset: 1928)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "vssUseDefault", scope: !86, file: !8, line: 140, baseType: !278, size: 8, align: 8, offset: 1936)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverHandle", file: !344, line: 41, baseType: !345)
!344 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/syncDriver.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "SyncHandle", file: !344, line: 41, flags: DIFlagFwdDecl)
!347 = !{}
!348 = !DILocalVariable(name: "state", arg: 1, scope: !81, file: !65, line: 67, type: !84)
!349 = !DIExpression()
!350 = !DILocation(line: 67, column: 32, scope: !81)
!351 = !DILocalVariable(name: "handle", arg: 2, scope: !81, file: !65, line: 68, type: !343)
!352 = !DILocation(line: 68, column: 34, scope: !81)
!353 = !DILocalVariable(name: "providerQuiesces", scope: !81, file: !65, line: 70, type: !278)
!354 = !DILocation(line: 70, column: 9, scope: !81)
!355 = !DILocalVariable(name: "providerName", scope: !81, file: !65, line: 71, type: !124)
!356 = !DILocation(line: 71, column: 16, scope: !81)
!357 = !DILocalVariable(name: "manifest", scope: !81, file: !65, line: 72, type: !53)
!358 = !DILocation(line: 72, column: 18, scope: !81)
!359 = !DILocation(line: 74, column: 34, scope: !360)
!360 = distinct !DILexicalBlock(scope: !81, file: !65, line: 74, column: 8)
!361 = !DILocation(line: 74, column: 41, scope: !360)
!362 = !DILocation(line: 74, column: 46, scope: !360)
!363 = !DILocation(line: 74, column: 9, scope: !360)
!364 = !DILocation(line: 74, column: 8, scope: !81)
!365 = !DILocation(line: 76, column: 7, scope: !366)
!366 = distinct !DILexicalBlock(scope: !360, file: !65, line: 75, column: 63)
!367 = !DILocation(line: 77, column: 7, scope: !366)
!368 = !DILocation(line: 80, column: 9, scope: !369)
!369 = distinct !DILexicalBlock(scope: !81, file: !65, line: 80, column: 8)
!370 = !DILocation(line: 80, column: 16, scope: !369)
!371 = !DILocation(line: 80, column: 8, scope: !81)
!372 = !DILocation(line: 81, column: 7, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !65, line: 80, column: 35)
!374 = !DILocation(line: 82, column: 7, scope: !373)
!375 = !DILocation(line: 85, column: 23, scope: !81)
!376 = !DILocation(line: 85, column: 4, scope: !81)
!377 = !DILocation(line: 86, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !81, file: !65, line: 86, column: 8)
!379 = !DILocation(line: 86, column: 8, scope: !81)
!380 = !DILocation(line: 87, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !65, line: 86, column: 27)
!382 = !DILocation(line: 89, column: 7, scope: !381)
!383 = !DILocation(line: 92, column: 33, scope: !81)
!384 = !DILocation(line: 92, column: 16, scope: !81)
!385 = !DILocation(line: 92, column: 13, scope: !81)
!386 = !DILocation(line: 93, column: 46, scope: !81)
!387 = !DILocation(line: 93, column: 53, scope: !81)
!388 = !DILocation(line: 93, column: 21, scope: !81)
!389 = !DILocation(line: 93, column: 4, scope: !81)
!390 = !DILocation(line: 93, column: 14, scope: !81)
!391 = !DILocation(line: 93, column: 19, scope: !81)
!392 = !DILocation(line: 95, column: 38, scope: !81)
!393 = !DILocation(line: 95, column: 29, scope: !81)
!394 = !DILocation(line: 95, column: 4, scope: !81)
!395 = !DILocation(line: 95, column: 14, scope: !81)
!396 = !DILocation(line: 95, column: 27, scope: !81)
!397 = !DILocation(line: 96, column: 11, scope: !81)
!398 = !DILocation(line: 96, column: 4, scope: !81)
!399 = !DILocation(line: 97, column: 1, scope: !81)
!400 = distinct !DISubprogram(name: "SyncManifestRelease", scope: !65, file: !65, line: 114, type: !401, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !347)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !53}
!403 = !DILocalVariable(name: "manifest", arg: 1, scope: !400, file: !65, line: 114, type: !53)
!404 = !DILocation(line: 114, column: 35, scope: !400)
!405 = !DILocation(line: 116, column: 8, scope: !406)
!406 = distinct !DILexicalBlock(scope: !400, file: !65, line: 116, column: 8)
!407 = !DILocation(line: 116, column: 17, scope: !406)
!408 = !DILocation(line: 116, column: 8, scope: !400)
!409 = !DILocation(line: 117, column: 14, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !65, line: 116, column: 25)
!411 = !DILocation(line: 117, column: 24, scope: !410)
!412 = !DILocation(line: 117, column: 7, scope: !410)
!413 = !DILocation(line: 118, column: 14, scope: !410)
!414 = !DILocation(line: 118, column: 24, scope: !410)
!415 = !DILocation(line: 118, column: 7, scope: !410)
!416 = !DILocation(line: 119, column: 14, scope: !410)
!417 = !DILocation(line: 119, column: 7, scope: !410)
!418 = !DILocation(line: 120, column: 4, scope: !410)
!419 = !DILocation(line: 121, column: 1, scope: !400)
!420 = distinct !DISubprogram(name: "SyncManifestSend", scope: !65, file: !65, line: 142, type: !421, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !347)
!421 = !DISubroutineType(types: !422)
!422 = !{!278, !53}
!423 = !DILocalVariable(name: "manifest", arg: 1, scope: !420, file: !65, line: 142, type: !53)
!424 = !DILocation(line: 142, column: 32, scope: !420)
!425 = !DILocalVariable(name: "f", scope: !420, file: !65, line: 144, type: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !428, line: 48, baseType: !429)
!428 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !430, line: 241, size: 1728, align: 64, elements: !431)
!430 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !452, !453, !454, !455, !457, !459, !461, !465, !468, !470, !471, !472, !473, !474, !478, !479}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !429, file: !430, line: 242, baseType: !103, size: 32, align: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !429, file: !430, line: 247, baseType: !59, size: 64, align: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !429, file: !430, line: 248, baseType: !59, size: 64, align: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !429, file: !430, line: 249, baseType: !59, size: 64, align: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !429, file: !430, line: 250, baseType: !59, size: 64, align: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !429, file: !430, line: 251, baseType: !59, size: 64, align: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !429, file: !430, line: 252, baseType: !59, size: 64, align: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !429, file: !430, line: 253, baseType: !59, size: 64, align: 64, offset: 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !429, file: !430, line: 254, baseType: !59, size: 64, align: 64, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !429, file: !430, line: 256, baseType: !59, size: 64, align: 64, offset: 576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !429, file: !430, line: 257, baseType: !59, size: 64, align: 64, offset: 640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !429, file: !430, line: 258, baseType: !59, size: 64, align: 64, offset: 704)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !429, file: !430, line: 260, baseType: !445, size: 64, align: 64, offset: 768)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !430, line: 156, size: 192, align: 64, elements: !447)
!447 = !{!448, !449, !451}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !446, file: !430, line: 157, baseType: !445, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !446, file: !430, line: 158, baseType: !450, size: 64, align: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !446, file: !430, line: 162, baseType: !103, size: 32, align: 32, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !429, file: !430, line: 262, baseType: !450, size: 64, align: 64, offset: 832)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !429, file: !430, line: 264, baseType: !103, size: 32, align: 32, offset: 896)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !429, file: !430, line: 268, baseType: !103, size: 32, align: 32, offset: 928)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !429, file: !430, line: 270, baseType: !456, size: 64, align: 64, offset: 960)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !300, line: 131, baseType: !190)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !429, file: !430, line: 274, baseType: !458, size: 16, align: 16, offset: 1024)
!458 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !429, file: !430, line: 275, baseType: !460, size: 8, align: 8, offset: 1040)
!460 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !429, file: !430, line: 276, baseType: !462, size: 8, align: 8, offset: 1048)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 8, align: 8, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 1)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !429, file: !430, line: 280, baseType: !466, size: 64, align: 64, offset: 1088)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !430, line: 150, baseType: null)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !429, file: !430, line: 289, baseType: !469, size: 64, align: 64, offset: 1152)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !300, line: 132, baseType: !190)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !429, file: !430, line: 297, baseType: !62, size: 64, align: 64, offset: 1216)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !429, file: !430, line: 298, baseType: !62, size: 64, align: 64, offset: 1280)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !429, file: !430, line: 299, baseType: !62, size: 64, align: 64, offset: 1344)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !429, file: !430, line: 300, baseType: !62, size: 64, align: 64, offset: 1408)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !429, file: !430, line: 302, baseType: !475, size: 64, align: 64, offset: 1472)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !476, line: 216, baseType: !477)
!476 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1599")
!477 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !429, file: !430, line: 303, baseType: !103, size: 32, align: 32, offset: 1536)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !429, file: !430, line: 305, baseType: !480, size: 160, align: 8, offset: 1568)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 160, align: 8, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 20)
!483 = !DILocation(line: 144, column: 10, scope: !420)
!484 = !DILocalVariable(name: "ret", scope: !420, file: !65, line: 145, type: !103)
!485 = !DILocation(line: 145, column: 8, scope: !420)
!486 = !DILocation(line: 147, column: 11, scope: !420)
!487 = !DILocation(line: 147, column: 21, scope: !420)
!488 = !DILocation(line: 147, column: 4, scope: !420)
!489 = !DILocation(line: 148, column: 14, scope: !420)
!490 = !DILocation(line: 148, column: 24, scope: !420)
!491 = !DILocation(line: 148, column: 8, scope: !420)
!492 = !DILocation(line: 148, column: 6, scope: !420)
!493 = !DILocation(line: 149, column: 8, scope: !494)
!494 = distinct !DILexicalBlock(scope: !420, file: !65, line: 149, column: 8)
!495 = !DILocation(line: 149, column: 10, scope: !494)
!496 = !DILocation(line: 149, column: 8, scope: !420)
!497 = !DILocation(line: 150, column: 90, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !65, line: 149, column: 18)
!499 = !DILocation(line: 150, column: 100, scope: !498)
!500 = !DILocation(line: 150, column: 7, scope: !498)
!501 = !DILocation(line: 152, column: 7, scope: !498)
!502 = !DILocation(line: 155, column: 18, scope: !420)
!503 = !DILocation(line: 156, column: 18, scope: !420)
!504 = !DILocation(line: 156, column: 28, scope: !420)
!505 = !DILocation(line: 155, column: 10, scope: !420)
!506 = !DILocation(line: 155, column: 8, scope: !420)
!507 = !DILocation(line: 157, column: 11, scope: !420)
!508 = !DILocation(line: 157, column: 4, scope: !420)
!509 = !DILocation(line: 158, column: 8, scope: !510)
!510 = distinct !DILexicalBlock(scope: !420, file: !65, line: 158, column: 8)
!511 = !DILocation(line: 158, column: 12, scope: !510)
!512 = !DILocation(line: 158, column: 8, scope: !420)
!513 = !DILocation(line: 159, column: 97, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !65, line: 158, column: 17)
!515 = !DILocation(line: 159, column: 107, scope: !514)
!516 = !DILocation(line: 159, column: 8, scope: !514)
!517 = !DILocation(line: 159, column: 7, scope: !514)
!518 = !DILocation(line: 159, column: 8, scope: !519)
!519 = !DILexicalBlockFile(scope: !514, file: !65, discriminator: 1)
!520 = !DILocation(line: 159, column: 8, scope: !521)
!521 = !DILexicalBlockFile(scope: !514, file: !65, discriminator: 2)
!522 = !DILocation(line: 159, column: 7, scope: !523)
!523 = !DILexicalBlockFile(scope: !514, file: !65, discriminator: 3)
!524 = !DILocation(line: 161, column: 7, scope: !514)
!525 = !DILocation(line: 165, column: 46, scope: !526)
!526 = distinct !DILexicalBlock(scope: !420, file: !65, line: 164, column: 8)
!527 = !DILocation(line: 165, column: 56, scope: !526)
!528 = !DILocation(line: 164, column: 9, scope: !526)
!529 = !DILocation(line: 164, column: 8, scope: !420)
!530 = !DILocation(line: 166, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !65, line: 165, column: 63)
!532 = !DILocation(line: 167, column: 7, scope: !531)
!533 = !DILocation(line: 170, column: 4, scope: !420)
!534 = !DILocation(line: 171, column: 1, scope: !420)
