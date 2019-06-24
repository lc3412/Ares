; ModuleID = '/home/lichi/Desktop/genwqe/[task]lib--__libDDCB.o/[inter]lib--ddcb_card.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]lib--__libDDCB.o/[inter]lib--ddcb_card.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ddcb_accel_funcs = type { i32, i8*, i8* (i32, i32, i32*, i64, i64)*, i32 (i8*)*, i32 (i8*, %struct.ddcb_cmd*)*, i8* (i8*, i32)*, i64 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)*, i32 (i8*, i32, i64)*, i32 (i8*, i32, i32)*, i64 (i8*)*, i64 (i8*)*, i64 (i8*)*, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64)*, i8* (i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (%struct._IO_FILE*)*, %union.pthread_mutex_t, i64, i64, i64, i64, i64, i64, i8* }
%struct.ddcb_cmd = type { i64, i64, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i64, i64, [64 x i8], %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, [96 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.card_dev_t = type opaque
%struct.genwqe_ddcb_cmd = type { i64, i64, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i64, i64, [64 x i8], %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i64, [96 x i8] }

@accel_funcs = internal global %struct.ddcb_accel_funcs { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* (i32, i32, i32*, i64, i64)* @card_open, i32 (i8*)* @card_close, i32 (i8*, %struct.ddcb_cmd*)* @ddcb_execute, i8* (i8*, i32)* @_card_strerror, i64 (i8*, i32, i32*)* @card_read_reg64, i32 (i8*, i32, i32*)* @card_read_reg32, i32 (i8*, i32, i64)* @card_write_reg64, i32 (i8*, i32, i32)* @card_write_reg32, i64 (i8*)* @_card_get_app_id, i64 (i8*)* @_card_get_queue_work_time, i64 (i8*)* @_card_get_frequency, void (i8*, %struct._IO_FILE*)* @card_dump_hardware_version, i32 (i8*, i8*, i64, i32)* @card_pin_memory, i32 (i8*, i8*, i64)* @card_unpin_memory, i8* (i8*, i64)* @card_malloc, i32 (i8*, i8*, i64)* @card_free, i32 (%struct._IO_FILE*)* @_card_dump_statistics, %union.pthread_mutex_t zeroinitializer, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i8* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"GENWQE\00", align 1
@_card_get_frequency.speed_grade = internal constant [4 x i32] [i32 250, i32 200, i32 166, i32 175], align 16
@.str.1 = private unnamed_addr constant [63 x i8] c" Version Reg:        0x%016llx\0A Appl. Reg:          0x%016llx\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @genwqe_card_init, i8* null }]

; Function Attrs: nounwind uwtable
define internal void @genwqe_card_init() #0 !dbg !265 {
  %1 = call i32 @ddcb_register_accelerator(%struct.ddcb_accel_funcs* @accel_funcs), !dbg !268
  ret void, !dbg !269
}

declare i32 @ddcb_register_accelerator(%struct.ddcb_accel_funcs*) #1

; Function Attrs: nounwind uwtable
define internal i8* @card_open(i32, i32, i32*, i64, i64) #0 !dbg !270 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !271, metadata !272), !dbg !273
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !274, metadata !272), !dbg !275
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !276, metadata !272), !dbg !277
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !278, metadata !272), !dbg !279
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !280, metadata !272), !dbg !281
  %11 = load i32, i32* %6, align 4, !dbg !282
  %12 = load i32, i32* %7, align 4, !dbg !283
  %13 = load i32*, i32** %8, align 8, !dbg !284
  %14 = load i64, i64* %9, align 8, !dbg !285
  %15 = load i64, i64* %10, align 8, !dbg !286
  %16 = call %struct.card_dev_t* @genwqe_card_open(i32 %11, i32 %12, i32* %13, i64 %14, i64 %15), !dbg !287
  %17 = bitcast %struct.card_dev_t* %16 to i8*, !dbg !287
  ret i8* %17, !dbg !288
}

; Function Attrs: nounwind uwtable
define internal i32 @card_close(i8*) #0 !dbg !289 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !290, metadata !272), !dbg !291
  %3 = load i8*, i8** %2, align 8, !dbg !292
  %4 = bitcast i8* %3 to %struct.card_dev_t*, !dbg !292
  %5 = call i32 @genwqe_card_close(%struct.card_dev_t* %4), !dbg !293
  ret i32 %5, !dbg !294
}

; Function Attrs: nounwind uwtable
define internal i32 @ddcb_execute(i8*, %struct.ddcb_cmd*) #0 !dbg !295 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ddcb_cmd*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !296, metadata !272), !dbg !297
  store %struct.ddcb_cmd* %1, %struct.ddcb_cmd** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ddcb_cmd** %4, metadata !298, metadata !272), !dbg !299
  %5 = load i8*, i8** %3, align 8, !dbg !300
  %6 = bitcast i8* %5 to %struct.card_dev_t*, !dbg !300
  %7 = load %struct.ddcb_cmd*, %struct.ddcb_cmd** %4, align 8, !dbg !301
  %8 = bitcast %struct.ddcb_cmd* %7 to %struct.genwqe_ddcb_cmd*, !dbg !302
  %9 = call i32 @genwqe_card_execute_ddcb(%struct.card_dev_t* %6, %struct.genwqe_ddcb_cmd* %8), !dbg !303
  ret i32 %9, !dbg !304
}

; Function Attrs: nounwind uwtable
define internal i8* @_card_strerror(i8*, i32) #0 !dbg !305 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !306, metadata !272), !dbg !307
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !308, metadata !272), !dbg !309
  %5 = load i32, i32* %4, align 4, !dbg !310
  %6 = call i8* @card_strerror(i32 %5), !dbg !311
  ret i8* %6, !dbg !312
}

; Function Attrs: nounwind uwtable
define internal i64 @card_read_reg64(i8*, i32, i32*) #0 !dbg !313 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !314, metadata !272), !dbg !315
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !316, metadata !272), !dbg !317
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !318, metadata !272), !dbg !319
  %7 = load i8*, i8** %4, align 8, !dbg !320
  %8 = bitcast i8* %7 to %struct.card_dev_t*, !dbg !320
  %9 = load i32, i32* %5, align 4, !dbg !321
  %10 = load i32*, i32** %6, align 8, !dbg !322
  %11 = call i64 @genwqe_card_read_reg64(%struct.card_dev_t* %8, i32 %9, i32* %10), !dbg !323
  ret i64 %11, !dbg !324
}

