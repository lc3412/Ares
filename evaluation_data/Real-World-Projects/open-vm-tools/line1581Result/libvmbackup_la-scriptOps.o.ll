; ModuleID = './libvmbackup_la-scriptOps.o.i'
source_filename = "./libvmbackup_la-scriptOps.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VmBackupOp = type { i32 (%struct.VmBackupOp*)*, void (%struct.VmBackupOp*)*, void (%struct.VmBackupOp*)* }
%struct.VmBackupState = type { %struct.ToolsAppCtx*, %struct.VmBackupOp*, i8*, %struct.GStaticMutex, i8*, i8*, i32, %struct._GSource*, %struct._GSource*, %struct._GSource*, i8 (%struct.VmBackupState*)*, i8, i8, i8, i8, i8*, i8, i8, i8, i8, i8*, i32, i8*, i8*, i8*, i64, i8*, i32, i32, %struct.VmBackupSyncProvider*, %struct.VmBackupSyncCompleter*, i32, i32, i8, i8, i8 }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
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
%struct.VmBackupScriptOp = type { %struct.VmBackupOp, i8, i8, i32, %struct.VmBackupState* }
%struct.VmBackupScript = type { i8*, %struct.ProcMgr_AsyncProc* }
%struct.ProcMgr_AsyncProc = type opaque
%struct.ProcMgr_ProcArgs = type { i8**, i8* }

@.str = private unnamed_addr constant [9 x i8] c"vmbackup\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Trying to run scripts from %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"/usr/sbin/pre-freeze-script\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"/usr/sbin/post-thaw-script\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"backupScripts.d\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"req.error\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Custom quiesce script failed.\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"freezeFail\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"thaw\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"scriptOps.c\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"\22%s\22 %s \22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"\22%s\22 %s\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Running script: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"Failed to allocate memory to run script: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.VmBackupOp* @VmBackup_NewScriptOp(i32, %struct.VmBackupState*) #0 !dbg !340 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.VmBackupState*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.VmBackupScriptOp*, align 8
  %11 = alloca %struct.VmBackupScript*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.VmBackupScript*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !344, metadata !345), !dbg !346
  store %struct.VmBackupState* %1, %struct.VmBackupState** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %4, metadata !347, metadata !345), !dbg !348
  call void @llvm.dbg.declare(metadata i8* %5, metadata !349, metadata !345), !dbg !350
  store i8 0, i8* %5, align 1, !dbg !350
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !351, metadata !345), !dbg !353
  store i8** null, i8*** %6, align 8, !dbg !353
  call void @llvm.dbg.declare(metadata i8** %7, metadata !354, metadata !345), !dbg !355
  store i8* null, i8** %7, align 8, !dbg !355
  call void @llvm.dbg.declare(metadata i32* %8, metadata !356, metadata !345), !dbg !357
  store i32 0, i32* %8, align 4, !dbg !357
  call void @llvm.dbg.declare(metadata i64* %9, metadata !358, metadata !345), !dbg !359
  call void @llvm.dbg.declare(metadata %struct.VmBackupScriptOp** %10, metadata !360, metadata !345), !dbg !361
  store %struct.VmBackupScriptOp* null, %struct.VmBackupScriptOp** %10, align 8, !dbg !361
  %17 = call i8* @VmBackupGetScriptPath(), !dbg !362
  store i8* %17, i8** %7, align 8, !dbg !363
  %18 = load i8*, i8** %7, align 8, !dbg !364
  %19 = icmp eq i8* %18, null, !dbg !366
  br i1 %19, label %20, label %21, !dbg !367

; <label>:20:                                     ; preds = %2
  br label %186, !dbg !368

; <label>:21:                                     ; preds = %2
  %22 = call noalias i8* @calloc(i64 1, i64 40) #7, !dbg !370
  %23 = bitcast i8* %22 to %struct.VmBackupScriptOp*, !dbg !370
  store %struct.VmBackupScriptOp* %23, %struct.VmBackupScriptOp** %10, align 8, !dbg !371
  %24 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %10, align 8, !dbg !372
  %25 = icmp eq %struct.VmBackupScriptOp* %24, null, !dbg !374
  br i1 %25, label %26, label %27, !dbg !375

; <label>:26:                                     ; preds = %21
  br label %186, !dbg !376

; <label>:27:                                     ; preds = %21
  %28 = load %struct.VmBackupState*, %struct.VmBackupState** %4, align 8, !dbg !378
  %29 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %10, align 8, !dbg !379
  %30 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %29, i32 0, i32 4, !dbg !380
  store %struct.VmBackupState* %28, %struct.VmBackupState** %30, align 8, !dbg !381
  %31 = load i32, i32* %3, align 4, !dbg !382
  %32 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %10, align 8, !dbg !383
  %33 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %32, i32 0, i32 3, !dbg !384
  store i32 %31, i32* %33, align 4, !dbg !385
  %34 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %10, align 8, !dbg !386
  %35 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %34, i32 0, i32 0, !dbg !387
  %36 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %35, i32 0, i32 0, !dbg !388
  store i32 (%struct.VmBackupOp*)* @VmBackupScriptOpQuery, i32 (%struct.VmBackupOp*)** %36, align 8, !dbg !389
  %37 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %10, align 8, !dbg !390
  %38 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %37, i32 0, i32 0, !dbg !391
  %39 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %38, i32 0, i32 2, !dbg !392
  store void (%struct.VmBackupOp*)* @VmBackupScriptOpCancel, void (%struct.VmBackupOp*)** %39, align 8, !dbg !393
  %40 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %10, align 8, !dbg !394
  %41 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %40, i32 0, i32 0, !dbg !395
  %42 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %41, i32 0, i32 1, !dbg !396
  store void (%struct.VmBackupOp*)* @VmBackupScriptOpRelease, void (%struct.VmBackupOp*)** %42, align 8, !dbg !397
  %43 = load i8*, i8** %7, align 8, !dbg !398
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i8* %43), !dbg !399
  %44 = load i32, i32* %3, align 4, !dbg !400
  %45 = icmp eq i32 %44, 0, !dbg !402
  br i1 %45, label %46, label %146, !dbg !403

; <label>:46:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.VmBackupScript** %11, metadata !404, metadata !345), !dbg !416
  store %struct.VmBackupScript* null, %struct.VmBackupScript** %11, align 8, !dbg !416
  call void @llvm.dbg.declare(metadata i32* %12, metadata !417, metadata !345), !dbg !418
  store i32 0, i32* %12, align 4, !dbg !418
  call void @llvm.dbg.declare(metadata i64* %13, metadata !419, metadata !345), !dbg !420
  store i64 0, i64* %13, align 8, !dbg !420
  %47 = load %struct.VmBackupState*, %struct.VmBackupState** %4, align 8, !dbg !421
  %48 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %47, i32 0, i32 23, !dbg !422
  store i8* null, i8** %48, align 8, !dbg !423
  %49 = load %struct.VmBackupState*, %struct.VmBackupState** %4, align 8, !dbg !424
  %50 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %49, i32 0, i32 25, !dbg !425
  store i64 0, i64* %50, align 8, !dbg !426
  %51 = call signext i8 @File_IsFile(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)), !dbg !427
  %52 = sext i8 %51 to i32, !dbg !427
  %53 = icmp ne i32 %52, 0, !dbg !427
  br i1 %53, label %58, label %54, !dbg !429

; <label>:54:                                     ; preds = %46
  %55 = call signext i8 @File_IsFile(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)), !dbg !430
  %56 = sext i8 %55 to i32, !dbg !430
  %57 = icmp ne i32 %56, 0, !dbg !430
  br i1 %57, label %58, label %59, !dbg !431

; <label>:58:                                     ; preds = %54, %46
  store i32 1, i32* %12, align 4, !dbg !433
  br label %59, !dbg !435

; <label>:59:                                     ; preds = %58, %54
  %60 = load i8*, i8** %7, align 8, !dbg !436
  %61 = call signext i8 @File_IsDirectory(i8* %60), !dbg !438
  %62 = icmp ne i8 %61, 0, !dbg !438
  br i1 %62, label %63, label %66, !dbg !439

; <label>:63:                                     ; preds = %59
  %64 = load i8*, i8** %7, align 8, !dbg !440
  %65 = call i32 @File_ListDirectory(i8* %64, i8*** %6), !dbg !442
  store i32 %65, i32* %8, align 4, !dbg !443
  br label %66, !dbg !444

; <label>:66:                                     ; preds = %63, %59
  %67 = load i32, i32* %8, align 4, !dbg !445
  %68 = load i32, i32* %12, align 4, !dbg !447
  %69 = add nsw i32 %67, %68, !dbg !448
  %70 = icmp sgt i32 %69, 0, !dbg !449
  br i1 %70, label %71, label %89, !dbg !450

; <label>:71:                                     ; preds = %66
  %72 = load i32, i32* %8, align 4, !dbg !451
  %73 = load i32, i32* %12, align 4, !dbg !453
  %74 = add nsw i32 %72, %73, !dbg !454
  %75 = add nsw i32 %74, 1, !dbg !455
  %76 = sext i32 %75 to i64, !dbg !451
  %77 = call noalias i8* @calloc(i64 %76, i64 16) #7, !dbg !456
  %78 = bitcast i8* %77 to %struct.VmBackupScript*, !dbg !456
  store %struct.VmBackupScript* %78, %struct.VmBackupScript** %11, align 8, !dbg !457
  %79 = load %struct.VmBackupScript*, %struct.VmBackupScript** %11, align 8, !dbg !458
  %80 = icmp eq %struct.VmBackupScript* %79, null, !dbg !460
  br i1 %80, label %81, label %82, !dbg !461

; <label>:81:                                     ; preds = %71
  store i8 1, i8* %5, align 1, !dbg !462
  br label %186, !dbg !464

; <label>:82:                                     ; preds = %71
  %83 = load %struct.VmBackupState*, %struct.VmBackupState** %4, align 8, !dbg !465
  %84 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %83, i32 0, i32 25, !dbg !466
  store i64 -1, i64* %84, align 8, !dbg !467
  %85 = load %struct.VmBackupScript*, %struct.VmBackupScript** %11, align 8, !dbg !468
  %86 = bitcast %struct.VmBackupScript* %85 to i8*, !dbg !468
  %87 = load %struct.VmBackupState*, %struct.VmBackupState** %4, align 8, !dbg !469
  %88 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %87, i32 0, i32 23, !dbg !470
  store i8* %86, i8** %88, align 8, !dbg !471
  br label %89, !dbg !472

; <label>:89:                                     ; preds = %82, %66
  %90 = load i32, i32* %12, align 4, !dbg !473
  %91 = icmp sgt i32 %90, 0, !dbg !475
  br i1 %91, label %92, label %99, !dbg !476

; <label>:92:                                     ; preds = %89
  %93 = call i8* @UtilSafeStrdup0(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)), !dbg !477
  %94 = load i64, i64* %13, align 8, !dbg !479
  %95 = add i64 %94, 1, !dbg !479
  store i64 %95, i64* %13, align 8, !dbg !479
  %96 = load %struct.VmBackupScript*, %struct.VmBackupScript** %11, align 8, !dbg !480
  %97 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %96, i64 %94, !dbg !480
  %98 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %97, i32 0, i32 0, !dbg !481
  store i8* %93, i8** %98, align 8, !dbg !482
  br label %99, !dbg !483

; <label>:99:                                     ; preds = %92, %89
  %100 = load i32, i32* %8, align 4, !dbg !484
  %101 = icmp sgt i32 %100, 0, !dbg !486
  br i1 %101, label %102, label %145, !dbg !487

; <label>:102:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata i64* %14, metadata !488, metadata !345), !dbg !490
  %103 = load i32, i32* %8, align 4, !dbg !491
  %104 = icmp sgt i32 %103, 1, !dbg !493
  br i1 %104, label %105, label %110, !dbg !494

; <label>:105:                                    ; preds = %102
  %106 = load i8**, i8*** %6, align 8, !dbg !495
  %107 = bitcast i8** %106 to i8*, !dbg !495
  %108 = load i32, i32* %8, align 4, !dbg !497
  %109 = sext i32 %108 to i64, !dbg !498
  call void @qsort(i8* %107, i64 %109, i64 8, i32 (i8*, i8*)* @VmBackupStringCompare), !dbg !499
  br label %110, !dbg !500

; <label>:110:                                    ; preds = %105, %102
  store i64 0, i64* %14, align 8, !dbg !501
  br label %111, !dbg !503

; <label>:111:                                    ; preds = %141, %110
  %112 = load i64, i64* %14, align 8, !dbg !504
  %113 = load i32, i32* %8, align 4, !dbg !507
  %114 = sext i32 %113 to i64, !dbg !507
  %115 = icmp ult i64 %112, %114, !dbg !508
  br i1 %115, label %116, label %144, !dbg !509

; <label>:116:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata i8** %15, metadata !510, metadata !345), !dbg !512
  %117 = load i8*, i8** %7, align 8, !dbg !513
  %118 = load i64, i64* %14, align 8, !dbg !514
  %119 = load i8**, i8*** %6, align 8, !dbg !515
  %120 = getelementptr inbounds i8*, i8** %119, i64 %118, !dbg !515
  %121 = load i8*, i8** %120, align 8, !dbg !515
  %122 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %117, i32 47, i8* %121), !dbg !516
  store i8* %122, i8** %15, align 8, !dbg !517
  %123 = load i8*, i8** %15, align 8, !dbg !518
  %124 = icmp eq i8* %123, null, !dbg !520
  br i1 %124, label %125, label %126, !dbg !521

; <label>:125:                                    ; preds = %116
  store i8 1, i8* %5, align 1, !dbg !522
  br label %186, !dbg !524

; <label>:126:                                    ; preds = %116
  %127 = load i8*, i8** %15, align 8, !dbg !525
  %128 = call signext i8 @File_IsFile(i8* %127), !dbg !527
  %129 = icmp ne i8 %128, 0, !dbg !527
  br i1 %129, label %130, label %137, !dbg !528

; <label>:130:                                    ; preds = %126
  %131 = load i8*, i8** %15, align 8, !dbg !529
  %132 = load i64, i64* %13, align 8, !dbg !531
  %133 = add i64 %132, 1, !dbg !531
  store i64 %133, i64* %13, align 8, !dbg !531
  %134 = load %struct.VmBackupScript*, %struct.VmBackupScript** %11, align 8, !dbg !532
  %135 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %134, i64 %132, !dbg !532
  %136 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %135, i32 0, i32 0, !dbg !533
  store i8* %131, i8** %136, align 8, !dbg !534
  br label %139, !dbg !535

; <label>:137:                                    ; preds = %126
  %138 = load i8*, i8** %15, align 8, !dbg !536
  call void @free(i8* %138) #7, !dbg !538
  br label %139

; <label>:139:                                    ; preds = %137, %130
  br label %140

; <label>:140:                                    ; preds = %139
  br label %141, !dbg !539

; <label>:141:                                    ; preds = %140
  %142 = load i64, i64* %14, align 8, !dbg !540
  %143 = add i64 %142, 1, !dbg !540
  store i64 %143, i64* %14, align 8, !dbg !540
  br label %111, !dbg !542, !llvm.loop !543

; <label>:144:                                    ; preds = %111
  br label %145, !dbg !545

; <label>:145:                                    ; preds = %144, %99
  br label %173, !dbg !546

; <label>:146:                                    ; preds = %27
  %147 = load %struct.VmBackupState*, %struct.VmBackupState** %4, align 8, !dbg !547
  %148 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %147, i32 0, i32 23, !dbg !550
  %149 = load i8*, i8** %148, align 8, !dbg !550
  %150 = icmp ne i8* %149, null, !dbg !551
  br i1 %150, label %151, label %172, !dbg !547

