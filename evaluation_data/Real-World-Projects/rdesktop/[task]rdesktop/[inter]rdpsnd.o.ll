; ModuleID = './[inter]rdpsnd.o.i'
source_filename = "./[inter]rdpsnd.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.audio_driver = type { void (i32*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*)*, void (%struct.fd_set*, %struct.fd_set*)*, i32 ()*, void ()*, i32 (%struct._RD_WAVEFORMATEX*)*, i32 (%struct._RD_WAVEFORMATEX*)*, void (i16, i16)*, i32 ()*, void ()*, i32 (%struct._RD_WAVEFORMATEX*)*, i32 (%struct._RD_WAVEFORMATEX*)*, void (i16, i16)*, i8*, i8*, i32, i32, %struct.audio_driver* }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct._RD_WAVEFORMATEX = type { i16, i16, i32, i32, i16, i16, i16, [256 x i8] }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct._VCHANNEL = type { i16, [8 x i8], i32, %struct.stream, void (%struct.stream*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.audio_packet = type { %struct.stream, i16, i8, %struct.timeval, %struct.timeval }
%struct.timezone = type { i32, i32 }

@current_driver = global %struct.audio_driver* null, align 8
@drivers = internal global %struct.audio_driver* null, align 8
@packet = internal global %struct.stream zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"rdpsnd\00", align 1
@rdpsnd_channel = internal global %struct._VCHANNEL* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"snddbg\00", align 1
@rdpsnddbg_channel = internal global %struct._VCHANNEL* null, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"rdpsnd_init(), failed to register rdpsnd / snddbg virtual channels\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"rdpsnd_init(), using driver '%s'\00", align 1
@device_open = internal global i32 0, align 4
@rdpsnd_negotiated = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"                     %s:\09%s\0A\00", align 1
@queue_lo = common global i32 0, align 4
@packet_queue = common global [50 x %struct.audio_packet] zeroinitializer, align 16
@queue_hi = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"!rdpsnd_queue_empty()\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"rdpsnd.c\00", align 1
@__PRETTY_FUNCTION__.rdpsnd_queue_next = private unnamed_addr constant [38 x i8] c"void rdpsnd_queue_next(unsigned long)\00", align 1
@queue_pending = common global i32 0, align 4
@wave_out_play = common global void ()* null, align 8
@.str.7 = private unnamed_addr constant [76 x i8] c"rdpsnd_process(), split at packet header, things will go south from here...\00", align 1
@packet_opcode = internal global i8 0, align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"rdpsnd_process(), Opcode = 0x%x Length= %d\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"rdpsnd_process(), eating 4 bytes of %d bytes...\00", align 1
@rdpsnd_process_packet.tick = internal global i16 0, align 2
@rdpsnd_process_packet.format = internal global i16 0, align 2
@rdpsnd_process_packet.packet_index = internal global i8 0, align 1
@.str.10 = private unnamed_addr constant [88 x i8] c"rdpsnd_process_packet(), RDPSND_WRITE(tick: %u, format: %u, index: %u, data: %u bytes)\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"rdpsnd_process_packet(), invalid format index\00", align 1
@current_format = internal global i32 0, align 4
@formats = internal global [10 x %struct._RD_WAVEFORMATEX] zeroinitializer, align 16
@.str.12 = private unnamed_addr constant [38 x i8] c"rdpsnd_process_packet(), SNDC_CLOSE()\00", align 1
@.str.13 = private unnamed_addr constant [85 x i8] c"rdpsnd_process_packet(), SNDC_SETVOLUME(left: 0x%04x (%u %%), right: 0x%04x (%u %%))\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"rdpsnd_process_packet(), Unhandled opcode 0x%x\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"rdpsnd_send_waveconfirm(), tick=%u, index=%u\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"rdpsnd_queue_write(), no space to queue audio packet\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"rdpsnd_process_negotiate(), formats = %d, pad = 0x%02x, version = 0x%x\00", align 1
@g_rdpsnd = external global i32, align 4
@format_count = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [60 x i8] c"rdpsnd_process_negotiate(), cbSize too large for buffer: %d\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"rdpsnd_process_negotiate(), %d formats available\00", align 1
@rdpsnd_auto_select.failed = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [41 x i8] c"rdpsnd_auto_select(), trying driver '%s'\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"rdpsnd_auto_select(), using driver '%s'\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"no working audio-driver found\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"rdpsnd_process_training(), tick=0x%04x\00", align 1
@rdpsnddbg_process.rest = internal global i8* null, align 8
@.str.24 = private unnamed_addr constant [31 x i8] c"rdpsnddbg_line_handler(), \22%s\22\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"*reg\00", align 1
@__PRETTY_FUNCTION__.rdpsnd_register_drivers = private unnamed_addr constant [37 x i8] c"void rdpsnd_register_drivers(char *)\00", align 1

; Function Attrs: nounwind uwtable
define void @rdpsnd_record(i8*, i32) #0 !dbg !188 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !193, metadata !194), !dbg !195
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !196, metadata !194), !dbg !197
  %5 = load i8*, i8** %3, align 8, !dbg !198
  %6 = load i32, i32* %4, align 4, !dbg !199
  ret void, !dbg !200
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @rdpsnd_init(i8*) #0 !dbg !201 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.audio_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !204, metadata !194), !dbg !205
  call void @llvm.dbg.declare(metadata %struct.audio_driver** %4, metadata !206, metadata !194), !dbg !207
  call void @llvm.dbg.declare(metadata i8** %5, metadata !208, metadata !194), !dbg !209
  store i8* null, i8** %5, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i8** %6, metadata !210, metadata !194), !dbg !211
  store i8* null, i8** %6, align 8, !dbg !211
  store %struct.audio_driver* null, %struct.audio_driver** @drivers, align 8, !dbg !212
  %7 = call i8* @xmalloc(i32 65536), !dbg !213
  store i8* %7, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 2), align 8, !dbg !214
  %8 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 2), align 8, !dbg !215
  store i8* %8, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 1), align 8, !dbg !216
  store i8* %8, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !217
  store i32 0, i32* getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 3), align 8, !dbg !218
  %9 = call %struct._VCHANNEL* @channel_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 -1073741824, void (%struct.stream*)* @rdpsnd_process), !dbg !219
  store %struct._VCHANNEL* %9, %struct._VCHANNEL** @rdpsnd_channel, align 8, !dbg !220
  %10 = call %struct._VCHANNEL* @channel_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 -1073741824, void (%struct.stream*)* @rdpsnddbg_process), !dbg !221
  store %struct._VCHANNEL* %10, %struct._VCHANNEL** @rdpsnddbg_channel, align 8, !dbg !222
  %11 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpsnd_channel, align 8, !dbg !223
  %12 = icmp eq %struct._VCHANNEL* %11, null, !dbg !225
  br i1 %12, label %16, label %13, !dbg !226

; <label>:13:                                     ; preds = %1
  %14 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpsnddbg_channel, align 8, !dbg !227
  %15 = icmp eq %struct._VCHANNEL* %14, null, !dbg !229
  br i1 %15, label %16, label %17, !dbg !230

; <label>:16:                                     ; preds = %13, %1
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i32 0, i32 0)), !dbg !231
  store i32 0, i32* %2, align 4, !dbg !233
  br label %84, !dbg !233

; <label>:17:                                     ; preds = %13
  call void @rdpsnd_queue_init(), !dbg !234
  %18 = load i8*, i8** %3, align 8, !dbg !235
  %19 = icmp ne i8* %18, null, !dbg !237
  br i1 %19, label %20, label %57, !dbg !238

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %3, align 8, !dbg !239
  %22 = call i64 @strlen(i8* %21) #7, !dbg !241
  %23 = icmp ugt i64 %22, 0, !dbg !242
  br i1 %23, label %24, label %57, !dbg !243

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %3, align 8, !dbg !244
  store i8* %25, i8** %6, align 8, !dbg !246
  store i8* %25, i8** %5, align 8, !dbg !247
  br label %26, !dbg !248

; <label>:26:                                     ; preds = %38, %24
  %27 = load i8*, i8** %6, align 8, !dbg !249
  %28 = load i8, i8* %27, align 1, !dbg !251
  %29 = sext i8 %28 to i32, !dbg !251
  %30 = icmp ne i32 %29, 0, !dbg !252
  br i1 %30, label %31, label %36, !dbg !253

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %6, align 8, !dbg !254
  %33 = load i8, i8* %32, align 1, !dbg !256
  %34 = sext i8 %33 to i32, !dbg !256
  %35 = icmp ne i32 %34, 58, !dbg !257
  br label %36

; <label>:36:                                     ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %41, !dbg !258

; <label>:38:                                     ; preds = %36
  %39 = load i8*, i8** %6, align 8, !dbg !260
  %40 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !260
  store i8* %40, i8** %6, align 8, !dbg !260
  br label %26, !dbg !261, !llvm.loop !263

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %6, align 8, !dbg !264
  %43 = load i8, i8* %42, align 1, !dbg !266
  %44 = sext i8 %43 to i32, !dbg !266
  %45 = icmp eq i32 %44, 58, !dbg !267
  br i1 %45, label %46, label %50, !dbg !268

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %6, align 8, !dbg !269
  store i8 0, i8* %47, align 1, !dbg !271
  %48 = load i8*, i8** %6, align 8, !dbg !272
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !272
  store i8* %49, i8** %6, align 8, !dbg !272
  br label %50, !dbg !273

; <label>:50:                                     ; preds = %46, %41
  %51 = load i8*, i8** %6, align 8, !dbg !274
  %52 = load i8, i8* %51, align 1, !dbg !276
  %53 = sext i8 %52 to i32, !dbg !276
  %54 = icmp eq i32 %53, 0, !dbg !277
  br i1 %54, label %55, label %56, !dbg !278

; <label>:55:                                     ; preds = %50
  store i8* null, i8** %6, align 8, !dbg !279
  br label %56, !dbg !280

; <label>:56:                                     ; preds = %55, %50
  br label %57, !dbg !281

; <label>:57:                                     ; preds = %56, %20, %17
  %58 = load i8*, i8** %6, align 8, !dbg !282
  call void @rdpsnd_register_drivers(i8* %58), !dbg !283
  %59 = load i8*, i8** %5, align 8, !dbg !284
  %60 = icmp ne i8* %59, null, !dbg !284
  br i1 %60, label %62, label %61, !dbg !286

; <label>:61:                                     ; preds = %57
  store i32 1, i32* %2, align 4, !dbg !287
  br label %84, !dbg !287

; <label>:62:                                     ; preds = %57
  %63 = load %struct.audio_driver*, %struct.audio_driver** @drivers, align 8, !dbg !288
  store %struct.audio_driver* %63, %struct.audio_driver** %4, align 8, !dbg !289
  br label %64, !dbg !290

; <label>:64:                                     ; preds = %79, %62
  %65 = load %struct.audio_driver*, %struct.audio_driver** %4, align 8, !dbg !291
  %66 = icmp ne %struct.audio_driver* %65, null, !dbg !293
  br i1 %66, label %67, label %83, !dbg !294

; <label>:67:                                     ; preds = %64
  %68 = load %struct.audio_driver*, %struct.audio_driver** %4, align 8, !dbg !295
  %69 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %68, i32 0, i32 12, !dbg !298
  %70 = load i8*, i8** %69, align 8, !dbg !298
  %71 = load i8*, i8** %5, align 8, !dbg !299
  %72 = call i32 @strcmp(i8* %70, i8* %71) #7, !dbg !300
  %73 = icmp ne i32 %72, 0, !dbg !300
  br i1 %73, label %79, label %74, !dbg !301

; <label>:74:                                     ; preds = %67
  %75 = load %struct.audio_driver*, %struct.audio_driver** %4, align 8, !dbg !302
  %76 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %75, i32 0, i32 12, !dbg !304
  %77 = load i8*, i8** %76, align 8, !dbg !304
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* %77), !dbg !305
  %78 = load %struct.audio_driver*, %struct.audio_driver** %4, align 8, !dbg !306
  store %struct.audio_driver* %78, %struct.audio_driver** @current_driver, align 8, !dbg !307
  store i32 1, i32* %2, align 4, !dbg !308
  br label %84, !dbg !308

; <label>:79:                                     ; preds = %67
  %80 = load %struct.audio_driver*, %struct.audio_driver** %4, align 8, !dbg !309
  %81 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %80, i32 0, i32 16, !dbg !310
  %82 = load %struct.audio_driver*, %struct.audio_driver** %81, align 8, !dbg !310
  store %struct.audio_driver* %82, %struct.audio_driver** %4, align 8, !dbg !311
  br label %64, !dbg !312, !llvm.loop !314

; <label>:83:                                     ; preds = %64
  store i32 0, i32* %2, align 4, !dbg !315
  br label %84, !dbg !315

; <label>:84:                                     ; preds = %83, %74, %61, %16
  %85 = load i32, i32* %2, align 4, !dbg !316
  ret i32 %85, !dbg !316
}

declare i8* @xmalloc(i32) #2

declare %struct._VCHANNEL* @channel_register(i8*, i32, void (%struct.stream*)*) #2

; Function Attrs: nounwind uwtable
define internal void @rdpsnd_process(%struct.stream*) #0 !dbg !317 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !318, metadata !194), !dbg !319
  call void @llvm.dbg.declare(metadata i16* %3, metadata !320, metadata !194), !dbg !321
  br label %4, !dbg !322

; <label>:4:                                      ; preds = %173, %1
  %5 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !323
  %6 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !325
  %7 = load i8*, i8** %6, align 8, !dbg !325
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !326
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 1, !dbg !327
  %10 = load i8*, i8** %9, align 8, !dbg !327
  %11 = icmp eq i8* %7, %10, !dbg !328
  %12 = xor i1 %11, true, !dbg !329
  br i1 %12, label %13, label %174, !dbg !330

; <label>:13:                                     ; preds = %4
  %14 = load i32, i32* getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 3), align 8, !dbg !331
  %15 = icmp eq i32 %14, 0, !dbg !334
  br i1 %15, label %16, label %59, !dbg !335

; <label>:16:                                     ; preds = %13
  %17 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !336
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 1, !dbg !339
  %19 = load i8*, i8** %18, align 8, !dbg !339
  %20 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !340
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !341
  %22 = load i8*, i8** %21, align 8, !dbg !341
  %23 = ptrtoint i8* %19 to i64, !dbg !342
  %24 = ptrtoint i8* %22 to i64, !dbg !342
  %25 = sub i64 %23, %24, !dbg !342
  %26 = icmp slt i64 %25, 4, !dbg !343
  br i1 %26, label %27, label %28, !dbg !344

; <label>:27:                                     ; preds = %16
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i32 0, i32 0)), !dbg !345
  br label %174, !dbg !347

; <label>:28:                                     ; preds = %16
  %29 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !348
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !349
  %31 = load i8*, i8** %30, align 8, !dbg !350
  %32 = getelementptr inbounds i8, i8* %31, i32 1, !dbg !350
  store i8* %32, i8** %30, align 8, !dbg !350
  %33 = load i8, i8* %31, align 1, !dbg !351
  store i8 %33, i8* @packet_opcode, align 1, !dbg !352
  %34 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !353
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !354
  %36 = load i8*, i8** %35, align 8, !dbg !355
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !355
  store i8* %37, i8** %35, align 8, !dbg !355
  %38 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !356
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !358
  %40 = load i8*, i8** %39, align 8, !dbg !358
  %41 = bitcast i8* %40 to i16*, !dbg !359
  %42 = load i16, i16* %41, align 2, !dbg !359
  store i16 %42, i16* %3, align 2, !dbg !360
  %43 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !361
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !362
  %45 = load i8*, i8** %44, align 8, !dbg !363
  %46 = getelementptr inbounds i8, i8* %45, i64 2, !dbg !363
  store i8* %46, i8** %44, align 8, !dbg !363
  %47 = load i8, i8* @packet_opcode, align 1, !dbg !364
  %48 = zext i8 %47 to i32, !dbg !365
  %49 = load i16, i16* %3, align 2, !dbg !366
  %50 = zext i16 %49 to i32, !dbg !367
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i32 %48, i32 %50), !dbg !368
  %51 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 2), align 8, !dbg !369
  store i8* %51, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !370
  %52 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 2), align 8, !dbg !371
  %53 = load i16, i16* %3, align 2, !dbg !372
  %54 = zext i16 %53 to i32, !dbg !372
  %55 = sext i32 %54 to i64, !dbg !373
  %56 = getelementptr inbounds i8, i8* %52, i64 %55, !dbg !373
  store i8* %56, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 1), align 8, !dbg !374
  %57 = load i16, i16* %3, align 2, !dbg !375
  %58 = zext i16 %57 to i32, !dbg !375
  store i32 %58, i32* getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 3), align 8, !dbg !376
  br label %166, !dbg !377

; <label>:59:                                     ; preds = %13
  %60 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !378
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 1, !dbg !380
  %62 = load i8*, i8** %61, align 8, !dbg !380
  %63 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !381
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !382
  %65 = load i8*, i8** %64, align 8, !dbg !382
  %66 = ptrtoint i8* %62 to i64, !dbg !383
  %67 = ptrtoint i8* %65 to i64, !dbg !383
  %68 = sub i64 %66, %67, !dbg !383
  %69 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 1), align 8, !dbg !384
  %70 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !385
  %71 = ptrtoint i8* %69 to i64, !dbg !386
  %72 = ptrtoint i8* %70 to i64, !dbg !386
  %73 = sub i64 %71, %72, !dbg !386
  %74 = icmp slt i64 %68, %73, !dbg !387
  br i1 %74, label %75, label %85, !dbg !388

; <label>:75:                                     ; preds = %59
  %76 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !389
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 1, !dbg !391
  %78 = load i8*, i8** %77, align 8, !dbg !391
  %79 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !392
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !393
  %81 = load i8*, i8** %80, align 8, !dbg !393
  %82 = ptrtoint i8* %78 to i64, !dbg !394
  %83 = ptrtoint i8* %81 to i64, !dbg !394
  %84 = sub i64 %82, %83, !dbg !394
  br label %91, !dbg !395

; <label>:85:                                     ; preds = %59
  %86 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 1), align 8, !dbg !396
  %87 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !398
  %88 = ptrtoint i8* %86 to i64, !dbg !399
  %89 = ptrtoint i8* %87 to i64, !dbg !399
  %90 = sub i64 %88, %89, !dbg !399
  br label %91, !dbg !400

; <label>:91:                                     ; preds = %85, %75
  %92 = phi i64 [ %84, %75 ], [ %90, %85 ], !dbg !401
  %93 = trunc i64 %92 to i16, !dbg !403
  store i16 %93, i16* %3, align 2, !dbg !404
  %94 = load i8, i8* @packet_opcode, align 1, !dbg !405
  %95 = zext i8 %94 to i32, !dbg !405
  %96 = icmp eq i32 %95, 2, !dbg !407
  br i1 %96, label %97, label %147, !dbg !408

; <label>:97:                                     ; preds = %91
  %98 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !409
  %99 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 2), align 8, !dbg !412
  %100 = ptrtoint i8* %98 to i64, !dbg !413
  %101 = ptrtoint i8* %99 to i64, !dbg !413
  %102 = sub i64 %100, %101, !dbg !413
  %103 = icmp slt i64 %102, 12, !dbg !414
  br i1 %103, label %104, label %127, !dbg !415

; <label>:104:                                    ; preds = %97
  %105 = load i16, i16* %3, align 2, !dbg !416
  %106 = zext i16 %105 to i64, !dbg !417
  %107 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !418
  %108 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 2), align 8, !dbg !419
  %109 = ptrtoint i8* %107 to i64, !dbg !420
  %110 = ptrtoint i8* %108 to i64, !dbg !420
  %111 = sub i64 %109, %110, !dbg !420
  %112 = sub nsw i64 12, %111, !dbg !421
  %113 = icmp slt i64 %106, %112, !dbg !422
  br i1 %113, label %114, label %117, !dbg !423

; <label>:114:                                    ; preds = %104
  %115 = load i16, i16* %3, align 2, !dbg !424
  %116 = zext i16 %115 to i64, !dbg !426
  br label %124, !dbg !427

; <label>:117:                                    ; preds = %104
  %118 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !428
  %119 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 2), align 8, !dbg !430
  %120 = ptrtoint i8* %118 to i64, !dbg !431
  %121 = ptrtoint i8* %119 to i64, !dbg !431
  %122 = sub i64 %120, %121, !dbg !431
  %123 = sub nsw i64 12, %122, !dbg !432
  br label %124, !dbg !433

; <label>:124:                                    ; preds = %117, %114
  %125 = phi i64 [ %116, %114 ], [ %123, %117 ], !dbg !434
  %126 = trunc i64 %125 to i16, !dbg !436
  store i16 %126, i16* %3, align 2, !dbg !437
  br label %146, !dbg !438

; <label>:127:                                    ; preds = %97
  %128 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !439
  %129 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 2), align 8, !dbg !441
  %130 = ptrtoint i8* %128 to i64, !dbg !442
  %131 = ptrtoint i8* %129 to i64, !dbg !442
  %132 = sub i64 %130, %131, !dbg !442
  %133 = icmp eq i64 %132, 12, !dbg !443
  br i1 %133, label %134, label %145, !dbg !444

; <label>:134:                                    ; preds = %127
  %135 = load i16, i16* %3, align 2, !dbg !445
  %136 = zext i16 %135 to i32, !dbg !445
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), i32 %136), !dbg !447
  %137 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !448
  %138 = getelementptr inbounds %struct.stream, %struct.stream* %137, i32 0, i32 0, !dbg !449
  %139 = load i8*, i8** %138, align 8, !dbg !450
  %140 = getelementptr inbounds i8, i8* %139, i64 4, !dbg !450
  store i8* %140, i8** %138, align 8, !dbg !450
  %141 = load i16, i16* %3, align 2, !dbg !451
  %142 = zext i16 %141 to i32, !dbg !451
  %143 = sub nsw i32 %142, 4, !dbg !451
  %144 = trunc i32 %143 to i16, !dbg !451
  store i16 %144, i16* %3, align 2, !dbg !451
  br label %145, !dbg !452

; <label>:145:                                    ; preds = %134, %127
  br label %146

; <label>:146:                                    ; preds = %145, %124
  br label %147, !dbg !453

; <label>:147:                                    ; preds = %146, %91
  %148 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !454
  %149 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !456
  %150 = getelementptr inbounds %struct.stream, %struct.stream* %149, i32 0, i32 0, !dbg !457
  %151 = load i8*, i8** %150, align 8, !dbg !457
  %152 = load i16, i16* %3, align 2, !dbg !458
  %153 = zext i16 %152 to i64, !dbg !458
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* %151, i64 %153, i32 1, i1 false), !dbg !459
  %154 = load i16, i16* %3, align 2, !dbg !460
  %155 = zext i16 %154 to i32, !dbg !460
  %156 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !461
  %157 = getelementptr inbounds %struct.stream, %struct.stream* %156, i32 0, i32 0, !dbg !462
  %158 = load i8*, i8** %157, align 8, !dbg !463
  %159 = sext i32 %155 to i64, !dbg !463
  %160 = getelementptr inbounds i8, i8* %158, i64 %159, !dbg !463
  store i8* %160, i8** %157, align 8, !dbg !463
  %161 = load i16, i16* %3, align 2, !dbg !464
  %162 = zext i16 %161 to i32, !dbg !464
  %163 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !465
  %164 = sext i32 %162 to i64, !dbg !465
  %165 = getelementptr inbounds i8, i8* %163, i64 %164, !dbg !465
  store i8* %165, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !465
  br label %166

; <label>:166:                                    ; preds = %147, %28
  %167 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !466
  %168 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 1), align 8, !dbg !468
  %169 = icmp eq i8* %167, %168, !dbg !469
  br i1 %169, label %170, label %173, !dbg !470

; <label>:170:                                    ; preds = %166
  %171 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 2), align 8, !dbg !471
  store i8* %171, i8** getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 0), align 8, !dbg !473
  %172 = load i8, i8* @packet_opcode, align 1, !dbg !474
  call void @rdpsnd_process_packet(i8 zeroext %172, %struct.stream* @packet), !dbg !475
  store i32 0, i32* getelementptr inbounds (%struct.stream, %struct.stream* @packet, i32 0, i32 3), align 8, !dbg !476
  br label %173, !dbg !477

; <label>:173:                                    ; preds = %170, %166
  br label %4, !dbg !478, !llvm.loop !480

; <label>:174:                                    ; preds = %27, %4
  ret void, !dbg !481
}

; Function Attrs: nounwind uwtable
define internal void @rdpsnddbg_process(%struct.stream*) #0 !dbg !184 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !482, metadata !194), !dbg !483
  call void @llvm.dbg.declare(metadata i32* %3, metadata !484, metadata !194), !dbg !485
  call void @llvm.dbg.declare(metadata i8** %4, metadata !486, metadata !194), !dbg !487
  %5 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !488
  %6 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 1, !dbg !489
  %7 = load i8*, i8** %6, align 8, !dbg !489
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !490
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !491
  %10 = load i8*, i8** %9, align 8, !dbg !491
  %11 = ptrtoint i8* %7 to i64, !dbg !492
  %12 = ptrtoint i8* %10 to i64, !dbg !492
  %13 = sub i64 %11, %12, !dbg !492
  %14 = trunc i64 %13 to i32, !dbg !488
  store i32 %14, i32* %3, align 4, !dbg !493
  %15 = load i32, i32* %3, align 4, !dbg !494
  %16 = add i32 %15, 1, !dbg !495
  %17 = call i8* @xmalloc(i32 %16), !dbg !496
  store i8* %17, i8** %4, align 8, !dbg !497
  %18 = load i8*, i8** %4, align 8, !dbg !498
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !500
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !501
  %21 = load i8*, i8** %20, align 8, !dbg !501
  %22 = load i32, i32* %3, align 4, !dbg !502
  %23 = add i32 %22, 1, !dbg !503
  %24 = sub i32 %23, 1, !dbg !504
  %25 = zext i32 %24 to i64, !dbg !502
  %26 = call i8* @strncpy(i8* %18, i8* %21, i64 %25) #8, !dbg !505
  %27 = load i32, i32* %3, align 4, !dbg !506
  %28 = add i32 %27, 1, !dbg !507
  %29 = sub i32 %28, 1, !dbg !508
  %30 = zext i32 %29 to i64, !dbg !509
  %31 = load i8*, i8** %4, align 8, !dbg !509
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !509
  store i8 0, i8* %32, align 1, !dbg !510
  %33 = load i8*, i8** %4, align 8, !dbg !511
  %34 = call i32 @str_handle_lines(i8* %33, i8** @rdpsnddbg_process.rest, i32 (i8*, i8*)* @rdpsnddbg_line_handler, i8* null), !dbg !512
  %35 = load i8*, i8** %4, align 8, !dbg !513
  call void @xfree(i8* %35), !dbg !514
  ret void, !dbg !515
}

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @rdpsnd_queue_init() #0 !dbg !516 {
  store i32 0, i32* @queue_hi, align 4, !dbg !517
  store i32 0, i32* @queue_lo, align 4, !dbg !518
  store i32 0, i32* @queue_pending, align 4, !dbg !519
  ret void, !dbg !520
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @rdpsnd_register_drivers(i8*) #0 !dbg !521 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.audio_driver**, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !524, metadata !194), !dbg !525
  call void @llvm.dbg.declare(metadata %struct.audio_driver*** %3, metadata !526, metadata !194), !dbg !528
  store %struct.audio_driver** @drivers, %struct.audio_driver*** %3, align 8, !dbg !529
  %4 = load i8*, i8** %2, align 8, !dbg !530
  %5 = call %struct.audio_driver* @oss_register(i8* %4), !dbg !531
  %6 = load %struct.audio_driver**, %struct.audio_driver*** %3, align 8, !dbg !532
  store %struct.audio_driver* %5, %struct.audio_driver** %6, align 8, !dbg !533
  %7 = load %struct.audio_driver**, %struct.audio_driver*** %3, align 8, !dbg !534
  %8 = load %struct.audio_driver*, %struct.audio_driver** %7, align 8, !dbg !535
  %9 = icmp ne %struct.audio_driver* %8, null, !dbg !534
  br i1 %9, label %10, label %11, !dbg !534

; <label>:10:                                     ; preds = %1
  br label %13, !dbg !536

; <label>:11:                                     ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 483, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.rdpsnd_register_drivers, i32 0, i32 0)) #9, !dbg !538
  unreachable, !dbg !538
                                                  ; No predecessors!
  br label %13, !dbg !540

