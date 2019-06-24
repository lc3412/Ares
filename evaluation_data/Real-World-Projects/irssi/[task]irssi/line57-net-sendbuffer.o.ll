; ModuleID = './line57-net-sendbuffer.o.i'
source_filename = "./line57-net-sendbuffer.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._NET_SENDBUF_REC = type { %struct._GIOChannel*, %struct._LINEBUF_REC*, i32, i32, i32, i8*, i32, i8 }
%struct._LINEBUF_REC = type opaque
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }

@__func__.net_sendbuffer_create = private unnamed_addr constant [22 x i8] c"net_sendbuffer_create\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"handle != NULL\00", align 1
@__func__.net_sendbuffer_send = private unnamed_addr constant [20 x i8] c"net_sendbuffer_send\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.net_sendbuffer_handle = private unnamed_addr constant [22 x i8] c"net_sendbuffer_handle\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Dropping some data on an outgoing connection\00", align 1

; Function Attrs: nounwind uwtable
define %struct._NET_SENDBUF_REC* @net_sendbuffer_create(%struct._GIOChannel*, i32) #0 !dbg !262 {
  %3 = alloca %struct._NET_SENDBUF_REC*, align 8
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._NET_SENDBUF_REC*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !267, metadata !268), !dbg !269
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !270, metadata !268), !dbg !271
  call void @llvm.dbg.declare(metadata %struct._NET_SENDBUF_REC** %6, metadata !272, metadata !268), !dbg !273
  br label %7, !dbg !274, !llvm.loop !275

; <label>:7:                                      ; preds = %2
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !276
  %9 = icmp ne %struct._GIOChannel* %8, null, !dbg !280
  br i1 %9, label %10, label %11, !dbg !276

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !281

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.net_sendbuffer_create, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !284
  store %struct._NET_SENDBUF_REC* null, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !287
  br label %36, !dbg !287

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !288

; <label>:13:                                     ; preds = %12
  %14 = call noalias i8* @g_malloc0_n(i64 1, i64 48), !dbg !290
  %15 = bitcast i8* %14 to %struct._NET_SENDBUF_REC*, !dbg !291
  store %struct._NET_SENDBUF_REC* %15, %struct._NET_SENDBUF_REC** %6, align 8, !dbg !292
  %16 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %6, align 8, !dbg !293
  %17 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %16, i32 0, i32 2, !dbg !294
  store i32 -1, i32* %17, align 8, !dbg !295
  %18 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !296
  %19 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %6, align 8, !dbg !297
  %20 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %19, i32 0, i32 0, !dbg !298
  store %struct._GIOChannel* %18, %struct._GIOChannel** %20, align 8, !dbg !299
  %21 = load i32, i32* %5, align 4, !dbg !300
  %22 = icmp sgt i32 %21, 0, !dbg !301
  br i1 %22, label %23, label %25, !dbg !300

; <label>:23:                                     ; preds = %13
  %24 = load i32, i32* %5, align 4, !dbg !302
  br label %26, !dbg !304

; <label>:25:                                     ; preds = %13
  br label %26, !dbg !305

; <label>:26:                                     ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 8192, %25 ], !dbg !307
  %28 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %6, align 8, !dbg !309
  %29 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %28, i32 0, i32 3, !dbg !310
  store i32 %27, i32* %29, align 4, !dbg !311
  %30 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %6, align 8, !dbg !312
  %31 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %30, i32 0, i32 3, !dbg !313
  %32 = load i32, i32* %31, align 4, !dbg !313
  %33 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %6, align 8, !dbg !314
  %34 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %33, i32 0, i32 6, !dbg !315
  store i32 %32, i32* %34, align 8, !dbg !316
  %35 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %6, align 8, !dbg !317
  store %struct._NET_SENDBUF_REC* %35, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !318
  br label %36, !dbg !318

; <label>:36:                                     ; preds = %26, %11
  %37 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !319
  ret %struct._NET_SENDBUF_REC* %37, !dbg !319
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC*, i32) #0 !dbg !320 {
  %3 = alloca %struct._NET_SENDBUF_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._NET_SENDBUF_REC* %0, %struct._NET_SENDBUF_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._NET_SENDBUF_REC** %3, metadata !323, metadata !268), !dbg !324
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !325, metadata !268), !dbg !326
  %5 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !327
  %6 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %5, i32 0, i32 2, !dbg !329
  %7 = load i32, i32* %6, align 8, !dbg !329
  %8 = icmp ne i32 %7, -1, !dbg !330
  br i1 %8, label %9, label %14, !dbg !331

; <label>:9:                                      ; preds = %2
  %10 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !332
  %11 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %10, i32 0, i32 2, !dbg !334
  %12 = load i32, i32* %11, align 8, !dbg !334
  %13 = call i32 @g_source_remove(i32 %12), !dbg !335
  br label %14, !dbg !335

; <label>:14:                                     ; preds = %9, %2
  %15 = load i32, i32* %4, align 4, !dbg !336
  %16 = icmp ne i32 %15, 0, !dbg !336
  br i1 %16, label %17, label %21, !dbg !338

; <label>:17:                                     ; preds = %14
  %18 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !339
  %19 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %18, i32 0, i32 0, !dbg !341
  %20 = load %struct._GIOChannel*, %struct._GIOChannel** %19, align 8, !dbg !341
  call void @net_disconnect(%struct._GIOChannel* %20), !dbg !342
  br label %21, !dbg !342

; <label>:21:                                     ; preds = %17, %14
  %22 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !343
  %23 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %22, i32 0, i32 1, !dbg !345
  %24 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %23, align 8, !dbg !345
  %25 = icmp ne %struct._LINEBUF_REC* %24, null, !dbg !346
  br i1 %25, label %26, label %30, !dbg !347

; <label>:26:                                     ; preds = %21
  %27 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !348
  %28 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %27, i32 0, i32 1, !dbg !350
  %29 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %28, align 8, !dbg !350
  call void @line_split_free(%struct._LINEBUF_REC* %29), !dbg !351
  br label %30, !dbg !351

; <label>:30:                                     ; preds = %26, %21
  %31 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !352
  %32 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %31, i32 0, i32 5, !dbg !353
  %33 = load i8*, i8** %32, align 8, !dbg !353
  call void @g_free(i8* %33), !dbg !354
  %34 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !355
  %35 = bitcast %struct._NET_SENDBUF_REC* %34 to i8*, !dbg !355
  call void @g_free(i8* %35), !dbg !356
  ret void, !dbg !357
}

declare i32 @g_source_remove(i32) #2

declare void @net_disconnect(%struct._GIOChannel*) #2

declare void @line_split_free(%struct._LINEBUF_REC*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC*, i8*, i32) #0 !dbg !358 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._NET_SENDBUF_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._NET_SENDBUF_REC* %0, %struct._NET_SENDBUF_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._NET_SENDBUF_REC** %5, metadata !363, metadata !268), !dbg !364
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !365, metadata !268), !dbg !366
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !367, metadata !268), !dbg !368
  call void @llvm.dbg.declare(metadata i32* %8, metadata !369, metadata !268), !dbg !370
  br label %9, !dbg !371, !llvm.loop !372

; <label>:9:                                      ; preds = %3
  %10 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !373
  %11 = icmp ne %struct._NET_SENDBUF_REC* %10, null, !dbg !377
  br i1 %11, label %12, label %13, !dbg !373

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !378

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.net_sendbuffer_send, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !381
  store i32 -1, i32* %4, align 4, !dbg !384
  br label %79, !dbg !384

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !385

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !387, !llvm.loop !388

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %6, align 8, !dbg !389
  %18 = icmp ne i8* %17, null, !dbg !393
  br i1 %18, label %19, label %20, !dbg !389

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !394

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.net_sendbuffer_send, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !397
  store i32 -1, i32* %4, align 4, !dbg !400
  br label %79, !dbg !400

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !401

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %7, align 4, !dbg !403
  %24 = icmp sle i32 %23, 0, !dbg !405
  br i1 %24, label %25, label %26, !dbg !406

; <label>:25:                                     ; preds = %22
  store i32 0, i32* %4, align 4, !dbg !407
  br label %79, !dbg !407

; <label>:26:                                     ; preds = %22
  %27 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !409
  %28 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %27, i32 0, i32 5, !dbg !411
  %29 = load i8*, i8** %28, align 8, !dbg !411
  %30 = icmp eq i8* %29, null, !dbg !412
  br i1 %30, label %36, label %31, !dbg !413

; <label>:31:                                     ; preds = %26
  %32 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !414
  %33 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %32, i32 0, i32 4, !dbg !416
  %34 = load i32, i32* %33, align 8, !dbg !416
  %35 = icmp eq i32 %34, 0, !dbg !417
  br i1 %35, label %36, label %54, !dbg !418