; <label>:151:                                    ; preds = %146
  call void @llvm.dbg.declare(metadata %struct.VmBackupScript** %16, metadata !552, metadata !345), !dbg !554
  %152 = load %struct.VmBackupState*, %struct.VmBackupState** %4, align 8, !dbg !555
  %153 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %152, i32 0, i32 23, !dbg !556
  %154 = load i8*, i8** %153, align 8, !dbg !556
  %155 = bitcast i8* %154 to %struct.VmBackupScript*, !dbg !555
  store %struct.VmBackupScript* %155, %struct.VmBackupScript** %16, align 8, !dbg !554
  %156 = load %struct.VmBackupScript*, %struct.VmBackupScript** %16, align 8, !dbg !557
  %157 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %156, i64 0, !dbg !557
  %158 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %157, i32 0, i32 0, !dbg !559
  %159 = load i8*, i8** %158, align 8, !dbg !559
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !560
  %161 = icmp eq i32 %160, 0, !dbg !561
  br i1 %161, label %162, label %171, !dbg !562

; <label>:162:                                    ; preds = %151
  %163 = load %struct.VmBackupScript*, %struct.VmBackupScript** %16, align 8, !dbg !563
  %164 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %163, i64 0, !dbg !563
  %165 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %164, i32 0, i32 0, !dbg !565
  %166 = load i8*, i8** %165, align 8, !dbg !565
  call void @vm_free(i8* %166), !dbg !566
  %167 = call i8* @UtilSafeStrdup0(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)), !dbg !567
  %168 = load %struct.VmBackupScript*, %struct.VmBackupScript** %16, align 8, !dbg !568
  %169 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %168, i64 0, !dbg !568
  %170 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %169, i32 0, i32 0, !dbg !569
  store i8* %167, i8** %170, align 8, !dbg !570
  br label %171, !dbg !571

; <label>:171:                                    ; preds = %162, %151
  br label %172, !dbg !572

; <label>:172:                                    ; preds = %171, %146
  br label %173

; <label>:173:                                    ; preds = %172, %145
  %174 = load %struct.VmBackupState*, %struct.VmBackupState** %4, align 8, !dbg !573
  %175 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %174, i32 0, i32 23, !dbg !574
  %176 = load i8*, i8** %175, align 8, !dbg !574
  %177 = icmp ne i8* %176, null, !dbg !575
  br i1 %177, label %178, label %182, !dbg !576

; <label>:178:                                    ; preds = %173
  %179 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %10, align 8, !dbg !577
  %180 = call i32 @VmBackupRunNextScript(%struct.VmBackupScriptOp* %179), !dbg !579
  %181 = icmp eq i32 %180, -1, !dbg !580
  br label %182

; <label>:182:                                    ; preds = %178, %173
  %183 = phi i1 [ false, %173 ], [ %181, %178 ]
  %184 = zext i1 %183 to i32, !dbg !581
  %185 = trunc i32 %184 to i8, !dbg !583
  store i8 %185, i8* %5, align 1, !dbg !584
  br label %186, !dbg !585

; <label>:186:                                    ; preds = %182, %125, %81, %26, %20
  store i64 0, i64* %9, align 8, !dbg !586
  br label %187, !dbg !588

; <label>:187:                                    ; preds = %197, %186
  %188 = load i64, i64* %9, align 8, !dbg !589
  %189 = load i32, i32* %8, align 4, !dbg !592
  %190 = sext i32 %189 to i64, !dbg !592
  %191 = icmp ult i64 %188, %190, !dbg !593
  br i1 %191, label %192, label %200, !dbg !594

; <label>:192:                                    ; preds = %187
  %193 = load i64, i64* %9, align 8, !dbg !595
  %194 = load i8**, i8*** %6, align 8, !dbg !597
  %195 = getelementptr inbounds i8*, i8** %194, i64 %193, !dbg !597
  %196 = load i8*, i8** %195, align 8, !dbg !597
  call void @free(i8* %196) #7, !dbg !598
  br label %197, !dbg !599

; <label>:197:                                    ; preds = %192
  %198 = load i64, i64* %9, align 8, !dbg !600
  %199 = add i64 %198, 1, !dbg !600
  store i64 %199, i64* %9, align 8, !dbg !600
  br label %187, !dbg !602, !llvm.loop !603

; <label>:200:                                    ; preds = %187
  %201 = load i8**, i8*** %6, align 8, !dbg !605
  %202 = bitcast i8** %201 to i8*, !dbg !605
  call void @free(i8* %202) #7, !dbg !606
  %203 = load i8, i8* %5, align 1, !dbg !607
  %204 = sext i8 %203 to i32, !dbg !607
  %205 = icmp ne i32 %204, 0, !dbg !607
  br i1 %205, label %206, label %212, !dbg !609

; <label>:206:                                    ; preds = %200
  %207 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %10, align 8, !dbg !610
  %208 = icmp ne %struct.VmBackupScriptOp* %207, null, !dbg !612
  br i1 %208, label %209, label %212, !dbg !613

; <label>:209:                                    ; preds = %206
  %210 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %10, align 8, !dbg !614
  %211 = bitcast %struct.VmBackupScriptOp* %210 to %struct.VmBackupOp*, !dbg !616
  call void @VmBackup_Release(%struct.VmBackupOp* %211), !dbg !617
  store %struct.VmBackupScriptOp* null, %struct.VmBackupScriptOp** %10, align 8, !dbg !618
  br label %212, !dbg !619

; <label>:212:                                    ; preds = %209, %206, %200
  %213 = load i8*, i8** %7, align 8, !dbg !620
  call void @free(i8* %213) #7, !dbg !621
  %214 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %10, align 8, !dbg !622
  %215 = bitcast %struct.VmBackupScriptOp* %214 to %struct.VmBackupOp*, !dbg !623
  ret %struct.VmBackupOp* %215, !dbg !624
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i8* @VmBackupGetScriptPath() #0 !dbg !625 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !628, metadata !345), !dbg !629
  store i8* null, i8** %2, align 8, !dbg !629
  call void @llvm.dbg.declare(metadata i8** %3, metadata !630, metadata !345), !dbg !631
  %4 = call i8* @GuestApp_GetInstallPath(), !dbg !632
  store i8* %4, i8** %3, align 8, !dbg !631
  %5 = load i8*, i8** %3, align 8, !dbg !633
  %6 = icmp eq i8* %5, null, !dbg !635
  br i1 %6, label %7, label %8, !dbg !636

; <label>:7:                                      ; preds = %0
  store i8* null, i8** %1, align 8, !dbg !637
  br label %13, !dbg !637

; <label>:8:                                      ; preds = %0
  %9 = load i8*, i8** %3, align 8, !dbg !639
  %10 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)), !dbg !640
  store i8* %10, i8** %2, align 8, !dbg !641
  %11 = load i8*, i8** %3, align 8, !dbg !642
  call void @free(i8* %11) #7, !dbg !643
  %12 = load i8*, i8** %2, align 8, !dbg !644
  store i8* %12, i8** %1, align 8, !dbg !645
  br label %13, !dbg !645

; <label>:13:                                     ; preds = %8, %7
  %14 = load i8*, i8** %1, align 8, !dbg !646
  ret i8* %14, !dbg !646
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupScriptOpQuery(%struct.VmBackupOp*) #0 !dbg !647 {
  %2 = alloca %struct.VmBackupOp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.VmBackupScriptOp*, align 8
  %5 = alloca %struct.VmBackupScript*, align 8
  %6 = alloca %struct.VmBackupScript*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !650, metadata !345), !dbg !651
  call void @llvm.dbg.declare(metadata i32* %3, metadata !652, metadata !345), !dbg !653
  store i32 0, i32* %3, align 4, !dbg !653
  call void @llvm.dbg.declare(metadata %struct.VmBackupScriptOp** %4, metadata !654, metadata !345), !dbg !655
  %9 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !656
  %10 = bitcast %struct.VmBackupOp* %9 to %struct.VmBackupScriptOp*, !dbg !657
  store %struct.VmBackupScriptOp* %10, %struct.VmBackupScriptOp** %4, align 8, !dbg !655
  call void @llvm.dbg.declare(metadata %struct.VmBackupScript** %5, metadata !658, metadata !345), !dbg !659
  %11 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !660
  %12 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %11, i32 0, i32 4, !dbg !661
  %13 = load %struct.VmBackupState*, %struct.VmBackupState** %12, align 8, !dbg !661
  %14 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %13, i32 0, i32 23, !dbg !662
  %15 = load i8*, i8** %14, align 8, !dbg !662
  %16 = bitcast i8* %15 to %struct.VmBackupScript*, !dbg !660
  store %struct.VmBackupScript* %16, %struct.VmBackupScript** %5, align 8, !dbg !659
  call void @llvm.dbg.declare(metadata %struct.VmBackupScript** %6, metadata !663, metadata !345), !dbg !664
  store %struct.VmBackupScript* null, %struct.VmBackupScript** %6, align 8, !dbg !664
  %17 = load %struct.VmBackupScript*, %struct.VmBackupScript** %5, align 8, !dbg !665
  %18 = icmp ne %struct.VmBackupScript* %17, null, !dbg !667
  br i1 %18, label %19, label %34, !dbg !668

; <label>:19:                                     ; preds = %1
  %20 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !669
  %21 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %20, i32 0, i32 4, !dbg !671
  %22 = load %struct.VmBackupState*, %struct.VmBackupState** %21, align 8, !dbg !671
  %23 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %22, i32 0, i32 25, !dbg !672
  %24 = load i64, i64* %23, align 8, !dbg !672
  %25 = icmp sge i64 %24, 0, !dbg !673
  br i1 %25, label %26, label %34, !dbg !674

; <label>:26:                                     ; preds = %19
  %27 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !675
  %28 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %27, i32 0, i32 4, !dbg !677
  %29 = load %struct.VmBackupState*, %struct.VmBackupState** %28, align 8, !dbg !677
  %30 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %29, i32 0, i32 25, !dbg !678
  %31 = load i64, i64* %30, align 8, !dbg !678
  %32 = load %struct.VmBackupScript*, %struct.VmBackupScript** %5, align 8, !dbg !679
  %33 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %32, i64 %31, !dbg !679
  store %struct.VmBackupScript* %33, %struct.VmBackupScript** %6, align 8, !dbg !680
  br label %34, !dbg !681

; <label>:34:                                     ; preds = %26, %19, %1
  %35 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !682
  %36 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %35, i32 0, i32 1, !dbg !684
  %37 = load i8, i8* %36, align 8, !dbg !684
  %38 = icmp ne i8 %37, 0, !dbg !682
  br i1 %38, label %39, label %40, !dbg !685

; <label>:39:                                     ; preds = %34
  store i32 2, i32* %3, align 4, !dbg !686
  br label %109, !dbg !688

; <label>:40:                                     ; preds = %34
  %41 = load %struct.VmBackupScript*, %struct.VmBackupScript** %5, align 8, !dbg !689
  %42 = icmp eq %struct.VmBackupScript* %41, null, !dbg !691
  br i1 %42, label %51, label %43, !dbg !692

; <label>:43:                                     ; preds = %40
  %44 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !693
  %45 = icmp eq %struct.VmBackupScript* %44, null, !dbg !695
  br i1 %45, label %51, label %46, !dbg !696

; <label>:46:                                     ; preds = %43
  %47 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !697
  %48 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %47, i32 0, i32 1, !dbg !699
  %49 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %48, align 8, !dbg !699
  %50 = icmp eq %struct.ProcMgr_AsyncProc* %49, null, !dbg !700
  br i1 %50, label %51, label %52, !dbg !701

; <label>:51:                                     ; preds = %46, %43, %40
  store i32 1, i32* %3, align 4, !dbg !702
  br label %109, !dbg !704

; <label>:52:                                     ; preds = %46
  br label %53

; <label>:53:                                     ; preds = %52
  %54 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !705
  %55 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %54, i32 0, i32 1, !dbg !707
  %56 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %55, align 8, !dbg !707
  %57 = call signext i8 @ProcMgr_IsAsyncProcRunning(%struct.ProcMgr_AsyncProc* %56), !dbg !708
  %58 = icmp ne i8 %57, 0, !dbg !708
  br i1 %58, label %108, label %59, !dbg !709

; <label>:59:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata i32* %7, metadata !710, metadata !345), !dbg !712
  call void @llvm.dbg.declare(metadata i8* %8, metadata !713, metadata !345), !dbg !714
  %60 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !715
  %61 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %60, i32 0, i32 1, !dbg !716
  %62 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %61, align 8, !dbg !716
  %63 = call i32 @ProcMgr_GetExitCode(%struct.ProcMgr_AsyncProc* %62, i32* %7), !dbg !717
  %64 = icmp eq i32 %63, 0, !dbg !718
  br i1 %64, label %65, label %68, !dbg !719

; <label>:65:                                     ; preds = %59
  %66 = load i32, i32* %7, align 4, !dbg !720
  %67 = icmp eq i32 %66, 0, !dbg !721
  br label %68

; <label>:68:                                     ; preds = %65, %59
  %69 = phi i1 [ false, %59 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32, !dbg !722
  %71 = trunc i32 %70 to i8, !dbg !724
  store i8 %71, i8* %8, align 1, !dbg !725
  %72 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !726
  %73 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %72, i32 0, i32 1, !dbg !727
  %74 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %73, align 8, !dbg !727
  call void @ProcMgr_Free(%struct.ProcMgr_AsyncProc* %74), !dbg !728
  %75 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !729
  %76 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %75, i32 0, i32 1, !dbg !730
  store %struct.ProcMgr_AsyncProc* null, %struct.ProcMgr_AsyncProc** %76, align 8, !dbg !731
  %77 = load i8, i8* %8, align 1, !dbg !732
  %78 = icmp ne i8 %77, 0, !dbg !732
  br i1 %78, label %95, label %79, !dbg !734

; <label>:79:                                     ; preds = %68
  %80 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !735
  %81 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %80, i32 0, i32 3, !dbg !738
  %82 = load i32, i32* %81, align 4, !dbg !738
  %83 = icmp eq i32 %82, 0, !dbg !739
  br i1 %83, label %84, label %85, !dbg !740

; <label>:84:                                     ; preds = %79
  store i32 3, i32* %3, align 4, !dbg !741
  br label %109, !dbg !743

; <label>:85:                                     ; preds = %79
  %86 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !744
  %87 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %86, i32 0, i32 3, !dbg !746
  %88 = load i32, i32* %87, align 4, !dbg !746
  %89 = icmp eq i32 %88, 2, !dbg !747
  br i1 %89, label %90, label %93, !dbg !748

; <label>:90:                                     ; preds = %85
  %91 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !749
  %92 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %91, i32 0, i32 2, !dbg !751
  store i8 1, i8* %92, align 1, !dbg !752
  br label %93, !dbg !753

; <label>:93:                                     ; preds = %90, %85
  br label %94

; <label>:94:                                     ; preds = %93
  br label %95, !dbg !754

; <label>:95:                                     ; preds = %94, %68
  %96 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !755
  %97 = call i32 @VmBackupRunNextScript(%struct.VmBackupScriptOp* %96), !dbg !756
  switch i32 %97, label %106 [
    i32 -1, label %98
    i32 0, label %99
  ], !dbg !757

; <label>:98:                                     ; preds = %95
  store i32 3, i32* %3, align 4, !dbg !758
  br label %107, !dbg !760

; <label>:99:                                     ; preds = %95
  %100 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !761
  %101 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %100, i32 0, i32 2, !dbg !762
  %102 = load i8, i8* %101, align 1, !dbg !762
  %103 = sext i8 %102 to i32, !dbg !761
  %104 = icmp ne i32 %103, 0, !dbg !761
  %105 = select i1 %104, i32 3, i32 1, !dbg !761
  store i32 %105, i32* %3, align 4, !dbg !763
  br label %107, !dbg !764

; <label>:106:                                    ; preds = %95
  br label %107, !dbg !765

; <label>:107:                                    ; preds = %106, %99, %98
  br label %108, !dbg !766

; <label>:108:                                    ; preds = %107, %53
  br label %109, !dbg !767

; <label>:109:                                    ; preds = %108, %84, %51, %39
  %110 = load i32, i32* %3, align 4, !dbg !769
  %111 = icmp eq i32 %110, 3, !dbg !771
  br i1 %111, label %112, label %114, !dbg !772

; <label>:112:                                    ; preds = %109
  %113 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)), !dbg !773
  br label %114, !dbg !775

; <label>:114:                                    ; preds = %112, %109
  %115 = load i32, i32* %3, align 4, !dbg !776
  ret i32 %115, !dbg !777
}

