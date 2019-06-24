; ModuleID = './[inter]serial.o.i'
source_filename = "./[inter]serial.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rdpdr_device_info = type { i32, i32, [8 x i8], i8*, i8* }
%struct._DEVICE_FNS = type { i32 (i32, i32, i32, i32, i32, i8*, i32*)*, i32 (i32)*, i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i32, %struct.stream*, %struct.stream*)* }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rdpdr_serial_device_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [6 x i8], %struct.termios*, %struct.termios*, i32, i32, i32, i32, i32 }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }

@g_rdpdr_device = external global [0 x %struct.rdpdr_device_info], align 8
@.str = private unnamed_addr constant [32 x i8] c"serial_enum_devices(), %s to %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"serial_get_event(), %d bytes\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"serial_get_event(), SERIAL_EV_RLSD is set\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"serial_get_event(), SERIAL_EV_RXFLAG is set, %d bytes\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"serial_get_event(), SERIAL_EV_RXCHAR is set, %d bytes\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"serial_get_event(), SERIAL_EV_TXEMPT is set\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"serial_get_event(), SERIAL_EV_DSR=%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"serial_get_event(), SERIAL_EV_CTS=%s\00", align 1
@serial_fns = global %struct._DEVICE_FNS { i32 (i32, i32, i32, i32, i32, i8*, i32*)* @serial_create, i32 (i32)* @serial_close, i32 (i32, i8*, i32, i32, i32*)* @serial_read, i32 (i32, i8*, i32, i32, i32*)* @serial_write, i32 (i32, i32, %struct.stream*, %struct.stream*)* @serial_device_control }, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"serial_create(), open '%s' failed: %s\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"serial_create(), access denied to %s\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [103 x i8] c"serial_create(), %s to %s, speed %u baud, stop bits %u, parity %u, word length %u bits, dtr %u, rts %u\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"serial_create(), failed to set non blocking: %s\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"serial_read(), inqueue: %d expected %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"serial_read(), %d bytes read\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"serial_write(), %d bytes written\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"serial_device_control(), set baud rate %d\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"serial_device_control(), get baud rate %d\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"serial_device_control(), set queue size, in=%d out=%d\00", align 1
@.str.20 = private unnamed_addr constant [71 x i8] c"serial_device_control(), set line control, stop=%d, parity=%d, word=%d\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"serial_device_control(), get line control\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"serial_device_control(), immediate char\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"serial_device_control(), config size\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"serial_device_control(), get chars\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"serial_device_control(), set chars\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"serial_device_control(), get handflow\00", align 1
@.str.27 = private unnamed_addr constant [86 x i8] c"serial_device_control(), set handflow, control=%x, xonoff=%x, onlimit=%x, offlimit=%x\00", align 1
@.str.28 = private unnamed_addr constant [78 x i8] c"serial_device_control(), set timeouts, timeout=%d, multiplier=%d, constant=%d\00", align 1
@.str.29 = private unnamed_addr constant [78 x i8] c"serial_device_control(), get timeouts, timeout=%d, multiplier=%d, constant=%d\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"serial_device_control(), get wait mask, mask=0x%x\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"serial_device_control(), set wait mask, mask=0x%x\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"serial_device_control(), set dtr\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"serial_device_control(), clear dtr\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"serial_device_control(), set rts\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"serial_device_control(), clear rts\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"serial_device_control(), get modem status, state=0x%x\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"serial_device_control(), get comm status, %d bytes in input queue\00", align 1
@.str.38 = private unnamed_addr constant [67 x i8] c"serial_device_control(), get comm status, %d bytes in output queue\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"serial_device_control(), purge, mask=0x%x\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"serial_device_control(), wait on mask, mask=0x%x\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"serial_device_control(), wait end, event=0x%x\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"serial_device_control(), set break on\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"serial_device_control(), reset device\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"serial_device_control(), set break off\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"serial_device_control(), set xoff\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"serial_device_control(), set xon\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"serial_device_control(), unhandled ioctl %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @serial_enum_devices(i32*, i8*) #0 !dbg !130 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rdpdr_serial_device_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !134, metadata !135), !dbg !136
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !137, metadata !135), !dbg !138
  call void @llvm.dbg.declare(metadata %struct.rdpdr_serial_device_info** %5, metadata !139, metadata !135), !dbg !140
  call void @llvm.dbg.declare(metadata i8** %6, metadata !141, metadata !135), !dbg !142
  %9 = load i8*, i8** %4, align 8, !dbg !143
  store i8* %9, i8** %6, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i8** %7, metadata !144, metadata !135), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %8, metadata !146, metadata !135), !dbg !147
  store i32 0, i32* %8, align 4, !dbg !147
  %10 = load i8*, i8** %4, align 8, !dbg !148
  %11 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !148
  store i8* %11, i8** %4, align 8, !dbg !148
  br label %12, !dbg !149

; <label>:12:                                     ; preds = %22, %2
  %13 = load i8*, i8** %4, align 8, !dbg !150
  %14 = call i8* @next_arg(i8* %13, i8 signext 44), !dbg !152
  store i8* %14, i8** %6, align 8, !dbg !153
  %15 = icmp ne i8* %14, null, !dbg !153
  br i1 %15, label %16, label %20, !dbg !154

; <label>:16:                                     ; preds = %12
  %17 = load i32*, i32** %3, align 8, !dbg !155
  %18 = load i32, i32* %17, align 4, !dbg !157
  %19 = icmp ult i32 %18, 16, !dbg !158
  br label %20

; <label>:20:                                     ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %105, !dbg !159

; <label>:22:                                     ; preds = %20
  %23 = call i8* @xmalloc(i32 120), !dbg !161
  %24 = bitcast i8* %23 to %struct.rdpdr_serial_device_info*, !dbg !163
  store %struct.rdpdr_serial_device_info* %24, %struct.rdpdr_serial_device_info** %5, align 8, !dbg !164
  %25 = call i8* @xmalloc(i32 60), !dbg !165
  %26 = bitcast i8* %25 to %struct.termios*, !dbg !166
  %27 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %5, align 8, !dbg !167
  %28 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %27, i32 0, i32 20, !dbg !168
  store %struct.termios* %26, %struct.termios** %28, align 8, !dbg !169
  %29 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %5, align 8, !dbg !170
  %30 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %29, i32 0, i32 20, !dbg !171
  %31 = load %struct.termios*, %struct.termios** %30, align 8, !dbg !171
  %32 = bitcast %struct.termios* %31 to i8*, !dbg !172
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 60, i32 4, i1 false), !dbg !172
  %33 = call i8* @xmalloc(i32 60), !dbg !173
  %34 = bitcast i8* %33 to %struct.termios*, !dbg !174
  %35 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %5, align 8, !dbg !175
  %36 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %35, i32 0, i32 21, !dbg !176
  store %struct.termios* %34, %struct.termios** %36, align 8, !dbg !177
  %37 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %5, align 8, !dbg !178
  %38 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %37, i32 0, i32 21, !dbg !179
  %39 = load %struct.termios*, %struct.termios** %38, align 8, !dbg !179
  %40 = bitcast %struct.termios* %39 to i8*, !dbg !180
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 60, i32 4, i1 false), !dbg !180
  %41 = load i8*, i8** %4, align 8, !dbg !181
  %42 = call i8* @next_arg(i8* %41, i8 signext 61), !dbg !182
  store i8* %42, i8** %7, align 8, !dbg !183
  %43 = load i32*, i32** %3, align 8, !dbg !184
  %44 = load i32, i32* %43, align 4, !dbg !185
  %45 = zext i32 %44 to i64, !dbg !186
  %46 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %45, !dbg !186
  %47 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %46, i32 0, i32 2, !dbg !187
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i32 0, i32 0, !dbg !186
  %49 = load i8*, i8** %4, align 8, !dbg !188
  %50 = call i8* @strcpy(i8* %48, i8* %49) #7, !dbg !189
  %51 = load i32*, i32** %3, align 8, !dbg !190
  %52 = load i32, i32* %51, align 4, !dbg !191
  %53 = zext i32 %52 to i64, !dbg !192
  %54 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %53, !dbg !192
  %55 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %54, i32 0, i32 2, !dbg !193
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %55, i32 0, i32 0, !dbg !192
  call void @toupper_str(i8* %56), !dbg !194
  %57 = load i8*, i8** %7, align 8, !dbg !195
  %58 = call i64 @strlen(i8* %57) #8, !dbg !196
  %59 = add i64 %58, 1, !dbg !197
  %60 = trunc i64 %59 to i32, !dbg !196
  %61 = call i8* @xmalloc(i32 %60), !dbg !198
  %62 = load i32*, i32** %3, align 8, !dbg !200
  %63 = load i32, i32* %62, align 4, !dbg !201
  %64 = zext i32 %63 to i64, !dbg !202
  %65 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %64, !dbg !202
  %66 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %65, i32 0, i32 3, !dbg !203
  store i8* %61, i8** %66, align 8, !dbg !204
  %67 = load i32*, i32** %3, align 8, !dbg !205
  %68 = load i32, i32* %67, align 4, !dbg !206
  %69 = zext i32 %68 to i64, !dbg !207
  %70 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %69, !dbg !207
  %71 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %70, i32 0, i32 3, !dbg !208
  %72 = load i8*, i8** %71, align 8, !dbg !208
  %73 = load i8*, i8** %7, align 8, !dbg !209
  %74 = call i8* @strcpy(i8* %72, i8* %73) #7, !dbg !210
  %75 = load i32*, i32** %3, align 8, !dbg !211
  %76 = load i32, i32* %75, align 4, !dbg !212
  %77 = zext i32 %76 to i64, !dbg !213
  %78 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %77, !dbg !213
  %79 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %78, i32 0, i32 2, !dbg !214
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %79, i32 0, i32 0, !dbg !213
  %81 = load i32*, i32** %3, align 8, !dbg !215
  %82 = load i32, i32* %81, align 4, !dbg !216
  %83 = zext i32 %82 to i64, !dbg !217
  %84 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %83, !dbg !217
  %85 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %84, i32 0, i32 3, !dbg !218
  %86 = load i8*, i8** %85, align 8, !dbg !218
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8* %80, i8* %86), !dbg !219
  %87 = load i32*, i32** %3, align 8, !dbg !220
  %88 = load i32, i32* %87, align 4, !dbg !221
  %89 = zext i32 %88 to i64, !dbg !222
  %90 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %89, !dbg !222
  %91 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %90, i32 0, i32 0, !dbg !223
  store i32 1, i32* %91, align 8, !dbg !224
  %92 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %5, align 8, !dbg !225
  %93 = bitcast %struct.rdpdr_serial_device_info* %92 to i8*, !dbg !226
  %94 = load i32*, i32** %3, align 8, !dbg !227
  %95 = load i32, i32* %94, align 4, !dbg !228
  %96 = zext i32 %95 to i64, !dbg !229
  %97 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %96, !dbg !229
  %98 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %97, i32 0, i32 4, !dbg !230
  store i8* %93, i8** %98, align 8, !dbg !231
  %99 = load i32, i32* %8, align 4, !dbg !232
  %100 = add nsw i32 %99, 1, !dbg !232
  store i32 %100, i32* %8, align 4, !dbg !232
  %101 = load i32*, i32** %3, align 8, !dbg !233
  %102 = load i32, i32* %101, align 4, !dbg !234
  %103 = add i32 %102, 1, !dbg !234
  store i32 %103, i32* %101, align 4, !dbg !234
  %104 = load i8*, i8** %6, align 8, !dbg !235
  store i8* %104, i8** %4, align 8, !dbg !236
  br label %12, !dbg !237, !llvm.loop !239

; <label>:105:                                    ; preds = %20
  %106 = load i32, i32* %8, align 4, !dbg !240
  ret i32 %106, !dbg !241
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @next_arg(i8*, i8 signext) #2

declare i8* @xmalloc(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare void @toupper_str(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @serial_get_event(i32, i32*) #0 !dbg !242 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rdpdr_serial_device_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !246, metadata !135), !dbg !247
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !248, metadata !135), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %6, metadata !250, metadata !135), !dbg !251
  call void @llvm.dbg.declare(metadata %struct.rdpdr_serial_device_info** %7, metadata !252, metadata !135), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %8, metadata !254, metadata !135), !dbg !255
  call void @llvm.dbg.declare(metadata i32* %9, metadata !256, metadata !135), !dbg !257
  store i32 0, i32* %9, align 4, !dbg !257
  %10 = load i32*, i32** %5, align 8, !dbg !258
  store i32 0, i32* %10, align 4, !dbg !259
  %11 = load i32, i32* %4, align 4, !dbg !260
  %12 = call i32 @get_device_index(i32 %11), !dbg !261
  store i32 %12, i32* %6, align 4, !dbg !262
  %13 = load i32, i32* %6, align 4, !dbg !263
  %14 = icmp slt i32 %13, 0, !dbg !265
  br i1 %14, label %15, label %16, !dbg !266

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !267
  br label %162, !dbg !267

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %6, align 4, !dbg !268
  %18 = sext i32 %17 to i64, !dbg !269
  %19 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %18, !dbg !269
  %20 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %19, i32 0, i32 4, !dbg !270
  %21 = load i8*, i8** %20, align 8, !dbg !270
  %22 = bitcast i8* %21 to %struct.rdpdr_serial_device_info*, !dbg !271
  store %struct.rdpdr_serial_device_info* %22, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !272
  %23 = load i32, i32* %4, align 4, !dbg !273
  %24 = call i32 (i32, i64, ...) @ioctl(i32 %23, i64 21531, i32* %8) #7, !dbg !274
  %25 = load i32, i32* %8, align 4, !dbg !275
  %26 = icmp sgt i32 %25, 0, !dbg !277
  br i1 %26, label %27, label %74, !dbg !278

; <label>:27:                                     ; preds = %16
  %28 = load i32, i32* %8, align 4, !dbg !279
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 %28), !dbg !281
  %29 = load i32, i32* %8, align 4, !dbg !282
  %30 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !284
  %31 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %30, i32 0, i32 25, !dbg !285
  %32 = load i32, i32* %31, align 4, !dbg !285
  %33 = icmp sgt i32 %29, %32, !dbg !286
  br i1 %33, label %34, label %48, !dbg !287

; <label>:34:                                     ; preds = %27
  %35 = load i32, i32* %8, align 4, !dbg !288
  %36 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !290
  %37 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %36, i32 0, i32 25, !dbg !291
  store i32 %35, i32* %37, align 4, !dbg !292
  %38 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !293
  %39 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %38, i32 0, i32 9, !dbg !295
  %40 = load i32, i32* %39, align 4, !dbg !295
  %41 = and i32 %40, 32, !dbg !296
  %42 = icmp ne i32 %41, 0, !dbg !296
  br i1 %42, label %43, label %47, !dbg !297

; <label>:43:                                     ; preds = %34
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0)), !dbg !298
  %44 = load i32*, i32** %5, align 8, !dbg !300
  %45 = load i32, i32* %44, align 4, !dbg !301
  %46 = or i32 %45, 32, !dbg !301
  store i32 %46, i32* %44, align 4, !dbg !301
  store i32 1, i32* %9, align 4, !dbg !302
  br label %47, !dbg !303

; <label>:47:                                     ; preds = %43, %34
  br label %48, !dbg !304

; <label>:48:                                     ; preds = %47, %27
  %49 = load i32, i32* %8, align 4, !dbg !305
  %50 = icmp sgt i32 %49, 1, !dbg !307
  br i1 %50, label %51, label %62, !dbg !308

; <label>:51:                                     ; preds = %48
  %52 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !309
  %53 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %52, i32 0, i32 9, !dbg !311
  %54 = load i32, i32* %53, align 4, !dbg !311
  %55 = and i32 %54, 2, !dbg !312
  %56 = icmp ne i32 %55, 0, !dbg !312
  br i1 %56, label %57, label %62, !dbg !313

; <label>:57:                                     ; preds = %51
  %58 = load i32, i32* %8, align 4, !dbg !314
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i32 %58), !dbg !316
  %59 = load i32*, i32** %5, align 8, !dbg !317
  %60 = load i32, i32* %59, align 4, !dbg !318
  %61 = or i32 %60, 2, !dbg !318
  store i32 %61, i32* %59, align 4, !dbg !318
  store i32 1, i32* %9, align 4, !dbg !319
  br label %62, !dbg !320

; <label>:62:                                     ; preds = %57, %51, %48
  %63 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !321
  %64 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %63, i32 0, i32 9, !dbg !323
  %65 = load i32, i32* %64, align 4, !dbg !323
  %66 = and i32 %65, 1, !dbg !324
  %67 = icmp ne i32 %66, 0, !dbg !324
  br i1 %67, label %68, label %73, !dbg !325

; <label>:68:                                     ; preds = %62
  %69 = load i32, i32* %8, align 4, !dbg !326
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i32 %69), !dbg !328
  %70 = load i32*, i32** %5, align 8, !dbg !329
  %71 = load i32, i32* %70, align 4, !dbg !330
  %72 = or i32 %71, 1, !dbg !330
  store i32 %72, i32* %70, align 4, !dbg !330
  store i32 1, i32* %9, align 4, !dbg !331
  br label %73, !dbg !332

; <label>:73:                                     ; preds = %68, %62
  br label %77, !dbg !333

; <label>:74:                                     ; preds = %16
  %75 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !334
  %76 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %75, i32 0, i32 25, !dbg !336
  store i32 0, i32* %76, align 4, !dbg !337
  br label %77

; <label>:77:                                     ; preds = %74, %73
  %78 = load i32, i32* %4, align 4, !dbg !338
  %79 = call i32 (i32, i64, ...) @ioctl(i32 %78, i64 21521, i32* %8) #7, !dbg !339
  %80 = load i32, i32* %8, align 4, !dbg !340
  %81 = icmp eq i32 %80, 0, !dbg !342
  br i1 %81, label %82, label %97, !dbg !343

; <label>:82:                                     ; preds = %77
  %83 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !344
  %84 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %83, i32 0, i32 22, !dbg !346
  %85 = load i32, i32* %84, align 8, !dbg !346
  %86 = icmp sgt i32 %85, 0, !dbg !347
  br i1 %86, label %87, label %97, !dbg !348

; <label>:87:                                     ; preds = %82
  %88 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !349
  %89 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %88, i32 0, i32 9, !dbg !351
  %90 = load i32, i32* %89, align 4, !dbg !351
  %91 = and i32 %90, 4, !dbg !352
  %92 = icmp ne i32 %91, 0, !dbg !352
  br i1 %92, label %93, label %97, !dbg !353

; <label>:93:                                     ; preds = %87
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0)), !dbg !355
  %94 = load i32*, i32** %5, align 8, !dbg !357
  %95 = load i32, i32* %94, align 4, !dbg !358
  %96 = or i32 %95, 4, !dbg !358
  store i32 %96, i32* %94, align 4, !dbg !358
  store i32 1, i32* %9, align 4, !dbg !359
  br label %97, !dbg !360

; <label>:97:                                     ; preds = %93, %87, %82, %77
  %98 = load i32, i32* %8, align 4, !dbg !361
  %99 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !362
  %100 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %99, i32 0, i32 22, !dbg !363
  store i32 %98, i32* %100, align 8, !dbg !364
  %101 = load i32, i32* %4, align 4, !dbg !365
  %102 = call i32 (i32, i64, ...) @ioctl(i32 %101, i64 21525, i32* %8) #7, !dbg !366
  %103 = load i32, i32* %8, align 4, !dbg !367
  %104 = and i32 %103, 256, !dbg !369
  %105 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !370
  %106 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %105, i32 0, i32 24, !dbg !371
  %107 = load i32, i32* %106, align 8, !dbg !371
  %108 = icmp ne i32 %104, %107, !dbg !372
  br i1 %108, label %109, label %128, !dbg !373

; <label>:109:                                    ; preds = %97
  %110 = load i32, i32* %8, align 4, !dbg !374
  %111 = and i32 %110, 256, !dbg !376
  %112 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !377
  %113 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %112, i32 0, i32 24, !dbg !378
  store i32 %111, i32* %113, align 8, !dbg !379
  %114 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !380
  %115 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %114, i32 0, i32 9, !dbg !382
  %116 = load i32, i32* %115, align 4, !dbg !382
  %117 = and i32 %116, 16, !dbg !383
  %118 = icmp ne i32 %117, 0, !dbg !383
  br i1 %118, label %119, label %127, !dbg !384

; <label>:119:                                    ; preds = %109
  %120 = load i32, i32* %8, align 4, !dbg !385
  %121 = and i32 %120, 256, !dbg !387
  %122 = icmp ne i32 %121, 0, !dbg !388
  %123 = select i1 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), !dbg !388
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i8* %123), !dbg !389
  %124 = load i32*, i32** %5, align 8, !dbg !390
  %125 = load i32, i32* %124, align 4, !dbg !391
  %126 = or i32 %125, 16, !dbg !391
  store i32 %126, i32* %124, align 4, !dbg !391
  store i32 1, i32* %9, align 4, !dbg !392
  br label %127, !dbg !393

; <label>:127:                                    ; preds = %119, %109
  br label %128, !dbg !394

; <label>:128:                                    ; preds = %127, %97
  %129 = load i32, i32* %8, align 4, !dbg !395
  %130 = and i32 %129, 32, !dbg !397
  %131 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !398
  %132 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %131, i32 0, i32 23, !dbg !399
  %133 = load i32, i32* %132, align 4, !dbg !399
  %134 = icmp ne i32 %130, %133, !dbg !400
  br i1 %134, label %135, label %154, !dbg !401

; <label>:135:                                    ; preds = %128
  %136 = load i32, i32* %8, align 4, !dbg !402
  %137 = and i32 %136, 32, !dbg !404
  %138 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !405
  %139 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %138, i32 0, i32 23, !dbg !406
  store i32 %137, i32* %139, align 4, !dbg !407
  %140 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !408
  %141 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %140, i32 0, i32 9, !dbg !410
  %142 = load i32, i32* %141, align 4, !dbg !410
  %143 = and i32 %142, 8, !dbg !411
  %144 = icmp ne i32 %143, 0, !dbg !411
  br i1 %144, label %145, label %153, !dbg !412

; <label>:145:                                    ; preds = %135
  %146 = load i32, i32* %8, align 4, !dbg !413
  %147 = and i32 %146, 32, !dbg !415
  %148 = icmp ne i32 %147, 0, !dbg !416
  %149 = select i1 %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), !dbg !416
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* %149), !dbg !417
  %150 = load i32*, i32** %5, align 8, !dbg !418
  %151 = load i32, i32* %150, align 4, !dbg !419
  %152 = or i32 %151, 8, !dbg !419
  store i32 %152, i32* %150, align 4, !dbg !419
  store i32 1, i32* %9, align 4, !dbg !420
  br label %153, !dbg !421

; <label>:153:                                    ; preds = %145, %135
  br label %154, !dbg !422

; <label>:154:                                    ; preds = %153, %128
  %155 = load i32, i32* %9, align 4, !dbg !423
  %156 = icmp ne i32 %155, 0, !dbg !423
  br i1 %156, label %157, label %160, !dbg !425

; <label>:157:                                    ; preds = %154
  %158 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %7, align 8, !dbg !426
  %159 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %158, i32 0, i32 26, !dbg !427
  store i32 0, i32* %159, align 8, !dbg !428
  br label %160, !dbg !426

; <label>:160:                                    ; preds = %157, %154
  %161 = load i32, i32* %9, align 4, !dbg !429
  store i32 %161, i32* %3, align 4, !dbg !430
  br label %162, !dbg !430

; <label>:162:                                    ; preds = %160, %15
  %163 = load i32, i32* %3, align 4, !dbg !431
  ret i32 %163, !dbg !431
}

declare i32 @get_device_index(i32) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

; Function Attrs: nounwind uwtable
define i32 @serial_get_timeout(i32, i32, i32*, i32*) #0 !dbg !432 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rdpdr_serial_device_info*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !435, metadata !135), !dbg !436
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !437, metadata !135), !dbg !438
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !439, metadata !135), !dbg !440
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !441, metadata !135), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %10, metadata !443, metadata !135), !dbg !444
  call void @llvm.dbg.declare(metadata %struct.rdpdr_serial_device_info** %11, metadata !445, metadata !135), !dbg !446
  %12 = load i32, i32* %6, align 4, !dbg !447
  %13 = call i32 @get_device_index(i32 %12), !dbg !448
  store i32 %13, i32* %10, align 4, !dbg !449
  %14 = load i32, i32* %10, align 4, !dbg !450
  %15 = icmp slt i32 %14, 0, !dbg !452
  br i1 %15, label %16, label %17, !dbg !453

; <label>:16:                                     ; preds = %4
  store i32 1, i32* %5, align 4, !dbg !454
  br label %46, !dbg !454

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %10, align 4, !dbg !455
  %19 = sext i32 %18 to i64, !dbg !457
  %20 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %19, !dbg !457
  %21 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %20, i32 0, i32 0, !dbg !458
  %22 = load i32, i32* %21, align 8, !dbg !458
  %23 = icmp ne i32 %22, 1, !dbg !459
  br i1 %23, label %24, label %25, !dbg !460

; <label>:24:                                     ; preds = %17
  store i32 0, i32* %5, align 4, !dbg !461
  br label %46, !dbg !461

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %10, align 4, !dbg !463
  %27 = sext i32 %26 to i64, !dbg !464
  %28 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %27, !dbg !464
  %29 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %28, i32 0, i32 4, !dbg !465
  %30 = load i8*, i8** %29, align 8, !dbg !465
  %31 = bitcast i8* %30 to %struct.rdpdr_serial_device_info*, !dbg !466
  store %struct.rdpdr_serial_device_info* %31, %struct.rdpdr_serial_device_info** %11, align 8, !dbg !467
  %32 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %11, align 8, !dbg !468
  %33 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %32, i32 0, i32 11, !dbg !469
  %34 = load i32, i32* %33, align 4, !dbg !469
  %35 = load i32, i32* %7, align 4, !dbg !470
  %36 = mul i32 %34, %35, !dbg !471
  %37 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %11, align 8, !dbg !472
  %38 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %37, i32 0, i32 12, !dbg !473
  %39 = load i32, i32* %38, align 8, !dbg !473
  %40 = add i32 %36, %39, !dbg !474
  %41 = load i32*, i32** %8, align 8, !dbg !475
  store i32 %40, i32* %41, align 4, !dbg !476
  %42 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %11, align 8, !dbg !477
  %43 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %42, i32 0, i32 10, !dbg !478
  %44 = load i32, i32* %43, align 8, !dbg !478
  %45 = load i32*, i32** %9, align 8, !dbg !479
  store i32 %44, i32* %45, align 4, !dbg !480
  store i32 1, i32* %5, align 4, !dbg !481
  br label %46, !dbg !481

; <label>:46:                                     ; preds = %25, %24, %16
  %47 = load i32, i32* %5, align 4, !dbg !482
  ret i32 %47, !dbg !482
}

; Function Attrs: nounwind uwtable
define internal i32 @serial_create(i32, i32, i32, i32, i32, i8*, i32*) #0 !dbg !483 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.rdpdr_serial_device_info*, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !484, metadata !135), !dbg !485
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !486, metadata !135), !dbg !487
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !488, metadata !135), !dbg !489
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !490, metadata !135), !dbg !491
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !492, metadata !135), !dbg !493
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !494, metadata !135), !dbg !495
  store i32* %6, i32** %15, align 8
  call void @llvm.dbg.declare(metadata i32** %15, metadata !496, metadata !135), !dbg !497
  %18 = load i32, i32* %10, align 4, !dbg !498
  %19 = load i32, i32* %11, align 4, !dbg !499
  %20 = load i32, i32* %12, align 4, !dbg !500
  %21 = load i32, i32* %13, align 4, !dbg !501
  %22 = load i8*, i8** %14, align 8, !dbg !502
  call void @llvm.dbg.declare(metadata i32* %16, metadata !503, metadata !135), !dbg !504
  call void @llvm.dbg.declare(metadata %struct.rdpdr_serial_device_info** %17, metadata !505, metadata !135), !dbg !506
  %23 = load i32, i32* %9, align 4, !dbg !507
  %24 = zext i32 %23 to i64, !dbg !508
  %25 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %24, !dbg !508
  %26 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %25, i32 0, i32 4, !dbg !509
  %27 = load i8*, i8** %26, align 8, !dbg !509
  %28 = bitcast i8* %27 to %struct.rdpdr_serial_device_info*, !dbg !510
  store %struct.rdpdr_serial_device_info* %28, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !511
  %29 = load i32, i32* %9, align 4, !dbg !512
  %30 = zext i32 %29 to i64, !dbg !513
  %31 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %30, !dbg !513
  %32 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %31, i32 0, i32 3, !dbg !514
  %33 = load i8*, i8** %32, align 8, !dbg !514
  %34 = call i32 (i8*, i32, ...) @open(i8* %33, i32 2306), !dbg !515
  store i32 %34, i32* %16, align 4, !dbg !516
  %35 = load i32, i32* %16, align 4, !dbg !517
  %36 = icmp eq i32 %35, -1, !dbg !519
  br i1 %36, label %37, label %46, !dbg !520

; <label>:37:                                     ; preds = %7
  %38 = load i32, i32* %9, align 4, !dbg !521
  %39 = zext i32 %38 to i64, !dbg !523
  %40 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %39, !dbg !523
  %41 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %40, i32 0, i32 3, !dbg !524
  %42 = load i8*, i8** %41, align 8, !dbg !524
  %43 = call i32* @__errno_location() #1, !dbg !525
  %44 = load i32, i32* %43, align 4, !dbg !526
  %45 = call i8* @strerror(i32 %44) #7, !dbg !527
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i8* %42, i8* %45), !dbg !529
  store i32 -1073741790, i32* %8, align 4, !dbg !530
  br label %154, !dbg !530

; <label>:46:                                     ; preds = %7
  %47 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !531
  %48 = load i32, i32* %16, align 4, !dbg !533
  %49 = call i32 @get_termios(%struct.rdpdr_serial_device_info* %47, i32 %48), !dbg !534
  %50 = icmp ne i32 %49, 0, !dbg !534
  br i1 %50, label %59, label %51, !dbg !535

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %9, align 4, !dbg !536
  %53 = zext i32 %52 to i64, !dbg !538
  %54 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %53, !dbg !538
  %55 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %54, i32 0, i32 2, !dbg !539
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %55, i32 0, i32 0, !dbg !538
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), i8* %56), !dbg !540
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !541
  %58 = call i32 @fflush(%struct._IO_FILE* %57), !dbg !542
  store i32 -1073741790, i32* %8, align 4, !dbg !543
  br label %154, !dbg !543

