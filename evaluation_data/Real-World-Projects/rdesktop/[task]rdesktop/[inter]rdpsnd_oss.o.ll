; ModuleID = './[inter]rdpsnd_oss.o.i'
source_filename = "./[inter]rdpsnd_oss.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.audio_driver = type { void (i32*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*)*, void (%struct.fd_set*, %struct.fd_set*)*, i32 ()*, void ()*, i32 (%struct._RD_WAVEFORMATEX*)*, i32 (%struct._RD_WAVEFORMATEX*)*, void (i16, i16)*, i32 ()*, void ()*, i32 (%struct._RD_WAVEFORMATEX*)*, i32 (%struct._RD_WAVEFORMATEX*)*, void (i16, i16)*, i8*, i8*, i32, i32, %struct.audio_driver* }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct._RD_WAVEFORMATEX = type { i16, i16, i32, i32, i16, i16, i16, [256 x i8] }
%struct.audio_buf_info = type { i32, i32, i32, i32 }
%struct.audio_packet = type { %struct.stream, i16, i8, %struct.timeval, %struct.timeval }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@oss_driver = internal global %struct.audio_driver zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"oss\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"OSS output driver, default device: /dev/dsp or $AUDIODEV\00", align 1
@dsp_dev = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"AUDIODEV\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"/dev/dsp\00", align 1
@dsp_fd = internal global i32 -1, align 4
@dsp_mode = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"dsp_fd != -1\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rdpsnd_oss.c\00", align 1
@__PRETTY_FUNCTION__.oss_play = private unnamed_addr constant [16 x i8] c"void oss_play()\00", align 1
@dsp_broken = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to write buffer: %s\00", align 1
@in_esddsp = internal global i32 0, align 4
@samplewidth = internal global i16 0, align 2
@snd_rate = internal global i32 0, align 4
@__PRETTY_FUNCTION__.oss_record = private unnamed_addr constant [18 x i8] c"void oss_record()\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to read samples: %s\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"this OSS device is not capable of full duplex operation\00", align 1
@dsp_configured = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"oss_open(), open() failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"LD_PRELOAD\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"esddsp\00", align 1
@format = internal global i32 0, align 4
@stereo = internal global i32 0, align 4
@oss_set_format.driver_broken = internal global i32 0, align 4
@__PRETTY_FUNCTION__.oss_set_format = private unnamed_addr constant [42 x i8] c"RD_BOOL oss_set_format(RD_WAVEFORMATEX *)\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"oss_set_format(), ioctl(SNDCTL_DSP_SETFMT) failed: %s\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"oss_set_format(), ioctl(SNDCTL_DSP_CHANNELS) failed: %s\00", align 1
@oss_set_format.rates = private unnamed_addr constant [3 x i32] [i32 44100, i32 48000, i32 0], align 4
@.str.14 = private unnamed_addr constant [51 x i8] c"oss_set_format(), rdpsnd_dsp_resample_set() failed\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"oss_set_format(), SNDCTL_DSP_SPEED failed: %s\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"SNDCTL_DSP_GETOSPACE ioctl failed: %s\00", align 1
@.str.17 = private unnamed_addr constant [73 x i8] c"broken OSS-driver detected: fragments: %d, fragstotal: %d, fragsize: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [77 x i8] c"hardware volume control unavailable, falling back to software volume control\00", align 1

; Function Attrs: nounwind uwtable
define %struct.audio_driver* @oss_register(i8*) #0 !dbg !130 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !133, metadata !134), !dbg !135
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.audio_driver* @oss_driver to i8*), i8 0, i64 128, i32 8, i1 false), !dbg !136
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 12), align 8, !dbg !137
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i8** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 13), align 8, !dbg !138
  store void (i32*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*)* @oss_add_fds, void (i32*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*)** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 0), align 8, !dbg !139
  store void (%struct.fd_set*, %struct.fd_set*)* @oss_check_fds, void (%struct.fd_set*, %struct.fd_set*)** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 1), align 8, !dbg !140
  store i32 ()* @oss_open_out, i32 ()** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 2), align 8, !dbg !141
  store void ()* @oss_close_out, void ()** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 3), align 8, !dbg !142
  store i32 (%struct._RD_WAVEFORMATEX*)* @oss_format_supported, i32 (%struct._RD_WAVEFORMATEX*)** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 4), align 8, !dbg !143
  store i32 (%struct._RD_WAVEFORMATEX*)* @oss_set_format, i32 (%struct._RD_WAVEFORMATEX*)** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 5), align 8, !dbg !144
  store void (i16, i16)* @oss_volume, void (i16, i16)** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 6), align 8, !dbg !145
  store i32 ()* @oss_open_in, i32 ()** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 7), align 8, !dbg !146
  store void ()* @oss_close_in, void ()** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 8), align 8, !dbg !147
  store i32 (%struct._RD_WAVEFORMATEX*)* @oss_format_supported, i32 (%struct._RD_WAVEFORMATEX*)** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 9), align 8, !dbg !148
  store i32 (%struct._RD_WAVEFORMATEX*)* @oss_set_format, i32 (%struct._RD_WAVEFORMATEX*)** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 10), align 8, !dbg !149
  store void (i16, i16)* null, void (i16, i16)** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 11), align 8, !dbg !150
  store i32 0, i32* getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 14), align 8, !dbg !151
  store i32 0, i32* getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 15), align 4, !dbg !152
  %3 = load i8*, i8** %2, align 8, !dbg !153
  %4 = icmp ne i8* %3, null, !dbg !153
  br i1 %4, label %5, label %8, !dbg !155

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !156
  %7 = call i8* @xstrdup(i8* %6), !dbg !158
  store i8* %7, i8** @dsp_dev, align 8, !dbg !159
  br label %14, !dbg !160

; <label>:8:                                      ; preds = %1
  %9 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !161
  store i8* %9, i8** @dsp_dev, align 8, !dbg !163
  %10 = load i8*, i8** @dsp_dev, align 8, !dbg !164
  %11 = icmp eq i8* %10, null, !dbg !166
  br i1 %11, label %12, label %13, !dbg !167

; <label>:12:                                     ; preds = %8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8** @dsp_dev, align 8, !dbg !168
  br label %13, !dbg !170

; <label>:13:                                     ; preds = %12, %8
  br label %14

; <label>:14:                                     ; preds = %13, %5
  ret %struct.audio_driver* @oss_driver, !dbg !171
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @oss_add_fds(i32*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #0 !dbg !172 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fd_set*, align 8
  %7 = alloca %struct.fd_set*, align 8
  %8 = alloca %struct.timeval*, align 8
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !173, metadata !134), !dbg !174
  store %struct.fd_set* %1, %struct.fd_set** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %6, metadata !175, metadata !134), !dbg !176
  store %struct.fd_set* %2, %struct.fd_set** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %7, metadata !177, metadata !134), !dbg !178
  store %struct.timeval* %3, %struct.timeval** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval** %8, metadata !179, metadata !134), !dbg !180
  %9 = load %struct.timeval*, %struct.timeval** %8, align 8, !dbg !181
  %10 = load i32, i32* @dsp_fd, align 4, !dbg !182
  %11 = icmp eq i32 %10, -1, !dbg !184
  br i1 %11, label %12, label %13, !dbg !185

; <label>:12:                                     ; preds = %4
  br label %62, !dbg !186

; <label>:13:                                     ; preds = %4
  %14 = load i32, i32* @dsp_mode, align 4, !dbg !187
  %15 = icmp eq i32 %14, 1, !dbg !189
  br i1 %15, label %19, label %16, !dbg !190

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* @dsp_mode, align 4, !dbg !191
  %18 = icmp eq i32 %17, 2, !dbg !193
  br i1 %18, label %19, label %35, !dbg !194

; <label>:19:                                     ; preds = %16, %13
  %20 = call i32 @rdpsnd_queue_empty(), !dbg !195
  %21 = icmp ne i32 %20, 0, !dbg !195
  br i1 %21, label %35, label %22, !dbg !197

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* @dsp_fd, align 4, !dbg !198
  %24 = srem i32 %23, 64, !dbg !199
  %25 = zext i32 %24 to i64, !dbg !200
  %26 = shl i64 1, %25, !dbg !200
  %27 = load i32, i32* @dsp_fd, align 4, !dbg !198
  %28 = sdiv i32 %27, 64, !dbg !199
  %29 = sext i32 %28 to i64, !dbg !201
  %30 = load %struct.fd_set*, %struct.fd_set** %7, align 8, !dbg !198
  %31 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %30, i32 0, i32 0, !dbg !202
  %32 = getelementptr inbounds [16 x i64], [16 x i64]* %31, i64 0, i64 %29, !dbg !201
  %33 = load i64, i64* %32, align 8, !dbg !203
  %34 = or i64 %33, %26, !dbg !203
  store i64 %34, i64* %32, align 8, !dbg !203
  br label %35, !dbg !198

; <label>:35:                                     ; preds = %22, %19, %16
  %36 = load i32, i32* @dsp_mode, align 4, !dbg !204
  %37 = icmp eq i32 %36, 0, !dbg !206
  br i1 %37, label %41, label %38, !dbg !207

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* @dsp_mode, align 4, !dbg !208
  %40 = icmp eq i32 %39, 2, !dbg !210
  br i1 %40, label %41, label %54, !dbg !211

; <label>:41:                                     ; preds = %38, %35
  %42 = load i32, i32* @dsp_fd, align 4, !dbg !212
  %43 = srem i32 %42, 64, !dbg !213
  %44 = zext i32 %43 to i64, !dbg !214
  %45 = shl i64 1, %44, !dbg !214
  %46 = load i32, i32* @dsp_fd, align 4, !dbg !212
  %47 = sdiv i32 %46, 64, !dbg !213
  %48 = sext i32 %47 to i64, !dbg !215
  %49 = load %struct.fd_set*, %struct.fd_set** %6, align 8, !dbg !212
  %50 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %49, i32 0, i32 0, !dbg !216
  %51 = getelementptr inbounds [16 x i64], [16 x i64]* %50, i64 0, i64 %48, !dbg !215
  %52 = load i64, i64* %51, align 8, !dbg !217
  %53 = or i64 %52, %45, !dbg !217
  store i64 %53, i64* %51, align 8, !dbg !217
  br label %54, !dbg !212

; <label>:54:                                     ; preds = %41, %38
  %55 = load i32, i32* @dsp_fd, align 4, !dbg !218
  %56 = load i32*, i32** %5, align 8, !dbg !220
  %57 = load i32, i32* %56, align 4, !dbg !221
  %58 = icmp sgt i32 %55, %57, !dbg !222
  br i1 %58, label %59, label %62, !dbg !223

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* @dsp_fd, align 4, !dbg !224
  %61 = load i32*, i32** %5, align 8, !dbg !225
  store i32 %60, i32* %61, align 4, !dbg !226
  br label %62, !dbg !227

; <label>:62:                                     ; preds = %12, %59, %54
  ret void, !dbg !228
}

; Function Attrs: nounwind uwtable
define internal void @oss_check_fds(%struct.fd_set*, %struct.fd_set*) #0 !dbg !229 {
  %3 = alloca %struct.fd_set*, align 8
  %4 = alloca %struct.fd_set*, align 8
  store %struct.fd_set* %0, %struct.fd_set** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %3, metadata !230, metadata !134), !dbg !231
  store %struct.fd_set* %1, %struct.fd_set** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %4, metadata !232, metadata !134), !dbg !233
  %5 = load i32, i32* @dsp_fd, align 4, !dbg !234
  %6 = sdiv i32 %5, 64, !dbg !236
  %7 = sext i32 %6 to i64, !dbg !236
  %8 = load %struct.fd_set*, %struct.fd_set** %4, align 8, !dbg !234
  %9 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0, !dbg !237
  %10 = getelementptr inbounds [16 x i64], [16 x i64]* %9, i64 0, i64 %7, !dbg !236
  %11 = load i64, i64* %10, align 8, !dbg !236
  %12 = load i32, i32* @dsp_fd, align 4, !dbg !234
  %13 = srem i32 %12, 64, !dbg !236
  %14 = zext i32 %13 to i64, !dbg !238
  %15 = shl i64 1, %14, !dbg !238
  %16 = and i64 %11, %15, !dbg !239
  %17 = icmp ne i64 %16, 0, !dbg !240
  br i1 %17, label %18, label %19, !dbg !241

; <label>:18:                                     ; preds = %2
  call void @oss_play(), !dbg !242
  br label %19, !dbg !242

; <label>:19:                                     ; preds = %18, %2
  %20 = load i32, i32* @dsp_fd, align 4, !dbg !243
  %21 = sdiv i32 %20, 64, !dbg !245
  %22 = sext i32 %21 to i64, !dbg !245
  %23 = load %struct.fd_set*, %struct.fd_set** %3, align 8, !dbg !243
  %24 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %23, i32 0, i32 0, !dbg !246
  %25 = getelementptr inbounds [16 x i64], [16 x i64]* %24, i64 0, i64 %22, !dbg !245
  %26 = load i64, i64* %25, align 8, !dbg !245
  %27 = load i32, i32* @dsp_fd, align 4, !dbg !243
  %28 = srem i32 %27, 64, !dbg !245
  %29 = zext i32 %28 to i64, !dbg !247
  %30 = shl i64 1, %29, !dbg !247
  %31 = and i64 %26, %30, !dbg !248
  %32 = icmp ne i64 %31, 0, !dbg !249
  br i1 %32, label %33, label %34, !dbg !250

; <label>:33:                                     ; preds = %19
  call void @oss_record(), !dbg !251
  br label %34, !dbg !251

; <label>:34:                                     ; preds = %33, %19
  ret void, !dbg !252
}

; Function Attrs: nounwind uwtable
define internal i32 @oss_open_out() #0 !dbg !253 {
  %1 = alloca i32, align 4
  %2 = call i32 @oss_open(i32 1), !dbg !254
  %3 = icmp ne i32 %2, 0, !dbg !254
  br i1 %3, label %5, label %4, !dbg !256

; <label>:4:                                      ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !257
  br label %6, !dbg !257

; <label>:5:                                      ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !258
  br label %6, !dbg !258

; <label>:6:                                      ; preds = %5, %4
  %7 = load i32, i32* %1, align 4, !dbg !259
  ret i32 %7, !dbg !259
}

; Function Attrs: nounwind uwtable
define internal void @oss_close_out() #0 !dbg !260 {
  call void @oss_close(), !dbg !261
  %1 = load i32, i32* @dsp_mode, align 4, !dbg !262
  %2 = icmp eq i32 %1, 2, !dbg !264
  br i1 %2, label %3, label %8, !dbg !265

; <label>:3:                                      ; preds = %0
  %4 = call i32 @oss_open(i32 0), !dbg !266
  %5 = icmp ne i32 %4, 0, !dbg !266
  br i1 %5, label %6, label %7, !dbg !269

; <label>:6:                                      ; preds = %3
  call void @oss_restore_format(), !dbg !270
  br label %7, !dbg !270

; <label>:7:                                      ; preds = %6, %3
  br label %8, !dbg !271

; <label>:8:                                      ; preds = %7, %0
  br label %9, !dbg !272

; <label>:9:                                      ; preds = %13, %8
  %10 = call i32 @rdpsnd_queue_empty(), !dbg !273
  %11 = icmp ne i32 %10, 0, !dbg !275
  %12 = xor i1 %11, true, !dbg !275
  br i1 %12, label %13, label %14, !dbg !276

; <label>:13:                                     ; preds = %9
  call void @rdpsnd_queue_next(i64 0), !dbg !277
  br label %9, !dbg !278, !llvm.loop !280

; <label>:14:                                     ; preds = %9
  ret void, !dbg !281
}