; <label>:36:                                     ; preds = %31, %26
  %37 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !419
  %38 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %37, i32 0, i32 0, !dbg !421
  %39 = load %struct._GIOChannel*, %struct._GIOChannel** %38, align 8, !dbg !421
  %40 = load i8*, i8** %6, align 8, !dbg !422
  %41 = load i32, i32* %7, align 4, !dbg !423
  %42 = call i32 @net_transmit(%struct._GIOChannel* %39, i8* %40, i32 %41), !dbg !424
  store i32 %42, i32* %8, align 4, !dbg !425
  %43 = load i32, i32* %8, align 4, !dbg !426
  %44 = icmp slt i32 %43, 0, !dbg !428
  br i1 %44, label %45, label %46, !dbg !429

; <label>:45:                                     ; preds = %36
  store i32 -1, i32* %4, align 4, !dbg !430
  br label %79, !dbg !430

; <label>:46:                                     ; preds = %36
  %47 = load i32, i32* %8, align 4, !dbg !432
  %48 = load i32, i32* %7, align 4, !dbg !433
  %49 = sub nsw i32 %48, %47, !dbg !433
  store i32 %49, i32* %7, align 4, !dbg !433
  %50 = load i8*, i8** %6, align 8, !dbg !434
  %51 = load i32, i32* %8, align 4, !dbg !435
  %52 = sext i32 %51 to i64, !dbg !436
  %53 = getelementptr inbounds i8, i8* %50, i64 %52, !dbg !436
  store i8* %53, i8** %6, align 8, !dbg !437
  br label %54, !dbg !438

; <label>:54:                                     ; preds = %46, %31
  %55 = load i32, i32* %7, align 4, !dbg !439
  %56 = icmp sle i32 %55, 0, !dbg !441
  br i1 %56, label %57, label %58, !dbg !442

; <label>:57:                                     ; preds = %54
  store i32 0, i32* %4, align 4, !dbg !443
  br label %79, !dbg !443

; <label>:58:                                     ; preds = %54
  %59 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !444
  %60 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %59, i32 0, i32 2, !dbg !446
  %61 = load i32, i32* %60, align 8, !dbg !446
  %62 = icmp eq i32 %61, -1, !dbg !447
  br i1 %62, label %63, label %72, !dbg !448

; <label>:63:                                     ; preds = %58
  %64 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !449
  %65 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %64, i32 0, i32 0, !dbg !451
  %66 = load %struct._GIOChannel*, %struct._GIOChannel** %65, align 8, !dbg !451
  %67 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !452
  %68 = bitcast %struct._NET_SENDBUF_REC* %67 to i8*, !dbg !452
  %69 = call i32 @g_input_add(%struct._GIOChannel* %66, i32 2, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct._NET_SENDBUF_REC*)* @sig_sendbuffer to void (i8*, %struct._GIOChannel*, i32)*), i8* %68), !dbg !453
  %70 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !454
  %71 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %70, i32 0, i32 2, !dbg !455
  store i32 %69, i32* %71, align 8, !dbg !456
  br label %72, !dbg !457

; <label>:72:                                     ; preds = %63, %58
  %73 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !458
  %74 = load i8*, i8** %6, align 8, !dbg !459
  %75 = load i32, i32* %7, align 4, !dbg !460
  %76 = call i32 @buffer_add(%struct._NET_SENDBUF_REC* %73, i8* %74, i32 %75), !dbg !461
  %77 = icmp ne i32 %76, 0, !dbg !461
  %78 = select i1 %77, i32 0, i32 -1, !dbg !461
  store i32 %78, i32* %4, align 4, !dbg !462
  br label %79, !dbg !462

; <label>:79:                                     ; preds = %72, %57, %45, %25, %20, %13
  %80 = load i32, i32* %4, align 4, !dbg !463
  ret i32 %80, !dbg !463
}

declare i32 @net_transmit(%struct._GIOChannel*, i8*, i32) #2

declare i32 @g_input_add(%struct._GIOChannel*, i32, void (i8*, %struct._GIOChannel*, i32)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_sendbuffer(%struct._NET_SENDBUF_REC*) #0 !dbg !464 {
  %2 = alloca %struct._NET_SENDBUF_REC*, align 8
  store %struct._NET_SENDBUF_REC* %0, %struct._NET_SENDBUF_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._NET_SENDBUF_REC** %2, metadata !467, metadata !268), !dbg !468
  %3 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %2, align 8, !dbg !469
  %4 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %3, i32 0, i32 5, !dbg !471
  %5 = load i8*, i8** %4, align 8, !dbg !471
  %6 = icmp ne i8* %5, null, !dbg !472
  br i1 %6, label %7, label %13, !dbg !473

; <label>:7:                                      ; preds = %1
  %8 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %2, align 8, !dbg !474
  %9 = call i32 @buffer_send(%struct._NET_SENDBUF_REC* %8), !dbg !477
  %10 = icmp ne i32 %9, 0, !dbg !477
  br i1 %10, label %12, label %11, !dbg !478

; <label>:11:                                     ; preds = %7
  br label %20, !dbg !479

; <label>:12:                                     ; preds = %7
  br label %13, !dbg !480

; <label>:13:                                     ; preds = %12, %1
  %14 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %2, align 8, !dbg !481
  %15 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %14, i32 0, i32 2, !dbg !482
  %16 = load i32, i32* %15, align 8, !dbg !482
  %17 = call i32 @g_source_remove(i32 %16), !dbg !483
  %18 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %2, align 8, !dbg !484
  %19 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %18, i32 0, i32 2, !dbg !485
  store i32 -1, i32* %19, align 8, !dbg !486
  br label %20, !dbg !487

; <label>:20:                                     ; preds = %13, %11
  ret void, !dbg !488
}

; Function Attrs: nounwind uwtable
define internal i32 @buffer_add(%struct._NET_SENDBUF_REC*, i8*, i32) #0 !dbg !490 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._NET_SENDBUF_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._NET_SENDBUF_REC* %0, %struct._NET_SENDBUF_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._NET_SENDBUF_REC** %5, metadata !491, metadata !268), !dbg !492
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !493, metadata !268), !dbg !494
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !495, metadata !268), !dbg !496
  %8 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !497
  %9 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %8, i32 0, i32 5, !dbg !499
  %10 = load i8*, i8** %9, align 8, !dbg !499
  %11 = icmp eq i8* %10, null, !dbg !500
  br i1 %11, label %12, label %22, !dbg !501

; <label>:12:                                     ; preds = %3
  %13 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !502
  %14 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %13, i32 0, i32 3, !dbg !504
  %15 = load i32, i32* %14, align 4, !dbg !504
  %16 = sext i32 %15 to i64, !dbg !502
  %17 = call noalias i8* @g_malloc(i64 %16), !dbg !505
  %18 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !506
  %19 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %18, i32 0, i32 5, !dbg !507
  store i8* %17, i8** %19, align 8, !dbg !508
  %20 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !509
  %21 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %20, i32 0, i32 4, !dbg !510
  store i32 0, i32* %21, align 8, !dbg !511
  br label %22, !dbg !512

; <label>:22:                                     ; preds = %12, %3
  br label %23, !dbg !513

; <label>:23:                                     ; preds = %52, %22
  %24 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !514
  %25 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %24, i32 0, i32 4, !dbg !516
  %26 = load i32, i32* %25, align 8, !dbg !516
  %27 = load i32, i32* %7, align 4, !dbg !517
  %28 = add nsw i32 %26, %27, !dbg !518
  %29 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !519
  %30 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %29, i32 0, i32 3, !dbg !520
  %31 = load i32, i32* %30, align 4, !dbg !520
  %32 = icmp sgt i32 %28, %31, !dbg !521
  br i1 %32, label %33, label %67, !dbg !522

; <label>:33:                                     ; preds = %23
  %34 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !523
  %35 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %34, i32 0, i32 3, !dbg !526
  %36 = load i32, i32* %35, align 4, !dbg !526
  %37 = icmp sge i32 %36, 1048576, !dbg !527
  br i1 %37, label %38, label %52, !dbg !528

; <label>:38:                                     ; preds = %33
  %39 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !529
  %40 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %39, i32 0, i32 7, !dbg !532
  %41 = load i8, i8* %40, align 4, !dbg !532
  %42 = and i8 %41, 1, !dbg !532
  %43 = zext i8 %42 to i32, !dbg !532
  %44 = icmp ne i32 %43, 0, !dbg !529
  br i1 %44, label %46, label %45, !dbg !533

; <label>:45:                                     ; preds = %38
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0)), !dbg !534
  br label %46, !dbg !534

; <label>:46:                                     ; preds = %45, %38
  %47 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !535
  %48 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %47, i32 0, i32 7, !dbg !536
  %49 = load i8, i8* %48, align 4, !dbg !537
  %50 = and i8 %49, -2, !dbg !537
  %51 = or i8 %50, 1, !dbg !537
  store i8 %51, i8* %48, align 4, !dbg !537
  store i32 0, i32* %4, align 4, !dbg !538
  br label %84, !dbg !538