; <label>:59:                                     ; preds = %46
  %60 = load i32, i32* %16, align 4, !dbg !544
  %61 = load i32, i32* %9, align 4, !dbg !545
  %62 = zext i32 %61 to i64, !dbg !546
  %63 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %62, !dbg !546
  %64 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %63, i32 0, i32 1, !dbg !547
  store i32 %60, i32* %64, align 4, !dbg !548
  %65 = load i32, i32* %9, align 4, !dbg !549
  %66 = zext i32 %65 to i64, !dbg !550
  %67 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %66, !dbg !550
  %68 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %67, i32 0, i32 2, !dbg !551
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %68, i32 0, i32 0, !dbg !550
  %70 = load i32, i32* %9, align 4, !dbg !552
  %71 = zext i32 %70 to i64, !dbg !553
  %72 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %71, !dbg !553
  %73 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %72, i32 0, i32 3, !dbg !554
  %74 = load i8*, i8** %73, align 8, !dbg !554
  %75 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !555
  %76 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %75, i32 0, i32 6, !dbg !556
  %77 = load i32, i32* %76, align 8, !dbg !556
  %78 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !557
  %79 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %78, i32 0, i32 16, !dbg !558
  %80 = load i8, i8* %79, align 8, !dbg !558
  %81 = zext i8 %80 to i32, !dbg !557
  %82 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !559
  %83 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %82, i32 0, i32 17, !dbg !560
  %84 = load i8, i8* %83, align 1, !dbg !560
  %85 = zext i8 %84 to i32, !dbg !559
  %86 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !561
  %87 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %86, i32 0, i32 18, !dbg !562
  %88 = load i8, i8* %87, align 2, !dbg !562
  %89 = zext i8 %88 to i32, !dbg !561
  %90 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !563
  %91 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %90, i32 0, i32 0, !dbg !564
  %92 = load i32, i32* %91, align 8, !dbg !564
  %93 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !565
  %94 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %93, i32 0, i32 1, !dbg !566
  %95 = load i32, i32* %94, align 4, !dbg !566
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.12, i32 0, i32 0), i8* %69, i8* %74, i32 %77, i32 %81, i32 %85, i32 %89, i32 %92, i32 %95), !dbg !567
  %96 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !568
  %97 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %96, i32 0, i32 20, !dbg !569
  %98 = load %struct.termios*, %struct.termios** %97, align 8, !dbg !569
  %99 = getelementptr inbounds %struct.termios, %struct.termios* %98, i32 0, i32 0, !dbg !570
  %100 = load i32, i32* %99, align 4, !dbg !571
  %101 = and i32 %100, -1516, !dbg !571
  store i32 %101, i32* %99, align 4, !dbg !571
  %102 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !572
  %103 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %102, i32 0, i32 20, !dbg !573
  %104 = load %struct.termios*, %struct.termios** %103, align 8, !dbg !573
  %105 = getelementptr inbounds %struct.termios, %struct.termios* %104, i32 0, i32 1, !dbg !574
  %106 = load i32, i32* %105, align 4, !dbg !575
  %107 = and i32 %106, -2, !dbg !575
  store i32 %107, i32* %105, align 4, !dbg !575
  %108 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !576
  %109 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %108, i32 0, i32 20, !dbg !577
  %110 = load %struct.termios*, %struct.termios** %109, align 8, !dbg !577
  %111 = getelementptr inbounds %struct.termios, %struct.termios* %110, i32 0, i32 3, !dbg !578
  %112 = load i32, i32* %111, align 4, !dbg !579
  %113 = and i32 %112, -32844, !dbg !579
  store i32 %113, i32* %111, align 4, !dbg !579
  %114 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !580
  %115 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %114, i32 0, i32 20, !dbg !581
  %116 = load %struct.termios*, %struct.termios** %115, align 8, !dbg !581
  %117 = getelementptr inbounds %struct.termios, %struct.termios* %116, i32 0, i32 2, !dbg !582
  %118 = load i32, i32* %117, align 4, !dbg !583
  %119 = and i32 %118, -305, !dbg !583
  store i32 %119, i32* %117, align 4, !dbg !583
  %120 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !584
  %121 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %120, i32 0, i32 20, !dbg !585
  %122 = load %struct.termios*, %struct.termios** %121, align 8, !dbg !585
  %123 = getelementptr inbounds %struct.termios, %struct.termios* %122, i32 0, i32 2, !dbg !586
  %124 = load i32, i32* %123, align 4, !dbg !587
  %125 = or i32 %124, 48, !dbg !587
  store i32 %125, i32* %123, align 4, !dbg !587
  %126 = load i32, i32* %16, align 4, !dbg !588
  %127 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !589
  %128 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %127, i32 0, i32 20, !dbg !590
  %129 = load %struct.termios*, %struct.termios** %128, align 8, !dbg !590
  %130 = call i32 @tcsetattr(i32 %126, i32 0, %struct.termios* %129) #7, !dbg !591
  %131 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !592
  %132 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %131, i32 0, i32 22, !dbg !593
  store i32 0, i32* %132, align 8, !dbg !594
  %133 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !595
  %134 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %133, i32 0, i32 23, !dbg !596
  store i32 0, i32* %134, align 4, !dbg !597
  %135 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !598
  %136 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %135, i32 0, i32 24, !dbg !599
  store i32 0, i32* %136, align 8, !dbg !600
  %137 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !601
  %138 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %137, i32 0, i32 25, !dbg !602
  store i32 0, i32* %138, align 4, !dbg !603
  %139 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !604
  %140 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %139, i32 0, i32 26, !dbg !605
  store i32 0, i32* %140, align 8, !dbg !606
  %141 = load i32, i32* %16, align 4, !dbg !607
  %142 = load i32*, i32** %15, align 8, !dbg !608
  store i32 %141, i32* %142, align 4, !dbg !609
  %143 = load i32*, i32** %15, align 8, !dbg !610
  %144 = load i32, i32* %143, align 4, !dbg !612
  %145 = call i32 (i32, i32, ...) @fcntl(i32 %144, i32 4, i32 2048), !dbg !613
  %146 = icmp eq i32 %145, -1, !dbg !614
  br i1 %146, label %147, label %151, !dbg !615

; <label>:147:                                    ; preds = %59
  %148 = call i32* @__errno_location() #1, !dbg !616
  %149 = load i32, i32* %148, align 4, !dbg !617
  %150 = call i8* @strerror(i32 %149) #7, !dbg !618
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0), i8* %150), !dbg !620
  br label %151, !dbg !620

; <label>:151:                                    ; preds = %147, %59
  %152 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %17, align 8, !dbg !621
  %153 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %152, i32 0, i32 12, !dbg !622
  store i32 5, i32* %153, align 8, !dbg !623
  store i32 0, i32* %8, align 4, !dbg !624
  br label %154, !dbg !624

; <label>:154:                                    ; preds = %151, %51, %37
  %155 = load i32, i32* %8, align 4, !dbg !625
  ret i32 %155, !dbg !625
}

; Function Attrs: nounwind uwtable
define internal i32 @serial_close(i32) #0 !dbg !626 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !627, metadata !135), !dbg !628
  call void @llvm.dbg.declare(metadata i32* %3, metadata !629, metadata !135), !dbg !630
  %4 = load i32, i32* %2, align 4, !dbg !631
  %5 = call i32 @get_device_index(i32 %4), !dbg !632
  store i32 %5, i32* %3, align 4, !dbg !630
  %6 = load i32, i32* %3, align 4, !dbg !633
  %7 = icmp sge i32 %6, 0, !dbg !635
  br i1 %7, label %8, label %13, !dbg !636

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !637
  %10 = sext i32 %9 to i64, !dbg !638
  %11 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %10, !dbg !638
  %12 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %11, i32 0, i32 1, !dbg !639
  store i32 0, i32* %12, align 4, !dbg !640
  br label %13, !dbg !638

; <label>:13:                                     ; preds = %8, %1
  %14 = load i32, i32* %2, align 4, !dbg !641
  %15 = call i32 @rdpdr_abort_io(i32 %14, i32 0, i32 -1073741566), !dbg !642
  %16 = load i32, i32* %2, align 4, !dbg !643
  %17 = call i32 @close(i32 %16), !dbg !644
  ret i32 0, !dbg !645
}

; Function Attrs: nounwind uwtable
define internal i32 @serial_read(i32, i8*, i32, i32, i32*) #0 !dbg !646 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rdpdr_serial_device_info*, align 8
  %13 = alloca %struct.termios*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !647, metadata !135), !dbg !648
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !649, metadata !135), !dbg !650
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !651, metadata !135), !dbg !652
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !653, metadata !135), !dbg !654
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !655, metadata !135), !dbg !656
  %15 = load i32, i32* %9, align 4, !dbg !657
  call void @llvm.dbg.declare(metadata i64* %11, metadata !658, metadata !135), !dbg !660
  call void @llvm.dbg.declare(metadata %struct.rdpdr_serial_device_info** %12, metadata !661, metadata !135), !dbg !662
  call void @llvm.dbg.declare(metadata %struct.termios** %13, metadata !663, metadata !135), !dbg !664
  call void @llvm.dbg.declare(metadata i32* %14, metadata !665, metadata !135), !dbg !666
  store i64 90, i64* %11, align 8, !dbg !667
  %16 = load i32, i32* %6, align 4, !dbg !668
  %17 = call %struct.rdpdr_serial_device_info* @get_serial_info(i32 %16), !dbg !669
  store %struct.rdpdr_serial_device_info* %17, %struct.rdpdr_serial_device_info** %12, align 8, !dbg !670
  %18 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %12, align 8, !dbg !671
  %19 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %18, i32 0, i32 20, !dbg !672
  %20 = load %struct.termios*, %struct.termios** %19, align 8, !dbg !672
  store %struct.termios* %20, %struct.termios** %13, align 8, !dbg !673
  %21 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %12, align 8, !dbg !674
  %22 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %21, i32 0, i32 11, !dbg !676
  %23 = load i32, i32* %22, align 4, !dbg !676
  %24 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %12, align 8, !dbg !677
  %25 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %24, i32 0, i32 12, !dbg !678
  %26 = load i32, i32* %25, align 8, !dbg !678
  %27 = or i32 %23, %26, !dbg !679
  %28 = icmp ne i32 %27, 0, !dbg !679
  br i1 %28, label %29, label %42, !dbg !680

; <label>:29:                                     ; preds = %5
  %30 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %12, align 8, !dbg !681
  %31 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %30, i32 0, i32 11, !dbg !683
  %32 = load i32, i32* %31, align 4, !dbg !683
  %33 = load i32, i32* %8, align 4, !dbg !684
  %34 = mul i32 %32, %33, !dbg !685
  %35 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %12, align 8, !dbg !686
  %36 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %35, i32 0, i32 12, !dbg !687
  %37 = load i32, i32* %36, align 8, !dbg !687
  %38 = add i32 %34, %37, !dbg !688
  %39 = add i32 %38, 99, !dbg !689
  %40 = udiv i32 %39, 100, !dbg !690
  %41 = zext i32 %40 to i64, !dbg !691
  store i64 %41, i64* %11, align 8, !dbg !692
  br label %57, !dbg !693

; <label>:42:                                     ; preds = %5
  %43 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %12, align 8, !dbg !694
  %44 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %43, i32 0, i32 10, !dbg !696
  %45 = load i32, i32* %44, align 8, !dbg !696
  %46 = icmp ne i32 %45, 0, !dbg !694
  br i1 %46, label %47, label %56, !dbg !697

; <label>:47:                                     ; preds = %42
  %48 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %12, align 8, !dbg !698
  %49 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %48, i32 0, i32 10, !dbg !700
  %50 = load i32, i32* %49, align 8, !dbg !700
  %51 = load i32, i32* %8, align 4, !dbg !701
  %52 = mul i32 %50, %51, !dbg !702
  %53 = add i32 %52, 99, !dbg !703
  %54 = udiv i32 %53, 100, !dbg !704
  %55 = zext i32 %54 to i64, !dbg !705
  store i64 %55, i64* %11, align 8, !dbg !706
  br label %56, !dbg !707

; <label>:56:                                     ; preds = %47, %42
  br label %57

; <label>:57:                                     ; preds = %56, %29
  %58 = load i64, i64* %11, align 8, !dbg !708
  %59 = icmp eq i64 %58, 0, !dbg !710
  br i1 %59, label %60, label %67, !dbg !711

; <label>:60:                                     ; preds = %57
  %61 = load %struct.termios*, %struct.termios** %13, align 8, !dbg !712
  %62 = getelementptr inbounds %struct.termios, %struct.termios* %61, i32 0, i32 5, !dbg !714
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %62, i64 0, i64 5, !dbg !712
  store i8 0, i8* %63, align 1, !dbg !715
  %64 = load %struct.termios*, %struct.termios** %13, align 8, !dbg !716
  %65 = getelementptr inbounds %struct.termios, %struct.termios* %64, i32 0, i32 5, !dbg !717
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %65, i64 0, i64 6, !dbg !716
  store i8 0, i8* %66, align 1, !dbg !718
  br label %76, !dbg !719

; <label>:67:                                     ; preds = %57
  %68 = load i64, i64* %11, align 8, !dbg !720
  %69 = trunc i64 %68 to i8, !dbg !720
  %70 = load %struct.termios*, %struct.termios** %13, align 8, !dbg !722
  %71 = getelementptr inbounds %struct.termios, %struct.termios* %70, i32 0, i32 5, !dbg !723
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %71, i64 0, i64 5, !dbg !722
  store i8 %69, i8* %72, align 1, !dbg !724
  %73 = load %struct.termios*, %struct.termios** %13, align 8, !dbg !725
  %74 = getelementptr inbounds %struct.termios, %struct.termios* %73, i32 0, i32 5, !dbg !726
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %74, i64 0, i64 6, !dbg !725
  store i8 1, i8* %75, align 1, !dbg !727
  br label %76

; <label>:76:                                     ; preds = %67, %60
  %77 = load i32, i32* %6, align 4, !dbg !728
  %78 = load %struct.termios*, %struct.termios** %13, align 8, !dbg !729
  %79 = call i32 @tcsetattr(i32 %77, i32 0, %struct.termios* %78) #7, !dbg !730
  %80 = load i32, i32* %6, align 4, !dbg !731
  %81 = call i32 (i32, i64, ...) @ioctl(i32 %80, i64 21531, i32* %14) #7, !dbg !732
  %82 = load i32, i32* %14, align 4, !dbg !733
  %83 = load i32, i32* %8, align 4, !dbg !734
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0), i32 %82, i32 %83), !dbg !735
  %84 = load i32, i32* %6, align 4, !dbg !736
  %85 = load i8*, i8** %7, align 8, !dbg !737
  %86 = load i32, i32* %8, align 4, !dbg !738
  %87 = zext i32 %86 to i64, !dbg !738
  %88 = call i64 @read(i32 %84, i8* %85, i64 %87), !dbg !739
  %89 = trunc i64 %88 to i32, !dbg !739
  %90 = load i32*, i32** %10, align 8, !dbg !740
  store i32 %89, i32* %90, align 4, !dbg !741
  %91 = load i32*, i32** %10, align 8, !dbg !742
  %92 = load i32, i32* %91, align 4, !dbg !743
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i32 %92), !dbg !744
  ret i32 0, !dbg !745
}

; Function Attrs: nounwind uwtable
define internal i32 @serial_write(i32, i8*, i32, i32, i32*) #0 !dbg !746 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rdpdr_serial_device_info*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !747, metadata !135), !dbg !748
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !749, metadata !135), !dbg !750
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !751, metadata !135), !dbg !752
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !753, metadata !135), !dbg !754
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !755, metadata !135), !dbg !756
  %12 = load i32, i32* %9, align 4, !dbg !757
  call void @llvm.dbg.declare(metadata %struct.rdpdr_serial_device_info** %11, metadata !758, metadata !135), !dbg !759
  %13 = load i32, i32* %6, align 4, !dbg !760
  %14 = call %struct.rdpdr_serial_device_info* @get_serial_info(i32 %13), !dbg !761
  store %struct.rdpdr_serial_device_info* %14, %struct.rdpdr_serial_device_info** %11, align 8, !dbg !762
  %15 = load i32, i32* %6, align 4, !dbg !763
  %16 = load i8*, i8** %7, align 8, !dbg !764
  %17 = load i32, i32* %8, align 4, !dbg !765
  %18 = zext i32 %17 to i64, !dbg !765
  %19 = call i64 @write(i32 %15, i8* %16, i64 %18), !dbg !766
  %20 = trunc i64 %19 to i32, !dbg !766
  %21 = load i32*, i32** %10, align 8, !dbg !767
  store i32 %20, i32* %21, align 4, !dbg !768
  %22 = load i32*, i32** %10, align 8, !dbg !769
  %23 = load i32, i32* %22, align 4, !dbg !771
  %24 = icmp ugt i32 %23, 0, !dbg !772
  br i1 %24, label %25, label %30, !dbg !773

; <label>:25:                                     ; preds = %5
  %26 = load i32*, i32** %10, align 8, !dbg !774
  %27 = load i32, i32* %26, align 4, !dbg !775
  %28 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %11, align 8, !dbg !776
  %29 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %28, i32 0, i32 22, !dbg !777
  store i32 %27, i32* %29, align 8, !dbg !778
  br label %30, !dbg !776

; <label>:30:                                     ; preds = %25, %5
  %31 = load i32*, i32** %10, align 8, !dbg !779
  %32 = load i32, i32* %31, align 4, !dbg !780
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i32 %32), !dbg !781
  ret i32 0, !dbg !782
}

; Function Attrs: nounwind uwtable
define internal i32 @serial_device_control(i32, i32, %struct.stream*, %struct.stream*) #0 !dbg !783 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stream*, align 8
  %9 = alloca %struct.stream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca %struct.rdpdr_serial_device_info*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !784, metadata !135), !dbg !785
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !786, metadata !135), !dbg !787
  store %struct.stream* %2, %struct.stream** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %8, metadata !788, metadata !135), !dbg !789
  store %struct.stream* %3, %struct.stream** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %9, metadata !790, metadata !135), !dbg !791
  call void @llvm.dbg.declare(metadata i32* %10, metadata !792, metadata !135), !dbg !793
  call void @llvm.dbg.declare(metadata i32* %11, metadata !794, metadata !135), !dbg !795
  call void @llvm.dbg.declare(metadata i32* %12, metadata !796, metadata !135), !dbg !797
  call void @llvm.dbg.declare(metadata i8* %13, metadata !798, metadata !135), !dbg !799
  call void @llvm.dbg.declare(metadata %struct.rdpdr_serial_device_info** %14, metadata !800, metadata !135), !dbg !801
  %15 = load i32, i32* %7, align 4, !dbg !802
  %16 = lshr i32 %15, 16, !dbg !804
  %17 = icmp ne i32 %16, 27, !dbg !805
  br i1 %17, label %18, label %19, !dbg !806

; <label>:18:                                     ; preds = %4
  store i32 -1073741811, i32* %5, align 4, !dbg !807
  br label %687, !dbg !807

; <label>:19:                                     ; preds = %4
  %20 = load i32, i32* %6, align 4, !dbg !808
  %21 = call %struct.rdpdr_serial_device_info* @get_serial_info(i32 %20), !dbg !809
  store %struct.rdpdr_serial_device_info* %21, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !810
  %22 = load i32, i32* %7, align 4, !dbg !811
  %23 = lshr i32 %22, 2, !dbg !811
  store i32 %23, i32* %7, align 4, !dbg !811
  %24 = load i32, i32* %7, align 4, !dbg !812
  %25 = and i32 %24, 4095, !dbg !812
  store i32 %25, i32* %7, align 4, !dbg !812
  %26 = load i32, i32* %7, align 4, !dbg !813
  switch i32 %26, label %684 [
    i32 1, label %27
    i32 20, label %44
    i32 2, label %59
    i32 3, label %88
    i32 21, label %124
    i32 6, label %146
    i32 32, label %154
    i32 22, label %163
    i32 23, label %174
    i32 24, label %187
    i32 25, label %235
    i32 7, label %294
    i32 8, label %359
    i32 16, label %424
    i32 17, label %439
    i32 9, label %454
    i32 10, label %463
    i32 12, label %472
    i32 13, label %481
    i32 26, label %490
    i32 27, label %545
    i32 19, label %602
    i32 18, label %654
    i32 4, label %675
    i32 11, label %678
    i32 5, label %679
    i32 14, label %680
    i32 15, label %681
  ], !dbg !814

; <label>:27:                                     ; preds = %19
  %28 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !815
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !818
  %30 = load i8*, i8** %29, align 8, !dbg !818
  %31 = bitcast i8* %30 to i32*, !dbg !819
  %32 = load i32, i32* %31, align 4, !dbg !819
  %33 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !820
  %34 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %33, i32 0, i32 6, !dbg !821
  store i32 %32, i32* %34, align 8, !dbg !822
  %35 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !823
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !824
  %37 = load i8*, i8** %36, align 8, !dbg !825
  %38 = getelementptr inbounds i8, i8* %37, i64 4, !dbg !825
  store i8* %38, i8** %36, align 8, !dbg !825
  %39 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !826
  %40 = load i32, i32* %6, align 4, !dbg !827
  call void @set_termios(%struct.rdpdr_serial_device_info* %39, i32 %40), !dbg !828
  %41 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !829
  %42 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %41, i32 0, i32 6, !dbg !830
  %43 = load i32, i32* %42, align 8, !dbg !830
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i32 0, i32 0), i32 %43), !dbg !831
  br label %686, !dbg !832

; <label>:44:                                     ; preds = %19
  %45 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !833
  %46 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %45, i32 0, i32 6, !dbg !835
  %47 = load i32, i32* %46, align 8, !dbg !835
  %48 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !836
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !837
  %50 = load i8*, i8** %49, align 8, !dbg !837
  %51 = bitcast i8* %50 to i32*, !dbg !838
  store i32 %47, i32* %51, align 4, !dbg !839
  %52 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !840
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !841
  %54 = load i8*, i8** %53, align 8, !dbg !842
  %55 = getelementptr inbounds i8, i8* %54, i64 4, !dbg !842
  store i8* %55, i8** %53, align 8, !dbg !842
  %56 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !843
  %57 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %56, i32 0, i32 6, !dbg !844
  %58 = load i32, i32* %57, align 8, !dbg !844
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0), i32 %58), !dbg !845
  br label %686, !dbg !846

; <label>:59:                                     ; preds = %19
  %60 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !847
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !849
  %62 = load i8*, i8** %61, align 8, !dbg !849
  %63 = bitcast i8* %62 to i32*, !dbg !850
  %64 = load i32, i32* %63, align 4, !dbg !850
  %65 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !851
  %66 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %65, i32 0, i32 7, !dbg !852
  store i32 %64, i32* %66, align 4, !dbg !853
  %67 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !854
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %67, i32 0, i32 0, !dbg !855
  %69 = load i8*, i8** %68, align 8, !dbg !856
  %70 = getelementptr inbounds i8, i8* %69, i64 4, !dbg !856
  store i8* %70, i8** %68, align 8, !dbg !856
  %71 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !857
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !859
  %73 = load i8*, i8** %72, align 8, !dbg !859
  %74 = bitcast i8* %73 to i32*, !dbg !860
  %75 = load i32, i32* %74, align 4, !dbg !860
  %76 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !861
  %77 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %76, i32 0, i32 8, !dbg !862
  store i32 %75, i32* %77, align 8, !dbg !863
  %78 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !864
  %79 = getelementptr inbounds %struct.stream, %struct.stream* %78, i32 0, i32 0, !dbg !865
  %80 = load i8*, i8** %79, align 8, !dbg !866
  %81 = getelementptr inbounds i8, i8* %80, i64 4, !dbg !866
  store i8* %81, i8** %79, align 8, !dbg !866
  %82 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !867
  %83 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %82, i32 0, i32 7, !dbg !868
  %84 = load i32, i32* %83, align 4, !dbg !868
  %85 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !869
  %86 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %85, i32 0, i32 8, !dbg !870
  %87 = load i32, i32* %86, align 8, !dbg !870
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0), i32 %84, i32 %87), !dbg !871
  br label %686, !dbg !872

; <label>:88:                                     ; preds = %19
  %89 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !873
  %90 = getelementptr inbounds %struct.stream, %struct.stream* %89, i32 0, i32 0, !dbg !874
  %91 = load i8*, i8** %90, align 8, !dbg !875
  %92 = getelementptr inbounds i8, i8* %91, i32 1, !dbg !875
  store i8* %92, i8** %90, align 8, !dbg !875
  %93 = load i8, i8* %91, align 1, !dbg !876
  %94 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !877
  %95 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %94, i32 0, i32 16, !dbg !878
  store i8 %93, i8* %95, align 8, !dbg !879
  %96 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !880
  %97 = getelementptr inbounds %struct.stream, %struct.stream* %96, i32 0, i32 0, !dbg !881
  %98 = load i8*, i8** %97, align 8, !dbg !882
  %99 = getelementptr inbounds i8, i8* %98, i32 1, !dbg !882
  store i8* %99, i8** %97, align 8, !dbg !882
  %100 = load i8, i8* %98, align 1, !dbg !883
  %101 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !884
  %102 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %101, i32 0, i32 17, !dbg !885
  store i8 %100, i8* %102, align 1, !dbg !886
  %103 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !887
  %104 = getelementptr inbounds %struct.stream, %struct.stream* %103, i32 0, i32 0, !dbg !888
  %105 = load i8*, i8** %104, align 8, !dbg !889
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !889
  store i8* %106, i8** %104, align 8, !dbg !889
  %107 = load i8, i8* %105, align 1, !dbg !890
  %108 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !891
  %109 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %108, i32 0, i32 18, !dbg !892
  store i8 %107, i8* %109, align 2, !dbg !893
  %110 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !894
  %111 = load i32, i32* %6, align 4, !dbg !895
  call void @set_termios(%struct.rdpdr_serial_device_info* %110, i32 %111), !dbg !896
  %112 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !897
  %113 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %112, i32 0, i32 16, !dbg !898
  %114 = load i8, i8* %113, align 8, !dbg !898
  %115 = zext i8 %114 to i32, !dbg !897
  %116 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !899
  %117 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %116, i32 0, i32 17, !dbg !900
  %118 = load i8, i8* %117, align 1, !dbg !900
  %119 = zext i8 %118 to i32, !dbg !899
  %120 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !901
  %121 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %120, i32 0, i32 18, !dbg !902
  %122 = load i8, i8* %121, align 2, !dbg !902
  %123 = zext i8 %122 to i32, !dbg !901
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.20, i32 0, i32 0), i32 %115, i32 %119, i32 %123), !dbg !903
  br label %686, !dbg !904

; <label>:124:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0)), !dbg !905
  %125 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !906
  %126 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %125, i32 0, i32 16, !dbg !907
  %127 = load i8, i8* %126, align 8, !dbg !907
  %128 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !908
  %129 = getelementptr inbounds %struct.stream, %struct.stream* %128, i32 0, i32 0, !dbg !909
  %130 = load i8*, i8** %129, align 8, !dbg !910
  %131 = getelementptr inbounds i8, i8* %130, i32 1, !dbg !910
  store i8* %131, i8** %129, align 8, !dbg !910
  store i8 %127, i8* %130, align 1, !dbg !911
  %132 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !912
  %133 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %132, i32 0, i32 17, !dbg !913
  %134 = load i8, i8* %133, align 1, !dbg !913
  %135 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !914
  %136 = getelementptr inbounds %struct.stream, %struct.stream* %135, i32 0, i32 0, !dbg !915
  %137 = load i8*, i8** %136, align 8, !dbg !916
  %138 = getelementptr inbounds i8, i8* %137, i32 1, !dbg !916
  store i8* %138, i8** %136, align 8, !dbg !916
  store i8 %134, i8* %137, align 1, !dbg !917
  %139 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !918
  %140 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %139, i32 0, i32 18, !dbg !919
  %141 = load i8, i8* %140, align 2, !dbg !919
  %142 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !920
  %143 = getelementptr inbounds %struct.stream, %struct.stream* %142, i32 0, i32 0, !dbg !921
  %144 = load i8*, i8** %143, align 8, !dbg !922
  %145 = getelementptr inbounds i8, i8* %144, i32 1, !dbg !922
  store i8* %145, i8** %143, align 8, !dbg !922
  store i8 %141, i8* %144, align 1, !dbg !923
  br label %686, !dbg !924

; <label>:146:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0)), !dbg !925
  %147 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !926
  %148 = getelementptr inbounds %struct.stream, %struct.stream* %147, i32 0, i32 0, !dbg !927
  %149 = load i8*, i8** %148, align 8, !dbg !928
  %150 = getelementptr inbounds i8, i8* %149, i32 1, !dbg !928
  store i8* %150, i8** %148, align 8, !dbg !928
  %151 = load i8, i8* %149, align 1, !dbg !929
  store i8 %151, i8* %13, align 1, !dbg !930
  %152 = load i32, i32* %6, align 4, !dbg !931
  %153 = call i32 @serial_write(i32 %152, i8* %13, i32 1, i32 0, i32* %11), !dbg !932
  br label %686, !dbg !933

; <label>:154:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0)), !dbg !934
  %155 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !935
  %156 = getelementptr inbounds %struct.stream, %struct.stream* %155, i32 0, i32 0, !dbg !937
  %157 = load i8*, i8** %156, align 8, !dbg !937
  %158 = bitcast i8* %157 to i32*, !dbg !938
  store i32 0, i32* %158, align 4, !dbg !939
  %159 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !940
  %160 = getelementptr inbounds %struct.stream, %struct.stream* %159, i32 0, i32 0, !dbg !941
  %161 = load i8*, i8** %160, align 8, !dbg !942
  %162 = getelementptr inbounds i8, i8* %161, i64 4, !dbg !942
  store i8* %162, i8** %160, align 8, !dbg !942
  br label %686, !dbg !943

; <label>:163:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0)), !dbg !944
  %164 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !945
  %165 = getelementptr inbounds %struct.stream, %struct.stream* %164, i32 0, i32 0, !dbg !947
  %166 = load i8*, i8** %165, align 8, !dbg !947
  %167 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !948
  %168 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %167, i32 0, i32 19, !dbg !949
  %169 = getelementptr inbounds [6 x i8], [6 x i8]* %168, i32 0, i32 0, !dbg !950
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %166, i8* %169, i64 6, i32 1, i1 false), !dbg !950
  %170 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !951
  %171 = getelementptr inbounds %struct.stream, %struct.stream* %170, i32 0, i32 0, !dbg !952
  %172 = load i8*, i8** %171, align 8, !dbg !953
  %173 = getelementptr inbounds i8, i8* %172, i64 6, !dbg !953
  store i8* %173, i8** %171, align 8, !dbg !953
  br label %686, !dbg !954

; <label>:174:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i32 0, i32 0)), !dbg !955
  %175 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !956
  %176 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %175, i32 0, i32 19, !dbg !958
  %177 = getelementptr inbounds [6 x i8], [6 x i8]* %176, i32 0, i32 0, !dbg !959
  %178 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !960
  %179 = getelementptr inbounds %struct.stream, %struct.stream* %178, i32 0, i32 0, !dbg !961
  %180 = load i8*, i8** %179, align 8, !dbg !961
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %177, i8* %180, i64 6, i32 1, i1 false), !dbg !959
  %181 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !962
  %182 = getelementptr inbounds %struct.stream, %struct.stream* %181, i32 0, i32 0, !dbg !963
  %183 = load i8*, i8** %182, align 8, !dbg !964
  %184 = getelementptr inbounds i8, i8* %183, i64 6, !dbg !964
  store i8* %184, i8** %182, align 8, !dbg !964
  %185 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !965
  %186 = load i32, i32* %6, align 4, !dbg !966
  call void @set_termios(%struct.rdpdr_serial_device_info* %185, i32 %186), !dbg !967
  br label %686, !dbg !968

; <label>:187:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i32 0, i32 0)), !dbg !969
  %188 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !970
  %189 = load i32, i32* %6, align 4, !dbg !971
  %190 = call i32 @get_termios(%struct.rdpdr_serial_device_info* %188, i32 %189), !dbg !972
  %191 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !973
  %192 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %191, i32 0, i32 2, !dbg !975
  %193 = load i32, i32* %192, align 8, !dbg !975
  %194 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !976
  %195 = getelementptr inbounds %struct.stream, %struct.stream* %194, i32 0, i32 0, !dbg !977
  %196 = load i8*, i8** %195, align 8, !dbg !977
  %197 = bitcast i8* %196 to i32*, !dbg !978
  store i32 %193, i32* %197, align 4, !dbg !979
  %198 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !980
  %199 = getelementptr inbounds %struct.stream, %struct.stream* %198, i32 0, i32 0, !dbg !981
  %200 = load i8*, i8** %199, align 8, !dbg !982
  %201 = getelementptr inbounds i8, i8* %200, i64 4, !dbg !982
  store i8* %201, i8** %199, align 8, !dbg !982
  %202 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !983
  %203 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %202, i32 0, i32 3, !dbg !985
  %204 = load i32, i32* %203, align 4, !dbg !985
  %205 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !986
  %206 = getelementptr inbounds %struct.stream, %struct.stream* %205, i32 0, i32 0, !dbg !987
  %207 = load i8*, i8** %206, align 8, !dbg !987
  %208 = bitcast i8* %207 to i32*, !dbg !988
  store i32 %204, i32* %208, align 4, !dbg !989
  %209 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !990
  %210 = getelementptr inbounds %struct.stream, %struct.stream* %209, i32 0, i32 0, !dbg !991
  %211 = load i8*, i8** %210, align 8, !dbg !992
  %212 = getelementptr inbounds i8, i8* %211, i64 4, !dbg !992
  store i8* %212, i8** %210, align 8, !dbg !992
  %213 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !993
  %214 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %213, i32 0, i32 4, !dbg !995
  %215 = load i32, i32* %214, align 8, !dbg !995
  %216 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !996
  %217 = getelementptr inbounds %struct.stream, %struct.stream* %216, i32 0, i32 0, !dbg !997
  %218 = load i8*, i8** %217, align 8, !dbg !997
  %219 = bitcast i8* %218 to i32*, !dbg !998
  store i32 %215, i32* %219, align 4, !dbg !999
  %220 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1000
  %221 = getelementptr inbounds %struct.stream, %struct.stream* %220, i32 0, i32 0, !dbg !1001
  %222 = load i8*, i8** %221, align 8, !dbg !1002
  %223 = getelementptr inbounds i8, i8* %222, i64 4, !dbg !1002
  store i8* %223, i8** %221, align 8, !dbg !1002
  %224 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1003
  %225 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %224, i32 0, i32 5, !dbg !1005
  %226 = load i32, i32* %225, align 4, !dbg !1005
  %227 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1006
  %228 = getelementptr inbounds %struct.stream, %struct.stream* %227, i32 0, i32 0, !dbg !1007
  %229 = load i8*, i8** %228, align 8, !dbg !1007
  %230 = bitcast i8* %229 to i32*, !dbg !1008
  store i32 %226, i32* %230, align 4, !dbg !1009
  %231 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1010
  %232 = getelementptr inbounds %struct.stream, %struct.stream* %231, i32 0, i32 0, !dbg !1011
  %233 = load i8*, i8** %232, align 8, !dbg !1012
  %234 = getelementptr inbounds i8, i8* %233, i64 4, !dbg !1012
  store i8* %234, i8** %232, align 8, !dbg !1012
  br label %686, !dbg !1013