; Function Attrs: nounwind uwtable
define internal i32 @oss_format_supported(%struct._RD_WAVEFORMATEX*) #0 !dbg !282 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._RD_WAVEFORMATEX*, align 8
  store %struct._RD_WAVEFORMATEX* %0, %struct._RD_WAVEFORMATEX** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RD_WAVEFORMATEX** %3, metadata !283, metadata !134), !dbg !284
  %4 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !285
  %5 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %4, i32 0, i32 0, !dbg !287
  %6 = load i16, i16* %5, align 4, !dbg !287
  %7 = zext i16 %6 to i32, !dbg !285
  %8 = icmp ne i32 %7, 1, !dbg !288
  br i1 %8, label %9, label %10, !dbg !289

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !290
  br label %37, !dbg !290

; <label>:10:                                     ; preds = %1
  %11 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !291
  %12 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %11, i32 0, i32 1, !dbg !293
  %13 = load i16, i16* %12, align 2, !dbg !293
  %14 = zext i16 %13 to i32, !dbg !291
  %15 = icmp ne i32 %14, 1, !dbg !294
  br i1 %15, label %16, label %23, !dbg !295

; <label>:16:                                     ; preds = %10
  %17 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !296
  %18 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %17, i32 0, i32 1, !dbg !298
  %19 = load i16, i16* %18, align 2, !dbg !298
  %20 = zext i16 %19 to i32, !dbg !296
  %21 = icmp ne i32 %20, 2, !dbg !299
  br i1 %21, label %22, label %23, !dbg !300

; <label>:22:                                     ; preds = %16
  store i32 0, i32* %2, align 4, !dbg !301
  br label %37, !dbg !301

; <label>:23:                                     ; preds = %16, %10
  %24 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !302
  %25 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %24, i32 0, i32 5, !dbg !304
  %26 = load i16, i16* %25, align 2, !dbg !304
  %27 = zext i16 %26 to i32, !dbg !302
  %28 = icmp ne i32 %27, 8, !dbg !305
  br i1 %28, label %29, label %36, !dbg !306

; <label>:29:                                     ; preds = %23
  %30 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !307
  %31 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %30, i32 0, i32 5, !dbg !309
  %32 = load i16, i16* %31, align 2, !dbg !309
  %33 = zext i16 %32 to i32, !dbg !307
  %34 = icmp ne i32 %33, 16, !dbg !310
  br i1 %34, label %35, label %36, !dbg !311

; <label>:35:                                     ; preds = %29
  store i32 0, i32* %2, align 4, !dbg !312
  br label %37, !dbg !312

; <label>:36:                                     ; preds = %29, %23
  store i32 1, i32* %2, align 4, !dbg !313
  br label %37, !dbg !313

; <label>:37:                                     ; preds = %36, %35, %22, %9
  %38 = load i32, i32* %2, align 4, !dbg !314
  ret i32 %38, !dbg !314
}

; Function Attrs: nounwind uwtable
define internal i32 @oss_set_format(%struct._RD_WAVEFORMATEX*) #0 !dbg !125 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._RD_WAVEFORMATEX*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.audio_buf_info, align 4
  store %struct._RD_WAVEFORMATEX* %0, %struct._RD_WAVEFORMATEX** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RD_WAVEFORMATEX** %3, metadata !315, metadata !134), !dbg !316
  call void @llvm.dbg.declare(metadata i32* %4, metadata !317, metadata !134), !dbg !318
  %8 = load i32, i32* @dsp_fd, align 4, !dbg !319
  %9 = icmp ne i32 %8, -1, !dbg !320
  br i1 %9, label %10, label %11, !dbg !321

; <label>:10:                                     ; preds = %1
  br label %13, !dbg !322

; <label>:11:                                     ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 259, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.oss_set_format, i32 0, i32 0)) #9, !dbg !324
  unreachable, !dbg !324
                                                  ; No predecessors!
  br label %13, !dbg !326

; <label>:13:                                     ; preds = %12, %10
  %14 = load i32, i32* @dsp_configured, align 4, !dbg !328
  %15 = icmp ne i32 %14, 0, !dbg !328
  br i1 %15, label %16, label %58, !dbg !330

; <label>:16:                                     ; preds = %13
  %17 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !331
  %18 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %17, i32 0, i32 5, !dbg !334
  %19 = load i16, i16* %18, align 2, !dbg !334
  %20 = zext i16 %19 to i32, !dbg !331
  %21 = icmp eq i32 %20, 8, !dbg !335
  br i1 %21, label %22, label %26, !dbg !336

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* @format, align 4, !dbg !337
  %24 = icmp ne i32 %23, 8, !dbg !339
  br i1 %24, label %25, label %26, !dbg !340

; <label>:25:                                     ; preds = %22
  store i32 0, i32* %2, align 4, !dbg !341
  br label %198, !dbg !341

; <label>:26:                                     ; preds = %22, %16
  %27 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !342
  %28 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %27, i32 0, i32 5, !dbg !344
  %29 = load i16, i16* %28, align 2, !dbg !344
  %30 = zext i16 %29 to i32, !dbg !342
  %31 = icmp eq i32 %30, 16, !dbg !345
  br i1 %31, label %32, label %36, !dbg !346

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* @format, align 4, !dbg !347
  %34 = icmp ne i32 %33, 16, !dbg !349
  br i1 %34, label %35, label %36, !dbg !350

; <label>:35:                                     ; preds = %32
  store i32 0, i32* %2, align 4, !dbg !351
  br label %198, !dbg !351

; <label>:36:                                     ; preds = %32, %26
  %37 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !352
  %38 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %37, i32 0, i32 1, !dbg !354
  %39 = load i16, i16* %38, align 2, !dbg !354
  %40 = zext i16 %39 to i32, !dbg !352
  %41 = icmp eq i32 %40, 2, !dbg !355
  %42 = zext i1 %41 to i32, !dbg !355
  %43 = load i32, i32* @stereo, align 4, !dbg !356
  %44 = icmp ne i32 %43, 0, !dbg !357
  %45 = xor i1 %44, true, !dbg !357
  %46 = xor i1 %45, true, !dbg !358
  %47 = zext i1 %46 to i32, !dbg !358
  %48 = icmp ne i32 %42, %47, !dbg !359
  br i1 %48, label %49, label %50, !dbg !360

; <label>:49:                                     ; preds = %36
  store i32 0, i32* %2, align 4, !dbg !361
  br label %198, !dbg !361

; <label>:50:                                     ; preds = %36
  %51 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !362
  %52 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %51, i32 0, i32 2, !dbg !364
  %53 = load i32, i32* %52, align 4, !dbg !364
  %54 = load i32, i32* @snd_rate, align 4, !dbg !365
  %55 = icmp ne i32 %53, %54, !dbg !366
  br i1 %55, label %56, label %57, !dbg !367

; <label>:56:                                     ; preds = %50
  store i32 0, i32* %2, align 4, !dbg !368
  br label %198, !dbg !368

; <label>:57:                                     ; preds = %50
  store i32 1, i32* %2, align 4, !dbg !369
  br label %198, !dbg !369

; <label>:58:                                     ; preds = %13
  %59 = load i32, i32* @dsp_fd, align 4, !dbg !370
  %60 = call i32 (i32, i64, ...) @ioctl(i32 %59, i64 20480, i8* null) #8, !dbg !371
  %61 = load i32, i32* @dsp_fd, align 4, !dbg !372
  %62 = call i32 (i32, i64, ...) @ioctl(i32 %61, i64 20481, i8* null) #8, !dbg !373
  %63 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !374
  %64 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %63, i32 0, i32 5, !dbg !376
  %65 = load i16, i16* %64, align 2, !dbg !376
  %66 = zext i16 %65 to i32, !dbg !374
  %67 = icmp eq i32 %66, 8, !dbg !377
  br i1 %67, label %68, label %69, !dbg !378

; <label>:68:                                     ; preds = %58
  store i32 8, i32* @format, align 4, !dbg !379
  br label %77, !dbg !380

; <label>:69:                                     ; preds = %58
  %70 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !381
  %71 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %70, i32 0, i32 5, !dbg !383
  %72 = load i16, i16* %71, align 2, !dbg !383
  %73 = zext i16 %72 to i32, !dbg !381
  %74 = icmp eq i32 %73, 16, !dbg !384
  br i1 %74, label %75, label %76, !dbg !385

; <label>:75:                                     ; preds = %69
  store i32 16, i32* @format, align 4, !dbg !386
  br label %76, !dbg !387

; <label>:76:                                     ; preds = %75, %69
  br label %77

; <label>:77:                                     ; preds = %76, %68
  %78 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !388
  %79 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %78, i32 0, i32 5, !dbg !389
  %80 = load i16, i16* %79, align 2, !dbg !389
  %81 = zext i16 %80 to i32, !dbg !388
  %82 = sdiv i32 %81, 8, !dbg !390
  %83 = trunc i32 %82 to i16, !dbg !388
  store i16 %83, i16* @samplewidth, align 2, !dbg !391
  %84 = load i32, i32* @dsp_fd, align 4, !dbg !392
  %85 = call i32 (i32, i64, ...) @ioctl(i32 %84, i64 3221508101, i32* @format) #8, !dbg !394
  %86 = icmp eq i32 %85, -1, !dbg !395
  br i1 %86, label %87, label %91, !dbg !396

; <label>:87:                                     ; preds = %77
  %88 = call i32* @__errno_location() #1, !dbg !397
  %89 = load i32, i32* %88, align 4, !dbg !399
  %90 = call i8* @strerror(i32 %89) #8, !dbg !400
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* %90), !dbg !402
  call void @oss_close(), !dbg !403
  store i32 0, i32* %2, align 4, !dbg !404
  br label %198, !dbg !404

; <label>:91:                                     ; preds = %77
  %92 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !405
  %93 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %92, i32 0, i32 1, !dbg !407
  %94 = load i16, i16* %93, align 2, !dbg !407
  %95 = zext i16 %94 to i32, !dbg !405
  %96 = icmp eq i32 %95, 2, !dbg !408
  br i1 %96, label %97, label %102, !dbg !409

; <label>:97:                                     ; preds = %91
  store i32 1, i32* @stereo, align 4, !dbg !410
  %98 = load i16, i16* @samplewidth, align 2, !dbg !412
  %99 = sext i16 %98 to i32, !dbg !412
  %100 = mul nsw i32 %99, 2, !dbg !412
  %101 = trunc i32 %100 to i16, !dbg !412
  store i16 %101, i16* @samplewidth, align 2, !dbg !412
  br label %103, !dbg !413

; <label>:102:                                    ; preds = %91
  store i32 0, i32* @stereo, align 4, !dbg !414
  br label %103

; <label>:103:                                    ; preds = %102, %97
  %104 = load i32, i32* @dsp_fd, align 4, !dbg !416
  %105 = call i32 (i32, i64, ...) @ioctl(i32 %104, i64 3221508099, i32* @stereo) #8, !dbg !418
  %106 = icmp eq i32 %105, -1, !dbg !419
  br i1 %106, label %107, label %111, !dbg !420

; <label>:107:                                    ; preds = %103
  %108 = call i32* @__errno_location() #1, !dbg !421
  %109 = load i32, i32* %108, align 4, !dbg !423
  %110 = call i8* @strerror(i32 %109) #8, !dbg !424
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i32 0, i32 0), i8* %110), !dbg !426
  call void @oss_close(), !dbg !427
  store i32 0, i32* %2, align 4, !dbg !428
  br label %198, !dbg !428

; <label>:111:                                    ; preds = %103
  store i32 0, i32* getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 15), align 4, !dbg !429
  %112 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !430
  %113 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %112, i32 0, i32 2, !dbg !431
  %114 = load i32, i32* %113, align 4, !dbg !431
  store i32 %114, i32* @snd_rate, align 4, !dbg !432
  %115 = load i32, i32* @dsp_fd, align 4, !dbg !433
  %116 = call i32 (i32, i64, ...) @ioctl(i32 %115, i64 3221508098, i32* @snd_rate) #8, !dbg !435
  %117 = icmp eq i32 %116, -1, !dbg !436
  br i1 %117, label %118, label %163, !dbg !437

; <label>:118:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata [3 x i32]* %5, metadata !438, metadata !134), !dbg !443
  %119 = bitcast [3 x i32]* %5 to i8*, !dbg !443
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* bitcast ([3 x i32]* @oss_set_format.rates to i8*), i64 12, i32 4, i1 false), !dbg !443
  call void @llvm.dbg.declare(metadata i32** %6, metadata !444, metadata !134), !dbg !446
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i32 0, i32 0, !dbg !447
  store i32* %120, i32** %6, align 8, !dbg !446
  br label %121, !dbg !448

; <label>:121:                                    ; preds = %151, %118
  %122 = load i32*, i32** %6, align 8, !dbg !449
  %123 = load i32, i32* %122, align 4, !dbg !451
  %124 = icmp ne i32 %123, 0, !dbg !452
  br i1 %124, label %125, label %154, !dbg !453

; <label>:125:                                    ; preds = %121
  %126 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !454
  %127 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %126, i32 0, i32 2, !dbg !457
  %128 = load i32, i32* %127, align 4, !dbg !457
  %129 = load i32*, i32** %6, align 8, !dbg !458
  %130 = load i32, i32* %129, align 4, !dbg !459
  %131 = icmp ne i32 %128, %130, !dbg !460
  br i1 %131, label %132, label %151, !dbg !461

; <label>:132:                                    ; preds = %125
  %133 = load i32, i32* @dsp_fd, align 4, !dbg !462
  %134 = load i32*, i32** %6, align 8, !dbg !464
  %135 = call i32 (i32, i64, ...) @ioctl(i32 %133, i64 3221508098, i32* %134) #8, !dbg !465
  %136 = icmp ne i32 %135, -1, !dbg !466
  br i1 %136, label %137, label %151, !dbg !467

; <label>:137:                                    ; preds = %132
  store i32 1, i32* getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 15), align 4, !dbg !469
  %138 = load i32*, i32** %6, align 8, !dbg !471
  %139 = load i32, i32* %138, align 4, !dbg !472
  store i32 %139, i32* @snd_rate, align 4, !dbg !473
  %140 = load i32, i32* @snd_rate, align 4, !dbg !474
  %141 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !476
  %142 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %141, i32 0, i32 5, !dbg !477
  %143 = load i16, i16* %142, align 2, !dbg !477
  %144 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !478
  %145 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %144, i32 0, i32 1, !dbg !479
  %146 = load i16, i16* %145, align 2, !dbg !479
  %147 = call i32 @rdpsnd_dsp_resample_set(i32 %140, i16 zeroext %143, i16 zeroext %146), !dbg !480
  %148 = icmp eq i32 %147, 0, !dbg !481
  br i1 %148, label %149, label %150, !dbg !482

; <label>:149:                                    ; preds = %137
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i32 0, i32 0)), !dbg !483
  call void @oss_close(), !dbg !485
  store i32 0, i32* %2, align 4, !dbg !486
  br label %198, !dbg !486

; <label>:150:                                    ; preds = %137
  br label %154, !dbg !487

; <label>:151:                                    ; preds = %132, %125
  %152 = load i32*, i32** %6, align 8, !dbg !488
  %153 = getelementptr inbounds i32, i32* %152, i32 1, !dbg !488
  store i32* %153, i32** %6, align 8, !dbg !488
  br label %121, !dbg !489, !llvm.loop !491

; <label>:154:                                    ; preds = %150, %121
  %155 = load i32*, i32** %6, align 8, !dbg !492
  %156 = load i32, i32* %155, align 4, !dbg !494
  %157 = icmp eq i32 %156, 0, !dbg !495
  br i1 %157, label %158, label %162, !dbg !496