; Function Attrs: nounwind uwtable
define internal void @VmBackupScriptOpCancel(%struct.VmBackupOp*) #0 !dbg !778 {
  %2 = alloca %struct.VmBackupOp*, align 8
  %3 = alloca %struct.VmBackupScriptOp*, align 8
  %4 = alloca %struct.VmBackupScript*, align 8
  %5 = alloca %struct.VmBackupScript*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !781, metadata !345), !dbg !782
  call void @llvm.dbg.declare(metadata %struct.VmBackupScriptOp** %3, metadata !783, metadata !345), !dbg !784
  %8 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !785
  %9 = bitcast %struct.VmBackupOp* %8 to %struct.VmBackupScriptOp*, !dbg !786
  store %struct.VmBackupScriptOp* %9, %struct.VmBackupScriptOp** %3, align 8, !dbg !784
  call void @llvm.dbg.declare(metadata %struct.VmBackupScript** %4, metadata !787, metadata !345), !dbg !788
  %10 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %3, align 8, !dbg !789
  %11 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %10, i32 0, i32 4, !dbg !790
  %12 = load %struct.VmBackupState*, %struct.VmBackupState** %11, align 8, !dbg !790
  %13 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %12, i32 0, i32 23, !dbg !791
  %14 = load i8*, i8** %13, align 8, !dbg !791
  %15 = bitcast i8* %14 to %struct.VmBackupScript*, !dbg !789
  store %struct.VmBackupScript* %15, %struct.VmBackupScript** %4, align 8, !dbg !788
  call void @llvm.dbg.declare(metadata %struct.VmBackupScript** %5, metadata !792, metadata !345), !dbg !793
  store %struct.VmBackupScript* null, %struct.VmBackupScript** %5, align 8, !dbg !793
  call void @llvm.dbg.declare(metadata i32* %6, metadata !794, metadata !345), !dbg !799
  %16 = load %struct.VmBackupScript*, %struct.VmBackupScript** %4, align 8, !dbg !800
  %17 = icmp ne %struct.VmBackupScript* %16, null, !dbg !802
  br i1 %17, label %18, label %40, !dbg !803

; <label>:18:                                     ; preds = %1
  %19 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %3, align 8, !dbg !804
  %20 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %19, i32 0, i32 4, !dbg !806
  %21 = load %struct.VmBackupState*, %struct.VmBackupState** %20, align 8, !dbg !806
  %22 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %21, i32 0, i32 25, !dbg !807
  %23 = load i64, i64* %22, align 8, !dbg !807
  %24 = load %struct.VmBackupScript*, %struct.VmBackupScript** %4, align 8, !dbg !808
  %25 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %24, i64 %23, !dbg !808
  store %struct.VmBackupScript* %25, %struct.VmBackupScript** %5, align 8, !dbg !809
  %26 = load %struct.VmBackupScript*, %struct.VmBackupScript** %5, align 8, !dbg !810
  %27 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %26, i32 0, i32 1, !dbg !811
  %28 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %27, align 8, !dbg !811
  %29 = call i32 @ProcMgr_GetPid(%struct.ProcMgr_AsyncProc* %28), !dbg !812
  store i32 %29, i32* %6, align 4, !dbg !813
  %30 = load i32, i32* %6, align 4, !dbg !814
  %31 = call signext i8 @ProcMgr_KillByPid(i32 %30), !dbg !816
  %32 = icmp ne i8 %31, 0, !dbg !816
  br i1 %32, label %34, label %33, !dbg !817

; <label>:33:                                     ; preds = %18
  br label %39, !dbg !818

; <label>:34:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %7, metadata !820, metadata !345), !dbg !822
  %35 = load %struct.VmBackupScript*, %struct.VmBackupScript** %5, align 8, !dbg !823
  %36 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %35, i32 0, i32 1, !dbg !824
  %37 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %36, align 8, !dbg !824
  %38 = call i32 @ProcMgr_GetExitCode(%struct.ProcMgr_AsyncProc* %37, i32* %7), !dbg !825
  br label %39

; <label>:39:                                     ; preds = %34, %33
  br label %40, !dbg !826

; <label>:40:                                     ; preds = %39, %1
  %41 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %3, align 8, !dbg !827
  %42 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %41, i32 0, i32 1, !dbg !828
  store i8 1, i8* %42, align 8, !dbg !829
  ret void, !dbg !830
}

; Function Attrs: nounwind uwtable
define internal void @VmBackupScriptOpRelease(%struct.VmBackupOp*) #0 !dbg !831 {
  %2 = alloca %struct.VmBackupOp*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.VmBackupScriptOp*, align 8
  %5 = alloca %struct.VmBackupScript*, align 8
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !832, metadata !345), !dbg !833
  call void @llvm.dbg.declare(metadata i64* %3, metadata !834, metadata !345), !dbg !835
  call void @llvm.dbg.declare(metadata %struct.VmBackupScriptOp** %4, metadata !836, metadata !345), !dbg !837
  %6 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !838
  %7 = bitcast %struct.VmBackupOp* %6 to %struct.VmBackupScriptOp*, !dbg !839
  store %struct.VmBackupScriptOp* %7, %struct.VmBackupScriptOp** %4, align 8, !dbg !837
  %8 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !840
  %9 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %8, i32 0, i32 3, !dbg !842
  %10 = load i32, i32* %9, align 4, !dbg !842
  %11 = icmp ne i32 %10, 0, !dbg !843
  br i1 %11, label %12, label %69, !dbg !844

; <label>:12:                                     ; preds = %1
  %13 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !845
  %14 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %13, i32 0, i32 4, !dbg !847
  %15 = load %struct.VmBackupState*, %struct.VmBackupState** %14, align 8, !dbg !847
  %16 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %15, i32 0, i32 23, !dbg !848
  %17 = load i8*, i8** %16, align 8, !dbg !848
  %18 = icmp ne i8* %17, null, !dbg !849
  br i1 %18, label %19, label %69, !dbg !850

; <label>:19:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.VmBackupScript** %5, metadata !851, metadata !345), !dbg !853
  %20 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !854
  %21 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %20, i32 0, i32 4, !dbg !855
  %22 = load %struct.VmBackupState*, %struct.VmBackupState** %21, align 8, !dbg !855
  %23 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %22, i32 0, i32 23, !dbg !856
  %24 = load i8*, i8** %23, align 8, !dbg !856
  %25 = bitcast i8* %24 to %struct.VmBackupScript*, !dbg !854
  store %struct.VmBackupScript* %25, %struct.VmBackupScript** %5, align 8, !dbg !853
  store i64 0, i64* %3, align 8, !dbg !857
  br label %26, !dbg !859

; <label>:26:                                     ; preds = %52, %19
  %27 = load i64, i64* %3, align 8, !dbg !860
  %28 = load %struct.VmBackupScript*, %struct.VmBackupScript** %5, align 8, !dbg !863
  %29 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %28, i64 %27, !dbg !863
  %30 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %29, i32 0, i32 0, !dbg !864
  %31 = load i8*, i8** %30, align 8, !dbg !864
  %32 = icmp ne i8* %31, null, !dbg !865
  br i1 %32, label %33, label %55, !dbg !866

; <label>:33:                                     ; preds = %26
  %34 = load i64, i64* %3, align 8, !dbg !867
  %35 = load %struct.VmBackupScript*, %struct.VmBackupScript** %5, align 8, !dbg !869
  %36 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %35, i64 %34, !dbg !869
  %37 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %36, i32 0, i32 0, !dbg !870
  %38 = load i8*, i8** %37, align 8, !dbg !870
  call void @free(i8* %38) #7, !dbg !871
  %39 = load i64, i64* %3, align 8, !dbg !872
  %40 = load %struct.VmBackupScript*, %struct.VmBackupScript** %5, align 8, !dbg !874
  %41 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %40, i64 %39, !dbg !874
  %42 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %41, i32 0, i32 1, !dbg !875
  %43 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %42, align 8, !dbg !875
  %44 = icmp ne %struct.ProcMgr_AsyncProc* %43, null, !dbg !876
  br i1 %44, label %45, label %51, !dbg !877

; <label>:45:                                     ; preds = %33
  %46 = load i64, i64* %3, align 8, !dbg !878
  %47 = load %struct.VmBackupScript*, %struct.VmBackupScript** %5, align 8, !dbg !880
  %48 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %47, i64 %46, !dbg !880
  %49 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %48, i32 0, i32 1, !dbg !881
  %50 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %49, align 8, !dbg !881
  call void @ProcMgr_Free(%struct.ProcMgr_AsyncProc* %50), !dbg !882
  br label %51, !dbg !883

; <label>:51:                                     ; preds = %45, %33
  br label %52, !dbg !884

; <label>:52:                                     ; preds = %51
  %53 = load i64, i64* %3, align 8, !dbg !885
  %54 = add i64 %53, 1, !dbg !885
  store i64 %54, i64* %3, align 8, !dbg !885
  br label %26, !dbg !887, !llvm.loop !888

; <label>:55:                                     ; preds = %26
  %56 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !890
  %57 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %56, i32 0, i32 4, !dbg !891
  %58 = load %struct.VmBackupState*, %struct.VmBackupState** %57, align 8, !dbg !891
  %59 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %58, i32 0, i32 23, !dbg !892
  %60 = load i8*, i8** %59, align 8, !dbg !892
  call void @free(i8* %60) #7, !dbg !893
  %61 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !894
  %62 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %61, i32 0, i32 4, !dbg !895
  %63 = load %struct.VmBackupState*, %struct.VmBackupState** %62, align 8, !dbg !895
  %64 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %63, i32 0, i32 23, !dbg !896
  store i8* null, i8** %64, align 8, !dbg !897
  %65 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !898
  %66 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %65, i32 0, i32 4, !dbg !899
  %67 = load %struct.VmBackupState*, %struct.VmBackupState** %66, align 8, !dbg !899
  %68 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %67, i32 0, i32 25, !dbg !900
  store i64 0, i64* %68, align 8, !dbg !901
  br label %69, !dbg !902

; <label>:69:                                     ; preds = %55, %12, %1
  %70 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %4, align 8, !dbg !903
  %71 = bitcast %struct.VmBackupScriptOp* %70 to i8*, !dbg !903
  call void @free(i8* %71) #7, !dbg !904
  ret void, !dbg !905
}

declare void @g_log(i8*, i32, i8*, ...) #3

declare signext i8 @File_IsFile(i8*) #3

declare signext i8 @File_IsDirectory(i8*) #3

declare i32 @File_ListDirectory(i8*, i8***) #3

declare i8* @UtilSafeStrdup0(i8*) #3

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupStringCompare(i8*, i8*) #0 !dbg !906 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !911, metadata !345), !dbg !912
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !913, metadata !345), !dbg !914
  %5 = load i8*, i8** %3, align 8, !dbg !915
  %6 = bitcast i8* %5 to i8**, !dbg !916
  %7 = load i8*, i8** %6, align 8, !dbg !917
  %8 = load i8*, i8** %4, align 8, !dbg !918
  %9 = bitcast i8* %8 to i8**, !dbg !919
  %10 = load i8*, i8** %9, align 8, !dbg !920
  %11 = call i32 @strcmp(i8* %7, i8* %10) #8, !dbg !921
  ret i32 %11, !dbg !922
}

declare i8* @Str_Asprintf(i64*, i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @vm_free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupRunNextScript(%struct.VmBackupScriptOp*) #0 !dbg !923 {
  %2 = alloca %struct.VmBackupScriptOp*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.VmBackupScript*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.VmBackupScriptOp* %0, %struct.VmBackupScriptOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupScriptOp** %2, metadata !926, metadata !345), !dbg !927
  call void @llvm.dbg.declare(metadata i8** %3, metadata !928, metadata !345), !dbg !929
  call void @llvm.dbg.declare(metadata i32* %4, metadata !930, metadata !345), !dbg !931
  store i32 0, i32* %4, align 4, !dbg !931
  call void @llvm.dbg.declare(metadata i64* %5, metadata !932, metadata !345), !dbg !933
  call void @llvm.dbg.declare(metadata %struct.VmBackupScript** %6, metadata !934, metadata !345), !dbg !935
  %9 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %2, align 8, !dbg !936
  %10 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %9, i32 0, i32 4, !dbg !937
  %11 = load %struct.VmBackupState*, %struct.VmBackupState** %10, align 8, !dbg !937
  %12 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %11, i32 0, i32 23, !dbg !938
  %13 = load i8*, i8** %12, align 8, !dbg !938
  %14 = bitcast i8* %13 to %struct.VmBackupScript*, !dbg !936
  store %struct.VmBackupScript* %14, %struct.VmBackupScript** %6, align 8, !dbg !935
  %15 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %2, align 8, !dbg !939
  %16 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %15, i32 0, i32 3, !dbg !940
  %17 = load i32, i32* %16, align 4, !dbg !940
  switch i32 %17, label %39 [
    i32 0, label %18
    i32 1, label %25
    i32 2, label %32
  ], !dbg !941

; <label>:18:                                     ; preds = %1
  %19 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %2, align 8, !dbg !942
  %20 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %19, i32 0, i32 4, !dbg !944
  %21 = load %struct.VmBackupState*, %struct.VmBackupState** %20, align 8, !dbg !944
  %22 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %21, i32 0, i32 25, !dbg !945
  %23 = load i64, i64* %22, align 8, !dbg !946
  %24 = add nsw i64 %23, 1, !dbg !946
  store i64 %24, i64* %22, align 8, !dbg !946
  store i64 %24, i64* %5, align 8, !dbg !947
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8** %3, align 8, !dbg !948
  br label %40, !dbg !949

; <label>:25:                                     ; preds = %1
  %26 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %2, align 8, !dbg !950
  %27 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %26, i32 0, i32 4, !dbg !951
  %28 = load %struct.VmBackupState*, %struct.VmBackupState** %27, align 8, !dbg !951
  %29 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %28, i32 0, i32 25, !dbg !952
  %30 = load i64, i64* %29, align 8, !dbg !953
  %31 = add nsw i64 %30, -1, !dbg !953
  store i64 %31, i64* %29, align 8, !dbg !953
  store i64 %31, i64* %5, align 8, !dbg !954
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8** %3, align 8, !dbg !955
  br label %40, !dbg !956

; <label>:32:                                     ; preds = %1
  %33 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %2, align 8, !dbg !957
  %34 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %33, i32 0, i32 4, !dbg !958
  %35 = load %struct.VmBackupState*, %struct.VmBackupState** %34, align 8, !dbg !958
  %36 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %35, i32 0, i32 25, !dbg !959
  %37 = load i64, i64* %36, align 8, !dbg !960
  %38 = add nsw i64 %37, -1, !dbg !960
  store i64 %38, i64* %36, align 8, !dbg !960
  store i64 %38, i64* %5, align 8, !dbg !961
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8** %3, align 8, !dbg !962
  br label %40, !dbg !963

; <label>:39:                                     ; preds = %1
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 151) #9, !dbg !964
  unreachable, !dbg !964

; <label>:40:                                     ; preds = %32, %25, %18
  br label %41, !dbg !965

; <label>:41:                                     ; preds = %176, %40
  %42 = load i64, i64* %5, align 8, !dbg !966
  %43 = icmp sge i64 %42, 0, !dbg !968
  br i1 %43, label %44, label %51, !dbg !969

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %5, align 8, !dbg !970
  %46 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !972
  %47 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %46, i64 %45, !dbg !972
  %48 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %47, i32 0, i32 0, !dbg !973
  %49 = load i8*, i8** %48, align 8, !dbg !973
  %50 = icmp ne i8* %49, null, !dbg !974
  br label %51

; <label>:51:                                     ; preds = %44, %41
  %52 = phi i1 [ false, %41 ], [ %50, %44 ]
  br i1 %52, label %53, label %177, !dbg !975

; <label>:53:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata i8** %7, metadata !977, metadata !345), !dbg !979
  %54 = load i64, i64* %5, align 8, !dbg !980
  %55 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !982
  %56 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %55, i64 %54, !dbg !982
  %57 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %56, i32 0, i32 0, !dbg !983
  %58 = load i8*, i8** %57, align 8, !dbg !983
  %59 = call signext i8 @File_IsFile(i8* %58), !dbg !984
  %60 = icmp ne i8 %59, 0, !dbg !984
  br i1 %60, label %61, label %130, !dbg !985

