; ModuleID = './[inter]cliprdr.o.i'
source_filename = "./[inter]cliprdr.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._VCHANNEL = type { i16, [8 x i8], i32, %struct.stream, void (%struct.stream*)* }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [57 x i8] c"cliprdr_send_simple_native_format_announce() format 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cliprdr_send_native_format_announce()\00", align 1
@last_formats = internal global i8* null, align 8
@last_formats_length = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"cliprdr_send_data_request(), format 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"cliprdr_send_data(), length %d bytes\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"cliprdr\00", align 1
@cliprdr_channel = internal global %struct._VCHANNEL* null, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"cliprdr_send_packet(), type=%d, status=%d, length=%d\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"cliprdr_process(), type=%d, status=%d, length=%d\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"cliprdr_process(), unhandled error (type=%d)\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"cliprdr_process(), unhandled packet type %d\00", align 1

; Function Attrs: nounwind uwtable
define void @cliprdr_send_simple_native_format_announce(i32) #0 !dbg !73 {
  %2 = alloca i32, align 4
  %3 = alloca [36 x i8], align 16
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !77, metadata !78), !dbg !79
  call void @llvm.dbg.declare(metadata [36 x i8]* %3, metadata !80, metadata !78), !dbg !84
  %4 = load i32, i32* %2, align 4, !dbg !85
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 %4), !dbg !86
  %5 = getelementptr inbounds [36 x i8], [36 x i8]* %3, i32 0, i32 0, !dbg !87
  %6 = load i32, i32* %2, align 4, !dbg !88
  call void @buf_out_uint32(i8* %5, i32 %6), !dbg !89
  %7 = getelementptr inbounds [36 x i8], [36 x i8]* %3, i32 0, i32 0, !dbg !90
  %8 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !91
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 32, i32 1, i1 false), !dbg !92
  %9 = getelementptr inbounds [36 x i8], [36 x i8]* %3, i32 0, i32 0, !dbg !93
  call void @cliprdr_send_native_format_announce(i8* %9, i32 36), !dbg !94
  ret void, !dbg !95
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @logger(i32, i32, i8*, ...) #2

declare void @buf_out_uint32(i8*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @cliprdr_send_native_format_announce(i8*, i32) #0 !dbg !96 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !99, metadata !78), !dbg !100
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !101, metadata !78), !dbg !102
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !103
  %5 = load i8*, i8** %3, align 8, !dbg !104
  %6 = load i32, i32* %4, align 4, !dbg !105
  call void @cliprdr_send_packet(i16 zeroext 2, i16 zeroext 0, i8* %5, i32 %6), !dbg !106
  %7 = load i8*, i8** %3, align 8, !dbg !107
  %8 = load i8*, i8** @last_formats, align 8, !dbg !109
  %9 = icmp ne i8* %7, %8, !dbg !110
  br i1 %9, label %10, label %23, !dbg !111

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** @last_formats, align 8, !dbg !112
  %12 = icmp ne i8* %11, null, !dbg !112
  br i1 %12, label %13, label %15, !dbg !115

; <label>:13:                                     ; preds = %10
  %14 = load i8*, i8** @last_formats, align 8, !dbg !116
  call void @xfree(i8* %14), !dbg !117
  br label %15, !dbg !117

; <label>:15:                                     ; preds = %13, %10
  %16 = load i32, i32* %4, align 4, !dbg !118
  %17 = call i8* @xmalloc(i32 %16), !dbg !119
  store i8* %17, i8** @last_formats, align 8, !dbg !120
  %18 = load i8*, i8** @last_formats, align 8, !dbg !121
  %19 = load i8*, i8** %3, align 8, !dbg !122
  %20 = load i32, i32* %4, align 4, !dbg !123
  %21 = zext i32 %20 to i64, !dbg !123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 %21, i32 1, i1 false), !dbg !124
  %22 = load i32, i32* %4, align 4, !dbg !125
  store i32 %22, i32* @last_formats_length, align 4, !dbg !126
  br label %23, !dbg !127

; <label>:23:                                     ; preds = %15, %2
  ret void, !dbg !128
}