; <label>:158:                                    ; preds = %154
  %159 = call i32* @__errno_location() #1, !dbg !497
  %160 = load i32, i32* %159, align 4, !dbg !499
  %161 = call i8* @strerror(i32 %160) #8, !dbg !500
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0), i8* %161), !dbg !502
  call void @oss_close(), !dbg !503
  store i32 0, i32* %2, align 4, !dbg !504
  br label %198, !dbg !504

; <label>:162:                                    ; preds = %154
  br label %163, !dbg !505

; <label>:163:                                    ; preds = %162, %111
  store i32 786444, i32* %4, align 4, !dbg !506
  %164 = load i32, i32* @dsp_fd, align 4, !dbg !507
  %165 = call i32 (i32, i64, ...) @ioctl(i32 %164, i64 3221508106, i32* %4) #8, !dbg !508
  %166 = load i32, i32* @oss_set_format.driver_broken, align 4, !dbg !509
  %167 = icmp ne i32 %166, 0, !dbg !509
  br i1 %167, label %197, label %168, !dbg !511

; <label>:168:                                    ; preds = %163
  call void @llvm.dbg.declare(metadata %struct.audio_buf_info* %7, metadata !512, metadata !134), !dbg !522
  %169 = bitcast %struct.audio_buf_info* %7 to i8*, !dbg !523
  call void @llvm.memset.p0i8.i64(i8* %169, i8 0, i64 16, i32 4, i1 false), !dbg !523
  %170 = load i32, i32* @dsp_fd, align 4, !dbg !524
  %171 = call i32 (i32, i64, ...) @ioctl(i32 %170, i64 2148552716, %struct.audio_buf_info* %7) #8, !dbg !526
  %172 = icmp eq i32 %171, -1, !dbg !527
  br i1 %172, label %173, label %177, !dbg !528

; <label>:173:                                    ; preds = %168
  %174 = call i32* @__errno_location() #1, !dbg !529
  %175 = load i32, i32* %174, align 4, !dbg !531
  %176 = call i8* @strerror(i32 %175) #8, !dbg !532
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0), i8* %176), !dbg !534
  call void @oss_close(), !dbg !535
  store i32 0, i32* %2, align 4, !dbg !536
  br label %198, !dbg !536

; <label>:177:                                    ; preds = %168
  %178 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %7, i32 0, i32 0, !dbg !537
  %179 = load i32, i32* %178, align 4, !dbg !537
  %180 = icmp eq i32 %179, 0, !dbg !539
  br i1 %180, label %189, label %181, !dbg !540

; <label>:181:                                    ; preds = %177
  %182 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %7, i32 0, i32 1, !dbg !541
  %183 = load i32, i32* %182, align 4, !dbg !541
  %184 = icmp eq i32 %183, 0, !dbg !543
  br i1 %184, label %189, label %185, !dbg !544

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %7, i32 0, i32 2, !dbg !545
  %187 = load i32, i32* %186, align 4, !dbg !545
  %188 = icmp eq i32 %187, 0, !dbg !547
  br i1 %188, label %189, label %196, !dbg !548

; <label>:189:                                    ; preds = %185, %181, %177
  %190 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %7, i32 0, i32 0, !dbg !549
  %191 = load i32, i32* %190, align 4, !dbg !549
  %192 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %7, i32 0, i32 1, !dbg !551
  %193 = load i32, i32* %192, align 4, !dbg !551
  %194 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %7, i32 0, i32 2, !dbg !552
  %195 = load i32, i32* %194, align 4, !dbg !552
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.17, i32 0, i32 0), i32 %191, i32 %193, i32 %195), !dbg !553
  store i32 1, i32* @oss_set_format.driver_broken, align 4, !dbg !554
  br label %196, !dbg !555

; <label>:196:                                    ; preds = %189, %185
  br label %197, !dbg !556

; <label>:197:                                    ; preds = %196, %163
  store i32 1, i32* @dsp_configured, align 4, !dbg !557
  store i32 1, i32* %2, align 4, !dbg !558
  br label %198, !dbg !558

; <label>:198:                                    ; preds = %197, %173, %158, %149, %107, %87, %57, %56, %49, %35, %25
  %199 = load i32, i32* %2, align 4, !dbg !559
  ret i32 %199, !dbg !559
}

; Function Attrs: nounwind uwtable
define internal void @oss_volume(i16 zeroext, i16 zeroext) #0 !dbg !560 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !561, metadata !134), !dbg !562
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !563, metadata !134), !dbg !564
  call void @llvm.dbg.declare(metadata i32* %5, metadata !565, metadata !134), !dbg !566
  %6 = load i16, i16* %3, align 2, !dbg !567
  %7 = zext i16 %6 to i32, !dbg !567
  %8 = sdiv i32 %7, 655, !dbg !568
  store i32 %8, i32* %5, align 4, !dbg !569
  %9 = load i16, i16* %4, align 2, !dbg !570
  %10 = zext i16 %9 to i32, !dbg !570
  %11 = sdiv i32 %10, 655, !dbg !571
  %12 = shl i32 %11, 8, !dbg !572
  %13 = load i32, i32* %5, align 4, !dbg !573
  %14 = or i32 %13, %12, !dbg !573
  store i32 %14, i32* %5, align 4, !dbg !573
  %15 = load i32, i32* @dsp_fd, align 4, !dbg !574
  %16 = call i32 (i32, i64, ...) @ioctl(i32 %15, i64 3221507332, i32* %5) #8, !dbg !576
  %17 = icmp eq i32 %16, -1, !dbg !577
  br i1 %17, label %18, label %21, !dbg !578

; <label>:18:                                     ; preds = %2
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 2, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.18, i32 0, i32 0)), !dbg !579
  store void (i16, i16)* @rdpsnd_dsp_softvol_set, void (i16, i16)** getelementptr inbounds (%struct.audio_driver, %struct.audio_driver* @oss_driver, i32 0, i32 6), align 8, !dbg !581
  %19 = load i16, i16* %3, align 2, !dbg !582
  %20 = load i16, i16* %4, align 2, !dbg !583
  call void @rdpsnd_dsp_softvol_set(i16 zeroext %19, i16 zeroext %20), !dbg !584
  br label %21, !dbg !585

; <label>:21:                                     ; preds = %18, %2
  ret void, !dbg !586
}

; Function Attrs: nounwind uwtable
define internal i32 @oss_open_in() #0 !dbg !587 {
  %1 = alloca i32, align 4
  %2 = call i32 @oss_open(i32 0), !dbg !588
  %3 = icmp ne i32 %2, 0, !dbg !588
  br i1 %3, label %5, label %4, !dbg !590

; <label>:4:                                      ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !591
  br label %6, !dbg !591

; <label>:5:                                      ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !592
  br label %6, !dbg !592

; <label>:6:                                      ; preds = %5, %4
  %7 = load i32, i32* %1, align 4, !dbg !593
  ret i32 %7, !dbg !593
}

; Function Attrs: nounwind uwtable
define internal void @oss_close_in() #0 !dbg !594 {
  call void @oss_close(), !dbg !595
  %1 = load i32, i32* @dsp_mode, align 4, !dbg !596
  %2 = icmp eq i32 %1, 2, !dbg !598
  br i1 %2, label %3, label %8, !dbg !599

; <label>:3:                                      ; preds = %0
  %4 = call i32 @oss_open(i32 1), !dbg !600
  %5 = icmp ne i32 %4, 0, !dbg !600
  br i1 %5, label %6, label %7, !dbg !603

; <label>:6:                                      ; preds = %3
  call void @oss_restore_format(), !dbg !604
  br label %7, !dbg !604

; <label>:7:                                      ; preds = %6, %3
  br label %8, !dbg !605

; <label>:8:                                      ; preds = %7, %0
  ret void, !dbg !606
}

declare i8* @xstrdup(i8*) #3

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

declare i32 @rdpsnd_queue_empty() #3

; Function Attrs: nounwind uwtable
define internal void @oss_play() #0 !dbg !607 {
  %1 = alloca %struct.audio_packet*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.audio_buf_info, align 4
  call void @llvm.dbg.declare(metadata %struct.audio_packet** %1, metadata !608, metadata !134), !dbg !630
  call void @llvm.dbg.declare(metadata i64* %2, metadata !631, metadata !134), !dbg !635
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !636, metadata !134), !dbg !639
  %7 = load i32, i32* @dsp_fd, align 4, !dbg !640
  %8 = icmp ne i32 %7, -1, !dbg !641
  br i1 %8, label %9, label %10, !dbg !642

; <label>:9:                                      ; preds = %0
  br label %12, !dbg !643

; <label>:10:                                     ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 406, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__PRETTY_FUNCTION__.oss_play, i32 0, i32 0)) #9, !dbg !645
  unreachable, !dbg !645
                                                  ; No predecessors!
  br label %12, !dbg !647

; <label>:12:                                     ; preds = %11, %9
  %13 = call i32 @rdpsnd_queue_empty(), !dbg !649
  %14 = icmp ne i32 %13, 0, !dbg !649
  br i1 %14, label %15, label %16, !dbg !651

; <label>:15:                                     ; preds = %12
  br label %113, !dbg !652

; <label>:16:                                     ; preds = %12
  %17 = call %struct.audio_packet* @rdpsnd_queue_current_packet(), !dbg !653
  store %struct.audio_packet* %17, %struct.audio_packet** %1, align 8, !dbg !654
  %18 = load %struct.audio_packet*, %struct.audio_packet** %1, align 8, !dbg !655
  %19 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %18, i32 0, i32 0, !dbg !656
  store %struct.stream* %19, %struct.stream** %3, align 8, !dbg !657
  %20 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !658
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 1, !dbg !659
  %22 = load i8*, i8** %21, align 8, !dbg !659
  %23 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !660
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !661
  %25 = load i8*, i8** %24, align 8, !dbg !661
  %26 = ptrtoint i8* %22 to i64, !dbg !662
  %27 = ptrtoint i8* %25 to i64, !dbg !662
  %28 = sub i64 %26, %27, !dbg !662
  store i64 %28, i64* %2, align 8, !dbg !663
  %29 = load i32, i32* @dsp_fd, align 4, !dbg !664
  %30 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !665
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !666
  %32 = load i8*, i8** %31, align 8, !dbg !666
  %33 = load i64, i64* %2, align 8, !dbg !667
  %34 = icmp sgt i64 %33, 512, !dbg !668
  br i1 %34, label %35, label %36, !dbg !669

; <label>:35:                                     ; preds = %16
  br label %38, !dbg !670

; <label>:36:                                     ; preds = %16
  %37 = load i64, i64* %2, align 8, !dbg !671
  br label %38, !dbg !672

; <label>:38:                                     ; preds = %36, %35
  %39 = phi i64 [ 512, %35 ], [ %37, %36 ], !dbg !673
  %40 = call i64 @write(i32 %29, i8* %32, i64 %39), !dbg !674
  store i64 %40, i64* %2, align 8, !dbg !675
  %41 = load i64, i64* %2, align 8, !dbg !676
  %42 = icmp eq i64 %41, -1, !dbg !678
  br i1 %42, label %43, label %56, !dbg !679

; <label>:43:                                     ; preds = %38
  %44 = call i32* @__errno_location() #1, !dbg !680
  %45 = load i32, i32* %44, align 4, !dbg !683
  %46 = icmp ne i32 %45, 11, !dbg !684
  br i1 %46, label %47, label %55, !dbg !685

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* @dsp_broken, align 4, !dbg !686
  %49 = icmp ne i32 %48, 0, !dbg !686
  br i1 %49, label %54, label %50, !dbg !689

; <label>:50:                                     ; preds = %47
  %51 = call i32* @__errno_location() #1, !dbg !690
  %52 = load i32, i32* %51, align 4, !dbg !691
  %53 = call i8* @strerror(i32 %52) #8, !dbg !692
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* %53), !dbg !694
  br label %54, !dbg !696

; <label>:54:                                     ; preds = %50, %47
  store i32 1, i32* @dsp_broken, align 4, !dbg !697
  call void @rdpsnd_queue_next(i64 0), !dbg !698
  br label %55, !dbg !699

; <label>:55:                                     ; preds = %54, %43
  br label %113, !dbg !700

; <label>:56:                                     ; preds = %38
  store i32 0, i32* @dsp_broken, align 4, !dbg !701
  %57 = load i64, i64* %2, align 8, !dbg !702
  %58 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !703
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 0, !dbg !704
  %60 = load i8*, i8** %59, align 8, !dbg !705
  %61 = getelementptr inbounds i8, i8* %60, i64 %57, !dbg !705
  store i8* %61, i8** %59, align 8, !dbg !705
  %62 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !706
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !708
  %64 = load i8*, i8** %63, align 8, !dbg !708
  %65 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !709
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 1, !dbg !710
  %67 = load i8*, i8** %66, align 8, !dbg !710
  %68 = icmp eq i8* %64, %67, !dbg !711
  br i1 %68, label %69, label %113, !dbg !712

; <label>:69:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata i32* %4, metadata !713, metadata !134), !dbg !715
  call void @llvm.dbg.declare(metadata i64* %5, metadata !716, metadata !134), !dbg !718
  call void @llvm.dbg.declare(metadata %struct.audio_buf_info* %6, metadata !719, metadata !134), !dbg !720
  %70 = load i32, i32* @in_esddsp, align 4, !dbg !721
  %71 = icmp ne i32 %70, 0, !dbg !721
  br i1 %71, label %72, label %76, !dbg !723

; <label>:72:                                     ; preds = %69
  %73 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !724
  %74 = getelementptr inbounds %struct.stream, %struct.stream* %73, i32 0, i32 3, !dbg !726
  %75 = load i32, i32* %74, align 8, !dbg !726
  store i32 %75, i32* %4, align 4, !dbg !727
  br label %103, !dbg !728

; <label>:76:                                     ; preds = %69
  store i32 0, i32* %4, align 4, !dbg !729
  %77 = load i32, i32* @dsp_fd, align 4, !dbg !731
  %78 = call i32 (i32, i64, ...) @ioctl(i32 %77, i64 2147766295, i32* %4) #8, !dbg !733
  %79 = icmp eq i32 %78, -1, !dbg !734
  br i1 %79, label %80, label %81, !dbg !735

; <label>:80:                                     ; preds = %76
  store i32 -1, i32* %4, align 4, !dbg !736
  br label %81, !dbg !737

; <label>:81:                                     ; preds = %80, %76
  %82 = load i32, i32* %4, align 4, !dbg !738
  %83 = icmp eq i32 %82, -1, !dbg !740
  br i1 %83, label %84, label %102, !dbg !741

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* @dsp_fd, align 4, !dbg !742
  %86 = call i32 (i32, i64, ...) @ioctl(i32 %85, i64 2148552716, %struct.audio_buf_info* %6) #8, !dbg !745
  %87 = icmp ne i32 %86, -1, !dbg !746
  br i1 %87, label %88, label %97, !dbg !747

; <label>:88:                                     ; preds = %84
  %89 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %6, i32 0, i32 1, !dbg !748
  %90 = load i32, i32* %89, align 4, !dbg !748
  %91 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %6, i32 0, i32 2, !dbg !749
  %92 = load i32, i32* %91, align 4, !dbg !749
  %93 = mul nsw i32 %90, %92, !dbg !750
  %94 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %6, i32 0, i32 3, !dbg !751
  %95 = load i32, i32* %94, align 4, !dbg !751
  %96 = sub nsw i32 %93, %95, !dbg !752
  store i32 %96, i32* %4, align 4, !dbg !753
  br label %101, !dbg !754

; <label>:97:                                     ; preds = %84
  %98 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !755
  %99 = getelementptr inbounds %struct.stream, %struct.stream* %98, i32 0, i32 3, !dbg !756
  %100 = load i32, i32* %99, align 8, !dbg !756
  store i32 %100, i32* %4, align 4, !dbg !757
  br label %101

