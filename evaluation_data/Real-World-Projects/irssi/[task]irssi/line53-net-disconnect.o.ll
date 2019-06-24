; ModuleID = './line53-net-disconnect.o.i'
source_filename = "./line53-net-disconnect.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, {}*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct.NET_DISCONNECT_REC = type { i64, %struct._GIOChannel*, i32 }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }

@timeout_tag = internal global i32 0, align 4
@disconnects = internal global %struct._GSList* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"Please wait, waiting for servers to close connections..\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @net_disconnect_later(%struct._GIOChannel*) #0 !dbg !249 {
  %2 = alloca %struct._GIOChannel*, align 8
  %3 = alloca %struct.NET_DISCONNECT_REC*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %2, metadata !251, metadata !252), !dbg !253
  call void @llvm.dbg.declare(metadata %struct.NET_DISCONNECT_REC** %3, metadata !254, metadata !252), !dbg !255
  %4 = call noalias i8* @g_malloc_n(i64 1, i64 24), !dbg !256
  %5 = bitcast i8* %4 to %struct.NET_DISCONNECT_REC*, !dbg !257
  store %struct.NET_DISCONNECT_REC* %5, %struct.NET_DISCONNECT_REC** %3, align 8, !dbg !258
  %6 = call i64 @time(i64* null) #4, !dbg !259
  %7 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %3, align 8, !dbg !260
  %8 = getelementptr inbounds %struct.NET_DISCONNECT_REC, %struct.NET_DISCONNECT_REC* %7, i32 0, i32 0, !dbg !261
  store i64 %6, i64* %8, align 8, !dbg !262
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !263
  %10 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %3, align 8, !dbg !264
  %11 = getelementptr inbounds %struct.NET_DISCONNECT_REC, %struct.NET_DISCONNECT_REC* %10, i32 0, i32 1, !dbg !265
  store %struct._GIOChannel* %9, %struct._GIOChannel** %11, align 8, !dbg !266
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !267
  %13 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %3, align 8, !dbg !268
  %14 = bitcast %struct.NET_DISCONNECT_REC* %13 to i8*, !dbg !268
  %15 = call i32 @g_input_add(%struct._GIOChannel* %12, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.NET_DISCONNECT_REC*)* @sig_disconnect to void (i8*, %struct._GIOChannel*, i32)*), i8* %14), !dbg !269
  %16 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %3, align 8, !dbg !270
  %17 = getelementptr inbounds %struct.NET_DISCONNECT_REC, %struct.NET_DISCONNECT_REC* %16, i32 0, i32 2, !dbg !271
  store i32 %15, i32* %17, align 8, !dbg !272
  %18 = load i32, i32* @timeout_tag, align 4, !dbg !273
  %19 = icmp eq i32 %18, -1, !dbg !275
  br i1 %19, label %20, label %22, !dbg !276

; <label>:20:                                     ; preds = %1
  %21 = call i32 @g_timeout_add(i32 10000, i32 (i8*)* bitcast (i32 ()* @sig_timeout_disconnect to i32 (i8*)*), i8* null), !dbg !277
  store i32 %21, i32* @timeout_tag, align 4, !dbg !279
  br label %22, !dbg !280

; <label>:22:                                     ; preds = %20, %1
  %23 = load %struct._GSList*, %struct._GSList** @disconnects, align 8, !dbg !281
  %24 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %3, align 8, !dbg !282
  %25 = bitcast %struct.NET_DISCONNECT_REC* %24 to i8*, !dbg !282
  %26 = call %struct._GSList* @g_slist_append(%struct._GSList* %23, i8* %25), !dbg !283
  store %struct._GSList* %26, %struct._GSList** @disconnects, align 8, !dbg !284
  ret void, !dbg !285
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc_n(i64, i64) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @g_input_add(%struct._GIOChannel*, i32, void (i8*, %struct._GIOChannel*, i32)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_disconnect(%struct.NET_DISCONNECT_REC*) #0 !dbg !286 {
  %2 = alloca %struct.NET_DISCONNECT_REC*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.NET_DISCONNECT_REC* %0, %struct.NET_DISCONNECT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NET_DISCONNECT_REC** %2, metadata !289, metadata !252), !dbg !290
  call void @llvm.dbg.declare(metadata [512 x i8]* %3, metadata !291, metadata !252), !dbg !295
  call void @llvm.dbg.declare(metadata i32* %4, metadata !296, metadata !252), !dbg !297
  call void @llvm.dbg.declare(metadata i32* %5, metadata !298, metadata !252), !dbg !299
  store i32 0, i32* %4, align 4, !dbg !300
  br label %6, !dbg !301, !llvm.loop !302

; <label>:6:                                      ; preds = %26, %1
  %7 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %2, align 8, !dbg !303
  %8 = getelementptr inbounds %struct.NET_DISCONNECT_REC, %struct.NET_DISCONNECT_REC* %7, i32 0, i32 1, !dbg !305
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %8, align 8, !dbg !305
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i32 0, i32 0, !dbg !306
  %11 = call i32 @net_receive(%struct._GIOChannel* %9, i8* %10, i32 512), !dbg !307
  store i32 %11, i32* %5, align 4, !dbg !308
  %12 = load i32, i32* %5, align 4, !dbg !309
  %13 = icmp eq i32 %12, -1, !dbg !311
  br i1 %13, label %14, label %16, !dbg !312

; <label>:14:                                     ; preds = %6
  %15 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %2, align 8, !dbg !313
  call void @net_disconnect_remove(%struct.NET_DISCONNECT_REC* %15), !dbg !315
  br label %16, !dbg !316

; <label>:16:                                     ; preds = %14, %6
  %17 = load i32, i32* %4, align 4, !dbg !317
  %18 = add nsw i32 %17, 1, !dbg !317
  store i32 %18, i32* %4, align 4, !dbg !317
  br label %19, !dbg !318

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %5, align 4, !dbg !319
  %21 = sext i32 %20 to i64, !dbg !319
  %22 = icmp eq i64 %21, 512, !dbg !321
  br i1 %22, label %23, label %26, !dbg !322

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %4, align 4, !dbg !323
  %25 = icmp slt i32 %24, 10, !dbg !325
  br label %26