; <label>:13:                                     ; preds = %12, %10
  %14 = load %struct.audio_driver**, %struct.audio_driver*** %3, align 8, !dbg !542
  %15 = load %struct.audio_driver*, %struct.audio_driver** %14, align 8, !dbg !543
  %16 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %15, i32 0, i32 16, !dbg !544
  store %struct.audio_driver** %16, %struct.audio_driver*** %3, align 8, !dbg !545
  %17 = load %struct.audio_driver**, %struct.audio_driver*** %3, align 8, !dbg !546
  store %struct.audio_driver* null, %struct.audio_driver** %17, align 8, !dbg !547
  ret void, !dbg !548
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @rdpsnd_reset_state() #0 !dbg !549 {
  %1 = load i32, i32* @device_open, align 4, !dbg !550
  %2 = icmp ne i32 %1, 0, !dbg !550
  br i1 %2, label %3, label %7, !dbg !552

; <label>:3:                                      ; preds = %0
  %4 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !553
  %5 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %4, i32 0, i32 3, !dbg !554
  %6 = load void ()*, void ()** %5, align 8, !dbg !554
  call void %6(), !dbg !553
  br label %7, !dbg !553

; <label>:7:                                      ; preds = %3, %0
  store i32 0, i32* @device_open, align 4, !dbg !555
  call void @rdpsnd_queue_clear(), !dbg !556
  store i32 0, i32* @rdpsnd_negotiated, align 4, !dbg !557
  ret void, !dbg !558
}

; Function Attrs: nounwind uwtable
define internal void @rdpsnd_queue_clear() #0 !dbg !559 {
  %1 = alloca %struct.audio_packet*, align 8
  call void @llvm.dbg.declare(metadata %struct.audio_packet** %1, metadata !560, metadata !194), !dbg !562
  br label %2, !dbg !563

; <label>:2:                                      ; preds = %6, %0
  %3 = load i32, i32* @queue_pending, align 4, !dbg !564
  %4 = load i32, i32* @queue_hi, align 4, !dbg !566
  %5 = icmp ne i32 %3, %4, !dbg !567
  br i1 %5, label %6, label %17, !dbg !568

; <label>:6:                                      ; preds = %2
  %7 = load i32, i32* @queue_pending, align 4, !dbg !569
  %8 = zext i32 %7 to i64, !dbg !571
  %9 = getelementptr inbounds [50 x %struct.audio_packet], [50 x %struct.audio_packet]* @packet_queue, i64 0, i64 %8, !dbg !571
  store %struct.audio_packet* %9, %struct.audio_packet** %1, align 8, !dbg !572
  %10 = load %struct.audio_packet*, %struct.audio_packet** %1, align 8, !dbg !573
  %11 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %10, i32 0, i32 0, !dbg !574
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 2, !dbg !575
  %13 = load i8*, i8** %12, align 8, !dbg !575
  call void @xfree(i8* %13), !dbg !576
  %14 = load i32, i32* @queue_pending, align 4, !dbg !577
  %15 = add i32 %14, 1, !dbg !578
  %16 = urem i32 %15, 50, !dbg !579
  store i32 %16, i32* @queue_pending, align 4, !dbg !580
  br label %2, !dbg !581, !llvm.loop !583

; <label>:17:                                     ; preds = %2
  store i32 0, i32* @queue_hi, align 4, !dbg !584
  store i32 0, i32* @queue_lo, align 4, !dbg !585
  store i32 0, i32* @queue_pending, align 4, !dbg !586
  ret void, !dbg !587
}

; Function Attrs: nounwind uwtable
define void @rdpsnd_show_help() #0 !dbg !588 {
  %1 = alloca %struct.audio_driver*, align 8
  call void @llvm.dbg.declare(metadata %struct.audio_driver** %1, metadata !589, metadata !194), !dbg !590
  call void @rdpsnd_register_drivers(i8* null), !dbg !591
  %2 = load %struct.audio_driver*, %struct.audio_driver** @drivers, align 8, !dbg !592
  store %struct.audio_driver* %2, %struct.audio_driver** %1, align 8, !dbg !593
  br label %3, !dbg !594

; <label>:3:                                      ; preds = %6, %0
  %4 = load %struct.audio_driver*, %struct.audio_driver** %1, align 8, !dbg !595
  %5 = icmp ne %struct.audio_driver* %4, null, !dbg !597
  br i1 %5, label %6, label %18, !dbg !598

; <label>:6:                                      ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !599
  %8 = load %struct.audio_driver*, %struct.audio_driver** %1, align 8, !dbg !601
  %9 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %8, i32 0, i32 12, !dbg !602
  %10 = load i8*, i8** %9, align 8, !dbg !602
  %11 = load %struct.audio_driver*, %struct.audio_driver** %1, align 8, !dbg !603
  %12 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %11, i32 0, i32 13, !dbg !604
  %13 = load i8*, i8** %12, align 8, !dbg !604
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* %10, i8* %13), !dbg !605
  %15 = load %struct.audio_driver*, %struct.audio_driver** %1, align 8, !dbg !606
  %16 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %15, i32 0, i32 16, !dbg !607
  %17 = load %struct.audio_driver*, %struct.audio_driver** %16, align 8, !dbg !607
  store %struct.audio_driver* %17, %struct.audio_driver** %1, align 8, !dbg !608
  br label %3, !dbg !609, !llvm.loop !611

; <label>:18:                                     ; preds = %3
  ret void, !dbg !612
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @rdpsnd_add_fds(i32*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #0 !dbg !613 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fd_set*, align 8
  %7 = alloca %struct.fd_set*, align 8
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !614, metadata !194), !dbg !615
  store %struct.fd_set* %1, %struct.fd_set** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %6, metadata !616, metadata !194), !dbg !617
  store %struct.fd_set* %2, %struct.fd_set** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %7, metadata !618, metadata !194), !dbg !619
  store %struct.timeval* %3, %struct.timeval** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval** %8, metadata !620, metadata !194), !dbg !621
  call void @llvm.dbg.declare(metadata i64* %9, metadata !622, metadata !194), !dbg !623
  %11 = load i32, i32* @device_open, align 4, !dbg !624
  %12 = icmp ne i32 %11, 0, !dbg !624
  br i1 %12, label %13, label %21, !dbg !626

; <label>:13:                                     ; preds = %4
  %14 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !627
  %15 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %14, i32 0, i32 0, !dbg !628
  %16 = load void (i32*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*)*, void (i32*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*)** %15, align 8, !dbg !628
  %17 = load i32*, i32** %5, align 8, !dbg !629
  %18 = load %struct.fd_set*, %struct.fd_set** %6, align 8, !dbg !630
  %19 = load %struct.fd_set*, %struct.fd_set** %7, align 8, !dbg !631
  %20 = load %struct.timeval*, %struct.timeval** %8, align 8, !dbg !632
  call void %16(i32* %17, %struct.fd_set* %18, %struct.fd_set* %19, %struct.timeval* %20), !dbg !627
  br label %21, !dbg !627

; <label>:21:                                     ; preds = %13, %4
  %22 = call i64 @rdpsnd_queue_next_completion(), !dbg !633
  store i64 %22, i64* %9, align 8, !dbg !634
  %23 = load i64, i64* %9, align 8, !dbg !635
  %24 = icmp sge i64 %23, 0, !dbg !637
  br i1 %24, label %25, label %47, !dbg !638

; <label>:25:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i64* %10, metadata !639, metadata !194), !dbg !641
  %26 = load %struct.timeval*, %struct.timeval** %8, align 8, !dbg !642
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 0, !dbg !643
  %28 = load i64, i64* %27, align 8, !dbg !643
  %29 = mul nsw i64 %28, 1000000, !dbg !644
  %30 = load %struct.timeval*, %struct.timeval** %8, align 8, !dbg !645
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 1, !dbg !646
  %32 = load i64, i64* %31, align 8, !dbg !646
  %33 = add nsw i64 %29, %32, !dbg !647
  store i64 %33, i64* %10, align 8, !dbg !648
  %34 = load i64, i64* %10, align 8, !dbg !649
  %35 = load i64, i64* %9, align 8, !dbg !651
  %36 = icmp sgt i64 %34, %35, !dbg !652
  br i1 %36, label %37, label %46, !dbg !653

; <label>:37:                                     ; preds = %25
  %38 = load i64, i64* %9, align 8, !dbg !654
  %39 = sdiv i64 %38, 1000000, !dbg !656
  %40 = load %struct.timeval*, %struct.timeval** %8, align 8, !dbg !657
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0, !dbg !658
  store i64 %39, i64* %41, align 8, !dbg !659
  %42 = load i64, i64* %9, align 8, !dbg !660
  %43 = srem i64 %42, 1000000, !dbg !661
  %44 = load %struct.timeval*, %struct.timeval** %8, align 8, !dbg !662
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %44, i32 0, i32 1, !dbg !663
  store i64 %43, i64* %45, align 8, !dbg !664
  br label %46, !dbg !665

; <label>:46:                                     ; preds = %37, %25
  br label %47, !dbg !666

; <label>:47:                                     ; preds = %46, %21
  ret void, !dbg !667
}

; Function Attrs: nounwind uwtable
define internal i64 @rdpsnd_queue_next_completion() #0 !dbg !668 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.audio_packet*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.audio_packet** %2, metadata !671, metadata !194), !dbg !672
  call void @llvm.dbg.declare(metadata i64* %3, metadata !673, metadata !194), !dbg !674
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !675, metadata !194), !dbg !676
  %5 = load i32, i32* @queue_pending, align 4, !dbg !677
  %6 = load i32, i32* @queue_lo, align 4, !dbg !679
  %7 = icmp eq i32 %5, %6, !dbg !680
  br i1 %7, label %8, label %9, !dbg !681

; <label>:8:                                      ; preds = %0
  store i64 -1, i64* %1, align 8, !dbg !682
  br label %35, !dbg !682

; <label>:9:                                      ; preds = %0
  %10 = call i32 @gettimeofday(%struct.timeval* %4, %struct.timezone* null) #8, !dbg !683
  %11 = load i32, i32* @queue_pending, align 4, !dbg !684
  %12 = zext i32 %11 to i64, !dbg !685
  %13 = getelementptr inbounds [50 x %struct.audio_packet], [50 x %struct.audio_packet]* @packet_queue, i64 0, i64 %12, !dbg !685
  store %struct.audio_packet* %13, %struct.audio_packet** %2, align 8, !dbg !686
  %14 = load %struct.audio_packet*, %struct.audio_packet** %2, align 8, !dbg !687
  %15 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %14, i32 0, i32 4, !dbg !688
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0, !dbg !689
  %17 = load i64, i64* %16, align 8, !dbg !689
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !690
  %19 = load i64, i64* %18, align 8, !dbg !690
  %20 = sub nsw i64 %17, %19, !dbg !691
  %21 = mul nsw i64 %20, 1000000, !dbg !692
  %22 = load %struct.audio_packet*, %struct.audio_packet** %2, align 8, !dbg !693
  %23 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %22, i32 0, i32 4, !dbg !694
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 1, !dbg !695
  %25 = load i64, i64* %24, align 8, !dbg !695
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !696
  %27 = load i64, i64* %26, align 8, !dbg !696
  %28 = sub nsw i64 %25, %27, !dbg !697
  %29 = add nsw i64 %21, %28, !dbg !698
  store i64 %29, i64* %3, align 8, !dbg !699
  %30 = load i64, i64* %3, align 8, !dbg !700
  %31 = icmp slt i64 %30, 0, !dbg !702
  br i1 %31, label %32, label %33, !dbg !703

; <label>:32:                                     ; preds = %9
  store i64 0, i64* %1, align 8, !dbg !704
  br label %35, !dbg !704

; <label>:33:                                     ; preds = %9
  %34 = load i64, i64* %3, align 8, !dbg !705
  store i64 %34, i64* %1, align 8, !dbg !706
  br label %35, !dbg !706

; <label>:35:                                     ; preds = %33, %32, %8
  %36 = load i64, i64* %1, align 8, !dbg !707
  ret i64 %36, !dbg !707
}

; Function Attrs: nounwind uwtable
define void @rdpsnd_check_fds(%struct.fd_set*, %struct.fd_set*) #0 !dbg !708 {
  %3 = alloca %struct.fd_set*, align 8
  %4 = alloca %struct.fd_set*, align 8
  store %struct.fd_set* %0, %struct.fd_set** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %3, metadata !709, metadata !194), !dbg !710
  store %struct.fd_set* %1, %struct.fd_set** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %4, metadata !711, metadata !194), !dbg !712
  call void @rdpsnd_queue_complete_pending(), !dbg !713
  %5 = load i32, i32* @device_open, align 4, !dbg !714
  %6 = icmp ne i32 %5, 0, !dbg !714
  br i1 %6, label %7, label %13, !dbg !716

; <label>:7:                                      ; preds = %2
  %8 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !717
  %9 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %8, i32 0, i32 1, !dbg !718
  %10 = load void (%struct.fd_set*, %struct.fd_set*)*, void (%struct.fd_set*, %struct.fd_set*)** %9, align 8, !dbg !718
  %11 = load %struct.fd_set*, %struct.fd_set** %3, align 8, !dbg !719
  %12 = load %struct.fd_set*, %struct.fd_set** %4, align 8, !dbg !720
  call void %10(%struct.fd_set* %11, %struct.fd_set* %12), !dbg !717
  br label %13, !dbg !717

; <label>:13:                                     ; preds = %7, %2
  ret void, !dbg !721
}

; Function Attrs: nounwind uwtable
define internal void @rdpsnd_queue_complete_pending() #0 !dbg !722 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.audio_packet*, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !723, metadata !194), !dbg !724
  call void @llvm.dbg.declare(metadata i64* %2, metadata !725, metadata !194), !dbg !726
  call void @llvm.dbg.declare(metadata %struct.audio_packet** %3, metadata !727, metadata !194), !dbg !728
  %4 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #8, !dbg !729
  br label %5, !dbg !730

; <label>:5:                                      ; preds = %38, %0
  %6 = load i32, i32* @queue_pending, align 4, !dbg !731
  %7 = load i32, i32* @queue_lo, align 4, !dbg !733
  %8 = icmp ne i32 %6, %7, !dbg !734
  br i1 %8, label %9, label %79, !dbg !735

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* @queue_pending, align 4, !dbg !736
  %11 = zext i32 %10 to i64, !dbg !738
  %12 = getelementptr inbounds [50 x %struct.audio_packet], [50 x %struct.audio_packet]* @packet_queue, i64 0, i64 %11, !dbg !738
  store %struct.audio_packet* %12, %struct.audio_packet** %3, align 8, !dbg !739
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0, !dbg !740
  %14 = load i64, i64* %13, align 8, !dbg !740
  %15 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !742
  %16 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %15, i32 0, i32 4, !dbg !743
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0, !dbg !744
  %18 = load i64, i64* %17, align 8, !dbg !744
  %19 = icmp slt i64 %14, %18, !dbg !745
  br i1 %19, label %20, label %21, !dbg !746

; <label>:20:                                     ; preds = %9
  br label %79, !dbg !747

; <label>:21:                                     ; preds = %9
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0, !dbg !748
  %23 = load i64, i64* %22, align 8, !dbg !748
  %24 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !750
  %25 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %24, i32 0, i32 4, !dbg !751
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0, !dbg !752
  %27 = load i64, i64* %26, align 8, !dbg !752
  %28 = icmp eq i64 %23, %27, !dbg !753
  br i1 %28, label %29, label %38, !dbg !754

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1, !dbg !755
  %31 = load i64, i64* %30, align 8, !dbg !755
  %32 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !756
  %33 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %32, i32 0, i32 4, !dbg !757
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 1, !dbg !758
  %35 = load i64, i64* %34, align 8, !dbg !758
  %36 = icmp slt i64 %31, %35, !dbg !759
  br i1 %36, label %37, label %38, !dbg !760

; <label>:37:                                     ; preds = %29
  br label %79, !dbg !762

; <label>:38:                                     ; preds = %29, %21
  %39 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !763
  %40 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %39, i32 0, i32 4, !dbg !764
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0, !dbg !765
  %42 = load i64, i64* %41, align 8, !dbg !765
  %43 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !766
  %44 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %43, i32 0, i32 3, !dbg !767
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %44, i32 0, i32 0, !dbg !768
  %46 = load i64, i64* %45, align 8, !dbg !768
  %47 = sub nsw i64 %42, %46, !dbg !769
  %48 = mul nsw i64 %47, 1000000, !dbg !770
  %49 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !771
  %50 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %49, i32 0, i32 4, !dbg !772
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %50, i32 0, i32 1, !dbg !773
  %52 = load i64, i64* %51, align 8, !dbg !773
  %53 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !774
  %54 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %53, i32 0, i32 3, !dbg !775
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %54, i32 0, i32 1, !dbg !776
  %56 = load i64, i64* %55, align 8, !dbg !776
  %57 = sub nsw i64 %52, %56, !dbg !777
  %58 = add nsw i64 %48, %57, !dbg !778
  store i64 %58, i64* %2, align 8, !dbg !779
  %59 = load i64, i64* %2, align 8, !dbg !780
  %60 = sdiv i64 %59, 1000, !dbg !780
  store i64 %60, i64* %2, align 8, !dbg !780
  %61 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !781
  %62 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %61, i32 0, i32 0, !dbg !782
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 2, !dbg !783
  %64 = load i8*, i8** %63, align 8, !dbg !783
  call void @xfree(i8* %64), !dbg !784
  %65 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !785
  %66 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %65, i32 0, i32 1, !dbg !786
  %67 = load i16, i16* %66, align 8, !dbg !786
  %68 = zext i16 %67 to i64, !dbg !785
  %69 = load i64, i64* %2, align 8, !dbg !787
  %70 = add nsw i64 %68, %69, !dbg !788
  %71 = srem i64 %70, 65536, !dbg !789
  %72 = trunc i64 %71 to i16, !dbg !790
  %73 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !791
  %74 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %73, i32 0, i32 2, !dbg !792
  %75 = load i8, i8* %74, align 2, !dbg !792
  call void @rdpsnd_send_waveconfirm(i16 zeroext %72, i8 zeroext %75), !dbg !793
  %76 = load i32, i32* @queue_pending, align 4, !dbg !794
  %77 = add i32 %76, 1, !dbg !795
  %78 = urem i32 %77, 50, !dbg !796
  store i32 %78, i32* @queue_pending, align 4, !dbg !797
  br label %5, !dbg !798, !llvm.loop !800

; <label>:79:                                     ; preds = %37, %20, %5
  ret void, !dbg !801
}

; Function Attrs: nounwind uwtable
define %struct.audio_packet* @rdpsnd_queue_current_packet() #0 !dbg !802 {
  %1 = load i32, i32* @queue_lo, align 4, !dbg !805
  %2 = zext i32 %1 to i64, !dbg !806
  %3 = getelementptr inbounds [50 x %struct.audio_packet], [50 x %struct.audio_packet]* @packet_queue, i64 0, i64 %2, !dbg !806
  ret %struct.audio_packet* %3, !dbg !807
}

; Function Attrs: nounwind uwtable
define i32 @rdpsnd_queue_empty() #0 !dbg !808 {
  %1 = load i32, i32* @queue_lo, align 4, !dbg !809
  %2 = load i32, i32* @queue_hi, align 4, !dbg !810
  %3 = icmp eq i32 %1, %2, !dbg !811
  %4 = zext i1 %3 to i32, !dbg !811
  ret i32 %4, !dbg !812
}

; Function Attrs: nounwind uwtable
define void @rdpsnd_queue_next(i64) #0 !dbg !813 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.audio_packet*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !817, metadata !194), !dbg !818
  call void @llvm.dbg.declare(metadata %struct.audio_packet** %3, metadata !819, metadata !194), !dbg !820
  %4 = call i32 @rdpsnd_queue_empty(), !dbg !821
  %5 = icmp ne i32 %4, 0, !dbg !821
  br i1 %5, label %7, label %6, !dbg !821

; <label>:6:                                      ; preds = %1
  br label %9, !dbg !822

; <label>:7:                                      ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 682, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.rdpsnd_queue_next, i32 0, i32 0)) #9, !dbg !824
  unreachable, !dbg !824
                                                  ; No predecessors!
  br label %9, !dbg !826

; <label>:9:                                      ; preds = %8, %6
  %10 = load i32, i32* @queue_lo, align 4, !dbg !828
  %11 = zext i32 %10 to i64, !dbg !829
  %12 = getelementptr inbounds [50 x %struct.audio_packet], [50 x %struct.audio_packet]* @packet_queue, i64 0, i64 %11, !dbg !829
  store %struct.audio_packet* %12, %struct.audio_packet** %3, align 8, !dbg !830
  %13 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !831
  %14 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %13, i32 0, i32 4, !dbg !832
  %15 = call i32 @gettimeofday(%struct.timeval* %14, %struct.timezone* null) #8, !dbg !833
  %16 = load i64, i64* %2, align 8, !dbg !834
  %17 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !835
  %18 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %17, i32 0, i32 4, !dbg !836
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1, !dbg !837
  %20 = load i64, i64* %19, align 8, !dbg !838
  %21 = add i64 %20, %16, !dbg !838
  store i64 %21, i64* %19, align 8, !dbg !838
  %22 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !839
  %23 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %22, i32 0, i32 4, !dbg !840
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 1, !dbg !841
  %25 = load i64, i64* %24, align 8, !dbg !841
  %26 = sdiv i64 %25, 1000000, !dbg !842
  %27 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !843
  %28 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %27, i32 0, i32 4, !dbg !844
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0, !dbg !845
  %30 = load i64, i64* %29, align 8, !dbg !846
  %31 = add nsw i64 %30, %26, !dbg !846
  store i64 %31, i64* %29, align 8, !dbg !846
  %32 = load %struct.audio_packet*, %struct.audio_packet** %3, align 8, !dbg !847
  %33 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %32, i32 0, i32 4, !dbg !848
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 1, !dbg !849
  %35 = load i64, i64* %34, align 8, !dbg !850
  %36 = srem i64 %35, 1000000, !dbg !850
  store i64 %36, i64* %34, align 8, !dbg !850
  %37 = load i32, i32* @queue_lo, align 4, !dbg !851
  %38 = add i32 %37, 1, !dbg !852
  %39 = urem i32 %38, 50, !dbg !853
  store i32 %39, i32* @queue_lo, align 4, !dbg !854
  call void @rdpsnd_queue_complete_pending(), !dbg !855
  ret void, !dbg !856
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #5

; Function Attrs: nounwind uwtable
define i32 @rdpsnd_queue_next_tick() #0 !dbg !857 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @queue_lo, align 4, !dbg !860
  %3 = add i32 %2, 1, !dbg !862
  %4 = urem i32 %3, 50, !dbg !863
  %5 = load i32, i32* @queue_hi, align 4, !dbg !864
  %6 = icmp ne i32 %4, %5, !dbg !865
  br i1 %6, label %7, label %16, !dbg !866

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* @queue_lo, align 4, !dbg !867
  %9 = add i32 %8, 1, !dbg !869
  %10 = urem i32 %9, 50, !dbg !870
  %11 = zext i32 %10 to i64, !dbg !871
  %12 = getelementptr inbounds [50 x %struct.audio_packet], [50 x %struct.audio_packet]* @packet_queue, i64 0, i64 %11, !dbg !871
  %13 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %12, i32 0, i32 1, !dbg !872
  %14 = load i16, i16* %13, align 8, !dbg !872
  %15 = zext i16 %14 to i32, !dbg !871
  store i32 %15, i32* %1, align 4, !dbg !873
  br label %25, !dbg !873

; <label>:16:                                     ; preds = %0
  %17 = load i32, i32* @queue_lo, align 4, !dbg !874
  %18 = zext i32 %17 to i64, !dbg !876
  %19 = getelementptr inbounds [50 x %struct.audio_packet], [50 x %struct.audio_packet]* @packet_queue, i64 0, i64 %18, !dbg !876
  %20 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %19, i32 0, i32 1, !dbg !877
  %21 = load i16, i16* %20, align 8, !dbg !877
  %22 = zext i16 %21 to i32, !dbg !876
  %23 = add nsw i32 %22, 65535, !dbg !878
  %24 = srem i32 %23, 65536, !dbg !879
  store i32 %24, i32* %1, align 4, !dbg !880
  br label %25, !dbg !880

; <label>:25:                                     ; preds = %16, %7
  %26 = load i32, i32* %1, align 4, !dbg !881
  ret i32 %26, !dbg !881
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal void @rdpsnd_process_packet(i8 zeroext, %struct.stream*) #0 !dbg !169 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !882, metadata !194), !dbg !883
  store %struct.stream* %1, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !884, metadata !194), !dbg !885
  call void @llvm.dbg.declare(metadata i16* %5, metadata !886, metadata !194), !dbg !887
  call void @llvm.dbg.declare(metadata i16* %6, metadata !888, metadata !194), !dbg !889
  %7 = load i8, i8* %3, align 1, !dbg !890
  %8 = zext i8 %7 to i32, !dbg !890
  switch i32 %8, label %166 [
    i32 2, label %9
    i32 1, label %116
    i32 7, label %124
    i32 6, label %126
    i32 3, label %128
  ], !dbg !891

; <label>:9:                                      ; preds = %2
  %10 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !892
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0, !dbg !895
  %12 = load i8*, i8** %11, align 8, !dbg !895
  %13 = bitcast i8* %12 to i16*, !dbg !896
  %14 = load i16, i16* %13, align 2, !dbg !896
  store i16 %14, i16* @rdpsnd_process_packet.tick, align 2, !dbg !897
  %15 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !898
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !899
  %17 = load i8*, i8** %16, align 8, !dbg !900
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !900
  store i8* %18, i8** %16, align 8, !dbg !900
  %19 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !901
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !903
  %21 = load i8*, i8** %20, align 8, !dbg !903
  %22 = bitcast i8* %21 to i16*, !dbg !904
  %23 = load i16, i16* %22, align 2, !dbg !904
  store i16 %23, i16* @rdpsnd_process_packet.format, align 2, !dbg !905
  %24 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !906
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !907
  %26 = load i8*, i8** %25, align 8, !dbg !908
  %27 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !908
  store i8* %27, i8** %25, align 8, !dbg !908
  %28 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !909
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !910
  %30 = load i8*, i8** %29, align 8, !dbg !911
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !911
  store i8* %31, i8** %29, align 8, !dbg !911
  %32 = load i8, i8* %30, align 1, !dbg !912
  store i8 %32, i8* @rdpsnd_process_packet.packet_index, align 1, !dbg !913
  %33 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !914
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !915
  %35 = load i8*, i8** %34, align 8, !dbg !916
  %36 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !916
  store i8* %36, i8** %34, align 8, !dbg !916
  %37 = load i16, i16* @rdpsnd_process_packet.tick, align 2, !dbg !917
  %38 = zext i16 %37 to i32, !dbg !918
  %39 = load i16, i16* @rdpsnd_process_packet.format, align 2, !dbg !919
  %40 = zext i16 %39 to i32, !dbg !920
  %41 = load i8, i8* @rdpsnd_process_packet.packet_index, align 1, !dbg !921
  %42 = zext i8 %41 to i32, !dbg !922
  %43 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !923
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 3, !dbg !924
  %45 = load i32, i32* %44, align 8, !dbg !924
  %46 = sub i32 %45, 8, !dbg !925
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.10, i32 0, i32 0), i32 %38, i32 %40, i32 %42, i32 %46), !dbg !926
  %47 = load i16, i16* @rdpsnd_process_packet.format, align 2, !dbg !927
  %48 = zext i16 %47 to i32, !dbg !927
  %49 = icmp sge i32 %48, 10, !dbg !929
  br i1 %49, label %50, label %51, !dbg !930

; <label>:50:                                     ; preds = %9
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0)), !dbg !931
  br label %169, !dbg !933

; <label>:51:                                     ; preds = %9
  %52 = load i32, i32* @device_open, align 4, !dbg !934
  %53 = icmp ne i32 %52, 0, !dbg !934
  br i1 %53, label %54, label %59, !dbg !936

; <label>:54:                                     ; preds = %51
  %55 = load i16, i16* @rdpsnd_process_packet.format, align 2, !dbg !937
  %56 = zext i16 %55 to i32, !dbg !937
  %57 = load i32, i32* @current_format, align 4, !dbg !939
  %58 = icmp ne i32 %56, %57, !dbg !940
  br i1 %58, label %59, label %95, !dbg !941

