; ModuleID = './line236-fe-modules.o.i'
source_filename = "./line236-fe-modules.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._MODULE_REC = type { i8*, %struct._GSList* }
%struct.MODULE_FILE_REC = type { %struct._MODULE_REC*, i8*, i8*, void ()*, %struct._GModule*, i8 }
%struct._GModule = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._CHATNET_REC = type opaque
%struct._SERVER_SETUP_REC = type opaque
%struct._CHANNEL_SETUP_REC = type opaque
%struct._SERVER_CONNECT_REC = type opaque
%struct._SERVER_REC = type opaque
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque

@.str = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"module error\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"module loaded\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"module unloaded\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@__func__.cmd_load = private unnamed_addr constant [9 x i8] c"cmd_load\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@modules = external global %struct._GSList*, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c" (static)\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c" (dynamic)\00", align 1
@chat_protocols = external global %struct._GSList*, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"fe\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"fe_common\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"fe_\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"fe_common_\00", align 1
@__func__.cmd_unload = private unnamed_addr constant [11 x i8] c"cmd_unload\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"error command\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_modules_init() #0 !dbg !354 {
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*, i8*)* @sig_module_error to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !357
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._MODULE_REC*, %struct.MODULE_FILE_REC*)* @sig_module_loaded to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !358
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._MODULE_REC*, %struct.MODULE_FILE_REC*)* @sig_module_unloaded to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !359
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_load to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !360
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_unload to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !361
  ret void, !dbg !362
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_module_error(i8*, i8*, i8*, i8*) #0 !dbg !363 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !366, metadata !367), !dbg !368
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !369, metadata !367), !dbg !370
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !371, metadata !367), !dbg !372
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !373, metadata !367), !dbg !374
  %9 = load i8*, i8** %5, align 8, !dbg !375
  %10 = ptrtoint i8* %9 to i64, !dbg !376
  %11 = trunc i64 %10 to i32, !dbg !377
  switch i32 %11, label %26 [
    i32 0, label %12
    i32 1, label %15
    i32 2, label %19
    i32 3, label %23
  ], !dbg !378

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %7, align 8, !dbg !379
  %14 = load i8*, i8** %8, align 8, !dbg !381
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 144, i8* %13, i8* %14), !dbg !382
  br label %26, !dbg !383

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %7, align 8, !dbg !384
  %17 = load i8*, i8** %8, align 8, !dbg !385
  %18 = load i8*, i8** %6, align 8, !dbg !386
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 146, i8* %16, i8* %17, i8* %18), !dbg !387
  br label %26, !dbg !388

; <label>:19:                                     ; preds = %4
  %20 = load i8*, i8** %7, align 8, !dbg !389
  %21 = load i8*, i8** %8, align 8, !dbg !390
  %22 = load i8*, i8** %6, align 8, !dbg !391
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 147, i8* %20, i8* %21, i8* %22), !dbg !392
  br label %26, !dbg !393

; <label>:23:                                     ; preds = %4
  %24 = load i8*, i8** %7, align 8, !dbg !394
  %25 = load i8*, i8** %8, align 8, !dbg !395
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 148, i8* %24, i8* %25), !dbg !396
  br label %26, !dbg !397

; <label>:26:                                     ; preds = %4, %23, %19, %15, %12
  ret void, !dbg !398
}

; Function Attrs: nounwind uwtable
define internal void @sig_module_loaded(%struct._MODULE_REC*, %struct.MODULE_FILE_REC*) #0 !dbg !399 {
  %3 = alloca %struct._MODULE_REC*, align 8
  %4 = alloca %struct.MODULE_FILE_REC*, align 8
  store %struct._MODULE_REC* %0, %struct._MODULE_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._MODULE_REC** %3, metadata !402, metadata !367), !dbg !403
  store %struct.MODULE_FILE_REC* %1, %struct.MODULE_FILE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MODULE_FILE_REC** %4, metadata !404, metadata !367), !dbg !405
  %5 = load %struct._MODULE_REC*, %struct._MODULE_REC** %3, align 8, !dbg !406
  %6 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %5, i32 0, i32 0, !dbg !407
  %7 = load i8*, i8** %6, align 8, !dbg !407
  %8 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %4, align 8, !dbg !408
  %9 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %8, i32 0, i32 1, !dbg !409
  %10 = load i8*, i8** %9, align 8, !dbg !409
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 149, i8* %7, i8* %10), !dbg !410
  ret void, !dbg !411
}

; Function Attrs: nounwind uwtable
define internal void @sig_module_unloaded(%struct._MODULE_REC*, %struct.MODULE_FILE_REC*) #0 !dbg !412 {
  %3 = alloca %struct._MODULE_REC*, align 8
  %4 = alloca %struct.MODULE_FILE_REC*, align 8
  store %struct._MODULE_REC* %0, %struct._MODULE_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._MODULE_REC** %3, metadata !413, metadata !367), !dbg !414
  store %struct.MODULE_FILE_REC* %1, %struct.MODULE_FILE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MODULE_FILE_REC** %4, metadata !415, metadata !367), !dbg !416
  %5 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %4, align 8, !dbg !417
  %6 = icmp ne %struct.MODULE_FILE_REC* %5, null, !dbg !419
  br i1 %6, label %7, label %19, !dbg !420

; <label>:7:                                      ; preds = %2
  %8 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %4, align 8, !dbg !421
  %9 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %8, i32 0, i32 4, !dbg !423
  %10 = load %struct._GModule*, %struct._GModule** %9, align 8, !dbg !423
  %11 = icmp ne %struct._GModule* %10, null, !dbg !424
  br i1 %11, label %12, label %19, !dbg !425

; <label>:12:                                     ; preds = %7
  %13 = load %struct._MODULE_REC*, %struct._MODULE_REC** %3, align 8, !dbg !426
  %14 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %13, i32 0, i32 0, !dbg !428
  %15 = load i8*, i8** %14, align 8, !dbg !428
  %16 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %4, align 8, !dbg !429
  %17 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %16, i32 0, i32 1, !dbg !430
  %18 = load i8*, i8** %17, align 8, !dbg !430
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 150, i8* %15, i8* %18), !dbg !431
  br label %19, !dbg !432

; <label>:19:                                     ; preds = %12, %7, %2
  ret void, !dbg !433
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_load(i8*) #0 !dbg !434 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !437, metadata !367), !dbg !438
  call void @llvm.dbg.declare(metadata i8** %3, metadata !439, metadata !367), !dbg !440
  call void @llvm.dbg.declare(metadata i8** %4, metadata !441, metadata !367), !dbg !442
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !443, metadata !367), !dbg !444
  call void @llvm.dbg.declare(metadata i8** %6, metadata !445, metadata !367), !dbg !446
  br label %7, !dbg !447, !llvm.loop !448

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %2, align 8, !dbg !449
  %9 = icmp ne i8* %8, null, !dbg !453
  br i1 %9, label %10, label %11, !dbg !449

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !454

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.cmd_load, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !457
  br label %43, !dbg !460

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !461

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %2, align 8, !dbg !463
  %15 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %14, i8** %6, i32 2, i8** %3, i8** %4), !dbg !465
  %16 = icmp ne i32 %15, 0, !dbg !465
  br i1 %16, label %18, label %17, !dbg !466

; <label>:17:                                     ; preds = %13
  br label %43, !dbg !467

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %3, align 8, !dbg !468
  %20 = load i8, i8* %19, align 1, !dbg !470
  %21 = sext i8 %20 to i32, !dbg !470
  %22 = icmp eq i32 %21, 0, !dbg !471
  br i1 %22, label %23, label %24, !dbg !472

; <label>:23:                                     ; preds = %18
  call void @cmd_load_list(), !dbg !473
  br label %41, !dbg !473

; <label>:24:                                     ; preds = %18
  %25 = call i8** @module_prefixes_get(), !dbg !474
  store i8** %25, i8*** %5, align 8, !dbg !476
  %26 = load i8*, i8** %4, align 8, !dbg !477
  %27 = load i8, i8* %26, align 1, !dbg !479
  %28 = sext i8 %27 to i32, !dbg !479
  %29 = icmp eq i32 %28, 0, !dbg !480
  br i1 %29, label %30, label %34, !dbg !481

; <label>:30:                                     ; preds = %24
  %31 = load i8*, i8** %3, align 8, !dbg !482
  %32 = load i8**, i8*** %5, align 8, !dbg !483
  %33 = call i32 @module_load(i8* %31, i8** %32), !dbg !484
  br label %39, !dbg !484

; <label>:34:                                     ; preds = %24
  %35 = load i8*, i8** %3, align 8, !dbg !485
  %36 = load i8*, i8** %4, align 8, !dbg !487
  %37 = load i8**, i8*** %5, align 8, !dbg !488
  %38 = call i32 @module_load_sub(i8* %35, i8* %36, i8** %37), !dbg !489
  br label %39

; <label>:39:                                     ; preds = %34, %30
  %40 = load i8**, i8*** %5, align 8, !dbg !490
  call void @module_prefixes_free(i8** %40), !dbg !491
  br label %41

; <label>:41:                                     ; preds = %39, %23
  %42 = load i8*, i8** %6, align 8, !dbg !492
  call void @cmd_params_free(i8* %42), !dbg !493
  br label %43, !dbg !494

; <label>:43:                                     ; preds = %41, %17, %11
  ret void, !dbg !495
}

; Function Attrs: nounwind uwtable
define internal void @cmd_unload(i8*) #0 !dbg !497 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._MODULE_REC*, align 8
  %4 = alloca %struct.MODULE_FILE_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !498, metadata !367), !dbg !499
  call void @llvm.dbg.declare(metadata %struct._MODULE_REC** %3, metadata !500, metadata !367), !dbg !501
  call void @llvm.dbg.declare(metadata %struct.MODULE_FILE_REC** %4, metadata !502, metadata !367), !dbg !503
  call void @llvm.dbg.declare(metadata i8** %5, metadata !504, metadata !367), !dbg !505
  call void @llvm.dbg.declare(metadata i8** %6, metadata !506, metadata !367), !dbg !507
  call void @llvm.dbg.declare(metadata i8** %7, metadata !508, metadata !367), !dbg !509
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !510, metadata !367), !dbg !511
  call void @llvm.dbg.declare(metadata i32* %9, metadata !512, metadata !367), !dbg !513
  br label %10, !dbg !514, !llvm.loop !515

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !516
  %12 = icmp ne i8* %11, null, !dbg !520
  br i1 %12, label %13, label %14, !dbg !516

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !521

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.cmd_unload, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !524
  br label %97, !dbg !527

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !528

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %2, align 8, !dbg !530
  %18 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %17, i8** %7, i32 2, i8** %5, i8** %6), !dbg !532
  %19 = icmp ne i32 %18, 0, !dbg !532
  br i1 %19, label %21, label %20, !dbg !533