; Function Attrs: nounwind uwtable
define internal i32 @card_read_reg32(i8*, i32, i32*) #0 !dbg !325 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !326, metadata !272), !dbg !327
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !328, metadata !272), !dbg !329
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !330, metadata !272), !dbg !331
  %7 = load i8*, i8** %4, align 8, !dbg !332
  %8 = bitcast i8* %7 to %struct.card_dev_t*, !dbg !332
  %9 = load i32, i32* %5, align 4, !dbg !333
  %10 = load i32*, i32** %6, align 8, !dbg !334
  %11 = call i32 @genwqe_card_read_reg32(%struct.card_dev_t* %8, i32 %9, i32* %10), !dbg !335
  ret i32 %11, !dbg !336
}

; Function Attrs: nounwind uwtable
define internal i32 @card_write_reg64(i8*, i32, i64) #0 !dbg !337 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !338, metadata !272), !dbg !339
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !340, metadata !272), !dbg !341
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !342, metadata !272), !dbg !343
  %7 = load i8*, i8** %4, align 8, !dbg !344
  %8 = bitcast i8* %7 to %struct.card_dev_t*, !dbg !344
  %9 = load i32, i32* %5, align 4, !dbg !345
  %10 = load i64, i64* %6, align 8, !dbg !346
  %11 = call i32 @genwqe_card_write_reg64(%struct.card_dev_t* %8, i32 %9, i64 %10), !dbg !347
  ret i32 %11, !dbg !348
}

; Function Attrs: nounwind uwtable
define internal i32 @card_write_reg32(i8*, i32, i32) #0 !dbg !349 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !350, metadata !272), !dbg !351
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !352, metadata !272), !dbg !353
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !354, metadata !272), !dbg !355
  %7 = load i8*, i8** %4, align 8, !dbg !356
  %8 = bitcast i8* %7 to %struct.card_dev_t*, !dbg !356
  %9 = load i32, i32* %5, align 4, !dbg !357
  %10 = load i32, i32* %6, align 4, !dbg !358
  %11 = call i32 @genwqe_card_write_reg32(%struct.card_dev_t* %8, i32 %9, i32 %10), !dbg !359
  ret i32 %11, !dbg !360
}

; Function Attrs: nounwind uwtable
define internal i64 @_card_get_app_id(i8*) #0 !dbg !361 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !362, metadata !272), !dbg !363
  %3 = load i8*, i8** %2, align 8, !dbg !364
  %4 = bitcast i8* %3 to %struct.card_dev_t*, !dbg !364
  %5 = call i64 @card_get_app_id(%struct.card_dev_t* %4), !dbg !365
  ret i64 %5, !dbg !366
}

; Function Attrs: nounwind uwtable
define internal i64 @_card_get_queue_work_time(i8*) #0 !dbg !367 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !368, metadata !272), !dbg !369
  call void @llvm.dbg.declare(metadata i64* %3, metadata !370, metadata !272), !dbg !371
  %4 = load i8*, i8** %2, align 8, !dbg !372
  %5 = call i64 @card_read_reg64(i8* %4, i32 65584, i32* null), !dbg !373
  store i64 %5, i64* %3, align 8, !dbg !374
  %6 = load i64, i64* %3, align 8, !dbg !375
  %7 = mul i64 %6, 8, !dbg !376
  ret i64 %7, !dbg !377
}

; Function Attrs: nounwind uwtable
define internal i64 @_card_get_frequency(i8*) #0 !dbg !257 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !378, metadata !272), !dbg !379
  call void @llvm.dbg.declare(metadata i16* %4, metadata !380, metadata !272), !dbg !381
  call void @llvm.dbg.declare(metadata i64* %5, metadata !382, metadata !272), !dbg !383
  %6 = load i8*, i8** %3, align 8, !dbg !384
  %7 = call i64 @card_read_reg64(i8* %6, i32 0, i32* null), !dbg !385
  store i64 %7, i64* %5, align 8, !dbg !386
  %8 = load i64, i64* %5, align 8, !dbg !387
  %9 = lshr i64 %8, 28, !dbg !388
  %10 = and i64 %9, 15, !dbg !389
  %11 = trunc i64 %10 to i16, !dbg !390
  store i16 %11, i16* %4, align 2, !dbg !391
  %12 = load i16, i16* %4, align 2, !dbg !392
  %13 = zext i16 %12 to i64, !dbg !392
  %14 = icmp uge i64 %13, 4, !dbg !394
  br i1 %14, label %15, label %16, !dbg !395

; <label>:15:                                     ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !396
  br label %23, !dbg !396

; <label>:16:                                     ; preds = %1
  %17 = load i16, i16* %4, align 2, !dbg !397
  %18 = zext i16 %17 to i64, !dbg !398
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @_card_get_frequency.speed_grade, i64 0, i64 %18, !dbg !398
  %20 = load i32, i32* %19, align 4, !dbg !398
  %21 = sext i32 %20 to i64, !dbg !398
  %22 = mul i64 %21, 1000000, !dbg !399
  store i64 %22, i64* %2, align 8, !dbg !400
  br label %23, !dbg !400

; <label>:23:                                     ; preds = %16, %15
  %24 = load i64, i64* %2, align 8, !dbg !401
  ret i64 %24, !dbg !401
}