; <label>:59:                                     ; preds = %54, %51
  %60 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !942
  %61 = icmp ne %struct.audio_driver* %60, null, !dbg !942
  br i1 %61, label %65, label %62, !dbg !945

; <label>:62:                                     ; preds = %59
  %63 = load i16, i16* @rdpsnd_process_packet.tick, align 2, !dbg !946
  %64 = load i8, i8* @rdpsnd_process_packet.packet_index, align 1, !dbg !948
  call void @rdpsnd_send_waveconfirm(i16 zeroext %63, i8 zeroext %64), !dbg !949
  br label %169, !dbg !950

; <label>:65:                                     ; preds = %59
  %66 = load i32, i32* @device_open, align 4, !dbg !951
  %67 = icmp ne i32 %66, 0, !dbg !951
  br i1 %67, label %77, label %68, !dbg !953

; <label>:68:                                     ; preds = %65
  %69 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !954
  %70 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %69, i32 0, i32 2, !dbg !956
  %71 = load i32 ()*, i32 ()** %70, align 8, !dbg !956
  %72 = call i32 %71(), !dbg !954
  %73 = icmp ne i32 %72, 0, !dbg !954
  br i1 %73, label %77, label %74, !dbg !957

; <label>:74:                                     ; preds = %68
  %75 = load i16, i16* @rdpsnd_process_packet.tick, align 2, !dbg !958
  %76 = load i8, i8* @rdpsnd_process_packet.packet_index, align 1, !dbg !960
  call void @rdpsnd_send_waveconfirm(i16 zeroext %75, i8 zeroext %76), !dbg !961
  br label %169, !dbg !962

; <label>:77:                                     ; preds = %68, %65
  %78 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !963
  %79 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %78, i32 0, i32 5, !dbg !965
  %80 = load i32 (%struct._RD_WAVEFORMATEX*)*, i32 (%struct._RD_WAVEFORMATEX*)** %79, align 8, !dbg !965
  %81 = load i16, i16* @rdpsnd_process_packet.format, align 2, !dbg !966
  %82 = zext i16 %81 to i64, !dbg !967
  %83 = getelementptr inbounds [10 x %struct._RD_WAVEFORMATEX], [10 x %struct._RD_WAVEFORMATEX]* @formats, i64 0, i64 %82, !dbg !967
  %84 = call i32 %80(%struct._RD_WAVEFORMATEX* %83), !dbg !963
  %85 = icmp ne i32 %84, 0, !dbg !963
  br i1 %85, label %92, label %86, !dbg !968

; <label>:86:                                     ; preds = %77
  %87 = load i16, i16* @rdpsnd_process_packet.tick, align 2, !dbg !969
  %88 = load i8, i8* @rdpsnd_process_packet.packet_index, align 1, !dbg !971
  call void @rdpsnd_send_waveconfirm(i16 zeroext %87, i8 zeroext %88), !dbg !972
  %89 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !973
  %90 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %89, i32 0, i32 3, !dbg !974
  %91 = load void ()*, void ()** %90, align 8, !dbg !974
  call void %91(), !dbg !973
  store i32 0, i32* @device_open, align 4, !dbg !975
  br label %169, !dbg !976

; <label>:92:                                     ; preds = %77
  store i32 1, i32* @device_open, align 4, !dbg !977
  %93 = load i16, i16* @rdpsnd_process_packet.format, align 2, !dbg !978
  %94 = zext i16 %93 to i32, !dbg !978
  store i32 %94, i32* @current_format, align 4, !dbg !979
  br label %95, !dbg !980

; <label>:95:                                     ; preds = %92, %54
  %96 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !981
  %97 = getelementptr inbounds %struct.stream, %struct.stream* %96, i32 0, i32 0, !dbg !982
  %98 = load i8*, i8** %97, align 8, !dbg !982
  %99 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !983
  %100 = getelementptr inbounds %struct.stream, %struct.stream* %99, i32 0, i32 1, !dbg !984
  %101 = load i8*, i8** %100, align 8, !dbg !984
  %102 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !985
  %103 = getelementptr inbounds %struct.stream, %struct.stream* %102, i32 0, i32 0, !dbg !986
  %104 = load i8*, i8** %103, align 8, !dbg !986
  %105 = ptrtoint i8* %101 to i64, !dbg !987
  %106 = ptrtoint i8* %104 to i64, !dbg !987
  %107 = sub i64 %105, %106, !dbg !987
  %108 = trunc i64 %107 to i32, !dbg !983
  %109 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !988
  %110 = load i32, i32* @current_format, align 4, !dbg !989
  %111 = zext i32 %110 to i64, !dbg !990
  %112 = getelementptr inbounds [10 x %struct._RD_WAVEFORMATEX], [10 x %struct._RD_WAVEFORMATEX]* @formats, i64 0, i64 %111, !dbg !990
  %113 = call %struct.stream* @rdpsnd_dsp_process(i8* %98, i32 %108, %struct.audio_driver* %109, %struct._RD_WAVEFORMATEX* %112), !dbg !991
  %114 = load i16, i16* @rdpsnd_process_packet.tick, align 2, !dbg !992
  %115 = load i8, i8* @rdpsnd_process_packet.packet_index, align 1, !dbg !993
  call void @rdpsnd_queue_write(%struct.stream* %113, i16 zeroext %114, i8 zeroext %115), !dbg !994
  br label %169, !dbg !996

; <label>:116:                                    ; preds = %2
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0)), !dbg !997
  %117 = load i32, i32* @device_open, align 4, !dbg !998
  %118 = icmp ne i32 %117, 0, !dbg !998
  br i1 %118, label %119, label %123, !dbg !1000

; <label>:119:                                    ; preds = %116
  %120 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1001
  %121 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %120, i32 0, i32 3, !dbg !1002
  %122 = load void ()*, void ()** %121, align 8, !dbg !1002
  call void %122(), !dbg !1001
  br label %123, !dbg !1001

; <label>:123:                                    ; preds = %119, %116
  store i32 0, i32* @device_open, align 4, !dbg !1003
  br label %169, !dbg !1004

; <label>:124:                                    ; preds = %2
  %125 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !1005
  call void @rdpsnd_process_negotiate(%struct.stream* %125), !dbg !1006
  br label %169, !dbg !1007

; <label>:126:                                    ; preds = %2
  %127 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !1008
  call void @rdpsnd_process_training(%struct.stream* %127), !dbg !1009
  br label %169, !dbg !1010

; <label>:128:                                    ; preds = %2
  %129 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !1011
  %130 = getelementptr inbounds %struct.stream, %struct.stream* %129, i32 0, i32 0, !dbg !1013
  %131 = load i8*, i8** %130, align 8, !dbg !1013
  %132 = bitcast i8* %131 to i16*, !dbg !1014
  %133 = load i16, i16* %132, align 2, !dbg !1014
  store i16 %133, i16* %5, align 2, !dbg !1015
  %134 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !1016
  %135 = getelementptr inbounds %struct.stream, %struct.stream* %134, i32 0, i32 0, !dbg !1017
  %136 = load i8*, i8** %135, align 8, !dbg !1018
  %137 = getelementptr inbounds i8, i8* %136, i64 2, !dbg !1018
  store i8* %137, i8** %135, align 8, !dbg !1018
  %138 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !1019
  %139 = getelementptr inbounds %struct.stream, %struct.stream* %138, i32 0, i32 0, !dbg !1021
  %140 = load i8*, i8** %139, align 8, !dbg !1021
  %141 = bitcast i8* %140 to i16*, !dbg !1022
  %142 = load i16, i16* %141, align 2, !dbg !1022
  store i16 %142, i16* %6, align 2, !dbg !1023
  %143 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !1024
  %144 = getelementptr inbounds %struct.stream, %struct.stream* %143, i32 0, i32 0, !dbg !1025
  %145 = load i8*, i8** %144, align 8, !dbg !1026
  %146 = getelementptr inbounds i8, i8* %145, i64 2, !dbg !1026
  store i8* %146, i8** %144, align 8, !dbg !1026
  %147 = load i16, i16* %5, align 2, !dbg !1027
  %148 = zext i16 %147 to i32, !dbg !1028
  %149 = load i16, i16* %5, align 2, !dbg !1029
  %150 = zext i16 %149 to i32, !dbg !1030
  %151 = udiv i32 %150, 655, !dbg !1031
  %152 = load i16, i16* %6, align 2, !dbg !1032
  %153 = zext i16 %152 to i32, !dbg !1033
  %154 = load i16, i16* %6, align 2, !dbg !1034
  %155 = zext i16 %154 to i32, !dbg !1035
  %156 = udiv i32 %155, 655, !dbg !1036
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.13, i32 0, i32 0), i32 %148, i32 %151, i32 %153, i32 %156), !dbg !1037
  %157 = load i32, i32* @device_open, align 4, !dbg !1038
  %158 = icmp ne i32 %157, 0, !dbg !1038
  br i1 %158, label %159, label %165, !dbg !1040

; <label>:159:                                    ; preds = %128
  %160 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1041
  %161 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %160, i32 0, i32 6, !dbg !1042
  %162 = load void (i16, i16)*, void (i16, i16)** %161, align 8, !dbg !1042
  %163 = load i16, i16* %5, align 2, !dbg !1043
  %164 = load i16, i16* %6, align 2, !dbg !1044
  call void %162(i16 zeroext %163, i16 zeroext %164), !dbg !1041
  br label %165, !dbg !1041

; <label>:165:                                    ; preds = %159, %128
  br label %169, !dbg !1045

; <label>:166:                                    ; preds = %2
  %167 = load i8, i8* %3, align 1, !dbg !1046
  %168 = zext i8 %167 to i32, !dbg !1046
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i32 0, i32 0), i32 %168), !dbg !1047
  br label %169, !dbg !1048

; <label>:169:                                    ; preds = %95, %166, %165, %126, %124, %123, %86, %74, %62, %50
  ret void, !dbg !1049
}

; Function Attrs: nounwind uwtable
define internal void @rdpsnd_send_waveconfirm(i16 zeroext, i8 zeroext) #0 !dbg !1050 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca %struct.stream*, align 8
  store i16 %0, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !1053, metadata !194), !dbg !1054
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1055, metadata !194), !dbg !1056
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !1057, metadata !194), !dbg !1058
  %6 = call %struct.stream* @rdpsnd_init_packet(i8 zeroext 5, i16 zeroext 4), !dbg !1059
  store %struct.stream* %6, %struct.stream** %5, align 8, !dbg !1060
  %7 = load i16, i16* %3, align 2, !dbg !1061
  %8 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1063
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !1064
  %10 = load i8*, i8** %9, align 8, !dbg !1064
  %11 = bitcast i8* %10 to i16*, !dbg !1065
  store i16 %7, i16* %11, align 2, !dbg !1066
  %12 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1067
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !1068
  %14 = load i8*, i8** %13, align 8, !dbg !1069
  %15 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !1069
  store i8* %15, i8** %13, align 8, !dbg !1069
  %16 = load i8, i8* %4, align 1, !dbg !1070
  %17 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1071
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !1072
  %19 = load i8*, i8** %18, align 8, !dbg !1073
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !1073
  store i8* %20, i8** %18, align 8, !dbg !1073
  store i8 %16, i8* %19, align 1, !dbg !1074
  %21 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1075
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !1076
  %23 = load i8*, i8** %22, align 8, !dbg !1077
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !1077
  store i8* %24, i8** %22, align 8, !dbg !1077
  store i8 0, i8* %23, align 1, !dbg !1078
  %25 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1079
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1080
  %27 = load i8*, i8** %26, align 8, !dbg !1080
  %28 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1081
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 1, !dbg !1082
  store i8* %27, i8** %29, align 8, !dbg !1083
  %30 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1084
  call void @rdpsnd_send(%struct.stream* %30), !dbg !1085
  %31 = load i16, i16* %3, align 2, !dbg !1086
  %32 = zext i16 %31 to i32, !dbg !1087
  %33 = load i8, i8* %4, align 1, !dbg !1088
  %34 = zext i8 %33 to i32, !dbg !1089
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0), i32 %32, i32 %34), !dbg !1090
  ret void, !dbg !1091
}

; Function Attrs: nounwind uwtable
define internal void @rdpsnd_queue_write(%struct.stream*, i16 zeroext, i8 zeroext) #0 !dbg !1092 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca %struct.audio_packet*, align 8
  %8 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !1095, metadata !194), !dbg !1096
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !1097, metadata !194), !dbg !1098
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1099, metadata !194), !dbg !1100
  call void @llvm.dbg.declare(metadata %struct.audio_packet** %7, metadata !1101, metadata !194), !dbg !1102
  %9 = load i32, i32* @queue_hi, align 4, !dbg !1103
  %10 = zext i32 %9 to i64, !dbg !1104
  %11 = getelementptr inbounds [50 x %struct.audio_packet], [50 x %struct.audio_packet]* @packet_queue, i64 0, i64 %10, !dbg !1104
  store %struct.audio_packet* %11, %struct.audio_packet** %7, align 8, !dbg !1102
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1105, metadata !194), !dbg !1106
  %12 = load i32, i32* @queue_hi, align 4, !dbg !1107
  %13 = add i32 %12, 1, !dbg !1108
  %14 = urem i32 %13, 50, !dbg !1109
  store i32 %14, i32* %8, align 4, !dbg !1106
  %15 = load i32, i32* %8, align 4, !dbg !1110
  %16 = load i32, i32* @queue_pending, align 4, !dbg !1112
  %17 = icmp eq i32 %15, %16, !dbg !1113
  br i1 %17, label %18, label %19, !dbg !1114

; <label>:18:                                     ; preds = %3
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0)), !dbg !1115
  br label %35, !dbg !1117

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %8, align 4, !dbg !1118
  store i32 %20, i32* @queue_hi, align 4, !dbg !1119
  %21 = load %struct.audio_packet*, %struct.audio_packet** %7, align 8, !dbg !1120
  %22 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %21, i32 0, i32 0, !dbg !1121
  %23 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !1122
  %24 = bitcast %struct.stream* %22 to i8*, !dbg !1123
  %25 = bitcast %struct.stream* %23 to i8*, !dbg !1123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 72, i32 8, i1 false), !dbg !1123
  %26 = load i16, i16* %5, align 2, !dbg !1124
  %27 = load %struct.audio_packet*, %struct.audio_packet** %7, align 8, !dbg !1125
  %28 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %27, i32 0, i32 1, !dbg !1126
  store i16 %26, i16* %28, align 8, !dbg !1127
  %29 = load i8, i8* %6, align 1, !dbg !1128
  %30 = load %struct.audio_packet*, %struct.audio_packet** %7, align 8, !dbg !1129
  %31 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %30, i32 0, i32 2, !dbg !1130
  store i8 %29, i8* %31, align 2, !dbg !1131
  %32 = load %struct.audio_packet*, %struct.audio_packet** %7, align 8, !dbg !1132
  %33 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %32, i32 0, i32 3, !dbg !1133
  %34 = call i32 @gettimeofday(%struct.timeval* %33, %struct.timezone* null) #8, !dbg !1134
  br label %35, !dbg !1135

; <label>:35:                                     ; preds = %19, %18
  ret void, !dbg !1136
}

declare %struct.stream* @rdpsnd_dsp_process(i8*, i32, %struct.audio_driver*, %struct._RD_WAVEFORMATEX*) #2

; Function Attrs: nounwind uwtable
define internal void @rdpsnd_process_negotiate(%struct.stream*) #0 !dbg !1138 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca %struct._RD_WAVEFORMATEX*, align 8
  %8 = alloca %struct.stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !1139, metadata !194), !dbg !1140
  call void @llvm.dbg.declare(metadata i16* %3, metadata !1141, metadata !194), !dbg !1142
  call void @llvm.dbg.declare(metadata i16* %4, metadata !1143, metadata !194), !dbg !1144
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1145, metadata !194), !dbg !1146
  call void @llvm.dbg.declare(metadata i16* %6, metadata !1147, metadata !194), !dbg !1148
  call void @llvm.dbg.declare(metadata %struct._RD_WAVEFORMATEX** %7, metadata !1149, metadata !194), !dbg !1150
  call void @llvm.dbg.declare(metadata %struct.stream** %8, metadata !1151, metadata !194), !dbg !1152
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1153, metadata !194), !dbg !1154
  store i32 0, i32* %9, align 4, !dbg !1154
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1155, metadata !194), !dbg !1156
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1157, metadata !194), !dbg !1158
  %13 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1159
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !1160
  %15 = load i8*, i8** %14, align 8, !dbg !1161
  %16 = getelementptr inbounds i8, i8* %15, i64 14, !dbg !1161
  store i8* %16, i8** %14, align 8, !dbg !1161
  %17 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1162
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !1164
  %19 = load i8*, i8** %18, align 8, !dbg !1164
  %20 = bitcast i8* %19 to i16*, !dbg !1165
  %21 = load i16, i16* %20, align 2, !dbg !1165
  store i16 %21, i16* %3, align 2, !dbg !1166
  %22 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1167
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !1168
  %24 = load i8*, i8** %23, align 8, !dbg !1169
  %25 = getelementptr inbounds i8, i8* %24, i64 2, !dbg !1169
  store i8* %25, i8** %23, align 8, !dbg !1169
  %26 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1170
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !1171
  %28 = load i8*, i8** %27, align 8, !dbg !1172
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !1172
  store i8* %29, i8** %27, align 8, !dbg !1172
  %30 = load i8, i8* %28, align 1, !dbg !1173
  store i8 %30, i8* %5, align 1, !dbg !1174
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1175
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !1177
  %33 = load i8*, i8** %32, align 8, !dbg !1177
  %34 = bitcast i8* %33 to i16*, !dbg !1178
  %35 = load i16, i16* %34, align 2, !dbg !1178
  store i16 %35, i16* %6, align 2, !dbg !1179
  %36 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1180
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !1181
  %38 = load i8*, i8** %37, align 8, !dbg !1182
  %39 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !1182
  store i8* %39, i8** %37, align 8, !dbg !1182
  %40 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1183
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0, !dbg !1184
  %42 = load i8*, i8** %41, align 8, !dbg !1185
  %43 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1185
  store i8* %43, i8** %41, align 8, !dbg !1185
  %44 = load i16, i16* %3, align 2, !dbg !1186
  %45 = zext i16 %44 to i32, !dbg !1187
  %46 = load i8, i8* %5, align 1, !dbg !1188
  %47 = zext i8 %46 to i32, !dbg !1189
  %48 = load i16, i16* %6, align 2, !dbg !1190
  %49 = zext i16 %48 to i32, !dbg !1191
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i32 0, i32 0), i32 %45, i32 %47, i32 %49), !dbg !1192
  %50 = load i32, i32* @rdpsnd_negotiated, align 4, !dbg !1193
  %51 = icmp ne i32 %50, 0, !dbg !1193
  br i1 %51, label %52, label %53, !dbg !1195

; <label>:52:                                     ; preds = %1
  call void @rdpsnd_reset_state(), !dbg !1196
  br label %53, !dbg !1198

; <label>:53:                                     ; preds = %52, %1
  %54 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1199
  %55 = icmp ne %struct.audio_driver* %54, null, !dbg !1199
  br i1 %55, label %61, label %56, !dbg !1201

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* @g_rdpsnd, align 4, !dbg !1202
  %58 = icmp ne i32 %57, 0, !dbg !1202
  br i1 %58, label %59, label %61, !dbg !1204

; <label>:59:                                     ; preds = %56
  %60 = call i32 @rdpsnd_auto_select(), !dbg !1205
  store i32 %60, i32* %9, align 4, !dbg !1206
  br label %61, !dbg !1207

; <label>:61:                                     ; preds = %59, %56, %53
  %62 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1208
  %63 = icmp ne %struct.audio_driver* %62, null, !dbg !1208
  br i1 %63, label %64, label %77, !dbg !1210

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %9, align 4, !dbg !1211
  %66 = icmp ne i32 %65, 0, !dbg !1211
  br i1 %66, label %77, label %67, !dbg !1213

; <label>:67:                                     ; preds = %64
  %68 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1214
  %69 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %68, i32 0, i32 2, !dbg !1216
  %70 = load i32 ()*, i32 ()** %69, align 8, !dbg !1216
  %71 = call i32 %70(), !dbg !1214
  %72 = icmp ne i32 %71, 0, !dbg !1214
  br i1 %72, label %73, label %77, !dbg !1217

; <label>:73:                                     ; preds = %67
  %74 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1218
  %75 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %74, i32 0, i32 3, !dbg !1220
  %76 = load void ()*, void ()** %75, align 8, !dbg !1220
  call void %76(), !dbg !1218
  store i32 1, i32* %9, align 4, !dbg !1221
  br label %77, !dbg !1222

; <label>:77:                                     ; preds = %73, %67, %64, %61
  store i32 0, i32* @format_count, align 4, !dbg !1223
  %78 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1224
  %79 = getelementptr inbounds %struct.stream, %struct.stream* %78, i32 0, i32 0, !dbg !1226
  %80 = load i8*, i8** %79, align 8, !dbg !1226
  %81 = load i16, i16* %3, align 2, !dbg !1227
  %82 = zext i16 %81 to i32, !dbg !1227
  %83 = mul nsw i32 18, %82, !dbg !1228
  %84 = sext i32 %83 to i64, !dbg !1229
  %85 = getelementptr inbounds i8, i8* %80, i64 %84, !dbg !1229
  %86 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1230
  %87 = getelementptr inbounds %struct.stream, %struct.stream* %86, i32 0, i32 1, !dbg !1231
  %88 = load i8*, i8** %87, align 8, !dbg !1231
  %89 = icmp ule i8* %85, %88, !dbg !1232
  br i1 %89, label %90, label %239, !dbg !1233

; <label>:90:                                     ; preds = %77
  store i16 0, i16* %4, align 2, !dbg !1234
  br label %91, !dbg !1237

; <label>:91:                                     ; preds = %235, %90
  %92 = load i16, i16* %4, align 2, !dbg !1238
  %93 = zext i16 %92 to i32, !dbg !1238
  %94 = load i16, i16* %3, align 2, !dbg !1241
  %95 = zext i16 %94 to i32, !dbg !1241
  %96 = icmp slt i32 %93, %95, !dbg !1242
  br i1 %96, label %97, label %238, !dbg !1243

; <label>:97:                                     ; preds = %91
  %98 = load i32, i32* @format_count, align 4, !dbg !1244
  %99 = zext i32 %98 to i64, !dbg !1246
  %100 = getelementptr inbounds [10 x %struct._RD_WAVEFORMATEX], [10 x %struct._RD_WAVEFORMATEX]* @formats, i64 0, i64 %99, !dbg !1246
  store %struct._RD_WAVEFORMATEX* %100, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1247
  %101 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1248
  %102 = getelementptr inbounds %struct.stream, %struct.stream* %101, i32 0, i32 0, !dbg !1250
  %103 = load i8*, i8** %102, align 8, !dbg !1250
  %104 = bitcast i8* %103 to i16*, !dbg !1251
  %105 = load i16, i16* %104, align 2, !dbg !1251
  %106 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1252
  %107 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %106, i32 0, i32 0, !dbg !1253
  store i16 %105, i16* %107, align 4, !dbg !1254
  %108 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1255
  %109 = getelementptr inbounds %struct.stream, %struct.stream* %108, i32 0, i32 0, !dbg !1256
  %110 = load i8*, i8** %109, align 8, !dbg !1257
  %111 = getelementptr inbounds i8, i8* %110, i64 2, !dbg !1257
  store i8* %111, i8** %109, align 8, !dbg !1257
  %112 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1258
  %113 = getelementptr inbounds %struct.stream, %struct.stream* %112, i32 0, i32 0, !dbg !1260
  %114 = load i8*, i8** %113, align 8, !dbg !1260
  %115 = bitcast i8* %114 to i16*, !dbg !1261
  %116 = load i16, i16* %115, align 2, !dbg !1261
  %117 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1262
  %118 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %117, i32 0, i32 1, !dbg !1263
  store i16 %116, i16* %118, align 2, !dbg !1264
  %119 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1265
  %120 = getelementptr inbounds %struct.stream, %struct.stream* %119, i32 0, i32 0, !dbg !1266
  %121 = load i8*, i8** %120, align 8, !dbg !1267
  %122 = getelementptr inbounds i8, i8* %121, i64 2, !dbg !1267
  store i8* %122, i8** %120, align 8, !dbg !1267
  %123 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1268
  %124 = getelementptr inbounds %struct.stream, %struct.stream* %123, i32 0, i32 0, !dbg !1270
  %125 = load i8*, i8** %124, align 8, !dbg !1270
  %126 = bitcast i8* %125 to i32*, !dbg !1271
  %127 = load i32, i32* %126, align 4, !dbg !1271
  %128 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1272
  %129 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %128, i32 0, i32 2, !dbg !1273
  store i32 %127, i32* %129, align 4, !dbg !1274
  %130 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1275
  %131 = getelementptr inbounds %struct.stream, %struct.stream* %130, i32 0, i32 0, !dbg !1276
  %132 = load i8*, i8** %131, align 8, !dbg !1277
  %133 = getelementptr inbounds i8, i8* %132, i64 4, !dbg !1277
  store i8* %133, i8** %131, align 8, !dbg !1277
  %134 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1278
  %135 = getelementptr inbounds %struct.stream, %struct.stream* %134, i32 0, i32 0, !dbg !1280
  %136 = load i8*, i8** %135, align 8, !dbg !1280
  %137 = bitcast i8* %136 to i32*, !dbg !1281
  %138 = load i32, i32* %137, align 4, !dbg !1281
  %139 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1282
  %140 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %139, i32 0, i32 3, !dbg !1283
  store i32 %138, i32* %140, align 4, !dbg !1284
  %141 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1285
  %142 = getelementptr inbounds %struct.stream, %struct.stream* %141, i32 0, i32 0, !dbg !1286
  %143 = load i8*, i8** %142, align 8, !dbg !1287
  %144 = getelementptr inbounds i8, i8* %143, i64 4, !dbg !1287
  store i8* %144, i8** %142, align 8, !dbg !1287
  %145 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1288
  %146 = getelementptr inbounds %struct.stream, %struct.stream* %145, i32 0, i32 0, !dbg !1290
  %147 = load i8*, i8** %146, align 8, !dbg !1290
  %148 = bitcast i8* %147 to i16*, !dbg !1291
  %149 = load i16, i16* %148, align 2, !dbg !1291
  %150 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1292
  %151 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %150, i32 0, i32 4, !dbg !1293
  store i16 %149, i16* %151, align 4, !dbg !1294
  %152 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1295
  %153 = getelementptr inbounds %struct.stream, %struct.stream* %152, i32 0, i32 0, !dbg !1296
  %154 = load i8*, i8** %153, align 8, !dbg !1297
  %155 = getelementptr inbounds i8, i8* %154, i64 2, !dbg !1297
  store i8* %155, i8** %153, align 8, !dbg !1297
  %156 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1298
  %157 = getelementptr inbounds %struct.stream, %struct.stream* %156, i32 0, i32 0, !dbg !1300
  %158 = load i8*, i8** %157, align 8, !dbg !1300
  %159 = bitcast i8* %158 to i16*, !dbg !1301
  %160 = load i16, i16* %159, align 2, !dbg !1301
  %161 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1302
  %162 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %161, i32 0, i32 5, !dbg !1303
  store i16 %160, i16* %162, align 2, !dbg !1304
  %163 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1305
  %164 = getelementptr inbounds %struct.stream, %struct.stream* %163, i32 0, i32 0, !dbg !1306
  %165 = load i8*, i8** %164, align 8, !dbg !1307
  %166 = getelementptr inbounds i8, i8* %165, i64 2, !dbg !1307
  store i8* %166, i8** %164, align 8, !dbg !1307
  %167 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1308
  %168 = getelementptr inbounds %struct.stream, %struct.stream* %167, i32 0, i32 0, !dbg !1310
  %169 = load i8*, i8** %168, align 8, !dbg !1310
  %170 = bitcast i8* %169 to i16*, !dbg !1311
  %171 = load i16, i16* %170, align 2, !dbg !1311
  %172 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1312
  %173 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %172, i32 0, i32 6, !dbg !1313
  store i16 %171, i16* %173, align 4, !dbg !1314
  %174 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1315
  %175 = getelementptr inbounds %struct.stream, %struct.stream* %174, i32 0, i32 0, !dbg !1316
  %176 = load i8*, i8** %175, align 8, !dbg !1317
  %177 = getelementptr inbounds i8, i8* %176, i64 2, !dbg !1317
  store i8* %177, i8** %175, align 8, !dbg !1317
  %178 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1318
  %179 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %178, i32 0, i32 6, !dbg !1319
  %180 = load i16, i16* %179, align 4, !dbg !1319
  %181 = zext i16 %180 to i32, !dbg !1318
  store i32 %181, i32* %10, align 4, !dbg !1320
  store i32 0, i32* %11, align 4, !dbg !1321
  %182 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1322
  %183 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %182, i32 0, i32 6, !dbg !1324
  %184 = load i16, i16* %183, align 4, !dbg !1324
  %185 = zext i16 %184 to i32, !dbg !1322
  %186 = icmp sgt i32 %185, 256, !dbg !1325
  br i1 %186, label %187, label %197, !dbg !1326