; <label>:20:                                     ; preds = %16
  br label %97, !dbg !534

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %5, align 8, !dbg !535
  %23 = load i8, i8* %22, align 1, !dbg !537
  %24 = sext i8 %23 to i32, !dbg !537
  %25 = icmp eq i32 %24, 0, !dbg !538
  br i1 %25, label %26, label %33, !dbg !539

; <label>:26:                                     ; preds = %21
  br label %27, !dbg !540, !llvm.loop !542

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %7, align 8, !dbg !544
  call void @cmd_params_free(i8* %28), !dbg !547
  br label %29, !dbg !548, !llvm.loop !549

; <label>:29:                                     ; preds = %27
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !551
  call void @signal_stop(), !dbg !554
  br label %97, !dbg !556
                                                  ; No predecessors!
  br label %32, !dbg !557

; <label>:32:                                     ; preds = %31
  br label %33, !dbg !559

; <label>:33:                                     ; preds = %32, %21
  %34 = load i8*, i8** %5, align 8, !dbg !561
  %35 = call %struct._MODULE_REC* @module_find(i8* %34), !dbg !562
  store %struct._MODULE_REC* %35, %struct._MODULE_REC** %3, align 8, !dbg !563
  %36 = load %struct._MODULE_REC*, %struct._MODULE_REC** %3, align 8, !dbg !564
  %37 = icmp ne %struct._MODULE_REC* %36, null, !dbg !566
  br i1 %37, label %38, label %89, !dbg !567

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %6, align 8, !dbg !568
  %40 = load i8, i8* %39, align 1, !dbg !571
  %41 = sext i8 %40 to i32, !dbg !571
  %42 = icmp eq i32 %41, 0, !dbg !572
  br i1 %42, label %43, label %72, !dbg !573

; <label>:43:                                     ; preds = %38
  store i32 1, i32* %9, align 4, !dbg !574
  %44 = load %struct._MODULE_REC*, %struct._MODULE_REC** %3, align 8, !dbg !576
  %45 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %44, i32 0, i32 1, !dbg !578
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !578
  store %struct._GSList* %46, %struct._GSList** %8, align 8, !dbg !579
  br label %47, !dbg !580

; <label>:47:                                     ; preds = %62, %43
  %48 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !581
  %49 = icmp ne %struct._GSList* %48, null, !dbg !584
  br i1 %49, label %50, label %66, !dbg !585

; <label>:50:                                     ; preds = %47
  %51 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !586
  %52 = getelementptr inbounds %struct._GSList, %struct._GSList* %51, i32 0, i32 0, !dbg !587
  %53 = load i8*, i8** %52, align 8, !dbg !587
  %54 = bitcast i8* %53 to %struct.MODULE_FILE_REC*, !dbg !588
  %55 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %54, i32 0, i32 4, !dbg !589
  %56 = load %struct._GModule*, %struct._GModule** %55, align 8, !dbg !589
  %57 = icmp eq %struct._GModule* %56, null, !dbg !590
  %58 = xor i1 %57, true, !dbg !591
  %59 = zext i1 %58 to i32, !dbg !591
  %60 = load i32, i32* %9, align 4, !dbg !592
  %61 = and i32 %60, %59, !dbg !592
  store i32 %61, i32* %9, align 4, !dbg !592
  br label %62, !dbg !593

; <label>:62:                                     ; preds = %50
  %63 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !594
  %64 = getelementptr inbounds %struct._GSList, %struct._GSList* %63, i32 0, i32 1, !dbg !596
  %65 = load %struct._GSList*, %struct._GSList** %64, align 8, !dbg !596
  store %struct._GSList* %65, %struct._GSList** %8, align 8, !dbg !597
  br label %47, !dbg !598, !llvm.loop !599

; <label>:66:                                     ; preds = %47
  %67 = load i32, i32* %9, align 4, !dbg !601
  %68 = icmp ne i32 %67, 0, !dbg !601
  br i1 %68, label %69, label %71, !dbg !603

; <label>:69:                                     ; preds = %66
  %70 = load %struct._MODULE_REC*, %struct._MODULE_REC** %3, align 8, !dbg !604
  call void @module_unload(%struct._MODULE_REC* %70), !dbg !605
  br label %71, !dbg !605

; <label>:71:                                     ; preds = %69, %66
  br label %88, !dbg !606

; <label>:72:                                     ; preds = %38
  %73 = load %struct._MODULE_REC*, %struct._MODULE_REC** %3, align 8, !dbg !607
  %74 = load i8*, i8** %6, align 8, !dbg !609
  %75 = call %struct.MODULE_FILE_REC* @module_file_find(%struct._MODULE_REC* %73, i8* %74), !dbg !610
  store %struct.MODULE_FILE_REC* %75, %struct.MODULE_FILE_REC** %4, align 8, !dbg !611
  %76 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %4, align 8, !dbg !612
  %77 = icmp ne %struct.MODULE_FILE_REC* %76, null, !dbg !614
  br i1 %77, label %78, label %86, !dbg !615

; <label>:78:                                     ; preds = %72
  %79 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %4, align 8, !dbg !616
  %80 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %79, i32 0, i32 4, !dbg !619
  %81 = load %struct._GModule*, %struct._GModule** %80, align 8, !dbg !619
  %82 = icmp eq %struct._GModule* %81, null, !dbg !620
  br i1 %82, label %85, label %83, !dbg !621

; <label>:83:                                     ; preds = %78
  %84 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %4, align 8, !dbg !622
  call void @module_file_unload(%struct.MODULE_FILE_REC* %84), !dbg !623
  br label %85, !dbg !623

; <label>:85:                                     ; preds = %83, %78
  br label %87, !dbg !624

; <label>:86:                                     ; preds = %72
  store %struct._MODULE_REC* null, %struct._MODULE_REC** %3, align 8, !dbg !625
  br label %87

; <label>:87:                                     ; preds = %86, %85
  br label %88

; <label>:88:                                     ; preds = %87, %71
  br label %89, !dbg !626

; <label>:89:                                     ; preds = %88, %33
  %90 = load %struct._MODULE_REC*, %struct._MODULE_REC** %3, align 8, !dbg !627
  %91 = icmp eq %struct._MODULE_REC* %90, null, !dbg !629
  br i1 %91, label %92, label %95, !dbg !630

; <label>:92:                                     ; preds = %89
  %93 = load i8*, i8** %5, align 8, !dbg !631
  %94 = load i8*, i8** %6, align 8, !dbg !633
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 145, i8* %93, i8* %94), !dbg !634
  br label %95, !dbg !635

; <label>:95:                                     ; preds = %92, %89
  %96 = load i8*, i8** %7, align 8, !dbg !636
  call void @cmd_params_free(i8* %96), !dbg !637
  br label %97, !dbg !638

; <label>:97:                                     ; preds = %95, %29, %20, %14
  ret void, !dbg !639
}

; Function Attrs: nounwind uwtable
define void @fe_modules_deinit() #0 !dbg !641 {
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*, i8*)* @sig_module_error to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !642
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._MODULE_REC*, %struct.MODULE_FILE_REC*)* @sig_module_loaded to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !643
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._MODULE_REC*, %struct.MODULE_FILE_REC*)* @sig_module_unloaded to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !644
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_load to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !645
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_unload to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !646
  ret void, !dbg !647
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_load_list() #0 !dbg !648 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GString*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._MODULE_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !649, metadata !367), !dbg !650
  call void @llvm.dbg.declare(metadata %struct._GString** %2, metadata !651, metadata !367), !dbg !663
  call void @llvm.dbg.declare(metadata i8** %3, metadata !664, metadata !367), !dbg !665
  call void @llvm.dbg.declare(metadata i32* %4, metadata !666, metadata !367), !dbg !667
  %6 = call %struct._GString* @g_string_new(i8* null), !dbg !668
  store %struct._GString* %6, %struct._GString** %2, align 8, !dbg !669
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 141), !dbg !670
  %7 = load %struct._GSList*, %struct._GSList** @modules, align 8, !dbg !671
  store %struct._GSList* %7, %struct._GSList** %1, align 8, !dbg !673
  br label %8, !dbg !674

; <label>:8:                                      ; preds = %35, %0
  %9 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !675
  %10 = icmp ne %struct._GSList* %9, null, !dbg !678
  br i1 %10, label %11, label %39, !dbg !679

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct._MODULE_REC** %5, metadata !680, metadata !367), !dbg !682
  %12 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !683
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !684
  %14 = load i8*, i8** %13, align 8, !dbg !684
  %15 = bitcast i8* %14 to %struct._MODULE_REC*, !dbg !683
  store %struct._MODULE_REC* %15, %struct._MODULE_REC** %5, align 8, !dbg !682
  %16 = load %struct._MODULE_REC*, %struct._MODULE_REC** %5, align 8, !dbg !685
  %17 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !686
  %18 = call i32 @module_list_sub(%struct._MODULE_REC* %16, i32 0, %struct._GString* %17), !dbg !687
  store i32 %18, i32* %4, align 4, !dbg !688
  %19 = load i32, i32* %4, align 4, !dbg !689
  %20 = icmp eq i32 %19, -1, !dbg !690
  br i1 %20, label %21, label %22, !dbg !689

; <label>:21:                                     ; preds = %11
  br label %26, !dbg !691

; <label>:22:                                     ; preds = %11
  %23 = load i32, i32* %4, align 4, !dbg !693
  %24 = icmp ne i32 %23, 0, !dbg !693
  %25 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), !dbg !693
  br label %26, !dbg !694

; <label>:26:                                     ; preds = %22, %21
  %27 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %21 ], [ %25, %22 ], !dbg !696
  store i8* %27, i8** %3, align 8, !dbg !698
  %28 = load %struct._MODULE_REC*, %struct._MODULE_REC** %5, align 8, !dbg !699
  %29 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %28, i32 0, i32 0, !dbg !700
  %30 = load i8*, i8** %29, align 8, !dbg !700
  %31 = load i8*, i8** %3, align 8, !dbg !701
  %32 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !702
  %33 = getelementptr inbounds %struct._GString, %struct._GString* %32, i32 0, i32 0, !dbg !703
  %34 = load i8*, i8** %33, align 8, !dbg !703
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 142, i8* %30, i8* %31, i8* %34), !dbg !704
  br label %35, !dbg !705

; <label>:35:                                     ; preds = %26
  %36 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !706
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 1, !dbg !708
  %38 = load %struct._GSList*, %struct._GSList** %37, align 8, !dbg !708
  store %struct._GSList* %38, %struct._GSList** %1, align 8, !dbg !709
  br label %8, !dbg !710, !llvm.loop !711