; <label>:52:                                     ; preds = %33
  %53 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !539
  %54 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %53, i32 0, i32 3, !dbg !540
  %55 = load i32, i32* %54, align 4, !dbg !541
  %56 = mul nsw i32 %55, 2, !dbg !541
  store i32 %56, i32* %54, align 4, !dbg !541
  %57 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !542
  %58 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %57, i32 0, i32 5, !dbg !543
  %59 = load i8*, i8** %58, align 8, !dbg !543
  %60 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !544
  %61 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %60, i32 0, i32 3, !dbg !545
  %62 = load i32, i32* %61, align 4, !dbg !545
  %63 = sext i32 %62 to i64, !dbg !544
  %64 = call i8* @g_realloc(i8* %59, i64 %63), !dbg !546
  %65 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !547
  %66 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %65, i32 0, i32 5, !dbg !548
  store i8* %64, i8** %66, align 8, !dbg !549
  br label %23, !dbg !550, !llvm.loop !552

; <label>:67:                                     ; preds = %23
  %68 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !553
  %69 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %68, i32 0, i32 5, !dbg !554
  %70 = load i8*, i8** %69, align 8, !dbg !554
  %71 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !555
  %72 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %71, i32 0, i32 4, !dbg !556
  %73 = load i32, i32* %72, align 8, !dbg !556
  %74 = sext i32 %73 to i64, !dbg !557
  %75 = getelementptr inbounds i8, i8* %70, i64 %74, !dbg !557
  %76 = load i8*, i8** %6, align 8, !dbg !558
  %77 = load i32, i32* %7, align 4, !dbg !559
  %78 = sext i32 %77 to i64, !dbg !559
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 %78, i32 1, i1 false), !dbg !560
  %79 = load i32, i32* %7, align 4, !dbg !561
  %80 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %5, align 8, !dbg !562
  %81 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %80, i32 0, i32 4, !dbg !563
  %82 = load i32, i32* %81, align 8, !dbg !564
  %83 = add nsw i32 %82, %79, !dbg !564
  store i32 %83, i32* %81, align 8, !dbg !564
  store i32 1, i32* %4, align 4, !dbg !565
  br label %84, !dbg !565

; <label>:84:                                     ; preds = %67, %46
  %85 = load i32, i32* %4, align 4, !dbg !566
  ret i32 %85, !dbg !566
}

; Function Attrs: nounwind uwtable
define i32 @net_sendbuffer_receive_line(%struct._NET_SENDBUF_REC*, i8**, i32) #0 !dbg !567 {
  %4 = alloca %struct._NET_SENDBUF_REC*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2048 x i8], align 16
  %8 = alloca i32, align 4
  store %struct._NET_SENDBUF_REC* %0, %struct._NET_SENDBUF_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NET_SENDBUF_REC** %4, metadata !571, metadata !268), !dbg !572
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !573, metadata !268), !dbg !574
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !575, metadata !268), !dbg !576
  call void @llvm.dbg.declare(metadata [2048 x i8]* %7, metadata !577, metadata !268), !dbg !581
  call void @llvm.dbg.declare(metadata i32* %8, metadata !582, metadata !268), !dbg !583
  store i32 0, i32* %8, align 4, !dbg !583
  %9 = load i32, i32* %6, align 4, !dbg !584
  %10 = icmp ne i32 %9, 0, !dbg !584
  br i1 %10, label %11, label %17, !dbg !586

; <label>:11:                                     ; preds = %3
  %12 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %4, align 8, !dbg !587
  %13 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %12, i32 0, i32 0, !dbg !588
  %14 = load %struct._GIOChannel*, %struct._GIOChannel** %13, align 8, !dbg !588
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i32 0, i32 0, !dbg !589
  %16 = call i32 @net_receive(%struct._GIOChannel* %14, i8* %15, i32 2048), !dbg !590
  store i32 %16, i32* %8, align 4, !dbg !591
  br label %17, !dbg !592

; <label>:17:                                     ; preds = %11, %3
  %18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i32 0, i32 0, !dbg !593
  %19 = load i32, i32* %8, align 4, !dbg !594
  %20 = load i8**, i8*** %5, align 8, !dbg !595
  %21 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %4, align 8, !dbg !596
  %22 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %21, i32 0, i32 1, !dbg !597
  %23 = call i32 @line_split(i8* %18, i32 %19, i8** %20, %struct._LINEBUF_REC** %22), !dbg !598
  ret i32 %23, !dbg !599
}

declare i32 @net_receive(%struct._GIOChannel*, i8*, i32) #2

declare i32 @line_split(i8*, i32, i8**, %struct._LINEBUF_REC**) #2

; Function Attrs: nounwind uwtable
define void @net_sendbuffer_flush(%struct._NET_SENDBUF_REC*) #0 !dbg !600 {
  %2 = alloca %struct._NET_SENDBUF_REC*, align 8
  %3 = alloca i32, align 4
  store %struct._NET_SENDBUF_REC* %0, %struct._NET_SENDBUF_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._NET_SENDBUF_REC** %2, metadata !601, metadata !268), !dbg !602
  call void @llvm.dbg.declare(metadata i32* %3, metadata !603, metadata !268), !dbg !604
  %4 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %2, align 8, !dbg !605
  %5 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %4, i32 0, i32 5, !dbg !607
  %6 = load i8*, i8** %5, align 8, !dbg !607
  %7 = icmp eq i8* %6, null, !dbg !608
  br i1 %7, label %8, label %9, !dbg !609

; <label>:8:                                      ; preds = %1
  br label %25, !dbg !610

; <label>:9:                                      ; preds = %1
  %10 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %2, align 8, !dbg !611
  %11 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %10, i32 0, i32 0, !dbg !612
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %11, align 8, !dbg !612
  %13 = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %12), !dbg !613
  store i32 %13, i32* %3, align 4, !dbg !614
  %14 = load i32, i32* %3, align 4, !dbg !615
  %15 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 4, i32 0), !dbg !616
  br label %16, !dbg !617

; <label>:16:                                     ; preds = %21, %9
  %17 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %2, align 8, !dbg !618
  %18 = call i32 @buffer_send(%struct._NET_SENDBUF_REC* %17), !dbg !620
  %19 = icmp ne i32 %18, 0, !dbg !621
  %20 = xor i1 %19, true, !dbg !621
  br i1 %20, label %21, label %22, !dbg !622

; <label>:21:                                     ; preds = %16
  br label %16, !dbg !623, !llvm.loop !625

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %3, align 4, !dbg !626
  %24 = call i32 (i32, i32, ...) @fcntl(i32 %23, i32 4, i32 2048), !dbg !627
  br label %25, !dbg !628

; <label>:25:                                     ; preds = %22, %8
  ret void, !dbg !629
}

declare i32 @g_io_channel_unix_get_fd(%struct._GIOChannel*) #2

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @buffer_send(%struct._NET_SENDBUF_REC*) #0 !dbg !630 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._NET_SENDBUF_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._NET_SENDBUF_REC* %0, %struct._NET_SENDBUF_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._NET_SENDBUF_REC** %3, metadata !633, metadata !268), !dbg !634
  call void @llvm.dbg.declare(metadata i32* %4, metadata !635, metadata !268), !dbg !636
  %5 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !637
  %6 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %5, i32 0, i32 0, !dbg !638
  %7 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !638
  %8 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !639
  %9 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %8, i32 0, i32 5, !dbg !640
  %10 = load i8*, i8** %9, align 8, !dbg !640
  %11 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !641
  %12 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %11, i32 0, i32 4, !dbg !642
  %13 = load i32, i32* %12, align 8, !dbg !642
  %14 = call i32 @net_transmit(%struct._GIOChannel* %7, i8* %10, i32 %13), !dbg !643
  store i32 %14, i32* %4, align 4, !dbg !644
  %15 = load i32, i32* %4, align 4, !dbg !645
  %16 = icmp slt i32 %15, 0, !dbg !647
  br i1 %16, label %23, label %17, !dbg !648

; <label>:17:                                     ; preds = %1
  %18 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !649
  %19 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %18, i32 0, i32 4, !dbg !651
  %20 = load i32, i32* %19, align 8, !dbg !651
  %21 = load i32, i32* %4, align 4, !dbg !652
  %22 = icmp eq i32 %20, %21, !dbg !653
  br i1 %22, label %23, label %41, !dbg !654