; <label>:61:                                     ; preds = %53
  %62 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %2, align 8, !dbg !986
  %63 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %62, i32 0, i32 4, !dbg !989
  %64 = load %struct.VmBackupState*, %struct.VmBackupState** %63, align 8, !dbg !989
  %65 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %64, i32 0, i32 20, !dbg !990
  %66 = load i8*, i8** %65, align 8, !dbg !990
  %67 = icmp ne i8* %66, null, !dbg !991
  br i1 %67, label %68, label %81, !dbg !992

; <label>:68:                                     ; preds = %61
  %69 = load i64, i64* %5, align 8, !dbg !993
  %70 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !995
  %71 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %70, i64 %69, !dbg !995
  %72 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %71, i32 0, i32 0, !dbg !996
  %73 = load i8*, i8** %72, align 8, !dbg !996
  %74 = load i8*, i8** %3, align 8, !dbg !997
  %75 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %2, align 8, !dbg !998
  %76 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %75, i32 0, i32 4, !dbg !999
  %77 = load %struct.VmBackupState*, %struct.VmBackupState** %76, align 8, !dbg !999
  %78 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %77, i32 0, i32 20, !dbg !1000
  %79 = load i8*, i8** %78, align 8, !dbg !1000
  %80 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* %73, i8* %74, i8* %79), !dbg !1001
  store i8* %80, i8** %7, align 8, !dbg !1002
  br label %89, !dbg !1003

; <label>:81:                                     ; preds = %61
  %82 = load i64, i64* %5, align 8, !dbg !1004
  %83 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !1006
  %84 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %83, i64 %82, !dbg !1006
  %85 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %84, i32 0, i32 0, !dbg !1007
  %86 = load i8*, i8** %85, align 8, !dbg !1007
  %87 = load i8*, i8** %3, align 8, !dbg !1008
  %88 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* %86, i8* %87), !dbg !1009
  store i8* %88, i8** %7, align 8, !dbg !1010
  br label %89

; <label>:89:                                     ; preds = %81, %68
  %90 = load i8*, i8** %7, align 8, !dbg !1011
  %91 = icmp ne i8* %90, null, !dbg !1013
  br i1 %91, label %92, label %100, !dbg !1014

; <label>:92:                                     ; preds = %89
  %93 = load i8*, i8** %7, align 8, !dbg !1015
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %93), !dbg !1017
  %94 = load i8*, i8** %7, align 8, !dbg !1018
  %95 = call %struct.ProcMgr_AsyncProc* @ProcMgr_ExecAsync(i8* %94, %struct.ProcMgr_ProcArgs* null), !dbg !1019
  %96 = load i64, i64* %5, align 8, !dbg !1020
  %97 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !1021
  %98 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %97, i64 %96, !dbg !1021
  %99 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %98, i32 0, i32 1, !dbg !1022
  store %struct.ProcMgr_AsyncProc* %95, %struct.ProcMgr_AsyncProc** %99, align 8, !dbg !1023
  br label %110, !dbg !1024

; <label>:100:                                    ; preds = %89
  %101 = load i64, i64* %5, align 8, !dbg !1025
  %102 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !1027
  %103 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %102, i64 %101, !dbg !1027
  %104 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %103, i32 0, i32 0, !dbg !1028
  %105 = load i8*, i8** %104, align 8, !dbg !1028
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* %105), !dbg !1029
  %106 = load i64, i64* %5, align 8, !dbg !1030
  %107 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !1031
  %108 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %107, i64 %106, !dbg !1031
  %109 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %108, i32 0, i32 1, !dbg !1032
  store %struct.ProcMgr_AsyncProc* null, %struct.ProcMgr_AsyncProc** %109, align 8, !dbg !1033
  br label %110

; <label>:110:                                    ; preds = %100, %92
  %111 = load i8*, i8** %7, align 8, !dbg !1034
  call void @vm_free(i8* %111), !dbg !1035
  %112 = load i64, i64* %5, align 8, !dbg !1036
  %113 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !1038
  %114 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %113, i64 %112, !dbg !1038
  %115 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %114, i32 0, i32 1, !dbg !1039
  %116 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %115, align 8, !dbg !1039
  %117 = icmp eq %struct.ProcMgr_AsyncProc* %116, null, !dbg !1040
  br i1 %117, label %118, label %128, !dbg !1041

; <label>:118:                                    ; preds = %110
  %119 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %2, align 8, !dbg !1042
  %120 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %119, i32 0, i32 3, !dbg !1045
  %121 = load i32, i32* %120, align 4, !dbg !1045
  %122 = icmp eq i32 %121, 0, !dbg !1046
  br i1 %122, label %123, label %124, !dbg !1047

; <label>:123:                                    ; preds = %118
  store i32 -1, i32* %4, align 4, !dbg !1048
  br label %177, !dbg !1050

; <label>:124:                                    ; preds = %118
  %125 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %2, align 8, !dbg !1051
  %126 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %125, i32 0, i32 2, !dbg !1053
  store i8 1, i8* %126, align 1, !dbg !1054
  br label %127

; <label>:127:                                    ; preds = %124
  br label %129, !dbg !1055

; <label>:128:                                    ; preds = %110
  store i32 1, i32* %4, align 4, !dbg !1056
  br label %177, !dbg !1058

; <label>:129:                                    ; preds = %127
  br label %130, !dbg !1059

; <label>:130:                                    ; preds = %129, %53
  %131 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %2, align 8, !dbg !1060
  %132 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %131, i32 0, i32 3, !dbg !1062
  %133 = load i32, i32* %132, align 4, !dbg !1062
  %134 = icmp eq i32 %133, 0, !dbg !1063
  br i1 %134, label %135, label %142, !dbg !1064

; <label>:135:                                    ; preds = %130
  %136 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %2, align 8, !dbg !1065
  %137 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %136, i32 0, i32 4, !dbg !1067
  %138 = load %struct.VmBackupState*, %struct.VmBackupState** %137, align 8, !dbg !1067
  %139 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %138, i32 0, i32 25, !dbg !1068
  %140 = load i64, i64* %139, align 8, !dbg !1069
  %141 = add nsw i64 %140, 1, !dbg !1069
  store i64 %141, i64* %139, align 8, !dbg !1069
  store i64 %141, i64* %5, align 8, !dbg !1070
  br label %149, !dbg !1071

; <label>:142:                                    ; preds = %130
  %143 = load %struct.VmBackupScriptOp*, %struct.VmBackupScriptOp** %2, align 8, !dbg !1072
  %144 = getelementptr inbounds %struct.VmBackupScriptOp, %struct.VmBackupScriptOp* %143, i32 0, i32 4, !dbg !1074
  %145 = load %struct.VmBackupState*, %struct.VmBackupState** %144, align 8, !dbg !1074
  %146 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %145, i32 0, i32 25, !dbg !1075
  %147 = load i64, i64* %146, align 8, !dbg !1076
  %148 = add nsw i64 %147, -1, !dbg !1076
  store i64 %148, i64* %146, align 8, !dbg !1076
  store i64 %148, i64* %5, align 8, !dbg !1077
  br label %149

; <label>:149:                                    ; preds = %142, %135
  %150 = load i64, i64* %5, align 8, !dbg !1078
  %151 = icmp eq i64 %150, -1, !dbg !1080
  br i1 %151, label %152, label %176, !dbg !1081

; <label>:152:                                    ; preds = %149
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1082, metadata !345), !dbg !1084
  store i64 0, i64* %8, align 8, !dbg !1084
  %153 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !1085
  %154 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %153, i64 0, !dbg !1085
  %155 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %154, i32 0, i32 0, !dbg !1087
  %156 = load i8*, i8** %155, align 8, !dbg !1087
  %157 = call signext i8 @File_IsFile(i8* %156), !dbg !1088
  %158 = icmp ne i8 %157, 0, !dbg !1088
  br i1 %158, label %160, label %159, !dbg !1089

; <label>:159:                                    ; preds = %152
  store i64 1, i64* %8, align 8, !dbg !1090
  br label %160, !dbg !1092

; <label>:160:                                    ; preds = %159, %152
  %161 = load i64, i64* %8, align 8, !dbg !1093
  %162 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !1095
  %163 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %162, i64 %161, !dbg !1095
  %164 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %163, i32 0, i32 1, !dbg !1096
  %165 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %164, align 8, !dbg !1096
  %166 = icmp eq %struct.ProcMgr_AsyncProc* %165, null, !dbg !1097
  br i1 %166, label %167, label %175, !dbg !1098

; <label>:167:                                    ; preds = %160
  %168 = load i64, i64* %8, align 8, !dbg !1099
  %169 = load %struct.VmBackupScript*, %struct.VmBackupScript** %6, align 8, !dbg !1101
  %170 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %169, i64 %168, !dbg !1101
  %171 = getelementptr inbounds %struct.VmBackupScript, %struct.VmBackupScript* %170, i32 0, i32 0, !dbg !1102
  %172 = load i8*, i8** %171, align 8, !dbg !1102
  %173 = icmp ne i8* %172, null, !dbg !1103
  br i1 %173, label %174, label %175, !dbg !1104

; <label>:174:                                    ; preds = %167
  store i32 -1, i32* %4, align 4, !dbg !1105
  br label %175, !dbg !1107

; <label>:175:                                    ; preds = %174, %167, %160
  br label %176, !dbg !1108

; <label>:176:                                    ; preds = %175, %149
  br label %41, !dbg !1109, !llvm.loop !1111

; <label>:177:                                    ; preds = %128, %123, %51
  %178 = load i32, i32* %4, align 4, !dbg !1112
  ret i32 %178, !dbg !1113
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @VmBackup_Release(%struct.VmBackupOp*) #5 !dbg !1114 {
  %2 = alloca %struct.VmBackupOp*, align 8
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !1115, metadata !345), !dbg !1116
  %3 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !1117
  %4 = icmp ne %struct.VmBackupOp* %3, null, !dbg !1119
  br i1 %4, label %5, label %10, !dbg !1120

; <label>:5:                                      ; preds = %1
  %6 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !1121
  %7 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %6, i32 0, i32 1, !dbg !1123
  %8 = load void (%struct.VmBackupOp*)*, void (%struct.VmBackupOp*)** %7, align 8, !dbg !1123
  %9 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !1124
  call void %8(%struct.VmBackupOp* %9), !dbg !1121
  br label %10, !dbg !1125

; <label>:10:                                     ; preds = %5, %1
  ret void, !dbg !1126
}

declare i8* @GuestApp_GetInstallPath() #3

declare signext i8 @ProcMgr_IsAsyncProcRunning(%struct.ProcMgr_AsyncProc*) #3

declare i32 @ProcMgr_GetExitCode(%struct.ProcMgr_AsyncProc*, i32*) #3

declare void @ProcMgr_Free(%struct.ProcMgr_AsyncProc*) #3

declare signext i8 @VmBackup_SendEvent(i8*, i32, i8*) #3

declare i32 @ProcMgr_GetPid(%struct.ProcMgr_AsyncProc*) #3

declare signext i8 @ProcMgr_KillByPid(i32) #3

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #6