; <label>:39:                                     ; preds = %8
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 143), !dbg !713
  %40 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !714
  %41 = call i8* @g_string_free(%struct._GString* %40, i32 1), !dbg !715
  ret void, !dbg !716
}

; Function Attrs: nounwind uwtable
define internal i8** @module_prefixes_get() #0 !dbg !717 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !720, metadata !367), !dbg !721
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !722, metadata !367), !dbg !723
  call void @llvm.dbg.declare(metadata i8** %3, metadata !724, metadata !367), !dbg !725
  call void @llvm.dbg.declare(metadata i32* %4, metadata !726, metadata !367), !dbg !727
  %6 = load %struct._GSList*, %struct._GSList** @chat_protocols, align 8, !dbg !728
  %7 = call i32 @g_slist_length(%struct._GSList* %6), !dbg !729
  %8 = mul i32 3, %7, !dbg !730
  %9 = add i32 3, %8, !dbg !731
  %10 = zext i32 %9 to i64, !dbg !732
  %11 = call noalias i8* @g_malloc_n(i64 %10, i64 8), !dbg !733
  %12 = bitcast i8* %11 to i8**, !dbg !735
  store i8** %12, i8*** %2, align 8, !dbg !736
  %13 = load i8**, i8*** %2, align 8, !dbg !737
  %14 = getelementptr inbounds i8*, i8** %13, i64 0, !dbg !737
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8** %14, align 8, !dbg !738
  %15 = load i8**, i8*** %2, align 8, !dbg !739
  %16 = getelementptr inbounds i8*, i8** %15, i64 1, !dbg !739
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8** %16, align 8, !dbg !740
  store i32 2, i32* %4, align 4, !dbg !741
  %17 = load %struct._GSList*, %struct._GSList** @chat_protocols, align 8, !dbg !742
  store %struct._GSList* %17, %struct._GSList** %1, align 8, !dbg !744
  br label %18, !dbg !745

; <label>:18:                                     ; preds = %50, %0
  %19 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !746
  %20 = icmp ne %struct._GSList* %19, null, !dbg !749
  br i1 %20, label %21, label %54, !dbg !750

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %5, metadata !751, metadata !367), !dbg !822
  %22 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !823
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !824
  %24 = load i8*, i8** %23, align 8, !dbg !824
  %25 = bitcast i8* %24 to %struct._CHAT_PROTOCOL_REC*, !dbg !823
  store %struct._CHAT_PROTOCOL_REC* %25, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !822
  %26 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !825
  %27 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %26, i32 0, i32 2, !dbg !826
  %28 = load i8*, i8** %27, align 8, !dbg !826
  %29 = call noalias i8* @g_ascii_strdown(i8* %28, i64 -1), !dbg !827
  store i8* %29, i8** %3, align 8, !dbg !828
  %30 = load i8*, i8** %3, align 8, !dbg !829
  %31 = load i32, i32* %4, align 4, !dbg !830
  %32 = add nsw i32 %31, 1, !dbg !830
  store i32 %32, i32* %4, align 4, !dbg !830
  %33 = sext i32 %31 to i64, !dbg !831
  %34 = load i8**, i8*** %2, align 8, !dbg !831
  %35 = getelementptr inbounds i8*, i8** %34, i64 %33, !dbg !831
  store i8* %30, i8** %35, align 8, !dbg !832
  %36 = load i8*, i8** %3, align 8, !dbg !833
  %37 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %36, i8* null), !dbg !834
  %38 = load i32, i32* %4, align 4, !dbg !835
  %39 = add nsw i32 %38, 1, !dbg !835
  store i32 %39, i32* %4, align 4, !dbg !835
  %40 = sext i32 %38 to i64, !dbg !836
  %41 = load i8**, i8*** %2, align 8, !dbg !836
  %42 = getelementptr inbounds i8*, i8** %41, i64 %40, !dbg !836
  store i8* %37, i8** %42, align 8, !dbg !837
  %43 = load i8*, i8** %3, align 8, !dbg !838
  %44 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* %43, i8* null), !dbg !839
  %45 = load i32, i32* %4, align 4, !dbg !840
  %46 = add nsw i32 %45, 1, !dbg !840
  store i32 %46, i32* %4, align 4, !dbg !840
  %47 = sext i32 %45 to i64, !dbg !841
  %48 = load i8**, i8*** %2, align 8, !dbg !841
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47, !dbg !841
  store i8* %44, i8** %49, align 8, !dbg !842
  br label %50, !dbg !843

; <label>:50:                                     ; preds = %21
  %51 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !844
  %52 = getelementptr inbounds %struct._GSList, %struct._GSList* %51, i32 0, i32 1, !dbg !846
  %53 = load %struct._GSList*, %struct._GSList** %52, align 8, !dbg !846
  store %struct._GSList* %53, %struct._GSList** %1, align 8, !dbg !847
  br label %18, !dbg !848, !llvm.loop !849

; <label>:54:                                     ; preds = %18
  %55 = load i32, i32* %4, align 4, !dbg !851
  %56 = sext i32 %55 to i64, !dbg !852
  %57 = load i8**, i8*** %2, align 8, !dbg !852
  %58 = getelementptr inbounds i8*, i8** %57, i64 %56, !dbg !852
  store i8* null, i8** %58, align 8, !dbg !853
  %59 = load i8**, i8*** %2, align 8, !dbg !854
  ret i8** %59, !dbg !855
}

declare i32 @module_load(i8*, i8**) #1

declare i32 @module_load_sub(i8*, i8*, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @module_prefixes_free(i8**) #0 !dbg !856 {
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !859, metadata !367), !dbg !860
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !861, metadata !367), !dbg !862
  %4 = load i8**, i8*** %2, align 8, !dbg !863
  %5 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !864
  store i8** %5, i8*** %3, align 8, !dbg !862
  br label %6, !dbg !865

; <label>:6:                                      ; preds = %10, %1
  %7 = load i8**, i8*** %3, align 8, !dbg !866
  %8 = load i8*, i8** %7, align 8, !dbg !868
  %9 = icmp ne i8* %8, null, !dbg !869
  br i1 %9, label %10, label %15, !dbg !870

; <label>:10:                                     ; preds = %6
  %11 = load i8**, i8*** %3, align 8, !dbg !871
  %12 = load i8*, i8** %11, align 8, !dbg !873
  call void @g_free(i8* %12), !dbg !874
  %13 = load i8**, i8*** %3, align 8, !dbg !875
  %14 = getelementptr inbounds i8*, i8** %13, i32 1, !dbg !875
  store i8** %14, i8*** %3, align 8, !dbg !875
  br label %6, !dbg !876, !llvm.loop !878

; <label>:15:                                     ; preds = %6
  %16 = load i8**, i8*** %2, align 8, !dbg !879
  %17 = bitcast i8** %16 to i8*, !dbg !879
  call void @g_free(i8* %17), !dbg !880
  ret void, !dbg !881
}

declare void @cmd_params_free(i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @module_list_sub(%struct._MODULE_REC*, i32, %struct._GString*) #0 !dbg !882 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._MODULE_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._GString*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.MODULE_FILE_REC*, align 8
  store %struct._MODULE_REC* %0, %struct._MODULE_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._MODULE_REC** %5, metadata !885, metadata !367), !dbg !886
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !887, metadata !367), !dbg !888
  store %struct._GString* %2, %struct._GString** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !889, metadata !367), !dbg !890
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !891, metadata !367), !dbg !892
  call void @llvm.dbg.declare(metadata i32* %9, metadata !893, metadata !367), !dbg !894
  call void @llvm.dbg.declare(metadata i32* %10, metadata !895, metadata !367), !dbg !896
  %12 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !897
  %13 = call %struct._GString* @g_string_truncate(%struct._GString* %12, i64 0), !dbg !898
  store i32 -1, i32* %9, align 4, !dbg !899
  %14 = load %struct._MODULE_REC*, %struct._MODULE_REC** %5, align 8, !dbg !900
  %15 = getelementptr inbounds %struct._MODULE_REC, %struct._MODULE_REC* %14, i32 0, i32 1, !dbg !902
  %16 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !902
  store %struct._GSList* %16, %struct._GSList** %8, align 8, !dbg !903
  br label %17, !dbg !904

; <label>:17:                                     ; preds = %70, %3
  %18 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !905
  %19 = icmp ne %struct._GSList* %18, null, !dbg !908
  br i1 %19, label %20, label %74, !dbg !909

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata %struct.MODULE_FILE_REC** %11, metadata !910, metadata !367), !dbg !912
  %21 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !913
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !914
  %23 = load i8*, i8** %22, align 8, !dbg !914
  %24 = bitcast i8* %23 to %struct.MODULE_FILE_REC*, !dbg !913
  store %struct.MODULE_FILE_REC* %24, %struct.MODULE_FILE_REC** %11, align 8, !dbg !912
  %25 = load i32, i32* %6, align 4, !dbg !915
  %26 = icmp ne i32 %25, 0, !dbg !915
  br i1 %26, label %45, label %27, !dbg !917

; <label>:27:                                     ; preds = %20
  %28 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %11, align 8, !dbg !918
  %29 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %28, i32 0, i32 4, !dbg !920
  %30 = load %struct._GModule*, %struct._GModule** %29, align 8, !dbg !920
  %31 = icmp ne %struct._GModule* %30, null, !dbg !921
  %32 = zext i1 %31 to i32, !dbg !921
  store i32 %32, i32* %10, align 4, !dbg !922
  %33 = load i32, i32* %9, align 4, !dbg !923
  %34 = icmp ne i32 %33, -1, !dbg !925
  br i1 %34, label %35, label %43, !dbg !926

; <label>:35:                                     ; preds = %27
  %36 = load i32, i32* %9, align 4, !dbg !927
  %37 = load i32, i32* %10, align 4, !dbg !929
  %38 = icmp ne i32 %36, %37, !dbg !930
  br i1 %38, label %39, label %43, !dbg !931

; <label>:39:                                     ; preds = %35
  %40 = load %struct._MODULE_REC*, %struct._MODULE_REC** %5, align 8, !dbg !932
  %41 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !934
  %42 = call i32 @module_list_sub(%struct._MODULE_REC* %40, i32 1, %struct._GString* %41), !dbg !935
  store i32 %42, i32* %4, align 4, !dbg !936
  br label %76, !dbg !936

; <label>:43:                                     ; preds = %35, %27
  %44 = load i32, i32* %10, align 4, !dbg !937
  store i32 %44, i32* %9, align 4, !dbg !938
  br label %45, !dbg !939