; <label>:235:                                    ; preds = %19
  %236 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1014
  %237 = getelementptr inbounds %struct.stream, %struct.stream* %236, i32 0, i32 0, !dbg !1016
  %238 = load i8*, i8** %237, align 8, !dbg !1016
  %239 = bitcast i8* %238 to i32*, !dbg !1017
  %240 = load i32, i32* %239, align 4, !dbg !1017
  %241 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1018
  %242 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %241, i32 0, i32 2, !dbg !1019
  store i32 %240, i32* %242, align 8, !dbg !1020
  %243 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1021
  %244 = getelementptr inbounds %struct.stream, %struct.stream* %243, i32 0, i32 0, !dbg !1022
  %245 = load i8*, i8** %244, align 8, !dbg !1023
  %246 = getelementptr inbounds i8, i8* %245, i64 4, !dbg !1023
  store i8* %246, i8** %244, align 8, !dbg !1023
  %247 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1024
  %248 = getelementptr inbounds %struct.stream, %struct.stream* %247, i32 0, i32 0, !dbg !1026
  %249 = load i8*, i8** %248, align 8, !dbg !1026
  %250 = bitcast i8* %249 to i32*, !dbg !1027
  %251 = load i32, i32* %250, align 4, !dbg !1027
  %252 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1028
  %253 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %252, i32 0, i32 3, !dbg !1029
  store i32 %251, i32* %253, align 4, !dbg !1030
  %254 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1031
  %255 = getelementptr inbounds %struct.stream, %struct.stream* %254, i32 0, i32 0, !dbg !1032
  %256 = load i8*, i8** %255, align 8, !dbg !1033
  %257 = getelementptr inbounds i8, i8* %256, i64 4, !dbg !1033
  store i8* %257, i8** %255, align 8, !dbg !1033
  %258 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1034
  %259 = getelementptr inbounds %struct.stream, %struct.stream* %258, i32 0, i32 0, !dbg !1036
  %260 = load i8*, i8** %259, align 8, !dbg !1036
  %261 = bitcast i8* %260 to i32*, !dbg !1037
  %262 = load i32, i32* %261, align 4, !dbg !1037
  %263 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1038
  %264 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %263, i32 0, i32 4, !dbg !1039
  store i32 %262, i32* %264, align 8, !dbg !1040
  %265 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1041
  %266 = getelementptr inbounds %struct.stream, %struct.stream* %265, i32 0, i32 0, !dbg !1042
  %267 = load i8*, i8** %266, align 8, !dbg !1043
  %268 = getelementptr inbounds i8, i8* %267, i64 4, !dbg !1043
  store i8* %268, i8** %266, align 8, !dbg !1043
  %269 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1044
  %270 = getelementptr inbounds %struct.stream, %struct.stream* %269, i32 0, i32 0, !dbg !1046
  %271 = load i8*, i8** %270, align 8, !dbg !1046
  %272 = bitcast i8* %271 to i32*, !dbg !1047
  %273 = load i32, i32* %272, align 4, !dbg !1047
  %274 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1048
  %275 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %274, i32 0, i32 5, !dbg !1049
  store i32 %273, i32* %275, align 4, !dbg !1050
  %276 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1051
  %277 = getelementptr inbounds %struct.stream, %struct.stream* %276, i32 0, i32 0, !dbg !1052
  %278 = load i8*, i8** %277, align 8, !dbg !1053
  %279 = getelementptr inbounds i8, i8* %278, i64 4, !dbg !1053
  store i8* %279, i8** %277, align 8, !dbg !1053
  %280 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1054
  %281 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %280, i32 0, i32 2, !dbg !1055
  %282 = load i32, i32* %281, align 8, !dbg !1055
  %283 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1056
  %284 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %283, i32 0, i32 3, !dbg !1057
  %285 = load i32, i32* %284, align 4, !dbg !1057
  %286 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1058
  %287 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %286, i32 0, i32 4, !dbg !1059
  %288 = load i32, i32* %287, align 8, !dbg !1059
  %289 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1060
  %290 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %289, i32 0, i32 5, !dbg !1061
  %291 = load i32, i32* %290, align 4, !dbg !1061
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.27, i32 0, i32 0), i32 %282, i32 %285, i32 %288, i32 %291), !dbg !1062
  %292 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1063
  %293 = load i32, i32* %6, align 4, !dbg !1064
  call void @set_termios(%struct.rdpdr_serial_device_info* %292, i32 %293), !dbg !1065
  br label %686, !dbg !1066

; <label>:294:                                    ; preds = %19
  %295 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1067
  %296 = getelementptr inbounds %struct.stream, %struct.stream* %295, i32 0, i32 0, !dbg !1069
  %297 = load i8*, i8** %296, align 8, !dbg !1069
  %298 = bitcast i8* %297 to i32*, !dbg !1070
  %299 = load i32, i32* %298, align 4, !dbg !1070
  %300 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1071
  %301 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %300, i32 0, i32 10, !dbg !1072
  store i32 %299, i32* %301, align 8, !dbg !1073
  %302 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1074
  %303 = getelementptr inbounds %struct.stream, %struct.stream* %302, i32 0, i32 0, !dbg !1075
  %304 = load i8*, i8** %303, align 8, !dbg !1076
  %305 = getelementptr inbounds i8, i8* %304, i64 4, !dbg !1076
  store i8* %305, i8** %303, align 8, !dbg !1076
  %306 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1077
  %307 = getelementptr inbounds %struct.stream, %struct.stream* %306, i32 0, i32 0, !dbg !1079
  %308 = load i8*, i8** %307, align 8, !dbg !1079
  %309 = bitcast i8* %308 to i32*, !dbg !1080
  %310 = load i32, i32* %309, align 4, !dbg !1080
  %311 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1081
  %312 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %311, i32 0, i32 11, !dbg !1082
  store i32 %310, i32* %312, align 4, !dbg !1083
  %313 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1084
  %314 = getelementptr inbounds %struct.stream, %struct.stream* %313, i32 0, i32 0, !dbg !1085
  %315 = load i8*, i8** %314, align 8, !dbg !1086
  %316 = getelementptr inbounds i8, i8* %315, i64 4, !dbg !1086
  store i8* %316, i8** %314, align 8, !dbg !1086
  %317 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1087
  %318 = getelementptr inbounds %struct.stream, %struct.stream* %317, i32 0, i32 0, !dbg !1089
  %319 = load i8*, i8** %318, align 8, !dbg !1089
  %320 = bitcast i8* %319 to i32*, !dbg !1090
  %321 = load i32, i32* %320, align 4, !dbg !1090
  %322 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1091
  %323 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %322, i32 0, i32 12, !dbg !1092
  store i32 %321, i32* %323, align 8, !dbg !1093
  %324 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1094
  %325 = getelementptr inbounds %struct.stream, %struct.stream* %324, i32 0, i32 0, !dbg !1095
  %326 = load i8*, i8** %325, align 8, !dbg !1096
  %327 = getelementptr inbounds i8, i8* %326, i64 4, !dbg !1096
  store i8* %327, i8** %325, align 8, !dbg !1096
  %328 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1097
  %329 = getelementptr inbounds %struct.stream, %struct.stream* %328, i32 0, i32 0, !dbg !1099
  %330 = load i8*, i8** %329, align 8, !dbg !1099
  %331 = bitcast i8* %330 to i32*, !dbg !1100
  %332 = load i32, i32* %331, align 4, !dbg !1100
  %333 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1101
  %334 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %333, i32 0, i32 13, !dbg !1102
  store i32 %332, i32* %334, align 4, !dbg !1103
  %335 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1104
  %336 = getelementptr inbounds %struct.stream, %struct.stream* %335, i32 0, i32 0, !dbg !1105
  %337 = load i8*, i8** %336, align 8, !dbg !1106
  %338 = getelementptr inbounds i8, i8* %337, i64 4, !dbg !1106
  store i8* %338, i8** %336, align 8, !dbg !1106
  %339 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1107
  %340 = getelementptr inbounds %struct.stream, %struct.stream* %339, i32 0, i32 0, !dbg !1109
  %341 = load i8*, i8** %340, align 8, !dbg !1109
  %342 = bitcast i8* %341 to i32*, !dbg !1110
  %343 = load i32, i32* %342, align 4, !dbg !1110
  %344 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1111
  %345 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %344, i32 0, i32 14, !dbg !1112
  store i32 %343, i32* %345, align 8, !dbg !1113
  %346 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1114
  %347 = getelementptr inbounds %struct.stream, %struct.stream* %346, i32 0, i32 0, !dbg !1115
  %348 = load i8*, i8** %347, align 8, !dbg !1116
  %349 = getelementptr inbounds i8, i8* %348, i64 4, !dbg !1116
  store i8* %349, i8** %347, align 8, !dbg !1116
  %350 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1117
  %351 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %350, i32 0, i32 10, !dbg !1118
  %352 = load i32, i32* %351, align 8, !dbg !1118
  %353 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1119
  %354 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %353, i32 0, i32 11, !dbg !1120
  %355 = load i32, i32* %354, align 4, !dbg !1120
  %356 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1121
  %357 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %356, i32 0, i32 12, !dbg !1122
  %358 = load i32, i32* %357, align 8, !dbg !1122
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.28, i32 0, i32 0), i32 %352, i32 %355, i32 %358), !dbg !1123
  br label %686, !dbg !1124

; <label>:359:                                    ; preds = %19
  %360 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1125
  %361 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %360, i32 0, i32 10, !dbg !1126
  %362 = load i32, i32* %361, align 8, !dbg !1126
  %363 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1127
  %364 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %363, i32 0, i32 11, !dbg !1128
  %365 = load i32, i32* %364, align 4, !dbg !1128
  %366 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1129
  %367 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %366, i32 0, i32 12, !dbg !1130
  %368 = load i32, i32* %367, align 8, !dbg !1130
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.29, i32 0, i32 0), i32 %362, i32 %365, i32 %368), !dbg !1131
  %369 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1132
  %370 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %369, i32 0, i32 10, !dbg !1134
  %371 = load i32, i32* %370, align 8, !dbg !1134
  %372 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1135
  %373 = getelementptr inbounds %struct.stream, %struct.stream* %372, i32 0, i32 0, !dbg !1136
  %374 = load i8*, i8** %373, align 8, !dbg !1136
  %375 = bitcast i8* %374 to i32*, !dbg !1137
  store i32 %371, i32* %375, align 4, !dbg !1138
  %376 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1139
  %377 = getelementptr inbounds %struct.stream, %struct.stream* %376, i32 0, i32 0, !dbg !1140
  %378 = load i8*, i8** %377, align 8, !dbg !1141
  %379 = getelementptr inbounds i8, i8* %378, i64 4, !dbg !1141
  store i8* %379, i8** %377, align 8, !dbg !1141
  %380 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1142
  %381 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %380, i32 0, i32 11, !dbg !1144
  %382 = load i32, i32* %381, align 4, !dbg !1144
  %383 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1145
  %384 = getelementptr inbounds %struct.stream, %struct.stream* %383, i32 0, i32 0, !dbg !1146
  %385 = load i8*, i8** %384, align 8, !dbg !1146
  %386 = bitcast i8* %385 to i32*, !dbg !1147
  store i32 %382, i32* %386, align 4, !dbg !1148
  %387 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1149
  %388 = getelementptr inbounds %struct.stream, %struct.stream* %387, i32 0, i32 0, !dbg !1150
  %389 = load i8*, i8** %388, align 8, !dbg !1151
  %390 = getelementptr inbounds i8, i8* %389, i64 4, !dbg !1151
  store i8* %390, i8** %388, align 8, !dbg !1151
  %391 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1152
  %392 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %391, i32 0, i32 12, !dbg !1154
  %393 = load i32, i32* %392, align 8, !dbg !1154
  %394 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1155
  %395 = getelementptr inbounds %struct.stream, %struct.stream* %394, i32 0, i32 0, !dbg !1156
  %396 = load i8*, i8** %395, align 8, !dbg !1156
  %397 = bitcast i8* %396 to i32*, !dbg !1157
  store i32 %393, i32* %397, align 4, !dbg !1158
  %398 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1159
  %399 = getelementptr inbounds %struct.stream, %struct.stream* %398, i32 0, i32 0, !dbg !1160
  %400 = load i8*, i8** %399, align 8, !dbg !1161
  %401 = getelementptr inbounds i8, i8* %400, i64 4, !dbg !1161
  store i8* %401, i8** %399, align 8, !dbg !1161
  %402 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1162
  %403 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %402, i32 0, i32 13, !dbg !1164
  %404 = load i32, i32* %403, align 4, !dbg !1164
  %405 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1165
  %406 = getelementptr inbounds %struct.stream, %struct.stream* %405, i32 0, i32 0, !dbg !1166
  %407 = load i8*, i8** %406, align 8, !dbg !1166
  %408 = bitcast i8* %407 to i32*, !dbg !1167
  store i32 %404, i32* %408, align 4, !dbg !1168
  %409 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1169
  %410 = getelementptr inbounds %struct.stream, %struct.stream* %409, i32 0, i32 0, !dbg !1170
  %411 = load i8*, i8** %410, align 8, !dbg !1171
  %412 = getelementptr inbounds i8, i8* %411, i64 4, !dbg !1171
  store i8* %412, i8** %410, align 8, !dbg !1171
  %413 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1172
  %414 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %413, i32 0, i32 14, !dbg !1174
  %415 = load i32, i32* %414, align 8, !dbg !1174
  %416 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1175
  %417 = getelementptr inbounds %struct.stream, %struct.stream* %416, i32 0, i32 0, !dbg !1176
  %418 = load i8*, i8** %417, align 8, !dbg !1176
  %419 = bitcast i8* %418 to i32*, !dbg !1177
  store i32 %415, i32* %419, align 4, !dbg !1178
  %420 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1179
  %421 = getelementptr inbounds %struct.stream, %struct.stream* %420, i32 0, i32 0, !dbg !1180
  %422 = load i8*, i8** %421, align 8, !dbg !1181
  %423 = getelementptr inbounds i8, i8* %422, i64 4, !dbg !1181
  store i8* %423, i8** %421, align 8, !dbg !1181
  br label %686, !dbg !1182

; <label>:424:                                    ; preds = %19
  %425 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1183
  %426 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %425, i32 0, i32 9, !dbg !1184
  %427 = load i32, i32* %426, align 4, !dbg !1184
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i32 0, i32 0), i32 %427), !dbg !1185
  %428 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1186
  %429 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %428, i32 0, i32 9, !dbg !1188
  %430 = load i32, i32* %429, align 4, !dbg !1188
  %431 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1189
  %432 = getelementptr inbounds %struct.stream, %struct.stream* %431, i32 0, i32 0, !dbg !1190
  %433 = load i8*, i8** %432, align 8, !dbg !1190
  %434 = bitcast i8* %433 to i32*, !dbg !1191
  store i32 %430, i32* %434, align 4, !dbg !1192
  %435 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1193
  %436 = getelementptr inbounds %struct.stream, %struct.stream* %435, i32 0, i32 0, !dbg !1194
  %437 = load i8*, i8** %436, align 8, !dbg !1195
  %438 = getelementptr inbounds i8, i8* %437, i64 4, !dbg !1195
  store i8* %438, i8** %436, align 8, !dbg !1195
  br label %686, !dbg !1196

; <label>:439:                                    ; preds = %19
  %440 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1197
  %441 = getelementptr inbounds %struct.stream, %struct.stream* %440, i32 0, i32 0, !dbg !1199
  %442 = load i8*, i8** %441, align 8, !dbg !1199
  %443 = bitcast i8* %442 to i32*, !dbg !1200
  %444 = load i32, i32* %443, align 4, !dbg !1200
  %445 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1201
  %446 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %445, i32 0, i32 9, !dbg !1202
  store i32 %444, i32* %446, align 4, !dbg !1203
  %447 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1204
  %448 = getelementptr inbounds %struct.stream, %struct.stream* %447, i32 0, i32 0, !dbg !1205
  %449 = load i8*, i8** %448, align 8, !dbg !1206
  %450 = getelementptr inbounds i8, i8* %449, i64 4, !dbg !1206
  store i8* %450, i8** %448, align 8, !dbg !1206
  %451 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1207
  %452 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %451, i32 0, i32 9, !dbg !1208
  %453 = load i32, i32* %452, align 4, !dbg !1208
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i32 0, i32 0), i32 %453), !dbg !1209
  br label %686, !dbg !1210

; <label>:454:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0)), !dbg !1211
  %455 = load i32, i32* %6, align 4, !dbg !1212
  %456 = call i32 (i32, i64, ...) @ioctl(i32 %455, i64 21525, i32* %11) #7, !dbg !1213
  %457 = load i32, i32* %11, align 4, !dbg !1214
  %458 = or i32 %457, 2, !dbg !1214
  store i32 %458, i32* %11, align 4, !dbg !1214
  %459 = load i32, i32* %6, align 4, !dbg !1215
  %460 = call i32 (i32, i64, ...) @ioctl(i32 %459, i64 21528, i32* %11) #7, !dbg !1216
  %461 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1217
  %462 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %461, i32 0, i32 0, !dbg !1218
  store i32 1, i32* %462, align 8, !dbg !1219
  br label %686, !dbg !1220

; <label>:463:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0)), !dbg !1221
  %464 = load i32, i32* %6, align 4, !dbg !1222
  %465 = call i32 (i32, i64, ...) @ioctl(i32 %464, i64 21525, i32* %11) #7, !dbg !1223
  %466 = load i32, i32* %11, align 4, !dbg !1224
  %467 = and i32 %466, -3, !dbg !1224
  store i32 %467, i32* %11, align 4, !dbg !1224
  %468 = load i32, i32* %6, align 4, !dbg !1225
  %469 = call i32 (i32, i64, ...) @ioctl(i32 %468, i64 21528, i32* %11) #7, !dbg !1226
  %470 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1227
  %471 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %470, i32 0, i32 0, !dbg !1228
  store i32 0, i32* %471, align 8, !dbg !1229
  br label %686, !dbg !1230

; <label>:472:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0)), !dbg !1231
  %473 = load i32, i32* %6, align 4, !dbg !1232
  %474 = call i32 (i32, i64, ...) @ioctl(i32 %473, i64 21525, i32* %11) #7, !dbg !1233
  %475 = load i32, i32* %11, align 4, !dbg !1234
  %476 = or i32 %475, 4, !dbg !1234
  store i32 %476, i32* %11, align 4, !dbg !1234
  %477 = load i32, i32* %6, align 4, !dbg !1235
  %478 = call i32 (i32, i64, ...) @ioctl(i32 %477, i64 21528, i32* %11) #7, !dbg !1236
  %479 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1237
  %480 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %479, i32 0, i32 1, !dbg !1238
  store i32 1, i32* %480, align 4, !dbg !1239
  br label %686, !dbg !1240

; <label>:481:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i32 0, i32 0)), !dbg !1241
  %482 = load i32, i32* %6, align 4, !dbg !1242
  %483 = call i32 (i32, i64, ...) @ioctl(i32 %482, i64 21525, i32* %11) #7, !dbg !1243
  %484 = load i32, i32* %11, align 4, !dbg !1244
  %485 = and i32 %484, -5, !dbg !1244
  store i32 %485, i32* %11, align 4, !dbg !1244
  %486 = load i32, i32* %6, align 4, !dbg !1245
  %487 = call i32 (i32, i64, ...) @ioctl(i32 %486, i64 21528, i32* %11) #7, !dbg !1246
  %488 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1247
  %489 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %488, i32 0, i32 1, !dbg !1248
  store i32 0, i32* %489, align 4, !dbg !1249
  br label %686, !dbg !1250

; <label>:490:                                    ; preds = %19
  store i32 0, i32* %12, align 4, !dbg !1251
  %491 = load i32, i32* %6, align 4, !dbg !1252
  %492 = call i32 (i32, i64, ...) @ioctl(i32 %491, i64 21525, i32* %11) #7, !dbg !1253
  %493 = load i32, i32* %11, align 4, !dbg !1254
  %494 = and i32 %493, 32, !dbg !1256
  %495 = icmp ne i32 %494, 0, !dbg !1256
  br i1 %495, label %496, label %499, !dbg !1257

; <label>:496:                                    ; preds = %490
  %497 = load i32, i32* %12, align 4, !dbg !1258
  %498 = or i32 %497, 16, !dbg !1258
  store i32 %498, i32* %12, align 4, !dbg !1258
  br label %499, !dbg !1259

; <label>:499:                                    ; preds = %496, %490
  %500 = load i32, i32* %11, align 4, !dbg !1260
  %501 = and i32 %500, 256, !dbg !1262
  %502 = icmp ne i32 %501, 0, !dbg !1262
  br i1 %502, label %503, label %506, !dbg !1263

; <label>:503:                                    ; preds = %499
  %504 = load i32, i32* %12, align 4, !dbg !1264
  %505 = or i32 %504, 32, !dbg !1264
  store i32 %505, i32* %12, align 4, !dbg !1264
  br label %506, !dbg !1265

; <label>:506:                                    ; preds = %503, %499
  %507 = load i32, i32* %11, align 4, !dbg !1266
  %508 = and i32 %507, 128, !dbg !1268
  %509 = icmp ne i32 %508, 0, !dbg !1268
  br i1 %509, label %510, label %513, !dbg !1269

; <label>:510:                                    ; preds = %506
  %511 = load i32, i32* %12, align 4, !dbg !1270
  %512 = or i32 %511, 64, !dbg !1270
  store i32 %512, i32* %12, align 4, !dbg !1270
  br label %513, !dbg !1271

; <label>:513:                                    ; preds = %510, %506
  %514 = load i32, i32* %11, align 4, !dbg !1272
  %515 = and i32 %514, 64, !dbg !1274
  %516 = icmp ne i32 %515, 0, !dbg !1274
  br i1 %516, label %517, label %520, !dbg !1275

; <label>:517:                                    ; preds = %513
  %518 = load i32, i32* %12, align 4, !dbg !1276
  %519 = or i32 %518, 128, !dbg !1276
  store i32 %519, i32* %12, align 4, !dbg !1276
  br label %520, !dbg !1277

; <label>:520:                                    ; preds = %517, %513
  %521 = load i32, i32* %11, align 4, !dbg !1278
  %522 = and i32 %521, 2, !dbg !1280
  %523 = icmp ne i32 %522, 0, !dbg !1280
  br i1 %523, label %524, label %527, !dbg !1281

; <label>:524:                                    ; preds = %520
  %525 = load i32, i32* %12, align 4, !dbg !1282
  %526 = or i32 %525, 1, !dbg !1282
  store i32 %526, i32* %12, align 4, !dbg !1282
  br label %527, !dbg !1283

; <label>:527:                                    ; preds = %524, %520
  %528 = load i32, i32* %11, align 4, !dbg !1284
  %529 = and i32 %528, 4, !dbg !1286
  %530 = icmp ne i32 %529, 0, !dbg !1286
  br i1 %530, label %531, label %534, !dbg !1287

; <label>:531:                                    ; preds = %527
  %532 = load i32, i32* %12, align 4, !dbg !1288
  %533 = or i32 %532, 2, !dbg !1288
  store i32 %533, i32* %12, align 4, !dbg !1288
  br label %534, !dbg !1289

; <label>:534:                                    ; preds = %531, %527
  %535 = load i32, i32* %12, align 4, !dbg !1290
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i32 0, i32 0), i32 %535), !dbg !1291
  %536 = load i32, i32* %12, align 4, !dbg !1292
  %537 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1294
  %538 = getelementptr inbounds %struct.stream, %struct.stream* %537, i32 0, i32 0, !dbg !1295
  %539 = load i8*, i8** %538, align 8, !dbg !1295
  %540 = bitcast i8* %539 to i32*, !dbg !1296
  store i32 %536, i32* %540, align 4, !dbg !1297
  %541 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1298
  %542 = getelementptr inbounds %struct.stream, %struct.stream* %541, i32 0, i32 0, !dbg !1299
  %543 = load i8*, i8** %542, align 8, !dbg !1300
  %544 = getelementptr inbounds i8, i8* %543, i64 4, !dbg !1300
  store i8* %544, i8** %542, align 8, !dbg !1300
  br label %686, !dbg !1301

; <label>:545:                                    ; preds = %19
  %546 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1302
  %547 = getelementptr inbounds %struct.stream, %struct.stream* %546, i32 0, i32 0, !dbg !1304
  %548 = load i8*, i8** %547, align 8, !dbg !1304
  %549 = bitcast i8* %548 to i32*, !dbg !1305
  store i32 0, i32* %549, align 4, !dbg !1306
  %550 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1307
  %551 = getelementptr inbounds %struct.stream, %struct.stream* %550, i32 0, i32 0, !dbg !1308
  %552 = load i8*, i8** %551, align 8, !dbg !1309
  %553 = getelementptr inbounds i8, i8* %552, i64 4, !dbg !1309
  store i8* %553, i8** %551, align 8, !dbg !1309
  %554 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1310
  %555 = getelementptr inbounds %struct.stream, %struct.stream* %554, i32 0, i32 0, !dbg !1312
  %556 = load i8*, i8** %555, align 8, !dbg !1312
  %557 = bitcast i8* %556 to i32*, !dbg !1313
  store i32 0, i32* %557, align 4, !dbg !1314
  %558 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1315
  %559 = getelementptr inbounds %struct.stream, %struct.stream* %558, i32 0, i32 0, !dbg !1316
  %560 = load i8*, i8** %559, align 8, !dbg !1317
  %561 = getelementptr inbounds i8, i8* %560, i64 4, !dbg !1317
  store i8* %561, i8** %559, align 8, !dbg !1317
  store i32 0, i32* %11, align 4, !dbg !1318
  %562 = load i32, i32* %6, align 4, !dbg !1319
  %563 = call i32 (i32, i64, ...) @ioctl(i32 %562, i64 21531, i32* %11) #7, !dbg !1320
  %564 = load i32, i32* %11, align 4, !dbg !1321
  %565 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1323
  %566 = getelementptr inbounds %struct.stream, %struct.stream* %565, i32 0, i32 0, !dbg !1324
  %567 = load i8*, i8** %566, align 8, !dbg !1324
  %568 = bitcast i8* %567 to i32*, !dbg !1325
  store i32 %564, i32* %568, align 4, !dbg !1326
  %569 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1327
  %570 = getelementptr inbounds %struct.stream, %struct.stream* %569, i32 0, i32 0, !dbg !1328
  %571 = load i8*, i8** %570, align 8, !dbg !1329
  %572 = getelementptr inbounds i8, i8* %571, i64 4, !dbg !1329
  store i8* %572, i8** %570, align 8, !dbg !1329
  %573 = load i32, i32* %11, align 4, !dbg !1330
  %574 = icmp ne i32 %573, 0, !dbg !1330
  br i1 %574, label %575, label %577, !dbg !1332

; <label>:575:                                    ; preds = %545
  %576 = load i32, i32* %11, align 4, !dbg !1333
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.37, i32 0, i32 0), i32 %576), !dbg !1334
  br label %577, !dbg !1334

; <label>:577:                                    ; preds = %575, %545
  store i32 0, i32* %11, align 4, !dbg !1335
  %578 = load i32, i32* %6, align 4, !dbg !1336
  %579 = call i32 (i32, i64, ...) @ioctl(i32 %578, i64 21521, i32* %11) #7, !dbg !1337
  %580 = load i32, i32* %11, align 4, !dbg !1338
  %581 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1340
  %582 = getelementptr inbounds %struct.stream, %struct.stream* %581, i32 0, i32 0, !dbg !1341
  %583 = load i8*, i8** %582, align 8, !dbg !1341
  %584 = bitcast i8* %583 to i32*, !dbg !1342
  store i32 %580, i32* %584, align 4, !dbg !1343
  %585 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1344
  %586 = getelementptr inbounds %struct.stream, %struct.stream* %585, i32 0, i32 0, !dbg !1345
  %587 = load i8*, i8** %586, align 8, !dbg !1346
  %588 = getelementptr inbounds i8, i8* %587, i64 4, !dbg !1346
  store i8* %588, i8** %586, align 8, !dbg !1346
  %589 = load i32, i32* %11, align 4, !dbg !1347
  %590 = icmp ne i32 %589, 0, !dbg !1347
  br i1 %590, label %591, label %593, !dbg !1349

; <label>:591:                                    ; preds = %577
  %592 = load i32, i32* %11, align 4, !dbg !1350
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.38, i32 0, i32 0), i32 %592), !dbg !1351
  br label %593, !dbg !1351

; <label>:593:                                    ; preds = %591, %577
  %594 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1352
  %595 = getelementptr inbounds %struct.stream, %struct.stream* %594, i32 0, i32 0, !dbg !1353
  %596 = load i8*, i8** %595, align 8, !dbg !1354
  %597 = getelementptr inbounds i8, i8* %596, i32 1, !dbg !1354
  store i8* %597, i8** %595, align 8, !dbg !1354
  store i8 0, i8* %596, align 1, !dbg !1355
  %598 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1356
  %599 = getelementptr inbounds %struct.stream, %struct.stream* %598, i32 0, i32 0, !dbg !1357
  %600 = load i8*, i8** %599, align 8, !dbg !1358
  %601 = getelementptr inbounds i8, i8* %600, i32 1, !dbg !1358
  store i8* %601, i8** %599, align 8, !dbg !1358
  store i8 0, i8* %600, align 1, !dbg !1359
  br label %686, !dbg !1360

; <label>:602:                                    ; preds = %19
  %603 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1361
  %604 = getelementptr inbounds %struct.stream, %struct.stream* %603, i32 0, i32 0, !dbg !1363
  %605 = load i8*, i8** %604, align 8, !dbg !1363
  %606 = bitcast i8* %605 to i32*, !dbg !1364
  %607 = load i32, i32* %606, align 4, !dbg !1364
  store i32 %607, i32* %10, align 4, !dbg !1365
  %608 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1366
  %609 = getelementptr inbounds %struct.stream, %struct.stream* %608, i32 0, i32 0, !dbg !1367
  %610 = load i8*, i8** %609, align 8, !dbg !1368
  %611 = getelementptr inbounds i8, i8* %610, i64 4, !dbg !1368
  store i8* %611, i8** %609, align 8, !dbg !1368
  %612 = load i32, i32* %10, align 4, !dbg !1369
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i32 0, i32 0), i32 %612), !dbg !1370
  %613 = load i32, i32* %10, align 4, !dbg !1371
  %614 = and i32 %613, 4, !dbg !1373
  %615 = icmp ne i32 %614, 0, !dbg !1373
  br i1 %615, label %616, label %623, !dbg !1374

; <label>:616:                                    ; preds = %602
  %617 = load i32, i32* %10, align 4, !dbg !1375
  %618 = and i32 %617, 8, !dbg !1377
  %619 = icmp ne i32 %618, 0, !dbg !1377
  br i1 %619, label %620, label %623, !dbg !1378

; <label>:620:                                    ; preds = %616
  %621 = load i32, i32* %6, align 4, !dbg !1380
  %622 = call i32 @tcflush(i32 %621, i32 2) #7, !dbg !1381
  br label %639, !dbg !1381

; <label>:623:                                    ; preds = %616, %602
  %624 = load i32, i32* %10, align 4, !dbg !1382
  %625 = and i32 %624, 4, !dbg !1384
  %626 = icmp ne i32 %625, 0, !dbg !1384
  br i1 %626, label %627, label %630, !dbg !1385

; <label>:627:                                    ; preds = %623
  %628 = load i32, i32* %6, align 4, !dbg !1386
  %629 = call i32 @tcflush(i32 %628, i32 1) #7, !dbg !1387
  br label %638, !dbg !1387

; <label>:630:                                    ; preds = %623
  %631 = load i32, i32* %10, align 4, !dbg !1388
  %632 = and i32 %631, 8, !dbg !1390
  %633 = icmp ne i32 %632, 0, !dbg !1390
  br i1 %633, label %634, label %637, !dbg !1391

; <label>:634:                                    ; preds = %630
  %635 = load i32, i32* %6, align 4, !dbg !1392
  %636 = call i32 @tcflush(i32 %635, i32 0) #7, !dbg !1393
  br label %637, !dbg !1393

; <label>:637:                                    ; preds = %634, %630
  br label %638

; <label>:638:                                    ; preds = %637, %627
  br label %639

; <label>:639:                                    ; preds = %638, %620
  %640 = load i32, i32* %10, align 4, !dbg !1394
  %641 = and i32 %640, 1, !dbg !1396
  %642 = icmp ne i32 %641, 0, !dbg !1396
  br i1 %642, label %643, label %646, !dbg !1397

; <label>:643:                                    ; preds = %639
  %644 = load i32, i32* %6, align 4, !dbg !1398
  %645 = call i32 @rdpdr_abort_io(i32 %644, i32 4, i32 -1073741536), !dbg !1399
  br label %646, !dbg !1399

; <label>:646:                                    ; preds = %643, %639
  %647 = load i32, i32* %10, align 4, !dbg !1400
  %648 = and i32 %647, 2, !dbg !1402
  %649 = icmp ne i32 %648, 0, !dbg !1402
  br i1 %649, label %650, label %653, !dbg !1403

; <label>:650:                                    ; preds = %646
  %651 = load i32, i32* %6, align 4, !dbg !1404
  %652 = call i32 @rdpdr_abort_io(i32 %651, i32 3, i32 -1073741536), !dbg !1405
  br label %653, !dbg !1405