; <label>:101:                                    ; preds = %97, %88
  br label %102, !dbg !758

; <label>:102:                                    ; preds = %101, %81
  br label %103

; <label>:103:                                    ; preds = %102, %72
  %104 = load i32, i32* %4, align 4, !dbg !759
  %105 = load i16, i16* @samplewidth, align 2, !dbg !760
  %106 = sext i16 %105 to i32, !dbg !760
  %107 = load i32, i32* @snd_rate, align 4, !dbg !761
  %108 = mul i32 %106, %107, !dbg !762
  %109 = udiv i32 1000000, %108, !dbg !763
  %110 = mul i32 %104, %109, !dbg !764
  %111 = zext i32 %110 to i64, !dbg !759
  store i64 %111, i64* %5, align 8, !dbg !765
  %112 = load i64, i64* %5, align 8, !dbg !766
  call void @rdpsnd_queue_next(i64 %112), !dbg !767
  br label %113, !dbg !768

; <label>:113:                                    ; preds = %15, %55, %103, %56
  ret void, !dbg !769
}

; Function Attrs: nounwind uwtable
define internal void @oss_record() #0 !dbg !770 {
  %1 = alloca [32768 x i8], align 16
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [32768 x i8]* %1, metadata !771, metadata !134), !dbg !775
  call void @llvm.dbg.declare(metadata i32* %2, metadata !776, metadata !134), !dbg !777
  %3 = load i32, i32* @dsp_fd, align 4, !dbg !778
  %4 = icmp ne i32 %3, -1, !dbg !779
  br i1 %4, label %5, label %6, !dbg !780

; <label>:5:                                      ; preds = %0
  br label %8, !dbg !781

; <label>:6:                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 476, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__PRETTY_FUNCTION__.oss_record, i32 0, i32 0)) #9, !dbg !783
  unreachable, !dbg !783
                                                  ; No predecessors!
  br label %8, !dbg !785

; <label>:8:                                      ; preds = %7, %5
  %9 = load i32, i32* @dsp_fd, align 4, !dbg !787
  %10 = getelementptr inbounds [32768 x i8], [32768 x i8]* %1, i32 0, i32 0, !dbg !788
  %11 = call i64 @read(i32 %9, i8* %10, i64 32768), !dbg !789
  %12 = trunc i64 %11 to i32, !dbg !789
  store i32 %12, i32* %2, align 4, !dbg !790
  %13 = load i32, i32* %2, align 4, !dbg !791
  %14 = icmp eq i32 %13, -1, !dbg !793
  br i1 %14, label %15, label %28, !dbg !794

; <label>:15:                                     ; preds = %8
  %16 = call i32* @__errno_location() #1, !dbg !795
  %17 = load i32, i32* %16, align 4, !dbg !798
  %18 = icmp ne i32 %17, 11, !dbg !799
  br i1 %18, label %19, label %27, !dbg !800

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* @dsp_broken, align 4, !dbg !801
  %21 = icmp ne i32 %20, 0, !dbg !801
  br i1 %21, label %26, label %22, !dbg !804

; <label>:22:                                     ; preds = %19
  %23 = call i32* @__errno_location() #1, !dbg !805
  %24 = load i32, i32* %23, align 4, !dbg !806
  %25 = call i8* @strerror(i32 %24) #8, !dbg !807
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* %25), !dbg !809
  br label %26, !dbg !811

; <label>:26:                                     ; preds = %22, %19
  store i32 1, i32* @dsp_broken, align 4, !dbg !812
  call void @rdpsnd_queue_next(i64 0), !dbg !813
  br label %27, !dbg !814

; <label>:27:                                     ; preds = %26, %15
  br label %31, !dbg !815

; <label>:28:                                     ; preds = %8
  store i32 0, i32* @dsp_broken, align 4, !dbg !816
  %29 = getelementptr inbounds [32768 x i8], [32768 x i8]* %1, i32 0, i32 0, !dbg !817
  %30 = load i32, i32* %2, align 4, !dbg !818
  call void @rdpsnd_record(i8* %29, i32 %30), !dbg !819
  br label %31, !dbg !820

; <label>:31:                                     ; preds = %28, %27
  ret void, !dbg !821
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

declare %struct.audio_packet* @rdpsnd_queue_current_packet() #3

declare i64 @write(i32, i8*, i64) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare void @logger(i32, i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare void @rdpsnd_queue_next(i64) #3

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

declare i64 @read(i32, i8*, i64) #3

declare void @rdpsnd_record(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @oss_open(i32) #0 !dbg !822 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !825, metadata !134), !dbg !826
  %5 = load i32, i32* @dsp_fd, align 4, !dbg !827
  %6 = icmp ne i32 %5, -1, !dbg !829
  br i1 %6, label %7, label %27, !dbg !830

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !831
  %9 = load i32, i32* @dsp_mode, align 4, !dbg !834
  %10 = icmp eq i32 %8, %9, !dbg !835
  br i1 %10, label %11, label %12, !dbg !836

; <label>:11:                                     ; preds = %7
  store i32 1, i32* %2, align 4, !dbg !837
  br label %42, !dbg !837

; <label>:12:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata i32* %4, metadata !839, metadata !134), !dbg !841
  %13 = load i32, i32* @dsp_fd, align 4, !dbg !842
  %14 = call i32 (i32, i64, ...) @ioctl(i32 %13, i64 20502, i32 0) #8, !dbg !843
  %15 = load i32, i32* @dsp_fd, align 4, !dbg !844
  %16 = call i32 (i32, i64, ...) @ioctl(i32 %15, i64 2147766287, i32* %4) #8, !dbg !846
  %17 = icmp slt i32 %16, 0, !dbg !847
  br i1 %17, label %22, label %18, !dbg !848

; <label>:18:                                     ; preds = %12
  %19 = load i32, i32* %4, align 4, !dbg !849
  %20 = and i32 %19, 256, !dbg !851
  %21 = icmp ne i32 %20, 0, !dbg !851
  br i1 %21, label %23, label %22, !dbg !852

; <label>:22:                                     ; preds = %18, %12
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0)), !dbg !854
  store i32 0, i32* %2, align 4, !dbg !856
  br label %42, !dbg !856

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* @dsp_fd, align 4, !dbg !857
  %25 = call i32 @close(i32 %24), !dbg !858
  store i32 2, i32* @dsp_mode, align 4, !dbg !859
  br label %26

; <label>:26:                                     ; preds = %23
  br label %29, !dbg !860

; <label>:27:                                     ; preds = %1
  %28 = load i32, i32* %3, align 4, !dbg !861
  store i32 %28, i32* @dsp_mode, align 4, !dbg !863
  br label %29

; <label>:29:                                     ; preds = %27, %26
  store i32 0, i32* @dsp_configured, align 4, !dbg !864
  store i32 0, i32* @dsp_broken, align 4, !dbg !865
  %30 = load i8*, i8** @dsp_dev, align 8, !dbg !866
  %31 = load i32, i32* @dsp_mode, align 4, !dbg !867
  %32 = or i32 %31, 2048, !dbg !868
  %33 = call i32 (i8*, i32, ...) @open(i8* %30, i32 %32), !dbg !869
  store i32 %33, i32* @dsp_fd, align 4, !dbg !870
  %34 = load i32, i32* @dsp_fd, align 4, !dbg !871
  %35 = icmp eq i32 %34, -1, !dbg !873
  br i1 %35, label %36, label %40, !dbg !874

; <label>:36:                                     ; preds = %29
  %37 = call i32* @__errno_location() #1, !dbg !875
  %38 = load i32, i32* %37, align 4, !dbg !877
  %39 = call i8* @strerror(i32 %38) #8, !dbg !878
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i8* %39), !dbg !880
  store i32 0, i32* %2, align 4, !dbg !882
  br label %42, !dbg !882

; <label>:40:                                     ; preds = %29
  %41 = call i32 @detect_esddsp(), !dbg !883
  store i32 %41, i32* @in_esddsp, align 4, !dbg !884
  store i32 1, i32* %2, align 4, !dbg !885
  br label %42, !dbg !885

; <label>:42:                                     ; preds = %40, %36, %22, %11
  %43 = load i32, i32* %2, align 4, !dbg !886
  ret i32 %43, !dbg !886
}

declare i32 @close(i32) #3

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @detect_esddsp() #0 !dbg !887 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !888, metadata !134), !dbg !923
  call void @llvm.dbg.declare(metadata i8** %3, metadata !924, metadata !134), !dbg !925
  %4 = load i32, i32* @dsp_fd, align 4, !dbg !926
  %5 = call i32 @fstat(i32 %4, %struct.stat* %2) #8, !dbg !928
  %6 = icmp eq i32 %5, -1, !dbg !929
  br i1 %6, label %7, label %8, !dbg !930

; <label>:7:                                      ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !931
  br label %30, !dbg !931

; <label>:8:                                      ; preds = %0
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 3, !dbg !932
  %10 = load i32, i32* %9, align 8, !dbg !932
  %11 = and i32 %10, 61440, !dbg !934
  %12 = icmp eq i32 %11, 8192, !dbg !935
  br i1 %12, label %18, label %13, !dbg !936

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 3, !dbg !937
  %15 = load i32, i32* %14, align 8, !dbg !937
  %16 = and i32 %15, 61440, !dbg !939
  %17 = icmp eq i32 %16, 24576, !dbg !940
  br i1 %17, label %18, label %19, !dbg !941

; <label>:18:                                     ; preds = %13, %8
  store i32 0, i32* %1, align 4, !dbg !942
  br label %30, !dbg !942

; <label>:19:                                     ; preds = %13
  %20 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !943
  store i8* %20, i8** %3, align 8, !dbg !944
  %21 = load i8*, i8** %3, align 8, !dbg !945
  %22 = icmp eq i8* %21, null, !dbg !947
  br i1 %22, label %23, label %24, !dbg !948

; <label>:23:                                     ; preds = %19
  store i32 0, i32* %1, align 4, !dbg !949
  br label %30, !dbg !949

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %3, align 8, !dbg !950
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)) #10, !dbg !952
  %27 = icmp eq i8* %26, null, !dbg !953
  br i1 %27, label %28, label %29, !dbg !954

; <label>:28:                                     ; preds = %24
  store i32 0, i32* %1, align 4, !dbg !955
  br label %30, !dbg !955

; <label>:29:                                     ; preds = %24
  store i32 1, i32* %1, align 4, !dbg !956
  br label %30, !dbg !956

; <label>:30:                                     ; preds = %29, %28, %23, %18, %7
  %31 = load i32, i32* %1, align 4, !dbg !957
  ret i32 %31, !dbg !957
}

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #7

; Function Attrs: nounwind uwtable
define internal void @oss_close() #0 !dbg !958 {
  %1 = load i32, i32* @dsp_fd, align 4, !dbg !959
  %2 = call i32 @close(i32 %1), !dbg !960
  store i32 -1, i32* @dsp_fd, align 4, !dbg !961
  ret void, !dbg !962
}

; Function Attrs: nounwind uwtable
define internal void @oss_restore_format() #0 !dbg !963 {
  %1 = alloca %struct._RD_WAVEFORMATEX, align 4
  call void @llvm.dbg.declare(metadata %struct._RD_WAVEFORMATEX* %1, metadata !964, metadata !134), !dbg !965
  %2 = bitcast %struct._RD_WAVEFORMATEX* %1 to i8*, !dbg !966
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 276, i32 4, i1 false), !dbg !966
  %3 = load i32, i32* @format, align 4, !dbg !967
  switch i32 %3, label %8 [
    i32 8, label %4
    i32 16, label %6
  ], !dbg !968

; <label>:4:                                      ; preds = %0
  %5 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %1, i32 0, i32 5, !dbg !969
  store i16 8, i16* %5, align 2, !dbg !971
  br label %10, !dbg !972

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %1, i32 0, i32 5, !dbg !973
  store i16 16, i16* %7, align 2, !dbg !974
  br label %10, !dbg !975

; <label>:8:                                      ; preds = %0
  %9 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %1, i32 0, i32 5, !dbg !976
  store i16 0, i16* %9, align 2, !dbg !977
  br label %10, !dbg !978

; <label>:10:                                     ; preds = %8, %6, %4
  %11 = load i32, i32* @stereo, align 4, !dbg !979
  %12 = icmp ne i32 %11, 0, !dbg !979
  %13 = select i1 %12, i32 2, i32 1, !dbg !979
  %14 = trunc i32 %13 to i16, !dbg !979
  %15 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %1, i32 0, i32 1, !dbg !980
  store i16 %14, i16* %15, align 2, !dbg !981
  %16 = load i32, i32* @snd_rate, align 4, !dbg !982
  %17 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %1, i32 0, i32 2, !dbg !983
  store i32 %16, i32* %17, align 4, !dbg !984
  %18 = call i32 @oss_set_format(%struct._RD_WAVEFORMATEX* %1), !dbg !985
  ret void, !dbg !986
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @rdpsnd_dsp_resample_set(i32, i16 zeroext, i16 zeroext) #3