; <label>:45:                                     ; preds = %43, %20
  %46 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !940
  %47 = getelementptr inbounds %struct._GString, %struct._GString* %46, i32 0, i32 1, !dbg !942
  %48 = load i64, i64* %47, align 8, !dbg !942
  %49 = icmp ugt i64 %48, 0, !dbg !943
  br i1 %49, label %50, label %53, !dbg !944

; <label>:50:                                     ; preds = %45
  %51 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !945
  %52 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %51, i8 signext 32), !dbg !946
  br label %53, !dbg !946

; <label>:53:                                     ; preds = %50, %45
  %54 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !947
  %55 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %11, align 8, !dbg !948
  %56 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %55, i32 0, i32 1, !dbg !949
  %57 = load i8*, i8** %56, align 8, !dbg !949
  %58 = call %struct._GString* @g_string_append(%struct._GString* %54, i8* %57), !dbg !950
  %59 = load i32, i32* %6, align 4, !dbg !951
  %60 = icmp ne i32 %59, 0, !dbg !951
  br i1 %60, label %61, label %69, !dbg !953

; <label>:61:                                     ; preds = %53
  %62 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !954
  %63 = load %struct.MODULE_FILE_REC*, %struct.MODULE_FILE_REC** %11, align 8, !dbg !956
  %64 = getelementptr inbounds %struct.MODULE_FILE_REC, %struct.MODULE_FILE_REC* %63, i32 0, i32 4, !dbg !957
  %65 = load %struct._GModule*, %struct._GModule** %64, align 8, !dbg !957
  %66 = icmp eq %struct._GModule* %65, null, !dbg !958
  %67 = select i1 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), !dbg !956
  %68 = call %struct._GString* @g_string_append(%struct._GString* %62, i8* %67), !dbg !959
  br label %69, !dbg !960

; <label>:69:                                     ; preds = %61, %53
  br label %70, !dbg !961

; <label>:70:                                     ; preds = %69
  %71 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !962
  %72 = getelementptr inbounds %struct._GSList, %struct._GSList* %71, i32 0, i32 1, !dbg !964
  %73 = load %struct._GSList*, %struct._GSList** %72, align 8, !dbg !964
  store %struct._GSList* %73, %struct._GSList** %8, align 8, !dbg !965
  br label %17, !dbg !966, !llvm.loop !967

; <label>:74:                                     ; preds = %17
  %75 = load i32, i32* %9, align 4, !dbg !969
  store i32 %75, i32* %4, align 4, !dbg !970
  br label %76, !dbg !970

; <label>:76:                                     ; preds = %74, %39
  %77 = load i32, i32* %4, align 4, !dbg !971
  ret i32 %77, !dbg !971
}

declare i8* @g_string_free(%struct._GString*, i32) #1

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #3 !dbg !972 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !975, metadata !367), !dbg !976
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !977, metadata !367), !dbg !978
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !979
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !981
  %7 = load i64, i64* %6, align 8, !dbg !981
  %8 = add i64 %7, 1, !dbg !982
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !983
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !984
  %11 = load i64, i64* %10, align 8, !dbg !984
  %12 = icmp ult i64 %8, %11, !dbg !985
  br i1 %12, label %13, label %30, !dbg !986

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !987
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !989
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !990
  %17 = load i64, i64* %16, align 8, !dbg !991
  %18 = add i64 %17, 1, !dbg !991
  store i64 %18, i64* %16, align 8, !dbg !991
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !992
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !993
  %21 = load i8*, i8** %20, align 8, !dbg !993
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !992
  store i8 %14, i8* %22, align 1, !dbg !994
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !995
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !996
  %25 = load i64, i64* %24, align 8, !dbg !996
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !997
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !998
  %28 = load i8*, i8** %27, align 8, !dbg !998
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !997
  store i8 0, i8* %29, align 1, !dbg !999
  br label %34, !dbg !1000

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1001
  %32 = load i8, i8* %4, align 1, !dbg !1002
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1003
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1004
  ret %struct._GString* %35, !dbg !1005
}

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @g_slist_length(%struct._GSList*) #1