; <label>:23:                                     ; preds = %17, %1
  %24 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !655
  %25 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %24, i32 0, i32 6, !dbg !657
  %26 = load i32, i32* %25, align 8, !dbg !657
  %27 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !658
  %28 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %27, i32 0, i32 3, !dbg !659
  store i32 %26, i32* %28, align 4, !dbg !660
  %29 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !661
  %30 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %29, i32 0, i32 5, !dbg !662
  %31 = load i8*, i8** %30, align 8, !dbg !662
  %32 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !663
  %33 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %32, i32 0, i32 3, !dbg !664
  %34 = load i32, i32* %33, align 4, !dbg !664
  %35 = sext i32 %34 to i64, !dbg !663
  %36 = call i8* @g_realloc(i8* %31, i64 %35), !dbg !665
  %37 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !666
  %38 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %37, i32 0, i32 5, !dbg !667
  store i8* %36, i8** %38, align 8, !dbg !668
  %39 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !669
  %40 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %39, i32 0, i32 4, !dbg !670
  store i32 0, i32* %40, align 8, !dbg !671
  store i32 1, i32* %2, align 4, !dbg !672
  br label %66, !dbg !672

; <label>:41:                                     ; preds = %17
  %42 = load i32, i32* %4, align 4, !dbg !673
  %43 = icmp sgt i32 %42, 0, !dbg !675
  br i1 %43, label %44, label %65, !dbg !676

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %4, align 4, !dbg !677
  %46 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !679
  %47 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %46, i32 0, i32 4, !dbg !680
  %48 = load i32, i32* %47, align 8, !dbg !681
  %49 = sub nsw i32 %48, %45, !dbg !681
  store i32 %49, i32* %47, align 8, !dbg !681
  br label %50, !dbg !682, !llvm.loop !683

; <label>:50:                                     ; preds = %44
  %51 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !684
  %52 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %51, i32 0, i32 5, !dbg !687
  %53 = load i8*, i8** %52, align 8, !dbg !687
  %54 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !688
  %55 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %54, i32 0, i32 5, !dbg !689
  %56 = load i8*, i8** %55, align 8, !dbg !689
  %57 = load i32, i32* %4, align 4, !dbg !690
  %58 = sext i32 %57 to i64, !dbg !691
  %59 = getelementptr inbounds i8, i8* %56, i64 %58, !dbg !691
  %60 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !692
  %61 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %60, i32 0, i32 4, !dbg !693
  %62 = load i32, i32* %61, align 8, !dbg !693
  %63 = sext i32 %62 to i64, !dbg !694
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %53, i8* %59, i64 %63, i32 1, i1 false), !dbg !695
  br label %64, !dbg !696

; <label>:64:                                     ; preds = %50
  br label %65, !dbg !697

; <label>:65:                                     ; preds = %64, %41
  store i32 0, i32* %2, align 4, !dbg !698
  br label %66, !dbg !698

; <label>:66:                                     ; preds = %65, %23
  %67 = load i32, i32* %2, align 4, !dbg !699
  ret i32 %67, !dbg !699
}

; Function Attrs: nounwind uwtable
define %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC*) #0 !dbg !700 {
  %2 = alloca %struct._GIOChannel*, align 8
  %3 = alloca %struct._NET_SENDBUF_REC*, align 8
  store %struct._NET_SENDBUF_REC* %0, %struct._NET_SENDBUF_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._NET_SENDBUF_REC** %3, metadata !703, metadata !268), !dbg !704
  br label %4, !dbg !705, !llvm.loop !706

; <label>:4:                                      ; preds = %1
  %5 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !707
  %6 = icmp ne %struct._NET_SENDBUF_REC* %5, null, !dbg !711
  br i1 %6, label %7, label %8, !dbg !707

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !712

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.net_sendbuffer_handle, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !715
  store %struct._GIOChannel* null, %struct._GIOChannel** %2, align 8, !dbg !718
  br label %14, !dbg !718

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !719

; <label>:10:                                     ; preds = %9
  %11 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %3, align 8, !dbg !721
  %12 = getelementptr inbounds %struct._NET_SENDBUF_REC, %struct._NET_SENDBUF_REC* %11, i32 0, i32 0, !dbg !722
  %13 = load %struct._GIOChannel*, %struct._GIOChannel** %12, align 8, !dbg !722
  store %struct._GIOChannel* %13, %struct._GIOChannel** %2, align 8, !dbg !723
  br label %14, !dbg !723

; <label>:14:                                     ; preds = %10, %8
  %15 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !724
  ret %struct._GIOChannel* %15, !dbg !724
}