; Function Attrs: nounwind uwtable
define internal void @card_dump_hardware_version(i8*, %struct._IO_FILE*) #0 !dbg !402 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !403, metadata !272), !dbg !404
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !405, metadata !272), !dbg !406
  call void @llvm.dbg.declare(metadata i64* %5, metadata !407, metadata !272), !dbg !408
  call void @llvm.dbg.declare(metadata i64* %6, metadata !409, metadata !272), !dbg !410
  %7 = load i8*, i8** %3, align 8, !dbg !411
  %8 = call i64 @card_read_reg64(i8* %7, i32 0, i32* null), !dbg !412
  store i64 %8, i64* %5, align 8, !dbg !413
  %9 = load i8*, i8** %3, align 8, !dbg !414
  %10 = call i64 @card_read_reg64(i8* %9, i32 33554432, i32* null), !dbg !415
  store i64 %10, i64* %6, align 8, !dbg !416
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !417
  %12 = load i64, i64* %5, align 8, !dbg !418
  %13 = load i64, i64* %6, align 8, !dbg !419
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i32 0, i32 0), i64 %12, i64 %13), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: nounwind uwtable
define internal i32 @card_pin_memory(i8*, i8*, i64, i32) #0 !dbg !422 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !423, metadata !272), !dbg !424
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !425, metadata !272), !dbg !426
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !427, metadata !272), !dbg !428
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !429, metadata !272), !dbg !430
  %9 = load i8*, i8** %5, align 8, !dbg !431
  %10 = bitcast i8* %9 to %struct.card_dev_t*, !dbg !431
  %11 = load i8*, i8** %6, align 8, !dbg !432
  %12 = load i64, i64* %7, align 8, !dbg !433
  %13 = load i32, i32* %8, align 4, !dbg !434
  %14 = call i32 @genwqe_pin_memory(%struct.card_dev_t* %10, i8* %11, i64 %12, i32 %13), !dbg !435
  ret i32 %14, !dbg !436
}

; Function Attrs: nounwind uwtable
define internal i32 @card_unpin_memory(i8*, i8*, i64) #0 !dbg !437 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !438, metadata !272), !dbg !439
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !440, metadata !272), !dbg !441
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !442, metadata !272), !dbg !443
  %7 = load i8*, i8** %4, align 8, !dbg !444
  %8 = bitcast i8* %7 to %struct.card_dev_t*, !dbg !444
  %9 = load i8*, i8** %5, align 8, !dbg !445
  %10 = load i64, i64* %6, align 8, !dbg !446
  %11 = call i32 @genwqe_unpin_memory(%struct.card_dev_t* %8, i8* %9, i64 %10), !dbg !447
  ret i32 %11, !dbg !448
}

; Function Attrs: nounwind uwtable
define internal i8* @card_malloc(i8*, i64) #0 !dbg !449 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !450, metadata !272), !dbg !451
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !452, metadata !272), !dbg !453
  %5 = load i8*, i8** %3, align 8, !dbg !454
  %6 = bitcast i8* %5 to %struct.card_dev_t*, !dbg !454
  %7 = load i64, i64* %4, align 8, !dbg !455
  %8 = call i8* @genwqe_card_malloc(%struct.card_dev_t* %6, i64 %7), !dbg !456
  ret i8* %8, !dbg !457
}

; Function Attrs: nounwind uwtable
define internal i32 @card_free(i8*, i8*, i64) #0 !dbg !458 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !459, metadata !272), !dbg !460
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !461, metadata !272), !dbg !462
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !463, metadata !272), !dbg !464
  %7 = load i8*, i8** %4, align 8, !dbg !465
  %8 = bitcast i8* %7 to %struct.card_dev_t*, !dbg !465
  %9 = load i8*, i8** %5, align 8, !dbg !466
  %10 = load i64, i64* %6, align 8, !dbg !467
  %11 = call i32 @genwqe_card_free(%struct.card_dev_t* %8, i8* %9, i64 %10), !dbg !468
  ret i32 %11, !dbg !469
}

; Function Attrs: nounwind uwtable
define internal i32 @_card_dump_statistics(%struct._IO_FILE*) #0 !dbg !470 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !471, metadata !272), !dbg !472
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !473
  %4 = call i32 @genwqe_dump_statistics(%struct._IO_FILE* %3), !dbg !474
  ret i32 %4, !dbg !475
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct.card_dev_t* @genwqe_card_open(i32, i32, i32*, i64, i64) #1

declare i32 @genwqe_card_close(%struct.card_dev_t*) #1

declare i32 @genwqe_card_execute_ddcb(%struct.card_dev_t*, %struct.genwqe_ddcb_cmd*) #1

declare i8* @card_strerror(i32) #1

declare i64 @genwqe_card_read_reg64(%struct.card_dev_t*, i32, i32*) #1

declare i32 @genwqe_card_read_reg32(%struct.card_dev_t*, i32, i32*) #1

declare i32 @genwqe_card_write_reg64(%struct.card_dev_t*, i32, i64) #1

declare i32 @genwqe_card_write_reg32(%struct.card_dev_t*, i32, i32) #1