; <label>:26:                                     ; preds = %23, %19
  %27 = phi i1 [ false, %19 ], [ %25, %23 ]
  br i1 %27, label %6, label %28, !dbg !326, !llvm.loop !302

; <label>:28:                                     ; preds = %26
  ret void, !dbg !328
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sig_timeout_disconnect() #0 !dbg !329 {
  %1 = alloca %struct.NET_DISCONNECT_REC*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata %struct.NET_DISCONNECT_REC** %1, metadata !332, metadata !252), !dbg !333
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !334, metadata !252), !dbg !335
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !336, metadata !252), !dbg !337
  call void @llvm.dbg.declare(metadata i64* %4, metadata !338, metadata !252), !dbg !339
  %5 = call i64 @time(i64* null) #4, !dbg !340
  store i64 %5, i64* %4, align 8, !dbg !341
  %6 = load %struct._GSList*, %struct._GSList** @disconnects, align 8, !dbg !342
  store %struct._GSList* %6, %struct._GSList** %2, align 8, !dbg !344
  br label %7, !dbg !345

; <label>:7:                                      ; preds = %27, %0
  %8 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !346
  %9 = icmp ne %struct._GSList* %8, null, !dbg !349
  br i1 %9, label %10, label %29, !dbg !350

; <label>:10:                                     ; preds = %7
  %11 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !351
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !353
  %13 = load i8*, i8** %12, align 8, !dbg !353
  %14 = bitcast i8* %13 to %struct.NET_DISCONNECT_REC*, !dbg !351
  store %struct.NET_DISCONNECT_REC* %14, %struct.NET_DISCONNECT_REC** %1, align 8, !dbg !354
  %15 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !355
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 1, !dbg !356
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !356
  store %struct._GSList* %17, %struct._GSList** %3, align 8, !dbg !357
  %18 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %1, align 8, !dbg !358
  %19 = getelementptr inbounds %struct.NET_DISCONNECT_REC, %struct.NET_DISCONNECT_REC* %18, i32 0, i32 0, !dbg !360
  %20 = load i64, i64* %19, align 8, !dbg !360
  %21 = add nsw i64 %20, 120, !dbg !361
  %22 = load i64, i64* %4, align 8, !dbg !362
  %23 = icmp sle i64 %21, %22, !dbg !363
  br i1 %23, label %24, label %26, !dbg !364

; <label>:24:                                     ; preds = %10
  %25 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %1, align 8, !dbg !365
  call void @net_disconnect_remove(%struct.NET_DISCONNECT_REC* %25), !dbg !366
  br label %26, !dbg !366

; <label>:26:                                     ; preds = %24, %10
  br label %27, !dbg !367

; <label>:27:                                     ; preds = %26
  %28 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !368
  store %struct._GSList* %28, %struct._GSList** %2, align 8, !dbg !370
  br label %7, !dbg !371, !llvm.loop !372

; <label>:29:                                     ; preds = %7
  %30 = load %struct._GSList*, %struct._GSList** @disconnects, align 8, !dbg !374
  %31 = icmp eq %struct._GSList* %30, null, !dbg !376
  br i1 %31, label %32, label %33, !dbg !377

; <label>:32:                                     ; preds = %29
  store i32 -1, i32* @timeout_tag, align 4, !dbg !378
  br label %33, !dbg !380

; <label>:33:                                     ; preds = %32, %29
  %34 = load %struct._GSList*, %struct._GSList** @disconnects, align 8, !dbg !381
  %35 = icmp ne %struct._GSList* %34, null, !dbg !382
  %36 = zext i1 %35 to i32, !dbg !382
  ret i32 %36, !dbg !383
}

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @net_disconnect_init() #0 !dbg !384 {
  store %struct._GSList* null, %struct._GSList** @disconnects, align 8, !dbg !385
  store i32 -1, i32* @timeout_tag, align 4, !dbg !386
  ret void, !dbg !387
}

; Function Attrs: nounwind uwtable
define void @net_disconnect_deinit() #0 !dbg !388 {
  %1 = alloca %struct.NET_DISCONNECT_REC*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.fd_set, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.NET_DISCONNECT_REC** %1, metadata !389, metadata !252), !dbg !390
  call void @llvm.dbg.declare(metadata i64* %2, metadata !391, metadata !252), !dbg !392
  call void @llvm.dbg.declare(metadata i64* %3, metadata !393, metadata !252), !dbg !394
  call void @llvm.dbg.declare(metadata i32* %4, metadata !395, metadata !252), !dbg !396
  call void @llvm.dbg.declare(metadata i32* %5, metadata !397, metadata !252), !dbg !398
  call void @llvm.dbg.declare(metadata %struct.timeval* %6, metadata !399, metadata !252), !dbg !406
  call void @llvm.dbg.declare(metadata %struct.fd_set* %7, metadata !407, metadata !252), !dbg !415
  %10 = call i64 @time(i64* null) #4, !dbg !416
  %11 = add nsw i64 %10, 5, !dbg !417
  store i64 %11, i64* %3, align 8, !dbg !418
  store i32 1, i32* %4, align 4, !dbg !419
  br label %12, !dbg !420

; <label>:12:                                     ; preds = %101, %31, %0
  %13 = load %struct._GSList*, %struct._GSList** @disconnects, align 8, !dbg !421
  %14 = icmp ne %struct._GSList* %13, null, !dbg !423
  br i1 %14, label %15, label %102, !dbg !424