; Function Attrs: nounwind uwtable
define internal void @cliprdr_send_packet(i16 zeroext, i16 zeroext, i8*, i32) #0 !dbg !129 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stream*, align 8
  store i16 %0, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !132, metadata !78), !dbg !133
  store i16 %1, i16* %6, align 2
  call void @llvm.dbg.declare(metadata i16* %6, metadata !134, metadata !78), !dbg !135
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !136, metadata !78), !dbg !137
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !138, metadata !78), !dbg !139
  call void @llvm.dbg.declare(metadata %struct.stream** %9, metadata !140, metadata !78), !dbg !141
  %10 = load i16, i16* %5, align 2, !dbg !142
  %11 = zext i16 %10 to i32, !dbg !142
  %12 = load i16, i16* %6, align 2, !dbg !143
  %13 = zext i16 %12 to i32, !dbg !143
  %14 = load i32, i32* %8, align 4, !dbg !144
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i32 0, i32 0), i32 %11, i32 %13, i32 %14), !dbg !145
  %15 = load %struct._VCHANNEL*, %struct._VCHANNEL** @cliprdr_channel, align 8, !dbg !146
  %16 = load i32, i32* %8, align 4, !dbg !147
  %17 = add i32 %16, 12, !dbg !148
  %18 = call %struct.stream* @channel_init(%struct._VCHANNEL* %15, i32 %17), !dbg !149
  store %struct.stream* %18, %struct.stream** %9, align 8, !dbg !150
  %19 = load i16, i16* %5, align 2, !dbg !151
  %20 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !153
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !154
  %22 = load i8*, i8** %21, align 8, !dbg !154
  %23 = bitcast i8* %22 to i16*, !dbg !155
  store i16 %19, i16* %23, align 2, !dbg !156
  %24 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !157
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !158
  %26 = load i8*, i8** %25, align 8, !dbg !159
  %27 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !159
  store i8* %27, i8** %25, align 8, !dbg !159
  %28 = load i16, i16* %6, align 2, !dbg !160
  %29 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !162
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !163
  %31 = load i8*, i8** %30, align 8, !dbg !163
  %32 = bitcast i8* %31 to i16*, !dbg !164
  store i16 %28, i16* %32, align 2, !dbg !165
  %33 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !166
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !167
  %35 = load i8*, i8** %34, align 8, !dbg !168
  %36 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !168
  store i8* %36, i8** %34, align 8, !dbg !168
  %37 = load i32, i32* %8, align 4, !dbg !169
  %38 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !171
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !172
  %40 = load i8*, i8** %39, align 8, !dbg !172
  %41 = bitcast i8* %40 to i32*, !dbg !173
  store i32 %37, i32* %41, align 4, !dbg !174
  %42 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !175
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 0, !dbg !176
  %44 = load i8*, i8** %43, align 8, !dbg !177
  %45 = getelementptr inbounds i8, i8* %44, i64 4, !dbg !177
  store i8* %45, i8** %43, align 8, !dbg !177
  %46 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !178
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 0, !dbg !180
  %48 = load i8*, i8** %47, align 8, !dbg !180
  %49 = load i8*, i8** %7, align 8, !dbg !181
  %50 = load i32, i32* %8, align 4, !dbg !182
  %51 = zext i32 %50 to i64, !dbg !182
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 %51, i32 1, i1 false), !dbg !183
  %52 = load i32, i32* %8, align 4, !dbg !184
  %53 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !185
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 0, !dbg !186
  %55 = load i8*, i8** %54, align 8, !dbg !187
  %56 = zext i32 %52 to i64, !dbg !187
  %57 = getelementptr inbounds i8, i8* %55, i64 %56, !dbg !187
  store i8* %57, i8** %54, align 8, !dbg !187
  %58 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !188
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 0, !dbg !190
  %60 = load i8*, i8** %59, align 8, !dbg !190
  %61 = bitcast i8* %60 to i32*, !dbg !191
  store i32 0, i32* %61, align 4, !dbg !192
  %62 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !193
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !194
  %64 = load i8*, i8** %63, align 8, !dbg !195
  %65 = getelementptr inbounds i8, i8* %64, i64 4, !dbg !195
  store i8* %65, i8** %63, align 8, !dbg !195
  %66 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !196
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 0, !dbg !197
  %68 = load i8*, i8** %67, align 8, !dbg !197
  %69 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !198
  %70 = getelementptr inbounds %struct.stream, %struct.stream* %69, i32 0, i32 1, !dbg !199
  store i8* %68, i8** %70, align 8, !dbg !200
  %71 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !201
  %72 = load %struct._VCHANNEL*, %struct._VCHANNEL** @cliprdr_channel, align 8, !dbg !202
  call void @channel_send(%struct.stream* %71, %struct._VCHANNEL* %72), !dbg !203
  ret void, !dbg !204
}

declare void @xfree(i8*) #2

declare i8* @xmalloc(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @cliprdr_send_data_request(i32) #0 !dbg !205 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !206, metadata !78), !dbg !207
  call void @llvm.dbg.declare(metadata [4 x i8]* %3, metadata !208, metadata !78), !dbg !212
  %4 = load i32, i32* %2, align 4, !dbg !213
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 %4), !dbg !214
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0, !dbg !215
  %6 = load i32, i32* %2, align 4, !dbg !216
  call void @buf_out_uint32(i8* %5, i32 %6), !dbg !217
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0, !dbg !218
  call void @cliprdr_send_packet(i16 zeroext 4, i16 zeroext 0, i8* %7, i32 4), !dbg !219
  ret void, !dbg !220
}