declare noalias i8* @g_malloc(i64) #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare i8* @g_realloc(i8*, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!259, !260}
!llvm.ident = !{!261}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !47)
!1 = !DIFile(filename: "line57-net-sendbuffer.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 51, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46}
!38 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!39 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!40 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!41 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!42 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!43 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!44 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!45 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!46 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!47 = !{!48, !49, !53, !55, !255}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !51, line: 46, baseType: !52)
!51 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !57, line: 102, baseType: !58)
!57 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !59, line: 7, size: 384, align: 64, elements: !60)
!59 = !DIFile(filename: "net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!60 = !{!61, !245, !249, !250, !251, !252, !253, !254}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !58, file: !59, line: 8, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !65)
!65 = !{!66, !69, !212, !213, !218, !219, !220, !221, !222, !231, !232, !233, !237, !238, !239, !240, !241, !242, !243, !244}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !64, file: !4, line: 100, baseType: !67, size: 32, align: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !51, line: 49, baseType: !68)
!68 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !64, file: !4, line: 101, baseType: !70, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !73)
!73 = !{!74, !96, !102, !109, !113, !199, !203, !208}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !72, file: !4, line: 133, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !62, !49, !79, !82, !83}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !80, line: 66, baseType: !81)
!80 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!81 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !86, line: 42, baseType: !87)
!86 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !86, line: 44, size: 128, align: 64, elements: !88)
!88 = !{!89, !94, !95}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !87, file: !86, line: 46, baseType: !90, size: 32, align: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !91, line: 36, baseType: !92)
!91 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !80, line: 45, baseType: !93)
!93 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !87, file: !86, line: 47, baseType: !67, size: 32, align: 32, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !87, file: !86, line: 48, baseType: !49, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !72, file: !4, line: 138, baseType: !97, size: 64, align: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!78, !62, !100, !79, !82, !83}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !72, file: !4, line: 143, baseType: !103, size: 64, align: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!78, !62, !106, !108, !83}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !80, line: 51, baseType: !107)
!107 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !72, file: !4, line: 147, baseType: !110, size: 64, align: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!78, !62, !83}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !72, file: !4, line: 149, baseType: !114, size: 64, align: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!117, !62, !198}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !120)
!120 = !{!121, !123, !144, !173, !175, !179, !180, !181, !182, !190, !191, !192, !194}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !119, file: !16, line: 174, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !51, line: 77, baseType: !48)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !119, file: !16, line: 175, baseType: !124, size: 64, align: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !127)
!127 = !{!128, !132, !133}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !126, file: !16, line: 198, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !122}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !126, file: !16, line: 199, baseType: !129, size: 64, align: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !126, file: !16, line: 200, baseType: !134, size: 64, align: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !122, !117, !137, !143}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !122}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !51, line: 50, baseType: !67)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !119, file: !16, line: 177, baseType: !145, size: 64, align: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !149)
!149 = !{!150, !155, !159, !163, !167, !168}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !148, file: !16, line: 216, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!142, !117, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !148, file: !16, line: 218, baseType: !156, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!142, !117}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !148, file: !16, line: 219, baseType: !160, size: 64, align: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!142, !117, !138, !122}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !148, file: !16, line: 222, baseType: !164, size: 64, align: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !117}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !148, file: !16, line: 226, baseType: !138, size: 64, align: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !148, file: !16, line: 227, baseType: !169, size: 64, align: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !119, file: !16, line: 178, baseType: !174, size: 32, align: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !51, line: 55, baseType: !93)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !119, file: !16, line: 180, baseType: !176, size: 64, align: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !178)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !119, file: !16, line: 182, baseType: !67, size: 32, align: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !16, line: 183, baseType: !174, size: 32, align: 32, offset: 352)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !119, file: !16, line: 184, baseType: !174, size: 32, align: 32, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !119, file: !16, line: 186, baseType: !183, size: 64, align: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !185, line: 37, baseType: !186)
!185 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !185, line: 39, size: 128, align: 64, elements: !187)
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !186, file: !185, line: 41, baseType: !122, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !185, line: 42, baseType: !183, size: 64, align: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !119, file: !16, line: 188, baseType: !117, size: 64, align: 64, offset: 512)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !16, line: 189, baseType: !117, size: 64, align: 64, offset: 576)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !119, file: !16, line: 191, baseType: !193, size: 64, align: 64, offset: 640)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !119, file: !16, line: 193, baseType: !195, size: 64, align: 64, offset: 704)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !197)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !72, file: !4, line: 151, baseType: !200, size: 64, align: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !62}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !72, file: !4, line: 152, baseType: !204, size: 64, align: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!78, !62, !207, !83}
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !72, file: !4, line: 155, baseType: !209, size: 64, align: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!207, !62}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !64, file: !4, line: 103, baseType: !49, size: 64, align: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !64, file: !4, line: 104, baseType: !214, size: 64, align: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !215, line: 77, baseType: !216)
!215 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !215, line: 77, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !64, file: !4, line: 105, baseType: !214, size: 64, align: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !64, file: !4, line: 106, baseType: !49, size: 64, align: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !64, file: !4, line: 107, baseType: !174, size: 32, align: 32, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !64, file: !4, line: 109, baseType: !79, size: 64, align: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !64, file: !4, line: 110, baseType: !223, size: 64, align: 64, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !225, line: 39, baseType: !226)
!225 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !225, line: 41, size: 192, align: 64, elements: !227)
!227 = !{!228, !229, !230}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !226, file: !225, line: 43, baseType: !49, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !226, file: !225, line: 44, baseType: !79, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !226, file: !225, line: 45, baseType: !79, size: 64, align: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !64, file: !4, line: 111, baseType: !223, size: 64, align: 64, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !64, file: !4, line: 112, baseType: !223, size: 64, align: 64, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !64, file: !4, line: 113, baseType: !234, size: 48, align: 8, offset: 704)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 48, align: 8, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 6)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !64, file: !4, line: 117, baseType: !174, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !64, file: !4, line: 118, baseType: !174, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !64, file: !4, line: 119, baseType: !174, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !64, file: !4, line: 120, baseType: !174, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !64, file: !4, line: 121, baseType: !174, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !64, file: !4, line: 122, baseType: !174, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !64, file: !4, line: 124, baseType: !122, size: 64, align: 64, offset: 768)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !64, file: !4, line: 125, baseType: !122, size: 64, align: 64, offset: 832)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !58, file: !59, line: 9, baseType: !246, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !57, line: 101, baseType: !248)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !57, line: 101, flags: DIFlagFwdDecl)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !58, file: !59, line: 11, baseType: !68, size: 32, align: 32, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !58, file: !59, line: 12, baseType: !68, size: 32, align: 32, offset: 160)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !58, file: !59, line: 13, baseType: !68, size: 32, align: 32, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !58, file: !59, line: 14, baseType: !193, size: 64, align: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !58, file: !59, line: 15, baseType: !68, size: 32, align: 32, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !58, file: !59, line: 16, baseType: !93, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "GInputFunction", file: !57, line: 60, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !48, !62, !68}
!259 = !{i32 2, !"Dwarf Version", i32 4}
!260 = !{i32 2, !"Debug Info Version", i32 3}
!261 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!262 = distinct !DISubprogram(name: "net_sendbuffer_create", scope: !263, file: !263, line: 29, type: !264, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!263 = !DIFile(filename: "net-sendbuffer.c", directory: "/home/lichi/Desktop/irssi/task1")
!264 = !DISubroutineType(types: !265)
!265 = !{!55, !62, !68}
!266 = !{}
!267 = !DILocalVariable(name: "handle", arg: 1, scope: !262, file: !263, line: 29, type: !62)
!268 = !DIExpression()
!269 = !DILocation(line: 29, column: 52, scope: !262)
!270 = !DILocalVariable(name: "bufsize", arg: 2, scope: !262, file: !263, line: 29, type: !68)
!271 = !DILocation(line: 29, column: 64, scope: !262)
!272 = !DILocalVariable(name: "rec", scope: !262, file: !263, line: 31, type: !55)
!273 = !DILocation(line: 31, column: 19, scope: !262)
!274 = !DILocation(line: 33, column: 2, scope: !262)
!275 = distinct !{!275, !274}
!276 = !DILocation(line: 33, column: 10, scope: !277)
!277 = !DILexicalBlockFile(scope: !278, file: !263, discriminator: 1)
!278 = distinct !DILexicalBlock(scope: !279, file: !263, line: 33, column: 10)
!279 = distinct !DILexicalBlock(scope: !262, file: !263, line: 33, column: 4)
!280 = !DILocation(line: 33, column: 17, scope: !277)
!281 = !DILocation(line: 33, column: 5, scope: !282)
!282 = !DILexicalBlockFile(scope: !283, file: !263, discriminator: 2)
!283 = distinct !DILexicalBlock(scope: !278, file: !263, line: 33, column: 3)
!284 = !DILocation(line: 33, column: 14, scope: !285)
!285 = !DILexicalBlockFile(scope: !286, file: !263, discriminator: 3)
!286 = distinct !DILexicalBlock(scope: !278, file: !263, line: 33, column: 12)
!287 = !DILocation(line: 33, column: 101, scope: !285)
!288 = !DILocation(line: 33, column: 7, scope: !289)
!289 = !DILexicalBlockFile(scope: !279, file: !263, discriminator: 4)
!290 = !DILocation(line: 35, column: 29, scope: !262)
!291 = !DILocation(line: 35, column: 9, scope: !262)
!292 = !DILocation(line: 35, column: 6, scope: !262)
!293 = !DILocation(line: 36, column: 9, scope: !262)
!294 = !DILocation(line: 36, column: 14, scope: !262)
!295 = !DILocation(line: 36, column: 23, scope: !262)
!296 = !DILocation(line: 37, column: 16, scope: !262)
!297 = !DILocation(line: 37, column: 2, scope: !262)
!298 = !DILocation(line: 37, column: 7, scope: !262)
!299 = !DILocation(line: 37, column: 14, scope: !262)
!300 = !DILocation(line: 38, column: 17, scope: !262)
!301 = !DILocation(line: 38, column: 25, scope: !262)
!302 = !DILocation(line: 38, column: 31, scope: !303)
!303 = !DILexicalBlockFile(scope: !262, file: !263, discriminator: 1)
!304 = !DILocation(line: 38, column: 17, scope: !303)
!305 = !DILocation(line: 38, column: 17, scope: !306)
!306 = !DILexicalBlockFile(scope: !262, file: !263, discriminator: 2)
!307 = !DILocation(line: 38, column: 17, scope: !308)
!308 = !DILexicalBlockFile(scope: !262, file: !263, discriminator: 3)
!309 = !DILocation(line: 38, column: 2, scope: !308)
!310 = !DILocation(line: 38, column: 7, scope: !308)
!311 = !DILocation(line: 38, column: 15, scope: !308)
!312 = !DILocation(line: 39, column: 21, scope: !262)
!313 = !DILocation(line: 39, column: 26, scope: !262)
!314 = !DILocation(line: 39, column: 2, scope: !262)
!315 = !DILocation(line: 39, column: 7, scope: !262)
!316 = !DILocation(line: 39, column: 19, scope: !262)
!317 = !DILocation(line: 41, column: 9, scope: !262)
!318 = !DILocation(line: 41, column: 2, scope: !262)
!319 = !DILocation(line: 42, column: 1, scope: !262)
!320 = distinct !DISubprogram(name: "net_sendbuffer_destroy", scope: !263, file: !263, line: 45, type: !321, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !55, !68}
!323 = !DILocalVariable(name: "rec", arg: 1, scope: !320, file: !263, line: 45, type: !55)
!324 = !DILocation(line: 45, column: 46, scope: !320)
!325 = !DILocalVariable(name: "close", arg: 2, scope: !320, file: !263, line: 45, type: !68)
!326 = !DILocation(line: 45, column: 55, scope: !320)
!327 = !DILocation(line: 47, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !320, file: !263, line: 47, column: 13)
!329 = !DILocation(line: 47, column: 18, scope: !328)
!330 = !DILocation(line: 47, column: 27, scope: !328)
!331 = !DILocation(line: 47, column: 13, scope: !320)
!332 = !DILocation(line: 47, column: 50, scope: !333)
!333 = !DILexicalBlockFile(scope: !328, file: !263, discriminator: 1)
!334 = !DILocation(line: 47, column: 55, scope: !333)
!335 = !DILocation(line: 47, column: 34, scope: !333)
!336 = !DILocation(line: 48, column: 6, scope: !337)
!337 = distinct !DILexicalBlock(scope: !320, file: !263, line: 48, column: 6)
!338 = !DILocation(line: 48, column: 6, scope: !320)
!339 = !DILocation(line: 48, column: 28, scope: !340)
!340 = !DILexicalBlockFile(scope: !337, file: !263, discriminator: 1)
!341 = !DILocation(line: 48, column: 33, scope: !340)
!342 = !DILocation(line: 48, column: 13, scope: !340)
!343 = !DILocation(line: 49, column: 6, scope: !344)
!344 = distinct !DILexicalBlock(scope: !320, file: !263, line: 49, column: 6)
!345 = !DILocation(line: 49, column: 11, scope: !344)
!346 = !DILocation(line: 49, column: 22, scope: !344)
!347 = !DILocation(line: 49, column: 6, scope: !320)
!348 = !DILocation(line: 49, column: 46, scope: !349)
!349 = !DILexicalBlockFile(scope: !344, file: !263, discriminator: 1)
!350 = !DILocation(line: 49, column: 51, scope: !349)
!351 = !DILocation(line: 49, column: 30, scope: !349)
!352 = !DILocation(line: 50, column: 9, scope: !320)
!353 = !DILocation(line: 50, column: 14, scope: !320)
!354 = !DILocation(line: 50, column: 2, scope: !320)
!355 = !DILocation(line: 51, column: 9, scope: !320)
!356 = !DILocation(line: 51, column: 2, scope: !320)
!357 = !DILocation(line: 52, column: 1, scope: !320)
!358 = distinct !DISubprogram(name: "net_sendbuffer_send", scope: !263, file: !263, line: 113, type: !359, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!359 = !DISubroutineType(types: !360)
!360 = !{!68, !55, !361, !68}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!363 = !DILocalVariable(name: "rec", arg: 1, scope: !358, file: !263, line: 113, type: !55)
!364 = !DILocation(line: 113, column: 42, scope: !358)
!365 = !DILocalVariable(name: "data", arg: 2, scope: !358, file: !263, line: 113, type: !361)
!366 = !DILocation(line: 113, column: 59, scope: !358)
!367 = !DILocalVariable(name: "size", arg: 3, scope: !358, file: !263, line: 113, type: !68)
!368 = !DILocation(line: 113, column: 69, scope: !358)
!369 = !DILocalVariable(name: "ret", scope: !358, file: !263, line: 115, type: !68)
!370 = !DILocation(line: 115, column: 6, scope: !358)
!371 = !DILocation(line: 117, column: 2, scope: !358)
!372 = distinct !{!372, !371}
!373 = !DILocation(line: 117, column: 10, scope: !374)
!374 = !DILexicalBlockFile(scope: !375, file: !263, discriminator: 1)
!375 = distinct !DILexicalBlock(scope: !376, file: !263, line: 117, column: 10)
!376 = distinct !DILexicalBlock(scope: !358, file: !263, line: 117, column: 4)
!377 = !DILocation(line: 117, column: 14, scope: !374)
!378 = !DILocation(line: 117, column: 5, scope: !379)
!379 = !DILexicalBlockFile(scope: !380, file: !263, discriminator: 2)
!380 = distinct !DILexicalBlock(scope: !375, file: !263, line: 117, column: 3)
!381 = !DILocation(line: 117, column: 14, scope: !382)
!382 = !DILexicalBlockFile(scope: !383, file: !263, discriminator: 3)
!383 = distinct !DILexicalBlock(scope: !375, file: !263, line: 117, column: 12)
!384 = !DILocation(line: 117, column: 98, scope: !382)
!385 = !DILocation(line: 117, column: 114, scope: !386)
!386 = !DILexicalBlockFile(scope: !376, file: !263, discriminator: 4)
!387 = !DILocation(line: 118, column: 2, scope: !358)
!388 = distinct !{!388, !387}
!389 = !DILocation(line: 118, column: 10, scope: !390)
!390 = !DILexicalBlockFile(scope: !391, file: !263, discriminator: 1)
!391 = distinct !DILexicalBlock(scope: !392, file: !263, line: 118, column: 10)
!392 = distinct !DILexicalBlock(scope: !358, file: !263, line: 118, column: 4)
!393 = !DILocation(line: 118, column: 15, scope: !390)
!394 = !DILocation(line: 118, column: 5, scope: !395)
!395 = !DILexicalBlockFile(scope: !396, file: !263, discriminator: 2)
!396 = distinct !DILexicalBlock(scope: !391, file: !263, line: 118, column: 3)
!397 = !DILocation(line: 118, column: 14, scope: !398)
!398 = !DILexicalBlockFile(scope: !399, file: !263, discriminator: 3)
!399 = distinct !DILexicalBlock(scope: !391, file: !263, line: 118, column: 12)
!400 = !DILocation(line: 118, column: 99, scope: !398)
!401 = !DILocation(line: 118, column: 115, scope: !402)
!402 = !DILexicalBlockFile(scope: !392, file: !263, discriminator: 4)
!403 = !DILocation(line: 119, column: 6, scope: !404)
!404 = distinct !DILexicalBlock(scope: !358, file: !263, line: 119, column: 6)
!405 = !DILocation(line: 119, column: 11, scope: !404)
!406 = !DILocation(line: 119, column: 6, scope: !358)
!407 = !DILocation(line: 119, column: 17, scope: !408)
!408 = !DILexicalBlockFile(scope: !404, file: !263, discriminator: 1)
!409 = !DILocation(line: 121, column: 6, scope: !410)
!410 = distinct !DILexicalBlock(scope: !358, file: !263, line: 121, column: 6)
!411 = !DILocation(line: 121, column: 11, scope: !410)
!412 = !DILocation(line: 121, column: 18, scope: !410)
!413 = !DILocation(line: 121, column: 25, scope: !410)
!414 = !DILocation(line: 121, column: 28, scope: !415)
!415 = !DILexicalBlockFile(scope: !410, file: !263, discriminator: 1)
!416 = !DILocation(line: 121, column: 33, scope: !415)
!417 = !DILocation(line: 121, column: 40, scope: !415)
!418 = !DILocation(line: 121, column: 6, scope: !415)
!419 = !DILocation(line: 123, column: 22, scope: !420)
!420 = distinct !DILexicalBlock(scope: !410, file: !263, line: 121, column: 46)
!421 = !DILocation(line: 123, column: 27, scope: !420)
!422 = !DILocation(line: 123, column: 35, scope: !420)
!423 = !DILocation(line: 123, column: 41, scope: !420)
!424 = !DILocation(line: 123, column: 9, scope: !420)
!425 = !DILocation(line: 123, column: 7, scope: !420)
!426 = !DILocation(line: 124, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !420, file: !263, line: 124, column: 7)
!428 = !DILocation(line: 124, column: 11, scope: !427)
!429 = !DILocation(line: 124, column: 7, scope: !420)
!430 = !DILocation(line: 124, column: 16, scope: !431)
!431 = !DILexicalBlockFile(scope: !427, file: !263, discriminator: 1)
!432 = !DILocation(line: 125, column: 11, scope: !420)
!433 = !DILocation(line: 125, column: 8, scope: !420)
!434 = !DILocation(line: 126, column: 26, scope: !420)
!435 = !DILocation(line: 126, column: 34, scope: !420)
!436 = !DILocation(line: 126, column: 32, scope: !420)
!437 = !DILocation(line: 126, column: 8, scope: !420)
!438 = !DILocation(line: 127, column: 2, scope: !420)
!439 = !DILocation(line: 129, column: 6, scope: !440)
!440 = distinct !DILexicalBlock(scope: !358, file: !263, line: 129, column: 6)
!441 = !DILocation(line: 129, column: 11, scope: !440)
!442 = !DILocation(line: 129, column: 6, scope: !358)
!443 = !DILocation(line: 130, column: 3, scope: !440)
!444 = !DILocation(line: 133, column: 6, scope: !445)
!445 = distinct !DILexicalBlock(scope: !358, file: !263, line: 133, column: 6)
!446 = !DILocation(line: 133, column: 11, scope: !445)
!447 = !DILocation(line: 133, column: 20, scope: !445)
!448 = !DILocation(line: 133, column: 6, scope: !358)
!449 = !DILocation(line: 135, column: 16, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !263, line: 133, column: 27)
!451 = !DILocation(line: 135, column: 21, scope: !450)
!452 = !DILocation(line: 136, column: 42, scope: !450)
!453 = !DILocation(line: 135, column: 4, scope: !450)
!454 = !DILocation(line: 134, column: 3, scope: !450)
!455 = !DILocation(line: 134, column: 8, scope: !450)
!456 = !DILocation(line: 134, column: 17, scope: !450)
!457 = !DILocation(line: 137, column: 2, scope: !450)
!458 = !DILocation(line: 139, column: 20, scope: !358)
!459 = !DILocation(line: 139, column: 25, scope: !358)
!460 = !DILocation(line: 139, column: 31, scope: !358)
!461 = !DILocation(line: 139, column: 9, scope: !358)
!462 = !DILocation(line: 139, column: 2, scope: !358)
!463 = !DILocation(line: 140, column: 1, scope: !358)
!464 = distinct !DISubprogram(name: "sig_sendbuffer", scope: !263, file: !263, line: 75, type: !465, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !55}
!467 = !DILocalVariable(name: "rec", arg: 1, scope: !464, file: !263, line: 75, type: !55)
!468 = !DILocation(line: 75, column: 45, scope: !464)
!469 = !DILocation(line: 77, column: 6, scope: !470)
!470 = distinct !DILexicalBlock(scope: !464, file: !263, line: 77, column: 6)
!471 = !DILocation(line: 77, column: 11, scope: !470)
!472 = !DILocation(line: 77, column: 18, scope: !470)
!473 = !DILocation(line: 77, column: 6, scope: !464)
!474 = !DILocation(line: 78, column: 20, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !263, line: 78, column: 7)
!476 = distinct !DILexicalBlock(scope: !470, file: !263, line: 77, column: 26)
!477 = !DILocation(line: 78, column: 8, scope: !475)
!478 = !DILocation(line: 78, column: 7, scope: !476)
!479 = !DILocation(line: 79, column: 25, scope: !475)
!480 = !DILocation(line: 80, column: 2, scope: !476)
!481 = !DILocation(line: 82, column: 18, scope: !464)
!482 = !DILocation(line: 82, column: 23, scope: !464)
!483 = !DILocation(line: 82, column: 2, scope: !464)
!484 = !DILocation(line: 83, column: 2, scope: !464)
!485 = !DILocation(line: 83, column: 7, scope: !464)
!486 = !DILocation(line: 83, column: 16, scope: !464)
!487 = !DILocation(line: 84, column: 1, scope: !464)
!488 = !DILocation(line: 84, column: 1, scope: !489)
!489 = !DILexicalBlockFile(scope: !464, file: !263, discriminator: 1)
!490 = distinct !DISubprogram(name: "buffer_add", scope: !263, file: !263, line: 87, type: !359, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!491 = !DILocalVariable(name: "rec", arg: 1, scope: !490, file: !263, line: 87, type: !55)
!492 = !DILocation(line: 87, column: 40, scope: !490)
!493 = !DILocalVariable(name: "data", arg: 2, scope: !490, file: !263, line: 87, type: !361)
!494 = !DILocation(line: 87, column: 57, scope: !490)
!495 = !DILocalVariable(name: "size", arg: 3, scope: !490, file: !263, line: 87, type: !68)
!496 = !DILocation(line: 87, column: 67, scope: !490)
!497 = !DILocation(line: 89, column: 6, scope: !498)
!498 = distinct !DILexicalBlock(scope: !490, file: !263, line: 89, column: 6)
!499 = !DILocation(line: 89, column: 11, scope: !498)
!500 = !DILocation(line: 89, column: 18, scope: !498)
!501 = !DILocation(line: 89, column: 6, scope: !490)
!502 = !DILocation(line: 90, column: 26, scope: !503)
!503 = distinct !DILexicalBlock(scope: !498, file: !263, line: 89, column: 26)
!504 = !DILocation(line: 90, column: 31, scope: !503)
!505 = !DILocation(line: 90, column: 17, scope: !503)
!506 = !DILocation(line: 90, column: 3, scope: !503)
!507 = !DILocation(line: 90, column: 8, scope: !503)
!508 = !DILocation(line: 90, column: 15, scope: !503)
!509 = !DILocation(line: 91, column: 3, scope: !503)
!510 = !DILocation(line: 91, column: 8, scope: !503)
!511 = !DILocation(line: 91, column: 15, scope: !503)
!512 = !DILocation(line: 92, column: 2, scope: !503)
!513 = !DILocation(line: 94, column: 2, scope: !490)
!514 = !DILocation(line: 94, column: 9, scope: !515)
!515 = !DILexicalBlockFile(scope: !490, file: !263, discriminator: 1)
!516 = !DILocation(line: 94, column: 14, scope: !515)
!517 = !DILocation(line: 94, column: 21, scope: !515)
!518 = !DILocation(line: 94, column: 20, scope: !515)
!519 = !DILocation(line: 94, column: 28, scope: !515)
!520 = !DILocation(line: 94, column: 33, scope: !515)
!521 = !DILocation(line: 94, column: 26, scope: !515)
!522 = !DILocation(line: 94, column: 2, scope: !515)
!523 = !DILocation(line: 95, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !263, line: 95, column: 7)
!525 = distinct !DILexicalBlock(scope: !490, file: !263, line: 94, column: 42)
!526 = !DILocation(line: 95, column: 12, scope: !524)
!527 = !DILocation(line: 95, column: 20, scope: !524)
!528 = !DILocation(line: 95, column: 7, scope: !525)
!529 = !DILocation(line: 96, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !263, line: 96, column: 8)
!531 = distinct !DILexicalBlock(scope: !524, file: !263, line: 95, column: 32)
!532 = !DILocation(line: 96, column: 14, scope: !530)
!533 = !DILocation(line: 96, column: 8, scope: !531)
!534 = !DILocation(line: 97, column: 5, scope: !530)
!535 = !DILocation(line: 98, column: 4, scope: !531)
!536 = !DILocation(line: 98, column: 9, scope: !531)
!537 = !DILocation(line: 98, column: 14, scope: !531)
!538 = !DILocation(line: 99, column: 4, scope: !531)
!539 = !DILocation(line: 101, column: 3, scope: !525)
!540 = !DILocation(line: 101, column: 8, scope: !525)
!541 = !DILocation(line: 101, column: 16, scope: !525)
!542 = !DILocation(line: 102, column: 27, scope: !525)
!543 = !DILocation(line: 102, column: 32, scope: !525)
!544 = !DILocation(line: 102, column: 40, scope: !525)
!545 = !DILocation(line: 102, column: 45, scope: !525)
!546 = !DILocation(line: 102, column: 17, scope: !525)
!547 = !DILocation(line: 102, column: 3, scope: !525)
!548 = !DILocation(line: 102, column: 8, scope: !525)
!549 = !DILocation(line: 102, column: 15, scope: !525)
!550 = !DILocation(line: 94, column: 2, scope: !551)
!551 = !DILexicalBlockFile(scope: !490, file: !263, discriminator: 2)
!552 = distinct !{!552, !513}
!553 = !DILocation(line: 105, column: 9, scope: !490)
!554 = !DILocation(line: 105, column: 14, scope: !490)
!555 = !DILocation(line: 105, column: 21, scope: !490)
!556 = !DILocation(line: 105, column: 26, scope: !490)
!557 = !DILocation(line: 105, column: 20, scope: !490)
!558 = !DILocation(line: 105, column: 34, scope: !490)
!559 = !DILocation(line: 105, column: 40, scope: !490)
!560 = !DILocation(line: 105, column: 2, scope: !490)
!561 = !DILocation(line: 106, column: 17, scope: !490)
!562 = !DILocation(line: 106, column: 2, scope: !490)
!563 = !DILocation(line: 106, column: 7, scope: !490)
!564 = !DILocation(line: 106, column: 14, scope: !490)
!565 = !DILocation(line: 107, column: 2, scope: !490)
!566 = !DILocation(line: 108, column: 1, scope: !490)
!567 = distinct !DISubprogram(name: "net_sendbuffer_receive_line", scope: !263, file: !263, line: 142, type: !568, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!568 = !DISubroutineType(types: !569)
!569 = !{!68, !55, !570, !68}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!571 = !DILocalVariable(name: "rec", arg: 1, scope: !567, file: !263, line: 142, type: !55)
!572 = !DILocation(line: 142, column: 50, scope: !567)
!573 = !DILocalVariable(name: "str", arg: 2, scope: !567, file: !263, line: 142, type: !570)
!574 = !DILocation(line: 142, column: 62, scope: !567)
!575 = !DILocalVariable(name: "read_socket", arg: 3, scope: !567, file: !263, line: 142, type: !68)
!576 = !DILocation(line: 142, column: 71, scope: !567)
!577 = !DILocalVariable(name: "tmpbuf", scope: !567, file: !263, line: 144, type: !578)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 16384, align: 8, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 2048)
!581 = !DILocation(line: 144, column: 7, scope: !567)
!582 = !DILocalVariable(name: "recvlen", scope: !567, file: !263, line: 145, type: !68)
!583 = !DILocation(line: 145, column: 6, scope: !567)
!584 = !DILocation(line: 147, column: 6, scope: !585)
!585 = distinct !DILexicalBlock(scope: !567, file: !263, line: 147, column: 6)
!586 = !DILocation(line: 147, column: 6, scope: !567)
!587 = !DILocation(line: 148, column: 25, scope: !585)
!588 = !DILocation(line: 148, column: 30, scope: !585)
!589 = !DILocation(line: 148, column: 38, scope: !585)
!590 = !DILocation(line: 148, column: 13, scope: !585)
!591 = !DILocation(line: 148, column: 11, scope: !585)
!592 = !DILocation(line: 148, column: 3, scope: !585)
!593 = !DILocation(line: 150, column: 20, scope: !567)
!594 = !DILocation(line: 150, column: 28, scope: !567)
!595 = !DILocation(line: 150, column: 37, scope: !567)
!596 = !DILocation(line: 150, column: 43, scope: !567)
!597 = !DILocation(line: 150, column: 48, scope: !567)
!598 = !DILocation(line: 150, column: 9, scope: !567)
!599 = !DILocation(line: 150, column: 2, scope: !567)
!600 = distinct !DISubprogram(name: "net_sendbuffer_flush", scope: !263, file: !263, line: 154, type: !465, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!601 = !DILocalVariable(name: "rec", arg: 1, scope: !600, file: !263, line: 154, type: !55)
!602 = !DILocation(line: 154, column: 44, scope: !600)
!603 = !DILocalVariable(name: "handle", scope: !600, file: !263, line: 156, type: !68)
!604 = !DILocation(line: 156, column: 6, scope: !600)
!605 = !DILocation(line: 158, column: 6, scope: !606)
!606 = distinct !DILexicalBlock(scope: !600, file: !263, line: 158, column: 6)
!607 = !DILocation(line: 158, column: 11, scope: !606)
!608 = !DILocation(line: 158, column: 18, scope: !606)
!609 = !DILocation(line: 158, column: 6, scope: !600)
!610 = !DILocation(line: 159, column: 3, scope: !606)
!611 = !DILocation(line: 162, column: 36, scope: !600)
!612 = !DILocation(line: 162, column: 41, scope: !600)
!613 = !DILocation(line: 162, column: 11, scope: !600)
!614 = !DILocation(line: 162, column: 9, scope: !600)
!615 = !DILocation(line: 163, column: 8, scope: !600)
!616 = !DILocation(line: 163, column: 2, scope: !600)
!617 = !DILocation(line: 164, column: 2, scope: !600)
!618 = !DILocation(line: 164, column: 22, scope: !619)
!619 = !DILexicalBlockFile(scope: !600, file: !263, discriminator: 1)
!620 = !DILocation(line: 164, column: 10, scope: !619)
!621 = !DILocation(line: 164, column: 9, scope: !619)
!622 = !DILocation(line: 164, column: 2, scope: !619)
!623 = !DILocation(line: 164, column: 2, scope: !624)
!624 = !DILexicalBlockFile(scope: !600, file: !263, discriminator: 2)
!625 = distinct !{!625, !617}
!626 = !DILocation(line: 165, column: 8, scope: !600)
!627 = !DILocation(line: 165, column: 2, scope: !600)
!628 = !DILocation(line: 166, column: 1, scope: !600)
!629 = !DILocation(line: 166, column: 1, scope: !619)
!630 = distinct !DISubprogram(name: "buffer_send", scope: !263, file: !263, line: 55, type: !631, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!631 = !DISubroutineType(types: !632)
!632 = !{!68, !55}
!633 = !DILocalVariable(name: "rec", arg: 1, scope: !630, file: !263, line: 55, type: !55)
!634 = !DILocation(line: 55, column: 41, scope: !630)
!635 = !DILocalVariable(name: "ret", scope: !630, file: !263, line: 57, type: !68)
!636 = !DILocation(line: 57, column: 6, scope: !630)
!637 = !DILocation(line: 59, column: 21, scope: !630)
!638 = !DILocation(line: 59, column: 26, scope: !630)
!639 = !DILocation(line: 59, column: 34, scope: !630)
!640 = !DILocation(line: 59, column: 39, scope: !630)
!641 = !DILocation(line: 59, column: 47, scope: !630)
!642 = !DILocation(line: 59, column: 52, scope: !630)
!643 = !DILocation(line: 59, column: 8, scope: !630)
!644 = !DILocation(line: 59, column: 6, scope: !630)
!645 = !DILocation(line: 60, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !630, file: !263, line: 60, column: 6)
!647 = !DILocation(line: 60, column: 10, scope: !646)
!648 = !DILocation(line: 60, column: 14, scope: !646)
!649 = !DILocation(line: 60, column: 17, scope: !650)
!650 = !DILexicalBlockFile(scope: !646, file: !263, discriminator: 1)
!651 = !DILocation(line: 60, column: 22, scope: !650)
!652 = !DILocation(line: 60, column: 32, scope: !650)
!653 = !DILocation(line: 60, column: 29, scope: !650)
!654 = !DILocation(line: 60, column: 6, scope: !650)
!655 = !DILocation(line: 62, column: 18, scope: !656)
!656 = distinct !DILexicalBlock(scope: !646, file: !263, line: 60, column: 37)
!657 = !DILocation(line: 62, column: 23, scope: !656)
!658 = !DILocation(line: 62, column: 3, scope: !656)
!659 = !DILocation(line: 62, column: 8, scope: !656)
!660 = !DILocation(line: 62, column: 16, scope: !656)
!661 = !DILocation(line: 63, column: 27, scope: !656)
!662 = !DILocation(line: 63, column: 32, scope: !656)
!663 = !DILocation(line: 63, column: 40, scope: !656)
!664 = !DILocation(line: 63, column: 45, scope: !656)
!665 = !DILocation(line: 63, column: 17, scope: !656)
!666 = !DILocation(line: 63, column: 3, scope: !656)
!667 = !DILocation(line: 63, column: 8, scope: !656)
!668 = !DILocation(line: 63, column: 15, scope: !656)
!669 = !DILocation(line: 64, column: 3, scope: !656)
!670 = !DILocation(line: 64, column: 8, scope: !656)
!671 = !DILocation(line: 64, column: 15, scope: !656)
!672 = !DILocation(line: 65, column: 3, scope: !656)
!673 = !DILocation(line: 68, column: 6, scope: !674)
!674 = distinct !DILexicalBlock(scope: !630, file: !263, line: 68, column: 6)
!675 = !DILocation(line: 68, column: 10, scope: !674)
!676 = !DILocation(line: 68, column: 6, scope: !630)
!677 = !DILocation(line: 69, column: 32, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !263, line: 68, column: 15)
!679 = !DILocation(line: 69, column: 17, scope: !678)
!680 = !DILocation(line: 69, column: 22, scope: !678)
!681 = !DILocation(line: 69, column: 29, scope: !678)
!682 = !DILocation(line: 70, column: 3, scope: !678)
!683 = distinct !{!683, !682}
!684 = !DILocation(line: 70, column: 18, scope: !685)
!685 = !DILexicalBlockFile(scope: !686, file: !263, discriminator: 1)
!686 = distinct !DILexicalBlock(scope: !678, file: !263, line: 70, column: 6)
!687 = !DILocation(line: 70, column: 23, scope: !685)
!688 = !DILocation(line: 70, column: 33, scope: !685)
!689 = !DILocation(line: 70, column: 38, scope: !685)
!690 = !DILocation(line: 70, column: 45, scope: !685)
!691 = !DILocation(line: 70, column: 44, scope: !685)
!692 = !DILocation(line: 70, column: 52, scope: !685)
!693 = !DILocation(line: 70, column: 57, scope: !685)
!694 = !DILocation(line: 70, column: 51, scope: !685)
!695 = !DILocation(line: 70, column: 8, scope: !685)
!696 = !DILocation(line: 70, column: 67, scope: !685)
!697 = !DILocation(line: 71, column: 2, scope: !678)
!698 = !DILocation(line: 72, column: 2, scope: !630)
!699 = !DILocation(line: 73, column: 1, scope: !630)
!700 = distinct !DISubprogram(name: "net_sendbuffer_handle", scope: !263, file: !263, line: 169, type: !701, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !266)
!701 = !DISubroutineType(types: !702)
!702 = !{!62, !55}
!703 = !DILocalVariable(name: "rec", arg: 1, scope: !700, file: !263, line: 169, type: !55)
!704 = !DILocation(line: 169, column: 52, scope: !700)
!705 = !DILocation(line: 171, column: 2, scope: !700)
!706 = distinct !{!706, !705}
!707 = !DILocation(line: 171, column: 10, scope: !708)
!708 = !DILexicalBlockFile(scope: !709, file: !263, discriminator: 1)
!709 = distinct !DILexicalBlock(scope: !710, file: !263, line: 171, column: 10)
!710 = distinct !DILexicalBlock(scope: !700, file: !263, line: 171, column: 4)
!711 = !DILocation(line: 171, column: 14, scope: !708)
!712 = !DILocation(line: 171, column: 5, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !263, discriminator: 2)
!714 = distinct !DILexicalBlock(scope: !709, file: !263, line: 171, column: 3)
!715 = !DILocation(line: 171, column: 14, scope: !716)
!716 = !DILexicalBlockFile(scope: !717, file: !263, discriminator: 3)
!717 = distinct !DILexicalBlock(scope: !709, file: !263, line: 171, column: 12)
!718 = !DILocation(line: 171, column: 98, scope: !716)
!719 = !DILocation(line: 171, column: 7, scope: !720)
!720 = !DILexicalBlockFile(scope: !710, file: !263, discriminator: 4)
!721 = !DILocation(line: 173, column: 9, scope: !700)
!722 = !DILocation(line: 173, column: 14, scope: !700)
!723 = !DILocation(line: 173, column: 2, scope: !700)
!724 = !DILocation(line: 174, column: 1, scope: !700)