; <label>:653:                                    ; preds = %650, %646
  br label %686, !dbg !1406

; <label>:654:                                    ; preds = %19
  %655 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1407
  %656 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %655, i32 0, i32 9, !dbg !1408
  %657 = load i32, i32* %656, align 4, !dbg !1408
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.40, i32 0, i32 0), i32 %657), !dbg !1409
  %658 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %14, align 8, !dbg !1410
  %659 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %658, i32 0, i32 26, !dbg !1411
  store i32 1, i32* %659, align 8, !dbg !1412
  %660 = load i32, i32* %6, align 4, !dbg !1413
  %661 = call i32 @serial_get_event(i32 %660, i32* %11), !dbg !1415
  %662 = icmp ne i32 %661, 0, !dbg !1415
  br i1 %662, label %663, label %674, !dbg !1416

; <label>:663:                                    ; preds = %654
  %664 = load i32, i32* %11, align 4, !dbg !1417
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.41, i32 0, i32 0), i32 %664), !dbg !1419
  %665 = load i32, i32* %11, align 4, !dbg !1420
  %666 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1422
  %667 = getelementptr inbounds %struct.stream, %struct.stream* %666, i32 0, i32 0, !dbg !1423
  %668 = load i8*, i8** %667, align 8, !dbg !1423
  %669 = bitcast i8* %668 to i32*, !dbg !1424
  store i32 %665, i32* %669, align 4, !dbg !1425
  %670 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !1426
  %671 = getelementptr inbounds %struct.stream, %struct.stream* %670, i32 0, i32 0, !dbg !1427
  %672 = load i8*, i8** %671, align 8, !dbg !1428
  %673 = getelementptr inbounds i8, i8* %672, i64 4, !dbg !1428
  store i8* %673, i8** %671, align 8, !dbg !1428
  br label %686, !dbg !1429

; <label>:674:                                    ; preds = %654
  store i32 259, i32* %5, align 4, !dbg !1430
  br label %687, !dbg !1430

; <label>:675:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0)), !dbg !1431
  %676 = load i32, i32* %6, align 4, !dbg !1432
  %677 = call i32 @tcsendbreak(i32 %676, i32 0) #7, !dbg !1433
  br label %686, !dbg !1434

; <label>:678:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0)), !dbg !1435
  br label %686, !dbg !1436

; <label>:679:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0)), !dbg !1437
  br label %686, !dbg !1438

; <label>:680:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0)), !dbg !1439
  br label %686, !dbg !1440

; <label>:681:                                    ; preds = %19
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0)), !dbg !1441
  %682 = load i32, i32* %6, align 4, !dbg !1442
  %683 = call i32 @tcflow(i32 %682, i32 3) #7, !dbg !1443
  br label %686, !dbg !1444

; <label>:684:                                    ; preds = %19
  %685 = load i32, i32* %7, align 4, !dbg !1445
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.47, i32 0, i32 0), i32 %685), !dbg !1446
  store i32 -1073741811, i32* %5, align 4, !dbg !1447
  br label %687, !dbg !1447

; <label>:686:                                    ; preds = %681, %680, %679, %678, %675, %663, %653, %593, %534, %481, %472, %463, %454, %439, %424, %359, %294, %235, %187, %174, %163, %154, %146, %124, %88, %59, %44, %27
  store i32 0, i32* %5, align 4, !dbg !1448
  br label %687, !dbg !1448

; <label>:687:                                    ; preds = %686, %684, %674, %18
  %688 = load i32, i32* %5, align 4, !dbg !1449
  ret i32 %688, !dbg !1449
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind uwtable
define internal i32 @get_termios(%struct.rdpdr_serial_device_info*, i32) #0 !dbg !1450 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdpdr_serial_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.termios*, align 8
  store %struct.rdpdr_serial_device_info* %0, %struct.rdpdr_serial_device_info** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rdpdr_serial_device_info** %4, metadata !1453, metadata !135), !dbg !1454
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1455, metadata !135), !dbg !1456
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1457, metadata !135), !dbg !1458
  call void @llvm.dbg.declare(metadata %struct.termios** %7, metadata !1459, metadata !135), !dbg !1460
  %8 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1461
  %9 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %8, i32 0, i32 20, !dbg !1462
  %10 = load %struct.termios*, %struct.termios** %9, align 8, !dbg !1462
  store %struct.termios* %10, %struct.termios** %7, align 8, !dbg !1463
  %11 = load i32, i32* %5, align 4, !dbg !1464
  %12 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1466
  %13 = call i32 @tcgetattr(i32 %11, %struct.termios* %12) #7, !dbg !1467
  %14 = icmp eq i32 %13, -1, !dbg !1468
  br i1 %14, label %15, label %16, !dbg !1469

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1470
  br label %197, !dbg !1470

; <label>:16:                                     ; preds = %2
  %17 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1471
  %18 = call i32 @cfgetispeed(%struct.termios* %17) #7, !dbg !1472
  store i32 %18, i32* %6, align 4, !dbg !1473
  %19 = load i32, i32* %6, align 4, !dbg !1474
  switch i32 %19, label %71 [
    i32 2, label %20
    i32 3, label %23
    i32 4, label %26
    i32 5, label %29
    i32 7, label %32
    i32 8, label %35
    i32 9, label %38
    i32 10, label %41
    i32 11, label %44
    i32 12, label %47
    i32 13, label %50
    i32 14, label %53
    i32 15, label %56
    i32 4097, label %59
    i32 4098, label %62
    i32 4099, label %65
    i32 4100, label %68
  ], !dbg !1475

; <label>:20:                                     ; preds = %16
  %21 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1476
  %22 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %21, i32 0, i32 6, !dbg !1478
  store i32 75, i32* %22, align 8, !dbg !1479
  br label %74, !dbg !1480

; <label>:23:                                     ; preds = %16
  %24 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1481
  %25 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %24, i32 0, i32 6, !dbg !1482
  store i32 110, i32* %25, align 8, !dbg !1483
  br label %74, !dbg !1484

; <label>:26:                                     ; preds = %16
  %27 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1485
  %28 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %27, i32 0, i32 6, !dbg !1486
  store i32 134, i32* %28, align 8, !dbg !1487
  br label %74, !dbg !1488

; <label>:29:                                     ; preds = %16
  %30 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1489
  %31 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %30, i32 0, i32 6, !dbg !1490
  store i32 150, i32* %31, align 8, !dbg !1491
  br label %74, !dbg !1492

; <label>:32:                                     ; preds = %16
  %33 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1493
  %34 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %33, i32 0, i32 6, !dbg !1494
  store i32 300, i32* %34, align 8, !dbg !1495
  br label %74, !dbg !1496

; <label>:35:                                     ; preds = %16
  %36 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1497
  %37 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %36, i32 0, i32 6, !dbg !1498
  store i32 600, i32* %37, align 8, !dbg !1499
  br label %74, !dbg !1500

; <label>:38:                                     ; preds = %16
  %39 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1501
  %40 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %39, i32 0, i32 6, !dbg !1502
  store i32 1200, i32* %40, align 8, !dbg !1503
  br label %74, !dbg !1504

; <label>:41:                                     ; preds = %16
  %42 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1505
  %43 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %42, i32 0, i32 6, !dbg !1506
  store i32 1800, i32* %43, align 8, !dbg !1507
  br label %74, !dbg !1508

; <label>:44:                                     ; preds = %16
  %45 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1509
  %46 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %45, i32 0, i32 6, !dbg !1510
  store i32 2400, i32* %46, align 8, !dbg !1511
  br label %74, !dbg !1512

; <label>:47:                                     ; preds = %16
  %48 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1513
  %49 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %48, i32 0, i32 6, !dbg !1514
  store i32 4800, i32* %49, align 8, !dbg !1515
  br label %74, !dbg !1516

; <label>:50:                                     ; preds = %16
  %51 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1517
  %52 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %51, i32 0, i32 6, !dbg !1518
  store i32 9600, i32* %52, align 8, !dbg !1519
  br label %74, !dbg !1520

; <label>:53:                                     ; preds = %16
  %54 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1521
  %55 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %54, i32 0, i32 6, !dbg !1522
  store i32 19200, i32* %55, align 8, !dbg !1523
  br label %74, !dbg !1524

; <label>:56:                                     ; preds = %16
  %57 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1525
  %58 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %57, i32 0, i32 6, !dbg !1526
  store i32 38400, i32* %58, align 8, !dbg !1527
  br label %74, !dbg !1528

; <label>:59:                                     ; preds = %16
  %60 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1529
  %61 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %60, i32 0, i32 6, !dbg !1530
  store i32 57600, i32* %61, align 8, !dbg !1531
  br label %74, !dbg !1532

; <label>:62:                                     ; preds = %16
  %63 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1533
  %64 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %63, i32 0, i32 6, !dbg !1534
  store i32 115200, i32* %64, align 8, !dbg !1535
  br label %74, !dbg !1536

; <label>:65:                                     ; preds = %16
  %66 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1537
  %67 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %66, i32 0, i32 6, !dbg !1538
  store i32 230400, i32* %67, align 8, !dbg !1539
  br label %74, !dbg !1540

; <label>:68:                                     ; preds = %16
  %69 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1541
  %70 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %69, i32 0, i32 6, !dbg !1542
  store i32 460800, i32* %70, align 8, !dbg !1543
  br label %74, !dbg !1544

; <label>:71:                                     ; preds = %16
  %72 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1545
  %73 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %72, i32 0, i32 6, !dbg !1546
  store i32 9600, i32* %73, align 8, !dbg !1547
  br label %74, !dbg !1548

; <label>:74:                                     ; preds = %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20
  %75 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1549
  %76 = call i32 @cfgetospeed(%struct.termios* %75) #7, !dbg !1550
  store i32 %76, i32* %6, align 4, !dbg !1551
  %77 = load i32, i32* %6, align 4, !dbg !1552
  %78 = icmp eq i32 %77, 0, !dbg !1553
  %79 = select i1 %78, i32 0, i32 1, !dbg !1554
  %80 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1555
  %81 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %80, i32 0, i32 0, !dbg !1556
  store i32 %79, i32* %81, align 8, !dbg !1557
  %82 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1558
  %83 = getelementptr inbounds %struct.termios, %struct.termios* %82, i32 0, i32 2, !dbg !1559
  %84 = load i32, i32* %83, align 4, !dbg !1559
  %85 = and i32 %84, 64, !dbg !1560
  %86 = icmp ne i32 %85, 0, !dbg !1561
  %87 = select i1 %86, i32 2, i32 0, !dbg !1561
  %88 = trunc i32 %87 to i8, !dbg !1561
  %89 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1562
  %90 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %89, i32 0, i32 16, !dbg !1563
  store i8 %88, i8* %90, align 8, !dbg !1564
  %91 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1565
  %92 = getelementptr inbounds %struct.termios, %struct.termios* %91, i32 0, i32 2, !dbg !1566
  %93 = load i32, i32* %92, align 4, !dbg !1566
  %94 = and i32 %93, 256, !dbg !1567
  %95 = icmp ne i32 %94, 0, !dbg !1567
  br i1 %95, label %96, label %103, !dbg !1568

; <label>:96:                                     ; preds = %74
  %97 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1569
  %98 = getelementptr inbounds %struct.termios, %struct.termios* %97, i32 0, i32 2, !dbg !1571
  %99 = load i32, i32* %98, align 4, !dbg !1571
  %100 = and i32 %99, 512, !dbg !1572
  %101 = icmp ne i32 %100, 0, !dbg !1573
  %102 = select i1 %101, i32 1, i32 2, !dbg !1573
  br label %104, !dbg !1574

; <label>:103:                                    ; preds = %74
  br label %104, !dbg !1575

; <label>:104:                                    ; preds = %103, %96
  %105 = phi i32 [ %102, %96 ], [ 0, %103 ], !dbg !1577
  %106 = trunc i32 %105 to i8, !dbg !1577
  %107 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1579
  %108 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %107, i32 0, i32 17, !dbg !1580
  store i8 %106, i8* %108, align 1, !dbg !1581
  %109 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1582
  %110 = getelementptr inbounds %struct.termios, %struct.termios* %109, i32 0, i32 2, !dbg !1583
  %111 = load i32, i32* %110, align 4, !dbg !1583
  %112 = and i32 %111, 48, !dbg !1584
  switch i32 %112, label %122 [
    i32 0, label %113
    i32 16, label %116
    i32 32, label %119
  ], !dbg !1585

; <label>:113:                                    ; preds = %104
  %114 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1586
  %115 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %114, i32 0, i32 18, !dbg !1588
  store i8 5, i8* %115, align 2, !dbg !1589
  br label %125, !dbg !1590

; <label>:116:                                    ; preds = %104
  %117 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1591
  %118 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %117, i32 0, i32 18, !dbg !1592
  store i8 6, i8* %118, align 2, !dbg !1593
  br label %125, !dbg !1594

; <label>:119:                                    ; preds = %104
  %120 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1595
  %121 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %120, i32 0, i32 18, !dbg !1596
  store i8 7, i8* %121, align 2, !dbg !1597
  br label %125, !dbg !1598

; <label>:122:                                    ; preds = %104
  %123 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1599
  %124 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %123, i32 0, i32 18, !dbg !1600
  store i8 8, i8* %124, align 2, !dbg !1601
  br label %125, !dbg !1602

; <label>:125:                                    ; preds = %122, %119, %116, %113
  %126 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1603
  %127 = getelementptr inbounds %struct.termios, %struct.termios* %126, i32 0, i32 2, !dbg !1605
  %128 = load i32, i32* %127, align 4, !dbg !1605
  %129 = and i32 %128, -2147483648, !dbg !1606
  %130 = icmp ne i32 %129, 0, !dbg !1606
  br i1 %130, label %131, label %134, !dbg !1607

; <label>:131:                                    ; preds = %125
  %132 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1608
  %133 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %132, i32 0, i32 2, !dbg !1610
  store i32 -2147483639, i32* %133, align 8, !dbg !1611
  br label %137, !dbg !1612

; <label>:134:                                    ; preds = %125
  %135 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1613
  %136 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %135, i32 0, i32 2, !dbg !1615
  store i32 -2147483647, i32* %136, align 8, !dbg !1616
  br label %137

; <label>:137:                                    ; preds = %134, %131
  %138 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1617
  %139 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %138, i32 0, i32 3, !dbg !1618
  store i32 64, i32* %139, align 4, !dbg !1619
  %140 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1620
  %141 = getelementptr inbounds %struct.termios, %struct.termios* %140, i32 0, i32 0, !dbg !1622
  %142 = load i32, i32* %141, align 4, !dbg !1622
  %143 = and i32 %142, 1024, !dbg !1623
  %144 = icmp ne i32 %143, 0, !dbg !1623
  br i1 %144, label %145, label %150, !dbg !1624

; <label>:145:                                    ; preds = %137
  %146 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1625
  %147 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %146, i32 0, i32 3, !dbg !1626
  %148 = load i32, i32* %147, align 4, !dbg !1627
  %149 = or i32 %148, 1, !dbg !1627
  store i32 %149, i32* %147, align 4, !dbg !1627
  br label %150, !dbg !1625

; <label>:150:                                    ; preds = %145, %137
  %151 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1628
  %152 = getelementptr inbounds %struct.termios, %struct.termios* %151, i32 0, i32 0, !dbg !1630
  %153 = load i32, i32* %152, align 4, !dbg !1630
  %154 = and i32 %153, 4096, !dbg !1631
  %155 = icmp ne i32 %154, 0, !dbg !1631
  br i1 %155, label %156, label %161, !dbg !1632

; <label>:156:                                    ; preds = %150
  %157 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1633
  %158 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %157, i32 0, i32 3, !dbg !1634
  %159 = load i32, i32* %158, align 4, !dbg !1635
  %160 = or i32 %159, 2, !dbg !1635
  store i32 %160, i32* %158, align 4, !dbg !1635
  br label %161, !dbg !1633

; <label>:161:                                    ; preds = %156, %150
  %162 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1636
  %163 = getelementptr inbounds %struct.termios, %struct.termios* %162, i32 0, i32 5, !dbg !1637
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %163, i64 0, i64 8, !dbg !1636
  %165 = load i8, i8* %164, align 1, !dbg !1636
  %166 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1638
  %167 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %166, i32 0, i32 19, !dbg !1639
  %168 = getelementptr inbounds [6 x i8], [6 x i8]* %167, i64 0, i64 4, !dbg !1638
  store i8 %165, i8* %168, align 1, !dbg !1640
  %169 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1641
  %170 = getelementptr inbounds %struct.termios, %struct.termios* %169, i32 0, i32 5, !dbg !1642
  %171 = getelementptr inbounds [32 x i8], [32 x i8]* %170, i64 0, i64 9, !dbg !1641
  %172 = load i8, i8* %171, align 1, !dbg !1641
  %173 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1643
  %174 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %173, i32 0, i32 19, !dbg !1644
  %175 = getelementptr inbounds [6 x i8], [6 x i8]* %174, i64 0, i64 5, !dbg !1643
  store i8 %172, i8* %175, align 1, !dbg !1645
  %176 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1646
  %177 = getelementptr inbounds %struct.termios, %struct.termios* %176, i32 0, i32 5, !dbg !1647
  %178 = getelementptr inbounds [32 x i8], [32 x i8]* %177, i64 0, i64 4, !dbg !1646
  %179 = load i8, i8* %178, align 1, !dbg !1646
  %180 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1648
  %181 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %180, i32 0, i32 19, !dbg !1649
  %182 = getelementptr inbounds [6 x i8], [6 x i8]* %181, i64 0, i64 0, !dbg !1648
  store i8 %179, i8* %182, align 1, !dbg !1650
  %183 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1651
  %184 = getelementptr inbounds %struct.termios, %struct.termios* %183, i32 0, i32 5, !dbg !1652
  %185 = getelementptr inbounds [32 x i8], [32 x i8]* %184, i64 0, i64 0, !dbg !1651
  %186 = load i8, i8* %185, align 1, !dbg !1651
  %187 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1653
  %188 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %187, i32 0, i32 19, !dbg !1654
  %189 = getelementptr inbounds [6 x i8], [6 x i8]* %188, i64 0, i64 2, !dbg !1653
  store i8 %186, i8* %189, align 1, !dbg !1655
  %190 = load %struct.termios*, %struct.termios** %7, align 8, !dbg !1656
  %191 = getelementptr inbounds %struct.termios, %struct.termios* %190, i32 0, i32 5, !dbg !1657
  %192 = getelementptr inbounds [32 x i8], [32 x i8]* %191, i64 0, i64 3, !dbg !1656
  %193 = load i8, i8* %192, align 1, !dbg !1656
  %194 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %4, align 8, !dbg !1658
  %195 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %194, i32 0, i32 19, !dbg !1659
  %196 = getelementptr inbounds [6 x i8], [6 x i8]* %195, i64 0, i64 1, !dbg !1658
  store i8 %193, i8* %196, align 1, !dbg !1660
  store i32 1, i32* %3, align 4, !dbg !1661
  br label %197, !dbg !1661

; <label>:197:                                    ; preds = %161, %15
  %198 = load i32, i32* %3, align 4, !dbg !1662
  ret i32 %198, !dbg !1662
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @tcsetattr(i32, i32, %struct.termios*) #4

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind
declare i32 @tcgetattr(i32, %struct.termios*) #4

; Function Attrs: nounwind
declare i32 @cfgetispeed(%struct.termios*) #4

; Function Attrs: nounwind
declare i32 @cfgetospeed(%struct.termios*) #4

declare i32 @rdpdr_abort_io(i32, i32, i32) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.rdpdr_serial_device_info* @get_serial_info(i32) #0 !dbg !1663 {
  %2 = alloca %struct.rdpdr_serial_device_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1666, metadata !135), !dbg !1667
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1668, metadata !135), !dbg !1669
  store i32 0, i32* %4, align 4, !dbg !1670
  br label %5, !dbg !1672

; <label>:5:                                      ; preds = %24, %1
  %6 = load i32, i32* %4, align 4, !dbg !1673
  %7 = icmp slt i32 %6, 16, !dbg !1676
  br i1 %7, label %8, label %27, !dbg !1677

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %3, align 4, !dbg !1678
  %10 = load i32, i32* %4, align 4, !dbg !1681
  %11 = sext i32 %10 to i64, !dbg !1682
  %12 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %11, !dbg !1682
  %13 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %12, i32 0, i32 1, !dbg !1683
  %14 = load i32, i32* %13, align 4, !dbg !1683
  %15 = icmp eq i32 %9, %14, !dbg !1684
  br i1 %15, label %16, label %23, !dbg !1685

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* %4, align 4, !dbg !1686
  %18 = sext i32 %17 to i64, !dbg !1687
  %19 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %18, !dbg !1687
  %20 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %19, i32 0, i32 4, !dbg !1688
  %21 = load i8*, i8** %20, align 8, !dbg !1688
  %22 = bitcast i8* %21 to %struct.rdpdr_serial_device_info*, !dbg !1689
  store %struct.rdpdr_serial_device_info* %22, %struct.rdpdr_serial_device_info** %2, align 8, !dbg !1690
  br label %28, !dbg !1690

; <label>:23:                                     ; preds = %8
  br label %24, !dbg !1691

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %4, align 4, !dbg !1692
  %26 = add nsw i32 %25, 1, !dbg !1692
  store i32 %26, i32* %4, align 4, !dbg !1692
  br label %5, !dbg !1694, !llvm.loop !1695

; <label>:27:                                     ; preds = %5
  store %struct.rdpdr_serial_device_info* null, %struct.rdpdr_serial_device_info** %2, align 8, !dbg !1697
  br label %28, !dbg !1697

; <label>:28:                                     ; preds = %27, %16
  %29 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %2, align 8, !dbg !1698
  ret %struct.rdpdr_serial_device_info* %29, !dbg !1698
}

declare i64 @read(i32, i8*, i64) #2

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @set_termios(%struct.rdpdr_serial_device_info*, i32) #0 !dbg !1699 {
  %3 = alloca %struct.rdpdr_serial_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.termios*, align 8
  store %struct.rdpdr_serial_device_info* %0, %struct.rdpdr_serial_device_info** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rdpdr_serial_device_info** %3, metadata !1702, metadata !135), !dbg !1703
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1704, metadata !135), !dbg !1705
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1706, metadata !135), !dbg !1707
  call void @llvm.dbg.declare(metadata %struct.termios** %6, metadata !1708, metadata !135), !dbg !1709
  %7 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1710
  %8 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %7, i32 0, i32 20, !dbg !1711
  %9 = load %struct.termios*, %struct.termios** %8, align 8, !dbg !1711
  store %struct.termios* %9, %struct.termios** %6, align 8, !dbg !1712
  %10 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1713
  %11 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %10, i32 0, i32 6, !dbg !1714
  %12 = load i32, i32* %11, align 8, !dbg !1714
  switch i32 %12, label %30 [
    i32 75, label %13
    i32 110, label %14
    i32 134, label %15
    i32 150, label %16
    i32 300, label %17
    i32 600, label %18
    i32 1200, label %19
    i32 1800, label %20
    i32 2400, label %21
    i32 4800, label %22
    i32 9600, label %23
    i32 19200, label %24
    i32 38400, label %25
    i32 57600, label %26
    i32 115200, label %27
    i32 230400, label %28
    i32 460800, label %29
  ], !dbg !1715

; <label>:13:                                     ; preds = %2
  store i32 2, i32* %5, align 4, !dbg !1716
  br label %31, !dbg !1718

; <label>:14:                                     ; preds = %2
  store i32 3, i32* %5, align 4, !dbg !1719
  br label %31, !dbg !1720

; <label>:15:                                     ; preds = %2
  store i32 4, i32* %5, align 4, !dbg !1721
  br label %31, !dbg !1722

; <label>:16:                                     ; preds = %2
  store i32 5, i32* %5, align 4, !dbg !1723
  br label %31, !dbg !1724

; <label>:17:                                     ; preds = %2
  store i32 7, i32* %5, align 4, !dbg !1725
  br label %31, !dbg !1726

; <label>:18:                                     ; preds = %2
  store i32 8, i32* %5, align 4, !dbg !1727
  br label %31, !dbg !1728

; <label>:19:                                     ; preds = %2
  store i32 9, i32* %5, align 4, !dbg !1729
  br label %31, !dbg !1730

; <label>:20:                                     ; preds = %2
  store i32 10, i32* %5, align 4, !dbg !1731
  br label %31, !dbg !1732

; <label>:21:                                     ; preds = %2
  store i32 11, i32* %5, align 4, !dbg !1733
  br label %31, !dbg !1734

; <label>:22:                                     ; preds = %2
  store i32 12, i32* %5, align 4, !dbg !1735
  br label %31, !dbg !1736

; <label>:23:                                     ; preds = %2
  store i32 13, i32* %5, align 4, !dbg !1737
  br label %31, !dbg !1738

; <label>:24:                                     ; preds = %2
  store i32 14, i32* %5, align 4, !dbg !1739
  br label %31, !dbg !1740

; <label>:25:                                     ; preds = %2
  store i32 15, i32* %5, align 4, !dbg !1741
  br label %31, !dbg !1742

; <label>:26:                                     ; preds = %2
  store i32 4097, i32* %5, align 4, !dbg !1743
  br label %31, !dbg !1744

; <label>:27:                                     ; preds = %2
  store i32 4098, i32* %5, align 4, !dbg !1745
  br label %31, !dbg !1746

; <label>:28:                                     ; preds = %2
  store i32 4098, i32* %5, align 4, !dbg !1747
  br label %31, !dbg !1748

; <label>:29:                                     ; preds = %2
  store i32 4098, i32* %5, align 4, !dbg !1749
  br label %31, !dbg !1750

; <label>:30:                                     ; preds = %2
  store i32 13, i32* %5, align 4, !dbg !1751
  br label %31, !dbg !1752

; <label>:31:                                     ; preds = %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13
  %32 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1753
  %33 = getelementptr inbounds %struct.termios, %struct.termios* %32, i32 0, i32 2, !dbg !1754
  %34 = load i32, i32* %33, align 4, !dbg !1755
  %35 = and i32 %34, -4112, !dbg !1755
  store i32 %35, i32* %33, align 4, !dbg !1755
  %36 = load i32, i32* %5, align 4, !dbg !1756
  %37 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1757
  %38 = getelementptr inbounds %struct.termios, %struct.termios* %37, i32 0, i32 2, !dbg !1758
  %39 = load i32, i32* %38, align 4, !dbg !1759
  %40 = or i32 %39, %36, !dbg !1759
  store i32 %40, i32* %38, align 4, !dbg !1759
  %41 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1760
  %42 = getelementptr inbounds %struct.termios, %struct.termios* %41, i32 0, i32 2, !dbg !1761
  %43 = load i32, i32* %42, align 4, !dbg !1762
  %44 = and i32 %43, 2147482767, !dbg !1762
  store i32 %44, i32* %42, align 4, !dbg !1762
  %45 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1763
  %46 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %45, i32 0, i32 16, !dbg !1764
  %47 = load i8, i8* %46, align 8, !dbg !1764
  %48 = zext i8 %47 to i32, !dbg !1763
  switch i32 %48, label %54 [
    i32 2, label %49
  ], !dbg !1765

; <label>:49:                                     ; preds = %31
  %50 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1766
  %51 = getelementptr inbounds %struct.termios, %struct.termios* %50, i32 0, i32 2, !dbg !1768
  %52 = load i32, i32* %51, align 4, !dbg !1769
  %53 = or i32 %52, 64, !dbg !1769
  store i32 %53, i32* %51, align 4, !dbg !1769
  br label %59, !dbg !1770

; <label>:54:                                     ; preds = %31
  %55 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1771
  %56 = getelementptr inbounds %struct.termios, %struct.termios* %55, i32 0, i32 2, !dbg !1772
  %57 = load i32, i32* %56, align 4, !dbg !1773
  %58 = and i32 %57, -65, !dbg !1773
  store i32 %58, i32* %56, align 4, !dbg !1773
  br label %59, !dbg !1774

; <label>:59:                                     ; preds = %54, %49
  %60 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1775
  %61 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %60, i32 0, i32 17, !dbg !1776
  %62 = load i8, i8* %61, align 1, !dbg !1776
  %63 = zext i8 %62 to i32, !dbg !1775
  switch i32 %63, label %79 [
    i32 2, label %64
    i32 1, label %69
    i32 0, label %74
  ], !dbg !1777

; <label>:64:                                     ; preds = %59
  %65 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1778
  %66 = getelementptr inbounds %struct.termios, %struct.termios* %65, i32 0, i32 2, !dbg !1780
  %67 = load i32, i32* %66, align 4, !dbg !1781
  %68 = or i32 %67, 256, !dbg !1781
  store i32 %68, i32* %66, align 4, !dbg !1781
  br label %79, !dbg !1782

; <label>:69:                                     ; preds = %59
  %70 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1783
  %71 = getelementptr inbounds %struct.termios, %struct.termios* %70, i32 0, i32 2, !dbg !1784
  %72 = load i32, i32* %71, align 4, !dbg !1785
  %73 = or i32 %72, 768, !dbg !1785
  store i32 %73, i32* %71, align 4, !dbg !1785
  br label %79, !dbg !1786

; <label>:74:                                     ; preds = %59
  %75 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1787
  %76 = getelementptr inbounds %struct.termios, %struct.termios* %75, i32 0, i32 2, !dbg !1788
  %77 = load i32, i32* %76, align 4, !dbg !1789
  %78 = and i32 %77, -769, !dbg !1789
  store i32 %78, i32* %76, align 4, !dbg !1789
  br label %79, !dbg !1790

; <label>:79:                                     ; preds = %59, %74, %69, %64
  %80 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1791
  %81 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %80, i32 0, i32 18, !dbg !1792
  %82 = load i8, i8* %81, align 2, !dbg !1792
  %83 = zext i8 %82 to i32, !dbg !1791
  switch i32 %83, label %98 [
    i32 5, label %84
    i32 6, label %88
    i32 7, label %93
  ], !dbg !1793

; <label>:84:                                     ; preds = %79
  %85 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1794
  %86 = getelementptr inbounds %struct.termios, %struct.termios* %85, i32 0, i32 2, !dbg !1796
  %87 = load i32, i32* %86, align 4, !dbg !1797
  store i32 %87, i32* %86, align 4, !dbg !1797
  br label %103, !dbg !1798

; <label>:88:                                     ; preds = %79
  %89 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1799
  %90 = getelementptr inbounds %struct.termios, %struct.termios* %89, i32 0, i32 2, !dbg !1800
  %91 = load i32, i32* %90, align 4, !dbg !1801
  %92 = or i32 %91, 16, !dbg !1801
  store i32 %92, i32* %90, align 4, !dbg !1801
  br label %103, !dbg !1802

; <label>:93:                                     ; preds = %79
  %94 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1803
  %95 = getelementptr inbounds %struct.termios, %struct.termios* %94, i32 0, i32 2, !dbg !1804
  %96 = load i32, i32* %95, align 4, !dbg !1805
  %97 = or i32 %96, 32, !dbg !1805
  store i32 %97, i32* %95, align 4, !dbg !1805
  br label %103, !dbg !1806

; <label>:98:                                     ; preds = %79
  %99 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1807
  %100 = getelementptr inbounds %struct.termios, %struct.termios* %99, i32 0, i32 2, !dbg !1808
  %101 = load i32, i32* %100, align 4, !dbg !1809
  %102 = or i32 %101, 48, !dbg !1809
  store i32 %102, i32* %100, align 4, !dbg !1809
  br label %103, !dbg !1810

; <label>:103:                                    ; preds = %98, %93, %88, %84
  %104 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1811
  %105 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %104, i32 0, i32 2, !dbg !1813
  %106 = load i32, i32* %105, align 8, !dbg !1813
  %107 = and i32 %106, 8, !dbg !1814
  %108 = icmp ne i32 %107, 0, !dbg !1814
  br i1 %108, label %109, label %114, !dbg !1815

; <label>:109:                                    ; preds = %103
  %110 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1816
  %111 = getelementptr inbounds %struct.termios, %struct.termios* %110, i32 0, i32 2, !dbg !1818
  %112 = load i32, i32* %111, align 4, !dbg !1819
  %113 = or i32 %112, -2147483648, !dbg !1819
  store i32 %113, i32* %111, align 4, !dbg !1819
  br label %119, !dbg !1820

; <label>:114:                                    ; preds = %103
  %115 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1821
  %116 = getelementptr inbounds %struct.termios, %struct.termios* %115, i32 0, i32 2, !dbg !1823
  %117 = load i32, i32* %116, align 4, !dbg !1824
  %118 = and i32 %117, 2147483647, !dbg !1824
  store i32 %118, i32* %116, align 4, !dbg !1824
  br label %119

; <label>:119:                                    ; preds = %114, %109
  %120 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1825
  %121 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %120, i32 0, i32 3, !dbg !1827
  %122 = load i32, i32* %121, align 4, !dbg !1827
  %123 = and i32 %122, 1, !dbg !1828
  %124 = icmp ne i32 %123, 0, !dbg !1828
  br i1 %124, label %125, label %130, !dbg !1829