; <label>:15:                                     ; preds = %12
  %16 = load %struct._GSList*, %struct._GSList** @disconnects, align 8, !dbg !425
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !427
  %18 = load i8*, i8** %17, align 8, !dbg !427
  %19 = bitcast i8* %18 to %struct.NET_DISCONNECT_REC*, !dbg !425
  store %struct.NET_DISCONNECT_REC* %19, %struct.NET_DISCONNECT_REC** %1, align 8, !dbg !428
  %20 = call i64 @time(i64* null) #4, !dbg !429
  store i64 %20, i64* %2, align 8, !dbg !430
  %21 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %1, align 8, !dbg !431
  %22 = getelementptr inbounds %struct.NET_DISCONNECT_REC, %struct.NET_DISCONNECT_REC* %21, i32 0, i32 0, !dbg !433
  %23 = load i64, i64* %22, align 8, !dbg !433
  %24 = add nsw i64 %23, 5, !dbg !434
  %25 = load i64, i64* %2, align 8, !dbg !435
  %26 = icmp sle i64 %24, %25, !dbg !436
  br i1 %26, label %31, label %27, !dbg !437

; <label>:27:                                     ; preds = %15
  %28 = load i64, i64* %3, align 8, !dbg !438
  %29 = load i64, i64* %2, align 8, !dbg !440
  %30 = icmp sle i64 %28, %29, !dbg !441
  br i1 %30, label %31, label %33, !dbg !442

; <label>:31:                                     ; preds = %27, %15
  %32 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %1, align 8, !dbg !443
  call void @net_disconnect_remove(%struct.NET_DISCONNECT_REC* %32), !dbg !445
  br label %12, !dbg !446, !llvm.loop !447

; <label>:33:                                     ; preds = %27
  %34 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %1, align 8, !dbg !448
  %35 = getelementptr inbounds %struct.NET_DISCONNECT_REC, %struct.NET_DISCONNECT_REC* %34, i32 0, i32 1, !dbg !449
  %36 = load %struct._GIOChannel*, %struct._GIOChannel** %35, align 8, !dbg !449
  %37 = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %36), !dbg !450
  store i32 %37, i32* %5, align 4, !dbg !451
  br label %38, !dbg !452, !llvm.loop !453

; <label>:38:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata i32* %8, metadata !454, metadata !252), !dbg !456
  call void @llvm.dbg.declare(metadata i32* %9, metadata !457, metadata !252), !dbg !458
  %39 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %7, i32 0, i32 0, !dbg !459
  %40 = getelementptr inbounds [16 x i64], [16 x i64]* %39, i64 0, i64 0, !dbg !461
  %41 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %40) #4, !dbg !462, !srcloc !463
  %42 = extractvalue { i64, i64* } %41, 0, !dbg !462
  %43 = extractvalue { i64, i64* } %41, 1, !dbg !462
  %44 = trunc i64 %42 to i32, !dbg !462
  store i32 %44, i32* %8, align 4, !dbg !462
  %45 = ptrtoint i64* %43 to i64, !dbg !462
  %46 = trunc i64 %45 to i32, !dbg !462
  store i32 %46, i32* %9, align 4, !dbg !462
  br label %47, !dbg !464

; <label>:47:                                     ; preds = %38
  %48 = load i32, i32* %5, align 4, !dbg !465
  %49 = srem i32 %48, 64, !dbg !466
  %50 = zext i32 %49 to i64, !dbg !467
  %51 = shl i64 1, %50, !dbg !467
  %52 = load i32, i32* %5, align 4, !dbg !465
  %53 = sdiv i32 %52, 64, !dbg !466
  %54 = sext i32 %53 to i64, !dbg !468
  %55 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %7, i32 0, i32 0, !dbg !469
  %56 = getelementptr inbounds [16 x i64], [16 x i64]* %55, i64 0, i64 %54, !dbg !468
  %57 = load i64, i64* %56, align 8, !dbg !470
  %58 = or i64 %57, %51, !dbg !470
  store i64 %58, i64* %56, align 8, !dbg !470
  %59 = load i32, i32* %4, align 4, !dbg !471
  %60 = icmp ne i32 %59, 0, !dbg !471
  br i1 %60, label %61, label %62, !dbg !471

; <label>:61:                                     ; preds = %47
  br label %66, !dbg !472

; <label>:62:                                     ; preds = %47
  %63 = load i64, i64* %3, align 8, !dbg !474
  %64 = load i64, i64* %2, align 8, !dbg !476
  %65 = sub nsw i64 %63, %64, !dbg !477
  br label %66, !dbg !478

; <label>:66:                                     ; preds = %62, %61
  %67 = phi i64 [ 0, %61 ], [ %65, %62 ], !dbg !479
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0, !dbg !481
  store i64 %67, i64* %68, align 8, !dbg !482
  %69 = load i32, i32* %4, align 4, !dbg !483
  %70 = icmp ne i32 %69, 0, !dbg !483
  %71 = select i1 %70, i32 100000, i32 0, !dbg !483
  %72 = sext i32 %71 to i64, !dbg !483
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1, !dbg !484
  store i64 %72, i64* %73, align 8, !dbg !485
  %74 = load i32, i32* %5, align 4, !dbg !486
  %75 = add nsw i32 %74, 1, !dbg !488
  %76 = call i32 @select(i32 %75, %struct.fd_set* %7, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %6), !dbg !489
  %77 = icmp sgt i32 %76, 0, !dbg !490
  br i1 %77, label %78, label %93, !dbg !491

; <label>:78:                                     ; preds = %66
  %79 = load i32, i32* %5, align 4, !dbg !492
  %80 = sdiv i32 %79, 64, !dbg !493
  %81 = sext i32 %80 to i64, !dbg !493
  %82 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %7, i32 0, i32 0, !dbg !494
  %83 = getelementptr inbounds [16 x i64], [16 x i64]* %82, i64 0, i64 %81, !dbg !493
  %84 = load i64, i64* %83, align 8, !dbg !493
  %85 = load i32, i32* %5, align 4, !dbg !492
  %86 = srem i32 %85, 64, !dbg !493
  %87 = zext i32 %86 to i64, !dbg !495
  %88 = shl i64 1, %87, !dbg !495
  %89 = and i64 %84, %88, !dbg !496
  %90 = icmp ne i64 %89, 0, !dbg !497
  br i1 %90, label %91, label %93, !dbg !498