declare %struct.ProcMgr_AsyncProc* @ProcMgr_ExecAsync(i8*, %struct.ProcMgr_ProcArgs*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!337, !338}
!llvm.ident = !{!339}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !57)
!1 = !DIFile(filename: "libvmbackup_la-scriptOps.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!2 = !{!3, !10, !15, !19, !30, !36, !48}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 43, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "vmBackupInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "VMBACKUP_STATUS_PENDING", value: 0)
!7 = !DIEnumerator(name: "VMBACKUP_STATUS_FINISHED", value: 1)
!8 = !DIEnumerator(name: "VMBACKUP_STATUS_CANCELED", value: 2)
!9 = !DIEnumerator(name: "VMBACKUP_STATUS_ERROR", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, size: 32, align: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "VMBACKUP_SCRIPT_FREEZE", value: 0)
!13 = !DIEnumerator(name: "VMBACKUP_SCRIPT_FREEZE_FAIL", value: 1)
!14 = !DIEnumerator(name: "VMBACKUP_SCRIPT_THAW", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 232, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!17 = !{!18}
!18 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 63, size: 32, align: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29}
!21 = !DIEnumerator(name: "VMBACKUP_MSTATE_IDLE", value: 0)
!22 = !DIEnumerator(name: "VMBACKUP_MSTATE_SCRIPT_FREEZE", value: 1)
!23 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_FREEZE_WAIT", value: 2)
!24 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_FREEZE", value: 3)
!25 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_THAW", value: 4)
!26 = !DIEnumerator(name: "VMBACKUP_MSTATE_SCRIPT_THAW", value: 5)
!27 = !DIEnumerator(name: "VMBACKUP_MSTATE_COMPLETE_WAIT", value: 6)
!28 = !DIEnumerator(name: "VMBACKUP_MSTATE_SCRIPT_ERROR", value: 7)
!29 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_ERROR", value: 8)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 50, size: 32, align: 32, elements: !31)
!31 = !{!32, !33, !34, !35}
!32 = !DIEnumerator(name: "VMBACKUP_FREEZE_PENDING", value: 0)
!33 = !DIEnumerator(name: "VMBACKUP_FREEZE_FINISHED", value: 1)
!34 = !DIEnumerator(name: "VMBACKUP_FREEZE_CANCELED", value: 2)
!35 = !DIEnumerator(name: "VMBACKUP_FREEZE_ERROR", value: 3)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 51, size: 32, align: 32, elements: !38)
!37 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47}
!39 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!40 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!41 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!42 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!43 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!44 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!45 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!46 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!47 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 78, size: 32, align: 32, elements: !50)
!49 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/guestrpc/vmbackup.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !DIEnumerator(name: "VMBACKUP_SUCCESS", value: 0)
!52 = !DIEnumerator(name: "VMBACKUP_INVALID_STATE", value: 1)
!53 = !DIEnumerator(name: "VMBACKUP_SCRIPT_ERROR", value: 2)
!54 = !DIEnumerator(name: "VMBACKUP_SYNC_ERROR", value: 3)
!55 = !DIEnumerator(name: "VMBACKUP_REMOTE_ABORT", value: 4)
!56 = !DIEnumerator(name: "VMBACKUP_UNEXPECTED_ERROR", value: 5)
!57 = !{!58, !59, !62, !77, !335}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 216, baseType: !61)
!60 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!61 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupOp", file: !4, line: 86, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupOp", file: !4, line: 82, size: 192, align: 64, elements: !65)
!65 = !{!66, !72, !76}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "queryFn", scope: !64, file: !4, line: 83, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupOpStatus", file: !4, line: 48, baseType: !3)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "releaseFn", scope: !64, file: !4, line: 84, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !71}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "cancelFn", scope: !64, file: !4, line: 85, baseType: !73, size: 64, align: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupScriptOp", file: !79, line: 68, baseType: !80)
!79 = !DIFile(filename: "scriptOps.c", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupScriptOp", file: !79, line: 62, size: 320, align: 64, elements: !81)
!81 = !{!82, !83, !87, !88, !90}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "callbacks", scope: !80, file: !79, line: 63, baseType: !63, size: 192, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "canceled", scope: !80, file: !79, line: 64, baseType: !84, size: 8, align: 8, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !85, line: 230, baseType: !86)
!85 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!86 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "thawFailed", scope: !80, file: !79, line: 65, baseType: !84, size: 8, align: 8, offset: 200)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !79, line: 66, baseType: !89, size: 32, align: 32, offset: 224)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupScriptType", file: !4, line: 61, baseType: !10)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !80, file: !79, line: 67, baseType: !91, size: 64, align: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupState", file: !4, line: 141, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupState", file: !4, line: 104, size: 1984, align: 64, elements: !94)
!94 = !{!95, !135, !136, !137, !184, !186, !187, !188, !266, !267, !268, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !284, !285, !286, !287, !288, !293, !294, !296, !298, !318, !330, !331, !332, !333, !334}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !93, file: !4, line: 105, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !16, line: 274, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !16, line: 241, size: 576, align: 64, elements: !99)
!99 = !{!100, !102, !107, !111, !112, !117, !122, !127, !128, !129, !133}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !98, file: !16, line: 243, baseType: !101, size: 32, align: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !16, line: 234, baseType: !15)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !16, line: 245, baseType: !103, size: 64, align: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !106, line: 46, baseType: !86)
!106 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!107 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !98, file: !16, line: 247, baseType: !108, size: 32, align: 32, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !106, line: 50, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !106, line: 49, baseType: !110)
!110 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !98, file: !16, line: 249, baseType: !110, size: 32, align: 32, offset: 160)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !98, file: !16, line: 251, baseType: !113, size: 64, align: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !115, line: 56, baseType: !116)
!115 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !115, line: 56, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !98, file: !16, line: 253, baseType: !118, size: 64, align: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !120, line: 48, baseType: !121)
!120 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !120, line: 48, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !98, file: !16, line: 255, baseType: !123, size: 64, align: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !125, line: 48, baseType: !126)
!125 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !125, line: 48, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !98, file: !16, line: 261, baseType: !110, size: 32, align: 32, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !98, file: !16, line: 263, baseType: !110, size: 32, align: 32, offset: 416)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !98, file: !16, line: 265, baseType: !130, size: 64, align: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !98, file: !16, line: 273, baseType: !134, size: 64, align: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !106, line: 77, baseType: !58)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "currentOp", scope: !93, file: !4, line: 106, baseType: !62, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "currentOpName", scope: !93, file: !4, line: 107, baseType: !131, size: 64, align: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "opLock", scope: !93, file: !4, line: 108, baseType: !138, size: 384, align: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticMutex", file: !139, line: 140, baseType: !140)
!139 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 133, size: 384, align: 64, elements: !141)
!141 = !{!142, !155}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !140, file: !139, line: 135, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !145, line: 51, baseType: !146)
!145 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !145, line: 58, size: 64, align: 64, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !146, file: !145, line: 61, baseType: !134, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !146, file: !145, line: 62, baseType: !150, size: 64, align: 32)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, align: 32, elements: !153)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !106, line: 55, baseType: !152)
!152 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!153 = !{!154}
!154 = !DISubrange(count: 2)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !140, file: !139, line: 138, baseType: !156, size: 320, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !157, line: 128, baseType: !158)
!157 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !157, line: 90, size: 320, align: 64, elements: !159)
!159 = !{!160, !178, !182}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !158, file: !157, line: 125, baseType: !161, size: 320, align: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !157, line: 92, size: 320, align: 64, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !170, !171}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !161, file: !157, line: 94, baseType: !110, size: 32, align: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !161, file: !157, line: 95, baseType: !152, size: 32, align: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !161, file: !157, line: 96, baseType: !110, size: 32, align: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !161, file: !157, line: 98, baseType: !152, size: 32, align: 32, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !161, file: !157, line: 102, baseType: !110, size: 32, align: 32, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !161, file: !157, line: 104, baseType: !169, size: 16, align: 16, offset: 160)
!169 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !161, file: !157, line: 105, baseType: !169, size: 16, align: 16, offset: 176)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !161, file: !157, line: 106, baseType: !172, size: 128, align: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !157, line: 79, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !157, line: 75, size: 128, align: 64, elements: !174)
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !173, file: !157, line: 77, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !173, file: !157, line: 78, baseType: !176, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !158, file: !157, line: 126, baseType: !179, size: 320, align: 8)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 320, align: 8, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 40)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !158, file: !157, line: 127, baseType: !183, size: 64, align: 64)
!183 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "volumes", scope: !93, file: !4, line: 109, baseType: !185, size: 64, align: 64, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "snapshots", scope: !93, file: !4, line: 110, baseType: !185, size: 64, align: 64, offset: 640)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pollPeriod", scope: !93, file: !4, line: 111, baseType: !151, size: 32, align: 32, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "abortTimer", scope: !93, file: !4, line: 112, baseType: !189, size: 64, align: 64, offset: 768)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !115, line: 64, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !115, line: 171, size: 768, align: 64, elements: !192)
!192 = !{!193, !194, !214, !243, !244, !248, !249, !250, !251, !259, !260, !261, !262}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !191, file: !115, line: 174, baseType: !134, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !191, file: !115, line: 175, baseType: !195, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !115, line: 77, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !115, line: 196, size: 192, align: 64, elements: !198)
!198 = !{!199, !203, !204}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !197, file: !115, line: 198, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !134}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !197, file: !115, line: 199, baseType: !200, size: 64, align: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !197, file: !115, line: 200, baseType: !205, size: 64, align: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !134, !189, !208, !213}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !115, line: 155, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!108, !134}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !191, file: !115, line: 177, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !115, line: 130, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !115, line: 214, size: 384, align: 64, elements: !219)
!219 = !{!220, !225, !229, !233, !237, !238}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !218, file: !115, line: 216, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!108, !189, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !218, file: !115, line: 218, baseType: !226, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!108, !189}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !218, file: !115, line: 219, baseType: !230, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!108, !189, !209, !134}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !218, file: !115, line: 222, baseType: !234, size: 64, align: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !189}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !218, file: !115, line: 226, baseType: !209, size: 64, align: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !218, file: !115, line: 227, baseType: !239, size: 64, align: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !115, line: 212, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{null}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !191, file: !115, line: 178, baseType: !151, size: 32, align: 32, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !191, file: !115, line: 180, baseType: !245, size: 64, align: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !115, line: 48, baseType: !247)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !115, line: 48, flags: DIFlagFwdDecl)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !191, file: !115, line: 182, baseType: !109, size: 32, align: 32, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !191, file: !115, line: 183, baseType: !151, size: 32, align: 32, offset: 352)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !191, file: !115, line: 184, baseType: !151, size: 32, align: 32, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !191, file: !115, line: 186, baseType: !252, size: 64, align: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !254, line: 37, baseType: !255)
!254 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !254, line: 39, size: 128, align: 64, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !255, file: !254, line: 41, baseType: !134, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !254, line: 42, baseType: !252, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !191, file: !115, line: 188, baseType: !189, size: 64, align: 64, offset: 512)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !115, line: 189, baseType: !189, size: 64, align: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !115, line: 191, baseType: !185, size: 64, align: 64, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !191, file: !115, line: 193, baseType: !263, size: 64, align: 64, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !115, line: 65, baseType: !265)
!265 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !115, line: 65, flags: DIFlagFwdDecl)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "timerEvent", scope: !93, file: !4, line: 113, baseType: !189, size: 64, align: 64, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "keepAlive", scope: !93, file: !4, line: 114, baseType: !189, size: 64, align: 64, offset: 896)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !93, file: !4, line: 115, baseType: !269, size: 64, align: 64, offset: 960)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!84, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "forceRequeue", scope: !93, file: !4, line: 116, baseType: !84, size: 8, align: 8, offset: 1024)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "generateManifests", scope: !93, file: !4, line: 117, baseType: !84, size: 8, align: 8, offset: 1032)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceApps", scope: !93, file: !4, line: 118, baseType: !84, size: 8, align: 8, offset: 1040)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceFS", scope: !93, file: !4, line: 119, baseType: !84, size: 8, align: 8, offset: 1048)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "excludedFileSystems", scope: !93, file: !4, line: 120, baseType: !185, size: 64, align: 64, offset: 1088)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "allowHWProvider", scope: !93, file: !4, line: 121, baseType: !84, size: 8, align: 8, offset: 1152)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "execScripts", scope: !93, file: !4, line: 122, baseType: !84, size: 8, align: 8, offset: 1160)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "enableNullDriver", scope: !93, file: !4, line: 123, baseType: !84, size: 8, align: 8, offset: 1168)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "needsPriv", scope: !93, file: !4, line: 124, baseType: !84, size: 8, align: 8, offset: 1176)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "scriptArg", scope: !93, file: !4, line: 125, baseType: !283, size: 64, align: 64, offset: 1216)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !93, file: !4, line: 126, baseType: !151, size: 32, align: 32, offset: 1280)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !93, file: !4, line: 127, baseType: !134, size: 64, align: 64, offset: 1344)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "scripts", scope: !93, file: !4, line: 128, baseType: !58, size: 64, align: 64, offset: 1408)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "configDir", scope: !93, file: !4, line: 129, baseType: !131, size: 64, align: 64, offset: 1472)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "currentScript", scope: !93, file: !4, line: 130, baseType: !289, size: 64, align: 64, offset: 1536)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !290, line: 109, baseType: !291)
!290 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !292, line: 172, baseType: !183)
!292 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!293 = !DIDerivedType(tag: DW_TAG_member, name: "errorMsg", scope: !93, file: !4, line: 131, baseType: !283, size: 64, align: 64, offset: 1600)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "machineState", scope: !93, file: !4, line: 132, baseType: !295, size: 32, align: 32, offset: 1664)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupMState", file: !4, line: 73, baseType: !19)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "freezeStatus", scope: !93, file: !4, line: 133, baseType: !297, size: 32, align: 32, offset: 1696)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupFreezeStatus", file: !4, line: 55, baseType: !30)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "provider", scope: !93, file: !4, line: 134, baseType: !299, size: 64, align: 64, offset: 1728)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupSyncProvider", file: !4, line: 154, size: 256, align: 64, elements: !301)
!301 = !{!302, !308, !313, !317}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !300, file: !4, line: 158, baseType: !303, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCorePoolCb", file: !304, line: 54, baseType: !305)
!304 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/threadPool.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !96, !134}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "snapshotDone", scope: !300, file: !4, line: 160, baseType: !309, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupProviderCallback", file: !4, line: 144, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!84, !91, !58}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !300, file: !4, line: 161, baseType: !314, size: 64, align: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !299}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !300, file: !4, line: 162, baseType: !58, size: 64, align: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "completer", scope: !93, file: !4, line: 135, baseType: !319, size: 64, align: 64, offset: 1792)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupSyncCompleter", file: !4, line: 171, size: 256, align: 64, elements: !321)
!321 = !{!322, !324, !325, !329}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !320, file: !4, line: 172, baseType: !323, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupCompleterCallback", file: !4, line: 145, baseType: !310)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "snapshotCompleted", scope: !320, file: !4, line: 173, baseType: !323, size: 64, align: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !320, file: !4, line: 174, baseType: !326, size: 64, align: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !319}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !320, file: !4, line: 175, baseType: !58, size: 64, align: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupContext", scope: !93, file: !4, line: 136, baseType: !109, size: 32, align: 32, offset: 1856)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupType", scope: !93, file: !4, line: 137, baseType: !109, size: 32, align: 32, offset: 1888)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "vssBootableSystemState", scope: !93, file: !4, line: 138, baseType: !84, size: 8, align: 8, offset: 1920)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vssPartialFileSupport", scope: !93, file: !4, line: 139, baseType: !84, size: 8, align: 8, offset: 1928)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vssUseDefault", scope: !93, file: !4, line: 140, baseType: !84, size: 8, align: 8, offset: 1936)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!337 = !{i32 2, !"Dwarf Version", i32 4}
!338 = !{i32 2, !"Debug Info Version", i32 3}
!339 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!340 = distinct !DISubprogram(name: "VmBackup_NewScriptOp", scope: !79, file: !79, line: 431, type: !341, isLocal: false, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!341 = !DISubroutineType(types: !342)
!342 = !{!62, !89, !91}
!343 = !{}
!344 = !DILocalVariable(name: "type", arg: 1, scope: !340, file: !79, line: 431, type: !89)
!345 = !DIExpression()
!346 = !DILocation(line: 431, column: 41, scope: !340)
!347 = !DILocalVariable(name: "state", arg: 2, scope: !340, file: !79, line: 432, type: !91)
!348 = !DILocation(line: 432, column: 37, scope: !340)
!349 = !DILocalVariable(name: "fail", scope: !340, file: !79, line: 434, type: !84)
!350 = !DILocation(line: 434, column: 9, scope: !340)
!351 = !DILocalVariable(name: "fileList", scope: !340, file: !79, line: 435, type: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!353 = !DILocation(line: 435, column: 11, scope: !340)
!354 = !DILocalVariable(name: "scriptDir", scope: !340, file: !79, line: 436, type: !185)
!355 = !DILocation(line: 436, column: 10, scope: !340)
!356 = !DILocalVariable(name: "numFiles", scope: !340, file: !79, line: 437, type: !110)
!357 = !DILocation(line: 437, column: 8, scope: !340)
!358 = !DILocalVariable(name: "i", scope: !340, file: !79, line: 438, type: !59)
!359 = !DILocation(line: 438, column: 11, scope: !340)
!360 = !DILocalVariable(name: "op", scope: !340, file: !79, line: 439, type: !77)
!361 = !DILocation(line: 439, column: 22, scope: !340)
!362 = !DILocation(line: 441, column: 16, scope: !340)
!363 = !DILocation(line: 441, column: 14, scope: !340)
!364 = !DILocation(line: 442, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !340, file: !79, line: 442, column: 8)
!366 = !DILocation(line: 442, column: 18, scope: !365)
!367 = !DILocation(line: 442, column: 8, scope: !340)
!368 = !DILocation(line: 443, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !79, line: 442, column: 26)
!370 = !DILocation(line: 446, column: 9, scope: !340)
!371 = !DILocation(line: 446, column: 7, scope: !340)
!372 = !DILocation(line: 447, column: 8, scope: !373)
!373 = distinct !DILexicalBlock(scope: !340, file: !79, line: 447, column: 8)
!374 = !DILocation(line: 447, column: 11, scope: !373)
!375 = !DILocation(line: 447, column: 8, scope: !340)
!376 = !DILocation(line: 448, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !79, line: 447, column: 19)
!378 = !DILocation(line: 451, column: 16, scope: !340)
!379 = !DILocation(line: 451, column: 4, scope: !340)
!380 = !DILocation(line: 451, column: 8, scope: !340)
!381 = !DILocation(line: 451, column: 14, scope: !340)
!382 = !DILocation(line: 452, column: 15, scope: !340)
!383 = !DILocation(line: 452, column: 4, scope: !340)
!384 = !DILocation(line: 452, column: 8, scope: !340)
!385 = !DILocation(line: 452, column: 13, scope: !340)
!386 = !DILocation(line: 453, column: 4, scope: !340)
!387 = !DILocation(line: 453, column: 8, scope: !340)
!388 = !DILocation(line: 453, column: 18, scope: !340)
!389 = !DILocation(line: 453, column: 26, scope: !340)
!390 = !DILocation(line: 454, column: 4, scope: !340)
!391 = !DILocation(line: 454, column: 8, scope: !340)
!392 = !DILocation(line: 454, column: 18, scope: !340)
!393 = !DILocation(line: 454, column: 27, scope: !340)
!394 = !DILocation(line: 455, column: 4, scope: !340)
!395 = !DILocation(line: 455, column: 8, scope: !340)
!396 = !DILocation(line: 455, column: 18, scope: !340)
!397 = !DILocation(line: 455, column: 28, scope: !340)
!398 = !DILocation(line: 457, column: 77, scope: !340)
!399 = !DILocation(line: 457, column: 4, scope: !340)
!400 = !DILocation(line: 472, column: 8, scope: !401)
!401 = distinct !DILexicalBlock(scope: !340, file: !79, line: 472, column: 8)
!402 = !DILocation(line: 472, column: 13, scope: !401)
!403 = !DILocation(line: 472, column: 8, scope: !340)
!404 = !DILocalVariable(name: "scripts", scope: !405, file: !79, line: 473, type: !406)
!405 = distinct !DILexicalBlock(scope: !401, file: !79, line: 472, column: 40)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupScript", file: !79, line: 59, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupScript", file: !79, line: 56, size: 128, align: 64, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !408, file: !79, line: 57, baseType: !185, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !408, file: !79, line: 58, baseType: !412, size: 64, align: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProcMgr_AsyncProc", file: !414, line: 42, baseType: !415)
!414 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/procMgr.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!415 = !DICompositeType(tag: DW_TAG_structure_type, name: "ProcMgr_AsyncProc", file: !414, line: 42, flags: DIFlagFwdDecl)
!416 = !DILocation(line: 473, column: 23, scope: !405)
!417 = !DILocalVariable(name: "legacy", scope: !405, file: !79, line: 474, type: !110)
!418 = !DILocation(line: 474, column: 11, scope: !405)
!419 = !DILocalVariable(name: "idx", scope: !405, file: !79, line: 475, type: !59)
!420 = !DILocation(line: 475, column: 14, scope: !405)
!421 = !DILocation(line: 477, column: 7, scope: !405)
!422 = !DILocation(line: 477, column: 14, scope: !405)
!423 = !DILocation(line: 477, column: 22, scope: !405)
!424 = !DILocation(line: 478, column: 7, scope: !405)
!425 = !DILocation(line: 478, column: 14, scope: !405)
!426 = !DILocation(line: 478, column: 28, scope: !405)
!427 = !DILocation(line: 480, column: 11, scope: !428)
!428 = distinct !DILexicalBlock(scope: !405, file: !79, line: 480, column: 11)
!429 = !DILocation(line: 480, column: 54, scope: !428)
!430 = !DILocation(line: 481, column: 11, scope: !428)
!431 = !DILocation(line: 480, column: 11, scope: !432)
!432 = !DILexicalBlockFile(scope: !405, file: !79, discriminator: 1)
!433 = !DILocation(line: 482, column: 17, scope: !434)
!434 = distinct !DILexicalBlock(scope: !428, file: !79, line: 481, column: 54)
!435 = !DILocation(line: 483, column: 7, scope: !434)
!436 = !DILocation(line: 485, column: 28, scope: !437)
!437 = distinct !DILexicalBlock(scope: !405, file: !79, line: 485, column: 11)
!438 = !DILocation(line: 485, column: 11, scope: !437)
!439 = !DILocation(line: 485, column: 11, scope: !405)
!440 = !DILocation(line: 486, column: 40, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !79, line: 485, column: 40)
!442 = !DILocation(line: 486, column: 21, scope: !441)
!443 = !DILocation(line: 486, column: 19, scope: !441)
!444 = !DILocation(line: 487, column: 7, scope: !441)
!445 = !DILocation(line: 489, column: 11, scope: !446)
!446 = distinct !DILexicalBlock(scope: !405, file: !79, line: 489, column: 11)
!447 = !DILocation(line: 489, column: 22, scope: !446)
!448 = !DILocation(line: 489, column: 20, scope: !446)
!449 = !DILocation(line: 489, column: 29, scope: !446)
!450 = !DILocation(line: 489, column: 11, scope: !405)
!451 = !DILocation(line: 490, column: 27, scope: !452)
!452 = distinct !DILexicalBlock(scope: !446, file: !79, line: 489, column: 34)
!453 = !DILocation(line: 490, column: 38, scope: !452)
!454 = !DILocation(line: 490, column: 36, scope: !452)
!455 = !DILocation(line: 490, column: 45, scope: !452)
!456 = !DILocation(line: 490, column: 20, scope: !452)
!457 = !DILocation(line: 490, column: 18, scope: !452)
!458 = !DILocation(line: 491, column: 14, scope: !459)
!459 = distinct !DILexicalBlock(scope: !452, file: !79, line: 491, column: 14)
!460 = !DILocation(line: 491, column: 22, scope: !459)
!461 = !DILocation(line: 491, column: 14, scope: !452)
!462 = !DILocation(line: 492, column: 18, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !79, line: 491, column: 30)
!464 = !DILocation(line: 493, column: 13, scope: !463)
!465 = !DILocation(line: 500, column: 10, scope: !452)
!466 = !DILocation(line: 500, column: 17, scope: !452)
!467 = !DILocation(line: 500, column: 31, scope: !452)
!468 = !DILocation(line: 501, column: 27, scope: !452)
!469 = !DILocation(line: 501, column: 10, scope: !452)
!470 = !DILocation(line: 501, column: 17, scope: !452)
!471 = !DILocation(line: 501, column: 25, scope: !452)
!472 = !DILocation(line: 502, column: 7, scope: !452)
!473 = !DILocation(line: 504, column: 11, scope: !474)
!474 = distinct !DILexicalBlock(scope: !405, file: !79, line: 504, column: 11)
!475 = !DILocation(line: 504, column: 18, scope: !474)
!476 = !DILocation(line: 504, column: 11, scope: !405)
!477 = !DILocation(line: 505, column: 32, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !79, line: 504, column: 23)
!479 = !DILocation(line: 505, column: 21, scope: !478)
!480 = !DILocation(line: 505, column: 10, scope: !478)
!481 = !DILocation(line: 505, column: 25, scope: !478)
!482 = !DILocation(line: 505, column: 30, scope: !478)
!483 = !DILocation(line: 506, column: 7, scope: !478)
!484 = !DILocation(line: 508, column: 11, scope: !485)
!485 = distinct !DILexicalBlock(scope: !405, file: !79, line: 508, column: 11)
!486 = !DILocation(line: 508, column: 20, scope: !485)
!487 = !DILocation(line: 508, column: 11, scope: !405)
!488 = !DILocalVariable(name: "i", scope: !489, file: !79, line: 509, type: !59)
!489 = distinct !DILexicalBlock(scope: !485, file: !79, line: 508, column: 25)
!490 = !DILocation(line: 509, column: 17, scope: !489)
!491 = !DILocation(line: 511, column: 14, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !79, line: 511, column: 14)
!493 = !DILocation(line: 511, column: 23, scope: !492)
!494 = !DILocation(line: 511, column: 14, scope: !489)
!495 = !DILocation(line: 512, column: 19, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !79, line: 511, column: 28)
!497 = !DILocation(line: 512, column: 38, scope: !496)
!498 = !DILocation(line: 512, column: 29, scope: !496)
!499 = !DILocation(line: 512, column: 13, scope: !496)
!500 = !DILocation(line: 513, column: 10, scope: !496)
!501 = !DILocation(line: 515, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !489, file: !79, line: 515, column: 10)
!503 = !DILocation(line: 515, column: 15, scope: !502)
!504 = !DILocation(line: 515, column: 22, scope: !505)
!505 = !DILexicalBlockFile(scope: !506, file: !79, discriminator: 1)
!506 = distinct !DILexicalBlock(scope: !502, file: !79, line: 515, column: 10)
!507 = !DILocation(line: 515, column: 26, scope: !505)
!508 = !DILocation(line: 515, column: 24, scope: !505)
!509 = !DILocation(line: 515, column: 10, scope: !505)
!510 = !DILocalVariable(name: "script", scope: !511, file: !79, line: 516, type: !185)
!511 = distinct !DILexicalBlock(scope: !506, file: !79, line: 515, column: 41)
!512 = !DILocation(line: 516, column: 19, scope: !511)
!513 = !DILocation(line: 518, column: 50, scope: !511)
!514 = !DILocation(line: 518, column: 75, scope: !511)
!515 = !DILocation(line: 518, column: 66, scope: !511)
!516 = !DILocation(line: 518, column: 22, scope: !511)
!517 = !DILocation(line: 518, column: 20, scope: !511)
!518 = !DILocation(line: 519, column: 17, scope: !519)
!519 = distinct !DILexicalBlock(scope: !511, file: !79, line: 519, column: 17)
!520 = !DILocation(line: 519, column: 24, scope: !519)
!521 = !DILocation(line: 519, column: 17, scope: !511)
!522 = !DILocation(line: 520, column: 21, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !79, line: 519, column: 32)
!524 = !DILocation(line: 521, column: 16, scope: !523)
!525 = !DILocation(line: 522, column: 36, scope: !526)
!526 = distinct !DILexicalBlock(scope: !519, file: !79, line: 522, column: 24)
!527 = !DILocation(line: 522, column: 24, scope: !526)
!528 = !DILocation(line: 522, column: 24, scope: !519)
!529 = !DILocation(line: 523, column: 38, scope: !530)
!530 = distinct !DILexicalBlock(scope: !526, file: !79, line: 522, column: 45)
!531 = !DILocation(line: 523, column: 27, scope: !530)
!532 = !DILocation(line: 523, column: 16, scope: !530)
!533 = !DILocation(line: 523, column: 31, scope: !530)
!534 = !DILocation(line: 523, column: 36, scope: !530)
!535 = !DILocation(line: 524, column: 13, scope: !530)
!536 = !DILocation(line: 525, column: 21, scope: !537)
!537 = distinct !DILexicalBlock(scope: !526, file: !79, line: 524, column: 20)
!538 = !DILocation(line: 525, column: 16, scope: !537)
!539 = !DILocation(line: 527, column: 10, scope: !511)
!540 = !DILocation(line: 515, column: 37, scope: !541)
!541 = !DILexicalBlockFile(scope: !506, file: !79, discriminator: 2)
!542 = !DILocation(line: 515, column: 10, scope: !541)
!543 = distinct !{!543, !544}
!544 = !DILocation(line: 515, column: 10, scope: !489)
!545 = !DILocation(line: 528, column: 7, scope: !489)
!546 = !DILocation(line: 529, column: 4, scope: !405)
!547 = !DILocation(line: 529, column: 15, scope: !548)
!548 = !DILexicalBlockFile(scope: !549, file: !79, discriminator: 1)
!549 = distinct !DILexicalBlock(scope: !401, file: !79, line: 529, column: 15)
!550 = !DILocation(line: 529, column: 22, scope: !548)
!551 = !DILocation(line: 529, column: 30, scope: !548)
!552 = !DILocalVariable(name: "scripts", scope: !553, file: !79, line: 530, type: !406)
!553 = distinct !DILexicalBlock(scope: !549, file: !79, line: 529, column: 38)
!554 = !DILocation(line: 530, column: 23, scope: !553)
!555 = !DILocation(line: 530, column: 33, scope: !553)
!556 = !DILocation(line: 530, column: 40, scope: !553)
!557 = !DILocation(line: 531, column: 18, scope: !558)
!558 = distinct !DILexicalBlock(scope: !553, file: !79, line: 531, column: 11)
!559 = !DILocation(line: 531, column: 29, scope: !558)
!560 = !DILocation(line: 531, column: 11, scope: !558)
!561 = !DILocation(line: 531, column: 66, scope: !558)
!562 = !DILocation(line: 531, column: 11, scope: !553)
!563 = !DILocation(line: 532, column: 18, scope: !564)
!564 = distinct !DILexicalBlock(scope: !558, file: !79, line: 531, column: 72)
!565 = !DILocation(line: 532, column: 29, scope: !564)
!566 = !DILocation(line: 532, column: 10, scope: !564)
!567 = !DILocation(line: 533, column: 28, scope: !564)
!568 = !DILocation(line: 533, column: 10, scope: !564)
!569 = !DILocation(line: 533, column: 21, scope: !564)
!570 = !DILocation(line: 533, column: 26, scope: !564)
!571 = !DILocation(line: 534, column: 7, scope: !564)
!572 = !DILocation(line: 535, column: 4, scope: !553)
!573 = !DILocation(line: 543, column: 12, scope: !340)
!574 = !DILocation(line: 543, column: 19, scope: !340)
!575 = !DILocation(line: 543, column: 27, scope: !340)
!576 = !DILocation(line: 543, column: 34, scope: !340)
!577 = !DILocation(line: 543, column: 59, scope: !578)
!578 = !DILexicalBlockFile(scope: !340, file: !79, discriminator: 1)
!579 = !DILocation(line: 543, column: 37, scope: !578)
!580 = !DILocation(line: 543, column: 63, scope: !578)
!581 = !DILocation(line: 543, column: 34, scope: !582)
!582 = !DILexicalBlockFile(scope: !340, file: !79, discriminator: 2)
!583 = !DILocation(line: 543, column: 11, scope: !582)
!584 = !DILocation(line: 543, column: 9, scope: !582)
!585 = !DILocation(line: 543, column: 4, scope: !582)
!586 = !DILocation(line: 547, column: 11, scope: !587)
!587 = distinct !DILexicalBlock(scope: !340, file: !79, line: 547, column: 4)
!588 = !DILocation(line: 547, column: 9, scope: !587)
!589 = !DILocation(line: 547, column: 16, scope: !590)
!590 = !DILexicalBlockFile(scope: !591, file: !79, discriminator: 1)
!591 = distinct !DILexicalBlock(scope: !587, file: !79, line: 547, column: 4)
!592 = !DILocation(line: 547, column: 20, scope: !590)
!593 = !DILocation(line: 547, column: 18, scope: !590)
!594 = !DILocation(line: 547, column: 4, scope: !590)
!595 = !DILocation(line: 548, column: 21, scope: !596)
!596 = distinct !DILexicalBlock(scope: !591, file: !79, line: 547, column: 35)
!597 = !DILocation(line: 548, column: 12, scope: !596)
!598 = !DILocation(line: 548, column: 7, scope: !596)
!599 = !DILocation(line: 549, column: 4, scope: !596)
!600 = !DILocation(line: 547, column: 31, scope: !601)
!601 = !DILexicalBlockFile(scope: !591, file: !79, discriminator: 2)
!602 = !DILocation(line: 547, column: 4, scope: !601)
!603 = distinct !{!603, !604}
!604 = !DILocation(line: 547, column: 4, scope: !340)
!605 = !DILocation(line: 550, column: 9, scope: !340)
!606 = !DILocation(line: 550, column: 4, scope: !340)
!607 = !DILocation(line: 552, column: 8, scope: !608)
!608 = distinct !DILexicalBlock(scope: !340, file: !79, line: 552, column: 8)
!609 = !DILocation(line: 552, column: 13, scope: !608)
!610 = !DILocation(line: 552, column: 16, scope: !611)
!611 = !DILexicalBlockFile(scope: !608, file: !79, discriminator: 1)
!612 = !DILocation(line: 552, column: 19, scope: !611)
!613 = !DILocation(line: 552, column: 8, scope: !611)
!614 = !DILocation(line: 553, column: 39, scope: !615)
!615 = distinct !DILexicalBlock(scope: !608, file: !79, line: 552, column: 27)
!616 = !DILocation(line: 553, column: 24, scope: !615)
!617 = !DILocation(line: 553, column: 7, scope: !615)
!618 = !DILocation(line: 554, column: 10, scope: !615)
!619 = !DILocation(line: 555, column: 4, scope: !615)
!620 = !DILocation(line: 556, column: 9, scope: !340)
!621 = !DILocation(line: 556, column: 4, scope: !340)
!622 = !DILocation(line: 557, column: 26, scope: !340)
!623 = !DILocation(line: 557, column: 11, scope: !340)
!624 = !DILocation(line: 557, column: 4, scope: !340)
!625 = distinct !DISubprogram(name: "VmBackupGetScriptPath", scope: !79, file: !79, line: 88, type: !626, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!626 = !DISubroutineType(types: !627)
!627 = !{!185}
!628 = !DILocalVariable(name: "scriptPath", scope: !625, file: !79, line: 90, type: !185)
!629 = !DILocation(line: 90, column: 10, scope: !625)
!630 = !DILocalVariable(name: "installPath", scope: !625, file: !79, line: 91, type: !185)
!631 = !DILocation(line: 91, column: 10, scope: !625)
!632 = !DILocation(line: 91, column: 24, scope: !625)
!633 = !DILocation(line: 93, column: 8, scope: !634)
!634 = distinct !DILexicalBlock(scope: !625, file: !79, line: 93, column: 8)
!635 = !DILocation(line: 93, column: 20, scope: !634)
!636 = !DILocation(line: 93, column: 8, scope: !625)
!637 = !DILocation(line: 94, column: 7, scope: !638)
!638 = distinct !DILexicalBlock(scope: !634, file: !79, line: 93, column: 28)
!639 = !DILocation(line: 97, column: 45, scope: !625)
!640 = !DILocation(line: 97, column: 17, scope: !625)
!641 = !DILocation(line: 97, column: 15, scope: !625)
!642 = !DILocation(line: 98, column: 9, scope: !625)
!643 = !DILocation(line: 98, column: 4, scope: !625)
!644 = !DILocation(line: 100, column: 11, scope: !625)
!645 = !DILocation(line: 100, column: 4, scope: !625)
!646 = !DILocation(line: 101, column: 1, scope: !625)
!647 = distinct !DISubprogram(name: "VmBackupScriptOpQuery", scope: !79, file: !79, line: 258, type: !648, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!648 = !DISubroutineType(types: !649)
!649 = !{!70, !62}
!650 = !DILocalVariable(name: "_op", arg: 1, scope: !647, file: !79, line: 258, type: !62)
!651 = !DILocation(line: 258, column: 35, scope: !647)
!652 = !DILocalVariable(name: "ret", scope: !647, file: !79, line: 260, type: !70)
!653 = !DILocation(line: 260, column: 21, scope: !647)
!654 = !DILocalVariable(name: "op", scope: !647, file: !79, line: 261, type: !77)
!655 = !DILocation(line: 261, column: 22, scope: !647)
!656 = !DILocation(line: 261, column: 48, scope: !647)
!657 = !DILocation(line: 261, column: 27, scope: !647)
!658 = !DILocalVariable(name: "scripts", scope: !647, file: !79, line: 262, type: !406)
!659 = !DILocation(line: 262, column: 20, scope: !647)
!660 = !DILocation(line: 262, column: 30, scope: !647)
!661 = !DILocation(line: 262, column: 34, scope: !647)
!662 = !DILocation(line: 262, column: 41, scope: !647)
!663 = !DILocalVariable(name: "currScript", scope: !647, file: !79, line: 263, type: !406)
!664 = !DILocation(line: 263, column: 20, scope: !647)
!665 = !DILocation(line: 265, column: 8, scope: !666)
!666 = distinct !DILexicalBlock(scope: !647, file: !79, line: 265, column: 8)
!667 = !DILocation(line: 265, column: 16, scope: !666)
!668 = !DILocation(line: 265, column: 23, scope: !666)
!669 = !DILocation(line: 265, column: 26, scope: !670)
!670 = !DILexicalBlockFile(scope: !666, file: !79, discriminator: 1)
!671 = !DILocation(line: 265, column: 30, scope: !670)
!672 = !DILocation(line: 265, column: 37, scope: !670)
!673 = !DILocation(line: 265, column: 51, scope: !670)
!674 = !DILocation(line: 265, column: 8, scope: !670)
!675 = !DILocation(line: 266, column: 29, scope: !676)
!676 = distinct !DILexicalBlock(scope: !666, file: !79, line: 265, column: 57)
!677 = !DILocation(line: 266, column: 33, scope: !676)
!678 = !DILocation(line: 266, column: 40, scope: !676)
!679 = !DILocation(line: 266, column: 21, scope: !676)
!680 = !DILocation(line: 266, column: 18, scope: !676)
!681 = !DILocation(line: 267, column: 4, scope: !676)
!682 = !DILocation(line: 269, column: 8, scope: !683)
!683 = distinct !DILexicalBlock(scope: !647, file: !79, line: 269, column: 8)
!684 = !DILocation(line: 269, column: 12, scope: !683)
!685 = !DILocation(line: 269, column: 8, scope: !647)
!686 = !DILocation(line: 270, column: 11, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !79, line: 269, column: 22)
!688 = !DILocation(line: 271, column: 7, scope: !687)
!689 = !DILocation(line: 272, column: 15, scope: !690)
!690 = distinct !DILexicalBlock(scope: !683, file: !79, line: 272, column: 15)
!691 = !DILocation(line: 272, column: 23, scope: !690)
!692 = !DILocation(line: 272, column: 30, scope: !690)
!693 = !DILocation(line: 272, column: 33, scope: !694)
!694 = !DILexicalBlockFile(scope: !690, file: !79, discriminator: 1)
!695 = !DILocation(line: 272, column: 44, scope: !694)
!696 = !DILocation(line: 272, column: 52, scope: !694)
!697 = !DILocation(line: 272, column: 55, scope: !698)
!698 = !DILexicalBlockFile(scope: !690, file: !79, discriminator: 2)
!699 = !DILocation(line: 272, column: 67, scope: !698)
!700 = !DILocation(line: 272, column: 72, scope: !698)
!701 = !DILocation(line: 272, column: 15, scope: !698)
!702 = !DILocation(line: 273, column: 11, scope: !703)
!703 = distinct !DILexicalBlock(scope: !690, file: !79, line: 272, column: 81)
!704 = !DILocation(line: 274, column: 7, scope: !703)
!705 = !DILocation(line: 277, column: 36, scope: !706)
!706 = distinct !DILexicalBlock(scope: !647, file: !79, line: 277, column: 8)
!707 = !DILocation(line: 277, column: 48, scope: !706)
!708 = !DILocation(line: 277, column: 9, scope: !706)
!709 = !DILocation(line: 277, column: 8, scope: !647)
!710 = !DILocalVariable(name: "exitCode", scope: !711, file: !79, line: 278, type: !110)
!711 = distinct !DILexicalBlock(scope: !706, file: !79, line: 277, column: 55)
!712 = !DILocation(line: 278, column: 11, scope: !711)
!713 = !DILocalVariable(name: "succeeded", scope: !711, file: !79, line: 279, type: !84)
!714 = !DILocation(line: 279, column: 12, scope: !711)
!715 = !DILocation(line: 281, column: 40, scope: !711)
!716 = !DILocation(line: 281, column: 52, scope: !711)
!717 = !DILocation(line: 281, column: 20, scope: !711)
!718 = !DILocation(line: 281, column: 69, scope: !711)
!719 = !DILocation(line: 281, column: 74, scope: !711)
!720 = !DILocation(line: 282, column: 20, scope: !711)
!721 = !DILocation(line: 282, column: 29, scope: !711)
!722 = !DILocation(line: 281, column: 74, scope: !723)
!723 = !DILexicalBlockFile(scope: !711, file: !79, discriminator: 1)
!724 = !DILocation(line: 281, column: 19, scope: !723)
!725 = !DILocation(line: 281, column: 17, scope: !723)
!726 = !DILocation(line: 283, column: 20, scope: !711)
!727 = !DILocation(line: 283, column: 32, scope: !711)
!728 = !DILocation(line: 283, column: 7, scope: !711)
!729 = !DILocation(line: 284, column: 7, scope: !711)
!730 = !DILocation(line: 284, column: 19, scope: !711)
!731 = !DILocation(line: 284, column: 24, scope: !711)
!732 = !DILocation(line: 290, column: 12, scope: !733)
!733 = distinct !DILexicalBlock(scope: !711, file: !79, line: 290, column: 11)
!734 = !DILocation(line: 290, column: 11, scope: !711)
!735 = !DILocation(line: 291, column: 15, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !79, line: 291, column: 15)
!737 = distinct !DILexicalBlock(scope: !733, file: !79, line: 290, column: 23)
!738 = !DILocation(line: 291, column: 19, scope: !736)
!739 = !DILocation(line: 291, column: 24, scope: !736)
!740 = !DILocation(line: 291, column: 15, scope: !737)
!741 = !DILocation(line: 292, column: 18, scope: !742)
!742 = distinct !DILexicalBlock(scope: !736, file: !79, line: 291, column: 51)
!743 = !DILocation(line: 293, column: 14, scope: !742)
!744 = !DILocation(line: 294, column: 22, scope: !745)
!745 = distinct !DILexicalBlock(scope: !736, file: !79, line: 294, column: 22)
!746 = !DILocation(line: 294, column: 26, scope: !745)
!747 = !DILocation(line: 294, column: 31, scope: !745)
!748 = !DILocation(line: 294, column: 22, scope: !736)
!749 = !DILocation(line: 295, column: 14, scope: !750)
!750 = distinct !DILexicalBlock(scope: !745, file: !79, line: 294, column: 56)
!751 = !DILocation(line: 295, column: 18, scope: !750)
!752 = !DILocation(line: 295, column: 29, scope: !750)
!753 = !DILocation(line: 296, column: 11, scope: !750)
!754 = !DILocation(line: 297, column: 7, scope: !737)
!755 = !DILocation(line: 299, column: 37, scope: !711)
!756 = !DILocation(line: 299, column: 15, scope: !711)
!757 = !DILocation(line: 299, column: 7, scope: !711)
!758 = !DILocation(line: 301, column: 14, scope: !759)
!759 = distinct !DILexicalBlock(scope: !711, file: !79, line: 299, column: 42)
!760 = !DILocation(line: 302, column: 10, scope: !759)
!761 = !DILocation(line: 305, column: 16, scope: !759)
!762 = !DILocation(line: 305, column: 20, scope: !759)
!763 = !DILocation(line: 305, column: 14, scope: !759)
!764 = !DILocation(line: 306, column: 10, scope: !759)
!765 = !DILocation(line: 309, column: 10, scope: !759)
!766 = !DILocation(line: 311, column: 4, scope: !711)
!767 = !DILocation(line: 277, column: 52, scope: !768)
!768 = !DILexicalBlockFile(scope: !706, file: !79, discriminator: 1)
!769 = !DILocation(line: 314, column: 8, scope: !770)
!770 = distinct !DILexicalBlock(scope: !647, file: !79, line: 314, column: 8)
!771 = !DILocation(line: 314, column: 12, scope: !770)
!772 = !DILocation(line: 314, column: 8, scope: !647)
!773 = !DILocation(line: 316, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !770, file: !79, line: 314, column: 38)
!775 = !DILocation(line: 319, column: 4, scope: !774)
!776 = !DILocation(line: 320, column: 11, scope: !647)
!777 = !DILocation(line: 320, column: 4, scope: !647)
!778 = distinct !DISubprogram(name: "VmBackupScriptOpCancel", scope: !79, file: !79, line: 383, type: !779, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !62}
!781 = !DILocalVariable(name: "_op", arg: 1, scope: !778, file: !79, line: 383, type: !62)
!782 = !DILocation(line: 383, column: 36, scope: !778)
!783 = !DILocalVariable(name: "op", scope: !778, file: !79, line: 385, type: !77)
!784 = !DILocation(line: 385, column: 22, scope: !778)
!785 = !DILocation(line: 385, column: 48, scope: !778)
!786 = !DILocation(line: 385, column: 27, scope: !778)
!787 = !DILocalVariable(name: "scripts", scope: !778, file: !79, line: 386, type: !406)
!788 = !DILocation(line: 386, column: 20, scope: !778)
!789 = !DILocation(line: 386, column: 30, scope: !778)
!790 = !DILocation(line: 386, column: 34, scope: !778)
!791 = !DILocation(line: 386, column: 41, scope: !778)
!792 = !DILocalVariable(name: "currScript", scope: !778, file: !79, line: 387, type: !406)
!793 = !DILocation(line: 387, column: 20, scope: !778)
!794 = !DILocalVariable(name: "pid", scope: !778, file: !79, line: 388, type: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProcMgr_Pid", file: !414, line: 47, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !797, line: 174, baseType: !798)
!797 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1581")
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !292, line: 133, baseType: !110)
!799 = !DILocation(line: 388, column: 16, scope: !778)
!800 = !DILocation(line: 390, column: 8, scope: !801)
!801 = distinct !DILexicalBlock(scope: !778, file: !79, line: 390, column: 8)
!802 = !DILocation(line: 390, column: 16, scope: !801)
!803 = !DILocation(line: 390, column: 8, scope: !778)
!804 = !DILocation(line: 391, column: 29, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !79, line: 390, column: 24)
!806 = !DILocation(line: 391, column: 33, scope: !805)
!807 = !DILocation(line: 391, column: 40, scope: !805)
!808 = !DILocation(line: 391, column: 21, scope: !805)
!809 = !DILocation(line: 391, column: 18, scope: !805)
!810 = !DILocation(line: 394, column: 28, scope: !805)
!811 = !DILocation(line: 394, column: 40, scope: !805)
!812 = !DILocation(line: 394, column: 13, scope: !805)
!813 = !DILocation(line: 394, column: 11, scope: !805)
!814 = !DILocation(line: 395, column: 30, scope: !815)
!815 = distinct !DILexicalBlock(scope: !805, file: !79, line: 395, column: 11)
!816 = !DILocation(line: 395, column: 12, scope: !815)
!817 = !DILocation(line: 395, column: 11, scope: !805)
!818 = !DILocation(line: 397, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !815, file: !79, line: 395, column: 36)
!820 = !DILocalVariable(name: "exitCode", scope: !821, file: !79, line: 398, type: !110)
!821 = distinct !DILexicalBlock(scope: !815, file: !79, line: 397, column: 14)
!822 = !DILocation(line: 398, column: 14, scope: !821)
!823 = !DILocation(line: 399, column: 30, scope: !821)
!824 = !DILocation(line: 399, column: 42, scope: !821)
!825 = !DILocation(line: 399, column: 10, scope: !821)
!826 = !DILocation(line: 401, column: 4, scope: !805)
!827 = !DILocation(line: 403, column: 4, scope: !778)
!828 = !DILocation(line: 403, column: 8, scope: !778)
!829 = !DILocation(line: 403, column: 17, scope: !778)
!830 = !DILocation(line: 404, column: 1, scope: !778)
!831 = distinct !DISubprogram(name: "VmBackupScriptOpRelease", scope: !79, file: !79, line: 343, type: !779, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!832 = !DILocalVariable(name: "_op", arg: 1, scope: !831, file: !79, line: 343, type: !62)
!833 = !DILocation(line: 343, column: 37, scope: !831)
!834 = !DILocalVariable(name: "i", scope: !831, file: !79, line: 345, type: !59)
!835 = !DILocation(line: 345, column: 11, scope: !831)
!836 = !DILocalVariable(name: "op", scope: !831, file: !79, line: 346, type: !77)
!837 = !DILocation(line: 346, column: 22, scope: !831)
!838 = !DILocation(line: 346, column: 48, scope: !831)
!839 = !DILocation(line: 346, column: 27, scope: !831)
!840 = !DILocation(line: 348, column: 8, scope: !841)
!841 = distinct !DILexicalBlock(scope: !831, file: !79, line: 348, column: 8)
!842 = !DILocation(line: 348, column: 12, scope: !841)
!843 = !DILocation(line: 348, column: 17, scope: !841)
!844 = !DILocation(line: 348, column: 43, scope: !841)
!845 = !DILocation(line: 348, column: 46, scope: !846)
!846 = !DILexicalBlockFile(scope: !841, file: !79, discriminator: 1)
!847 = !DILocation(line: 348, column: 50, scope: !846)
!848 = !DILocation(line: 348, column: 57, scope: !846)
!849 = !DILocation(line: 348, column: 65, scope: !846)
!850 = !DILocation(line: 348, column: 8, scope: !846)
!851 = !DILocalVariable(name: "scripts", scope: !852, file: !79, line: 349, type: !406)
!852 = distinct !DILexicalBlock(scope: !841, file: !79, line: 348, column: 73)
!853 = !DILocation(line: 349, column: 23, scope: !852)
!854 = !DILocation(line: 349, column: 33, scope: !852)
!855 = !DILocation(line: 349, column: 37, scope: !852)
!856 = !DILocation(line: 349, column: 44, scope: !852)
!857 = !DILocation(line: 350, column: 14, scope: !858)
!858 = distinct !DILexicalBlock(scope: !852, file: !79, line: 350, column: 7)
!859 = !DILocation(line: 350, column: 12, scope: !858)
!860 = !DILocation(line: 350, column: 27, scope: !861)
!861 = !DILexicalBlockFile(scope: !862, file: !79, discriminator: 1)
!862 = distinct !DILexicalBlock(scope: !858, file: !79, line: 350, column: 7)
!863 = !DILocation(line: 350, column: 19, scope: !861)
!864 = !DILocation(line: 350, column: 30, scope: !861)
!865 = !DILocation(line: 350, column: 35, scope: !861)
!866 = !DILocation(line: 350, column: 7, scope: !861)
!867 = !DILocation(line: 351, column: 23, scope: !868)
!868 = distinct !DILexicalBlock(scope: !862, file: !79, line: 350, column: 48)
!869 = !DILocation(line: 351, column: 15, scope: !868)
!870 = !DILocation(line: 351, column: 26, scope: !868)
!871 = !DILocation(line: 351, column: 10, scope: !868)
!872 = !DILocation(line: 352, column: 22, scope: !873)
!873 = distinct !DILexicalBlock(scope: !868, file: !79, line: 352, column: 14)
!874 = !DILocation(line: 352, column: 14, scope: !873)
!875 = !DILocation(line: 352, column: 25, scope: !873)
!876 = !DILocation(line: 352, column: 30, scope: !873)
!877 = !DILocation(line: 352, column: 14, scope: !868)
!878 = !DILocation(line: 353, column: 34, scope: !879)
!879 = distinct !DILexicalBlock(scope: !873, file: !79, line: 352, column: 38)
!880 = !DILocation(line: 353, column: 26, scope: !879)
!881 = !DILocation(line: 353, column: 37, scope: !879)
!882 = !DILocation(line: 353, column: 13, scope: !879)
!883 = !DILocation(line: 354, column: 10, scope: !879)
!884 = !DILocation(line: 355, column: 7, scope: !868)
!885 = !DILocation(line: 350, column: 44, scope: !886)
!886 = !DILexicalBlockFile(scope: !862, file: !79, discriminator: 2)
!887 = !DILocation(line: 350, column: 7, scope: !886)
!888 = distinct !{!888, !889}
!889 = !DILocation(line: 350, column: 7, scope: !852)
!890 = !DILocation(line: 356, column: 12, scope: !852)
!891 = !DILocation(line: 356, column: 16, scope: !852)
!892 = !DILocation(line: 356, column: 23, scope: !852)
!893 = !DILocation(line: 356, column: 7, scope: !852)
!894 = !DILocation(line: 357, column: 7, scope: !852)
!895 = !DILocation(line: 357, column: 11, scope: !852)
!896 = !DILocation(line: 357, column: 18, scope: !852)
!897 = !DILocation(line: 357, column: 26, scope: !852)
!898 = !DILocation(line: 358, column: 7, scope: !852)
!899 = !DILocation(line: 358, column: 11, scope: !852)
!900 = !DILocation(line: 358, column: 18, scope: !852)
!901 = !DILocation(line: 358, column: 32, scope: !852)
!902 = !DILocation(line: 359, column: 4, scope: !852)
!903 = !DILocation(line: 361, column: 9, scope: !831)
!904 = !DILocation(line: 361, column: 4, scope: !831)
!905 = !DILocation(line: 362, column: 1, scope: !831)
!906 = distinct !DISubprogram(name: "VmBackupStringCompare", scope: !79, file: !79, line: 232, type: !907, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!907 = !DISubroutineType(types: !908)
!908 = !{!110, !909, !909}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64, align: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!911 = !DILocalVariable(name: "str1", arg: 1, scope: !906, file: !79, line: 232, type: !909)
!912 = !DILocation(line: 232, column: 35, scope: !906)
!913 = !DILocalVariable(name: "str2", arg: 2, scope: !906, file: !79, line: 233, type: !909)
!914 = !DILocation(line: 233, column: 35, scope: !906)
!915 = !DILocation(line: 235, column: 37, scope: !906)
!916 = !DILocation(line: 235, column: 20, scope: !906)
!917 = !DILocation(line: 235, column: 18, scope: !906)
!918 = !DILocation(line: 235, column: 61, scope: !906)
!919 = !DILocation(line: 235, column: 44, scope: !906)
!920 = !DILocation(line: 235, column: 42, scope: !906)
!921 = !DILocation(line: 235, column: 11, scope: !906)
!922 = !DILocation(line: 235, column: 4, scope: !906)
!923 = distinct !DISubprogram(name: "VmBackupRunNextScript", scope: !79, file: !79, line: 127, type: !924, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!924 = !DISubroutineType(types: !925)
!925 = !{!110, !77}
!926 = !DILocalVariable(name: "op", arg: 1, scope: !923, file: !79, line: 127, type: !77)
!927 = !DILocation(line: 127, column: 41, scope: !923)
!928 = !DILocalVariable(name: "scriptOp", scope: !923, file: !79, line: 129, type: !131)
!929 = !DILocation(line: 129, column: 16, scope: !923)
!930 = !DILocalVariable(name: "ret", scope: !923, file: !79, line: 130, type: !110)
!931 = !DILocation(line: 130, column: 8, scope: !923)
!932 = !DILocalVariable(name: "index", scope: !923, file: !79, line: 131, type: !289)
!933 = !DILocation(line: 131, column: 12, scope: !923)
!934 = !DILocalVariable(name: "scripts", scope: !923, file: !79, line: 132, type: !406)
!935 = !DILocation(line: 132, column: 20, scope: !923)
!936 = !DILocation(line: 132, column: 30, scope: !923)
!937 = !DILocation(line: 132, column: 34, scope: !923)
!938 = !DILocation(line: 132, column: 41, scope: !923)
!939 = !DILocation(line: 134, column: 12, scope: !923)
!940 = !DILocation(line: 134, column: 16, scope: !923)
!941 = !DILocation(line: 134, column: 4, scope: !923)
!942 = !DILocation(line: 136, column: 17, scope: !943)
!943 = distinct !DILexicalBlock(scope: !923, file: !79, line: 134, column: 22)
!944 = !DILocation(line: 136, column: 21, scope: !943)
!945 = !DILocation(line: 136, column: 28, scope: !943)
!946 = !DILocation(line: 136, column: 15, scope: !943)
!947 = !DILocation(line: 136, column: 13, scope: !943)
!948 = !DILocation(line: 137, column: 16, scope: !943)
!949 = !DILocation(line: 138, column: 7, scope: !943)
!950 = !DILocation(line: 141, column: 17, scope: !943)
!951 = !DILocation(line: 141, column: 21, scope: !943)
!952 = !DILocation(line: 141, column: 28, scope: !943)
!953 = !DILocation(line: 141, column: 15, scope: !943)
!954 = !DILocation(line: 141, column: 13, scope: !943)
!955 = !DILocation(line: 142, column: 16, scope: !943)
!956 = !DILocation(line: 143, column: 7, scope: !943)
!957 = !DILocation(line: 146, column: 17, scope: !943)
!958 = !DILocation(line: 146, column: 21, scope: !943)
!959 = !DILocation(line: 146, column: 28, scope: !943)
!960 = !DILocation(line: 146, column: 15, scope: !943)
!961 = !DILocation(line: 146, column: 13, scope: !943)
!962 = !DILocation(line: 147, column: 16, scope: !943)
!963 = !DILocation(line: 148, column: 7, scope: !943)
!964 = !DILocation(line: 151, column: 7, scope: !943)
!965 = !DILocation(line: 154, column: 4, scope: !923)
!966 = !DILocation(line: 154, column: 11, scope: !967)
!967 = !DILexicalBlockFile(scope: !923, file: !79, discriminator: 1)
!968 = !DILocation(line: 154, column: 17, scope: !967)
!969 = !DILocation(line: 154, column: 22, scope: !967)
!970 = !DILocation(line: 154, column: 33, scope: !971)
!971 = !DILexicalBlockFile(scope: !923, file: !79, discriminator: 2)
!972 = !DILocation(line: 154, column: 25, scope: !971)
!973 = !DILocation(line: 154, column: 40, scope: !971)
!974 = !DILocation(line: 154, column: 45, scope: !971)
!975 = !DILocation(line: 154, column: 4, scope: !976)
!976 = !DILexicalBlockFile(scope: !923, file: !79, discriminator: 3)
!977 = !DILocalVariable(name: "cmd", scope: !978, file: !79, line: 155, type: !185)
!978 = distinct !DILexicalBlock(scope: !923, file: !79, line: 154, column: 53)
!979 = !DILocation(line: 155, column: 13, scope: !978)
!980 = !DILocation(line: 157, column: 31, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !79, line: 157, column: 11)
!982 = !DILocation(line: 157, column: 23, scope: !981)
!983 = !DILocation(line: 157, column: 38, scope: !981)
!984 = !DILocation(line: 157, column: 11, scope: !981)
!985 = !DILocation(line: 157, column: 11, scope: !978)
!986 = !DILocation(line: 158, column: 14, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !79, line: 158, column: 14)
!988 = distinct !DILexicalBlock(scope: !981, file: !79, line: 157, column: 45)
!989 = !DILocation(line: 158, column: 18, scope: !987)
!990 = !DILocation(line: 158, column: 25, scope: !987)
!991 = !DILocation(line: 158, column: 35, scope: !987)
!992 = !DILocation(line: 158, column: 14, scope: !988)
!993 = !DILocation(line: 159, column: 65, scope: !994)
!994 = distinct !DILexicalBlock(scope: !987, file: !79, line: 158, column: 43)
!995 = !DILocation(line: 159, column: 57, scope: !994)
!996 = !DILocation(line: 159, column: 72, scope: !994)
!997 = !DILocation(line: 160, column: 32, scope: !994)
!998 = !DILocation(line: 160, column: 42, scope: !994)
!999 = !DILocation(line: 160, column: 46, scope: !994)
!1000 = !DILocation(line: 160, column: 53, scope: !994)
!1001 = !DILocation(line: 159, column: 19, scope: !994)
!1002 = !DILocation(line: 159, column: 17, scope: !994)
!1003 = !DILocation(line: 161, column: 10, scope: !994)
!1004 = !DILocation(line: 162, column: 58, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !987, file: !79, line: 161, column: 17)
!1006 = !DILocation(line: 162, column: 50, scope: !1005)
!1007 = !DILocation(line: 162, column: 65, scope: !1005)
!1008 = !DILocation(line: 163, column: 32, scope: !1005)
!1009 = !DILocation(line: 162, column: 19, scope: !1005)
!1010 = !DILocation(line: 162, column: 17, scope: !1005)
!1011 = !DILocation(line: 165, column: 14, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !988, file: !79, line: 165, column: 14)
!1013 = !DILocation(line: 165, column: 18, scope: !1012)
!1014 = !DILocation(line: 165, column: 14, scope: !988)
!1015 = !DILocation(line: 166, column: 75, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !79, line: 165, column: 26)
!1017 = !DILocation(line: 166, column: 13, scope: !1016)
!1018 = !DILocation(line: 167, column: 53, scope: !1016)
!1019 = !DILocation(line: 167, column: 35, scope: !1016)
!1020 = !DILocation(line: 167, column: 21, scope: !1016)
!1021 = !DILocation(line: 167, column: 13, scope: !1016)
!1022 = !DILocation(line: 167, column: 28, scope: !1016)
!1023 = !DILocation(line: 167, column: 33, scope: !1016)
!1024 = !DILocation(line: 168, column: 10, scope: !1016)
!1025 = !DILocation(line: 169, column: 108, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1012, file: !79, line: 168, column: 17)
!1027 = !DILocation(line: 169, column: 100, scope: !1026)
!1028 = !DILocation(line: 169, column: 115, scope: !1026)
!1029 = !DILocation(line: 169, column: 13, scope: !1026)
!1030 = !DILocation(line: 171, column: 21, scope: !1026)
!1031 = !DILocation(line: 171, column: 13, scope: !1026)
!1032 = !DILocation(line: 171, column: 28, scope: !1026)
!1033 = !DILocation(line: 171, column: 33, scope: !1026)
!1034 = !DILocation(line: 173, column: 18, scope: !988)
!1035 = !DILocation(line: 173, column: 10, scope: !988)
!1036 = !DILocation(line: 175, column: 22, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !988, file: !79, line: 175, column: 14)
!1038 = !DILocation(line: 175, column: 14, scope: !1037)
!1039 = !DILocation(line: 175, column: 29, scope: !1037)
!1040 = !DILocation(line: 175, column: 34, scope: !1037)
!1041 = !DILocation(line: 175, column: 14, scope: !988)
!1042 = !DILocation(line: 176, column: 17, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !79, line: 176, column: 17)
!1044 = distinct !DILexicalBlock(scope: !1037, file: !79, line: 175, column: 42)
!1045 = !DILocation(line: 176, column: 21, scope: !1043)
!1046 = !DILocation(line: 176, column: 26, scope: !1043)
!1047 = !DILocation(line: 176, column: 17, scope: !1044)
!1048 = !DILocation(line: 177, column: 20, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1043, file: !79, line: 176, column: 53)
!1050 = !DILocation(line: 178, column: 16, scope: !1049)
!1051 = !DILocation(line: 180, column: 16, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1043, file: !79, line: 179, column: 20)
!1053 = !DILocation(line: 180, column: 20, scope: !1052)
!1054 = !DILocation(line: 180, column: 31, scope: !1052)
!1055 = !DILocation(line: 182, column: 10, scope: !1044)
!1056 = !DILocation(line: 183, column: 17, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1037, file: !79, line: 182, column: 17)
!1058 = !DILocation(line: 184, column: 13, scope: !1057)
!1059 = !DILocation(line: 186, column: 7, scope: !988)
!1060 = !DILocation(line: 188, column: 11, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !978, file: !79, line: 188, column: 11)
!1062 = !DILocation(line: 188, column: 15, scope: !1061)
!1063 = !DILocation(line: 188, column: 20, scope: !1061)
!1064 = !DILocation(line: 188, column: 11, scope: !978)
!1065 = !DILocation(line: 189, column: 20, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !79, line: 188, column: 47)
!1067 = !DILocation(line: 189, column: 24, scope: !1066)
!1068 = !DILocation(line: 189, column: 31, scope: !1066)
!1069 = !DILocation(line: 189, column: 18, scope: !1066)
!1070 = !DILocation(line: 189, column: 16, scope: !1066)
!1071 = !DILocation(line: 190, column: 7, scope: !1066)
!1072 = !DILocation(line: 191, column: 20, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1061, file: !79, line: 190, column: 14)
!1074 = !DILocation(line: 191, column: 24, scope: !1073)
!1075 = !DILocation(line: 191, column: 31, scope: !1073)
!1076 = !DILocation(line: 191, column: 18, scope: !1073)
!1077 = !DILocation(line: 191, column: 16, scope: !1073)
!1078 = !DILocation(line: 200, column: 11, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !978, file: !79, line: 200, column: 11)
!1080 = !DILocation(line: 200, column: 17, scope: !1079)
!1081 = !DILocation(line: 200, column: 11, scope: !978)
!1082 = !DILocalVariable(name: "failIdx", scope: !1083, file: !79, line: 201, type: !59)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !79, line: 200, column: 24)
!1084 = !DILocation(line: 201, column: 17, scope: !1083)
!1085 = !DILocation(line: 202, column: 27, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1083, file: !79, line: 202, column: 14)
!1087 = !DILocation(line: 202, column: 38, scope: !1086)
!1088 = !DILocation(line: 202, column: 15, scope: !1086)
!1089 = !DILocation(line: 202, column: 14, scope: !1083)
!1090 = !DILocation(line: 203, column: 21, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !79, line: 202, column: 45)
!1092 = !DILocation(line: 204, column: 10, scope: !1091)
!1093 = !DILocation(line: 205, column: 22, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1083, file: !79, line: 205, column: 14)
!1095 = !DILocation(line: 205, column: 14, scope: !1094)
!1096 = !DILocation(line: 205, column: 31, scope: !1094)
!1097 = !DILocation(line: 205, column: 36, scope: !1094)
!1098 = !DILocation(line: 205, column: 43, scope: !1094)
!1099 = !DILocation(line: 205, column: 54, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1094, file: !79, discriminator: 1)
!1101 = !DILocation(line: 205, column: 46, scope: !1100)
!1102 = !DILocation(line: 205, column: 63, scope: !1100)
!1103 = !DILocation(line: 205, column: 68, scope: !1100)
!1104 = !DILocation(line: 205, column: 14, scope: !1100)
!1105 = !DILocation(line: 206, column: 17, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1094, file: !79, line: 205, column: 77)
!1107 = !DILocation(line: 207, column: 10, scope: !1106)
!1108 = !DILocation(line: 208, column: 7, scope: !1083)
!1109 = !DILocation(line: 154, column: 4, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !923, file: !79, discriminator: 4)
!1111 = distinct !{!1111, !965}
!1112 = !DILocation(line: 211, column: 11, scope: !923)
!1113 = !DILocation(line: 211, column: 4, scope: !923)
!1114 = distinct !DISubprogram(name: "VmBackup_Release", scope: !4, file: !4, line: 258, type: !779, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!1115 = !DILocalVariable(name: "op", arg: 1, scope: !1114, file: !4, line: 258, type: !62)
!1116 = !DILocation(line: 258, column: 30, scope: !1114)
!1117 = !DILocation(line: 260, column: 8, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !4, line: 260, column: 8)
!1119 = !DILocation(line: 260, column: 11, scope: !1118)
!1120 = !DILocation(line: 260, column: 8, scope: !1114)
!1121 = !DILocation(line: 262, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !4, line: 260, column: 19)
!1123 = !DILocation(line: 262, column: 11, scope: !1122)
!1124 = !DILocation(line: 262, column: 21, scope: !1122)
!1125 = !DILocation(line: 263, column: 4, scope: !1122)
!1126 = !DILocation(line: 264, column: 1, scope: !1114)
