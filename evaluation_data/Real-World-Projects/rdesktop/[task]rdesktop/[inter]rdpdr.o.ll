; ModuleID = './[inter]rdpdr.o.i'
source_filename = "./[inter]rdpdr.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rdpdr_device_info = type { i32, i32, [8 x i8], i8*, i8* }
%struct._VCHANNEL = type { i16, [8 x i8], i32, %struct.stream, void (%struct.stream*)* }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.async_iorequest = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i8*, %struct._DEVICE_FNS*, %struct.async_iorequest* }
%struct._DEVICE_FNS = type { i32 (i32, i32, i32, i32, i32, i8*, i32*)*, i32 (i32)*, i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i32, %struct.stream*, %struct.stream*)* }
%struct.fileinfo = type { i32, i32, i32, [4096 x i8], %struct.__dirstream*, %struct.dirent*, [4096 x i8], i32, %struct.notify_data, i32 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.notify_data = type { i64, i64, i64, i32 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.rdpdr_printer_info = type { %struct._IO_FILE*, i8*, i8*, i32, i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rdpdr_disk_device_info = type { [4096 x i8] }

@g_rdpdr_clientname = global i8* null, align 8
@g_rdpdr_device = common global [16 x %struct.rdpdr_device_info] zeroinitializer, align 16
@rdpdr_channel = internal global %struct._VCHANNEL* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"rdpdr_send_completion()\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rdpdr\00", align 1
@g_iorequest = common global %struct.async_iorequest* null, align 8
@g_min_timeout_fd = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@g_num_devices = common global i32 0, align 4
@g_client_id = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"rdpdr_process()\00", align 1
@g_epoch = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"rdpdr_process(), server connected to resource %d\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"rdpdr_process(), pakid 0x%x of component 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"rdpdr_process(), unhandled component 0x%x\00", align 1
@.str.7 = private unnamed_addr constant [94 x i8] c"rdpdr_process_irp(), invalid irp device=0x%lx, file=0x%lx, id=0x%lx, major=0x%lx, minor=0x%lx\00", align 1
@serial_fns = external global %struct._DEVICE_FNS, align 8
@parallel_fns = external global %struct._DEVICE_FNS, align 8
@printer_fns = external global %struct._DEVICE_FNS, align 8
@disk_fns = external global %struct._DEVICE_FNS, align 8
@.str.8 = private unnamed_addr constant [62 x i8] c"rdpdr_process_irp(), received IRP for unknown device type %ld\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"rdpdr_process_irp(), IRP Read length=%d, offset=%d\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"rdpdr_process_irp(), IRP Write length=%d\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"rdpdr_process_irp(), unhandled minor opcode, major=0x%x, minor=0x%x\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"rdpdr_process_irp(), unhandled major opcode, major=0x%x, minor=0x%x\00", align 1
@g_fileinfo = external global [0 x %struct.fileinfo], align 8
@g_hostname = external global [16 x i8], align 16
@.str.13 = private unnamed_addr constant [42 x i8] c"_rdpdr_check_fds(), %d bytes of data read\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"_rdpdr_check_fds(), AIO total %u bytes read of %u\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"_rdpdr_check_fds(), %d bytes of data written\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"_rdpdr_check_fds(), AIO total %u bytes written of %u\00", align 1
@g_notify_stamp = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @get_device_index(i32) #0 !dbg !210 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !214, metadata !215), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %4, metadata !217, metadata !215), !dbg !218
  store i32 0, i32* %4, align 4, !dbg !219
  br label %5, !dbg !221

; <label>:5:                                      ; preds = %19, %1
  %6 = load i32, i32* %4, align 4, !dbg !222
  %7 = icmp slt i32 %6, 16, !dbg !225
  br i1 %7, label %8, label %22, !dbg !226

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %4, align 4, !dbg !227
  %10 = sext i32 %9 to i64, !dbg !230
  %11 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %10, !dbg !230
  %12 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %11, i32 0, i32 1, !dbg !231
  %13 = load i32, i32* %12, align 4, !dbg !231
  %14 = load i32, i32* %3, align 4, !dbg !232
  %15 = icmp eq i32 %13, %14, !dbg !233
  br i1 %15, label %16, label %18, !dbg !234

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* %4, align 4, !dbg !235
  store i32 %17, i32* %2, align 4, !dbg !236
  br label %23, !dbg !236

; <label>:18:                                     ; preds = %8
  br label %19, !dbg !237

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %4, align 4, !dbg !238
  %21 = add nsw i32 %20, 1, !dbg !238
  store i32 %21, i32* %4, align 4, !dbg !238
  br label %5, !dbg !240, !llvm.loop !241

; <label>:22:                                     ; preds = %5
  store i32 -1, i32* %2, align 4, !dbg !243
  br label %23, !dbg !243

; <label>:23:                                     ; preds = %22, %16
  %24 = load i32, i32* %2, align 4, !dbg !244
  ret i32 %24, !dbg !244
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @convert_to_unix_filename(i8*) #0 !dbg !245 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !248, metadata !215), !dbg !249
  call void @llvm.dbg.declare(metadata i8** %3, metadata !250, metadata !215), !dbg !251
  br label %4, !dbg !252

; <label>:4:                                      ; preds = %8, %1
  %5 = load i8*, i8** %2, align 8, !dbg !253
  %6 = call i8* @strchr(i8* %5, i32 92) #7, !dbg !255
  store i8* %6, i8** %3, align 8, !dbg !256
  %7 = icmp ne i8* %6, null, !dbg !257
  br i1 %7, label %8, label %10, !dbg !257

; <label>:8:                                      ; preds = %4
  %9 = load i8*, i8** %3, align 8, !dbg !258
  store i8 47, i8* %9, align 1, !dbg !260
  br label %4, !dbg !261, !llvm.loop !263

; <label>:10:                                     ; preds = %4
  ret void, !dbg !264
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @rdpdr_send_completion(i32, i32, i32, i32, i8*, i32) #0 !dbg !265 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.stream*, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !268, metadata !215), !dbg !269
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !270, metadata !215), !dbg !271
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !272, metadata !215), !dbg !273
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !274, metadata !215), !dbg !275
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !276, metadata !215), !dbg !277
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !278, metadata !215), !dbg !279
  call void @llvm.dbg.declare(metadata %struct.stream** %13, metadata !280, metadata !215), !dbg !281
  %14 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpdr_channel, align 8, !dbg !282
  %15 = load i32, i32* %12, align 4, !dbg !283
  %16 = add i32 20, %15, !dbg !284
  %17 = call %struct.stream* @channel_init(%struct._VCHANNEL* %14, i32 %16), !dbg !285
  store %struct.stream* %17, %struct.stream** %13, align 8, !dbg !286
  %18 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !287
  %19 = getelementptr inbounds %struct.stream, %struct.stream* %18, i32 0, i32 0, !dbg !289
  %20 = load i8*, i8** %19, align 8, !dbg !289
  %21 = bitcast i8* %20 to i16*, !dbg !290
  store i16 17522, i16* %21, align 2, !dbg !291
  %22 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !292
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !293
  %24 = load i8*, i8** %23, align 8, !dbg !294
  %25 = getelementptr inbounds i8, i8* %24, i64 2, !dbg !294
  store i8* %25, i8** %23, align 8, !dbg !294
  %26 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !295
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !297
  %28 = load i8*, i8** %27, align 8, !dbg !297
  %29 = bitcast i8* %28 to i16*, !dbg !298
  store i16 18755, i16* %29, align 2, !dbg !299
  %30 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !300
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !301
  %32 = load i8*, i8** %31, align 8, !dbg !302
  %33 = getelementptr inbounds i8, i8* %32, i64 2, !dbg !302
  store i8* %33, i8** %31, align 8, !dbg !302
  %34 = load i32, i32* %7, align 4, !dbg !303
  %35 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !305
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !306
  %37 = load i8*, i8** %36, align 8, !dbg !306
  %38 = bitcast i8* %37 to i32*, !dbg !307
  store i32 %34, i32* %38, align 4, !dbg !308
  %39 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !309
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !310
  %41 = load i8*, i8** %40, align 8, !dbg !311
  %42 = getelementptr inbounds i8, i8* %41, i64 4, !dbg !311
  store i8* %42, i8** %40, align 8, !dbg !311
  %43 = load i32, i32* %8, align 4, !dbg !312
  %44 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !314
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !315
  %46 = load i8*, i8** %45, align 8, !dbg !315
  %47 = bitcast i8* %46 to i32*, !dbg !316
  store i32 %43, i32* %47, align 4, !dbg !317
  %48 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !318
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !319
  %50 = load i8*, i8** %49, align 8, !dbg !320
  %51 = getelementptr inbounds i8, i8* %50, i64 4, !dbg !320
  store i8* %51, i8** %49, align 8, !dbg !320
  %52 = load i32, i32* %9, align 4, !dbg !321
  %53 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !323
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 0, !dbg !324
  %55 = load i8*, i8** %54, align 8, !dbg !324
  %56 = bitcast i8* %55 to i32*, !dbg !325
  store i32 %52, i32* %56, align 4, !dbg !326
  %57 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !327
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 0, !dbg !328
  %59 = load i8*, i8** %58, align 8, !dbg !329
  %60 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !329
  store i8* %60, i8** %58, align 8, !dbg !329
  %61 = load i32, i32* %10, align 4, !dbg !330
  %62 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !332
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !333
  %64 = load i8*, i8** %63, align 8, !dbg !333
  %65 = bitcast i8* %64 to i32*, !dbg !334
  store i32 %61, i32* %65, align 4, !dbg !335
  %66 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !336
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 0, !dbg !337
  %68 = load i8*, i8** %67, align 8, !dbg !338
  %69 = getelementptr inbounds i8, i8* %68, i64 4, !dbg !338
  store i8* %69, i8** %67, align 8, !dbg !338
  %70 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !339
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %70, i32 0, i32 0, !dbg !341
  %72 = load i8*, i8** %71, align 8, !dbg !341
  %73 = load i8*, i8** %11, align 8, !dbg !342
  %74 = load i32, i32* %12, align 4, !dbg !343
  %75 = zext i32 %74 to i64, !dbg !343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 %75, i32 1, i1 false), !dbg !344
  %76 = load i32, i32* %12, align 4, !dbg !345
  %77 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !346
  %78 = getelementptr inbounds %struct.stream, %struct.stream* %77, i32 0, i32 0, !dbg !347
  %79 = load i8*, i8** %78, align 8, !dbg !348
  %80 = zext i32 %76 to i64, !dbg !348
  %81 = getelementptr inbounds i8, i8* %79, i64 %80, !dbg !348
  store i8* %81, i8** %78, align 8, !dbg !348
  %82 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !349
  %83 = getelementptr inbounds %struct.stream, %struct.stream* %82, i32 0, i32 0, !dbg !350
  %84 = load i8*, i8** %83, align 8, !dbg !350
  %85 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !351
  %86 = getelementptr inbounds %struct.stream, %struct.stream* %85, i32 0, i32 1, !dbg !352
  store i8* %84, i8** %86, align 8, !dbg !353
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0)), !dbg !354
  %87 = load %struct.stream*, %struct.stream** %13, align 8, !dbg !355
  %88 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpdr_channel, align 8, !dbg !356
  call void @channel_send(%struct.stream* %87, %struct._VCHANNEL* %88), !dbg !357
  ret void, !dbg !358
}

declare %struct.stream* @channel_init(%struct._VCHANNEL*, i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare void @logger(i32, i32, i8*, ...) #3

declare void @channel_send(%struct.stream*, %struct._VCHANNEL*) #3

; Function Attrs: nounwind uwtable
define i32 @rdpdr_init() #0 !dbg !359 {
  %1 = call %struct._VCHANNEL* @channel_register(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 -2139095040, void (%struct.stream*)* @rdpdr_process), !dbg !362
  store %struct._VCHANNEL* %1, %struct._VCHANNEL** @rdpdr_channel, align 8, !dbg !363
  %2 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpdr_channel, align 8, !dbg !364
  %3 = icmp ne %struct._VCHANNEL* %2, null, !dbg !365
  %4 = zext i1 %3 to i32, !dbg !365
  ret i32 %4, !dbg !366
}

declare %struct._VCHANNEL* @channel_register(i8*, i32, void (%struct.stream*)*) #3

; Function Attrs: nounwind uwtable
define internal void @rdpdr_process(%struct.stream*) #0 !dbg !367 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !368, metadata !215), !dbg !369
  call void @llvm.dbg.declare(metadata i32* %3, metadata !370, metadata !215), !dbg !371
  call void @llvm.dbg.declare(metadata i16* %4, metadata !372, metadata !215), !dbg !373
  call void @llvm.dbg.declare(metadata i16* %5, metadata !374, metadata !215), !dbg !375
  call void @llvm.dbg.declare(metadata i16* %6, metadata !376, metadata !215), !dbg !377
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !378
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !379
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !381
  %9 = load i8*, i8** %8, align 8, !dbg !381
  %10 = bitcast i8* %9 to i16*, !dbg !382
  %11 = load i16, i16* %10, align 2, !dbg !382
  store i16 %11, i16* %5, align 2, !dbg !383
  %12 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !384
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !385
  %14 = load i8*, i8** %13, align 8, !dbg !386
  %15 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !386
  store i8* %15, i8** %13, align 8, !dbg !386
  %16 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !387
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !389
  %18 = load i8*, i8** %17, align 8, !dbg !389
  %19 = bitcast i8* %18 to i16*, !dbg !390
  %20 = load i16, i16* %19, align 2, !dbg !390
  store i16 %20, i16* %6, align 2, !dbg !391
  %21 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !392
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !393
  %23 = load i8*, i8** %22, align 8, !dbg !394
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !394
  store i8* %24, i8** %22, align 8, !dbg !394
  %25 = load i16, i16* %5, align 2, !dbg !395
  %26 = zext i16 %25 to i32, !dbg !395
  %27 = icmp eq i32 %26, 17522, !dbg !397
  br i1 %27, label %28, label %82, !dbg !398

; <label>:28:                                     ; preds = %1
  %29 = load i16, i16* %6, align 2, !dbg !399
  %30 = zext i16 %29 to i32, !dbg !399
  switch i32 %30, label %76 [
    i32 18770, label %31
    i32 18798, label %33
    i32 17219, label %63
    i32 25714, label %64
    i32 21328, label %75
  ], !dbg !401

; <label>:31:                                     ; preds = %28
  %32 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !402
  call void @rdpdr_process_irp(%struct.stream* %32), !dbg !404
  br label %81, !dbg !405

; <label>:33:                                     ; preds = %28
  %34 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !406
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !407
  %36 = load i8*, i8** %35, align 8, !dbg !408
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !408
  store i8* %37, i8** %35, align 8, !dbg !408
  %38 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !409
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !411
  %40 = load i8*, i8** %39, align 8, !dbg !411
  %41 = bitcast i8* %40 to i16*, !dbg !412
  %42 = load i16, i16* %41, align 2, !dbg !412
  store i16 %42, i16* %4, align 2, !dbg !413
  %43 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !414
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !415
  %45 = load i8*, i8** %44, align 8, !dbg !416
  %46 = getelementptr inbounds i8, i8* %45, i64 2, !dbg !416
  store i8* %46, i8** %44, align 8, !dbg !416
  %47 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !417
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !419
  %49 = load i8*, i8** %48, align 8, !dbg !419
  %50 = bitcast i8* %49 to i32*, !dbg !420
  %51 = load i32, i32* %50, align 4, !dbg !420
  store i32 %51, i32* @g_client_id, align 4, !dbg !421
  %52 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !422
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !423
  %54 = load i8*, i8** %53, align 8, !dbg !424
  %55 = getelementptr inbounds i8, i8* %54, i64 4, !dbg !424
  store i8* %55, i8** %53, align 8, !dbg !424
  %56 = load i16, i16* %4, align 2, !dbg !425
  %57 = zext i16 %56 to i32, !dbg !425
  %58 = icmp slt i32 %57, 12, !dbg !427
  br i1 %58, label %59, label %60, !dbg !428

; <label>:59:                                     ; preds = %33
  store i32 -2124491875, i32* @g_client_id, align 4, !dbg !429
  br label %60, !dbg !430

; <label>:60:                                     ; preds = %59, %33
  %61 = load i32, i32* @g_epoch, align 4, !dbg !431
  %62 = add i32 %61, 1, !dbg !431
  store i32 %62, i32* @g_epoch, align 4, !dbg !431
  call void @rdpdr_send_client_announce_reply(), !dbg !432
  call void @rdpdr_send_client_name_request(), !dbg !433
  br label %81, !dbg !434

; <label>:63:                                     ; preds = %28
  call void @rdpdr_send_client_device_list_announce(), !dbg !435
  br label %81, !dbg !436

; <label>:64:                                     ; preds = %28
  %65 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !437
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 0, !dbg !439
  %67 = load i8*, i8** %66, align 8, !dbg !439
  %68 = bitcast i8* %67 to i32*, !dbg !440
  %69 = load i32, i32* %68, align 4, !dbg !440
  store i32 %69, i32* %3, align 4, !dbg !441
  %70 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !442
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %70, i32 0, i32 0, !dbg !443
  %72 = load i8*, i8** %71, align 8, !dbg !444
  %73 = getelementptr inbounds i8, i8* %72, i64 4, !dbg !444
  store i8* %73, i8** %71, align 8, !dbg !444
  %74 = load i32, i32* %3, align 4, !dbg !445
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i32 0, i32 0), i32 %74), !dbg !446
  br label %81, !dbg !447

; <label>:75:                                     ; preds = %28
  call void @rdpdr_send_client_capability_response(), !dbg !448
  br label %81, !dbg !449

; <label>:76:                                     ; preds = %28
  %77 = load i16, i16* %6, align 2, !dbg !450
  %78 = zext i16 %77 to i32, !dbg !450
  %79 = load i16, i16* %5, align 2, !dbg !451
  %80 = zext i16 %79 to i32, !dbg !451
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0), i32 %78, i32 %80), !dbg !452
  br label %81, !dbg !453

; <label>:81:                                     ; preds = %76, %75, %64, %63, %60, %31
  br label %97, !dbg !454

; <label>:82:                                     ; preds = %1
  %83 = load i16, i16* %5, align 2, !dbg !455
  %84 = zext i16 %83 to i32, !dbg !455
  %85 = icmp eq i32 %84, 20562, !dbg !457
  br i1 %85, label %86, label %93, !dbg !458

; <label>:86:                                     ; preds = %82
  %87 = load i16, i16* %6, align 2, !dbg !459
  %88 = zext i16 %87 to i32, !dbg !459
  %89 = icmp eq i32 %88, 20547, !dbg !462
  br i1 %89, label %90, label %92, !dbg !463

; <label>:90:                                     ; preds = %86
  %91 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !464
  call void @printercache_process(%struct.stream* %91), !dbg !465
  br label %92, !dbg !465

; <label>:92:                                     ; preds = %90, %86
  br label %96, !dbg !466

; <label>:93:                                     ; preds = %82
  %94 = load i16, i16* %5, align 2, !dbg !467
  %95 = zext i16 %94 to i32, !dbg !467
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i32 %95), !dbg !468
  br label %96

; <label>:96:                                     ; preds = %93, %92
  br label %97

; <label>:97:                                     ; preds = %96, %81
  ret void, !dbg !469
}

; Function Attrs: nounwind uwtable
define void @rdpdr_add_fds(i32*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*, i32*) #0 !dbg !470 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.fd_set*, align 8
  %8 = alloca %struct.fd_set*, align 8
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.async_iorequest*, align 8
  %13 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !489, metadata !215), !dbg !490
  store %struct.fd_set* %1, %struct.fd_set** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %7, metadata !491, metadata !215), !dbg !492
  store %struct.fd_set* %2, %struct.fd_set** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %8, metadata !493, metadata !215), !dbg !494
  store %struct.timeval* %3, %struct.timeval** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval** %9, metadata !495, metadata !215), !dbg !496
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !497, metadata !215), !dbg !498
  call void @llvm.dbg.declare(metadata i32* %11, metadata !499, metadata !215), !dbg !500
  store i32 0, i32* %11, align 4, !dbg !500
  call void @llvm.dbg.declare(metadata %struct.async_iorequest** %12, metadata !501, metadata !215), !dbg !502
  call void @llvm.dbg.declare(metadata i8* %13, metadata !503, metadata !215), !dbg !504
  %14 = load %struct.async_iorequest*, %struct.async_iorequest** @g_iorequest, align 8, !dbg !505
  store %struct.async_iorequest* %14, %struct.async_iorequest** %12, align 8, !dbg !506
  br label %15, !dbg !507

; <label>:15:                                     ; preds = %185, %5
  %16 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !508
  %17 = icmp ne %struct.async_iorequest* %16, null, !dbg !510
  br i1 %17, label %18, label %189, !dbg !511

; <label>:18:                                     ; preds = %15
  %19 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !512
  %20 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %19, i32 0, i32 0, !dbg !515
  %21 = load i32, i32* %20, align 8, !dbg !515
  %22 = icmp ne i32 %21, 0, !dbg !516
  br i1 %22, label %23, label %185, !dbg !517

; <label>:23:                                     ; preds = %18
  %24 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !518
  %25 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %24, i32 0, i32 1, !dbg !520
  %26 = load i32, i32* %25, align 4, !dbg !520
  switch i32 %26, label %184 [
    i32 3, label %27
    i32 4, label %135
    i32 14, label %179
  ], !dbg !521

; <label>:27:                                     ; preds = %23
  %28 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !522
  %29 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %28, i32 0, i32 0, !dbg !524
  %30 = load i32, i32* %29, align 8, !dbg !524
  %31 = urem i32 %30, 64, !dbg !525
  %32 = zext i32 %31 to i64, !dbg !526
  %33 = shl i64 1, %32, !dbg !526
  %34 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !522
  %35 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %34, i32 0, i32 0, !dbg !524
  %36 = load i32, i32* %35, align 8, !dbg !524
  %37 = udiv i32 %36, 64, !dbg !525
  %38 = zext i32 %37 to i64, !dbg !527
  %39 = load %struct.fd_set*, %struct.fd_set** %7, align 8, !dbg !522
  %40 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %39, i32 0, i32 0, !dbg !528
  %41 = getelementptr inbounds [16 x i64], [16 x i64]* %40, i64 0, i64 %38, !dbg !527
  %42 = load i64, i64* %41, align 8, !dbg !529
  %43 = or i64 %42, %33, !dbg !529
  store i64 %43, i64* %41, align 8, !dbg !529
  %44 = load i32*, i32** %6, align 8, !dbg !530
  %45 = load i32, i32* %44, align 4, !dbg !531
  %46 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !532
  %47 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %46, i32 0, i32 0, !dbg !533
  %48 = load i32, i32* %47, align 8, !dbg !533
  %49 = icmp sgt i32 %45, %48, !dbg !534
  br i1 %49, label %50, label %53, !dbg !535

; <label>:50:                                     ; preds = %27
  %51 = load i32*, i32** %6, align 8, !dbg !536
  %52 = load i32, i32* %51, align 4, !dbg !538
  br label %57, !dbg !539

; <label>:53:                                     ; preds = %27
  %54 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !540
  %55 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %54, i32 0, i32 0, !dbg !542
  %56 = load i32, i32* %55, align 8, !dbg !542
  br label %57, !dbg !543

; <label>:57:                                     ; preds = %53, %50
  %58 = phi i32 [ %52, %50 ], [ %56, %53 ], !dbg !544
  %59 = load i32*, i32** %6, align 8, !dbg !546
  store i32 %58, i32* %59, align 4, !dbg !547
  %60 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !548
  %61 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %60, i32 0, i32 8, !dbg !550
  %62 = load i64, i64* %61, align 8, !dbg !550
  %63 = icmp ne i64 %62, 0, !dbg !548
  br i1 %63, label %64, label %94, !dbg !551

; <label>:64:                                     ; preds = %57
  %65 = load i32, i32* %11, align 4, !dbg !552
  %66 = icmp eq i32 %65, 0, !dbg !554
  br i1 %66, label %74, label %67, !dbg !555

; <label>:67:                                     ; preds = %64
  %68 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !556
  %69 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %68, i32 0, i32 8, !dbg !557
  %70 = load i64, i64* %69, align 8, !dbg !557
  %71 = load i32, i32* %11, align 4, !dbg !558
  %72 = zext i32 %71 to i64, !dbg !558
  %73 = icmp slt i64 %70, %72, !dbg !559
  br i1 %73, label %74, label %94, !dbg !560

; <label>:74:                                     ; preds = %67, %64
  %75 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !561
  %76 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %75, i32 0, i32 8, !dbg !563
  %77 = load i64, i64* %76, align 8, !dbg !563
  %78 = trunc i64 %77 to i32, !dbg !561
  store i32 %78, i32* %11, align 4, !dbg !564
  %79 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !565
  %80 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %79, i32 0, i32 0, !dbg !566
  %81 = load i32, i32* %80, align 8, !dbg !566
  store i32 %81, i32* @g_min_timeout_fd, align 4, !dbg !567
  %82 = load i32, i32* %11, align 4, !dbg !568
  %83 = udiv i32 %82, 1000, !dbg !569
  %84 = zext i32 %83 to i64, !dbg !568
  %85 = load %struct.timeval*, %struct.timeval** %9, align 8, !dbg !570
  %86 = getelementptr inbounds %struct.timeval, %struct.timeval* %85, i32 0, i32 0, !dbg !571
  store i64 %84, i64* %86, align 8, !dbg !572
  %87 = load i32, i32* %11, align 4, !dbg !573
  %88 = urem i32 %87, 1000, !dbg !574
  %89 = mul i32 %88, 1000, !dbg !575
  %90 = zext i32 %89 to i64, !dbg !576
  %91 = load %struct.timeval*, %struct.timeval** %9, align 8, !dbg !577
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %91, i32 0, i32 1, !dbg !578
  store i64 %90, i64* %92, align 8, !dbg !579
  %93 = load i32*, i32** %10, align 8, !dbg !580
  store i32 1, i32* %93, align 4, !dbg !581
  br label %184, !dbg !582

; <label>:94:                                     ; preds = %67, %57
  %95 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !583
  %96 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %95, i32 0, i32 9, !dbg !585
  %97 = load i64, i64* %96, align 8, !dbg !585
  %98 = icmp ne i64 %97, 0, !dbg !583
  br i1 %98, label %99, label %134, !dbg !586

; <label>:99:                                     ; preds = %94
  %100 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !587
  %101 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %100, i32 0, i32 7, !dbg !589
  %102 = load i32, i32* %101, align 4, !dbg !589
  %103 = icmp ugt i32 %102, 0, !dbg !590
  br i1 %103, label %104, label %134, !dbg !591

; <label>:104:                                    ; preds = %99
  %105 = load i32, i32* %11, align 4, !dbg !592
  %106 = icmp eq i32 %105, 0, !dbg !593
  br i1 %106, label %114, label %107, !dbg !594

; <label>:107:                                    ; preds = %104
  %108 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !595
  %109 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %108, i32 0, i32 9, !dbg !596
  %110 = load i64, i64* %109, align 8, !dbg !596
  %111 = load i32, i32* %11, align 4, !dbg !597
  %112 = zext i32 %111 to i64, !dbg !597
  %113 = icmp slt i64 %110, %112, !dbg !598
  br i1 %113, label %114, label %134, !dbg !599

; <label>:114:                                    ; preds = %107, %104
  %115 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !600
  %116 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %115, i32 0, i32 9, !dbg !602
  %117 = load i64, i64* %116, align 8, !dbg !602
  %118 = trunc i64 %117 to i32, !dbg !600
  store i32 %118, i32* %11, align 4, !dbg !603
  %119 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !604
  %120 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %119, i32 0, i32 0, !dbg !605
  %121 = load i32, i32* %120, align 8, !dbg !605
  store i32 %121, i32* @g_min_timeout_fd, align 4, !dbg !606
  %122 = load i32, i32* %11, align 4, !dbg !607
  %123 = udiv i32 %122, 1000, !dbg !608
  %124 = zext i32 %123 to i64, !dbg !607
  %125 = load %struct.timeval*, %struct.timeval** %9, align 8, !dbg !609
  %126 = getelementptr inbounds %struct.timeval, %struct.timeval* %125, i32 0, i32 0, !dbg !610
  store i64 %124, i64* %126, align 8, !dbg !611
  %127 = load i32, i32* %11, align 4, !dbg !612
  %128 = urem i32 %127, 1000, !dbg !613
  %129 = mul i32 %128, 1000, !dbg !614
  %130 = zext i32 %129 to i64, !dbg !615
  %131 = load %struct.timeval*, %struct.timeval** %9, align 8, !dbg !616
  %132 = getelementptr inbounds %struct.timeval, %struct.timeval* %131, i32 0, i32 1, !dbg !617
  store i64 %130, i64* %132, align 8, !dbg !618
  %133 = load i32*, i32** %10, align 8, !dbg !619
  store i32 1, i32* %133, align 4, !dbg !620
  br label %184, !dbg !621

; <label>:134:                                    ; preds = %107, %99, %94
  br label %184, !dbg !622

; <label>:135:                                    ; preds = %23
  %136 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !623
  %137 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %136, i32 0, i32 0, !dbg !625
  %138 = load i32, i32* %137, align 8, !dbg !625
  %139 = call i64 @write(i32 %138, i8* %13, i64 0), !dbg !626
  %140 = icmp ne i64 %139, 0, !dbg !627
  br i1 %140, label %141, label %146, !dbg !628

; <label>:141:                                    ; preds = %135
  %142 = call i32* @__errno_location() #1, !dbg !629
  %143 = load i32, i32* %142, align 4, !dbg !631
  %144 = icmp eq i32 %143, 9, !dbg !632
  br i1 %144, label %145, label %146, !dbg !633

; <label>:145:                                    ; preds = %141
  br label %184, !dbg !634

; <label>:146:                                    ; preds = %141, %135
  %147 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !635
  %148 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %147, i32 0, i32 0, !dbg !636
  %149 = load i32, i32* %148, align 8, !dbg !636
  %150 = urem i32 %149, 64, !dbg !637
  %151 = zext i32 %150 to i64, !dbg !638
  %152 = shl i64 1, %151, !dbg !638
  %153 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !635
  %154 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %153, i32 0, i32 0, !dbg !636
  %155 = load i32, i32* %154, align 8, !dbg !636
  %156 = udiv i32 %155, 64, !dbg !637
  %157 = zext i32 %156 to i64, !dbg !639
  %158 = load %struct.fd_set*, %struct.fd_set** %8, align 8, !dbg !635
  %159 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %158, i32 0, i32 0, !dbg !640
  %160 = getelementptr inbounds [16 x i64], [16 x i64]* %159, i64 0, i64 %157, !dbg !639
  %161 = load i64, i64* %160, align 8, !dbg !641
  %162 = or i64 %161, %152, !dbg !641
  store i64 %162, i64* %160, align 8, !dbg !641
  %163 = load i32*, i32** %6, align 8, !dbg !642
  %164 = load i32, i32* %163, align 4, !dbg !643
  %165 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !644
  %166 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %165, i32 0, i32 0, !dbg !645
  %167 = load i32, i32* %166, align 8, !dbg !645
  %168 = icmp sgt i32 %164, %167, !dbg !646
  br i1 %168, label %169, label %172, !dbg !647

; <label>:169:                                    ; preds = %146
  %170 = load i32*, i32** %6, align 8, !dbg !648
  %171 = load i32, i32* %170, align 4, !dbg !649
  br label %176, !dbg !650

; <label>:172:                                    ; preds = %146
  %173 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !651
  %174 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %173, i32 0, i32 0, !dbg !652
  %175 = load i32, i32* %174, align 8, !dbg !652
  br label %176, !dbg !653

; <label>:176:                                    ; preds = %172, %169
  %177 = phi i32 [ %171, %169 ], [ %175, %172 ], !dbg !654
  %178 = load i32*, i32** %6, align 8, !dbg !655
  store i32 %177, i32* %178, align 4, !dbg !656
  br label %184, !dbg !657

; <label>:179:                                    ; preds = %23
  %180 = load i32, i32* %11, align 4, !dbg !658
  %181 = icmp ugt i32 %180, 5, !dbg !660
  br i1 %181, label %182, label %183, !dbg !661

; <label>:182:                                    ; preds = %179
  store i32 5, i32* %11, align 4, !dbg !662
  br label %183, !dbg !663

; <label>:183:                                    ; preds = %182, %179
  br label %184, !dbg !664

; <label>:184:                                    ; preds = %23, %183, %176, %145, %134, %114, %74
  br label %185, !dbg !665

; <label>:185:                                    ; preds = %184, %18
  %186 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8, !dbg !666
  %187 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %186, i32 0, i32 12, !dbg !667
  %188 = load %struct.async_iorequest*, %struct.async_iorequest** %187, align 8, !dbg !667
  store %struct.async_iorequest* %188, %struct.async_iorequest** %12, align 8, !dbg !668
  br label %15, !dbg !669, !llvm.loop !671

; <label>:189:                                    ; preds = %15
  ret void, !dbg !672
}

declare i64 @write(i32, i8*, i64) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define %struct.async_iorequest* @rdpdr_remove_iorequest(%struct.async_iorequest*, %struct.async_iorequest*) #0 !dbg !673 {
  %3 = alloca %struct.async_iorequest*, align 8
  %4 = alloca %struct.async_iorequest*, align 8
  %5 = alloca %struct.async_iorequest*, align 8
  store %struct.async_iorequest* %0, %struct.async_iorequest** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.async_iorequest** %4, metadata !676, metadata !215), !dbg !677
  store %struct.async_iorequest* %1, %struct.async_iorequest** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.async_iorequest** %5, metadata !678, metadata !215), !dbg !679
  %6 = load %struct.async_iorequest*, %struct.async_iorequest** %5, align 8, !dbg !680
  %7 = icmp ne %struct.async_iorequest* %6, null, !dbg !680
  br i1 %7, label %9, label %8, !dbg !682

; <label>:8:                                      ; preds = %2
  store %struct.async_iorequest* null, %struct.async_iorequest** %3, align 8, !dbg !683
  br label %40, !dbg !683

; <label>:9:                                      ; preds = %2
  %10 = load %struct.async_iorequest*, %struct.async_iorequest** %5, align 8, !dbg !684
  %11 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %10, i32 0, i32 10, !dbg !686
  %12 = load i8*, i8** %11, align 8, !dbg !686
  %13 = icmp ne i8* %12, null, !dbg !684
  br i1 %13, label %14, label %18, !dbg !687

; <label>:14:                                     ; preds = %9
  %15 = load %struct.async_iorequest*, %struct.async_iorequest** %5, align 8, !dbg !688
  %16 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %15, i32 0, i32 10, !dbg !689
  %17 = load i8*, i8** %16, align 8, !dbg !689
  call void @xfree(i8* %17), !dbg !690
  br label %18, !dbg !690

; <label>:18:                                     ; preds = %14, %9
  %19 = load %struct.async_iorequest*, %struct.async_iorequest** %4, align 8, !dbg !691
  %20 = icmp ne %struct.async_iorequest* %19, null, !dbg !691
  br i1 %20, label %21, label %32, !dbg !693

; <label>:21:                                     ; preds = %18
  %22 = load %struct.async_iorequest*, %struct.async_iorequest** %5, align 8, !dbg !694
  %23 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %22, i32 0, i32 12, !dbg !696
  %24 = load %struct.async_iorequest*, %struct.async_iorequest** %23, align 8, !dbg !696
  %25 = load %struct.async_iorequest*, %struct.async_iorequest** %4, align 8, !dbg !697
  %26 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %25, i32 0, i32 12, !dbg !698
  store %struct.async_iorequest* %24, %struct.async_iorequest** %26, align 8, !dbg !699
  %27 = load %struct.async_iorequest*, %struct.async_iorequest** %5, align 8, !dbg !700
  %28 = bitcast %struct.async_iorequest* %27 to i8*, !dbg !700
  call void @xfree(i8* %28), !dbg !701
  %29 = load %struct.async_iorequest*, %struct.async_iorequest** %4, align 8, !dbg !702
  %30 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %29, i32 0, i32 12, !dbg !703
  %31 = load %struct.async_iorequest*, %struct.async_iorequest** %30, align 8, !dbg !703
  store %struct.async_iorequest* %31, %struct.async_iorequest** %5, align 8, !dbg !704
  br label %38, !dbg !705

; <label>:32:                                     ; preds = %18
  %33 = load %struct.async_iorequest*, %struct.async_iorequest** %5, align 8, !dbg !706
  %34 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %33, i32 0, i32 12, !dbg !708
  %35 = load %struct.async_iorequest*, %struct.async_iorequest** %34, align 8, !dbg !708
  store %struct.async_iorequest* %35, %struct.async_iorequest** @g_iorequest, align 8, !dbg !709
  %36 = load %struct.async_iorequest*, %struct.async_iorequest** %5, align 8, !dbg !710
  %37 = bitcast %struct.async_iorequest* %36 to i8*, !dbg !710
  call void @xfree(i8* %37), !dbg !711
  store %struct.async_iorequest* null, %struct.async_iorequest** %5, align 8, !dbg !712
  br label %38

; <label>:38:                                     ; preds = %32, %21
  %39 = load %struct.async_iorequest*, %struct.async_iorequest** %5, align 8, !dbg !713
  store %struct.async_iorequest* %39, %struct.async_iorequest** %3, align 8, !dbg !714
  br label %40, !dbg !714

; <label>:40:                                     ; preds = %38, %8
  %41 = load %struct.async_iorequest*, %struct.async_iorequest** %3, align 8, !dbg !715
  ret %struct.async_iorequest* %41, !dbg !715
}

declare void @xfree(i8*) #3

; Function Attrs: nounwind uwtable
define void @rdpdr_check_fds(%struct.fd_set*, %struct.fd_set*, i32) #0 !dbg !716 {
  %4 = alloca %struct.fd_set*, align 8
  %5 = alloca %struct.fd_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fd_set, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fd_set* %0, %struct.fd_set** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %4, metadata !719, metadata !215), !dbg !720
  store %struct.fd_set* %1, %struct.fd_set** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %5, metadata !721, metadata !215), !dbg !722
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !723, metadata !215), !dbg !724
  call void @llvm.dbg.declare(metadata %struct.fd_set* %7, metadata !725, metadata !215), !dbg !726
  br label %10, !dbg !727, !llvm.loop !728

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !729, metadata !215), !dbg !731
  call void @llvm.dbg.declare(metadata i32* %9, metadata !732, metadata !215), !dbg !733
  %11 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %7, i32 0, i32 0, !dbg !734
  %12 = getelementptr inbounds [16 x i64], [16 x i64]* %11, i64 0, i64 0, !dbg !736
  %13 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %12) #8, !dbg !737, !srcloc !738
  %14 = extractvalue { i64, i64* } %13, 0, !dbg !737
  %15 = extractvalue { i64, i64* } %13, 1, !dbg !737
  %16 = trunc i64 %14 to i32, !dbg !737
  store i32 %16, i32* %8, align 4, !dbg !737
  %17 = ptrtoint i64* %15 to i64, !dbg !737
  %18 = trunc i64 %17 to i32, !dbg !737
  store i32 %18, i32* %9, align 4, !dbg !737
  br label %19, !dbg !739

; <label>:19:                                     ; preds = %10
  call void @_rdpdr_check_fds(%struct.fd_set* %7, %struct.fd_set* %7, i32 0), !dbg !740
  %20 = load %struct.fd_set*, %struct.fd_set** %4, align 8, !dbg !741
  %21 = load %struct.fd_set*, %struct.fd_set** %5, align 8, !dbg !742
  %22 = load i32, i32* %6, align 4, !dbg !743
  call void @_rdpdr_check_fds(%struct.fd_set* %20, %struct.fd_set* %21, i32 %22), !dbg !744
  ret void, !dbg !745
}

; Function Attrs: nounwind uwtable
define internal void @_rdpdr_check_fds(%struct.fd_set*, %struct.fd_set*, i32) #0 !dbg !746 {
  %4 = alloca %struct.fd_set*, align 8
  %5 = alloca %struct.fd_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._DEVICE_FNS*, align 8
  %10 = alloca %struct.async_iorequest*, align 8
  %11 = alloca %struct.async_iorequest*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stream, align 8
  %15 = alloca i8*, align 8
  store %struct.fd_set* %0, %struct.fd_set** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %4, metadata !747, metadata !215), !dbg !748
  store %struct.fd_set* %1, %struct.fd_set** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %5, metadata !749, metadata !215), !dbg !750
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !751, metadata !215), !dbg !752
  call void @llvm.dbg.declare(metadata i32* %7, metadata !753, metadata !215), !dbg !754
  call void @llvm.dbg.declare(metadata i32* %8, metadata !755, metadata !215), !dbg !756
  store i32 0, i32* %8, align 4, !dbg !756
  call void @llvm.dbg.declare(metadata %struct._DEVICE_FNS** %9, metadata !757, metadata !215), !dbg !758
  call void @llvm.dbg.declare(metadata %struct.async_iorequest** %10, metadata !759, metadata !215), !dbg !760
  call void @llvm.dbg.declare(metadata %struct.async_iorequest** %11, metadata !761, metadata !215), !dbg !762
  call void @llvm.dbg.declare(metadata i32* %12, metadata !763, metadata !215), !dbg !764
  store i32 0, i32* %12, align 4, !dbg !764
  call void @llvm.dbg.declare(metadata i32* %13, metadata !765, metadata !215), !dbg !766
  call void @llvm.dbg.declare(metadata %struct.stream* %14, metadata !767, metadata !215), !dbg !768
  call void @llvm.dbg.declare(metadata i8** %15, metadata !769, metadata !215), !dbg !770
  store i8* null, i8** %15, align 8, !dbg !770
  %16 = load i32, i32* %6, align 4, !dbg !771
  %17 = icmp ne i32 %16, 0, !dbg !771
  br i1 %17, label %18, label %67, !dbg !773

; <label>:18:                                     ; preds = %3
  %19 = load %struct.async_iorequest*, %struct.async_iorequest** @g_iorequest, align 8, !dbg !774
  store %struct.async_iorequest* %19, %struct.async_iorequest** %10, align 8, !dbg !776
  store %struct.async_iorequest* null, %struct.async_iorequest** %11, align 8, !dbg !777
  br label %20, !dbg !778

; <label>:20:                                     ; preds = %18
  %21 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !779
  %22 = icmp ne %struct.async_iorequest* %21, null, !dbg !781
  br i1 %22, label %23, label %64, !dbg !782

; <label>:23:                                     ; preds = %20
  %24 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !783
  %25 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %24, i32 0, i32 0, !dbg !786
  %26 = load i32, i32* %25, align 8, !dbg !786
  %27 = load i32, i32* @g_min_timeout_fd, align 4, !dbg !787
  %28 = icmp eq i32 %26, %27, !dbg !788
  br i1 %28, label %29, label %63, !dbg !789

; <label>:29:                                     ; preds = %23
  %30 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !790
  %31 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %30, i32 0, i32 7, !dbg !793
  %32 = load i32, i32* %31, align 4, !dbg !793
  %33 = icmp ugt i32 %32, 0, !dbg !794
  br i1 %33, label %34, label %62, !dbg !795

; <label>:34:                                     ; preds = %29
  %35 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !796
  %36 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %35, i32 0, i32 4, !dbg !797
  %37 = load i32, i32* %36, align 8, !dbg !797
  %38 = zext i32 %37 to i64, !dbg !798
  %39 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %38, !dbg !798
  %40 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %39, i32 0, i32 0, !dbg !799
  %41 = load i32, i32* %40, align 16, !dbg !799
  %42 = icmp eq i32 %41, 1, !dbg !800
  br i1 %42, label %43, label %62, !dbg !801

; <label>:43:                                     ; preds = %34
  %44 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !803
  %45 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %44, i32 0, i32 4, !dbg !805
  %46 = load i32, i32* %45, align 8, !dbg !805
  %47 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !806
  %48 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %47, i32 0, i32 5, !dbg !807
  %49 = load i32, i32* %48, align 4, !dbg !807
  %50 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !808
  %51 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %50, i32 0, i32 7, !dbg !809
  %52 = load i32, i32* %51, align 4, !dbg !809
  %53 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !810
  %54 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %53, i32 0, i32 10, !dbg !811
  %55 = load i8*, i8** %54, align 8, !dbg !811
  %56 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !812
  %57 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %56, i32 0, i32 7, !dbg !813
  %58 = load i32, i32* %57, align 4, !dbg !813
  call void @rdpdr_send_completion(i32 %46, i32 %49, i32 0, i32 %52, i8* %55, i32 %58), !dbg !814
  %59 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8, !dbg !815
  %60 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !816
  %61 = call %struct.async_iorequest* @rdpdr_remove_iorequest(%struct.async_iorequest* %59, %struct.async_iorequest* %60), !dbg !817
  store %struct.async_iorequest* %61, %struct.async_iorequest** %10, align 8, !dbg !818
  br label %413, !dbg !819

; <label>:62:                                     ; preds = %34, %29
  br label %64, !dbg !820

; <label>:63:                                     ; preds = %23
  br label %64, !dbg !822

; <label>:64:                                     ; preds = %63, %62, %20
  %65 = load i32, i32* @g_min_timeout_fd, align 4, !dbg !824
  %66 = call i32 @rdpdr_abort_io(i32 %65, i32 0, i32 -1073741566), !dbg !825
  br label %413, !dbg !826

; <label>:67:                                     ; preds = %3
  %68 = load %struct.async_iorequest*, %struct.async_iorequest** @g_iorequest, align 8, !dbg !827
  store %struct.async_iorequest* %68, %struct.async_iorequest** %10, align 8, !dbg !828
  store %struct.async_iorequest* null, %struct.async_iorequest** %11, align 8, !dbg !829
  br label %69, !dbg !830

; <label>:69:                                     ; preds = %355, %67
  %70 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !831
  %71 = icmp ne %struct.async_iorequest* %70, null, !dbg !833
  br i1 %71, label %72, label %356, !dbg !834

; <label>:72:                                     ; preds = %69
  %73 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !835
  %74 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %73, i32 0, i32 0, !dbg !838
  %75 = load i32, i32* %74, align 8, !dbg !838
  %76 = icmp ne i32 %75, 0, !dbg !839
  br i1 %76, label %77, label %347, !dbg !840

; <label>:77:                                     ; preds = %72
  %78 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !841
  %79 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %78, i32 0, i32 1, !dbg !843
  %80 = load i32, i32* %79, align 4, !dbg !843
  switch i32 %80, label %346 [
    i32 3, label %81
    i32 4, label %195
    i32 14, label %303
  ], !dbg !844

; <label>:81:                                     ; preds = %77
  %82 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !845
  %83 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %82, i32 0, i32 0, !dbg !848
  %84 = load i32, i32* %83, align 8, !dbg !848
  %85 = udiv i32 %84, 64, !dbg !849
  %86 = zext i32 %85 to i64, !dbg !849
  %87 = load %struct.fd_set*, %struct.fd_set** %4, align 8, !dbg !845
  %88 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %87, i32 0, i32 0, !dbg !850
  %89 = getelementptr inbounds [16 x i64], [16 x i64]* %88, i64 0, i64 %86, !dbg !849
  %90 = load i64, i64* %89, align 8, !dbg !849
  %91 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !845
  %92 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %91, i32 0, i32 0, !dbg !848
  %93 = load i32, i32* %92, align 8, !dbg !848
  %94 = urem i32 %93, 64, !dbg !849
  %95 = zext i32 %94 to i64, !dbg !851
  %96 = shl i64 1, %95, !dbg !851
  %97 = and i64 %90, %96, !dbg !852
  %98 = icmp ne i64 %97, 0, !dbg !853
  br i1 %98, label %99, label %194, !dbg !854

; <label>:99:                                     ; preds = %81
  %100 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !855
  %101 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %100, i32 0, i32 11, !dbg !857
  %102 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %101, align 8, !dbg !857
  store %struct._DEVICE_FNS* %102, %struct._DEVICE_FNS** %9, align 8, !dbg !858
  %103 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !859
  %104 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %103, i32 0, i32 6, !dbg !860
  %105 = load i32, i32* %104, align 8, !dbg !860
  %106 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !861
  %107 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %106, i32 0, i32 7, !dbg !862
  %108 = load i32, i32* %107, align 4, !dbg !862
  %109 = sub i32 %105, %108, !dbg !863
  %110 = icmp ugt i32 %109, 8192, !dbg !864
  br i1 %110, label %111, label %112, !dbg !865

; <label>:111:                                    ; preds = %99
  br label %120, !dbg !866

; <label>:112:                                    ; preds = %99
  %113 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !868
  %114 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %113, i32 0, i32 6, !dbg !869
  %115 = load i32, i32* %114, align 8, !dbg !869
  %116 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !870
  %117 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %116, i32 0, i32 7, !dbg !871
  %118 = load i32, i32* %117, align 4, !dbg !871
  %119 = sub i32 %115, %118, !dbg !872
  br label %120, !dbg !873

; <label>:120:                                    ; preds = %112, %111
  %121 = phi i32 [ 8192, %111 ], [ %119, %112 ], !dbg !875
  store i32 %121, i32* %12, align 4, !dbg !877
  %122 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %9, align 8, !dbg !878
  %123 = getelementptr inbounds %struct._DEVICE_FNS, %struct._DEVICE_FNS* %122, i32 0, i32 2, !dbg !879
  %124 = load i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i8*, i32, i32, i32*)** %123, align 8, !dbg !879
  %125 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !880
  %126 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %125, i32 0, i32 0, !dbg !881
  %127 = load i32, i32* %126, align 8, !dbg !881
  %128 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !882
  %129 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %128, i32 0, i32 10, !dbg !883
  %130 = load i8*, i8** %129, align 8, !dbg !883
  %131 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !884
  %132 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %131, i32 0, i32 7, !dbg !885
  %133 = load i32, i32* %132, align 4, !dbg !885
  %134 = zext i32 %133 to i64, !dbg !886
  %135 = getelementptr inbounds i8, i8* %130, i64 %134, !dbg !886
  %136 = load i32, i32* %12, align 4, !dbg !887
  %137 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !888
  %138 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %137, i32 0, i32 3, !dbg !889
  %139 = load i32, i32* %138, align 4, !dbg !889
  %140 = call i32 %124(i32 %127, i8* %135, i32 %136, i32 %139, i32* %8), !dbg !878
  store i32 %140, i32* %7, align 4, !dbg !890
  %141 = load i32, i32* %8, align 4, !dbg !891
  %142 = zext i32 %141 to i64, !dbg !893
  %143 = icmp sgt i64 %142, 0, !dbg !894
  br i1 %143, label %144, label %155, !dbg !895

; <label>:144:                                    ; preds = %120
  %145 = load i32, i32* %8, align 4, !dbg !896
  %146 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !898
  %147 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %146, i32 0, i32 7, !dbg !899
  %148 = load i32, i32* %147, align 4, !dbg !900
  %149 = add i32 %148, %145, !dbg !900
  store i32 %149, i32* %147, align 4, !dbg !900
  %150 = load i32, i32* %8, align 4, !dbg !901
  %151 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !902
  %152 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %151, i32 0, i32 3, !dbg !903
  %153 = load i32, i32* %152, align 4, !dbg !904
  %154 = add i32 %153, %150, !dbg !904
  store i32 %154, i32* %152, align 4, !dbg !904
  br label %155, !dbg !905

; <label>:155:                                    ; preds = %144, %120
  %156 = load i32, i32* %8, align 4, !dbg !906
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i32 0, i32 0), i32 %156), !dbg !907
  %157 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !908
  %158 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %157, i32 0, i32 7, !dbg !910
  %159 = load i32, i32* %158, align 4, !dbg !910
  %160 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !911
  %161 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %160, i32 0, i32 6, !dbg !912
  %162 = load i32, i32* %161, align 8, !dbg !912
  %163 = icmp eq i32 %159, %162, !dbg !913
  br i1 %163, label %167, label %164, !dbg !914

; <label>:164:                                    ; preds = %155
  %165 = load i32, i32* %8, align 4, !dbg !915
  %166 = icmp eq i32 %165, 0, !dbg !916
  br i1 %166, label %167, label %193, !dbg !917

; <label>:167:                                    ; preds = %164, %155
  %168 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !918
  %169 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %168, i32 0, i32 7, !dbg !920
  %170 = load i32, i32* %169, align 4, !dbg !920
  %171 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !921
  %172 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %171, i32 0, i32 6, !dbg !922
  %173 = load i32, i32* %172, align 8, !dbg !922
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i32 0, i32 0), i32 %170, i32 %173), !dbg !923
  %174 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !924
  %175 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %174, i32 0, i32 4, !dbg !925
  %176 = load i32, i32* %175, align 8, !dbg !925
  %177 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !926
  %178 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %177, i32 0, i32 5, !dbg !927
  %179 = load i32, i32* %178, align 4, !dbg !927
  %180 = load i32, i32* %7, align 4, !dbg !928
  %181 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !929
  %182 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %181, i32 0, i32 7, !dbg !930
  %183 = load i32, i32* %182, align 4, !dbg !930
  %184 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !931
  %185 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %184, i32 0, i32 10, !dbg !932
  %186 = load i8*, i8** %185, align 8, !dbg !932
  %187 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !933
  %188 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %187, i32 0, i32 7, !dbg !934
  %189 = load i32, i32* %188, align 4, !dbg !934
  call void @rdpdr_send_completion(i32 %176, i32 %179, i32 %180, i32 %183, i8* %186, i32 %189), !dbg !935
  %190 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8, !dbg !936
  %191 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !937
  %192 = call %struct.async_iorequest* @rdpdr_remove_iorequest(%struct.async_iorequest* %190, %struct.async_iorequest* %191), !dbg !938
  store %struct.async_iorequest* %192, %struct.async_iorequest** %10, align 8, !dbg !939
  br label %193, !dbg !940

; <label>:193:                                    ; preds = %167, %164
  br label %194, !dbg !941

; <label>:194:                                    ; preds = %193, %81
  br label %346, !dbg !942

; <label>:195:                                    ; preds = %77
  %196 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !943
  %197 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %196, i32 0, i32 0, !dbg !945
  %198 = load i32, i32* %197, align 8, !dbg !945
  %199 = udiv i32 %198, 64, !dbg !946
  %200 = zext i32 %199 to i64, !dbg !946
  %201 = load %struct.fd_set*, %struct.fd_set** %5, align 8, !dbg !943
  %202 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %201, i32 0, i32 0, !dbg !947
  %203 = getelementptr inbounds [16 x i64], [16 x i64]* %202, i64 0, i64 %200, !dbg !946
  %204 = load i64, i64* %203, align 8, !dbg !946
  %205 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !943
  %206 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %205, i32 0, i32 0, !dbg !945
  %207 = load i32, i32* %206, align 8, !dbg !945
  %208 = urem i32 %207, 64, !dbg !946
  %209 = zext i32 %208 to i64, !dbg !948
  %210 = shl i64 1, %209, !dbg !948
  %211 = and i64 %204, %210, !dbg !949
  %212 = icmp ne i64 %211, 0, !dbg !950
  br i1 %212, label %213, label %302, !dbg !951

; <label>:213:                                    ; preds = %195
  %214 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !952
  %215 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %214, i32 0, i32 11, !dbg !954
  %216 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %215, align 8, !dbg !954
  store %struct._DEVICE_FNS* %216, %struct._DEVICE_FNS** %9, align 8, !dbg !955
  %217 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !956
  %218 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %217, i32 0, i32 6, !dbg !957
  %219 = load i32, i32* %218, align 8, !dbg !957
  %220 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !958
  %221 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %220, i32 0, i32 7, !dbg !959
  %222 = load i32, i32* %221, align 4, !dbg !959
  %223 = sub i32 %219, %222, !dbg !960
  %224 = icmp ugt i32 %223, 8192, !dbg !961
  br i1 %224, label %225, label %226, !dbg !962

; <label>:225:                                    ; preds = %213
  br label %234, !dbg !963

; <label>:226:                                    ; preds = %213
  %227 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !965
  %228 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %227, i32 0, i32 6, !dbg !966
  %229 = load i32, i32* %228, align 8, !dbg !966
  %230 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !967
  %231 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %230, i32 0, i32 7, !dbg !968
  %232 = load i32, i32* %231, align 4, !dbg !968
  %233 = sub i32 %229, %232, !dbg !969
  br label %234, !dbg !970

; <label>:234:                                    ; preds = %226, %225
  %235 = phi i32 [ 8192, %225 ], [ %233, %226 ], !dbg !972
  store i32 %235, i32* %12, align 4, !dbg !974
  %236 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %9, align 8, !dbg !975
  %237 = getelementptr inbounds %struct._DEVICE_FNS, %struct._DEVICE_FNS* %236, i32 0, i32 3, !dbg !976
  %238 = load i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i8*, i32, i32, i32*)** %237, align 8, !dbg !976
  %239 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !977
  %240 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %239, i32 0, i32 0, !dbg !978
  %241 = load i32, i32* %240, align 8, !dbg !978
  %242 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !979
  %243 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %242, i32 0, i32 10, !dbg !980
  %244 = load i8*, i8** %243, align 8, !dbg !980
  %245 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !981
  %246 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %245, i32 0, i32 7, !dbg !982
  %247 = load i32, i32* %246, align 4, !dbg !982
  %248 = zext i32 %247 to i64, !dbg !983
  %249 = getelementptr inbounds i8, i8* %244, i64 %248, !dbg !983
  %250 = load i32, i32* %12, align 4, !dbg !984
  %251 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !985
  %252 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %251, i32 0, i32 3, !dbg !986
  %253 = load i32, i32* %252, align 4, !dbg !986
  %254 = call i32 %238(i32 %241, i8* %249, i32 %250, i32 %253, i32* %8), !dbg !975
  store i32 %254, i32* %7, align 4, !dbg !987
  %255 = load i32, i32* %8, align 4, !dbg !988
  %256 = zext i32 %255 to i64, !dbg !990
  %257 = icmp sgt i64 %256, 0, !dbg !991
  br i1 %257, label %258, label %269, !dbg !992

; <label>:258:                                    ; preds = %234
  %259 = load i32, i32* %8, align 4, !dbg !993
  %260 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !995
  %261 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %260, i32 0, i32 7, !dbg !996
  %262 = load i32, i32* %261, align 4, !dbg !997
  %263 = add i32 %262, %259, !dbg !997
  store i32 %263, i32* %261, align 4, !dbg !997
  %264 = load i32, i32* %8, align 4, !dbg !998
  %265 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !999
  %266 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %265, i32 0, i32 3, !dbg !1000
  %267 = load i32, i32* %266, align 4, !dbg !1001
  %268 = add i32 %267, %264, !dbg !1001
  store i32 %268, i32* %266, align 4, !dbg !1001
  br label %269, !dbg !1002

; <label>:269:                                    ; preds = %258, %234
  %270 = load i32, i32* %8, align 4, !dbg !1003
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0), i32 %270), !dbg !1004
  %271 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1005
  %272 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %271, i32 0, i32 7, !dbg !1007
  %273 = load i32, i32* %272, align 4, !dbg !1007
  %274 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1008
  %275 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %274, i32 0, i32 6, !dbg !1009
  %276 = load i32, i32* %275, align 8, !dbg !1009
  %277 = icmp eq i32 %273, %276, !dbg !1010
  br i1 %277, label %281, label %278, !dbg !1011

; <label>:278:                                    ; preds = %269
  %279 = load i32, i32* %8, align 4, !dbg !1012
  %280 = icmp eq i32 %279, 0, !dbg !1014
  br i1 %280, label %281, label %301, !dbg !1015

; <label>:281:                                    ; preds = %278, %269
  %282 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1016
  %283 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %282, i32 0, i32 7, !dbg !1018
  %284 = load i32, i32* %283, align 4, !dbg !1018
  %285 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1019
  %286 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %285, i32 0, i32 6, !dbg !1020
  %287 = load i32, i32* %286, align 8, !dbg !1020
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0), i32 %284, i32 %287), !dbg !1021
  %288 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1022
  %289 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %288, i32 0, i32 4, !dbg !1023
  %290 = load i32, i32* %289, align 8, !dbg !1023
  %291 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1024
  %292 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %291, i32 0, i32 5, !dbg !1025
  %293 = load i32, i32* %292, align 4, !dbg !1025
  %294 = load i32, i32* %7, align 4, !dbg !1026
  %295 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1027
  %296 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %295, i32 0, i32 7, !dbg !1028
  %297 = load i32, i32* %296, align 4, !dbg !1028
  call void @rdpdr_send_completion(i32 %290, i32 %293, i32 %294, i32 %297, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !1029
  %298 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8, !dbg !1030
  %299 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1031
  %300 = call %struct.async_iorequest* @rdpdr_remove_iorequest(%struct.async_iorequest* %298, %struct.async_iorequest* %299), !dbg !1032
  store %struct.async_iorequest* %300, %struct.async_iorequest** %10, align 8, !dbg !1033
  br label %301, !dbg !1034

; <label>:301:                                    ; preds = %281, %278
  br label %302, !dbg !1035

; <label>:302:                                    ; preds = %301, %195
  br label %346, !dbg !1036

; <label>:303:                                    ; preds = %77
  %304 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1037
  %305 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %304, i32 0, i32 0, !dbg !1039
  %306 = load i32, i32* %305, align 8, !dbg !1039
  %307 = call i32 @serial_get_event(i32 %306, i32* %8), !dbg !1040
  %308 = icmp ne i32 %307, 0, !dbg !1040
  br i1 %308, label %309, label %345, !dbg !1041

; <label>:309:                                    ; preds = %303
  %310 = load i8*, i8** %15, align 8, !dbg !1042
  %311 = call i8* @xrealloc(i8* %310, i64 20), !dbg !1044
  store i8* %311, i8** %15, align 8, !dbg !1045
  %312 = load i8*, i8** %15, align 8, !dbg !1046
  %313 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !1047
  store i8* %312, i8** %313, align 8, !dbg !1048
  %314 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 2, !dbg !1049
  store i8* %312, i8** %314, align 8, !dbg !1050
  %315 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 3, !dbg !1051
  store i32 8, i32* %315, align 8, !dbg !1052
  %316 = load i32, i32* %8, align 4, !dbg !1053
  %317 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !1055
  %318 = load i8*, i8** %317, align 8, !dbg !1055
  %319 = bitcast i8* %318 to i32*, !dbg !1056
  store i32 %316, i32* %319, align 4, !dbg !1057
  %320 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !1058
  %321 = load i8*, i8** %320, align 8, !dbg !1059
  %322 = getelementptr inbounds i8, i8* %321, i64 4, !dbg !1059
  store i8* %322, i8** %320, align 8, !dbg !1059
  %323 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !1060
  %324 = load i8*, i8** %323, align 8, !dbg !1060
  %325 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 2, !dbg !1061
  %326 = load i8*, i8** %325, align 8, !dbg !1061
  %327 = ptrtoint i8* %324 to i64, !dbg !1062
  %328 = ptrtoint i8* %326 to i64, !dbg !1062
  %329 = sub i64 %327, %328, !dbg !1062
  %330 = trunc i64 %329 to i32, !dbg !1063
  store i32 %330, i32* %13, align 4, !dbg !1064
  store i32 %330, i32* %8, align 4, !dbg !1065
  store i32 0, i32* %7, align 4, !dbg !1066
  %331 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1067
  %332 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %331, i32 0, i32 4, !dbg !1068
  %333 = load i32, i32* %332, align 8, !dbg !1068
  %334 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1069
  %335 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %334, i32 0, i32 5, !dbg !1070
  %336 = load i32, i32* %335, align 4, !dbg !1070
  %337 = load i32, i32* %7, align 4, !dbg !1071
  %338 = load i32, i32* %8, align 4, !dbg !1072
  %339 = load i8*, i8** %15, align 8, !dbg !1073
  %340 = load i32, i32* %13, align 4, !dbg !1074
  call void @rdpdr_send_completion(i32 %333, i32 %336, i32 %337, i32 %338, i8* %339, i32 %340), !dbg !1075
  %341 = load i8*, i8** %15, align 8, !dbg !1076
  call void @xfree(i8* %341), !dbg !1077
  %342 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8, !dbg !1078
  %343 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1079
  %344 = call %struct.async_iorequest* @rdpdr_remove_iorequest(%struct.async_iorequest* %342, %struct.async_iorequest* %343), !dbg !1080
  store %struct.async_iorequest* %344, %struct.async_iorequest** %10, align 8, !dbg !1081
  br label %345, !dbg !1082

; <label>:345:                                    ; preds = %309, %303
  br label %346, !dbg !1083

; <label>:346:                                    ; preds = %77, %345, %302, %194
  br label %347, !dbg !1084

; <label>:347:                                    ; preds = %346, %72
  %348 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1085
  store %struct.async_iorequest* %348, %struct.async_iorequest** %11, align 8, !dbg !1086
  %349 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1087
  %350 = icmp ne %struct.async_iorequest* %349, null, !dbg !1087
  br i1 %350, label %351, label %355, !dbg !1089

; <label>:351:                                    ; preds = %347
  %352 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1090
  %353 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %352, i32 0, i32 12, !dbg !1091
  %354 = load %struct.async_iorequest*, %struct.async_iorequest** %353, align 8, !dbg !1091
  store %struct.async_iorequest* %354, %struct.async_iorequest** %10, align 8, !dbg !1092
  br label %355, !dbg !1093

; <label>:355:                                    ; preds = %351, %347
  br label %69, !dbg !1094, !llvm.loop !1096

; <label>:356:                                    ; preds = %69
  %357 = load %struct.async_iorequest*, %struct.async_iorequest** @g_iorequest, align 8, !dbg !1097
  store %struct.async_iorequest* %357, %struct.async_iorequest** %10, align 8, !dbg !1098
  store %struct.async_iorequest* null, %struct.async_iorequest** %11, align 8, !dbg !1099
  br label %358, !dbg !1100

; <label>:358:                                    ; preds = %412, %356
  %359 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1101
  %360 = icmp ne %struct.async_iorequest* %359, null, !dbg !1102
  br i1 %360, label %361, label %413, !dbg !1103

; <label>:361:                                    ; preds = %358
  %362 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1104
  %363 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %362, i32 0, i32 0, !dbg !1107
  %364 = load i32, i32* %363, align 8, !dbg !1107
  %365 = icmp ne i32 %364, 0, !dbg !1108
  br i1 %365, label %366, label %404, !dbg !1109

; <label>:366:                                    ; preds = %361
  %367 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1110
  %368 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %367, i32 0, i32 1, !dbg !1112
  %369 = load i32, i32* %368, align 4, !dbg !1112
  switch i32 %369, label %403 [
    i32 12, label %370
  ], !dbg !1113

; <label>:370:                                    ; preds = %366
  %371 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1114
  %372 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %371, i32 0, i32 4, !dbg !1117
  %373 = load i32, i32* %372, align 8, !dbg !1117
  %374 = zext i32 %373 to i64, !dbg !1118
  %375 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %374, !dbg !1118
  %376 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %375, i32 0, i32 0, !dbg !1119
  %377 = load i32, i32* %376, align 16, !dbg !1119
  %378 = icmp eq i32 %377, 8, !dbg !1120
  br i1 %378, label %379, label %402, !dbg !1121

; <label>:379:                                    ; preds = %370
  %380 = load i32, i32* @g_notify_stamp, align 4, !dbg !1122
  %381 = icmp ne i32 %380, 0, !dbg !1122
  br i1 %381, label %382, label %401, !dbg !1125

; <label>:382:                                    ; preds = %379
  store i32 0, i32* @g_notify_stamp, align 4, !dbg !1126
  %383 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1128
  %384 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %383, i32 0, i32 0, !dbg !1129
  %385 = load i32, i32* %384, align 8, !dbg !1129
  %386 = call i32 @disk_check_notify(i32 %385), !dbg !1130
  store i32 %386, i32* %7, align 4, !dbg !1131
  %387 = load i32, i32* %7, align 4, !dbg !1132
  %388 = icmp ne i32 %387, 259, !dbg !1134
  br i1 %388, label %389, label %400, !dbg !1135

; <label>:389:                                    ; preds = %382
  %390 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1136
  %391 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %390, i32 0, i32 4, !dbg !1138
  %392 = load i32, i32* %391, align 8, !dbg !1138
  %393 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1139
  %394 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %393, i32 0, i32 5, !dbg !1140
  %395 = load i32, i32* %394, align 4, !dbg !1140
  %396 = load i32, i32* %7, align 4, !dbg !1141
  call void @rdpdr_send_completion(i32 %392, i32 %395, i32 %396, i32 0, i8* null, i32 0), !dbg !1142
  %397 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8, !dbg !1143
  %398 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1144
  %399 = call %struct.async_iorequest* @rdpdr_remove_iorequest(%struct.async_iorequest* %397, %struct.async_iorequest* %398), !dbg !1145
  store %struct.async_iorequest* %399, %struct.async_iorequest** %10, align 8, !dbg !1146
  br label %400, !dbg !1147

; <label>:400:                                    ; preds = %389, %382
  br label %401, !dbg !1148

; <label>:401:                                    ; preds = %400, %379
  br label %402, !dbg !1149

; <label>:402:                                    ; preds = %401, %370
  br label %403, !dbg !1150

; <label>:403:                                    ; preds = %366, %402
  br label %404, !dbg !1151

; <label>:404:                                    ; preds = %403, %361
  %405 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1152
  store %struct.async_iorequest* %405, %struct.async_iorequest** %11, align 8, !dbg !1153
  %406 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1154
  %407 = icmp ne %struct.async_iorequest* %406, null, !dbg !1154
  br i1 %407, label %408, label %412, !dbg !1156

; <label>:408:                                    ; preds = %404
  %409 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1157
  %410 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %409, i32 0, i32 12, !dbg !1158
  %411 = load %struct.async_iorequest*, %struct.async_iorequest** %410, align 8, !dbg !1158
  store %struct.async_iorequest* %411, %struct.async_iorequest** %10, align 8, !dbg !1159
  br label %412, !dbg !1160

; <label>:412:                                    ; preds = %408, %404
  br label %358, !dbg !1161, !llvm.loop !1162

; <label>:413:                                    ; preds = %43, %64, %358
  ret void, !dbg !1163
}

; Function Attrs: nounwind uwtable
define i32 @rdpdr_abort_io(i32, i32, i32) #0 !dbg !1164 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.async_iorequest*, align 8
  %10 = alloca %struct.async_iorequest*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1167, metadata !215), !dbg !1168
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1169, metadata !215), !dbg !1170
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1171, metadata !215), !dbg !1172
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1173, metadata !215), !dbg !1174
  call void @llvm.dbg.declare(metadata %struct.async_iorequest** %9, metadata !1175, metadata !215), !dbg !1176
  call void @llvm.dbg.declare(metadata %struct.async_iorequest** %10, metadata !1177, metadata !215), !dbg !1178
  %11 = load %struct.async_iorequest*, %struct.async_iorequest** @g_iorequest, align 8, !dbg !1179
  store %struct.async_iorequest* %11, %struct.async_iorequest** %9, align 8, !dbg !1180
  store %struct.async_iorequest* null, %struct.async_iorequest** %10, align 8, !dbg !1181
  br label %12, !dbg !1182

; <label>:12:                                     ; preds = %42, %3
  %13 = load %struct.async_iorequest*, %struct.async_iorequest** %9, align 8, !dbg !1183
  %14 = icmp ne %struct.async_iorequest* %13, null, !dbg !1185
  br i1 %14, label %15, label %47, !dbg !1186

; <label>:15:                                     ; preds = %12
  %16 = load %struct.async_iorequest*, %struct.async_iorequest** %9, align 8, !dbg !1187
  %17 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %16, i32 0, i32 0, !dbg !1190
  %18 = load i32, i32* %17, align 8, !dbg !1190
  %19 = load i32, i32* %5, align 4, !dbg !1191
  %20 = icmp eq i32 %18, %19, !dbg !1192
  br i1 %20, label %21, label %42, !dbg !1193

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %6, align 4, !dbg !1194
  %23 = icmp eq i32 %22, 0, !dbg !1196
  br i1 %23, label %30, label %24, !dbg !1197

; <label>:24:                                     ; preds = %21
  %25 = load %struct.async_iorequest*, %struct.async_iorequest** %9, align 8, !dbg !1198
  %26 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %25, i32 0, i32 1, !dbg !1200
  %27 = load i32, i32* %26, align 4, !dbg !1200
  %28 = load i32, i32* %6, align 4, !dbg !1201
  %29 = icmp eq i32 %27, %28, !dbg !1202
  br i1 %29, label %30, label %42, !dbg !1203

; <label>:30:                                     ; preds = %24, %21
  store i32 0, i32* %8, align 4, !dbg !1204
  %31 = load %struct.async_iorequest*, %struct.async_iorequest** %9, align 8, !dbg !1206
  %32 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %31, i32 0, i32 4, !dbg !1207
  %33 = load i32, i32* %32, align 8, !dbg !1207
  %34 = load %struct.async_iorequest*, %struct.async_iorequest** %9, align 8, !dbg !1208
  %35 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %34, i32 0, i32 5, !dbg !1209
  %36 = load i32, i32* %35, align 4, !dbg !1209
  %37 = load i32, i32* %7, align 4, !dbg !1210
  %38 = load i32, i32* %8, align 4, !dbg !1211
  call void @rdpdr_send_completion(i32 %33, i32 %36, i32 %37, i32 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !1212
  %39 = load %struct.async_iorequest*, %struct.async_iorequest** %10, align 8, !dbg !1213
  %40 = load %struct.async_iorequest*, %struct.async_iorequest** %9, align 8, !dbg !1214
  %41 = call %struct.async_iorequest* @rdpdr_remove_iorequest(%struct.async_iorequest* %39, %struct.async_iorequest* %40), !dbg !1215
  store %struct.async_iorequest* %41, %struct.async_iorequest** %9, align 8, !dbg !1216
  store i32 1, i32* %4, align 4, !dbg !1217
  br label %48, !dbg !1217

; <label>:42:                                     ; preds = %24, %15
  %43 = load %struct.async_iorequest*, %struct.async_iorequest** %9, align 8, !dbg !1218
  store %struct.async_iorequest* %43, %struct.async_iorequest** %10, align 8, !dbg !1219
  %44 = load %struct.async_iorequest*, %struct.async_iorequest** %9, align 8, !dbg !1220
  %45 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %44, i32 0, i32 12, !dbg !1221
  %46 = load %struct.async_iorequest*, %struct.async_iorequest** %45, align 8, !dbg !1221
  store %struct.async_iorequest* %46, %struct.async_iorequest** %9, align 8, !dbg !1222
  br label %12, !dbg !1223, !llvm.loop !1225

; <label>:47:                                     ; preds = %12
  store i32 0, i32* %4, align 4, !dbg !1226
  br label %48, !dbg !1226

; <label>:48:                                     ; preds = %47, %30
  %49 = load i32, i32* %4, align 4, !dbg !1227
  ret i32 %49, !dbg !1227
}

; Function Attrs: nounwind uwtable
define internal void @rdpdr_process_irp(%struct.stream*) #0 !dbg !1228 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.stream, align 8
  %26 = alloca %struct._DEVICE_FNS*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !1229, metadata !215), !dbg !1230
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1231, metadata !215), !dbg !1232
  store i32 0, i32* %3, align 4, !dbg !1232
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1233, metadata !215), !dbg !1234
  store i32 0, i32* %4, align 4, !dbg !1234
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1235, metadata !215), !dbg !1236
  store i32 0, i32* %5, align 4, !dbg !1236
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1237, metadata !215), !dbg !1238
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1239, metadata !215), !dbg !1240
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1241, metadata !215), !dbg !1242
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1243, metadata !215), !dbg !1244
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1245, metadata !215), !dbg !1246
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1247, metadata !215), !dbg !1248
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1249, metadata !215), !dbg !1250
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1251, metadata !215), !dbg !1252
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1253, metadata !215), !dbg !1254
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1255, metadata !215), !dbg !1256
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1257, metadata !215), !dbg !1258
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1259, metadata !215), !dbg !1260
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1261, metadata !215), !dbg !1262
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1263, metadata !215), !dbg !1264
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1265, metadata !215), !dbg !1266
  store i32 0, i32* %20, align 4, !dbg !1266
  call void @llvm.dbg.declare(metadata i8** %21, metadata !1267, metadata !215), !dbg !1268
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1269, metadata !215), !dbg !1270
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1271, metadata !215), !dbg !1272
  call void @llvm.dbg.declare(metadata i8** %24, metadata !1273, metadata !215), !dbg !1274
  call void @llvm.dbg.declare(metadata %struct.stream* %25, metadata !1275, metadata !215), !dbg !1276
  call void @llvm.dbg.declare(metadata %struct._DEVICE_FNS** %26, metadata !1277, metadata !215), !dbg !1278
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1279, metadata !215), !dbg !1280
  store i32 1, i32* %27, align 4, !dbg !1280
  call void @llvm.dbg.declare(metadata i32* %28, metadata !1281, metadata !215), !dbg !1282
  store i32 -1073741808, i32* %28, align 4, !dbg !1282
  %29 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1283
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !1285
  %31 = load i8*, i8** %30, align 8, !dbg !1285
  %32 = bitcast i8* %31 to i32*, !dbg !1286
  %33 = load i32, i32* %32, align 4, !dbg !1286
  store i32 %33, i32* %13, align 4, !dbg !1287
  %34 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1288
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !1289
  %36 = load i8*, i8** %35, align 8, !dbg !1290
  %37 = getelementptr inbounds i8, i8* %36, i64 4, !dbg !1290
  store i8* %37, i8** %35, align 8, !dbg !1290
  %38 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1291
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !1293
  %40 = load i8*, i8** %39, align 8, !dbg !1293
  %41 = bitcast i8* %40 to i32*, !dbg !1294
  %42 = load i32, i32* %41, align 4, !dbg !1294
  store i32 %42, i32* %7, align 4, !dbg !1295
  %43 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1296
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !1297
  %45 = load i8*, i8** %44, align 8, !dbg !1298
  %46 = getelementptr inbounds i8, i8* %45, i64 4, !dbg !1298
  store i8* %46, i8** %44, align 8, !dbg !1298
  %47 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1299
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !1301
  %49 = load i8*, i8** %48, align 8, !dbg !1301
  %50 = bitcast i8* %49 to i32*, !dbg !1302
  %51 = load i32, i32* %50, align 4, !dbg !1302
  store i32 %51, i32* %10, align 4, !dbg !1303
  %52 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1304
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !1305
  %54 = load i8*, i8** %53, align 8, !dbg !1306
  %55 = getelementptr inbounds i8, i8* %54, i64 4, !dbg !1306
  store i8* %55, i8** %53, align 8, !dbg !1306
  %56 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1307
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 0, !dbg !1309
  %58 = load i8*, i8** %57, align 8, !dbg !1309
  %59 = bitcast i8* %58 to i32*, !dbg !1310
  %60 = load i32, i32* %59, align 4, !dbg !1310
  store i32 %60, i32* %11, align 4, !dbg !1311
  %61 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1312
  %62 = getelementptr inbounds %struct.stream, %struct.stream* %61, i32 0, i32 0, !dbg !1313
  %63 = load i8*, i8** %62, align 8, !dbg !1314
  %64 = getelementptr inbounds i8, i8* %63, i64 4, !dbg !1314
  store i8* %64, i8** %62, align 8, !dbg !1314
  %65 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1315
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 0, !dbg !1317
  %67 = load i8*, i8** %66, align 8, !dbg !1317
  %68 = bitcast i8* %67 to i32*, !dbg !1318
  %69 = load i32, i32* %68, align 4, !dbg !1318
  store i32 %69, i32* %12, align 4, !dbg !1319
  %70 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1320
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %70, i32 0, i32 0, !dbg !1321
  %72 = load i8*, i8** %71, align 8, !dbg !1322
  %73 = getelementptr inbounds i8, i8* %72, i64 4, !dbg !1322
  store i8* %73, i8** %71, align 8, !dbg !1322
  store i8* null, i8** %21, align 8, !dbg !1323
  store i32 0, i32* %9, align 4, !dbg !1324
  %74 = call i8* @xmalloc(i32 1024), !dbg !1325
  store i8* %74, i8** %23, align 8, !dbg !1326
  %75 = load i8*, i8** %23, align 8, !dbg !1327
  %76 = getelementptr inbounds i8, i8* %75, i64 0, !dbg !1327
  store i8 0, i8* %76, align 1, !dbg !1328
  %77 = load i32, i32* %13, align 4, !dbg !1329
  %78 = icmp uge i32 %77, 16, !dbg !1331
  br i1 %78, label %79, label %86, !dbg !1332

; <label>:79:                                     ; preds = %1
  %80 = load i32, i32* %13, align 4, !dbg !1333
  %81 = load i32, i32* %7, align 4, !dbg !1335
  %82 = load i32, i32* %10, align 4, !dbg !1336
  %83 = load i32, i32* %11, align 4, !dbg !1337
  %84 = load i32, i32* %12, align 4, !dbg !1338
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.7, i32 0, i32 0), i32 %80, i32 %81, i32 %82, i32 %83, i32 %84), !dbg !1339
  %85 = load i8*, i8** %23, align 8, !dbg !1340
  call void @xfree(i8* %85), !dbg !1341
  br label %708, !dbg !1342

; <label>:86:                                     ; preds = %1
  %87 = load i32, i32* %13, align 4, !dbg !1343
  %88 = zext i32 %87 to i64, !dbg !1344
  %89 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %88, !dbg !1344
  %90 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %89, i32 0, i32 0, !dbg !1345
  %91 = load i32, i32* %90, align 16, !dbg !1345
  switch i32 %91, label %97 [
    i32 1, label %92
    i32 2, label %93
    i32 4, label %94
    i32 8, label %95
    i32 32, label %96
  ], !dbg !1346

; <label>:92:                                     ; preds = %86
  store %struct._DEVICE_FNS* @serial_fns, %struct._DEVICE_FNS** %26, align 8, !dbg !1347
  store i32 0, i32* %27, align 4, !dbg !1349
  br label %100, !dbg !1350

; <label>:93:                                     ; preds = %86
  store %struct._DEVICE_FNS* @parallel_fns, %struct._DEVICE_FNS** %26, align 8, !dbg !1351
  store i32 0, i32* %27, align 4, !dbg !1352
  br label %100, !dbg !1353

; <label>:94:                                     ; preds = %86
  store %struct._DEVICE_FNS* @printer_fns, %struct._DEVICE_FNS** %26, align 8, !dbg !1354
  br label %100, !dbg !1355

; <label>:95:                                     ; preds = %86
  store %struct._DEVICE_FNS* @disk_fns, %struct._DEVICE_FNS** %26, align 8, !dbg !1356
  store i32 0, i32* %27, align 4, !dbg !1357
  br label %100, !dbg !1358

; <label>:96:                                     ; preds = %86
  br label %97, !dbg !1359

; <label>:97:                                     ; preds = %86, %96
  %98 = load i32, i32* %13, align 4, !dbg !1361
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0), i32 %98), !dbg !1362
  %99 = load i8*, i8** %23, align 8, !dbg !1363
  call void @xfree(i8* %99), !dbg !1364
  br label %708, !dbg !1365

; <label>:100:                                    ; preds = %95, %94, %93, %92
  %101 = load i32, i32* %11, align 4, !dbg !1366
  switch i32 %101, label %689 [
    i32 0, label %102
    i32 2, label %213
    i32 3, label %225
    i32 4, label %302
    i32 5, label %382
    i32 6, label %415
    i32 10, label %449
    i32 12, label %482
    i32 14, label %584
    i32 17, label %659
  ], !dbg !1367

; <label>:102:                                    ; preds = %100
  %103 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1368
  %104 = getelementptr inbounds %struct.stream, %struct.stream* %103, i32 0, i32 0, !dbg !1372
  %105 = load i8*, i8** %104, align 8, !dbg !1373
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1373
  store i8* %106, i8** %104, align 8, !dbg !1373
  %107 = load i8, i8* %105, align 1, !dbg !1374
  %108 = zext i8 %107 to i32, !dbg !1374
  store i32 %108, i32* %5, align 4, !dbg !1375
  %109 = load i32, i32* %5, align 4, !dbg !1376
  %110 = shl i32 %109, 8, !dbg !1377
  %111 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1378
  %112 = getelementptr inbounds %struct.stream, %struct.stream* %111, i32 0, i32 0, !dbg !1379
  %113 = load i8*, i8** %112, align 8, !dbg !1380
  %114 = getelementptr inbounds i8, i8* %113, i32 1, !dbg !1380
  store i8* %114, i8** %112, align 8, !dbg !1380
  %115 = load i8, i8* %113, align 1, !dbg !1381
  %116 = zext i8 %115 to i32, !dbg !1381
  %117 = add i32 %110, %116, !dbg !1382
  store i32 %117, i32* %5, align 4, !dbg !1383
  %118 = load i32, i32* %5, align 4, !dbg !1384
  %119 = shl i32 %118, 8, !dbg !1385
  %120 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1386
  %121 = getelementptr inbounds %struct.stream, %struct.stream* %120, i32 0, i32 0, !dbg !1387
  %122 = load i8*, i8** %121, align 8, !dbg !1388
  %123 = getelementptr inbounds i8, i8* %122, i32 1, !dbg !1388
  store i8* %123, i8** %121, align 8, !dbg !1388
  %124 = load i8, i8* %122, align 1, !dbg !1389
  %125 = zext i8 %124 to i32, !dbg !1389
  %126 = add i32 %119, %125, !dbg !1390
  store i32 %126, i32* %5, align 4, !dbg !1391
  %127 = load i32, i32* %5, align 4, !dbg !1392
  %128 = shl i32 %127, 8, !dbg !1393
  %129 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1394
  %130 = getelementptr inbounds %struct.stream, %struct.stream* %129, i32 0, i32 0, !dbg !1395
  %131 = load i8*, i8** %130, align 8, !dbg !1396
  %132 = getelementptr inbounds i8, i8* %131, i32 1, !dbg !1396
  store i8* %132, i8** %130, align 8, !dbg !1396
  %133 = load i8, i8* %131, align 1, !dbg !1397
  %134 = zext i8 %133 to i32, !dbg !1397
  %135 = add i32 %128, %134, !dbg !1398
  store i32 %135, i32* %5, align 4, !dbg !1399
  %136 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1400
  %137 = getelementptr inbounds %struct.stream, %struct.stream* %136, i32 0, i32 0, !dbg !1401
  %138 = load i8*, i8** %137, align 8, !dbg !1402
  %139 = getelementptr inbounds i8, i8* %138, i64 8, !dbg !1402
  store i8* %139, i8** %137, align 8, !dbg !1402
  %140 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1403
  %141 = getelementptr inbounds %struct.stream, %struct.stream* %140, i32 0, i32 0, !dbg !1404
  %142 = load i8*, i8** %141, align 8, !dbg !1405
  %143 = getelementptr inbounds i8, i8* %142, i64 4, !dbg !1405
  store i8* %143, i8** %141, align 8, !dbg !1405
  %144 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1406
  %145 = getelementptr inbounds %struct.stream, %struct.stream* %144, i32 0, i32 0, !dbg !1408
  %146 = load i8*, i8** %145, align 8, !dbg !1408
  %147 = bitcast i8* %146 to i32*, !dbg !1409
  %148 = load i32, i32* %147, align 4, !dbg !1409
  store i32 %148, i32* %16, align 4, !dbg !1410
  %149 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1411
  %150 = getelementptr inbounds %struct.stream, %struct.stream* %149, i32 0, i32 0, !dbg !1412
  %151 = load i8*, i8** %150, align 8, !dbg !1413
  %152 = getelementptr inbounds i8, i8* %151, i64 4, !dbg !1413
  store i8* %152, i8** %150, align 8, !dbg !1413
  %153 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1414
  %154 = getelementptr inbounds %struct.stream, %struct.stream* %153, i32 0, i32 0, !dbg !1416
  %155 = load i8*, i8** %154, align 8, !dbg !1416
  %156 = bitcast i8* %155 to i32*, !dbg !1417
  %157 = load i32, i32* %156, align 4, !dbg !1417
  store i32 %157, i32* %17, align 4, !dbg !1418
  %158 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1419
  %159 = getelementptr inbounds %struct.stream, %struct.stream* %158, i32 0, i32 0, !dbg !1420
  %160 = load i8*, i8** %159, align 8, !dbg !1421
  %161 = getelementptr inbounds i8, i8* %160, i64 4, !dbg !1421
  store i8* %161, i8** %159, align 8, !dbg !1421
  %162 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1422
  %163 = getelementptr inbounds %struct.stream, %struct.stream* %162, i32 0, i32 0, !dbg !1424
  %164 = load i8*, i8** %163, align 8, !dbg !1424
  %165 = bitcast i8* %164 to i32*, !dbg !1425
  %166 = load i32, i32* %165, align 4, !dbg !1425
  store i32 %166, i32* %20, align 4, !dbg !1426
  %167 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1427
  %168 = getelementptr inbounds %struct.stream, %struct.stream* %167, i32 0, i32 0, !dbg !1428
  %169 = load i8*, i8** %168, align 8, !dbg !1429
  %170 = getelementptr inbounds i8, i8* %169, i64 4, !dbg !1429
  store i8* %170, i8** %168, align 8, !dbg !1429
  %171 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1430
  %172 = getelementptr inbounds %struct.stream, %struct.stream* %171, i32 0, i32 0, !dbg !1432
  %173 = load i8*, i8** %172, align 8, !dbg !1432
  %174 = bitcast i8* %173 to i32*, !dbg !1433
  %175 = load i32, i32* %174, align 4, !dbg !1433
  store i32 %175, i32* %4, align 4, !dbg !1434
  %176 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1435
  %177 = getelementptr inbounds %struct.stream, %struct.stream* %176, i32 0, i32 0, !dbg !1436
  %178 = load i8*, i8** %177, align 8, !dbg !1437
  %179 = getelementptr inbounds i8, i8* %178, i64 4, !dbg !1437
  store i8* %179, i8** %177, align 8, !dbg !1437
  %180 = load i32, i32* %4, align 4, !dbg !1438
  %181 = icmp ne i32 %180, 0, !dbg !1438
  br i1 %181, label %182, label %194, !dbg !1440

; <label>:182:                                    ; preds = %102
  %183 = load i32, i32* %4, align 4, !dbg !1441
  %184 = udiv i32 %183, 2, !dbg !1443
  %185 = icmp ult i32 %184, 256, !dbg !1444
  br i1 %185, label %186, label %194, !dbg !1445

; <label>:186:                                    ; preds = %182
  %187 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1446
  %188 = load i32, i32* %4, align 4, !dbg !1448
  call void @rdp_in_unistr(%struct.stream* %187, i32 %188, i8** %21, i32* %22), !dbg !1449
  %189 = load i8*, i8** %21, align 8, !dbg !1450
  %190 = icmp ne i8* %189, null, !dbg !1450
  br i1 %190, label %191, label %193, !dbg !1452

; <label>:191:                                    ; preds = %186
  %192 = load i8*, i8** %21, align 8, !dbg !1453
  call void @convert_to_unix_filename(i8* %192), !dbg !1454
  br label %193, !dbg !1454

; <label>:193:                                    ; preds = %191, %186
  br label %194, !dbg !1455

; <label>:194:                                    ; preds = %193, %182, %102
  %195 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1456
  %196 = getelementptr inbounds %struct._DEVICE_FNS, %struct._DEVICE_FNS* %195, i32 0, i32 0, !dbg !1458
  %197 = load i32 (i32, i32, i32, i32, i32, i8*, i32*)*, i32 (i32, i32, i32, i32, i32, i8*, i32*)** %196, align 8, !dbg !1458
  %198 = icmp ne i32 (i32, i32, i32, i32, i32, i8*, i32*)* %197, null, !dbg !1456
  br i1 %198, label %201, label %199, !dbg !1459

; <label>:199:                                    ; preds = %194
  store i32 -1073741637, i32* %28, align 4, !dbg !1460
  %200 = load i8*, i8** %21, align 8, !dbg !1462
  call void @free(i8* %200) #8, !dbg !1463
  br label %692, !dbg !1464

; <label>:201:                                    ; preds = %194
  %202 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1465
  %203 = getelementptr inbounds %struct._DEVICE_FNS, %struct._DEVICE_FNS* %202, i32 0, i32 0, !dbg !1466
  %204 = load i32 (i32, i32, i32, i32, i32, i8*, i32*)*, i32 (i32, i32, i32, i32, i32, i8*, i32*)** %203, align 8, !dbg !1466
  %205 = load i32, i32* %13, align 4, !dbg !1467
  %206 = load i32, i32* %5, align 4, !dbg !1468
  %207 = load i32, i32* %16, align 4, !dbg !1469
  %208 = load i32, i32* %17, align 4, !dbg !1470
  %209 = load i32, i32* %20, align 4, !dbg !1471
  %210 = load i8*, i8** %21, align 8, !dbg !1472
  %211 = call i32 %204(i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i8* %210, i32* %3), !dbg !1465
  store i32 %211, i32* %28, align 4, !dbg !1473
  %212 = load i8*, i8** %21, align 8, !dbg !1474
  call void @free(i8* %212) #8, !dbg !1475
  store i32 1, i32* %9, align 4, !dbg !1476
  br label %692, !dbg !1477

; <label>:213:                                    ; preds = %100
  %214 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1478
  %215 = getelementptr inbounds %struct._DEVICE_FNS, %struct._DEVICE_FNS* %214, i32 0, i32 1, !dbg !1480
  %216 = load i32 (i32)*, i32 (i32)** %215, align 8, !dbg !1480
  %217 = icmp ne i32 (i32)* %216, null, !dbg !1478
  br i1 %217, label %219, label %218, !dbg !1481

; <label>:218:                                    ; preds = %213
  store i32 -1073741637, i32* %28, align 4, !dbg !1482
  br label %692, !dbg !1484

; <label>:219:                                    ; preds = %213
  %220 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1485
  %221 = getelementptr inbounds %struct._DEVICE_FNS, %struct._DEVICE_FNS* %220, i32 0, i32 1, !dbg !1486
  %222 = load i32 (i32)*, i32 (i32)** %221, align 8, !dbg !1486
  %223 = load i32, i32* %7, align 4, !dbg !1487
  %224 = call i32 %222(i32 %223), !dbg !1485
  store i32 %224, i32* %28, align 4, !dbg !1488
  br label %692, !dbg !1489

; <label>:225:                                    ; preds = %100
  %226 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1490
  %227 = getelementptr inbounds %struct._DEVICE_FNS, %struct._DEVICE_FNS* %226, i32 0, i32 2, !dbg !1492
  %228 = load i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i8*, i32, i32, i32*)** %227, align 8, !dbg !1492
  %229 = icmp ne i32 (i32, i8*, i32, i32, i32*)* %228, null, !dbg !1490
  br i1 %229, label %231, label %230, !dbg !1493

; <label>:230:                                    ; preds = %225
  store i32 -1073741637, i32* %28, align 4, !dbg !1494
  br label %692, !dbg !1496

; <label>:231:                                    ; preds = %225
  %232 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1497
  %233 = getelementptr inbounds %struct.stream, %struct.stream* %232, i32 0, i32 0, !dbg !1499
  %234 = load i8*, i8** %233, align 8, !dbg !1499
  %235 = bitcast i8* %234 to i32*, !dbg !1500
  %236 = load i32, i32* %235, align 4, !dbg !1500
  store i32 %236, i32* %4, align 4, !dbg !1501
  %237 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1502
  %238 = getelementptr inbounds %struct.stream, %struct.stream* %237, i32 0, i32 0, !dbg !1503
  %239 = load i8*, i8** %238, align 8, !dbg !1504
  %240 = getelementptr inbounds i8, i8* %239, i64 4, !dbg !1504
  store i8* %240, i8** %238, align 8, !dbg !1504
  %241 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1505
  %242 = getelementptr inbounds %struct.stream, %struct.stream* %241, i32 0, i32 0, !dbg !1507
  %243 = load i8*, i8** %242, align 8, !dbg !1507
  %244 = bitcast i8* %243 to i32*, !dbg !1508
  %245 = load i32, i32* %244, align 4, !dbg !1508
  store i32 %245, i32* %14, align 4, !dbg !1509
  %246 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1510
  %247 = getelementptr inbounds %struct.stream, %struct.stream* %246, i32 0, i32 0, !dbg !1511
  %248 = load i8*, i8** %247, align 8, !dbg !1512
  %249 = getelementptr inbounds i8, i8* %248, i64 4, !dbg !1512
  store i8* %249, i8** %247, align 8, !dbg !1512
  %250 = load i32, i32* %4, align 4, !dbg !1513
  %251 = load i32, i32* %14, align 4, !dbg !1514
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0), i32 %250, i32 %251), !dbg !1515
  %252 = load i32, i32* %13, align 4, !dbg !1516
  %253 = load i32, i32* %7, align 4, !dbg !1518
  %254 = call i32 @rdpdr_handle_ok(i32 %252, i32 %253), !dbg !1519
  %255 = icmp ne i32 %254, 0, !dbg !1519
  br i1 %255, label %257, label %256, !dbg !1520

; <label>:256:                                    ; preds = %231
  store i32 -1073741816, i32* %28, align 4, !dbg !1521
  br label %692, !dbg !1523

; <label>:257:                                    ; preds = %231
  %258 = load i32, i32* %27, align 4, !dbg !1524
  %259 = icmp ne i32 %258, 0, !dbg !1524
  br i1 %259, label %260, label %278, !dbg !1526

; <label>:260:                                    ; preds = %257
  %261 = load i8*, i8** %23, align 8, !dbg !1527
  %262 = load i32, i32* %4, align 4, !dbg !1529
  %263 = zext i32 %262 to i64, !dbg !1529
  %264 = call i8* @xrealloc(i8* %261, i64 %263), !dbg !1530
  store i8* %264, i8** %23, align 8, !dbg !1531
  %265 = load i8*, i8** %23, align 8, !dbg !1532
  %266 = icmp ne i8* %265, null, !dbg !1532
  br i1 %266, label %268, label %267, !dbg !1534

; <label>:267:                                    ; preds = %260
  store i32 -1073741536, i32* %28, align 4, !dbg !1535
  br label %692, !dbg !1537

; <label>:268:                                    ; preds = %260
  %269 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1538
  %270 = getelementptr inbounds %struct._DEVICE_FNS, %struct._DEVICE_FNS* %269, i32 0, i32 2, !dbg !1539
  %271 = load i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i8*, i32, i32, i32*)** %270, align 8, !dbg !1539
  %272 = load i32, i32* %7, align 4, !dbg !1540
  %273 = load i8*, i8** %23, align 8, !dbg !1541
  %274 = load i32, i32* %4, align 4, !dbg !1542
  %275 = load i32, i32* %14, align 4, !dbg !1543
  %276 = call i32 %271(i32 %272, i8* %273, i32 %274, i32 %275, i32* %3), !dbg !1538
  store i32 %276, i32* %28, align 4, !dbg !1544
  %277 = load i32, i32* %3, align 4, !dbg !1545
  store i32 %277, i32* %9, align 4, !dbg !1546
  br label %692, !dbg !1547

; <label>:278:                                    ; preds = %257
  %279 = load i32, i32* %4, align 4, !dbg !1548
  %280 = call i8* @xmalloc(i32 %279), !dbg !1549
  store i8* %280, i8** %24, align 8, !dbg !1550
  %281 = load i8*, i8** %24, align 8, !dbg !1551
  %282 = icmp ne i8* %281, null, !dbg !1551
  br i1 %282, label %284, label %283, !dbg !1553

; <label>:283:                                    ; preds = %278
  store i32 -1073741536, i32* %28, align 4, !dbg !1554
  br label %692, !dbg !1556

; <label>:284:                                    ; preds = %278
  %285 = load i32, i32* %7, align 4, !dbg !1557
  %286 = load i32, i32* %4, align 4, !dbg !1558
  %287 = call i32 @serial_get_timeout(i32 %285, i32 %286, i32* %18, i32* %19), !dbg !1559
  %288 = load i32, i32* %13, align 4, !dbg !1560
  %289 = load i32, i32* %7, align 4, !dbg !1562
  %290 = load i32, i32* %10, align 4, !dbg !1563
  %291 = load i32, i32* %11, align 4, !dbg !1564
  %292 = load i32, i32* %4, align 4, !dbg !1565
  %293 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1566
  %294 = load i32, i32* %18, align 4, !dbg !1567
  %295 = load i32, i32* %19, align 4, !dbg !1568
  %296 = load i8*, i8** %24, align 8, !dbg !1569
  %297 = load i32, i32* %14, align 4, !dbg !1570
  %298 = call i32 @add_async_iorequest(i32 %288, i32 %289, i32 %290, i32 %291, i32 %292, %struct._DEVICE_FNS* %293, i32 %294, i32 %295, i8* %296, i32 %297), !dbg !1571
  %299 = icmp ne i32 %298, 0, !dbg !1571
  br i1 %299, label %300, label %301, !dbg !1572

; <label>:300:                                    ; preds = %284
  store i32 259, i32* %28, align 4, !dbg !1573
  br label %692, !dbg !1575

; <label>:301:                                    ; preds = %284
  store i32 -1073741536, i32* %28, align 4, !dbg !1576
  br label %692, !dbg !1577

; <label>:302:                                    ; preds = %100
  store i32 1, i32* %9, align 4, !dbg !1578
  %303 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1579
  %304 = getelementptr inbounds %struct._DEVICE_FNS, %struct._DEVICE_FNS* %303, i32 0, i32 3, !dbg !1581
  %305 = load i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i8*, i32, i32, i32*)** %304, align 8, !dbg !1581
  %306 = icmp ne i32 (i32, i8*, i32, i32, i32*)* %305, null, !dbg !1579
  br i1 %306, label %308, label %307, !dbg !1582

; <label>:307:                                    ; preds = %302
  store i32 -1073741637, i32* %28, align 4, !dbg !1583
  br label %692, !dbg !1585

; <label>:308:                                    ; preds = %302
  %309 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1586
  %310 = getelementptr inbounds %struct.stream, %struct.stream* %309, i32 0, i32 0, !dbg !1588
  %311 = load i8*, i8** %310, align 8, !dbg !1588
  %312 = bitcast i8* %311 to i32*, !dbg !1589
  %313 = load i32, i32* %312, align 4, !dbg !1589
  store i32 %313, i32* %4, align 4, !dbg !1590
  %314 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1591
  %315 = getelementptr inbounds %struct.stream, %struct.stream* %314, i32 0, i32 0, !dbg !1592
  %316 = load i8*, i8** %315, align 8, !dbg !1593
  %317 = getelementptr inbounds i8, i8* %316, i64 4, !dbg !1593
  store i8* %317, i8** %315, align 8, !dbg !1593
  %318 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1594
  %319 = getelementptr inbounds %struct.stream, %struct.stream* %318, i32 0, i32 0, !dbg !1596
  %320 = load i8*, i8** %319, align 8, !dbg !1596
  %321 = bitcast i8* %320 to i32*, !dbg !1597
  %322 = load i32, i32* %321, align 4, !dbg !1597
  store i32 %322, i32* %14, align 4, !dbg !1598
  %323 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1599
  %324 = getelementptr inbounds %struct.stream, %struct.stream* %323, i32 0, i32 0, !dbg !1600
  %325 = load i8*, i8** %324, align 8, !dbg !1601
  %326 = getelementptr inbounds i8, i8* %325, i64 4, !dbg !1601
  store i8* %326, i8** %324, align 8, !dbg !1601
  %327 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1602
  %328 = getelementptr inbounds %struct.stream, %struct.stream* %327, i32 0, i32 0, !dbg !1603
  %329 = load i8*, i8** %328, align 8, !dbg !1604
  %330 = getelementptr inbounds i8, i8* %329, i64 24, !dbg !1604
  store i8* %330, i8** %328, align 8, !dbg !1604
  %331 = load i32, i32* %3, align 4, !dbg !1605
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i32 %331), !dbg !1606
  %332 = load i32, i32* %13, align 4, !dbg !1607
  %333 = load i32, i32* %7, align 4, !dbg !1609
  %334 = call i32 @rdpdr_handle_ok(i32 %332, i32 %333), !dbg !1610
  %335 = icmp ne i32 %334, 0, !dbg !1610
  br i1 %335, label %337, label %336, !dbg !1611

; <label>:336:                                    ; preds = %308
  store i32 -1073741816, i32* %28, align 4, !dbg !1612
  br label %692, !dbg !1614

; <label>:337:                                    ; preds = %308
  %338 = load i32, i32* %27, align 4, !dbg !1615
  %339 = icmp ne i32 %338, 0, !dbg !1615
  br i1 %339, label %340, label %351, !dbg !1617

; <label>:340:                                    ; preds = %337
  %341 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1618
  %342 = getelementptr inbounds %struct._DEVICE_FNS, %struct._DEVICE_FNS* %341, i32 0, i32 3, !dbg !1620
  %343 = load i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i8*, i32, i32, i32*)** %342, align 8, !dbg !1620
  %344 = load i32, i32* %7, align 4, !dbg !1621
  %345 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1622
  %346 = getelementptr inbounds %struct.stream, %struct.stream* %345, i32 0, i32 0, !dbg !1623
  %347 = load i8*, i8** %346, align 8, !dbg !1623
  %348 = load i32, i32* %4, align 4, !dbg !1624
  %349 = load i32, i32* %14, align 4, !dbg !1625
  %350 = call i32 %343(i32 %344, i8* %347, i32 %348, i32 %349, i32* %3), !dbg !1618
  store i32 %350, i32* %28, align 4, !dbg !1626
  br label %692, !dbg !1627

; <label>:351:                                    ; preds = %337
  %352 = load i32, i32* %4, align 4, !dbg !1628
  %353 = call i8* @xmalloc(i32 %352), !dbg !1629
  store i8* %353, i8** %24, align 8, !dbg !1630
  %354 = load i8*, i8** %24, align 8, !dbg !1631
  %355 = icmp ne i8* %354, null, !dbg !1631
  br i1 %355, label %357, label %356, !dbg !1633

; <label>:356:                                    ; preds = %351
  store i32 -1073741536, i32* %28, align 4, !dbg !1634
  br label %692, !dbg !1636

; <label>:357:                                    ; preds = %351
  %358 = load i8*, i8** %24, align 8, !dbg !1637
  %359 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1639
  %360 = getelementptr inbounds %struct.stream, %struct.stream* %359, i32 0, i32 0, !dbg !1640
  %361 = load i8*, i8** %360, align 8, !dbg !1640
  %362 = load i32, i32* %4, align 4, !dbg !1641
  %363 = zext i32 %362 to i64, !dbg !1641
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %358, i8* %361, i64 %363, i32 1, i1 false), !dbg !1642
  %364 = load i32, i32* %4, align 4, !dbg !1643
  %365 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1644
  %366 = getelementptr inbounds %struct.stream, %struct.stream* %365, i32 0, i32 0, !dbg !1645
  %367 = load i8*, i8** %366, align 8, !dbg !1646
  %368 = zext i32 %364 to i64, !dbg !1646
  %369 = getelementptr inbounds i8, i8* %367, i64 %368, !dbg !1646
  store i8* %369, i8** %366, align 8, !dbg !1646
  %370 = load i32, i32* %13, align 4, !dbg !1647
  %371 = load i32, i32* %7, align 4, !dbg !1649
  %372 = load i32, i32* %10, align 4, !dbg !1650
  %373 = load i32, i32* %11, align 4, !dbg !1651
  %374 = load i32, i32* %4, align 4, !dbg !1652
  %375 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1653
  %376 = load i8*, i8** %24, align 8, !dbg !1654
  %377 = load i32, i32* %14, align 4, !dbg !1655
  %378 = call i32 @add_async_iorequest(i32 %370, i32 %371, i32 %372, i32 %373, i32 %374, %struct._DEVICE_FNS* %375, i32 0, i32 0, i8* %376, i32 %377), !dbg !1656
  %379 = icmp ne i32 %378, 0, !dbg !1656
  br i1 %379, label %380, label %381, !dbg !1657

; <label>:380:                                    ; preds = %357
  store i32 259, i32* %28, align 4, !dbg !1658
  br label %692, !dbg !1660

; <label>:381:                                    ; preds = %357
  store i32 -1073741536, i32* %28, align 4, !dbg !1661
  br label %692, !dbg !1662

; <label>:382:                                    ; preds = %100
  %383 = load i32, i32* %13, align 4, !dbg !1663
  %384 = zext i32 %383 to i64, !dbg !1665
  %385 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %384, !dbg !1665
  %386 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %385, i32 0, i32 0, !dbg !1666
  %387 = load i32, i32* %386, align 16, !dbg !1666
  %388 = icmp ne i32 %387, 8, !dbg !1667
  br i1 %388, label %389, label %390, !dbg !1668

; <label>:389:                                    ; preds = %382
  store i32 -1073741816, i32* %28, align 4, !dbg !1669
  br label %692, !dbg !1671

; <label>:390:                                    ; preds = %382
  %391 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1672
  %392 = getelementptr inbounds %struct.stream, %struct.stream* %391, i32 0, i32 0, !dbg !1674
  %393 = load i8*, i8** %392, align 8, !dbg !1674
  %394 = bitcast i8* %393 to i32*, !dbg !1675
  %395 = load i32, i32* %394, align 4, !dbg !1675
  store i32 %395, i32* %8, align 4, !dbg !1676
  %396 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1677
  %397 = getelementptr inbounds %struct.stream, %struct.stream* %396, i32 0, i32 0, !dbg !1678
  %398 = load i8*, i8** %397, align 8, !dbg !1679
  %399 = getelementptr inbounds i8, i8* %398, i64 4, !dbg !1679
  store i8* %399, i8** %397, align 8, !dbg !1679
  %400 = load i8*, i8** %23, align 8, !dbg !1680
  %401 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1681
  store i8* %400, i8** %401, align 8, !dbg !1682
  %402 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !1683
  store i8* %400, i8** %402, align 8, !dbg !1684
  %403 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 3, !dbg !1685
  store i32 8, i32* %403, align 8, !dbg !1686
  %404 = load i32, i32* %7, align 4, !dbg !1687
  %405 = load i32, i32* %8, align 4, !dbg !1688
  %406 = call i32 @disk_query_information(i32 %404, i32 %405, %struct.stream* %25), !dbg !1689
  store i32 %406, i32* %28, align 4, !dbg !1690
  %407 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1691
  %408 = load i8*, i8** %407, align 8, !dbg !1691
  %409 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !1692
  %410 = load i8*, i8** %409, align 8, !dbg !1692
  %411 = ptrtoint i8* %408 to i64, !dbg !1693
  %412 = ptrtoint i8* %410 to i64, !dbg !1693
  %413 = sub i64 %411, %412, !dbg !1693
  %414 = trunc i64 %413 to i32, !dbg !1694
  store i32 %414, i32* %9, align 4, !dbg !1695
  store i32 %414, i32* %3, align 4, !dbg !1696
  br label %692, !dbg !1697

; <label>:415:                                    ; preds = %100
  %416 = load i32, i32* %13, align 4, !dbg !1698
  %417 = zext i32 %416 to i64, !dbg !1700
  %418 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %417, !dbg !1700
  %419 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %418, i32 0, i32 0, !dbg !1701
  %420 = load i32, i32* %419, align 16, !dbg !1701
  %421 = icmp ne i32 %420, 8, !dbg !1702
  br i1 %421, label %422, label %423, !dbg !1703

; <label>:422:                                    ; preds = %415
  store i32 -1073741816, i32* %28, align 4, !dbg !1704
  br label %692, !dbg !1706

; <label>:423:                                    ; preds = %415
  %424 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1707
  %425 = getelementptr inbounds %struct.stream, %struct.stream* %424, i32 0, i32 0, !dbg !1709
  %426 = load i8*, i8** %425, align 8, !dbg !1709
  %427 = bitcast i8* %426 to i32*, !dbg !1710
  %428 = load i32, i32* %427, align 4, !dbg !1710
  store i32 %428, i32* %8, align 4, !dbg !1711
  %429 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1712
  %430 = getelementptr inbounds %struct.stream, %struct.stream* %429, i32 0, i32 0, !dbg !1713
  %431 = load i8*, i8** %430, align 8, !dbg !1714
  %432 = getelementptr inbounds i8, i8* %431, i64 4, !dbg !1714
  store i8* %432, i8** %430, align 8, !dbg !1714
  %433 = load i8*, i8** %23, align 8, !dbg !1715
  %434 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1716
  store i8* %433, i8** %434, align 8, !dbg !1717
  %435 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !1718
  store i8* %433, i8** %435, align 8, !dbg !1719
  %436 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 3, !dbg !1720
  store i32 8, i32* %436, align 8, !dbg !1721
  %437 = load i32, i32* %7, align 4, !dbg !1722
  %438 = load i32, i32* %8, align 4, !dbg !1723
  %439 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1724
  %440 = call i32 @disk_set_information(i32 %437, i32 %438, %struct.stream* %439, %struct.stream* %25), !dbg !1725
  store i32 %440, i32* %28, align 4, !dbg !1726
  %441 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1727
  %442 = load i8*, i8** %441, align 8, !dbg !1727
  %443 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !1728
  %444 = load i8*, i8** %443, align 8, !dbg !1728
  %445 = ptrtoint i8* %442 to i64, !dbg !1729
  %446 = ptrtoint i8* %444 to i64, !dbg !1729
  %447 = sub i64 %445, %446, !dbg !1729
  %448 = trunc i64 %447 to i32, !dbg !1730
  store i32 %448, i32* %9, align 4, !dbg !1731
  store i32 %448, i32* %3, align 4, !dbg !1732
  br label %692, !dbg !1733

; <label>:449:                                    ; preds = %100
  %450 = load i32, i32* %13, align 4, !dbg !1734
  %451 = zext i32 %450 to i64, !dbg !1736
  %452 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %451, !dbg !1736
  %453 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %452, i32 0, i32 0, !dbg !1737
  %454 = load i32, i32* %453, align 16, !dbg !1737
  %455 = icmp ne i32 %454, 8, !dbg !1738
  br i1 %455, label %456, label %457, !dbg !1739

; <label>:456:                                    ; preds = %449
  store i32 -1073741816, i32* %28, align 4, !dbg !1740
  br label %692, !dbg !1742

; <label>:457:                                    ; preds = %449
  %458 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1743
  %459 = getelementptr inbounds %struct.stream, %struct.stream* %458, i32 0, i32 0, !dbg !1745
  %460 = load i8*, i8** %459, align 8, !dbg !1745
  %461 = bitcast i8* %460 to i32*, !dbg !1746
  %462 = load i32, i32* %461, align 4, !dbg !1746
  store i32 %462, i32* %8, align 4, !dbg !1747
  %463 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1748
  %464 = getelementptr inbounds %struct.stream, %struct.stream* %463, i32 0, i32 0, !dbg !1749
  %465 = load i8*, i8** %464, align 8, !dbg !1750
  %466 = getelementptr inbounds i8, i8* %465, i64 4, !dbg !1750
  store i8* %466, i8** %464, align 8, !dbg !1750
  %467 = load i8*, i8** %23, align 8, !dbg !1751
  %468 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1752
  store i8* %467, i8** %468, align 8, !dbg !1753
  %469 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !1754
  store i8* %467, i8** %469, align 8, !dbg !1755
  %470 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 3, !dbg !1756
  store i32 8, i32* %470, align 8, !dbg !1757
  %471 = load i32, i32* %7, align 4, !dbg !1758
  %472 = load i32, i32* %8, align 4, !dbg !1759
  %473 = call i32 @disk_query_volume_information(i32 %471, i32 %472, %struct.stream* %25), !dbg !1760
  store i32 %473, i32* %28, align 4, !dbg !1761
  %474 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1762
  %475 = load i8*, i8** %474, align 8, !dbg !1762
  %476 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !1763
  %477 = load i8*, i8** %476, align 8, !dbg !1763
  %478 = ptrtoint i8* %475 to i64, !dbg !1764
  %479 = ptrtoint i8* %477 to i64, !dbg !1764
  %480 = sub i64 %478, %479, !dbg !1764
  %481 = trunc i64 %480 to i32, !dbg !1765
  store i32 %481, i32* %9, align 4, !dbg !1766
  store i32 %481, i32* %3, align 4, !dbg !1767
  br label %692, !dbg !1768

; <label>:482:                                    ; preds = %100
  %483 = load i32, i32* %13, align 4, !dbg !1769
  %484 = zext i32 %483 to i64, !dbg !1771
  %485 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %484, !dbg !1771
  %486 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %485, i32 0, i32 0, !dbg !1772
  %487 = load i32, i32* %486, align 16, !dbg !1772
  %488 = icmp ne i32 %487, 8, !dbg !1773
  br i1 %488, label %489, label %490, !dbg !1774

; <label>:489:                                    ; preds = %482
  store i32 -1073741816, i32* %28, align 4, !dbg !1775
  br label %692, !dbg !1777

; <label>:490:                                    ; preds = %482
  %491 = load i32, i32* %12, align 4, !dbg !1778
  switch i32 %491, label %580 [
    i32 1, label %492
    i32 2, label %556
  ], !dbg !1779

; <label>:492:                                    ; preds = %490
  %493 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1780
  %494 = getelementptr inbounds %struct.stream, %struct.stream* %493, i32 0, i32 0, !dbg !1783
  %495 = load i8*, i8** %494, align 8, !dbg !1783
  %496 = bitcast i8* %495 to i32*, !dbg !1784
  %497 = load i32, i32* %496, align 4, !dbg !1784
  store i32 %497, i32* %8, align 4, !dbg !1785
  %498 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1786
  %499 = getelementptr inbounds %struct.stream, %struct.stream* %498, i32 0, i32 0, !dbg !1787
  %500 = load i8*, i8** %499, align 8, !dbg !1788
  %501 = getelementptr inbounds i8, i8* %500, i64 4, !dbg !1788
  store i8* %501, i8** %499, align 8, !dbg !1788
  %502 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1789
  %503 = getelementptr inbounds %struct.stream, %struct.stream* %502, i32 0, i32 0, !dbg !1790
  %504 = load i8*, i8** %503, align 8, !dbg !1791
  %505 = getelementptr inbounds i8, i8* %504, i64 1, !dbg !1791
  store i8* %505, i8** %503, align 8, !dbg !1791
  %506 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1792
  %507 = getelementptr inbounds %struct.stream, %struct.stream* %506, i32 0, i32 0, !dbg !1794
  %508 = load i8*, i8** %507, align 8, !dbg !1794
  %509 = bitcast i8* %508 to i32*, !dbg !1795
  %510 = load i32, i32* %509, align 4, !dbg !1795
  store i32 %510, i32* %4, align 4, !dbg !1796
  %511 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1797
  %512 = getelementptr inbounds %struct.stream, %struct.stream* %511, i32 0, i32 0, !dbg !1798
  %513 = load i8*, i8** %512, align 8, !dbg !1799
  %514 = getelementptr inbounds i8, i8* %513, i64 4, !dbg !1799
  store i8* %514, i8** %512, align 8, !dbg !1799
  %515 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1800
  %516 = getelementptr inbounds %struct.stream, %struct.stream* %515, i32 0, i32 0, !dbg !1801
  %517 = load i8*, i8** %516, align 8, !dbg !1802
  %518 = getelementptr inbounds i8, i8* %517, i64 23, !dbg !1802
  store i8* %518, i8** %516, align 8, !dbg !1802
  %519 = load i32, i32* %4, align 4, !dbg !1803
  %520 = icmp ne i32 %519, 0, !dbg !1803
  br i1 %520, label %521, label %532, !dbg !1805

; <label>:521:                                    ; preds = %492
  %522 = load i32, i32* %4, align 4, !dbg !1806
  %523 = icmp ult i32 %522, 510, !dbg !1808
  br i1 %523, label %524, label %532, !dbg !1809

; <label>:524:                                    ; preds = %521
  %525 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1810
  %526 = load i32, i32* %4, align 4, !dbg !1812
  call void @rdp_in_unistr(%struct.stream* %525, i32 %526, i8** %21, i32* %22), !dbg !1813
  %527 = load i8*, i8** %21, align 8, !dbg !1814
  %528 = icmp ne i8* %527, null, !dbg !1814
  br i1 %528, label %529, label %531, !dbg !1816

; <label>:529:                                    ; preds = %524
  %530 = load i8*, i8** %21, align 8, !dbg !1817
  call void @convert_to_unix_filename(i8* %530), !dbg !1818
  br label %531, !dbg !1818

; <label>:531:                                    ; preds = %529, %524
  br label %532, !dbg !1819

; <label>:532:                                    ; preds = %531, %521, %492
  %533 = load i8*, i8** %23, align 8, !dbg !1820
  %534 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1821
  store i8* %533, i8** %534, align 8, !dbg !1822
  %535 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !1823
  store i8* %533, i8** %535, align 8, !dbg !1824
  %536 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 3, !dbg !1825
  store i32 8, i32* %536, align 8, !dbg !1826
  %537 = load i32, i32* %7, align 4, !dbg !1827
  %538 = load i32, i32* %8, align 4, !dbg !1828
  %539 = load i8*, i8** %21, align 8, !dbg !1829
  %540 = call i32 @disk_query_directory(i32 %537, i32 %538, i8* %539, %struct.stream* %25), !dbg !1830
  store i32 %540, i32* %28, align 4, !dbg !1831
  %541 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1832
  %542 = load i8*, i8** %541, align 8, !dbg !1832
  %543 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !1833
  %544 = load i8*, i8** %543, align 8, !dbg !1833
  %545 = ptrtoint i8* %542 to i64, !dbg !1834
  %546 = ptrtoint i8* %544 to i64, !dbg !1834
  %547 = sub i64 %545, %546, !dbg !1834
  %548 = trunc i64 %547 to i32, !dbg !1835
  store i32 %548, i32* %9, align 4, !dbg !1836
  store i32 %548, i32* %3, align 4, !dbg !1837
  %549 = load i32, i32* %9, align 4, !dbg !1838
  %550 = icmp ne i32 %549, 0, !dbg !1838
  br i1 %550, label %554, label %551, !dbg !1840

; <label>:551:                                    ; preds = %532
  %552 = load i32, i32* %9, align 4, !dbg !1841
  %553 = add i32 %552, 1, !dbg !1841
  store i32 %553, i32* %9, align 4, !dbg !1841
  br label %554, !dbg !1842

; <label>:554:                                    ; preds = %551, %532
  %555 = load i8*, i8** %21, align 8, !dbg !1843
  call void @free(i8* %555) #8, !dbg !1844
  br label %583, !dbg !1845

; <label>:556:                                    ; preds = %490
  %557 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1846
  %558 = getelementptr inbounds %struct.stream, %struct.stream* %557, i32 0, i32 0, !dbg !1848
  %559 = load i8*, i8** %558, align 8, !dbg !1848
  %560 = bitcast i8* %559 to i32*, !dbg !1849
  %561 = load i32, i32* %560, align 4, !dbg !1849
  store i32 %561, i32* %8, align 4, !dbg !1850
  %562 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1851
  %563 = getelementptr inbounds %struct.stream, %struct.stream* %562, i32 0, i32 0, !dbg !1852
  %564 = load i8*, i8** %563, align 8, !dbg !1853
  %565 = getelementptr inbounds i8, i8* %564, i64 4, !dbg !1853
  store i8* %565, i8** %563, align 8, !dbg !1853
  %566 = load i32, i32* %7, align 4, !dbg !1854
  %567 = load i32, i32* %8, align 4, !dbg !1855
  %568 = call i32 @disk_create_notify(i32 %566, i32 %567), !dbg !1856
  store i32 %568, i32* %28, align 4, !dbg !1857
  store i32 0, i32* %3, align 4, !dbg !1858
  %569 = load i32, i32* %28, align 4, !dbg !1859
  %570 = icmp eq i32 %569, 259, !dbg !1861
  br i1 %570, label %571, label %579, !dbg !1862

; <label>:571:                                    ; preds = %556
  %572 = load i32, i32* %13, align 4, !dbg !1863
  %573 = load i32, i32* %7, align 4, !dbg !1864
  %574 = load i32, i32* %10, align 4, !dbg !1865
  %575 = load i32, i32* %11, align 4, !dbg !1866
  %576 = load i32, i32* %4, align 4, !dbg !1867
  %577 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1868
  %578 = call i32 @add_async_iorequest(i32 %572, i32 %573, i32 %574, i32 %575, i32 %576, %struct._DEVICE_FNS* %577, i32 0, i32 0, i8* null, i32 0), !dbg !1869
  br label %579, !dbg !1869

; <label>:579:                                    ; preds = %571, %556
  br label %583, !dbg !1870

; <label>:580:                                    ; preds = %490
  store i32 -1073741811, i32* %28, align 4, !dbg !1871
  %581 = load i32, i32* %11, align 4, !dbg !1872
  %582 = load i32, i32* %12, align 4, !dbg !1873
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i32 %581, i32 %582), !dbg !1874
  br label %583, !dbg !1875

; <label>:583:                                    ; preds = %580, %579, %554
  br label %692, !dbg !1876

; <label>:584:                                    ; preds = %100
  %585 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1877
  %586 = getelementptr inbounds %struct._DEVICE_FNS, %struct._DEVICE_FNS* %585, i32 0, i32 4, !dbg !1879
  %587 = load i32 (i32, i32, %struct.stream*, %struct.stream*)*, i32 (i32, i32, %struct.stream*, %struct.stream*)** %586, align 8, !dbg !1879
  %588 = icmp ne i32 (i32, i32, %struct.stream*, %struct.stream*)* %587, null, !dbg !1877
  br i1 %588, label %590, label %589, !dbg !1880

; <label>:589:                                    ; preds = %584
  store i32 -1073741637, i32* %28, align 4, !dbg !1881
  br label %692, !dbg !1883

; <label>:590:                                    ; preds = %584
  %591 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1884
  %592 = getelementptr inbounds %struct.stream, %struct.stream* %591, i32 0, i32 0, !dbg !1886
  %593 = load i8*, i8** %592, align 8, !dbg !1886
  %594 = bitcast i8* %593 to i32*, !dbg !1887
  %595 = load i32, i32* %594, align 4, !dbg !1887
  store i32 %595, i32* %15, align 4, !dbg !1888
  %596 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1889
  %597 = getelementptr inbounds %struct.stream, %struct.stream* %596, i32 0, i32 0, !dbg !1890
  %598 = load i8*, i8** %597, align 8, !dbg !1891
  %599 = getelementptr inbounds i8, i8* %598, i64 4, !dbg !1891
  store i8* %599, i8** %597, align 8, !dbg !1891
  %600 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1892
  %601 = getelementptr inbounds %struct.stream, %struct.stream* %600, i32 0, i32 0, !dbg !1893
  %602 = load i8*, i8** %601, align 8, !dbg !1894
  %603 = getelementptr inbounds i8, i8* %602, i64 4, !dbg !1894
  store i8* %603, i8** %601, align 8, !dbg !1894
  %604 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1895
  %605 = getelementptr inbounds %struct.stream, %struct.stream* %604, i32 0, i32 0, !dbg !1897
  %606 = load i8*, i8** %605, align 8, !dbg !1897
  %607 = bitcast i8* %606 to i32*, !dbg !1898
  %608 = load i32, i32* %607, align 4, !dbg !1898
  store i32 %608, i32* %6, align 4, !dbg !1899
  %609 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1900
  %610 = getelementptr inbounds %struct.stream, %struct.stream* %609, i32 0, i32 0, !dbg !1901
  %611 = load i8*, i8** %610, align 8, !dbg !1902
  %612 = getelementptr inbounds i8, i8* %611, i64 4, !dbg !1902
  store i8* %612, i8** %610, align 8, !dbg !1902
  %613 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1903
  %614 = getelementptr inbounds %struct.stream, %struct.stream* %613, i32 0, i32 0, !dbg !1904
  %615 = load i8*, i8** %614, align 8, !dbg !1905
  %616 = getelementptr inbounds i8, i8* %615, i64 20, !dbg !1905
  store i8* %616, i8** %614, align 8, !dbg !1905
  %617 = load i8*, i8** %23, align 8, !dbg !1906
  %618 = load i32, i32* %15, align 4, !dbg !1907
  %619 = add i32 %618, 20, !dbg !1908
  %620 = zext i32 %619 to i64, !dbg !1907
  %621 = call i8* @xrealloc(i8* %617, i64 %620), !dbg !1909
  store i8* %621, i8** %23, align 8, !dbg !1910
  %622 = load i8*, i8** %23, align 8, !dbg !1911
  %623 = icmp ne i8* %622, null, !dbg !1911
  br i1 %623, label %625, label %624, !dbg !1913

; <label>:624:                                    ; preds = %590
  store i32 -1073741536, i32* %28, align 4, !dbg !1914
  br label %692, !dbg !1916

; <label>:625:                                    ; preds = %590
  %626 = load i8*, i8** %23, align 8, !dbg !1917
  %627 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1918
  store i8* %626, i8** %627, align 8, !dbg !1919
  %628 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !1920
  store i8* %626, i8** %628, align 8, !dbg !1921
  %629 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 3, !dbg !1922
  store i32 8, i32* %629, align 8, !dbg !1923
  %630 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1924
  %631 = getelementptr inbounds %struct._DEVICE_FNS, %struct._DEVICE_FNS* %630, i32 0, i32 4, !dbg !1925
  %632 = load i32 (i32, i32, %struct.stream*, %struct.stream*)*, i32 (i32, i32, %struct.stream*, %struct.stream*)** %631, align 8, !dbg !1925
  %633 = load i32, i32* %7, align 4, !dbg !1926
  %634 = load i32, i32* %6, align 4, !dbg !1927
  %635 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1928
  %636 = call i32 %632(i32 %633, i32 %634, %struct.stream* %635, %struct.stream* %25), !dbg !1924
  store i32 %636, i32* %28, align 4, !dbg !1929
  %637 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1930
  %638 = load i8*, i8** %637, align 8, !dbg !1930
  %639 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !1931
  %640 = load i8*, i8** %639, align 8, !dbg !1931
  %641 = ptrtoint i8* %638 to i64, !dbg !1932
  %642 = ptrtoint i8* %640 to i64, !dbg !1932
  %643 = sub i64 %641, %642, !dbg !1932
  %644 = trunc i64 %643 to i32, !dbg !1933
  store i32 %644, i32* %9, align 4, !dbg !1934
  store i32 %644, i32* %3, align 4, !dbg !1935
  %645 = load i32, i32* %28, align 4, !dbg !1936
  %646 = icmp eq i32 %645, 259, !dbg !1938
  br i1 %646, label %647, label %658, !dbg !1939

; <label>:647:                                    ; preds = %625
  %648 = load i32, i32* %13, align 4, !dbg !1940
  %649 = load i32, i32* %7, align 4, !dbg !1943
  %650 = load i32, i32* %10, align 4, !dbg !1944
  %651 = load i32, i32* %11, align 4, !dbg !1945
  %652 = load i32, i32* %4, align 4, !dbg !1946
  %653 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %26, align 8, !dbg !1947
  %654 = call i32 @add_async_iorequest(i32 %648, i32 %649, i32 %650, i32 %651, i32 %652, %struct._DEVICE_FNS* %653, i32 0, i32 0, i8* null, i32 0), !dbg !1948
  %655 = icmp ne i32 %654, 0, !dbg !1948
  br i1 %655, label %656, label %657, !dbg !1949

; <label>:656:                                    ; preds = %647
  store i32 259, i32* %28, align 4, !dbg !1950
  br label %692, !dbg !1952

; <label>:657:                                    ; preds = %647
  br label %658, !dbg !1953

; <label>:658:                                    ; preds = %657, %625
  br label %692, !dbg !1954

; <label>:659:                                    ; preds = %100
  %660 = load i32, i32* %13, align 4, !dbg !1955
  %661 = zext i32 %660 to i64, !dbg !1957
  %662 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %661, !dbg !1957
  %663 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %662, i32 0, i32 0, !dbg !1958
  %664 = load i32, i32* %663, align 16, !dbg !1958
  %665 = icmp ne i32 %664, 8, !dbg !1959
  br i1 %665, label %666, label %667, !dbg !1960

; <label>:666:                                    ; preds = %659
  store i32 -1073741816, i32* %28, align 4, !dbg !1961
  br label %692, !dbg !1963

; <label>:667:                                    ; preds = %659
  %668 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1964
  %669 = getelementptr inbounds %struct.stream, %struct.stream* %668, i32 0, i32 0, !dbg !1966
  %670 = load i8*, i8** %669, align 8, !dbg !1966
  %671 = bitcast i8* %670 to i32*, !dbg !1967
  %672 = load i32, i32* %671, align 4, !dbg !1967
  store i32 %672, i32* %8, align 4, !dbg !1968
  %673 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1969
  %674 = getelementptr inbounds %struct.stream, %struct.stream* %673, i32 0, i32 0, !dbg !1970
  %675 = load i8*, i8** %674, align 8, !dbg !1971
  %676 = getelementptr inbounds i8, i8* %675, i64 4, !dbg !1971
  store i8* %676, i8** %674, align 8, !dbg !1971
  %677 = load i8*, i8** %23, align 8, !dbg !1972
  %678 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1973
  store i8* %677, i8** %678, align 8, !dbg !1974
  %679 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !1975
  store i8* %677, i8** %679, align 8, !dbg !1976
  %680 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 3, !dbg !1977
  store i32 8, i32* %680, align 8, !dbg !1978
  store i32 0, i32* %28, align 4, !dbg !1979
  %681 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1980
  %682 = load i8*, i8** %681, align 8, !dbg !1980
  %683 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 2, !dbg !1981
  %684 = load i8*, i8** %683, align 8, !dbg !1981
  %685 = ptrtoint i8* %682 to i64, !dbg !1982
  %686 = ptrtoint i8* %684 to i64, !dbg !1982
  %687 = sub i64 %685, %686, !dbg !1982
  %688 = trunc i64 %687 to i32, !dbg !1983
  store i32 %688, i32* %9, align 4, !dbg !1984
  store i32 %688, i32* %3, align 4, !dbg !1985
  br label %692, !dbg !1986

; <label>:689:                                    ; preds = %100
  %690 = load i32, i32* %11, align 4, !dbg !1987
  %691 = load i32, i32* %12, align 4, !dbg !1988
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i32 0, i32 0), i32 %690, i32 %691), !dbg !1989
  br label %692, !dbg !1990

; <label>:692:                                    ; preds = %689, %667, %666, %658, %656, %624, %589, %583, %489, %457, %456, %423, %422, %390, %389, %381, %380, %356, %340, %336, %307, %301, %300, %283, %268, %267, %256, %230, %219, %218, %201, %199
  %693 = load i32, i32* %28, align 4, !dbg !1991
  %694 = icmp ne i32 %693, 259, !dbg !1993
  br i1 %694, label %695, label %702, !dbg !1994

; <label>:695:                                    ; preds = %692
  %696 = load i32, i32* %13, align 4, !dbg !1995
  %697 = load i32, i32* %10, align 4, !dbg !1997
  %698 = load i32, i32* %28, align 4, !dbg !1998
  %699 = load i32, i32* %3, align 4, !dbg !1999
  %700 = load i8*, i8** %23, align 8, !dbg !2000
  %701 = load i32, i32* %9, align 4, !dbg !2001
  call void @rdpdr_send_completion(i32 %696, i32 %697, i32 %698, i32 %699, i8* %700, i32 %701), !dbg !2002
  br label %702, !dbg !2003

; <label>:702:                                    ; preds = %695, %692
  %703 = load i8*, i8** %23, align 8, !dbg !2004
  %704 = icmp ne i8* %703, null, !dbg !2004
  br i1 %704, label %705, label %707, !dbg !2006

; <label>:705:                                    ; preds = %702
  %706 = load i8*, i8** %23, align 8, !dbg !2007
  call void @xfree(i8* %706), !dbg !2008
  br label %707, !dbg !2008

; <label>:707:                                    ; preds = %705, %702
  store i8* null, i8** %23, align 8, !dbg !2009
  br label %708, !dbg !2010

; <label>:708:                                    ; preds = %707, %97, %79
  ret void, !dbg !2011
}

; Function Attrs: nounwind uwtable
define internal void @rdpdr_send_client_announce_reply() #0 !dbg !2013 {
  %1 = alloca %struct.stream*, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %1, metadata !2016, metadata !215), !dbg !2017
  %2 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpdr_channel, align 8, !dbg !2018
  %3 = call %struct.stream* @channel_init(%struct._VCHANNEL* %2, i32 12), !dbg !2019
  store %struct.stream* %3, %struct.stream** %1, align 8, !dbg !2020
  %4 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2021
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !2023
  %6 = load i8*, i8** %5, align 8, !dbg !2023
  %7 = bitcast i8* %6 to i16*, !dbg !2024
  store i16 17522, i16* %7, align 2, !dbg !2025
  %8 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2026
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !2027
  %10 = load i8*, i8** %9, align 8, !dbg !2028
  %11 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !2028
  store i8* %11, i8** %9, align 8, !dbg !2028
  %12 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2029
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !2031
  %14 = load i8*, i8** %13, align 8, !dbg !2031
  %15 = bitcast i8* %14 to i16*, !dbg !2032
  store i16 17219, i16* %15, align 2, !dbg !2033
  %16 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2034
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !2035
  %18 = load i8*, i8** %17, align 8, !dbg !2036
  %19 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !2036
  store i8* %19, i8** %17, align 8, !dbg !2036
  %20 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2037
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !2039
  %22 = load i8*, i8** %21, align 8, !dbg !2039
  %23 = bitcast i8* %22 to i16*, !dbg !2040
  store i16 1, i16* %23, align 2, !dbg !2041
  %24 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2042
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !2043
  %26 = load i8*, i8** %25, align 8, !dbg !2044
  %27 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !2044
  store i8* %27, i8** %25, align 8, !dbg !2044
  %28 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2045
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !2047
  %30 = load i8*, i8** %29, align 8, !dbg !2047
  %31 = bitcast i8* %30 to i16*, !dbg !2048
  store i16 5, i16* %31, align 2, !dbg !2049
  %32 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2050
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 0, !dbg !2051
  %34 = load i8*, i8** %33, align 8, !dbg !2052
  %35 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !2052
  store i8* %35, i8** %33, align 8, !dbg !2052
  %36 = load i32, i32* @g_client_id, align 4, !dbg !2053
  %37 = lshr i32 %36, 16, !dbg !2056
  %38 = and i32 %37, 65535, !dbg !2057
  %39 = lshr i32 %38, 8, !dbg !2058
  %40 = and i32 %39, 255, !dbg !2059
  %41 = trunc i32 %40 to i8, !dbg !2060
  %42 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2061
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 0, !dbg !2062
  %44 = load i8*, i8** %43, align 8, !dbg !2063
  %45 = getelementptr inbounds i8, i8* %44, i32 1, !dbg !2063
  store i8* %45, i8** %43, align 8, !dbg !2063
  store i8 %41, i8* %44, align 1, !dbg !2064
  %46 = load i32, i32* @g_client_id, align 4, !dbg !2065
  %47 = lshr i32 %46, 16, !dbg !2066
  %48 = and i32 %47, 65535, !dbg !2067
  %49 = and i32 %48, 255, !dbg !2068
  %50 = trunc i32 %49 to i8, !dbg !2069
  %51 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2070
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !2071
  %53 = load i8*, i8** %52, align 8, !dbg !2072
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !2072
  store i8* %54, i8** %52, align 8, !dbg !2072
  store i8 %50, i8* %53, align 1, !dbg !2073
  %55 = load i32, i32* @g_client_id, align 4, !dbg !2074
  %56 = and i32 %55, 65535, !dbg !2076
  %57 = lshr i32 %56, 8, !dbg !2077
  %58 = and i32 %57, 255, !dbg !2078
  %59 = trunc i32 %58 to i8, !dbg !2079
  %60 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2080
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !2081
  %62 = load i8*, i8** %61, align 8, !dbg !2082
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !2082
  store i8* %63, i8** %61, align 8, !dbg !2082
  store i8 %59, i8* %62, align 1, !dbg !2083
  %64 = load i32, i32* @g_client_id, align 4, !dbg !2084
  %65 = and i32 %64, 65535, !dbg !2085
  %66 = and i32 %65, 255, !dbg !2086
  %67 = trunc i32 %66 to i8, !dbg !2087
  %68 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2088
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 0, !dbg !2089
  %70 = load i8*, i8** %69, align 8, !dbg !2090
  %71 = getelementptr inbounds i8, i8* %70, i32 1, !dbg !2090
  store i8* %71, i8** %69, align 8, !dbg !2090
  store i8 %67, i8* %70, align 1, !dbg !2091
  %72 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2092
  %73 = getelementptr inbounds %struct.stream, %struct.stream* %72, i32 0, i32 0, !dbg !2093
  %74 = load i8*, i8** %73, align 8, !dbg !2093
  %75 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2094
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 1, !dbg !2095
  store i8* %74, i8** %76, align 8, !dbg !2096
  %77 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2097
  %78 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpdr_channel, align 8, !dbg !2098
  call void @channel_send(%struct.stream* %77, %struct._VCHANNEL* %78), !dbg !2099
  ret void, !dbg !2100
}

; Function Attrs: nounwind uwtable
define internal void @rdpdr_send_client_name_request() #0 !dbg !2101 {
  %1 = alloca %struct.stream*, align 8
  %2 = alloca %struct.stream, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %1, metadata !2102, metadata !215), !dbg !2103
  call void @llvm.dbg.declare(metadata %struct.stream* %2, metadata !2104, metadata !215), !dbg !2105
  %3 = bitcast %struct.stream* %2 to i8*, !dbg !2105
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 72, i32 8, i1 false), !dbg !2105
  %4 = load i8*, i8** @g_rdpdr_clientname, align 8, !dbg !2106
  %5 = icmp eq i8* null, %4, !dbg !2108
  br i1 %5, label %6, label %7, !dbg !2109

; <label>:6:                                      ; preds = %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_hostname, i32 0, i32 0), i8** @g_rdpdr_clientname, align 8, !dbg !2110
  br label %7, !dbg !2112

; <label>:7:                                      ; preds = %6, %0
  call void @s_realloc(%struct.stream* %2, i32 2048), !dbg !2113
  call void @s_reset(%struct.stream* %2), !dbg !2114
  %8 = load i8*, i8** @g_rdpdr_clientname, align 8, !dbg !2115
  call void @out_utf16s(%struct.stream* %2, i8* %8), !dbg !2116
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 0, !dbg !2117
  %10 = load i8*, i8** %9, align 8, !dbg !2117
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 1, !dbg !2118
  store i8* %10, i8** %11, align 8, !dbg !2119
  %12 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpdr_channel, align 8, !dbg !2120
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 1, !dbg !2121
  %14 = load i8*, i8** %13, align 8, !dbg !2121
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 2, !dbg !2122
  %16 = load i8*, i8** %15, align 8, !dbg !2122
  %17 = ptrtoint i8* %14 to i64, !dbg !2123
  %18 = ptrtoint i8* %16 to i64, !dbg !2123
  %19 = sub i64 %17, %18, !dbg !2123
  %20 = add nsw i64 16, %19, !dbg !2124
  %21 = trunc i64 %20 to i32, !dbg !2125
  %22 = call %struct.stream* @channel_init(%struct._VCHANNEL* %12, i32 %21), !dbg !2126
  store %struct.stream* %22, %struct.stream** %1, align 8, !dbg !2127
  %23 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2128
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !2130
  %25 = load i8*, i8** %24, align 8, !dbg !2130
  %26 = bitcast i8* %25 to i16*, !dbg !2131
  store i16 17522, i16* %26, align 2, !dbg !2132
  %27 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2133
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !2134
  %29 = load i8*, i8** %28, align 8, !dbg !2135
  %30 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !2135
  store i8* %30, i8** %28, align 8, !dbg !2135
  %31 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2136
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !2138
  %33 = load i8*, i8** %32, align 8, !dbg !2138
  %34 = bitcast i8* %33 to i16*, !dbg !2139
  store i16 17230, i16* %34, align 2, !dbg !2140
  %35 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2141
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !2142
  %37 = load i8*, i8** %36, align 8, !dbg !2143
  %38 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !2143
  store i8* %38, i8** %36, align 8, !dbg !2143
  %39 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2144
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !2146
  %41 = load i8*, i8** %40, align 8, !dbg !2146
  %42 = bitcast i8* %41 to i32*, !dbg !2147
  store i32 1, i32* %42, align 4, !dbg !2148
  %43 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2149
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !2150
  %45 = load i8*, i8** %44, align 8, !dbg !2151
  %46 = getelementptr inbounds i8, i8* %45, i64 4, !dbg !2151
  store i8* %46, i8** %44, align 8, !dbg !2151
  %47 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2152
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !2154
  %49 = load i8*, i8** %48, align 8, !dbg !2154
  %50 = bitcast i8* %49 to i32*, !dbg !2155
  store i32 0, i32* %50, align 4, !dbg !2156
  %51 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2157
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !2158
  %53 = load i8*, i8** %52, align 8, !dbg !2159
  %54 = getelementptr inbounds i8, i8* %53, i64 4, !dbg !2159
  store i8* %54, i8** %52, align 8, !dbg !2159
  %55 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 1, !dbg !2160
  %56 = load i8*, i8** %55, align 8, !dbg !2160
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 2, !dbg !2162
  %58 = load i8*, i8** %57, align 8, !dbg !2162
  %59 = ptrtoint i8* %56 to i64, !dbg !2163
  %60 = ptrtoint i8* %58 to i64, !dbg !2163
  %61 = sub i64 %59, %60, !dbg !2163
  %62 = trunc i64 %61 to i32, !dbg !2164
  %63 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2165
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !2166
  %65 = load i8*, i8** %64, align 8, !dbg !2166
  %66 = bitcast i8* %65 to i32*, !dbg !2167
  store i32 %62, i32* %66, align 4, !dbg !2168
  %67 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2169
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %67, i32 0, i32 0, !dbg !2170
  %69 = load i8*, i8** %68, align 8, !dbg !2171
  %70 = getelementptr inbounds i8, i8* %69, i64 4, !dbg !2171
  store i8* %70, i8** %68, align 8, !dbg !2171
  %71 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2172
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !2174
  %73 = load i8*, i8** %72, align 8, !dbg !2174
  %74 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 2, !dbg !2175
  %75 = load i8*, i8** %74, align 8, !dbg !2175
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 1, !dbg !2176
  %77 = load i8*, i8** %76, align 8, !dbg !2176
  %78 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 2, !dbg !2177
  %79 = load i8*, i8** %78, align 8, !dbg !2177
  %80 = ptrtoint i8* %77 to i64, !dbg !2178
  %81 = ptrtoint i8* %79 to i64, !dbg !2178
  %82 = sub i64 %80, %81, !dbg !2178
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %75, i64 %82, i32 1, i1 false), !dbg !2179
  %83 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 1, !dbg !2180
  %84 = load i8*, i8** %83, align 8, !dbg !2180
  %85 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 2, !dbg !2181
  %86 = load i8*, i8** %85, align 8, !dbg !2181
  %87 = ptrtoint i8* %84 to i64, !dbg !2182
  %88 = ptrtoint i8* %86 to i64, !dbg !2182
  %89 = sub i64 %87, %88, !dbg !2182
  %90 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2183
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %90, i32 0, i32 0, !dbg !2184
  %92 = load i8*, i8** %91, align 8, !dbg !2185
  %93 = getelementptr inbounds i8, i8* %92, i64 %89, !dbg !2185
  store i8* %93, i8** %91, align 8, !dbg !2185
  %94 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2186
  %95 = getelementptr inbounds %struct.stream, %struct.stream* %94, i32 0, i32 0, !dbg !2187
  %96 = load i8*, i8** %95, align 8, !dbg !2187
  %97 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2188
  %98 = getelementptr inbounds %struct.stream, %struct.stream* %97, i32 0, i32 1, !dbg !2189
  store i8* %96, i8** %98, align 8, !dbg !2190
  %99 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2191
  %100 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpdr_channel, align 8, !dbg !2192
  call void @channel_send(%struct.stream* %99, %struct._VCHANNEL* %100), !dbg !2193
  ret void, !dbg !2194
}

; Function Attrs: nounwind uwtable
define internal void @rdpdr_send_client_device_list_announce() #0 !dbg !2195 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct.rdpdr_printer_info*, align 8
  %7 = alloca %struct.rdpdr_disk_device_info*, align 8
  %8 = alloca %struct.stream, align 8
  %9 = alloca %struct.stream, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2196, metadata !215), !dbg !2197
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2198, metadata !215), !dbg !2199
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2200, metadata !215), !dbg !2201
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2202, metadata !215), !dbg !2203
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !2204, metadata !215), !dbg !2205
  call void @llvm.dbg.declare(metadata %struct.rdpdr_printer_info** %6, metadata !2206, metadata !215), !dbg !2207
  call void @llvm.dbg.declare(metadata %struct.rdpdr_disk_device_info** %7, metadata !2208, metadata !215), !dbg !2209
  call void @llvm.dbg.declare(metadata %struct.stream* %8, metadata !2210, metadata !215), !dbg !2211
  %10 = bitcast %struct.stream* %8 to i8*, !dbg !2211
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 72, i32 8, i1 false), !dbg !2211
  call void @llvm.dbg.declare(metadata %struct.stream* %9, metadata !2212, metadata !215), !dbg !2213
  %11 = bitcast %struct.stream* %9 to i8*, !dbg !2213
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 72, i32 8, i1 false), !dbg !2214
  %12 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpdr_channel, align 8, !dbg !2216
  %13 = call i64 @announcedata_size(), !dbg !2217
  %14 = trunc i64 %13 to i32, !dbg !2217
  %15 = call %struct.stream* @channel_init(%struct._VCHANNEL* %12, i32 %14), !dbg !2218
  store %struct.stream* %15, %struct.stream** %5, align 8, !dbg !2219
  %16 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2220
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !2222
  %18 = load i8*, i8** %17, align 8, !dbg !2222
  %19 = bitcast i8* %18 to i16*, !dbg !2223
  store i16 17522, i16* %19, align 2, !dbg !2224
  %20 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2225
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !2226
  %22 = load i8*, i8** %21, align 8, !dbg !2227
  %23 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !2227
  store i8* %23, i8** %21, align 8, !dbg !2227
  %24 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2228
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !2230
  %26 = load i8*, i8** %25, align 8, !dbg !2230
  %27 = bitcast i8* %26 to i16*, !dbg !2231
  store i16 17473, i16* %27, align 2, !dbg !2232
  %28 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2233
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !2234
  %30 = load i8*, i8** %29, align 8, !dbg !2235
  %31 = getelementptr inbounds i8, i8* %30, i64 2, !dbg !2235
  store i8* %31, i8** %29, align 8, !dbg !2235
  %32 = load i32, i32* @g_num_devices, align 4, !dbg !2236
  %33 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2238
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !2239
  %35 = load i8*, i8** %34, align 8, !dbg !2239
  %36 = bitcast i8* %35 to i32*, !dbg !2240
  store i32 %32, i32* %36, align 4, !dbg !2241
  %37 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2242
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 0, !dbg !2243
  %39 = load i8*, i8** %38, align 8, !dbg !2244
  %40 = getelementptr inbounds i8, i8* %39, i64 4, !dbg !2244
  store i8* %40, i8** %38, align 8, !dbg !2244
  store i64 0, i64* %4, align 8, !dbg !2245
  br label %41, !dbg !2247

; <label>:41:                                     ; preds = %321, %0
  %42 = load i64, i64* %4, align 8, !dbg !2248
  %43 = load i32, i32* @g_num_devices, align 4, !dbg !2251
  %44 = zext i32 %43 to i64, !dbg !2251
  %45 = icmp ult i64 %42, %44, !dbg !2252
  br i1 %45, label %46, label %324, !dbg !2253

; <label>:46:                                     ; preds = %41
  %47 = load i64, i64* %4, align 8, !dbg !2254
  %48 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %47, !dbg !2257
  %49 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %48, i32 0, i32 0, !dbg !2258
  %50 = load i32, i32* %49, align 16, !dbg !2258
  %51 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2259
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !2260
  %53 = load i8*, i8** %52, align 8, !dbg !2260
  %54 = bitcast i8* %53 to i32*, !dbg !2261
  store i32 %50, i32* %54, align 4, !dbg !2262
  %55 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2263
  %56 = getelementptr inbounds %struct.stream, %struct.stream* %55, i32 0, i32 0, !dbg !2264
  %57 = load i8*, i8** %56, align 8, !dbg !2265
  %58 = getelementptr inbounds i8, i8* %57, i64 4, !dbg !2265
  store i8* %58, i8** %56, align 8, !dbg !2265
  %59 = load i64, i64* %4, align 8, !dbg !2266
  %60 = trunc i64 %59 to i32, !dbg !2266
  %61 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2268
  %62 = getelementptr inbounds %struct.stream, %struct.stream* %61, i32 0, i32 0, !dbg !2269
  %63 = load i8*, i8** %62, align 8, !dbg !2269
  %64 = bitcast i8* %63 to i32*, !dbg !2270
  store i32 %60, i32* %64, align 4, !dbg !2271
  %65 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2272
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 0, !dbg !2273
  %67 = load i8*, i8** %66, align 8, !dbg !2274
  %68 = getelementptr inbounds i8, i8* %67, i64 4, !dbg !2274
  store i8* %68, i8** %66, align 8, !dbg !2274
  %69 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2275
  %70 = getelementptr inbounds %struct.stream, %struct.stream* %69, i32 0, i32 0, !dbg !2277
  %71 = load i8*, i8** %70, align 8, !dbg !2277
  %72 = load i64, i64* %4, align 8, !dbg !2278
  %73 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %72, !dbg !2279
  %74 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %73, i32 0, i32 2, !dbg !2280
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %74, i32 0, i32 0, !dbg !2281
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %75, i64 8, i32 1, i1 false), !dbg !2281
  %76 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2282
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 0, !dbg !2283
  %78 = load i8*, i8** %77, align 8, !dbg !2284
  %79 = getelementptr inbounds i8, i8* %78, i64 8, !dbg !2284
  store i8* %79, i8** %77, align 8, !dbg !2284
  %80 = load i64, i64* %4, align 8, !dbg !2285
  %81 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %80, !dbg !2286
  %82 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %81, i32 0, i32 0, !dbg !2287
  %83 = load i32, i32* %82, align 16, !dbg !2287
  switch i32 %83, label %311 [
    i32 8, label %84
    i32 4, label %119
  ], !dbg !2288

; <label>:84:                                     ; preds = %46
  %85 = load i64, i64* %4, align 8, !dbg !2289
  %86 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %85, !dbg !2291
  %87 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %86, i32 0, i32 4, !dbg !2292
  %88 = load i8*, i8** %87, align 8, !dbg !2292
  %89 = bitcast i8* %88 to %struct.rdpdr_disk_device_info*, !dbg !2293
  store %struct.rdpdr_disk_device_info* %89, %struct.rdpdr_disk_device_info** %7, align 8, !dbg !2294
  %90 = load %struct.rdpdr_disk_device_info*, %struct.rdpdr_disk_device_info** %7, align 8, !dbg !2295
  %91 = getelementptr inbounds %struct.rdpdr_disk_device_info, %struct.rdpdr_disk_device_info* %90, i32 0, i32 0, !dbg !2296
  %92 = getelementptr inbounds [4096 x i8], [4096 x i8]* %91, i32 0, i32 0, !dbg !2295
  %93 = call i64 @strlen(i8* %92) #7, !dbg !2297
  %94 = add i64 %93, 1, !dbg !2298
  %95 = trunc i64 %94 to i32, !dbg !2297
  store i32 %95, i32* %2, align 4, !dbg !2299
  %96 = load i32, i32* %2, align 4, !dbg !2300
  %97 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2302
  %98 = getelementptr inbounds %struct.stream, %struct.stream* %97, i32 0, i32 0, !dbg !2303
  %99 = load i8*, i8** %98, align 8, !dbg !2303
  %100 = bitcast i8* %99 to i32*, !dbg !2304
  store i32 %96, i32* %100, align 4, !dbg !2305
  %101 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2306
  %102 = getelementptr inbounds %struct.stream, %struct.stream* %101, i32 0, i32 0, !dbg !2307
  %103 = load i8*, i8** %102, align 8, !dbg !2308
  %104 = getelementptr inbounds i8, i8* %103, i64 4, !dbg !2308
  store i8* %104, i8** %102, align 8, !dbg !2308
  %105 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2309
  %106 = getelementptr inbounds %struct.stream, %struct.stream* %105, i32 0, i32 0, !dbg !2311
  %107 = load i8*, i8** %106, align 8, !dbg !2311
  %108 = load %struct.rdpdr_disk_device_info*, %struct.rdpdr_disk_device_info** %7, align 8, !dbg !2312
  %109 = getelementptr inbounds %struct.rdpdr_disk_device_info, %struct.rdpdr_disk_device_info* %108, i32 0, i32 0, !dbg !2313
  %110 = getelementptr inbounds [4096 x i8], [4096 x i8]* %109, i32 0, i32 0, !dbg !2314
  %111 = load i32, i32* %2, align 4, !dbg !2315
  %112 = zext i32 %111 to i64, !dbg !2315
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %110, i64 %112, i32 1, i1 false), !dbg !2314
  %113 = load i32, i32* %2, align 4, !dbg !2316
  %114 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2317
  %115 = getelementptr inbounds %struct.stream, %struct.stream* %114, i32 0, i32 0, !dbg !2318
  %116 = load i8*, i8** %115, align 8, !dbg !2319
  %117 = zext i32 %113 to i64, !dbg !2319
  %118 = getelementptr inbounds i8, i8* %116, i64 %117, !dbg !2319
  store i8* %118, i8** %115, align 8, !dbg !2319
  br label %320, !dbg !2320

; <label>:119:                                    ; preds = %46
  %120 = load i64, i64* %4, align 8, !dbg !2321
  %121 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %120, !dbg !2322
  %122 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %121, i32 0, i32 4, !dbg !2323
  %123 = load i8*, i8** %122, align 8, !dbg !2323
  %124 = bitcast i8* %123 to %struct.rdpdr_printer_info*, !dbg !2324
  store %struct.rdpdr_printer_info* %124, %struct.rdpdr_printer_info** %6, align 8, !dbg !2325
  call void @s_realloc(%struct.stream* %9, i32 2048), !dbg !2326
  call void @s_reset(%struct.stream* %9), !dbg !2327
  %125 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %6, align 8, !dbg !2328
  %126 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %125, i32 0, i32 2, !dbg !2329
  %127 = load i8*, i8** %126, align 8, !dbg !2329
  call void @out_utf16s(%struct.stream* %9, i8* %127), !dbg !2330
  %128 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !2331
  %129 = load i8*, i8** %128, align 8, !dbg !2331
  %130 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 1, !dbg !2332
  store i8* %129, i8** %130, align 8, !dbg !2333
  call void @s_realloc(%struct.stream* %8, i32 2048), !dbg !2334
  call void @s_reset(%struct.stream* %8), !dbg !2335
  %131 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %6, align 8, !dbg !2336
  %132 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %131, i32 0, i32 1, !dbg !2337
  %133 = load i8*, i8** %132, align 8, !dbg !2337
  call void @out_utf16s(%struct.stream* %8, i8* %133), !dbg !2338
  %134 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !2339
  %135 = load i8*, i8** %134, align 8, !dbg !2339
  %136 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 1, !dbg !2340
  store i8* %135, i8** %136, align 8, !dbg !2341
  %137 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %6, align 8, !dbg !2342
  %138 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %137, i32 0, i32 3, !dbg !2343
  %139 = load i32, i32* %138, align 8, !dbg !2343
  store i32 %139, i32* %1, align 4, !dbg !2344
  store i32 0, i32* %3, align 4, !dbg !2345
  %140 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %6, align 8, !dbg !2346
  %141 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %140, i32 0, i32 5, !dbg !2348
  %142 = load i32, i32* %141, align 8, !dbg !2348
  %143 = icmp ne i32 %142, 0, !dbg !2346
  br i1 %143, label %144, label %147, !dbg !2349

; <label>:144:                                    ; preds = %119
  %145 = load i32, i32* %3, align 4, !dbg !2350
  %146 = or i32 %145, 2, !dbg !2350
  store i32 %146, i32* %3, align 4, !dbg !2350
  br label %147, !dbg !2351

; <label>:147:                                    ; preds = %144, %119
  %148 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 1, !dbg !2352
  %149 = load i8*, i8** %148, align 8, !dbg !2352
  %150 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 2, !dbg !2354
  %151 = load i8*, i8** %150, align 8, !dbg !2354
  %152 = ptrtoint i8* %149 to i64, !dbg !2355
  %153 = ptrtoint i8* %151 to i64, !dbg !2355
  %154 = sub i64 %152, %153, !dbg !2355
  %155 = add nsw i64 24, %154, !dbg !2356
  %156 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 1, !dbg !2357
  %157 = load i8*, i8** %156, align 8, !dbg !2357
  %158 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 2, !dbg !2358
  %159 = load i8*, i8** %158, align 8, !dbg !2358
  %160 = ptrtoint i8* %157 to i64, !dbg !2359
  %161 = ptrtoint i8* %159 to i64, !dbg !2359
  %162 = sub i64 %160, %161, !dbg !2359
  %163 = add nsw i64 %155, %162, !dbg !2360
  %164 = load i32, i32* %1, align 4, !dbg !2361
  %165 = zext i32 %164 to i64, !dbg !2361
  %166 = add nsw i64 %163, %165, !dbg !2362
  %167 = trunc i64 %166 to i32, !dbg !2363
  %168 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2364
  %169 = getelementptr inbounds %struct.stream, %struct.stream* %168, i32 0, i32 0, !dbg !2365
  %170 = load i8*, i8** %169, align 8, !dbg !2365
  %171 = bitcast i8* %170 to i32*, !dbg !2366
  store i32 %167, i32* %171, align 4, !dbg !2367
  %172 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2368
  %173 = getelementptr inbounds %struct.stream, %struct.stream* %172, i32 0, i32 0, !dbg !2369
  %174 = load i8*, i8** %173, align 8, !dbg !2370
  %175 = getelementptr inbounds i8, i8* %174, i64 4, !dbg !2370
  store i8* %175, i8** %173, align 8, !dbg !2370
  %176 = load i32, i32* %3, align 4, !dbg !2371
  %177 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2373
  %178 = getelementptr inbounds %struct.stream, %struct.stream* %177, i32 0, i32 0, !dbg !2374
  %179 = load i8*, i8** %178, align 8, !dbg !2374
  %180 = bitcast i8* %179 to i32*, !dbg !2375
  store i32 %176, i32* %180, align 4, !dbg !2376
  %181 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2377
  %182 = getelementptr inbounds %struct.stream, %struct.stream* %181, i32 0, i32 0, !dbg !2378
  %183 = load i8*, i8** %182, align 8, !dbg !2379
  %184 = getelementptr inbounds i8, i8* %183, i64 4, !dbg !2379
  store i8* %184, i8** %182, align 8, !dbg !2379
  %185 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2380
  %186 = getelementptr inbounds %struct.stream, %struct.stream* %185, i32 0, i32 0, !dbg !2382
  %187 = load i8*, i8** %186, align 8, !dbg !2382
  %188 = bitcast i8* %187 to i32*, !dbg !2383
  store i32 0, i32* %188, align 4, !dbg !2384
  %189 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2385
  %190 = getelementptr inbounds %struct.stream, %struct.stream* %189, i32 0, i32 0, !dbg !2386
  %191 = load i8*, i8** %190, align 8, !dbg !2387
  %192 = getelementptr inbounds i8, i8* %191, i64 4, !dbg !2387
  store i8* %192, i8** %190, align 8, !dbg !2387
  %193 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2388
  %194 = getelementptr inbounds %struct.stream, %struct.stream* %193, i32 0, i32 0, !dbg !2390
  %195 = load i8*, i8** %194, align 8, !dbg !2390
  %196 = bitcast i8* %195 to i32*, !dbg !2391
  store i32 0, i32* %196, align 4, !dbg !2392
  %197 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2393
  %198 = getelementptr inbounds %struct.stream, %struct.stream* %197, i32 0, i32 0, !dbg !2394
  %199 = load i8*, i8** %198, align 8, !dbg !2395
  %200 = getelementptr inbounds i8, i8* %199, i64 4, !dbg !2395
  store i8* %200, i8** %198, align 8, !dbg !2395
  %201 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 1, !dbg !2396
  %202 = load i8*, i8** %201, align 8, !dbg !2396
  %203 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 2, !dbg !2398
  %204 = load i8*, i8** %203, align 8, !dbg !2398
  %205 = ptrtoint i8* %202 to i64, !dbg !2399
  %206 = ptrtoint i8* %204 to i64, !dbg !2399
  %207 = sub i64 %205, %206, !dbg !2399
  %208 = trunc i64 %207 to i32, !dbg !2400
  %209 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2401
  %210 = getelementptr inbounds %struct.stream, %struct.stream* %209, i32 0, i32 0, !dbg !2402
  %211 = load i8*, i8** %210, align 8, !dbg !2402
  %212 = bitcast i8* %211 to i32*, !dbg !2403
  store i32 %208, i32* %212, align 4, !dbg !2404
  %213 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2405
  %214 = getelementptr inbounds %struct.stream, %struct.stream* %213, i32 0, i32 0, !dbg !2406
  %215 = load i8*, i8** %214, align 8, !dbg !2407
  %216 = getelementptr inbounds i8, i8* %215, i64 4, !dbg !2407
  store i8* %216, i8** %214, align 8, !dbg !2407
  %217 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 1, !dbg !2408
  %218 = load i8*, i8** %217, align 8, !dbg !2408
  %219 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 2, !dbg !2410
  %220 = load i8*, i8** %219, align 8, !dbg !2410
  %221 = ptrtoint i8* %218 to i64, !dbg !2411
  %222 = ptrtoint i8* %220 to i64, !dbg !2411
  %223 = sub i64 %221, %222, !dbg !2411
  %224 = trunc i64 %223 to i32, !dbg !2412
  %225 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2413
  %226 = getelementptr inbounds %struct.stream, %struct.stream* %225, i32 0, i32 0, !dbg !2414
  %227 = load i8*, i8** %226, align 8, !dbg !2414
  %228 = bitcast i8* %227 to i32*, !dbg !2415
  store i32 %224, i32* %228, align 4, !dbg !2416
  %229 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2417
  %230 = getelementptr inbounds %struct.stream, %struct.stream* %229, i32 0, i32 0, !dbg !2418
  %231 = load i8*, i8** %230, align 8, !dbg !2419
  %232 = getelementptr inbounds i8, i8* %231, i64 4, !dbg !2419
  store i8* %232, i8** %230, align 8, !dbg !2419
  %233 = load i32, i32* %1, align 4, !dbg !2420
  %234 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2422
  %235 = getelementptr inbounds %struct.stream, %struct.stream* %234, i32 0, i32 0, !dbg !2423
  %236 = load i8*, i8** %235, align 8, !dbg !2423
  %237 = bitcast i8* %236 to i32*, !dbg !2424
  store i32 %233, i32* %237, align 4, !dbg !2425
  %238 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2426
  %239 = getelementptr inbounds %struct.stream, %struct.stream* %238, i32 0, i32 0, !dbg !2427
  %240 = load i8*, i8** %239, align 8, !dbg !2428
  %241 = getelementptr inbounds i8, i8* %240, i64 4, !dbg !2428
  store i8* %241, i8** %239, align 8, !dbg !2428
  %242 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2429
  %243 = getelementptr inbounds %struct.stream, %struct.stream* %242, i32 0, i32 0, !dbg !2431
  %244 = load i8*, i8** %243, align 8, !dbg !2431
  %245 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 2, !dbg !2432
  %246 = load i8*, i8** %245, align 8, !dbg !2432
  %247 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 1, !dbg !2433
  %248 = load i8*, i8** %247, align 8, !dbg !2433
  %249 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 2, !dbg !2434
  %250 = load i8*, i8** %249, align 8, !dbg !2434
  %251 = ptrtoint i8* %248 to i64, !dbg !2435
  %252 = ptrtoint i8* %250 to i64, !dbg !2435
  %253 = sub i64 %251, %252, !dbg !2435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %244, i8* %246, i64 %253, i32 1, i1 false), !dbg !2436
  %254 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 1, !dbg !2437
  %255 = load i8*, i8** %254, align 8, !dbg !2437
  %256 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 2, !dbg !2438
  %257 = load i8*, i8** %256, align 8, !dbg !2438
  %258 = ptrtoint i8* %255 to i64, !dbg !2439
  %259 = ptrtoint i8* %257 to i64, !dbg !2439
  %260 = sub i64 %258, %259, !dbg !2439
  %261 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2440
  %262 = getelementptr inbounds %struct.stream, %struct.stream* %261, i32 0, i32 0, !dbg !2441
  %263 = load i8*, i8** %262, align 8, !dbg !2442
  %264 = getelementptr inbounds i8, i8* %263, i64 %260, !dbg !2442
  store i8* %264, i8** %262, align 8, !dbg !2442
  %265 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2443
  %266 = getelementptr inbounds %struct.stream, %struct.stream* %265, i32 0, i32 0, !dbg !2445
  %267 = load i8*, i8** %266, align 8, !dbg !2445
  %268 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 2, !dbg !2446
  %269 = load i8*, i8** %268, align 8, !dbg !2446
  %270 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 1, !dbg !2447
  %271 = load i8*, i8** %270, align 8, !dbg !2447
  %272 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 2, !dbg !2448
  %273 = load i8*, i8** %272, align 8, !dbg !2448
  %274 = ptrtoint i8* %271 to i64, !dbg !2449
  %275 = ptrtoint i8* %273 to i64, !dbg !2449
  %276 = sub i64 %274, %275, !dbg !2449
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %267, i8* %269, i64 %276, i32 1, i1 false), !dbg !2450
  %277 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 1, !dbg !2451
  %278 = load i8*, i8** %277, align 8, !dbg !2451
  %279 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 2, !dbg !2452
  %280 = load i8*, i8** %279, align 8, !dbg !2452
  %281 = ptrtoint i8* %278 to i64, !dbg !2453
  %282 = ptrtoint i8* %280 to i64, !dbg !2453
  %283 = sub i64 %281, %282, !dbg !2453
  %284 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2454
  %285 = getelementptr inbounds %struct.stream, %struct.stream* %284, i32 0, i32 0, !dbg !2455
  %286 = load i8*, i8** %285, align 8, !dbg !2456
  %287 = getelementptr inbounds i8, i8* %286, i64 %283, !dbg !2456
  store i8* %287, i8** %285, align 8, !dbg !2456
  %288 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2457
  %289 = getelementptr inbounds %struct.stream, %struct.stream* %288, i32 0, i32 0, !dbg !2459
  %290 = load i8*, i8** %289, align 8, !dbg !2459
  %291 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %6, align 8, !dbg !2460
  %292 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %291, i32 0, i32 4, !dbg !2461
  %293 = load i8*, i8** %292, align 8, !dbg !2461
  %294 = load i32, i32* %1, align 4, !dbg !2462
  %295 = zext i32 %294 to i64, !dbg !2462
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %290, i8* %293, i64 %295, i32 1, i1 false), !dbg !2463
  %296 = load i32, i32* %1, align 4, !dbg !2464
  %297 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2465
  %298 = getelementptr inbounds %struct.stream, %struct.stream* %297, i32 0, i32 0, !dbg !2466
  %299 = load i8*, i8** %298, align 8, !dbg !2467
  %300 = zext i32 %296 to i64, !dbg !2467
  %301 = getelementptr inbounds i8, i8* %299, i64 %300, !dbg !2467
  store i8* %301, i8** %298, align 8, !dbg !2467
  %302 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %6, align 8, !dbg !2468
  %303 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %302, i32 0, i32 4, !dbg !2470
  %304 = load i8*, i8** %303, align 8, !dbg !2470
  %305 = icmp ne i8* %304, null, !dbg !2468
  br i1 %305, label %306, label %310, !dbg !2471

; <label>:306:                                    ; preds = %147
  %307 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %6, align 8, !dbg !2472
  %308 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %307, i32 0, i32 4, !dbg !2473
  %309 = load i8*, i8** %308, align 8, !dbg !2473
  call void @xfree(i8* %309), !dbg !2474
  br label %310, !dbg !2474

; <label>:310:                                    ; preds = %306, %147
  br label %320, !dbg !2475

; <label>:311:                                    ; preds = %46
  %312 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2476
  %313 = getelementptr inbounds %struct.stream, %struct.stream* %312, i32 0, i32 0, !dbg !2478
  %314 = load i8*, i8** %313, align 8, !dbg !2478
  %315 = bitcast i8* %314 to i32*, !dbg !2479
  store i32 0, i32* %315, align 4, !dbg !2480
  %316 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2481
  %317 = getelementptr inbounds %struct.stream, %struct.stream* %316, i32 0, i32 0, !dbg !2482
  %318 = load i8*, i8** %317, align 8, !dbg !2483
  %319 = getelementptr inbounds i8, i8* %318, i64 4, !dbg !2483
  store i8* %319, i8** %317, align 8, !dbg !2483
  br label %320, !dbg !2484

; <label>:320:                                    ; preds = %311, %310, %84
  br label %321, !dbg !2485

; <label>:321:                                    ; preds = %320
  %322 = load i64, i64* %4, align 8, !dbg !2486
  %323 = add i64 %322, 1, !dbg !2486
  store i64 %323, i64* %4, align 8, !dbg !2486
  br label %41, !dbg !2488, !llvm.loop !2489

; <label>:324:                                    ; preds = %41
  %325 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2491
  %326 = getelementptr inbounds %struct.stream, %struct.stream* %325, i32 0, i32 0, !dbg !2492
  %327 = load i8*, i8** %326, align 8, !dbg !2492
  %328 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2493
  %329 = getelementptr inbounds %struct.stream, %struct.stream* %328, i32 0, i32 1, !dbg !2494
  store i8* %327, i8** %329, align 8, !dbg !2495
  %330 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2496
  %331 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpdr_channel, align 8, !dbg !2497
  call void @channel_send(%struct.stream* %330, %struct._VCHANNEL* %331), !dbg !2498
  ret void, !dbg !2499
}

; Function Attrs: nounwind uwtable
define internal void @rdpdr_send_client_capability_response() #0 !dbg !2500 {
  %1 = alloca %struct.stream*, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %1, metadata !2501, metadata !215), !dbg !2502
  %2 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpdr_channel, align 8, !dbg !2503
  %3 = call %struct.stream* @channel_init(%struct._VCHANNEL* %2, i32 80), !dbg !2504
  store %struct.stream* %3, %struct.stream** %1, align 8, !dbg !2505
  %4 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2506
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !2508
  %6 = load i8*, i8** %5, align 8, !dbg !2508
  %7 = bitcast i8* %6 to i16*, !dbg !2509
  store i16 17522, i16* %7, align 2, !dbg !2510
  %8 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2511
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !2512
  %10 = load i8*, i8** %9, align 8, !dbg !2513
  %11 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !2513
  store i8* %11, i8** %9, align 8, !dbg !2513
  %12 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2514
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !2516
  %14 = load i8*, i8** %13, align 8, !dbg !2516
  %15 = bitcast i8* %14 to i16*, !dbg !2517
  store i16 17232, i16* %15, align 2, !dbg !2518
  %16 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2519
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !2520
  %18 = load i8*, i8** %17, align 8, !dbg !2521
  %19 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !2521
  store i8* %19, i8** %17, align 8, !dbg !2521
  %20 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2522
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !2524
  %22 = load i8*, i8** %21, align 8, !dbg !2524
  %23 = bitcast i8* %22 to i16*, !dbg !2525
  store i16 5, i16* %23, align 2, !dbg !2526
  %24 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2527
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !2528
  %26 = load i8*, i8** %25, align 8, !dbg !2529
  %27 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !2529
  store i8* %27, i8** %25, align 8, !dbg !2529
  %28 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2530
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !2532
  %30 = load i8*, i8** %29, align 8, !dbg !2532
  %31 = bitcast i8* %30 to i16*, !dbg !2533
  store i16 0, i16* %31, align 2, !dbg !2534
  %32 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2535
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 0, !dbg !2536
  %34 = load i8*, i8** %33, align 8, !dbg !2537
  %35 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !2537
  store i8* %35, i8** %33, align 8, !dbg !2537
  %36 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2538
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !2540
  %38 = load i8*, i8** %37, align 8, !dbg !2540
  %39 = bitcast i8* %38 to i16*, !dbg !2541
  store i16 1, i16* %39, align 2, !dbg !2542
  %40 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2543
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0, !dbg !2544
  %42 = load i8*, i8** %41, align 8, !dbg !2545
  %43 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !2545
  store i8* %43, i8** %41, align 8, !dbg !2545
  %44 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2546
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !2548
  %46 = load i8*, i8** %45, align 8, !dbg !2548
  %47 = bitcast i8* %46 to i16*, !dbg !2549
  store i16 40, i16* %47, align 2, !dbg !2550
  %48 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2551
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !2552
  %50 = load i8*, i8** %49, align 8, !dbg !2553
  %51 = getelementptr inbounds i8, i8* %50, i64 2, !dbg !2553
  store i8* %51, i8** %49, align 8, !dbg !2553
  %52 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2554
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !2556
  %54 = load i8*, i8** %53, align 8, !dbg !2556
  %55 = bitcast i8* %54 to i32*, !dbg !2557
  store i32 1, i32* %55, align 4, !dbg !2558
  %56 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2559
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 0, !dbg !2560
  %58 = load i8*, i8** %57, align 8, !dbg !2561
  %59 = getelementptr inbounds i8, i8* %58, i64 4, !dbg !2561
  store i8* %59, i8** %57, align 8, !dbg !2561
  %60 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2562
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !2564
  %62 = load i8*, i8** %61, align 8, !dbg !2564
  %63 = bitcast i8* %62 to i32*, !dbg !2565
  store i32 0, i32* %63, align 4, !dbg !2566
  %64 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2567
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 0, !dbg !2568
  %66 = load i8*, i8** %65, align 8, !dbg !2569
  %67 = getelementptr inbounds i8, i8* %66, i64 4, !dbg !2569
  store i8* %67, i8** %65, align 8, !dbg !2569
  %68 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2570
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 0, !dbg !2572
  %70 = load i8*, i8** %69, align 8, !dbg !2572
  %71 = bitcast i8* %70 to i32*, !dbg !2573
  store i32 0, i32* %71, align 4, !dbg !2574
  %72 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2575
  %73 = getelementptr inbounds %struct.stream, %struct.stream* %72, i32 0, i32 0, !dbg !2576
  %74 = load i8*, i8** %73, align 8, !dbg !2577
  %75 = getelementptr inbounds i8, i8* %74, i64 4, !dbg !2577
  store i8* %75, i8** %73, align 8, !dbg !2577
  %76 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2578
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 0, !dbg !2580
  %78 = load i8*, i8** %77, align 8, !dbg !2580
  %79 = bitcast i8* %78 to i16*, !dbg !2581
  store i16 1, i16* %79, align 2, !dbg !2582
  %80 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2583
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %80, i32 0, i32 0, !dbg !2584
  %82 = load i8*, i8** %81, align 8, !dbg !2585
  %83 = getelementptr inbounds i8, i8* %82, i64 2, !dbg !2585
  store i8* %83, i8** %81, align 8, !dbg !2585
  %84 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2586
  %85 = getelementptr inbounds %struct.stream, %struct.stream* %84, i32 0, i32 0, !dbg !2588
  %86 = load i8*, i8** %85, align 8, !dbg !2588
  %87 = bitcast i8* %86 to i16*, !dbg !2589
  store i16 5, i16* %87, align 2, !dbg !2590
  %88 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2591
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 0, !dbg !2592
  %90 = load i8*, i8** %89, align 8, !dbg !2593
  %91 = getelementptr inbounds i8, i8* %90, i64 2, !dbg !2593
  store i8* %91, i8** %89, align 8, !dbg !2593
  %92 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2594
  %93 = getelementptr inbounds %struct.stream, %struct.stream* %92, i32 0, i32 0, !dbg !2596
  %94 = load i8*, i8** %93, align 8, !dbg !2596
  %95 = bitcast i8* %94 to i32*, !dbg !2597
  store i32 65535, i32* %95, align 4, !dbg !2598
  %96 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2599
  %97 = getelementptr inbounds %struct.stream, %struct.stream* %96, i32 0, i32 0, !dbg !2600
  %98 = load i8*, i8** %97, align 8, !dbg !2601
  %99 = getelementptr inbounds i8, i8* %98, i64 4, !dbg !2601
  store i8* %99, i8** %97, align 8, !dbg !2601
  %100 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2602
  %101 = getelementptr inbounds %struct.stream, %struct.stream* %100, i32 0, i32 0, !dbg !2604
  %102 = load i8*, i8** %101, align 8, !dbg !2604
  %103 = bitcast i8* %102 to i32*, !dbg !2605
  store i32 0, i32* %103, align 4, !dbg !2606
  %104 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2607
  %105 = getelementptr inbounds %struct.stream, %struct.stream* %104, i32 0, i32 0, !dbg !2608
  %106 = load i8*, i8** %105, align 8, !dbg !2609
  %107 = getelementptr inbounds i8, i8* %106, i64 4, !dbg !2609
  store i8* %107, i8** %105, align 8, !dbg !2609
  %108 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2610
  %109 = getelementptr inbounds %struct.stream, %struct.stream* %108, i32 0, i32 0, !dbg !2612
  %110 = load i8*, i8** %109, align 8, !dbg !2612
  %111 = bitcast i8* %110 to i32*, !dbg !2613
  store i32 3, i32* %111, align 4, !dbg !2614
  %112 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2615
  %113 = getelementptr inbounds %struct.stream, %struct.stream* %112, i32 0, i32 0, !dbg !2616
  %114 = load i8*, i8** %113, align 8, !dbg !2617
  %115 = getelementptr inbounds i8, i8* %114, i64 4, !dbg !2617
  store i8* %115, i8** %113, align 8, !dbg !2617
  %116 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2618
  %117 = getelementptr inbounds %struct.stream, %struct.stream* %116, i32 0, i32 0, !dbg !2620
  %118 = load i8*, i8** %117, align 8, !dbg !2620
  %119 = bitcast i8* %118 to i32*, !dbg !2621
  store i32 0, i32* %119, align 4, !dbg !2622
  %120 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2623
  %121 = getelementptr inbounds %struct.stream, %struct.stream* %120, i32 0, i32 0, !dbg !2624
  %122 = load i8*, i8** %121, align 8, !dbg !2625
  %123 = getelementptr inbounds i8, i8* %122, i64 4, !dbg !2625
  store i8* %123, i8** %121, align 8, !dbg !2625
  %124 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2626
  %125 = getelementptr inbounds %struct.stream, %struct.stream* %124, i32 0, i32 0, !dbg !2628
  %126 = load i8*, i8** %125, align 8, !dbg !2628
  %127 = bitcast i8* %126 to i32*, !dbg !2629
  store i32 0, i32* %127, align 4, !dbg !2630
  %128 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2631
  %129 = getelementptr inbounds %struct.stream, %struct.stream* %128, i32 0, i32 0, !dbg !2632
  %130 = load i8*, i8** %129, align 8, !dbg !2633
  %131 = getelementptr inbounds i8, i8* %130, i64 4, !dbg !2633
  store i8* %131, i8** %129, align 8, !dbg !2633
  %132 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2634
  %133 = getelementptr inbounds %struct.stream, %struct.stream* %132, i32 0, i32 0, !dbg !2636
  %134 = load i8*, i8** %133, align 8, !dbg !2636
  %135 = bitcast i8* %134 to i16*, !dbg !2637
  store i16 2, i16* %135, align 2, !dbg !2638
  %136 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2639
  %137 = getelementptr inbounds %struct.stream, %struct.stream* %136, i32 0, i32 0, !dbg !2640
  %138 = load i8*, i8** %137, align 8, !dbg !2641
  %139 = getelementptr inbounds i8, i8* %138, i64 2, !dbg !2641
  store i8* %139, i8** %137, align 8, !dbg !2641
  %140 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2642
  %141 = getelementptr inbounds %struct.stream, %struct.stream* %140, i32 0, i32 0, !dbg !2644
  %142 = load i8*, i8** %141, align 8, !dbg !2644
  %143 = bitcast i8* %142 to i16*, !dbg !2645
  store i16 8, i16* %143, align 2, !dbg !2646
  %144 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2647
  %145 = getelementptr inbounds %struct.stream, %struct.stream* %144, i32 0, i32 0, !dbg !2648
  %146 = load i8*, i8** %145, align 8, !dbg !2649
  %147 = getelementptr inbounds i8, i8* %146, i64 2, !dbg !2649
  store i8* %147, i8** %145, align 8, !dbg !2649
  %148 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2650
  %149 = getelementptr inbounds %struct.stream, %struct.stream* %148, i32 0, i32 0, !dbg !2652
  %150 = load i8*, i8** %149, align 8, !dbg !2652
  %151 = bitcast i8* %150 to i32*, !dbg !2653
  store i32 1, i32* %151, align 4, !dbg !2654
  %152 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2655
  %153 = getelementptr inbounds %struct.stream, %struct.stream* %152, i32 0, i32 0, !dbg !2656
  %154 = load i8*, i8** %153, align 8, !dbg !2657
  %155 = getelementptr inbounds i8, i8* %154, i64 4, !dbg !2657
  store i8* %155, i8** %153, align 8, !dbg !2657
  %156 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2658
  %157 = getelementptr inbounds %struct.stream, %struct.stream* %156, i32 0, i32 0, !dbg !2660
  %158 = load i8*, i8** %157, align 8, !dbg !2660
  %159 = bitcast i8* %158 to i16*, !dbg !2661
  store i16 3, i16* %159, align 2, !dbg !2662
  %160 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2663
  %161 = getelementptr inbounds %struct.stream, %struct.stream* %160, i32 0, i32 0, !dbg !2664
  %162 = load i8*, i8** %161, align 8, !dbg !2665
  %163 = getelementptr inbounds i8, i8* %162, i64 2, !dbg !2665
  store i8* %163, i8** %161, align 8, !dbg !2665
  %164 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2666
  %165 = getelementptr inbounds %struct.stream, %struct.stream* %164, i32 0, i32 0, !dbg !2668
  %166 = load i8*, i8** %165, align 8, !dbg !2668
  %167 = bitcast i8* %166 to i16*, !dbg !2669
  store i16 8, i16* %167, align 2, !dbg !2670
  %168 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2671
  %169 = getelementptr inbounds %struct.stream, %struct.stream* %168, i32 0, i32 0, !dbg !2672
  %170 = load i8*, i8** %169, align 8, !dbg !2673
  %171 = getelementptr inbounds i8, i8* %170, i64 2, !dbg !2673
  store i8* %171, i8** %169, align 8, !dbg !2673
  %172 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2674
  %173 = getelementptr inbounds %struct.stream, %struct.stream* %172, i32 0, i32 0, !dbg !2676
  %174 = load i8*, i8** %173, align 8, !dbg !2676
  %175 = bitcast i8* %174 to i32*, !dbg !2677
  store i32 1, i32* %175, align 4, !dbg !2678
  %176 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2679
  %177 = getelementptr inbounds %struct.stream, %struct.stream* %176, i32 0, i32 0, !dbg !2680
  %178 = load i8*, i8** %177, align 8, !dbg !2681
  %179 = getelementptr inbounds i8, i8* %178, i64 4, !dbg !2681
  store i8* %179, i8** %177, align 8, !dbg !2681
  %180 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2682
  %181 = getelementptr inbounds %struct.stream, %struct.stream* %180, i32 0, i32 0, !dbg !2684
  %182 = load i8*, i8** %181, align 8, !dbg !2684
  %183 = bitcast i8* %182 to i16*, !dbg !2685
  store i16 4, i16* %183, align 2, !dbg !2686
  %184 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2687
  %185 = getelementptr inbounds %struct.stream, %struct.stream* %184, i32 0, i32 0, !dbg !2688
  %186 = load i8*, i8** %185, align 8, !dbg !2689
  %187 = getelementptr inbounds i8, i8* %186, i64 2, !dbg !2689
  store i8* %187, i8** %185, align 8, !dbg !2689
  %188 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2690
  %189 = getelementptr inbounds %struct.stream, %struct.stream* %188, i32 0, i32 0, !dbg !2692
  %190 = load i8*, i8** %189, align 8, !dbg !2692
  %191 = bitcast i8* %190 to i16*, !dbg !2693
  store i16 8, i16* %191, align 2, !dbg !2694
  %192 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2695
  %193 = getelementptr inbounds %struct.stream, %struct.stream* %192, i32 0, i32 0, !dbg !2696
  %194 = load i8*, i8** %193, align 8, !dbg !2697
  %195 = getelementptr inbounds i8, i8* %194, i64 2, !dbg !2697
  store i8* %195, i8** %193, align 8, !dbg !2697
  %196 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2698
  %197 = getelementptr inbounds %struct.stream, %struct.stream* %196, i32 0, i32 0, !dbg !2700
  %198 = load i8*, i8** %197, align 8, !dbg !2700
  %199 = bitcast i8* %198 to i32*, !dbg !2701
  store i32 2, i32* %199, align 4, !dbg !2702
  %200 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2703
  %201 = getelementptr inbounds %struct.stream, %struct.stream* %200, i32 0, i32 0, !dbg !2704
  %202 = load i8*, i8** %201, align 8, !dbg !2705
  %203 = getelementptr inbounds i8, i8* %202, i64 4, !dbg !2705
  store i8* %203, i8** %201, align 8, !dbg !2705
  %204 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2706
  %205 = getelementptr inbounds %struct.stream, %struct.stream* %204, i32 0, i32 0, !dbg !2708
  %206 = load i8*, i8** %205, align 8, !dbg !2708
  %207 = bitcast i8* %206 to i16*, !dbg !2709
  store i16 5, i16* %207, align 2, !dbg !2710
  %208 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2711
  %209 = getelementptr inbounds %struct.stream, %struct.stream* %208, i32 0, i32 0, !dbg !2712
  %210 = load i8*, i8** %209, align 8, !dbg !2713
  %211 = getelementptr inbounds i8, i8* %210, i64 2, !dbg !2713
  store i8* %211, i8** %209, align 8, !dbg !2713
  %212 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2714
  %213 = getelementptr inbounds %struct.stream, %struct.stream* %212, i32 0, i32 0, !dbg !2716
  %214 = load i8*, i8** %213, align 8, !dbg !2716
  %215 = bitcast i8* %214 to i16*, !dbg !2717
  store i16 8, i16* %215, align 2, !dbg !2718
  %216 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2719
  %217 = getelementptr inbounds %struct.stream, %struct.stream* %216, i32 0, i32 0, !dbg !2720
  %218 = load i8*, i8** %217, align 8, !dbg !2721
  %219 = getelementptr inbounds i8, i8* %218, i64 2, !dbg !2721
  store i8* %219, i8** %217, align 8, !dbg !2721
  %220 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2722
  %221 = getelementptr inbounds %struct.stream, %struct.stream* %220, i32 0, i32 0, !dbg !2724
  %222 = load i8*, i8** %221, align 8, !dbg !2724
  %223 = bitcast i8* %222 to i32*, !dbg !2725
  store i32 1, i32* %223, align 4, !dbg !2726
  %224 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2727
  %225 = getelementptr inbounds %struct.stream, %struct.stream* %224, i32 0, i32 0, !dbg !2728
  %226 = load i8*, i8** %225, align 8, !dbg !2729
  %227 = getelementptr inbounds i8, i8* %226, i64 4, !dbg !2729
  store i8* %227, i8** %225, align 8, !dbg !2729
  %228 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2730
  %229 = getelementptr inbounds %struct.stream, %struct.stream* %228, i32 0, i32 0, !dbg !2731
  %230 = load i8*, i8** %229, align 8, !dbg !2731
  %231 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2732
  %232 = getelementptr inbounds %struct.stream, %struct.stream* %231, i32 0, i32 1, !dbg !2733
  store i8* %230, i8** %232, align 8, !dbg !2734
  %233 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2735
  %234 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpdr_channel, align 8, !dbg !2736
  call void @channel_send(%struct.stream* %233, %struct._VCHANNEL* %234), !dbg !2737
  ret void, !dbg !2738
}

declare void @printercache_process(%struct.stream*) #3

declare i8* @xmalloc(i32) #3

declare void @rdp_in_unistr(%struct.stream*, i32, i8**, i32*) #3

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: nounwind uwtable
define internal i32 @rdpdr_handle_ok(i32, i32) #0 !dbg !2739 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2742, metadata !215), !dbg !2743
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2744, metadata !215), !dbg !2745
  %6 = load i32, i32* %4, align 4, !dbg !2746
  %7 = zext i32 %6 to i64, !dbg !2747
  %8 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %7, !dbg !2747
  %9 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %8, i32 0, i32 0, !dbg !2748
  %10 = load i32, i32* %9, align 16, !dbg !2748
  switch i32 %10, label %31 [
    i32 2, label %11
    i32 1, label %11
    i32 4, label %11
    i32 32, label %11
    i32 8, label %21
  ], !dbg !2749

; <label>:11:                                     ; preds = %2, %2, %2, %2
  %12 = load i32, i32* %4, align 4, !dbg !2750
  %13 = zext i32 %12 to i64, !dbg !2753
  %14 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %13, !dbg !2753
  %15 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %14, i32 0, i32 1, !dbg !2754
  %16 = load i32, i32* %15, align 4, !dbg !2754
  %17 = load i32, i32* %5, align 4, !dbg !2755
  %18 = icmp ne i32 %16, %17, !dbg !2756
  br i1 %18, label %19, label %20, !dbg !2757

; <label>:19:                                     ; preds = %11
  store i32 0, i32* %3, align 4, !dbg !2758
  br label %32, !dbg !2758

; <label>:20:                                     ; preds = %11
  br label %31, !dbg !2759

; <label>:21:                                     ; preds = %2
  %22 = load i32, i32* %5, align 4, !dbg !2760
  %23 = zext i32 %22 to i64, !dbg !2762
  %24 = getelementptr inbounds [0 x %struct.fileinfo], [0 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %23, !dbg !2762
  %25 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %24, i32 0, i32 0, !dbg !2763
  %26 = load i32, i32* %25, align 8, !dbg !2763
  %27 = load i32, i32* %4, align 4, !dbg !2764
  %28 = icmp ne i32 %26, %27, !dbg !2765
  br i1 %28, label %29, label %30, !dbg !2766

; <label>:29:                                     ; preds = %21
  store i32 0, i32* %3, align 4, !dbg !2767
  br label %32, !dbg !2767

; <label>:30:                                     ; preds = %21
  br label %31, !dbg !2768

; <label>:31:                                     ; preds = %2, %30, %20
  store i32 1, i32* %3, align 4, !dbg !2769
  br label %32, !dbg !2769

; <label>:32:                                     ; preds = %31, %29, %19
  %33 = load i32, i32* %3, align 4, !dbg !2770
  ret i32 %33, !dbg !2770
}

declare i8* @xrealloc(i8*, i64) #3

declare i32 @serial_get_timeout(i32, i32, i32*, i32*) #3

; Function Attrs: nounwind uwtable
define internal i32 @add_async_iorequest(i32, i32, i32, i32, i32, %struct._DEVICE_FNS*, i32, i32, i8*, i32) #0 !dbg !2771 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct._DEVICE_FNS*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.async_iorequest*, align 8
  store i32 %0, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2774, metadata !215), !dbg !2775
  store i32 %1, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2776, metadata !215), !dbg !2777
  store i32 %2, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2778, metadata !215), !dbg !2779
  store i32 %3, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2780, metadata !215), !dbg !2781
  store i32 %4, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2782, metadata !215), !dbg !2783
  store %struct._DEVICE_FNS* %5, %struct._DEVICE_FNS** %17, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_FNS** %17, metadata !2784, metadata !215), !dbg !2785
  store i32 %6, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2786, metadata !215), !dbg !2787
  store i32 %7, i32* %19, align 4
  call void @llvm.dbg.declare(metadata i32* %19, metadata !2788, metadata !215), !dbg !2789
  store i8* %8, i8** %20, align 8
  call void @llvm.dbg.declare(metadata i8** %20, metadata !2790, metadata !215), !dbg !2791
  store i32 %9, i32* %21, align 4
  call void @llvm.dbg.declare(metadata i32* %21, metadata !2792, metadata !215), !dbg !2793
  call void @llvm.dbg.declare(metadata %struct.async_iorequest** %22, metadata !2794, metadata !215), !dbg !2795
  %23 = load %struct.async_iorequest*, %struct.async_iorequest** @g_iorequest, align 8, !dbg !2796
  %24 = icmp eq %struct.async_iorequest* %23, null, !dbg !2798
  br i1 %24, label %25, label %36, !dbg !2799

; <label>:25:                                     ; preds = %10
  %26 = call i8* @xmalloc(i32 72), !dbg !2800
  %27 = bitcast i8* %26 to %struct.async_iorequest*, !dbg !2802
  store %struct.async_iorequest* %27, %struct.async_iorequest** @g_iorequest, align 8, !dbg !2803
  %28 = load %struct.async_iorequest*, %struct.async_iorequest** @g_iorequest, align 8, !dbg !2804
  %29 = icmp ne %struct.async_iorequest* %28, null, !dbg !2804
  br i1 %29, label %31, label %30, !dbg !2806

; <label>:30:                                     ; preds = %25
  store i32 0, i32* %11, align 4, !dbg !2807
  br label %106, !dbg !2807

; <label>:31:                                     ; preds = %25
  %32 = load %struct.async_iorequest*, %struct.async_iorequest** @g_iorequest, align 8, !dbg !2808
  %33 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %32, i32 0, i32 0, !dbg !2809
  store i32 0, i32* %33, align 8, !dbg !2810
  %34 = load %struct.async_iorequest*, %struct.async_iorequest** @g_iorequest, align 8, !dbg !2811
  %35 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %34, i32 0, i32 12, !dbg !2812
  store %struct.async_iorequest* null, %struct.async_iorequest** %35, align 8, !dbg !2813
  br label %36, !dbg !2814

; <label>:36:                                     ; preds = %31, %10
  %37 = load %struct.async_iorequest*, %struct.async_iorequest** @g_iorequest, align 8, !dbg !2815
  store %struct.async_iorequest* %37, %struct.async_iorequest** %22, align 8, !dbg !2816
  br label %38, !dbg !2817

; <label>:38:                                     ; preds = %67, %36
  %39 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2818
  %40 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %39, i32 0, i32 0, !dbg !2820
  %41 = load i32, i32* %40, align 8, !dbg !2820
  %42 = icmp ne i32 %41, 0, !dbg !2821
  br i1 %42, label %43, label %71, !dbg !2822

; <label>:43:                                     ; preds = %38
  %44 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2823
  %45 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %44, i32 0, i32 12, !dbg !2826
  %46 = load %struct.async_iorequest*, %struct.async_iorequest** %45, align 8, !dbg !2826
  %47 = icmp eq %struct.async_iorequest* %46, null, !dbg !2827
  br i1 %47, label %48, label %67, !dbg !2828

; <label>:48:                                     ; preds = %43
  %49 = call i8* @xmalloc(i32 72), !dbg !2829
  %50 = bitcast i8* %49 to %struct.async_iorequest*, !dbg !2831
  %51 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2832
  %52 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %51, i32 0, i32 12, !dbg !2833
  store %struct.async_iorequest* %50, %struct.async_iorequest** %52, align 8, !dbg !2834
  %53 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2835
  %54 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %53, i32 0, i32 12, !dbg !2837
  %55 = load %struct.async_iorequest*, %struct.async_iorequest** %54, align 8, !dbg !2837
  %56 = icmp ne %struct.async_iorequest* %55, null, !dbg !2835
  br i1 %56, label %58, label %57, !dbg !2838

; <label>:57:                                     ; preds = %48
  store i32 0, i32* %11, align 4, !dbg !2839
  br label %106, !dbg !2839

; <label>:58:                                     ; preds = %48
  %59 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2840
  %60 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %59, i32 0, i32 12, !dbg !2841
  %61 = load %struct.async_iorequest*, %struct.async_iorequest** %60, align 8, !dbg !2841
  %62 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %61, i32 0, i32 0, !dbg !2842
  store i32 0, i32* %62, align 8, !dbg !2843
  %63 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2844
  %64 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %63, i32 0, i32 12, !dbg !2845
  %65 = load %struct.async_iorequest*, %struct.async_iorequest** %64, align 8, !dbg !2845
  %66 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %65, i32 0, i32 12, !dbg !2846
  store %struct.async_iorequest* null, %struct.async_iorequest** %66, align 8, !dbg !2847
  br label %67, !dbg !2848

; <label>:67:                                     ; preds = %58, %43
  %68 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2849
  %69 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %68, i32 0, i32 12, !dbg !2850
  %70 = load %struct.async_iorequest*, %struct.async_iorequest** %69, align 8, !dbg !2850
  store %struct.async_iorequest* %70, %struct.async_iorequest** %22, align 8, !dbg !2851
  br label %38, !dbg !2852, !llvm.loop !2854

; <label>:71:                                     ; preds = %38
  %72 = load i32, i32* %12, align 4, !dbg !2855
  %73 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2856
  %74 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %73, i32 0, i32 4, !dbg !2857
  store i32 %72, i32* %74, align 8, !dbg !2858
  %75 = load i32, i32* %13, align 4, !dbg !2859
  %76 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2860
  %77 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %76, i32 0, i32 0, !dbg !2861
  store i32 %75, i32* %77, align 8, !dbg !2862
  %78 = load i32, i32* %14, align 4, !dbg !2863
  %79 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2864
  %80 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %79, i32 0, i32 5, !dbg !2865
  store i32 %78, i32* %80, align 4, !dbg !2866
  %81 = load i32, i32* %15, align 4, !dbg !2867
  %82 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2868
  %83 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %82, i32 0, i32 1, !dbg !2869
  store i32 %81, i32* %83, align 4, !dbg !2870
  %84 = load i32, i32* %16, align 4, !dbg !2871
  %85 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2872
  %86 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %85, i32 0, i32 6, !dbg !2873
  store i32 %84, i32* %86, align 8, !dbg !2874
  %87 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2875
  %88 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %87, i32 0, i32 7, !dbg !2876
  store i32 0, i32* %88, align 4, !dbg !2877
  %89 = load %struct._DEVICE_FNS*, %struct._DEVICE_FNS** %17, align 8, !dbg !2878
  %90 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2879
  %91 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %90, i32 0, i32 11, !dbg !2880
  store %struct._DEVICE_FNS* %89, %struct._DEVICE_FNS** %91, align 8, !dbg !2881
  %92 = load i32, i32* %18, align 4, !dbg !2882
  %93 = zext i32 %92 to i64, !dbg !2882
  %94 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2883
  %95 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %94, i32 0, i32 8, !dbg !2884
  store i64 %93, i64* %95, align 8, !dbg !2885
  %96 = load i32, i32* %19, align 4, !dbg !2886
  %97 = zext i32 %96 to i64, !dbg !2886
  %98 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2887
  %99 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %98, i32 0, i32 9, !dbg !2888
  store i64 %97, i64* %99, align 8, !dbg !2889
  %100 = load i8*, i8** %20, align 8, !dbg !2890
  %101 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2891
  %102 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %101, i32 0, i32 10, !dbg !2892
  store i8* %100, i8** %102, align 8, !dbg !2893
  %103 = load i32, i32* %21, align 4, !dbg !2894
  %104 = load %struct.async_iorequest*, %struct.async_iorequest** %22, align 8, !dbg !2895
  %105 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %104, i32 0, i32 3, !dbg !2896
  store i32 %103, i32* %105, align 4, !dbg !2897
  store i32 1, i32* %11, align 4, !dbg !2898
  br label %106, !dbg !2898

; <label>:106:                                    ; preds = %71, %57, %30
  %107 = load i32, i32* %11, align 4, !dbg !2899
  ret i32 %107, !dbg !2899
}

declare i32 @disk_query_information(i32, i32, %struct.stream*) #3

declare i32 @disk_set_information(i32, i32, %struct.stream*, %struct.stream*) #3

declare i32 @disk_query_volume_information(i32, i32, %struct.stream*) #3

declare i32 @disk_query_directory(i32, i32, i8*, %struct.stream*) #3

declare i32 @disk_create_notify(i32, i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare void @s_realloc(%struct.stream*, i32) #3

declare void @s_reset(%struct.stream*) #3

declare void @out_utf16s(%struct.stream*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define internal i64 @announcedata_size() #0 !dbg !2900 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.rdpdr_printer_info*, align 8
  %4 = alloca %struct.rdpdr_disk_device_info*, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !2903, metadata !215), !dbg !2904
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2905, metadata !215), !dbg !2906
  call void @llvm.dbg.declare(metadata %struct.rdpdr_printer_info** %3, metadata !2907, metadata !215), !dbg !2908
  call void @llvm.dbg.declare(metadata %struct.rdpdr_disk_device_info** %4, metadata !2909, metadata !215), !dbg !2910
  store i64 8, i64* %1, align 8, !dbg !2911
  store i64 0, i64* %2, align 8, !dbg !2912
  br label %5, !dbg !2914

; <label>:5:                                      ; preds = %77, %0
  %6 = load i64, i64* %2, align 8, !dbg !2915
  %7 = load i32, i32* @g_num_devices, align 4, !dbg !2918
  %8 = zext i32 %7 to i64, !dbg !2918
  %9 = icmp ult i64 %6, %8, !dbg !2919
  br i1 %9, label %10, label %80, !dbg !2920

; <label>:10:                                     ; preds = %5
  %11 = load i64, i64* %1, align 8, !dbg !2921
  %12 = add i64 %11, 4, !dbg !2921
  store i64 %12, i64* %1, align 8, !dbg !2921
  %13 = load i64, i64* %1, align 8, !dbg !2923
  %14 = add i64 %13, 4, !dbg !2923
  store i64 %14, i64* %1, align 8, !dbg !2923
  %15 = load i64, i64* %1, align 8, !dbg !2924
  %16 = add i64 %15, 8, !dbg !2924
  store i64 %16, i64* %1, align 8, !dbg !2924
  %17 = load i64, i64* %1, align 8, !dbg !2925
  %18 = add i64 %17, 4, !dbg !2925
  store i64 %18, i64* %1, align 8, !dbg !2925
  %19 = load i64, i64* %2, align 8, !dbg !2926
  %20 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %19, !dbg !2927
  %21 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %20, i32 0, i32 0, !dbg !2928
  %22 = load i32, i32* %21, align 16, !dbg !2928
  switch i32 %22, label %75 [
    i32 8, label %23
    i32 4, label %37
  ], !dbg !2929

; <label>:23:                                     ; preds = %10
  %24 = load i64, i64* %2, align 8, !dbg !2930
  %25 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %24, !dbg !2932
  %26 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %25, i32 0, i32 4, !dbg !2933
  %27 = load i8*, i8** %26, align 8, !dbg !2933
  %28 = bitcast i8* %27 to %struct.rdpdr_disk_device_info*, !dbg !2934
  store %struct.rdpdr_disk_device_info* %28, %struct.rdpdr_disk_device_info** %4, align 8, !dbg !2935
  %29 = load %struct.rdpdr_disk_device_info*, %struct.rdpdr_disk_device_info** %4, align 8, !dbg !2936
  %30 = getelementptr inbounds %struct.rdpdr_disk_device_info, %struct.rdpdr_disk_device_info* %29, i32 0, i32 0, !dbg !2937
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %30, i32 0, i32 0, !dbg !2936
  %32 = call i64 @strlen(i8* %31) #7, !dbg !2938
  %33 = mul i64 2, %32, !dbg !2939
  %34 = add i64 %33, 2, !dbg !2940
  %35 = load i64, i64* %1, align 8, !dbg !2941
  %36 = add i64 %35, %34, !dbg !2941
  store i64 %36, i64* %1, align 8, !dbg !2941
  br label %76, !dbg !2942

; <label>:37:                                     ; preds = %10
  %38 = load i64, i64* %2, align 8, !dbg !2943
  %39 = getelementptr inbounds [16 x %struct.rdpdr_device_info], [16 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %38, !dbg !2944
  %40 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %39, i32 0, i32 4, !dbg !2945
  %41 = load i8*, i8** %40, align 8, !dbg !2945
  %42 = bitcast i8* %41 to %struct.rdpdr_printer_info*, !dbg !2946
  store %struct.rdpdr_printer_info* %42, %struct.rdpdr_printer_info** %3, align 8, !dbg !2947
  %43 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %3, align 8, !dbg !2948
  %44 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %43, i32 0, i32 2, !dbg !2949
  %45 = load i8*, i8** %44, align 8, !dbg !2949
  %46 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %3, align 8, !dbg !2950
  %47 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %46, i32 0, i32 4, !dbg !2951
  %48 = call i32 @printercache_load_blob(i8* %45, i8** %47), !dbg !2952
  %49 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %3, align 8, !dbg !2953
  %50 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %49, i32 0, i32 3, !dbg !2954
  store i32 %48, i32* %50, align 8, !dbg !2955
  %51 = load i64, i64* %1, align 8, !dbg !2956
  %52 = add i64 %51, 24, !dbg !2956
  store i64 %52, i64* %1, align 8, !dbg !2956
  %53 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %3, align 8, !dbg !2957
  %54 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %53, i32 0, i32 1, !dbg !2958
  %55 = load i8*, i8** %54, align 8, !dbg !2958
  %56 = call i64 @strlen(i8* %55) #7, !dbg !2959
  %57 = mul i64 2, %56, !dbg !2960
  %58 = add i64 %57, 2, !dbg !2961
  %59 = load i64, i64* %1, align 8, !dbg !2962
  %60 = add i64 %59, %58, !dbg !2962
  store i64 %60, i64* %1, align 8, !dbg !2962
  %61 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %3, align 8, !dbg !2963
  %62 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %61, i32 0, i32 2, !dbg !2964
  %63 = load i8*, i8** %62, align 8, !dbg !2964
  %64 = call i64 @strlen(i8* %63) #7, !dbg !2965
  %65 = mul i64 2, %64, !dbg !2966
  %66 = add i64 %65, 2, !dbg !2967
  %67 = load i64, i64* %1, align 8, !dbg !2968
  %68 = add i64 %67, %66, !dbg !2968
  store i64 %68, i64* %1, align 8, !dbg !2968
  %69 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %3, align 8, !dbg !2969
  %70 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %69, i32 0, i32 3, !dbg !2970
  %71 = load i32, i32* %70, align 8, !dbg !2970
  %72 = zext i32 %71 to i64, !dbg !2969
  %73 = load i64, i64* %1, align 8, !dbg !2971
  %74 = add i64 %73, %72, !dbg !2971
  store i64 %74, i64* %1, align 8, !dbg !2971
  br label %76, !dbg !2972

; <label>:75:                                     ; preds = %10
  br label %76, !dbg !2973

; <label>:76:                                     ; preds = %75, %37, %23
  br label %77, !dbg !2974

; <label>:77:                                     ; preds = %76
  %78 = load i64, i64* %2, align 8, !dbg !2975
  %79 = add i64 %78, 1, !dbg !2975
  store i64 %79, i64* %2, align 8, !dbg !2975
  br label %5, !dbg !2977, !llvm.loop !2978

; <label>:80:                                     ; preds = %5
  %81 = load i64, i64* %1, align 8, !dbg !2980
  ret i64 %81, !dbg !2981
}

declare i32 @printercache_load_blob(i8*, i8**) #3

declare i32 @serial_get_event(i32, i32*) #3

declare i32 @disk_check_notify(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!207, !208}
!llvm.ident = !{!209}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !172)
!1 = !DIFile(filename: "[inter]rdpdr.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "GUI", value: 0)
!7 = !DIEnumerator(name: "Keyboard", value: 1)
!8 = !DIEnumerator(name: "Clipboard", value: 2)
!9 = !DIEnumerator(name: "Sound", value: 3)
!10 = !DIEnumerator(name: "Protocol", value: 4)
!11 = !DIEnumerator(name: "Graphics", value: 5)
!12 = !DIEnumerator(name: "Core", value: 6)
!13 = !DIEnumerator(name: "SmartCard", value: 7)
!14 = !DIEnumerator(name: "Disk", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !4, line: 37, size: 32, align: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "Debug", value: 0)
!18 = !DIEnumerator(name: "Verbose", value: 1)
!19 = !DIEnumerator(name: "Warning", value: 2)
!20 = !DIEnumerator(name: "Error", value: 3)
!21 = !DIEnumerator(name: "Notice", value: 4)
!22 = !{!23, !27, !30, !31, !34, !35, !38, !96, !104, !33}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !25, line: 41, baseType: !26)
!25 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!26 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !25, line: 43, baseType: !29)
!29 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !32, line: 54, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!33 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!34 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !25, line: 39, baseType: !37)
!37 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "async_iorequest", file: !40, line: 87, size: 576, align: 64, elements: !41)
!40 = !DIFile(filename: "rdpdr.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !95}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !39, file: !40, line: 89, baseType: !28, size: 32, align: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !39, file: !40, line: 89, baseType: !28, size: 32, align: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !39, file: !40, line: 89, baseType: !28, size: 32, align: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !39, file: !40, line: 89, baseType: !28, size: 32, align: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !39, file: !40, line: 89, baseType: !28, size: 32, align: 32, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !39, file: !40, line: 89, baseType: !28, size: 32, align: 32, offset: 160)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !39, file: !40, line: 89, baseType: !28, size: 32, align: 32, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "partial_len", scope: !39, file: !40, line: 89, baseType: !28, size: 32, align: 32, offset: 224)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !39, file: !40, line: 90, baseType: !33, size: 64, align: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "itv_timeout", scope: !39, file: !40, line: 91, baseType: !33, size: 64, align: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !39, file: !40, line: 92, baseType: !35, size: 64, align: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "fns", scope: !39, file: !40, line: 93, baseType: !54, size: 64, align: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_FNS", file: !25, line: 223, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVICE_FNS", file: !25, line: 211, size: 320, align: 64, elements: !57)
!57 = !{!58, !67, !71, !75, !76}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !56, file: !25, line: 213, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !28, !28, !28, !28, !28, !63, !65}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_NTSTATUS", file: !25, line: 208, baseType: !28)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_NTHANDLE", file: !25, line: 209, baseType: !28)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !56, file: !25, line: 216, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!62, !66}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !56, file: !25, line: 217, baseType: !72, size: 64, align: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!62, !66, !35, !28, !28, !27}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !56, file: !25, line: 219, baseType: !72, size: 64, align: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "device_control", scope: !56, file: !25, line: 221, baseType: !77, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!62, !66, !28, !80, !80}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !81, line: 40, baseType: !82)
!81 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !81, line: 25, size: 576, align: 64, elements: !84)
!84 = !{!85, !87, !88, !89, !90, !91, !92, !93, !94}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !83, file: !81, line: 27, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !83, file: !81, line: 28, baseType: !86, size: 64, align: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !83, file: !81, line: 29, baseType: !86, size: 64, align: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !83, file: !81, line: 30, baseType: !29, size: 32, align: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !83, file: !81, line: 33, baseType: !86, size: 64, align: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !83, file: !81, line: 34, baseType: !86, size: 64, align: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !83, file: !81, line: 35, baseType: !86, size: 64, align: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !83, file: !81, line: 36, baseType: !86, size: 64, align: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !83, file: !81, line: 37, baseType: !86, size: 64, align: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !39, file: !40, line: 95, baseType: !38, size: 64, align: 64, offset: 512)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "DISK_DEVICE", file: !25, line: 240, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdpdr_disk_device_info", file: !25, line: 236, size: 32768, align: 8, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !25, line: 238, baseType: !101, size: 32768, align: 8)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 32768, align: 8, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 4096)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "PRINTER", file: !25, line: 285, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdpdr_printer_info", file: !25, line: 277, size: 384, align: 64, elements: !107)
!107 = !{!108, !166, !167, !168, !169, !170}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "printer_fp", scope: !106, file: !25, line: 279, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !111, line: 48, baseType: !112)
!111 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 241, size: 1728, align: 64, elements: !114)
!113 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !135, !136, !137, !138, !141, !142, !144, !148, !151, !153, !154, !155, !156, !157, !161, !162}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !112, file: !113, line: 242, baseType: !34, size: 32, align: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !112, file: !113, line: 247, baseType: !63, size: 64, align: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !112, file: !113, line: 248, baseType: !63, size: 64, align: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !112, file: !113, line: 249, baseType: !63, size: 64, align: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !112, file: !113, line: 250, baseType: !63, size: 64, align: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !112, file: !113, line: 251, baseType: !63, size: 64, align: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !112, file: !113, line: 252, baseType: !63, size: 64, align: 64, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !112, file: !113, line: 253, baseType: !63, size: 64, align: 64, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !112, file: !113, line: 254, baseType: !63, size: 64, align: 64, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !112, file: !113, line: 256, baseType: !63, size: 64, align: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !112, file: !113, line: 257, baseType: !63, size: 64, align: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !112, file: !113, line: 258, baseType: !63, size: 64, align: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !112, file: !113, line: 260, baseType: !128, size: 64, align: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !113, line: 156, size: 192, align: 64, elements: !130)
!130 = !{!131, !132, !134}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !129, file: !113, line: 157, baseType: !128, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !129, file: !113, line: 158, baseType: !133, size: 64, align: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !129, file: !113, line: 162, baseType: !34, size: 32, align: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !112, file: !113, line: 262, baseType: !133, size: 64, align: 64, offset: 832)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !112, file: !113, line: 264, baseType: !34, size: 32, align: 32, offset: 896)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !112, file: !113, line: 268, baseType: !34, size: 32, align: 32, offset: 928)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !112, file: !113, line: 270, baseType: !139, size: 64, align: 64, offset: 960)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !140, line: 131, baseType: !33)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !112, file: !113, line: 274, baseType: !26, size: 16, align: 16, offset: 1024)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !112, file: !113, line: 275, baseType: !143, size: 8, align: 8, offset: 1040)
!143 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !112, file: !113, line: 276, baseType: !145, size: 8, align: 8, offset: 1048)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 8, align: 8, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 1)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !112, file: !113, line: 280, baseType: !149, size: 64, align: 64, offset: 1088)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !113, line: 150, baseType: null)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !112, file: !113, line: 289, baseType: !152, size: 64, align: 64, offset: 1152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !140, line: 132, baseType: !33)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !112, file: !113, line: 297, baseType: !30, size: 64, align: 64, offset: 1216)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !112, file: !113, line: 298, baseType: !30, size: 64, align: 64, offset: 1280)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !112, file: !113, line: 299, baseType: !30, size: 64, align: 64, offset: 1344)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !112, file: !113, line: 300, baseType: !30, size: 64, align: 64, offset: 1408)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !112, file: !113, line: 302, baseType: !158, size: 64, align: 64, offset: 1472)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !159, line: 216, baseType: !160)
!159 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!160 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !112, file: !113, line: 303, baseType: !34, size: 32, align: 32, offset: 1536)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !112, file: !113, line: 305, baseType: !163, size: 160, align: 8, offset: 1568)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 160, align: 8, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 20)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !106, file: !25, line: 280, baseType: !63, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "printer", scope: !106, file: !25, line: 280, baseType: !63, size: 64, align: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "bloblen", scope: !106, file: !25, line: 281, baseType: !28, size: 32, align: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !106, file: !25, line: 282, baseType: !35, size: 64, align: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "default_printer", scope: !106, file: !25, line: 283, baseType: !171, size: 32, align: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !25, line: 28, baseType: !34)
!172 = !{!173, !174, !190, !191, !192, !193, !205, !206}
!173 = distinct !DIGlobalVariable(name: "g_rdpdr_clientname", scope: !0, file: !40, line: 82, type: !63, isLocal: false, isDefinition: true, variable: i8** @g_rdpdr_clientname)
!174 = distinct !DIGlobalVariable(name: "rdpdr_channel", scope: !0, file: !40, line: 71, type: !175, isLocal: true, isDefinition: true, variable: %struct._VCHANNEL** @rdpdr_channel)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "VCHANNEL", file: !25, line: 169, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_VCHANNEL", file: !25, line: 161, size: 768, align: 64, elements: !178)
!178 = !{!179, !180, !184, !185, !186}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_id", scope: !177, file: !25, line: 163, baseType: !24, size: 16, align: 16)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !25, line: 164, baseType: !181, size: 64, align: 8, offset: 16)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, align: 8, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !177, file: !25, line: 165, baseType: !28, size: 32, align: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !177, file: !25, line: 166, baseType: !83, size: 576, align: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !177, file: !25, line: 167, baseType: !187, size: 64, align: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !80}
!190 = distinct !DIGlobalVariable(name: "g_min_timeout_fd", scope: !0, file: !40, line: 75, type: !66, isLocal: false, isDefinition: true, variable: i32* @g_min_timeout_fd)
!191 = distinct !DIGlobalVariable(name: "g_num_devices", scope: !0, file: !40, line: 76, type: !28, isLocal: false, isDefinition: true, variable: i32* @g_num_devices)
!192 = distinct !DIGlobalVariable(name: "g_client_id", scope: !0, file: !40, line: 78, type: !28, isLocal: false, isDefinition: true, variable: i32* @g_client_id)
!193 = distinct !DIGlobalVariable(name: "g_rdpdr_device", scope: !0, file: !40, line: 81, type: !194, isLocal: false, isDefinition: true, variable: [16 x %struct.rdpdr_device_info]* @g_rdpdr_device)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 4096, align: 64, elements: !203)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "RDPDR_DEVICE", file: !25, line: 234, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdpdr_device_info", file: !25, line: 226, size: 256, align: 64, elements: !197)
!197 = !{!198, !199, !200, !201, !202}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !196, file: !25, line: 228, baseType: !28, size: 32, align: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !196, file: !25, line: 229, baseType: !66, size: 32, align: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !25, line: 230, baseType: !181, size: 64, align: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "local_path", scope: !196, file: !25, line: 231, baseType: !63, size: 64, align: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pdevice_data", scope: !196, file: !25, line: 232, baseType: !30, size: 64, align: 64, offset: 192)
!203 = !{!204}
!204 = !DISubrange(count: 16)
!205 = distinct !DIGlobalVariable(name: "g_iorequest", scope: !0, file: !40, line: 98, type: !38, isLocal: false, isDefinition: true, variable: %struct.async_iorequest** @g_iorequest)
!206 = distinct !DIGlobalVariable(name: "g_epoch", scope: !0, file: !40, line: 72, type: !28, isLocal: true, isDefinition: true, variable: i32* @g_epoch)
!207 = !{i32 2, !"Dwarf Version", i32 4}
!208 = !{i32 2, !"Debug Info Version", i32 3}
!209 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!210 = distinct !DISubprogram(name: "get_device_index", scope: !40, file: !40, line: 102, type: !211, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{!34, !66}
!213 = !{}
!214 = !DILocalVariable(name: "handle", arg: 1, scope: !210, file: !40, line: 102, type: !66)
!215 = !DIExpression()
!216 = !DILocation(line: 102, column: 30, scope: !210)
!217 = !DILocalVariable(name: "i", scope: !210, file: !40, line: 104, type: !34)
!218 = !DILocation(line: 104, column: 6, scope: !210)
!219 = !DILocation(line: 105, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !210, file: !40, line: 105, column: 2)
!221 = !DILocation(line: 105, column: 7, scope: !220)
!222 = !DILocation(line: 105, column: 14, scope: !223)
!223 = !DILexicalBlockFile(scope: !224, file: !40, discriminator: 1)
!224 = distinct !DILexicalBlock(scope: !220, file: !40, line: 105, column: 2)
!225 = !DILocation(line: 105, column: 16, scope: !223)
!226 = !DILocation(line: 105, column: 2, scope: !223)
!227 = !DILocation(line: 107, column: 22, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !40, line: 107, column: 7)
!229 = distinct !DILexicalBlock(scope: !224, file: !40, line: 106, column: 2)
!230 = !DILocation(line: 107, column: 7, scope: !228)
!231 = !DILocation(line: 107, column: 25, scope: !228)
!232 = !DILocation(line: 107, column: 35, scope: !228)
!233 = !DILocation(line: 107, column: 32, scope: !228)
!234 = !DILocation(line: 107, column: 7, scope: !229)
!235 = !DILocation(line: 108, column: 11, scope: !228)
!236 = !DILocation(line: 108, column: 4, scope: !228)
!237 = !DILocation(line: 109, column: 2, scope: !229)
!238 = !DILocation(line: 105, column: 25, scope: !239)
!239 = !DILexicalBlockFile(scope: !224, file: !40, discriminator: 2)
!240 = !DILocation(line: 105, column: 2, scope: !239)
!241 = distinct !{!241, !242}
!242 = !DILocation(line: 105, column: 2, scope: !210)
!243 = !DILocation(line: 110, column: 2, scope: !210)
!244 = !DILocation(line: 111, column: 1, scope: !210)
!245 = distinct !DISubprogram(name: "convert_to_unix_filename", scope: !40, file: !40, line: 115, type: !246, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !63}
!248 = !DILocalVariable(name: "filename", arg: 1, scope: !245, file: !40, line: 115, type: !63)
!249 = !DILocation(line: 115, column: 32, scope: !245)
!250 = !DILocalVariable(name: "p", scope: !245, file: !40, line: 117, type: !63)
!251 = !DILocation(line: 117, column: 8, scope: !245)
!252 = !DILocation(line: 119, column: 2, scope: !245)
!253 = !DILocation(line: 119, column: 21, scope: !254)
!254 = !DILexicalBlockFile(scope: !245, file: !40, discriminator: 1)
!255 = !DILocation(line: 119, column: 14, scope: !254)
!256 = !DILocation(line: 119, column: 12, scope: !254)
!257 = !DILocation(line: 119, column: 2, scope: !254)
!258 = !DILocation(line: 121, column: 4, scope: !259)
!259 = distinct !DILexicalBlock(scope: !245, file: !40, line: 120, column: 2)
!260 = !DILocation(line: 121, column: 6, scope: !259)
!261 = !DILocation(line: 119, column: 2, scope: !262)
!262 = !DILexicalBlockFile(scope: !245, file: !40, discriminator: 2)
!263 = distinct !{!263, !252}
!264 = !DILocation(line: 123, column: 1, scope: !245)
!265 = distinct !DISubprogram(name: "rdpdr_send_completion", scope: !40, file: !40, line: 359, type: !266, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !28, !28, !28, !28, !35, !28}
!268 = !DILocalVariable(name: "device", arg: 1, scope: !265, file: !40, line: 359, type: !28)
!269 = !DILocation(line: 359, column: 30, scope: !265)
!270 = !DILocalVariable(name: "id", arg: 2, scope: !265, file: !40, line: 359, type: !28)
!271 = !DILocation(line: 359, column: 45, scope: !265)
!272 = !DILocalVariable(name: "status", arg: 3, scope: !265, file: !40, line: 359, type: !28)
!273 = !DILocation(line: 359, column: 56, scope: !265)
!274 = !DILocalVariable(name: "result", arg: 4, scope: !265, file: !40, line: 359, type: !28)
!275 = !DILocation(line: 359, column: 71, scope: !265)
!276 = !DILocalVariable(name: "buffer", arg: 5, scope: !265, file: !40, line: 359, type: !35)
!277 = !DILocation(line: 359, column: 87, scope: !265)
!278 = !DILocalVariable(name: "length", arg: 6, scope: !265, file: !40, line: 360, type: !28)
!279 = !DILocation(line: 360, column: 16, scope: !265)
!280 = !DILocalVariable(name: "s", scope: !265, file: !40, line: 362, type: !80)
!281 = !DILocation(line: 362, column: 9, scope: !265)
!282 = !DILocation(line: 367, column: 19, scope: !265)
!283 = !DILocation(line: 367, column: 39, scope: !265)
!284 = !DILocation(line: 367, column: 37, scope: !265)
!285 = !DILocation(line: 367, column: 6, scope: !265)
!286 = !DILocation(line: 367, column: 4, scope: !265)
!287 = !DILocation(line: 368, column: 17, scope: !288)
!288 = distinct !DILexicalBlock(scope: !265, file: !40, line: 368, column: 2)
!289 = !DILocation(line: 368, column: 21, scope: !288)
!290 = !DILocation(line: 368, column: 4, scope: !288)
!291 = !DILocation(line: 368, column: 24, scope: !288)
!292 = !DILocation(line: 368, column: 35, scope: !288)
!293 = !DILocation(line: 368, column: 39, scope: !288)
!294 = !DILocation(line: 368, column: 41, scope: !288)
!295 = !DILocation(line: 369, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !265, file: !40, line: 369, column: 2)
!297 = !DILocation(line: 369, column: 21, scope: !296)
!298 = !DILocation(line: 369, column: 4, scope: !296)
!299 = !DILocation(line: 369, column: 24, scope: !296)
!300 = !DILocation(line: 369, column: 35, scope: !296)
!301 = !DILocation(line: 369, column: 39, scope: !296)
!302 = !DILocation(line: 369, column: 41, scope: !296)
!303 = !DILocation(line: 370, column: 26, scope: !304)
!304 = distinct !DILexicalBlock(scope: !265, file: !40, line: 370, column: 2)
!305 = !DILocation(line: 370, column: 17, scope: !304)
!306 = !DILocation(line: 370, column: 21, scope: !304)
!307 = !DILocation(line: 370, column: 4, scope: !304)
!308 = !DILocation(line: 370, column: 24, scope: !304)
!309 = !DILocation(line: 370, column: 35, scope: !304)
!310 = !DILocation(line: 370, column: 39, scope: !304)
!311 = !DILocation(line: 370, column: 41, scope: !304)
!312 = !DILocation(line: 371, column: 26, scope: !313)
!313 = distinct !DILexicalBlock(scope: !265, file: !40, line: 371, column: 2)
!314 = !DILocation(line: 371, column: 17, scope: !313)
!315 = !DILocation(line: 371, column: 21, scope: !313)
!316 = !DILocation(line: 371, column: 4, scope: !313)
!317 = !DILocation(line: 371, column: 24, scope: !313)
!318 = !DILocation(line: 371, column: 31, scope: !313)
!319 = !DILocation(line: 371, column: 35, scope: !313)
!320 = !DILocation(line: 371, column: 37, scope: !313)
!321 = !DILocation(line: 372, column: 26, scope: !322)
!322 = distinct !DILexicalBlock(scope: !265, file: !40, line: 372, column: 2)
!323 = !DILocation(line: 372, column: 17, scope: !322)
!324 = !DILocation(line: 372, column: 21, scope: !322)
!325 = !DILocation(line: 372, column: 4, scope: !322)
!326 = !DILocation(line: 372, column: 24, scope: !322)
!327 = !DILocation(line: 372, column: 35, scope: !322)
!328 = !DILocation(line: 372, column: 39, scope: !322)
!329 = !DILocation(line: 372, column: 41, scope: !322)
!330 = !DILocation(line: 373, column: 26, scope: !331)
!331 = distinct !DILexicalBlock(scope: !265, file: !40, line: 373, column: 2)
!332 = !DILocation(line: 373, column: 17, scope: !331)
!333 = !DILocation(line: 373, column: 21, scope: !331)
!334 = !DILocation(line: 373, column: 4, scope: !331)
!335 = !DILocation(line: 373, column: 24, scope: !331)
!336 = !DILocation(line: 373, column: 35, scope: !331)
!337 = !DILocation(line: 373, column: 39, scope: !331)
!338 = !DILocation(line: 373, column: 41, scope: !331)
!339 = !DILocation(line: 374, column: 12, scope: !340)
!340 = distinct !DILexicalBlock(scope: !265, file: !40, line: 374, column: 2)
!341 = !DILocation(line: 374, column: 16, scope: !340)
!342 = !DILocation(line: 374, column: 18, scope: !340)
!343 = !DILocation(line: 374, column: 25, scope: !340)
!344 = !DILocation(line: 374, column: 4, scope: !340)
!345 = !DILocation(line: 374, column: 44, scope: !340)
!346 = !DILocation(line: 374, column: 35, scope: !340)
!347 = !DILocation(line: 374, column: 39, scope: !340)
!348 = !DILocation(line: 374, column: 41, scope: !340)
!349 = !DILocation(line: 375, column: 14, scope: !265)
!350 = !DILocation(line: 375, column: 18, scope: !265)
!351 = !DILocation(line: 375, column: 3, scope: !265)
!352 = !DILocation(line: 375, column: 7, scope: !265)
!353 = !DILocation(line: 375, column: 11, scope: !265)
!354 = !DILocation(line: 377, column: 2, scope: !265)
!355 = !DILocation(line: 380, column: 15, scope: !265)
!356 = !DILocation(line: 380, column: 18, scope: !265)
!357 = !DILocation(line: 380, column: 2, scope: !265)
!358 = !DILocation(line: 384, column: 1, scope: !265)
!359 = distinct !DISubprogram(name: "rdpdr_init", scope: !40, file: !40, line: 942, type: !360, isLocal: false, isDefinition: true, scopeLine: 943, isOptimized: false, unit: !0, variables: !213)
!360 = !DISubroutineType(types: !361)
!361 = !{!171}
!362 = !DILocation(line: 945, column: 3, scope: !359)
!363 = !DILocation(line: 944, column: 16, scope: !359)
!364 = !DILocation(line: 949, column: 10, scope: !359)
!365 = !DILocation(line: 949, column: 24, scope: !359)
!366 = !DILocation(line: 949, column: 2, scope: !359)
!367 = distinct !DISubprogram(name: "rdpdr_process", scope: !40, file: !40, line: 849, type: !188, isLocal: true, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!368 = !DILocalVariable(name: "s", arg: 1, scope: !367, file: !40, line: 849, type: !80)
!369 = !DILocation(line: 849, column: 22, scope: !367)
!370 = !DILocalVariable(name: "handle", scope: !367, file: !40, line: 851, type: !28)
!371 = !DILocation(line: 851, column: 9, scope: !367)
!372 = !DILocalVariable(name: "vmin", scope: !367, file: !40, line: 852, type: !24)
!373 = !DILocation(line: 852, column: 9, scope: !367)
!374 = !DILocalVariable(name: "component", scope: !367, file: !40, line: 853, type: !24)
!375 = !DILocation(line: 853, column: 9, scope: !367)
!376 = !DILocalVariable(name: "pakid", scope: !367, file: !40, line: 854, type: !24)
!377 = !DILocation(line: 854, column: 9, scope: !367)
!378 = !DILocation(line: 856, column: 2, scope: !367)
!379 = !DILocation(line: 859, column: 29, scope: !380)
!380 = distinct !DILexicalBlock(scope: !367, file: !40, line: 859, column: 2)
!381 = !DILocation(line: 859, column: 33, scope: !380)
!382 = !DILocation(line: 859, column: 16, scope: !380)
!383 = !DILocation(line: 859, column: 14, scope: !380)
!384 = !DILocation(line: 859, column: 38, scope: !380)
!385 = !DILocation(line: 859, column: 42, scope: !380)
!386 = !DILocation(line: 859, column: 44, scope: !380)
!387 = !DILocation(line: 860, column: 25, scope: !388)
!388 = distinct !DILexicalBlock(scope: !367, file: !40, line: 860, column: 2)
!389 = !DILocation(line: 860, column: 29, scope: !388)
!390 = !DILocation(line: 860, column: 12, scope: !388)
!391 = !DILocation(line: 860, column: 10, scope: !388)
!392 = !DILocation(line: 860, column: 34, scope: !388)
!393 = !DILocation(line: 860, column: 38, scope: !388)
!394 = !DILocation(line: 860, column: 40, scope: !388)
!395 = !DILocation(line: 862, column: 6, scope: !396)
!396 = distinct !DILexicalBlock(scope: !367, file: !40, line: 862, column: 6)
!397 = !DILocation(line: 862, column: 16, scope: !396)
!398 = !DILocation(line: 862, column: 6, scope: !367)
!399 = !DILocation(line: 864, column: 11, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !40, line: 863, column: 2)
!401 = !DILocation(line: 864, column: 3, scope: !400)
!402 = !DILocation(line: 867, column: 23, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !40, line: 865, column: 3)
!404 = !DILocation(line: 867, column: 5, scope: !403)
!405 = !DILocation(line: 868, column: 5, scope: !403)
!406 = !DILocation(line: 872, column: 6, scope: !403)
!407 = !DILocation(line: 872, column: 10, scope: !403)
!408 = !DILocation(line: 872, column: 12, scope: !403)
!409 = !DILocation(line: 873, column: 27, scope: !410)
!410 = distinct !DILexicalBlock(scope: !403, file: !40, line: 873, column: 5)
!411 = !DILocation(line: 873, column: 31, scope: !410)
!412 = !DILocation(line: 873, column: 14, scope: !410)
!413 = !DILocation(line: 873, column: 12, scope: !410)
!414 = !DILocation(line: 873, column: 36, scope: !410)
!415 = !DILocation(line: 873, column: 40, scope: !410)
!416 = !DILocation(line: 873, column: 42, scope: !410)
!417 = !DILocation(line: 874, column: 34, scope: !418)
!418 = distinct !DILexicalBlock(scope: !403, file: !40, line: 874, column: 5)
!419 = !DILocation(line: 874, column: 38, scope: !418)
!420 = !DILocation(line: 874, column: 21, scope: !418)
!421 = !DILocation(line: 874, column: 19, scope: !418)
!422 = !DILocation(line: 874, column: 43, scope: !418)
!423 = !DILocation(line: 874, column: 47, scope: !418)
!424 = !DILocation(line: 874, column: 49, scope: !418)
!425 = !DILocation(line: 878, column: 9, scope: !426)
!426 = distinct !DILexicalBlock(scope: !403, file: !40, line: 878, column: 9)
!427 = !DILocation(line: 878, column: 14, scope: !426)
!428 = !DILocation(line: 878, column: 9, scope: !403)
!429 = !DILocation(line: 879, column: 18, scope: !426)
!430 = !DILocation(line: 879, column: 6, scope: !426)
!431 = !DILocation(line: 880, column: 12, scope: !403)
!432 = !DILocation(line: 906, column: 5, scope: !403)
!433 = !DILocation(line: 907, column: 5, scope: !403)
!434 = !DILocation(line: 908, column: 5, scope: !403)
!435 = !DILocation(line: 911, column: 5, scope: !403)
!436 = !DILocation(line: 912, column: 5, scope: !403)
!437 = !DILocation(line: 915, column: 29, scope: !438)
!438 = distinct !DILexicalBlock(scope: !403, file: !40, line: 915, column: 5)
!439 = !DILocation(line: 915, column: 33, scope: !438)
!440 = !DILocation(line: 915, column: 16, scope: !438)
!441 = !DILocation(line: 915, column: 14, scope: !438)
!442 = !DILocation(line: 915, column: 38, scope: !438)
!443 = !DILocation(line: 915, column: 42, scope: !438)
!444 = !DILocation(line: 915, column: 44, scope: !438)
!445 = !DILocation(line: 917, column: 64, scope: !403)
!446 = !DILocation(line: 916, column: 5, scope: !403)
!447 = !DILocation(line: 918, column: 5, scope: !403)
!448 = !DILocation(line: 921, column: 5, scope: !403)
!449 = !DILocation(line: 922, column: 5, scope: !403)
!450 = !DILocation(line: 926, column: 61, scope: !403)
!451 = !DILocation(line: 927, column: 12, scope: !403)
!452 = !DILocation(line: 925, column: 5, scope: !403)
!453 = !DILocation(line: 928, column: 5, scope: !403)
!454 = !DILocation(line: 931, column: 2, scope: !400)
!455 = !DILocation(line: 932, column: 11, scope: !456)
!456 = distinct !DILexicalBlock(scope: !396, file: !40, line: 932, column: 11)
!457 = !DILocation(line: 932, column: 21, scope: !456)
!458 = !DILocation(line: 932, column: 11, scope: !396)
!459 = !DILocation(line: 934, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !40, line: 934, column: 7)
!461 = distinct !DILexicalBlock(scope: !456, file: !40, line: 933, column: 2)
!462 = !DILocation(line: 934, column: 13, scope: !460)
!463 = !DILocation(line: 934, column: 7, scope: !461)
!464 = !DILocation(line: 935, column: 25, scope: !460)
!465 = !DILocation(line: 935, column: 4, scope: !460)
!466 = !DILocation(line: 936, column: 2, scope: !461)
!467 = !DILocation(line: 938, column: 74, scope: !456)
!468 = !DILocation(line: 938, column: 3, scope: !456)
!469 = !DILocation(line: 939, column: 1, scope: !367)
!470 = distinct !DISubprogram(name: "rdpdr_add_fds", scope: !40, file: !40, line: 954, type: !471, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !473, !474, !474, !480, !488}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !32, line: 75, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 64, size: 1024, align: 64, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !476, file: !32, line: 72, baseType: !479, size: 1024, align: 64)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1024, align: 64, elements: !203)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !482, line: 30, size: 128, align: 64, elements: !483)
!482 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!483 = !{!484, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !481, file: !482, line: 32, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !140, line: 139, baseType: !33)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !481, file: !482, line: 33, baseType: !487, size: 64, align: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !140, line: 141, baseType: !33)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!489 = !DILocalVariable(name: "n", arg: 1, scope: !470, file: !40, line: 954, type: !473)
!490 = !DILocation(line: 954, column: 20, scope: !470)
!491 = !DILocalVariable(name: "rfds", arg: 2, scope: !470, file: !40, line: 954, type: !474)
!492 = !DILocation(line: 954, column: 32, scope: !470)
!493 = !DILocalVariable(name: "wfds", arg: 3, scope: !470, file: !40, line: 954, type: !474)
!494 = !DILocation(line: 954, column: 47, scope: !470)
!495 = !DILocalVariable(name: "tv", arg: 4, scope: !470, file: !40, line: 954, type: !480)
!496 = !DILocation(line: 954, column: 69, scope: !470)
!497 = !DILocalVariable(name: "timeout", arg: 5, scope: !470, file: !40, line: 954, type: !488)
!498 = !DILocation(line: 954, column: 83, scope: !470)
!499 = !DILocalVariable(name: "select_timeout", scope: !470, file: !40, line: 956, type: !28)
!500 = !DILocation(line: 956, column: 9, scope: !470)
!501 = !DILocalVariable(name: "iorq", scope: !470, file: !40, line: 957, type: !38)
!502 = !DILocation(line: 957, column: 26, scope: !470)
!503 = !DILocalVariable(name: "c", scope: !470, file: !40, line: 958, type: !64)
!504 = !DILocation(line: 958, column: 7, scope: !470)
!505 = !DILocation(line: 960, column: 9, scope: !470)
!506 = !DILocation(line: 960, column: 7, scope: !470)
!507 = !DILocation(line: 961, column: 2, scope: !470)
!508 = !DILocation(line: 961, column: 9, scope: !509)
!509 = !DILexicalBlockFile(scope: !470, file: !40, discriminator: 1)
!510 = !DILocation(line: 961, column: 14, scope: !509)
!511 = !DILocation(line: 961, column: 2, scope: !509)
!512 = !DILocation(line: 963, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !40, line: 963, column: 7)
!514 = distinct !DILexicalBlock(scope: !470, file: !40, line: 962, column: 2)
!515 = !DILocation(line: 963, column: 13, scope: !513)
!516 = !DILocation(line: 963, column: 16, scope: !513)
!517 = !DILocation(line: 963, column: 7, scope: !514)
!518 = !DILocation(line: 965, column: 12, scope: !519)
!519 = distinct !DILexicalBlock(scope: !513, file: !40, line: 964, column: 3)
!520 = !DILocation(line: 965, column: 18, scope: !519)
!521 = !DILocation(line: 965, column: 4, scope: !519)
!522 = !DILocation(line: 973, column: 5, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !40, line: 966, column: 4)
!524 = !DILocation(line: 973, column: 11, scope: !523)
!525 = !DILocation(line: 973, column: 7, scope: !523)
!526 = !DILocation(line: 973, column: 63, scope: !523)
!527 = !DILocation(line: 973, column: 14, scope: !523)
!528 = !DILocation(line: 973, column: 8, scope: !523)
!529 = !DILocation(line: 973, column: 42, scope: !523)
!530 = !DILocation(line: 974, column: 15, scope: !523)
!531 = !DILocation(line: 974, column: 14, scope: !523)
!532 = !DILocation(line: 974, column: 26, scope: !523)
!533 = !DILocation(line: 974, column: 32, scope: !523)
!534 = !DILocation(line: 974, column: 18, scope: !523)
!535 = !DILocation(line: 974, column: 12, scope: !523)
!536 = !DILocation(line: 974, column: 41, scope: !537)
!537 = !DILexicalBlockFile(scope: !523, file: !40, discriminator: 1)
!538 = !DILocation(line: 974, column: 40, scope: !537)
!539 = !DILocation(line: 974, column: 12, scope: !537)
!540 = !DILocation(line: 974, column: 52, scope: !541)
!541 = !DILexicalBlockFile(scope: !523, file: !40, discriminator: 2)
!542 = !DILocation(line: 974, column: 58, scope: !541)
!543 = !DILocation(line: 974, column: 12, scope: !541)
!544 = !DILocation(line: 974, column: 12, scope: !545)
!545 = !DILexicalBlockFile(scope: !523, file: !40, discriminator: 3)
!546 = !DILocation(line: 974, column: 7, scope: !545)
!547 = !DILocation(line: 974, column: 9, scope: !545)
!548 = !DILocation(line: 977, column: 10, scope: !549)
!549 = distinct !DILexicalBlock(scope: !523, file: !40, line: 977, column: 10)
!550 = !DILocation(line: 977, column: 16, scope: !549)
!551 = !DILocation(line: 978, column: 10, scope: !549)
!552 = !DILocation(line: 978, column: 14, scope: !553)
!553 = !DILexicalBlockFile(scope: !549, file: !40, discriminator: 1)
!554 = !DILocation(line: 978, column: 29, scope: !553)
!555 = !DILocation(line: 979, column: 7, scope: !549)
!556 = !DILocation(line: 979, column: 10, scope: !553)
!557 = !DILocation(line: 979, column: 16, scope: !553)
!558 = !DILocation(line: 979, column: 26, scope: !553)
!559 = !DILocation(line: 979, column: 24, scope: !553)
!560 = !DILocation(line: 977, column: 10, scope: !537)
!561 = !DILocation(line: 982, column: 24, scope: !562)
!562 = distinct !DILexicalBlock(scope: !549, file: !40, line: 980, column: 6)
!563 = !DILocation(line: 982, column: 30, scope: !562)
!564 = !DILocation(line: 982, column: 22, scope: !562)
!565 = !DILocation(line: 983, column: 26, scope: !562)
!566 = !DILocation(line: 983, column: 32, scope: !562)
!567 = !DILocation(line: 983, column: 24, scope: !562)
!568 = !DILocation(line: 984, column: 20, scope: !562)
!569 = !DILocation(line: 984, column: 35, scope: !562)
!570 = !DILocation(line: 984, column: 7, scope: !562)
!571 = !DILocation(line: 984, column: 11, scope: !562)
!572 = !DILocation(line: 984, column: 18, scope: !562)
!573 = !DILocation(line: 985, column: 22, scope: !562)
!574 = !DILocation(line: 985, column: 37, scope: !562)
!575 = !DILocation(line: 985, column: 45, scope: !562)
!576 = !DILocation(line: 985, column: 21, scope: !562)
!577 = !DILocation(line: 985, column: 7, scope: !562)
!578 = !DILocation(line: 985, column: 11, scope: !562)
!579 = !DILocation(line: 985, column: 19, scope: !562)
!580 = !DILocation(line: 986, column: 8, scope: !562)
!581 = !DILocation(line: 986, column: 16, scope: !562)
!582 = !DILocation(line: 987, column: 7, scope: !562)
!583 = !DILocation(line: 989, column: 10, scope: !584)
!584 = distinct !DILexicalBlock(scope: !523, file: !40, line: 989, column: 10)
!585 = !DILocation(line: 989, column: 16, scope: !584)
!586 = !DILocation(line: 989, column: 28, scope: !584)
!587 = !DILocation(line: 989, column: 31, scope: !588)
!588 = !DILexicalBlockFile(scope: !584, file: !40, discriminator: 1)
!589 = !DILocation(line: 989, column: 37, scope: !588)
!590 = !DILocation(line: 989, column: 49, scope: !588)
!591 = !DILocation(line: 990, column: 10, scope: !584)
!592 = !DILocation(line: 990, column: 14, scope: !588)
!593 = !DILocation(line: 990, column: 29, scope: !588)
!594 = !DILocation(line: 991, column: 7, scope: !584)
!595 = !DILocation(line: 991, column: 10, scope: !588)
!596 = !DILocation(line: 991, column: 16, scope: !588)
!597 = !DILocation(line: 991, column: 30, scope: !588)
!598 = !DILocation(line: 991, column: 28, scope: !588)
!599 = !DILocation(line: 989, column: 10, scope: !541)
!600 = !DILocation(line: 994, column: 24, scope: !601)
!601 = distinct !DILexicalBlock(scope: !584, file: !40, line: 992, column: 6)
!602 = !DILocation(line: 994, column: 30, scope: !601)
!603 = !DILocation(line: 994, column: 22, scope: !601)
!604 = !DILocation(line: 995, column: 26, scope: !601)
!605 = !DILocation(line: 995, column: 32, scope: !601)
!606 = !DILocation(line: 995, column: 24, scope: !601)
!607 = !DILocation(line: 996, column: 20, scope: !601)
!608 = !DILocation(line: 996, column: 35, scope: !601)
!609 = !DILocation(line: 996, column: 7, scope: !601)
!610 = !DILocation(line: 996, column: 11, scope: !601)
!611 = !DILocation(line: 996, column: 18, scope: !601)
!612 = !DILocation(line: 997, column: 22, scope: !601)
!613 = !DILocation(line: 997, column: 37, scope: !601)
!614 = !DILocation(line: 997, column: 45, scope: !601)
!615 = !DILocation(line: 997, column: 21, scope: !601)
!616 = !DILocation(line: 997, column: 7, scope: !601)
!617 = !DILocation(line: 997, column: 11, scope: !601)
!618 = !DILocation(line: 997, column: 19, scope: !601)
!619 = !DILocation(line: 998, column: 8, scope: !601)
!620 = !DILocation(line: 998, column: 16, scope: !601)
!621 = !DILocation(line: 999, column: 7, scope: !601)
!622 = !DILocation(line: 1001, column: 6, scope: !523)
!623 = !DILocation(line: 1005, column: 17, scope: !624)
!624 = distinct !DILexicalBlock(scope: !523, file: !40, line: 1005, column: 10)
!625 = !DILocation(line: 1005, column: 23, scope: !624)
!626 = !DILocation(line: 1005, column: 11, scope: !624)
!627 = !DILocation(line: 1005, column: 34, scope: !624)
!628 = !DILocation(line: 1005, column: 40, scope: !624)
!629 = !DILocation(line: 1005, column: 45, scope: !630)
!630 = !DILexicalBlockFile(scope: !624, file: !40, discriminator: 1)
!631 = !DILocation(line: 1005, column: 44, scope: !630)
!632 = !DILocation(line: 1005, column: 49, scope: !630)
!633 = !DILocation(line: 1005, column: 10, scope: !630)
!634 = !DILocation(line: 1006, column: 7, scope: !624)
!635 = !DILocation(line: 1008, column: 5, scope: !523)
!636 = !DILocation(line: 1008, column: 11, scope: !523)
!637 = !DILocation(line: 1008, column: 7, scope: !523)
!638 = !DILocation(line: 1008, column: 63, scope: !523)
!639 = !DILocation(line: 1008, column: 14, scope: !523)
!640 = !DILocation(line: 1008, column: 8, scope: !523)
!641 = !DILocation(line: 1008, column: 42, scope: !523)
!642 = !DILocation(line: 1009, column: 15, scope: !523)
!643 = !DILocation(line: 1009, column: 14, scope: !523)
!644 = !DILocation(line: 1009, column: 26, scope: !523)
!645 = !DILocation(line: 1009, column: 32, scope: !523)
!646 = !DILocation(line: 1009, column: 18, scope: !523)
!647 = !DILocation(line: 1009, column: 12, scope: !523)
!648 = !DILocation(line: 1009, column: 41, scope: !537)
!649 = !DILocation(line: 1009, column: 40, scope: !537)
!650 = !DILocation(line: 1009, column: 12, scope: !537)
!651 = !DILocation(line: 1009, column: 52, scope: !541)
!652 = !DILocation(line: 1009, column: 58, scope: !541)
!653 = !DILocation(line: 1009, column: 12, scope: !541)
!654 = !DILocation(line: 1009, column: 12, scope: !545)
!655 = !DILocation(line: 1009, column: 7, scope: !545)
!656 = !DILocation(line: 1009, column: 9, scope: !545)
!657 = !DILocation(line: 1010, column: 6, scope: !523)
!658 = !DILocation(line: 1013, column: 10, scope: !659)
!659 = distinct !DILexicalBlock(scope: !523, file: !40, line: 1013, column: 10)
!660 = !DILocation(line: 1013, column: 25, scope: !659)
!661 = !DILocation(line: 1013, column: 10, scope: !523)
!662 = !DILocation(line: 1014, column: 22, scope: !659)
!663 = !DILocation(line: 1014, column: 7, scope: !659)
!664 = !DILocation(line: 1015, column: 6, scope: !523)
!665 = !DILocation(line: 1019, column: 3, scope: !519)
!666 = !DILocation(line: 1021, column: 10, scope: !514)
!667 = !DILocation(line: 1021, column: 16, scope: !514)
!668 = !DILocation(line: 1021, column: 8, scope: !514)
!669 = !DILocation(line: 961, column: 2, scope: !670)
!670 = !DILexicalBlockFile(scope: !470, file: !40, discriminator: 2)
!671 = distinct !{!671, !507}
!672 = !DILocation(line: 1023, column: 1, scope: !470)
!673 = distinct !DISubprogram(name: "rdpdr_remove_iorequest", scope: !40, file: !40, line: 1026, type: !674, isLocal: false, isDefinition: true, scopeLine: 1027, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!674 = !DISubroutineType(types: !675)
!675 = !{!38, !38, !38}
!676 = !DILocalVariable(name: "prev", arg: 1, scope: !673, file: !40, line: 1026, type: !38)
!677 = !DILocation(line: 1026, column: 48, scope: !673)
!678 = !DILocalVariable(name: "iorq", arg: 2, scope: !673, file: !40, line: 1026, type: !38)
!679 = !DILocation(line: 1026, column: 78, scope: !673)
!680 = !DILocation(line: 1028, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !673, file: !40, line: 1028, column: 6)
!682 = !DILocation(line: 1028, column: 6, scope: !673)
!683 = !DILocation(line: 1029, column: 3, scope: !681)
!684 = !DILocation(line: 1031, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !673, file: !40, line: 1031, column: 6)
!686 = !DILocation(line: 1031, column: 12, scope: !685)
!687 = !DILocation(line: 1031, column: 6, scope: !673)
!688 = !DILocation(line: 1032, column: 9, scope: !685)
!689 = !DILocation(line: 1032, column: 15, scope: !685)
!690 = !DILocation(line: 1032, column: 3, scope: !685)
!691 = !DILocation(line: 1033, column: 6, scope: !692)
!692 = distinct !DILexicalBlock(scope: !673, file: !40, line: 1033, column: 6)
!693 = !DILocation(line: 1033, column: 6, scope: !673)
!694 = !DILocation(line: 1035, column: 16, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !40, line: 1034, column: 2)
!696 = !DILocation(line: 1035, column: 22, scope: !695)
!697 = !DILocation(line: 1035, column: 3, scope: !695)
!698 = !DILocation(line: 1035, column: 9, scope: !695)
!699 = !DILocation(line: 1035, column: 14, scope: !695)
!700 = !DILocation(line: 1036, column: 9, scope: !695)
!701 = !DILocation(line: 1036, column: 3, scope: !695)
!702 = !DILocation(line: 1037, column: 10, scope: !695)
!703 = !DILocation(line: 1037, column: 16, scope: !695)
!704 = !DILocation(line: 1037, column: 8, scope: !695)
!705 = !DILocation(line: 1038, column: 2, scope: !695)
!706 = !DILocation(line: 1042, column: 17, scope: !707)
!707 = distinct !DILexicalBlock(scope: !692, file: !40, line: 1040, column: 2)
!708 = !DILocation(line: 1042, column: 23, scope: !707)
!709 = !DILocation(line: 1042, column: 15, scope: !707)
!710 = !DILocation(line: 1043, column: 9, scope: !707)
!711 = !DILocation(line: 1043, column: 3, scope: !707)
!712 = !DILocation(line: 1044, column: 8, scope: !707)
!713 = !DILocation(line: 1046, column: 9, scope: !673)
!714 = !DILocation(line: 1046, column: 2, scope: !673)
!715 = !DILocation(line: 1047, column: 1, scope: !673)
!716 = distinct !DISubprogram(name: "rdpdr_check_fds", scope: !40, file: !40, line: 1274, type: !717, isLocal: false, isDefinition: true, scopeLine: 1275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !474, !474, !171}
!719 = !DILocalVariable(name: "rfds", arg: 1, scope: !716, file: !40, line: 1274, type: !474)
!720 = !DILocation(line: 1274, column: 26, scope: !716)
!721 = !DILocalVariable(name: "wfds", arg: 2, scope: !716, file: !40, line: 1274, type: !474)
!722 = !DILocation(line: 1274, column: 41, scope: !716)
!723 = !DILocalVariable(name: "timed_out", arg: 3, scope: !716, file: !40, line: 1274, type: !171)
!724 = !DILocation(line: 1274, column: 55, scope: !716)
!725 = !DILocalVariable(name: "dummy", scope: !716, file: !40, line: 1276, type: !475)
!726 = !DILocation(line: 1276, column: 9, scope: !716)
!727 = !DILocation(line: 1279, column: 1, scope: !716)
!728 = distinct !{!728, !727}
!729 = !DILocalVariable(name: "__d0", scope: !730, file: !40, line: 1279, type: !34)
!730 = distinct !DILexicalBlock(scope: !716, file: !40, line: 1279, column: 4)
!731 = !DILocation(line: 1279, column: 10, scope: !730)
!732 = !DILocalVariable(name: "__d1", scope: !730, file: !40, line: 1279, type: !34)
!733 = !DILocation(line: 1279, column: 16, scope: !730)
!734 = !DILocation(line: 1279, column: 4, scope: !735)
!735 = !DILexicalBlockFile(scope: !730, file: !40, discriminator: 1)
!736 = !DILocation(line: 1279, column: 153, scope: !735)
!737 = !DILocation(line: 1279, column: 22, scope: !735)
!738 = !{i32 137036}
!739 = !DILocation(line: 1279, column: 33, scope: !735)
!740 = !DILocation(line: 1286, column: 2, scope: !716)
!741 = !DILocation(line: 1287, column: 19, scope: !716)
!742 = !DILocation(line: 1287, column: 25, scope: !716)
!743 = !DILocation(line: 1287, column: 31, scope: !716)
!744 = !DILocation(line: 1287, column: 2, scope: !716)
!745 = !DILocation(line: 1288, column: 1, scope: !716)
!746 = distinct !DISubprogram(name: "_rdpdr_check_fds", scope: !40, file: !40, line: 1051, type: !717, isLocal: true, isDefinition: true, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!747 = !DILocalVariable(name: "rfds", arg: 1, scope: !746, file: !40, line: 1051, type: !474)
!748 = !DILocation(line: 1051, column: 27, scope: !746)
!749 = !DILocalVariable(name: "wfds", arg: 2, scope: !746, file: !40, line: 1051, type: !474)
!750 = !DILocation(line: 1051, column: 42, scope: !746)
!751 = !DILocalVariable(name: "timed_out", arg: 3, scope: !746, file: !40, line: 1051, type: !171)
!752 = !DILocation(line: 1051, column: 56, scope: !746)
!753 = !DILocalVariable(name: "status", scope: !746, file: !40, line: 1053, type: !62)
!754 = !DILocation(line: 1053, column: 14, scope: !746)
!755 = !DILocalVariable(name: "result", scope: !746, file: !40, line: 1054, type: !28)
!756 = !DILocation(line: 1054, column: 9, scope: !746)
!757 = !DILocalVariable(name: "fns", scope: !746, file: !40, line: 1055, type: !54)
!758 = !DILocation(line: 1055, column: 14, scope: !746)
!759 = !DILocalVariable(name: "iorq", scope: !746, file: !40, line: 1056, type: !38)
!760 = !DILocation(line: 1056, column: 26, scope: !746)
!761 = !DILocalVariable(name: "prev", scope: !746, file: !40, line: 1057, type: !38)
!762 = !DILocation(line: 1057, column: 26, scope: !746)
!763 = !DILocalVariable(name: "req_size", scope: !746, file: !40, line: 1058, type: !28)
!764 = !DILocation(line: 1058, column: 9, scope: !746)
!765 = !DILocalVariable(name: "buffer_len", scope: !746, file: !40, line: 1059, type: !28)
!766 = !DILocation(line: 1059, column: 9, scope: !746)
!767 = !DILocalVariable(name: "out", scope: !746, file: !40, line: 1060, type: !83)
!768 = !DILocation(line: 1060, column: 16, scope: !746)
!769 = !DILocalVariable(name: "buffer", scope: !746, file: !40, line: 1061, type: !35)
!770 = !DILocation(line: 1061, column: 9, scope: !746)
!771 = !DILocation(line: 1064, column: 6, scope: !772)
!772 = distinct !DILexicalBlock(scope: !746, file: !40, line: 1064, column: 6)
!773 = !DILocation(line: 1064, column: 6, scope: !746)
!774 = !DILocation(line: 1068, column: 10, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !40, line: 1065, column: 2)
!776 = !DILocation(line: 1068, column: 8, scope: !775)
!777 = !DILocation(line: 1069, column: 8, scope: !775)
!778 = !DILocation(line: 1070, column: 3, scope: !775)
!779 = !DILocation(line: 1070, column: 10, scope: !780)
!780 = !DILexicalBlockFile(scope: !775, file: !40, discriminator: 1)
!781 = !DILocation(line: 1070, column: 15, scope: !780)
!782 = !DILocation(line: 1070, column: 3, scope: !780)
!783 = !DILocation(line: 1072, column: 8, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !40, line: 1072, column: 8)
!785 = distinct !DILexicalBlock(scope: !775, file: !40, line: 1071, column: 3)
!786 = !DILocation(line: 1072, column: 14, scope: !784)
!787 = !DILocation(line: 1072, column: 20, scope: !784)
!788 = !DILocation(line: 1072, column: 17, scope: !784)
!789 = !DILocation(line: 1072, column: 8, scope: !785)
!790 = !DILocation(line: 1074, column: 10, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !40, line: 1074, column: 9)
!792 = distinct !DILexicalBlock(scope: !784, file: !40, line: 1073, column: 4)
!793 = !DILocation(line: 1074, column: 16, scope: !791)
!794 = !DILocation(line: 1074, column: 28, scope: !791)
!795 = !DILocation(line: 1074, column: 33, scope: !791)
!796 = !DILocation(line: 1075, column: 25, scope: !791)
!797 = !DILocation(line: 1075, column: 31, scope: !791)
!798 = !DILocation(line: 1075, column: 10, scope: !791)
!799 = !DILocation(line: 1075, column: 39, scope: !791)
!800 = !DILocation(line: 1075, column: 51, scope: !791)
!801 = !DILocation(line: 1074, column: 9, scope: !802)
!802 = !DILexicalBlockFile(scope: !792, file: !40, discriminator: 1)
!803 = !DILocation(line: 1081, column: 28, scope: !804)
!804 = distinct !DILexicalBlock(scope: !791, file: !40, line: 1077, column: 5)
!805 = !DILocation(line: 1081, column: 34, scope: !804)
!806 = !DILocation(line: 1082, column: 14, scope: !804)
!807 = !DILocation(line: 1082, column: 20, scope: !804)
!808 = !DILocation(line: 1083, column: 14, scope: !804)
!809 = !DILocation(line: 1083, column: 20, scope: !804)
!810 = !DILocation(line: 1084, column: 14, scope: !804)
!811 = !DILocation(line: 1084, column: 20, scope: !804)
!812 = !DILocation(line: 1084, column: 28, scope: !804)
!813 = !DILocation(line: 1084, column: 34, scope: !804)
!814 = !DILocation(line: 1081, column: 6, scope: !804)
!815 = !DILocation(line: 1085, column: 36, scope: !804)
!816 = !DILocation(line: 1085, column: 42, scope: !804)
!817 = !DILocation(line: 1085, column: 13, scope: !804)
!818 = !DILocation(line: 1085, column: 11, scope: !804)
!819 = !DILocation(line: 1086, column: 6, scope: !804)
!820 = !DILocation(line: 1090, column: 6, scope: !821)
!821 = distinct !DILexicalBlock(scope: !791, file: !40, line: 1089, column: 5)
!822 = !DILocation(line: 1096, column: 5, scope: !823)
!823 = distinct !DILexicalBlock(scope: !784, file: !40, line: 1095, column: 4)
!824 = !DILocation(line: 1106, column: 18, scope: !775)
!825 = !DILocation(line: 1106, column: 3, scope: !775)
!826 = !DILocation(line: 1107, column: 3, scope: !775)
!827 = !DILocation(line: 1110, column: 9, scope: !746)
!828 = !DILocation(line: 1110, column: 7, scope: !746)
!829 = !DILocation(line: 1111, column: 7, scope: !746)
!830 = !DILocation(line: 1112, column: 2, scope: !746)
!831 = !DILocation(line: 1112, column: 9, scope: !832)
!832 = !DILexicalBlockFile(scope: !746, file: !40, discriminator: 1)
!833 = !DILocation(line: 1112, column: 14, scope: !832)
!834 = !DILocation(line: 1112, column: 2, scope: !832)
!835 = !DILocation(line: 1114, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !40, line: 1114, column: 7)
!837 = distinct !DILexicalBlock(scope: !746, file: !40, line: 1113, column: 2)
!838 = !DILocation(line: 1114, column: 13, scope: !836)
!839 = !DILocation(line: 1114, column: 16, scope: !836)
!840 = !DILocation(line: 1114, column: 7, scope: !837)
!841 = !DILocation(line: 1116, column: 12, scope: !842)
!842 = distinct !DILexicalBlock(scope: !836, file: !40, line: 1115, column: 3)
!843 = !DILocation(line: 1116, column: 18, scope: !842)
!844 = !DILocation(line: 1116, column: 4, scope: !842)
!845 = !DILocation(line: 1119, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !40, line: 1119, column: 9)
!847 = distinct !DILexicalBlock(scope: !842, file: !40, line: 1117, column: 4)
!848 = !DILocation(line: 1119, column: 15, scope: !846)
!849 = !DILocation(line: 1119, column: 11, scope: !846)
!850 = !DILocation(line: 1119, column: 12, scope: !846)
!851 = !DILocation(line: 1119, column: 66, scope: !846)
!852 = !DILocation(line: 1119, column: 46, scope: !846)
!853 = !DILocation(line: 1119, column: 48, scope: !846)
!854 = !DILocation(line: 1119, column: 9, scope: !847)
!855 = !DILocation(line: 1122, column: 13, scope: !856)
!856 = distinct !DILexicalBlock(scope: !846, file: !40, line: 1120, column: 6)
!857 = !DILocation(line: 1122, column: 19, scope: !856)
!858 = !DILocation(line: 1122, column: 11, scope: !856)
!859 = !DILocation(line: 1125, column: 9, scope: !856)
!860 = !DILocation(line: 1125, column: 15, scope: !856)
!861 = !DILocation(line: 1125, column: 24, scope: !856)
!862 = !DILocation(line: 1125, column: 30, scope: !856)
!863 = !DILocation(line: 1125, column: 22, scope: !856)
!864 = !DILocation(line: 1125, column: 43, scope: !856)
!865 = !DILocation(line: 1125, column: 8, scope: !856)
!866 = !DILocation(line: 1125, column: 8, scope: !867)
!867 = !DILexicalBlockFile(scope: !856, file: !40, discriminator: 1)
!868 = !DILocation(line: 1126, column: 23, scope: !856)
!869 = !DILocation(line: 1126, column: 29, scope: !856)
!870 = !DILocation(line: 1127, column: 16, scope: !856)
!871 = !DILocation(line: 1127, column: 22, scope: !856)
!872 = !DILocation(line: 1126, column: 36, scope: !856)
!873 = !DILocation(line: 1125, column: 8, scope: !874)
!874 = !DILexicalBlockFile(scope: !856, file: !40, discriminator: 2)
!875 = !DILocation(line: 1125, column: 8, scope: !876)
!876 = !DILexicalBlockFile(scope: !856, file: !40, discriminator: 3)
!877 = !DILocation(line: 1124, column: 16, scope: !856)
!878 = !DILocation(line: 1129, column: 16, scope: !856)
!879 = !DILocation(line: 1129, column: 21, scope: !856)
!880 = !DILocation(line: 1129, column: 26, scope: !856)
!881 = !DILocation(line: 1129, column: 32, scope: !856)
!882 = !DILocation(line: 1130, column: 12, scope: !856)
!883 = !DILocation(line: 1130, column: 18, scope: !856)
!884 = !DILocation(line: 1130, column: 27, scope: !856)
!885 = !DILocation(line: 1130, column: 33, scope: !856)
!886 = !DILocation(line: 1130, column: 25, scope: !856)
!887 = !DILocation(line: 1131, column: 12, scope: !856)
!888 = !DILocation(line: 1131, column: 22, scope: !856)
!889 = !DILocation(line: 1131, column: 28, scope: !856)
!890 = !DILocation(line: 1129, column: 14, scope: !856)
!891 = !DILocation(line: 1133, column: 18, scope: !892)
!892 = distinct !DILexicalBlock(scope: !856, file: !40, line: 1133, column: 11)
!893 = !DILocation(line: 1133, column: 11, scope: !892)
!894 = !DILocation(line: 1133, column: 25, scope: !892)
!895 = !DILocation(line: 1133, column: 11, scope: !856)
!896 = !DILocation(line: 1135, column: 29, scope: !897)
!897 = distinct !DILexicalBlock(scope: !892, file: !40, line: 1134, column: 7)
!898 = !DILocation(line: 1135, column: 8, scope: !897)
!899 = !DILocation(line: 1135, column: 14, scope: !897)
!900 = !DILocation(line: 1135, column: 26, scope: !897)
!901 = !DILocation(line: 1136, column: 24, scope: !897)
!902 = !DILocation(line: 1136, column: 8, scope: !897)
!903 = !DILocation(line: 1136, column: 14, scope: !897)
!904 = !DILocation(line: 1136, column: 21, scope: !897)
!905 = !DILocation(line: 1137, column: 7, scope: !897)
!906 = !DILocation(line: 1141, column: 14, scope: !856)
!907 = !DILocation(line: 1139, column: 7, scope: !856)
!908 = !DILocation(line: 1145, column: 12, scope: !909)
!909 = distinct !DILexicalBlock(scope: !856, file: !40, line: 1145, column: 11)
!910 = !DILocation(line: 1145, column: 18, scope: !909)
!911 = !DILocation(line: 1145, column: 33, scope: !909)
!912 = !DILocation(line: 1145, column: 39, scope: !909)
!913 = !DILocation(line: 1145, column: 30, scope: !909)
!914 = !DILocation(line: 1145, column: 47, scope: !909)
!915 = !DILocation(line: 1146, column: 12, scope: !909)
!916 = !DILocation(line: 1146, column: 19, scope: !909)
!917 = !DILocation(line: 1145, column: 11, scope: !867)
!918 = !DILocation(line: 1150, column: 15, scope: !919)
!919 = distinct !DILexicalBlock(scope: !909, file: !40, line: 1147, column: 7)
!920 = !DILocation(line: 1150, column: 21, scope: !919)
!921 = !DILocation(line: 1150, column: 34, scope: !919)
!922 = !DILocation(line: 1150, column: 40, scope: !919)
!923 = !DILocation(line: 1148, column: 8, scope: !919)
!924 = !DILocation(line: 1151, column: 30, scope: !919)
!925 = !DILocation(line: 1151, column: 36, scope: !919)
!926 = !DILocation(line: 1152, column: 16, scope: !919)
!927 = !DILocation(line: 1152, column: 22, scope: !919)
!928 = !DILocation(line: 1152, column: 26, scope: !919)
!929 = !DILocation(line: 1153, column: 16, scope: !919)
!930 = !DILocation(line: 1153, column: 22, scope: !919)
!931 = !DILocation(line: 1154, column: 16, scope: !919)
!932 = !DILocation(line: 1154, column: 22, scope: !919)
!933 = !DILocation(line: 1155, column: 16, scope: !919)
!934 = !DILocation(line: 1155, column: 22, scope: !919)
!935 = !DILocation(line: 1151, column: 8, scope: !919)
!936 = !DILocation(line: 1156, column: 38, scope: !919)
!937 = !DILocation(line: 1156, column: 44, scope: !919)
!938 = !DILocation(line: 1156, column: 15, scope: !919)
!939 = !DILocation(line: 1156, column: 13, scope: !919)
!940 = !DILocation(line: 1157, column: 7, scope: !919)
!941 = !DILocation(line: 1158, column: 6, scope: !856)
!942 = !DILocation(line: 1159, column: 6, scope: !847)
!943 = !DILocation(line: 1161, column: 9, scope: !944)
!944 = distinct !DILexicalBlock(scope: !847, file: !40, line: 1161, column: 9)
!945 = !DILocation(line: 1161, column: 15, scope: !944)
!946 = !DILocation(line: 1161, column: 11, scope: !944)
!947 = !DILocation(line: 1161, column: 12, scope: !944)
!948 = !DILocation(line: 1161, column: 66, scope: !944)
!949 = !DILocation(line: 1161, column: 46, scope: !944)
!950 = !DILocation(line: 1161, column: 48, scope: !944)
!951 = !DILocation(line: 1161, column: 9, scope: !847)
!952 = !DILocation(line: 1164, column: 13, scope: !953)
!953 = distinct !DILexicalBlock(scope: !944, file: !40, line: 1162, column: 6)
!954 = !DILocation(line: 1164, column: 19, scope: !953)
!955 = !DILocation(line: 1164, column: 11, scope: !953)
!956 = !DILocation(line: 1167, column: 9, scope: !953)
!957 = !DILocation(line: 1167, column: 15, scope: !953)
!958 = !DILocation(line: 1167, column: 24, scope: !953)
!959 = !DILocation(line: 1167, column: 30, scope: !953)
!960 = !DILocation(line: 1167, column: 22, scope: !953)
!961 = !DILocation(line: 1167, column: 43, scope: !953)
!962 = !DILocation(line: 1167, column: 8, scope: !953)
!963 = !DILocation(line: 1167, column: 8, scope: !964)
!964 = !DILexicalBlockFile(scope: !953, file: !40, discriminator: 1)
!965 = !DILocation(line: 1168, column: 23, scope: !953)
!966 = !DILocation(line: 1168, column: 29, scope: !953)
!967 = !DILocation(line: 1169, column: 16, scope: !953)
!968 = !DILocation(line: 1169, column: 22, scope: !953)
!969 = !DILocation(line: 1168, column: 36, scope: !953)
!970 = !DILocation(line: 1167, column: 8, scope: !971)
!971 = !DILexicalBlockFile(scope: !953, file: !40, discriminator: 2)
!972 = !DILocation(line: 1167, column: 8, scope: !973)
!973 = !DILexicalBlockFile(scope: !953, file: !40, discriminator: 3)
!974 = !DILocation(line: 1166, column: 16, scope: !953)
!975 = !DILocation(line: 1172, column: 16, scope: !953)
!976 = !DILocation(line: 1172, column: 21, scope: !953)
!977 = !DILocation(line: 1172, column: 27, scope: !953)
!978 = !DILocation(line: 1172, column: 33, scope: !953)
!979 = !DILocation(line: 1173, column: 13, scope: !953)
!980 = !DILocation(line: 1173, column: 19, scope: !953)
!981 = !DILocation(line: 1174, column: 13, scope: !953)
!982 = !DILocation(line: 1174, column: 19, scope: !953)
!983 = !DILocation(line: 1173, column: 26, scope: !953)
!984 = !DILocation(line: 1174, column: 32, scope: !953)
!985 = !DILocation(line: 1175, column: 13, scope: !953)
!986 = !DILocation(line: 1175, column: 19, scope: !953)
!987 = !DILocation(line: 1172, column: 14, scope: !953)
!988 = !DILocation(line: 1177, column: 18, scope: !989)
!989 = distinct !DILexicalBlock(scope: !953, file: !40, line: 1177, column: 11)
!990 = !DILocation(line: 1177, column: 11, scope: !989)
!991 = !DILocation(line: 1177, column: 25, scope: !989)
!992 = !DILocation(line: 1177, column: 11, scope: !953)
!993 = !DILocation(line: 1179, column: 29, scope: !994)
!994 = distinct !DILexicalBlock(scope: !989, file: !40, line: 1178, column: 7)
!995 = !DILocation(line: 1179, column: 8, scope: !994)
!996 = !DILocation(line: 1179, column: 14, scope: !994)
!997 = !DILocation(line: 1179, column: 26, scope: !994)
!998 = !DILocation(line: 1180, column: 24, scope: !994)
!999 = !DILocation(line: 1180, column: 8, scope: !994)
!1000 = !DILocation(line: 1180, column: 14, scope: !994)
!1001 = !DILocation(line: 1180, column: 21, scope: !994)
!1002 = !DILocation(line: 1181, column: 7, scope: !994)
!1003 = !DILocation(line: 1185, column: 14, scope: !953)
!1004 = !DILocation(line: 1183, column: 7, scope: !953)
!1005 = !DILocation(line: 1189, column: 12, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !953, file: !40, line: 1189, column: 11)
!1007 = !DILocation(line: 1189, column: 18, scope: !1006)
!1008 = !DILocation(line: 1189, column: 33, scope: !1006)
!1009 = !DILocation(line: 1189, column: 39, scope: !1006)
!1010 = !DILocation(line: 1189, column: 30, scope: !1006)
!1011 = !DILocation(line: 1190, column: 11, scope: !1006)
!1012 = !DILocation(line: 1190, column: 15, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1006, file: !40, discriminator: 1)
!1014 = !DILocation(line: 1190, column: 22, scope: !1013)
!1015 = !DILocation(line: 1189, column: 11, scope: !964)
!1016 = !DILocation(line: 1194, column: 15, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1006, file: !40, line: 1191, column: 7)
!1018 = !DILocation(line: 1194, column: 21, scope: !1017)
!1019 = !DILocation(line: 1194, column: 34, scope: !1017)
!1020 = !DILocation(line: 1194, column: 40, scope: !1017)
!1021 = !DILocation(line: 1192, column: 8, scope: !1017)
!1022 = !DILocation(line: 1195, column: 30, scope: !1017)
!1023 = !DILocation(line: 1195, column: 36, scope: !1017)
!1024 = !DILocation(line: 1196, column: 16, scope: !1017)
!1025 = !DILocation(line: 1196, column: 22, scope: !1017)
!1026 = !DILocation(line: 1196, column: 26, scope: !1017)
!1027 = !DILocation(line: 1197, column: 16, scope: !1017)
!1028 = !DILocation(line: 1197, column: 22, scope: !1017)
!1029 = !DILocation(line: 1195, column: 8, scope: !1017)
!1030 = !DILocation(line: 1200, column: 38, scope: !1017)
!1031 = !DILocation(line: 1200, column: 44, scope: !1017)
!1032 = !DILocation(line: 1200, column: 15, scope: !1017)
!1033 = !DILocation(line: 1200, column: 13, scope: !1017)
!1034 = !DILocation(line: 1201, column: 7, scope: !1017)
!1035 = !DILocation(line: 1202, column: 6, scope: !953)
!1036 = !DILocation(line: 1203, column: 6, scope: !847)
!1037 = !DILocation(line: 1205, column: 27, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !847, file: !40, line: 1205, column: 10)
!1039 = !DILocation(line: 1205, column: 33, scope: !1038)
!1040 = !DILocation(line: 1205, column: 10, scope: !1038)
!1041 = !DILocation(line: 1205, column: 10, scope: !847)
!1042 = !DILocation(line: 1207, column: 44, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !40, line: 1206, column: 6)
!1044 = !DILocation(line: 1207, column: 26, scope: !1043)
!1045 = !DILocation(line: 1207, column: 14, scope: !1043)
!1046 = !DILocation(line: 1208, column: 26, scope: !1043)
!1047 = !DILocation(line: 1208, column: 22, scope: !1043)
!1048 = !DILocation(line: 1208, column: 24, scope: !1043)
!1049 = !DILocation(line: 1208, column: 11, scope: !1043)
!1050 = !DILocation(line: 1208, column: 16, scope: !1043)
!1051 = !DILocation(line: 1209, column: 11, scope: !1043)
!1052 = !DILocation(line: 1209, column: 16, scope: !1043)
!1053 = !DILocation(line: 1210, column: 34, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1043, file: !40, line: 1210, column: 7)
!1055 = !DILocation(line: 1210, column: 29, scope: !1054)
!1056 = !DILocation(line: 1210, column: 9, scope: !1054)
!1057 = !DILocation(line: 1210, column: 32, scope: !1054)
!1058 = !DILocation(line: 1210, column: 50, scope: !1054)
!1059 = !DILocation(line: 1210, column: 52, scope: !1054)
!1060 = !DILocation(line: 1211, column: 33, scope: !1043)
!1061 = !DILocation(line: 1211, column: 41, scope: !1043)
!1062 = !DILocation(line: 1211, column: 35, scope: !1043)
!1063 = !DILocation(line: 1211, column: 29, scope: !1043)
!1064 = !DILocation(line: 1211, column: 27, scope: !1043)
!1065 = !DILocation(line: 1211, column: 14, scope: !1043)
!1066 = !DILocation(line: 1212, column: 14, scope: !1043)
!1067 = !DILocation(line: 1213, column: 29, scope: !1043)
!1068 = !DILocation(line: 1213, column: 35, scope: !1043)
!1069 = !DILocation(line: 1213, column: 43, scope: !1043)
!1070 = !DILocation(line: 1213, column: 49, scope: !1043)
!1071 = !DILocation(line: 1214, column: 15, scope: !1043)
!1072 = !DILocation(line: 1214, column: 23, scope: !1043)
!1073 = !DILocation(line: 1214, column: 31, scope: !1043)
!1074 = !DILocation(line: 1215, column: 15, scope: !1043)
!1075 = !DILocation(line: 1213, column: 7, scope: !1043)
!1076 = !DILocation(line: 1216, column: 13, scope: !1043)
!1077 = !DILocation(line: 1216, column: 7, scope: !1043)
!1078 = !DILocation(line: 1217, column: 37, scope: !1043)
!1079 = !DILocation(line: 1217, column: 43, scope: !1043)
!1080 = !DILocation(line: 1217, column: 14, scope: !1043)
!1081 = !DILocation(line: 1217, column: 12, scope: !1043)
!1082 = !DILocation(line: 1218, column: 6, scope: !1043)
!1083 = !DILocation(line: 1220, column: 6, scope: !847)
!1084 = !DILocation(line: 1223, column: 3, scope: !842)
!1085 = !DILocation(line: 1224, column: 10, scope: !837)
!1086 = !DILocation(line: 1224, column: 8, scope: !837)
!1087 = !DILocation(line: 1225, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !837, file: !40, line: 1225, column: 7)
!1089 = !DILocation(line: 1225, column: 7, scope: !837)
!1090 = !DILocation(line: 1226, column: 11, scope: !1088)
!1091 = !DILocation(line: 1226, column: 17, scope: !1088)
!1092 = !DILocation(line: 1226, column: 9, scope: !1088)
!1093 = !DILocation(line: 1226, column: 4, scope: !1088)
!1094 = !DILocation(line: 1112, column: 2, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !746, file: !40, discriminator: 2)
!1096 = distinct !{!1096, !830}
!1097 = !DILocation(line: 1230, column: 9, scope: !746)
!1098 = !DILocation(line: 1230, column: 7, scope: !746)
!1099 = !DILocation(line: 1231, column: 7, scope: !746)
!1100 = !DILocation(line: 1232, column: 2, scope: !746)
!1101 = !DILocation(line: 1232, column: 9, scope: !832)
!1102 = !DILocation(line: 1232, column: 14, scope: !832)
!1103 = !DILocation(line: 1232, column: 2, scope: !832)
!1104 = !DILocation(line: 1234, column: 7, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !40, line: 1234, column: 7)
!1106 = distinct !DILexicalBlock(scope: !746, file: !40, line: 1233, column: 2)
!1107 = !DILocation(line: 1234, column: 13, scope: !1105)
!1108 = !DILocation(line: 1234, column: 16, scope: !1105)
!1109 = !DILocation(line: 1234, column: 7, scope: !1106)
!1110 = !DILocation(line: 1236, column: 12, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1105, file: !40, line: 1235, column: 3)
!1112 = !DILocation(line: 1236, column: 18, scope: !1111)
!1113 = !DILocation(line: 1236, column: 4, scope: !1111)
!1114 = !DILocation(line: 1240, column: 25, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !40, line: 1240, column: 10)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !40, line: 1237, column: 4)
!1117 = !DILocation(line: 1240, column: 31, scope: !1115)
!1118 = !DILocation(line: 1240, column: 10, scope: !1115)
!1119 = !DILocation(line: 1240, column: 39, scope: !1115)
!1120 = !DILocation(line: 1240, column: 51, scope: !1115)
!1121 = !DILocation(line: 1240, column: 10, scope: !1116)
!1122 = !DILocation(line: 1244, column: 11, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !40, line: 1244, column: 11)
!1124 = distinct !DILexicalBlock(scope: !1115, file: !40, line: 1242, column: 6)
!1125 = !DILocation(line: 1244, column: 11, scope: !1124)
!1126 = !DILocation(line: 1246, column: 23, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !40, line: 1245, column: 7)
!1128 = !DILocation(line: 1247, column: 35, scope: !1127)
!1129 = !DILocation(line: 1247, column: 41, scope: !1127)
!1130 = !DILocation(line: 1247, column: 17, scope: !1127)
!1131 = !DILocation(line: 1247, column: 15, scope: !1127)
!1132 = !DILocation(line: 1248, column: 12, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1127, file: !40, line: 1248, column: 12)
!1134 = !DILocation(line: 1248, column: 19, scope: !1133)
!1135 = !DILocation(line: 1248, column: 12, scope: !1127)
!1136 = !DILocation(line: 1250, column: 31, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !40, line: 1249, column: 8)
!1138 = !DILocation(line: 1250, column: 37, scope: !1137)
!1139 = !DILocation(line: 1251, column: 17, scope: !1137)
!1140 = !DILocation(line: 1251, column: 23, scope: !1137)
!1141 = !DILocation(line: 1252, column: 17, scope: !1137)
!1142 = !DILocation(line: 1250, column: 9, scope: !1137)
!1143 = !DILocation(line: 1254, column: 39, scope: !1137)
!1144 = !DILocation(line: 1255, column: 18, scope: !1137)
!1145 = !DILocation(line: 1254, column: 16, scope: !1137)
!1146 = !DILocation(line: 1254, column: 14, scope: !1137)
!1147 = !DILocation(line: 1256, column: 8, scope: !1137)
!1148 = !DILocation(line: 1257, column: 7, scope: !1127)
!1149 = !DILocation(line: 1258, column: 6, scope: !1124)
!1150 = !DILocation(line: 1259, column: 6, scope: !1116)
!1151 = !DILocation(line: 1264, column: 3, scope: !1111)
!1152 = !DILocation(line: 1266, column: 10, scope: !1106)
!1153 = !DILocation(line: 1266, column: 8, scope: !1106)
!1154 = !DILocation(line: 1267, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1106, file: !40, line: 1267, column: 7)
!1156 = !DILocation(line: 1267, column: 7, scope: !1106)
!1157 = !DILocation(line: 1268, column: 11, scope: !1155)
!1158 = !DILocation(line: 1268, column: 17, scope: !1155)
!1159 = !DILocation(line: 1268, column: 9, scope: !1155)
!1160 = !DILocation(line: 1268, column: 4, scope: !1155)
!1161 = !DILocation(line: 1232, column: 2, scope: !1095)
!1162 = distinct !{!1162, !1100}
!1163 = !DILocation(line: 1271, column: 1, scope: !746)
!1164 = distinct !DISubprogram(name: "rdpdr_abort_io", scope: !40, file: !40, line: 1293, type: !1165, isLocal: false, isDefinition: true, scopeLine: 1294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!171, !28, !28, !62}
!1167 = !DILocalVariable(name: "fd", arg: 1, scope: !1164, file: !40, line: 1293, type: !28)
!1168 = !DILocation(line: 1293, column: 23, scope: !1164)
!1169 = !DILocalVariable(name: "major", arg: 2, scope: !1164, file: !40, line: 1293, type: !28)
!1170 = !DILocation(line: 1293, column: 34, scope: !1164)
!1171 = !DILocalVariable(name: "status", arg: 3, scope: !1164, file: !40, line: 1293, type: !62)
!1172 = !DILocation(line: 1293, column: 53, scope: !1164)
!1173 = !DILocalVariable(name: "result", scope: !1164, file: !40, line: 1295, type: !28)
!1174 = !DILocation(line: 1295, column: 9, scope: !1164)
!1175 = !DILocalVariable(name: "iorq", scope: !1164, file: !40, line: 1296, type: !38)
!1176 = !DILocation(line: 1296, column: 26, scope: !1164)
!1177 = !DILocalVariable(name: "prev", scope: !1164, file: !40, line: 1297, type: !38)
!1178 = !DILocation(line: 1297, column: 26, scope: !1164)
!1179 = !DILocation(line: 1299, column: 9, scope: !1164)
!1180 = !DILocation(line: 1299, column: 7, scope: !1164)
!1181 = !DILocation(line: 1300, column: 7, scope: !1164)
!1182 = !DILocation(line: 1301, column: 2, scope: !1164)
!1183 = !DILocation(line: 1301, column: 9, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1164, file: !40, discriminator: 1)
!1185 = !DILocation(line: 1301, column: 14, scope: !1184)
!1186 = !DILocation(line: 1301, column: 2, scope: !1184)
!1187 = !DILocation(line: 1305, column: 8, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !40, line: 1305, column: 7)
!1189 = distinct !DILexicalBlock(scope: !1164, file: !40, line: 1302, column: 2)
!1190 = !DILocation(line: 1305, column: 14, scope: !1188)
!1191 = !DILocation(line: 1305, column: 20, scope: !1188)
!1192 = !DILocation(line: 1305, column: 17, scope: !1188)
!1193 = !DILocation(line: 1305, column: 24, scope: !1188)
!1194 = !DILocation(line: 1305, column: 28, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1188, file: !40, discriminator: 1)
!1196 = !DILocation(line: 1305, column: 34, scope: !1195)
!1197 = !DILocation(line: 1305, column: 39, scope: !1195)
!1198 = !DILocation(line: 1305, column: 42, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1188, file: !40, discriminator: 2)
!1200 = !DILocation(line: 1305, column: 48, scope: !1199)
!1201 = !DILocation(line: 1305, column: 57, scope: !1199)
!1202 = !DILocation(line: 1305, column: 54, scope: !1199)
!1203 = !DILocation(line: 1305, column: 7, scope: !1199)
!1204 = !DILocation(line: 1307, column: 11, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1188, file: !40, line: 1306, column: 3)
!1206 = !DILocation(line: 1308, column: 26, scope: !1205)
!1207 = !DILocation(line: 1308, column: 32, scope: !1205)
!1208 = !DILocation(line: 1308, column: 40, scope: !1205)
!1209 = !DILocation(line: 1308, column: 46, scope: !1205)
!1210 = !DILocation(line: 1308, column: 50, scope: !1205)
!1211 = !DILocation(line: 1308, column: 58, scope: !1205)
!1212 = !DILocation(line: 1308, column: 4, scope: !1205)
!1213 = !DILocation(line: 1311, column: 34, scope: !1205)
!1214 = !DILocation(line: 1311, column: 40, scope: !1205)
!1215 = !DILocation(line: 1311, column: 11, scope: !1205)
!1216 = !DILocation(line: 1311, column: 9, scope: !1205)
!1217 = !DILocation(line: 1312, column: 4, scope: !1205)
!1218 = !DILocation(line: 1315, column: 10, scope: !1189)
!1219 = !DILocation(line: 1315, column: 8, scope: !1189)
!1220 = !DILocation(line: 1316, column: 10, scope: !1189)
!1221 = !DILocation(line: 1316, column: 16, scope: !1189)
!1222 = !DILocation(line: 1316, column: 8, scope: !1189)
!1223 = !DILocation(line: 1301, column: 2, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1164, file: !40, discriminator: 2)
!1225 = distinct !{!1225, !1182}
!1226 = !DILocation(line: 1319, column: 2, scope: !1164)
!1227 = !DILocation(line: 1320, column: 1, scope: !1164)
!1228 = distinct !DISubprogram(name: "rdpdr_process_irp", scope: !40, file: !40, line: 387, type: !188, isLocal: true, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!1229 = !DILocalVariable(name: "s", arg: 1, scope: !1228, file: !40, line: 387, type: !80)
!1230 = !DILocation(line: 387, column: 26, scope: !1228)
!1231 = !DILocalVariable(name: "result", scope: !1228, file: !40, line: 389, type: !28)
!1232 = !DILocation(line: 389, column: 9, scope: !1228)
!1233 = !DILocalVariable(name: "length", scope: !1228, file: !40, line: 390, type: !28)
!1234 = !DILocation(line: 390, column: 3, scope: !1228)
!1235 = !DILocalVariable(name: "desired_access", scope: !1228, file: !40, line: 391, type: !28)
!1236 = !DILocation(line: 391, column: 3, scope: !1228)
!1237 = !DILocalVariable(name: "request", scope: !1228, file: !40, line: 392, type: !28)
!1238 = !DILocation(line: 392, column: 3, scope: !1228)
!1239 = !DILocalVariable(name: "file", scope: !1228, file: !40, line: 393, type: !28)
!1240 = !DILocation(line: 393, column: 3, scope: !1228)
!1241 = !DILocalVariable(name: "info_level", scope: !1228, file: !40, line: 394, type: !28)
!1242 = !DILocation(line: 394, column: 3, scope: !1228)
!1243 = !DILocalVariable(name: "buffer_len", scope: !1228, file: !40, line: 395, type: !28)
!1244 = !DILocation(line: 395, column: 3, scope: !1228)
!1245 = !DILocalVariable(name: "id", scope: !1228, file: !40, line: 396, type: !28)
!1246 = !DILocation(line: 396, column: 3, scope: !1228)
!1247 = !DILocalVariable(name: "major", scope: !1228, file: !40, line: 397, type: !28)
!1248 = !DILocation(line: 397, column: 3, scope: !1228)
!1249 = !DILocalVariable(name: "minor", scope: !1228, file: !40, line: 398, type: !28)
!1250 = !DILocation(line: 398, column: 3, scope: !1228)
!1251 = !DILocalVariable(name: "device", scope: !1228, file: !40, line: 399, type: !28)
!1252 = !DILocation(line: 399, column: 3, scope: !1228)
!1253 = !DILocalVariable(name: "offset", scope: !1228, file: !40, line: 400, type: !28)
!1254 = !DILocation(line: 400, column: 3, scope: !1228)
!1255 = !DILocalVariable(name: "bytes_out", scope: !1228, file: !40, line: 401, type: !28)
!1256 = !DILocation(line: 401, column: 3, scope: !1228)
!1257 = !DILocalVariable(name: "share_mode", scope: !1228, file: !40, line: 402, type: !28)
!1258 = !DILocation(line: 402, column: 3, scope: !1228)
!1259 = !DILocalVariable(name: "disposition", scope: !1228, file: !40, line: 402, type: !28)
!1260 = !DILocation(line: 402, column: 15, scope: !1228)
!1261 = !DILocalVariable(name: "total_timeout", scope: !1228, file: !40, line: 402, type: !28)
!1262 = !DILocation(line: 402, column: 28, scope: !1228)
!1263 = !DILocalVariable(name: "interval_timeout", scope: !1228, file: !40, line: 402, type: !28)
!1264 = !DILocation(line: 402, column: 43, scope: !1228)
!1265 = !DILocalVariable(name: "flags_and_attributes", scope: !1228, file: !40, line: 402, type: !28)
!1266 = !DILocation(line: 402, column: 61, scope: !1228)
!1267 = !DILocalVariable(name: "filename", scope: !1228, file: !40, line: 404, type: !63)
!1268 = !DILocation(line: 404, column: 8, scope: !1228)
!1269 = !DILocalVariable(name: "filename_len", scope: !1228, file: !40, line: 405, type: !28)
!1270 = !DILocation(line: 405, column: 9, scope: !1228)
!1271 = !DILocalVariable(name: "buffer", scope: !1228, file: !40, line: 407, type: !35)
!1272 = !DILocation(line: 407, column: 9, scope: !1228)
!1273 = !DILocalVariable(name: "pst_buf", scope: !1228, file: !40, line: 407, type: !35)
!1274 = !DILocation(line: 407, column: 18, scope: !1228)
!1275 = !DILocalVariable(name: "out", scope: !1228, file: !40, line: 408, type: !83)
!1276 = !DILocation(line: 408, column: 16, scope: !1228)
!1277 = !DILocalVariable(name: "fns", scope: !1228, file: !40, line: 409, type: !54)
!1278 = !DILocation(line: 409, column: 14, scope: !1228)
!1279 = !DILocalVariable(name: "rw_blocking", scope: !1228, file: !40, line: 410, type: !171)
!1280 = !DILocation(line: 410, column: 10, scope: !1228)
!1281 = !DILocalVariable(name: "status", scope: !1228, file: !40, line: 411, type: !62)
!1282 = !DILocation(line: 411, column: 14, scope: !1228)
!1283 = !DILocation(line: 413, column: 26, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1228, file: !40, line: 413, column: 2)
!1285 = !DILocation(line: 413, column: 30, scope: !1284)
!1286 = !DILocation(line: 413, column: 13, scope: !1284)
!1287 = !DILocation(line: 413, column: 11, scope: !1284)
!1288 = !DILocation(line: 413, column: 35, scope: !1284)
!1289 = !DILocation(line: 413, column: 39, scope: !1284)
!1290 = !DILocation(line: 413, column: 41, scope: !1284)
!1291 = !DILocation(line: 414, column: 24, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1228, file: !40, line: 414, column: 2)
!1293 = !DILocation(line: 414, column: 28, scope: !1292)
!1294 = !DILocation(line: 414, column: 11, scope: !1292)
!1295 = !DILocation(line: 414, column: 9, scope: !1292)
!1296 = !DILocation(line: 414, column: 33, scope: !1292)
!1297 = !DILocation(line: 414, column: 37, scope: !1292)
!1298 = !DILocation(line: 414, column: 39, scope: !1292)
!1299 = !DILocation(line: 415, column: 22, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1228, file: !40, line: 415, column: 2)
!1301 = !DILocation(line: 415, column: 26, scope: !1300)
!1302 = !DILocation(line: 415, column: 9, scope: !1300)
!1303 = !DILocation(line: 415, column: 7, scope: !1300)
!1304 = !DILocation(line: 415, column: 31, scope: !1300)
!1305 = !DILocation(line: 415, column: 35, scope: !1300)
!1306 = !DILocation(line: 415, column: 37, scope: !1300)
!1307 = !DILocation(line: 416, column: 25, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1228, file: !40, line: 416, column: 2)
!1309 = !DILocation(line: 416, column: 29, scope: !1308)
!1310 = !DILocation(line: 416, column: 12, scope: !1308)
!1311 = !DILocation(line: 416, column: 10, scope: !1308)
!1312 = !DILocation(line: 416, column: 34, scope: !1308)
!1313 = !DILocation(line: 416, column: 38, scope: !1308)
!1314 = !DILocation(line: 416, column: 40, scope: !1308)
!1315 = !DILocation(line: 417, column: 25, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1228, file: !40, line: 417, column: 2)
!1317 = !DILocation(line: 417, column: 29, scope: !1316)
!1318 = !DILocation(line: 417, column: 12, scope: !1316)
!1319 = !DILocation(line: 417, column: 10, scope: !1316)
!1320 = !DILocation(line: 417, column: 34, scope: !1316)
!1321 = !DILocation(line: 417, column: 38, scope: !1316)
!1322 = !DILocation(line: 417, column: 40, scope: !1316)
!1323 = !DILocation(line: 419, column: 11, scope: !1228)
!1324 = !DILocation(line: 421, column: 13, scope: !1228)
!1325 = !DILocation(line: 422, column: 21, scope: !1228)
!1326 = !DILocation(line: 422, column: 9, scope: !1228)
!1327 = !DILocation(line: 423, column: 2, scope: !1228)
!1328 = !DILocation(line: 423, column: 12, scope: !1228)
!1329 = !DILocation(line: 425, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1228, file: !40, line: 425, column: 6)
!1331 = !DILocation(line: 425, column: 13, scope: !1330)
!1332 = !DILocation(line: 425, column: 6, scope: !1228)
!1333 = !DILocation(line: 429, column: 10, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !40, line: 426, column: 2)
!1335 = !DILocation(line: 429, column: 18, scope: !1334)
!1336 = !DILocation(line: 429, column: 24, scope: !1334)
!1337 = !DILocation(line: 429, column: 28, scope: !1334)
!1338 = !DILocation(line: 429, column: 35, scope: !1334)
!1339 = !DILocation(line: 427, column: 3, scope: !1334)
!1340 = !DILocation(line: 430, column: 9, scope: !1334)
!1341 = !DILocation(line: 430, column: 3, scope: !1334)
!1342 = !DILocation(line: 431, column: 3, scope: !1334)
!1343 = !DILocation(line: 434, column: 25, scope: !1228)
!1344 = !DILocation(line: 434, column: 10, scope: !1228)
!1345 = !DILocation(line: 434, column: 33, scope: !1228)
!1346 = !DILocation(line: 434, column: 2, scope: !1228)
!1347 = !DILocation(line: 438, column: 8, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1228, file: !40, line: 435, column: 2)
!1349 = !DILocation(line: 439, column: 16, scope: !1348)
!1350 = !DILocation(line: 440, column: 4, scope: !1348)
!1351 = !DILocation(line: 444, column: 8, scope: !1348)
!1352 = !DILocation(line: 445, column: 16, scope: !1348)
!1353 = !DILocation(line: 446, column: 4, scope: !1348)
!1354 = !DILocation(line: 450, column: 8, scope: !1348)
!1355 = !DILocation(line: 451, column: 4, scope: !1348)
!1356 = !DILocation(line: 455, column: 8, scope: !1348)
!1357 = !DILocation(line: 456, column: 16, scope: !1348)
!1358 = !DILocation(line: 457, column: 4, scope: !1348)
!1359 = !DILocation(line: 457, column: 4, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1348, file: !40, discriminator: 1)
!1361 = !DILocation(line: 468, column: 11, scope: !1348)
!1362 = !DILocation(line: 466, column: 4, scope: !1348)
!1363 = !DILocation(line: 469, column: 10, scope: !1348)
!1364 = !DILocation(line: 469, column: 4, scope: !1348)
!1365 = !DILocation(line: 470, column: 4, scope: !1348)
!1366 = !DILocation(line: 473, column: 10, scope: !1228)
!1367 = !DILocation(line: 473, column: 2, scope: !1228)
!1368 = !DILocation(line: 477, column: 28, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !40, line: 477, column: 6)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 477, column: 4)
!1371 = distinct !DILexicalBlock(scope: !1228, file: !40, line: 474, column: 2)
!1372 = !DILocation(line: 477, column: 32, scope: !1369)
!1373 = !DILocation(line: 477, column: 33, scope: !1369)
!1374 = !DILocation(line: 477, column: 25, scope: !1369)
!1375 = !DILocation(line: 477, column: 23, scope: !1369)
!1376 = !DILocation(line: 477, column: 57, scope: !1369)
!1377 = !DILocation(line: 477, column: 73, scope: !1369)
!1378 = !DILocation(line: 477, column: 84, scope: !1369)
!1379 = !DILocation(line: 477, column: 88, scope: !1369)
!1380 = !DILocation(line: 477, column: 89, scope: !1369)
!1381 = !DILocation(line: 477, column: 81, scope: !1369)
!1382 = !DILocation(line: 477, column: 79, scope: !1369)
!1383 = !DILocation(line: 477, column: 53, scope: !1369)
!1384 = !DILocation(line: 477, column: 117, scope: !1370)
!1385 = !DILocation(line: 477, column: 133, scope: !1370)
!1386 = !DILocation(line: 477, column: 144, scope: !1370)
!1387 = !DILocation(line: 477, column: 148, scope: !1370)
!1388 = !DILocation(line: 477, column: 149, scope: !1370)
!1389 = !DILocation(line: 477, column: 141, scope: !1370)
!1390 = !DILocation(line: 477, column: 139, scope: !1370)
!1391 = !DILocation(line: 477, column: 113, scope: !1370)
!1392 = !DILocation(line: 477, column: 174, scope: !1370)
!1393 = !DILocation(line: 477, column: 190, scope: !1370)
!1394 = !DILocation(line: 477, column: 201, scope: !1370)
!1395 = !DILocation(line: 477, column: 205, scope: !1370)
!1396 = !DILocation(line: 477, column: 206, scope: !1370)
!1397 = !DILocation(line: 477, column: 198, scope: !1370)
!1398 = !DILocation(line: 477, column: 196, scope: !1370)
!1399 = !DILocation(line: 477, column: 170, scope: !1370)
!1400 = !DILocation(line: 478, column: 5, scope: !1371)
!1401 = !DILocation(line: 478, column: 9, scope: !1371)
!1402 = !DILocation(line: 478, column: 11, scope: !1371)
!1403 = !DILocation(line: 479, column: 5, scope: !1371)
!1404 = !DILocation(line: 479, column: 9, scope: !1371)
!1405 = !DILocation(line: 479, column: 11, scope: !1371)
!1406 = !DILocation(line: 480, column: 32, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 480, column: 4)
!1408 = !DILocation(line: 480, column: 36, scope: !1407)
!1409 = !DILocation(line: 480, column: 19, scope: !1407)
!1410 = !DILocation(line: 480, column: 17, scope: !1407)
!1411 = !DILocation(line: 480, column: 41, scope: !1407)
!1412 = !DILocation(line: 480, column: 45, scope: !1407)
!1413 = !DILocation(line: 480, column: 47, scope: !1407)
!1414 = !DILocation(line: 481, column: 33, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 481, column: 4)
!1416 = !DILocation(line: 481, column: 37, scope: !1415)
!1417 = !DILocation(line: 481, column: 20, scope: !1415)
!1418 = !DILocation(line: 481, column: 18, scope: !1415)
!1419 = !DILocation(line: 481, column: 42, scope: !1415)
!1420 = !DILocation(line: 481, column: 46, scope: !1415)
!1421 = !DILocation(line: 481, column: 48, scope: !1415)
!1422 = !DILocation(line: 482, column: 42, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 482, column: 4)
!1424 = !DILocation(line: 482, column: 46, scope: !1423)
!1425 = !DILocation(line: 482, column: 29, scope: !1423)
!1426 = !DILocation(line: 482, column: 27, scope: !1423)
!1427 = !DILocation(line: 482, column: 51, scope: !1423)
!1428 = !DILocation(line: 482, column: 55, scope: !1423)
!1429 = !DILocation(line: 482, column: 57, scope: !1423)
!1430 = !DILocation(line: 483, column: 28, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 483, column: 4)
!1432 = !DILocation(line: 483, column: 32, scope: !1431)
!1433 = !DILocation(line: 483, column: 15, scope: !1431)
!1434 = !DILocation(line: 483, column: 13, scope: !1431)
!1435 = !DILocation(line: 483, column: 37, scope: !1431)
!1436 = !DILocation(line: 483, column: 41, scope: !1431)
!1437 = !DILocation(line: 483, column: 43, scope: !1431)
!1438 = !DILocation(line: 485, column: 8, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 485, column: 8)
!1440 = !DILocation(line: 485, column: 15, scope: !1439)
!1441 = !DILocation(line: 485, column: 19, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1439, file: !40, discriminator: 1)
!1443 = !DILocation(line: 485, column: 26, scope: !1442)
!1444 = !DILocation(line: 485, column: 31, scope: !1442)
!1445 = !DILocation(line: 485, column: 8, scope: !1442)
!1446 = !DILocation(line: 487, column: 19, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1439, file: !40, line: 486, column: 4)
!1448 = !DILocation(line: 487, column: 22, scope: !1447)
!1449 = !DILocation(line: 487, column: 5, scope: !1447)
!1450 = !DILocation(line: 488, column: 9, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !40, line: 488, column: 9)
!1452 = !DILocation(line: 488, column: 9, scope: !1447)
!1453 = !DILocation(line: 489, column: 31, scope: !1451)
!1454 = !DILocation(line: 489, column: 6, scope: !1451)
!1455 = !DILocation(line: 490, column: 4, scope: !1447)
!1456 = !DILocation(line: 492, column: 9, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 492, column: 8)
!1458 = !DILocation(line: 492, column: 14, scope: !1457)
!1459 = !DILocation(line: 492, column: 8, scope: !1371)
!1460 = !DILocation(line: 494, column: 12, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !40, line: 493, column: 4)
!1462 = !DILocation(line: 495, column: 10, scope: !1461)
!1463 = !DILocation(line: 495, column: 5, scope: !1461)
!1464 = !DILocation(line: 496, column: 5, scope: !1461)
!1465 = !DILocation(line: 499, column: 13, scope: !1371)
!1466 = !DILocation(line: 499, column: 18, scope: !1371)
!1467 = !DILocation(line: 499, column: 25, scope: !1371)
!1468 = !DILocation(line: 499, column: 33, scope: !1371)
!1469 = !DILocation(line: 499, column: 49, scope: !1371)
!1470 = !DILocation(line: 499, column: 61, scope: !1371)
!1471 = !DILocation(line: 500, column: 11, scope: !1371)
!1472 = !DILocation(line: 500, column: 33, scope: !1371)
!1473 = !DILocation(line: 499, column: 11, scope: !1371)
!1474 = !DILocation(line: 502, column: 9, scope: !1371)
!1475 = !DILocation(line: 502, column: 4, scope: !1371)
!1476 = !DILocation(line: 503, column: 15, scope: !1371)
!1477 = !DILocation(line: 504, column: 4, scope: !1371)
!1478 = !DILocation(line: 507, column: 9, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 507, column: 8)
!1480 = !DILocation(line: 507, column: 14, scope: !1479)
!1481 = !DILocation(line: 507, column: 8, scope: !1371)
!1482 = !DILocation(line: 509, column: 12, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !40, line: 508, column: 4)
!1484 = !DILocation(line: 510, column: 5, scope: !1483)
!1485 = !DILocation(line: 513, column: 13, scope: !1371)
!1486 = !DILocation(line: 513, column: 18, scope: !1371)
!1487 = !DILocation(line: 513, column: 24, scope: !1371)
!1488 = !DILocation(line: 513, column: 11, scope: !1371)
!1489 = !DILocation(line: 514, column: 4, scope: !1371)
!1490 = !DILocation(line: 518, column: 9, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 518, column: 8)
!1492 = !DILocation(line: 518, column: 14, scope: !1491)
!1493 = !DILocation(line: 518, column: 8, scope: !1371)
!1494 = !DILocation(line: 520, column: 12, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !40, line: 519, column: 4)
!1496 = !DILocation(line: 521, column: 5, scope: !1495)
!1497 = !DILocation(line: 524, column: 28, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 524, column: 4)
!1499 = !DILocation(line: 524, column: 32, scope: !1498)
!1500 = !DILocation(line: 524, column: 15, scope: !1498)
!1501 = !DILocation(line: 524, column: 13, scope: !1498)
!1502 = !DILocation(line: 524, column: 37, scope: !1498)
!1503 = !DILocation(line: 524, column: 41, scope: !1498)
!1504 = !DILocation(line: 524, column: 43, scope: !1498)
!1505 = !DILocation(line: 525, column: 28, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 525, column: 4)
!1507 = !DILocation(line: 525, column: 32, scope: !1506)
!1508 = !DILocation(line: 525, column: 15, scope: !1506)
!1509 = !DILocation(line: 525, column: 13, scope: !1506)
!1510 = !DILocation(line: 525, column: 37, scope: !1506)
!1511 = !DILocation(line: 525, column: 41, scope: !1506)
!1512 = !DILocation(line: 525, column: 43, scope: !1506)
!1513 = !DILocation(line: 528, column: 65, scope: !1371)
!1514 = !DILocation(line: 529, column: 11, scope: !1371)
!1515 = !DILocation(line: 527, column: 4, scope: !1371)
!1516 = !DILocation(line: 531, column: 25, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 531, column: 8)
!1518 = !DILocation(line: 531, column: 33, scope: !1517)
!1519 = !DILocation(line: 531, column: 9, scope: !1517)
!1520 = !DILocation(line: 531, column: 8, scope: !1371)
!1521 = !DILocation(line: 533, column: 12, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !40, line: 532, column: 4)
!1523 = !DILocation(line: 534, column: 5, scope: !1522)
!1524 = !DILocation(line: 537, column: 8, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 537, column: 8)
!1526 = !DILocation(line: 537, column: 8, scope: !1371)
!1527 = !DILocation(line: 539, column: 42, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1525, file: !40, line: 538, column: 4)
!1529 = !DILocation(line: 539, column: 50, scope: !1528)
!1530 = !DILocation(line: 539, column: 24, scope: !1528)
!1531 = !DILocation(line: 539, column: 12, scope: !1528)
!1532 = !DILocation(line: 540, column: 10, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1528, file: !40, line: 540, column: 9)
!1534 = !DILocation(line: 540, column: 9, scope: !1528)
!1535 = !DILocation(line: 542, column: 13, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1533, file: !40, line: 541, column: 5)
!1537 = !DILocation(line: 543, column: 6, scope: !1536)
!1538 = !DILocation(line: 545, column: 14, scope: !1528)
!1539 = !DILocation(line: 545, column: 19, scope: !1528)
!1540 = !DILocation(line: 545, column: 24, scope: !1528)
!1541 = !DILocation(line: 545, column: 30, scope: !1528)
!1542 = !DILocation(line: 545, column: 38, scope: !1528)
!1543 = !DILocation(line: 545, column: 46, scope: !1528)
!1544 = !DILocation(line: 545, column: 12, scope: !1528)
!1545 = !DILocation(line: 546, column: 18, scope: !1528)
!1546 = !DILocation(line: 546, column: 16, scope: !1528)
!1547 = !DILocation(line: 547, column: 5, scope: !1528)
!1548 = !DILocation(line: 551, column: 32, scope: !1371)
!1549 = !DILocation(line: 551, column: 24, scope: !1371)
!1550 = !DILocation(line: 551, column: 12, scope: !1371)
!1551 = !DILocation(line: 552, column: 9, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 552, column: 8)
!1553 = !DILocation(line: 552, column: 8, scope: !1371)
!1554 = !DILocation(line: 554, column: 12, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !40, line: 553, column: 4)
!1556 = !DILocation(line: 555, column: 5, scope: !1555)
!1557 = !DILocation(line: 557, column: 23, scope: !1371)
!1558 = !DILocation(line: 557, column: 29, scope: !1371)
!1559 = !DILocation(line: 557, column: 4, scope: !1371)
!1560 = !DILocation(line: 559, column: 9, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 558, column: 8)
!1562 = !DILocation(line: 559, column: 17, scope: !1561)
!1563 = !DILocation(line: 559, column: 23, scope: !1561)
!1564 = !DILocation(line: 559, column: 27, scope: !1561)
!1565 = !DILocation(line: 559, column: 34, scope: !1561)
!1566 = !DILocation(line: 559, column: 42, scope: !1561)
!1567 = !DILocation(line: 559, column: 47, scope: !1561)
!1568 = !DILocation(line: 559, column: 62, scope: !1561)
!1569 = !DILocation(line: 560, column: 9, scope: !1561)
!1570 = !DILocation(line: 560, column: 18, scope: !1561)
!1571 = !DILocation(line: 558, column: 8, scope: !1561)
!1572 = !DILocation(line: 558, column: 8, scope: !1371)
!1573 = !DILocation(line: 562, column: 12, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1561, file: !40, line: 561, column: 4)
!1575 = !DILocation(line: 563, column: 5, scope: !1574)
!1576 = !DILocation(line: 566, column: 11, scope: !1371)
!1577 = !DILocation(line: 567, column: 4, scope: !1371)
!1578 = !DILocation(line: 570, column: 15, scope: !1371)
!1579 = !DILocation(line: 572, column: 9, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 572, column: 8)
!1581 = !DILocation(line: 572, column: 14, scope: !1580)
!1582 = !DILocation(line: 572, column: 8, scope: !1371)
!1583 = !DILocation(line: 574, column: 12, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !40, line: 573, column: 4)
!1585 = !DILocation(line: 575, column: 5, scope: !1584)
!1586 = !DILocation(line: 578, column: 28, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 578, column: 4)
!1588 = !DILocation(line: 578, column: 32, scope: !1587)
!1589 = !DILocation(line: 578, column: 15, scope: !1587)
!1590 = !DILocation(line: 578, column: 13, scope: !1587)
!1591 = !DILocation(line: 578, column: 37, scope: !1587)
!1592 = !DILocation(line: 578, column: 41, scope: !1587)
!1593 = !DILocation(line: 578, column: 43, scope: !1587)
!1594 = !DILocation(line: 579, column: 28, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 579, column: 4)
!1596 = !DILocation(line: 579, column: 32, scope: !1595)
!1597 = !DILocation(line: 579, column: 15, scope: !1595)
!1598 = !DILocation(line: 579, column: 13, scope: !1595)
!1599 = !DILocation(line: 579, column: 37, scope: !1595)
!1600 = !DILocation(line: 579, column: 41, scope: !1595)
!1601 = !DILocation(line: 579, column: 43, scope: !1595)
!1602 = !DILocation(line: 580, column: 5, scope: !1371)
!1603 = !DILocation(line: 580, column: 9, scope: !1371)
!1604 = !DILocation(line: 580, column: 11, scope: !1371)
!1605 = !DILocation(line: 582, column: 72, scope: !1371)
!1606 = !DILocation(line: 582, column: 4, scope: !1371)
!1607 = !DILocation(line: 584, column: 25, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 584, column: 8)
!1609 = !DILocation(line: 584, column: 33, scope: !1608)
!1610 = !DILocation(line: 584, column: 9, scope: !1608)
!1611 = !DILocation(line: 584, column: 8, scope: !1371)
!1612 = !DILocation(line: 586, column: 12, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1608, file: !40, line: 585, column: 4)
!1614 = !DILocation(line: 587, column: 5, scope: !1613)
!1615 = !DILocation(line: 590, column: 8, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 590, column: 8)
!1617 = !DILocation(line: 590, column: 8, scope: !1371)
!1618 = !DILocation(line: 592, column: 14, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !40, line: 591, column: 4)
!1620 = !DILocation(line: 592, column: 19, scope: !1619)
!1621 = !DILocation(line: 592, column: 25, scope: !1619)
!1622 = !DILocation(line: 592, column: 31, scope: !1619)
!1623 = !DILocation(line: 592, column: 34, scope: !1619)
!1624 = !DILocation(line: 592, column: 37, scope: !1619)
!1625 = !DILocation(line: 592, column: 45, scope: !1619)
!1626 = !DILocation(line: 592, column: 12, scope: !1619)
!1627 = !DILocation(line: 593, column: 5, scope: !1619)
!1628 = !DILocation(line: 597, column: 32, scope: !1371)
!1629 = !DILocation(line: 597, column: 24, scope: !1371)
!1630 = !DILocation(line: 597, column: 12, scope: !1371)
!1631 = !DILocation(line: 598, column: 9, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 598, column: 8)
!1633 = !DILocation(line: 598, column: 8, scope: !1371)
!1634 = !DILocation(line: 600, column: 12, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !40, line: 599, column: 4)
!1636 = !DILocation(line: 601, column: 5, scope: !1635)
!1637 = !DILocation(line: 604, column: 13, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 604, column: 4)
!1639 = !DILocation(line: 604, column: 22, scope: !1638)
!1640 = !DILocation(line: 604, column: 26, scope: !1638)
!1641 = !DILocation(line: 604, column: 28, scope: !1638)
!1642 = !DILocation(line: 604, column: 6, scope: !1638)
!1643 = !DILocation(line: 604, column: 47, scope: !1638)
!1644 = !DILocation(line: 604, column: 38, scope: !1638)
!1645 = !DILocation(line: 604, column: 42, scope: !1638)
!1646 = !DILocation(line: 604, column: 44, scope: !1638)
!1647 = !DILocation(line: 607, column: 9, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 606, column: 8)
!1649 = !DILocation(line: 607, column: 17, scope: !1648)
!1650 = !DILocation(line: 607, column: 23, scope: !1648)
!1651 = !DILocation(line: 607, column: 27, scope: !1648)
!1652 = !DILocation(line: 607, column: 34, scope: !1648)
!1653 = !DILocation(line: 607, column: 42, scope: !1648)
!1654 = !DILocation(line: 607, column: 53, scope: !1648)
!1655 = !DILocation(line: 607, column: 62, scope: !1648)
!1656 = !DILocation(line: 606, column: 8, scope: !1648)
!1657 = !DILocation(line: 606, column: 8, scope: !1371)
!1658 = !DILocation(line: 609, column: 12, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1648, file: !40, line: 608, column: 4)
!1660 = !DILocation(line: 610, column: 5, scope: !1659)
!1661 = !DILocation(line: 613, column: 11, scope: !1371)
!1662 = !DILocation(line: 614, column: 4, scope: !1371)
!1663 = !DILocation(line: 618, column: 23, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 618, column: 8)
!1665 = !DILocation(line: 618, column: 8, scope: !1664)
!1666 = !DILocation(line: 618, column: 31, scope: !1664)
!1667 = !DILocation(line: 618, column: 43, scope: !1664)
!1668 = !DILocation(line: 618, column: 8, scope: !1371)
!1669 = !DILocation(line: 620, column: 12, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1664, file: !40, line: 619, column: 4)
!1671 = !DILocation(line: 621, column: 5, scope: !1670)
!1672 = !DILocation(line: 623, column: 32, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 623, column: 4)
!1674 = !DILocation(line: 623, column: 36, scope: !1673)
!1675 = !DILocation(line: 623, column: 19, scope: !1673)
!1676 = !DILocation(line: 623, column: 17, scope: !1673)
!1677 = !DILocation(line: 623, column: 41, scope: !1673)
!1678 = !DILocation(line: 623, column: 45, scope: !1673)
!1679 = !DILocation(line: 623, column: 47, scope: !1673)
!1680 = !DILocation(line: 625, column: 23, scope: !1371)
!1681 = !DILocation(line: 625, column: 19, scope: !1371)
!1682 = !DILocation(line: 625, column: 21, scope: !1371)
!1683 = !DILocation(line: 625, column: 8, scope: !1371)
!1684 = !DILocation(line: 625, column: 13, scope: !1371)
!1685 = !DILocation(line: 626, column: 8, scope: !1371)
!1686 = !DILocation(line: 626, column: 13, scope: !1371)
!1687 = !DILocation(line: 627, column: 36, scope: !1371)
!1688 = !DILocation(line: 627, column: 42, scope: !1371)
!1689 = !DILocation(line: 627, column: 13, scope: !1371)
!1690 = !DILocation(line: 627, column: 11, scope: !1371)
!1691 = !DILocation(line: 628, column: 30, scope: !1371)
!1692 = !DILocation(line: 628, column: 38, scope: !1371)
!1693 = !DILocation(line: 628, column: 32, scope: !1371)
!1694 = !DILocation(line: 628, column: 26, scope: !1371)
!1695 = !DILocation(line: 628, column: 24, scope: !1371)
!1696 = !DILocation(line: 628, column: 11, scope: !1371)
!1697 = !DILocation(line: 630, column: 4, scope: !1371)
!1698 = !DILocation(line: 634, column: 23, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 634, column: 8)
!1700 = !DILocation(line: 634, column: 8, scope: !1699)
!1701 = !DILocation(line: 634, column: 31, scope: !1699)
!1702 = !DILocation(line: 634, column: 43, scope: !1699)
!1703 = !DILocation(line: 634, column: 8, scope: !1371)
!1704 = !DILocation(line: 636, column: 12, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1699, file: !40, line: 635, column: 4)
!1706 = !DILocation(line: 637, column: 5, scope: !1705)
!1707 = !DILocation(line: 640, column: 32, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 640, column: 4)
!1709 = !DILocation(line: 640, column: 36, scope: !1708)
!1710 = !DILocation(line: 640, column: 19, scope: !1708)
!1711 = !DILocation(line: 640, column: 17, scope: !1708)
!1712 = !DILocation(line: 640, column: 41, scope: !1708)
!1713 = !DILocation(line: 640, column: 45, scope: !1708)
!1714 = !DILocation(line: 640, column: 47, scope: !1708)
!1715 = !DILocation(line: 642, column: 23, scope: !1371)
!1716 = !DILocation(line: 642, column: 19, scope: !1371)
!1717 = !DILocation(line: 642, column: 21, scope: !1371)
!1718 = !DILocation(line: 642, column: 8, scope: !1371)
!1719 = !DILocation(line: 642, column: 13, scope: !1371)
!1720 = !DILocation(line: 643, column: 8, scope: !1371)
!1721 = !DILocation(line: 643, column: 13, scope: !1371)
!1722 = !DILocation(line: 644, column: 34, scope: !1371)
!1723 = !DILocation(line: 644, column: 40, scope: !1371)
!1724 = !DILocation(line: 644, column: 52, scope: !1371)
!1725 = !DILocation(line: 644, column: 13, scope: !1371)
!1726 = !DILocation(line: 644, column: 11, scope: !1371)
!1727 = !DILocation(line: 645, column: 30, scope: !1371)
!1728 = !DILocation(line: 645, column: 38, scope: !1371)
!1729 = !DILocation(line: 645, column: 32, scope: !1371)
!1730 = !DILocation(line: 645, column: 26, scope: !1371)
!1731 = !DILocation(line: 645, column: 24, scope: !1371)
!1732 = !DILocation(line: 645, column: 11, scope: !1371)
!1733 = !DILocation(line: 646, column: 4, scope: !1371)
!1734 = !DILocation(line: 650, column: 23, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 650, column: 8)
!1736 = !DILocation(line: 650, column: 8, scope: !1735)
!1737 = !DILocation(line: 650, column: 31, scope: !1735)
!1738 = !DILocation(line: 650, column: 43, scope: !1735)
!1739 = !DILocation(line: 650, column: 8, scope: !1371)
!1740 = !DILocation(line: 652, column: 12, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1735, file: !40, line: 651, column: 4)
!1742 = !DILocation(line: 653, column: 5, scope: !1741)
!1743 = !DILocation(line: 656, column: 32, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 656, column: 4)
!1745 = !DILocation(line: 656, column: 36, scope: !1744)
!1746 = !DILocation(line: 656, column: 19, scope: !1744)
!1747 = !DILocation(line: 656, column: 17, scope: !1744)
!1748 = !DILocation(line: 656, column: 41, scope: !1744)
!1749 = !DILocation(line: 656, column: 45, scope: !1744)
!1750 = !DILocation(line: 656, column: 47, scope: !1744)
!1751 = !DILocation(line: 658, column: 23, scope: !1371)
!1752 = !DILocation(line: 658, column: 19, scope: !1371)
!1753 = !DILocation(line: 658, column: 21, scope: !1371)
!1754 = !DILocation(line: 658, column: 8, scope: !1371)
!1755 = !DILocation(line: 658, column: 13, scope: !1371)
!1756 = !DILocation(line: 659, column: 8, scope: !1371)
!1757 = !DILocation(line: 659, column: 13, scope: !1371)
!1758 = !DILocation(line: 660, column: 43, scope: !1371)
!1759 = !DILocation(line: 660, column: 49, scope: !1371)
!1760 = !DILocation(line: 660, column: 13, scope: !1371)
!1761 = !DILocation(line: 660, column: 11, scope: !1371)
!1762 = !DILocation(line: 661, column: 30, scope: !1371)
!1763 = !DILocation(line: 661, column: 38, scope: !1371)
!1764 = !DILocation(line: 661, column: 32, scope: !1371)
!1765 = !DILocation(line: 661, column: 26, scope: !1371)
!1766 = !DILocation(line: 661, column: 24, scope: !1371)
!1767 = !DILocation(line: 661, column: 11, scope: !1371)
!1768 = !DILocation(line: 662, column: 4, scope: !1371)
!1769 = !DILocation(line: 666, column: 23, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 666, column: 8)
!1771 = !DILocation(line: 666, column: 8, scope: !1770)
!1772 = !DILocation(line: 666, column: 31, scope: !1770)
!1773 = !DILocation(line: 666, column: 43, scope: !1770)
!1774 = !DILocation(line: 666, column: 8, scope: !1371)
!1775 = !DILocation(line: 668, column: 12, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1770, file: !40, line: 667, column: 4)
!1777 = !DILocation(line: 669, column: 5, scope: !1776)
!1778 = !DILocation(line: 672, column: 12, scope: !1371)
!1779 = !DILocation(line: 672, column: 4, scope: !1371)
!1780 = !DILocation(line: 676, column: 34, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !40, line: 676, column: 6)
!1782 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 673, column: 4)
!1783 = !DILocation(line: 676, column: 38, scope: !1781)
!1784 = !DILocation(line: 676, column: 21, scope: !1781)
!1785 = !DILocation(line: 676, column: 19, scope: !1781)
!1786 = !DILocation(line: 676, column: 43, scope: !1781)
!1787 = !DILocation(line: 676, column: 47, scope: !1781)
!1788 = !DILocation(line: 676, column: 49, scope: !1781)
!1789 = !DILocation(line: 677, column: 7, scope: !1782)
!1790 = !DILocation(line: 677, column: 11, scope: !1782)
!1791 = !DILocation(line: 677, column: 13, scope: !1782)
!1792 = !DILocation(line: 678, column: 30, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1782, file: !40, line: 678, column: 6)
!1794 = !DILocation(line: 678, column: 34, scope: !1793)
!1795 = !DILocation(line: 678, column: 17, scope: !1793)
!1796 = !DILocation(line: 678, column: 15, scope: !1793)
!1797 = !DILocation(line: 678, column: 39, scope: !1793)
!1798 = !DILocation(line: 678, column: 43, scope: !1793)
!1799 = !DILocation(line: 678, column: 45, scope: !1793)
!1800 = !DILocation(line: 679, column: 7, scope: !1782)
!1801 = !DILocation(line: 679, column: 11, scope: !1782)
!1802 = !DILocation(line: 679, column: 13, scope: !1782)
!1803 = !DILocation(line: 680, column: 10, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1782, file: !40, line: 680, column: 10)
!1805 = !DILocation(line: 680, column: 17, scope: !1804)
!1806 = !DILocation(line: 680, column: 20, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1804, file: !40, discriminator: 1)
!1808 = !DILocation(line: 680, column: 27, scope: !1807)
!1809 = !DILocation(line: 680, column: 10, scope: !1807)
!1810 = !DILocation(line: 682, column: 21, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1804, file: !40, line: 681, column: 6)
!1812 = !DILocation(line: 682, column: 24, scope: !1811)
!1813 = !DILocation(line: 682, column: 7, scope: !1811)
!1814 = !DILocation(line: 683, column: 11, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !40, line: 683, column: 11)
!1816 = !DILocation(line: 683, column: 11, scope: !1811)
!1817 = !DILocation(line: 684, column: 33, scope: !1815)
!1818 = !DILocation(line: 684, column: 8, scope: !1815)
!1819 = !DILocation(line: 685, column: 6, scope: !1811)
!1820 = !DILocation(line: 687, column: 25, scope: !1782)
!1821 = !DILocation(line: 687, column: 21, scope: !1782)
!1822 = !DILocation(line: 687, column: 23, scope: !1782)
!1823 = !DILocation(line: 687, column: 10, scope: !1782)
!1824 = !DILocation(line: 687, column: 15, scope: !1782)
!1825 = !DILocation(line: 688, column: 10, scope: !1782)
!1826 = !DILocation(line: 688, column: 15, scope: !1782)
!1827 = !DILocation(line: 689, column: 36, scope: !1782)
!1828 = !DILocation(line: 689, column: 42, scope: !1782)
!1829 = !DILocation(line: 689, column: 54, scope: !1782)
!1830 = !DILocation(line: 689, column: 15, scope: !1782)
!1831 = !DILocation(line: 689, column: 13, scope: !1782)
!1832 = !DILocation(line: 691, column: 32, scope: !1782)
!1833 = !DILocation(line: 691, column: 40, scope: !1782)
!1834 = !DILocation(line: 691, column: 34, scope: !1782)
!1835 = !DILocation(line: 691, column: 28, scope: !1782)
!1836 = !DILocation(line: 691, column: 26, scope: !1782)
!1837 = !DILocation(line: 691, column: 13, scope: !1782)
!1838 = !DILocation(line: 692, column: 11, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1782, file: !40, line: 692, column: 10)
!1840 = !DILocation(line: 692, column: 10, scope: !1782)
!1841 = !DILocation(line: 693, column: 17, scope: !1839)
!1842 = !DILocation(line: 693, column: 7, scope: !1839)
!1843 = !DILocation(line: 695, column: 11, scope: !1782)
!1844 = !DILocation(line: 695, column: 6, scope: !1782)
!1845 = !DILocation(line: 696, column: 6, scope: !1782)
!1846 = !DILocation(line: 703, column: 34, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1782, file: !40, line: 703, column: 6)
!1848 = !DILocation(line: 703, column: 38, scope: !1847)
!1849 = !DILocation(line: 703, column: 21, scope: !1847)
!1850 = !DILocation(line: 703, column: 19, scope: !1847)
!1851 = !DILocation(line: 703, column: 43, scope: !1847)
!1852 = !DILocation(line: 703, column: 47, scope: !1847)
!1853 = !DILocation(line: 703, column: 49, scope: !1847)
!1854 = !DILocation(line: 705, column: 34, scope: !1782)
!1855 = !DILocation(line: 705, column: 40, scope: !1782)
!1856 = !DILocation(line: 705, column: 15, scope: !1782)
!1857 = !DILocation(line: 705, column: 13, scope: !1782)
!1858 = !DILocation(line: 706, column: 13, scope: !1782)
!1859 = !DILocation(line: 708, column: 10, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1782, file: !40, line: 708, column: 10)
!1861 = !DILocation(line: 708, column: 17, scope: !1860)
!1862 = !DILocation(line: 708, column: 10, scope: !1782)
!1863 = !DILocation(line: 709, column: 27, scope: !1860)
!1864 = !DILocation(line: 709, column: 35, scope: !1860)
!1865 = !DILocation(line: 709, column: 41, scope: !1860)
!1866 = !DILocation(line: 709, column: 45, scope: !1860)
!1867 = !DILocation(line: 709, column: 52, scope: !1860)
!1868 = !DILocation(line: 710, column: 13, scope: !1860)
!1869 = !DILocation(line: 709, column: 7, scope: !1860)
!1870 = !DILocation(line: 711, column: 6, scope: !1782)
!1871 = !DILocation(line: 715, column: 13, scope: !1782)
!1872 = !DILocation(line: 719, column: 13, scope: !1782)
!1873 = !DILocation(line: 719, column: 20, scope: !1782)
!1874 = !DILocation(line: 717, column: 6, scope: !1782)
!1875 = !DILocation(line: 720, column: 4, scope: !1782)
!1876 = !DILocation(line: 721, column: 4, scope: !1371)
!1877 = !DILocation(line: 725, column: 9, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 725, column: 8)
!1879 = !DILocation(line: 725, column: 14, scope: !1878)
!1880 = !DILocation(line: 725, column: 8, scope: !1371)
!1881 = !DILocation(line: 727, column: 12, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !40, line: 726, column: 4)
!1883 = !DILocation(line: 728, column: 5, scope: !1882)
!1884 = !DILocation(line: 731, column: 31, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 731, column: 4)
!1886 = !DILocation(line: 731, column: 35, scope: !1885)
!1887 = !DILocation(line: 731, column: 18, scope: !1885)
!1888 = !DILocation(line: 731, column: 16, scope: !1885)
!1889 = !DILocation(line: 731, column: 40, scope: !1885)
!1890 = !DILocation(line: 731, column: 44, scope: !1885)
!1891 = !DILocation(line: 731, column: 46, scope: !1885)
!1892 = !DILocation(line: 732, column: 5, scope: !1371)
!1893 = !DILocation(line: 732, column: 9, scope: !1371)
!1894 = !DILocation(line: 732, column: 11, scope: !1371)
!1895 = !DILocation(line: 733, column: 29, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 733, column: 4)
!1897 = !DILocation(line: 733, column: 33, scope: !1896)
!1898 = !DILocation(line: 733, column: 16, scope: !1896)
!1899 = !DILocation(line: 733, column: 14, scope: !1896)
!1900 = !DILocation(line: 733, column: 38, scope: !1896)
!1901 = !DILocation(line: 733, column: 42, scope: !1896)
!1902 = !DILocation(line: 733, column: 44, scope: !1896)
!1903 = !DILocation(line: 734, column: 5, scope: !1371)
!1904 = !DILocation(line: 734, column: 9, scope: !1371)
!1905 = !DILocation(line: 734, column: 11, scope: !1371)
!1906 = !DILocation(line: 736, column: 41, scope: !1371)
!1907 = !DILocation(line: 736, column: 49, scope: !1371)
!1908 = !DILocation(line: 736, column: 59, scope: !1371)
!1909 = !DILocation(line: 736, column: 23, scope: !1371)
!1910 = !DILocation(line: 736, column: 11, scope: !1371)
!1911 = !DILocation(line: 737, column: 9, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 737, column: 8)
!1913 = !DILocation(line: 737, column: 8, scope: !1371)
!1914 = !DILocation(line: 739, column: 12, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !40, line: 738, column: 4)
!1916 = !DILocation(line: 740, column: 5, scope: !1915)
!1917 = !DILocation(line: 743, column: 23, scope: !1371)
!1918 = !DILocation(line: 743, column: 19, scope: !1371)
!1919 = !DILocation(line: 743, column: 21, scope: !1371)
!1920 = !DILocation(line: 743, column: 8, scope: !1371)
!1921 = !DILocation(line: 743, column: 13, scope: !1371)
!1922 = !DILocation(line: 744, column: 8, scope: !1371)
!1923 = !DILocation(line: 744, column: 13, scope: !1371)
!1924 = !DILocation(line: 749, column: 13, scope: !1371)
!1925 = !DILocation(line: 749, column: 18, scope: !1371)
!1926 = !DILocation(line: 749, column: 33, scope: !1371)
!1927 = !DILocation(line: 749, column: 39, scope: !1371)
!1928 = !DILocation(line: 749, column: 48, scope: !1371)
!1929 = !DILocation(line: 749, column: 11, scope: !1371)
!1930 = !DILocation(line: 750, column: 30, scope: !1371)
!1931 = !DILocation(line: 750, column: 38, scope: !1371)
!1932 = !DILocation(line: 750, column: 32, scope: !1371)
!1933 = !DILocation(line: 750, column: 26, scope: !1371)
!1934 = !DILocation(line: 750, column: 24, scope: !1371)
!1935 = !DILocation(line: 750, column: 11, scope: !1371)
!1936 = !DILocation(line: 753, column: 8, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 753, column: 8)
!1938 = !DILocation(line: 753, column: 15, scope: !1937)
!1939 = !DILocation(line: 753, column: 8, scope: !1371)
!1940 = !DILocation(line: 756, column: 10, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !40, line: 755, column: 9)
!1942 = distinct !DILexicalBlock(scope: !1937, file: !40, line: 754, column: 4)
!1943 = !DILocation(line: 756, column: 18, scope: !1941)
!1944 = !DILocation(line: 756, column: 24, scope: !1941)
!1945 = !DILocation(line: 756, column: 28, scope: !1941)
!1946 = !DILocation(line: 756, column: 35, scope: !1941)
!1947 = !DILocation(line: 756, column: 43, scope: !1941)
!1948 = !DILocation(line: 755, column: 9, scope: !1941)
!1949 = !DILocation(line: 755, column: 9, scope: !1942)
!1950 = !DILocation(line: 758, column: 13, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1941, file: !40, line: 757, column: 5)
!1952 = !DILocation(line: 759, column: 6, scope: !1951)
!1953 = !DILocation(line: 761, column: 4, scope: !1942)
!1954 = !DILocation(line: 766, column: 4, scope: !1371)
!1955 = !DILocation(line: 771, column: 23, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 771, column: 8)
!1957 = !DILocation(line: 771, column: 8, scope: !1956)
!1958 = !DILocation(line: 771, column: 31, scope: !1956)
!1959 = !DILocation(line: 771, column: 43, scope: !1956)
!1960 = !DILocation(line: 771, column: 8, scope: !1371)
!1961 = !DILocation(line: 773, column: 12, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1956, file: !40, line: 772, column: 4)
!1963 = !DILocation(line: 774, column: 5, scope: !1962)
!1964 = !DILocation(line: 777, column: 32, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1371, file: !40, line: 777, column: 4)
!1966 = !DILocation(line: 777, column: 36, scope: !1965)
!1967 = !DILocation(line: 777, column: 19, scope: !1965)
!1968 = !DILocation(line: 777, column: 17, scope: !1965)
!1969 = !DILocation(line: 777, column: 41, scope: !1965)
!1970 = !DILocation(line: 777, column: 45, scope: !1965)
!1971 = !DILocation(line: 777, column: 47, scope: !1965)
!1972 = !DILocation(line: 779, column: 23, scope: !1371)
!1973 = !DILocation(line: 779, column: 19, scope: !1371)
!1974 = !DILocation(line: 779, column: 21, scope: !1371)
!1975 = !DILocation(line: 779, column: 8, scope: !1371)
!1976 = !DILocation(line: 779, column: 13, scope: !1371)
!1977 = !DILocation(line: 780, column: 8, scope: !1371)
!1978 = !DILocation(line: 780, column: 13, scope: !1371)
!1979 = !DILocation(line: 783, column: 11, scope: !1371)
!1980 = !DILocation(line: 784, column: 30, scope: !1371)
!1981 = !DILocation(line: 784, column: 38, scope: !1371)
!1982 = !DILocation(line: 784, column: 32, scope: !1371)
!1983 = !DILocation(line: 784, column: 26, scope: !1371)
!1984 = !DILocation(line: 784, column: 24, scope: !1371)
!1985 = !DILocation(line: 784, column: 11, scope: !1371)
!1986 = !DILocation(line: 785, column: 4, scope: !1371)
!1987 = !DILocation(line: 790, column: 11, scope: !1371)
!1988 = !DILocation(line: 790, column: 18, scope: !1371)
!1989 = !DILocation(line: 788, column: 4, scope: !1371)
!1990 = !DILocation(line: 791, column: 4, scope: !1371)
!1991 = !DILocation(line: 794, column: 6, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1228, file: !40, line: 794, column: 6)
!1993 = !DILocation(line: 794, column: 13, scope: !1992)
!1994 = !DILocation(line: 794, column: 6, scope: !1228)
!1995 = !DILocation(line: 796, column: 25, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !40, line: 795, column: 2)
!1997 = !DILocation(line: 796, column: 33, scope: !1996)
!1998 = !DILocation(line: 796, column: 37, scope: !1996)
!1999 = !DILocation(line: 796, column: 45, scope: !1996)
!2000 = !DILocation(line: 796, column: 53, scope: !1996)
!2001 = !DILocation(line: 796, column: 61, scope: !1996)
!2002 = !DILocation(line: 796, column: 3, scope: !1996)
!2003 = !DILocation(line: 797, column: 2, scope: !1996)
!2004 = !DILocation(line: 798, column: 6, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1228, file: !40, line: 798, column: 6)
!2006 = !DILocation(line: 798, column: 6, scope: !1228)
!2007 = !DILocation(line: 799, column: 9, scope: !2005)
!2008 = !DILocation(line: 799, column: 3, scope: !2005)
!2009 = !DILocation(line: 800, column: 9, scope: !1228)
!2010 = !DILocation(line: 801, column: 1, scope: !1228)
!2011 = !DILocation(line: 801, column: 1, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !1228, file: !40, discriminator: 1)
!2013 = distinct !DISubprogram(name: "rdpdr_send_client_announce_reply", scope: !40, file: !40, line: 193, type: !2014, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{null}
!2016 = !DILocalVariable(name: "s", scope: !2013, file: !40, line: 196, type: !80)
!2017 = !DILocation(line: 196, column: 9, scope: !2013)
!2018 = !DILocation(line: 197, column: 19, scope: !2013)
!2019 = !DILocation(line: 197, column: 6, scope: !2013)
!2020 = !DILocation(line: 197, column: 4, scope: !2013)
!2021 = !DILocation(line: 198, column: 17, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2013, file: !40, line: 198, column: 2)
!2023 = !DILocation(line: 198, column: 21, scope: !2022)
!2024 = !DILocation(line: 198, column: 4, scope: !2022)
!2025 = !DILocation(line: 198, column: 24, scope: !2022)
!2026 = !DILocation(line: 198, column: 35, scope: !2022)
!2027 = !DILocation(line: 198, column: 39, scope: !2022)
!2028 = !DILocation(line: 198, column: 41, scope: !2022)
!2029 = !DILocation(line: 199, column: 17, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2013, file: !40, line: 199, column: 2)
!2031 = !DILocation(line: 199, column: 21, scope: !2030)
!2032 = !DILocation(line: 199, column: 4, scope: !2030)
!2033 = !DILocation(line: 199, column: 24, scope: !2030)
!2034 = !DILocation(line: 199, column: 35, scope: !2030)
!2035 = !DILocation(line: 199, column: 39, scope: !2030)
!2036 = !DILocation(line: 199, column: 41, scope: !2030)
!2037 = !DILocation(line: 200, column: 17, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2013, file: !40, line: 200, column: 2)
!2039 = !DILocation(line: 200, column: 21, scope: !2038)
!2040 = !DILocation(line: 200, column: 4, scope: !2038)
!2041 = !DILocation(line: 200, column: 24, scope: !2038)
!2042 = !DILocation(line: 200, column: 30, scope: !2038)
!2043 = !DILocation(line: 200, column: 34, scope: !2038)
!2044 = !DILocation(line: 200, column: 36, scope: !2038)
!2045 = !DILocation(line: 201, column: 17, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2013, file: !40, line: 201, column: 2)
!2047 = !DILocation(line: 201, column: 21, scope: !2046)
!2048 = !DILocation(line: 201, column: 4, scope: !2046)
!2049 = !DILocation(line: 201, column: 24, scope: !2046)
!2050 = !DILocation(line: 201, column: 30, scope: !2046)
!2051 = !DILocation(line: 201, column: 34, scope: !2046)
!2052 = !DILocation(line: 201, column: 36, scope: !2046)
!2053 = !DILocation(line: 202, column: 24, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !40, line: 202, column: 4)
!2055 = distinct !DILexicalBlock(scope: !2013, file: !40, line: 202, column: 2)
!2056 = !DILocation(line: 202, column: 37, scope: !2054)
!2057 = !DILocation(line: 202, column: 44, scope: !2054)
!2058 = !DILocation(line: 202, column: 54, scope: !2054)
!2059 = !DILocation(line: 202, column: 60, scope: !2054)
!2060 = !DILocation(line: 202, column: 20, scope: !2054)
!2061 = !DILocation(line: 202, column: 9, scope: !2054)
!2062 = !DILocation(line: 202, column: 13, scope: !2054)
!2063 = !DILocation(line: 202, column: 14, scope: !2054)
!2064 = !DILocation(line: 202, column: 18, scope: !2054)
!2065 = !DILocation(line: 202, column: 85, scope: !2054)
!2066 = !DILocation(line: 202, column: 98, scope: !2054)
!2067 = !DILocation(line: 202, column: 105, scope: !2054)
!2068 = !DILocation(line: 202, column: 115, scope: !2054)
!2069 = !DILocation(line: 202, column: 82, scope: !2054)
!2070 = !DILocation(line: 202, column: 71, scope: !2054)
!2071 = !DILocation(line: 202, column: 75, scope: !2054)
!2072 = !DILocation(line: 202, column: 76, scope: !2054)
!2073 = !DILocation(line: 202, column: 80, scope: !2054)
!2074 = !DILocation(line: 202, column: 145, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2055, file: !40, line: 202, column: 126)
!2076 = !DILocation(line: 202, column: 158, scope: !2075)
!2077 = !DILocation(line: 202, column: 168, scope: !2075)
!2078 = !DILocation(line: 202, column: 174, scope: !2075)
!2079 = !DILocation(line: 202, column: 142, scope: !2075)
!2080 = !DILocation(line: 202, column: 131, scope: !2075)
!2081 = !DILocation(line: 202, column: 135, scope: !2075)
!2082 = !DILocation(line: 202, column: 136, scope: !2075)
!2083 = !DILocation(line: 202, column: 140, scope: !2075)
!2084 = !DILocation(line: 202, column: 198, scope: !2075)
!2085 = !DILocation(line: 202, column: 211, scope: !2075)
!2086 = !DILocation(line: 202, column: 221, scope: !2075)
!2087 = !DILocation(line: 202, column: 196, scope: !2075)
!2088 = !DILocation(line: 202, column: 185, scope: !2075)
!2089 = !DILocation(line: 202, column: 189, scope: !2075)
!2090 = !DILocation(line: 202, column: 190, scope: !2075)
!2091 = !DILocation(line: 202, column: 194, scope: !2075)
!2092 = !DILocation(line: 203, column: 14, scope: !2013)
!2093 = !DILocation(line: 203, column: 18, scope: !2013)
!2094 = !DILocation(line: 203, column: 3, scope: !2013)
!2095 = !DILocation(line: 203, column: 7, scope: !2013)
!2096 = !DILocation(line: 203, column: 11, scope: !2013)
!2097 = !DILocation(line: 204, column: 15, scope: !2013)
!2098 = !DILocation(line: 204, column: 18, scope: !2013)
!2099 = !DILocation(line: 204, column: 2, scope: !2013)
!2100 = !DILocation(line: 205, column: 1, scope: !2013)
!2101 = distinct !DISubprogram(name: "rdpdr_send_client_name_request", scope: !40, file: !40, line: 209, type: !2014, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!2102 = !DILocalVariable(name: "s", scope: !2101, file: !40, line: 212, type: !80)
!2103 = !DILocation(line: 212, column: 9, scope: !2101)
!2104 = !DILocalVariable(name: "name", scope: !2101, file: !40, line: 213, type: !83)
!2105 = !DILocation(line: 213, column: 16, scope: !2101)
!2106 = !DILocation(line: 215, column: 13, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2101, file: !40, line: 215, column: 5)
!2108 = !DILocation(line: 215, column: 10, scope: !2107)
!2109 = !DILocation(line: 215, column: 5, scope: !2101)
!2110 = !DILocation(line: 217, column: 22, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !40, line: 216, column: 2)
!2112 = !DILocation(line: 218, column: 2, scope: !2111)
!2113 = !DILocation(line: 220, column: 2, scope: !2101)
!2114 = !DILocation(line: 221, column: 2, scope: !2101)
!2115 = !DILocation(line: 222, column: 20, scope: !2101)
!2116 = !DILocation(line: 222, column: 2, scope: !2101)
!2117 = !DILocation(line: 223, column: 26, scope: !2101)
!2118 = !DILocation(line: 223, column: 11, scope: !2101)
!2119 = !DILocation(line: 223, column: 15, scope: !2101)
!2120 = !DILocation(line: 225, column: 19, scope: !2101)
!2121 = !DILocation(line: 225, column: 49, scope: !2101)
!2122 = !DILocation(line: 225, column: 64, scope: !2101)
!2123 = !DILocation(line: 225, column: 53, scope: !2101)
!2124 = !DILocation(line: 225, column: 37, scope: !2101)
!2125 = !DILocation(line: 225, column: 34, scope: !2101)
!2126 = !DILocation(line: 225, column: 6, scope: !2101)
!2127 = !DILocation(line: 225, column: 4, scope: !2101)
!2128 = !DILocation(line: 226, column: 17, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2101, file: !40, line: 226, column: 2)
!2130 = !DILocation(line: 226, column: 21, scope: !2129)
!2131 = !DILocation(line: 226, column: 4, scope: !2129)
!2132 = !DILocation(line: 226, column: 24, scope: !2129)
!2133 = !DILocation(line: 226, column: 35, scope: !2129)
!2134 = !DILocation(line: 226, column: 39, scope: !2129)
!2135 = !DILocation(line: 226, column: 41, scope: !2129)
!2136 = !DILocation(line: 227, column: 17, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2101, file: !40, line: 227, column: 2)
!2138 = !DILocation(line: 227, column: 21, scope: !2137)
!2139 = !DILocation(line: 227, column: 4, scope: !2137)
!2140 = !DILocation(line: 227, column: 24, scope: !2137)
!2141 = !DILocation(line: 227, column: 35, scope: !2137)
!2142 = !DILocation(line: 227, column: 39, scope: !2137)
!2143 = !DILocation(line: 227, column: 41, scope: !2137)
!2144 = !DILocation(line: 228, column: 17, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2101, file: !40, line: 228, column: 2)
!2146 = !DILocation(line: 228, column: 21, scope: !2145)
!2147 = !DILocation(line: 228, column: 4, scope: !2145)
!2148 = !DILocation(line: 228, column: 24, scope: !2145)
!2149 = !DILocation(line: 228, column: 30, scope: !2145)
!2150 = !DILocation(line: 228, column: 34, scope: !2145)
!2151 = !DILocation(line: 228, column: 36, scope: !2145)
!2152 = !DILocation(line: 229, column: 17, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2101, file: !40, line: 229, column: 2)
!2154 = !DILocation(line: 229, column: 21, scope: !2153)
!2155 = !DILocation(line: 229, column: 4, scope: !2153)
!2156 = !DILocation(line: 229, column: 24, scope: !2153)
!2157 = !DILocation(line: 229, column: 30, scope: !2153)
!2158 = !DILocation(line: 229, column: 34, scope: !2153)
!2159 = !DILocation(line: 229, column: 36, scope: !2153)
!2160 = !DILocation(line: 230, column: 36, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2101, file: !40, line: 230, column: 2)
!2162 = !DILocation(line: 230, column: 51, scope: !2161)
!2163 = !DILocation(line: 230, column: 40, scope: !2161)
!2164 = !DILocation(line: 230, column: 26, scope: !2161)
!2165 = !DILocation(line: 230, column: 17, scope: !2161)
!2166 = !DILocation(line: 230, column: 21, scope: !2161)
!2167 = !DILocation(line: 230, column: 4, scope: !2161)
!2168 = !DILocation(line: 230, column: 24, scope: !2161)
!2169 = !DILocation(line: 230, column: 59, scope: !2161)
!2170 = !DILocation(line: 230, column: 63, scope: !2161)
!2171 = !DILocation(line: 230, column: 65, scope: !2161)
!2172 = !DILocation(line: 231, column: 12, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2101, file: !40, line: 231, column: 2)
!2174 = !DILocation(line: 231, column: 16, scope: !2173)
!2175 = !DILocation(line: 231, column: 27, scope: !2173)
!2176 = !DILocation(line: 231, column: 44, scope: !2173)
!2177 = !DILocation(line: 231, column: 61, scope: !2173)
!2178 = !DILocation(line: 231, column: 48, scope: !2173)
!2179 = !DILocation(line: 231, column: 4, scope: !2173)
!2180 = !DILocation(line: 231, column: 91, scope: !2173)
!2181 = !DILocation(line: 231, column: 108, scope: !2173)
!2182 = !DILocation(line: 231, column: 95, scope: !2173)
!2183 = !DILocation(line: 231, column: 70, scope: !2173)
!2184 = !DILocation(line: 231, column: 74, scope: !2173)
!2185 = !DILocation(line: 231, column: 76, scope: !2173)
!2186 = !DILocation(line: 232, column: 14, scope: !2101)
!2187 = !DILocation(line: 232, column: 18, scope: !2101)
!2188 = !DILocation(line: 232, column: 3, scope: !2101)
!2189 = !DILocation(line: 232, column: 7, scope: !2101)
!2190 = !DILocation(line: 232, column: 11, scope: !2101)
!2191 = !DILocation(line: 233, column: 15, scope: !2101)
!2192 = !DILocation(line: 233, column: 18, scope: !2101)
!2193 = !DILocation(line: 233, column: 2, scope: !2101)
!2194 = !DILocation(line: 234, column: 1, scope: !2101)
!2195 = distinct !DISubprogram(name: "rdpdr_send_client_device_list_announce", scope: !40, file: !40, line: 279, type: !2014, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!2196 = !DILocalVariable(name: "bloblen", scope: !2195, file: !40, line: 282, type: !28)
!2197 = !DILocation(line: 282, column: 9, scope: !2195)
!2198 = !DILocalVariable(name: "disklen", scope: !2195, file: !40, line: 282, type: !28)
!2199 = !DILocation(line: 282, column: 18, scope: !2195)
!2200 = !DILocalVariable(name: "flags", scope: !2195, file: !40, line: 282, type: !28)
!2201 = !DILocation(line: 282, column: 27, scope: !2195)
!2202 = !DILocalVariable(name: "i", scope: !2195, file: !40, line: 283, type: !158)
!2203 = !DILocation(line: 283, column: 9, scope: !2195)
!2204 = !DILocalVariable(name: "s", scope: !2195, file: !40, line: 284, type: !80)
!2205 = !DILocation(line: 284, column: 9, scope: !2195)
!2206 = !DILocalVariable(name: "printerinfo", scope: !2195, file: !40, line: 285, type: !104)
!2207 = !DILocation(line: 285, column: 11, scope: !2195)
!2208 = !DILocalVariable(name: "diskinfo", scope: !2195, file: !40, line: 286, type: !96)
!2209 = !DILocation(line: 286, column: 15, scope: !2195)
!2210 = !DILocalVariable(name: "drv", scope: !2195, file: !40, line: 287, type: !83)
!2211 = !DILocation(line: 287, column: 16, scope: !2195)
!2212 = !DILocalVariable(name: "prt", scope: !2195, file: !40, line: 287, type: !83)
!2213 = !DILocation(line: 287, column: 27, scope: !2195)
!2214 = !DILocation(line: 287, column: 27, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2195, file: !40, discriminator: 1)
!2216 = !DILocation(line: 289, column: 19, scope: !2195)
!2217 = !DILocation(line: 289, column: 34, scope: !2195)
!2218 = !DILocation(line: 289, column: 6, scope: !2215)
!2219 = !DILocation(line: 289, column: 4, scope: !2195)
!2220 = !DILocation(line: 290, column: 17, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2195, file: !40, line: 290, column: 2)
!2222 = !DILocation(line: 290, column: 21, scope: !2221)
!2223 = !DILocation(line: 290, column: 4, scope: !2221)
!2224 = !DILocation(line: 290, column: 24, scope: !2221)
!2225 = !DILocation(line: 290, column: 35, scope: !2221)
!2226 = !DILocation(line: 290, column: 39, scope: !2221)
!2227 = !DILocation(line: 290, column: 41, scope: !2221)
!2228 = !DILocation(line: 291, column: 17, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2195, file: !40, line: 291, column: 2)
!2230 = !DILocation(line: 291, column: 21, scope: !2229)
!2231 = !DILocation(line: 291, column: 4, scope: !2229)
!2232 = !DILocation(line: 291, column: 24, scope: !2229)
!2233 = !DILocation(line: 291, column: 35, scope: !2229)
!2234 = !DILocation(line: 291, column: 39, scope: !2229)
!2235 = !DILocation(line: 291, column: 41, scope: !2229)
!2236 = !DILocation(line: 293, column: 26, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2195, file: !40, line: 293, column: 2)
!2238 = !DILocation(line: 293, column: 17, scope: !2237)
!2239 = !DILocation(line: 293, column: 21, scope: !2237)
!2240 = !DILocation(line: 293, column: 4, scope: !2237)
!2241 = !DILocation(line: 293, column: 24, scope: !2237)
!2242 = !DILocation(line: 293, column: 42, scope: !2237)
!2243 = !DILocation(line: 293, column: 46, scope: !2237)
!2244 = !DILocation(line: 293, column: 48, scope: !2237)
!2245 = !DILocation(line: 295, column: 9, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2195, file: !40, line: 295, column: 2)
!2247 = !DILocation(line: 295, column: 7, scope: !2246)
!2248 = !DILocation(line: 295, column: 14, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2250, file: !40, discriminator: 1)
!2250 = distinct !DILexicalBlock(scope: !2246, file: !40, line: 295, column: 2)
!2251 = !DILocation(line: 295, column: 18, scope: !2249)
!2252 = !DILocation(line: 295, column: 16, scope: !2249)
!2253 = !DILocation(line: 295, column: 2, scope: !2249)
!2254 = !DILocation(line: 297, column: 42, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !40, line: 297, column: 3)
!2256 = distinct !DILexicalBlock(scope: !2250, file: !40, line: 296, column: 2)
!2257 = !DILocation(line: 297, column: 27, scope: !2255)
!2258 = !DILocation(line: 297, column: 45, scope: !2255)
!2259 = !DILocation(line: 297, column: 18, scope: !2255)
!2260 = !DILocation(line: 297, column: 22, scope: !2255)
!2261 = !DILocation(line: 297, column: 5, scope: !2255)
!2262 = !DILocation(line: 297, column: 25, scope: !2255)
!2263 = !DILocation(line: 297, column: 59, scope: !2255)
!2264 = !DILocation(line: 297, column: 63, scope: !2255)
!2265 = !DILocation(line: 297, column: 65, scope: !2255)
!2266 = !DILocation(line: 298, column: 27, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2256, file: !40, line: 298, column: 3)
!2268 = !DILocation(line: 298, column: 18, scope: !2267)
!2269 = !DILocation(line: 298, column: 22, scope: !2267)
!2270 = !DILocation(line: 298, column: 5, scope: !2267)
!2271 = !DILocation(line: 298, column: 25, scope: !2267)
!2272 = !DILocation(line: 298, column: 31, scope: !2267)
!2273 = !DILocation(line: 298, column: 35, scope: !2267)
!2274 = !DILocation(line: 298, column: 37, scope: !2267)
!2275 = !DILocation(line: 299, column: 13, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2256, file: !40, line: 299, column: 3)
!2277 = !DILocation(line: 299, column: 17, scope: !2276)
!2278 = !DILocation(line: 299, column: 34, scope: !2276)
!2279 = !DILocation(line: 299, column: 19, scope: !2276)
!2280 = !DILocation(line: 299, column: 37, scope: !2276)
!2281 = !DILocation(line: 299, column: 5, scope: !2276)
!2282 = !DILocation(line: 299, column: 47, scope: !2276)
!2283 = !DILocation(line: 299, column: 51, scope: !2276)
!2284 = !DILocation(line: 299, column: 53, scope: !2276)
!2285 = !DILocation(line: 300, column: 26, scope: !2256)
!2286 = !DILocation(line: 300, column: 11, scope: !2256)
!2287 = !DILocation(line: 300, column: 29, scope: !2256)
!2288 = !DILocation(line: 300, column: 3, scope: !2256)
!2289 = !DILocation(line: 303, column: 47, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2256, file: !40, line: 301, column: 3)
!2291 = !DILocation(line: 303, column: 32, scope: !2290)
!2292 = !DILocation(line: 303, column: 50, scope: !2290)
!2293 = !DILocation(line: 303, column: 16, scope: !2290)
!2294 = !DILocation(line: 303, column: 14, scope: !2290)
!2295 = !DILocation(line: 310, column: 22, scope: !2290)
!2296 = !DILocation(line: 310, column: 32, scope: !2290)
!2297 = !DILocation(line: 310, column: 15, scope: !2290)
!2298 = !DILocation(line: 310, column: 38, scope: !2290)
!2299 = !DILocation(line: 310, column: 13, scope: !2290)
!2300 = !DILocation(line: 312, column: 29, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 312, column: 5)
!2302 = !DILocation(line: 312, column: 20, scope: !2301)
!2303 = !DILocation(line: 312, column: 24, scope: !2301)
!2304 = !DILocation(line: 312, column: 7, scope: !2301)
!2305 = !DILocation(line: 312, column: 27, scope: !2301)
!2306 = !DILocation(line: 312, column: 39, scope: !2301)
!2307 = !DILocation(line: 312, column: 43, scope: !2301)
!2308 = !DILocation(line: 312, column: 45, scope: !2301)
!2309 = !DILocation(line: 313, column: 15, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 313, column: 5)
!2311 = !DILocation(line: 313, column: 19, scope: !2310)
!2312 = !DILocation(line: 313, column: 21, scope: !2310)
!2313 = !DILocation(line: 313, column: 31, scope: !2310)
!2314 = !DILocation(line: 313, column: 7, scope: !2310)
!2315 = !DILocation(line: 313, column: 36, scope: !2310)
!2316 = !DILocation(line: 313, column: 56, scope: !2310)
!2317 = !DILocation(line: 313, column: 47, scope: !2310)
!2318 = !DILocation(line: 313, column: 51, scope: !2310)
!2319 = !DILocation(line: 313, column: 53, scope: !2310)
!2320 = !DILocation(line: 314, column: 5, scope: !2290)
!2321 = !DILocation(line: 317, column: 46, scope: !2290)
!2322 = !DILocation(line: 317, column: 31, scope: !2290)
!2323 = !DILocation(line: 317, column: 49, scope: !2290)
!2324 = !DILocation(line: 317, column: 19, scope: !2290)
!2325 = !DILocation(line: 317, column: 17, scope: !2290)
!2326 = !DILocation(line: 319, column: 5, scope: !2290)
!2327 = !DILocation(line: 320, column: 5, scope: !2290)
!2328 = !DILocation(line: 321, column: 22, scope: !2290)
!2329 = !DILocation(line: 321, column: 35, scope: !2290)
!2330 = !DILocation(line: 321, column: 5, scope: !2290)
!2331 = !DILocation(line: 322, column: 27, scope: !2290)
!2332 = !DILocation(line: 322, column: 13, scope: !2290)
!2333 = !DILocation(line: 322, column: 17, scope: !2290)
!2334 = !DILocation(line: 324, column: 5, scope: !2290)
!2335 = !DILocation(line: 325, column: 5, scope: !2290)
!2336 = !DILocation(line: 326, column: 22, scope: !2290)
!2337 = !DILocation(line: 326, column: 35, scope: !2290)
!2338 = !DILocation(line: 326, column: 5, scope: !2290)
!2339 = !DILocation(line: 327, column: 27, scope: !2290)
!2340 = !DILocation(line: 327, column: 13, scope: !2290)
!2341 = !DILocation(line: 327, column: 17, scope: !2290)
!2342 = !DILocation(line: 329, column: 15, scope: !2290)
!2343 = !DILocation(line: 329, column: 28, scope: !2290)
!2344 = !DILocation(line: 329, column: 13, scope: !2290)
!2345 = !DILocation(line: 330, column: 11, scope: !2290)
!2346 = !DILocation(line: 331, column: 9, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 331, column: 9)
!2348 = !DILocation(line: 331, column: 22, scope: !2347)
!2349 = !DILocation(line: 331, column: 9, scope: !2290)
!2350 = !DILocation(line: 332, column: 12, scope: !2347)
!2351 = !DILocation(line: 332, column: 6, scope: !2347)
!2352 = !DILocation(line: 334, column: 43, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 334, column: 5)
!2354 = !DILocation(line: 334, column: 57, scope: !2353)
!2355 = !DILocation(line: 334, column: 47, scope: !2353)
!2356 = !DILocation(line: 334, column: 32, scope: !2353)
!2357 = !DILocation(line: 334, column: 74, scope: !2353)
!2358 = !DILocation(line: 334, column: 88, scope: !2353)
!2359 = !DILocation(line: 334, column: 78, scope: !2353)
!2360 = !DILocation(line: 334, column: 63, scope: !2353)
!2361 = !DILocation(line: 334, column: 96, scope: !2353)
!2362 = !DILocation(line: 334, column: 94, scope: !2353)
!2363 = !DILocation(line: 334, column: 29, scope: !2353)
!2364 = !DILocation(line: 334, column: 20, scope: !2353)
!2365 = !DILocation(line: 334, column: 24, scope: !2353)
!2366 = !DILocation(line: 334, column: 7, scope: !2353)
!2367 = !DILocation(line: 334, column: 27, scope: !2353)
!2368 = !DILocation(line: 334, column: 106, scope: !2353)
!2369 = !DILocation(line: 334, column: 110, scope: !2353)
!2370 = !DILocation(line: 334, column: 112, scope: !2353)
!2371 = !DILocation(line: 335, column: 29, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 335, column: 5)
!2373 = !DILocation(line: 335, column: 20, scope: !2372)
!2374 = !DILocation(line: 335, column: 24, scope: !2372)
!2375 = !DILocation(line: 335, column: 7, scope: !2372)
!2376 = !DILocation(line: 335, column: 27, scope: !2372)
!2377 = !DILocation(line: 335, column: 37, scope: !2372)
!2378 = !DILocation(line: 335, column: 41, scope: !2372)
!2379 = !DILocation(line: 335, column: 43, scope: !2372)
!2380 = !DILocation(line: 336, column: 20, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 336, column: 5)
!2382 = !DILocation(line: 336, column: 24, scope: !2381)
!2383 = !DILocation(line: 336, column: 7, scope: !2381)
!2384 = !DILocation(line: 336, column: 27, scope: !2381)
!2385 = !DILocation(line: 336, column: 33, scope: !2381)
!2386 = !DILocation(line: 336, column: 37, scope: !2381)
!2387 = !DILocation(line: 336, column: 39, scope: !2381)
!2388 = !DILocation(line: 337, column: 20, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 337, column: 5)
!2390 = !DILocation(line: 337, column: 24, scope: !2389)
!2391 = !DILocation(line: 337, column: 7, scope: !2389)
!2392 = !DILocation(line: 337, column: 27, scope: !2389)
!2393 = !DILocation(line: 337, column: 33, scope: !2389)
!2394 = !DILocation(line: 337, column: 37, scope: !2389)
!2395 = !DILocation(line: 337, column: 39, scope: !2389)
!2396 = !DILocation(line: 338, column: 38, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 338, column: 5)
!2398 = !DILocation(line: 338, column: 52, scope: !2397)
!2399 = !DILocation(line: 338, column: 42, scope: !2397)
!2400 = !DILocation(line: 338, column: 29, scope: !2397)
!2401 = !DILocation(line: 338, column: 20, scope: !2397)
!2402 = !DILocation(line: 338, column: 24, scope: !2397)
!2403 = !DILocation(line: 338, column: 7, scope: !2397)
!2404 = !DILocation(line: 338, column: 27, scope: !2397)
!2405 = !DILocation(line: 338, column: 60, scope: !2397)
!2406 = !DILocation(line: 338, column: 64, scope: !2397)
!2407 = !DILocation(line: 338, column: 66, scope: !2397)
!2408 = !DILocation(line: 339, column: 38, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 339, column: 5)
!2410 = !DILocation(line: 339, column: 52, scope: !2409)
!2411 = !DILocation(line: 339, column: 42, scope: !2409)
!2412 = !DILocation(line: 339, column: 29, scope: !2409)
!2413 = !DILocation(line: 339, column: 20, scope: !2409)
!2414 = !DILocation(line: 339, column: 24, scope: !2409)
!2415 = !DILocation(line: 339, column: 7, scope: !2409)
!2416 = !DILocation(line: 339, column: 27, scope: !2409)
!2417 = !DILocation(line: 339, column: 60, scope: !2409)
!2418 = !DILocation(line: 339, column: 64, scope: !2409)
!2419 = !DILocation(line: 339, column: 66, scope: !2409)
!2420 = !DILocation(line: 340, column: 29, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 340, column: 5)
!2422 = !DILocation(line: 340, column: 20, scope: !2421)
!2423 = !DILocation(line: 340, column: 24, scope: !2421)
!2424 = !DILocation(line: 340, column: 7, scope: !2421)
!2425 = !DILocation(line: 340, column: 27, scope: !2421)
!2426 = !DILocation(line: 340, column: 39, scope: !2421)
!2427 = !DILocation(line: 340, column: 43, scope: !2421)
!2428 = !DILocation(line: 340, column: 45, scope: !2421)
!2429 = !DILocation(line: 342, column: 15, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 342, column: 5)
!2431 = !DILocation(line: 342, column: 19, scope: !2430)
!2432 = !DILocation(line: 342, column: 29, scope: !2430)
!2433 = !DILocation(line: 342, column: 45, scope: !2430)
!2434 = !DILocation(line: 342, column: 61, scope: !2430)
!2435 = !DILocation(line: 342, column: 49, scope: !2430)
!2436 = !DILocation(line: 342, column: 7, scope: !2430)
!2437 = !DILocation(line: 342, column: 90, scope: !2430)
!2438 = !DILocation(line: 342, column: 106, scope: !2430)
!2439 = !DILocation(line: 342, column: 94, scope: !2430)
!2440 = !DILocation(line: 342, column: 70, scope: !2430)
!2441 = !DILocation(line: 342, column: 74, scope: !2430)
!2442 = !DILocation(line: 342, column: 76, scope: !2430)
!2443 = !DILocation(line: 343, column: 15, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 343, column: 5)
!2445 = !DILocation(line: 343, column: 19, scope: !2444)
!2446 = !DILocation(line: 343, column: 29, scope: !2444)
!2447 = !DILocation(line: 343, column: 45, scope: !2444)
!2448 = !DILocation(line: 343, column: 61, scope: !2444)
!2449 = !DILocation(line: 343, column: 49, scope: !2444)
!2450 = !DILocation(line: 343, column: 7, scope: !2444)
!2451 = !DILocation(line: 343, column: 90, scope: !2444)
!2452 = !DILocation(line: 343, column: 106, scope: !2444)
!2453 = !DILocation(line: 343, column: 94, scope: !2444)
!2454 = !DILocation(line: 343, column: 70, scope: !2444)
!2455 = !DILocation(line: 343, column: 74, scope: !2444)
!2456 = !DILocation(line: 343, column: 76, scope: !2444)
!2457 = !DILocation(line: 344, column: 15, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 344, column: 5)
!2459 = !DILocation(line: 344, column: 19, scope: !2458)
!2460 = !DILocation(line: 344, column: 21, scope: !2458)
!2461 = !DILocation(line: 344, column: 34, scope: !2458)
!2462 = !DILocation(line: 344, column: 39, scope: !2458)
!2463 = !DILocation(line: 344, column: 7, scope: !2458)
!2464 = !DILocation(line: 344, column: 59, scope: !2458)
!2465 = !DILocation(line: 344, column: 50, scope: !2458)
!2466 = !DILocation(line: 344, column: 54, scope: !2458)
!2467 = !DILocation(line: 344, column: 56, scope: !2458)
!2468 = !DILocation(line: 346, column: 9, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 346, column: 9)
!2470 = !DILocation(line: 346, column: 22, scope: !2469)
!2471 = !DILocation(line: 346, column: 9, scope: !2290)
!2472 = !DILocation(line: 347, column: 12, scope: !2469)
!2473 = !DILocation(line: 347, column: 25, scope: !2469)
!2474 = !DILocation(line: 347, column: 6, scope: !2469)
!2475 = !DILocation(line: 348, column: 5, scope: !2290)
!2476 = !DILocation(line: 350, column: 20, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2290, file: !40, line: 350, column: 5)
!2478 = !DILocation(line: 350, column: 24, scope: !2477)
!2479 = !DILocation(line: 350, column: 7, scope: !2477)
!2480 = !DILocation(line: 350, column: 27, scope: !2477)
!2481 = !DILocation(line: 350, column: 33, scope: !2477)
!2482 = !DILocation(line: 350, column: 37, scope: !2477)
!2483 = !DILocation(line: 350, column: 39, scope: !2477)
!2484 = !DILocation(line: 351, column: 3, scope: !2290)
!2485 = !DILocation(line: 352, column: 2, scope: !2256)
!2486 = !DILocation(line: 295, column: 34, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2250, file: !40, discriminator: 2)
!2488 = !DILocation(line: 295, column: 2, scope: !2487)
!2489 = distinct !{!2489, !2490}
!2490 = !DILocation(line: 295, column: 2, scope: !2195)
!2491 = !DILocation(line: 354, column: 14, scope: !2195)
!2492 = !DILocation(line: 354, column: 18, scope: !2195)
!2493 = !DILocation(line: 354, column: 3, scope: !2195)
!2494 = !DILocation(line: 354, column: 7, scope: !2195)
!2495 = !DILocation(line: 354, column: 11, scope: !2195)
!2496 = !DILocation(line: 355, column: 15, scope: !2195)
!2497 = !DILocation(line: 355, column: 18, scope: !2195)
!2498 = !DILocation(line: 355, column: 2, scope: !2195)
!2499 = !DILocation(line: 356, column: 1, scope: !2195)
!2500 = distinct !DISubprogram(name: "rdpdr_send_client_capability_response", scope: !40, file: !40, line: 804, type: !2014, isLocal: true, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!2501 = !DILocalVariable(name: "s", scope: !2500, file: !40, line: 807, type: !80)
!2502 = !DILocation(line: 807, column: 9, scope: !2500)
!2503 = !DILocation(line: 808, column: 19, scope: !2500)
!2504 = !DILocation(line: 808, column: 6, scope: !2500)
!2505 = !DILocation(line: 808, column: 4, scope: !2500)
!2506 = !DILocation(line: 810, column: 17, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 810, column: 2)
!2508 = !DILocation(line: 810, column: 21, scope: !2507)
!2509 = !DILocation(line: 810, column: 4, scope: !2507)
!2510 = !DILocation(line: 810, column: 24, scope: !2507)
!2511 = !DILocation(line: 810, column: 35, scope: !2507)
!2512 = !DILocation(line: 810, column: 39, scope: !2507)
!2513 = !DILocation(line: 810, column: 41, scope: !2507)
!2514 = !DILocation(line: 811, column: 17, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 811, column: 2)
!2516 = !DILocation(line: 811, column: 21, scope: !2515)
!2517 = !DILocation(line: 811, column: 4, scope: !2515)
!2518 = !DILocation(line: 811, column: 24, scope: !2515)
!2519 = !DILocation(line: 811, column: 35, scope: !2515)
!2520 = !DILocation(line: 811, column: 39, scope: !2515)
!2521 = !DILocation(line: 811, column: 41, scope: !2515)
!2522 = !DILocation(line: 812, column: 17, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 812, column: 2)
!2524 = !DILocation(line: 812, column: 21, scope: !2523)
!2525 = !DILocation(line: 812, column: 4, scope: !2523)
!2526 = !DILocation(line: 812, column: 24, scope: !2523)
!2527 = !DILocation(line: 812, column: 30, scope: !2523)
!2528 = !DILocation(line: 812, column: 34, scope: !2523)
!2529 = !DILocation(line: 812, column: 36, scope: !2523)
!2530 = !DILocation(line: 813, column: 17, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 813, column: 2)
!2532 = !DILocation(line: 813, column: 21, scope: !2531)
!2533 = !DILocation(line: 813, column: 4, scope: !2531)
!2534 = !DILocation(line: 813, column: 24, scope: !2531)
!2535 = !DILocation(line: 813, column: 30, scope: !2531)
!2536 = !DILocation(line: 813, column: 34, scope: !2531)
!2537 = !DILocation(line: 813, column: 36, scope: !2531)
!2538 = !DILocation(line: 815, column: 17, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 815, column: 2)
!2540 = !DILocation(line: 815, column: 21, scope: !2539)
!2541 = !DILocation(line: 815, column: 4, scope: !2539)
!2542 = !DILocation(line: 815, column: 24, scope: !2539)
!2543 = !DILocation(line: 815, column: 35, scope: !2539)
!2544 = !DILocation(line: 815, column: 39, scope: !2539)
!2545 = !DILocation(line: 815, column: 41, scope: !2539)
!2546 = !DILocation(line: 816, column: 17, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 816, column: 2)
!2548 = !DILocation(line: 816, column: 21, scope: !2547)
!2549 = !DILocation(line: 816, column: 4, scope: !2547)
!2550 = !DILocation(line: 816, column: 24, scope: !2547)
!2551 = !DILocation(line: 816, column: 33, scope: !2547)
!2552 = !DILocation(line: 816, column: 37, scope: !2547)
!2553 = !DILocation(line: 816, column: 39, scope: !2547)
!2554 = !DILocation(line: 817, column: 17, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 817, column: 2)
!2556 = !DILocation(line: 817, column: 21, scope: !2555)
!2557 = !DILocation(line: 817, column: 4, scope: !2555)
!2558 = !DILocation(line: 817, column: 24, scope: !2555)
!2559 = !DILocation(line: 817, column: 39, scope: !2555)
!2560 = !DILocation(line: 817, column: 43, scope: !2555)
!2561 = !DILocation(line: 817, column: 45, scope: !2555)
!2562 = !DILocation(line: 818, column: 17, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 818, column: 2)
!2564 = !DILocation(line: 818, column: 21, scope: !2563)
!2565 = !DILocation(line: 818, column: 4, scope: !2563)
!2566 = !DILocation(line: 818, column: 24, scope: !2563)
!2567 = !DILocation(line: 818, column: 30, scope: !2563)
!2568 = !DILocation(line: 818, column: 34, scope: !2563)
!2569 = !DILocation(line: 818, column: 36, scope: !2563)
!2570 = !DILocation(line: 819, column: 17, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 819, column: 2)
!2572 = !DILocation(line: 819, column: 21, scope: !2571)
!2573 = !DILocation(line: 819, column: 4, scope: !2571)
!2574 = !DILocation(line: 819, column: 24, scope: !2571)
!2575 = !DILocation(line: 819, column: 30, scope: !2571)
!2576 = !DILocation(line: 819, column: 34, scope: !2571)
!2577 = !DILocation(line: 819, column: 36, scope: !2571)
!2578 = !DILocation(line: 820, column: 17, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 820, column: 2)
!2580 = !DILocation(line: 820, column: 21, scope: !2579)
!2581 = !DILocation(line: 820, column: 4, scope: !2579)
!2582 = !DILocation(line: 820, column: 24, scope: !2579)
!2583 = !DILocation(line: 820, column: 30, scope: !2579)
!2584 = !DILocation(line: 820, column: 34, scope: !2579)
!2585 = !DILocation(line: 820, column: 36, scope: !2579)
!2586 = !DILocation(line: 821, column: 17, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 821, column: 2)
!2588 = !DILocation(line: 821, column: 21, scope: !2587)
!2589 = !DILocation(line: 821, column: 4, scope: !2587)
!2590 = !DILocation(line: 821, column: 24, scope: !2587)
!2591 = !DILocation(line: 821, column: 30, scope: !2587)
!2592 = !DILocation(line: 821, column: 34, scope: !2587)
!2593 = !DILocation(line: 821, column: 36, scope: !2587)
!2594 = !DILocation(line: 822, column: 17, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 822, column: 2)
!2596 = !DILocation(line: 822, column: 21, scope: !2595)
!2597 = !DILocation(line: 822, column: 4, scope: !2595)
!2598 = !DILocation(line: 822, column: 24, scope: !2595)
!2599 = !DILocation(line: 822, column: 39, scope: !2595)
!2600 = !DILocation(line: 822, column: 43, scope: !2595)
!2601 = !DILocation(line: 822, column: 45, scope: !2595)
!2602 = !DILocation(line: 823, column: 17, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 823, column: 2)
!2604 = !DILocation(line: 823, column: 21, scope: !2603)
!2605 = !DILocation(line: 823, column: 4, scope: !2603)
!2606 = !DILocation(line: 823, column: 24, scope: !2603)
!2607 = !DILocation(line: 823, column: 30, scope: !2603)
!2608 = !DILocation(line: 823, column: 34, scope: !2603)
!2609 = !DILocation(line: 823, column: 36, scope: !2603)
!2610 = !DILocation(line: 824, column: 17, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 824, column: 2)
!2612 = !DILocation(line: 824, column: 21, scope: !2611)
!2613 = !DILocation(line: 824, column: 4, scope: !2611)
!2614 = !DILocation(line: 824, column: 24, scope: !2611)
!2615 = !DILocation(line: 824, column: 52, scope: !2611)
!2616 = !DILocation(line: 824, column: 56, scope: !2611)
!2617 = !DILocation(line: 824, column: 58, scope: !2611)
!2618 = !DILocation(line: 825, column: 17, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 825, column: 2)
!2620 = !DILocation(line: 825, column: 21, scope: !2619)
!2621 = !DILocation(line: 825, column: 4, scope: !2619)
!2622 = !DILocation(line: 825, column: 24, scope: !2619)
!2623 = !DILocation(line: 825, column: 30, scope: !2619)
!2624 = !DILocation(line: 825, column: 34, scope: !2619)
!2625 = !DILocation(line: 825, column: 36, scope: !2619)
!2626 = !DILocation(line: 826, column: 17, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 826, column: 2)
!2628 = !DILocation(line: 826, column: 21, scope: !2627)
!2629 = !DILocation(line: 826, column: 4, scope: !2627)
!2630 = !DILocation(line: 826, column: 24, scope: !2627)
!2631 = !DILocation(line: 826, column: 30, scope: !2627)
!2632 = !DILocation(line: 826, column: 34, scope: !2627)
!2633 = !DILocation(line: 826, column: 36, scope: !2627)
!2634 = !DILocation(line: 828, column: 17, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 828, column: 2)
!2636 = !DILocation(line: 828, column: 21, scope: !2635)
!2637 = !DILocation(line: 828, column: 4, scope: !2635)
!2638 = !DILocation(line: 828, column: 24, scope: !2635)
!2639 = !DILocation(line: 828, column: 35, scope: !2635)
!2640 = !DILocation(line: 828, column: 39, scope: !2635)
!2641 = !DILocation(line: 828, column: 41, scope: !2635)
!2642 = !DILocation(line: 829, column: 17, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 829, column: 2)
!2644 = !DILocation(line: 829, column: 21, scope: !2643)
!2645 = !DILocation(line: 829, column: 4, scope: !2643)
!2646 = !DILocation(line: 829, column: 24, scope: !2643)
!2647 = !DILocation(line: 829, column: 30, scope: !2643)
!2648 = !DILocation(line: 829, column: 34, scope: !2643)
!2649 = !DILocation(line: 829, column: 36, scope: !2643)
!2650 = !DILocation(line: 830, column: 17, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 830, column: 2)
!2652 = !DILocation(line: 830, column: 21, scope: !2651)
!2653 = !DILocation(line: 830, column: 4, scope: !2651)
!2654 = !DILocation(line: 830, column: 24, scope: !2651)
!2655 = !DILocation(line: 830, column: 39, scope: !2651)
!2656 = !DILocation(line: 830, column: 43, scope: !2651)
!2657 = !DILocation(line: 830, column: 45, scope: !2651)
!2658 = !DILocation(line: 832, column: 17, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 832, column: 2)
!2660 = !DILocation(line: 832, column: 21, scope: !2659)
!2661 = !DILocation(line: 832, column: 4, scope: !2659)
!2662 = !DILocation(line: 832, column: 24, scope: !2659)
!2663 = !DILocation(line: 832, column: 35, scope: !2659)
!2664 = !DILocation(line: 832, column: 39, scope: !2659)
!2665 = !DILocation(line: 832, column: 41, scope: !2659)
!2666 = !DILocation(line: 833, column: 17, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 833, column: 2)
!2668 = !DILocation(line: 833, column: 21, scope: !2667)
!2669 = !DILocation(line: 833, column: 4, scope: !2667)
!2670 = !DILocation(line: 833, column: 24, scope: !2667)
!2671 = !DILocation(line: 833, column: 30, scope: !2667)
!2672 = !DILocation(line: 833, column: 34, scope: !2667)
!2673 = !DILocation(line: 833, column: 36, scope: !2667)
!2674 = !DILocation(line: 834, column: 17, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 834, column: 2)
!2676 = !DILocation(line: 834, column: 21, scope: !2675)
!2677 = !DILocation(line: 834, column: 4, scope: !2675)
!2678 = !DILocation(line: 834, column: 24, scope: !2675)
!2679 = !DILocation(line: 834, column: 39, scope: !2675)
!2680 = !DILocation(line: 834, column: 43, scope: !2675)
!2681 = !DILocation(line: 834, column: 45, scope: !2675)
!2682 = !DILocation(line: 836, column: 17, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 836, column: 2)
!2684 = !DILocation(line: 836, column: 21, scope: !2683)
!2685 = !DILocation(line: 836, column: 4, scope: !2683)
!2686 = !DILocation(line: 836, column: 24, scope: !2683)
!2687 = !DILocation(line: 836, column: 35, scope: !2683)
!2688 = !DILocation(line: 836, column: 39, scope: !2683)
!2689 = !DILocation(line: 836, column: 41, scope: !2683)
!2690 = !DILocation(line: 837, column: 17, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 837, column: 2)
!2692 = !DILocation(line: 837, column: 21, scope: !2691)
!2693 = !DILocation(line: 837, column: 4, scope: !2691)
!2694 = !DILocation(line: 837, column: 24, scope: !2691)
!2695 = !DILocation(line: 837, column: 30, scope: !2691)
!2696 = !DILocation(line: 837, column: 34, scope: !2691)
!2697 = !DILocation(line: 837, column: 36, scope: !2691)
!2698 = !DILocation(line: 838, column: 17, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 838, column: 2)
!2700 = !DILocation(line: 838, column: 21, scope: !2699)
!2701 = !DILocation(line: 838, column: 4, scope: !2699)
!2702 = !DILocation(line: 838, column: 24, scope: !2699)
!2703 = !DILocation(line: 838, column: 39, scope: !2699)
!2704 = !DILocation(line: 838, column: 43, scope: !2699)
!2705 = !DILocation(line: 838, column: 45, scope: !2699)
!2706 = !DILocation(line: 840, column: 17, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 840, column: 2)
!2708 = !DILocation(line: 840, column: 21, scope: !2707)
!2709 = !DILocation(line: 840, column: 4, scope: !2707)
!2710 = !DILocation(line: 840, column: 24, scope: !2707)
!2711 = !DILocation(line: 840, column: 35, scope: !2707)
!2712 = !DILocation(line: 840, column: 39, scope: !2707)
!2713 = !DILocation(line: 840, column: 41, scope: !2707)
!2714 = !DILocation(line: 841, column: 17, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 841, column: 2)
!2716 = !DILocation(line: 841, column: 21, scope: !2715)
!2717 = !DILocation(line: 841, column: 4, scope: !2715)
!2718 = !DILocation(line: 841, column: 24, scope: !2715)
!2719 = !DILocation(line: 841, column: 30, scope: !2715)
!2720 = !DILocation(line: 841, column: 34, scope: !2715)
!2721 = !DILocation(line: 841, column: 36, scope: !2715)
!2722 = !DILocation(line: 842, column: 17, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2500, file: !40, line: 842, column: 2)
!2724 = !DILocation(line: 842, column: 21, scope: !2723)
!2725 = !DILocation(line: 842, column: 4, scope: !2723)
!2726 = !DILocation(line: 842, column: 24, scope: !2723)
!2727 = !DILocation(line: 842, column: 39, scope: !2723)
!2728 = !DILocation(line: 842, column: 43, scope: !2723)
!2729 = !DILocation(line: 842, column: 45, scope: !2723)
!2730 = !DILocation(line: 844, column: 14, scope: !2500)
!2731 = !DILocation(line: 844, column: 18, scope: !2500)
!2732 = !DILocation(line: 844, column: 3, scope: !2500)
!2733 = !DILocation(line: 844, column: 7, scope: !2500)
!2734 = !DILocation(line: 844, column: 11, scope: !2500)
!2735 = !DILocation(line: 845, column: 15, scope: !2500)
!2736 = !DILocation(line: 845, column: 18, scope: !2500)
!2737 = !DILocation(line: 845, column: 2, scope: !2500)
!2738 = !DILocation(line: 846, column: 1, scope: !2500)
!2739 = distinct !DISubprogram(name: "rdpdr_handle_ok", scope: !40, file: !40, line: 126, type: !2740, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!171, !28, !66}
!2742 = !DILocalVariable(name: "device", arg: 1, scope: !2739, file: !40, line: 126, type: !28)
!2743 = !DILocation(line: 126, column: 24, scope: !2739)
!2744 = !DILocalVariable(name: "handle", arg: 2, scope: !2739, file: !40, line: 126, type: !66)
!2745 = !DILocation(line: 126, column: 44, scope: !2739)
!2746 = !DILocation(line: 128, column: 25, scope: !2739)
!2747 = !DILocation(line: 128, column: 10, scope: !2739)
!2748 = !DILocation(line: 128, column: 33, scope: !2739)
!2749 = !DILocation(line: 128, column: 2, scope: !2739)
!2750 = !DILocation(line: 134, column: 23, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !40, line: 134, column: 8)
!2752 = distinct !DILexicalBlock(scope: !2739, file: !40, line: 129, column: 2)
!2753 = !DILocation(line: 134, column: 8, scope: !2751)
!2754 = !DILocation(line: 134, column: 31, scope: !2751)
!2755 = !DILocation(line: 134, column: 41, scope: !2751)
!2756 = !DILocation(line: 134, column: 38, scope: !2751)
!2757 = !DILocation(line: 134, column: 8, scope: !2752)
!2758 = !DILocation(line: 135, column: 5, scope: !2751)
!2759 = !DILocation(line: 136, column: 4, scope: !2752)
!2760 = !DILocation(line: 138, column: 19, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2752, file: !40, line: 138, column: 8)
!2762 = !DILocation(line: 138, column: 8, scope: !2761)
!2763 = !DILocation(line: 138, column: 27, scope: !2761)
!2764 = !DILocation(line: 138, column: 40, scope: !2761)
!2765 = !DILocation(line: 138, column: 37, scope: !2761)
!2766 = !DILocation(line: 138, column: 8, scope: !2752)
!2767 = !DILocation(line: 139, column: 5, scope: !2761)
!2768 = !DILocation(line: 140, column: 4, scope: !2752)
!2769 = !DILocation(line: 142, column: 2, scope: !2739)
!2770 = !DILocation(line: 143, column: 1, scope: !2739)
!2771 = distinct !DISubprogram(name: "add_async_iorequest", scope: !40, file: !40, line: 147, type: !2772, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!171, !28, !28, !28, !28, !28, !54, !28, !28, !35, !28}
!2774 = !DILocalVariable(name: "device", arg: 1, scope: !2771, file: !40, line: 147, type: !28)
!2775 = !DILocation(line: 147, column: 28, scope: !2771)
!2776 = !DILocalVariable(name: "file", arg: 2, scope: !2771, file: !40, line: 147, type: !28)
!2777 = !DILocation(line: 147, column: 43, scope: !2771)
!2778 = !DILocalVariable(name: "id", arg: 3, scope: !2771, file: !40, line: 147, type: !28)
!2779 = !DILocation(line: 147, column: 56, scope: !2771)
!2780 = !DILocalVariable(name: "major", arg: 4, scope: !2771, file: !40, line: 147, type: !28)
!2781 = !DILocation(line: 147, column: 67, scope: !2771)
!2782 = !DILocalVariable(name: "length", arg: 5, scope: !2771, file: !40, line: 147, type: !28)
!2783 = !DILocation(line: 147, column: 81, scope: !2771)
!2784 = !DILocalVariable(name: "fns", arg: 6, scope: !2771, file: !40, line: 148, type: !54)
!2785 = !DILocation(line: 148, column: 20, scope: !2771)
!2786 = !DILocalVariable(name: "total_timeout", arg: 7, scope: !2771, file: !40, line: 148, type: !28)
!2787 = !DILocation(line: 148, column: 32, scope: !2771)
!2788 = !DILocalVariable(name: "interval_timeout", arg: 8, scope: !2771, file: !40, line: 148, type: !28)
!2789 = !DILocation(line: 148, column: 54, scope: !2771)
!2790 = !DILocalVariable(name: "buffer", arg: 9, scope: !2771, file: !40, line: 148, type: !35)
!2791 = !DILocation(line: 148, column: 80, scope: !2771)
!2792 = !DILocalVariable(name: "offset", arg: 10, scope: !2771, file: !40, line: 149, type: !28)
!2793 = !DILocation(line: 149, column: 14, scope: !2771)
!2794 = !DILocalVariable(name: "iorq", scope: !2771, file: !40, line: 151, type: !38)
!2795 = !DILocation(line: 151, column: 26, scope: !2771)
!2796 = !DILocation(line: 153, column: 6, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2771, file: !40, line: 153, column: 6)
!2798 = !DILocation(line: 153, column: 18, scope: !2797)
!2799 = !DILocation(line: 153, column: 6, scope: !2771)
!2800 = !DILocation(line: 155, column: 44, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2797, file: !40, line: 154, column: 2)
!2802 = !DILocation(line: 155, column: 17, scope: !2801)
!2803 = !DILocation(line: 155, column: 15, scope: !2801)
!2804 = !DILocation(line: 156, column: 8, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2801, file: !40, line: 156, column: 7)
!2806 = !DILocation(line: 156, column: 7, scope: !2801)
!2807 = !DILocation(line: 157, column: 4, scope: !2805)
!2808 = !DILocation(line: 158, column: 3, scope: !2801)
!2809 = !DILocation(line: 158, column: 16, scope: !2801)
!2810 = !DILocation(line: 158, column: 19, scope: !2801)
!2811 = !DILocation(line: 159, column: 3, scope: !2801)
!2812 = !DILocation(line: 159, column: 16, scope: !2801)
!2813 = !DILocation(line: 159, column: 21, scope: !2801)
!2814 = !DILocation(line: 160, column: 2, scope: !2801)
!2815 = !DILocation(line: 162, column: 9, scope: !2771)
!2816 = !DILocation(line: 162, column: 7, scope: !2771)
!2817 = !DILocation(line: 164, column: 2, scope: !2771)
!2818 = !DILocation(line: 164, column: 9, scope: !2819)
!2819 = !DILexicalBlockFile(scope: !2771, file: !40, discriminator: 1)
!2820 = !DILocation(line: 164, column: 15, scope: !2819)
!2821 = !DILocation(line: 164, column: 18, scope: !2819)
!2822 = !DILocation(line: 164, column: 2, scope: !2819)
!2823 = !DILocation(line: 167, column: 7, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !40, line: 167, column: 7)
!2825 = distinct !DILexicalBlock(scope: !2771, file: !40, line: 165, column: 2)
!2826 = !DILocation(line: 167, column: 13, scope: !2824)
!2827 = !DILocation(line: 167, column: 18, scope: !2824)
!2828 = !DILocation(line: 167, column: 7, scope: !2825)
!2829 = !DILocation(line: 170, column: 32, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2824, file: !40, line: 168, column: 3)
!2831 = !DILocation(line: 170, column: 5, scope: !2830)
!2832 = !DILocation(line: 169, column: 4, scope: !2830)
!2833 = !DILocation(line: 169, column: 10, scope: !2830)
!2834 = !DILocation(line: 169, column: 15, scope: !2830)
!2835 = !DILocation(line: 171, column: 9, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2830, file: !40, line: 171, column: 8)
!2837 = !DILocation(line: 171, column: 15, scope: !2836)
!2838 = !DILocation(line: 171, column: 8, scope: !2830)
!2839 = !DILocation(line: 172, column: 5, scope: !2836)
!2840 = !DILocation(line: 173, column: 4, scope: !2830)
!2841 = !DILocation(line: 173, column: 10, scope: !2830)
!2842 = !DILocation(line: 173, column: 16, scope: !2830)
!2843 = !DILocation(line: 173, column: 19, scope: !2830)
!2844 = !DILocation(line: 174, column: 4, scope: !2830)
!2845 = !DILocation(line: 174, column: 10, scope: !2830)
!2846 = !DILocation(line: 174, column: 16, scope: !2830)
!2847 = !DILocation(line: 174, column: 21, scope: !2830)
!2848 = !DILocation(line: 175, column: 3, scope: !2830)
!2849 = !DILocation(line: 176, column: 10, scope: !2825)
!2850 = !DILocation(line: 176, column: 16, scope: !2825)
!2851 = !DILocation(line: 176, column: 8, scope: !2825)
!2852 = !DILocation(line: 164, column: 2, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !2771, file: !40, discriminator: 2)
!2854 = distinct !{!2854, !2817}
!2855 = !DILocation(line: 178, column: 17, scope: !2771)
!2856 = !DILocation(line: 178, column: 2, scope: !2771)
!2857 = !DILocation(line: 178, column: 8, scope: !2771)
!2858 = !DILocation(line: 178, column: 15, scope: !2771)
!2859 = !DILocation(line: 179, column: 13, scope: !2771)
!2860 = !DILocation(line: 179, column: 2, scope: !2771)
!2861 = !DILocation(line: 179, column: 8, scope: !2771)
!2862 = !DILocation(line: 179, column: 11, scope: !2771)
!2863 = !DILocation(line: 180, column: 13, scope: !2771)
!2864 = !DILocation(line: 180, column: 2, scope: !2771)
!2865 = !DILocation(line: 180, column: 8, scope: !2771)
!2866 = !DILocation(line: 180, column: 11, scope: !2771)
!2867 = !DILocation(line: 181, column: 16, scope: !2771)
!2868 = !DILocation(line: 181, column: 2, scope: !2771)
!2869 = !DILocation(line: 181, column: 8, scope: !2771)
!2870 = !DILocation(line: 181, column: 14, scope: !2771)
!2871 = !DILocation(line: 182, column: 17, scope: !2771)
!2872 = !DILocation(line: 182, column: 2, scope: !2771)
!2873 = !DILocation(line: 182, column: 8, scope: !2771)
!2874 = !DILocation(line: 182, column: 15, scope: !2771)
!2875 = !DILocation(line: 183, column: 2, scope: !2771)
!2876 = !DILocation(line: 183, column: 8, scope: !2771)
!2877 = !DILocation(line: 183, column: 20, scope: !2771)
!2878 = !DILocation(line: 184, column: 14, scope: !2771)
!2879 = !DILocation(line: 184, column: 2, scope: !2771)
!2880 = !DILocation(line: 184, column: 8, scope: !2771)
!2881 = !DILocation(line: 184, column: 12, scope: !2771)
!2882 = !DILocation(line: 185, column: 18, scope: !2771)
!2883 = !DILocation(line: 185, column: 2, scope: !2771)
!2884 = !DILocation(line: 185, column: 8, scope: !2771)
!2885 = !DILocation(line: 185, column: 16, scope: !2771)
!2886 = !DILocation(line: 186, column: 22, scope: !2771)
!2887 = !DILocation(line: 186, column: 2, scope: !2771)
!2888 = !DILocation(line: 186, column: 8, scope: !2771)
!2889 = !DILocation(line: 186, column: 20, scope: !2771)
!2890 = !DILocation(line: 187, column: 17, scope: !2771)
!2891 = !DILocation(line: 187, column: 2, scope: !2771)
!2892 = !DILocation(line: 187, column: 8, scope: !2771)
!2893 = !DILocation(line: 187, column: 15, scope: !2771)
!2894 = !DILocation(line: 188, column: 17, scope: !2771)
!2895 = !DILocation(line: 188, column: 2, scope: !2771)
!2896 = !DILocation(line: 188, column: 8, scope: !2771)
!2897 = !DILocation(line: 188, column: 15, scope: !2771)
!2898 = !DILocation(line: 189, column: 2, scope: !2771)
!2899 = !DILocation(line: 190, column: 1, scope: !2771)
!2900 = distinct !DISubprogram(name: "announcedata_size", scope: !40, file: !40, line: 238, type: !2901, isLocal: true, isDefinition: true, scopeLine: 239, isOptimized: false, unit: !0, variables: !213)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!158}
!2903 = !DILocalVariable(name: "size", scope: !2900, file: !40, line: 240, type: !158)
!2904 = !DILocation(line: 240, column: 9, scope: !2900)
!2905 = !DILocalVariable(name: "i", scope: !2900, file: !40, line: 240, type: !158)
!2906 = !DILocation(line: 240, column: 15, scope: !2900)
!2907 = !DILocalVariable(name: "printerinfo", scope: !2900, file: !40, line: 241, type: !104)
!2908 = !DILocation(line: 241, column: 11, scope: !2900)
!2909 = !DILocalVariable(name: "diskinfo", scope: !2900, file: !40, line: 242, type: !96)
!2910 = !DILocation(line: 242, column: 15, scope: !2900)
!2911 = !DILocation(line: 244, column: 7, scope: !2900)
!2912 = !DILocation(line: 246, column: 9, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2900, file: !40, line: 246, column: 2)
!2914 = !DILocation(line: 246, column: 7, scope: !2913)
!2915 = !DILocation(line: 246, column: 14, scope: !2916)
!2916 = !DILexicalBlockFile(scope: !2917, file: !40, discriminator: 1)
!2917 = distinct !DILexicalBlock(scope: !2913, file: !40, line: 246, column: 2)
!2918 = !DILocation(line: 246, column: 18, scope: !2916)
!2919 = !DILocation(line: 246, column: 16, scope: !2916)
!2920 = !DILocation(line: 246, column: 2, scope: !2916)
!2921 = !DILocation(line: 248, column: 8, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2917, file: !40, line: 247, column: 2)
!2923 = !DILocation(line: 249, column: 8, scope: !2922)
!2924 = !DILocation(line: 250, column: 8, scope: !2922)
!2925 = !DILocation(line: 251, column: 8, scope: !2922)
!2926 = !DILocation(line: 253, column: 26, scope: !2922)
!2927 = !DILocation(line: 253, column: 11, scope: !2922)
!2928 = !DILocation(line: 253, column: 29, scope: !2922)
!2929 = !DILocation(line: 253, column: 3, scope: !2922)
!2930 = !DILocation(line: 256, column: 47, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2922, file: !40, line: 254, column: 3)
!2932 = !DILocation(line: 256, column: 32, scope: !2931)
!2933 = !DILocation(line: 256, column: 50, scope: !2931)
!2934 = !DILocation(line: 256, column: 16, scope: !2931)
!2935 = !DILocation(line: 256, column: 14, scope: !2931)
!2936 = !DILocation(line: 257, column: 24, scope: !2931)
!2937 = !DILocation(line: 257, column: 34, scope: !2931)
!2938 = !DILocation(line: 257, column: 17, scope: !2931)
!2939 = !DILocation(line: 257, column: 15, scope: !2931)
!2940 = !DILocation(line: 257, column: 40, scope: !2931)
!2941 = !DILocation(line: 257, column: 10, scope: !2931)
!2942 = !DILocation(line: 258, column: 5, scope: !2931)
!2943 = !DILocation(line: 260, column: 46, scope: !2931)
!2944 = !DILocation(line: 260, column: 31, scope: !2931)
!2945 = !DILocation(line: 260, column: 49, scope: !2931)
!2946 = !DILocation(line: 260, column: 19, scope: !2931)
!2947 = !DILocation(line: 260, column: 17, scope: !2931)
!2948 = !DILocation(line: 262, column: 29, scope: !2931)
!2949 = !DILocation(line: 262, column: 42, scope: !2931)
!2950 = !DILocation(line: 263, column: 17, scope: !2931)
!2951 = !DILocation(line: 263, column: 30, scope: !2931)
!2952 = !DILocation(line: 262, column: 6, scope: !2931)
!2953 = !DILocation(line: 261, column: 5, scope: !2931)
!2954 = !DILocation(line: 261, column: 18, scope: !2931)
!2955 = !DILocation(line: 261, column: 26, scope: !2931)
!2956 = !DILocation(line: 265, column: 10, scope: !2931)
!2957 = !DILocation(line: 266, column: 24, scope: !2931)
!2958 = !DILocation(line: 266, column: 37, scope: !2931)
!2959 = !DILocation(line: 266, column: 17, scope: !2931)
!2960 = !DILocation(line: 266, column: 15, scope: !2931)
!2961 = !DILocation(line: 266, column: 45, scope: !2931)
!2962 = !DILocation(line: 266, column: 10, scope: !2931)
!2963 = !DILocation(line: 267, column: 24, scope: !2931)
!2964 = !DILocation(line: 267, column: 37, scope: !2931)
!2965 = !DILocation(line: 267, column: 17, scope: !2931)
!2966 = !DILocation(line: 267, column: 15, scope: !2931)
!2967 = !DILocation(line: 267, column: 46, scope: !2931)
!2968 = !DILocation(line: 267, column: 10, scope: !2931)
!2969 = !DILocation(line: 268, column: 13, scope: !2931)
!2970 = !DILocation(line: 268, column: 26, scope: !2931)
!2971 = !DILocation(line: 268, column: 10, scope: !2931)
!2972 = !DILocation(line: 269, column: 5, scope: !2931)
!2973 = !DILocation(line: 271, column: 5, scope: !2931)
!2974 = !DILocation(line: 273, column: 2, scope: !2922)
!2975 = !DILocation(line: 246, column: 34, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2917, file: !40, discriminator: 2)
!2977 = !DILocation(line: 246, column: 2, scope: !2976)
!2978 = distinct !{!2978, !2979}
!2979 = !DILocation(line: 246, column: 2, scope: !2900)
!2980 = !DILocation(line: 275, column: 9, scope: !2900)
!2981 = !DILocation(line: 275, column: 2, scope: !2900)