; <label>:91:                                     ; preds = %78
  %92 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %1, align 8, !dbg !499
  call void @sig_disconnect(%struct.NET_DISCONNECT_REC* %92), !dbg !501
  br label %101, !dbg !502

; <label>:93:                                     ; preds = %78, %66
  %94 = load i32, i32* %4, align 4, !dbg !503
  %95 = icmp ne i32 %94, 0, !dbg !503
  br i1 %95, label %96, label %100, !dbg !503

; <label>:96:                                     ; preds = %93
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0)), !dbg !506
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !508
  %99 = call i32 @fflush(%struct._IO_FILE* %98), !dbg !509
  store i32 0, i32* %4, align 4, !dbg !510
  br label %100, !dbg !511

; <label>:100:                                    ; preds = %96, %93
  br label %101

; <label>:101:                                    ; preds = %100, %91
  br label %12, !dbg !512, !llvm.loop !447

; <label>:102:                                    ; preds = %12
  ret void, !dbg !514
}

; Function Attrs: nounwind uwtable
define internal void @net_disconnect_remove(%struct.NET_DISCONNECT_REC*) #0 !dbg !515 {
  %2 = alloca %struct.NET_DISCONNECT_REC*, align 8
  store %struct.NET_DISCONNECT_REC* %0, %struct.NET_DISCONNECT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NET_DISCONNECT_REC** %2, metadata !516, metadata !252), !dbg !517
  %3 = load %struct._GSList*, %struct._GSList** @disconnects, align 8, !dbg !518
  %4 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %2, align 8, !dbg !519
  %5 = bitcast %struct.NET_DISCONNECT_REC* %4 to i8*, !dbg !519
  %6 = call %struct._GSList* @g_slist_remove(%struct._GSList* %3, i8* %5), !dbg !520
  store %struct._GSList* %6, %struct._GSList** @disconnects, align 8, !dbg !521
  %7 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %2, align 8, !dbg !522
  %8 = getelementptr inbounds %struct.NET_DISCONNECT_REC, %struct.NET_DISCONNECT_REC* %7, i32 0, i32 2, !dbg !523
  %9 = load i32, i32* %8, align 8, !dbg !523
  %10 = call i32 @g_source_remove(i32 %9), !dbg !524
  %11 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %2, align 8, !dbg !525
  %12 = getelementptr inbounds %struct.NET_DISCONNECT_REC, %struct.NET_DISCONNECT_REC* %11, i32 0, i32 1, !dbg !526
  %13 = load %struct._GIOChannel*, %struct._GIOChannel** %12, align 8, !dbg !526
  call void @net_disconnect(%struct._GIOChannel* %13), !dbg !527
  %14 = load %struct.NET_DISCONNECT_REC*, %struct.NET_DISCONNECT_REC** %2, align 8, !dbg !528
  %15 = bitcast %struct.NET_DISCONNECT_REC* %14 to i8*, !dbg !528
  call void @g_free(i8* %15), !dbg !529
  ret void, !dbg !530
}

declare i32 @g_io_channel_unix_get_fd(%struct._GIOChannel*) #2

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #2