declare void @rdpsnd_dsp_softvol_set(i16 zeroext, i16 zeroext) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!127, !128}
!llvm.ident = !{!129}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !28)
!1 = !DIFile(filename: "[inter]rdpsnd_oss.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !{!23, !24, !27}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !25, line: 54, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!26 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!27 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!28 = !{!29, !33, !114, !115, !116, !117, !118, !120, !121, !122, !123, !124}
!29 = distinct !DIGlobalVariable(name: "dsp_dev", scope: !0, file: !30, line: 61, type: !31, isLocal: true, isDefinition: true, variable: i8** @dsp_dev)
!30 = !DIFile(filename: "rdpsnd_oss.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!33 = distinct !DIGlobalVariable(name: "oss_driver", scope: !0, file: !30, line: 65, type: !34, isLocal: true, isDefinition: true, variable: %struct.audio_driver* @oss_driver)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "audio_driver", file: !35, line: 30, size: 1024, align: 64, elements: !36)
!35 = !DIFile(filename: "rdpsnd.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!36 = !{!37, !59, !63, !69, !73, !98, !99, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "add_fds", scope: !34, file: !35, line: 32, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !42, !42, !50}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !25, line: 75, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 64, size: 1024, align: 64, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !44, file: !25, line: 72, baseType: !47, size: 1024, align: 64)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1024, align: 64, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 16)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !52, line: 30, size: 128, align: 64, elements: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!53 = !{!54, !57}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !51, file: !52, line: 32, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !56, line: 139, baseType: !26)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !51, file: !52, line: 33, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !56, line: 141, baseType: !26)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "check_fds", scope: !34, file: !35, line: 33, baseType: !60, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !42, !42}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_open", scope: !34, file: !35, line: 35, baseType: !64, size: 64, align: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !68, line: 28, baseType: !27)
!68 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_close", scope: !34, file: !35, line: 36, baseType: !70, size: 64, align: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_format_supported", scope: !34, file: !35, line: 37, baseType: !74, size: 64, align: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!67, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_WAVEFORMATEX", file: !68, line: 197, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RD_WAVEFORMATEX", file: !68, line: 187, size: 2208, align: 32, elements: !80)
!80 = !{!81, !84, !85, !88, !89, !90, !91, !92}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "wFormatTag", scope: !79, file: !68, line: 189, baseType: !82, size: 16, align: 16)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !68, line: 41, baseType: !83)
!83 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "nChannels", scope: !79, file: !68, line: 190, baseType: !82, size: 16, align: 16, offset: 16)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "nSamplesPerSec", scope: !79, file: !68, line: 191, baseType: !86, size: 32, align: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !68, line: 43, baseType: !87)
!87 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "nAvgBytesPerSec", scope: !79, file: !68, line: 192, baseType: !86, size: 32, align: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "nBlockAlign", scope: !79, file: !68, line: 193, baseType: !82, size: 16, align: 16, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "wBitsPerSample", scope: !79, file: !68, line: 194, baseType: !82, size: 16, align: 16, offset: 112)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cbSize", scope: !79, file: !68, line: 195, baseType: !82, size: 16, align: 16, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !79, file: !68, line: 196, baseType: !93, size: 2048, align: 8, offset: 144)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2048, align: 8, elements: !96)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !68, line: 39, baseType: !95)
!95 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!96 = !{!97}
!97 = !DISubrange(count: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_set_format", scope: !34, file: !35, line: 38, baseType: !74, size: 64, align: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_volume", scope: !34, file: !35, line: 39, baseType: !100, size: 64, align: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !82, !82}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_open", scope: !34, file: !35, line: 41, baseType: !64, size: 64, align: 64, offset: 448)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_close", scope: !34, file: !35, line: 42, baseType: !70, size: 64, align: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_format_supported", scope: !34, file: !35, line: 43, baseType: !74, size: 64, align: 64, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_set_format", scope: !34, file: !35, line: 44, baseType: !74, size: 64, align: 64, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_volume", scope: !34, file: !35, line: 45, baseType: !100, size: 64, align: 64, offset: 704)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !35, line: 47, baseType: !31, size: 64, align: 64, offset: 768)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !34, file: !35, line: 48, baseType: !31, size: 64, align: 64, offset: 832)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "need_byteswap_on_be", scope: !34, file: !35, line: 49, baseType: !27, size: 32, align: 32, offset: 896)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "need_resampling", scope: !34, file: !35, line: 50, baseType: !27, size: 32, align: 32, offset: 928)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !35, line: 51, baseType: !113, size: 64, align: 64, offset: 960)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!114 = distinct !DIGlobalVariable(name: "dsp_fd", scope: !0, file: !30, line: 51, type: !27, isLocal: true, isDefinition: true, variable: i32* @dsp_fd)
!115 = distinct !DIGlobalVariable(name: "dsp_mode", scope: !0, file: !30, line: 52, type: !27, isLocal: true, isDefinition: true, variable: i32* @dsp_mode)
!116 = distinct !DIGlobalVariable(name: "dsp_broken", scope: !0, file: !30, line: 55, type: !67, isLocal: true, isDefinition: true, variable: i32* @dsp_broken)
!117 = distinct !DIGlobalVariable(name: "in_esddsp", scope: !0, file: !30, line: 62, type: !67, isLocal: true, isDefinition: true, variable: i32* @in_esddsp)
!118 = distinct !DIGlobalVariable(name: "samplewidth", scope: !0, file: !30, line: 60, type: !119, isLocal: true, isDefinition: true, variable: i16* @samplewidth)
!119 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!120 = distinct !DIGlobalVariable(name: "snd_rate", scope: !0, file: !30, line: 59, type: !86, isLocal: true, isDefinition: true, variable: i32* @snd_rate)
!121 = distinct !DIGlobalVariable(name: "dsp_configured", scope: !0, file: !30, line: 54, type: !67, isLocal: true, isDefinition: true, variable: i32* @dsp_configured)
!122 = distinct !DIGlobalVariable(name: "format", scope: !0, file: !30, line: 58, type: !27, isLocal: true, isDefinition: true, variable: i32* @format)
!123 = distinct !DIGlobalVariable(name: "stereo", scope: !0, file: !30, line: 57, type: !27, isLocal: true, isDefinition: true, variable: i32* @stereo)
!124 = distinct !DIGlobalVariable(name: "driver_broken", scope: !125, file: !30, line: 257, type: !67, isLocal: true, isDefinition: true, variable: i32* @oss_set_format.driver_broken)
!125 = distinct !DISubprogram(name: "oss_set_format", scope: !30, file: !30, line: 254, type: !75, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!126 = !{}
!127 = !{i32 2, !"Dwarf Version", i32 4}
!128 = !{i32 2, !"Debug Info Version", i32 3}
!129 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!130 = distinct !DISubprogram(name: "oss_register", scope: !30, file: !30, line: 497, type: !131, isLocal: false, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!131 = !DISubroutineType(types: !132)
!132 = !{!113, !31}
!133 = !DILocalVariable(name: "options", arg: 1, scope: !130, file: !30, line: 497, type: !31)
!134 = !DIExpression()
!135 = !DILocation(line: 497, column: 20, scope: !130)
!136 = !DILocation(line: 499, column: 2, scope: !130)
!137 = !DILocation(line: 501, column: 18, scope: !130)
!138 = !DILocation(line: 502, column: 25, scope: !130)
!139 = !DILocation(line: 505, column: 21, scope: !130)
!140 = !DILocation(line: 506, column: 23, scope: !130)
!141 = !DILocation(line: 508, column: 27, scope: !130)
!142 = !DILocation(line: 509, column: 28, scope: !130)
!143 = !DILocation(line: 510, column: 39, scope: !130)
!144 = !DILocation(line: 511, column: 33, scope: !130)
!145 = !DILocation(line: 512, column: 29, scope: !130)
!146 = !DILocation(line: 514, column: 26, scope: !130)
!147 = !DILocation(line: 515, column: 27, scope: !130)
!148 = !DILocation(line: 516, column: 38, scope: !130)
!149 = !DILocation(line: 517, column: 32, scope: !130)
!150 = !DILocation(line: 518, column: 28, scope: !130)
!151 = !DILocation(line: 520, column: 33, scope: !130)
!152 = !DILocation(line: 521, column: 29, scope: !130)
!153 = !DILocation(line: 523, column: 6, scope: !154)
!154 = distinct !DILexicalBlock(scope: !130, file: !30, line: 523, column: 6)
!155 = !DILocation(line: 523, column: 6, scope: !130)
!156 = !DILocation(line: 525, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !30, line: 524, column: 2)
!158 = !DILocation(line: 525, column: 13, scope: !157)
!159 = !DILocation(line: 525, column: 11, scope: !157)
!160 = !DILocation(line: 526, column: 2, scope: !157)
!161 = !DILocation(line: 529, column: 13, scope: !162)
!162 = distinct !DILexicalBlock(scope: !154, file: !30, line: 528, column: 2)
!163 = !DILocation(line: 529, column: 11, scope: !162)
!164 = !DILocation(line: 531, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !30, line: 531, column: 7)
!166 = !DILocation(line: 531, column: 15, scope: !165)
!167 = !DILocation(line: 531, column: 7, scope: !162)
!168 = !DILocation(line: 533, column: 12, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !30, line: 532, column: 3)
!170 = !DILocation(line: 534, column: 3, scope: !169)
!171 = !DILocation(line: 537, column: 2, scope: !130)
!172 = distinct !DISubprogram(name: "oss_add_fds", scope: !30, file: !30, line: 72, type: !39, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!173 = !DILocalVariable(name: "n", arg: 1, scope: !172, file: !30, line: 72, type: !41)
!174 = !DILocation(line: 72, column: 18, scope: !172)
!175 = !DILocalVariable(name: "rfds", arg: 2, scope: !172, file: !30, line: 72, type: !42)
!176 = !DILocation(line: 72, column: 30, scope: !172)
!177 = !DILocalVariable(name: "wfds", arg: 3, scope: !172, file: !30, line: 72, type: !42)
!178 = !DILocation(line: 72, column: 45, scope: !172)
!179 = !DILocalVariable(name: "tv", arg: 4, scope: !172, file: !30, line: 72, type: !50)
!180 = !DILocation(line: 72, column: 67, scope: !172)
!181 = !DILocation(line: 74, column: 9, scope: !172)
!182 = !DILocation(line: 75, column: 6, scope: !183)
!183 = distinct !DILexicalBlock(scope: !172, file: !30, line: 75, column: 6)
!184 = !DILocation(line: 75, column: 13, scope: !183)
!185 = !DILocation(line: 75, column: 6, scope: !172)
!186 = !DILocation(line: 76, column: 3, scope: !183)
!187 = !DILocation(line: 78, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !172, file: !30, line: 78, column: 6)
!189 = !DILocation(line: 78, column: 16, scope: !188)
!190 = !DILocation(line: 78, column: 27, scope: !188)
!191 = !DILocation(line: 78, column: 30, scope: !192)
!192 = !DILexicalBlockFile(scope: !188, file: !30, discriminator: 1)
!193 = !DILocation(line: 78, column: 39, scope: !192)
!194 = !DILocation(line: 78, column: 50, scope: !192)
!195 = !DILocation(line: 78, column: 54, scope: !196)
!196 = !DILexicalBlockFile(scope: !188, file: !30, discriminator: 2)
!197 = !DILocation(line: 78, column: 6, scope: !196)
!198 = !DILocation(line: 79, column: 2, scope: !188)
!199 = !DILocation(line: 79, column: 4, scope: !188)
!200 = !DILocation(line: 79, column: 60, scope: !188)
!201 = !DILocation(line: 79, column: 11, scope: !188)
!202 = !DILocation(line: 79, column: 5, scope: !188)
!203 = !DILocation(line: 79, column: 39, scope: !188)
!204 = !DILocation(line: 80, column: 6, scope: !205)
!205 = distinct !DILexicalBlock(scope: !172, file: !30, line: 80, column: 6)
!206 = !DILocation(line: 80, column: 15, scope: !205)
!207 = !DILocation(line: 80, column: 26, scope: !205)
!208 = !DILocation(line: 80, column: 29, scope: !209)
!209 = !DILexicalBlockFile(scope: !205, file: !30, discriminator: 1)
!210 = !DILocation(line: 80, column: 38, scope: !209)
!211 = !DILocation(line: 80, column: 6, scope: !209)
!212 = !DILocation(line: 81, column: 2, scope: !205)
!213 = !DILocation(line: 81, column: 4, scope: !205)
!214 = !DILocation(line: 81, column: 60, scope: !205)
!215 = !DILocation(line: 81, column: 11, scope: !205)
!216 = !DILocation(line: 81, column: 5, scope: !205)
!217 = !DILocation(line: 81, column: 39, scope: !205)
!218 = !DILocation(line: 82, column: 6, scope: !219)
!219 = distinct !DILexicalBlock(scope: !172, file: !30, line: 82, column: 6)
!220 = !DILocation(line: 82, column: 16, scope: !219)
!221 = !DILocation(line: 82, column: 15, scope: !219)
!222 = !DILocation(line: 82, column: 13, scope: !219)
!223 = !DILocation(line: 82, column: 6, scope: !172)
!224 = !DILocation(line: 83, column: 8, scope: !219)
!225 = !DILocation(line: 83, column: 4, scope: !219)
!226 = !DILocation(line: 83, column: 6, scope: !219)
!227 = !DILocation(line: 83, column: 3, scope: !219)
!228 = !DILocation(line: 84, column: 1, scope: !172)
!229 = distinct !DISubprogram(name: "oss_check_fds", scope: !30, file: !30, line: 87, type: !61, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!230 = !DILocalVariable(name: "rfds", arg: 1, scope: !229, file: !30, line: 87, type: !42)
!231 = !DILocation(line: 87, column: 24, scope: !229)
!232 = !DILocalVariable(name: "wfds", arg: 2, scope: !229, file: !30, line: 87, type: !42)
!233 = !DILocation(line: 87, column: 39, scope: !229)
!234 = !DILocation(line: 89, column: 5, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !30, line: 89, column: 5)
!236 = !DILocation(line: 89, column: 7, scope: !235)
!237 = !DILocation(line: 89, column: 8, scope: !235)
!238 = !DILocation(line: 89, column: 62, scope: !235)
!239 = !DILocation(line: 89, column: 42, scope: !235)
!240 = !DILocation(line: 89, column: 44, scope: !235)
!241 = !DILocation(line: 89, column: 5, scope: !229)
!242 = !DILocation(line: 90, column: 3, scope: !235)
!243 = !DILocation(line: 91, column: 5, scope: !244)
!244 = distinct !DILexicalBlock(scope: !229, file: !30, line: 91, column: 5)
!245 = !DILocation(line: 91, column: 7, scope: !244)
!246 = !DILocation(line: 91, column: 8, scope: !244)
!247 = !DILocation(line: 91, column: 62, scope: !244)
!248 = !DILocation(line: 91, column: 42, scope: !244)
!249 = !DILocation(line: 91, column: 44, scope: !244)
!250 = !DILocation(line: 91, column: 5, scope: !229)
!251 = !DILocation(line: 92, column: 3, scope: !244)
!252 = !DILocation(line: 93, column: 1, scope: !229)
!253 = distinct !DISubprogram(name: "oss_open_out", scope: !30, file: !30, line: 197, type: !65, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!254 = !DILocation(line: 199, column: 7, scope: !255)
!255 = distinct !DILexicalBlock(scope: !253, file: !30, line: 199, column: 6)
!256 = !DILocation(line: 199, column: 6, scope: !253)
!257 = !DILocation(line: 200, column: 3, scope: !255)
!258 = !DILocation(line: 202, column: 2, scope: !253)
!259 = !DILocation(line: 203, column: 1, scope: !253)
!260 = distinct !DISubprogram(name: "oss_close_out", scope: !30, file: !30, line: 206, type: !71, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!261 = !DILocation(line: 208, column: 2, scope: !260)
!262 = !DILocation(line: 209, column: 6, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !30, line: 209, column: 6)
!264 = !DILocation(line: 209, column: 15, scope: !263)
!265 = !DILocation(line: 209, column: 6, scope: !260)
!266 = !DILocation(line: 211, column: 7, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !30, line: 211, column: 7)
!268 = distinct !DILexicalBlock(scope: !263, file: !30, line: 210, column: 2)
!269 = !DILocation(line: 211, column: 7, scope: !268)
!270 = !DILocation(line: 212, column: 4, scope: !267)
!271 = !DILocation(line: 213, column: 2, scope: !268)
!272 = !DILocation(line: 216, column: 2, scope: !260)
!273 = !DILocation(line: 216, column: 10, scope: !274)
!274 = !DILexicalBlockFile(scope: !260, file: !30, discriminator: 1)
!275 = !DILocation(line: 216, column: 9, scope: !274)
!276 = !DILocation(line: 216, column: 2, scope: !274)
!277 = !DILocation(line: 217, column: 3, scope: !260)
!278 = !DILocation(line: 216, column: 2, scope: !279)
!279 = !DILexicalBlockFile(scope: !260, file: !30, discriminator: 2)
!280 = distinct !{!280, !272}
!281 = !DILocation(line: 218, column: 1, scope: !260)
!282 = distinct !DISubprogram(name: "oss_format_supported", scope: !30, file: !30, line: 241, type: !75, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!283 = !DILocalVariable(name: "pwfx", arg: 1, scope: !282, file: !30, line: 241, type: !77)
!284 = !DILocation(line: 241, column: 40, scope: !282)
!285 = !DILocation(line: 243, column: 6, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !30, line: 243, column: 6)
!287 = !DILocation(line: 243, column: 12, scope: !286)
!288 = !DILocation(line: 243, column: 23, scope: !286)
!289 = !DILocation(line: 243, column: 6, scope: !282)
!290 = !DILocation(line: 244, column: 3, scope: !286)
!291 = !DILocation(line: 245, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !282, file: !30, line: 245, column: 6)
!293 = !DILocation(line: 245, column: 13, scope: !292)
!294 = !DILocation(line: 245, column: 23, scope: !292)
!295 = !DILocation(line: 245, column: 29, scope: !292)
!296 = !DILocation(line: 245, column: 33, scope: !297)
!297 = !DILexicalBlockFile(scope: !292, file: !30, discriminator: 1)
!298 = !DILocation(line: 245, column: 39, scope: !297)
!299 = !DILocation(line: 245, column: 49, scope: !297)
!300 = !DILocation(line: 245, column: 6, scope: !297)
!301 = !DILocation(line: 246, column: 3, scope: !292)
!302 = !DILocation(line: 247, column: 7, scope: !303)
!303 = distinct !DILexicalBlock(scope: !282, file: !30, line: 247, column: 6)
!304 = !DILocation(line: 247, column: 13, scope: !303)
!305 = !DILocation(line: 247, column: 28, scope: !303)
!306 = !DILocation(line: 247, column: 34, scope: !303)
!307 = !DILocation(line: 247, column: 38, scope: !308)
!308 = !DILexicalBlockFile(scope: !303, file: !30, discriminator: 1)
!309 = !DILocation(line: 247, column: 44, scope: !308)
!310 = !DILocation(line: 247, column: 59, scope: !308)
!311 = !DILocation(line: 247, column: 6, scope: !308)
!312 = !DILocation(line: 248, column: 3, scope: !303)
!313 = !DILocation(line: 250, column: 2, scope: !282)
!314 = !DILocation(line: 251, column: 1, scope: !282)
!315 = !DILocalVariable(name: "pwfx", arg: 1, scope: !125, file: !30, line: 254, type: !77)
!316 = !DILocation(line: 254, column: 34, scope: !125)
!317 = !DILocalVariable(name: "fragments", scope: !125, file: !30, line: 256, type: !27)
!318 = !DILocation(line: 256, column: 6, scope: !125)
!319 = !DILocation(line: 259, column: 1, scope: !125)
!320 = !DILocation(line: 259, column: 8, scope: !125)
!321 = !DILocation(line: 259, column: 2, scope: !125)
!322 = !DILocation(line: 259, column: 2, scope: !323)
!323 = !DILexicalBlockFile(scope: !125, file: !30, discriminator: 1)
!324 = !DILocation(line: 259, column: 18, scope: !325)
!325 = !DILexicalBlockFile(scope: !125, file: !30, discriminator: 2)
!326 = !DILocation(line: 259, column: 2, scope: !327)
!327 = !DILexicalBlockFile(scope: !125, file: !30, discriminator: 3)
!328 = !DILocation(line: 261, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !125, file: !30, line: 261, column: 6)
!330 = !DILocation(line: 261, column: 6, scope: !125)
!331 = !DILocation(line: 263, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !30, line: 263, column: 7)
!333 = distinct !DILexicalBlock(scope: !329, file: !30, line: 262, column: 2)
!334 = !DILocation(line: 263, column: 14, scope: !332)
!335 = !DILocation(line: 263, column: 29, scope: !332)
!336 = !DILocation(line: 263, column: 35, scope: !332)
!337 = !DILocation(line: 263, column: 39, scope: !338)
!338 = !DILexicalBlockFile(scope: !332, file: !30, discriminator: 1)
!339 = !DILocation(line: 263, column: 46, scope: !338)
!340 = !DILocation(line: 263, column: 7, scope: !338)
!341 = !DILocation(line: 264, column: 4, scope: !332)
!342 = !DILocation(line: 265, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !333, file: !30, line: 265, column: 7)
!344 = !DILocation(line: 265, column: 14, scope: !343)
!345 = !DILocation(line: 265, column: 29, scope: !343)
!346 = !DILocation(line: 265, column: 36, scope: !343)
!347 = !DILocation(line: 265, column: 40, scope: !348)
!348 = !DILexicalBlockFile(scope: !343, file: !30, discriminator: 1)
!349 = !DILocation(line: 265, column: 47, scope: !348)
!350 = !DILocation(line: 265, column: 7, scope: !348)
!351 = !DILocation(line: 266, column: 4, scope: !343)
!352 = !DILocation(line: 268, column: 8, scope: !353)
!353 = distinct !DILexicalBlock(scope: !333, file: !30, line: 268, column: 7)
!354 = !DILocation(line: 268, column: 14, scope: !353)
!355 = !DILocation(line: 268, column: 24, scope: !353)
!356 = !DILocation(line: 268, column: 36, scope: !353)
!357 = !DILocation(line: 268, column: 35, scope: !353)
!358 = !DILocation(line: 268, column: 33, scope: !353)
!359 = !DILocation(line: 268, column: 30, scope: !353)
!360 = !DILocation(line: 268, column: 7, scope: !333)
!361 = !DILocation(line: 269, column: 4, scope: !353)
!362 = !DILocation(line: 271, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !333, file: !30, line: 271, column: 7)
!364 = !DILocation(line: 271, column: 13, scope: !363)
!365 = !DILocation(line: 271, column: 31, scope: !363)
!366 = !DILocation(line: 271, column: 28, scope: !363)
!367 = !DILocation(line: 271, column: 7, scope: !333)
!368 = !DILocation(line: 272, column: 4, scope: !363)
!369 = !DILocation(line: 274, column: 3, scope: !333)
!370 = !DILocation(line: 277, column: 8, scope: !125)
!371 = !DILocation(line: 277, column: 2, scope: !125)
!372 = !DILocation(line: 278, column: 8, scope: !125)
!373 = !DILocation(line: 278, column: 2, scope: !125)
!374 = !DILocation(line: 280, column: 6, scope: !375)
!375 = distinct !DILexicalBlock(scope: !125, file: !30, line: 280, column: 6)
!376 = !DILocation(line: 280, column: 12, scope: !375)
!377 = !DILocation(line: 280, column: 27, scope: !375)
!378 = !DILocation(line: 280, column: 6, scope: !125)
!379 = !DILocation(line: 281, column: 10, scope: !375)
!380 = !DILocation(line: 281, column: 3, scope: !375)
!381 = !DILocation(line: 282, column: 11, scope: !382)
!382 = distinct !DILexicalBlock(scope: !375, file: !30, line: 282, column: 11)
!383 = !DILocation(line: 282, column: 17, scope: !382)
!384 = !DILocation(line: 282, column: 32, scope: !382)
!385 = !DILocation(line: 282, column: 11, scope: !375)
!386 = !DILocation(line: 283, column: 10, scope: !382)
!387 = !DILocation(line: 283, column: 3, scope: !382)
!388 = !DILocation(line: 285, column: 16, scope: !125)
!389 = !DILocation(line: 285, column: 22, scope: !125)
!390 = !DILocation(line: 285, column: 37, scope: !125)
!391 = !DILocation(line: 285, column: 14, scope: !125)
!392 = !DILocation(line: 287, column: 12, scope: !393)
!393 = distinct !DILexicalBlock(scope: !125, file: !30, line: 287, column: 6)
!394 = !DILocation(line: 287, column: 6, scope: !393)
!395 = !DILocation(line: 287, column: 47, scope: !393)
!396 = !DILocation(line: 287, column: 6, scope: !125)
!397 = !DILocation(line: 290, column: 20, scope: !398)
!398 = distinct !DILexicalBlock(scope: !393, file: !30, line: 288, column: 2)
!399 = !DILocation(line: 290, column: 19, scope: !398)
!400 = !DILocation(line: 290, column: 10, scope: !401)
!401 = !DILexicalBlockFile(scope: !398, file: !30, discriminator: 1)
!402 = !DILocation(line: 289, column: 3, scope: !398)
!403 = !DILocation(line: 291, column: 3, scope: !398)
!404 = !DILocation(line: 292, column: 3, scope: !398)
!405 = !DILocation(line: 295, column: 6, scope: !406)
!406 = distinct !DILexicalBlock(scope: !125, file: !30, line: 295, column: 6)
!407 = !DILocation(line: 295, column: 12, scope: !406)
!408 = !DILocation(line: 295, column: 22, scope: !406)
!409 = !DILocation(line: 295, column: 6, scope: !125)
!410 = !DILocation(line: 297, column: 10, scope: !411)
!411 = distinct !DILexicalBlock(scope: !406, file: !30, line: 296, column: 2)
!412 = !DILocation(line: 298, column: 15, scope: !411)
!413 = !DILocation(line: 299, column: 2, scope: !411)
!414 = !DILocation(line: 302, column: 10, scope: !415)
!415 = distinct !DILexicalBlock(scope: !406, file: !30, line: 301, column: 2)
!416 = !DILocation(line: 305, column: 12, scope: !417)
!417 = distinct !DILexicalBlock(scope: !125, file: !30, line: 305, column: 6)
!418 = !DILocation(line: 305, column: 6, scope: !417)
!419 = !DILocation(line: 305, column: 47, scope: !417)
!420 = !DILocation(line: 305, column: 6, scope: !125)
!421 = !DILocation(line: 308, column: 20, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !30, line: 306, column: 2)
!423 = !DILocation(line: 308, column: 19, scope: !422)
!424 = !DILocation(line: 308, column: 10, scope: !425)
!425 = !DILexicalBlockFile(scope: !422, file: !30, discriminator: 1)
!426 = !DILocation(line: 307, column: 3, scope: !422)
!427 = !DILocation(line: 309, column: 3, scope: !422)
!428 = !DILocation(line: 310, column: 3, scope: !422)
!429 = !DILocation(line: 313, column: 29, scope: !125)
!430 = !DILocation(line: 314, column: 13, scope: !125)
!431 = !DILocation(line: 314, column: 19, scope: !125)
!432 = !DILocation(line: 314, column: 11, scope: !125)
!433 = !DILocation(line: 315, column: 12, scope: !434)
!434 = distinct !DILexicalBlock(scope: !125, file: !30, line: 315, column: 6)
!435 = !DILocation(line: 315, column: 6, scope: !434)
!436 = !DILocation(line: 315, column: 48, scope: !434)
!437 = !DILocation(line: 315, column: 6, scope: !125)
!438 = !DILocalVariable(name: "rates", scope: !439, file: !30, line: 317, type: !440)
!439 = distinct !DILexicalBlock(scope: !434, file: !30, line: 316, column: 2)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 96, align: 32, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 3)
!443 = !DILocation(line: 317, column: 10, scope: !439)
!444 = !DILocalVariable(name: "prates", scope: !439, file: !30, line: 318, type: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!446 = !DILocation(line: 318, column: 11, scope: !439)
!447 = !DILocation(line: 318, column: 20, scope: !439)
!448 = !DILocation(line: 320, column: 3, scope: !439)
!449 = !DILocation(line: 320, column: 11, scope: !450)
!450 = !DILexicalBlockFile(scope: !439, file: !30, discriminator: 1)
!451 = !DILocation(line: 320, column: 10, scope: !450)
!452 = !DILocation(line: 320, column: 18, scope: !450)
!453 = !DILocation(line: 320, column: 3, scope: !450)
!454 = !DILocation(line: 322, column: 9, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !30, line: 322, column: 8)
!456 = distinct !DILexicalBlock(scope: !439, file: !30, line: 321, column: 3)
!457 = !DILocation(line: 322, column: 15, scope: !455)
!458 = !DILocation(line: 322, column: 34, scope: !455)
!459 = !DILocation(line: 322, column: 33, scope: !455)
!460 = !DILocation(line: 322, column: 30, scope: !455)
!461 = !DILocation(line: 323, column: 8, scope: !455)
!462 = !DILocation(line: 323, column: 18, scope: !463)
!463 = !DILexicalBlockFile(scope: !455, file: !30, discriminator: 1)
!464 = !DILocation(line: 323, column: 43, scope: !463)
!465 = !DILocation(line: 323, column: 12, scope: !463)
!466 = !DILocation(line: 323, column: 51, scope: !463)
!467 = !DILocation(line: 322, column: 8, scope: !468)
!468 = !DILexicalBlockFile(scope: !456, file: !30, discriminator: 1)
!469 = !DILocation(line: 325, column: 32, scope: !470)
!470 = distinct !DILexicalBlock(scope: !455, file: !30, line: 324, column: 4)
!471 = !DILocation(line: 326, column: 17, scope: !470)
!472 = !DILocation(line: 326, column: 16, scope: !470)
!473 = !DILocation(line: 326, column: 14, scope: !470)
!474 = !DILocation(line: 328, column: 10, scope: !475)
!475 = distinct !DILexicalBlock(scope: !470, file: !30, line: 327, column: 9)
!476 = !DILocation(line: 328, column: 20, scope: !475)
!477 = !DILocation(line: 328, column: 26, scope: !475)
!478 = !DILocation(line: 328, column: 42, scope: !475)
!479 = !DILocation(line: 328, column: 48, scope: !475)
!480 = !DILocation(line: 327, column: 9, scope: !475)
!481 = !DILocation(line: 328, column: 59, scope: !475)
!482 = !DILocation(line: 327, column: 9, scope: !470)
!483 = !DILocation(line: 330, column: 6, scope: !484)
!484 = distinct !DILexicalBlock(scope: !475, file: !30, line: 329, column: 5)
!485 = !DILocation(line: 332, column: 6, scope: !484)
!486 = !DILocation(line: 333, column: 6, scope: !484)
!487 = !DILocation(line: 336, column: 5, scope: !470)
!488 = !DILocation(line: 338, column: 10, scope: !456)
!489 = !DILocation(line: 320, column: 3, scope: !490)
!490 = !DILexicalBlockFile(scope: !439, file: !30, discriminator: 2)
!491 = distinct !{!491, !448}
!492 = !DILocation(line: 341, column: 8, scope: !493)
!493 = distinct !DILexicalBlock(scope: !439, file: !30, line: 341, column: 7)
!494 = !DILocation(line: 341, column: 7, scope: !493)
!495 = !DILocation(line: 341, column: 15, scope: !493)
!496 = !DILocation(line: 341, column: 7, scope: !439)
!497 = !DILocation(line: 344, column: 21, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !30, line: 342, column: 3)
!499 = !DILocation(line: 344, column: 20, scope: !498)
!500 = !DILocation(line: 344, column: 11, scope: !501)
!501 = !DILexicalBlockFile(scope: !498, file: !30, discriminator: 1)
!502 = !DILocation(line: 343, column: 4, scope: !498)
!503 = !DILocation(line: 345, column: 4, scope: !498)
!504 = !DILocation(line: 346, column: 4, scope: !498)
!505 = !DILocation(line: 348, column: 2, scope: !439)
!506 = !DILocation(line: 351, column: 12, scope: !125)
!507 = !DILocation(line: 352, column: 8, scope: !125)
!508 = !DILocation(line: 352, column: 2, scope: !125)
!509 = !DILocation(line: 354, column: 7, scope: !510)
!510 = distinct !DILexicalBlock(scope: !125, file: !30, line: 354, column: 6)
!511 = !DILocation(line: 354, column: 6, scope: !125)
!512 = !DILocalVariable(name: "info", scope: !513, file: !30, line: 356, type: !514)
!513 = distinct !DILexicalBlock(scope: !510, file: !30, line: 355, column: 2)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "audio_buf_info", file: !515, line: 575, baseType: !516)
!515 = !DIFile(filename: "/usr/include/linux/soundcard.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "audio_buf_info", file: !515, line: 568, size: 128, align: 32, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "fragments", scope: !516, file: !515, line: 569, baseType: !27, size: 32, align: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "fragstotal", scope: !516, file: !515, line: 570, baseType: !27, size: 32, align: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "fragsize", scope: !516, file: !515, line: 571, baseType: !27, size: 32, align: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !516, file: !515, line: 573, baseType: !27, size: 32, align: 32, offset: 96)
!522 = !DILocation(line: 356, column: 18, scope: !513)
!523 = !DILocation(line: 358, column: 3, scope: !513)
!524 = !DILocation(line: 359, column: 13, scope: !525)
!525 = distinct !DILexicalBlock(scope: !513, file: !30, line: 359, column: 7)
!526 = !DILocation(line: 359, column: 7, scope: !525)
!527 = !DILocation(line: 359, column: 49, scope: !525)
!528 = !DILocation(line: 359, column: 7, scope: !513)
!529 = !DILocation(line: 362, column: 21, scope: !530)
!530 = distinct !DILexicalBlock(scope: !525, file: !30, line: 360, column: 3)
!531 = !DILocation(line: 362, column: 20, scope: !530)
!532 = !DILocation(line: 362, column: 11, scope: !533)
!533 = !DILexicalBlockFile(scope: !530, file: !30, discriminator: 1)
!534 = !DILocation(line: 361, column: 4, scope: !530)
!535 = !DILocation(line: 363, column: 4, scope: !530)
!536 = !DILocation(line: 364, column: 4, scope: !530)
!537 = !DILocation(line: 367, column: 12, scope: !538)
!538 = distinct !DILexicalBlock(scope: !513, file: !30, line: 367, column: 7)
!539 = !DILocation(line: 367, column: 22, scope: !538)
!540 = !DILocation(line: 367, column: 27, scope: !538)
!541 = !DILocation(line: 367, column: 35, scope: !542)
!542 = !DILexicalBlockFile(scope: !538, file: !30, discriminator: 1)
!543 = !DILocation(line: 367, column: 46, scope: !542)
!544 = !DILocation(line: 367, column: 51, scope: !542)
!545 = !DILocation(line: 367, column: 59, scope: !546)
!546 = !DILexicalBlockFile(scope: !538, file: !30, discriminator: 2)
!547 = !DILocation(line: 367, column: 68, scope: !546)
!548 = !DILocation(line: 367, column: 7, scope: !546)
!549 = !DILocation(line: 371, column: 16, scope: !550)
!550 = distinct !DILexicalBlock(scope: !538, file: !30, line: 368, column: 3)
!551 = !DILocation(line: 371, column: 32, scope: !550)
!552 = !DILocation(line: 371, column: 49, scope: !550)
!553 = !DILocation(line: 369, column: 4, scope: !550)
!554 = !DILocation(line: 372, column: 18, scope: !550)
!555 = !DILocation(line: 373, column: 3, scope: !550)
!556 = !DILocation(line: 374, column: 2, scope: !513)
!557 = !DILocation(line: 376, column: 17, scope: !125)
!558 = !DILocation(line: 378, column: 2, scope: !125)
!559 = !DILocation(line: 379, column: 1, scope: !125)
!560 = distinct !DISubprogram(name: "oss_volume", scope: !30, file: !30, line: 382, type: !101, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!561 = !DILocalVariable(name: "left", arg: 1, scope: !560, file: !30, line: 382, type: !82)
!562 = !DILocation(line: 382, column: 19, scope: !560)
!563 = !DILocalVariable(name: "right", arg: 2, scope: !560, file: !30, line: 382, type: !82)
!564 = !DILocation(line: 382, column: 32, scope: !560)
!565 = !DILocalVariable(name: "volume", scope: !560, file: !30, line: 384, type: !86)
!566 = !DILocation(line: 384, column: 9, scope: !560)
!567 = !DILocation(line: 386, column: 11, scope: !560)
!568 = !DILocation(line: 386, column: 16, scope: !560)
!569 = !DILocation(line: 386, column: 9, scope: !560)
!570 = !DILocation(line: 387, column: 12, scope: !560)
!571 = !DILocation(line: 387, column: 18, scope: !560)
!572 = !DILocation(line: 387, column: 34, scope: !560)
!573 = !DILocation(line: 387, column: 9, scope: !560)
!574 = !DILocation(line: 389, column: 12, scope: !575)
!575 = distinct !DILexicalBlock(scope: !560, file: !30, line: 389, column: 6)
!576 = !DILocation(line: 389, column: 6, scope: !575)
!577 = !DILocation(line: 389, column: 58, scope: !575)
!578 = !DILocation(line: 389, column: 6, scope: !560)
!579 = !DILocation(line: 391, column: 3, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !30, line: 390, column: 2)
!581 = !DILocation(line: 393, column: 30, scope: !580)
!582 = !DILocation(line: 394, column: 26, scope: !580)
!583 = !DILocation(line: 394, column: 32, scope: !580)
!584 = !DILocation(line: 394, column: 3, scope: !580)
!585 = !DILocation(line: 395, column: 3, scope: !580)
!586 = !DILocation(line: 397, column: 1, scope: !560)
!587 = distinct !DISubprogram(name: "oss_open_in", scope: !30, file: !30, line: 221, type: !65, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!588 = !DILocation(line: 223, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !587, file: !30, line: 223, column: 6)
!590 = !DILocation(line: 223, column: 6, scope: !587)
!591 = !DILocation(line: 224, column: 3, scope: !589)
!592 = !DILocation(line: 226, column: 2, scope: !587)
!593 = !DILocation(line: 227, column: 1, scope: !587)
!594 = distinct !DISubprogram(name: "oss_close_in", scope: !30, file: !30, line: 230, type: !71, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!595 = !DILocation(line: 232, column: 2, scope: !594)
!596 = !DILocation(line: 233, column: 6, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !30, line: 233, column: 6)
!598 = !DILocation(line: 233, column: 15, scope: !597)
!599 = !DILocation(line: 233, column: 6, scope: !594)
!600 = !DILocation(line: 235, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !30, line: 235, column: 7)
!602 = distinct !DILexicalBlock(scope: !597, file: !30, line: 234, column: 2)
!603 = !DILocation(line: 235, column: 7, scope: !602)
!604 = !DILocation(line: 236, column: 4, scope: !601)
!605 = !DILocation(line: 237, column: 2, scope: !602)
!606 = !DILocation(line: 238, column: 1, scope: !594)
!607 = distinct !DISubprogram(name: "oss_play", scope: !30, file: !30, line: 400, type: !71, isLocal: true, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!608 = !DILocalVariable(name: "packet", scope: !607, file: !30, line: 402, type: !609)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64, align: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "audio_packet", file: !35, line: 20, size: 896, align: 64, elements: !611)
!611 = !{!612, !626, !627, !628, !629}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !610, file: !35, line: 22, baseType: !613, size: 576, align: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !614, line: 25, size: 576, align: 64, elements: !615)
!614 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!615 = !{!616, !618, !619, !620, !621, !622, !623, !624, !625}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !613, file: !614, line: 27, baseType: !617, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !613, file: !614, line: 28, baseType: !617, size: 64, align: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !613, file: !614, line: 29, baseType: !617, size: 64, align: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !613, file: !614, line: 30, baseType: !87, size: 32, align: 32, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !613, file: !614, line: 33, baseType: !617, size: 64, align: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !613, file: !614, line: 34, baseType: !617, size: 64, align: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !613, file: !614, line: 35, baseType: !617, size: 64, align: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !613, file: !614, line: 36, baseType: !617, size: 64, align: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !613, file: !614, line: 37, baseType: !617, size: 64, align: 64, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !610, file: !35, line: 23, baseType: !82, size: 16, align: 16, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !610, file: !35, line: 24, baseType: !94, size: 8, align: 8, offset: 592)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "arrive_tv", scope: !610, file: !35, line: 26, baseType: !51, size: 128, align: 64, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "completion_tv", scope: !610, file: !35, line: 27, baseType: !51, size: 128, align: 64, offset: 768)
!630 = !DILocation(line: 402, column: 23, scope: !607)
!631 = !DILocalVariable(name: "len", scope: !607, file: !30, line: 403, type: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !633, line: 109, baseType: !634)
!633 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !56, line: 172, baseType: !26)
!635 = !DILocation(line: 403, column: 10, scope: !607)
!636 = !DILocalVariable(name: "out", scope: !607, file: !30, line: 404, type: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !614, line: 40, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64, align: 64)
!639 = !DILocation(line: 404, column: 9, scope: !607)
!640 = !DILocation(line: 406, column: 1, scope: !607)
!641 = !DILocation(line: 406, column: 8, scope: !607)
!642 = !DILocation(line: 406, column: 2, scope: !607)
!643 = !DILocation(line: 406, column: 2, scope: !644)
!644 = !DILexicalBlockFile(scope: !607, file: !30, discriminator: 1)
!645 = !DILocation(line: 406, column: 18, scope: !646)
!646 = !DILexicalBlockFile(scope: !607, file: !30, discriminator: 2)
!647 = !DILocation(line: 406, column: 2, scope: !648)
!648 = !DILexicalBlockFile(scope: !607, file: !30, discriminator: 3)
!649 = !DILocation(line: 409, column: 6, scope: !650)
!650 = distinct !DILexicalBlock(scope: !607, file: !30, line: 409, column: 6)
!651 = !DILocation(line: 409, column: 6, scope: !607)
!652 = !DILocation(line: 410, column: 3, scope: !650)
!653 = !DILocation(line: 412, column: 11, scope: !607)
!654 = !DILocation(line: 412, column: 9, scope: !607)
!655 = !DILocation(line: 413, column: 9, scope: !607)
!656 = !DILocation(line: 413, column: 17, scope: !607)
!657 = !DILocation(line: 413, column: 6, scope: !607)
!658 = !DILocation(line: 415, column: 8, scope: !607)
!659 = !DILocation(line: 415, column: 13, scope: !607)
!660 = !DILocation(line: 415, column: 19, scope: !607)
!661 = !DILocation(line: 415, column: 24, scope: !607)
!662 = !DILocation(line: 415, column: 17, scope: !607)
!663 = !DILocation(line: 415, column: 6, scope: !607)
!664 = !DILocation(line: 417, column: 14, scope: !607)
!665 = !DILocation(line: 417, column: 22, scope: !607)
!666 = !DILocation(line: 417, column: 27, scope: !607)
!667 = !DILocation(line: 417, column: 31, scope: !607)
!668 = !DILocation(line: 417, column: 35, scope: !607)
!669 = !DILocation(line: 417, column: 30, scope: !607)
!670 = !DILocation(line: 417, column: 30, scope: !644)
!671 = !DILocation(line: 417, column: 50, scope: !646)
!672 = !DILocation(line: 417, column: 30, scope: !646)
!673 = !DILocation(line: 417, column: 30, scope: !648)
!674 = !DILocation(line: 417, column: 8, scope: !648)
!675 = !DILocation(line: 417, column: 6, scope: !648)
!676 = !DILocation(line: 418, column: 6, scope: !677)
!677 = distinct !DILexicalBlock(scope: !607, file: !30, line: 418, column: 6)
!678 = !DILocation(line: 418, column: 10, scope: !677)
!679 = !DILocation(line: 418, column: 6, scope: !607)
!680 = !DILocation(line: 420, column: 8, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !30, line: 420, column: 6)
!682 = distinct !DILexicalBlock(scope: !677, file: !30, line: 419, column: 2)
!683 = !DILocation(line: 420, column: 7, scope: !681)
!684 = !DILocation(line: 420, column: 12, scope: !681)
!685 = !DILocation(line: 420, column: 6, scope: !682)
!686 = !DILocation(line: 422, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !30, line: 422, column: 8)
!688 = distinct !DILexicalBlock(scope: !681, file: !30, line: 421, column: 3)
!689 = !DILocation(line: 422, column: 8, scope: !688)
!690 = !DILocation(line: 423, column: 66, scope: !687)
!691 = !DILocation(line: 423, column: 65, scope: !687)
!692 = !DILocation(line: 423, column: 56, scope: !693)
!693 = !DILexicalBlockFile(scope: !687, file: !30, discriminator: 1)
!694 = !DILocation(line: 423, column: 5, scope: !695)
!695 = !DILexicalBlockFile(scope: !687, file: !30, discriminator: 2)
!696 = !DILocation(line: 423, column: 5, scope: !687)
!697 = !DILocation(line: 424, column: 15, scope: !688)
!698 = !DILocation(line: 425, column: 4, scope: !688)
!699 = !DILocation(line: 426, column: 3, scope: !688)
!700 = !DILocation(line: 427, column: 3, scope: !682)
!701 = !DILocation(line: 430, column: 13, scope: !607)
!702 = !DILocation(line: 432, column: 12, scope: !607)
!703 = !DILocation(line: 432, column: 2, scope: !607)
!704 = !DILocation(line: 432, column: 7, scope: !607)
!705 = !DILocation(line: 432, column: 9, scope: !607)
!706 = !DILocation(line: 434, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !607, file: !30, line: 434, column: 6)
!708 = !DILocation(line: 434, column: 11, scope: !707)
!709 = !DILocation(line: 434, column: 16, scope: !707)
!710 = !DILocation(line: 434, column: 21, scope: !707)
!711 = !DILocation(line: 434, column: 13, scope: !707)
!712 = !DILocation(line: 434, column: 6, scope: !607)
!713 = !DILocalVariable(name: "delay_bytes", scope: !714, file: !30, line: 436, type: !27)
!714 = distinct !DILexicalBlock(scope: !707, file: !30, line: 435, column: 2)
!715 = !DILocation(line: 436, column: 7, scope: !714)
!716 = !DILocalVariable(name: "delay_us", scope: !714, file: !30, line: 437, type: !717)
!717 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!718 = !DILocation(line: 437, column: 17, scope: !714)
!719 = !DILocalVariable(name: "info", scope: !714, file: !30, line: 438, type: !514)
!720 = !DILocation(line: 438, column: 18, scope: !714)
!721 = !DILocation(line: 440, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !714, file: !30, line: 440, column: 7)
!723 = !DILocation(line: 440, column: 7, scope: !714)
!724 = !DILocation(line: 444, column: 18, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !30, line: 441, column: 3)
!726 = !DILocation(line: 444, column: 23, scope: !725)
!727 = !DILocation(line: 444, column: 16, scope: !725)
!728 = !DILocation(line: 445, column: 3, scope: !725)
!729 = !DILocation(line: 449, column: 16, scope: !730)
!730 = distinct !DILexicalBlock(scope: !722, file: !30, line: 447, column: 3)
!731 = !DILocation(line: 450, column: 14, scope: !732)
!732 = distinct !DILexicalBlock(scope: !730, file: !30, line: 450, column: 8)
!733 = !DILocation(line: 450, column: 8, scope: !732)
!734 = !DILocation(line: 450, column: 57, scope: !732)
!735 = !DILocation(line: 450, column: 8, scope: !730)
!736 = !DILocation(line: 451, column: 17, scope: !732)
!737 = !DILocation(line: 451, column: 5, scope: !732)
!738 = !DILocation(line: 456, column: 8, scope: !739)
!739 = distinct !DILexicalBlock(scope: !730, file: !30, line: 456, column: 8)
!740 = !DILocation(line: 456, column: 20, scope: !739)
!741 = !DILocation(line: 456, column: 8, scope: !730)
!742 = !DILocation(line: 458, column: 15, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !30, line: 458, column: 9)
!744 = distinct !DILexicalBlock(scope: !739, file: !30, line: 457, column: 4)
!745 = !DILocation(line: 458, column: 9, scope: !743)
!746 = !DILocation(line: 458, column: 51, scope: !743)
!747 = !DILocation(line: 458, column: 9, scope: !744)
!748 = !DILocation(line: 459, column: 25, scope: !743)
!749 = !DILocation(line: 459, column: 43, scope: !743)
!750 = !DILocation(line: 459, column: 36, scope: !743)
!751 = !DILocation(line: 459, column: 59, scope: !743)
!752 = !DILocation(line: 459, column: 52, scope: !743)
!753 = !DILocation(line: 459, column: 18, scope: !743)
!754 = !DILocation(line: 459, column: 6, scope: !743)
!755 = !DILocation(line: 461, column: 20, scope: !743)
!756 = !DILocation(line: 461, column: 25, scope: !743)
!757 = !DILocation(line: 461, column: 18, scope: !743)
!758 = !DILocation(line: 462, column: 4, scope: !744)
!759 = !DILocation(line: 465, column: 14, scope: !714)
!760 = !DILocation(line: 465, column: 40, scope: !714)
!761 = !DILocation(line: 465, column: 54, scope: !714)
!762 = !DILocation(line: 465, column: 52, scope: !714)
!763 = !DILocation(line: 465, column: 37, scope: !714)
!764 = !DILocation(line: 465, column: 26, scope: !714)
!765 = !DILocation(line: 465, column: 12, scope: !714)
!766 = !DILocation(line: 466, column: 21, scope: !714)
!767 = !DILocation(line: 466, column: 3, scope: !714)
!768 = !DILocation(line: 467, column: 2, scope: !714)
!769 = !DILocation(line: 468, column: 1, scope: !607)
!770 = distinct !DISubprogram(name: "oss_record", scope: !30, file: !30, line: 471, type: !71, isLocal: true, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!771 = !DILocalVariable(name: "buffer", scope: !770, file: !30, line: 473, type: !772)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 262144, align: 8, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 32768)
!775 = !DILocation(line: 473, column: 7, scope: !770)
!776 = !DILocalVariable(name: "len", scope: !770, file: !30, line: 474, type: !27)
!777 = !DILocation(line: 474, column: 6, scope: !770)
!778 = !DILocation(line: 476, column: 1, scope: !770)
!779 = !DILocation(line: 476, column: 8, scope: !770)
!780 = !DILocation(line: 476, column: 2, scope: !770)
!781 = !DILocation(line: 476, column: 2, scope: !782)
!782 = !DILexicalBlockFile(scope: !770, file: !30, discriminator: 1)
!783 = !DILocation(line: 476, column: 18, scope: !784)
!784 = !DILexicalBlockFile(scope: !770, file: !30, discriminator: 2)
!785 = !DILocation(line: 476, column: 2, scope: !786)
!786 = !DILexicalBlockFile(scope: !770, file: !30, discriminator: 3)
!787 = !DILocation(line: 478, column: 13, scope: !770)
!788 = !DILocation(line: 478, column: 21, scope: !770)
!789 = !DILocation(line: 478, column: 8, scope: !770)
!790 = !DILocation(line: 478, column: 6, scope: !770)
!791 = !DILocation(line: 479, column: 6, scope: !792)
!792 = distinct !DILexicalBlock(scope: !770, file: !30, line: 479, column: 6)
!793 = !DILocation(line: 479, column: 10, scope: !792)
!794 = !DILocation(line: 479, column: 6, scope: !770)
!795 = !DILocation(line: 481, column: 8, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !30, line: 481, column: 6)
!797 = distinct !DILexicalBlock(scope: !792, file: !30, line: 480, column: 2)
!798 = !DILocation(line: 481, column: 7, scope: !796)
!799 = !DILocation(line: 481, column: 12, scope: !796)
!800 = !DILocation(line: 481, column: 6, scope: !797)
!801 = !DILocation(line: 483, column: 9, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !30, line: 483, column: 8)
!803 = distinct !DILexicalBlock(scope: !796, file: !30, line: 482, column: 3)
!804 = !DILocation(line: 483, column: 8, scope: !803)
!805 = !DILocation(line: 484, column: 66, scope: !802)
!806 = !DILocation(line: 484, column: 65, scope: !802)
!807 = !DILocation(line: 484, column: 56, scope: !808)
!808 = !DILexicalBlockFile(scope: !802, file: !30, discriminator: 1)
!809 = !DILocation(line: 484, column: 5, scope: !810)
!810 = !DILexicalBlockFile(scope: !802, file: !30, discriminator: 2)
!811 = !DILocation(line: 484, column: 5, scope: !802)
!812 = !DILocation(line: 485, column: 15, scope: !803)
!813 = !DILocation(line: 486, column: 4, scope: !803)
!814 = !DILocation(line: 487, column: 3, scope: !803)
!815 = !DILocation(line: 488, column: 3, scope: !797)
!816 = !DILocation(line: 491, column: 13, scope: !770)
!817 = !DILocation(line: 493, column: 16, scope: !770)
!818 = !DILocation(line: 493, column: 24, scope: !770)
!819 = !DILocation(line: 493, column: 2, scope: !770)
!820 = !DILocation(line: 494, column: 1, scope: !770)
!821 = !DILocation(line: 494, column: 1, scope: !782)
!822 = distinct !DISubprogram(name: "oss_open", scope: !30, file: !30, line: 141, type: !823, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!823 = !DISubroutineType(types: !824)
!824 = !{!67, !27}
!825 = !DILocalVariable(name: "wanted", arg: 1, scope: !822, file: !30, line: 141, type: !27)
!826 = !DILocation(line: 141, column: 14, scope: !822)
!827 = !DILocation(line: 143, column: 6, scope: !828)
!828 = distinct !DILexicalBlock(scope: !822, file: !30, line: 143, column: 6)
!829 = !DILocation(line: 143, column: 13, scope: !828)
!830 = !DILocation(line: 143, column: 6, scope: !822)
!831 = !DILocation(line: 145, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !30, line: 145, column: 7)
!833 = distinct !DILexicalBlock(scope: !828, file: !30, line: 144, column: 2)
!834 = !DILocation(line: 145, column: 17, scope: !832)
!835 = !DILocation(line: 145, column: 14, scope: !832)
!836 = !DILocation(line: 145, column: 7, scope: !833)
!837 = !DILocation(line: 148, column: 4, scope: !838)
!838 = distinct !DILexicalBlock(scope: !832, file: !30, line: 146, column: 3)
!839 = !DILocalVariable(name: "caps", scope: !840, file: !30, line: 155, type: !27)
!840 = distinct !DILexicalBlock(scope: !832, file: !30, line: 151, column: 3)
!841 = !DILocation(line: 155, column: 8, scope: !840)
!842 = !DILocation(line: 156, column: 10, scope: !840)
!843 = !DILocation(line: 156, column: 4, scope: !840)
!844 = !DILocation(line: 157, column: 15, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !30, line: 157, column: 8)
!846 = !DILocation(line: 157, column: 9, scope: !845)
!847 = !DILocation(line: 157, column: 49, scope: !845)
!848 = !DILocation(line: 158, column: 8, scope: !845)
!849 = !DILocation(line: 158, column: 13, scope: !850)
!850 = !DILexicalBlockFile(scope: !845, file: !30, discriminator: 1)
!851 = !DILocation(line: 158, column: 18, scope: !850)
!852 = !DILocation(line: 157, column: 8, scope: !853)
!853 = !DILexicalBlockFile(scope: !840, file: !30, discriminator: 1)
!854 = !DILocation(line: 160, column: 5, scope: !855)
!855 = distinct !DILexicalBlock(scope: !845, file: !30, line: 159, column: 4)
!856 = !DILocation(line: 162, column: 5, scope: !855)
!857 = !DILocation(line: 164, column: 10, scope: !840)
!858 = !DILocation(line: 164, column: 4, scope: !840)
!859 = !DILocation(line: 165, column: 13, scope: !840)
!860 = !DILocation(line: 167, column: 2, scope: !833)
!861 = !DILocation(line: 170, column: 14, scope: !862)
!862 = distinct !DILexicalBlock(scope: !828, file: !30, line: 169, column: 2)
!863 = !DILocation(line: 170, column: 12, scope: !862)
!864 = !DILocation(line: 173, column: 17, scope: !822)
!865 = !DILocation(line: 174, column: 13, scope: !822)
!866 = !DILocation(line: 176, column: 16, scope: !822)
!867 = !DILocation(line: 176, column: 25, scope: !822)
!868 = !DILocation(line: 176, column: 34, scope: !822)
!869 = !DILocation(line: 176, column: 11, scope: !822)
!870 = !DILocation(line: 176, column: 9, scope: !822)
!871 = !DILocation(line: 178, column: 6, scope: !872)
!872 = distinct !DILexicalBlock(scope: !822, file: !30, line: 178, column: 6)
!873 = !DILocation(line: 178, column: 13, scope: !872)
!874 = !DILocation(line: 178, column: 6, scope: !822)
!875 = !DILocation(line: 180, column: 67, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !30, line: 179, column: 2)
!877 = !DILocation(line: 180, column: 66, scope: !876)
!878 = !DILocation(line: 180, column: 57, scope: !879)
!879 = !DILexicalBlockFile(scope: !876, file: !30, discriminator: 1)
!880 = !DILocation(line: 180, column: 3, scope: !881)
!881 = !DILexicalBlockFile(scope: !876, file: !30, discriminator: 2)
!882 = !DILocation(line: 181, column: 3, scope: !876)
!883 = !DILocation(line: 184, column: 14, scope: !822)
!884 = !DILocation(line: 184, column: 12, scope: !822)
!885 = !DILocation(line: 186, column: 2, scope: !822)
!886 = !DILocation(line: 187, column: 1, scope: !822)
!887 = distinct !DISubprogram(name: "detect_esddsp", scope: !30, file: !30, line: 96, type: !65, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!888 = !DILocalVariable(name: "s", scope: !887, file: !30, line: 98, type: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !890, line: 46, size: 1152, align: 64, elements: !891)
!890 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!891 = !{!892, !894, !896, !898, !900, !902, !904, !905, !906, !908, !910, !912, !919, !920, !921}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !889, file: !890, line: 48, baseType: !893, size: 64, align: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !56, line: 124, baseType: !717)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !889, file: !890, line: 53, baseType: !895, size: 64, align: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !56, line: 127, baseType: !717)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !889, file: !890, line: 61, baseType: !897, size: 64, align: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !56, line: 130, baseType: !717)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !889, file: !890, line: 62, baseType: !899, size: 32, align: 32, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !56, line: 129, baseType: !87)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !889, file: !890, line: 64, baseType: !901, size: 32, align: 32, offset: 224)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !56, line: 125, baseType: !87)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !889, file: !890, line: 65, baseType: !903, size: 32, align: 32, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !56, line: 126, baseType: !87)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !889, file: !890, line: 67, baseType: !27, size: 32, align: 32, offset: 288)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !889, file: !890, line: 69, baseType: !893, size: 64, align: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !889, file: !890, line: 74, baseType: !907, size: 64, align: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !56, line: 131, baseType: !26)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !889, file: !890, line: 78, baseType: !909, size: 64, align: 64, offset: 448)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !56, line: 153, baseType: !26)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !889, file: !890, line: 80, baseType: !911, size: 64, align: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !56, line: 158, baseType: !26)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !889, file: !890, line: 91, baseType: !913, size: 128, align: 64, offset: 576)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !914, line: 120, size: 128, align: 64, elements: !915)
!914 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !913, file: !914, line: 122, baseType: !55, size: 64, align: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !913, file: !914, line: 123, baseType: !918, size: 64, align: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !56, line: 175, baseType: !26)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !889, file: !890, line: 92, baseType: !913, size: 128, align: 64, offset: 704)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !889, file: !890, line: 93, baseType: !913, size: 128, align: 64, offset: 832)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !889, file: !890, line: 106, baseType: !922, size: 192, align: 64, offset: 960)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 192, align: 64, elements: !441)
!923 = !DILocation(line: 98, column: 14, scope: !887)
!924 = !DILocalVariable(name: "preload", scope: !887, file: !30, line: 99, type: !31)
!925 = !DILocation(line: 99, column: 8, scope: !887)
!926 = !DILocation(line: 101, column: 12, scope: !927)
!927 = distinct !DILexicalBlock(scope: !887, file: !30, line: 101, column: 6)
!928 = !DILocation(line: 101, column: 6, scope: !927)
!929 = !DILocation(line: 101, column: 24, scope: !927)
!930 = !DILocation(line: 101, column: 6, scope: !887)
!931 = !DILocation(line: 102, column: 3, scope: !927)
!932 = !DILocation(line: 104, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !887, file: !30, line: 104, column: 5)
!934 = !DILocation(line: 104, column: 8, scope: !933)
!935 = !DILocation(line: 104, column: 19, scope: !933)
!936 = !DILocation(line: 104, column: 24, scope: !933)
!937 = !DILocation(line: 104, column: 29, scope: !938)
!938 = !DILexicalBlockFile(scope: !933, file: !30, discriminator: 1)
!939 = !DILocation(line: 104, column: 30, scope: !938)
!940 = !DILocation(line: 104, column: 41, scope: !938)
!941 = !DILocation(line: 104, column: 5, scope: !938)
!942 = !DILocation(line: 105, column: 3, scope: !933)
!943 = !DILocation(line: 107, column: 12, scope: !887)
!944 = !DILocation(line: 107, column: 10, scope: !887)
!945 = !DILocation(line: 108, column: 6, scope: !946)
!946 = distinct !DILexicalBlock(scope: !887, file: !30, line: 108, column: 6)
!947 = !DILocation(line: 108, column: 14, scope: !946)
!948 = !DILocation(line: 108, column: 6, scope: !887)
!949 = !DILocation(line: 109, column: 3, scope: !946)
!950 = !DILocation(line: 111, column: 13, scope: !951)
!951 = distinct !DILexicalBlock(scope: !887, file: !30, line: 111, column: 6)
!952 = !DILocation(line: 111, column: 6, scope: !951)
!953 = !DILocation(line: 111, column: 32, scope: !951)
!954 = !DILocation(line: 111, column: 6, scope: !887)
!955 = !DILocation(line: 112, column: 3, scope: !951)
!956 = !DILocation(line: 114, column: 2, scope: !887)
!957 = !DILocation(line: 115, column: 1, scope: !887)
!958 = distinct !DISubprogram(name: "oss_close", scope: !30, file: !30, line: 190, type: !71, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!959 = !DILocation(line: 192, column: 8, scope: !958)
!960 = !DILocation(line: 192, column: 2, scope: !958)
!961 = !DILocation(line: 193, column: 9, scope: !958)
!962 = !DILocation(line: 194, column: 1, scope: !958)
!963 = distinct !DISubprogram(name: "oss_restore_format", scope: !30, file: !30, line: 119, type: !71, isLocal: true, isDefinition: true, scopeLine: 120, isOptimized: false, unit: !0, variables: !126)
!964 = !DILocalVariable(name: "wfx", scope: !963, file: !30, line: 121, type: !78)
!965 = !DILocation(line: 121, column: 18, scope: !963)
!966 = !DILocation(line: 122, column: 2, scope: !963)
!967 = !DILocation(line: 123, column: 10, scope: !963)
!968 = !DILocation(line: 123, column: 2, scope: !963)
!969 = !DILocation(line: 126, column: 8, scope: !970)
!970 = distinct !DILexicalBlock(scope: !963, file: !30, line: 124, column: 2)
!971 = !DILocation(line: 126, column: 23, scope: !970)
!972 = !DILocation(line: 127, column: 4, scope: !970)
!973 = !DILocation(line: 129, column: 8, scope: !970)
!974 = !DILocation(line: 129, column: 23, scope: !970)
!975 = !DILocation(line: 130, column: 4, scope: !970)
!976 = !DILocation(line: 132, column: 8, scope: !970)
!977 = !DILocation(line: 132, column: 23, scope: !970)
!978 = !DILocation(line: 133, column: 2, scope: !970)
!979 = !DILocation(line: 134, column: 18, scope: !963)
!980 = !DILocation(line: 134, column: 6, scope: !963)
!981 = !DILocation(line: 134, column: 16, scope: !963)
!982 = !DILocation(line: 135, column: 23, scope: !963)
!983 = !DILocation(line: 135, column: 6, scope: !963)
!984 = !DILocation(line: 135, column: 21, scope: !963)
!985 = !DILocation(line: 136, column: 2, scope: !963)
!986 = !DILocation(line: 137, column: 1, scope: !963)