; <label>:125:                                    ; preds = %119
  %126 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1830
  %127 = getelementptr inbounds %struct.termios, %struct.termios* %126, i32 0, i32 0, !dbg !1832
  %128 = load i32, i32* %127, align 4, !dbg !1833
  %129 = or i32 %128, 9216, !dbg !1833
  store i32 %129, i32* %127, align 4, !dbg !1833
  br label %130, !dbg !1834

; <label>:130:                                    ; preds = %125, %119
  %131 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1835
  %132 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %131, i32 0, i32 3, !dbg !1837
  %133 = load i32, i32* %132, align 4, !dbg !1837
  %134 = and i32 %133, 2, !dbg !1838
  %135 = icmp ne i32 %134, 0, !dbg !1838
  br i1 %135, label %136, label %141, !dbg !1839

; <label>:136:                                    ; preds = %130
  %137 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1840
  %138 = getelementptr inbounds %struct.termios, %struct.termios* %137, i32 0, i32 0, !dbg !1842
  %139 = load i32, i32* %138, align 4, !dbg !1843
  %140 = or i32 %139, 12288, !dbg !1843
  store i32 %140, i32* %138, align 4, !dbg !1843
  br label %141, !dbg !1844

; <label>:141:                                    ; preds = %136, %130
  %142 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1845
  %143 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %142, i32 0, i32 3, !dbg !1847
  %144 = load i32, i32* %143, align 4, !dbg !1847
  %145 = and i32 %144, 3, !dbg !1848
  %146 = icmp eq i32 %145, 0, !dbg !1849
  br i1 %146, label %147, label %156, !dbg !1850

; <label>:147:                                    ; preds = %141
  %148 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1851
  %149 = getelementptr inbounds %struct.termios, %struct.termios* %148, i32 0, i32 0, !dbg !1853
  %150 = load i32, i32* %149, align 4, !dbg !1854
  %151 = and i32 %150, -1025, !dbg !1854
  store i32 %151, i32* %149, align 4, !dbg !1854
  %152 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1855
  %153 = getelementptr inbounds %struct.termios, %struct.termios* %152, i32 0, i32 0, !dbg !1856
  %154 = load i32, i32* %153, align 4, !dbg !1857
  %155 = and i32 %154, -4097, !dbg !1857
  store i32 %155, i32* %153, align 4, !dbg !1857
  br label %156, !dbg !1858

; <label>:156:                                    ; preds = %147, %141
  %157 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1859
  %158 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %157, i32 0, i32 19, !dbg !1860
  %159 = getelementptr inbounds [6 x i8], [6 x i8]* %158, i64 0, i64 4, !dbg !1859
  %160 = load i8, i8* %159, align 1, !dbg !1859
  %161 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1861
  %162 = getelementptr inbounds %struct.termios, %struct.termios* %161, i32 0, i32 5, !dbg !1862
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* %162, i64 0, i64 8, !dbg !1861
  store i8 %160, i8* %163, align 1, !dbg !1863
  %164 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1864
  %165 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %164, i32 0, i32 19, !dbg !1865
  %166 = getelementptr inbounds [6 x i8], [6 x i8]* %165, i64 0, i64 5, !dbg !1864
  %167 = load i8, i8* %166, align 1, !dbg !1864
  %168 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1866
  %169 = getelementptr inbounds %struct.termios, %struct.termios* %168, i32 0, i32 5, !dbg !1867
  %170 = getelementptr inbounds [32 x i8], [32 x i8]* %169, i64 0, i64 9, !dbg !1866
  store i8 %167, i8* %170, align 1, !dbg !1868
  %171 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1869
  %172 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %171, i32 0, i32 19, !dbg !1870
  %173 = getelementptr inbounds [6 x i8], [6 x i8]* %172, i64 0, i64 0, !dbg !1869
  %174 = load i8, i8* %173, align 1, !dbg !1869
  %175 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1871
  %176 = getelementptr inbounds %struct.termios, %struct.termios* %175, i32 0, i32 5, !dbg !1872
  %177 = getelementptr inbounds [32 x i8], [32 x i8]* %176, i64 0, i64 4, !dbg !1871
  store i8 %174, i8* %177, align 1, !dbg !1873
  %178 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1874
  %179 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %178, i32 0, i32 19, !dbg !1875
  %180 = getelementptr inbounds [6 x i8], [6 x i8]* %179, i64 0, i64 2, !dbg !1874
  %181 = load i8, i8* %180, align 1, !dbg !1874
  %182 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1876
  %183 = getelementptr inbounds %struct.termios, %struct.termios* %182, i32 0, i32 5, !dbg !1877
  %184 = getelementptr inbounds [32 x i8], [32 x i8]* %183, i64 0, i64 0, !dbg !1876
  store i8 %181, i8* %184, align 1, !dbg !1878
  %185 = load %struct.rdpdr_serial_device_info*, %struct.rdpdr_serial_device_info** %3, align 8, !dbg !1879
  %186 = getelementptr inbounds %struct.rdpdr_serial_device_info, %struct.rdpdr_serial_device_info* %185, i32 0, i32 19, !dbg !1880
  %187 = getelementptr inbounds [6 x i8], [6 x i8]* %186, i64 0, i64 1, !dbg !1879
  %188 = load i8, i8* %187, align 1, !dbg !1879
  %189 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1881
  %190 = getelementptr inbounds %struct.termios, %struct.termios* %189, i32 0, i32 5, !dbg !1882
  %191 = getelementptr inbounds [32 x i8], [32 x i8]* %190, i64 0, i64 3, !dbg !1881
  store i8 %188, i8* %191, align 1, !dbg !1883
  %192 = load i32, i32* %4, align 4, !dbg !1884
  %193 = load %struct.termios*, %struct.termios** %6, align 8, !dbg !1885
  %194 = call i32 @tcsetattr(i32 %192, i32 0, %struct.termios* %193) #7, !dbg !1886
  ret void, !dbg !1887
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare i32 @tcflush(i32, i32) #4

; Function Attrs: nounwind
declare i32 @tcsendbreak(i32, i32) #4