; Function Attrs: nounwind uwtable
define void @cliprdr_send_data(i8*, i32) #0 !dbg !221 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !222, metadata !78), !dbg !223
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !224, metadata !78), !dbg !225
  %5 = load i32, i32* %4, align 4, !dbg !226
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 %5), !dbg !227
  %6 = load i8*, i8** %3, align 8, !dbg !228
  %7 = load i32, i32* %4, align 4, !dbg !229
  call void @cliprdr_send_packet(i16 zeroext 5, i16 zeroext 1, i8* %6, i32 %7), !dbg !230
  ret void, !dbg !231
}

; Function Attrs: nounwind uwtable
define void @cliprdr_set_mode(i8*) #0 !dbg !232 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !237, metadata !78), !dbg !238
  %3 = load i8*, i8** %2, align 8, !dbg !239
  call void @ui_clip_set_mode(i8* %3), !dbg !240
  ret void, !dbg !241
}

declare void @ui_clip_set_mode(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @cliprdr_init() #0 !dbg !242 {
  %1 = call %struct._VCHANNEL* @channel_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 -1063256064, void (%struct.stream*)* @cliprdr_process), !dbg !247
  store %struct._VCHANNEL* %1, %struct._VCHANNEL** @cliprdr_channel, align 8, !dbg !248
  %2 = load %struct._VCHANNEL*, %struct._VCHANNEL** @cliprdr_channel, align 8, !dbg !249
  %3 = icmp ne %struct._VCHANNEL* %2, null, !dbg !250
  %4 = zext i1 %3 to i32, !dbg !250
  ret i32 %4, !dbg !251
}

declare %struct._VCHANNEL* @channel_register(i8*, i32, void (%struct.stream*)*) #2

; Function Attrs: nounwind uwtable
define internal void @cliprdr_process(%struct.stream*) #0 !dbg !252 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !253, metadata !78), !dbg !254
  call void @llvm.dbg.declare(metadata i16* %3, metadata !255, metadata !78), !dbg !256
  call void @llvm.dbg.declare(metadata i16* %4, metadata !257, metadata !78), !dbg !258
  call void @llvm.dbg.declare(metadata i32* %5, metadata !259, metadata !78), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %6, metadata !261, metadata !78), !dbg !262
  call void @llvm.dbg.declare(metadata i8** %7, metadata !263, metadata !78), !dbg !264
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !265
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !267
  %10 = load i8*, i8** %9, align 8, !dbg !267
  %11 = bitcast i8* %10 to i16*, !dbg !268
  %12 = load i16, i16* %11, align 2, !dbg !268
  store i16 %12, i16* %3, align 2, !dbg !269
  %13 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !270
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !271
  %15 = load i8*, i8** %14, align 8, !dbg !272
  %16 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !272
  store i8* %16, i8** %14, align 8, !dbg !272
  %17 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !273
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !275
  %19 = load i8*, i8** %18, align 8, !dbg !275
  %20 = bitcast i8* %19 to i16*, !dbg !276
  %21 = load i16, i16* %20, align 2, !dbg !276
  store i16 %21, i16* %4, align 2, !dbg !277
  %22 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !278
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !279
  %24 = load i8*, i8** %23, align 8, !dbg !280
  %25 = getelementptr inbounds i8, i8* %24, i64 2, !dbg !280
  store i8* %25, i8** %23, align 8, !dbg !280
  %26 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !281
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !283
  %28 = load i8*, i8** %27, align 8, !dbg !283
  %29 = bitcast i8* %28 to i32*, !dbg !284
  %30 = load i32, i32* %29, align 4, !dbg !284
  store i32 %30, i32* %5, align 4, !dbg !285
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !286
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !287
  %33 = load i8*, i8** %32, align 8, !dbg !288
  %34 = getelementptr inbounds i8, i8* %33, i64 4, !dbg !288
  store i8* %34, i8** %32, align 8, !dbg !288
  %35 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !289
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !290
  %37 = load i8*, i8** %36, align 8, !dbg !290
  store i8* %37, i8** %7, align 8, !dbg !291
  %38 = load i16, i16* %3, align 2, !dbg !292
  %39 = zext i16 %38 to i32, !dbg !292
  %40 = load i16, i16* %4, align 2, !dbg !293
  %41 = zext i16 %40 to i32, !dbg !293
  %42 = load i32, i32* %5, align 4, !dbg !294
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i32 %39, i32 %41, i32 %42), !dbg !295
  %43 = load i16, i16* %4, align 2, !dbg !296
  %44 = zext i16 %43 to i32, !dbg !296
  %45 = icmp eq i32 %44, 2, !dbg !298
  br i1 %45, label %46, label %57, !dbg !299

; <label>:46:                                     ; preds = %1
  %47 = load i16, i16* %3, align 2, !dbg !300
  %48 = zext i16 %47 to i32, !dbg !300
  switch i32 %48, label %53 [
    i32 3, label %49
    i32 5, label %52
  ], !dbg !302

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** @last_formats, align 8, !dbg !303
  %51 = load i32, i32* @last_formats_length, align 4, !dbg !305
  call void @cliprdr_send_native_format_announce(i8* %50, i32 %51), !dbg !306
  br label %56, !dbg !307