declare i32 @printf(i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @net_receive(%struct._GIOChannel*, i8*, i32) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare i32 @g_source_remove(i32) #2

declare void @net_disconnect(%struct._GIOChannel*) #2

declare void @g_free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!246, !247}
!llvm.ident = !{!248}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, globals: !243)
!1 = !DIFile(filename: "line53-net-disconnect.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 69, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!7 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!8 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!9 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 77, size: 32, align: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!13 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!14 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 31, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIEnumerator(name: "G_IO_IN", value: 1)
!19 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!20 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!21 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!22 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!23 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 84, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34}
!26 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!27 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!28 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!29 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!30 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!31 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!32 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!33 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!34 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!35 = !{!36, !236, !128, !112, !241, !55}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_DISCONNECT_REC", file: !38, line: 34, baseType: !39)
!38 = !DIFile(filename: "net-disconnect.c", directory: "/home/lichi/Desktop/irssi/task1")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 30, size: 192, align: 64, elements: !40)
!40 = !{!41, !47, !235}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !39, file: !38, line: 31, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !43, line: 75, baseType: !44)
!43 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !45, line: 139, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!46 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !39, file: !38, line: 32, baseType: !48, size: 64, align: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !51)
!51 = !{!52, !56, !202, !203, !208, !209, !210, !211, !212, !221, !222, !223, !227, !228, !229, !230, !231, !232, !233, !234}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !50, file: !4, line: 100, baseType: !53, size: 32, align: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !54, line: 49, baseType: !55)
!54 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !50, file: !4, line: 101, baseType: !57, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !60)
!60 = !{!61, !86, !92, !98, !102, !189, !193, !198}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !59, file: !4, line: 133, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !48, !66, !69, !72, !73}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !54, line: 46, baseType: !68)
!68 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !70, line: 66, baseType: !71)
!70 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!71 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !76, line: 42, baseType: !77)
!76 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !76, line: 44, size: 128, align: 64, elements: !78)
!78 = !{!79, !84, !85}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !77, file: !76, line: 46, baseType: !80, size: 32, align: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !81, line: 36, baseType: !82)
!81 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !70, line: 45, baseType: !83)
!83 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !77, file: !76, line: 47, baseType: !53, size: 32, align: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !77, file: !76, line: 48, baseType: !66, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !59, file: !4, line: 138, baseType: !87, size: 64, align: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!65, !48, !90, !69, !72, !73}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !59, file: !4, line: 143, baseType: !93, size: 64, align: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!65, !48, !96, !97, !73}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !70, line: 51, baseType: !46)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !59, file: !4, line: 147, baseType: !99, size: 64, align: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!65, !48, !73}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !59, file: !4, line: 149, baseType: !103, size: 64, align: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !48, !188}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !109)
!109 = !{!110, !113, !134, !163, !165, !169, !170, !171, !172, !180, !181, !182, !184}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !108, file: !16, line: 174, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !54, line: 77, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !108, file: !16, line: 175, baseType: !114, size: 64, align: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !117)
!117 = !{!118, !122, !123}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !116, file: !16, line: 198, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !111}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !116, file: !16, line: 199, baseType: !119, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !116, file: !16, line: 200, baseType: !124, size: 64, align: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !111, !106, !127, !133}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !111}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !54, line: 50, baseType: !53)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !108, file: !16, line: 177, baseType: !135, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !139)
!139 = !{!140, !145, !149, !153, !157, !158}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !138, file: !16, line: 216, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!132, !106, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !138, file: !16, line: 218, baseType: !146, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!132, !106}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !138, file: !16, line: 219, baseType: !150, size: 64, align: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!132, !106, !128, !111}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !138, file: !16, line: 222, baseType: !154, size: 64, align: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !106}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !138, file: !16, line: 226, baseType: !128, size: 64, align: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !138, file: !16, line: 227, baseType: !159, size: 64, align: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !108, file: !16, line: 178, baseType: !164, size: 32, align: 32, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !54, line: 55, baseType: !83)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !108, file: !16, line: 180, baseType: !166, size: 64, align: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !168)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !108, file: !16, line: 182, baseType: !53, size: 32, align: 32, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !16, line: 183, baseType: !164, size: 32, align: 32, offset: 352)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !108, file: !16, line: 184, baseType: !164, size: 32, align: 32, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !108, file: !16, line: 186, baseType: !173, size: 64, align: 64, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !175, line: 37, baseType: !176)
!175 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !175, line: 39, size: 128, align: 64, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !176, file: !175, line: 41, baseType: !111, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !175, line: 42, baseType: !173, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !108, file: !16, line: 188, baseType: !106, size: 64, align: 64, offset: 512)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !108, file: !16, line: 189, baseType: !106, size: 64, align: 64, offset: 576)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !108, file: !16, line: 191, baseType: !183, size: 64, align: 64, offset: 640)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !108, file: !16, line: 193, baseType: !185, size: 64, align: 64, offset: 704)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !187)
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !59, file: !4, line: 151, baseType: !190, size: 64, align: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !48}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !59, file: !4, line: 152, baseType: !194, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!65, !48, !197, !73}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !59, file: !4, line: 155, baseType: !199, size: 64, align: 64, offset: 448)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!197, !48}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !50, file: !4, line: 103, baseType: !66, size: 64, align: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !50, file: !4, line: 104, baseType: !204, size: 64, align: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !205, line: 77, baseType: !206)
!205 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !205, line: 77, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !50, file: !4, line: 105, baseType: !204, size: 64, align: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !50, file: !4, line: 106, baseType: !66, size: 64, align: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !50, file: !4, line: 107, baseType: !164, size: 32, align: 32, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !50, file: !4, line: 109, baseType: !69, size: 64, align: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !50, file: !4, line: 110, baseType: !213, size: 64, align: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !215, line: 39, baseType: !216)
!215 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !215, line: 41, size: 192, align: 64, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !216, file: !215, line: 43, baseType: !66, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !216, file: !215, line: 44, baseType: !69, size: 64, align: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !216, file: !215, line: 45, baseType: !69, size: 64, align: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !50, file: !4, line: 111, baseType: !213, size: 64, align: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !50, file: !4, line: 112, baseType: !213, size: 64, align: 64, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !50, file: !4, line: 113, baseType: !224, size: 48, align: 8, offset: 704)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 48, align: 8, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 6)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !50, file: !4, line: 117, baseType: !164, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !50, file: !4, line: 118, baseType: !164, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !50, file: !4, line: 119, baseType: !164, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !50, file: !4, line: 120, baseType: !164, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !50, file: !4, line: 121, baseType: !164, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !50, file: !4, line: 122, baseType: !164, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !50, file: !4, line: 124, baseType: !111, size: 64, align: 64, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !50, file: !4, line: 125, baseType: !111, size: 64, align: 64, offset: 832)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !39, file: !38, line: 33, baseType: !55, size: 32, align: 32, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "GInputFunction", file: !237, line: 60, baseType: !238)
!237 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !112, !48, !55}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !242, line: 54, baseType: !46)
!242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/irssi/task1")
!243 = !{!244, !245}
!244 = distinct !DIGlobalVariable(name: "disconnects", scope: !0, file: !38, line: 36, type: !173, isLocal: true, isDefinition: true, variable: %struct._GSList** @disconnects)
!245 = distinct !DIGlobalVariable(name: "timeout_tag", scope: !0, file: !38, line: 38, type: !55, isLocal: true, isDefinition: true, variable: i32* @timeout_tag)
!246 = !{i32 2, !"Dwarf Version", i32 4}
!247 = !{i32 2, !"Debug Info Version", i32 3}
!248 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!249 = distinct !DISubprogram(name: "net_disconnect_later", scope: !38, file: !38, line: 93, type: !191, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!250 = !{}
!251 = !DILocalVariable(name: "handle", arg: 1, scope: !249, file: !38, line: 93, type: !48)
!252 = !DIExpression()
!253 = !DILocation(line: 93, column: 39, scope: !249)
!254 = !DILocalVariable(name: "rec", scope: !249, file: !38, line: 95, type: !36)
!255 = !DILocation(line: 95, column: 22, scope: !249)
!256 = !DILocation(line: 97, column: 32, scope: !249)
!257 = !DILocation(line: 97, column: 9, scope: !249)
!258 = !DILocation(line: 97, column: 6, scope: !249)
!259 = !DILocation(line: 98, column: 17, scope: !249)
!260 = !DILocation(line: 98, column: 2, scope: !249)
!261 = !DILocation(line: 98, column: 7, scope: !249)
!262 = !DILocation(line: 98, column: 15, scope: !249)
!263 = !DILocation(line: 99, column: 16, scope: !249)
!264 = !DILocation(line: 99, column: 2, scope: !249)
!265 = !DILocation(line: 99, column: 7, scope: !249)
!266 = !DILocation(line: 99, column: 14, scope: !249)
!267 = !DILocation(line: 100, column: 25, scope: !249)
!268 = !DILocation(line: 101, column: 44, scope: !249)
!269 = !DILocation(line: 100, column: 13, scope: !249)
!270 = !DILocation(line: 100, column: 2, scope: !249)
!271 = !DILocation(line: 100, column: 7, scope: !249)
!272 = !DILocation(line: 100, column: 11, scope: !249)
!273 = !DILocation(line: 103, column: 6, scope: !274)
!274 = distinct !DILexicalBlock(scope: !249, file: !38, line: 103, column: 6)
!275 = !DILocation(line: 103, column: 18, scope: !274)
!276 = !DILocation(line: 103, column: 6, scope: !249)
!277 = !DILocation(line: 104, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !38, line: 103, column: 25)
!279 = !DILocation(line: 104, column: 15, scope: !278)
!280 = !DILocation(line: 106, column: 2, scope: !278)
!281 = !DILocation(line: 108, column: 31, scope: !249)
!282 = !DILocation(line: 108, column: 44, scope: !249)
!283 = !DILocation(line: 108, column: 16, scope: !249)
!284 = !DILocation(line: 108, column: 14, scope: !249)
!285 = !DILocation(line: 109, column: 1, scope: !249)
!286 = distinct !DISubprogram(name: "sig_disconnect", scope: !38, file: !38, line: 49, type: !287, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !36}
!289 = !DILocalVariable(name: "rec", arg: 1, scope: !286, file: !38, line: 49, type: !36)
!290 = !DILocation(line: 49, column: 48, scope: !286)
!291 = !DILocalVariable(name: "buf", scope: !286, file: !38, line: 51, type: !292)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 4096, align: 8, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 512)
!295 = !DILocation(line: 51, column: 7, scope: !286)
!296 = !DILocalVariable(name: "count", scope: !286, file: !38, line: 52, type: !55)
!297 = !DILocation(line: 52, column: 6, scope: !286)
!298 = !DILocalVariable(name: "ret", scope: !286, file: !38, line: 52, type: !55)
!299 = !DILocation(line: 52, column: 13, scope: !286)
!300 = !DILocation(line: 56, column: 8, scope: !286)
!301 = !DILocation(line: 57, column: 2, scope: !286)
!302 = distinct !{!302, !301}
!303 = !DILocation(line: 58, column: 21, scope: !304)
!304 = distinct !DILexicalBlock(scope: !286, file: !38, line: 57, column: 5)
!305 = !DILocation(line: 58, column: 26, scope: !304)
!306 = !DILocation(line: 58, column: 34, scope: !304)
!307 = !DILocation(line: 58, column: 9, scope: !304)
!308 = !DILocation(line: 58, column: 7, scope: !304)
!309 = !DILocation(line: 59, column: 7, scope: !310)
!310 = distinct !DILexicalBlock(scope: !304, file: !38, line: 59, column: 7)
!311 = !DILocation(line: 59, column: 11, scope: !310)
!312 = !DILocation(line: 59, column: 7, scope: !304)
!313 = !DILocation(line: 61, column: 26, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !38, line: 59, column: 18)
!315 = !DILocation(line: 61, column: 4, scope: !314)
!316 = !DILocation(line: 62, column: 3, scope: !314)
!317 = !DILocation(line: 63, column: 22, scope: !304)
!318 = !DILocation(line: 64, column: 2, scope: !304)
!319 = !DILocation(line: 64, column: 11, scope: !320)
!320 = !DILexicalBlockFile(scope: !286, file: !38, discriminator: 1)
!321 = !DILocation(line: 64, column: 15, scope: !320)
!322 = !DILocation(line: 64, column: 30, scope: !320)
!323 = !DILocation(line: 64, column: 33, scope: !324)
!324 = !DILexicalBlockFile(scope: !286, file: !38, discriminator: 2)
!325 = !DILocation(line: 64, column: 39, scope: !324)
!326 = !DILocation(line: 64, column: 2, scope: !327)
!327 = !DILexicalBlockFile(scope: !304, file: !38, discriminator: 3)
!328 = !DILocation(line: 65, column: 1, scope: !286)
!329 = distinct !DISubprogram(name: "sig_timeout_disconnect", scope: !38, file: !38, line: 67, type: !330, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!330 = !DISubroutineType(types: !331)
!331 = !{!55}
!332 = !DILocalVariable(name: "rec", scope: !329, file: !38, line: 69, type: !36)
!333 = !DILocation(line: 69, column: 22, scope: !329)
!334 = !DILocalVariable(name: "tmp", scope: !329, file: !38, line: 70, type: !173)
!335 = !DILocation(line: 70, column: 10, scope: !329)
!336 = !DILocalVariable(name: "next", scope: !329, file: !38, line: 70, type: !173)
!337 = !DILocation(line: 70, column: 16, scope: !329)
!338 = !DILocalVariable(name: "now", scope: !329, file: !38, line: 71, type: !42)
!339 = !DILocation(line: 71, column: 9, scope: !329)
!340 = !DILocation(line: 74, column: 8, scope: !329)
!341 = !DILocation(line: 74, column: 6, scope: !329)
!342 = !DILocation(line: 75, column: 13, scope: !343)
!343 = distinct !DILexicalBlock(scope: !329, file: !38, line: 75, column: 2)
!344 = !DILocation(line: 75, column: 11, scope: !343)
!345 = !DILocation(line: 75, column: 7, scope: !343)
!346 = !DILocation(line: 75, column: 26, scope: !347)
!347 = !DILexicalBlockFile(scope: !348, file: !38, discriminator: 1)
!348 = distinct !DILexicalBlock(scope: !343, file: !38, line: 75, column: 2)
!349 = !DILocation(line: 75, column: 30, scope: !347)
!350 = !DILocation(line: 75, column: 2, scope: !347)
!351 = !DILocation(line: 76, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !38, line: 75, column: 50)
!353 = !DILocation(line: 76, column: 14, scope: !352)
!354 = !DILocation(line: 76, column: 7, scope: !352)
!355 = !DILocation(line: 77, column: 10, scope: !352)
!356 = !DILocation(line: 77, column: 15, scope: !352)
!357 = !DILocation(line: 77, column: 8, scope: !352)
!358 = !DILocation(line: 79, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !352, file: !38, line: 79, column: 7)
!360 = !DILocation(line: 79, column: 12, scope: !359)
!361 = !DILocation(line: 79, column: 19, scope: !359)
!362 = !DILocation(line: 79, column: 30, scope: !359)
!363 = !DILocation(line: 79, column: 27, scope: !359)
!364 = !DILocation(line: 79, column: 7, scope: !352)
!365 = !DILocation(line: 80, column: 26, scope: !359)
!366 = !DILocation(line: 80, column: 4, scope: !359)
!367 = !DILocation(line: 81, column: 2, scope: !352)
!368 = !DILocation(line: 75, column: 44, scope: !369)
!369 = !DILexicalBlockFile(scope: !348, file: !38, discriminator: 2)
!370 = !DILocation(line: 75, column: 42, scope: !369)
!371 = !DILocation(line: 75, column: 2, scope: !369)
!372 = distinct !{!372, !373}
!373 = !DILocation(line: 75, column: 2, scope: !329)
!374 = !DILocation(line: 83, column: 6, scope: !375)
!375 = distinct !DILexicalBlock(scope: !329, file: !38, line: 83, column: 6)
!376 = !DILocation(line: 83, column: 18, scope: !375)
!377 = !DILocation(line: 83, column: 6, scope: !329)
!378 = !DILocation(line: 86, column: 15, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !38, line: 83, column: 26)
!380 = !DILocation(line: 87, column: 2, scope: !379)
!381 = !DILocation(line: 88, column: 9, scope: !329)
!382 = !DILocation(line: 88, column: 21, scope: !329)
!383 = !DILocation(line: 88, column: 2, scope: !329)
!384 = distinct !DISubprogram(name: "net_disconnect_init", scope: !38, file: !38, line: 111, type: !161, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!385 = !DILocation(line: 113, column: 14, scope: !384)
!386 = !DILocation(line: 114, column: 14, scope: !384)
!387 = !DILocation(line: 115, column: 1, scope: !384)
!388 = distinct !DISubprogram(name: "net_disconnect_deinit", scope: !38, file: !38, line: 117, type: !161, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!389 = !DILocalVariable(name: "rec", scope: !388, file: !38, line: 119, type: !36)
!390 = !DILocation(line: 119, column: 22, scope: !388)
!391 = !DILocalVariable(name: "now", scope: !388, file: !38, line: 120, type: !42)
!392 = !DILocation(line: 120, column: 9, scope: !388)
!393 = !DILocalVariable(name: "max", scope: !388, file: !38, line: 120, type: !42)
!394 = !DILocation(line: 120, column: 14, scope: !388)
!395 = !DILocalVariable(name: "first", scope: !388, file: !38, line: 121, type: !55)
!396 = !DILocation(line: 121, column: 6, scope: !388)
!397 = !DILocalVariable(name: "fd", scope: !388, file: !38, line: 121, type: !55)
!398 = !DILocation(line: 121, column: 13, scope: !388)
!399 = !DILocalVariable(name: "tv", scope: !388, file: !38, line: 122, type: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !401, line: 30, size: 128, align: 64, elements: !402)
!401 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!402 = !{!403, !404}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !400, file: !401, line: 32, baseType: !44, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !400, file: !401, line: 33, baseType: !405, size: 64, align: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !45, line: 141, baseType: !46)
!406 = !DILocation(line: 122, column: 17, scope: !388)
!407 = !DILocalVariable(name: "set", scope: !388, file: !38, line: 123, type: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !242, line: 75, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 64, size: 1024, align: 64, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !409, file: !242, line: 72, baseType: !412, size: 1024, align: 64)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 1024, align: 64, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 16)
!415 = !DILocation(line: 123, column: 9, scope: !388)
!416 = !DILocation(line: 126, column: 8, scope: !388)
!417 = !DILocation(line: 126, column: 17, scope: !388)
!418 = !DILocation(line: 126, column: 6, scope: !388)
!419 = !DILocation(line: 127, column: 8, scope: !388)
!420 = !DILocation(line: 128, column: 2, scope: !388)
!421 = !DILocation(line: 128, column: 9, scope: !422)
!422 = !DILexicalBlockFile(scope: !388, file: !38, discriminator: 1)
!423 = !DILocation(line: 128, column: 21, scope: !422)
!424 = !DILocation(line: 128, column: 2, scope: !422)
!425 = !DILocation(line: 129, column: 9, scope: !426)
!426 = distinct !DILexicalBlock(scope: !388, file: !38, line: 128, column: 29)
!427 = !DILocation(line: 129, column: 22, scope: !426)
!428 = !DILocation(line: 129, column: 7, scope: !426)
!429 = !DILocation(line: 131, column: 9, scope: !426)
!430 = !DILocation(line: 131, column: 7, scope: !426)
!431 = !DILocation(line: 132, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !426, file: !38, line: 132, column: 7)
!433 = !DILocation(line: 132, column: 12, scope: !432)
!434 = !DILocation(line: 132, column: 19, scope: !432)
!435 = !DILocation(line: 132, column: 25, scope: !432)
!436 = !DILocation(line: 132, column: 22, scope: !432)
!437 = !DILocation(line: 132, column: 29, scope: !432)
!438 = !DILocation(line: 132, column: 32, scope: !439)
!439 = !DILexicalBlockFile(scope: !432, file: !38, discriminator: 1)
!440 = !DILocation(line: 132, column: 39, scope: !439)
!441 = !DILocation(line: 132, column: 36, scope: !439)
!442 = !DILocation(line: 132, column: 7, scope: !439)
!443 = !DILocation(line: 134, column: 26, scope: !444)
!444 = distinct !DILexicalBlock(scope: !432, file: !38, line: 132, column: 44)
!445 = !DILocation(line: 134, column: 4, scope: !444)
!446 = !DILocation(line: 135, column: 4, scope: !444)
!447 = distinct !{!447, !420}
!448 = !DILocation(line: 138, column: 47, scope: !426)
!449 = !DILocation(line: 138, column: 52, scope: !426)
!450 = !DILocation(line: 138, column: 22, scope: !426)
!451 = !DILocation(line: 138, column: 20, scope: !426)
!452 = !DILocation(line: 139, column: 2, scope: !426)
!453 = distinct !{!453, !452}
!454 = !DILocalVariable(name: "__d0", scope: !455, file: !38, line: 139, type: !55)
!455 = distinct !DILexicalBlock(scope: !426, file: !38, line: 139, column: 5)
!456 = !DILocation(line: 139, column: 11, scope: !455)
!457 = !DILocalVariable(name: "__d1", scope: !455, file: !38, line: 139, type: !55)
!458 = !DILocation(line: 139, column: 17, scope: !455)
!459 = !DILocation(line: 139, column: 5, scope: !460)
!460 = !DILexicalBlockFile(scope: !455, file: !38, discriminator: 1)
!461 = !DILocation(line: 139, column: 154, scope: !460)
!462 = !DILocation(line: 139, column: 23, scope: !460)
!463 = !{i32 428421}
!464 = !DILocation(line: 139, column: 34, scope: !460)
!465 = !DILocation(line: 140, column: 2, scope: !426)
!466 = !DILocation(line: 140, column: 4, scope: !426)
!467 = !DILocation(line: 140, column: 60, scope: !426)
!468 = !DILocation(line: 140, column: 11, scope: !426)
!469 = !DILocation(line: 140, column: 5, scope: !426)
!470 = !DILocation(line: 140, column: 39, scope: !426)
!471 = !DILocation(line: 141, column: 15, scope: !426)
!472 = !DILocation(line: 141, column: 15, scope: !473)
!473 = !DILexicalBlockFile(scope: !426, file: !38, discriminator: 1)
!474 = !DILocation(line: 141, column: 27, scope: !475)
!475 = !DILexicalBlockFile(scope: !426, file: !38, discriminator: 2)
!476 = !DILocation(line: 141, column: 31, scope: !475)
!477 = !DILocation(line: 141, column: 30, scope: !475)
!478 = !DILocation(line: 141, column: 15, scope: !475)
!479 = !DILocation(line: 141, column: 15, scope: !480)
!480 = !DILexicalBlockFile(scope: !426, file: !38, discriminator: 3)
!481 = !DILocation(line: 141, column: 6, scope: !480)
!482 = !DILocation(line: 141, column: 13, scope: !480)
!483 = !DILocation(line: 142, column: 16, scope: !426)
!484 = !DILocation(line: 142, column: 6, scope: !426)
!485 = !DILocation(line: 142, column: 14, scope: !426)
!486 = !DILocation(line: 143, column: 14, scope: !487)
!487 = distinct !DILexicalBlock(scope: !426, file: !38, line: 143, column: 7)
!488 = !DILocation(line: 143, column: 16, scope: !487)
!489 = !DILocation(line: 143, column: 7, scope: !487)
!490 = !DILocation(line: 143, column: 42, scope: !487)
!491 = !DILocation(line: 143, column: 46, scope: !487)
!492 = !DILocation(line: 144, column: 6, scope: !487)
!493 = !DILocation(line: 144, column: 8, scope: !487)
!494 = !DILocation(line: 144, column: 9, scope: !487)
!495 = !DILocation(line: 144, column: 63, scope: !487)
!496 = !DILocation(line: 144, column: 43, scope: !487)
!497 = !DILocation(line: 144, column: 45, scope: !487)
!498 = !DILocation(line: 143, column: 7, scope: !473)
!499 = !DILocation(line: 146, column: 19, scope: !500)
!500 = distinct !DILexicalBlock(scope: !487, file: !38, line: 144, column: 26)
!501 = !DILocation(line: 146, column: 4, scope: !500)
!502 = !DILocation(line: 147, column: 3, scope: !500)
!503 = !DILocation(line: 147, column: 14, scope: !504)
!504 = !DILexicalBlockFile(scope: !505, file: !38, discriminator: 1)
!505 = distinct !DILexicalBlock(scope: !487, file: !38, line: 147, column: 14)
!506 = !DILocation(line: 150, column: 4, scope: !507)
!507 = distinct !DILexicalBlock(scope: !505, file: !38, line: 147, column: 21)
!508 = !DILocation(line: 152, column: 10, scope: !507)
!509 = !DILocation(line: 152, column: 4, scope: !507)
!510 = !DILocation(line: 154, column: 10, scope: !507)
!511 = !DILocation(line: 155, column: 3, scope: !507)
!512 = !DILocation(line: 128, column: 2, scope: !513)
!513 = !DILexicalBlockFile(scope: !388, file: !38, discriminator: 2)
!514 = !DILocation(line: 157, column: 1, scope: !388)
!515 = distinct !DISubprogram(name: "net_disconnect_remove", scope: !38, file: !38, line: 40, type: !287, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !250)
!516 = !DILocalVariable(name: "rec", arg: 1, scope: !515, file: !38, line: 40, type: !36)
!517 = !DILocation(line: 40, column: 55, scope: !515)
!518 = !DILocation(line: 42, column: 31, scope: !515)
!519 = !DILocation(line: 42, column: 44, scope: !515)
!520 = !DILocation(line: 42, column: 16, scope: !515)
!521 = !DILocation(line: 42, column: 14, scope: !515)
!522 = !DILocation(line: 44, column: 18, scope: !515)
!523 = !DILocation(line: 44, column: 23, scope: !515)
!524 = !DILocation(line: 44, column: 2, scope: !515)
!525 = !DILocation(line: 45, column: 24, scope: !515)
!526 = !DILocation(line: 45, column: 29, scope: !515)
!527 = !DILocation(line: 45, column: 9, scope: !515)
!528 = !DILocation(line: 46, column: 9, scope: !515)
!529 = !DILocation(line: 46, column: 2, scope: !515)
!530 = !DILocation(line: 47, column: 1, scope: !515)