; Function Attrs: nounwind
declare i32 @tcflow(i32, i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!127, !128}
!llvm.ident = !{!129}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !83)
!1 = !DIFile(filename: "[inter]serial.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !{!23, !57, !81, !82}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERIAL_DEVICE", file: !25, line: 260, baseType: !26)
!25 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdpdr_serial_device_info", file: !25, line: 242, size: 960, align: 64, elements: !27)
!27 = !{!28, !30, !31, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !50, !51, !52, !56, !75, !76, !77, !78, !79, !80}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "dtr", scope: !26, file: !25, line: 244, baseType: !29, size: 32, align: 32)
!29 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "rts", scope: !26, file: !25, line: 245, baseType: !29, size: 32, align: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !26, file: !25, line: 246, baseType: !32, size: 32, align: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !25, line: 43, baseType: !33)
!33 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "xonoff", scope: !26, file: !25, line: 246, baseType: !32, size: 32, align: 32, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "onlimit", scope: !26, file: !25, line: 246, baseType: !32, size: 32, align: 32, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "offlimit", scope: !26, file: !25, line: 246, baseType: !32, size: 32, align: 32, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "baud_rate", scope: !26, file: !25, line: 247, baseType: !32, size: 32, align: 32, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "queue_in_size", scope: !26, file: !25, line: 248, baseType: !32, size: 32, align: 32, offset: 224)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "queue_out_size", scope: !26, file: !25, line: 249, baseType: !32, size: 32, align: 32, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "wait_mask", scope: !26, file: !25, line: 250, baseType: !32, size: 32, align: 32, offset: 288)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "read_interval_timeout", scope: !26, file: !25, line: 251, baseType: !32, size: 32, align: 32, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "read_total_timeout_multiplier", scope: !26, file: !25, line: 252, baseType: !32, size: 32, align: 32, offset: 352)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "read_total_timeout_constant", scope: !26, file: !25, line: 253, baseType: !32, size: 32, align: 32, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "write_total_timeout_multiplier", scope: !26, file: !25, line: 254, baseType: !32, size: 32, align: 32, offset: 416)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "write_total_timeout_constant", scope: !26, file: !25, line: 254, baseType: !32, size: 32, align: 32, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "posix_wait_mask", scope: !26, file: !25, line: 254, baseType: !32, size: 32, align: 32, offset: 480)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !26, file: !25, line: 255, baseType: !48, size: 8, align: 8, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !25, line: 39, baseType: !49)
!49 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !26, file: !25, line: 255, baseType: !48, size: 8, align: 8, offset: 520)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !26, file: !25, line: 255, baseType: !48, size: 8, align: 8, offset: 528)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "chars", scope: !26, file: !25, line: 256, baseType: !53, size: 48, align: 8, offset: 536)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 48, align: 8, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 6)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ptermios", scope: !26, file: !25, line: 257, baseType: !57, size: 64, align: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !59, line: 28, size: 480, align: 32, elements: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/termios.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!60 = !{!61, !63, !64, !65, !66, !68, !72, !74}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !58, file: !59, line: 30, baseType: !62, size: 32, align: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !59, line: 25, baseType: !33)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !58, file: !59, line: 31, baseType: !62, size: 32, align: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !58, file: !59, line: 32, baseType: !62, size: 32, align: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !58, file: !59, line: 33, baseType: !62, size: 32, align: 32, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !58, file: !59, line: 34, baseType: !67, size: 8, align: 8, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !59, line: 23, baseType: !49)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !58, file: !59, line: 35, baseType: !69, size: 256, align: 8, offset: 136)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 256, align: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !58, file: !59, line: 36, baseType: !73, size: 32, align: 32, offset: 416)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !59, line: 24, baseType: !33)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !58, file: !59, line: 37, baseType: !73, size: 32, align: 32, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pold_termios", scope: !26, file: !25, line: 257, baseType: !57, size: 64, align: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "event_txempty", scope: !26, file: !25, line: 258, baseType: !29, size: 32, align: 32, offset: 768)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "event_cts", scope: !26, file: !25, line: 258, baseType: !29, size: 32, align: 32, offset: 800)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "event_dsr", scope: !26, file: !25, line: 258, baseType: !29, size: 32, align: 32, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "event_rlsd", scope: !26, file: !25, line: 258, baseType: !29, size: 32, align: 32, offset: 864)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "event_pending", scope: !26, file: !25, line: 258, baseType: !29, size: 32, align: 32, offset: 896)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!83 = !{!84}
!84 = distinct !DIGlobalVariable(name: "serial_fns", scope: !0, file: !85, line: 1085, type: !86, isLocal: false, isDefinition: true, variable: %struct._DEVICE_FNS* @serial_fns)
!85 = !DIFile(filename: "serial.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_FNS", file: !25, line: 223, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVICE_FNS", file: !25, line: 211, size: 320, align: 64, elements: !88)
!88 = !{!89, !98, !102, !107, !108}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !87, file: !25, line: 213, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!93, !32, !32, !32, !32, !32, !94, !96}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_NTSTATUS", file: !25, line: 208, baseType: !32)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_NTHANDLE", file: !25, line: 209, baseType: !32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !87, file: !25, line: 216, baseType: !99, size: 64, align: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!93, !97}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !87, file: !25, line: 217, baseType: !103, size: 64, align: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!93, !97, !106, !32, !32, !82}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !87, file: !25, line: 219, baseType: !103, size: 64, align: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "device_control", scope: !87, file: !25, line: 221, baseType: !109, size: 64, align: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!93, !97, !32, !112, !112}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !113, line: 40, baseType: !114)
!113 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !113, line: 25, size: 576, align: 64, elements: !116)
!116 = !{!117, !119, !120, !121, !122, !123, !124, !125, !126}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !115, file: !113, line: 27, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !115, file: !113, line: 28, baseType: !118, size: 64, align: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !115, file: !113, line: 29, baseType: !118, size: 64, align: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !115, file: !113, line: 30, baseType: !33, size: 32, align: 32, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !115, file: !113, line: 33, baseType: !118, size: 64, align: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !115, file: !113, line: 34, baseType: !118, size: 64, align: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !115, file: !113, line: 35, baseType: !118, size: 64, align: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !115, file: !113, line: 36, baseType: !118, size: 64, align: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !115, file: !113, line: 37, baseType: !118, size: 64, align: 64, offset: 512)
!127 = !{i32 2, !"Dwarf Version", i32 4}
!128 = !{i32 2, !"Debug Info Version", i32 3}
!129 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!130 = distinct !DISubprogram(name: "serial_enum_devices", scope: !85, file: !85, line: 510, type: !131, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{!29, !82, !94}
!133 = !{}
!134 = !DILocalVariable(name: "id", arg: 1, scope: !130, file: !85, line: 510, type: !82)
!135 = !DIExpression()
!136 = !DILocation(line: 510, column: 30, scope: !130)
!137 = !DILocalVariable(name: "optarg", arg: 2, scope: !130, file: !85, line: 510, type: !94)
!138 = !DILocation(line: 510, column: 40, scope: !130)
!139 = !DILocalVariable(name: "pser_inf", scope: !130, file: !85, line: 512, type: !23)
!140 = !DILocation(line: 512, column: 17, scope: !130)
!141 = !DILocalVariable(name: "pos", scope: !130, file: !85, line: 514, type: !94)
!142 = !DILocation(line: 514, column: 8, scope: !130)
!143 = !DILocation(line: 514, column: 14, scope: !130)
!144 = !DILocalVariable(name: "pos2", scope: !130, file: !85, line: 515, type: !94)
!145 = !DILocation(line: 515, column: 8, scope: !130)
!146 = !DILocalVariable(name: "count", scope: !130, file: !85, line: 516, type: !29)
!147 = !DILocation(line: 516, column: 6, scope: !130)
!148 = !DILocation(line: 519, column: 8, scope: !130)
!149 = !DILocation(line: 520, column: 2, scope: !130)
!150 = !DILocation(line: 520, column: 25, scope: !151)
!151 = !DILexicalBlockFile(scope: !130, file: !85, discriminator: 1)
!152 = !DILocation(line: 520, column: 16, scope: !151)
!153 = !DILocation(line: 520, column: 14, scope: !151)
!154 = !DILocation(line: 520, column: 39, scope: !151)
!155 = !DILocation(line: 520, column: 43, scope: !156)
!156 = !DILexicalBlockFile(scope: !130, file: !85, discriminator: 2)
!157 = !DILocation(line: 520, column: 42, scope: !156)
!158 = !DILocation(line: 520, column: 46, scope: !156)
!159 = !DILocation(line: 520, column: 2, scope: !160)
!160 = !DILexicalBlockFile(scope: !130, file: !85, discriminator: 3)
!161 = !DILocation(line: 523, column: 32, scope: !162)
!162 = distinct !DILexicalBlock(scope: !130, file: !85, line: 521, column: 2)
!163 = !DILocation(line: 523, column: 14, scope: !162)
!164 = !DILocation(line: 523, column: 12, scope: !162)
!165 = !DILocation(line: 524, column: 43, scope: !162)
!166 = !DILocation(line: 524, column: 24, scope: !162)
!167 = !DILocation(line: 524, column: 3, scope: !162)
!168 = !DILocation(line: 524, column: 13, scope: !162)
!169 = !DILocation(line: 524, column: 22, scope: !162)
!170 = !DILocation(line: 525, column: 10, scope: !162)
!171 = !DILocation(line: 525, column: 20, scope: !162)
!172 = !DILocation(line: 525, column: 3, scope: !162)
!173 = !DILocation(line: 526, column: 47, scope: !162)
!174 = !DILocation(line: 526, column: 28, scope: !162)
!175 = !DILocation(line: 526, column: 3, scope: !162)
!176 = !DILocation(line: 526, column: 13, scope: !162)
!177 = !DILocation(line: 526, column: 26, scope: !162)
!178 = !DILocation(line: 527, column: 10, scope: !162)
!179 = !DILocation(line: 527, column: 20, scope: !162)
!180 = !DILocation(line: 527, column: 3, scope: !162)
!181 = !DILocation(line: 529, column: 19, scope: !162)
!182 = !DILocation(line: 529, column: 10, scope: !162)
!183 = !DILocation(line: 529, column: 8, scope: !162)
!184 = !DILocation(line: 530, column: 26, scope: !162)
!185 = !DILocation(line: 530, column: 25, scope: !162)
!186 = !DILocation(line: 530, column: 10, scope: !162)
!187 = !DILocation(line: 530, column: 30, scope: !162)
!188 = !DILocation(line: 530, column: 36, scope: !162)
!189 = !DILocation(line: 530, column: 3, scope: !162)
!190 = !DILocation(line: 532, column: 31, scope: !162)
!191 = !DILocation(line: 532, column: 30, scope: !162)
!192 = !DILocation(line: 532, column: 15, scope: !162)
!193 = !DILocation(line: 532, column: 35, scope: !162)
!194 = !DILocation(line: 532, column: 3, scope: !162)
!195 = !DILocation(line: 534, column: 51, scope: !162)
!196 = !DILocation(line: 534, column: 44, scope: !162)
!197 = !DILocation(line: 534, column: 57, scope: !162)
!198 = !DILocation(line: 534, column: 36, scope: !199)
!199 = !DILexicalBlockFile(scope: !162, file: !85, discriminator: 1)
!200 = !DILocation(line: 534, column: 19, scope: !162)
!201 = !DILocation(line: 534, column: 18, scope: !162)
!202 = !DILocation(line: 534, column: 3, scope: !162)
!203 = !DILocation(line: 534, column: 23, scope: !162)
!204 = !DILocation(line: 534, column: 34, scope: !162)
!205 = !DILocation(line: 535, column: 26, scope: !162)
!206 = !DILocation(line: 535, column: 25, scope: !162)
!207 = !DILocation(line: 535, column: 10, scope: !162)
!208 = !DILocation(line: 535, column: 30, scope: !162)
!209 = !DILocation(line: 535, column: 42, scope: !162)
!210 = !DILocation(line: 535, column: 3, scope: !162)
!211 = !DILocation(line: 537, column: 74, scope: !162)
!212 = !DILocation(line: 537, column: 73, scope: !162)
!213 = !DILocation(line: 537, column: 58, scope: !162)
!214 = !DILocation(line: 537, column: 78, scope: !162)
!215 = !DILocation(line: 538, column: 26, scope: !162)
!216 = !DILocation(line: 538, column: 25, scope: !162)
!217 = !DILocation(line: 538, column: 10, scope: !162)
!218 = !DILocation(line: 538, column: 30, scope: !162)
!219 = !DILocation(line: 537, column: 3, scope: !162)
!220 = !DILocation(line: 541, column: 19, scope: !162)
!221 = !DILocation(line: 541, column: 18, scope: !162)
!222 = !DILocation(line: 541, column: 3, scope: !162)
!223 = !DILocation(line: 541, column: 23, scope: !162)
!224 = !DILocation(line: 541, column: 35, scope: !162)
!225 = !DILocation(line: 542, column: 47, scope: !162)
!226 = !DILocation(line: 542, column: 38, scope: !162)
!227 = !DILocation(line: 542, column: 19, scope: !162)
!228 = !DILocation(line: 542, column: 18, scope: !162)
!229 = !DILocation(line: 542, column: 3, scope: !162)
!230 = !DILocation(line: 542, column: 23, scope: !162)
!231 = !DILocation(line: 542, column: 36, scope: !162)
!232 = !DILocation(line: 543, column: 8, scope: !162)
!233 = !DILocation(line: 544, column: 5, scope: !162)
!234 = !DILocation(line: 544, column: 8, scope: !162)
!235 = !DILocation(line: 546, column: 12, scope: !162)
!236 = !DILocation(line: 546, column: 10, scope: !162)
!237 = !DILocation(line: 520, column: 2, scope: !238)
!238 = !DILexicalBlockFile(scope: !130, file: !85, discriminator: 4)
!239 = distinct !{!239, !149}
!240 = !DILocation(line: 548, column: 9, scope: !130)
!241 = !DILocation(line: 548, column: 2, scope: !130)
!242 = distinct !DISubprogram(name: "serial_get_event", scope: !85, file: !85, line: 962, type: !243, isLocal: false, isDefinition: true, scopeLine: 963, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !97, !82}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !25, line: 28, baseType: !29)
!246 = !DILocalVariable(name: "handle", arg: 1, scope: !242, file: !85, line: 962, type: !97)
!247 = !DILocation(line: 962, column: 30, scope: !242)
!248 = !DILocalVariable(name: "result", arg: 2, scope: !242, file: !85, line: 962, type: !82)
!249 = !DILocation(line: 962, column: 47, scope: !242)
!250 = !DILocalVariable(name: "index", scope: !242, file: !85, line: 964, type: !29)
!251 = !DILocation(line: 964, column: 6, scope: !242)
!252 = !DILocalVariable(name: "pser_inf", scope: !242, file: !85, line: 965, type: !23)
!253 = !DILocation(line: 965, column: 17, scope: !242)
!254 = !DILocalVariable(name: "bytes", scope: !242, file: !85, line: 966, type: !29)
!255 = !DILocation(line: 966, column: 6, scope: !242)
!256 = !DILocalVariable(name: "ret", scope: !242, file: !85, line: 967, type: !245)
!257 = !DILocation(line: 967, column: 10, scope: !242)
!258 = !DILocation(line: 969, column: 3, scope: !242)
!259 = !DILocation(line: 969, column: 10, scope: !242)
!260 = !DILocation(line: 970, column: 27, scope: !242)
!261 = !DILocation(line: 970, column: 10, scope: !242)
!262 = !DILocation(line: 970, column: 8, scope: !242)
!263 = !DILocation(line: 971, column: 6, scope: !264)
!264 = distinct !DILexicalBlock(scope: !242, file: !85, line: 971, column: 6)
!265 = !DILocation(line: 971, column: 12, scope: !264)
!266 = !DILocation(line: 971, column: 6, scope: !242)
!267 = !DILocation(line: 972, column: 3, scope: !264)
!268 = !DILocation(line: 975, column: 46, scope: !242)
!269 = !DILocation(line: 975, column: 31, scope: !242)
!270 = !DILocation(line: 975, column: 53, scope: !242)
!271 = !DILocation(line: 975, column: 13, scope: !242)
!272 = !DILocation(line: 975, column: 11, scope: !242)
!273 = !DILocation(line: 977, column: 8, scope: !242)
!274 = !DILocation(line: 977, column: 2, scope: !242)
!275 = !DILocation(line: 979, column: 6, scope: !276)
!276 = distinct !DILexicalBlock(scope: !242, file: !85, line: 979, column: 6)
!277 = !DILocation(line: 979, column: 12, scope: !276)
!278 = !DILocation(line: 979, column: 6, scope: !242)
!279 = !DILocation(line: 981, column: 59, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !85, line: 980, column: 2)
!281 = !DILocation(line: 981, column: 3, scope: !280)
!282 = !DILocation(line: 982, column: 7, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !85, line: 982, column: 7)
!284 = !DILocation(line: 982, column: 15, scope: !283)
!285 = !DILocation(line: 982, column: 25, scope: !283)
!286 = !DILocation(line: 982, column: 13, scope: !283)
!287 = !DILocation(line: 982, column: 7, scope: !280)
!288 = !DILocation(line: 984, column: 27, scope: !289)
!289 = distinct !DILexicalBlock(scope: !283, file: !85, line: 983, column: 3)
!290 = !DILocation(line: 984, column: 4, scope: !289)
!291 = !DILocation(line: 984, column: 14, scope: !289)
!292 = !DILocation(line: 984, column: 25, scope: !289)
!293 = !DILocation(line: 985, column: 8, scope: !294)
!294 = distinct !DILexicalBlock(scope: !289, file: !85, line: 985, column: 8)
!295 = !DILocation(line: 985, column: 18, scope: !294)
!296 = !DILocation(line: 985, column: 28, scope: !294)
!297 = !DILocation(line: 985, column: 8, scope: !289)
!298 = !DILocation(line: 987, column: 5, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !85, line: 986, column: 4)
!300 = !DILocation(line: 989, column: 6, scope: !299)
!301 = !DILocation(line: 989, column: 13, scope: !299)
!302 = !DILocation(line: 990, column: 9, scope: !299)
!303 = !DILocation(line: 991, column: 4, scope: !299)
!304 = !DILocation(line: 993, column: 3, scope: !289)
!305 = !DILocation(line: 995, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !280, file: !85, line: 995, column: 7)
!307 = !DILocation(line: 995, column: 14, scope: !306)
!308 = !DILocation(line: 995, column: 19, scope: !306)
!309 = !DILocation(line: 995, column: 23, scope: !310)
!310 = !DILexicalBlockFile(scope: !306, file: !85, discriminator: 1)
!311 = !DILocation(line: 995, column: 33, scope: !310)
!312 = !DILocation(line: 995, column: 43, scope: !310)
!313 = !DILocation(line: 995, column: 7, scope: !310)
!314 = !DILocation(line: 998, column: 68, scope: !315)
!315 = distinct !DILexicalBlock(scope: !306, file: !85, line: 996, column: 3)
!316 = !DILocation(line: 997, column: 4, scope: !315)
!317 = !DILocation(line: 999, column: 5, scope: !315)
!318 = !DILocation(line: 999, column: 12, scope: !315)
!319 = !DILocation(line: 1000, column: 8, scope: !315)
!320 = !DILocation(line: 1001, column: 3, scope: !315)
!321 = !DILocation(line: 1002, column: 8, scope: !322)
!322 = distinct !DILexicalBlock(scope: !280, file: !85, line: 1002, column: 7)
!323 = !DILocation(line: 1002, column: 18, scope: !322)
!324 = !DILocation(line: 1002, column: 28, scope: !322)
!325 = !DILocation(line: 1002, column: 7, scope: !280)
!326 = !DILocation(line: 1005, column: 68, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !85, line: 1003, column: 3)
!328 = !DILocation(line: 1004, column: 4, scope: !327)
!329 = !DILocation(line: 1006, column: 5, scope: !327)
!330 = !DILocation(line: 1006, column: 12, scope: !327)
!331 = !DILocation(line: 1007, column: 8, scope: !327)
!332 = !DILocation(line: 1008, column: 3, scope: !327)
!333 = !DILocation(line: 1010, column: 2, scope: !280)
!334 = !DILocation(line: 1013, column: 3, scope: !335)
!335 = distinct !DILexicalBlock(scope: !276, file: !85, line: 1012, column: 2)
!336 = !DILocation(line: 1013, column: 13, scope: !335)
!337 = !DILocation(line: 1013, column: 24, scope: !335)
!338 = !DILocation(line: 1018, column: 8, scope: !242)
!339 = !DILocation(line: 1018, column: 2, scope: !242)
!340 = !DILocation(line: 1019, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !242, file: !85, line: 1019, column: 6)
!342 = !DILocation(line: 1019, column: 13, scope: !341)
!343 = !DILocation(line: 1020, column: 6, scope: !341)
!344 = !DILocation(line: 1020, column: 10, scope: !345)
!345 = !DILexicalBlockFile(scope: !341, file: !85, discriminator: 1)
!346 = !DILocation(line: 1020, column: 20, scope: !345)
!347 = !DILocation(line: 1020, column: 34, scope: !345)
!348 = !DILocation(line: 1020, column: 39, scope: !345)
!349 = !DILocation(line: 1020, column: 43, scope: !350)
!350 = !DILexicalBlockFile(scope: !341, file: !85, discriminator: 2)
!351 = !DILocation(line: 1020, column: 53, scope: !350)
!352 = !DILocation(line: 1020, column: 63, scope: !350)
!353 = !DILocation(line: 1019, column: 6, scope: !354)
!354 = !DILexicalBlockFile(scope: !242, file: !85, discriminator: 1)
!355 = !DILocation(line: 1022, column: 3, scope: !356)
!356 = distinct !DILexicalBlock(scope: !341, file: !85, line: 1021, column: 2)
!357 = !DILocation(line: 1023, column: 4, scope: !356)
!358 = !DILocation(line: 1023, column: 11, scope: !356)
!359 = !DILocation(line: 1024, column: 7, scope: !356)
!360 = !DILocation(line: 1025, column: 2, scope: !356)
!361 = !DILocation(line: 1026, column: 28, scope: !242)
!362 = !DILocation(line: 1026, column: 2, scope: !242)
!363 = !DILocation(line: 1026, column: 12, scope: !242)
!364 = !DILocation(line: 1026, column: 26, scope: !242)
!365 = !DILocation(line: 1029, column: 8, scope: !242)
!366 = !DILocation(line: 1029, column: 2, scope: !242)
!367 = !DILocation(line: 1030, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !242, file: !85, line: 1030, column: 6)
!369 = !DILocation(line: 1030, column: 13, scope: !368)
!370 = !DILocation(line: 1030, column: 28, scope: !368)
!371 = !DILocation(line: 1030, column: 38, scope: !368)
!372 = !DILocation(line: 1030, column: 25, scope: !368)
!373 = !DILocation(line: 1030, column: 6, scope: !242)
!374 = !DILocation(line: 1032, column: 25, scope: !375)
!375 = distinct !DILexicalBlock(scope: !368, file: !85, line: 1031, column: 2)
!376 = !DILocation(line: 1032, column: 31, scope: !375)
!377 = !DILocation(line: 1032, column: 3, scope: !375)
!378 = !DILocation(line: 1032, column: 13, scope: !375)
!379 = !DILocation(line: 1032, column: 23, scope: !375)
!380 = !DILocation(line: 1033, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !375, file: !85, line: 1033, column: 7)
!382 = !DILocation(line: 1033, column: 17, scope: !381)
!383 = !DILocation(line: 1033, column: 27, scope: !381)
!384 = !DILocation(line: 1033, column: 7, scope: !375)
!385 = !DILocation(line: 1036, column: 12, scope: !386)
!386 = distinct !DILexicalBlock(scope: !381, file: !85, line: 1034, column: 3)
!387 = !DILocation(line: 1036, column: 18, scope: !386)
!388 = !DILocation(line: 1036, column: 11, scope: !386)
!389 = !DILocation(line: 1035, column: 4, scope: !386)
!390 = !DILocation(line: 1037, column: 5, scope: !386)
!391 = !DILocation(line: 1037, column: 12, scope: !386)
!392 = !DILocation(line: 1038, column: 8, scope: !386)
!393 = !DILocation(line: 1039, column: 3, scope: !386)
!394 = !DILocation(line: 1040, column: 2, scope: !375)
!395 = !DILocation(line: 1042, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !242, file: !85, line: 1042, column: 6)
!397 = !DILocation(line: 1042, column: 13, scope: !396)
!398 = !DILocation(line: 1042, column: 28, scope: !396)
!399 = !DILocation(line: 1042, column: 38, scope: !396)
!400 = !DILocation(line: 1042, column: 25, scope: !396)
!401 = !DILocation(line: 1042, column: 6, scope: !242)
!402 = !DILocation(line: 1044, column: 25, scope: !403)
!403 = distinct !DILexicalBlock(scope: !396, file: !85, line: 1043, column: 2)
!404 = !DILocation(line: 1044, column: 31, scope: !403)
!405 = !DILocation(line: 1044, column: 3, scope: !403)
!406 = !DILocation(line: 1044, column: 13, scope: !403)
!407 = !DILocation(line: 1044, column: 23, scope: !403)
!408 = !DILocation(line: 1045, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !403, file: !85, line: 1045, column: 7)
!410 = !DILocation(line: 1045, column: 17, scope: !409)
!411 = !DILocation(line: 1045, column: 27, scope: !409)
!412 = !DILocation(line: 1045, column: 7, scope: !403)
!413 = !DILocation(line: 1048, column: 12, scope: !414)
!414 = distinct !DILexicalBlock(scope: !409, file: !85, line: 1046, column: 3)
!415 = !DILocation(line: 1048, column: 18, scope: !414)
!416 = !DILocation(line: 1048, column: 11, scope: !414)
!417 = !DILocation(line: 1047, column: 4, scope: !414)
!418 = !DILocation(line: 1049, column: 5, scope: !414)
!419 = !DILocation(line: 1049, column: 12, scope: !414)
!420 = !DILocation(line: 1050, column: 8, scope: !414)
!421 = !DILocation(line: 1051, column: 3, scope: !414)
!422 = !DILocation(line: 1052, column: 2, scope: !403)
!423 = !DILocation(line: 1054, column: 6, scope: !424)
!424 = distinct !DILexicalBlock(scope: !242, file: !85, line: 1054, column: 6)
!425 = !DILocation(line: 1054, column: 6, scope: !242)
!426 = !DILocation(line: 1055, column: 3, scope: !424)
!427 = !DILocation(line: 1055, column: 13, scope: !424)
!428 = !DILocation(line: 1055, column: 27, scope: !424)
!429 = !DILocation(line: 1057, column: 9, scope: !242)
!430 = !DILocation(line: 1057, column: 2, scope: !242)
!431 = !DILocation(line: 1058, column: 1, scope: !242)
!432 = distinct !DISubprogram(name: "serial_get_timeout", scope: !85, file: !85, line: 1062, type: !433, isLocal: false, isDefinition: true, scopeLine: 1063, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!433 = !DISubroutineType(types: !434)
!434 = !{!245, !97, !32, !82, !82}
!435 = !DILocalVariable(name: "handle", arg: 1, scope: !432, file: !85, line: 1062, type: !97)
!436 = !DILocation(line: 1062, column: 32, scope: !432)
!437 = !DILocalVariable(name: "length", arg: 2, scope: !432, file: !85, line: 1062, type: !32)
!438 = !DILocation(line: 1062, column: 47, scope: !432)
!439 = !DILocalVariable(name: "timeout", arg: 3, scope: !432, file: !85, line: 1062, type: !82)
!440 = !DILocation(line: 1062, column: 64, scope: !432)
!441 = !DILocalVariable(name: "itv_timeout", arg: 4, scope: !432, file: !85, line: 1062, type: !82)
!442 = !DILocation(line: 1062, column: 82, scope: !432)
!443 = !DILocalVariable(name: "index", scope: !432, file: !85, line: 1064, type: !29)
!444 = !DILocation(line: 1064, column: 6, scope: !432)
!445 = !DILocalVariable(name: "pser_inf", scope: !432, file: !85, line: 1065, type: !23)
!446 = !DILocation(line: 1065, column: 17, scope: !432)
!447 = !DILocation(line: 1067, column: 27, scope: !432)
!448 = !DILocation(line: 1067, column: 10, scope: !432)
!449 = !DILocation(line: 1067, column: 8, scope: !432)
!450 = !DILocation(line: 1068, column: 6, scope: !451)
!451 = distinct !DILexicalBlock(scope: !432, file: !85, line: 1068, column: 6)
!452 = !DILocation(line: 1068, column: 12, scope: !451)
!453 = !DILocation(line: 1068, column: 6, scope: !432)
!454 = !DILocation(line: 1069, column: 3, scope: !451)
!455 = !DILocation(line: 1071, column: 21, scope: !456)
!456 = distinct !DILexicalBlock(scope: !432, file: !85, line: 1071, column: 6)
!457 = !DILocation(line: 1071, column: 6, scope: !456)
!458 = !DILocation(line: 1071, column: 28, scope: !456)
!459 = !DILocation(line: 1071, column: 40, scope: !456)
!460 = !DILocation(line: 1071, column: 6, scope: !432)
!461 = !DILocation(line: 1073, column: 3, scope: !462)
!462 = distinct !DILexicalBlock(scope: !456, file: !85, line: 1072, column: 2)
!463 = !DILocation(line: 1076, column: 46, scope: !432)
!464 = !DILocation(line: 1076, column: 31, scope: !432)
!465 = !DILocation(line: 1076, column: 53, scope: !432)
!466 = !DILocation(line: 1076, column: 13, scope: !432)
!467 = !DILocation(line: 1076, column: 11, scope: !432)
!468 = !DILocation(line: 1079, column: 3, scope: !432)
!469 = !DILocation(line: 1079, column: 13, scope: !432)
!470 = !DILocation(line: 1079, column: 45, scope: !432)
!471 = !DILocation(line: 1079, column: 43, scope: !432)
!472 = !DILocation(line: 1080, column: 3, scope: !432)
!473 = !DILocation(line: 1080, column: 13, scope: !432)
!474 = !DILocation(line: 1079, column: 52, scope: !432)
!475 = !DILocation(line: 1078, column: 3, scope: !432)
!476 = !DILocation(line: 1078, column: 11, scope: !432)
!477 = !DILocation(line: 1081, column: 17, scope: !432)
!478 = !DILocation(line: 1081, column: 27, scope: !432)
!479 = !DILocation(line: 1081, column: 3, scope: !432)
!480 = !DILocation(line: 1081, column: 15, scope: !432)
!481 = !DILocation(line: 1082, column: 2, scope: !432)
!482 = !DILocation(line: 1083, column: 1, scope: !432)
!483 = distinct !DISubprogram(name: "serial_create", scope: !85, file: !85, line: 552, type: !91, isLocal: true, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!484 = !DILocalVariable(name: "device_id", arg: 1, scope: !483, file: !85, line: 552, type: !32)
!485 = !DILocation(line: 552, column: 22, scope: !483)
!486 = !DILocalVariable(name: "access", arg: 2, scope: !483, file: !85, line: 552, type: !32)
!487 = !DILocation(line: 552, column: 40, scope: !483)
!488 = !DILocalVariable(name: "share_mode", arg: 3, scope: !483, file: !85, line: 552, type: !32)
!489 = !DILocation(line: 552, column: 55, scope: !483)
!490 = !DILocalVariable(name: "disposition", arg: 4, scope: !483, file: !85, line: 552, type: !32)
!491 = !DILocation(line: 552, column: 74, scope: !483)
!492 = !DILocalVariable(name: "flags_and_attributes", arg: 5, scope: !483, file: !85, line: 553, type: !32)
!493 = !DILocation(line: 553, column: 15, scope: !483)
!494 = !DILocalVariable(name: "filename", arg: 6, scope: !483, file: !85, line: 553, type: !94)
!495 = !DILocation(line: 553, column: 43, scope: !483)
!496 = !DILocalVariable(name: "handle", arg: 7, scope: !483, file: !85, line: 553, type: !96)
!497 = !DILocation(line: 553, column: 67, scope: !483)
!498 = !DILocation(line: 555, column: 9, scope: !483)
!499 = !DILocation(line: 556, column: 9, scope: !483)
!500 = !DILocation(line: 557, column: 9, scope: !483)
!501 = !DILocation(line: 558, column: 9, scope: !483)
!502 = !DILocation(line: 559, column: 9, scope: !483)
!503 = !DILocalVariable(name: "serial_fd", scope: !483, file: !85, line: 560, type: !29)
!504 = !DILocation(line: 560, column: 6, scope: !483)
!505 = !DILocalVariable(name: "pser_inf", scope: !483, file: !85, line: 561, type: !23)
!506 = !DILocation(line: 561, column: 17, scope: !483)
!507 = !DILocation(line: 563, column: 46, scope: !483)
!508 = !DILocation(line: 563, column: 31, scope: !483)
!509 = !DILocation(line: 563, column: 57, scope: !483)
!510 = !DILocation(line: 563, column: 13, scope: !483)
!511 = !DILocation(line: 563, column: 11, scope: !483)
!512 = !DILocation(line: 565, column: 34, scope: !483)
!513 = !DILocation(line: 565, column: 19, scope: !483)
!514 = !DILocation(line: 565, column: 45, scope: !483)
!515 = !DILocation(line: 565, column: 14, scope: !483)
!516 = !DILocation(line: 565, column: 12, scope: !483)
!517 = !DILocation(line: 566, column: 6, scope: !518)
!518 = distinct !DILexicalBlock(scope: !483, file: !85, line: 566, column: 6)
!519 = !DILocation(line: 566, column: 16, scope: !518)
!520 = !DILocation(line: 566, column: 6, scope: !483)
!521 = !DILocation(line: 569, column: 25, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !85, line: 567, column: 2)
!523 = !DILocation(line: 569, column: 10, scope: !522)
!524 = !DILocation(line: 569, column: 36, scope: !522)
!525 = !DILocation(line: 569, column: 58, scope: !522)
!526 = !DILocation(line: 569, column: 57, scope: !522)
!527 = !DILocation(line: 569, column: 48, scope: !528)
!528 = !DILexicalBlockFile(scope: !522, file: !85, discriminator: 1)
!529 = !DILocation(line: 568, column: 3, scope: !522)
!530 = !DILocation(line: 570, column: 3, scope: !522)
!531 = !DILocation(line: 573, column: 19, scope: !532)
!532 = distinct !DILexicalBlock(scope: !483, file: !85, line: 573, column: 6)
!533 = !DILocation(line: 573, column: 29, scope: !532)
!534 = !DILocation(line: 573, column: 7, scope: !532)
!535 = !DILocation(line: 573, column: 6, scope: !483)
!536 = !DILocation(line: 576, column: 25, scope: !537)
!537 = distinct !DILexicalBlock(scope: !532, file: !85, line: 574, column: 2)
!538 = !DILocation(line: 576, column: 10, scope: !537)
!539 = !DILocation(line: 576, column: 36, scope: !537)
!540 = !DILocation(line: 575, column: 3, scope: !537)
!541 = !DILocation(line: 577, column: 9, scope: !537)
!542 = !DILocation(line: 577, column: 3, scope: !537)
!543 = !DILocation(line: 578, column: 3, scope: !537)
!544 = !DILocation(line: 582, column: 37, scope: !483)
!545 = !DILocation(line: 582, column: 17, scope: !483)
!546 = !DILocation(line: 582, column: 2, scope: !483)
!547 = !DILocation(line: 582, column: 28, scope: !483)
!548 = !DILocation(line: 582, column: 35, scope: !483)
!549 = !DILocation(line: 587, column: 24, scope: !483)
!550 = !DILocation(line: 587, column: 9, scope: !483)
!551 = !DILocation(line: 587, column: 35, scope: !483)
!552 = !DILocation(line: 587, column: 56, scope: !483)
!553 = !DILocation(line: 587, column: 41, scope: !483)
!554 = !DILocation(line: 587, column: 67, scope: !483)
!555 = !DILocation(line: 588, column: 9, scope: !483)
!556 = !DILocation(line: 588, column: 19, scope: !483)
!557 = !DILocation(line: 588, column: 30, scope: !483)
!558 = !DILocation(line: 588, column: 40, scope: !483)
!559 = !DILocation(line: 588, column: 51, scope: !483)
!560 = !DILocation(line: 588, column: 61, scope: !483)
!561 = !DILocation(line: 588, column: 69, scope: !483)
!562 = !DILocation(line: 588, column: 79, scope: !483)
!563 = !DILocation(line: 589, column: 9, scope: !483)
!564 = !DILocation(line: 589, column: 19, scope: !483)
!565 = !DILocation(line: 589, column: 24, scope: !483)
!566 = !DILocation(line: 589, column: 34, scope: !483)
!567 = !DILocation(line: 585, column: 2, scope: !483)
!568 = !DILocation(line: 591, column: 2, scope: !483)
!569 = !DILocation(line: 591, column: 12, scope: !483)
!570 = !DILocation(line: 591, column: 22, scope: !483)
!571 = !DILocation(line: 591, column: 30, scope: !483)
!572 = !DILocation(line: 593, column: 2, scope: !483)
!573 = !DILocation(line: 593, column: 12, scope: !483)
!574 = !DILocation(line: 593, column: 22, scope: !483)
!575 = !DILocation(line: 593, column: 30, scope: !483)
!576 = !DILocation(line: 594, column: 2, scope: !483)
!577 = !DILocation(line: 594, column: 12, scope: !483)
!578 = !DILocation(line: 594, column: 22, scope: !483)
!579 = !DILocation(line: 594, column: 30, scope: !483)
!580 = !DILocation(line: 595, column: 2, scope: !483)
!581 = !DILocation(line: 595, column: 12, scope: !483)
!582 = !DILocation(line: 595, column: 22, scope: !483)
!583 = !DILocation(line: 595, column: 30, scope: !483)
!584 = !DILocation(line: 596, column: 2, scope: !483)
!585 = !DILocation(line: 596, column: 12, scope: !483)
!586 = !DILocation(line: 596, column: 22, scope: !483)
!587 = !DILocation(line: 596, column: 30, scope: !483)
!588 = !DILocation(line: 598, column: 12, scope: !483)
!589 = !DILocation(line: 598, column: 31, scope: !483)
!590 = !DILocation(line: 598, column: 41, scope: !483)
!591 = !DILocation(line: 598, column: 2, scope: !483)
!592 = !DILocation(line: 600, column: 2, scope: !483)
!593 = !DILocation(line: 600, column: 12, scope: !483)
!594 = !DILocation(line: 600, column: 26, scope: !483)
!595 = !DILocation(line: 601, column: 2, scope: !483)
!596 = !DILocation(line: 601, column: 12, scope: !483)
!597 = !DILocation(line: 601, column: 22, scope: !483)
!598 = !DILocation(line: 602, column: 2, scope: !483)
!599 = !DILocation(line: 602, column: 12, scope: !483)
!600 = !DILocation(line: 602, column: 22, scope: !483)
!601 = !DILocation(line: 603, column: 2, scope: !483)
!602 = !DILocation(line: 603, column: 12, scope: !483)
!603 = !DILocation(line: 603, column: 23, scope: !483)
!604 = !DILocation(line: 604, column: 2, scope: !483)
!605 = !DILocation(line: 604, column: 12, scope: !483)
!606 = !DILocation(line: 604, column: 26, scope: !483)
!607 = !DILocation(line: 606, column: 12, scope: !483)
!608 = !DILocation(line: 606, column: 3, scope: !483)
!609 = !DILocation(line: 606, column: 10, scope: !483)
!610 = !DILocation(line: 609, column: 13, scope: !611)
!611 = distinct !DILexicalBlock(scope: !483, file: !85, line: 609, column: 6)
!612 = !DILocation(line: 609, column: 12, scope: !611)
!613 = !DILocation(line: 609, column: 6, scope: !611)
!614 = !DILocation(line: 609, column: 41, scope: !611)
!615 = !DILocation(line: 609, column: 6, scope: !483)
!616 = !DILocation(line: 611, column: 20, scope: !611)
!617 = !DILocation(line: 611, column: 19, scope: !611)
!618 = !DILocation(line: 611, column: 10, scope: !619)
!619 = !DILexicalBlockFile(scope: !611, file: !85, discriminator: 1)
!620 = !DILocation(line: 610, column: 3, scope: !611)
!621 = !DILocation(line: 613, column: 2, scope: !483)
!622 = !DILocation(line: 613, column: 12, scope: !483)
!623 = !DILocation(line: 613, column: 40, scope: !483)
!624 = !DILocation(line: 615, column: 2, scope: !483)
!625 = !DILocation(line: 616, column: 1, scope: !483)
!626 = distinct !DISubprogram(name: "serial_close", scope: !85, file: !85, line: 619, type: !100, isLocal: true, isDefinition: true, scopeLine: 620, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!627 = !DILocalVariable(name: "handle", arg: 1, scope: !626, file: !85, line: 619, type: !97)
!628 = !DILocation(line: 619, column: 26, scope: !626)
!629 = !DILocalVariable(name: "i", scope: !626, file: !85, line: 621, type: !29)
!630 = !DILocation(line: 621, column: 6, scope: !626)
!631 = !DILocation(line: 621, column: 27, scope: !626)
!632 = !DILocation(line: 621, column: 10, scope: !626)
!633 = !DILocation(line: 622, column: 6, scope: !634)
!634 = distinct !DILexicalBlock(scope: !626, file: !85, line: 622, column: 6)
!635 = !DILocation(line: 622, column: 8, scope: !634)
!636 = !DILocation(line: 622, column: 6, scope: !626)
!637 = !DILocation(line: 623, column: 18, scope: !634)
!638 = !DILocation(line: 623, column: 3, scope: !634)
!639 = !DILocation(line: 623, column: 21, scope: !634)
!640 = !DILocation(line: 623, column: 28, scope: !634)
!641 = !DILocation(line: 625, column: 17, scope: !626)
!642 = !DILocation(line: 625, column: 2, scope: !626)
!643 = !DILocation(line: 626, column: 8, scope: !626)
!644 = !DILocation(line: 626, column: 2, scope: !626)
!645 = !DILocation(line: 627, column: 2, scope: !626)
!646 = distinct !DISubprogram(name: "serial_read", scope: !85, file: !85, line: 631, type: !104, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!647 = !DILocalVariable(name: "handle", arg: 1, scope: !646, file: !85, line: 631, type: !97)
!648 = !DILocation(line: 631, column: 25, scope: !646)
!649 = !DILocalVariable(name: "data", arg: 2, scope: !646, file: !85, line: 631, type: !106)
!650 = !DILocation(line: 631, column: 41, scope: !646)
!651 = !DILocalVariable(name: "length", arg: 3, scope: !646, file: !85, line: 631, type: !32)
!652 = !DILocation(line: 631, column: 54, scope: !646)
!653 = !DILocalVariable(name: "offset", arg: 4, scope: !646, file: !85, line: 631, type: !32)
!654 = !DILocation(line: 631, column: 69, scope: !646)
!655 = !DILocalVariable(name: "result", arg: 5, scope: !646, file: !85, line: 631, type: !82)
!656 = !DILocation(line: 631, column: 86, scope: !646)
!657 = !DILocation(line: 633, column: 9, scope: !646)
!658 = !DILocalVariable(name: "timeout", scope: !646, file: !85, line: 634, type: !659)
!659 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!660 = !DILocation(line: 634, column: 7, scope: !646)
!661 = !DILocalVariable(name: "pser_inf", scope: !646, file: !85, line: 635, type: !23)
!662 = !DILocation(line: 635, column: 17, scope: !646)
!663 = !DILocalVariable(name: "ptermios", scope: !646, file: !85, line: 636, type: !57)
!664 = !DILocation(line: 636, column: 18, scope: !646)
!665 = !DILocalVariable(name: "bytes_inqueue", scope: !646, file: !85, line: 638, type: !29)
!666 = !DILocation(line: 638, column: 6, scope: !646)
!667 = !DILocation(line: 642, column: 10, scope: !646)
!668 = !DILocation(line: 643, column: 29, scope: !646)
!669 = !DILocation(line: 643, column: 13, scope: !646)
!670 = !DILocation(line: 643, column: 11, scope: !646)
!671 = !DILocation(line: 644, column: 13, scope: !646)
!672 = !DILocation(line: 644, column: 23, scope: !646)
!673 = !DILocation(line: 644, column: 11, scope: !646)
!674 = !DILocation(line: 648, column: 6, scope: !675)
!675 = distinct !DILexicalBlock(scope: !646, file: !85, line: 648, column: 6)
!676 = !DILocation(line: 648, column: 16, scope: !675)
!677 = !DILocation(line: 648, column: 48, scope: !675)
!678 = !DILocation(line: 648, column: 58, scope: !675)
!679 = !DILocation(line: 648, column: 46, scope: !675)
!680 = !DILocation(line: 648, column: 6, scope: !646)
!681 = !DILocation(line: 651, column: 5, scope: !682)
!682 = distinct !DILexicalBlock(scope: !675, file: !85, line: 649, column: 2)
!683 = !DILocation(line: 651, column: 15, scope: !682)
!684 = !DILocation(line: 651, column: 47, scope: !682)
!685 = !DILocation(line: 651, column: 45, scope: !682)
!686 = !DILocation(line: 652, column: 5, scope: !682)
!687 = !DILocation(line: 652, column: 15, scope: !682)
!688 = !DILocation(line: 651, column: 54, scope: !682)
!689 = !DILocation(line: 652, column: 43, scope: !682)
!690 = !DILocation(line: 652, column: 49, scope: !682)
!691 = !DILocation(line: 651, column: 4, scope: !682)
!692 = !DILocation(line: 650, column: 11, scope: !682)
!693 = !DILocation(line: 653, column: 2, scope: !682)
!694 = !DILocation(line: 654, column: 11, scope: !695)
!695 = distinct !DILexicalBlock(scope: !675, file: !85, line: 654, column: 11)
!696 = !DILocation(line: 654, column: 21, scope: !695)
!697 = !DILocation(line: 654, column: 11, scope: !675)
!698 = !DILocation(line: 656, column: 14, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !85, line: 655, column: 2)
!700 = !DILocation(line: 656, column: 24, scope: !699)
!701 = !DILocation(line: 656, column: 48, scope: !699)
!702 = !DILocation(line: 656, column: 46, scope: !699)
!703 = !DILocation(line: 656, column: 55, scope: !699)
!704 = !DILocation(line: 656, column: 61, scope: !699)
!705 = !DILocation(line: 656, column: 13, scope: !699)
!706 = !DILocation(line: 656, column: 11, scope: !699)
!707 = !DILocation(line: 657, column: 2, scope: !699)
!708 = !DILocation(line: 662, column: 6, scope: !709)
!709 = distinct !DILexicalBlock(scope: !646, file: !85, line: 662, column: 6)
!710 = !DILocation(line: 662, column: 14, scope: !709)
!711 = !DILocation(line: 662, column: 6, scope: !646)
!712 = !DILocation(line: 664, column: 3, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !85, line: 663, column: 2)
!714 = !DILocation(line: 664, column: 13, scope: !713)
!715 = !DILocation(line: 664, column: 24, scope: !713)
!716 = !DILocation(line: 665, column: 3, scope: !713)
!717 = !DILocation(line: 665, column: 13, scope: !713)
!718 = !DILocation(line: 665, column: 23, scope: !713)
!719 = !DILocation(line: 666, column: 2, scope: !713)
!720 = !DILocation(line: 669, column: 26, scope: !721)
!721 = distinct !DILexicalBlock(scope: !709, file: !85, line: 668, column: 2)
!722 = !DILocation(line: 669, column: 3, scope: !721)
!723 = !DILocation(line: 669, column: 13, scope: !721)
!724 = !DILocation(line: 669, column: 24, scope: !721)
!725 = !DILocation(line: 670, column: 3, scope: !721)
!726 = !DILocation(line: 670, column: 13, scope: !721)
!727 = !DILocation(line: 670, column: 23, scope: !721)
!728 = !DILocation(line: 672, column: 12, scope: !646)
!729 = !DILocation(line: 672, column: 28, scope: !646)
!730 = !DILocation(line: 672, column: 2, scope: !646)
!731 = !DILocation(line: 675, column: 8, scope: !646)
!732 = !DILocation(line: 675, column: 2, scope: !646)
!733 = !DILocation(line: 676, column: 66, scope: !646)
!734 = !DILocation(line: 676, column: 81, scope: !646)
!735 = !DILocation(line: 676, column: 2, scope: !646)
!736 = !DILocation(line: 679, column: 17, scope: !646)
!737 = !DILocation(line: 679, column: 25, scope: !646)
!738 = !DILocation(line: 679, column: 31, scope: !646)
!739 = !DILocation(line: 679, column: 12, scope: !646)
!740 = !DILocation(line: 679, column: 3, scope: !646)
!741 = !DILocation(line: 679, column: 10, scope: !646)
!742 = !DILocation(line: 681, column: 55, scope: !646)
!743 = !DILocation(line: 681, column: 54, scope: !646)
!744 = !DILocation(line: 681, column: 2, scope: !646)
!745 = !DILocation(line: 683, column: 2, scope: !646)
!746 = distinct !DISubprogram(name: "serial_write", scope: !85, file: !85, line: 687, type: !104, isLocal: true, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!747 = !DILocalVariable(name: "handle", arg: 1, scope: !746, file: !85, line: 687, type: !97)
!748 = !DILocation(line: 687, column: 26, scope: !746)
!749 = !DILocalVariable(name: "data", arg: 2, scope: !746, file: !85, line: 687, type: !106)
!750 = !DILocation(line: 687, column: 42, scope: !746)
!751 = !DILocalVariable(name: "length", arg: 3, scope: !746, file: !85, line: 687, type: !32)
!752 = !DILocation(line: 687, column: 55, scope: !746)
!753 = !DILocalVariable(name: "offset", arg: 4, scope: !746, file: !85, line: 687, type: !32)
!754 = !DILocation(line: 687, column: 70, scope: !746)
!755 = !DILocalVariable(name: "result", arg: 5, scope: !746, file: !85, line: 687, type: !82)
!756 = !DILocation(line: 687, column: 87, scope: !746)
!757 = !DILocation(line: 689, column: 9, scope: !746)
!758 = !DILocalVariable(name: "pser_inf", scope: !746, file: !85, line: 690, type: !23)
!759 = !DILocation(line: 690, column: 17, scope: !746)
!760 = !DILocation(line: 694, column: 29, scope: !746)
!761 = !DILocation(line: 694, column: 13, scope: !746)
!762 = !DILocation(line: 694, column: 11, scope: !746)
!763 = !DILocation(line: 696, column: 18, scope: !746)
!764 = !DILocation(line: 696, column: 26, scope: !746)
!765 = !DILocation(line: 696, column: 32, scope: !746)
!766 = !DILocation(line: 696, column: 12, scope: !746)
!767 = !DILocation(line: 696, column: 3, scope: !746)
!768 = !DILocation(line: 696, column: 10, scope: !746)
!769 = !DILocation(line: 698, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !746, file: !85, line: 698, column: 6)
!771 = !DILocation(line: 698, column: 6, scope: !770)
!772 = !DILocation(line: 698, column: 14, scope: !770)
!773 = !DILocation(line: 698, column: 6, scope: !746)
!774 = !DILocation(line: 699, column: 30, scope: !770)
!775 = !DILocation(line: 699, column: 29, scope: !770)
!776 = !DILocation(line: 699, column: 3, scope: !770)
!777 = !DILocation(line: 699, column: 13, scope: !770)
!778 = !DILocation(line: 699, column: 27, scope: !770)
!779 = !DILocation(line: 701, column: 59, scope: !746)
!780 = !DILocation(line: 701, column: 58, scope: !746)
!781 = !DILocation(line: 701, column: 2, scope: !746)
!782 = !DILocation(line: 703, column: 2, scope: !746)
!783 = distinct !DISubprogram(name: "serial_device_control", scope: !85, file: !85, line: 707, type: !110, isLocal: true, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!784 = !DILocalVariable(name: "handle", arg: 1, scope: !783, file: !85, line: 707, type: !97)
!785 = !DILocation(line: 707, column: 35, scope: !783)
!786 = !DILocalVariable(name: "request", arg: 2, scope: !783, file: !85, line: 707, type: !32)
!787 = !DILocation(line: 707, column: 50, scope: !783)
!788 = !DILocalVariable(name: "in", arg: 3, scope: !783, file: !85, line: 707, type: !112)
!789 = !DILocation(line: 707, column: 66, scope: !783)
!790 = !DILocalVariable(name: "out", arg: 4, scope: !783, file: !85, line: 707, type: !112)
!791 = !DILocation(line: 707, column: 77, scope: !783)
!792 = !DILocalVariable(name: "purge_mask", scope: !783, file: !85, line: 709, type: !29)
!793 = !DILocation(line: 709, column: 6, scope: !783)
!794 = !DILocalVariable(name: "result", scope: !783, file: !85, line: 710, type: !32)
!795 = !DILocation(line: 710, column: 9, scope: !783)
!796 = !DILocalVariable(name: "modemstate", scope: !783, file: !85, line: 710, type: !32)
!797 = !DILocation(line: 710, column: 17, scope: !783)
!798 = !DILocalVariable(name: "immediate", scope: !783, file: !85, line: 711, type: !48)
!799 = !DILocation(line: 711, column: 8, scope: !783)
!800 = !DILocalVariable(name: "pser_inf", scope: !783, file: !85, line: 712, type: !23)
!801 = !DILocation(line: 712, column: 17, scope: !783)
!802 = !DILocation(line: 714, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !783, file: !85, line: 714, column: 6)
!804 = !DILocation(line: 714, column: 15, scope: !803)
!805 = !DILocation(line: 714, column: 22, scope: !803)
!806 = !DILocation(line: 714, column: 6, scope: !783)
!807 = !DILocation(line: 715, column: 3, scope: !803)
!808 = !DILocation(line: 717, column: 29, scope: !783)
!809 = !DILocation(line: 717, column: 13, scope: !783)
!810 = !DILocation(line: 717, column: 11, scope: !783)
!811 = !DILocation(line: 720, column: 10, scope: !783)
!812 = !DILocation(line: 721, column: 10, scope: !783)
!813 = !DILocation(line: 723, column: 10, scope: !783)
!814 = !DILocation(line: 723, column: 2, scope: !783)
!815 = !DILocation(line: 726, column: 41, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !85, line: 726, column: 4)
!817 = distinct !DILexicalBlock(scope: !783, file: !85, line: 724, column: 2)
!818 = !DILocation(line: 726, column: 46, scope: !816)
!819 = !DILocation(line: 726, column: 28, scope: !816)
!820 = !DILocation(line: 726, column: 6, scope: !816)
!821 = !DILocation(line: 726, column: 16, scope: !816)
!822 = !DILocation(line: 726, column: 26, scope: !816)
!823 = !DILocation(line: 726, column: 51, scope: !816)
!824 = !DILocation(line: 726, column: 56, scope: !816)
!825 = !DILocation(line: 726, column: 58, scope: !816)
!826 = !DILocation(line: 727, column: 16, scope: !817)
!827 = !DILocation(line: 727, column: 26, scope: !817)
!828 = !DILocation(line: 727, column: 4, scope: !817)
!829 = !DILocation(line: 729, column: 11, scope: !817)
!830 = !DILocation(line: 729, column: 21, scope: !817)
!831 = !DILocation(line: 728, column: 4, scope: !817)
!832 = !DILocation(line: 730, column: 4, scope: !817)
!833 = !DILocation(line: 732, column: 30, scope: !834)
!834 = distinct !DILexicalBlock(scope: !817, file: !85, line: 732, column: 4)
!835 = !DILocation(line: 732, column: 40, scope: !834)
!836 = !DILocation(line: 732, column: 19, scope: !834)
!837 = !DILocation(line: 732, column: 25, scope: !834)
!838 = !DILocation(line: 732, column: 6, scope: !834)
!839 = !DILocation(line: 732, column: 28, scope: !834)
!840 = !DILocation(line: 732, column: 52, scope: !834)
!841 = !DILocation(line: 732, column: 58, scope: !834)
!842 = !DILocation(line: 732, column: 60, scope: !834)
!843 = !DILocation(line: 734, column: 11, scope: !817)
!844 = !DILocation(line: 734, column: 21, scope: !817)
!845 = !DILocation(line: 733, column: 4, scope: !817)
!846 = !DILocation(line: 735, column: 4, scope: !817)
!847 = !DILocation(line: 737, column: 45, scope: !848)
!848 = distinct !DILexicalBlock(scope: !817, file: !85, line: 737, column: 4)
!849 = !DILocation(line: 737, column: 50, scope: !848)
!850 = !DILocation(line: 737, column: 32, scope: !848)
!851 = !DILocation(line: 737, column: 6, scope: !848)
!852 = !DILocation(line: 737, column: 16, scope: !848)
!853 = !DILocation(line: 737, column: 30, scope: !848)
!854 = !DILocation(line: 737, column: 55, scope: !848)
!855 = !DILocation(line: 737, column: 60, scope: !848)
!856 = !DILocation(line: 737, column: 62, scope: !848)
!857 = !DILocation(line: 738, column: 46, scope: !858)
!858 = distinct !DILexicalBlock(scope: !817, file: !85, line: 738, column: 4)
!859 = !DILocation(line: 738, column: 51, scope: !858)
!860 = !DILocation(line: 738, column: 33, scope: !858)
!861 = !DILocation(line: 738, column: 6, scope: !858)
!862 = !DILocation(line: 738, column: 16, scope: !858)
!863 = !DILocation(line: 738, column: 31, scope: !858)
!864 = !DILocation(line: 738, column: 56, scope: !858)
!865 = !DILocation(line: 738, column: 61, scope: !858)
!866 = !DILocation(line: 738, column: 63, scope: !858)
!867 = !DILocation(line: 741, column: 11, scope: !817)
!868 = !DILocation(line: 741, column: 21, scope: !817)
!869 = !DILocation(line: 741, column: 36, scope: !817)
!870 = !DILocation(line: 741, column: 46, scope: !817)
!871 = !DILocation(line: 739, column: 4, scope: !817)
!872 = !DILocation(line: 742, column: 4, scope: !817)
!873 = !DILocation(line: 744, column: 29, scope: !817)
!874 = !DILocation(line: 744, column: 34, scope: !817)
!875 = !DILocation(line: 744, column: 35, scope: !817)
!876 = !DILocation(line: 744, column: 26, scope: !817)
!877 = !DILocation(line: 744, column: 4, scope: !817)
!878 = !DILocation(line: 744, column: 14, scope: !817)
!879 = !DILocation(line: 744, column: 24, scope: !817)
!880 = !DILocation(line: 745, column: 26, scope: !817)
!881 = !DILocation(line: 745, column: 31, scope: !817)
!882 = !DILocation(line: 745, column: 32, scope: !817)
!883 = !DILocation(line: 745, column: 23, scope: !817)
!884 = !DILocation(line: 745, column: 4, scope: !817)
!885 = !DILocation(line: 745, column: 14, scope: !817)
!886 = !DILocation(line: 745, column: 21, scope: !817)
!887 = !DILocation(line: 746, column: 31, scope: !817)
!888 = !DILocation(line: 746, column: 36, scope: !817)
!889 = !DILocation(line: 746, column: 37, scope: !817)
!890 = !DILocation(line: 746, column: 28, scope: !817)
!891 = !DILocation(line: 746, column: 4, scope: !817)
!892 = !DILocation(line: 746, column: 14, scope: !817)
!893 = !DILocation(line: 746, column: 26, scope: !817)
!894 = !DILocation(line: 747, column: 16, scope: !817)
!895 = !DILocation(line: 747, column: 26, scope: !817)
!896 = !DILocation(line: 747, column: 4, scope: !817)
!897 = !DILocation(line: 750, column: 11, scope: !817)
!898 = !DILocation(line: 750, column: 21, scope: !817)
!899 = !DILocation(line: 750, column: 32, scope: !817)
!900 = !DILocation(line: 750, column: 42, scope: !817)
!901 = !DILocation(line: 750, column: 50, scope: !817)
!902 = !DILocation(line: 750, column: 60, scope: !817)
!903 = !DILocation(line: 748, column: 4, scope: !817)
!904 = !DILocation(line: 751, column: 4, scope: !817)
!905 = !DILocation(line: 753, column: 4, scope: !817)
!906 = !DILocation(line: 754, column: 20, scope: !817)
!907 = !DILocation(line: 754, column: 30, scope: !817)
!908 = !DILocation(line: 754, column: 7, scope: !817)
!909 = !DILocation(line: 754, column: 13, scope: !817)
!910 = !DILocation(line: 754, column: 14, scope: !817)
!911 = !DILocation(line: 754, column: 18, scope: !817)
!912 = !DILocation(line: 755, column: 20, scope: !817)
!913 = !DILocation(line: 755, column: 30, scope: !817)
!914 = !DILocation(line: 755, column: 7, scope: !817)
!915 = !DILocation(line: 755, column: 13, scope: !817)
!916 = !DILocation(line: 755, column: 14, scope: !817)
!917 = !DILocation(line: 755, column: 18, scope: !817)
!918 = !DILocation(line: 756, column: 20, scope: !817)
!919 = !DILocation(line: 756, column: 30, scope: !817)
!920 = !DILocation(line: 756, column: 7, scope: !817)
!921 = !DILocation(line: 756, column: 13, scope: !817)
!922 = !DILocation(line: 756, column: 14, scope: !817)
!923 = !DILocation(line: 756, column: 18, scope: !817)
!924 = !DILocation(line: 757, column: 4, scope: !817)
!925 = !DILocation(line: 759, column: 4, scope: !817)
!926 = !DILocation(line: 760, column: 19, scope: !817)
!927 = !DILocation(line: 760, column: 24, scope: !817)
!928 = !DILocation(line: 760, column: 25, scope: !817)
!929 = !DILocation(line: 760, column: 16, scope: !817)
!930 = !DILocation(line: 760, column: 14, scope: !817)
!931 = !DILocation(line: 761, column: 17, scope: !817)
!932 = !DILocation(line: 761, column: 4, scope: !817)
!933 = !DILocation(line: 762, column: 4, scope: !817)
!934 = !DILocation(line: 764, column: 4, scope: !817)
!935 = !DILocation(line: 765, column: 19, scope: !936)
!936 = distinct !DILexicalBlock(scope: !817, file: !85, line: 765, column: 4)
!937 = !DILocation(line: 765, column: 25, scope: !936)
!938 = !DILocation(line: 765, column: 6, scope: !936)
!939 = !DILocation(line: 765, column: 28, scope: !936)
!940 = !DILocation(line: 765, column: 34, scope: !936)
!941 = !DILocation(line: 765, column: 40, scope: !936)
!942 = !DILocation(line: 765, column: 42, scope: !936)
!943 = !DILocation(line: 766, column: 4, scope: !817)
!944 = !DILocation(line: 768, column: 4, scope: !817)
!945 = !DILocation(line: 769, column: 14, scope: !946)
!946 = distinct !DILexicalBlock(scope: !817, file: !85, line: 769, column: 4)
!947 = !DILocation(line: 769, column: 20, scope: !946)
!948 = !DILocation(line: 769, column: 22, scope: !946)
!949 = !DILocation(line: 769, column: 32, scope: !946)
!950 = !DILocation(line: 769, column: 6, scope: !946)
!951 = !DILocation(line: 769, column: 43, scope: !946)
!952 = !DILocation(line: 769, column: 49, scope: !946)
!953 = !DILocation(line: 769, column: 51, scope: !946)
!954 = !DILocation(line: 770, column: 4, scope: !817)
!955 = !DILocation(line: 772, column: 4, scope: !817)
!956 = !DILocation(line: 773, column: 13, scope: !957)
!957 = distinct !DILexicalBlock(scope: !817, file: !85, line: 773, column: 4)
!958 = !DILocation(line: 773, column: 23, scope: !957)
!959 = !DILocation(line: 773, column: 6, scope: !957)
!960 = !DILocation(line: 773, column: 30, scope: !957)
!961 = !DILocation(line: 773, column: 35, scope: !957)
!962 = !DILocation(line: 773, column: 42, scope: !957)
!963 = !DILocation(line: 773, column: 47, scope: !957)
!964 = !DILocation(line: 773, column: 49, scope: !957)
!965 = !DILocation(line: 774, column: 16, scope: !817)
!966 = !DILocation(line: 774, column: 26, scope: !817)
!967 = !DILocation(line: 774, column: 4, scope: !817)
!968 = !DILocation(line: 775, column: 4, scope: !817)
!969 = !DILocation(line: 777, column: 4, scope: !817)
!970 = !DILocation(line: 778, column: 16, scope: !817)
!971 = !DILocation(line: 778, column: 26, scope: !817)
!972 = !DILocation(line: 778, column: 4, scope: !817)
!973 = !DILocation(line: 779, column: 30, scope: !974)
!974 = distinct !DILexicalBlock(scope: !817, file: !85, line: 779, column: 4)
!975 = !DILocation(line: 779, column: 40, scope: !974)
!976 = !DILocation(line: 779, column: 19, scope: !974)
!977 = !DILocation(line: 779, column: 25, scope: !974)
!978 = !DILocation(line: 779, column: 6, scope: !974)
!979 = !DILocation(line: 779, column: 28, scope: !974)
!980 = !DILocation(line: 779, column: 50, scope: !974)
!981 = !DILocation(line: 779, column: 56, scope: !974)
!982 = !DILocation(line: 779, column: 58, scope: !974)
!983 = !DILocation(line: 780, column: 30, scope: !984)
!984 = distinct !DILexicalBlock(scope: !817, file: !85, line: 780, column: 4)
!985 = !DILocation(line: 780, column: 40, scope: !984)
!986 = !DILocation(line: 780, column: 19, scope: !984)
!987 = !DILocation(line: 780, column: 25, scope: !984)
!988 = !DILocation(line: 780, column: 6, scope: !984)
!989 = !DILocation(line: 780, column: 28, scope: !984)
!990 = !DILocation(line: 780, column: 49, scope: !984)
!991 = !DILocation(line: 780, column: 55, scope: !984)
!992 = !DILocation(line: 780, column: 57, scope: !984)
!993 = !DILocation(line: 781, column: 30, scope: !994)
!994 = distinct !DILexicalBlock(scope: !817, file: !85, line: 781, column: 4)
!995 = !DILocation(line: 781, column: 40, scope: !994)
!996 = !DILocation(line: 781, column: 19, scope: !994)
!997 = !DILocation(line: 781, column: 25, scope: !994)
!998 = !DILocation(line: 781, column: 6, scope: !994)
!999 = !DILocation(line: 781, column: 28, scope: !994)
!1000 = !DILocation(line: 781, column: 50, scope: !994)
!1001 = !DILocation(line: 781, column: 56, scope: !994)
!1002 = !DILocation(line: 781, column: 58, scope: !994)
!1003 = !DILocation(line: 782, column: 30, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !817, file: !85, line: 782, column: 4)
!1005 = !DILocation(line: 782, column: 40, scope: !1004)
!1006 = !DILocation(line: 782, column: 19, scope: !1004)
!1007 = !DILocation(line: 782, column: 25, scope: !1004)
!1008 = !DILocation(line: 782, column: 6, scope: !1004)
!1009 = !DILocation(line: 782, column: 28, scope: !1004)
!1010 = !DILocation(line: 782, column: 51, scope: !1004)
!1011 = !DILocation(line: 782, column: 57, scope: !1004)
!1012 = !DILocation(line: 782, column: 59, scope: !1004)
!1013 = !DILocation(line: 783, column: 4, scope: !817)
!1014 = !DILocation(line: 785, column: 39, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !817, file: !85, line: 785, column: 4)
!1016 = !DILocation(line: 785, column: 44, scope: !1015)
!1017 = !DILocation(line: 785, column: 26, scope: !1015)
!1018 = !DILocation(line: 785, column: 6, scope: !1015)
!1019 = !DILocation(line: 785, column: 16, scope: !1015)
!1020 = !DILocation(line: 785, column: 24, scope: !1015)
!1021 = !DILocation(line: 785, column: 49, scope: !1015)
!1022 = !DILocation(line: 785, column: 54, scope: !1015)
!1023 = !DILocation(line: 785, column: 56, scope: !1015)
!1024 = !DILocation(line: 786, column: 38, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !817, file: !85, line: 786, column: 4)
!1026 = !DILocation(line: 786, column: 43, scope: !1025)
!1027 = !DILocation(line: 786, column: 25, scope: !1025)
!1028 = !DILocation(line: 786, column: 6, scope: !1025)
!1029 = !DILocation(line: 786, column: 16, scope: !1025)
!1030 = !DILocation(line: 786, column: 23, scope: !1025)
!1031 = !DILocation(line: 786, column: 48, scope: !1025)
!1032 = !DILocation(line: 786, column: 53, scope: !1025)
!1033 = !DILocation(line: 786, column: 55, scope: !1025)
!1034 = !DILocation(line: 787, column: 39, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !817, file: !85, line: 787, column: 4)
!1036 = !DILocation(line: 787, column: 44, scope: !1035)
!1037 = !DILocation(line: 787, column: 26, scope: !1035)
!1038 = !DILocation(line: 787, column: 6, scope: !1035)
!1039 = !DILocation(line: 787, column: 16, scope: !1035)
!1040 = !DILocation(line: 787, column: 24, scope: !1035)
!1041 = !DILocation(line: 787, column: 49, scope: !1035)
!1042 = !DILocation(line: 787, column: 54, scope: !1035)
!1043 = !DILocation(line: 787, column: 56, scope: !1035)
!1044 = !DILocation(line: 788, column: 40, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !817, file: !85, line: 788, column: 4)
!1046 = !DILocation(line: 788, column: 45, scope: !1045)
!1047 = !DILocation(line: 788, column: 27, scope: !1045)
!1048 = !DILocation(line: 788, column: 6, scope: !1045)
!1049 = !DILocation(line: 788, column: 16, scope: !1045)
!1050 = !DILocation(line: 788, column: 25, scope: !1045)
!1051 = !DILocation(line: 788, column: 50, scope: !1045)
!1052 = !DILocation(line: 788, column: 55, scope: !1045)
!1053 = !DILocation(line: 788, column: 57, scope: !1045)
!1054 = !DILocation(line: 791, column: 11, scope: !817)
!1055 = !DILocation(line: 791, column: 21, scope: !817)
!1056 = !DILocation(line: 791, column: 30, scope: !817)
!1057 = !DILocation(line: 791, column: 40, scope: !817)
!1058 = !DILocation(line: 791, column: 48, scope: !817)
!1059 = !DILocation(line: 791, column: 58, scope: !817)
!1060 = !DILocation(line: 792, column: 11, scope: !817)
!1061 = !DILocation(line: 792, column: 21, scope: !817)
!1062 = !DILocation(line: 789, column: 4, scope: !817)
!1063 = !DILocation(line: 793, column: 16, scope: !817)
!1064 = !DILocation(line: 793, column: 26, scope: !817)
!1065 = !DILocation(line: 793, column: 4, scope: !817)
!1066 = !DILocation(line: 794, column: 4, scope: !817)
!1067 = !DILocation(line: 796, column: 53, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !817, file: !85, line: 796, column: 4)
!1069 = !DILocation(line: 796, column: 58, scope: !1068)
!1070 = !DILocation(line: 796, column: 40, scope: !1068)
!1071 = !DILocation(line: 796, column: 6, scope: !1068)
!1072 = !DILocation(line: 796, column: 16, scope: !1068)
!1073 = !DILocation(line: 796, column: 38, scope: !1068)
!1074 = !DILocation(line: 796, column: 63, scope: !1068)
!1075 = !DILocation(line: 796, column: 68, scope: !1068)
!1076 = !DILocation(line: 796, column: 70, scope: !1068)
!1077 = !DILocation(line: 797, column: 61, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !817, file: !85, line: 797, column: 4)
!1079 = !DILocation(line: 797, column: 66, scope: !1078)
!1080 = !DILocation(line: 797, column: 48, scope: !1078)
!1081 = !DILocation(line: 797, column: 6, scope: !1078)
!1082 = !DILocation(line: 797, column: 16, scope: !1078)
!1083 = !DILocation(line: 797, column: 46, scope: !1078)
!1084 = !DILocation(line: 797, column: 71, scope: !1078)
!1085 = !DILocation(line: 797, column: 76, scope: !1078)
!1086 = !DILocation(line: 797, column: 78, scope: !1078)
!1087 = !DILocation(line: 798, column: 59, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !817, file: !85, line: 798, column: 4)
!1089 = !DILocation(line: 798, column: 64, scope: !1088)
!1090 = !DILocation(line: 798, column: 46, scope: !1088)
!1091 = !DILocation(line: 798, column: 6, scope: !1088)
!1092 = !DILocation(line: 798, column: 16, scope: !1088)
!1093 = !DILocation(line: 798, column: 44, scope: !1088)
!1094 = !DILocation(line: 798, column: 69, scope: !1088)
!1095 = !DILocation(line: 798, column: 74, scope: !1088)
!1096 = !DILocation(line: 798, column: 76, scope: !1088)
!1097 = !DILocation(line: 799, column: 62, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !817, file: !85, line: 799, column: 4)
!1099 = !DILocation(line: 799, column: 67, scope: !1098)
!1100 = !DILocation(line: 799, column: 49, scope: !1098)
!1101 = !DILocation(line: 799, column: 6, scope: !1098)
!1102 = !DILocation(line: 799, column: 16, scope: !1098)
!1103 = !DILocation(line: 799, column: 47, scope: !1098)
!1104 = !DILocation(line: 799, column: 72, scope: !1098)
!1105 = !DILocation(line: 799, column: 77, scope: !1098)
!1106 = !DILocation(line: 799, column: 79, scope: !1098)
!1107 = !DILocation(line: 800, column: 60, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !817, file: !85, line: 800, column: 4)
!1109 = !DILocation(line: 800, column: 65, scope: !1108)
!1110 = !DILocation(line: 800, column: 47, scope: !1108)
!1111 = !DILocation(line: 800, column: 6, scope: !1108)
!1112 = !DILocation(line: 800, column: 16, scope: !1108)
!1113 = !DILocation(line: 800, column: 45, scope: !1108)
!1114 = !DILocation(line: 800, column: 70, scope: !1108)
!1115 = !DILocation(line: 800, column: 75, scope: !1108)
!1116 = !DILocation(line: 800, column: 77, scope: !1108)
!1117 = !DILocation(line: 803, column: 11, scope: !817)
!1118 = !DILocation(line: 803, column: 21, scope: !817)
!1119 = !DILocation(line: 804, column: 11, scope: !817)
!1120 = !DILocation(line: 804, column: 21, scope: !817)
!1121 = !DILocation(line: 805, column: 11, scope: !817)
!1122 = !DILocation(line: 805, column: 21, scope: !817)
!1123 = !DILocation(line: 801, column: 4, scope: !817)
!1124 = !DILocation(line: 806, column: 4, scope: !817)
!1125 = !DILocation(line: 810, column: 11, scope: !817)
!1126 = !DILocation(line: 810, column: 21, scope: !817)
!1127 = !DILocation(line: 811, column: 11, scope: !817)
!1128 = !DILocation(line: 811, column: 21, scope: !817)
!1129 = !DILocation(line: 812, column: 11, scope: !817)
!1130 = !DILocation(line: 812, column: 21, scope: !817)
!1131 = !DILocation(line: 808, column: 4, scope: !817)
!1132 = !DILocation(line: 814, column: 30, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !817, file: !85, line: 814, column: 4)
!1134 = !DILocation(line: 814, column: 40, scope: !1133)
!1135 = !DILocation(line: 814, column: 19, scope: !1133)
!1136 = !DILocation(line: 814, column: 25, scope: !1133)
!1137 = !DILocation(line: 814, column: 6, scope: !1133)
!1138 = !DILocation(line: 814, column: 28, scope: !1133)
!1139 = !DILocation(line: 814, column: 64, scope: !1133)
!1140 = !DILocation(line: 814, column: 70, scope: !1133)
!1141 = !DILocation(line: 814, column: 72, scope: !1133)
!1142 = !DILocation(line: 815, column: 30, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !817, file: !85, line: 815, column: 4)
!1144 = !DILocation(line: 815, column: 40, scope: !1143)
!1145 = !DILocation(line: 815, column: 19, scope: !1143)
!1146 = !DILocation(line: 815, column: 25, scope: !1143)
!1147 = !DILocation(line: 815, column: 6, scope: !1143)
!1148 = !DILocation(line: 815, column: 28, scope: !1143)
!1149 = !DILocation(line: 815, column: 72, scope: !1143)
!1150 = !DILocation(line: 815, column: 78, scope: !1143)
!1151 = !DILocation(line: 815, column: 80, scope: !1143)
!1152 = !DILocation(line: 816, column: 30, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !817, file: !85, line: 816, column: 4)
!1154 = !DILocation(line: 816, column: 40, scope: !1153)
!1155 = !DILocation(line: 816, column: 19, scope: !1153)
!1156 = !DILocation(line: 816, column: 25, scope: !1153)
!1157 = !DILocation(line: 816, column: 6, scope: !1153)
!1158 = !DILocation(line: 816, column: 28, scope: !1153)
!1159 = !DILocation(line: 816, column: 70, scope: !1153)
!1160 = !DILocation(line: 816, column: 76, scope: !1153)
!1161 = !DILocation(line: 816, column: 78, scope: !1153)
!1162 = !DILocation(line: 817, column: 30, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !817, file: !85, line: 817, column: 4)
!1164 = !DILocation(line: 817, column: 40, scope: !1163)
!1165 = !DILocation(line: 817, column: 19, scope: !1163)
!1166 = !DILocation(line: 817, column: 25, scope: !1163)
!1167 = !DILocation(line: 817, column: 6, scope: !1163)
!1168 = !DILocation(line: 817, column: 28, scope: !1163)
!1169 = !DILocation(line: 817, column: 73, scope: !1163)
!1170 = !DILocation(line: 817, column: 79, scope: !1163)
!1171 = !DILocation(line: 817, column: 81, scope: !1163)
!1172 = !DILocation(line: 818, column: 30, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !817, file: !85, line: 818, column: 4)
!1174 = !DILocation(line: 818, column: 40, scope: !1173)
!1175 = !DILocation(line: 818, column: 19, scope: !1173)
!1176 = !DILocation(line: 818, column: 25, scope: !1173)
!1177 = !DILocation(line: 818, column: 6, scope: !1173)
!1178 = !DILocation(line: 818, column: 28, scope: !1173)
!1179 = !DILocation(line: 818, column: 71, scope: !1173)
!1180 = !DILocation(line: 818, column: 77, scope: !1173)
!1181 = !DILocation(line: 818, column: 79, scope: !1173)
!1182 = !DILocation(line: 819, column: 4, scope: !817)
!1183 = !DILocation(line: 822, column: 11, scope: !817)
!1184 = !DILocation(line: 822, column: 21, scope: !817)
!1185 = !DILocation(line: 821, column: 4, scope: !817)
!1186 = !DILocation(line: 823, column: 30, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !817, file: !85, line: 823, column: 4)
!1188 = !DILocation(line: 823, column: 40, scope: !1187)
!1189 = !DILocation(line: 823, column: 19, scope: !1187)
!1190 = !DILocation(line: 823, column: 25, scope: !1187)
!1191 = !DILocation(line: 823, column: 6, scope: !1187)
!1192 = !DILocation(line: 823, column: 28, scope: !1187)
!1193 = !DILocation(line: 823, column: 52, scope: !1187)
!1194 = !DILocation(line: 823, column: 58, scope: !1187)
!1195 = !DILocation(line: 823, column: 60, scope: !1187)
!1196 = !DILocation(line: 824, column: 4, scope: !817)
!1197 = !DILocation(line: 826, column: 41, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !817, file: !85, line: 826, column: 4)
!1199 = !DILocation(line: 826, column: 46, scope: !1198)
!1200 = !DILocation(line: 826, column: 28, scope: !1198)
!1201 = !DILocation(line: 826, column: 6, scope: !1198)
!1202 = !DILocation(line: 826, column: 16, scope: !1198)
!1203 = !DILocation(line: 826, column: 26, scope: !1198)
!1204 = !DILocation(line: 826, column: 51, scope: !1198)
!1205 = !DILocation(line: 826, column: 56, scope: !1198)
!1206 = !DILocation(line: 826, column: 58, scope: !1198)
!1207 = !DILocation(line: 828, column: 11, scope: !817)
!1208 = !DILocation(line: 828, column: 21, scope: !817)
!1209 = !DILocation(line: 827, column: 4, scope: !817)
!1210 = !DILocation(line: 829, column: 4, scope: !817)
!1211 = !DILocation(line: 831, column: 4, scope: !817)
!1212 = !DILocation(line: 832, column: 10, scope: !817)
!1213 = !DILocation(line: 832, column: 4, scope: !817)
!1214 = !DILocation(line: 833, column: 11, scope: !817)
!1215 = !DILocation(line: 834, column: 10, scope: !817)
!1216 = !DILocation(line: 834, column: 4, scope: !817)
!1217 = !DILocation(line: 835, column: 4, scope: !817)
!1218 = !DILocation(line: 835, column: 14, scope: !817)
!1219 = !DILocation(line: 835, column: 18, scope: !817)
!1220 = !DILocation(line: 836, column: 4, scope: !817)
!1221 = !DILocation(line: 838, column: 4, scope: !817)
!1222 = !DILocation(line: 839, column: 10, scope: !817)
!1223 = !DILocation(line: 839, column: 4, scope: !817)
!1224 = !DILocation(line: 840, column: 11, scope: !817)
!1225 = !DILocation(line: 841, column: 10, scope: !817)
!1226 = !DILocation(line: 841, column: 4, scope: !817)
!1227 = !DILocation(line: 842, column: 4, scope: !817)
!1228 = !DILocation(line: 842, column: 14, scope: !817)
!1229 = !DILocation(line: 842, column: 18, scope: !817)
!1230 = !DILocation(line: 843, column: 4, scope: !817)
!1231 = !DILocation(line: 845, column: 4, scope: !817)
!1232 = !DILocation(line: 846, column: 10, scope: !817)
!1233 = !DILocation(line: 846, column: 4, scope: !817)
!1234 = !DILocation(line: 847, column: 11, scope: !817)
!1235 = !DILocation(line: 848, column: 10, scope: !817)
!1236 = !DILocation(line: 848, column: 4, scope: !817)
!1237 = !DILocation(line: 849, column: 4, scope: !817)
!1238 = !DILocation(line: 849, column: 14, scope: !817)
!1239 = !DILocation(line: 849, column: 18, scope: !817)
!1240 = !DILocation(line: 850, column: 4, scope: !817)
!1241 = !DILocation(line: 852, column: 4, scope: !817)
!1242 = !DILocation(line: 853, column: 10, scope: !817)
!1243 = !DILocation(line: 853, column: 4, scope: !817)
!1244 = !DILocation(line: 854, column: 11, scope: !817)
!1245 = !DILocation(line: 855, column: 10, scope: !817)
!1246 = !DILocation(line: 855, column: 4, scope: !817)
!1247 = !DILocation(line: 856, column: 4, scope: !817)
!1248 = !DILocation(line: 856, column: 14, scope: !817)
!1249 = !DILocation(line: 856, column: 18, scope: !817)
!1250 = !DILocation(line: 857, column: 4, scope: !817)
!1251 = !DILocation(line: 859, column: 15, scope: !817)
!1252 = !DILocation(line: 861, column: 10, scope: !817)
!1253 = !DILocation(line: 861, column: 4, scope: !817)
!1254 = !DILocation(line: 862, column: 8, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !817, file: !85, line: 862, column: 8)
!1256 = !DILocation(line: 862, column: 15, scope: !1255)
!1257 = !DILocation(line: 862, column: 8, scope: !817)
!1258 = !DILocation(line: 863, column: 16, scope: !1255)
!1259 = !DILocation(line: 863, column: 5, scope: !1255)
!1260 = !DILocation(line: 864, column: 8, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !817, file: !85, line: 864, column: 8)
!1262 = !DILocation(line: 864, column: 15, scope: !1261)
!1263 = !DILocation(line: 864, column: 8, scope: !817)
!1264 = !DILocation(line: 865, column: 16, scope: !1261)
!1265 = !DILocation(line: 865, column: 5, scope: !1261)
!1266 = !DILocation(line: 866, column: 8, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !817, file: !85, line: 866, column: 8)
!1268 = !DILocation(line: 866, column: 15, scope: !1267)
!1269 = !DILocation(line: 866, column: 8, scope: !817)
!1270 = !DILocation(line: 867, column: 16, scope: !1267)
!1271 = !DILocation(line: 867, column: 5, scope: !1267)
!1272 = !DILocation(line: 868, column: 8, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !817, file: !85, line: 868, column: 8)
!1274 = !DILocation(line: 868, column: 15, scope: !1273)
!1275 = !DILocation(line: 868, column: 8, scope: !817)
!1276 = !DILocation(line: 869, column: 16, scope: !1273)
!1277 = !DILocation(line: 869, column: 5, scope: !1273)
!1278 = !DILocation(line: 870, column: 8, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !817, file: !85, line: 870, column: 8)
!1280 = !DILocation(line: 870, column: 15, scope: !1279)
!1281 = !DILocation(line: 870, column: 8, scope: !817)
!1282 = !DILocation(line: 871, column: 16, scope: !1279)
!1283 = !DILocation(line: 871, column: 5, scope: !1279)
!1284 = !DILocation(line: 872, column: 8, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !817, file: !85, line: 872, column: 8)
!1286 = !DILocation(line: 872, column: 15, scope: !1285)
!1287 = !DILocation(line: 872, column: 8, scope: !817)
!1288 = !DILocation(line: 873, column: 16, scope: !1285)
!1289 = !DILocation(line: 873, column: 5, scope: !1285)
!1290 = !DILocation(line: 876, column: 68, scope: !817)
!1291 = !DILocation(line: 875, column: 4, scope: !817)
!1292 = !DILocation(line: 877, column: 30, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !817, file: !85, line: 877, column: 4)
!1294 = !DILocation(line: 877, column: 19, scope: !1293)
!1295 = !DILocation(line: 877, column: 25, scope: !1293)
!1296 = !DILocation(line: 877, column: 6, scope: !1293)
!1297 = !DILocation(line: 877, column: 28, scope: !1293)
!1298 = !DILocation(line: 877, column: 43, scope: !1293)
!1299 = !DILocation(line: 877, column: 49, scope: !1293)
!1300 = !DILocation(line: 877, column: 51, scope: !1293)
!1301 = !DILocation(line: 878, column: 4, scope: !817)
!1302 = !DILocation(line: 880, column: 19, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !817, file: !85, line: 880, column: 4)
!1304 = !DILocation(line: 880, column: 25, scope: !1303)
!1305 = !DILocation(line: 880, column: 6, scope: !1303)
!1306 = !DILocation(line: 880, column: 28, scope: !1303)
!1307 = !DILocation(line: 880, column: 34, scope: !1303)
!1308 = !DILocation(line: 880, column: 40, scope: !1303)
!1309 = !DILocation(line: 880, column: 42, scope: !1303)
!1310 = !DILocation(line: 881, column: 19, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !817, file: !85, line: 881, column: 4)
!1312 = !DILocation(line: 881, column: 25, scope: !1311)
!1313 = !DILocation(line: 881, column: 6, scope: !1311)
!1314 = !DILocation(line: 881, column: 28, scope: !1311)
!1315 = !DILocation(line: 881, column: 34, scope: !1311)
!1316 = !DILocation(line: 881, column: 40, scope: !1311)
!1317 = !DILocation(line: 881, column: 42, scope: !1311)
!1318 = !DILocation(line: 883, column: 11, scope: !817)
!1319 = !DILocation(line: 885, column: 10, scope: !817)
!1320 = !DILocation(line: 885, column: 4, scope: !817)
!1321 = !DILocation(line: 887, column: 30, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !817, file: !85, line: 887, column: 4)
!1323 = !DILocation(line: 887, column: 19, scope: !1322)
!1324 = !DILocation(line: 887, column: 25, scope: !1322)
!1325 = !DILocation(line: 887, column: 6, scope: !1322)
!1326 = !DILocation(line: 887, column: 28, scope: !1322)
!1327 = !DILocation(line: 887, column: 39, scope: !1322)
!1328 = !DILocation(line: 887, column: 45, scope: !1322)
!1329 = !DILocation(line: 887, column: 47, scope: !1322)
!1330 = !DILocation(line: 888, column: 8, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !817, file: !85, line: 888, column: 8)
!1332 = !DILocation(line: 888, column: 8, scope: !817)
!1333 = !DILocation(line: 891, column: 12, scope: !1331)
!1334 = !DILocation(line: 889, column: 5, scope: !1331)
!1335 = !DILocation(line: 893, column: 11, scope: !817)
!1336 = !DILocation(line: 895, column: 10, scope: !817)
!1337 = !DILocation(line: 895, column: 4, scope: !817)
!1338 = !DILocation(line: 897, column: 30, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !817, file: !85, line: 897, column: 4)
!1340 = !DILocation(line: 897, column: 19, scope: !1339)
!1341 = !DILocation(line: 897, column: 25, scope: !1339)
!1342 = !DILocation(line: 897, column: 6, scope: !1339)
!1343 = !DILocation(line: 897, column: 28, scope: !1339)
!1344 = !DILocation(line: 897, column: 39, scope: !1339)
!1345 = !DILocation(line: 897, column: 45, scope: !1339)
!1346 = !DILocation(line: 897, column: 47, scope: !1339)
!1347 = !DILocation(line: 898, column: 8, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !817, file: !85, line: 898, column: 8)
!1349 = !DILocation(line: 898, column: 8, scope: !817)
!1350 = !DILocation(line: 901, column: 12, scope: !1348)
!1351 = !DILocation(line: 899, column: 5, scope: !1348)
!1352 = !DILocation(line: 903, column: 7, scope: !817)
!1353 = !DILocation(line: 903, column: 13, scope: !817)
!1354 = !DILocation(line: 903, column: 14, scope: !817)
!1355 = !DILocation(line: 903, column: 18, scope: !817)
!1356 = !DILocation(line: 904, column: 7, scope: !817)
!1357 = !DILocation(line: 904, column: 13, scope: !817)
!1358 = !DILocation(line: 904, column: 14, scope: !817)
!1359 = !DILocation(line: 904, column: 18, scope: !817)
!1360 = !DILocation(line: 905, column: 4, scope: !817)
!1361 = !DILocation(line: 907, column: 32, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !817, file: !85, line: 907, column: 4)
!1363 = !DILocation(line: 907, column: 37, scope: !1362)
!1364 = !DILocation(line: 907, column: 19, scope: !1362)
!1365 = !DILocation(line: 907, column: 17, scope: !1362)
!1366 = !DILocation(line: 907, column: 42, scope: !1362)
!1367 = !DILocation(line: 907, column: 47, scope: !1362)
!1368 = !DILocation(line: 907, column: 49, scope: !1362)
!1369 = !DILocation(line: 909, column: 11, scope: !817)
!1370 = !DILocation(line: 908, column: 4, scope: !817)
!1371 = !DILocation(line: 910, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !817, file: !85, line: 910, column: 8)
!1373 = !DILocation(line: 910, column: 20, scope: !1372)
!1374 = !DILocation(line: 911, column: 8, scope: !1372)
!1375 = !DILocation(line: 911, column: 12, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1372, file: !85, discriminator: 1)
!1377 = !DILocation(line: 911, column: 23, scope: !1376)
!1378 = !DILocation(line: 910, column: 8, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !817, file: !85, discriminator: 1)
!1380 = !DILocation(line: 912, column: 13, scope: !1372)
!1381 = !DILocation(line: 912, column: 5, scope: !1372)
!1382 = !DILocation(line: 913, column: 13, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1372, file: !85, line: 913, column: 13)
!1384 = !DILocation(line: 913, column: 24, scope: !1383)
!1385 = !DILocation(line: 913, column: 13, scope: !1372)
!1386 = !DILocation(line: 914, column: 13, scope: !1383)
!1387 = !DILocation(line: 914, column: 5, scope: !1383)
!1388 = !DILocation(line: 915, column: 13, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1383, file: !85, line: 915, column: 13)
!1390 = !DILocation(line: 915, column: 24, scope: !1389)
!1391 = !DILocation(line: 915, column: 13, scope: !1383)
!1392 = !DILocation(line: 916, column: 13, scope: !1389)
!1393 = !DILocation(line: 916, column: 5, scope: !1389)
!1394 = !DILocation(line: 917, column: 8, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !817, file: !85, line: 917, column: 8)
!1396 = !DILocation(line: 917, column: 19, scope: !1395)
!1397 = !DILocation(line: 917, column: 8, scope: !817)
!1398 = !DILocation(line: 918, column: 20, scope: !1395)
!1399 = !DILocation(line: 918, column: 5, scope: !1395)
!1400 = !DILocation(line: 919, column: 8, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !817, file: !85, line: 919, column: 8)
!1402 = !DILocation(line: 919, column: 19, scope: !1401)
!1403 = !DILocation(line: 919, column: 8, scope: !817)
!1404 = !DILocation(line: 920, column: 20, scope: !1401)
!1405 = !DILocation(line: 920, column: 5, scope: !1401)
!1406 = !DILocation(line: 921, column: 4, scope: !817)
!1407 = !DILocation(line: 924, column: 11, scope: !817)
!1408 = !DILocation(line: 924, column: 21, scope: !817)
!1409 = !DILocation(line: 923, column: 4, scope: !817)
!1410 = !DILocation(line: 925, column: 4, scope: !817)
!1411 = !DILocation(line: 925, column: 14, scope: !817)
!1412 = !DILocation(line: 925, column: 28, scope: !817)
!1413 = !DILocation(line: 926, column: 25, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !817, file: !85, line: 926, column: 8)
!1415 = !DILocation(line: 926, column: 8, scope: !1414)
!1416 = !DILocation(line: 926, column: 8, scope: !817)
!1417 = !DILocation(line: 929, column: 61, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !85, line: 927, column: 4)
!1419 = !DILocation(line: 928, column: 5, scope: !1418)
!1420 = !DILocation(line: 930, column: 31, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !85, line: 930, column: 5)
!1422 = !DILocation(line: 930, column: 20, scope: !1421)
!1423 = !DILocation(line: 930, column: 26, scope: !1421)
!1424 = !DILocation(line: 930, column: 7, scope: !1421)
!1425 = !DILocation(line: 930, column: 29, scope: !1421)
!1426 = !DILocation(line: 930, column: 40, scope: !1421)
!1427 = !DILocation(line: 930, column: 46, scope: !1421)
!1428 = !DILocation(line: 930, column: 48, scope: !1421)
!1429 = !DILocation(line: 931, column: 5, scope: !1418)
!1430 = !DILocation(line: 933, column: 4, scope: !817)
!1431 = !DILocation(line: 936, column: 4, scope: !817)
!1432 = !DILocation(line: 937, column: 16, scope: !817)
!1433 = !DILocation(line: 937, column: 4, scope: !817)
!1434 = !DILocation(line: 938, column: 4, scope: !817)
!1435 = !DILocation(line: 940, column: 4, scope: !817)
!1436 = !DILocation(line: 941, column: 4, scope: !817)
!1437 = !DILocation(line: 943, column: 4, scope: !817)
!1438 = !DILocation(line: 944, column: 4, scope: !817)
!1439 = !DILocation(line: 946, column: 4, scope: !817)
!1440 = !DILocation(line: 947, column: 4, scope: !817)
!1441 = !DILocation(line: 949, column: 4, scope: !817)
!1442 = !DILocation(line: 950, column: 11, scope: !817)
!1443 = !DILocation(line: 950, column: 4, scope: !817)
!1444 = !DILocation(line: 951, column: 4, scope: !817)
!1445 = !DILocation(line: 954, column: 11, scope: !817)
!1446 = !DILocation(line: 953, column: 4, scope: !817)
!1447 = !DILocation(line: 955, column: 4, scope: !817)
!1448 = !DILocation(line: 958, column: 2, scope: !783)
!1449 = !DILocation(line: 959, column: 1, scope: !783)
!1450 = distinct !DISubprogram(name: "get_termios", scope: !85, file: !85, line: 160, type: !1451, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!245, !23, !97}
!1453 = !DILocalVariable(name: "pser_inf", arg: 1, scope: !1450, file: !85, line: 160, type: !23)
!1454 = !DILocation(line: 160, column: 29, scope: !1450)
!1455 = !DILocalVariable(name: "serial_fd", arg: 2, scope: !1450, file: !85, line: 160, type: !97)
!1456 = !DILocation(line: 160, column: 51, scope: !1450)
!1457 = !DILocalVariable(name: "speed", scope: !1450, file: !85, line: 162, type: !73)
!1458 = !DILocation(line: 162, column: 10, scope: !1450)
!1459 = !DILocalVariable(name: "ptermios", scope: !1450, file: !85, line: 163, type: !57)
!1460 = !DILocation(line: 163, column: 18, scope: !1450)
!1461 = !DILocation(line: 165, column: 13, scope: !1450)
!1462 = !DILocation(line: 165, column: 23, scope: !1450)
!1463 = !DILocation(line: 165, column: 11, scope: !1450)
!1464 = !DILocation(line: 167, column: 16, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1450, file: !85, line: 167, column: 6)
!1466 = !DILocation(line: 167, column: 27, scope: !1465)
!1467 = !DILocation(line: 167, column: 6, scope: !1465)
!1468 = !DILocation(line: 167, column: 37, scope: !1465)
!1469 = !DILocation(line: 167, column: 6, scope: !1450)
!1470 = !DILocation(line: 168, column: 3, scope: !1465)
!1471 = !DILocation(line: 170, column: 22, scope: !1450)
!1472 = !DILocation(line: 170, column: 10, scope: !1450)
!1473 = !DILocation(line: 170, column: 8, scope: !1450)
!1474 = !DILocation(line: 171, column: 10, scope: !1450)
!1475 = !DILocation(line: 171, column: 2, scope: !1450)
!1476 = !DILocation(line: 175, column: 4, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1450, file: !85, line: 172, column: 2)
!1478 = !DILocation(line: 175, column: 14, scope: !1477)
!1479 = !DILocation(line: 175, column: 24, scope: !1477)
!1480 = !DILocation(line: 176, column: 4, scope: !1477)
!1481 = !DILocation(line: 180, column: 4, scope: !1477)
!1482 = !DILocation(line: 180, column: 14, scope: !1477)
!1483 = !DILocation(line: 180, column: 24, scope: !1477)
!1484 = !DILocation(line: 181, column: 4, scope: !1477)
!1485 = !DILocation(line: 185, column: 4, scope: !1477)
!1486 = !DILocation(line: 185, column: 14, scope: !1477)
!1487 = !DILocation(line: 185, column: 24, scope: !1477)
!1488 = !DILocation(line: 186, column: 4, scope: !1477)
!1489 = !DILocation(line: 190, column: 4, scope: !1477)
!1490 = !DILocation(line: 190, column: 14, scope: !1477)
!1491 = !DILocation(line: 190, column: 24, scope: !1477)
!1492 = !DILocation(line: 191, column: 4, scope: !1477)
!1493 = !DILocation(line: 195, column: 4, scope: !1477)
!1494 = !DILocation(line: 195, column: 14, scope: !1477)
!1495 = !DILocation(line: 195, column: 24, scope: !1477)
!1496 = !DILocation(line: 196, column: 4, scope: !1477)
!1497 = !DILocation(line: 200, column: 4, scope: !1477)
!1498 = !DILocation(line: 200, column: 14, scope: !1477)
!1499 = !DILocation(line: 200, column: 24, scope: !1477)
!1500 = !DILocation(line: 201, column: 4, scope: !1477)
!1501 = !DILocation(line: 205, column: 4, scope: !1477)
!1502 = !DILocation(line: 205, column: 14, scope: !1477)
!1503 = !DILocation(line: 205, column: 24, scope: !1477)
!1504 = !DILocation(line: 206, column: 4, scope: !1477)
!1505 = !DILocation(line: 210, column: 4, scope: !1477)
!1506 = !DILocation(line: 210, column: 14, scope: !1477)
!1507 = !DILocation(line: 210, column: 24, scope: !1477)
!1508 = !DILocation(line: 211, column: 4, scope: !1477)
!1509 = !DILocation(line: 215, column: 4, scope: !1477)
!1510 = !DILocation(line: 215, column: 14, scope: !1477)
!1511 = !DILocation(line: 215, column: 24, scope: !1477)
!1512 = !DILocation(line: 216, column: 4, scope: !1477)
!1513 = !DILocation(line: 220, column: 4, scope: !1477)
!1514 = !DILocation(line: 220, column: 14, scope: !1477)
!1515 = !DILocation(line: 220, column: 24, scope: !1477)
!1516 = !DILocation(line: 221, column: 4, scope: !1477)
!1517 = !DILocation(line: 225, column: 4, scope: !1477)
!1518 = !DILocation(line: 225, column: 14, scope: !1477)
!1519 = !DILocation(line: 225, column: 24, scope: !1477)
!1520 = !DILocation(line: 226, column: 4, scope: !1477)
!1521 = !DILocation(line: 230, column: 4, scope: !1477)
!1522 = !DILocation(line: 230, column: 14, scope: !1477)
!1523 = !DILocation(line: 230, column: 24, scope: !1477)
!1524 = !DILocation(line: 231, column: 4, scope: !1477)
!1525 = !DILocation(line: 235, column: 4, scope: !1477)
!1526 = !DILocation(line: 235, column: 14, scope: !1477)
!1527 = !DILocation(line: 235, column: 24, scope: !1477)
!1528 = !DILocation(line: 236, column: 4, scope: !1477)
!1529 = !DILocation(line: 240, column: 4, scope: !1477)
!1530 = !DILocation(line: 240, column: 14, scope: !1477)
!1531 = !DILocation(line: 240, column: 24, scope: !1477)
!1532 = !DILocation(line: 241, column: 4, scope: !1477)
!1533 = !DILocation(line: 245, column: 4, scope: !1477)
!1534 = !DILocation(line: 245, column: 14, scope: !1477)
!1535 = !DILocation(line: 245, column: 24, scope: !1477)
!1536 = !DILocation(line: 246, column: 4, scope: !1477)
!1537 = !DILocation(line: 250, column: 4, scope: !1477)
!1538 = !DILocation(line: 250, column: 14, scope: !1477)
!1539 = !DILocation(line: 250, column: 24, scope: !1477)
!1540 = !DILocation(line: 251, column: 4, scope: !1477)
!1541 = !DILocation(line: 255, column: 4, scope: !1477)
!1542 = !DILocation(line: 255, column: 14, scope: !1477)
!1543 = !DILocation(line: 255, column: 24, scope: !1477)
!1544 = !DILocation(line: 256, column: 4, scope: !1477)
!1545 = !DILocation(line: 259, column: 4, scope: !1477)
!1546 = !DILocation(line: 259, column: 14, scope: !1477)
!1547 = !DILocation(line: 259, column: 24, scope: !1477)
!1548 = !DILocation(line: 260, column: 4, scope: !1477)
!1549 = !DILocation(line: 263, column: 22, scope: !1450)
!1550 = !DILocation(line: 263, column: 10, scope: !1450)
!1551 = !DILocation(line: 263, column: 8, scope: !1450)
!1552 = !DILocation(line: 264, column: 19, scope: !1450)
!1553 = !DILocation(line: 264, column: 25, scope: !1450)
!1554 = !DILocation(line: 264, column: 18, scope: !1450)
!1555 = !DILocation(line: 264, column: 2, scope: !1450)
!1556 = !DILocation(line: 264, column: 12, scope: !1450)
!1557 = !DILocation(line: 264, column: 16, scope: !1450)
!1558 = !DILocation(line: 266, column: 25, scope: !1450)
!1559 = !DILocation(line: 266, column: 35, scope: !1450)
!1560 = !DILocation(line: 266, column: 43, scope: !1450)
!1561 = !DILocation(line: 266, column: 24, scope: !1450)
!1562 = !DILocation(line: 266, column: 2, scope: !1450)
!1563 = !DILocation(line: 266, column: 12, scope: !1450)
!1564 = !DILocation(line: 266, column: 22, scope: !1450)
!1565 = !DILocation(line: 268, column: 4, scope: !1450)
!1566 = !DILocation(line: 268, column: 14, scope: !1450)
!1567 = !DILocation(line: 268, column: 22, scope: !1450)
!1568 = !DILocation(line: 268, column: 3, scope: !1450)
!1569 = !DILocation(line: 268, column: 35, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1450, file: !85, discriminator: 1)
!1571 = !DILocation(line: 268, column: 45, scope: !1570)
!1572 = !DILocation(line: 268, column: 53, scope: !1570)
!1573 = !DILocation(line: 268, column: 34, scope: !1570)
!1574 = !DILocation(line: 268, column: 3, scope: !1570)
!1575 = !DILocation(line: 268, column: 3, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1450, file: !85, discriminator: 2)
!1577 = !DILocation(line: 268, column: 3, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1450, file: !85, discriminator: 3)
!1579 = !DILocation(line: 267, column: 2, scope: !1450)
!1580 = !DILocation(line: 267, column: 12, scope: !1450)
!1581 = !DILocation(line: 267, column: 19, scope: !1450)
!1582 = !DILocation(line: 270, column: 10, scope: !1450)
!1583 = !DILocation(line: 270, column: 20, scope: !1450)
!1584 = !DILocation(line: 270, column: 28, scope: !1450)
!1585 = !DILocation(line: 270, column: 2, scope: !1450)
!1586 = !DILocation(line: 273, column: 4, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1450, file: !85, line: 271, column: 2)
!1588 = !DILocation(line: 273, column: 14, scope: !1587)
!1589 = !DILocation(line: 273, column: 26, scope: !1587)
!1590 = !DILocation(line: 274, column: 4, scope: !1587)
!1591 = !DILocation(line: 276, column: 4, scope: !1587)
!1592 = !DILocation(line: 276, column: 14, scope: !1587)
!1593 = !DILocation(line: 276, column: 26, scope: !1587)
!1594 = !DILocation(line: 277, column: 4, scope: !1587)
!1595 = !DILocation(line: 279, column: 4, scope: !1587)
!1596 = !DILocation(line: 279, column: 14, scope: !1587)
!1597 = !DILocation(line: 279, column: 26, scope: !1587)
!1598 = !DILocation(line: 280, column: 4, scope: !1587)
!1599 = !DILocation(line: 282, column: 4, scope: !1587)
!1600 = !DILocation(line: 282, column: 14, scope: !1587)
!1601 = !DILocation(line: 282, column: 26, scope: !1587)
!1602 = !DILocation(line: 283, column: 4, scope: !1587)
!1603 = !DILocation(line: 286, column: 6, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1450, file: !85, line: 286, column: 6)
!1605 = !DILocation(line: 286, column: 16, scope: !1604)
!1606 = !DILocation(line: 286, column: 24, scope: !1604)
!1607 = !DILocation(line: 286, column: 6, scope: !1450)
!1608 = !DILocation(line: 288, column: 3, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1604, file: !85, line: 287, column: 2)
!1610 = !DILocation(line: 288, column: 13, scope: !1609)
!1611 = !DILocation(line: 288, column: 21, scope: !1609)
!1612 = !DILocation(line: 289, column: 2, scope: !1609)
!1613 = !DILocation(line: 292, column: 3, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1604, file: !85, line: 291, column: 2)
!1615 = !DILocation(line: 292, column: 13, scope: !1614)
!1616 = !DILocation(line: 292, column: 21, scope: !1614)
!1617 = !DILocation(line: 295, column: 2, scope: !1450)
!1618 = !DILocation(line: 295, column: 12, scope: !1450)
!1619 = !DILocation(line: 295, column: 19, scope: !1450)
!1620 = !DILocation(line: 296, column: 6, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1450, file: !85, line: 296, column: 6)
!1622 = !DILocation(line: 296, column: 16, scope: !1621)
!1623 = !DILocation(line: 296, column: 24, scope: !1621)
!1624 = !DILocation(line: 296, column: 6, scope: !1450)
!1625 = !DILocation(line: 297, column: 3, scope: !1621)
!1626 = !DILocation(line: 297, column: 13, scope: !1621)
!1627 = !DILocation(line: 297, column: 20, scope: !1621)
!1628 = !DILocation(line: 299, column: 6, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1450, file: !85, line: 299, column: 6)
!1630 = !DILocation(line: 299, column: 16, scope: !1629)
!1631 = !DILocation(line: 299, column: 24, scope: !1629)
!1632 = !DILocation(line: 299, column: 6, scope: !1450)
!1633 = !DILocation(line: 300, column: 3, scope: !1629)
!1634 = !DILocation(line: 300, column: 13, scope: !1629)
!1635 = !DILocation(line: 300, column: 20, scope: !1629)
!1636 = !DILocation(line: 302, column: 23, scope: !1450)
!1637 = !DILocation(line: 302, column: 33, scope: !1450)
!1638 = !DILocation(line: 302, column: 2, scope: !1450)
!1639 = !DILocation(line: 302, column: 12, scope: !1450)
!1640 = !DILocation(line: 302, column: 21, scope: !1450)
!1641 = !DILocation(line: 303, column: 23, scope: !1450)
!1642 = !DILocation(line: 303, column: 33, scope: !1450)
!1643 = !DILocation(line: 303, column: 2, scope: !1450)
!1644 = !DILocation(line: 303, column: 12, scope: !1450)
!1645 = !DILocation(line: 303, column: 21, scope: !1450)
!1646 = !DILocation(line: 304, column: 23, scope: !1450)
!1647 = !DILocation(line: 304, column: 33, scope: !1450)
!1648 = !DILocation(line: 304, column: 2, scope: !1450)
!1649 = !DILocation(line: 304, column: 12, scope: !1450)
!1650 = !DILocation(line: 304, column: 21, scope: !1450)
!1651 = !DILocation(line: 305, column: 23, scope: !1450)
!1652 = !DILocation(line: 305, column: 33, scope: !1450)
!1653 = !DILocation(line: 305, column: 2, scope: !1450)
!1654 = !DILocation(line: 305, column: 12, scope: !1450)
!1655 = !DILocation(line: 305, column: 21, scope: !1450)
!1656 = !DILocation(line: 306, column: 23, scope: !1450)
!1657 = !DILocation(line: 306, column: 33, scope: !1450)
!1658 = !DILocation(line: 306, column: 2, scope: !1450)
!1659 = !DILocation(line: 306, column: 12, scope: !1450)
!1660 = !DILocation(line: 306, column: 21, scope: !1450)
!1661 = !DILocation(line: 308, column: 2, scope: !1450)
!1662 = !DILocation(line: 309, column: 1, scope: !1450)
!1663 = distinct !DISubprogram(name: "get_serial_info", scope: !85, file: !85, line: 147, type: !1664, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!23, !97}
!1666 = !DILocalVariable(name: "handle", arg: 1, scope: !1663, file: !85, line: 147, type: !97)
!1667 = !DILocation(line: 147, column: 29, scope: !1663)
!1668 = !DILocalVariable(name: "index", scope: !1663, file: !85, line: 149, type: !29)
!1669 = !DILocation(line: 149, column: 6, scope: !1663)
!1670 = !DILocation(line: 151, column: 13, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1663, file: !85, line: 151, column: 2)
!1672 = !DILocation(line: 151, column: 7, scope: !1671)
!1673 = !DILocation(line: 151, column: 18, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1675, file: !85, discriminator: 1)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !85, line: 151, column: 2)
!1676 = !DILocation(line: 151, column: 24, scope: !1674)
!1677 = !DILocation(line: 151, column: 2, scope: !1674)
!1678 = !DILocation(line: 153, column: 7, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !85, line: 153, column: 7)
!1680 = distinct !DILexicalBlock(scope: !1675, file: !85, line: 152, column: 2)
!1681 = !DILocation(line: 153, column: 32, scope: !1679)
!1682 = !DILocation(line: 153, column: 17, scope: !1679)
!1683 = !DILocation(line: 153, column: 39, scope: !1679)
!1684 = !DILocation(line: 153, column: 14, scope: !1679)
!1685 = !DILocation(line: 153, column: 7, scope: !1680)
!1686 = !DILocation(line: 154, column: 44, scope: !1679)
!1687 = !DILocation(line: 154, column: 29, scope: !1679)
!1688 = !DILocation(line: 154, column: 51, scope: !1679)
!1689 = !DILocation(line: 154, column: 11, scope: !1679)
!1690 = !DILocation(line: 154, column: 4, scope: !1679)
!1691 = !DILocation(line: 155, column: 2, scope: !1680)
!1692 = !DILocation(line: 151, column: 37, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1675, file: !85, discriminator: 2)
!1694 = !DILocation(line: 151, column: 2, scope: !1693)
!1695 = distinct !{!1695, !1696}
!1696 = !DILocation(line: 151, column: 2, scope: !1663)
!1697 = !DILocation(line: 156, column: 2, scope: !1663)
!1698 = !DILocation(line: 157, column: 1, scope: !1663)
!1699 = distinct !DISubprogram(name: "set_termios", scope: !85, file: !85, line: 312, type: !1700, isLocal: true, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !23, !97}
!1702 = !DILocalVariable(name: "pser_inf", arg: 1, scope: !1699, file: !85, line: 312, type: !23)
!1703 = !DILocation(line: 312, column: 29, scope: !1699)
!1704 = !DILocalVariable(name: "serial_fd", arg: 2, scope: !1699, file: !85, line: 312, type: !97)
!1705 = !DILocation(line: 312, column: 51, scope: !1699)
!1706 = !DILocalVariable(name: "speed", scope: !1699, file: !85, line: 314, type: !73)
!1707 = !DILocation(line: 314, column: 10, scope: !1699)
!1708 = !DILocalVariable(name: "ptermios", scope: !1699, file: !85, line: 316, type: !57)
!1709 = !DILocation(line: 316, column: 18, scope: !1699)
!1710 = !DILocation(line: 318, column: 13, scope: !1699)
!1711 = !DILocation(line: 318, column: 23, scope: !1699)
!1712 = !DILocation(line: 318, column: 11, scope: !1699)
!1713 = !DILocation(line: 321, column: 10, scope: !1699)
!1714 = !DILocation(line: 321, column: 20, scope: !1699)
!1715 = !DILocation(line: 321, column: 2, scope: !1699)
!1716 = !DILocation(line: 325, column: 10, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1699, file: !85, line: 322, column: 2)
!1718 = !DILocation(line: 326, column: 4, scope: !1717)
!1719 = !DILocation(line: 330, column: 10, scope: !1717)
!1720 = !DILocation(line: 331, column: 4, scope: !1717)
!1721 = !DILocation(line: 335, column: 10, scope: !1717)
!1722 = !DILocation(line: 336, column: 4, scope: !1717)
!1723 = !DILocation(line: 340, column: 10, scope: !1717)
!1724 = !DILocation(line: 341, column: 4, scope: !1717)
!1725 = !DILocation(line: 345, column: 10, scope: !1717)
!1726 = !DILocation(line: 346, column: 4, scope: !1717)
!1727 = !DILocation(line: 350, column: 10, scope: !1717)
!1728 = !DILocation(line: 351, column: 4, scope: !1717)
!1729 = !DILocation(line: 355, column: 10, scope: !1717)
!1730 = !DILocation(line: 356, column: 4, scope: !1717)
!1731 = !DILocation(line: 360, column: 10, scope: !1717)
!1732 = !DILocation(line: 361, column: 4, scope: !1717)
!1733 = !DILocation(line: 365, column: 10, scope: !1717)
!1734 = !DILocation(line: 366, column: 4, scope: !1717)
!1735 = !DILocation(line: 370, column: 10, scope: !1717)
!1736 = !DILocation(line: 371, column: 4, scope: !1717)
!1737 = !DILocation(line: 375, column: 10, scope: !1717)
!1738 = !DILocation(line: 376, column: 4, scope: !1717)
!1739 = !DILocation(line: 380, column: 10, scope: !1717)
!1740 = !DILocation(line: 381, column: 4, scope: !1717)
!1741 = !DILocation(line: 385, column: 10, scope: !1717)
!1742 = !DILocation(line: 386, column: 4, scope: !1717)
!1743 = !DILocation(line: 390, column: 10, scope: !1717)
!1744 = !DILocation(line: 391, column: 4, scope: !1717)
!1745 = !DILocation(line: 395, column: 10, scope: !1717)
!1746 = !DILocation(line: 396, column: 4, scope: !1717)
!1747 = !DILocation(line: 400, column: 10, scope: !1717)
!1748 = !DILocation(line: 401, column: 4, scope: !1717)
!1749 = !DILocation(line: 405, column: 10, scope: !1717)
!1750 = !DILocation(line: 406, column: 4, scope: !1717)
!1751 = !DILocation(line: 409, column: 10, scope: !1717)
!1752 = !DILocation(line: 410, column: 4, scope: !1717)
!1753 = !DILocation(line: 414, column: 2, scope: !1699)
!1754 = !DILocation(line: 414, column: 12, scope: !1699)
!1755 = !DILocation(line: 414, column: 20, scope: !1699)
!1756 = !DILocation(line: 415, column: 23, scope: !1699)
!1757 = !DILocation(line: 415, column: 2, scope: !1699)
!1758 = !DILocation(line: 415, column: 12, scope: !1699)
!1759 = !DILocation(line: 415, column: 20, scope: !1699)
!1760 = !DILocation(line: 423, column: 2, scope: !1699)
!1761 = !DILocation(line: 423, column: 12, scope: !1699)
!1762 = !DILocation(line: 423, column: 20, scope: !1699)
!1763 = !DILocation(line: 424, column: 10, scope: !1699)
!1764 = !DILocation(line: 424, column: 20, scope: !1699)
!1765 = !DILocation(line: 424, column: 2, scope: !1699)
!1766 = !DILocation(line: 427, column: 4, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1699, file: !85, line: 425, column: 2)
!1768 = !DILocation(line: 427, column: 14, scope: !1767)
!1769 = !DILocation(line: 427, column: 22, scope: !1767)
!1770 = !DILocation(line: 428, column: 4, scope: !1767)
!1771 = !DILocation(line: 430, column: 4, scope: !1767)
!1772 = !DILocation(line: 430, column: 14, scope: !1767)
!1773 = !DILocation(line: 430, column: 22, scope: !1767)
!1774 = !DILocation(line: 431, column: 4, scope: !1767)
!1775 = !DILocation(line: 434, column: 10, scope: !1699)
!1776 = !DILocation(line: 434, column: 20, scope: !1699)
!1777 = !DILocation(line: 434, column: 2, scope: !1699)
!1778 = !DILocation(line: 437, column: 4, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1699, file: !85, line: 435, column: 2)
!1780 = !DILocation(line: 437, column: 14, scope: !1779)
!1781 = !DILocation(line: 437, column: 22, scope: !1779)
!1782 = !DILocation(line: 438, column: 4, scope: !1779)
!1783 = !DILocation(line: 440, column: 4, scope: !1779)
!1784 = !DILocation(line: 440, column: 14, scope: !1779)
!1785 = !DILocation(line: 440, column: 22, scope: !1779)
!1786 = !DILocation(line: 441, column: 4, scope: !1779)
!1787 = !DILocation(line: 443, column: 4, scope: !1779)
!1788 = !DILocation(line: 443, column: 14, scope: !1779)
!1789 = !DILocation(line: 443, column: 22, scope: !1779)
!1790 = !DILocation(line: 444, column: 4, scope: !1779)
!1791 = !DILocation(line: 447, column: 10, scope: !1699)
!1792 = !DILocation(line: 447, column: 20, scope: !1699)
!1793 = !DILocation(line: 447, column: 2, scope: !1699)
!1794 = !DILocation(line: 450, column: 4, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1699, file: !85, line: 448, column: 2)
!1796 = !DILocation(line: 450, column: 14, scope: !1795)
!1797 = !DILocation(line: 450, column: 22, scope: !1795)
!1798 = !DILocation(line: 451, column: 4, scope: !1795)
!1799 = !DILocation(line: 453, column: 4, scope: !1795)
!1800 = !DILocation(line: 453, column: 14, scope: !1795)
!1801 = !DILocation(line: 453, column: 22, scope: !1795)
!1802 = !DILocation(line: 454, column: 4, scope: !1795)
!1803 = !DILocation(line: 456, column: 4, scope: !1795)
!1804 = !DILocation(line: 456, column: 14, scope: !1795)
!1805 = !DILocation(line: 456, column: 22, scope: !1795)
!1806 = !DILocation(line: 457, column: 4, scope: !1795)
!1807 = !DILocation(line: 459, column: 4, scope: !1795)
!1808 = !DILocation(line: 459, column: 14, scope: !1795)
!1809 = !DILocation(line: 459, column: 22, scope: !1795)
!1810 = !DILocation(line: 460, column: 4, scope: !1795)
!1811 = !DILocation(line: 470, column: 6, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1699, file: !85, line: 470, column: 6)
!1813 = !DILocation(line: 470, column: 16, scope: !1812)
!1814 = !DILocation(line: 470, column: 24, scope: !1812)
!1815 = !DILocation(line: 470, column: 6, scope: !1699)
!1816 = !DILocation(line: 472, column: 3, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1812, file: !85, line: 471, column: 2)
!1818 = !DILocation(line: 472, column: 13, scope: !1817)
!1819 = !DILocation(line: 472, column: 21, scope: !1817)
!1820 = !DILocation(line: 473, column: 2, scope: !1817)
!1821 = !DILocation(line: 476, column: 3, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1812, file: !85, line: 475, column: 2)
!1823 = !DILocation(line: 476, column: 13, scope: !1822)
!1824 = !DILocation(line: 476, column: 21, scope: !1822)
!1825 = !DILocation(line: 480, column: 6, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1699, file: !85, line: 480, column: 6)
!1827 = !DILocation(line: 480, column: 16, scope: !1826)
!1828 = !DILocation(line: 480, column: 23, scope: !1826)
!1829 = !DILocation(line: 480, column: 6, scope: !1699)
!1830 = !DILocation(line: 482, column: 3, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1826, file: !85, line: 481, column: 2)
!1832 = !DILocation(line: 482, column: 13, scope: !1831)
!1833 = !DILocation(line: 482, column: 21, scope: !1831)
!1834 = !DILocation(line: 483, column: 2, scope: !1831)
!1835 = !DILocation(line: 484, column: 6, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1699, file: !85, line: 484, column: 6)
!1837 = !DILocation(line: 484, column: 16, scope: !1836)
!1838 = !DILocation(line: 484, column: 23, scope: !1836)
!1839 = !DILocation(line: 484, column: 6, scope: !1699)
!1840 = !DILocation(line: 486, column: 3, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1836, file: !85, line: 485, column: 2)
!1842 = !DILocation(line: 486, column: 13, scope: !1841)
!1843 = !DILocation(line: 486, column: 21, scope: !1841)
!1844 = !DILocation(line: 487, column: 2, scope: !1841)
!1845 = !DILocation(line: 489, column: 7, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1699, file: !85, line: 489, column: 6)
!1847 = !DILocation(line: 489, column: 17, scope: !1846)
!1848 = !DILocation(line: 489, column: 24, scope: !1846)
!1849 = !DILocation(line: 489, column: 41, scope: !1846)
!1850 = !DILocation(line: 489, column: 6, scope: !1699)
!1851 = !DILocation(line: 491, column: 3, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1846, file: !85, line: 490, column: 2)
!1853 = !DILocation(line: 491, column: 13, scope: !1852)
!1854 = !DILocation(line: 491, column: 21, scope: !1852)
!1855 = !DILocation(line: 492, column: 3, scope: !1852)
!1856 = !DILocation(line: 492, column: 13, scope: !1852)
!1857 = !DILocation(line: 492, column: 21, scope: !1852)
!1858 = !DILocation(line: 493, column: 2, scope: !1852)
!1859 = !DILocation(line: 495, column: 26, scope: !1699)
!1860 = !DILocation(line: 495, column: 36, scope: !1699)
!1861 = !DILocation(line: 495, column: 2, scope: !1699)
!1862 = !DILocation(line: 495, column: 12, scope: !1699)
!1863 = !DILocation(line: 495, column: 24, scope: !1699)
!1864 = !DILocation(line: 496, column: 25, scope: !1699)
!1865 = !DILocation(line: 496, column: 35, scope: !1699)
!1866 = !DILocation(line: 496, column: 2, scope: !1699)
!1867 = !DILocation(line: 496, column: 12, scope: !1699)
!1868 = !DILocation(line: 496, column: 23, scope: !1699)
!1869 = !DILocation(line: 497, column: 24, scope: !1699)
!1870 = !DILocation(line: 497, column: 34, scope: !1699)
!1871 = !DILocation(line: 497, column: 2, scope: !1699)
!1872 = !DILocation(line: 497, column: 12, scope: !1699)
!1873 = !DILocation(line: 497, column: 22, scope: !1699)
!1874 = !DILocation(line: 498, column: 25, scope: !1699)
!1875 = !DILocation(line: 498, column: 35, scope: !1699)
!1876 = !DILocation(line: 498, column: 2, scope: !1699)
!1877 = !DILocation(line: 498, column: 12, scope: !1699)
!1878 = !DILocation(line: 498, column: 23, scope: !1699)
!1879 = !DILocation(line: 499, column: 25, scope: !1699)
!1880 = !DILocation(line: 499, column: 35, scope: !1699)
!1881 = !DILocation(line: 499, column: 2, scope: !1699)
!1882 = !DILocation(line: 499, column: 12, scope: !1699)
!1883 = !DILocation(line: 499, column: 23, scope: !1699)
!1884 = !DILocation(line: 501, column: 12, scope: !1699)
!1885 = !DILocation(line: 501, column: 31, scope: !1699)
!1886 = !DILocation(line: 501, column: 2, scope: !1699)
!1887 = !DILocation(line: 502, column: 1, scope: !1699)