declare i64 @card_get_app_id(%struct.card_dev_t*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @genwqe_pin_memory(%struct.card_dev_t*, i8*, i64, i32) #1

declare i32 @genwqe_unpin_memory(%struct.card_dev_t*, i8*, i64) #1

declare i8* @genwqe_card_malloc(%struct.card_dev_t*, i64) #1

declare i32 @genwqe_card_free(%struct.card_dev_t*, i8*, i64) #1

declare i32 @genwqe_dump_statistics(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!262, !263}
!llvm.ident = !{!264}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !56)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]lib--__libDDCB.o/[inter]lib--ddcb_card.o.i", directory: "/home/lichi/Desktop")
!2 = !{}
!3 = !{!4, !51, !53, !55}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genwqe_ddcb_cmd", file: !6, line: 414, size: 1856, align: 64, elements: !7)
!6 = !DIFile(filename: "../include/linux/uapi/linux/genwqe/genwqe_card.h", directory: "/home/lichi/Desktop")
!7 = !{!8, !12, !13, !16, !17, !18, !19, !22, !23, !24, !25, !28, !29, !30, !31, !32, !36}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !5, file: !6, line: 416, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 30, baseType: !11)
!10 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!11 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5, file: !6, line: 417, baseType: !9, size: 64, align: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "acfunc", scope: !5, file: !6, line: 419, baseType: !14, size: 8, align: 8, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 20, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5, file: !6, line: 420, baseType: !14, size: 8, align: 8, offset: 136)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "asiv_length", scope: !5, file: !6, line: 421, baseType: !14, size: 8, align: 8, offset: 144)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "asv_length", scope: !5, file: !6, line: 422, baseType: !14, size: 8, align: 8, offset: 152)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cmdopts", scope: !5, file: !6, line: 423, baseType: !20, size: 16, align: 16, offset: 160)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 23, baseType: !21)
!21 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !5, file: !6, line: 424, baseType: !20, size: 16, align: 16, offset: 176)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !5, file: !6, line: 426, baseType: !20, size: 16, align: 16, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "vcrc", scope: !5, file: !6, line: 427, baseType: !20, size: 16, align: 16, offset: 208)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !5, file: !6, line: 428, baseType: !26, size: 32, align: 32, offset: 224)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 26, baseType: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "deque_ts", scope: !5, file: !6, line: 430, baseType: !9, size: 64, align: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cmplt_ts", scope: !5, file: !6, line: 431, baseType: !9, size: 64, align: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "disp_ts", scope: !5, file: !6, line: 432, baseType: !9, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ddata_addr", scope: !5, file: !6, line: 435, baseType: !9, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "asv", scope: !5, file: !6, line: 438, baseType: !33, size: 512, align: 8, offset: 512)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, align: 8, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, scope: !5, file: !6, line: 441, baseType: !37, size: 832, align: 64, offset: 1024)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5, file: !6, line: 441, size: 832, align: 64, elements: !38)
!38 = !{!39, !47}
!39 = !DIDerivedType(tag: DW_TAG_member, scope: !37, file: !6, line: 442, baseType: !40, size: 832, align: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !37, file: !6, line: 442, size: 832, align: 64, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ats", scope: !40, file: !6, line: 443, baseType: !9, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "asiv", scope: !40, file: !6, line: 444, baseType: !44, size: 768, align: 8, offset: 64)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 768, align: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__asiv", scope: !37, file: !6, line: 447, baseType: !48, size: 832, align: 8)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 832, align: 8, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 104)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !52, line: 49, baseType: !21)
!52 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !52, line: 55, baseType: !54)
!54 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!55 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!56 = !{!57, !256}
!57 = distinct !DIGlobalVariable(name: "accel_funcs", scope: !0, file: !58, line: 167, type: !59, isLocal: true, isDefinition: true, variable: %struct.ddcb_accel_funcs* @accel_funcs)
!58 = !DIFile(filename: "ddcb_card.c", directory: "/home/lichi/Desktop")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddcb_accel_funcs", file: !60, line: 325, size: 1984, align: 64, elements: !61)
!60 = !DIFile(filename: "../include/libddcb.h", directory: "/home/lichi/Desktop")
!61 = !{!62, !64, !68, !74, !78, !110, !114, !119, !123, !127, !131, !135, !136, !137, !199, !205, !209, !213, !217, !221, !249, !250, !251, !252, !253, !254, !255}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "card_type", scope: !59, file: !60, line: 326, baseType: !63, size: 32, align: 32)
!63 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "card_name", scope: !59, file: !60, line: 327, baseType: !65, size: 64, align: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "card_open", scope: !59, file: !60, line: 330, baseType: !69, size: 64, align: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !63, !27, !73, !53, !53}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "card_close", scope: !59, file: !60, line: 332, baseType: !75, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!63, !72}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ddcb_execute", scope: !59, file: !60, line: 333, baseType: !79, size: 64, align: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!63, !72, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddcb_cmd", file: !60, line: 154, size: 1856, align: 64, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !83, file: !60, line: 155, baseType: !9, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !60, line: 156, baseType: !9, size: 64, align: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "acfunc", scope: !83, file: !60, line: 158, baseType: !14, size: 8, align: 8, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !83, file: !60, line: 159, baseType: !14, size: 8, align: 8, offset: 136)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "asiv_length", scope: !83, file: !60, line: 160, baseType: !14, size: 8, align: 8, offset: 144)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "asv_length", scope: !83, file: !60, line: 161, baseType: !14, size: 8, align: 8, offset: 152)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cmdopts", scope: !83, file: !60, line: 162, baseType: !20, size: 16, align: 16, offset: 160)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !83, file: !60, line: 163, baseType: !20, size: 16, align: 16, offset: 176)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !83, file: !60, line: 165, baseType: !20, size: 16, align: 16, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "vcrc", scope: !83, file: !60, line: 166, baseType: !20, size: 16, align: 16, offset: 208)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !83, file: !60, line: 167, baseType: !26, size: 32, align: 32, offset: 224)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "deque_ts", scope: !83, file: !60, line: 169, baseType: !9, size: 64, align: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "cmplt_ts", scope: !83, file: !60, line: 170, baseType: !9, size: 64, align: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "disp_ts", scope: !83, file: !60, line: 171, baseType: !9, size: 64, align: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ddata_addr", scope: !83, file: !60, line: 173, baseType: !9, size: 64, align: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "asv", scope: !83, file: !60, line: 175, baseType: !33, size: 512, align: 8, offset: 512)
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !60, line: 177, baseType: !102, size: 832, align: 64, offset: 1024)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !60, line: 177, size: 832, align: 64, elements: !103)
!103 = !{!104, !109}
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !60, line: 179, baseType: !105, size: 832, align: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !102, file: !60, line: 179, size: 832, align: 64, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ats", scope: !105, file: !60, line: 180, baseType: !9, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "asiv", scope: !105, file: !60, line: 181, baseType: !44, size: 768, align: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__asiv", scope: !102, file: !60, line: 184, baseType: !48, size: 832, align: 8)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "card_strerror", scope: !59, file: !60, line: 335, baseType: !111, size: 64, align: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!65, !72, !63}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "card_read_reg64", scope: !59, file: !60, line: 339, baseType: !115, size: 64, align: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!53, !72, !118, !73}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !52, line: 51, baseType: !27)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "card_read_reg32", scope: !59, file: !60, line: 341, baseType: !120, size: 64, align: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!118, !72, !118, !73}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "card_write_reg64", scope: !59, file: !60, line: 343, baseType: !124, size: 64, align: 64, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!63, !72, !118, !53}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "card_write_reg32", scope: !59, file: !60, line: 345, baseType: !128, size: 64, align: 64, offset: 576)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!63, !72, !118, !118}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "card_get_app_id", scope: !59, file: !60, line: 353, baseType: !132, size: 64, align: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!53, !72}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "card_get_queue_work_time", scope: !59, file: !60, line: 354, baseType: !132, size: 64, align: 64, offset: 704)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "card_get_frequency", scope: !59, file: !60, line: 355, baseType: !132, size: 64, align: 64, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "card_dump_hardware_version", scope: !59, file: !60, line: 356, baseType: !138, size: 64, align: 64, offset: 832)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !72, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 48, baseType: !144)
!143 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 241, size: 1728, align: 64, elements: !146)
!145 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!146 = !{!147, !148, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !168, !169, !170, !171, !175, !176, !178, !182, !185, !187, !188, !189, !190, !191, !194, !195}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !144, file: !145, line: 242, baseType: !63, size: 32, align: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !144, file: !145, line: 247, baseType: !149, size: 64, align: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !144, file: !145, line: 248, baseType: !149, size: 64, align: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !144, file: !145, line: 249, baseType: !149, size: 64, align: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !144, file: !145, line: 250, baseType: !149, size: 64, align: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !144, file: !145, line: 251, baseType: !149, size: 64, align: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !144, file: !145, line: 252, baseType: !149, size: 64, align: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !144, file: !145, line: 253, baseType: !149, size: 64, align: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !144, file: !145, line: 254, baseType: !149, size: 64, align: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !144, file: !145, line: 256, baseType: !149, size: 64, align: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !144, file: !145, line: 257, baseType: !149, size: 64, align: 64, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !144, file: !145, line: 258, baseType: !149, size: 64, align: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !144, file: !145, line: 260, baseType: !161, size: 64, align: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 156, size: 192, align: 64, elements: !163)
!163 = !{!164, !165, !167}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !162, file: !145, line: 157, baseType: !161, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !162, file: !145, line: 158, baseType: !166, size: 64, align: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !162, file: !145, line: 162, baseType: !63, size: 32, align: 32, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !144, file: !145, line: 262, baseType: !166, size: 64, align: 64, offset: 832)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !144, file: !145, line: 264, baseType: !63, size: 32, align: 32, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !144, file: !145, line: 268, baseType: !63, size: 32, align: 32, offset: 928)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !144, file: !145, line: 270, baseType: !172, size: 64, align: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !173, line: 131, baseType: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!174 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !144, file: !145, line: 274, baseType: !21, size: 16, align: 16, offset: 1024)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !144, file: !145, line: 275, baseType: !177, size: 8, align: 8, offset: 1040)
!177 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !144, file: !145, line: 276, baseType: !179, size: 8, align: 8, offset: 1048)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8, align: 8, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 1)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !144, file: !145, line: 280, baseType: !183, size: 64, align: 64, offset: 1088)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !145, line: 150, baseType: null)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !144, file: !145, line: 289, baseType: !186, size: 64, align: 64, offset: 1152)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !173, line: 132, baseType: !174)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !144, file: !145, line: 297, baseType: !72, size: 64, align: 64, offset: 1216)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !144, file: !145, line: 298, baseType: !72, size: 64, align: 64, offset: 1280)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !144, file: !145, line: 299, baseType: !72, size: 64, align: 64, offset: 1344)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !144, file: !145, line: 300, baseType: !72, size: 64, align: 64, offset: 1408)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !144, file: !145, line: 302, baseType: !192, size: 64, align: 64, offset: 1472)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 216, baseType: !54)
!193 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !144, file: !145, line: 303, baseType: !63, size: 32, align: 32, offset: 1536)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !144, file: !145, line: 305, baseType: !196, size: 160, align: 8, offset: 1568)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 160, align: 8, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 20)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "card_pin_memory", scope: !59, file: !60, line: 361, baseType: !200, size: 64, align: 64, offset: 896)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!63, !72, !203, !192, !63}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "card_unpin_memory", scope: !59, file: !60, line: 363, baseType: !206, size: 64, align: 64, offset: 960)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!63, !72, !203, !192}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "card_malloc", scope: !59, file: !60, line: 365, baseType: !210, size: 64, align: 64, offset: 1024)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!72, !72, !192}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "card_free", scope: !59, file: !60, line: 366, baseType: !214, size: 64, align: 64, offset: 1088)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!63, !72, !72, !192}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dump_statistics", scope: !59, file: !60, line: 369, baseType: !218, size: 64, align: 64, offset: 1152)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!63, !141}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "slock", scope: !59, file: !60, line: 371, baseType: !222, size: 320, align: 64, offset: 1216)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !223, line: 128, baseType: !224)
!223 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop")
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !223, line: 90, size: 320, align: 64, elements: !225)
!225 = !{!226, !244, !248}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !224, file: !223, line: 125, baseType: !227, size: 320, align: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !223, line: 92, size: 320, align: 64, elements: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !236, !237}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !227, file: !223, line: 94, baseType: !63, size: 32, align: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !227, file: !223, line: 95, baseType: !27, size: 32, align: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !227, file: !223, line: 96, baseType: !63, size: 32, align: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !227, file: !223, line: 98, baseType: !27, size: 32, align: 32, offset: 96)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !227, file: !223, line: 102, baseType: !63, size: 32, align: 32, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !227, file: !223, line: 104, baseType: !235, size: 16, align: 16, offset: 160)
!235 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !227, file: !223, line: 105, baseType: !235, size: 16, align: 16, offset: 176)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !227, file: !223, line: 106, baseType: !238, size: 128, align: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !223, line: 79, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !223, line: 75, size: 128, align: 64, elements: !240)
!240 = !{!241, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !239, file: !223, line: 77, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !239, file: !223, line: 78, baseType: !242, size: 64, align: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !224, file: !223, line: 126, baseType: !245, size: 320, align: 8)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 320, align: 8, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 40)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !224, file: !223, line: 127, baseType: !174, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "num_open", scope: !59, file: !60, line: 372, baseType: !54, size: 64, align: 64, offset: 1536)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "num_execute", scope: !59, file: !60, line: 373, baseType: !54, size: 64, align: 64, offset: 1600)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "num_close", scope: !59, file: !60, line: 374, baseType: !54, size: 64, align: 64, offset: 1664)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "time_open", scope: !59, file: !60, line: 376, baseType: !54, size: 64, align: 64, offset: 1728)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "time_execute", scope: !59, file: !60, line: 377, baseType: !54, size: 64, align: 64, offset: 1792)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "time_close", scope: !59, file: !60, line: 378, baseType: !54, size: 64, align: 64, offset: 1856)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "priv_data", scope: !59, file: !60, line: 381, baseType: !72, size: 64, align: 64, offset: 1920)
!256 = distinct !DIGlobalVariable(name: "speed_grade", scope: !257, file: !58, line: 104, type: !258, isLocal: true, isDefinition: true, variable: [4 x i32]* @_card_get_frequency.speed_grade)
!257 = distinct !DISubprogram(name: "_card_get_frequency", scope: !58, file: !58, line: 101, type: !133, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 128, align: 32, elements: !260)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!260 = !{!261}
!261 = !DISubrange(count: 4)
!262 = !{i32 2, !"Dwarf Version", i32 4}
!263 = !{i32 2, !"Debug Info Version", i32 3}
!264 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!265 = distinct !DISubprogram(name: "genwqe_card_init", scope: !58, file: !58, line: 204, type: !266, isLocal: true, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!266 = !DISubroutineType(types: !267)
!267 = !{null}
!268 = !DILocation(line: 206, column: 2, scope: !265)
!269 = !DILocation(line: 207, column: 1, scope: !265)
!270 = distinct !DISubprogram(name: "card_open", scope: !58, file: !58, line: 50, type: !70, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!271 = !DILocalVariable(name: "card_no", arg: 1, scope: !270, file: !58, line: 50, type: !63)
!272 = !DIExpression()
!273 = !DILocation(line: 50, column: 28, scope: !270)
!274 = !DILocalVariable(name: "mode", arg: 2, scope: !270, file: !58, line: 50, type: !27)
!275 = !DILocation(line: 50, column: 50, scope: !270)
!276 = !DILocalVariable(name: "card_rc", arg: 3, scope: !270, file: !58, line: 50, type: !73)
!277 = !DILocation(line: 50, column: 61, scope: !270)
!278 = !DILocalVariable(name: "appl_id", arg: 4, scope: !270, file: !58, line: 51, type: !53)
!279 = !DILocation(line: 51, column: 19, scope: !270)
!280 = !DILocalVariable(name: "appl_id_mask", arg: 5, scope: !270, file: !58, line: 51, type: !53)
!281 = !DILocation(line: 51, column: 37, scope: !270)
!282 = !DILocation(line: 53, column: 26, scope: !270)
!283 = !DILocation(line: 53, column: 35, scope: !270)
!284 = !DILocation(line: 53, column: 41, scope: !270)
!285 = !DILocation(line: 53, column: 50, scope: !270)
!286 = !DILocation(line: 53, column: 59, scope: !270)
!287 = !DILocation(line: 53, column: 9, scope: !270)
!288 = !DILocation(line: 53, column: 2, scope: !270)
!289 = distinct !DISubprogram(name: "card_close", scope: !58, file: !58, line: 56, type: !76, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!290 = !DILocalVariable(name: "card_data", arg: 1, scope: !289, file: !58, line: 56, type: !72)
!291 = !DILocation(line: 56, column: 29, scope: !289)
!292 = !DILocation(line: 58, column: 27, scope: !289)
!293 = !DILocation(line: 58, column: 9, scope: !289)
!294 = !DILocation(line: 58, column: 2, scope: !289)
!295 = distinct !DISubprogram(name: "ddcb_execute", scope: !58, file: !58, line: 61, type: !80, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!296 = !DILocalVariable(name: "card_data", arg: 1, scope: !295, file: !58, line: 61, type: !72)
!297 = !DILocation(line: 61, column: 31, scope: !295)
!298 = !DILocalVariable(name: "req", arg: 2, scope: !295, file: !58, line: 61, type: !82)
!299 = !DILocation(line: 61, column: 59, scope: !295)
!300 = !DILocation(line: 63, column: 34, scope: !295)
!301 = !DILocation(line: 64, column: 32, scope: !295)
!302 = !DILocation(line: 64, column: 6, scope: !295)
!303 = !DILocation(line: 63, column: 9, scope: !295)
!304 = !DILocation(line: 63, column: 2, scope: !295)
!305 = distinct !DISubprogram(name: "_card_strerror", scope: !58, file: !58, line: 67, type: !112, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!306 = !DILocalVariable(name: "card_data", arg: 1, scope: !305, file: !58, line: 67, type: !72)
!307 = !DILocation(line: 67, column: 41, scope: !305)
!308 = !DILocalVariable(name: "card_rc", arg: 2, scope: !305, file: !58, line: 68, type: !63)
!309 = !DILocation(line: 68, column: 11, scope: !305)
!310 = !DILocation(line: 70, column: 23, scope: !305)
!311 = !DILocation(line: 70, column: 9, scope: !305)
!312 = !DILocation(line: 70, column: 2, scope: !305)
!313 = distinct !DISubprogram(name: "card_read_reg64", scope: !58, file: !58, line: 73, type: !116, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!314 = !DILocalVariable(name: "card_data", arg: 1, scope: !313, file: !58, line: 73, type: !72)
!315 = !DILocation(line: 73, column: 39, scope: !313)
!316 = !DILocalVariable(name: "offs", arg: 2, scope: !313, file: !58, line: 73, type: !118)
!317 = !DILocation(line: 73, column: 59, scope: !313)
!318 = !DILocalVariable(name: "card_rc", arg: 3, scope: !313, file: !58, line: 74, type: !73)
!319 = !DILocation(line: 74, column: 14, scope: !313)
!320 = !DILocation(line: 76, column: 32, scope: !313)
!321 = !DILocation(line: 76, column: 43, scope: !313)
!322 = !DILocation(line: 76, column: 49, scope: !313)
!323 = !DILocation(line: 76, column: 9, scope: !313)
!324 = !DILocation(line: 76, column: 2, scope: !313)
!325 = distinct !DISubprogram(name: "card_read_reg32", scope: !58, file: !58, line: 79, type: !121, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!326 = !DILocalVariable(name: "card_data", arg: 1, scope: !325, file: !58, line: 79, type: !72)
!327 = !DILocation(line: 79, column: 39, scope: !325)
!328 = !DILocalVariable(name: "offs", arg: 2, scope: !325, file: !58, line: 79, type: !118)
!329 = !DILocation(line: 79, column: 59, scope: !325)
!330 = !DILocalVariable(name: "card_rc", arg: 3, scope: !325, file: !58, line: 80, type: !73)
!331 = !DILocation(line: 80, column: 14, scope: !325)
!332 = !DILocation(line: 82, column: 32, scope: !325)
!333 = !DILocation(line: 82, column: 43, scope: !325)
!334 = !DILocation(line: 82, column: 49, scope: !325)
!335 = !DILocation(line: 82, column: 9, scope: !325)
!336 = !DILocation(line: 82, column: 2, scope: !325)
!337 = distinct !DISubprogram(name: "card_write_reg64", scope: !58, file: !58, line: 85, type: !125, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!338 = !DILocalVariable(name: "card_data", arg: 1, scope: !337, file: !58, line: 85, type: !72)
!339 = !DILocation(line: 85, column: 35, scope: !337)
!340 = !DILocalVariable(name: "offs", arg: 2, scope: !337, file: !58, line: 85, type: !118)
!341 = !DILocation(line: 85, column: 55, scope: !337)
!342 = !DILocalVariable(name: "val", arg: 3, scope: !337, file: !58, line: 86, type: !53)
!343 = !DILocation(line: 86, column: 14, scope: !337)
!344 = !DILocation(line: 88, column: 33, scope: !337)
!345 = !DILocation(line: 88, column: 44, scope: !337)
!346 = !DILocation(line: 88, column: 50, scope: !337)
!347 = !DILocation(line: 88, column: 9, scope: !337)
!348 = !DILocation(line: 88, column: 2, scope: !337)
!349 = distinct !DISubprogram(name: "card_write_reg32", scope: !58, file: !58, line: 91, type: !129, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!350 = !DILocalVariable(name: "card_data", arg: 1, scope: !349, file: !58, line: 91, type: !72)
!351 = !DILocation(line: 91, column: 35, scope: !349)
!352 = !DILocalVariable(name: "offs", arg: 2, scope: !349, file: !58, line: 91, type: !118)
!353 = !DILocation(line: 91, column: 55, scope: !349)
!354 = !DILocalVariable(name: "val", arg: 3, scope: !349, file: !58, line: 91, type: !118)
!355 = !DILocation(line: 91, column: 70, scope: !349)
!356 = !DILocation(line: 93, column: 33, scope: !349)
!357 = !DILocation(line: 93, column: 44, scope: !349)
!358 = !DILocation(line: 93, column: 50, scope: !349)
!359 = !DILocation(line: 93, column: 9, scope: !349)
!360 = !DILocation(line: 93, column: 2, scope: !349)
!361 = distinct !DISubprogram(name: "_card_get_app_id", scope: !58, file: !58, line: 96, type: !133, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!362 = !DILocalVariable(name: "card_data", arg: 1, scope: !361, file: !58, line: 96, type: !72)
!363 = !DILocation(line: 96, column: 40, scope: !361)
!364 = !DILocation(line: 98, column: 25, scope: !361)
!365 = !DILocation(line: 98, column: 9, scope: !361)
!366 = !DILocation(line: 98, column: 2, scope: !361)
!367 = distinct !DISubprogram(name: "_card_get_queue_work_time", scope: !58, file: !58, line: 133, type: !133, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!368 = !DILocalVariable(name: "card_data", arg: 1, scope: !367, file: !58, line: 133, type: !72)
!369 = !DILocation(line: 133, column: 49, scope: !367)
!370 = !DILocalVariable(name: "queue_wtime", scope: !367, file: !58, line: 135, type: !53)
!371 = !DILocation(line: 135, column: 11, scope: !367)
!372 = !DILocation(line: 137, column: 32, scope: !367)
!373 = !DILocation(line: 137, column: 16, scope: !367)
!374 = !DILocation(line: 137, column: 14, scope: !367)
!375 = !DILocation(line: 138, column: 9, scope: !367)
!376 = !DILocation(line: 138, column: 21, scope: !367)
!377 = !DILocation(line: 138, column: 2, scope: !367)
!378 = !DILocalVariable(name: "card_data", arg: 1, scope: !257, file: !58, line: 101, type: !72)
!379 = !DILocation(line: 101, column: 43, scope: !257)
!380 = !DILocalVariable(name: "speed", scope: !257, file: !58, line: 103, type: !51)
!381 = !DILocation(line: 103, column: 11, scope: !257)
!382 = !DILocalVariable(name: "slu_unitcfg", scope: !257, file: !58, line: 105, type: !53)
!383 = !DILocation(line: 105, column: 11, scope: !257)
!384 = !DILocation(line: 107, column: 32, scope: !257)
!385 = !DILocation(line: 107, column: 16, scope: !257)
!386 = !DILocation(line: 107, column: 14, scope: !257)
!387 = !DILocation(line: 108, column: 22, scope: !257)
!388 = !DILocation(line: 108, column: 34, scope: !257)
!389 = !DILocation(line: 108, column: 41, scope: !257)
!390 = !DILocation(line: 108, column: 10, scope: !257)
!391 = !DILocation(line: 108, column: 8, scope: !257)
!392 = !DILocation(line: 109, column: 6, scope: !393)
!393 = distinct !DILexicalBlock(scope: !257, file: !58, line: 109, column: 6)
!394 = !DILocation(line: 109, column: 12, scope: !393)
!395 = !DILocation(line: 109, column: 6, scope: !257)
!396 = !DILocation(line: 110, column: 3, scope: !393)
!397 = !DILocation(line: 112, column: 21, scope: !257)
!398 = !DILocation(line: 112, column: 9, scope: !257)
!399 = !DILocation(line: 112, column: 28, scope: !257)
!400 = !DILocation(line: 112, column: 2, scope: !257)
!401 = !DILocation(line: 113, column: 1, scope: !257)
!402 = distinct !DISubprogram(name: "card_dump_hardware_version", scope: !58, file: !58, line: 115, type: !139, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!403 = !DILocalVariable(name: "card_data", arg: 1, scope: !402, file: !58, line: 115, type: !72)
!404 = !DILocation(line: 115, column: 46, scope: !402)
!405 = !DILocalVariable(name: "fp", arg: 2, scope: !402, file: !58, line: 115, type: !141)
!406 = !DILocation(line: 115, column: 63, scope: !402)
!407 = !DILocalVariable(name: "slu_unitcfg", scope: !402, file: !58, line: 117, type: !53)
!408 = !DILocation(line: 117, column: 11, scope: !402)
!409 = !DILocalVariable(name: "app_unitcfg", scope: !402, file: !58, line: 118, type: !53)
!410 = !DILocation(line: 118, column: 11, scope: !402)
!411 = !DILocation(line: 120, column: 32, scope: !402)
!412 = !DILocation(line: 120, column: 16, scope: !402)
!413 = !DILocation(line: 120, column: 14, scope: !402)
!414 = !DILocation(line: 121, column: 32, scope: !402)
!415 = !DILocation(line: 121, column: 16, scope: !402)
!416 = !DILocation(line: 121, column: 14, scope: !402)
!417 = !DILocation(line: 123, column: 10, scope: !402)
!418 = !DILocation(line: 126, column: 14, scope: !402)
!419 = !DILocation(line: 126, column: 38, scope: !402)
!420 = !DILocation(line: 123, column: 2, scope: !402)
!421 = !DILocation(line: 127, column: 1, scope: !402)
!422 = distinct !DISubprogram(name: "card_pin_memory", scope: !58, file: !58, line: 141, type: !201, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!423 = !DILocalVariable(name: "card_data", arg: 1, scope: !422, file: !58, line: 141, type: !72)
!424 = !DILocation(line: 141, column: 34, scope: !422)
!425 = !DILocalVariable(name: "addr", arg: 2, scope: !422, file: !58, line: 141, type: !203)
!426 = !DILocation(line: 141, column: 57, scope: !422)
!427 = !DILocalVariable(name: "size", arg: 3, scope: !422, file: !58, line: 141, type: !192)
!428 = !DILocation(line: 141, column: 70, scope: !422)
!429 = !DILocalVariable(name: "dir", arg: 4, scope: !422, file: !58, line: 142, type: !63)
!430 = !DILocation(line: 142, column: 11, scope: !422)
!431 = !DILocation(line: 144, column: 27, scope: !422)
!432 = !DILocation(line: 144, column: 38, scope: !422)
!433 = !DILocation(line: 144, column: 44, scope: !422)
!434 = !DILocation(line: 144, column: 50, scope: !422)
!435 = !DILocation(line: 144, column: 9, scope: !422)
!436 = !DILocation(line: 144, column: 2, scope: !422)
!437 = distinct !DISubprogram(name: "card_unpin_memory", scope: !58, file: !58, line: 147, type: !207, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!438 = !DILocalVariable(name: "card_data", arg: 1, scope: !437, file: !58, line: 147, type: !72)
!439 = !DILocation(line: 147, column: 36, scope: !437)
!440 = !DILocalVariable(name: "addr", arg: 2, scope: !437, file: !58, line: 147, type: !203)
!441 = !DILocation(line: 147, column: 59, scope: !437)
!442 = !DILocalVariable(name: "size", arg: 3, scope: !437, file: !58, line: 147, type: !192)
!443 = !DILocation(line: 147, column: 72, scope: !437)
!444 = !DILocation(line: 149, column: 29, scope: !437)
!445 = !DILocation(line: 149, column: 40, scope: !437)
!446 = !DILocation(line: 149, column: 46, scope: !437)
!447 = !DILocation(line: 149, column: 9, scope: !437)
!448 = !DILocation(line: 149, column: 2, scope: !437)
!449 = distinct !DISubprogram(name: "card_malloc", scope: !58, file: !58, line: 152, type: !211, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!450 = !DILocalVariable(name: "card_data", arg: 1, scope: !449, file: !58, line: 152, type: !72)
!451 = !DILocation(line: 152, column: 32, scope: !449)
!452 = !DILocalVariable(name: "size", arg: 2, scope: !449, file: !58, line: 152, type: !192)
!453 = !DILocation(line: 152, column: 50, scope: !449)
!454 = !DILocation(line: 154, column: 28, scope: !449)
!455 = !DILocation(line: 154, column: 39, scope: !449)
!456 = !DILocation(line: 154, column: 9, scope: !449)
!457 = !DILocation(line: 154, column: 2, scope: !449)
!458 = distinct !DISubprogram(name: "card_free", scope: !58, file: !58, line: 157, type: !215, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!459 = !DILocalVariable(name: "card_data", arg: 1, scope: !458, file: !58, line: 157, type: !72)
!460 = !DILocation(line: 157, column: 28, scope: !458)
!461 = !DILocalVariable(name: "ptr", arg: 2, scope: !458, file: !58, line: 157, type: !72)
!462 = !DILocation(line: 157, column: 45, scope: !458)
!463 = !DILocalVariable(name: "size", arg: 3, scope: !458, file: !58, line: 157, type: !192)
!464 = !DILocation(line: 157, column: 57, scope: !458)
!465 = !DILocation(line: 159, column: 26, scope: !458)
!466 = !DILocation(line: 159, column: 37, scope: !458)
!467 = !DILocation(line: 159, column: 42, scope: !458)
!468 = !DILocation(line: 159, column: 9, scope: !458)
!469 = !DILocation(line: 159, column: 2, scope: !458)
!470 = distinct !DISubprogram(name: "_card_dump_statistics", scope: !58, file: !58, line: 162, type: !219, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!471 = !DILocalVariable(name: "fp", arg: 1, scope: !470, file: !58, line: 162, type: !141)
!472 = !DILocation(line: 162, column: 40, scope: !470)
!473 = !DILocation(line: 164, column: 32, scope: !470)
!474 = !DILocation(line: 164, column: 9, scope: !470)
!475 = !DILocation(line: 164, column: 2, scope: !470)