; <label>:52:                                     ; preds = %46
  call void @ui_clip_request_failed(), !dbg !308
  br label %56, !dbg !309

; <label>:53:                                     ; preds = %46
  %54 = load i16, i16* %3, align 2, !dbg !310
  %55 = zext i16 %54 to i32, !dbg !310
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0), i32 %55), !dbg !311
  br label %56, !dbg !312

; <label>:56:                                     ; preds = %53, %52, %49
  br label %83, !dbg !313

; <label>:57:                                     ; preds = %1
  %58 = load i16, i16* %3, align 2, !dbg !314
  %59 = zext i16 %58 to i32, !dbg !314
  switch i32 %59, label %80 [
    i32 1, label %60
    i32 2, label %61
    i32 3, label %64
    i32 4, label %65
    i32 5, label %76
    i32 7, label %79
  ], !dbg !315

; <label>:60:                                     ; preds = %57
  call void @ui_clip_sync(), !dbg !316
  br label %83, !dbg !318

; <label>:61:                                     ; preds = %57
  %62 = load i8*, i8** %7, align 8, !dbg !319
  %63 = load i32, i32* %5, align 4, !dbg !320
  call void @ui_clip_format_announce(i8* %62, i32 %63), !dbg !321
  call void @cliprdr_send_packet(i16 zeroext 3, i16 zeroext 1, i8* null, i32 0), !dbg !322
  br label %83, !dbg !323

; <label>:64:                                     ; preds = %57
  br label %83, !dbg !324

; <label>:65:                                     ; preds = %57
  %66 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !325
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 0, !dbg !327
  %68 = load i8*, i8** %67, align 8, !dbg !327
  %69 = bitcast i8* %68 to i32*, !dbg !328
  %70 = load i32, i32* %69, align 4, !dbg !328
  store i32 %70, i32* %6, align 4, !dbg !329
  %71 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !330
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !331
  %73 = load i8*, i8** %72, align 8, !dbg !332
  %74 = getelementptr inbounds i8, i8* %73, i64 4, !dbg !332
  store i8* %74, i8** %72, align 8, !dbg !332
  %75 = load i32, i32* %6, align 4, !dbg !333
  call void @ui_clip_request_data(i32 %75), !dbg !334
  br label %83, !dbg !335

; <label>:76:                                     ; preds = %57
  %77 = load i8*, i8** %7, align 8, !dbg !336
  %78 = load i32, i32* %5, align 4, !dbg !337
  call void @ui_clip_handle_data(i8* %77, i32 %78), !dbg !338
  br label %83, !dbg !339

; <label>:79:                                     ; preds = %57
  br label %83, !dbg !340

; <label>:80:                                     ; preds = %57
  %81 = load i16, i16* %3, align 2, !dbg !341
  %82 = zext i16 %81 to i32, !dbg !341
  call void (i32, i32, i8*, ...) @logger(i32 2, i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i32 %82), !dbg !342
  br label %83, !dbg !343

; <label>:83:                                     ; preds = %56, %61, %80, %79, %76, %65, %64, %60
  ret void, !dbg !344
}

declare %struct.stream* @channel_init(%struct._VCHANNEL*, i32) #2

declare void @channel_send(%struct.stream*, %struct._VCHANNEL*) #2

declare void @ui_clip_request_failed() #2

declare void @ui_clip_sync() #2

declare void @ui_clip_format_announce(i8*, i32) #2

declare void @ui_clip_request_data(i32) #2