declare noalias i8* @g_ascii_strdown(i8*, i64) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare void @g_free(i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @signal_stop() #1

declare %struct._MODULE_REC* @module_find(i8*) #1

declare void @module_unload(%struct._MODULE_REC*) #1

declare %struct.MODULE_FILE_REC* @module_file_find(%struct._MODULE_REC*, i8*) #1

declare void @module_file_unload(%struct.MODULE_FILE_REC*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!351, !352}
!llvm.ident = !{!353}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !297)
!1 = !DIFile(filename: "line236-fe-modules.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !34, !276}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!6 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!7 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!8 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!9 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!10 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!11 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!12 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!13 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!14 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!15 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!16 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!17 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!18 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!19 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!20 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!21 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!22 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!23 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!24 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!25 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!26 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!27 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!28 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!29 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!30 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!31 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!32 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!33 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 3, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!37 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!38 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!39 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!40 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!41 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!42 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!43 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!44 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!45 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!46 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!47 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!48 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!49 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!50 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!51 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!52 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!53 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!54 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!55 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!56 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!57 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!58 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!59 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!60 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!61 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!62 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!63 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!64 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!65 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!66 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!67 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!68 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!69 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!70 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!71 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!72 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!73 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!74 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!75 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!76 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!77 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!78 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!79 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!80 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!81 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!82 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!83 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!84 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!85 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!86 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!87 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!88 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!89 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!90 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!91 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!92 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!93 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!94 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!95 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!96 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!97 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!98 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!99 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!100 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!101 = !DIEnumerator(name: "TXT_PART", value: 64)
!102 = !DIEnumerator(name: "TXT_KICK", value: 65)
!103 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!104 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!105 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!106 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!107 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!108 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!109 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!110 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!111 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!112 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!113 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!114 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!115 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!116 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!117 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!118 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!119 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!120 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!121 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!122 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!123 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!124 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!125 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!126 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!127 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!128 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!129 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!130 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!131 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!132 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!133 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!134 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!135 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!136 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!137 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!138 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!139 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!140 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!141 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!142 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!143 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!144 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!145 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!146 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!147 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!148 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!149 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!150 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!151 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!152 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!153 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!154 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!155 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!156 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!157 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!158 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!159 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!160 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!161 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!162 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!163 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!164 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!165 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!166 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!167 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!168 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!169 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!170 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!171 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!172 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!173 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!174 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!175 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!176 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!177 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!178 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!179 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!180 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!181 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!182 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!183 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!184 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!185 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!186 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!187 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!188 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!189 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!190 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!191 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!192 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!193 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!194 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!195 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!196 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!197 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!198 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!199 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!200 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!201 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!202 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!203 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!204 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!205 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!206 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!207 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!208 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!209 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!210 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!211 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!212 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!213 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!214 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!215 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!216 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!217 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!218 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!219 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!220 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!221 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!222 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!223 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!224 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!225 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!226 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!227 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!228 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!229 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!230 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!231 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!232 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!233 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!234 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!235 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!236 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!237 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!238 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!239 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!240 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!241 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!242 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!243 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!244 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!245 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!246 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!247 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!248 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!249 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!250 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!251 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!252 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!253 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!254 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!255 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!256 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!257 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!258 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!259 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!260 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!261 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!262 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!263 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!264 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!265 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!266 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!267 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!268 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!269 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!270 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!271 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!272 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!273 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!274 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!275 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 25, size: 32, align: 32, elements: !278)
!277 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296}
!279 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!280 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!281 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!282 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!283 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!284 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!285 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!286 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!287 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!288 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!289 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!290 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!291 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!292 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!293 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!294 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!295 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!296 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!297 = !{!298, !305, !306, !309, !311, !314, !316, !318, !319}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !299, line: 9, baseType: !300)
!299 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !303, !303, !303, !303, !303, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !307, line: 49, baseType: !308)
!307 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!308 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !307, line: 48, baseType: !310)
!310 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !307, line: 46, baseType: !313)
!313 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !307, line: 77, baseType: !305)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_FILE_REC", file: !321, line: 46, baseType: !322)
!321 = !DIFile(filename: "../../../src/core/modules.h", directory: "/home/lichi/Desktop/irssi/task1")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 36, size: 384, align: 64, elements: !323)
!323 = !{!324, !338, !339, !340, !344, !349}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !322, file: !321, line: 37, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_REC", file: !321, line: 34, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MODULE_REC", file: !321, line: 48, size: 128, align: 64, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !321, line: 49, baseType: !317, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !327, file: !321, line: 50, baseType: !331, size: 64, align: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !333, line: 37, baseType: !334)
!333 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !333, line: 39, size: 128, align: 64, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !334, file: !333, line: 41, baseType: !318, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !333, line: 42, baseType: !331, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !322, file: !321, line: 38, baseType: !317, size: 64, align: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "defined_module_name", scope: !322, file: !321, line: 39, baseType: !317, size: 64, align: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "module_deinit", scope: !322, file: !321, line: 40, baseType: !341, size: 64, align: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "gmodule", scope: !322, file: !321, line: 43, baseType: !345, size: 64, align: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "GModule", file: !347, line: 49, baseType: !348)
!347 = !DIFile(filename: "/usr/include/glib-2.0/gmodule.h", directory: "/home/lichi/Desktop/irssi/task1")
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GModule", file: !347, line: 49, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !322, file: !321, line: 45, baseType: !350, size: 1, align: 32, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!350 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!351 = !{i32 2, !"Dwarf Version", i32 4}
!352 = !{i32 2, !"Debug Info Version", i32 3}
!353 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!354 = distinct !DISubprogram(name: "fe_modules_init", scope: !355, file: !355, line: 239, type: !342, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !356)
!355 = !DIFile(filename: "fe-modules.c", directory: "/home/lichi/Desktop/irssi/task1")
!356 = !{}
!357 = !DILocation(line: 241, column: 2, scope: !354)
!358 = !DILocation(line: 242, column: 2, scope: !354)
!359 = !DILocation(line: 243, column: 2, scope: !354)
!360 = !DILocation(line: 245, column: 2, scope: !354)
!361 = !DILocation(line: 246, column: 2, scope: !354)
!362 = !DILocation(line: 247, column: 1, scope: !354)
!363 = distinct !DISubprogram(name: "sig_module_error", scope: !355, file: !355, line: 34, type: !364, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !356)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !305, !314, !314, !314}
!366 = !DILocalVariable(name: "number", arg: 1, scope: !363, file: !355, line: 34, type: !305)
!367 = !DIExpression()
!368 = !DILocation(line: 34, column: 36, scope: !363)
!369 = !DILocalVariable(name: "data", arg: 2, scope: !363, file: !355, line: 34, type: !314)
!370 = !DILocation(line: 34, column: 56, scope: !363)
!371 = !DILocalVariable(name: "rootmodule", arg: 3, scope: !363, file: !355, line: 35, type: !314)
!372 = !DILocation(line: 35, column: 21, scope: !363)
!373 = !DILocalVariable(name: "submodule", arg: 4, scope: !363, file: !355, line: 35, type: !314)
!374 = !DILocation(line: 35, column: 45, scope: !363)
!375 = !DILocation(line: 37, column: 27, scope: !363)
!376 = !DILocation(line: 37, column: 18, scope: !363)
!377 = !DILocation(line: 37, column: 11, scope: !363)
!378 = !DILocation(line: 37, column: 2, scope: !363)
!379 = !DILocation(line: 39, column: 53, scope: !380)
!380 = distinct !DILexicalBlock(scope: !363, file: !355, line: 37, column: 37)
!381 = !DILocation(line: 39, column: 65, scope: !380)
!382 = !DILocation(line: 39, column: 3, scope: !380)
!383 = !DILocation(line: 41, column: 3, scope: !380)
!384 = !DILocation(line: 43, column: 49, scope: !380)
!385 = !DILocation(line: 43, column: 61, scope: !380)
!386 = !DILocation(line: 43, column: 72, scope: !380)
!387 = !DILocation(line: 43, column: 3, scope: !380)
!388 = !DILocation(line: 45, column: 3, scope: !380)
!389 = !DILocation(line: 47, column: 55, scope: !380)
!390 = !DILocation(line: 47, column: 67, scope: !380)
!391 = !DILocation(line: 47, column: 78, scope: !380)
!392 = !DILocation(line: 47, column: 3, scope: !380)
!393 = !DILocation(line: 49, column: 3, scope: !380)
!394 = !DILocation(line: 51, column: 46, scope: !380)
!395 = !DILocation(line: 51, column: 58, scope: !380)
!396 = !DILocation(line: 51, column: 3, scope: !380)
!397 = !DILocation(line: 53, column: 3, scope: !380)
!398 = !DILocation(line: 55, column: 1, scope: !363)
!399 = distinct !DISubprogram(name: "sig_module_loaded", scope: !355, file: !355, line: 57, type: !400, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !356)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !325, !319}
!402 = !DILocalVariable(name: "module", arg: 1, scope: !399, file: !355, line: 57, type: !325)
!403 = !DILocation(line: 57, column: 43, scope: !399)
!404 = !DILocalVariable(name: "file", arg: 2, scope: !399, file: !355, line: 57, type: !319)
!405 = !DILocation(line: 57, column: 68, scope: !399)
!406 = !DILocation(line: 59, column: 45, scope: !399)
!407 = !DILocation(line: 59, column: 53, scope: !399)
!408 = !DILocation(line: 59, column: 59, scope: !399)
!409 = !DILocation(line: 59, column: 65, scope: !399)
!410 = !DILocation(line: 59, column: 2, scope: !399)
!411 = !DILocation(line: 61, column: 1, scope: !399)
!412 = distinct !DISubprogram(name: "sig_module_unloaded", scope: !355, file: !355, line: 63, type: !400, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !356)
!413 = !DILocalVariable(name: "module", arg: 1, scope: !412, file: !355, line: 63, type: !325)
!414 = !DILocation(line: 63, column: 45, scope: !412)
!415 = !DILocalVariable(name: "file", arg: 2, scope: !412, file: !355, line: 63, type: !319)
!416 = !DILocation(line: 63, column: 70, scope: !412)
!417 = !DILocation(line: 65, column: 6, scope: !418)
!418 = distinct !DILexicalBlock(scope: !412, file: !355, line: 65, column: 6)
!419 = !DILocation(line: 65, column: 11, scope: !418)
!420 = !DILocation(line: 65, column: 18, scope: !418)
!421 = !DILocation(line: 65, column: 21, scope: !422)
!422 = !DILexicalBlockFile(scope: !418, file: !355, discriminator: 1)
!423 = !DILocation(line: 65, column: 27, scope: !422)
!424 = !DILocation(line: 65, column: 35, scope: !422)
!425 = !DILocation(line: 65, column: 6, scope: !422)
!426 = !DILocation(line: 66, column: 48, scope: !427)
!427 = distinct !DILexicalBlock(scope: !418, file: !355, line: 65, column: 44)
!428 = !DILocation(line: 66, column: 56, scope: !427)
!429 = !DILocation(line: 66, column: 62, scope: !427)
!430 = !DILocation(line: 66, column: 68, scope: !427)
!431 = !DILocation(line: 66, column: 3, scope: !427)
!432 = !DILocation(line: 68, column: 2, scope: !427)
!433 = !DILocation(line: 69, column: 1, scope: !412)
!434 = distinct !DISubprogram(name: "cmd_load", scope: !355, file: !355, line: 168, type: !435, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !356)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !314}
!437 = !DILocalVariable(name: "data", arg: 1, scope: !434, file: !355, line: 168, type: !314)
!438 = !DILocation(line: 168, column: 34, scope: !434)
!439 = !DILocalVariable(name: "rootmodule", scope: !434, file: !355, line: 170, type: !317)
!440 = !DILocation(line: 170, column: 15, scope: !434)
!441 = !DILocalVariable(name: "submodule", scope: !434, file: !355, line: 170, type: !317)
!442 = !DILocation(line: 170, column: 28, scope: !434)
!443 = !DILocalVariable(name: "module_prefixes", scope: !434, file: !355, line: 171, type: !316)
!444 = !DILocation(line: 171, column: 9, scope: !434)
!445 = !DILocalVariable(name: "free_arg", scope: !434, file: !355, line: 172, type: !305)
!446 = !DILocation(line: 172, column: 8, scope: !434)
!447 = !DILocation(line: 174, column: 2, scope: !434)
!448 = distinct !{!448, !447}
!449 = !DILocation(line: 174, column: 10, scope: !450)
!450 = !DILexicalBlockFile(scope: !451, file: !355, discriminator: 1)
!451 = distinct !DILexicalBlock(scope: !452, file: !355, line: 174, column: 10)
!452 = distinct !DILexicalBlock(scope: !434, file: !355, line: 174, column: 4)
!453 = !DILocation(line: 174, column: 15, scope: !450)
!454 = !DILocation(line: 174, column: 5, scope: !455)
!455 = !DILexicalBlockFile(scope: !456, file: !355, discriminator: 2)
!456 = distinct !DILexicalBlock(scope: !451, file: !355, line: 174, column: 3)
!457 = !DILocation(line: 174, column: 14, scope: !458)
!458 = !DILexicalBlockFile(scope: !459, file: !355, discriminator: 3)
!459 = distinct !DILexicalBlock(scope: !451, file: !355, line: 174, column: 12)
!460 = !DILocation(line: 174, column: 99, scope: !458)
!461 = !DILocation(line: 174, column: 110, scope: !462)
!462 = !DILexicalBlockFile(scope: !452, file: !355, discriminator: 4)
!463 = !DILocation(line: 176, column: 22, scope: !464)
!464 = distinct !DILexicalBlock(scope: !434, file: !355, line: 176, column: 6)
!465 = !DILocation(line: 176, column: 7, scope: !464)
!466 = !DILocation(line: 176, column: 6, scope: !434)
!467 = !DILocation(line: 177, column: 3, scope: !464)
!468 = !DILocation(line: 179, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !434, file: !355, line: 179, column: 6)
!470 = !DILocation(line: 179, column: 6, scope: !469)
!471 = !DILocation(line: 179, column: 18, scope: !469)
!472 = !DILocation(line: 179, column: 6, scope: !434)
!473 = !DILocation(line: 180, column: 3, scope: !469)
!474 = !DILocation(line: 182, column: 21, scope: !475)
!475 = distinct !DILexicalBlock(scope: !469, file: !355, line: 181, column: 7)
!476 = !DILocation(line: 182, column: 19, scope: !475)
!477 = !DILocation(line: 183, column: 8, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !355, line: 183, column: 7)
!479 = !DILocation(line: 183, column: 7, scope: !478)
!480 = !DILocation(line: 183, column: 18, scope: !478)
!481 = !DILocation(line: 183, column: 7, scope: !475)
!482 = !DILocation(line: 184, column: 16, scope: !478)
!483 = !DILocation(line: 184, column: 28, scope: !478)
!484 = !DILocation(line: 184, column: 4, scope: !478)
!485 = !DILocation(line: 186, column: 20, scope: !486)
!486 = distinct !DILexicalBlock(scope: !478, file: !355, line: 185, column: 8)
!487 = !DILocation(line: 186, column: 32, scope: !486)
!488 = !DILocation(line: 187, column: 6, scope: !486)
!489 = !DILocation(line: 186, column: 4, scope: !486)
!490 = !DILocation(line: 189, column: 38, scope: !475)
!491 = !DILocation(line: 189, column: 17, scope: !475)
!492 = !DILocation(line: 192, column: 18, scope: !434)
!493 = !DILocation(line: 192, column: 2, scope: !434)
!494 = !DILocation(line: 193, column: 1, scope: !434)
!495 = !DILocation(line: 193, column: 1, scope: !496)
!496 = !DILexicalBlockFile(scope: !434, file: !355, discriminator: 1)
!497 = distinct !DISubprogram(name: "cmd_unload", scope: !355, file: !355, line: 196, type: !435, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !356)
!498 = !DILocalVariable(name: "data", arg: 1, scope: !497, file: !355, line: 196, type: !314)
!499 = !DILocation(line: 196, column: 36, scope: !497)
!500 = !DILocalVariable(name: "module", scope: !497, file: !355, line: 198, type: !325)
!501 = !DILocation(line: 198, column: 14, scope: !497)
!502 = !DILocalVariable(name: "file", scope: !497, file: !355, line: 199, type: !319)
!503 = !DILocation(line: 199, column: 26, scope: !497)
!504 = !DILocalVariable(name: "rootmodule", scope: !497, file: !355, line: 200, type: !317)
!505 = !DILocation(line: 200, column: 15, scope: !497)
!506 = !DILocalVariable(name: "submodule", scope: !497, file: !355, line: 200, type: !317)
!507 = !DILocation(line: 200, column: 28, scope: !497)
!508 = !DILocalVariable(name: "free_arg", scope: !497, file: !355, line: 201, type: !305)
!509 = !DILocation(line: 201, column: 8, scope: !497)
!510 = !DILocalVariable(name: "tmp", scope: !497, file: !355, line: 202, type: !331)
!511 = !DILocation(line: 202, column: 10, scope: !497)
!512 = !DILocalVariable(name: "all_dynamic", scope: !497, file: !355, line: 203, type: !308)
!513 = !DILocation(line: 203, column: 6, scope: !497)
!514 = !DILocation(line: 205, column: 2, scope: !497)
!515 = distinct !{!515, !514}
!516 = !DILocation(line: 205, column: 10, scope: !517)
!517 = !DILexicalBlockFile(scope: !518, file: !355, discriminator: 1)
!518 = distinct !DILexicalBlock(scope: !519, file: !355, line: 205, column: 10)
!519 = distinct !DILexicalBlock(scope: !497, file: !355, line: 205, column: 4)
!520 = !DILocation(line: 205, column: 15, scope: !517)
!521 = !DILocation(line: 205, column: 5, scope: !522)
!522 = !DILexicalBlockFile(scope: !523, file: !355, discriminator: 2)
!523 = distinct !DILexicalBlock(scope: !518, file: !355, line: 205, column: 3)
!524 = !DILocation(line: 205, column: 14, scope: !525)
!525 = !DILexicalBlockFile(scope: !526, file: !355, discriminator: 3)
!526 = distinct !DILexicalBlock(scope: !518, file: !355, line: 205, column: 12)
!527 = !DILocation(line: 205, column: 99, scope: !525)
!528 = !DILocation(line: 205, column: 110, scope: !529)
!529 = !DILexicalBlockFile(scope: !519, file: !355, discriminator: 4)
!530 = !DILocation(line: 207, column: 22, scope: !531)
!531 = distinct !DILexicalBlock(scope: !497, file: !355, line: 207, column: 6)
!532 = !DILocation(line: 207, column: 7, scope: !531)
!533 = !DILocation(line: 207, column: 6, scope: !497)
!534 = !DILocation(line: 208, column: 3, scope: !531)
!535 = !DILocation(line: 209, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !497, file: !355, line: 209, column: 6)
!537 = !DILocation(line: 209, column: 6, scope: !536)
!538 = !DILocation(line: 209, column: 18, scope: !536)
!539 = !DILocation(line: 209, column: 6, scope: !497)
!540 = !DILocation(line: 209, column: 27, scope: !541)
!541 = !DILexicalBlockFile(scope: !536, file: !355, discriminator: 1)
!542 = distinct !{!542, !543}
!543 = !DILocation(line: 209, column: 27, scope: !536)
!544 = !DILocation(line: 209, column: 48, scope: !545)
!545 = !DILexicalBlockFile(scope: !546, file: !355, discriminator: 2)
!546 = distinct !DILexicalBlock(scope: !536, file: !355, line: 209, column: 30)
!547 = !DILocation(line: 209, column: 32, scope: !545)
!548 = !DILocation(line: 209, column: 59, scope: !545)
!549 = distinct !{!549, !550}
!550 = !DILocation(line: 209, column: 59, scope: !546)
!551 = !DILocation(line: 209, column: 64, scope: !552)
!552 = !DILexicalBlockFile(scope: !553, file: !355, discriminator: 3)
!553 = distinct !DILexicalBlock(scope: !546, file: !355, line: 209, column: 62)
!554 = !DILocation(line: 209, column: 146, scope: !555)
!555 = !DILexicalBlockFile(scope: !552, file: !355, discriminator: 6)
!556 = !DILocation(line: 209, column: 161, scope: !552)
!557 = !DILocation(line: 209, column: 182, scope: !558)
!558 = !DILexicalBlockFile(scope: !546, file: !355, discriminator: 4)
!559 = !DILocation(line: 209, column: 182, scope: !560)
!560 = !DILexicalBlockFile(scope: !546, file: !355, discriminator: 5)
!561 = !DILocation(line: 211, column: 23, scope: !497)
!562 = !DILocation(line: 211, column: 11, scope: !497)
!563 = !DILocation(line: 211, column: 9, scope: !497)
!564 = !DILocation(line: 212, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !497, file: !355, line: 212, column: 6)
!566 = !DILocation(line: 212, column: 13, scope: !565)
!567 = !DILocation(line: 212, column: 6, scope: !497)
!568 = !DILocation(line: 213, column: 8, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !355, line: 213, column: 7)
!570 = distinct !DILexicalBlock(scope: !565, file: !355, line: 212, column: 21)
!571 = !DILocation(line: 213, column: 7, scope: !569)
!572 = !DILocation(line: 213, column: 18, scope: !569)
!573 = !DILocation(line: 213, column: 7, scope: !570)
!574 = !DILocation(line: 214, column: 16, scope: !575)
!575 = distinct !DILexicalBlock(scope: !569, file: !355, line: 213, column: 27)
!576 = !DILocation(line: 215, column: 15, scope: !577)
!577 = distinct !DILexicalBlock(scope: !575, file: !355, line: 215, column: 4)
!578 = !DILocation(line: 215, column: 23, scope: !577)
!579 = !DILocation(line: 215, column: 13, scope: !577)
!580 = !DILocation(line: 215, column: 9, scope: !577)
!581 = !DILocation(line: 215, column: 30, scope: !582)
!582 = !DILexicalBlockFile(scope: !583, file: !355, discriminator: 1)
!583 = distinct !DILexicalBlock(scope: !577, file: !355, line: 215, column: 4)
!584 = !DILocation(line: 215, column: 34, scope: !582)
!585 = !DILocation(line: 215, column: 4, scope: !582)
!586 = !DILocation(line: 216, column: 42, scope: !583)
!587 = !DILocation(line: 216, column: 47, scope: !583)
!588 = !DILocation(line: 216, column: 23, scope: !583)
!589 = !DILocation(line: 216, column: 54, scope: !583)
!590 = !DILocation(line: 216, column: 62, scope: !583)
!591 = !DILocation(line: 216, column: 20, scope: !583)
!592 = !DILocation(line: 216, column: 17, scope: !583)
!593 = !DILocation(line: 216, column: 5, scope: !583)
!594 = !DILocation(line: 215, column: 48, scope: !595)
!595 = !DILexicalBlockFile(scope: !583, file: !355, discriminator: 2)
!596 = !DILocation(line: 215, column: 53, scope: !595)
!597 = !DILocation(line: 215, column: 46, scope: !595)
!598 = !DILocation(line: 215, column: 4, scope: !595)
!599 = distinct !{!599, !600}
!600 = !DILocation(line: 215, column: 4, scope: !575)
!601 = !DILocation(line: 217, column: 8, scope: !602)
!602 = distinct !DILexicalBlock(scope: !575, file: !355, line: 217, column: 8)
!603 = !DILocation(line: 217, column: 8, scope: !575)
!604 = !DILocation(line: 218, column: 19, scope: !602)
!605 = !DILocation(line: 218, column: 5, scope: !602)
!606 = !DILocation(line: 219, column: 3, scope: !575)
!607 = !DILocation(line: 221, column: 28, scope: !608)
!608 = distinct !DILexicalBlock(scope: !569, file: !355, line: 220, column: 8)
!609 = !DILocation(line: 221, column: 36, scope: !608)
!610 = !DILocation(line: 221, column: 11, scope: !608)
!611 = !DILocation(line: 221, column: 9, scope: !608)
!612 = !DILocation(line: 222, column: 8, scope: !613)
!613 = distinct !DILexicalBlock(scope: !608, file: !355, line: 222, column: 8)
!614 = !DILocation(line: 222, column: 13, scope: !613)
!615 = !DILocation(line: 222, column: 8, scope: !608)
!616 = !DILocation(line: 223, column: 12, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !355, line: 223, column: 9)
!618 = distinct !DILexicalBlock(scope: !613, file: !355, line: 222, column: 21)
!619 = !DILocation(line: 223, column: 19, scope: !617)
!620 = !DILocation(line: 223, column: 27, scope: !617)
!621 = !DILocation(line: 223, column: 9, scope: !618)
!622 = !DILocation(line: 224, column: 25, scope: !617)
!623 = !DILocation(line: 224, column: 6, scope: !617)
!624 = !DILocation(line: 225, column: 4, scope: !618)
!625 = !DILocation(line: 227, column: 12, scope: !613)
!626 = !DILocation(line: 229, column: 2, scope: !570)
!627 = !DILocation(line: 231, column: 6, scope: !628)
!628 = distinct !DILexicalBlock(scope: !497, file: !355, line: 231, column: 6)
!629 = !DILocation(line: 231, column: 13, scope: !628)
!630 = !DILocation(line: 231, column: 6, scope: !497)
!631 = !DILocation(line: 232, column: 49, scope: !632)
!632 = distinct !DILexicalBlock(scope: !628, file: !355, line: 231, column: 21)
!633 = !DILocation(line: 232, column: 61, scope: !632)
!634 = !DILocation(line: 232, column: 3, scope: !632)
!635 = !DILocation(line: 234, column: 2, scope: !632)
!636 = !DILocation(line: 236, column: 18, scope: !497)
!637 = !DILocation(line: 236, column: 2, scope: !497)
!638 = !DILocation(line: 237, column: 1, scope: !497)
!639 = !DILocation(line: 237, column: 1, scope: !640)
!640 = !DILexicalBlockFile(scope: !497, file: !355, discriminator: 1)
!641 = distinct !DISubprogram(name: "fe_modules_deinit", scope: !355, file: !355, line: 249, type: !342, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !356)
!642 = !DILocation(line: 251, column: 2, scope: !641)
!643 = !DILocation(line: 252, column: 2, scope: !641)
!644 = !DILocation(line: 253, column: 2, scope: !641)
!645 = !DILocation(line: 255, column: 2, scope: !641)
!646 = !DILocation(line: 256, column: 2, scope: !641)
!647 = !DILocation(line: 257, column: 1, scope: !641)
!648 = distinct !DISubprogram(name: "cmd_load_list", scope: !355, file: !355, line: 106, type: !342, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !356)
!649 = !DILocalVariable(name: "tmp", scope: !648, file: !355, line: 108, type: !331)
!650 = !DILocation(line: 108, column: 10, scope: !648)
!651 = !DILocalVariable(name: "submodules", scope: !648, file: !355, line: 109, type: !652)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !654, line: 39, baseType: !655)
!654 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !654, line: 41, size: 192, align: 64, elements: !656)
!656 = !{!657, !658, !662}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !655, file: !654, line: 43, baseType: !311, size: 64, align: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !655, file: !654, line: 44, baseType: !659, size: 64, align: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !660, line: 66, baseType: !661)
!660 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!661 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !655, file: !654, line: 45, baseType: !659, size: 64, align: 64, offset: 128)
!663 = !DILocation(line: 109, column: 11, scope: !648)
!664 = !DILocalVariable(name: "type", scope: !648, file: !355, line: 110, type: !314)
!665 = !DILocation(line: 110, column: 21, scope: !648)
!666 = !DILocalVariable(name: "dynamic", scope: !648, file: !355, line: 111, type: !308)
!667 = !DILocation(line: 111, column: 13, scope: !648)
!668 = !DILocation(line: 113, column: 22, scope: !648)
!669 = !DILocation(line: 113, column: 20, scope: !648)
!670 = !DILocation(line: 115, column: 2, scope: !648)
!671 = !DILocation(line: 116, column: 13, scope: !672)
!672 = distinct !DILexicalBlock(scope: !648, file: !355, line: 116, column: 2)
!673 = !DILocation(line: 116, column: 11, scope: !672)
!674 = !DILocation(line: 116, column: 7, scope: !672)
!675 = !DILocation(line: 116, column: 22, scope: !676)
!676 = !DILexicalBlockFile(scope: !677, file: !355, discriminator: 1)
!677 = distinct !DILexicalBlock(scope: !672, file: !355, line: 116, column: 2)
!678 = !DILocation(line: 116, column: 26, scope: !676)
!679 = !DILocation(line: 116, column: 2, scope: !676)
!680 = !DILocalVariable(name: "rec", scope: !681, file: !355, line: 117, type: !325)
!681 = distinct !DILexicalBlock(scope: !677, file: !355, line: 116, column: 51)
!682 = !DILocation(line: 117, column: 15, scope: !681)
!683 = !DILocation(line: 117, column: 21, scope: !681)
!684 = !DILocation(line: 117, column: 26, scope: !681)
!685 = !DILocation(line: 119, column: 43, scope: !681)
!686 = !DILocation(line: 119, column: 53, scope: !681)
!687 = !DILocation(line: 119, column: 27, scope: !681)
!688 = !DILocation(line: 119, column: 25, scope: !681)
!689 = !DILocation(line: 120, column: 10, scope: !681)
!690 = !DILocation(line: 120, column: 18, scope: !681)
!691 = !DILocation(line: 120, column: 10, scope: !692)
!692 = !DILexicalBlockFile(scope: !681, file: !355, discriminator: 1)
!693 = !DILocation(line: 121, column: 4, scope: !681)
!694 = !DILocation(line: 120, column: 10, scope: !695)
!695 = !DILexicalBlockFile(scope: !681, file: !355, discriminator: 2)
!696 = !DILocation(line: 120, column: 10, scope: !697)
!697 = !DILexicalBlockFile(scope: !681, file: !355, discriminator: 3)
!698 = !DILocation(line: 120, column: 8, scope: !697)
!699 = !DILocation(line: 123, column: 42, scope: !681)
!700 = !DILocation(line: 123, column: 47, scope: !681)
!701 = !DILocation(line: 123, column: 53, scope: !681)
!702 = !DILocation(line: 123, column: 59, scope: !681)
!703 = !DILocation(line: 123, column: 71, scope: !681)
!704 = !DILocation(line: 123, column: 3, scope: !681)
!705 = !DILocation(line: 125, column: 2, scope: !681)
!706 = !DILocation(line: 116, column: 40, scope: !707)
!707 = !DILexicalBlockFile(scope: !677, file: !355, discriminator: 2)
!708 = !DILocation(line: 116, column: 45, scope: !707)
!709 = !DILocation(line: 116, column: 38, scope: !707)
!710 = !DILocation(line: 116, column: 2, scope: !707)
!711 = distinct !{!711, !712}
!712 = !DILocation(line: 116, column: 2, scope: !648)
!713 = !DILocation(line: 126, column: 2, scope: !648)
!714 = !DILocation(line: 128, column: 16, scope: !648)
!715 = !DILocation(line: 128, column: 2, scope: !648)
!716 = !DILocation(line: 129, column: 1, scope: !648)
!717 = distinct !DISubprogram(name: "module_prefixes_get", scope: !355, file: !355, line: 131, type: !718, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !356)
!718 = !DISubroutineType(types: !719)
!719 = !{!316}
!720 = !DILocalVariable(name: "tmp", scope: !717, file: !355, line: 133, type: !331)
!721 = !DILocation(line: 133, column: 17, scope: !717)
!722 = !DILocalVariable(name: "list", scope: !717, file: !355, line: 134, type: !316)
!723 = !DILocation(line: 134, column: 16, scope: !717)
!724 = !DILocalVariable(name: "name", scope: !717, file: !355, line: 134, type: !317)
!725 = !DILocation(line: 134, column: 23, scope: !717)
!726 = !DILocalVariable(name: "count", scope: !717, file: !355, line: 135, type: !308)
!727 = !DILocation(line: 135, column: 13, scope: !717)
!728 = !DILocation(line: 137, column: 55, scope: !717)
!729 = !DILocation(line: 137, column: 40, scope: !717)
!730 = !DILocation(line: 137, column: 39, scope: !717)
!731 = !DILocation(line: 137, column: 36, scope: !717)
!732 = !DILocation(line: 137, column: 33, scope: !717)
!733 = !DILocation(line: 137, column: 21, scope: !734)
!734 = !DILexicalBlockFile(scope: !717, file: !355, discriminator: 1)
!735 = !DILocation(line: 137, column: 10, scope: !717)
!736 = !DILocation(line: 137, column: 7, scope: !717)
!737 = !DILocation(line: 138, column: 2, scope: !717)
!738 = !DILocation(line: 138, column: 10, scope: !717)
!739 = !DILocation(line: 139, column: 2, scope: !717)
!740 = !DILocation(line: 139, column: 10, scope: !717)
!741 = !DILocation(line: 141, column: 8, scope: !717)
!742 = !DILocation(line: 142, column: 13, scope: !743)
!743 = distinct !DILexicalBlock(scope: !717, file: !355, line: 142, column: 2)
!744 = !DILocation(line: 142, column: 11, scope: !743)
!745 = !DILocation(line: 142, column: 7, scope: !743)
!746 = !DILocation(line: 142, column: 29, scope: !747)
!747 = !DILexicalBlockFile(scope: !748, file: !355, discriminator: 1)
!748 = distinct !DILexicalBlock(scope: !743, file: !355, line: 142, column: 2)
!749 = !DILocation(line: 142, column: 33, scope: !747)
!750 = !DILocation(line: 142, column: 2, scope: !747)
!751 = !DILocalVariable(name: "rec", scope: !752, file: !355, line: 143, type: !753)
!752 = distinct !DILexicalBlock(scope: !748, file: !355, line: 142, column: 58)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64, align: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_PROTOCOL_REC", file: !755, line: 105, baseType: !756)
!755 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHAT_PROTOCOL_REC", file: !757, line: 4, size: 832, align: 64, elements: !758)
!757 = !DIFile(filename: "../../../src/core/chat-protocols.h", directory: "/home/lichi/Desktop/irssi/task1")
!758 = !{!759, !760, !761, !762, !763, !764, !765, !772, !779, !786, !793, !797, !804, !808, !815}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !756, file: !757, line: 5, baseType: !308, size: 32, align: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "not_initialized", scope: !756, file: !757, line: 7, baseType: !350, size: 1, align: 32, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "case_insensitive", scope: !756, file: !757, line: 8, baseType: !350, size: 1, align: 32, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !756, file: !757, line: 10, baseType: !317, size: 64, align: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !756, file: !757, line: 11, baseType: !317, size: 64, align: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !756, file: !757, line: 12, baseType: !317, size: 64, align: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "create_chatnet", scope: !756, file: !757, line: 14, baseType: !766, size: 64, align: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64, align: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64, align: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !755, line: 106, baseType: !771)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !755, line: 106, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_setup", scope: !756, file: !757, line: 15, baseType: !773, size: 64, align: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64, align: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64, align: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !755, line: 114, baseType: !778)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !755, line: 114, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "create_channel_setup", scope: !756, file: !757, line: 16, baseType: !780, size: 64, align: 64, offset: 384)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64, align: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64, align: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !755, line: 115, baseType: !785)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !755, line: 115, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_connect", scope: !756, file: !757, line: 17, baseType: !787, size: 64, align: 64, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64, align: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !755, line: 113, baseType: !792)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !755, line: 113, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_server_connect", scope: !756, file: !757, line: 18, baseType: !794, size: 64, align: 64, offset: 512)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64, align: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !790}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "server_init_connect", scope: !756, file: !757, line: 20, baseType: !798, size: 64, align: 64, offset: 576)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64, align: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!801, !790}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64, align: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !755, line: 107, baseType: !803)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !755, line: 107, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "server_connect", scope: !756, file: !757, line: 21, baseType: !805, size: 64, align: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64, align: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !801}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "channel_create", scope: !756, file: !757, line: 22, baseType: !809, size: 64, align: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64, align: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!812, !801, !314, !314, !308}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64, align: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !755, line: 109, baseType: !814)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !755, line: 109, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "query_create", scope: !756, file: !757, line: 24, baseType: !816, size: 64, align: 64, offset: 768)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64, align: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!819, !314, !314, !308}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64, align: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !755, line: 110, baseType: !821)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !755, line: 110, flags: DIFlagFwdDecl)
!822 = !DILocation(line: 143, column: 22, scope: !752)
!823 = !DILocation(line: 143, column: 28, scope: !752)
!824 = !DILocation(line: 143, column: 33, scope: !752)
!825 = !DILocation(line: 145, column: 26, scope: !752)
!826 = !DILocation(line: 145, column: 31, scope: !752)
!827 = !DILocation(line: 145, column: 10, scope: !752)
!828 = !DILocation(line: 145, column: 8, scope: !752)
!829 = !DILocation(line: 147, column: 19, scope: !752)
!830 = !DILocation(line: 147, column: 13, scope: !752)
!831 = !DILocation(line: 147, column: 3, scope: !752)
!832 = !DILocation(line: 147, column: 17, scope: !752)
!833 = !DILocation(line: 148, column: 52, scope: !752)
!834 = !DILocation(line: 148, column: 33, scope: !752)
!835 = !DILocation(line: 148, column: 27, scope: !752)
!836 = !DILocation(line: 148, column: 17, scope: !752)
!837 = !DILocation(line: 148, column: 31, scope: !752)
!838 = !DILocation(line: 149, column: 59, scope: !752)
!839 = !DILocation(line: 149, column: 33, scope: !752)
!840 = !DILocation(line: 149, column: 27, scope: !752)
!841 = !DILocation(line: 149, column: 17, scope: !752)
!842 = !DILocation(line: 149, column: 31, scope: !752)
!843 = !DILocation(line: 150, column: 2, scope: !752)
!844 = !DILocation(line: 142, column: 47, scope: !845)
!845 = !DILexicalBlockFile(scope: !748, file: !355, discriminator: 2)
!846 = !DILocation(line: 142, column: 52, scope: !845)
!847 = !DILocation(line: 142, column: 45, scope: !845)
!848 = !DILocation(line: 142, column: 2, scope: !845)
!849 = distinct !{!849, !850}
!850 = !DILocation(line: 142, column: 2, scope: !717)
!851 = !DILocation(line: 151, column: 7, scope: !717)
!852 = !DILocation(line: 151, column: 2, scope: !717)
!853 = !DILocation(line: 151, column: 14, scope: !717)
!854 = !DILocation(line: 153, column: 16, scope: !717)
!855 = !DILocation(line: 153, column: 9, scope: !717)
!856 = distinct !DISubprogram(name: "module_prefixes_free", scope: !355, file: !355, line: 156, type: !857, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !356)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !316}
!859 = !DILocalVariable(name: "list", arg: 1, scope: !856, file: !355, line: 156, type: !316)
!860 = !DILocation(line: 156, column: 41, scope: !856)
!861 = !DILocalVariable(name: "pos", scope: !856, file: !355, line: 158, type: !316)
!862 = !DILocation(line: 158, column: 9, scope: !856)
!863 = !DILocation(line: 158, column: 15, scope: !856)
!864 = !DILocation(line: 158, column: 19, scope: !856)
!865 = !DILocation(line: 160, column: 2, scope: !856)
!866 = !DILocation(line: 160, column: 10, scope: !867)
!867 = !DILexicalBlockFile(scope: !856, file: !355, discriminator: 1)
!868 = !DILocation(line: 160, column: 9, scope: !867)
!869 = !DILocation(line: 160, column: 14, scope: !867)
!870 = !DILocation(line: 160, column: 2, scope: !867)
!871 = !DILocation(line: 161, column: 25, scope: !872)
!872 = distinct !DILexicalBlock(scope: !856, file: !355, line: 160, column: 22)
!873 = !DILocation(line: 161, column: 24, scope: !872)
!874 = !DILocation(line: 161, column: 17, scope: !872)
!875 = !DILocation(line: 162, column: 20, scope: !872)
!876 = !DILocation(line: 160, column: 2, scope: !877)
!877 = !DILexicalBlockFile(scope: !856, file: !355, discriminator: 2)
!878 = distinct !{!878, !865}
!879 = !DILocation(line: 164, column: 16, scope: !856)
!880 = !DILocation(line: 164, column: 9, scope: !856)
!881 = !DILocation(line: 165, column: 1, scope: !856)
!882 = distinct !DISubprogram(name: "module_list_sub", scope: !355, file: !355, line: 71, type: !883, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !356)
!883 = !DISubroutineType(types: !884)
!884 = !{!308, !325, !308, !652}
!885 = !DILocalVariable(name: "module", arg: 1, scope: !882, file: !355, line: 71, type: !325)
!886 = !DILocation(line: 71, column: 40, scope: !882)
!887 = !DILocalVariable(name: "mark_type", arg: 2, scope: !882, file: !355, line: 71, type: !308)
!888 = !DILocation(line: 71, column: 52, scope: !882)
!889 = !DILocalVariable(name: "submodules", arg: 3, scope: !882, file: !355, line: 72, type: !652)
!890 = !DILocation(line: 72, column: 16, scope: !882)
!891 = !DILocalVariable(name: "tmp", scope: !882, file: !355, line: 74, type: !331)
!892 = !DILocation(line: 74, column: 10, scope: !882)
!893 = !DILocalVariable(name: "all_dynamic", scope: !882, file: !355, line: 75, type: !308)
!894 = !DILocation(line: 75, column: 13, scope: !882)
!895 = !DILocalVariable(name: "dynamic", scope: !882, file: !355, line: 75, type: !308)
!896 = !DILocation(line: 75, column: 26, scope: !882)
!897 = !DILocation(line: 77, column: 20, scope: !882)
!898 = !DILocation(line: 77, column: 2, scope: !882)
!899 = !DILocation(line: 79, column: 21, scope: !882)
!900 = !DILocation(line: 80, column: 13, scope: !901)
!901 = distinct !DILexicalBlock(scope: !882, file: !355, line: 80, column: 2)
!902 = !DILocation(line: 80, column: 21, scope: !901)
!903 = !DILocation(line: 80, column: 11, scope: !901)
!904 = !DILocation(line: 80, column: 7, scope: !901)
!905 = !DILocation(line: 80, column: 28, scope: !906)
!906 = !DILexicalBlockFile(scope: !907, file: !355, discriminator: 1)
!907 = distinct !DILexicalBlock(scope: !901, file: !355, line: 80, column: 2)
!908 = !DILocation(line: 80, column: 32, scope: !906)
!909 = !DILocation(line: 80, column: 2, scope: !906)
!910 = !DILocalVariable(name: "file", scope: !911, file: !355, line: 81, type: !319)
!911 = distinct !DILexicalBlock(scope: !907, file: !355, line: 80, column: 57)
!912 = !DILocation(line: 81, column: 20, scope: !911)
!913 = !DILocation(line: 81, column: 27, scope: !911)
!914 = !DILocation(line: 81, column: 32, scope: !911)
!915 = !DILocation(line: 85, column: 8, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !355, line: 85, column: 7)
!917 = !DILocation(line: 85, column: 7, scope: !911)
!918 = !DILocation(line: 86, column: 14, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !355, line: 85, column: 19)
!920 = !DILocation(line: 86, column: 20, scope: !919)
!921 = !DILocation(line: 86, column: 28, scope: !919)
!922 = !DILocation(line: 86, column: 12, scope: !919)
!923 = !DILocation(line: 87, column: 8, scope: !924)
!924 = distinct !DILexicalBlock(scope: !919, file: !355, line: 87, column: 8)
!925 = !DILocation(line: 87, column: 20, scope: !924)
!926 = !DILocation(line: 87, column: 26, scope: !924)
!927 = !DILocation(line: 87, column: 29, scope: !928)
!928 = !DILexicalBlockFile(scope: !924, file: !355, discriminator: 1)
!929 = !DILocation(line: 87, column: 44, scope: !928)
!930 = !DILocation(line: 87, column: 41, scope: !928)
!931 = !DILocation(line: 87, column: 8, scope: !928)
!932 = !DILocation(line: 88, column: 28, scope: !933)
!933 = distinct !DILexicalBlock(scope: !924, file: !355, line: 87, column: 53)
!934 = !DILocation(line: 89, column: 14, scope: !933)
!935 = !DILocation(line: 88, column: 12, scope: !933)
!936 = !DILocation(line: 88, column: 5, scope: !933)
!937 = !DILocation(line: 91, column: 18, scope: !919)
!938 = !DILocation(line: 91, column: 16, scope: !919)
!939 = !DILocation(line: 92, column: 3, scope: !919)
!940 = !DILocation(line: 94, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !911, file: !355, line: 94, column: 7)
!942 = !DILocation(line: 94, column: 19, scope: !941)
!943 = !DILocation(line: 94, column: 23, scope: !941)
!944 = !DILocation(line: 94, column: 7, scope: !911)
!945 = !DILocation(line: 95, column: 30, scope: !941)
!946 = !DILocation(line: 95, column: 4, scope: !941)
!947 = !DILocation(line: 96, column: 19, scope: !911)
!948 = !DILocation(line: 96, column: 31, scope: !911)
!949 = !DILocation(line: 96, column: 37, scope: !911)
!950 = !DILocation(line: 96, column: 3, scope: !911)
!951 = !DILocation(line: 97, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !911, file: !355, line: 97, column: 7)
!953 = !DILocation(line: 97, column: 7, scope: !911)
!954 = !DILocation(line: 98, column: 20, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !355, line: 97, column: 18)
!956 = !DILocation(line: 98, column: 32, scope: !955)
!957 = !DILocation(line: 98, column: 38, scope: !955)
!958 = !DILocation(line: 98, column: 46, scope: !955)
!959 = !DILocation(line: 98, column: 4, scope: !955)
!960 = !DILocation(line: 100, column: 3, scope: !955)
!961 = !DILocation(line: 101, column: 2, scope: !911)
!962 = !DILocation(line: 80, column: 46, scope: !963)
!963 = !DILexicalBlockFile(scope: !907, file: !355, discriminator: 2)
!964 = !DILocation(line: 80, column: 51, scope: !963)
!965 = !DILocation(line: 80, column: 44, scope: !963)
!966 = !DILocation(line: 80, column: 2, scope: !963)
!967 = distinct !{!967, !968}
!968 = !DILocation(line: 80, column: 2, scope: !882)
!969 = !DILocation(line: 103, column: 16, scope: !882)
!970 = !DILocation(line: 103, column: 9, scope: !882)
!971 = !DILocation(line: 104, column: 1, scope: !882)
!972 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !654, file: !654, line: 161, type: !973, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !356)
!973 = !DISubroutineType(types: !974)
!974 = !{!652, !652, !312}
!975 = !DILocalVariable(name: "gstring", arg: 1, scope: !972, file: !654, line: 161, type: !652)
!976 = !DILocation(line: 161, column: 36, scope: !972)
!977 = !DILocalVariable(name: "c", arg: 2, scope: !972, file: !654, line: 162, type: !312)
!978 = !DILocation(line: 162, column: 33, scope: !972)
!979 = !DILocation(line: 164, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !972, file: !654, line: 164, column: 7)
!981 = !DILocation(line: 164, column: 16, scope: !980)
!982 = !DILocation(line: 164, column: 20, scope: !980)
!983 = !DILocation(line: 164, column: 26, scope: !980)
!984 = !DILocation(line: 164, column: 35, scope: !980)
!985 = !DILocation(line: 164, column: 24, scope: !980)
!986 = !DILocation(line: 164, column: 7, scope: !972)
!987 = !DILocation(line: 166, column: 38, scope: !988)
!988 = distinct !DILexicalBlock(scope: !980, file: !654, line: 165, column: 5)
!989 = !DILocation(line: 166, column: 20, scope: !988)
!990 = !DILocation(line: 166, column: 29, scope: !988)
!991 = !DILocation(line: 166, column: 32, scope: !988)
!992 = !DILocation(line: 166, column: 7, scope: !988)
!993 = !DILocation(line: 166, column: 16, scope: !988)
!994 = !DILocation(line: 166, column: 36, scope: !988)
!995 = !DILocation(line: 167, column: 20, scope: !988)
!996 = !DILocation(line: 167, column: 29, scope: !988)
!997 = !DILocation(line: 167, column: 7, scope: !988)
!998 = !DILocation(line: 167, column: 16, scope: !988)
!999 = !DILocation(line: 167, column: 34, scope: !988)
!1000 = !DILocation(line: 168, column: 5, scope: !988)
!1001 = !DILocation(line: 170, column: 24, scope: !980)
!1002 = !DILocation(line: 170, column: 37, scope: !980)
!1003 = !DILocation(line: 170, column: 5, scope: !980)
!1004 = !DILocation(line: 171, column: 10, scope: !972)
!1005 = !DILocation(line: 171, column: 3, scope: !972)