; <label>:187:                                    ; preds = %97
  %188 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1327
  %189 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %188, i32 0, i32 6, !dbg !1329
  %190 = load i16, i16* %189, align 4, !dbg !1329
  %191 = zext i16 %190 to i32, !dbg !1327
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i32 0, i32 0), i32 %191), !dbg !1330
  store i32 256, i32* %10, align 4, !dbg !1331
  %192 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1332
  %193 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %192, i32 0, i32 6, !dbg !1333
  %194 = load i16, i16* %193, align 4, !dbg !1333
  %195 = zext i16 %194 to i32, !dbg !1332
  %196 = sub nsw i32 %195, 256, !dbg !1334
  store i32 %196, i32* %11, align 4, !dbg !1335
  br label %197, !dbg !1336

; <label>:197:                                    ; preds = %187, %97
  %198 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1337
  %199 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %198, i32 0, i32 7, !dbg !1339
  %200 = getelementptr inbounds [256 x i8], [256 x i8]* %199, i32 0, i32 0, !dbg !1340
  %201 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1341
  %202 = getelementptr inbounds %struct.stream, %struct.stream* %201, i32 0, i32 0, !dbg !1342
  %203 = load i8*, i8** %202, align 8, !dbg !1342
  %204 = load i32, i32* %10, align 4, !dbg !1343
  %205 = sext i32 %204 to i64, !dbg !1343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %200, i8* %203, i64 %205, i32 1, i1 false), !dbg !1340
  %206 = load i32, i32* %10, align 4, !dbg !1344
  %207 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1345
  %208 = getelementptr inbounds %struct.stream, %struct.stream* %207, i32 0, i32 0, !dbg !1346
  %209 = load i8*, i8** %208, align 8, !dbg !1347
  %210 = sext i32 %206 to i64, !dbg !1347
  %211 = getelementptr inbounds i8, i8* %209, i64 %210, !dbg !1347
  store i8* %211, i8** %208, align 8, !dbg !1347
  %212 = load i32, i32* %11, align 4, !dbg !1348
  %213 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1349
  %214 = getelementptr inbounds %struct.stream, %struct.stream* %213, i32 0, i32 0, !dbg !1350
  %215 = load i8*, i8** %214, align 8, !dbg !1351
  %216 = sext i32 %212 to i64, !dbg !1351
  %217 = getelementptr inbounds i8, i8* %215, i64 %216, !dbg !1351
  store i8* %217, i8** %214, align 8, !dbg !1351
  %218 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1352
  %219 = icmp ne %struct.audio_driver* %218, null, !dbg !1352
  br i1 %219, label %220, label %234, !dbg !1354

; <label>:220:                                    ; preds = %197
  %221 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1355
  %222 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %221, i32 0, i32 4, !dbg !1357
  %223 = load i32 (%struct._RD_WAVEFORMATEX*)*, i32 (%struct._RD_WAVEFORMATEX*)** %222, align 8, !dbg !1357
  %224 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1358
  %225 = call i32 %223(%struct._RD_WAVEFORMATEX* %224), !dbg !1355
  %226 = icmp ne i32 %225, 0, !dbg !1355
  br i1 %226, label %227, label %234, !dbg !1359

; <label>:227:                                    ; preds = %220
  %228 = load i32, i32* @format_count, align 4, !dbg !1360
  %229 = add i32 %228, 1, !dbg !1360
  store i32 %229, i32* @format_count, align 4, !dbg !1360
  %230 = load i32, i32* @format_count, align 4, !dbg !1362
  %231 = icmp eq i32 %230, 10, !dbg !1364
  br i1 %231, label %232, label %233, !dbg !1365

; <label>:232:                                    ; preds = %227
  br label %238, !dbg !1366

; <label>:233:                                    ; preds = %227
  br label %234, !dbg !1367

; <label>:234:                                    ; preds = %233, %220, %197
  br label %235, !dbg !1368

; <label>:235:                                    ; preds = %234
  %236 = load i16, i16* %4, align 2, !dbg !1369
  %237 = add i16 %236, 1, !dbg !1369
  store i16 %237, i16* %4, align 2, !dbg !1369
  br label %91, !dbg !1371, !llvm.loop !1372

; <label>:238:                                    ; preds = %232, %91
  br label %239, !dbg !1374

; <label>:239:                                    ; preds = %238, %77
  %240 = load i32, i32* @format_count, align 4, !dbg !1375
  %241 = mul i32 18, %240, !dbg !1376
  %242 = add i32 20, %241, !dbg !1377
  %243 = trunc i32 %242 to i16, !dbg !1378
  %244 = call %struct.stream* @rdpsnd_init_packet(i8 zeroext 7, i16 zeroext %243), !dbg !1379
  store %struct.stream* %244, %struct.stream** %8, align 8, !dbg !1380
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1381, metadata !194), !dbg !1382
  store i32 2, i32* %12, align 4, !dbg !1382
  %245 = load i32, i32* @g_rdpsnd, align 4, !dbg !1383
  %246 = icmp ne i32 %245, 0, !dbg !1383
  br i1 %246, label %247, label %250, !dbg !1385

; <label>:247:                                    ; preds = %239
  %248 = load i32, i32* %12, align 4, !dbg !1386
  %249 = or i32 %248, 1, !dbg !1386
  store i32 %249, i32* %12, align 4, !dbg !1386
  br label %250, !dbg !1388

; <label>:250:                                    ; preds = %247, %239
  %251 = load i32, i32* %12, align 4, !dbg !1389
  %252 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1391
  %253 = getelementptr inbounds %struct.stream, %struct.stream* %252, i32 0, i32 0, !dbg !1392
  %254 = load i8*, i8** %253, align 8, !dbg !1392
  %255 = bitcast i8* %254 to i32*, !dbg !1393
  store i32 %251, i32* %255, align 4, !dbg !1394
  %256 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1395
  %257 = getelementptr inbounds %struct.stream, %struct.stream* %256, i32 0, i32 0, !dbg !1396
  %258 = load i8*, i8** %257, align 8, !dbg !1397
  %259 = getelementptr inbounds i8, i8* %258, i64 4, !dbg !1397
  store i8* %259, i8** %257, align 8, !dbg !1397
  %260 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1398
  %261 = getelementptr inbounds %struct.stream, %struct.stream* %260, i32 0, i32 0, !dbg !1400
  %262 = load i8*, i8** %261, align 8, !dbg !1400
  %263 = bitcast i8* %262 to i32*, !dbg !1401
  store i32 -1, i32* %263, align 4, !dbg !1402
  %264 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1403
  %265 = getelementptr inbounds %struct.stream, %struct.stream* %264, i32 0, i32 0, !dbg !1404
  %266 = load i8*, i8** %265, align 8, !dbg !1405
  %267 = getelementptr inbounds i8, i8* %266, i64 4, !dbg !1405
  store i8* %267, i8** %265, align 8, !dbg !1405
  %268 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1406
  %269 = getelementptr inbounds %struct.stream, %struct.stream* %268, i32 0, i32 0, !dbg !1408
  %270 = load i8*, i8** %269, align 8, !dbg !1408
  %271 = bitcast i8* %270 to i32*, !dbg !1409
  store i32 0, i32* %271, align 4, !dbg !1410
  %272 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1411
  %273 = getelementptr inbounds %struct.stream, %struct.stream* %272, i32 0, i32 0, !dbg !1412
  %274 = load i8*, i8** %273, align 8, !dbg !1413
  %275 = getelementptr inbounds i8, i8* %274, i64 4, !dbg !1413
  store i8* %275, i8** %273, align 8, !dbg !1413
  %276 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1414
  %277 = getelementptr inbounds %struct.stream, %struct.stream* %276, i32 0, i32 0, !dbg !1416
  %278 = load i8*, i8** %277, align 8, !dbg !1416
  %279 = bitcast i8* %278 to i16*, !dbg !1417
  store i16 0, i16* %279, align 2, !dbg !1418
  %280 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1419
  %281 = getelementptr inbounds %struct.stream, %struct.stream* %280, i32 0, i32 0, !dbg !1420
  %282 = load i8*, i8** %281, align 8, !dbg !1421
  %283 = getelementptr inbounds i8, i8* %282, i64 2, !dbg !1421
  store i8* %283, i8** %281, align 8, !dbg !1421
  %284 = load i32, i32* @format_count, align 4, !dbg !1422
  %285 = trunc i32 %284 to i16, !dbg !1422
  %286 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1424
  %287 = getelementptr inbounds %struct.stream, %struct.stream* %286, i32 0, i32 0, !dbg !1425
  %288 = load i8*, i8** %287, align 8, !dbg !1425
  %289 = bitcast i8* %288 to i16*, !dbg !1426
  store i16 %285, i16* %289, align 2, !dbg !1427
  %290 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1428
  %291 = getelementptr inbounds %struct.stream, %struct.stream* %290, i32 0, i32 0, !dbg !1429
  %292 = load i8*, i8** %291, align 8, !dbg !1430
  %293 = getelementptr inbounds i8, i8* %292, i64 2, !dbg !1430
  store i8* %293, i8** %291, align 8, !dbg !1430
  %294 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1431
  %295 = getelementptr inbounds %struct.stream, %struct.stream* %294, i32 0, i32 0, !dbg !1432
  %296 = load i8*, i8** %295, align 8, !dbg !1433
  %297 = getelementptr inbounds i8, i8* %296, i32 1, !dbg !1433
  store i8* %297, i8** %295, align 8, !dbg !1433
  store i8 0, i8* %296, align 1, !dbg !1434
  %298 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1435
  %299 = getelementptr inbounds %struct.stream, %struct.stream* %298, i32 0, i32 0, !dbg !1437
  %300 = load i8*, i8** %299, align 8, !dbg !1437
  %301 = bitcast i8* %300 to i16*, !dbg !1438
  store i16 2, i16* %301, align 2, !dbg !1439
  %302 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1440
  %303 = getelementptr inbounds %struct.stream, %struct.stream* %302, i32 0, i32 0, !dbg !1441
  %304 = load i8*, i8** %303, align 8, !dbg !1442
  %305 = getelementptr inbounds i8, i8* %304, i64 2, !dbg !1442
  store i8* %305, i8** %303, align 8, !dbg !1442
  %306 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1443
  %307 = getelementptr inbounds %struct.stream, %struct.stream* %306, i32 0, i32 0, !dbg !1444
  %308 = load i8*, i8** %307, align 8, !dbg !1445
  %309 = getelementptr inbounds i8, i8* %308, i32 1, !dbg !1445
  store i8* %309, i8** %307, align 8, !dbg !1445
  store i8 0, i8* %308, align 1, !dbg !1446
  store i16 0, i16* %4, align 2, !dbg !1447
  br label %310, !dbg !1449

; <label>:310:                                    ; preds = %393, %250
  %311 = load i16, i16* %4, align 2, !dbg !1450
  %312 = zext i16 %311 to i32, !dbg !1450
  %313 = load i32, i32* @format_count, align 4, !dbg !1453
  %314 = icmp ult i32 %312, %313, !dbg !1454
  br i1 %314, label %315, label %396, !dbg !1455

; <label>:315:                                    ; preds = %310
  %316 = load i16, i16* %4, align 2, !dbg !1456
  %317 = zext i16 %316 to i64, !dbg !1458
  %318 = getelementptr inbounds [10 x %struct._RD_WAVEFORMATEX], [10 x %struct._RD_WAVEFORMATEX]* @formats, i64 0, i64 %317, !dbg !1458
  store %struct._RD_WAVEFORMATEX* %318, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1459
  %319 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1460
  %320 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %319, i32 0, i32 0, !dbg !1462
  %321 = load i16, i16* %320, align 4, !dbg !1462
  %322 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1463
  %323 = getelementptr inbounds %struct.stream, %struct.stream* %322, i32 0, i32 0, !dbg !1464
  %324 = load i8*, i8** %323, align 8, !dbg !1464
  %325 = bitcast i8* %324 to i16*, !dbg !1465
  store i16 %321, i16* %325, align 2, !dbg !1466
  %326 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1467
  %327 = getelementptr inbounds %struct.stream, %struct.stream* %326, i32 0, i32 0, !dbg !1468
  %328 = load i8*, i8** %327, align 8, !dbg !1469
  %329 = getelementptr inbounds i8, i8* %328, i64 2, !dbg !1469
  store i8* %329, i8** %327, align 8, !dbg !1469
  %330 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1470
  %331 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %330, i32 0, i32 1, !dbg !1472
  %332 = load i16, i16* %331, align 2, !dbg !1472
  %333 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1473
  %334 = getelementptr inbounds %struct.stream, %struct.stream* %333, i32 0, i32 0, !dbg !1474
  %335 = load i8*, i8** %334, align 8, !dbg !1474
  %336 = bitcast i8* %335 to i16*, !dbg !1475
  store i16 %332, i16* %336, align 2, !dbg !1476
  %337 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1477
  %338 = getelementptr inbounds %struct.stream, %struct.stream* %337, i32 0, i32 0, !dbg !1478
  %339 = load i8*, i8** %338, align 8, !dbg !1479
  %340 = getelementptr inbounds i8, i8* %339, i64 2, !dbg !1479
  store i8* %340, i8** %338, align 8, !dbg !1479
  %341 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1480
  %342 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %341, i32 0, i32 2, !dbg !1482
  %343 = load i32, i32* %342, align 4, !dbg !1482
  %344 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1483
  %345 = getelementptr inbounds %struct.stream, %struct.stream* %344, i32 0, i32 0, !dbg !1484
  %346 = load i8*, i8** %345, align 8, !dbg !1484
  %347 = bitcast i8* %346 to i32*, !dbg !1485
  store i32 %343, i32* %347, align 4, !dbg !1486
  %348 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1487
  %349 = getelementptr inbounds %struct.stream, %struct.stream* %348, i32 0, i32 0, !dbg !1488
  %350 = load i8*, i8** %349, align 8, !dbg !1489
  %351 = getelementptr inbounds i8, i8* %350, i64 4, !dbg !1489
  store i8* %351, i8** %349, align 8, !dbg !1489
  %352 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1490
  %353 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %352, i32 0, i32 3, !dbg !1492
  %354 = load i32, i32* %353, align 4, !dbg !1492
  %355 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1493
  %356 = getelementptr inbounds %struct.stream, %struct.stream* %355, i32 0, i32 0, !dbg !1494
  %357 = load i8*, i8** %356, align 8, !dbg !1494
  %358 = bitcast i8* %357 to i32*, !dbg !1495
  store i32 %354, i32* %358, align 4, !dbg !1496
  %359 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1497
  %360 = getelementptr inbounds %struct.stream, %struct.stream* %359, i32 0, i32 0, !dbg !1498
  %361 = load i8*, i8** %360, align 8, !dbg !1499
  %362 = getelementptr inbounds i8, i8* %361, i64 4, !dbg !1499
  store i8* %362, i8** %360, align 8, !dbg !1499
  %363 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1500
  %364 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %363, i32 0, i32 4, !dbg !1502
  %365 = load i16, i16* %364, align 4, !dbg !1502
  %366 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1503
  %367 = getelementptr inbounds %struct.stream, %struct.stream* %366, i32 0, i32 0, !dbg !1504
  %368 = load i8*, i8** %367, align 8, !dbg !1504
  %369 = bitcast i8* %368 to i16*, !dbg !1505
  store i16 %365, i16* %369, align 2, !dbg !1506
  %370 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1507
  %371 = getelementptr inbounds %struct.stream, %struct.stream* %370, i32 0, i32 0, !dbg !1508
  %372 = load i8*, i8** %371, align 8, !dbg !1509
  %373 = getelementptr inbounds i8, i8* %372, i64 2, !dbg !1509
  store i8* %373, i8** %371, align 8, !dbg !1509
  %374 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %7, align 8, !dbg !1510
  %375 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %374, i32 0, i32 5, !dbg !1512
  %376 = load i16, i16* %375, align 2, !dbg !1512
  %377 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1513
  %378 = getelementptr inbounds %struct.stream, %struct.stream* %377, i32 0, i32 0, !dbg !1514
  %379 = load i8*, i8** %378, align 8, !dbg !1514
  %380 = bitcast i8* %379 to i16*, !dbg !1515
  store i16 %376, i16* %380, align 2, !dbg !1516
  %381 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1517
  %382 = getelementptr inbounds %struct.stream, %struct.stream* %381, i32 0, i32 0, !dbg !1518
  %383 = load i8*, i8** %382, align 8, !dbg !1519
  %384 = getelementptr inbounds i8, i8* %383, i64 2, !dbg !1519
  store i8* %384, i8** %382, align 8, !dbg !1519
  %385 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1520
  %386 = getelementptr inbounds %struct.stream, %struct.stream* %385, i32 0, i32 0, !dbg !1522
  %387 = load i8*, i8** %386, align 8, !dbg !1522
  %388 = bitcast i8* %387 to i16*, !dbg !1523
  store i16 0, i16* %388, align 2, !dbg !1524
  %389 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1525
  %390 = getelementptr inbounds %struct.stream, %struct.stream* %389, i32 0, i32 0, !dbg !1526
  %391 = load i8*, i8** %390, align 8, !dbg !1527
  %392 = getelementptr inbounds i8, i8* %391, i64 2, !dbg !1527
  store i8* %392, i8** %390, align 8, !dbg !1527
  br label %393, !dbg !1528

; <label>:393:                                    ; preds = %315
  %394 = load i16, i16* %4, align 2, !dbg !1529
  %395 = add i16 %394, 1, !dbg !1529
  store i16 %395, i16* %4, align 2, !dbg !1529
  br label %310, !dbg !1531, !llvm.loop !1532

; <label>:396:                                    ; preds = %310
  %397 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1534
  %398 = getelementptr inbounds %struct.stream, %struct.stream* %397, i32 0, i32 0, !dbg !1535
  %399 = load i8*, i8** %398, align 8, !dbg !1535
  %400 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1536
  %401 = getelementptr inbounds %struct.stream, %struct.stream* %400, i32 0, i32 1, !dbg !1537
  store i8* %399, i8** %401, align 8, !dbg !1538
  %402 = load i32, i32* @format_count, align 4, !dbg !1539
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0), i32 %402), !dbg !1540
  %403 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1541
  call void @rdpsnd_send(%struct.stream* %403), !dbg !1542
  store i32 1, i32* @rdpsnd_negotiated, align 4, !dbg !1543
  ret void, !dbg !1544
}

; Function Attrs: nounwind uwtable
define internal void @rdpsnd_process_training(%struct.stream*) #0 !dbg !1545 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !1546, metadata !194), !dbg !1547
  call void @llvm.dbg.declare(metadata i16* %3, metadata !1548, metadata !194), !dbg !1549
  call void @llvm.dbg.declare(metadata i16* %4, metadata !1550, metadata !194), !dbg !1551
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !1552, metadata !194), !dbg !1553
  %6 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1554
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 0, !dbg !1556
  %8 = load i8*, i8** %7, align 8, !dbg !1556
  %9 = bitcast i8* %8 to i16*, !dbg !1557
  %10 = load i16, i16* %9, align 2, !dbg !1557
  store i16 %10, i16* %3, align 2, !dbg !1558
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1559
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !1560
  %13 = load i8*, i8** %12, align 8, !dbg !1561
  %14 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !1561
  store i8* %14, i8** %12, align 8, !dbg !1561
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1562
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !1564
  %17 = load i8*, i8** %16, align 8, !dbg !1564
  %18 = bitcast i8* %17 to i16*, !dbg !1565
  %19 = load i16, i16* %18, align 2, !dbg !1565
  store i16 %19, i16* %4, align 2, !dbg !1566
  %20 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1567
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !1568
  %22 = load i8*, i8** %21, align 8, !dbg !1569
  %23 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !1569
  store i8* %23, i8** %21, align 8, !dbg !1569
  %24 = load i16, i16* %3, align 2, !dbg !1570
  %25 = zext i16 %24 to i32, !dbg !1571
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), i32 %25), !dbg !1572
  %26 = call %struct.stream* @rdpsnd_init_packet(i8 zeroext 6, i16 zeroext 4), !dbg !1573
  store %struct.stream* %26, %struct.stream** %5, align 8, !dbg !1574
  %27 = load i16, i16* %3, align 2, !dbg !1575
  %28 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1577
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !1578
  %30 = load i8*, i8** %29, align 8, !dbg !1578
  %31 = bitcast i8* %30 to i16*, !dbg !1579
  store i16 %27, i16* %31, align 2, !dbg !1580
  %32 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1581
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 0, !dbg !1582
  %34 = load i8*, i8** %33, align 8, !dbg !1583
  %35 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !1583
  store i8* %35, i8** %33, align 8, !dbg !1583
  %36 = load i16, i16* %4, align 2, !dbg !1584
  %37 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1586
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 0, !dbg !1587
  %39 = load i8*, i8** %38, align 8, !dbg !1587
  %40 = bitcast i8* %39 to i16*, !dbg !1588
  store i16 %36, i16* %40, align 2, !dbg !1589
  %41 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1590
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !1591
  %43 = load i8*, i8** %42, align 8, !dbg !1592
  %44 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !1592
  store i8* %44, i8** %42, align 8, !dbg !1592
  %45 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1593
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 0, !dbg !1594
  %47 = load i8*, i8** %46, align 8, !dbg !1594
  %48 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1595
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 1, !dbg !1596
  store i8* %47, i8** %49, align 8, !dbg !1597
  %50 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1598
  call void @rdpsnd_send(%struct.stream* %50), !dbg !1599
  ret void, !dbg !1600
}

; Function Attrs: nounwind uwtable
define internal %struct.stream* @rdpsnd_init_packet(i8 zeroext, i16 zeroext) #0 !dbg !1601 {
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca %struct.stream*, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1604, metadata !194), !dbg !1605
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !1606, metadata !194), !dbg !1607
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !1608, metadata !194), !dbg !1609
  %6 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpsnd_channel, align 8, !dbg !1610
  %7 = load i16, i16* %4, align 2, !dbg !1611
  %8 = zext i16 %7 to i32, !dbg !1611
  %9 = add nsw i32 %8, 4, !dbg !1612
  %10 = call %struct.stream* @channel_init(%struct._VCHANNEL* %6, i32 %9), !dbg !1613
  store %struct.stream* %10, %struct.stream** %5, align 8, !dbg !1614
  %11 = load i8, i8* %3, align 1, !dbg !1615
  %12 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1616
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !1617
  %14 = load i8*, i8** %13, align 8, !dbg !1618
  %15 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !1618
  store i8* %15, i8** %13, align 8, !dbg !1618
  store i8 %11, i8* %14, align 1, !dbg !1619
  %16 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1620
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !1621
  %18 = load i8*, i8** %17, align 8, !dbg !1622
  %19 = getelementptr inbounds i8, i8* %18, i32 1, !dbg !1622
  store i8* %19, i8** %17, align 8, !dbg !1622
  store i8 0, i8* %18, align 1, !dbg !1623
  %20 = load i16, i16* %4, align 2, !dbg !1624
  %21 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1626
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !1627
  %23 = load i8*, i8** %22, align 8, !dbg !1627
  %24 = bitcast i8* %23 to i16*, !dbg !1628
  store i16 %20, i16* %24, align 2, !dbg !1629
  %25 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1630
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1631
  %27 = load i8*, i8** %26, align 8, !dbg !1632
  %28 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !1632
  store i8* %28, i8** %26, align 8, !dbg !1632
  %29 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !1633
  ret %struct.stream* %29, !dbg !1634
}

; Function Attrs: nounwind uwtable
define internal void @rdpsnd_send(%struct.stream*) #0 !dbg !1635 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !1636, metadata !194), !dbg !1637
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1638
  %4 = load %struct._VCHANNEL*, %struct._VCHANNEL** @rdpsnd_channel, align 8, !dbg !1639
  call void @channel_send(%struct.stream* %3, %struct._VCHANNEL* %4), !dbg !1640
  ret void, !dbg !1641
}

declare %struct.stream* @channel_init(%struct._VCHANNEL*, i32) #2

declare void @channel_send(%struct.stream*, %struct._VCHANNEL*) #2

; Function Attrs: nounwind uwtable
define internal i32 @rdpsnd_auto_select() #0 !dbg !181 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @rdpsnd_auto_select.failed, align 4, !dbg !1642
  %3 = icmp ne i32 %2, 0, !dbg !1642
  br i1 %3, label %30, label %4, !dbg !1644

; <label>:4:                                      ; preds = %0
  %5 = load %struct.audio_driver*, %struct.audio_driver** @drivers, align 8, !dbg !1645
  store %struct.audio_driver* %5, %struct.audio_driver** @current_driver, align 8, !dbg !1647
  br label %6, !dbg !1648

; <label>:6:                                      ; preds = %25, %4
  %7 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1649
  %8 = icmp ne %struct.audio_driver* %7, null, !dbg !1651
  br i1 %8, label %9, label %29, !dbg !1652

; <label>:9:                                      ; preds = %6
  %10 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1653
  %11 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %10, i32 0, i32 12, !dbg !1655
  %12 = load i8*, i8** %11, align 8, !dbg !1655
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i8* %12), !dbg !1656
  %13 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1657
  %14 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %13, i32 0, i32 2, !dbg !1659
  %15 = load i32 ()*, i32 ()** %14, align 8, !dbg !1659
  %16 = call i32 %15(), !dbg !1657
  %17 = icmp ne i32 %16, 0, !dbg !1657
  br i1 %17, label %18, label %25, !dbg !1660

; <label>:18:                                     ; preds = %9
  %19 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1661
  %20 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %19, i32 0, i32 12, !dbg !1663
  %21 = load i8*, i8** %20, align 8, !dbg !1663
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0), i8* %21), !dbg !1664
  %22 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1665
  %23 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %22, i32 0, i32 3, !dbg !1666
  %24 = load void ()*, void ()** %23, align 8, !dbg !1666
  call void %24(), !dbg !1665
  store i32 1, i32* %1, align 4, !dbg !1667
  br label %31, !dbg !1667

; <label>:25:                                     ; preds = %9
  %26 = load %struct.audio_driver*, %struct.audio_driver** @current_driver, align 8, !dbg !1668
  %27 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %26, i32 0, i32 16, !dbg !1669
  %28 = load %struct.audio_driver*, %struct.audio_driver** %27, align 8, !dbg !1669
  store %struct.audio_driver* %28, %struct.audio_driver** @current_driver, align 8, !dbg !1670
  br label %6, !dbg !1671, !llvm.loop !1673

; <label>:29:                                     ; preds = %6
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0)), !dbg !1674
  store i32 1, i32* @rdpsnd_auto_select.failed, align 4, !dbg !1675
  store %struct.audio_driver* null, %struct.audio_driver** @current_driver, align 8, !dbg !1676
  br label %30, !dbg !1677

; <label>:30:                                     ; preds = %29, %0
  store i32 0, i32* %1, align 4, !dbg !1678
  br label %31, !dbg !1678

; <label>:31:                                     ; preds = %30, %18
  %32 = load i32, i32* %1, align 4, !dbg !1679
  ret i32 %32, !dbg !1679
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

declare i32 @str_handle_lines(i8*, i8**, i32 (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @rdpsnddbg_line_handler(i8*, i8*) #0 !dbg !1680 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1685, metadata !194), !dbg !1686
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1687, metadata !194), !dbg !1688
  %5 = load i8*, i8** %4, align 8, !dbg !1689
  %6 = load i8*, i8** %3, align 8, !dbg !1690
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0), i8* %6), !dbg !1691
  ret i32 1, !dbg !1692
}

declare void @xfree(i8*) #2