declare void @ui_clip_handle_data(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !31)
!1 = !DIFile(filename: "[inter]cliprdr.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !{!23, !24, !28}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !26, line: 41, baseType: !27)
!26 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!27 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !26, line: 43, baseType: !30)
!30 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!31 = !{!32, !66, !69}
!32 = distinct !DIGlobalVariable(name: "cliprdr_channel", scope: !0, file: !33, line: 34, type: !34, isLocal: true, isDefinition: true, variable: %struct._VCHANNEL** @cliprdr_channel)
!33 = !DIFile(filename: "cliprdr.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "VCHANNEL", file: !26, line: 169, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_VCHANNEL", file: !26, line: 161, size: 768, align: 64, elements: !37)
!37 = !{!38, !39, !44, !45, !60}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_id", scope: !36, file: !26, line: 163, baseType: !25, size: 16, align: 16)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !36, file: !26, line: 164, baseType: !40, size: 64, align: 8, offset: 16)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, align: 8, elements: !42)
!41 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!42 = !{!43}
!43 = !DISubrange(count: 8)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !26, line: 165, baseType: !29, size: 32, align: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !36, file: !26, line: 166, baseType: !46, size: 576, align: 64, offset: 128)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !47, line: 25, size: 576, align: 64, elements: !48)
!47 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!48 = !{!49, !52, !53, !54, !55, !56, !57, !58, !59}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !46, file: !47, line: 27, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !46, file: !47, line: 28, baseType: !50, size: 64, align: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !47, line: 29, baseType: !50, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !46, file: !47, line: 30, baseType: !30, size: 32, align: 32, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !46, file: !47, line: 33, baseType: !50, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !46, file: !47, line: 34, baseType: !50, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !46, file: !47, line: 35, baseType: !50, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !46, file: !47, line: 36, baseType: !50, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !46, file: !47, line: 37, baseType: !50, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !36, file: !26, line: 167, baseType: !61, size: 64, align: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !47, line: 40, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!66 = distinct !DIGlobalVariable(name: "last_formats", scope: !0, file: !33, line: 36, type: !67, isLocal: true, isDefinition: true, variable: i8** @last_formats)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !26, line: 39, baseType: !51)
!69 = distinct !DIGlobalVariable(name: "last_formats_length", scope: !0, file: !33, line: 37, type: !29, isLocal: true, isDefinition: true, variable: i32* @last_formats_length)
!70 = !{i32 2, !"Dwarf Version", i32 4}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!73 = distinct !DISubprogram(name: "cliprdr_send_simple_native_format_announce", scope: !33, file: !33, line: 63, type: !74, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !29}
!76 = !{}
!77 = !DILocalVariable(name: "format", arg: 1, scope: !73, file: !33, line: 63, type: !29)
!78 = !DIExpression()
!79 = !DILocation(line: 63, column: 51, scope: !73)
!80 = !DILocalVariable(name: "buffer", scope: !73, file: !33, line: 65, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 288, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 36)
!84 = !DILocation(line: 65, column: 8, scope: !73)
!85 = !DILocation(line: 68, column: 9, scope: !73)
!86 = !DILocation(line: 67, column: 2, scope: !73)
!87 = !DILocation(line: 70, column: 17, scope: !73)
!88 = !DILocation(line: 70, column: 25, scope: !73)
!89 = !DILocation(line: 70, column: 2, scope: !73)
!90 = !DILocation(line: 71, column: 9, scope: !73)
!91 = !DILocation(line: 71, column: 16, scope: !73)
!92 = !DILocation(line: 71, column: 2, scope: !73)
!93 = !DILocation(line: 72, column: 38, scope: !73)
!94 = !DILocation(line: 72, column: 2, scope: !73)
!95 = !DILocation(line: 73, column: 1, scope: !73)
!96 = distinct !DISubprogram(name: "cliprdr_send_native_format_announce", scope: !33, file: !33, line: 80, type: !97, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !76)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !67, !29}
!99 = !DILocalVariable(name: "formats_data", arg: 1, scope: !96, file: !33, line: 80, type: !67)
!100 = !DILocation(line: 80, column: 45, scope: !96)
!101 = !DILocalVariable(name: "formats_data_length", arg: 2, scope: !96, file: !33, line: 80, type: !29)
!102 = !DILocation(line: 80, column: 66, scope: !96)
!103 = !DILocation(line: 82, column: 2, scope: !96)
!104 = !DILocation(line: 84, column: 28, scope: !96)
!105 = !DILocation(line: 85, column: 8, scope: !96)
!106 = !DILocation(line: 84, column: 2, scope: !96)
!107 = !DILocation(line: 87, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !96, file: !33, line: 87, column: 6)
!109 = !DILocation(line: 87, column: 22, scope: !108)
!110 = !DILocation(line: 87, column: 19, scope: !108)
!111 = !DILocation(line: 87, column: 6, scope: !96)
!112 = !DILocation(line: 89, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !33, line: 89, column: 7)
!114 = distinct !DILexicalBlock(scope: !108, file: !33, line: 88, column: 2)
!115 = !DILocation(line: 89, column: 7, scope: !114)
!116 = !DILocation(line: 90, column: 10, scope: !113)
!117 = !DILocation(line: 90, column: 4, scope: !113)
!118 = !DILocation(line: 92, column: 26, scope: !114)
!119 = !DILocation(line: 92, column: 18, scope: !114)
!120 = !DILocation(line: 92, column: 16, scope: !114)
!121 = !DILocation(line: 93, column: 10, scope: !114)
!122 = !DILocation(line: 93, column: 24, scope: !114)
!123 = !DILocation(line: 93, column: 38, scope: !114)
!124 = !DILocation(line: 93, column: 3, scope: !114)
!125 = !DILocation(line: 94, column: 25, scope: !114)
!126 = !DILocation(line: 94, column: 23, scope: !114)
!127 = !DILocation(line: 95, column: 2, scope: !114)
!128 = !DILocation(line: 96, column: 1, scope: !96)
!129 = distinct !DISubprogram(name: "cliprdr_send_packet", scope: !33, file: !33, line: 40, type: !130, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !76)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !25, !25, !67, !29}
!132 = !DILocalVariable(name: "type", arg: 1, scope: !129, file: !33, line: 40, type: !25)
!133 = !DILocation(line: 40, column: 28, scope: !129)
!134 = !DILocalVariable(name: "status", arg: 2, scope: !129, file: !33, line: 40, type: !25)
!135 = !DILocation(line: 40, column: 41, scope: !129)
!136 = !DILocalVariable(name: "data", arg: 3, scope: !129, file: !33, line: 40, type: !67)
!137 = !DILocation(line: 40, column: 57, scope: !129)
!138 = !DILocalVariable(name: "length", arg: 4, scope: !129, file: !33, line: 40, type: !29)
!139 = !DILocation(line: 40, column: 70, scope: !129)
!140 = !DILocalVariable(name: "s", scope: !129, file: !33, line: 42, type: !64)
!141 = !DILocation(line: 42, column: 9, scope: !129)
!142 = !DILocation(line: 44, column: 83, scope: !129)
!143 = !DILocation(line: 45, column: 9, scope: !129)
!144 = !DILocation(line: 45, column: 17, scope: !129)
!145 = !DILocation(line: 44, column: 2, scope: !129)
!146 = !DILocation(line: 47, column: 19, scope: !129)
!147 = !DILocation(line: 47, column: 36, scope: !129)
!148 = !DILocation(line: 47, column: 43, scope: !129)
!149 = !DILocation(line: 47, column: 6, scope: !129)
!150 = !DILocation(line: 47, column: 4, scope: !129)
!151 = !DILocation(line: 48, column: 26, scope: !152)
!152 = distinct !DILexicalBlock(scope: !129, file: !33, line: 48, column: 2)
!153 = !DILocation(line: 48, column: 17, scope: !152)
!154 = !DILocation(line: 48, column: 21, scope: !152)
!155 = !DILocation(line: 48, column: 4, scope: !152)
!156 = !DILocation(line: 48, column: 24, scope: !152)
!157 = !DILocation(line: 48, column: 33, scope: !152)
!158 = !DILocation(line: 48, column: 37, scope: !152)
!159 = !DILocation(line: 48, column: 39, scope: !152)
!160 = !DILocation(line: 49, column: 26, scope: !161)
!161 = distinct !DILexicalBlock(scope: !129, file: !33, line: 49, column: 2)
!162 = !DILocation(line: 49, column: 17, scope: !161)
!163 = !DILocation(line: 49, column: 21, scope: !161)
!164 = !DILocation(line: 49, column: 4, scope: !161)
!165 = !DILocation(line: 49, column: 24, scope: !161)
!166 = !DILocation(line: 49, column: 35, scope: !161)
!167 = !DILocation(line: 49, column: 39, scope: !161)
!168 = !DILocation(line: 49, column: 41, scope: !161)
!169 = !DILocation(line: 50, column: 26, scope: !170)
!170 = distinct !DILexicalBlock(scope: !129, file: !33, line: 50, column: 2)
!171 = !DILocation(line: 50, column: 17, scope: !170)
!172 = !DILocation(line: 50, column: 21, scope: !170)
!173 = !DILocation(line: 50, column: 4, scope: !170)
!174 = !DILocation(line: 50, column: 24, scope: !170)
!175 = !DILocation(line: 50, column: 35, scope: !170)
!176 = !DILocation(line: 50, column: 39, scope: !170)
!177 = !DILocation(line: 50, column: 41, scope: !170)
!178 = !DILocation(line: 51, column: 12, scope: !179)
!179 = distinct !DILexicalBlock(scope: !129, file: !33, line: 51, column: 2)
!180 = !DILocation(line: 51, column: 16, scope: !179)
!181 = !DILocation(line: 51, column: 18, scope: !179)
!182 = !DILocation(line: 51, column: 23, scope: !179)
!183 = !DILocation(line: 51, column: 4, scope: !179)
!184 = !DILocation(line: 51, column: 42, scope: !179)
!185 = !DILocation(line: 51, column: 33, scope: !179)
!186 = !DILocation(line: 51, column: 37, scope: !179)
!187 = !DILocation(line: 51, column: 39, scope: !179)
!188 = !DILocation(line: 52, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !129, file: !33, line: 52, column: 2)
!190 = !DILocation(line: 52, column: 21, scope: !189)
!191 = !DILocation(line: 52, column: 4, scope: !189)
!192 = !DILocation(line: 52, column: 24, scope: !189)
!193 = !DILocation(line: 52, column: 30, scope: !189)
!194 = !DILocation(line: 52, column: 34, scope: !189)
!195 = !DILocation(line: 52, column: 36, scope: !189)
!196 = !DILocation(line: 53, column: 14, scope: !129)
!197 = !DILocation(line: 53, column: 18, scope: !129)
!198 = !DILocation(line: 53, column: 3, scope: !129)
!199 = !DILocation(line: 53, column: 7, scope: !129)
!200 = !DILocation(line: 53, column: 11, scope: !129)
!201 = !DILocation(line: 54, column: 15, scope: !129)
!202 = !DILocation(line: 54, column: 18, scope: !129)
!203 = !DILocation(line: 54, column: 2, scope: !129)
!204 = !DILocation(line: 55, column: 1, scope: !129)
!205 = distinct !DISubprogram(name: "cliprdr_send_data_request", scope: !33, file: !33, line: 99, type: !74, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !76)
!206 = !DILocalVariable(name: "format", arg: 1, scope: !205, file: !33, line: 99, type: !29)
!207 = !DILocation(line: 99, column: 34, scope: !205)
!208 = !DILocalVariable(name: "buffer", scope: !205, file: !33, line: 101, type: !209)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 32, align: 8, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 4)
!212 = !DILocation(line: 101, column: 8, scope: !205)
!213 = !DILocation(line: 103, column: 71, scope: !205)
!214 = !DILocation(line: 103, column: 2, scope: !205)
!215 = !DILocation(line: 104, column: 17, scope: !205)
!216 = !DILocation(line: 104, column: 25, scope: !205)
!217 = !DILocation(line: 104, column: 2, scope: !205)
!218 = !DILocation(line: 105, column: 28, scope: !205)
!219 = !DILocation(line: 105, column: 2, scope: !205)
!220 = !DILocation(line: 106, column: 1, scope: !205)
!221 = distinct !DISubprogram(name: "cliprdr_send_data", scope: !33, file: !33, line: 109, type: !97, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !76)
!222 = !DILocalVariable(name: "data", arg: 1, scope: !221, file: !33, line: 109, type: !67)
!223 = !DILocation(line: 109, column: 27, scope: !221)
!224 = !DILocalVariable(name: "length", arg: 2, scope: !221, file: !33, line: 109, type: !29)
!225 = !DILocation(line: 109, column: 40, scope: !221)
!226 = !DILocation(line: 111, column: 67, scope: !221)
!227 = !DILocation(line: 111, column: 2, scope: !221)
!228 = !DILocation(line: 112, column: 28, scope: !221)
!229 = !DILocation(line: 112, column: 34, scope: !221)
!230 = !DILocation(line: 112, column: 2, scope: !221)
!231 = !DILocation(line: 113, column: 1, scope: !221)
!232 = distinct !DISubprogram(name: "cliprdr_set_mode", scope: !33, file: !33, line: 178, type: !233, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !76)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!237 = !DILocalVariable(name: "optarg", arg: 1, scope: !232, file: !33, line: 178, type: !235)
!238 = !DILocation(line: 178, column: 30, scope: !232)
!239 = !DILocation(line: 180, column: 19, scope: !232)
!240 = !DILocation(line: 180, column: 2, scope: !232)
!241 = !DILocation(line: 181, column: 1, scope: !232)
!242 = distinct !DISubprogram(name: "cliprdr_init", scope: !33, file: !33, line: 184, type: !243, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !76)
!243 = !DISubroutineType(types: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !26, line: 28, baseType: !246)
!246 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!247 = !DILocation(line: 187, column: 3, scope: !242)
!248 = !DILocation(line: 186, column: 18, scope: !242)
!249 = !DILocation(line: 191, column: 10, scope: !242)
!250 = !DILocation(line: 191, column: 26, scope: !242)
!251 = !DILocation(line: 191, column: 2, scope: !242)
!252 = distinct !DISubprogram(name: "cliprdr_process", scope: !33, file: !33, line: 116, type: !62, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !76)
!253 = !DILocalVariable(name: "s", arg: 1, scope: !252, file: !33, line: 116, type: !64)
!254 = !DILocation(line: 116, column: 24, scope: !252)
!255 = !DILocalVariable(name: "type", scope: !252, file: !33, line: 118, type: !25)
!256 = !DILocation(line: 118, column: 9, scope: !252)
!257 = !DILocalVariable(name: "status", scope: !252, file: !33, line: 118, type: !25)
!258 = !DILocation(line: 118, column: 15, scope: !252)
!259 = !DILocalVariable(name: "length", scope: !252, file: !33, line: 119, type: !29)
!260 = !DILocation(line: 119, column: 9, scope: !252)
!261 = !DILocalVariable(name: "format", scope: !252, file: !33, line: 119, type: !29)
!262 = !DILocation(line: 119, column: 17, scope: !252)
!263 = !DILocalVariable(name: "data", scope: !252, file: !33, line: 120, type: !67)
!264 = !DILocation(line: 120, column: 9, scope: !252)
!265 = !DILocation(line: 122, column: 24, scope: !266)
!266 = distinct !DILexicalBlock(scope: !252, file: !33, line: 122, column: 2)
!267 = !DILocation(line: 122, column: 28, scope: !266)
!268 = !DILocation(line: 122, column: 11, scope: !266)
!269 = !DILocation(line: 122, column: 9, scope: !266)
!270 = !DILocation(line: 122, column: 33, scope: !266)
!271 = !DILocation(line: 122, column: 37, scope: !266)
!272 = !DILocation(line: 122, column: 39, scope: !266)
!273 = !DILocation(line: 123, column: 26, scope: !274)
!274 = distinct !DILexicalBlock(scope: !252, file: !33, line: 123, column: 2)
!275 = !DILocation(line: 123, column: 30, scope: !274)
!276 = !DILocation(line: 123, column: 13, scope: !274)
!277 = !DILocation(line: 123, column: 11, scope: !274)
!278 = !DILocation(line: 123, column: 35, scope: !274)
!279 = !DILocation(line: 123, column: 39, scope: !274)
!280 = !DILocation(line: 123, column: 41, scope: !274)
!281 = !DILocation(line: 124, column: 26, scope: !282)
!282 = distinct !DILexicalBlock(scope: !252, file: !33, line: 124, column: 2)
!283 = !DILocation(line: 124, column: 30, scope: !282)
!284 = !DILocation(line: 124, column: 13, scope: !282)
!285 = !DILocation(line: 124, column: 11, scope: !282)
!286 = !DILocation(line: 124, column: 35, scope: !282)
!287 = !DILocation(line: 124, column: 39, scope: !282)
!288 = !DILocation(line: 124, column: 41, scope: !282)
!289 = !DILocation(line: 125, column: 9, scope: !252)
!290 = !DILocation(line: 125, column: 12, scope: !252)
!291 = !DILocation(line: 125, column: 7, scope: !252)
!292 = !DILocation(line: 127, column: 79, scope: !252)
!293 = !DILocation(line: 127, column: 85, scope: !252)
!294 = !DILocation(line: 128, column: 9, scope: !252)
!295 = !DILocation(line: 127, column: 2, scope: !252)
!296 = !DILocation(line: 130, column: 6, scope: !297)
!297 = distinct !DILexicalBlock(scope: !252, file: !33, line: 130, column: 6)
!298 = !DILocation(line: 130, column: 13, scope: !297)
!299 = !DILocation(line: 130, column: 6, scope: !252)
!300 = !DILocation(line: 132, column: 11, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !33, line: 131, column: 2)
!302 = !DILocation(line: 132, column: 3, scope: !301)
!303 = !DILocation(line: 137, column: 41, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !33, line: 133, column: 3)
!305 = !DILocation(line: 138, column: 13, scope: !304)
!306 = !DILocation(line: 137, column: 5, scope: !304)
!307 = !DILocation(line: 139, column: 5, scope: !304)
!308 = !DILocation(line: 141, column: 5, scope: !304)
!309 = !DILocation(line: 142, column: 5, scope: !304)
!310 = !DILocation(line: 145, column: 60, scope: !304)
!311 = !DILocation(line: 144, column: 5, scope: !304)
!312 = !DILocation(line: 146, column: 3, scope: !304)
!313 = !DILocation(line: 148, column: 3, scope: !301)
!314 = !DILocation(line: 151, column: 10, scope: !252)
!315 = !DILocation(line: 151, column: 2, scope: !252)
!316 = !DILocation(line: 154, column: 4, scope: !317)
!317 = distinct !DILexicalBlock(scope: !252, file: !33, line: 152, column: 2)
!318 = !DILocation(line: 155, column: 4, scope: !317)
!319 = !DILocation(line: 157, column: 28, scope: !317)
!320 = !DILocation(line: 157, column: 34, scope: !317)
!321 = !DILocation(line: 157, column: 4, scope: !317)
!322 = !DILocation(line: 158, column: 4, scope: !317)
!323 = !DILocation(line: 159, column: 4, scope: !317)
!324 = !DILocation(line: 161, column: 4, scope: !317)
!325 = !DILocation(line: 163, column: 28, scope: !326)
!326 = distinct !DILexicalBlock(scope: !317, file: !33, line: 163, column: 4)
!327 = !DILocation(line: 163, column: 32, scope: !326)
!328 = !DILocation(line: 163, column: 15, scope: !326)
!329 = !DILocation(line: 163, column: 13, scope: !326)
!330 = !DILocation(line: 163, column: 37, scope: !326)
!331 = !DILocation(line: 163, column: 41, scope: !326)
!332 = !DILocation(line: 163, column: 43, scope: !326)
!333 = !DILocation(line: 164, column: 25, scope: !317)
!334 = !DILocation(line: 164, column: 4, scope: !317)
!335 = !DILocation(line: 165, column: 4, scope: !317)
!336 = !DILocation(line: 167, column: 24, scope: !317)
!337 = !DILocation(line: 167, column: 30, scope: !317)
!338 = !DILocation(line: 167, column: 4, scope: !317)
!339 = !DILocation(line: 168, column: 4, scope: !317)
!340 = !DILocation(line: 170, column: 4, scope: !317)
!341 = !DILocation(line: 173, column: 11, scope: !317)
!342 = !DILocation(line: 172, column: 4, scope: !317)
!343 = !DILocation(line: 174, column: 2, scope: !317)
!344 = !DILocation(line: 175, column: 1, scope: !252)