declare %struct.audio_driver* @oss_register(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!185, !186}
!llvm.ident = !{!187}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !37)
!1 = !DIFile(filename: "[inter]rdpsnd.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !{!23, !27, !28, !31, !32, !33, !35}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !25, line: 39, baseType: !26)
!25 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!26 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !25, line: 41, baseType: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!31 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !25, line: 43, baseType: !32)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!37 = !{!38, !116, !147, !148, !149, !150, !151, !152, !153, !164, !165, !166, !167, !168, !173, !174, !175, !176, !180, !182, !183}
!38 = distinct !DIGlobalVariable(name: "current_driver", scope: !0, file: !39, line: 53, type: !40, isLocal: false, isDefinition: true, variable: %struct.audio_driver** @current_driver)
!39 = !DIFile(filename: "rdpsnd.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "audio_driver", file: !42, line: 30, size: 1024, align: 64, elements: !43)
!42 = !DIFile(filename: "rdpsnd.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!43 = !{!44, !69, !73, !78, !82, !101, !102, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "add_fds", scope: !41, file: !42, line: 32, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !49, !49, !60}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !51, line: 75, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 64, size: 1024, align: 64, elements: !53)
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !52, file: !51, line: 72, baseType: !55, size: 1024, align: 64)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1024, align: 64, elements: !58)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !51, line: 54, baseType: !57)
!57 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!58 = !{!59}
!59 = !DISubrange(count: 16)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !62, line: 30, size: 128, align: 64, elements: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!63 = !{!64, !67}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !61, file: !62, line: 32, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !66, line: 139, baseType: !57)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !61, file: !62, line: 33, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !66, line: 141, baseType: !57)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "check_fds", scope: !41, file: !42, line: 33, baseType: !70, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !49, !49}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_open", scope: !41, file: !42, line: 35, baseType: !74, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !25, line: 28, baseType: !31)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_close", scope: !41, file: !42, line: 36, baseType: !79, size: 64, align: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_format_supported", scope: !41, file: !42, line: 37, baseType: !83, size: 64, align: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!77, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_WAVEFORMATEX", file: !25, line: 197, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RD_WAVEFORMATEX", file: !25, line: 187, size: 2208, align: 32, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "wFormatTag", scope: !88, file: !25, line: 189, baseType: !29, size: 16, align: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "nChannels", scope: !88, file: !25, line: 190, baseType: !29, size: 16, align: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "nSamplesPerSec", scope: !88, file: !25, line: 191, baseType: !34, size: 32, align: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "nAvgBytesPerSec", scope: !88, file: !25, line: 192, baseType: !34, size: 32, align: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "nBlockAlign", scope: !88, file: !25, line: 193, baseType: !29, size: 16, align: 16, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "wBitsPerSample", scope: !88, file: !25, line: 194, baseType: !29, size: 16, align: 16, offset: 112)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cbSize", scope: !88, file: !25, line: 195, baseType: !29, size: 16, align: 16, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !88, file: !25, line: 196, baseType: !98, size: 2048, align: 8, offset: 144)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_set_format", scope: !41, file: !42, line: 38, baseType: !83, size: 64, align: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_volume", scope: !41, file: !42, line: 39, baseType: !103, size: 64, align: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !29, !29}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_open", scope: !41, file: !42, line: 41, baseType: !74, size: 64, align: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_close", scope: !41, file: !42, line: 42, baseType: !79, size: 64, align: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_format_supported", scope: !41, file: !42, line: 43, baseType: !83, size: 64, align: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_set_format", scope: !41, file: !42, line: 44, baseType: !83, size: 64, align: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_volume", scope: !41, file: !42, line: 45, baseType: !103, size: 64, align: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !41, file: !42, line: 47, baseType: !35, size: 64, align: 64, offset: 768)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !41, file: !42, line: 48, baseType: !35, size: 64, align: 64, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "need_byteswap_on_be", scope: !41, file: !42, line: 49, baseType: !31, size: 32, align: 32, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "need_resampling", scope: !41, file: !42, line: 50, baseType: !31, size: 32, align: 32, offset: 928)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !41, file: !42, line: 51, baseType: !40, size: 64, align: 64, offset: 960)
!116 = distinct !DIGlobalVariable(name: "rdpsnd_channel", scope: !0, file: !39, line: 50, type: !117, isLocal: true, isDefinition: true, variable: %struct._VCHANNEL** @rdpsnd_channel)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "VCHANNEL", file: !25, line: 169, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_VCHANNEL", file: !25, line: 161, size: 768, align: 64, elements: !120)
!120 = !{!121, !122, !126, !127, !141}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_id", scope: !119, file: !25, line: 163, baseType: !29, size: 16, align: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !119, file: !25, line: 164, baseType: !123, size: 64, align: 8, offset: 16)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 64, align: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 8)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !25, line: 165, baseType: !34, size: 32, align: 32, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !119, file: !25, line: 166, baseType: !128, size: 576, align: 64, offset: 128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !129, line: 25, size: 576, align: 64, elements: !130)
!129 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!130 = !{!131, !133, !134, !135, !136, !137, !138, !139, !140}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !128, file: !129, line: 27, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !128, file: !129, line: 28, baseType: !132, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !128, file: !129, line: 29, baseType: !132, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !128, file: !129, line: 30, baseType: !32, size: 32, align: 32, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !128, file: !129, line: 33, baseType: !132, size: 64, align: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !128, file: !129, line: 34, baseType: !132, size: 64, align: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !128, file: !129, line: 35, baseType: !132, size: 64, align: 64, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !128, file: !129, line: 36, baseType: !132, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !128, file: !129, line: 37, baseType: !132, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !119, file: !25, line: 167, baseType: !142, size: 64, align: 64, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !145}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !129, line: 40, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!147 = distinct !DIGlobalVariable(name: "rdpsnddbg_channel", scope: !0, file: !39, line: 51, type: !117, isLocal: true, isDefinition: true, variable: %struct._VCHANNEL** @rdpsnddbg_channel)
!148 = distinct !DIGlobalVariable(name: "rdpsnd_negotiated", scope: !0, file: !39, line: 55, type: !77, isLocal: true, isDefinition: true, variable: i32* @rdpsnd_negotiated)
!149 = distinct !DIGlobalVariable(name: "device_open", scope: !0, file: !39, line: 57, type: !77, isLocal: true, isDefinition: true, variable: i32* @device_open)
!150 = distinct !DIGlobalVariable(name: "queue_hi", scope: !0, file: !39, line: 63, type: !32, isLocal: false, isDefinition: true, variable: i32* @queue_hi)
!151 = distinct !DIGlobalVariable(name: "queue_lo", scope: !0, file: !39, line: 63, type: !32, isLocal: false, isDefinition: true, variable: i32* @queue_lo)
!152 = distinct !DIGlobalVariable(name: "queue_pending", scope: !0, file: !39, line: 63, type: !32, isLocal: false, isDefinition: true, variable: i32* @queue_pending)
!153 = distinct !DIGlobalVariable(name: "packet_queue", scope: !0, file: !39, line: 64, type: !154, isLocal: false, isDefinition: true, variable: [50 x %struct.audio_packet]* @packet_queue)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 44800, align: 64, elements: !162)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "audio_packet", file: !42, line: 20, size: 896, align: 64, elements: !156)
!156 = !{!157, !158, !159, !160, !161}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !155, file: !42, line: 22, baseType: !128, size: 576, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !155, file: !42, line: 23, baseType: !29, size: 16, align: 16, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !155, file: !42, line: 24, baseType: !24, size: 8, align: 8, offset: 592)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "arrive_tv", scope: !155, file: !42, line: 26, baseType: !61, size: 128, align: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "completion_tv", scope: !155, file: !42, line: 27, baseType: !61, size: 128, align: 64, offset: 768)
!162 = !{!163}
!163 = !DISubrange(count: 50)
!164 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !39, line: 67, type: !128, isLocal: true, isDefinition: true, variable: %struct.stream* @packet)
!165 = distinct !DIGlobalVariable(name: "wave_out_play", scope: !0, file: !39, line: 69, type: !79, isLocal: false, isDefinition: true, variable: void ()** @wave_out_play)
!166 = distinct !DIGlobalVariable(name: "drivers", scope: !0, file: !39, line: 52, type: !40, isLocal: true, isDefinition: true, variable: %struct.audio_driver** @drivers)
!167 = distinct !DIGlobalVariable(name: "packet_opcode", scope: !0, file: !39, line: 66, type: !24, isLocal: true, isDefinition: true, variable: i8* @packet_opcode)
!168 = distinct !DIGlobalVariable(name: "tick", scope: !169, file: !39, line: 289, type: !29, isLocal: true, isDefinition: true, variable: i16* @rdpsnd_process_packet.tick)
!169 = distinct !DISubprogram(name: "rdpsnd_process_packet", scope: !39, file: !39, line: 286, type: !170, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !24, !145}
!172 = !{}
!173 = distinct !DIGlobalVariable(name: "format", scope: !169, file: !39, line: 289, type: !29, isLocal: true, isDefinition: true, variable: i16* @rdpsnd_process_packet.format)
!174 = distinct !DIGlobalVariable(name: "packet_index", scope: !169, file: !39, line: 290, type: !24, isLocal: true, isDefinition: true, variable: i8* @rdpsnd_process_packet.packet_index)
!175 = distinct !DIGlobalVariable(name: "current_format", scope: !0, file: !39, line: 61, type: !32, isLocal: true, isDefinition: true, variable: i32* @current_format)
!176 = distinct !DIGlobalVariable(name: "formats", scope: !0, file: !39, line: 59, type: !177, isLocal: true, isDefinition: true, variable: [10 x %struct._RD_WAVEFORMATEX]* @formats)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 22080, align: 32, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 10)
!180 = distinct !DIGlobalVariable(name: "failed", scope: !181, file: !39, line: 122, type: !77, isLocal: true, isDefinition: true, variable: i32* @rdpsnd_auto_select.failed)
!181 = distinct !DISubprogram(name: "rdpsnd_auto_select", scope: !39, file: !39, line: 120, type: !75, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!182 = distinct !DIGlobalVariable(name: "format_count", scope: !0, file: !39, line: 60, type: !32, isLocal: true, isDefinition: true, variable: i32* @format_count)
!183 = distinct !DIGlobalVariable(name: "rest", scope: !184, file: !39, line: 445, type: !35, isLocal: true, isDefinition: true, variable: i8** @rdpsnddbg_process.rest)
!184 = distinct !DISubprogram(name: "rdpsnddbg_process", scope: !39, file: !39, line: 442, type: !143, isLocal: true, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!185 = !{i32 2, !"Dwarf Version", i32 4}
!186 = !{i32 2, !"Debug Info Version", i32 3}
!187 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!188 = distinct !DISubprogram(name: "rdpsnd_record", scope: !39, file: !39, line: 112, type: !189, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !191, !32}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!193 = !DILocalVariable(name: "data", arg: 1, scope: !188, file: !39, line: 112, type: !191)
!194 = !DIExpression()
!195 = !DILocation(line: 112, column: 27, scope: !188)
!196 = !DILocalVariable(name: "size", arg: 2, scope: !188, file: !39, line: 112, type: !32)
!197 = !DILocation(line: 112, column: 46, scope: !188)
!198 = !DILocation(line: 114, column: 9, scope: !188)
!199 = !DILocation(line: 115, column: 9, scope: !188)
!200 = !DILocation(line: 117, column: 1, scope: !188)
!201 = distinct !DISubprogram(name: "rdpsnd_init", scope: !39, file: !39, line: 500, type: !202, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!202 = !DISubroutineType(types: !203)
!203 = !{!77, !35}
!204 = !DILocalVariable(name: "optarg", arg: 1, scope: !201, file: !39, line: 500, type: !35)
!205 = !DILocation(line: 500, column: 19, scope: !201)
!206 = !DILocalVariable(name: "pos", scope: !201, file: !39, line: 502, type: !40)
!207 = !DILocation(line: 502, column: 23, scope: !201)
!208 = !DILocalVariable(name: "driver", scope: !201, file: !39, line: 503, type: !35)
!209 = !DILocation(line: 503, column: 8, scope: !201)
!210 = !DILocalVariable(name: "options", scope: !201, file: !39, line: 503, type: !35)
!211 = !DILocation(line: 503, column: 23, scope: !201)
!212 = !DILocation(line: 505, column: 10, scope: !201)
!213 = !DILocation(line: 507, column: 26, scope: !201)
!214 = !DILocation(line: 507, column: 14, scope: !201)
!215 = !DILocation(line: 508, column: 33, scope: !201)
!216 = !DILocation(line: 508, column: 24, scope: !201)
!217 = !DILocation(line: 508, column: 11, scope: !201)
!218 = !DILocation(line: 509, column: 14, scope: !201)
!219 = !DILocation(line: 512, column: 3, scope: !201)
!220 = !DILocation(line: 511, column: 17, scope: !201)
!221 = !DILocation(line: 516, column: 3, scope: !201)
!222 = !DILocation(line: 515, column: 20, scope: !201)
!223 = !DILocation(line: 519, column: 7, scope: !224)
!224 = distinct !DILexicalBlock(scope: !201, file: !39, line: 519, column: 6)
!225 = !DILocation(line: 519, column: 22, scope: !224)
!226 = !DILocation(line: 519, column: 30, scope: !224)
!227 = !DILocation(line: 519, column: 34, scope: !228)
!228 = !DILexicalBlockFile(scope: !224, file: !39, discriminator: 1)
!229 = !DILocation(line: 519, column: 52, scope: !228)
!230 = !DILocation(line: 519, column: 6, scope: !228)
!231 = !DILocation(line: 521, column: 3, scope: !232)
!232 = distinct !DILexicalBlock(scope: !224, file: !39, line: 520, column: 2)
!233 = !DILocation(line: 523, column: 3, scope: !232)
!234 = !DILocation(line: 526, column: 2, scope: !201)
!235 = !DILocation(line: 528, column: 6, scope: !236)
!236 = distinct !DILexicalBlock(scope: !201, file: !39, line: 528, column: 6)
!237 = !DILocation(line: 528, column: 13, scope: !236)
!238 = !DILocation(line: 528, column: 20, scope: !236)
!239 = !DILocation(line: 528, column: 30, scope: !240)
!240 = !DILexicalBlockFile(scope: !236, file: !39, discriminator: 1)
!241 = !DILocation(line: 528, column: 23, scope: !240)
!242 = !DILocation(line: 528, column: 38, scope: !240)
!243 = !DILocation(line: 528, column: 6, scope: !240)
!244 = !DILocation(line: 530, column: 22, scope: !245)
!245 = distinct !DILexicalBlock(scope: !236, file: !39, line: 529, column: 2)
!246 = !DILocation(line: 530, column: 20, scope: !245)
!247 = !DILocation(line: 530, column: 10, scope: !245)
!248 = !DILocation(line: 532, column: 3, scope: !245)
!249 = !DILocation(line: 532, column: 11, scope: !250)
!250 = !DILexicalBlockFile(scope: !245, file: !39, discriminator: 1)
!251 = !DILocation(line: 532, column: 10, scope: !250)
!252 = !DILocation(line: 532, column: 19, scope: !250)
!253 = !DILocation(line: 532, column: 27, scope: !250)
!254 = !DILocation(line: 532, column: 31, scope: !255)
!255 = !DILexicalBlockFile(scope: !245, file: !39, discriminator: 2)
!256 = !DILocation(line: 532, column: 30, scope: !255)
!257 = !DILocation(line: 532, column: 39, scope: !255)
!258 = !DILocation(line: 532, column: 3, scope: !259)
!259 = !DILexicalBlockFile(scope: !245, file: !39, discriminator: 3)
!260 = !DILocation(line: 533, column: 11, scope: !245)
!261 = !DILocation(line: 532, column: 3, scope: !262)
!262 = !DILexicalBlockFile(scope: !245, file: !39, discriminator: 4)
!263 = distinct !{!263, !248}
!264 = !DILocation(line: 535, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !245, file: !39, line: 535, column: 7)
!266 = !DILocation(line: 535, column: 7, scope: !265)
!267 = !DILocation(line: 535, column: 16, scope: !265)
!268 = !DILocation(line: 535, column: 7, scope: !245)
!269 = !DILocation(line: 537, column: 5, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !39, line: 536, column: 3)
!271 = !DILocation(line: 537, column: 13, scope: !270)
!272 = !DILocation(line: 538, column: 11, scope: !270)
!273 = !DILocation(line: 539, column: 3, scope: !270)
!274 = !DILocation(line: 541, column: 8, scope: !275)
!275 = distinct !DILexicalBlock(scope: !245, file: !39, line: 541, column: 7)
!276 = !DILocation(line: 541, column: 7, scope: !275)
!277 = !DILocation(line: 541, column: 16, scope: !275)
!278 = !DILocation(line: 541, column: 7, scope: !245)
!279 = !DILocation(line: 542, column: 12, scope: !275)
!280 = !DILocation(line: 542, column: 4, scope: !275)
!281 = !DILocation(line: 543, column: 2, scope: !245)
!282 = !DILocation(line: 545, column: 26, scope: !201)
!283 = !DILocation(line: 545, column: 2, scope: !201)
!284 = !DILocation(line: 547, column: 7, scope: !285)
!285 = distinct !DILexicalBlock(scope: !201, file: !39, line: 547, column: 6)
!286 = !DILocation(line: 547, column: 6, scope: !201)
!287 = !DILocation(line: 548, column: 3, scope: !285)
!288 = !DILocation(line: 550, column: 8, scope: !201)
!289 = !DILocation(line: 550, column: 6, scope: !201)
!290 = !DILocation(line: 551, column: 2, scope: !201)
!291 = !DILocation(line: 551, column: 9, scope: !292)
!292 = !DILexicalBlockFile(scope: !201, file: !39, discriminator: 1)
!293 = !DILocation(line: 551, column: 13, scope: !292)
!294 = !DILocation(line: 551, column: 2, scope: !292)
!295 = !DILocation(line: 553, column: 15, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !39, line: 553, column: 7)
!297 = distinct !DILexicalBlock(scope: !201, file: !39, line: 552, column: 2)
!298 = !DILocation(line: 553, column: 20, scope: !296)
!299 = !DILocation(line: 553, column: 26, scope: !296)
!300 = !DILocation(line: 553, column: 8, scope: !296)
!301 = !DILocation(line: 553, column: 7, scope: !297)
!302 = !DILocation(line: 555, column: 61, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !39, line: 554, column: 3)
!304 = !DILocation(line: 555, column: 66, scope: !303)
!305 = !DILocation(line: 555, column: 4, scope: !303)
!306 = !DILocation(line: 556, column: 21, scope: !303)
!307 = !DILocation(line: 556, column: 19, scope: !303)
!308 = !DILocation(line: 557, column: 4, scope: !303)
!309 = !DILocation(line: 559, column: 9, scope: !297)
!310 = !DILocation(line: 559, column: 14, scope: !297)
!311 = !DILocation(line: 559, column: 7, scope: !297)
!312 = !DILocation(line: 551, column: 2, scope: !313)
!313 = !DILexicalBlockFile(scope: !201, file: !39, discriminator: 2)
!314 = distinct !{!314, !290}
!315 = !DILocation(line: 561, column: 2, scope: !201)
!316 = !DILocation(line: 562, column: 1, scope: !201)
!317 = distinct !DISubprogram(name: "rdpsnd_process", scope: !39, file: !39, line: 374, type: !143, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!318 = !DILocalVariable(name: "s", arg: 1, scope: !317, file: !39, line: 374, type: !145)
!319 = !DILocation(line: 374, column: 23, scope: !317)
!320 = !DILocalVariable(name: "len", scope: !317, file: !39, line: 376, type: !29)
!321 = !DILocation(line: 376, column: 9, scope: !317)
!322 = !DILocation(line: 378, column: 2, scope: !317)
!323 = !DILocation(line: 378, column: 12, scope: !324)
!324 = !DILexicalBlockFile(scope: !317, file: !39, discriminator: 1)
!325 = !DILocation(line: 378, column: 16, scope: !324)
!326 = !DILocation(line: 378, column: 22, scope: !324)
!327 = !DILocation(line: 378, column: 26, scope: !324)
!328 = !DILocation(line: 378, column: 18, scope: !324)
!329 = !DILocation(line: 378, column: 9, scope: !324)
!330 = !DILocation(line: 378, column: 2, scope: !324)
!331 = !DILocation(line: 381, column: 14, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !39, line: 381, column: 7)
!333 = distinct !DILexicalBlock(scope: !317, file: !39, line: 379, column: 2)
!334 = !DILocation(line: 381, column: 19, scope: !332)
!335 = !DILocation(line: 381, column: 7, scope: !333)
!336 = !DILocation(line: 383, column: 9, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !39, line: 383, column: 8)
!338 = distinct !DILexicalBlock(scope: !332, file: !39, line: 382, column: 3)
!339 = !DILocation(line: 383, column: 12, scope: !337)
!340 = !DILocation(line: 383, column: 18, scope: !337)
!341 = !DILocation(line: 383, column: 21, scope: !337)
!342 = !DILocation(line: 383, column: 16, scope: !337)
!343 = !DILocation(line: 383, column: 24, scope: !337)
!344 = !DILocation(line: 383, column: 8, scope: !338)
!345 = !DILocation(line: 385, column: 5, scope: !346)
!346 = distinct !DILexicalBlock(scope: !337, file: !39, line: 384, column: 4)
!347 = !DILocation(line: 387, column: 5, scope: !346)
!348 = !DILocation(line: 389, column: 23, scope: !338)
!349 = !DILocation(line: 389, column: 27, scope: !338)
!350 = !DILocation(line: 389, column: 28, scope: !338)
!351 = !DILocation(line: 389, column: 20, scope: !338)
!352 = !DILocation(line: 389, column: 18, scope: !338)
!353 = !DILocation(line: 390, column: 5, scope: !338)
!354 = !DILocation(line: 390, column: 9, scope: !338)
!355 = !DILocation(line: 390, column: 11, scope: !338)
!356 = !DILocation(line: 391, column: 25, scope: !357)
!357 = distinct !DILexicalBlock(scope: !338, file: !39, line: 391, column: 4)
!358 = !DILocation(line: 391, column: 29, scope: !357)
!359 = !DILocation(line: 391, column: 12, scope: !357)
!360 = !DILocation(line: 391, column: 10, scope: !357)
!361 = !DILocation(line: 391, column: 34, scope: !357)
!362 = !DILocation(line: 391, column: 38, scope: !357)
!363 = !DILocation(line: 391, column: 40, scope: !357)
!364 = !DILocation(line: 394, column: 17, scope: !338)
!365 = !DILocation(line: 394, column: 11, scope: !338)
!366 = !DILocation(line: 394, column: 38, scope: !338)
!367 = !DILocation(line: 394, column: 32, scope: !338)
!368 = !DILocation(line: 393, column: 4, scope: !338)
!369 = !DILocation(line: 396, column: 22, scope: !338)
!370 = !DILocation(line: 396, column: 13, scope: !338)
!371 = !DILocation(line: 397, column: 24, scope: !338)
!372 = !DILocation(line: 397, column: 31, scope: !338)
!373 = !DILocation(line: 397, column: 29, scope: !338)
!374 = !DILocation(line: 397, column: 15, scope: !338)
!375 = !DILocation(line: 398, column: 18, scope: !338)
!376 = !DILocation(line: 398, column: 16, scope: !338)
!377 = !DILocation(line: 399, column: 3, scope: !338)
!378 = !DILocation(line: 402, column: 13, scope: !379)
!379 = distinct !DILexicalBlock(scope: !332, file: !39, line: 401, column: 3)
!380 = !DILocation(line: 402, column: 16, scope: !379)
!381 = !DILocation(line: 402, column: 22, scope: !379)
!382 = !DILocation(line: 402, column: 25, scope: !379)
!383 = !DILocation(line: 402, column: 20, scope: !379)
!384 = !DILocation(line: 402, column: 38, scope: !379)
!385 = !DILocation(line: 402, column: 51, scope: !379)
!386 = !DILocation(line: 402, column: 42, scope: !379)
!387 = !DILocation(line: 402, column: 28, scope: !379)
!388 = !DILocation(line: 402, column: 11, scope: !379)
!389 = !DILocation(line: 402, column: 58, scope: !390)
!390 = !DILexicalBlockFile(scope: !379, file: !39, discriminator: 1)
!391 = !DILocation(line: 402, column: 61, scope: !390)
!392 = !DILocation(line: 402, column: 67, scope: !390)
!393 = !DILocation(line: 402, column: 70, scope: !390)
!394 = !DILocation(line: 402, column: 65, scope: !390)
!395 = !DILocation(line: 402, column: 11, scope: !390)
!396 = !DILocation(line: 402, column: 83, scope: !397)
!397 = !DILexicalBlockFile(scope: !379, file: !39, discriminator: 2)
!398 = !DILocation(line: 402, column: 96, scope: !397)
!399 = !DILocation(line: 402, column: 87, scope: !397)
!400 = !DILocation(line: 402, column: 11, scope: !397)
!401 = !DILocation(line: 402, column: 11, scope: !402)
!402 = !DILexicalBlockFile(scope: !379, file: !39, discriminator: 3)
!403 = !DILocation(line: 402, column: 10, scope: !402)
!404 = !DILocation(line: 402, column: 8, scope: !402)
!405 = !DILocation(line: 405, column: 8, scope: !406)
!406 = distinct !DILexicalBlock(scope: !379, file: !39, line: 405, column: 8)
!407 = !DILocation(line: 405, column: 22, scope: !406)
!408 = !DILocation(line: 405, column: 8, scope: !379)
!409 = !DILocation(line: 407, column: 17, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !39, line: 407, column: 9)
!411 = distinct !DILexicalBlock(scope: !406, file: !39, line: 406, column: 4)
!412 = !DILocation(line: 407, column: 28, scope: !410)
!413 = !DILocation(line: 407, column: 19, scope: !410)
!414 = !DILocation(line: 407, column: 34, scope: !410)
!415 = !DILocation(line: 407, column: 9, scope: !411)
!416 = !DILocation(line: 408, column: 15, scope: !410)
!417 = !DILocation(line: 408, column: 14, scope: !410)
!418 = !DILocation(line: 408, column: 36, scope: !410)
!419 = !DILocation(line: 408, column: 47, scope: !410)
!420 = !DILocation(line: 408, column: 38, scope: !410)
!421 = !DILocation(line: 408, column: 26, scope: !410)
!422 = !DILocation(line: 408, column: 20, scope: !410)
!423 = !DILocation(line: 408, column: 13, scope: !410)
!424 = !DILocation(line: 408, column: 58, scope: !425)
!425 = !DILexicalBlockFile(scope: !410, file: !39, discriminator: 1)
!426 = !DILocation(line: 408, column: 57, scope: !425)
!427 = !DILocation(line: 408, column: 13, scope: !425)
!428 = !DILocation(line: 408, column: 79, scope: !429)
!429 = !DILexicalBlockFile(scope: !410, file: !39, discriminator: 2)
!430 = !DILocation(line: 408, column: 90, scope: !429)
!431 = !DILocation(line: 408, column: 81, scope: !429)
!432 = !DILocation(line: 408, column: 69, scope: !429)
!433 = !DILocation(line: 408, column: 13, scope: !429)
!434 = !DILocation(line: 408, column: 13, scope: !435)
!435 = !DILexicalBlockFile(scope: !410, file: !39, discriminator: 3)
!436 = !DILocation(line: 408, column: 12, scope: !435)
!437 = !DILocation(line: 408, column: 10, scope: !435)
!438 = !DILocation(line: 408, column: 6, scope: !435)
!439 = !DILocation(line: 409, column: 22, scope: !440)
!440 = distinct !DILexicalBlock(scope: !410, file: !39, line: 409, column: 14)
!441 = !DILocation(line: 409, column: 33, scope: !440)
!442 = !DILocation(line: 409, column: 24, scope: !440)
!443 = !DILocation(line: 409, column: 39, scope: !440)
!444 = !DILocation(line: 409, column: 14, scope: !410)
!445 = !DILocation(line: 413, column: 13, scope: !446)
!446 = distinct !DILexicalBlock(scope: !440, file: !39, line: 410, column: 5)
!447 = !DILocation(line: 411, column: 6, scope: !446)
!448 = !DILocation(line: 414, column: 7, scope: !446)
!449 = !DILocation(line: 414, column: 11, scope: !446)
!450 = !DILocation(line: 414, column: 13, scope: !446)
!451 = !DILocation(line: 415, column: 10, scope: !446)
!452 = !DILocation(line: 416, column: 5, scope: !446)
!453 = !DILocation(line: 417, column: 4, scope: !411)
!454 = !DILocation(line: 419, column: 20, scope: !455)
!455 = distinct !DILexicalBlock(scope: !379, file: !39, line: 419, column: 4)
!456 = !DILocation(line: 419, column: 23, scope: !455)
!457 = !DILocation(line: 419, column: 27, scope: !455)
!458 = !DILocation(line: 419, column: 29, scope: !455)
!459 = !DILocation(line: 419, column: 6, scope: !455)
!460 = !DILocation(line: 419, column: 45, scope: !455)
!461 = !DILocation(line: 419, column: 36, scope: !455)
!462 = !DILocation(line: 419, column: 40, scope: !455)
!463 = !DILocation(line: 419, column: 42, scope: !455)
!464 = !DILocation(line: 420, column: 16, scope: !379)
!465 = !DILocation(line: 420, column: 13, scope: !379)
!466 = !DILocation(line: 424, column: 14, scope: !467)
!467 = distinct !DILexicalBlock(scope: !333, file: !39, line: 424, column: 7)
!468 = !DILocation(line: 424, column: 26, scope: !467)
!469 = !DILocation(line: 424, column: 16, scope: !467)
!470 = !DILocation(line: 424, column: 7, scope: !333)
!471 = !DILocation(line: 426, column: 22, scope: !472)
!472 = distinct !DILexicalBlock(scope: !467, file: !39, line: 425, column: 3)
!473 = !DILocation(line: 426, column: 13, scope: !472)
!474 = !DILocation(line: 427, column: 26, scope: !472)
!475 = !DILocation(line: 427, column: 4, scope: !472)
!476 = !DILocation(line: 428, column: 16, scope: !472)
!477 = !DILocation(line: 429, column: 3, scope: !472)
!478 = !DILocation(line: 378, column: 2, scope: !479)
!479 = !DILexicalBlockFile(scope: !317, file: !39, discriminator: 2)
!480 = distinct !{!480, !322}
!481 = !DILocation(line: 431, column: 1, scope: !317)
!482 = !DILocalVariable(name: "s", arg: 1, scope: !184, file: !39, line: 442, type: !145)
!483 = !DILocation(line: 442, column: 26, scope: !184)
!484 = !DILocalVariable(name: "pkglen", scope: !184, file: !39, line: 444, type: !32)
!485 = !DILocation(line: 444, column: 15, scope: !184)
!486 = !DILocalVariable(name: "buf", scope: !184, file: !39, line: 446, type: !35)
!487 = !DILocation(line: 446, column: 8, scope: !184)
!488 = !DILocation(line: 448, column: 11, scope: !184)
!489 = !DILocation(line: 448, column: 14, scope: !184)
!490 = !DILocation(line: 448, column: 20, scope: !184)
!491 = !DILocation(line: 448, column: 23, scope: !184)
!492 = !DILocation(line: 448, column: 18, scope: !184)
!493 = !DILocation(line: 448, column: 9, scope: !184)
!494 = !DILocation(line: 450, column: 25, scope: !184)
!495 = !DILocation(line: 450, column: 32, scope: !184)
!496 = !DILocation(line: 450, column: 17, scope: !184)
!497 = !DILocation(line: 450, column: 6, scope: !184)
!498 = !DILocation(line: 451, column: 12, scope: !499)
!499 = distinct !DILexicalBlock(scope: !184, file: !39, line: 451, column: 2)
!500 = !DILocation(line: 451, column: 25, scope: !499)
!501 = !DILocation(line: 451, column: 28, scope: !499)
!502 = !DILocation(line: 451, column: 30, scope: !499)
!503 = !DILocation(line: 451, column: 37, scope: !499)
!504 = !DILocation(line: 451, column: 41, scope: !499)
!505 = !DILocation(line: 451, column: 4, scope: !499)
!506 = !DILocation(line: 451, column: 50, scope: !499)
!507 = !DILocation(line: 451, column: 57, scope: !499)
!508 = !DILocation(line: 451, column: 61, scope: !499)
!509 = !DILocation(line: 451, column: 46, scope: !499)
!510 = !DILocation(line: 451, column: 65, scope: !499)
!511 = !DILocation(line: 453, column: 19, scope: !184)
!512 = !DILocation(line: 453, column: 2, scope: !184)
!513 = !DILocation(line: 455, column: 8, scope: !184)
!514 = !DILocation(line: 455, column: 2, scope: !184)
!515 = !DILocation(line: 456, column: 1, scope: !184)
!516 = distinct !DISubprogram(name: "rdpsnd_queue_init", scope: !39, file: !39, line: 655, type: !80, isLocal: true, isDefinition: true, scopeLine: 656, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!517 = !DILocation(line: 657, column: 38, scope: !516)
!518 = !DILocation(line: 657, column: 27, scope: !516)
!519 = !DILocation(line: 657, column: 16, scope: !516)
!520 = !DILocation(line: 658, column: 1, scope: !516)
!521 = distinct !DISubprogram(name: "rdpsnd_register_drivers", scope: !39, file: !39, line: 459, type: !522, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !35}
!524 = !DILocalVariable(name: "options", arg: 1, scope: !521, file: !39, line: 459, type: !35)
!525 = !DILocation(line: 459, column: 31, scope: !521)
!526 = !DILocalVariable(name: "reg", scope: !521, file: !39, line: 461, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!528 = !DILocation(line: 461, column: 24, scope: !521)
!529 = !DILocation(line: 465, column: 6, scope: !521)
!530 = !DILocation(line: 482, column: 22, scope: !521)
!531 = !DILocation(line: 482, column: 9, scope: !521)
!532 = !DILocation(line: 482, column: 3, scope: !521)
!533 = !DILocation(line: 482, column: 7, scope: !521)
!534 = !DILocation(line: 483, column: 2, scope: !521)
!535 = !DILocation(line: 483, column: 1, scope: !521)
!536 = !DILocation(line: 483, column: 2, scope: !537)
!537 = !DILexicalBlockFile(scope: !521, file: !39, discriminator: 1)
!538 = !DILocation(line: 483, column: 18, scope: !539)
!539 = !DILexicalBlockFile(scope: !521, file: !39, discriminator: 2)
!540 = !DILocation(line: 483, column: 2, scope: !541)
!541 = !DILexicalBlockFile(scope: !521, file: !39, discriminator: 3)
!542 = !DILocation(line: 484, column: 12, scope: !521)
!543 = !DILocation(line: 484, column: 11, scope: !521)
!544 = !DILocation(line: 484, column: 18, scope: !521)
!545 = !DILocation(line: 484, column: 6, scope: !521)
!546 = !DILocation(line: 496, column: 3, scope: !521)
!547 = !DILocation(line: 496, column: 7, scope: !521)
!548 = !DILocation(line: 497, column: 1, scope: !521)
!549 = distinct !DISubprogram(name: "rdpsnd_reset_state", scope: !39, file: !39, line: 565, type: !80, isLocal: false, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!550 = !DILocation(line: 567, column: 6, scope: !551)
!551 = distinct !DILexicalBlock(scope: !549, file: !39, line: 567, column: 6)
!552 = !DILocation(line: 567, column: 6, scope: !549)
!553 = !DILocation(line: 568, column: 3, scope: !551)
!554 = !DILocation(line: 568, column: 19, scope: !551)
!555 = !DILocation(line: 569, column: 14, scope: !549)
!556 = !DILocation(line: 570, column: 2, scope: !549)
!557 = !DILocation(line: 571, column: 20, scope: !549)
!558 = !DILocation(line: 572, column: 1, scope: !549)
!559 = distinct !DISubprogram(name: "rdpsnd_queue_clear", scope: !39, file: !39, line: 661, type: !80, isLocal: true, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!560 = !DILocalVariable(name: "packet", scope: !559, file: !39, line: 663, type: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!562 = !DILocation(line: 663, column: 23, scope: !559)
!563 = !DILocation(line: 666, column: 2, scope: !559)
!564 = !DILocation(line: 666, column: 9, scope: !565)
!565 = !DILexicalBlockFile(scope: !559, file: !39, discriminator: 1)
!566 = !DILocation(line: 666, column: 26, scope: !565)
!567 = !DILocation(line: 666, column: 23, scope: !565)
!568 = !DILocation(line: 666, column: 2, scope: !565)
!569 = !DILocation(line: 668, column: 26, scope: !570)
!570 = distinct !DILexicalBlock(scope: !559, file: !39, line: 667, column: 2)
!571 = !DILocation(line: 668, column: 13, scope: !570)
!572 = !DILocation(line: 668, column: 10, scope: !570)
!573 = !DILocation(line: 669, column: 9, scope: !570)
!574 = !DILocation(line: 669, column: 17, scope: !570)
!575 = !DILocation(line: 669, column: 19, scope: !570)
!576 = !DILocation(line: 669, column: 3, scope: !570)
!577 = !DILocation(line: 670, column: 20, scope: !570)
!578 = !DILocation(line: 670, column: 34, scope: !570)
!579 = !DILocation(line: 670, column: 39, scope: !570)
!580 = !DILocation(line: 670, column: 17, scope: !570)
!581 = !DILocation(line: 666, column: 2, scope: !582)
!582 = !DILexicalBlockFile(scope: !559, file: !39, discriminator: 2)
!583 = distinct !{!583, !563}
!584 = !DILocation(line: 674, column: 38, scope: !559)
!585 = !DILocation(line: 674, column: 27, scope: !559)
!586 = !DILocation(line: 674, column: 16, scope: !559)
!587 = !DILocation(line: 675, column: 1, scope: !559)
!588 = distinct !DISubprogram(name: "rdpsnd_show_help", scope: !39, file: !39, line: 576, type: !80, isLocal: false, isDefinition: true, scopeLine: 577, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!589 = !DILocalVariable(name: "pos", scope: !588, file: !39, line: 578, type: !40)
!590 = !DILocation(line: 578, column: 23, scope: !588)
!591 = !DILocation(line: 580, column: 2, scope: !588)
!592 = !DILocation(line: 582, column: 8, scope: !588)
!593 = !DILocation(line: 582, column: 6, scope: !588)
!594 = !DILocation(line: 583, column: 2, scope: !588)
!595 = !DILocation(line: 583, column: 9, scope: !596)
!596 = !DILexicalBlockFile(scope: !588, file: !39, discriminator: 1)
!597 = !DILocation(line: 583, column: 13, scope: !596)
!598 = !DILocation(line: 583, column: 2, scope: !596)
!599 = !DILocation(line: 585, column: 10, scope: !600)
!600 = distinct !DILexicalBlock(scope: !588, file: !39, line: 584, column: 2)
!601 = !DILocation(line: 585, column: 52, scope: !600)
!602 = !DILocation(line: 585, column: 57, scope: !600)
!603 = !DILocation(line: 585, column: 63, scope: !600)
!604 = !DILocation(line: 585, column: 68, scope: !600)
!605 = !DILocation(line: 585, column: 3, scope: !600)
!606 = !DILocation(line: 586, column: 9, scope: !600)
!607 = !DILocation(line: 586, column: 14, scope: !600)
!608 = !DILocation(line: 586, column: 7, scope: !600)
!609 = !DILocation(line: 583, column: 2, scope: !610)
!610 = !DILexicalBlockFile(scope: !588, file: !39, discriminator: 2)
!611 = distinct !{!611, !594}
!612 = !DILocation(line: 588, column: 1, scope: !588)
!613 = distinct !DISubprogram(name: "rdpsnd_add_fds", scope: !39, file: !39, line: 591, type: !46, isLocal: false, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!614 = !DILocalVariable(name: "n", arg: 1, scope: !613, file: !39, line: 591, type: !48)
!615 = !DILocation(line: 591, column: 21, scope: !613)
!616 = !DILocalVariable(name: "rfds", arg: 2, scope: !613, file: !39, line: 591, type: !49)
!617 = !DILocation(line: 591, column: 33, scope: !613)
!618 = !DILocalVariable(name: "wfds", arg: 3, scope: !613, file: !39, line: 591, type: !49)
!619 = !DILocation(line: 591, column: 48, scope: !613)
!620 = !DILocalVariable(name: "tv", arg: 4, scope: !613, file: !39, line: 591, type: !60)
!621 = !DILocation(line: 591, column: 70, scope: !613)
!622 = !DILocalVariable(name: "next_pending", scope: !613, file: !39, line: 593, type: !57)
!623 = !DILocation(line: 593, column: 7, scope: !613)
!624 = !DILocation(line: 595, column: 6, scope: !625)
!625 = distinct !DILexicalBlock(scope: !613, file: !39, line: 595, column: 6)
!626 = !DILocation(line: 595, column: 6, scope: !613)
!627 = !DILocation(line: 596, column: 3, scope: !625)
!628 = !DILocation(line: 596, column: 19, scope: !625)
!629 = !DILocation(line: 596, column: 27, scope: !625)
!630 = !DILocation(line: 596, column: 30, scope: !625)
!631 = !DILocation(line: 596, column: 36, scope: !625)
!632 = !DILocation(line: 596, column: 42, scope: !625)
!633 = !DILocation(line: 598, column: 17, scope: !613)
!634 = !DILocation(line: 598, column: 15, scope: !613)
!635 = !DILocation(line: 599, column: 6, scope: !636)
!636 = distinct !DILexicalBlock(scope: !613, file: !39, line: 599, column: 6)
!637 = !DILocation(line: 599, column: 19, scope: !636)
!638 = !DILocation(line: 599, column: 6, scope: !613)
!639 = !DILocalVariable(name: "cur_timeout", scope: !640, file: !39, line: 601, type: !57)
!640 = distinct !DILexicalBlock(scope: !636, file: !39, line: 600, column: 2)
!641 = !DILocation(line: 601, column: 8, scope: !640)
!642 = !DILocation(line: 603, column: 17, scope: !640)
!643 = !DILocation(line: 603, column: 21, scope: !640)
!644 = !DILocation(line: 603, column: 28, scope: !640)
!645 = !DILocation(line: 603, column: 40, scope: !640)
!646 = !DILocation(line: 603, column: 44, scope: !640)
!647 = !DILocation(line: 603, column: 38, scope: !640)
!648 = !DILocation(line: 603, column: 15, scope: !640)
!649 = !DILocation(line: 604, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !640, file: !39, line: 604, column: 7)
!651 = !DILocation(line: 604, column: 21, scope: !650)
!652 = !DILocation(line: 604, column: 19, scope: !650)
!653 = !DILocation(line: 604, column: 7, scope: !640)
!654 = !DILocation(line: 606, column: 17, scope: !655)
!655 = distinct !DILexicalBlock(scope: !650, file: !39, line: 605, column: 3)
!656 = !DILocation(line: 606, column: 30, scope: !655)
!657 = !DILocation(line: 606, column: 4, scope: !655)
!658 = !DILocation(line: 606, column: 8, scope: !655)
!659 = !DILocation(line: 606, column: 15, scope: !655)
!660 = !DILocation(line: 607, column: 18, scope: !655)
!661 = !DILocation(line: 607, column: 31, scope: !655)
!662 = !DILocation(line: 607, column: 4, scope: !655)
!663 = !DILocation(line: 607, column: 8, scope: !655)
!664 = !DILocation(line: 607, column: 16, scope: !655)
!665 = !DILocation(line: 608, column: 3, scope: !655)
!666 = !DILocation(line: 609, column: 2, scope: !640)
!667 = !DILocation(line: 610, column: 1, scope: !613)
!668 = distinct !DISubprogram(name: "rdpsnd_queue_next_completion", scope: !39, file: !39, line: 741, type: !669, isLocal: true, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!669 = !DISubroutineType(types: !670)
!670 = !{!57}
!671 = !DILocalVariable(name: "packet", scope: !668, file: !39, line: 743, type: !561)
!672 = !DILocation(line: 743, column: 23, scope: !668)
!673 = !DILocalVariable(name: "remaining", scope: !668, file: !39, line: 744, type: !57)
!674 = !DILocation(line: 744, column: 7, scope: !668)
!675 = !DILocalVariable(name: "now", scope: !668, file: !39, line: 745, type: !61)
!676 = !DILocation(line: 745, column: 17, scope: !668)
!677 = !DILocation(line: 747, column: 6, scope: !678)
!678 = distinct !DILexicalBlock(scope: !668, file: !39, line: 747, column: 6)
!679 = !DILocation(line: 747, column: 23, scope: !678)
!680 = !DILocation(line: 747, column: 20, scope: !678)
!681 = !DILocation(line: 747, column: 6, scope: !668)
!682 = !DILocation(line: 748, column: 3, scope: !678)
!683 = !DILocation(line: 750, column: 2, scope: !668)
!684 = !DILocation(line: 752, column: 25, scope: !668)
!685 = !DILocation(line: 752, column: 12, scope: !668)
!686 = !DILocation(line: 752, column: 9, scope: !668)
!687 = !DILocation(line: 754, column: 15, scope: !668)
!688 = !DILocation(line: 754, column: 23, scope: !668)
!689 = !DILocation(line: 754, column: 37, scope: !668)
!690 = !DILocation(line: 754, column: 50, scope: !668)
!691 = !DILocation(line: 754, column: 44, scope: !668)
!692 = !DILocation(line: 754, column: 58, scope: !668)
!693 = !DILocation(line: 755, column: 4, scope: !668)
!694 = !DILocation(line: 755, column: 12, scope: !668)
!695 = !DILocation(line: 755, column: 26, scope: !668)
!696 = !DILocation(line: 755, column: 40, scope: !668)
!697 = !DILocation(line: 755, column: 34, scope: !668)
!698 = !DILocation(line: 754, column: 68, scope: !668)
!699 = !DILocation(line: 754, column: 12, scope: !668)
!700 = !DILocation(line: 757, column: 6, scope: !701)
!701 = distinct !DILexicalBlock(scope: !668, file: !39, line: 757, column: 6)
!702 = !DILocation(line: 757, column: 16, scope: !701)
!703 = !DILocation(line: 757, column: 6, scope: !668)
!704 = !DILocation(line: 758, column: 3, scope: !701)
!705 = !DILocation(line: 760, column: 9, scope: !668)
!706 = !DILocation(line: 760, column: 2, scope: !668)
!707 = !DILocation(line: 761, column: 1, scope: !668)
!708 = distinct !DISubprogram(name: "rdpsnd_check_fds", scope: !39, file: !39, line: 613, type: !71, isLocal: false, isDefinition: true, scopeLine: 614, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!709 = !DILocalVariable(name: "rfds", arg: 1, scope: !708, file: !39, line: 613, type: !49)
!710 = !DILocation(line: 613, column: 27, scope: !708)
!711 = !DILocalVariable(name: "wfds", arg: 2, scope: !708, file: !39, line: 613, type: !49)
!712 = !DILocation(line: 613, column: 42, scope: !708)
!713 = !DILocation(line: 615, column: 2, scope: !708)
!714 = !DILocation(line: 617, column: 6, scope: !715)
!715 = distinct !DILexicalBlock(scope: !708, file: !39, line: 617, column: 6)
!716 = !DILocation(line: 617, column: 6, scope: !708)
!717 = !DILocation(line: 618, column: 3, scope: !715)
!718 = !DILocation(line: 618, column: 19, scope: !715)
!719 = !DILocation(line: 618, column: 29, scope: !715)
!720 = !DILocation(line: 618, column: 35, scope: !715)
!721 = !DILocation(line: 619, column: 1, scope: !708)
!722 = distinct !DISubprogram(name: "rdpsnd_queue_complete_pending", scope: !39, file: !39, line: 711, type: !80, isLocal: true, isDefinition: true, scopeLine: 712, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!723 = !DILocalVariable(name: "now", scope: !722, file: !39, line: 713, type: !61)
!724 = !DILocation(line: 713, column: 17, scope: !722)
!725 = !DILocalVariable(name: "elapsed", scope: !722, file: !39, line: 714, type: !57)
!726 = !DILocation(line: 714, column: 7, scope: !722)
!727 = !DILocalVariable(name: "packet", scope: !722, file: !39, line: 715, type: !561)
!728 = !DILocation(line: 715, column: 23, scope: !722)
!729 = !DILocation(line: 717, column: 2, scope: !722)
!730 = !DILocation(line: 719, column: 2, scope: !722)
!731 = !DILocation(line: 719, column: 9, scope: !732)
!732 = !DILexicalBlockFile(scope: !722, file: !39, discriminator: 1)
!733 = !DILocation(line: 719, column: 26, scope: !732)
!734 = !DILocation(line: 719, column: 23, scope: !732)
!735 = !DILocation(line: 719, column: 2, scope: !732)
!736 = !DILocation(line: 721, column: 26, scope: !737)
!737 = distinct !DILexicalBlock(scope: !722, file: !39, line: 720, column: 2)
!738 = !DILocation(line: 721, column: 13, scope: !737)
!739 = !DILocation(line: 721, column: 10, scope: !737)
!740 = !DILocation(line: 723, column: 11, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !39, line: 723, column: 7)
!742 = !DILocation(line: 723, column: 20, scope: !741)
!743 = !DILocation(line: 723, column: 28, scope: !741)
!744 = !DILocation(line: 723, column: 42, scope: !741)
!745 = !DILocation(line: 723, column: 18, scope: !741)
!746 = !DILocation(line: 723, column: 7, scope: !737)
!747 = !DILocation(line: 724, column: 4, scope: !741)
!748 = !DILocation(line: 726, column: 12, scope: !749)
!749 = distinct !DILexicalBlock(scope: !737, file: !39, line: 726, column: 7)
!750 = !DILocation(line: 726, column: 22, scope: !749)
!751 = !DILocation(line: 726, column: 30, scope: !749)
!752 = !DILocation(line: 726, column: 44, scope: !749)
!753 = !DILocation(line: 726, column: 19, scope: !749)
!754 = !DILocation(line: 726, column: 52, scope: !749)
!755 = !DILocation(line: 727, column: 12, scope: !749)
!756 = !DILocation(line: 727, column: 22, scope: !749)
!757 = !DILocation(line: 727, column: 30, scope: !749)
!758 = !DILocation(line: 727, column: 44, scope: !749)
!759 = !DILocation(line: 727, column: 20, scope: !749)
!760 = !DILocation(line: 726, column: 7, scope: !761)
!761 = !DILexicalBlockFile(scope: !737, file: !39, discriminator: 1)
!762 = !DILocation(line: 728, column: 4, scope: !749)
!763 = !DILocation(line: 730, column: 14, scope: !737)
!764 = !DILocation(line: 730, column: 22, scope: !737)
!765 = !DILocation(line: 730, column: 36, scope: !737)
!766 = !DILocation(line: 730, column: 45, scope: !737)
!767 = !DILocation(line: 730, column: 53, scope: !737)
!768 = !DILocation(line: 730, column: 63, scope: !737)
!769 = !DILocation(line: 730, column: 43, scope: !737)
!770 = !DILocation(line: 730, column: 71, scope: !737)
!771 = !DILocation(line: 731, column: 5, scope: !737)
!772 = !DILocation(line: 731, column: 13, scope: !737)
!773 = !DILocation(line: 731, column: 27, scope: !737)
!774 = !DILocation(line: 731, column: 37, scope: !737)
!775 = !DILocation(line: 731, column: 45, scope: !737)
!776 = !DILocation(line: 731, column: 55, scope: !737)
!777 = !DILocation(line: 731, column: 35, scope: !737)
!778 = !DILocation(line: 730, column: 81, scope: !737)
!779 = !DILocation(line: 730, column: 11, scope: !737)
!780 = !DILocation(line: 732, column: 11, scope: !737)
!781 = !DILocation(line: 734, column: 9, scope: !737)
!782 = !DILocation(line: 734, column: 17, scope: !737)
!783 = !DILocation(line: 734, column: 19, scope: !737)
!784 = !DILocation(line: 734, column: 3, scope: !737)
!785 = !DILocation(line: 735, column: 28, scope: !737)
!786 = !DILocation(line: 735, column: 36, scope: !737)
!787 = !DILocation(line: 735, column: 43, scope: !737)
!788 = !DILocation(line: 735, column: 41, scope: !737)
!789 = !DILocation(line: 735, column: 52, scope: !737)
!790 = !DILocation(line: 735, column: 27, scope: !737)
!791 = !DILocation(line: 735, column: 61, scope: !737)
!792 = !DILocation(line: 735, column: 69, scope: !737)
!793 = !DILocation(line: 735, column: 3, scope: !737)
!794 = !DILocation(line: 736, column: 20, scope: !737)
!795 = !DILocation(line: 736, column: 34, scope: !737)
!796 = !DILocation(line: 736, column: 39, scope: !737)
!797 = !DILocation(line: 736, column: 17, scope: !737)
!798 = !DILocation(line: 719, column: 2, scope: !799)
!799 = !DILexicalBlockFile(scope: !722, file: !39, discriminator: 2)
!800 = distinct !{!800, !730}
!801 = !DILocation(line: 738, column: 1, scope: !722)
!802 = distinct !DISubprogram(name: "rdpsnd_queue_current_packet", scope: !39, file: !39, line: 643, type: !803, isLocal: false, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!803 = !DISubroutineType(types: !804)
!804 = !{!561}
!805 = !DILocation(line: 645, column: 23, scope: !802)
!806 = !DILocation(line: 645, column: 10, scope: !802)
!807 = !DILocation(line: 645, column: 2, scope: !802)
!808 = distinct !DISubprogram(name: "rdpsnd_queue_empty", scope: !39, file: !39, line: 649, type: !75, isLocal: false, isDefinition: true, scopeLine: 650, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!809 = !DILocation(line: 651, column: 10, scope: !808)
!810 = !DILocation(line: 651, column: 22, scope: !808)
!811 = !DILocation(line: 651, column: 19, scope: !808)
!812 = !DILocation(line: 651, column: 2, scope: !808)
!813 = distinct !DISubprogram(name: "rdpsnd_queue_next", scope: !39, file: !39, line: 678, type: !814, isLocal: false, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !816}
!816 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!817 = !DILocalVariable(name: "completed_in_us", arg: 1, scope: !813, file: !39, line: 678, type: !816)
!818 = !DILocation(line: 678, column: 33, scope: !813)
!819 = !DILocalVariable(name: "packet", scope: !813, file: !39, line: 680, type: !561)
!820 = !DILocation(line: 680, column: 23, scope: !813)
!821 = !DILocation(line: 682, column: 2, scope: !813)
!822 = !DILocation(line: 682, column: 2, scope: !823)
!823 = !DILexicalBlockFile(scope: !813, file: !39, discriminator: 1)
!824 = !DILocation(line: 682, column: 18, scope: !825)
!825 = !DILexicalBlockFile(scope: !813, file: !39, discriminator: 2)
!826 = !DILocation(line: 682, column: 2, scope: !827)
!827 = !DILexicalBlockFile(scope: !813, file: !39, discriminator: 3)
!828 = !DILocation(line: 684, column: 25, scope: !813)
!829 = !DILocation(line: 684, column: 12, scope: !813)
!830 = !DILocation(line: 684, column: 9, scope: !813)
!831 = !DILocation(line: 686, column: 16, scope: !813)
!832 = !DILocation(line: 686, column: 24, scope: !813)
!833 = !DILocation(line: 686, column: 2, scope: !813)
!834 = !DILocation(line: 688, column: 35, scope: !813)
!835 = !DILocation(line: 688, column: 2, scope: !813)
!836 = !DILocation(line: 688, column: 10, scope: !813)
!837 = !DILocation(line: 688, column: 24, scope: !813)
!838 = !DILocation(line: 688, column: 32, scope: !813)
!839 = !DILocation(line: 689, column: 34, scope: !813)
!840 = !DILocation(line: 689, column: 42, scope: !813)
!841 = !DILocation(line: 689, column: 56, scope: !813)
!842 = !DILocation(line: 689, column: 64, scope: !813)
!843 = !DILocation(line: 689, column: 2, scope: !813)
!844 = !DILocation(line: 689, column: 10, scope: !813)
!845 = !DILocation(line: 689, column: 24, scope: !813)
!846 = !DILocation(line: 689, column: 31, scope: !813)
!847 = !DILocation(line: 690, column: 2, scope: !813)
!848 = !DILocation(line: 690, column: 10, scope: !813)
!849 = !DILocation(line: 690, column: 24, scope: !813)
!850 = !DILocation(line: 690, column: 32, scope: !813)
!851 = !DILocation(line: 692, column: 14, scope: !813)
!852 = !DILocation(line: 692, column: 23, scope: !813)
!853 = !DILocation(line: 692, column: 28, scope: !813)
!854 = !DILocation(line: 692, column: 11, scope: !813)
!855 = !DILocation(line: 694, column: 2, scope: !813)
!856 = !DILocation(line: 695, column: 1, scope: !813)
!857 = distinct !DISubprogram(name: "rdpsnd_queue_next_tick", scope: !39, file: !39, line: 698, type: !858, isLocal: false, isDefinition: true, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!858 = !DISubroutineType(types: !859)
!859 = !{!31}
!860 = !DILocation(line: 700, column: 8, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !39, line: 700, column: 6)
!862 = !DILocation(line: 700, column: 17, scope: !861)
!863 = !DILocation(line: 700, column: 22, scope: !861)
!864 = !DILocation(line: 700, column: 31, scope: !861)
!865 = !DILocation(line: 700, column: 28, scope: !861)
!866 = !DILocation(line: 700, column: 6, scope: !857)
!867 = !DILocation(line: 702, column: 24, scope: !868)
!868 = distinct !DILexicalBlock(scope: !861, file: !39, line: 701, column: 2)
!869 = !DILocation(line: 702, column: 33, scope: !868)
!870 = !DILocation(line: 702, column: 38, scope: !868)
!871 = !DILocation(line: 702, column: 10, scope: !868)
!872 = !DILocation(line: 702, column: 44, scope: !868)
!873 = !DILocation(line: 702, column: 3, scope: !868)
!874 = !DILocation(line: 706, column: 24, scope: !875)
!875 = distinct !DILexicalBlock(scope: !861, file: !39, line: 705, column: 2)
!876 = !DILocation(line: 706, column: 11, scope: !875)
!877 = !DILocation(line: 706, column: 34, scope: !875)
!878 = !DILocation(line: 706, column: 39, scope: !875)
!879 = !DILocation(line: 706, column: 48, scope: !875)
!880 = !DILocation(line: 706, column: 3, scope: !875)
!881 = !DILocation(line: 708, column: 1, scope: !857)
!882 = !DILocalVariable(name: "opcode", arg: 1, scope: !169, file: !39, line: 286, type: !24)
!883 = !DILocation(line: 286, column: 29, scope: !169)
!884 = !DILocalVariable(name: "s", arg: 2, scope: !169, file: !39, line: 286, type: !145)
!885 = !DILocation(line: 286, column: 44, scope: !169)
!886 = !DILocalVariable(name: "vol_left", scope: !169, file: !39, line: 288, type: !29)
!887 = !DILocation(line: 288, column: 9, scope: !169)
!888 = !DILocalVariable(name: "vol_right", scope: !169, file: !39, line: 288, type: !29)
!889 = !DILocation(line: 288, column: 19, scope: !169)
!890 = !DILocation(line: 292, column: 10, scope: !169)
!891 = !DILocation(line: 292, column: 2, scope: !169)
!892 = !DILocation(line: 295, column: 26, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !39, line: 295, column: 4)
!894 = distinct !DILexicalBlock(scope: !169, file: !39, line: 293, column: 2)
!895 = !DILocation(line: 295, column: 30, scope: !893)
!896 = !DILocation(line: 295, column: 13, scope: !893)
!897 = !DILocation(line: 295, column: 11, scope: !893)
!898 = !DILocation(line: 295, column: 35, scope: !893)
!899 = !DILocation(line: 295, column: 39, scope: !893)
!900 = !DILocation(line: 295, column: 41, scope: !893)
!901 = !DILocation(line: 296, column: 28, scope: !902)
!902 = distinct !DILexicalBlock(scope: !894, file: !39, line: 296, column: 4)
!903 = !DILocation(line: 296, column: 32, scope: !902)
!904 = !DILocation(line: 296, column: 15, scope: !902)
!905 = !DILocation(line: 296, column: 13, scope: !902)
!906 = !DILocation(line: 296, column: 37, scope: !902)
!907 = !DILocation(line: 296, column: 41, scope: !902)
!908 = !DILocation(line: 296, column: 43, scope: !902)
!909 = !DILocation(line: 297, column: 22, scope: !894)
!910 = !DILocation(line: 297, column: 26, scope: !894)
!911 = !DILocation(line: 297, column: 27, scope: !894)
!912 = !DILocation(line: 297, column: 19, scope: !894)
!913 = !DILocation(line: 297, column: 17, scope: !894)
!914 = !DILocation(line: 298, column: 5, scope: !894)
!915 = !DILocation(line: 298, column: 9, scope: !894)
!916 = !DILocation(line: 298, column: 11, scope: !894)
!917 = !DILocation(line: 301, column: 22, scope: !894)
!918 = !DILocation(line: 301, column: 11, scope: !894)
!919 = !DILocation(line: 301, column: 39, scope: !894)
!920 = !DILocation(line: 301, column: 28, scope: !894)
!921 = !DILocation(line: 301, column: 58, scope: !894)
!922 = !DILocation(line: 301, column: 47, scope: !894)
!923 = !DILocation(line: 302, column: 22, scope: !894)
!924 = !DILocation(line: 302, column: 25, scope: !894)
!925 = !DILocation(line: 302, column: 30, scope: !894)
!926 = !DILocation(line: 299, column: 4, scope: !894)
!927 = !DILocation(line: 304, column: 8, scope: !928)
!928 = distinct !DILexicalBlock(scope: !894, file: !39, line: 304, column: 8)
!929 = !DILocation(line: 304, column: 15, scope: !928)
!930 = !DILocation(line: 304, column: 8, scope: !894)
!931 = !DILocation(line: 306, column: 5, scope: !932)
!932 = distinct !DILexicalBlock(scope: !928, file: !39, line: 305, column: 4)
!933 = !DILocation(line: 308, column: 5, scope: !932)
!934 = !DILocation(line: 311, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !894, file: !39, line: 311, column: 8)
!936 = !DILocation(line: 311, column: 21, scope: !935)
!937 = !DILocation(line: 311, column: 25, scope: !938)
!938 = !DILexicalBlockFile(scope: !935, file: !39, discriminator: 1)
!939 = !DILocation(line: 311, column: 35, scope: !938)
!940 = !DILocation(line: 311, column: 32, scope: !938)
!941 = !DILocation(line: 311, column: 8, scope: !938)
!942 = !DILocation(line: 318, column: 10, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !39, line: 318, column: 9)
!944 = distinct !DILexicalBlock(scope: !935, file: !39, line: 312, column: 4)
!945 = !DILocation(line: 318, column: 9, scope: !944)
!946 = !DILocation(line: 320, column: 30, scope: !947)
!947 = distinct !DILexicalBlock(scope: !943, file: !39, line: 319, column: 5)
!948 = !DILocation(line: 320, column: 36, scope: !947)
!949 = !DILocation(line: 320, column: 6, scope: !947)
!950 = !DILocation(line: 321, column: 6, scope: !947)
!951 = !DILocation(line: 323, column: 10, scope: !952)
!952 = distinct !DILexicalBlock(scope: !944, file: !39, line: 323, column: 9)
!953 = !DILocation(line: 323, column: 22, scope: !952)
!954 = !DILocation(line: 323, column: 26, scope: !955)
!955 = !DILexicalBlockFile(scope: !952, file: !39, discriminator: 1)
!956 = !DILocation(line: 323, column: 42, scope: !955)
!957 = !DILocation(line: 323, column: 9, scope: !955)
!958 = !DILocation(line: 325, column: 30, scope: !959)
!959 = distinct !DILexicalBlock(scope: !952, file: !39, line: 324, column: 5)
!960 = !DILocation(line: 325, column: 36, scope: !959)
!961 = !DILocation(line: 325, column: 6, scope: !959)
!962 = !DILocation(line: 326, column: 6, scope: !959)
!963 = !DILocation(line: 328, column: 10, scope: !964)
!964 = distinct !DILexicalBlock(scope: !944, file: !39, line: 328, column: 9)
!965 = !DILocation(line: 328, column: 26, scope: !964)
!966 = !DILocation(line: 328, column: 55, scope: !964)
!967 = !DILocation(line: 328, column: 47, scope: !964)
!968 = !DILocation(line: 328, column: 9, scope: !944)
!969 = !DILocation(line: 330, column: 30, scope: !970)
!970 = distinct !DILexicalBlock(scope: !964, file: !39, line: 329, column: 5)
!971 = !DILocation(line: 330, column: 36, scope: !970)
!972 = !DILocation(line: 330, column: 6, scope: !970)
!973 = !DILocation(line: 331, column: 6, scope: !970)
!974 = !DILocation(line: 331, column: 22, scope: !970)
!975 = !DILocation(line: 332, column: 18, scope: !970)
!976 = !DILocation(line: 333, column: 6, scope: !970)
!977 = !DILocation(line: 335, column: 17, scope: !944)
!978 = !DILocation(line: 336, column: 22, scope: !944)
!979 = !DILocation(line: 336, column: 20, scope: !944)
!980 = !DILocation(line: 337, column: 4, scope: !944)
!981 = !DILocation(line: 340, column: 10, scope: !894)
!982 = !DILocation(line: 340, column: 13, scope: !894)
!983 = !DILocation(line: 340, column: 16, scope: !894)
!984 = !DILocation(line: 340, column: 19, scope: !894)
!985 = !DILocation(line: 340, column: 25, scope: !894)
!986 = !DILocation(line: 340, column: 28, scope: !894)
!987 = !DILocation(line: 340, column: 23, scope: !894)
!988 = !DILocation(line: 340, column: 31, scope: !894)
!989 = !DILocation(line: 341, column: 19, scope: !894)
!990 = !DILocation(line: 341, column: 11, scope: !894)
!991 = !DILocation(line: 339, column: 23, scope: !894)
!992 = !DILocation(line: 341, column: 37, scope: !894)
!993 = !DILocation(line: 341, column: 43, scope: !894)
!994 = !DILocation(line: 339, column: 4, scope: !995)
!995 = !DILexicalBlockFile(scope: !894, file: !39, discriminator: 1)
!996 = !DILocation(line: 342, column: 4, scope: !894)
!997 = !DILocation(line: 345, column: 4, scope: !894)
!998 = !DILocation(line: 346, column: 8, scope: !999)
!999 = distinct !DILexicalBlock(scope: !894, file: !39, line: 346, column: 8)
!1000 = !DILocation(line: 346, column: 8, scope: !894)
!1001 = !DILocation(line: 347, column: 5, scope: !999)
!1002 = !DILocation(line: 347, column: 21, scope: !999)
!1003 = !DILocation(line: 348, column: 16, scope: !894)
!1004 = !DILocation(line: 349, column: 4, scope: !894)
!1005 = !DILocation(line: 351, column: 29, scope: !894)
!1006 = !DILocation(line: 351, column: 4, scope: !894)
!1007 = !DILocation(line: 352, column: 4, scope: !894)
!1008 = !DILocation(line: 354, column: 28, scope: !894)
!1009 = !DILocation(line: 354, column: 4, scope: !894)
!1010 = !DILocation(line: 355, column: 4, scope: !894)
!1011 = !DILocation(line: 357, column: 30, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !894, file: !39, line: 357, column: 4)
!1013 = !DILocation(line: 357, column: 34, scope: !1012)
!1014 = !DILocation(line: 357, column: 17, scope: !1012)
!1015 = !DILocation(line: 357, column: 15, scope: !1012)
!1016 = !DILocation(line: 357, column: 39, scope: !1012)
!1017 = !DILocation(line: 357, column: 43, scope: !1012)
!1018 = !DILocation(line: 357, column: 45, scope: !1012)
!1019 = !DILocation(line: 358, column: 31, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !894, file: !39, line: 358, column: 4)
!1021 = !DILocation(line: 358, column: 35, scope: !1020)
!1022 = !DILocation(line: 358, column: 18, scope: !1020)
!1023 = !DILocation(line: 358, column: 16, scope: !1020)
!1024 = !DILocation(line: 358, column: 40, scope: !1020)
!1025 = !DILocation(line: 358, column: 44, scope: !1020)
!1026 = !DILocation(line: 358, column: 46, scope: !1020)
!1027 = !DILocation(line: 361, column: 22, scope: !894)
!1028 = !DILocation(line: 361, column: 11, scope: !894)
!1029 = !DILocation(line: 361, column: 43, scope: !894)
!1030 = !DILocation(line: 361, column: 32, scope: !894)
!1031 = !DILocation(line: 361, column: 52, scope: !894)
!1032 = !DILocation(line: 361, column: 70, scope: !894)
!1033 = !DILocation(line: 361, column: 59, scope: !894)
!1034 = !DILocation(line: 362, column: 22, scope: !894)
!1035 = !DILocation(line: 362, column: 11, scope: !894)
!1036 = !DILocation(line: 362, column: 32, scope: !894)
!1037 = !DILocation(line: 359, column: 4, scope: !894)
!1038 = !DILocation(line: 363, column: 8, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !894, file: !39, line: 363, column: 8)
!1040 = !DILocation(line: 363, column: 8, scope: !894)
!1041 = !DILocation(line: 364, column: 5, scope: !1039)
!1042 = !DILocation(line: 364, column: 21, scope: !1039)
!1043 = !DILocation(line: 364, column: 37, scope: !1039)
!1044 = !DILocation(line: 364, column: 47, scope: !1039)
!1045 = !DILocation(line: 365, column: 4, scope: !894)
!1046 = !DILocation(line: 368, column: 11, scope: !894)
!1047 = !DILocation(line: 367, column: 4, scope: !894)
!1048 = !DILocation(line: 369, column: 4, scope: !894)
!1049 = !DILocation(line: 371, column: 1, scope: !169)
!1050 = distinct !DISubprogram(name: "rdpsnd_send_waveconfirm", scope: !39, file: !39, line: 96, type: !1051, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !29, !24}
!1053 = !DILocalVariable(name: "tick", arg: 1, scope: !1050, file: !39, line: 96, type: !29)
!1054 = !DILocation(line: 96, column: 32, scope: !1050)
!1055 = !DILocalVariable(name: "packet_index", arg: 2, scope: !1050, file: !39, line: 96, type: !24)
!1056 = !DILocation(line: 96, column: 44, scope: !1050)
!1057 = !DILocalVariable(name: "s", scope: !1050, file: !39, line: 98, type: !145)
!1058 = !DILocation(line: 98, column: 9, scope: !1050)
!1059 = !DILocation(line: 100, column: 6, scope: !1050)
!1060 = !DILocation(line: 100, column: 4, scope: !1050)
!1061 = !DILocation(line: 101, column: 26, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1050, file: !39, line: 101, column: 2)
!1063 = !DILocation(line: 101, column: 17, scope: !1062)
!1064 = !DILocation(line: 101, column: 21, scope: !1062)
!1065 = !DILocation(line: 101, column: 4, scope: !1062)
!1066 = !DILocation(line: 101, column: 24, scope: !1062)
!1067 = !DILocation(line: 101, column: 33, scope: !1062)
!1068 = !DILocation(line: 101, column: 37, scope: !1062)
!1069 = !DILocation(line: 101, column: 39, scope: !1062)
!1070 = !DILocation(line: 102, column: 16, scope: !1050)
!1071 = !DILocation(line: 102, column: 5, scope: !1050)
!1072 = !DILocation(line: 102, column: 9, scope: !1050)
!1073 = !DILocation(line: 102, column: 10, scope: !1050)
!1074 = !DILocation(line: 102, column: 14, scope: !1050)
!1075 = !DILocation(line: 103, column: 5, scope: !1050)
!1076 = !DILocation(line: 103, column: 9, scope: !1050)
!1077 = !DILocation(line: 103, column: 10, scope: !1050)
!1078 = !DILocation(line: 103, column: 14, scope: !1050)
!1079 = !DILocation(line: 104, column: 14, scope: !1050)
!1080 = !DILocation(line: 104, column: 18, scope: !1050)
!1081 = !DILocation(line: 104, column: 3, scope: !1050)
!1082 = !DILocation(line: 104, column: 7, scope: !1050)
!1083 = !DILocation(line: 104, column: 11, scope: !1050)
!1084 = !DILocation(line: 105, column: 14, scope: !1050)
!1085 = !DILocation(line: 105, column: 2, scope: !1050)
!1086 = !DILocation(line: 108, column: 20, scope: !1050)
!1087 = !DILocation(line: 108, column: 9, scope: !1050)
!1088 = !DILocation(line: 108, column: 37, scope: !1050)
!1089 = !DILocation(line: 108, column: 26, scope: !1050)
!1090 = !DILocation(line: 107, column: 2, scope: !1050)
!1091 = !DILocation(line: 109, column: 1, scope: !1050)
!1092 = distinct !DISubprogram(name: "rdpsnd_queue_write", scope: !39, file: !39, line: 622, type: !1093, isLocal: true, isDefinition: true, scopeLine: 623, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !145, !29, !24}
!1095 = !DILocalVariable(name: "s", arg: 1, scope: !1092, file: !39, line: 622, type: !145)
!1096 = !DILocation(line: 622, column: 27, scope: !1092)
!1097 = !DILocalVariable(name: "tick", arg: 2, scope: !1092, file: !39, line: 622, type: !29)
!1098 = !DILocation(line: 622, column: 37, scope: !1092)
!1099 = !DILocalVariable(name: "index", arg: 3, scope: !1092, file: !39, line: 622, type: !24)
!1100 = !DILocation(line: 622, column: 49, scope: !1092)
!1101 = !DILocalVariable(name: "packet", scope: !1092, file: !39, line: 624, type: !561)
!1102 = !DILocation(line: 624, column: 23, scope: !1092)
!1103 = !DILocation(line: 624, column: 46, scope: !1092)
!1104 = !DILocation(line: 624, column: 33, scope: !1092)
!1105 = !DILocalVariable(name: "next_hi", scope: !1092, file: !39, line: 625, type: !32)
!1106 = !DILocation(line: 625, column: 15, scope: !1092)
!1107 = !DILocation(line: 625, column: 26, scope: !1092)
!1108 = !DILocation(line: 625, column: 35, scope: !1092)
!1109 = !DILocation(line: 625, column: 40, scope: !1092)
!1110 = !DILocation(line: 627, column: 6, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1092, file: !39, line: 627, column: 6)
!1112 = !DILocation(line: 627, column: 17, scope: !1111)
!1113 = !DILocation(line: 627, column: 14, scope: !1111)
!1114 = !DILocation(line: 627, column: 6, scope: !1092)
!1115 = !DILocation(line: 629, column: 3, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !39, line: 628, column: 2)
!1117 = !DILocation(line: 630, column: 3, scope: !1116)
!1118 = !DILocation(line: 633, column: 13, scope: !1092)
!1119 = !DILocation(line: 633, column: 11, scope: !1092)
!1120 = !DILocation(line: 635, column: 2, scope: !1092)
!1121 = !DILocation(line: 635, column: 10, scope: !1092)
!1122 = !DILocation(line: 635, column: 15, scope: !1092)
!1123 = !DILocation(line: 635, column: 14, scope: !1092)
!1124 = !DILocation(line: 636, column: 17, scope: !1092)
!1125 = !DILocation(line: 636, column: 2, scope: !1092)
!1126 = !DILocation(line: 636, column: 10, scope: !1092)
!1127 = !DILocation(line: 636, column: 15, scope: !1092)
!1128 = !DILocation(line: 637, column: 18, scope: !1092)
!1129 = !DILocation(line: 637, column: 2, scope: !1092)
!1130 = !DILocation(line: 637, column: 10, scope: !1092)
!1131 = !DILocation(line: 637, column: 16, scope: !1092)
!1132 = !DILocation(line: 639, column: 16, scope: !1092)
!1133 = !DILocation(line: 639, column: 24, scope: !1092)
!1134 = !DILocation(line: 639, column: 2, scope: !1092)
!1135 = !DILocation(line: 640, column: 1, scope: !1092)
!1136 = !DILocation(line: 640, column: 1, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1092, file: !39, discriminator: 1)
!1138 = distinct !DISubprogram(name: "rdpsnd_process_negotiate", scope: !39, file: !39, line: 150, type: !143, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!1139 = !DILocalVariable(name: "in", arg: 1, scope: !1138, file: !39, line: 150, type: !145)
!1140 = !DILocation(line: 150, column: 33, scope: !1138)
!1141 = !DILocalVariable(name: "in_format_count", scope: !1138, file: !39, line: 152, type: !29)
!1142 = !DILocation(line: 152, column: 9, scope: !1138)
!1143 = !DILocalVariable(name: "i", scope: !1138, file: !39, line: 152, type: !29)
!1144 = !DILocation(line: 152, column: 26, scope: !1138)
!1145 = !DILocalVariable(name: "pad", scope: !1138, file: !39, line: 153, type: !24)
!1146 = !DILocation(line: 153, column: 8, scope: !1138)
!1147 = !DILocalVariable(name: "version", scope: !1138, file: !39, line: 154, type: !29)
!1148 = !DILocation(line: 154, column: 9, scope: !1138)
!1149 = !DILocalVariable(name: "format", scope: !1138, file: !39, line: 155, type: !86)
!1150 = !DILocation(line: 155, column: 19, scope: !1138)
!1151 = !DILocalVariable(name: "out", scope: !1138, file: !39, line: 156, type: !145)
!1152 = !DILocation(line: 156, column: 9, scope: !1138)
!1153 = !DILocalVariable(name: "device_available", scope: !1138, file: !39, line: 157, type: !77)
!1154 = !DILocation(line: 157, column: 10, scope: !1138)
!1155 = !DILocalVariable(name: "readcnt", scope: !1138, file: !39, line: 158, type: !31)
!1156 = !DILocation(line: 158, column: 6, scope: !1138)
!1157 = !DILocalVariable(name: "discardcnt", scope: !1138, file: !39, line: 159, type: !31)
!1158 = !DILocation(line: 159, column: 6, scope: !1138)
!1159 = !DILocation(line: 161, column: 3, scope: !1138)
!1160 = !DILocation(line: 161, column: 8, scope: !1138)
!1161 = !DILocation(line: 161, column: 10, scope: !1138)
!1162 = !DILocation(line: 162, column: 35, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 162, column: 2)
!1164 = !DILocation(line: 162, column: 40, scope: !1163)
!1165 = !DILocation(line: 162, column: 22, scope: !1163)
!1166 = !DILocation(line: 162, column: 20, scope: !1163)
!1167 = !DILocation(line: 162, column: 45, scope: !1163)
!1168 = !DILocation(line: 162, column: 50, scope: !1163)
!1169 = !DILocation(line: 162, column: 52, scope: !1163)
!1170 = !DILocation(line: 163, column: 11, scope: !1138)
!1171 = !DILocation(line: 163, column: 16, scope: !1138)
!1172 = !DILocation(line: 163, column: 17, scope: !1138)
!1173 = !DILocation(line: 163, column: 8, scope: !1138)
!1174 = !DILocation(line: 163, column: 6, scope: !1138)
!1175 = !DILocation(line: 164, column: 27, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 164, column: 2)
!1177 = !DILocation(line: 164, column: 32, scope: !1176)
!1178 = !DILocation(line: 164, column: 14, scope: !1176)
!1179 = !DILocation(line: 164, column: 12, scope: !1176)
!1180 = !DILocation(line: 164, column: 37, scope: !1176)
!1181 = !DILocation(line: 164, column: 42, scope: !1176)
!1182 = !DILocation(line: 164, column: 44, scope: !1176)
!1183 = !DILocation(line: 165, column: 3, scope: !1138)
!1184 = !DILocation(line: 165, column: 8, scope: !1138)
!1185 = !DILocation(line: 165, column: 10, scope: !1138)
!1186 = !DILocation(line: 169, column: 15, scope: !1138)
!1187 = !DILocation(line: 169, column: 9, scope: !1138)
!1188 = !DILocation(line: 169, column: 43, scope: !1138)
!1189 = !DILocation(line: 169, column: 32, scope: !1138)
!1190 = !DILocation(line: 169, column: 59, scope: !1138)
!1191 = !DILocation(line: 169, column: 48, scope: !1138)
!1192 = !DILocation(line: 167, column: 2, scope: !1138)
!1193 = !DILocation(line: 171, column: 6, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 171, column: 6)
!1195 = !DILocation(line: 171, column: 6, scope: !1138)
!1196 = !DILocation(line: 174, column: 3, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !39, line: 172, column: 2)
!1198 = !DILocation(line: 175, column: 2, scope: !1197)
!1199 = !DILocation(line: 177, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 177, column: 6)
!1201 = !DILocation(line: 177, column: 22, scope: !1200)
!1202 = !DILocation(line: 177, column: 25, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1200, file: !39, discriminator: 1)
!1204 = !DILocation(line: 177, column: 6, scope: !1203)
!1205 = !DILocation(line: 178, column: 22, scope: !1200)
!1206 = !DILocation(line: 178, column: 20, scope: !1200)
!1207 = !DILocation(line: 178, column: 3, scope: !1200)
!1208 = !DILocation(line: 180, column: 6, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 180, column: 6)
!1210 = !DILocation(line: 180, column: 21, scope: !1209)
!1211 = !DILocation(line: 180, column: 25, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1209, file: !39, discriminator: 1)
!1213 = !DILocation(line: 180, column: 42, scope: !1212)
!1214 = !DILocation(line: 180, column: 45, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1209, file: !39, discriminator: 2)
!1216 = !DILocation(line: 180, column: 61, scope: !1215)
!1217 = !DILocation(line: 180, column: 6, scope: !1215)
!1218 = !DILocation(line: 182, column: 3, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1209, file: !39, line: 181, column: 2)
!1220 = !DILocation(line: 182, column: 19, scope: !1219)
!1221 = !DILocation(line: 183, column: 20, scope: !1219)
!1222 = !DILocation(line: 184, column: 2, scope: !1219)
!1223 = !DILocation(line: 186, column: 15, scope: !1138)
!1224 = !DILocation(line: 187, column: 8, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 187, column: 6)
!1226 = !DILocation(line: 187, column: 13, scope: !1225)
!1227 = !DILocation(line: 187, column: 22, scope: !1225)
!1228 = !DILocation(line: 187, column: 20, scope: !1225)
!1229 = !DILocation(line: 187, column: 15, scope: !1225)
!1230 = !DILocation(line: 187, column: 42, scope: !1225)
!1231 = !DILocation(line: 187, column: 47, scope: !1225)
!1232 = !DILocation(line: 187, column: 38, scope: !1225)
!1233 = !DILocation(line: 187, column: 6, scope: !1138)
!1234 = !DILocation(line: 189, column: 10, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !39, line: 189, column: 3)
!1236 = distinct !DILexicalBlock(scope: !1225, file: !39, line: 188, column: 2)
!1237 = !DILocation(line: 189, column: 8, scope: !1235)
!1238 = !DILocation(line: 189, column: 15, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1240, file: !39, discriminator: 1)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !39, line: 189, column: 3)
!1241 = !DILocation(line: 189, column: 19, scope: !1239)
!1242 = !DILocation(line: 189, column: 17, scope: !1239)
!1243 = !DILocation(line: 189, column: 3, scope: !1239)
!1244 = !DILocation(line: 191, column: 22, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !39, line: 190, column: 3)
!1246 = !DILocation(line: 191, column: 14, scope: !1245)
!1247 = !DILocation(line: 191, column: 11, scope: !1245)
!1248 = !DILocation(line: 192, column: 40, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !39, line: 192, column: 4)
!1250 = !DILocation(line: 192, column: 45, scope: !1249)
!1251 = !DILocation(line: 192, column: 27, scope: !1249)
!1252 = !DILocation(line: 192, column: 6, scope: !1249)
!1253 = !DILocation(line: 192, column: 14, scope: !1249)
!1254 = !DILocation(line: 192, column: 25, scope: !1249)
!1255 = !DILocation(line: 192, column: 50, scope: !1249)
!1256 = !DILocation(line: 192, column: 55, scope: !1249)
!1257 = !DILocation(line: 192, column: 57, scope: !1249)
!1258 = !DILocation(line: 193, column: 39, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1245, file: !39, line: 193, column: 4)
!1260 = !DILocation(line: 193, column: 44, scope: !1259)
!1261 = !DILocation(line: 193, column: 26, scope: !1259)
!1262 = !DILocation(line: 193, column: 6, scope: !1259)
!1263 = !DILocation(line: 193, column: 14, scope: !1259)
!1264 = !DILocation(line: 193, column: 24, scope: !1259)
!1265 = !DILocation(line: 193, column: 49, scope: !1259)
!1266 = !DILocation(line: 193, column: 54, scope: !1259)
!1267 = !DILocation(line: 193, column: 56, scope: !1259)
!1268 = !DILocation(line: 194, column: 44, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1245, file: !39, line: 194, column: 4)
!1270 = !DILocation(line: 194, column: 49, scope: !1269)
!1271 = !DILocation(line: 194, column: 31, scope: !1269)
!1272 = !DILocation(line: 194, column: 6, scope: !1269)
!1273 = !DILocation(line: 194, column: 14, scope: !1269)
!1274 = !DILocation(line: 194, column: 29, scope: !1269)
!1275 = !DILocation(line: 194, column: 54, scope: !1269)
!1276 = !DILocation(line: 194, column: 59, scope: !1269)
!1277 = !DILocation(line: 194, column: 61, scope: !1269)
!1278 = !DILocation(line: 195, column: 45, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1245, file: !39, line: 195, column: 4)
!1280 = !DILocation(line: 195, column: 50, scope: !1279)
!1281 = !DILocation(line: 195, column: 32, scope: !1279)
!1282 = !DILocation(line: 195, column: 6, scope: !1279)
!1283 = !DILocation(line: 195, column: 14, scope: !1279)
!1284 = !DILocation(line: 195, column: 30, scope: !1279)
!1285 = !DILocation(line: 195, column: 55, scope: !1279)
!1286 = !DILocation(line: 195, column: 60, scope: !1279)
!1287 = !DILocation(line: 195, column: 62, scope: !1279)
!1288 = !DILocation(line: 196, column: 41, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1245, file: !39, line: 196, column: 4)
!1290 = !DILocation(line: 196, column: 46, scope: !1289)
!1291 = !DILocation(line: 196, column: 28, scope: !1289)
!1292 = !DILocation(line: 196, column: 6, scope: !1289)
!1293 = !DILocation(line: 196, column: 14, scope: !1289)
!1294 = !DILocation(line: 196, column: 26, scope: !1289)
!1295 = !DILocation(line: 196, column: 51, scope: !1289)
!1296 = !DILocation(line: 196, column: 56, scope: !1289)
!1297 = !DILocation(line: 196, column: 58, scope: !1289)
!1298 = !DILocation(line: 197, column: 44, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1245, file: !39, line: 197, column: 4)
!1300 = !DILocation(line: 197, column: 49, scope: !1299)
!1301 = !DILocation(line: 197, column: 31, scope: !1299)
!1302 = !DILocation(line: 197, column: 6, scope: !1299)
!1303 = !DILocation(line: 197, column: 14, scope: !1299)
!1304 = !DILocation(line: 197, column: 29, scope: !1299)
!1305 = !DILocation(line: 197, column: 54, scope: !1299)
!1306 = !DILocation(line: 197, column: 59, scope: !1299)
!1307 = !DILocation(line: 197, column: 61, scope: !1299)
!1308 = !DILocation(line: 198, column: 36, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1245, file: !39, line: 198, column: 4)
!1310 = !DILocation(line: 198, column: 41, scope: !1309)
!1311 = !DILocation(line: 198, column: 23, scope: !1309)
!1312 = !DILocation(line: 198, column: 6, scope: !1309)
!1313 = !DILocation(line: 198, column: 14, scope: !1309)
!1314 = !DILocation(line: 198, column: 21, scope: !1309)
!1315 = !DILocation(line: 198, column: 46, scope: !1309)
!1316 = !DILocation(line: 198, column: 51, scope: !1309)
!1317 = !DILocation(line: 198, column: 53, scope: !1309)
!1318 = !DILocation(line: 201, column: 14, scope: !1245)
!1319 = !DILocation(line: 201, column: 22, scope: !1245)
!1320 = !DILocation(line: 201, column: 12, scope: !1245)
!1321 = !DILocation(line: 202, column: 15, scope: !1245)
!1322 = !DILocation(line: 203, column: 8, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1245, file: !39, line: 203, column: 8)
!1324 = !DILocation(line: 203, column: 16, scope: !1323)
!1325 = !DILocation(line: 203, column: 23, scope: !1323)
!1326 = !DILocation(line: 203, column: 8, scope: !1245)
!1327 = !DILocation(line: 207, column: 12, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !39, line: 204, column: 4)
!1329 = !DILocation(line: 207, column: 20, scope: !1328)
!1330 = !DILocation(line: 205, column: 5, scope: !1328)
!1331 = !DILocation(line: 208, column: 13, scope: !1328)
!1332 = !DILocation(line: 209, column: 18, scope: !1328)
!1333 = !DILocation(line: 209, column: 26, scope: !1328)
!1334 = !DILocation(line: 209, column: 33, scope: !1328)
!1335 = !DILocation(line: 209, column: 16, scope: !1328)
!1336 = !DILocation(line: 210, column: 4, scope: !1328)
!1337 = !DILocation(line: 211, column: 13, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1245, file: !39, line: 211, column: 4)
!1339 = !DILocation(line: 211, column: 21, scope: !1338)
!1340 = !DILocation(line: 211, column: 6, scope: !1338)
!1341 = !DILocation(line: 211, column: 25, scope: !1338)
!1342 = !DILocation(line: 211, column: 30, scope: !1338)
!1343 = !DILocation(line: 211, column: 32, scope: !1338)
!1344 = !DILocation(line: 211, column: 53, scope: !1338)
!1345 = !DILocation(line: 211, column: 43, scope: !1338)
!1346 = !DILocation(line: 211, column: 48, scope: !1338)
!1347 = !DILocation(line: 211, column: 50, scope: !1338)
!1348 = !DILocation(line: 212, column: 15, scope: !1245)
!1349 = !DILocation(line: 212, column: 5, scope: !1245)
!1350 = !DILocation(line: 212, column: 10, scope: !1245)
!1351 = !DILocation(line: 212, column: 12, scope: !1245)
!1352 = !DILocation(line: 214, column: 8, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1245, file: !39, line: 214, column: 8)
!1354 = !DILocation(line: 214, column: 23, scope: !1353)
!1355 = !DILocation(line: 214, column: 26, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1353, file: !39, discriminator: 1)
!1357 = !DILocation(line: 214, column: 42, scope: !1356)
!1358 = !DILocation(line: 214, column: 68, scope: !1356)
!1359 = !DILocation(line: 214, column: 8, scope: !1356)
!1360 = !DILocation(line: 216, column: 17, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1353, file: !39, line: 215, column: 4)
!1362 = !DILocation(line: 217, column: 9, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1361, file: !39, line: 217, column: 9)
!1364 = !DILocation(line: 217, column: 22, scope: !1363)
!1365 = !DILocation(line: 217, column: 9, scope: !1361)
!1366 = !DILocation(line: 218, column: 6, scope: !1363)
!1367 = !DILocation(line: 219, column: 4, scope: !1361)
!1368 = !DILocation(line: 220, column: 3, scope: !1245)
!1369 = !DILocation(line: 189, column: 37, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1240, file: !39, discriminator: 2)
!1371 = !DILocation(line: 189, column: 3, scope: !1370)
!1372 = distinct !{!1372, !1373}
!1373 = !DILocation(line: 189, column: 3, scope: !1236)
!1374 = !DILocation(line: 221, column: 2, scope: !1236)
!1375 = !DILocation(line: 223, column: 43, scope: !1138)
!1376 = !DILocation(line: 223, column: 41, scope: !1138)
!1377 = !DILocation(line: 223, column: 36, scope: !1138)
!1378 = !DILocation(line: 223, column: 33, scope: !1138)
!1379 = !DILocation(line: 223, column: 8, scope: !1138)
!1380 = !DILocation(line: 223, column: 6, scope: !1138)
!1381 = !DILocalVariable(name: "flags", scope: !1138, file: !39, line: 225, type: !34)
!1382 = !DILocation(line: 225, column: 9, scope: !1138)
!1383 = !DILocation(line: 229, column: 6, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 229, column: 6)
!1385 = !DILocation(line: 229, column: 6, scope: !1138)
!1386 = !DILocation(line: 231, column: 9, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !39, line: 230, column: 2)
!1388 = !DILocation(line: 232, column: 2, scope: !1387)
!1389 = !DILocation(line: 233, column: 28, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 233, column: 2)
!1391 = !DILocation(line: 233, column: 17, scope: !1390)
!1392 = !DILocation(line: 233, column: 23, scope: !1390)
!1393 = !DILocation(line: 233, column: 4, scope: !1390)
!1394 = !DILocation(line: 233, column: 26, scope: !1390)
!1395 = !DILocation(line: 233, column: 36, scope: !1390)
!1396 = !DILocation(line: 233, column: 42, scope: !1390)
!1397 = !DILocation(line: 233, column: 44, scope: !1390)
!1398 = !DILocation(line: 235, column: 17, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 235, column: 2)
!1400 = !DILocation(line: 235, column: 23, scope: !1399)
!1401 = !DILocation(line: 235, column: 4, scope: !1399)
!1402 = !DILocation(line: 235, column: 26, scope: !1399)
!1403 = !DILocation(line: 235, column: 41, scope: !1399)
!1404 = !DILocation(line: 235, column: 47, scope: !1399)
!1405 = !DILocation(line: 235, column: 49, scope: !1399)
!1406 = !DILocation(line: 236, column: 17, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 236, column: 2)
!1408 = !DILocation(line: 236, column: 23, scope: !1407)
!1409 = !DILocation(line: 236, column: 4, scope: !1407)
!1410 = !DILocation(line: 236, column: 26, scope: !1407)
!1411 = !DILocation(line: 236, column: 32, scope: !1407)
!1412 = !DILocation(line: 236, column: 38, scope: !1407)
!1413 = !DILocation(line: 236, column: 40, scope: !1407)
!1414 = !DILocation(line: 237, column: 17, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 237, column: 2)
!1416 = !DILocation(line: 237, column: 23, scope: !1415)
!1417 = !DILocation(line: 237, column: 4, scope: !1415)
!1418 = !DILocation(line: 237, column: 26, scope: !1415)
!1419 = !DILocation(line: 237, column: 32, scope: !1415)
!1420 = !DILocation(line: 237, column: 38, scope: !1415)
!1421 = !DILocation(line: 237, column: 40, scope: !1415)
!1422 = !DILocation(line: 239, column: 28, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 239, column: 2)
!1424 = !DILocation(line: 239, column: 17, scope: !1423)
!1425 = !DILocation(line: 239, column: 23, scope: !1423)
!1426 = !DILocation(line: 239, column: 4, scope: !1423)
!1427 = !DILocation(line: 239, column: 26, scope: !1423)
!1428 = !DILocation(line: 239, column: 43, scope: !1423)
!1429 = !DILocation(line: 239, column: 49, scope: !1423)
!1430 = !DILocation(line: 239, column: 51, scope: !1423)
!1431 = !DILocation(line: 240, column: 5, scope: !1138)
!1432 = !DILocation(line: 240, column: 11, scope: !1138)
!1433 = !DILocation(line: 240, column: 12, scope: !1138)
!1434 = !DILocation(line: 240, column: 16, scope: !1138)
!1435 = !DILocation(line: 241, column: 17, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 241, column: 2)
!1437 = !DILocation(line: 241, column: 23, scope: !1436)
!1438 = !DILocation(line: 241, column: 4, scope: !1436)
!1439 = !DILocation(line: 241, column: 26, scope: !1436)
!1440 = !DILocation(line: 241, column: 32, scope: !1436)
!1441 = !DILocation(line: 241, column: 38, scope: !1436)
!1442 = !DILocation(line: 241, column: 40, scope: !1436)
!1443 = !DILocation(line: 242, column: 5, scope: !1138)
!1444 = !DILocation(line: 242, column: 11, scope: !1138)
!1445 = !DILocation(line: 242, column: 12, scope: !1138)
!1446 = !DILocation(line: 242, column: 16, scope: !1138)
!1447 = !DILocation(line: 244, column: 9, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1138, file: !39, line: 244, column: 2)
!1449 = !DILocation(line: 244, column: 7, scope: !1448)
!1450 = !DILocation(line: 244, column: 14, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1452, file: !39, discriminator: 1)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !39, line: 244, column: 2)
!1453 = !DILocation(line: 244, column: 18, scope: !1451)
!1454 = !DILocation(line: 244, column: 16, scope: !1451)
!1455 = !DILocation(line: 244, column: 2, scope: !1451)
!1456 = !DILocation(line: 246, column: 21, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !39, line: 245, column: 2)
!1458 = !DILocation(line: 246, column: 13, scope: !1457)
!1459 = !DILocation(line: 246, column: 10, scope: !1457)
!1460 = !DILocation(line: 247, column: 29, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !39, line: 247, column: 3)
!1462 = !DILocation(line: 247, column: 37, scope: !1461)
!1463 = !DILocation(line: 247, column: 18, scope: !1461)
!1464 = !DILocation(line: 247, column: 24, scope: !1461)
!1465 = !DILocation(line: 247, column: 5, scope: !1461)
!1466 = !DILocation(line: 247, column: 27, scope: !1461)
!1467 = !DILocation(line: 247, column: 50, scope: !1461)
!1468 = !DILocation(line: 247, column: 56, scope: !1461)
!1469 = !DILocation(line: 247, column: 58, scope: !1461)
!1470 = !DILocation(line: 248, column: 29, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1457, file: !39, line: 248, column: 3)
!1472 = !DILocation(line: 248, column: 37, scope: !1471)
!1473 = !DILocation(line: 248, column: 18, scope: !1471)
!1474 = !DILocation(line: 248, column: 24, scope: !1471)
!1475 = !DILocation(line: 248, column: 5, scope: !1471)
!1476 = !DILocation(line: 248, column: 27, scope: !1471)
!1477 = !DILocation(line: 248, column: 49, scope: !1471)
!1478 = !DILocation(line: 248, column: 55, scope: !1471)
!1479 = !DILocation(line: 248, column: 57, scope: !1471)
!1480 = !DILocation(line: 249, column: 29, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1457, file: !39, line: 249, column: 3)
!1482 = !DILocation(line: 249, column: 37, scope: !1481)
!1483 = !DILocation(line: 249, column: 18, scope: !1481)
!1484 = !DILocation(line: 249, column: 24, scope: !1481)
!1485 = !DILocation(line: 249, column: 5, scope: !1481)
!1486 = !DILocation(line: 249, column: 27, scope: !1481)
!1487 = !DILocation(line: 249, column: 54, scope: !1481)
!1488 = !DILocation(line: 249, column: 60, scope: !1481)
!1489 = !DILocation(line: 249, column: 62, scope: !1481)
!1490 = !DILocation(line: 250, column: 29, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1457, file: !39, line: 250, column: 3)
!1492 = !DILocation(line: 250, column: 37, scope: !1491)
!1493 = !DILocation(line: 250, column: 18, scope: !1491)
!1494 = !DILocation(line: 250, column: 24, scope: !1491)
!1495 = !DILocation(line: 250, column: 5, scope: !1491)
!1496 = !DILocation(line: 250, column: 27, scope: !1491)
!1497 = !DILocation(line: 250, column: 55, scope: !1491)
!1498 = !DILocation(line: 250, column: 61, scope: !1491)
!1499 = !DILocation(line: 250, column: 63, scope: !1491)
!1500 = !DILocation(line: 251, column: 29, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1457, file: !39, line: 251, column: 3)
!1502 = !DILocation(line: 251, column: 37, scope: !1501)
!1503 = !DILocation(line: 251, column: 18, scope: !1501)
!1504 = !DILocation(line: 251, column: 24, scope: !1501)
!1505 = !DILocation(line: 251, column: 5, scope: !1501)
!1506 = !DILocation(line: 251, column: 27, scope: !1501)
!1507 = !DILocation(line: 251, column: 51, scope: !1501)
!1508 = !DILocation(line: 251, column: 57, scope: !1501)
!1509 = !DILocation(line: 251, column: 59, scope: !1501)
!1510 = !DILocation(line: 252, column: 29, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1457, file: !39, line: 252, column: 3)
!1512 = !DILocation(line: 252, column: 37, scope: !1511)
!1513 = !DILocation(line: 252, column: 18, scope: !1511)
!1514 = !DILocation(line: 252, column: 24, scope: !1511)
!1515 = !DILocation(line: 252, column: 5, scope: !1511)
!1516 = !DILocation(line: 252, column: 27, scope: !1511)
!1517 = !DILocation(line: 252, column: 54, scope: !1511)
!1518 = !DILocation(line: 252, column: 60, scope: !1511)
!1519 = !DILocation(line: 252, column: 62, scope: !1511)
!1520 = !DILocation(line: 253, column: 18, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1457, file: !39, line: 253, column: 3)
!1522 = !DILocation(line: 253, column: 24, scope: !1521)
!1523 = !DILocation(line: 253, column: 5, scope: !1521)
!1524 = !DILocation(line: 253, column: 27, scope: !1521)
!1525 = !DILocation(line: 253, column: 33, scope: !1521)
!1526 = !DILocation(line: 253, column: 39, scope: !1521)
!1527 = !DILocation(line: 253, column: 41, scope: !1521)
!1528 = !DILocation(line: 254, column: 2, scope: !1457)
!1529 = !DILocation(line: 244, column: 33, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1452, file: !39, discriminator: 2)
!1531 = !DILocation(line: 244, column: 2, scope: !1530)
!1532 = distinct !{!1532, !1533}
!1533 = !DILocation(line: 244, column: 2, scope: !1138)
!1534 = !DILocation(line: 256, column: 16, scope: !1138)
!1535 = !DILocation(line: 256, column: 22, scope: !1138)
!1536 = !DILocation(line: 256, column: 3, scope: !1138)
!1537 = !DILocation(line: 256, column: 9, scope: !1138)
!1538 = !DILocation(line: 256, column: 13, scope: !1138)
!1539 = !DILocation(line: 259, column: 15, scope: !1138)
!1540 = !DILocation(line: 258, column: 2, scope: !1138)
!1541 = !DILocation(line: 261, column: 14, scope: !1138)
!1542 = !DILocation(line: 261, column: 2, scope: !1138)
!1543 = !DILocation(line: 263, column: 20, scope: !1138)
!1544 = !DILocation(line: 264, column: 1, scope: !1138)
!1545 = distinct !DISubprogram(name: "rdpsnd_process_training", scope: !39, file: !39, line: 267, type: !143, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!1546 = !DILocalVariable(name: "in", arg: 1, scope: !1545, file: !39, line: 267, type: !145)
!1547 = !DILocation(line: 267, column: 32, scope: !1545)
!1548 = !DILocalVariable(name: "tick", scope: !1545, file: !39, line: 269, type: !29)
!1549 = !DILocation(line: 269, column: 9, scope: !1545)
!1550 = !DILocalVariable(name: "packsize", scope: !1545, file: !39, line: 270, type: !29)
!1551 = !DILocation(line: 270, column: 9, scope: !1545)
!1552 = !DILocalVariable(name: "out", scope: !1545, file: !39, line: 271, type: !145)
!1553 = !DILocation(line: 271, column: 9, scope: !1545)
!1554 = !DILocation(line: 273, column: 24, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1545, file: !39, line: 273, column: 2)
!1556 = !DILocation(line: 273, column: 29, scope: !1555)
!1557 = !DILocation(line: 273, column: 11, scope: !1555)
!1558 = !DILocation(line: 273, column: 9, scope: !1555)
!1559 = !DILocation(line: 273, column: 34, scope: !1555)
!1560 = !DILocation(line: 273, column: 39, scope: !1555)
!1561 = !DILocation(line: 273, column: 41, scope: !1555)
!1562 = !DILocation(line: 274, column: 28, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1545, file: !39, line: 274, column: 2)
!1564 = !DILocation(line: 274, column: 33, scope: !1563)
!1565 = !DILocation(line: 274, column: 15, scope: !1563)
!1566 = !DILocation(line: 274, column: 13, scope: !1563)
!1567 = !DILocation(line: 274, column: 38, scope: !1563)
!1568 = !DILocation(line: 274, column: 43, scope: !1563)
!1569 = !DILocation(line: 274, column: 45, scope: !1563)
!1570 = !DILocation(line: 276, column: 76, scope: !1545)
!1571 = !DILocation(line: 276, column: 65, scope: !1545)
!1572 = !DILocation(line: 276, column: 2, scope: !1545)
!1573 = !DILocation(line: 278, column: 8, scope: !1545)
!1574 = !DILocation(line: 278, column: 6, scope: !1545)
!1575 = !DILocation(line: 279, column: 28, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1545, file: !39, line: 279, column: 2)
!1577 = !DILocation(line: 279, column: 17, scope: !1576)
!1578 = !DILocation(line: 279, column: 23, scope: !1576)
!1579 = !DILocation(line: 279, column: 4, scope: !1576)
!1580 = !DILocation(line: 279, column: 26, scope: !1576)
!1581 = !DILocation(line: 279, column: 35, scope: !1576)
!1582 = !DILocation(line: 279, column: 41, scope: !1576)
!1583 = !DILocation(line: 279, column: 43, scope: !1576)
!1584 = !DILocation(line: 280, column: 28, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1545, file: !39, line: 280, column: 2)
!1586 = !DILocation(line: 280, column: 17, scope: !1585)
!1587 = !DILocation(line: 280, column: 23, scope: !1585)
!1588 = !DILocation(line: 280, column: 4, scope: !1585)
!1589 = !DILocation(line: 280, column: 26, scope: !1585)
!1590 = !DILocation(line: 280, column: 39, scope: !1585)
!1591 = !DILocation(line: 280, column: 45, scope: !1585)
!1592 = !DILocation(line: 280, column: 47, scope: !1585)
!1593 = !DILocation(line: 281, column: 16, scope: !1545)
!1594 = !DILocation(line: 281, column: 22, scope: !1545)
!1595 = !DILocation(line: 281, column: 3, scope: !1545)
!1596 = !DILocation(line: 281, column: 9, scope: !1545)
!1597 = !DILocation(line: 281, column: 13, scope: !1545)
!1598 = !DILocation(line: 282, column: 14, scope: !1545)
!1599 = !DILocation(line: 282, column: 2, scope: !1545)
!1600 = !DILocation(line: 283, column: 1, scope: !1545)
!1601 = distinct !DISubprogram(name: "rdpsnd_init_packet", scope: !39, file: !39, line: 78, type: !1602, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!145, !24, !29}
!1604 = !DILocalVariable(name: "type", arg: 1, scope: !1601, file: !39, line: 78, type: !24)
!1605 = !DILocation(line: 78, column: 26, scope: !1601)
!1606 = !DILocalVariable(name: "size", arg: 2, scope: !1601, file: !39, line: 78, type: !29)
!1607 = !DILocation(line: 78, column: 39, scope: !1601)
!1608 = !DILocalVariable(name: "s", scope: !1601, file: !39, line: 80, type: !145)
!1609 = !DILocation(line: 80, column: 9, scope: !1601)
!1610 = !DILocation(line: 82, column: 19, scope: !1601)
!1611 = !DILocation(line: 82, column: 35, scope: !1601)
!1612 = !DILocation(line: 82, column: 40, scope: !1601)
!1613 = !DILocation(line: 82, column: 6, scope: !1601)
!1614 = !DILocation(line: 82, column: 4, scope: !1601)
!1615 = !DILocation(line: 83, column: 16, scope: !1601)
!1616 = !DILocation(line: 83, column: 5, scope: !1601)
!1617 = !DILocation(line: 83, column: 9, scope: !1601)
!1618 = !DILocation(line: 83, column: 10, scope: !1601)
!1619 = !DILocation(line: 83, column: 14, scope: !1601)
!1620 = !DILocation(line: 84, column: 5, scope: !1601)
!1621 = !DILocation(line: 84, column: 9, scope: !1601)
!1622 = !DILocation(line: 84, column: 10, scope: !1601)
!1623 = !DILocation(line: 84, column: 14, scope: !1601)
!1624 = !DILocation(line: 85, column: 26, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1601, file: !39, line: 85, column: 2)
!1626 = !DILocation(line: 85, column: 17, scope: !1625)
!1627 = !DILocation(line: 85, column: 21, scope: !1625)
!1628 = !DILocation(line: 85, column: 4, scope: !1625)
!1629 = !DILocation(line: 85, column: 24, scope: !1625)
!1630 = !DILocation(line: 85, column: 33, scope: !1625)
!1631 = !DILocation(line: 85, column: 37, scope: !1625)
!1632 = !DILocation(line: 85, column: 39, scope: !1625)
!1633 = !DILocation(line: 86, column: 9, scope: !1601)
!1634 = !DILocation(line: 86, column: 2, scope: !1601)
!1635 = distinct !DISubprogram(name: "rdpsnd_send", scope: !39, file: !39, line: 90, type: !143, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!1636 = !DILocalVariable(name: "s", arg: 1, scope: !1635, file: !39, line: 90, type: !145)
!1637 = !DILocation(line: 90, column: 20, scope: !1635)
!1638 = !DILocation(line: 92, column: 15, scope: !1635)
!1639 = !DILocation(line: 92, column: 18, scope: !1635)
!1640 = !DILocation(line: 92, column: 2, scope: !1635)
!1641 = !DILocation(line: 93, column: 1, scope: !1635)
!1642 = !DILocation(line: 124, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !181, file: !39, line: 124, column: 6)
!1644 = !DILocation(line: 124, column: 6, scope: !181)
!1645 = !DILocation(line: 126, column: 20, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !39, line: 125, column: 2)
!1647 = !DILocation(line: 126, column: 18, scope: !1646)
!1648 = !DILocation(line: 127, column: 3, scope: !1646)
!1649 = !DILocation(line: 127, column: 10, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1646, file: !39, discriminator: 1)
!1651 = !DILocation(line: 127, column: 25, scope: !1650)
!1652 = !DILocation(line: 127, column: 3, scope: !1650)
!1653 = !DILocation(line: 130, column: 11, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1646, file: !39, line: 128, column: 3)
!1655 = !DILocation(line: 130, column: 27, scope: !1654)
!1656 = !DILocation(line: 129, column: 4, scope: !1654)
!1657 = !DILocation(line: 131, column: 8, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1654, file: !39, line: 131, column: 8)
!1659 = !DILocation(line: 131, column: 24, scope: !1658)
!1660 = !DILocation(line: 131, column: 8, scope: !1654)
!1661 = !DILocation(line: 134, column: 12, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !39, line: 132, column: 4)
!1663 = !DILocation(line: 134, column: 28, scope: !1662)
!1664 = !DILocation(line: 133, column: 5, scope: !1662)
!1665 = !DILocation(line: 135, column: 5, scope: !1662)
!1666 = !DILocation(line: 135, column: 21, scope: !1662)
!1667 = !DILocation(line: 136, column: 5, scope: !1662)
!1668 = !DILocation(line: 138, column: 21, scope: !1654)
!1669 = !DILocation(line: 138, column: 37, scope: !1654)
!1670 = !DILocation(line: 138, column: 19, scope: !1654)
!1671 = !DILocation(line: 127, column: 3, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1646, file: !39, discriminator: 2)
!1673 = distinct !{!1673, !1648}
!1674 = !DILocation(line: 141, column: 3, scope: !1646)
!1675 = !DILocation(line: 142, column: 10, scope: !1646)
!1676 = !DILocation(line: 143, column: 18, scope: !1646)
!1677 = !DILocation(line: 144, column: 2, scope: !1646)
!1678 = !DILocation(line: 146, column: 2, scope: !181)
!1679 = !DILocation(line: 147, column: 1, scope: !181)
!1680 = distinct !DISubprogram(name: "rdpsnddbg_line_handler", scope: !39, file: !39, line: 434, type: !1681, isLocal: true, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !172)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!77, !1683, !27}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64, align: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!1685 = !DILocalVariable(name: "line", arg: 1, scope: !1680, file: !39, line: 434, type: !1683)
!1686 = !DILocation(line: 434, column: 36, scope: !1680)
!1687 = !DILocalVariable(name: "data", arg: 2, scope: !1680, file: !39, line: 434, type: !27)
!1688 = !DILocation(line: 434, column: 48, scope: !1680)
!1689 = !DILocation(line: 436, column: 9, scope: !1680)
!1690 = !DILocation(line: 437, column: 59, scope: !1680)
!1691 = !DILocation(line: 437, column: 2, scope: !1680)
!1692 = !DILocation(line: 438, column: 2, scope: !1680)
