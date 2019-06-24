; ModuleID = './[inter]dvc.o.i'
source_filename = "./[inter]dvc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dvc_channel_t = type { i32, i32, void (%struct.stream*)* }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct._VCHANNEL = type { i16, [8 x i8], i32, %struct.stream, void (%struct.stream*)* }
%union.dvc_hdr_t = type { i8 }
%struct.anon = type { i8 }

@channels = internal global [20 x %struct.dvc_channel_t] zeroinitializer, align 16
@.str = private unnamed_addr constant [56 x i8] c"dvc_send(), Trying to send data on invalid channel '%s'\00", align 1
@dvc_channel = internal global %struct._VCHANNEL* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"drdynvc\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"dvc_channels_add(), channel with name '%s' already exists\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"dvc_channels_add(), Added hash=%x, channel_id=%d, name=%s, handler=%p\00", align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"dvc_channels_add(), Failed to add channel, maximum number of channels are being used\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"dvc_process_pdu(), Unhandled command type 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"dvc_process_caps(), server supports dvc %d\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"dvc_send_capabilities_response(), offering support for dvc %d\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"dvc_process_create(), server requests channelid = %d, name = '%s'\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Established dynamic virtual channel '%s'\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"dvc_channels_set_id(), name = '%s', channel_id = %d\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"dvc_send_create_response(), %s request to create channelid %d\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"granted\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"denied\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"dvc_process_data(), Received data on unregistered channel %d\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"dvc_process_close_pdu(), close channel %d\00", align 1
@.str.16 = private unnamed_addr constant [76 x i8] c"dvc_process_close_pdu(), Received close request for unregistered channel %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dvc_channels_is_available(i8*) #0 !dbg !81 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !89, metadata !90), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %4, metadata !92, metadata !90), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %5, metadata !94, metadata !90), !dbg !95
  %6 = load i8*, i8** %3, align 8, !dbg !96
  %7 = call i32 @utils_djb2_hash(i8* %6), !dbg !97
  store i32 %7, i32* %5, align 4, !dbg !98
  store i32 0, i32* %4, align 4, !dbg !99
  br label %8, !dbg !101

; <label>:8:                                      ; preds = %28, %1
  %9 = load i32, i32* %4, align 4, !dbg !102
  %10 = icmp slt i32 %9, 20, !dbg !105
  br i1 %10, label %11, label %31, !dbg !106

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %4, align 4, !dbg !107
  %13 = sext i32 %12 to i64, !dbg !110
  %14 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %13, !dbg !110
  %15 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %14, i32 0, i32 0, !dbg !111
  %16 = load i32, i32* %15, align 16, !dbg !111
  %17 = load i32, i32* %5, align 4, !dbg !112
  %18 = icmp eq i32 %16, %17, !dbg !113
  br i1 %18, label %19, label %27, !dbg !114

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %4, align 4, !dbg !115
  %21 = sext i32 %20 to i64, !dbg !117
  %22 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %21, !dbg !117
  %23 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %22, i32 0, i32 1, !dbg !118
  %24 = load i32, i32* %23, align 4, !dbg !118
  %25 = icmp ne i32 %24, -1, !dbg !119
  %26 = zext i1 %25 to i32, !dbg !119
  store i32 %26, i32* %2, align 4, !dbg !120
  br label %32, !dbg !120

; <label>:27:                                     ; preds = %11
  br label %28, !dbg !121

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %4, align 4, !dbg !122
  %30 = add nsw i32 %29, 1, !dbg !122
  store i32 %30, i32* %4, align 4, !dbg !122
  br label %8, !dbg !124, !llvm.loop !125

; <label>:31:                                     ; preds = %8
  store i32 0, i32* %2, align 4, !dbg !127
  br label %32, !dbg !127

; <label>:32:                                     ; preds = %31, %19
  %33 = load i32, i32* %2, align 4, !dbg !128
  ret i32 %33, !dbg !128
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @utils_djb2_hash(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @dvc_channels_register(i8*, void (%struct.stream*)*) #0 !dbg !129 {
  %3 = alloca i8*, align 8
  %4 = alloca void (%struct.stream*)*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !132, metadata !90), !dbg !133
  store void (%struct.stream*)* %1, void (%struct.stream*)** %4, align 8
  call void @llvm.dbg.declare(metadata void (%struct.stream*)** %4, metadata !134, metadata !90), !dbg !135
  %5 = load i8*, i8** %3, align 8, !dbg !136
  %6 = load void (%struct.stream*)*, void (%struct.stream*)** %4, align 8, !dbg !137
  %7 = call i32 @dvc_channels_add(i8* %5, void (%struct.stream*)* %6, i32 -1), !dbg !138
  ret i32 %7, !dbg !139
}

; Function Attrs: nounwind uwtable
define internal i32 @dvc_channels_add(i8*, void (%struct.stream*)*, i32) #0 !dbg !140 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca void (%struct.stream*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !143, metadata !90), !dbg !144
  store void (%struct.stream*)* %1, void (%struct.stream*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (%struct.stream*)** %6, metadata !145, metadata !90), !dbg !146
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !147, metadata !90), !dbg !148
  call void @llvm.dbg.declare(metadata i32* %8, metadata !149, metadata !90), !dbg !150
  call void @llvm.dbg.declare(metadata i32* %9, metadata !151, metadata !90), !dbg !152
  %10 = load i8*, i8** %5, align 8, !dbg !153
  %11 = call i32 @dvc_channels_exists(i8* %10), !dbg !155
  %12 = icmp eq i32 %11, 1, !dbg !156
  br i1 %12, label %13, label %15, !dbg !157

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %5, align 8, !dbg !158
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i32 0, i32 0), i8* %14), !dbg !160
  store i32 0, i32* %4, align 4, !dbg !161
  br label %53, !dbg !161

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %8, align 4, !dbg !162
  br label %16, !dbg !164

; <label>:16:                                     ; preds = %49, %15
  %17 = load i32, i32* %8, align 4, !dbg !165
  %18 = icmp slt i32 %17, 20, !dbg !168
  br i1 %18, label %19, label %52, !dbg !169

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %8, align 4, !dbg !170
  %21 = sext i32 %20 to i64, !dbg !173
  %22 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %21, !dbg !173
  %23 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %22, i32 0, i32 0, !dbg !174
  %24 = load i32, i32* %23, align 16, !dbg !174
  %25 = icmp eq i32 %24, 0, !dbg !175
  br i1 %25, label %26, label %48, !dbg !176

; <label>:26:                                     ; preds = %19
  %27 = load i8*, i8** %5, align 8, !dbg !177
  %28 = call i32 @utils_djb2_hash(i8* %27), !dbg !179
  store i32 %28, i32* %9, align 4, !dbg !180
  %29 = load i32, i32* %9, align 4, !dbg !181
  %30 = load i32, i32* %8, align 4, !dbg !182
  %31 = sext i32 %30 to i64, !dbg !183
  %32 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %31, !dbg !183
  %33 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %32, i32 0, i32 0, !dbg !184
  store i32 %29, i32* %33, align 16, !dbg !185
  %34 = load void (%struct.stream*)*, void (%struct.stream*)** %6, align 8, !dbg !186
  %35 = load i32, i32* %8, align 4, !dbg !187
  %36 = sext i32 %35 to i64, !dbg !188
  %37 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %36, !dbg !188
  %38 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %37, i32 0, i32 2, !dbg !189
  store void (%struct.stream*)* %34, void (%struct.stream*)** %38, align 8, !dbg !190
  %39 = load i32, i32* %7, align 4, !dbg !191
  %40 = load i32, i32* %8, align 4, !dbg !192
  %41 = sext i32 %40 to i64, !dbg !193
  %42 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %41, !dbg !193
  %43 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %42, i32 0, i32 1, !dbg !194
  store i32 %39, i32* %43, align 4, !dbg !195
  %44 = load i32, i32* %9, align 4, !dbg !196
  %45 = load i32, i32* %7, align 4, !dbg !197
  %46 = load i8*, i8** %5, align 8, !dbg !198
  %47 = load void (%struct.stream*)*, void (%struct.stream*)** %6, align 8, !dbg !199
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i32 0, i32 0), i32 %44, i32 %45, i8* %46, void (%struct.stream*)* %47), !dbg !200
  store i32 1, i32* %4, align 4, !dbg !201
  br label %53, !dbg !201

; <label>:48:                                     ; preds = %19
  br label %49, !dbg !202

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %8, align 4, !dbg !203
  %51 = add nsw i32 %50, 1, !dbg !203
  store i32 %51, i32* %8, align 4, !dbg !203
  br label %16, !dbg !205, !llvm.loop !206

; <label>:52:                                     ; preds = %16
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 2, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i32 0, i32 0)), !dbg !208
  store i32 0, i32* %4, align 4, !dbg !209
  br label %53, !dbg !209

; <label>:53:                                     ; preds = %52, %26, %13
  %54 = load i32, i32* %4, align 4, !dbg !210
  ret i32 %54, !dbg !210
}

; Function Attrs: nounwind uwtable
define void @dvc_send(i8*, %struct.stream*) #0 !dbg !211 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stream*, align 8
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %union.dvc_hdr_t, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !214, metadata !90), !dbg !215
  store %struct.stream* %1, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !216, metadata !90), !dbg !217
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !218, metadata !90), !dbg !219
  call void @llvm.dbg.declare(metadata %union.dvc_hdr_t* %6, metadata !220, metadata !90), !dbg !232
  call void @llvm.dbg.declare(metadata i32* %7, metadata !233, metadata !90), !dbg !234
  %8 = load i8*, i8** %3, align 8, !dbg !235
  %9 = call i32 @dvc_channels_get_id(i8* %8), !dbg !236
  store i32 %9, i32* %7, align 4, !dbg !237
  %10 = load i32, i32* %7, align 4, !dbg !238
  %11 = icmp eq i32 %10, -1, !dbg !240
  br i1 %11, label %12, label %14, !dbg !241

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %3, align 8, !dbg !242
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i32 0, i32 0), i8* %13), !dbg !244
  br label %77, !dbg !245

; <label>:14:                                     ; preds = %2
  %15 = bitcast %union.dvc_hdr_t* %6 to %struct.anon*, !dbg !246
  %16 = bitcast %struct.anon* %15 to i8*, !dbg !247
  %17 = load i8, i8* %16, align 1, !dbg !248
  %18 = and i8 %17, 15, !dbg !248
  %19 = or i8 %18, 48, !dbg !248
  store i8 %19, i8* %16, align 1, !dbg !248
  %20 = bitcast %union.dvc_hdr_t* %6 to %struct.anon*, !dbg !249
  %21 = bitcast %struct.anon* %20 to i8*, !dbg !250
  %22 = load i8, i8* %21, align 1, !dbg !251
  %23 = and i8 %22, -4, !dbg !251
  %24 = or i8 %23, 2, !dbg !251
  store i8 %24, i8* %21, align 1, !dbg !251
  %25 = bitcast %union.dvc_hdr_t* %6 to %struct.anon*, !dbg !252
  %26 = bitcast %struct.anon* %25 to i8*, !dbg !253
  %27 = load i8, i8* %26, align 1, !dbg !254
  %28 = and i8 %27, -13, !dbg !254
  store i8 %28, i8* %26, align 1, !dbg !254
  %29 = load i32, i32* %7, align 4, !dbg !255
  %30 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !256
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 1, !dbg !257
  %32 = load i8*, i8** %31, align 8, !dbg !257
  %33 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !258
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 2, !dbg !259
  %35 = load i8*, i8** %34, align 8, !dbg !259
  %36 = ptrtoint i8* %32 to i64, !dbg !260
  %37 = ptrtoint i8* %35 to i64, !dbg !260
  %38 = sub i64 %36, %37, !dbg !260
  %39 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %6, i32 0, i32 0, !dbg !261
  %40 = load i8, i8* %39, align 1, !dbg !261
  %41 = call %struct.stream* @dvc_init_packet(i8 %40, i32 %29, i64 %38), !dbg !261
  store %struct.stream* %41, %struct.stream** %5, align 8, !dbg !262
  %42 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !263
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 0, !dbg !265
  %44 = load i8*, i8** %43, align 8, !dbg !265
  %45 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !266
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 2, !dbg !267
  %47 = load i8*, i8** %46, align 8, !dbg !267
  %48 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !268
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 1, !dbg !269
  %50 = load i8*, i8** %49, align 8, !dbg !269
  %51 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !270
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 2, !dbg !271
  %53 = load i8*, i8** %52, align 8, !dbg !271
  %54 = ptrtoint i8* %50 to i64, !dbg !272
  %55 = ptrtoint i8* %53 to i64, !dbg !272
  %56 = sub i64 %54, %55, !dbg !272
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %47, i64 %56, i32 1, i1 false), !dbg !273
  %57 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !274
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 1, !dbg !275
  %59 = load i8*, i8** %58, align 8, !dbg !275
  %60 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !276
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 2, !dbg !277
  %62 = load i8*, i8** %61, align 8, !dbg !277
  %63 = ptrtoint i8* %59 to i64, !dbg !278
  %64 = ptrtoint i8* %62 to i64, !dbg !278
  %65 = sub i64 %63, %64, !dbg !278
  %66 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !279
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 0, !dbg !280
  %68 = load i8*, i8** %67, align 8, !dbg !281
  %69 = getelementptr inbounds i8, i8* %68, i64 %65, !dbg !281
  store i8* %69, i8** %67, align 8, !dbg !281
  %70 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !282
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %70, i32 0, i32 0, !dbg !283
  %72 = load i8*, i8** %71, align 8, !dbg !283
  %73 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !284
  %74 = getelementptr inbounds %struct.stream, %struct.stream* %73, i32 0, i32 1, !dbg !285
  store i8* %72, i8** %74, align 8, !dbg !286
  %75 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !287
  %76 = load %struct._VCHANNEL*, %struct._VCHANNEL** @dvc_channel, align 8, !dbg !288
  call void @channel_send(%struct.stream* %75, %struct._VCHANNEL* %76), !dbg !289
  br label %77, !dbg !290

; <label>:77:                                     ; preds = %14, %12
  ret void, !dbg !291
}

; Function Attrs: nounwind uwtable
define internal i32 @dvc_channels_get_id(i8*) #0 !dbg !293 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !296, metadata !90), !dbg !297
  call void @llvm.dbg.declare(metadata i32* %4, metadata !298, metadata !90), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %5, metadata !300, metadata !90), !dbg !301
  %6 = load i8*, i8** %3, align 8, !dbg !302
  %7 = call i32 @utils_djb2_hash(i8* %6), !dbg !303
  store i32 %7, i32* %5, align 4, !dbg !304
  store i32 0, i32* %4, align 4, !dbg !305
  br label %8, !dbg !307

; <label>:8:                                      ; preds = %26, %1
  %9 = load i32, i32* %4, align 4, !dbg !308
  %10 = icmp slt i32 %9, 20, !dbg !311
  br i1 %10, label %11, label %29, !dbg !312

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %4, align 4, !dbg !313
  %13 = sext i32 %12 to i64, !dbg !316
  %14 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %13, !dbg !316
  %15 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %14, i32 0, i32 0, !dbg !317
  %16 = load i32, i32* %15, align 16, !dbg !317
  %17 = load i32, i32* %5, align 4, !dbg !318
  %18 = icmp eq i32 %16, %17, !dbg !319
  br i1 %18, label %19, label %25, !dbg !320

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %4, align 4, !dbg !321
  %21 = sext i32 %20 to i64, !dbg !323
  %22 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %21, !dbg !323
  %23 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %22, i32 0, i32 1, !dbg !324
  %24 = load i32, i32* %23, align 4, !dbg !324
  store i32 %24, i32* %2, align 4, !dbg !325
  br label %30, !dbg !325

; <label>:25:                                     ; preds = %11
  br label %26, !dbg !326

; <label>:26:                                     ; preds = %25
  %27 = load i32, i32* %4, align 4, !dbg !327
  %28 = add nsw i32 %27, 1, !dbg !327
  store i32 %28, i32* %4, align 4, !dbg !327
  br label %8, !dbg !329, !llvm.loop !330

; <label>:29:                                     ; preds = %8
  store i32 -1, i32* %2, align 4, !dbg !332
  br label %30, !dbg !332

; <label>:30:                                     ; preds = %29, %19
  %31 = load i32, i32* %2, align 4, !dbg !333
  ret i32 %31, !dbg !333
}

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.stream* @dvc_init_packet(i8, i32, i64) #0 !dbg !334 {
  %4 = alloca %union.dvc_hdr_t, align 1
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.stream*, align 8
  %8 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %4, i32 0, i32 0
  store i8 %0, i8* %8, align 1
  call void @llvm.dbg.declare(metadata %union.dvc_hdr_t* %4, metadata !340, metadata !90), !dbg !341
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !342, metadata !90), !dbg !343
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !344, metadata !90), !dbg !345
  call void @llvm.dbg.declare(metadata %struct.stream** %7, metadata !346, metadata !90), !dbg !347
  %9 = load i64, i64* %6, align 8, !dbg !348
  %10 = add i64 %9, 1, !dbg !348
  store i64 %10, i64* %6, align 8, !dbg !348
  %11 = load i32, i32* %5, align 4, !dbg !349
  %12 = icmp ne i32 %11, -1, !dbg !351
  br i1 %12, label %13, label %46, !dbg !352

; <label>:13:                                     ; preds = %3
  %14 = bitcast %union.dvc_hdr_t* %4 to %struct.anon*, !dbg !353
  %15 = bitcast %struct.anon* %14 to i8*, !dbg !356
  %16 = load i8, i8* %15, align 1, !dbg !356
  %17 = and i8 %16, 3, !dbg !356
  %18 = zext i8 %17 to i32, !dbg !357
  %19 = icmp eq i32 %18, 0, !dbg !358
  br i1 %19, label %20, label %23, !dbg !359

; <label>:20:                                     ; preds = %13
  %21 = load i64, i64* %6, align 8, !dbg !360
  %22 = add i64 %21, 1, !dbg !360
  store i64 %22, i64* %6, align 8, !dbg !360
  br label %45, !dbg !361

; <label>:23:                                     ; preds = %13
  %24 = bitcast %union.dvc_hdr_t* %4 to %struct.anon*, !dbg !362
  %25 = bitcast %struct.anon* %24 to i8*, !dbg !364
  %26 = load i8, i8* %25, align 1, !dbg !364
  %27 = and i8 %26, 3, !dbg !364
  %28 = zext i8 %27 to i32, !dbg !365
  %29 = icmp eq i32 %28, 1, !dbg !366
  br i1 %29, label %30, label %33, !dbg !367

; <label>:30:                                     ; preds = %23
  %31 = load i64, i64* %6, align 8, !dbg !368
  %32 = add i64 %31, 2, !dbg !368
  store i64 %32, i64* %6, align 8, !dbg !368
  br label %44, !dbg !369

; <label>:33:                                     ; preds = %23
  %34 = bitcast %union.dvc_hdr_t* %4 to %struct.anon*, !dbg !370
  %35 = bitcast %struct.anon* %34 to i8*, !dbg !372
  %36 = load i8, i8* %35, align 1, !dbg !372
  %37 = and i8 %36, 3, !dbg !372
  %38 = zext i8 %37 to i32, !dbg !373
  %39 = icmp eq i32 %38, 2, !dbg !374
  br i1 %39, label %40, label %43, !dbg !375

; <label>:40:                                     ; preds = %33
  %41 = load i64, i64* %6, align 8, !dbg !376
  %42 = add i64 %41, 4, !dbg !376
  store i64 %42, i64* %6, align 8, !dbg !376
  br label %43, !dbg !377

; <label>:43:                                     ; preds = %40, %33
  br label %44

; <label>:44:                                     ; preds = %43, %30
  br label %45

; <label>:45:                                     ; preds = %44, %20
  br label %46, !dbg !378

; <label>:46:                                     ; preds = %45, %3
  %47 = load %struct._VCHANNEL*, %struct._VCHANNEL** @dvc_channel, align 8, !dbg !379
  %48 = load i64, i64* %6, align 8, !dbg !380
  %49 = trunc i64 %48 to i32, !dbg !380
  %50 = call %struct.stream* @channel_init(%struct._VCHANNEL* %47, i32 %49), !dbg !381
  store %struct.stream* %50, %struct.stream** %7, align 8, !dbg !382
  %51 = bitcast %union.dvc_hdr_t* %4 to i8*, !dbg !383
  %52 = load i8, i8* %51, align 1, !dbg !383
  %53 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !384
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 0, !dbg !385
  %55 = load i8*, i8** %54, align 8, !dbg !386
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !386
  store i8* %56, i8** %54, align 8, !dbg !386
  store i8 %52, i8* %55, align 1, !dbg !387
  %57 = load i32, i32* %5, align 4, !dbg !388
  %58 = icmp ne i32 %57, -1, !dbg !390
  br i1 %58, label %59, label %111, !dbg !391

; <label>:59:                                     ; preds = %46
  %60 = bitcast %union.dvc_hdr_t* %4 to %struct.anon*, !dbg !392
  %61 = bitcast %struct.anon* %60 to i8*, !dbg !395
  %62 = load i8, i8* %61, align 1, !dbg !395
  %63 = and i8 %62, 3, !dbg !395
  %64 = zext i8 %63 to i32, !dbg !396
  %65 = icmp eq i32 %64, 0, !dbg !397
  br i1 %65, label %66, label %73, !dbg !398

; <label>:66:                                     ; preds = %59
  %67 = load i32, i32* %5, align 4, !dbg !399
  %68 = trunc i32 %67 to i8, !dbg !399
  %69 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !401
  %70 = getelementptr inbounds %struct.stream, %struct.stream* %69, i32 0, i32 0, !dbg !402
  %71 = load i8*, i8** %70, align 8, !dbg !403
  %72 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !403
  store i8* %72, i8** %70, align 8, !dbg !403
  store i8 %68, i8* %71, align 1, !dbg !404
  br label %110, !dbg !405

; <label>:73:                                     ; preds = %59
  %74 = bitcast %union.dvc_hdr_t* %4 to %struct.anon*, !dbg !406
  %75 = bitcast %struct.anon* %74 to i8*, !dbg !408
  %76 = load i8, i8* %75, align 1, !dbg !408
  %77 = and i8 %76, 3, !dbg !408
  %78 = zext i8 %77 to i32, !dbg !409
  %79 = icmp eq i32 %78, 1, !dbg !410
  br i1 %79, label %80, label %91, !dbg !411

; <label>:80:                                     ; preds = %73
  %81 = load i32, i32* %5, align 4, !dbg !412
  %82 = trunc i32 %81 to i16, !dbg !412
  %83 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !415
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0, !dbg !416
  %85 = load i8*, i8** %84, align 8, !dbg !416
  %86 = bitcast i8* %85 to i16*, !dbg !417
  store i16 %82, i16* %86, align 2, !dbg !418
  %87 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !419
  %88 = getelementptr inbounds %struct.stream, %struct.stream* %87, i32 0, i32 0, !dbg !420
  %89 = load i8*, i8** %88, align 8, !dbg !421
  %90 = getelementptr inbounds i8, i8* %89, i64 2, !dbg !421
  store i8* %90, i8** %88, align 8, !dbg !421
  br label %109, !dbg !422

; <label>:91:                                     ; preds = %73
  %92 = bitcast %union.dvc_hdr_t* %4 to %struct.anon*, !dbg !423
  %93 = bitcast %struct.anon* %92 to i8*, !dbg !425
  %94 = load i8, i8* %93, align 1, !dbg !425
  %95 = and i8 %94, 3, !dbg !425
  %96 = zext i8 %95 to i32, !dbg !426
  %97 = icmp eq i32 %96, 2, !dbg !427
  br i1 %97, label %98, label %108, !dbg !428

; <label>:98:                                     ; preds = %91
  %99 = load i32, i32* %5, align 4, !dbg !429
  %100 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !432
  %101 = getelementptr inbounds %struct.stream, %struct.stream* %100, i32 0, i32 0, !dbg !433
  %102 = load i8*, i8** %101, align 8, !dbg !433
  %103 = bitcast i8* %102 to i32*, !dbg !434
  store i32 %99, i32* %103, align 4, !dbg !435
  %104 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !436
  %105 = getelementptr inbounds %struct.stream, %struct.stream* %104, i32 0, i32 0, !dbg !437
  %106 = load i8*, i8** %105, align 8, !dbg !438
  %107 = getelementptr inbounds i8, i8* %106, i64 4, !dbg !438
  store i8* %107, i8** %105, align 8, !dbg !438
  br label %108, !dbg !439

; <label>:108:                                    ; preds = %98, %91
  br label %109

; <label>:109:                                    ; preds = %108, %80
  br label %110

; <label>:110:                                    ; preds = %109, %66
  br label %111, !dbg !440

; <label>:111:                                    ; preds = %110, %46
  %112 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !441
  ret %struct.stream* %112, !dbg !442
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare void @channel_send(%struct.stream*, %struct._VCHANNEL*) #2

; Function Attrs: nounwind uwtable
define i32 @dvc_init() #0 !dbg !443 {
  call void @llvm.memset.p0i8.i64(i8* bitcast ([20 x %struct.dvc_channel_t]* @channels to i8*), i8 0, i64 320, i32 16, i1 false), !dbg !446
  %1 = call %struct._VCHANNEL* @channel_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 -1073741824, void (%struct.stream*)* @dvc_process_pdu), !dbg !447
  store %struct._VCHANNEL* %1, %struct._VCHANNEL** @dvc_channel, align 8, !dbg !448
  %2 = load %struct._VCHANNEL*, %struct._VCHANNEL** @dvc_channel, align 8, !dbg !449
  %3 = icmp ne %struct._VCHANNEL* %2, null, !dbg !450
  %4 = zext i1 %3 to i32, !dbg !450
  ret i32 %4, !dbg !451
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare %struct._VCHANNEL* @channel_register(i8*, i32, void (%struct.stream*)*) #2

; Function Attrs: nounwind uwtable
define internal void @dvc_process_pdu(%struct.stream*) #0 !dbg !452 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca %union.dvc_hdr_t, align 1
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !453, metadata !90), !dbg !454
  call void @llvm.dbg.declare(metadata %union.dvc_hdr_t* %3, metadata !455, metadata !90), !dbg !456
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !457
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !458
  %6 = load i8*, i8** %5, align 8, !dbg !459
  %7 = getelementptr inbounds i8, i8* %6, i32 1, !dbg !459
  store i8* %7, i8** %5, align 8, !dbg !459
  %8 = load i8, i8* %6, align 1, !dbg !460
  %9 = bitcast %union.dvc_hdr_t* %3 to i8*, !dbg !461
  store i8 %8, i8* %9, align 1, !dbg !462
  %10 = bitcast %union.dvc_hdr_t* %3 to %struct.anon*, !dbg !463
  %11 = bitcast %struct.anon* %10 to i8*, !dbg !464
  %12 = load i8, i8* %11, align 1, !dbg !464
  %13 = lshr i8 %12, 4, !dbg !464
  %14 = zext i8 %13 to i32, !dbg !465
  switch i32 %14, label %29 [
    i32 5, label %15
    i32 1, label %17
    i32 3, label %21
    i32 4, label %25
  ], !dbg !466

; <label>:15:                                     ; preds = %1
  %16 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !467
  call void @dvc_process_caps_pdu(%struct.stream* %16), !dbg !469
  br label %35, !dbg !470

; <label>:17:                                     ; preds = %1
  %18 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !471
  %19 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %3, i32 0, i32 0, !dbg !472
  %20 = load i8, i8* %19, align 1, !dbg !472
  call void @dvc_process_create_pdu(%struct.stream* %18, i8 %20), !dbg !472
  br label %35, !dbg !473

; <label>:21:                                     ; preds = %1
  %22 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !474
  %23 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %3, i32 0, i32 0, !dbg !475
  %24 = load i8, i8* %23, align 1, !dbg !475
  call void @dvc_process_data_pdu(%struct.stream* %22, i8 %24), !dbg !475
  br label %35, !dbg !476

; <label>:25:                                     ; preds = %1
  %26 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !477
  %27 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %3, i32 0, i32 0, !dbg !478
  %28 = load i8, i8* %27, align 1, !dbg !478
  call void @dvc_process_close_pdu(%struct.stream* %26, i8 %28), !dbg !478
  br label %35, !dbg !479

; <label>:29:                                     ; preds = %1
  %30 = bitcast %union.dvc_hdr_t* %3 to %struct.anon*, !dbg !480
  %31 = bitcast %struct.anon* %30 to i8*, !dbg !481
  %32 = load i8, i8* %31, align 1, !dbg !481
  %33 = lshr i8 %32, 4, !dbg !481
  %34 = zext i8 %33 to i32, !dbg !482
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0), i32 %34), !dbg !483
  br label %35, !dbg !484

; <label>:35:                                     ; preds = %29, %25, %21, %17, %15
  ret void, !dbg !485
}

; Function Attrs: nounwind uwtable
define internal i32 @dvc_channels_exists(i8*) #0 !dbg !486 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !487, metadata !90), !dbg !488
  call void @llvm.dbg.declare(metadata i32* %4, metadata !489, metadata !90), !dbg !490
  call void @llvm.dbg.declare(metadata i32* %5, metadata !491, metadata !90), !dbg !492
  %6 = load i8*, i8** %3, align 8, !dbg !493
  %7 = call i32 @utils_djb2_hash(i8* %6), !dbg !494
  store i32 %7, i32* %5, align 4, !dbg !495
  store i32 0, i32* %4, align 4, !dbg !496
  br label %8, !dbg !498

; <label>:8:                                      ; preds = %21, %1
  %9 = load i32, i32* %4, align 4, !dbg !499
  %10 = icmp slt i32 %9, 20, !dbg !502
  br i1 %10, label %11, label %24, !dbg !503

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %4, align 4, !dbg !504
  %13 = sext i32 %12 to i64, !dbg !507
  %14 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %13, !dbg !507
  %15 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %14, i32 0, i32 0, !dbg !508
  %16 = load i32, i32* %15, align 16, !dbg !508
  %17 = load i32, i32* %5, align 4, !dbg !509
  %18 = icmp eq i32 %16, %17, !dbg !510
  br i1 %18, label %19, label %20, !dbg !511

; <label>:19:                                     ; preds = %11
  store i32 1, i32* %2, align 4, !dbg !512
  br label %25, !dbg !512

; <label>:20:                                     ; preds = %11
  br label %21, !dbg !513

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* %4, align 4, !dbg !514
  %23 = add nsw i32 %22, 1, !dbg !514
  store i32 %23, i32* %4, align 4, !dbg !514
  br label %8, !dbg !516, !llvm.loop !517

; <label>:24:                                     ; preds = %8
  store i32 0, i32* %2, align 4, !dbg !519
  br label %25, !dbg !519

; <label>:25:                                     ; preds = %24, %19
  %26 = load i32, i32* %2, align 4, !dbg !520
  ret i32 %26, !dbg !520
}

declare %struct.stream* @channel_init(%struct._VCHANNEL*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @dvc_process_caps_pdu(%struct.stream*) #0 !dbg !521 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !522, metadata !90), !dbg !523
  call void @llvm.dbg.declare(metadata i16* %3, metadata !524, metadata !90), !dbg !525
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !526
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !527
  %6 = load i8*, i8** %5, align 8, !dbg !528
  %7 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !528
  store i8* %7, i8** %5, align 8, !dbg !528
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !529
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !531
  %10 = load i8*, i8** %9, align 8, !dbg !531
  %11 = bitcast i8* %10 to i16*, !dbg !532
  %12 = load i16, i16* %11, align 2, !dbg !532
  store i16 %12, i16* %3, align 2, !dbg !533
  %13 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !534
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !535
  %15 = load i8*, i8** %14, align 8, !dbg !536
  %16 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !536
  store i8* %16, i8** %14, align 8, !dbg !536
  %17 = load i16, i16* %3, align 2, !dbg !537
  %18 = zext i16 %17 to i32, !dbg !537
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i32 %18), !dbg !538
  call void @dvc_send_capabilities_response(), !dbg !539
  ret void, !dbg !540
}

; Function Attrs: nounwind uwtable
define internal void @dvc_process_create_pdu(%struct.stream*, i8) #0 !dbg !541 {
  %3 = alloca %union.dvc_hdr_t, align 1
  %4 = alloca %struct.stream*, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %3, i32 0, i32 0
  store i8 %1, i8* %7, align 1
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !544, metadata !90), !dbg !545
  call void @llvm.dbg.declare(metadata %union.dvc_hdr_t* %3, metadata !546, metadata !90), !dbg !547
  call void @llvm.dbg.declare(metadata [512 x i8]* %5, metadata !548, metadata !90), !dbg !552
  call void @llvm.dbg.declare(metadata i32* %6, metadata !553, metadata !90), !dbg !554
  %8 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !555
  %9 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %3, i32 0, i32 0, !dbg !556
  %10 = load i8, i8* %9, align 1, !dbg !556
  %11 = call i32 @dvc_in_channelid(%struct.stream* %8, i8 %10), !dbg !556
  store i32 %11, i32* %6, align 4, !dbg !557
  %12 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !558
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0, !dbg !559
  %14 = call i64 @in_ansi_string(%struct.stream* %12, i8* %13, i64 512), !dbg !560
  %15 = load i32, i32* %6, align 4, !dbg !561
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0, !dbg !562
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i32 0, i32 0), i32 %15, i8* %16), !dbg !563
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0, !dbg !564
  %18 = call i32 @dvc_channels_exists(i8* %17), !dbg !566
  %19 = icmp ne i32 %18, 0, !dbg !566
  br i1 %19, label %20, label %28, !dbg !567

; <label>:20:                                     ; preds = %2
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0, !dbg !568
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i8* %21), !dbg !570
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0, !dbg !571
  %23 = load i32, i32* %6, align 4, !dbg !572
  %24 = call i32 @dvc_channels_set_id(i8* %22, i32 %23), !dbg !573
  %25 = load i32, i32* %6, align 4, !dbg !574
  %26 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %3, i32 0, i32 0, !dbg !575
  %27 = load i8, i8* %26, align 1, !dbg !575
  call void @dvc_send_create_response(i32 1, i8 %27, i32 %25), !dbg !575
  br label %32, !dbg !576

; <label>:28:                                     ; preds = %2
  %29 = load i32, i32* %6, align 4, !dbg !577
  %30 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %3, i32 0, i32 0, !dbg !579
  %31 = load i8, i8* %30, align 1, !dbg !579
  call void @dvc_send_create_response(i32 0, i8 %31, i32 %29), !dbg !579
  br label %32

; <label>:32:                                     ; preds = %28, %20
  ret void, !dbg !580
}

; Function Attrs: nounwind uwtable
define internal void @dvc_process_data_pdu(%struct.stream*, i8) #0 !dbg !581 {
  %3 = alloca %union.dvc_hdr_t, align 1
  %4 = alloca %struct.stream*, align 8
  %5 = alloca %struct.dvc_channel_t*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %3, i32 0, i32 0
  store i8 %1, i8* %7, align 1
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !582, metadata !90), !dbg !583
  call void @llvm.dbg.declare(metadata %union.dvc_hdr_t* %3, metadata !584, metadata !90), !dbg !585
  call void @llvm.dbg.declare(metadata %struct.dvc_channel_t** %5, metadata !586, metadata !90), !dbg !589
  call void @llvm.dbg.declare(metadata i32* %6, metadata !590, metadata !90), !dbg !591
  %8 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !592
  %9 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %3, i32 0, i32 0, !dbg !593
  %10 = load i8, i8* %9, align 1, !dbg !593
  %11 = call i32 @dvc_in_channelid(%struct.stream* %8, i8 %10), !dbg !593
  store i32 %11, i32* %6, align 4, !dbg !594
  %12 = load i32, i32* %6, align 4, !dbg !595
  %13 = call %struct.dvc_channel_t* @dvc_channels_get_by_id(i32 %12), !dbg !596
  store %struct.dvc_channel_t* %13, %struct.dvc_channel_t** %5, align 8, !dbg !597
  %14 = load %struct.dvc_channel_t*, %struct.dvc_channel_t** %5, align 8, !dbg !598
  %15 = icmp eq %struct.dvc_channel_t* %14, null, !dbg !600
  br i1 %15, label %16, label %18, !dbg !601

; <label>:16:                                     ; preds = %2
  %17 = load i32, i32* %6, align 4, !dbg !602
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i32 0, i32 0), i32 %17), !dbg !604
  br label %23, !dbg !605

; <label>:18:                                     ; preds = %2
  %19 = load %struct.dvc_channel_t*, %struct.dvc_channel_t** %5, align 8, !dbg !606
  %20 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %19, i32 0, i32 2, !dbg !607
  %21 = load void (%struct.stream*)*, void (%struct.stream*)** %20, align 8, !dbg !607
  %22 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !608
  call void %21(%struct.stream* %22), !dbg !606
  br label %23, !dbg !609

; <label>:23:                                     ; preds = %18, %16
  ret void, !dbg !610
}

; Function Attrs: nounwind uwtable
define internal void @dvc_process_close_pdu(%struct.stream*, i8) #0 !dbg !612 {
  %3 = alloca %union.dvc_hdr_t, align 1
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %3, i32 0, i32 0
  store i8 %1, i8* %6, align 1
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !613, metadata !90), !dbg !614
  call void @llvm.dbg.declare(metadata %union.dvc_hdr_t* %3, metadata !615, metadata !90), !dbg !616
  call void @llvm.dbg.declare(metadata i32* %5, metadata !617, metadata !90), !dbg !618
  %7 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !619
  %8 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %3, i32 0, i32 0, !dbg !620
  %9 = load i8, i8* %8, align 1, !dbg !620
  %10 = call i32 @dvc_in_channelid(%struct.stream* %7, i8 %9), !dbg !620
  store i32 %10, i32* %5, align 4, !dbg !621
  %11 = load i32, i32* %5, align 4, !dbg !622
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i32 %11), !dbg !623
  %12 = load i32, i32* %5, align 4, !dbg !624
  %13 = call i32 @dvc_channels_remove_by_id(i32 %12), !dbg !626
  %14 = icmp ne i32 %13, 0, !dbg !626
  br i1 %14, label %17, label %15, !dbg !627

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %5, align 4, !dbg !628
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.16, i32 0, i32 0), i32 %16), !dbg !630
  br label %17, !dbg !631

; <label>:17:                                     ; preds = %15, %2
  ret void, !dbg !632
}

; Function Attrs: nounwind uwtable
define internal void @dvc_send_capabilities_response() #0 !dbg !633 {
  %1 = alloca %struct.stream*, align 8
  %2 = alloca %union.dvc_hdr_t, align 1
  %3 = alloca i16, align 2
  call void @llvm.dbg.declare(metadata %struct.stream** %1, metadata !636, metadata !90), !dbg !637
  call void @llvm.dbg.declare(metadata %union.dvc_hdr_t* %2, metadata !638, metadata !90), !dbg !639
  call void @llvm.dbg.declare(metadata i16* %3, metadata !640, metadata !90), !dbg !641
  store i16 1, i16* %3, align 2, !dbg !641
  %4 = bitcast %union.dvc_hdr_t* %2 to %struct.anon*, !dbg !642
  %5 = bitcast %struct.anon* %4 to i8*, !dbg !643
  %6 = load i8, i8* %5, align 1, !dbg !644
  %7 = and i8 %6, -4, !dbg !644
  store i8 %7, i8* %5, align 1, !dbg !644
  %8 = bitcast %union.dvc_hdr_t* %2 to %struct.anon*, !dbg !645
  %9 = bitcast %struct.anon* %8 to i8*, !dbg !646
  %10 = load i8, i8* %9, align 1, !dbg !647
  %11 = and i8 %10, -13, !dbg !647
  store i8 %11, i8* %9, align 1, !dbg !647
  %12 = bitcast %union.dvc_hdr_t* %2 to %struct.anon*, !dbg !648
  %13 = bitcast %struct.anon* %12 to i8*, !dbg !649
  %14 = load i8, i8* %13, align 1, !dbg !650
  %15 = and i8 %14, 15, !dbg !650
  %16 = or i8 %15, 80, !dbg !650
  store i8 %16, i8* %13, align 1, !dbg !650
  %17 = load i16, i16* %3, align 2, !dbg !651
  %18 = zext i16 %17 to i32, !dbg !651
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i32 0, i32 0), i32 %18), !dbg !652
  %19 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %2, i32 0, i32 0, !dbg !653
  %20 = load i8, i8* %19, align 1, !dbg !653
  %21 = call %struct.stream* @dvc_init_packet(i8 %20, i32 -1, i64 3), !dbg !653
  store %struct.stream* %21, %struct.stream** %1, align 8, !dbg !654
  %22 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !655
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !656
  %24 = load i8*, i8** %23, align 8, !dbg !657
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !657
  store i8* %25, i8** %23, align 8, !dbg !657
  store i8 0, i8* %24, align 1, !dbg !658
  %26 = load i16, i16* %3, align 2, !dbg !659
  %27 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !661
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !662
  %29 = load i8*, i8** %28, align 8, !dbg !662
  %30 = bitcast i8* %29 to i16*, !dbg !663
  store i16 %26, i16* %30, align 2, !dbg !664
  %31 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !665
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !666
  %33 = load i8*, i8** %32, align 8, !dbg !667
  %34 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !667
  store i8* %34, i8** %32, align 8, !dbg !667
  %35 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !668
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !669
  %37 = load i8*, i8** %36, align 8, !dbg !669
  %38 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !670
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 1, !dbg !671
  store i8* %37, i8** %39, align 8, !dbg !672
  %40 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !673
  %41 = load %struct._VCHANNEL*, %struct._VCHANNEL** @dvc_channel, align 8, !dbg !674
  call void @channel_send(%struct.stream* %40, %struct._VCHANNEL* %41), !dbg !675
  ret void, !dbg !676
}

; Function Attrs: nounwind uwtable
define internal i32 @dvc_in_channelid(%struct.stream*, i8) #0 !dbg !677 {
  %3 = alloca %union.dvc_hdr_t, align 1
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %3, i32 0, i32 0
  store i8 %1, i8* %6, align 1
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !680, metadata !90), !dbg !681
  call void @llvm.dbg.declare(metadata %union.dvc_hdr_t* %3, metadata !682, metadata !90), !dbg !683
  call void @llvm.dbg.declare(metadata i32* %5, metadata !684, metadata !90), !dbg !685
  store i32 -1, i32* %5, align 4, !dbg !686
  %7 = bitcast %union.dvc_hdr_t* %3 to %struct.anon*, !dbg !687
  %8 = bitcast %struct.anon* %7 to i8*, !dbg !688
  %9 = load i8, i8* %8, align 1, !dbg !688
  %10 = and i8 %9, 3, !dbg !688
  %11 = zext i8 %10 to i32, !dbg !689
  switch i32 %11, label %40 [
    i32 0, label %12
    i32 1, label %19
    i32 2, label %30
  ], !dbg !690

; <label>:12:                                     ; preds = %2
  %13 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !691
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !693
  %15 = load i8*, i8** %14, align 8, !dbg !694
  %16 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !694
  store i8* %16, i8** %14, align 8, !dbg !694
  %17 = load i8, i8* %15, align 1, !dbg !695
  %18 = zext i8 %17 to i32, !dbg !695
  store i32 %18, i32* %5, align 4, !dbg !696
  br label %40, !dbg !697

; <label>:19:                                     ; preds = %2
  %20 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !698
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !700
  %22 = load i8*, i8** %21, align 8, !dbg !700
  %23 = bitcast i8* %22 to i16*, !dbg !701
  %24 = load i16, i16* %23, align 2, !dbg !701
  %25 = zext i16 %24 to i32, !dbg !701
  store i32 %25, i32* %5, align 4, !dbg !702
  %26 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !703
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !704
  %28 = load i8*, i8** %27, align 8, !dbg !705
  %29 = getelementptr inbounds i8, i8* %28, i64 2, !dbg !705
  store i8* %29, i8** %27, align 8, !dbg !705
  br label %40, !dbg !706

; <label>:30:                                     ; preds = %2
  %31 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !707
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !709
  %33 = load i8*, i8** %32, align 8, !dbg !709
  %34 = bitcast i8* %33 to i32*, !dbg !710
  %35 = load i32, i32* %34, align 4, !dbg !710
  store i32 %35, i32* %5, align 4, !dbg !711
  %36 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !712
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !713
  %38 = load i8*, i8** %37, align 8, !dbg !714
  %39 = getelementptr inbounds i8, i8* %38, i64 4, !dbg !714
  store i8* %39, i8** %37, align 8, !dbg !714
  br label %40, !dbg !715

; <label>:40:                                     ; preds = %2, %30, %19, %12
  %41 = load i32, i32* %5, align 4, !dbg !716
  ret i32 %41, !dbg !717
}

declare i64 @in_ansi_string(%struct.stream*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @dvc_channels_set_id(i8*, i32) #0 !dbg !718 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !721, metadata !90), !dbg !722
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !723, metadata !90), !dbg !724
  call void @llvm.dbg.declare(metadata i32* %6, metadata !725, metadata !90), !dbg !726
  call void @llvm.dbg.declare(metadata i32* %7, metadata !727, metadata !90), !dbg !728
  %8 = load i8*, i8** %4, align 8, !dbg !729
  %9 = call i32 @utils_djb2_hash(i8* %8), !dbg !730
  store i32 %9, i32* %7, align 4, !dbg !731
  store i32 0, i32* %6, align 4, !dbg !732
  br label %10, !dbg !734

; <label>:10:                                     ; preds = %30, %2
  %11 = load i32, i32* %6, align 4, !dbg !735
  %12 = icmp slt i32 %11, 20, !dbg !738
  br i1 %12, label %13, label %33, !dbg !739

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %6, align 4, !dbg !740
  %15 = sext i32 %14 to i64, !dbg !743
  %16 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %15, !dbg !743
  %17 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %16, i32 0, i32 0, !dbg !744
  %18 = load i32, i32* %17, align 16, !dbg !744
  %19 = load i32, i32* %7, align 4, !dbg !745
  %20 = icmp eq i32 %18, %19, !dbg !746
  br i1 %20, label %21, label %29, !dbg !747

; <label>:21:                                     ; preds = %13
  %22 = load i8*, i8** %4, align 8, !dbg !748
  %23 = load i32, i32* %5, align 4, !dbg !750
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0), i8* %22, i32 %23), !dbg !751
  %24 = load i32, i32* %5, align 4, !dbg !752
  %25 = load i32, i32* %6, align 4, !dbg !753
  %26 = sext i32 %25 to i64, !dbg !754
  %27 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %26, !dbg !754
  %28 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %27, i32 0, i32 1, !dbg !755
  store i32 %24, i32* %28, align 4, !dbg !756
  store i32 0, i32* %3, align 4, !dbg !757
  br label %34, !dbg !757

; <label>:29:                                     ; preds = %13
  br label %30, !dbg !758

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %6, align 4, !dbg !759
  %32 = add nsw i32 %31, 1, !dbg !759
  store i32 %32, i32* %6, align 4, !dbg !759
  br label %10, !dbg !761, !llvm.loop !762

; <label>:33:                                     ; preds = %10
  store i32 -1, i32* %3, align 4, !dbg !764
  br label %34, !dbg !764

; <label>:34:                                     ; preds = %33, %21
  %35 = load i32, i32* %3, align 4, !dbg !765
  ret i32 %35, !dbg !765
}

; Function Attrs: nounwind uwtable
define internal void @dvc_send_create_response(i32, i8, i32) #0 !dbg !766 {
  %4 = alloca %union.dvc_hdr_t, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream*, align 8
  %8 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %4, i32 0, i32 0
  store i8 %1, i8* %8, align 1
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !769, metadata !90), !dbg !770
  call void @llvm.dbg.declare(metadata %union.dvc_hdr_t* %4, metadata !771, metadata !90), !dbg !772
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !773, metadata !90), !dbg !774
  call void @llvm.dbg.declare(metadata %struct.stream** %7, metadata !775, metadata !90), !dbg !776
  %9 = load i32, i32* %5, align 4, !dbg !777
  %10 = icmp ne i32 %9, 0, !dbg !777
  %11 = select i1 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), !dbg !777
  %12 = load i32, i32* %6, align 4, !dbg !778
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i32 0, i32 0), i8* %11, i32 %12), !dbg !779
  %13 = load i32, i32* %6, align 4, !dbg !780
  %14 = getelementptr inbounds %union.dvc_hdr_t, %union.dvc_hdr_t* %4, i32 0, i32 0, !dbg !781
  %15 = load i8, i8* %14, align 1, !dbg !781
  %16 = call %struct.stream* @dvc_init_packet(i8 %15, i32 %13, i64 4), !dbg !781
  store %struct.stream* %16, %struct.stream** %7, align 8, !dbg !782
  %17 = load i32, i32* %5, align 4, !dbg !783
  %18 = icmp ne i32 %17, 0, !dbg !783
  %19 = select i1 %18, i32 0, i32 -1, !dbg !783
  %20 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !785
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !786
  %22 = load i8*, i8** %21, align 8, !dbg !786
  %23 = bitcast i8* %22 to i32*, !dbg !787
  store i32 %19, i32* %23, align 4, !dbg !788
  %24 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !789
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !790
  %26 = load i8*, i8** %25, align 8, !dbg !791
  %27 = getelementptr inbounds i8, i8* %26, i64 4, !dbg !791
  store i8* %27, i8** %25, align 8, !dbg !791
  %28 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !792
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !793
  %30 = load i8*, i8** %29, align 8, !dbg !793
  %31 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !794
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 1, !dbg !795
  store i8* %30, i8** %32, align 8, !dbg !796
  %33 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !797
  %34 = load %struct._VCHANNEL*, %struct._VCHANNEL** @dvc_channel, align 8, !dbg !798
  call void @channel_send(%struct.stream* %33, %struct._VCHANNEL* %34), !dbg !799
  ret void, !dbg !800
}

; Function Attrs: nounwind uwtable
define internal %struct.dvc_channel_t* @dvc_channels_get_by_id(i32) #0 !dbg !801 {
  %2 = alloca %struct.dvc_channel_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !804, metadata !90), !dbg !805
  call void @llvm.dbg.declare(metadata i32* %4, metadata !806, metadata !90), !dbg !807
  store i32 0, i32* %4, align 4, !dbg !808
  br label %5, !dbg !810

; <label>:5:                                      ; preds = %21, %1
  %6 = load i32, i32* %4, align 4, !dbg !811
  %7 = icmp slt i32 %6, 20, !dbg !814
  br i1 %7, label %8, label %24, !dbg !815

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %4, align 4, !dbg !816
  %10 = sext i32 %9 to i64, !dbg !819
  %11 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %10, !dbg !819
  %12 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %11, i32 0, i32 1, !dbg !820
  %13 = load i32, i32* %12, align 4, !dbg !820
  %14 = load i32, i32* %3, align 4, !dbg !821
  %15 = icmp eq i32 %13, %14, !dbg !822
  br i1 %15, label %16, label %20, !dbg !823

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* %4, align 4, !dbg !824
  %18 = sext i32 %17 to i64, !dbg !826
  %19 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %18, !dbg !826
  store %struct.dvc_channel_t* %19, %struct.dvc_channel_t** %2, align 8, !dbg !827
  br label %25, !dbg !827

; <label>:20:                                     ; preds = %8
  br label %21, !dbg !828

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* %4, align 4, !dbg !829
  %23 = add nsw i32 %22, 1, !dbg !829
  store i32 %23, i32* %4, align 4, !dbg !829
  br label %5, !dbg !831, !llvm.loop !832

; <label>:24:                                     ; preds = %5
  store %struct.dvc_channel_t* null, %struct.dvc_channel_t** %2, align 8, !dbg !834
  br label %25, !dbg !834

; <label>:25:                                     ; preds = %24, %16
  %26 = load %struct.dvc_channel_t*, %struct.dvc_channel_t** %2, align 8, !dbg !835
  ret %struct.dvc_channel_t* %26, !dbg !835
}

; Function Attrs: nounwind uwtable
define internal i32 @dvc_channels_remove_by_id(i32) #0 !dbg !836 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !839, metadata !90), !dbg !840
  call void @llvm.dbg.declare(metadata i32* %4, metadata !841, metadata !90), !dbg !842
  store i32 0, i32* %4, align 4, !dbg !843
  br label %5, !dbg !845

; <label>:5:                                      ; preds = %22, %1
  %6 = load i32, i32* %4, align 4, !dbg !846
  %7 = icmp slt i32 %6, 20, !dbg !849
  br i1 %7, label %8, label %25, !dbg !850

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %4, align 4, !dbg !851
  %10 = sext i32 %9 to i64, !dbg !854
  %11 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %10, !dbg !854
  %12 = getelementptr inbounds %struct.dvc_channel_t, %struct.dvc_channel_t* %11, i32 0, i32 1, !dbg !855
  %13 = load i32, i32* %12, align 4, !dbg !855
  %14 = load i32, i32* %3, align 4, !dbg !856
  %15 = icmp eq i32 %13, %14, !dbg !857
  br i1 %15, label %16, label %21, !dbg !858

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* %4, align 4, !dbg !859
  %18 = sext i32 %17 to i64, !dbg !861
  %19 = getelementptr inbounds [20 x %struct.dvc_channel_t], [20 x %struct.dvc_channel_t]* @channels, i64 0, i64 %18, !dbg !861
  %20 = bitcast %struct.dvc_channel_t* %19 to i8*, !dbg !862
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 16, i32 16, i1 false), !dbg !862
  store i32 1, i32* %2, align 4, !dbg !863
  br label %26, !dbg !863

; <label>:21:                                     ; preds = %8
  br label %22, !dbg !864

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %4, align 4, !dbg !865
  %24 = add nsw i32 %23, 1, !dbg !865
  store i32 %24, i32* %4, align 4, !dbg !865
  br label %5, !dbg !867, !llvm.loop !868

; <label>:25:                                     ; preds = %5
  store i32 0, i32* %2, align 4, !dbg !870
  br label %26, !dbg !870

; <label>:26:                                     ; preds = %25, %16
  %27 = load i32, i32* %2, align 4, !dbg !871
  ret i32 %27, !dbg !871
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!78, !79}
!llvm.ident = !{!80}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !31)
!1 = !DIFile(filename: "[inter]dvc.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !{!23, !26, !27, !30}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !24, line: 43, baseType: !25)
!24 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!25 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !24, line: 41, baseType: !29)
!29 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!31 = !{!32, !66}
!32 = distinct !DIGlobalVariable(name: "dvc_channel", scope: !0, file: !33, line: 52, type: !34, isLocal: true, isDefinition: true, variable: %struct._VCHANNEL** @dvc_channel)
!33 = !DIFile(filename: "dvc.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "VCHANNEL", file: !24, line: 169, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_VCHANNEL", file: !24, line: 161, size: 768, align: 64, elements: !37)
!37 = !{!38, !39, !44, !45, !60}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_id", scope: !36, file: !24, line: 163, baseType: !28, size: 16, align: 16)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !36, file: !24, line: 164, baseType: !40, size: 64, align: 8, offset: 16)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, align: 8, elements: !42)
!41 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!42 = !{!43}
!43 = !DISubrange(count: 8)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !24, line: 165, baseType: !23, size: 32, align: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !36, file: !24, line: 166, baseType: !46, size: 576, align: 64, offset: 128)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !47, line: 25, size: 576, align: 64, elements: !48)
!47 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!48 = !{!49, !52, !53, !54, !55, !56, !57, !58, !59}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !46, file: !47, line: 27, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !46, file: !47, line: 28, baseType: !50, size: 64, align: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !47, line: 29, baseType: !50, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !46, file: !47, line: 30, baseType: !25, size: 32, align: 32, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !46, file: !47, line: 33, baseType: !50, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !46, file: !47, line: 34, baseType: !50, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !46, file: !47, line: 35, baseType: !50, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !46, file: !47, line: 36, baseType: !50, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !46, file: !47, line: 37, baseType: !50, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !36, file: !24, line: 167, baseType: !61, size: 64, align: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !47, line: 40, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!66 = distinct !DIGlobalVariable(name: "channels", scope: !0, file: !33, line: 53, type: !67, isLocal: true, isDefinition: true, variable: [20 x %struct.dvc_channel_t]* @channels)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2560, align: 64, elements: !76)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "dvc_channel_t", file: !33, line: 50, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvc_channel_t", file: !33, line: 45, size: 128, align: 64, elements: !70)
!70 = !{!71, !72, !73}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !69, file: !33, line: 47, baseType: !23, size: 32, align: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "channel_id", scope: !69, file: !33, line: 48, baseType: !23, size: 32, align: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !69, file: !33, line: 49, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "dvc_channel_process_fn", file: !75, line: 338, baseType: !61)
!75 = !DIFile(filename: "proto.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!76 = !{!77}
!77 = !DISubrange(count: 20)
!78 = !{i32 2, !"Dwarf Version", i32 4}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!81 = distinct !DISubprogram(name: "dvc_channels_is_available", scope: !33, file: !33, line: 177, type: !82, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !86}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !24, line: 28, baseType: !85)
!85 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!88 = !{}
!89 = !DILocalVariable(name: "name", arg: 1, scope: !81, file: !33, line: 177, type: !86)
!90 = !DIExpression()
!91 = !DILocation(line: 177, column: 39, scope: !81)
!92 = !DILocalVariable(name: "i", scope: !81, file: !33, line: 179, type: !85)
!93 = !DILocation(line: 179, column: 6, scope: !81)
!94 = !DILocalVariable(name: "hash", scope: !81, file: !33, line: 180, type: !23)
!95 = !DILocation(line: 180, column: 9, scope: !81)
!96 = !DILocation(line: 181, column: 25, scope: !81)
!97 = !DILocation(line: 181, column: 9, scope: !81)
!98 = !DILocation(line: 181, column: 7, scope: !81)
!99 = !DILocation(line: 183, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !81, file: !33, line: 183, column: 2)
!101 = !DILocation(line: 183, column: 7, scope: !100)
!102 = !DILocation(line: 183, column: 14, scope: !103)
!103 = !DILexicalBlockFile(scope: !104, file: !33, discriminator: 1)
!104 = distinct !DILexicalBlock(scope: !100, file: !33, line: 183, column: 2)
!105 = !DILocation(line: 183, column: 16, scope: !103)
!106 = !DILocation(line: 183, column: 2, scope: !103)
!107 = !DILocation(line: 185, column: 16, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !33, line: 185, column: 7)
!109 = distinct !DILexicalBlock(scope: !104, file: !33, line: 184, column: 2)
!110 = !DILocation(line: 185, column: 7, scope: !108)
!111 = !DILocation(line: 185, column: 19, scope: !108)
!112 = !DILocation(line: 185, column: 27, scope: !108)
!113 = !DILocation(line: 185, column: 24, scope: !108)
!114 = !DILocation(line: 185, column: 7, scope: !109)
!115 = !DILocation(line: 187, column: 21, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !33, line: 186, column: 3)
!117 = !DILocation(line: 187, column: 12, scope: !116)
!118 = !DILocation(line: 187, column: 24, scope: !116)
!119 = !DILocation(line: 187, column: 35, scope: !116)
!120 = !DILocation(line: 187, column: 4, scope: !116)
!121 = !DILocation(line: 189, column: 2, scope: !109)
!122 = !DILocation(line: 183, column: 23, scope: !123)
!123 = !DILexicalBlockFile(scope: !104, file: !33, discriminator: 2)
!124 = !DILocation(line: 183, column: 2, scope: !123)
!125 = distinct !{!125, !126}
!126 = !DILocation(line: 183, column: 2, scope: !81)
!127 = !DILocation(line: 191, column: 2, scope: !81)
!128 = !DILocation(line: 192, column: 1, scope: !81)
!129 = distinct !DISubprogram(name: "dvc_channels_register", scope: !33, file: !33, line: 195, type: !130, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!130 = !DISubroutineType(types: !131)
!131 = !{!84, !86, !74}
!132 = !DILocalVariable(name: "name", arg: 1, scope: !129, file: !33, line: 195, type: !86)
!133 = !DILocation(line: 195, column: 35, scope: !129)
!134 = !DILocalVariable(name: "handler", arg: 2, scope: !129, file: !33, line: 195, type: !74)
!135 = !DILocation(line: 195, column: 64, scope: !129)
!136 = !DILocation(line: 197, column: 26, scope: !129)
!137 = !DILocation(line: 197, column: 32, scope: !129)
!138 = !DILocation(line: 197, column: 9, scope: !129)
!139 = !DILocation(line: 197, column: 2, scope: !129)
!140 = distinct !DISubprogram(name: "dvc_channels_add", scope: !33, file: !33, line: 123, type: !141, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!141 = !DISubroutineType(types: !142)
!142 = !{!84, !86, !74, !23}
!143 = !DILocalVariable(name: "name", arg: 1, scope: !140, file: !33, line: 123, type: !86)
!144 = !DILocation(line: 123, column: 30, scope: !140)
!145 = !DILocalVariable(name: "handler", arg: 2, scope: !140, file: !33, line: 123, type: !74)
!146 = !DILocation(line: 123, column: 59, scope: !140)
!147 = !DILocalVariable(name: "channel_id", arg: 3, scope: !140, file: !33, line: 123, type: !23)
!148 = !DILocation(line: 123, column: 75, scope: !140)
!149 = !DILocalVariable(name: "i", scope: !140, file: !33, line: 125, type: !85)
!150 = !DILocation(line: 125, column: 6, scope: !140)
!151 = !DILocalVariable(name: "hash", scope: !140, file: !33, line: 126, type: !23)
!152 = !DILocation(line: 126, column: 9, scope: !140)
!153 = !DILocation(line: 128, column: 26, scope: !154)
!154 = distinct !DILexicalBlock(scope: !140, file: !33, line: 128, column: 6)
!155 = !DILocation(line: 128, column: 6, scope: !154)
!156 = !DILocation(line: 128, column: 32, scope: !154)
!157 = !DILocation(line: 128, column: 6, scope: !140)
!158 = !DILocation(line: 131, column: 10, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !33, line: 129, column: 2)
!160 = !DILocation(line: 130, column: 3, scope: !159)
!161 = !DILocation(line: 132, column: 3, scope: !159)
!162 = !DILocation(line: 135, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !140, file: !33, line: 135, column: 2)
!164 = !DILocation(line: 135, column: 7, scope: !163)
!165 = !DILocation(line: 135, column: 14, scope: !166)
!166 = !DILexicalBlockFile(scope: !167, file: !33, discriminator: 1)
!167 = distinct !DILexicalBlock(scope: !163, file: !33, line: 135, column: 2)
!168 = !DILocation(line: 135, column: 16, scope: !166)
!169 = !DILocation(line: 135, column: 2, scope: !166)
!170 = !DILocation(line: 137, column: 16, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !33, line: 137, column: 7)
!172 = distinct !DILexicalBlock(scope: !167, file: !33, line: 136, column: 2)
!173 = !DILocation(line: 137, column: 7, scope: !171)
!174 = !DILocation(line: 137, column: 19, scope: !171)
!175 = !DILocation(line: 137, column: 24, scope: !171)
!176 = !DILocation(line: 137, column: 7, scope: !172)
!177 = !DILocation(line: 139, column: 27, scope: !178)
!178 = distinct !DILexicalBlock(scope: !171, file: !33, line: 138, column: 3)
!179 = !DILocation(line: 139, column: 11, scope: !178)
!180 = !DILocation(line: 139, column: 9, scope: !178)
!181 = !DILocation(line: 140, column: 23, scope: !178)
!182 = !DILocation(line: 140, column: 13, scope: !178)
!183 = !DILocation(line: 140, column: 4, scope: !178)
!184 = !DILocation(line: 140, column: 16, scope: !178)
!185 = !DILocation(line: 140, column: 21, scope: !178)
!186 = !DILocation(line: 141, column: 26, scope: !178)
!187 = !DILocation(line: 141, column: 13, scope: !178)
!188 = !DILocation(line: 141, column: 4, scope: !178)
!189 = !DILocation(line: 141, column: 16, scope: !178)
!190 = !DILocation(line: 141, column: 24, scope: !178)
!191 = !DILocation(line: 142, column: 29, scope: !178)
!192 = !DILocation(line: 142, column: 13, scope: !178)
!193 = !DILocation(line: 142, column: 4, scope: !178)
!194 = !DILocation(line: 142, column: 16, scope: !178)
!195 = !DILocation(line: 142, column: 27, scope: !178)
!196 = !DILocation(line: 145, column: 11, scope: !178)
!197 = !DILocation(line: 145, column: 17, scope: !178)
!198 = !DILocation(line: 145, column: 29, scope: !178)
!199 = !DILocation(line: 145, column: 35, scope: !178)
!200 = !DILocation(line: 143, column: 4, scope: !178)
!201 = !DILocation(line: 146, column: 4, scope: !178)
!202 = !DILocation(line: 148, column: 2, scope: !172)
!203 = !DILocation(line: 135, column: 23, scope: !204)
!204 = !DILexicalBlockFile(scope: !167, file: !33, discriminator: 2)
!205 = !DILocation(line: 135, column: 2, scope: !204)
!206 = distinct !{!206, !207}
!207 = !DILocation(line: 135, column: 2, scope: !140)
!208 = !DILocation(line: 150, column: 2, scope: !140)
!209 = !DILocation(line: 151, column: 2, scope: !140)
!210 = !DILocation(line: 152, column: 1, scope: !140)
!211 = distinct !DISubprogram(name: "dvc_send", scope: !33, file: !33, line: 241, type: !212, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !86, !64}
!214 = !DILocalVariable(name: "name", arg: 1, scope: !211, file: !33, line: 241, type: !86)
!215 = !DILocation(line: 241, column: 22, scope: !211)
!216 = !DILocalVariable(name: "s", arg: 2, scope: !211, file: !33, line: 241, type: !64)
!217 = !DILocation(line: 241, column: 35, scope: !211)
!218 = !DILocalVariable(name: "ls", scope: !211, file: !33, line: 243, type: !64)
!219 = !DILocation(line: 243, column: 9, scope: !211)
!220 = !DILocalVariable(name: "hdr", scope: !211, file: !33, line: 244, type: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "dvc_hdr_t", file: !33, line: 43, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "dvc_hdr_t", file: !33, line: 36, size: 8, align: 8, elements: !223)
!223 = !{!224, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !222, file: !33, line: 37, baseType: !225, size: 8, align: 8)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !24, line: 39, baseType: !51)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !222, file: !33, line: 42, baseType: !227, size: 8, align: 8)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !33, line: 38, size: 8, align: 8, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "cbid", scope: !227, file: !33, line: 39, baseType: !225, size: 2, align: 8, flags: DIFlagBitField, extraData: i64 0)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !227, file: !33, line: 40, baseType: !225, size: 2, align: 8, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !227, file: !33, line: 41, baseType: !225, size: 4, align: 8, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!232 = !DILocation(line: 244, column: 12, scope: !211)
!233 = !DILocalVariable(name: "channel_id", scope: !211, file: !33, line: 245, type: !23)
!234 = !DILocation(line: 245, column: 9, scope: !211)
!235 = !DILocation(line: 247, column: 35, scope: !211)
!236 = !DILocation(line: 247, column: 15, scope: !211)
!237 = !DILocation(line: 247, column: 13, scope: !211)
!238 = !DILocation(line: 248, column: 6, scope: !239)
!239 = distinct !DILexicalBlock(scope: !211, file: !33, line: 248, column: 6)
!240 = !DILocation(line: 248, column: 17, scope: !239)
!241 = !DILocation(line: 248, column: 6, scope: !211)
!242 = !DILocation(line: 251, column: 10, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !33, line: 249, column: 2)
!244 = !DILocation(line: 250, column: 3, scope: !243)
!245 = !DILocation(line: 252, column: 3, scope: !243)
!246 = !DILocation(line: 257, column: 6, scope: !211)
!247 = !DILocation(line: 257, column: 10, scope: !211)
!248 = !DILocation(line: 257, column: 14, scope: !211)
!249 = !DILocation(line: 258, column: 6, scope: !211)
!250 = !DILocation(line: 258, column: 10, scope: !211)
!251 = !DILocation(line: 258, column: 15, scope: !211)
!252 = !DILocation(line: 259, column: 6, scope: !211)
!253 = !DILocation(line: 259, column: 10, scope: !211)
!254 = !DILocation(line: 259, column: 13, scope: !211)
!255 = !DILocation(line: 261, column: 28, scope: !211)
!256 = !DILocation(line: 261, column: 42, scope: !211)
!257 = !DILocation(line: 261, column: 46, scope: !211)
!258 = !DILocation(line: 261, column: 53, scope: !211)
!259 = !DILocation(line: 261, column: 57, scope: !211)
!260 = !DILocation(line: 261, column: 50, scope: !211)
!261 = !DILocation(line: 261, column: 7, scope: !211)
!262 = !DILocation(line: 261, column: 5, scope: !211)
!263 = !DILocation(line: 263, column: 12, scope: !264)
!264 = distinct !DILexicalBlock(scope: !211, file: !33, line: 263, column: 2)
!265 = !DILocation(line: 263, column: 17, scope: !264)
!266 = !DILocation(line: 263, column: 20, scope: !264)
!267 = !DILocation(line: 263, column: 24, scope: !264)
!268 = !DILocation(line: 263, column: 32, scope: !264)
!269 = !DILocation(line: 263, column: 37, scope: !264)
!270 = !DILocation(line: 263, column: 45, scope: !264)
!271 = !DILocation(line: 263, column: 50, scope: !264)
!272 = !DILocation(line: 263, column: 41, scope: !264)
!273 = !DILocation(line: 263, column: 4, scope: !264)
!274 = !DILocation(line: 263, column: 72, scope: !264)
!275 = !DILocation(line: 263, column: 77, scope: !264)
!276 = !DILocation(line: 263, column: 85, scope: !264)
!277 = !DILocation(line: 263, column: 90, scope: !264)
!278 = !DILocation(line: 263, column: 81, scope: !264)
!279 = !DILocation(line: 263, column: 59, scope: !264)
!280 = !DILocation(line: 263, column: 64, scope: !264)
!281 = !DILocation(line: 263, column: 66, scope: !264)
!282 = !DILocation(line: 265, column: 15, scope: !211)
!283 = !DILocation(line: 265, column: 20, scope: !211)
!284 = !DILocation(line: 265, column: 3, scope: !211)
!285 = !DILocation(line: 265, column: 8, scope: !211)
!286 = !DILocation(line: 265, column: 12, scope: !211)
!287 = !DILocation(line: 267, column: 15, scope: !211)
!288 = !DILocation(line: 267, column: 19, scope: !211)
!289 = !DILocation(line: 267, column: 2, scope: !211)
!290 = !DILocation(line: 268, column: 1, scope: !211)
!291 = !DILocation(line: 268, column: 1, scope: !292)
!292 = !DILexicalBlockFile(scope: !211, file: !33, discriminator: 1)
!293 = distinct !DISubprogram(name: "dvc_channels_get_id", scope: !33, file: !33, line: 89, type: !294, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!294 = !DISubroutineType(types: !295)
!295 = !{!23, !86}
!296 = !DILocalVariable(name: "name", arg: 1, scope: !293, file: !33, line: 89, type: !86)
!297 = !DILocation(line: 89, column: 33, scope: !293)
!298 = !DILocalVariable(name: "i", scope: !293, file: !33, line: 91, type: !85)
!299 = !DILocation(line: 91, column: 6, scope: !293)
!300 = !DILocalVariable(name: "hash", scope: !293, file: !33, line: 92, type: !23)
!301 = !DILocation(line: 92, column: 9, scope: !293)
!302 = !DILocation(line: 93, column: 25, scope: !293)
!303 = !DILocation(line: 93, column: 9, scope: !293)
!304 = !DILocation(line: 93, column: 7, scope: !293)
!305 = !DILocation(line: 95, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !293, file: !33, line: 95, column: 2)
!307 = !DILocation(line: 95, column: 7, scope: !306)
!308 = !DILocation(line: 95, column: 14, scope: !309)
!309 = !DILexicalBlockFile(scope: !310, file: !33, discriminator: 1)
!310 = distinct !DILexicalBlock(scope: !306, file: !33, line: 95, column: 2)
!311 = !DILocation(line: 95, column: 16, scope: !309)
!312 = !DILocation(line: 95, column: 2, scope: !309)
!313 = !DILocation(line: 97, column: 16, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !33, line: 97, column: 7)
!315 = distinct !DILexicalBlock(scope: !310, file: !33, line: 96, column: 2)
!316 = !DILocation(line: 97, column: 7, scope: !314)
!317 = !DILocation(line: 97, column: 19, scope: !314)
!318 = !DILocation(line: 97, column: 27, scope: !314)
!319 = !DILocation(line: 97, column: 24, scope: !314)
!320 = !DILocation(line: 97, column: 7, scope: !315)
!321 = !DILocation(line: 99, column: 20, scope: !322)
!322 = distinct !DILexicalBlock(scope: !314, file: !33, line: 98, column: 3)
!323 = !DILocation(line: 99, column: 11, scope: !322)
!324 = !DILocation(line: 99, column: 23, scope: !322)
!325 = !DILocation(line: 99, column: 4, scope: !322)
!326 = !DILocation(line: 101, column: 2, scope: !315)
!327 = !DILocation(line: 95, column: 23, scope: !328)
!328 = !DILexicalBlockFile(scope: !310, file: !33, discriminator: 2)
!329 = !DILocation(line: 95, column: 2, scope: !328)
!330 = distinct !{!330, !331}
!331 = !DILocation(line: 95, column: 2, scope: !293)
!332 = !DILocation(line: 103, column: 2, scope: !293)
!333 = !DILocation(line: 104, column: 1, scope: !293)
!334 = distinct !DISubprogram(name: "dvc_init_packet", scope: !33, file: !33, line: 202, type: !335, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!335 = !DISubroutineType(types: !336)
!336 = !{!64, !221, !23, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !338, line: 216, baseType: !339)
!338 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!339 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!340 = !DILocalVariable(name: "hdr", arg: 1, scope: !334, file: !33, line: 202, type: !221)
!341 = !DILocation(line: 202, column: 27, scope: !334)
!342 = !DILocalVariable(name: "channelid", arg: 2, scope: !334, file: !33, line: 202, type: !23)
!343 = !DILocation(line: 202, column: 39, scope: !334)
!344 = !DILocalVariable(name: "length", arg: 3, scope: !334, file: !33, line: 202, type: !337)
!345 = !DILocation(line: 202, column: 57, scope: !334)
!346 = !DILocalVariable(name: "s", scope: !334, file: !33, line: 204, type: !64)
!347 = !DILocation(line: 204, column: 9, scope: !334)
!348 = !DILocation(line: 206, column: 9, scope: !334)
!349 = !DILocation(line: 208, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !334, file: !33, line: 208, column: 6)
!351 = !DILocation(line: 208, column: 16, scope: !350)
!352 = !DILocation(line: 208, column: 6, scope: !334)
!353 = !DILocation(line: 210, column: 11, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !33, line: 210, column: 7)
!355 = distinct !DILexicalBlock(scope: !350, file: !33, line: 209, column: 2)
!356 = !DILocation(line: 210, column: 15, scope: !354)
!357 = !DILocation(line: 210, column: 7, scope: !354)
!358 = !DILocation(line: 210, column: 20, scope: !354)
!359 = !DILocation(line: 210, column: 7, scope: !355)
!360 = !DILocation(line: 211, column: 11, scope: !354)
!361 = !DILocation(line: 211, column: 4, scope: !354)
!362 = !DILocation(line: 212, column: 16, scope: !363)
!363 = distinct !DILexicalBlock(scope: !354, file: !33, line: 212, column: 12)
!364 = !DILocation(line: 212, column: 20, scope: !363)
!365 = !DILocation(line: 212, column: 12, scope: !363)
!366 = !DILocation(line: 212, column: 25, scope: !363)
!367 = !DILocation(line: 212, column: 12, scope: !354)
!368 = !DILocation(line: 213, column: 11, scope: !363)
!369 = !DILocation(line: 213, column: 4, scope: !363)
!370 = !DILocation(line: 214, column: 16, scope: !371)
!371 = distinct !DILexicalBlock(scope: !363, file: !33, line: 214, column: 12)
!372 = !DILocation(line: 214, column: 20, scope: !371)
!373 = !DILocation(line: 214, column: 12, scope: !371)
!374 = !DILocation(line: 214, column: 25, scope: !371)
!375 = !DILocation(line: 214, column: 12, scope: !363)
!376 = !DILocation(line: 215, column: 11, scope: !371)
!377 = !DILocation(line: 215, column: 4, scope: !371)
!378 = !DILocation(line: 216, column: 2, scope: !355)
!379 = !DILocation(line: 218, column: 19, scope: !334)
!380 = !DILocation(line: 218, column: 32, scope: !334)
!381 = !DILocation(line: 218, column: 6, scope: !334)
!382 = !DILocation(line: 218, column: 4, scope: !334)
!383 = !DILocation(line: 219, column: 20, scope: !334)
!384 = !DILocation(line: 219, column: 5, scope: !334)
!385 = !DILocation(line: 219, column: 9, scope: !334)
!386 = !DILocation(line: 219, column: 10, scope: !334)
!387 = !DILocation(line: 219, column: 14, scope: !334)
!388 = !DILocation(line: 221, column: 6, scope: !389)
!389 = distinct !DILexicalBlock(scope: !334, file: !33, line: 221, column: 6)
!390 = !DILocation(line: 221, column: 16, scope: !389)
!391 = !DILocation(line: 221, column: 6, scope: !334)
!392 = !DILocation(line: 223, column: 11, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !33, line: 223, column: 7)
!394 = distinct !DILexicalBlock(scope: !389, file: !33, line: 222, column: 2)
!395 = !DILocation(line: 223, column: 15, scope: !393)
!396 = !DILocation(line: 223, column: 7, scope: !393)
!397 = !DILocation(line: 223, column: 20, scope: !393)
!398 = !DILocation(line: 223, column: 7, scope: !394)
!399 = !DILocation(line: 225, column: 18, scope: !400)
!400 = distinct !DILexicalBlock(scope: !393, file: !33, line: 224, column: 3)
!401 = !DILocation(line: 225, column: 7, scope: !400)
!402 = !DILocation(line: 225, column: 11, scope: !400)
!403 = !DILocation(line: 225, column: 12, scope: !400)
!404 = !DILocation(line: 225, column: 16, scope: !400)
!405 = !DILocation(line: 226, column: 3, scope: !400)
!406 = !DILocation(line: 227, column: 16, scope: !407)
!407 = distinct !DILexicalBlock(scope: !393, file: !33, line: 227, column: 12)
!408 = !DILocation(line: 227, column: 20, scope: !407)
!409 = !DILocation(line: 227, column: 12, scope: !407)
!410 = !DILocation(line: 227, column: 25, scope: !407)
!411 = !DILocation(line: 227, column: 12, scope: !393)
!412 = !DILocation(line: 229, column: 28, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !33, line: 229, column: 4)
!414 = distinct !DILexicalBlock(scope: !407, file: !33, line: 228, column: 3)
!415 = !DILocation(line: 229, column: 19, scope: !413)
!416 = !DILocation(line: 229, column: 23, scope: !413)
!417 = !DILocation(line: 229, column: 6, scope: !413)
!418 = !DILocation(line: 229, column: 26, scope: !413)
!419 = !DILocation(line: 229, column: 40, scope: !413)
!420 = !DILocation(line: 229, column: 44, scope: !413)
!421 = !DILocation(line: 229, column: 46, scope: !413)
!422 = !DILocation(line: 230, column: 3, scope: !414)
!423 = !DILocation(line: 231, column: 16, scope: !424)
!424 = distinct !DILexicalBlock(scope: !407, file: !33, line: 231, column: 12)
!425 = !DILocation(line: 231, column: 20, scope: !424)
!426 = !DILocation(line: 231, column: 12, scope: !424)
!427 = !DILocation(line: 231, column: 25, scope: !424)
!428 = !DILocation(line: 231, column: 12, scope: !407)
!429 = !DILocation(line: 233, column: 28, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !33, line: 233, column: 4)
!431 = distinct !DILexicalBlock(scope: !424, file: !33, line: 232, column: 3)
!432 = !DILocation(line: 233, column: 19, scope: !430)
!433 = !DILocation(line: 233, column: 23, scope: !430)
!434 = !DILocation(line: 233, column: 6, scope: !430)
!435 = !DILocation(line: 233, column: 26, scope: !430)
!436 = !DILocation(line: 233, column: 40, scope: !430)
!437 = !DILocation(line: 233, column: 44, scope: !430)
!438 = !DILocation(line: 233, column: 46, scope: !430)
!439 = !DILocation(line: 234, column: 3, scope: !431)
!440 = !DILocation(line: 235, column: 2, scope: !394)
!441 = !DILocation(line: 237, column: 9, scope: !334)
!442 = !DILocation(line: 237, column: 2, scope: !334)
!443 = distinct !DISubprogram(name: "dvc_init", scope: !33, file: !33, line: 455, type: !444, isLocal: false, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!444 = !DISubroutineType(types: !445)
!445 = !{!84}
!446 = !DILocation(line: 457, column: 2, scope: !443)
!447 = !DILocation(line: 458, column: 16, scope: !443)
!448 = !DILocation(line: 458, column: 14, scope: !443)
!449 = !DILocation(line: 462, column: 10, scope: !443)
!450 = !DILocation(line: 462, column: 22, scope: !443)
!451 = !DILocation(line: 462, column: 2, scope: !443)
!452 = distinct !DISubprogram(name: "dvc_process_pdu", scope: !33, file: !33, line: 409, type: !62, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!453 = !DILocalVariable(name: "s", arg: 1, scope: !452, file: !33, line: 409, type: !64)
!454 = !DILocation(line: 409, column: 24, scope: !452)
!455 = !DILocalVariable(name: "hdr", scope: !452, file: !33, line: 411, type: !221)
!456 = !DILocation(line: 411, column: 12, scope: !452)
!457 = !DILocation(line: 413, column: 16, scope: !452)
!458 = !DILocation(line: 413, column: 20, scope: !452)
!459 = !DILocation(line: 413, column: 21, scope: !452)
!460 = !DILocation(line: 413, column: 13, scope: !452)
!461 = !DILocation(line: 413, column: 6, scope: !452)
!462 = !DILocation(line: 413, column: 11, scope: !452)
!463 = !DILocation(line: 415, column: 14, scope: !452)
!464 = !DILocation(line: 415, column: 18, scope: !452)
!465 = !DILocation(line: 415, column: 10, scope: !452)
!466 = !DILocation(line: 415, column: 2, scope: !452)
!467 = !DILocation(line: 418, column: 25, scope: !468)
!468 = distinct !DILexicalBlock(scope: !452, file: !33, line: 416, column: 2)
!469 = !DILocation(line: 418, column: 4, scope: !468)
!470 = !DILocation(line: 419, column: 4, scope: !468)
!471 = !DILocation(line: 421, column: 27, scope: !468)
!472 = !DILocation(line: 421, column: 4, scope: !468)
!473 = !DILocation(line: 422, column: 4, scope: !468)
!474 = !DILocation(line: 425, column: 25, scope: !468)
!475 = !DILocation(line: 425, column: 4, scope: !468)
!476 = !DILocation(line: 426, column: 4, scope: !468)
!477 = !DILocation(line: 429, column: 26, scope: !468)
!478 = !DILocation(line: 429, column: 4, scope: !468)
!479 = !DILocation(line: 430, column: 4, scope: !468)
!480 = !DILocation(line: 449, column: 15, scope: !468)
!481 = !DILocation(line: 449, column: 19, scope: !468)
!482 = !DILocation(line: 449, column: 11, scope: !468)
!483 = !DILocation(line: 448, column: 4, scope: !468)
!484 = !DILocation(line: 450, column: 4, scope: !468)
!485 = !DILocation(line: 452, column: 1, scope: !452)
!486 = distinct !DISubprogram(name: "dvc_channels_exists", scope: !33, file: !33, line: 58, type: !82, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!487 = !DILocalVariable(name: "name", arg: 1, scope: !486, file: !33, line: 58, type: !86)
!488 = !DILocation(line: 58, column: 33, scope: !486)
!489 = !DILocalVariable(name: "i", scope: !486, file: !33, line: 60, type: !85)
!490 = !DILocation(line: 60, column: 6, scope: !486)
!491 = !DILocalVariable(name: "hash", scope: !486, file: !33, line: 61, type: !23)
!492 = !DILocation(line: 61, column: 9, scope: !486)
!493 = !DILocation(line: 62, column: 25, scope: !486)
!494 = !DILocation(line: 62, column: 9, scope: !486)
!495 = !DILocation(line: 62, column: 7, scope: !486)
!496 = !DILocation(line: 63, column: 9, scope: !497)
!497 = distinct !DILexicalBlock(scope: !486, file: !33, line: 63, column: 2)
!498 = !DILocation(line: 63, column: 7, scope: !497)
!499 = !DILocation(line: 63, column: 14, scope: !500)
!500 = !DILexicalBlockFile(scope: !501, file: !33, discriminator: 1)
!501 = distinct !DILexicalBlock(scope: !497, file: !33, line: 63, column: 2)
!502 = !DILocation(line: 63, column: 16, scope: !500)
!503 = !DILocation(line: 63, column: 2, scope: !500)
!504 = !DILocation(line: 65, column: 16, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !33, line: 65, column: 7)
!506 = distinct !DILexicalBlock(scope: !501, file: !33, line: 64, column: 2)
!507 = !DILocation(line: 65, column: 7, scope: !505)
!508 = !DILocation(line: 65, column: 19, scope: !505)
!509 = !DILocation(line: 65, column: 27, scope: !505)
!510 = !DILocation(line: 65, column: 24, scope: !505)
!511 = !DILocation(line: 65, column: 7, scope: !506)
!512 = !DILocation(line: 66, column: 4, scope: !505)
!513 = !DILocation(line: 67, column: 2, scope: !506)
!514 = !DILocation(line: 63, column: 23, scope: !515)
!515 = !DILexicalBlockFile(scope: !501, file: !33, discriminator: 2)
!516 = !DILocation(line: 63, column: 2, scope: !515)
!517 = distinct !{!517, !518}
!518 = !DILocation(line: 63, column: 2, scope: !486)
!519 = !DILocation(line: 69, column: 2, scope: !486)
!520 = !DILocation(line: 70, column: 1, scope: !486)
!521 = distinct !DISubprogram(name: "dvc_process_caps_pdu", scope: !33, file: !33, line: 295, type: !62, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!522 = !DILocalVariable(name: "s", arg: 1, scope: !521, file: !33, line: 295, type: !64)
!523 = !DILocation(line: 295, column: 29, scope: !521)
!524 = !DILocalVariable(name: "version", scope: !521, file: !33, line: 297, type: !28)
!525 = !DILocation(line: 297, column: 9, scope: !521)
!526 = !DILocation(line: 300, column: 3, scope: !521)
!527 = !DILocation(line: 300, column: 7, scope: !521)
!528 = !DILocation(line: 300, column: 9, scope: !521)
!529 = !DILocation(line: 301, column: 27, scope: !530)
!530 = distinct !DILexicalBlock(scope: !521, file: !33, line: 301, column: 2)
!531 = !DILocation(line: 301, column: 31, scope: !530)
!532 = !DILocation(line: 301, column: 14, scope: !530)
!533 = !DILocation(line: 301, column: 12, scope: !530)
!534 = !DILocation(line: 301, column: 36, scope: !530)
!535 = !DILocation(line: 301, column: 40, scope: !530)
!536 = !DILocation(line: 301, column: 42, scope: !530)
!537 = !DILocation(line: 303, column: 72, scope: !521)
!538 = !DILocation(line: 303, column: 2, scope: !521)
!539 = !DILocation(line: 305, column: 2, scope: !521)
!540 = !DILocation(line: 306, column: 1, scope: !521)
!541 = distinct !DISubprogram(name: "dvc_process_create_pdu", scope: !33, file: !33, line: 323, type: !542, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !64, !221}
!544 = !DILocalVariable(name: "s", arg: 1, scope: !541, file: !33, line: 323, type: !64)
!545 = !DILocation(line: 323, column: 31, scope: !541)
!546 = !DILocalVariable(name: "hdr", arg: 2, scope: !541, file: !33, line: 323, type: !221)
!547 = !DILocation(line: 323, column: 44, scope: !541)
!548 = !DILocalVariable(name: "name", scope: !541, file: !33, line: 325, type: !549)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 4096, align: 8, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 512)
!552 = !DILocation(line: 325, column: 7, scope: !541)
!553 = !DILocalVariable(name: "channelid", scope: !541, file: !33, line: 326, type: !23)
!554 = !DILocation(line: 326, column: 9, scope: !541)
!555 = !DILocation(line: 328, column: 31, scope: !541)
!556 = !DILocation(line: 328, column: 14, scope: !541)
!557 = !DILocation(line: 328, column: 12, scope: !541)
!558 = !DILocation(line: 330, column: 17, scope: !541)
!559 = !DILocation(line: 330, column: 20, scope: !541)
!560 = !DILocation(line: 330, column: 2, scope: !541)
!561 = !DILocation(line: 333, column: 9, scope: !541)
!562 = !DILocation(line: 333, column: 20, scope: !541)
!563 = !DILocation(line: 332, column: 2, scope: !541)
!564 = !DILocation(line: 335, column: 26, scope: !565)
!565 = distinct !DILexicalBlock(scope: !541, file: !33, line: 335, column: 6)
!566 = !DILocation(line: 335, column: 6, scope: !565)
!567 = !DILocation(line: 335, column: 6, scope: !541)
!568 = !DILocation(line: 337, column: 69, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !33, line: 336, column: 2)
!570 = !DILocation(line: 337, column: 3, scope: !569)
!571 = !DILocation(line: 339, column: 23, scope: !569)
!572 = !DILocation(line: 339, column: 29, scope: !569)
!573 = !DILocation(line: 339, column: 3, scope: !569)
!574 = !DILocation(line: 340, column: 38, scope: !569)
!575 = !DILocation(line: 340, column: 3, scope: !569)
!576 = !DILocation(line: 341, column: 2, scope: !569)
!577 = !DILocation(line: 344, column: 38, scope: !578)
!578 = distinct !DILexicalBlock(scope: !565, file: !33, line: 343, column: 2)
!579 = !DILocation(line: 344, column: 3, scope: !578)
!580 = !DILocation(line: 347, column: 1, scope: !541)
!581 = distinct !DISubprogram(name: "dvc_process_data_pdu", scope: !33, file: !33, line: 372, type: !542, isLocal: true, isDefinition: true, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!582 = !DILocalVariable(name: "s", arg: 1, scope: !581, file: !33, line: 372, type: !64)
!583 = !DILocation(line: 372, column: 29, scope: !581)
!584 = !DILocalVariable(name: "hdr", arg: 2, scope: !581, file: !33, line: 372, type: !221)
!585 = !DILocation(line: 372, column: 42, scope: !581)
!586 = !DILocalVariable(name: "ch", scope: !581, file: !33, line: 374, type: !587)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, align: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!589 = !DILocation(line: 374, column: 23, scope: !581)
!590 = !DILocalVariable(name: "channelid", scope: !581, file: !33, line: 375, type: !23)
!591 = !DILocation(line: 375, column: 9, scope: !581)
!592 = !DILocation(line: 377, column: 31, scope: !581)
!593 = !DILocation(line: 377, column: 14, scope: !581)
!594 = !DILocation(line: 377, column: 12, scope: !581)
!595 = !DILocation(line: 378, column: 30, scope: !581)
!596 = !DILocation(line: 378, column: 7, scope: !581)
!597 = !DILocation(line: 378, column: 5, scope: !581)
!598 = !DILocation(line: 379, column: 6, scope: !599)
!599 = distinct !DILexicalBlock(scope: !581, file: !33, line: 379, column: 6)
!600 = !DILocation(line: 379, column: 9, scope: !599)
!601 = !DILocation(line: 379, column: 6, scope: !581)
!602 = !DILocation(line: 382, column: 74, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !33, line: 380, column: 2)
!604 = !DILocation(line: 381, column: 3, scope: !603)
!605 = !DILocation(line: 383, column: 3, scope: !603)
!606 = !DILocation(line: 387, column: 2, scope: !581)
!607 = !DILocation(line: 387, column: 6, scope: !581)
!608 = !DILocation(line: 387, column: 14, scope: !581)
!609 = !DILocation(line: 388, column: 1, scope: !581)
!610 = !DILocation(line: 388, column: 1, scope: !611)
!611 = !DILexicalBlockFile(scope: !581, file: !33, discriminator: 1)
!612 = distinct !DISubprogram(name: "dvc_process_close_pdu", scope: !33, file: !33, line: 391, type: !542, isLocal: true, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!613 = !DILocalVariable(name: "s", arg: 1, scope: !612, file: !33, line: 391, type: !64)
!614 = !DILocation(line: 391, column: 30, scope: !612)
!615 = !DILocalVariable(name: "hdr", arg: 2, scope: !612, file: !33, line: 391, type: !221)
!616 = !DILocation(line: 391, column: 43, scope: !612)
!617 = !DILocalVariable(name: "channelid", scope: !612, file: !33, line: 393, type: !23)
!618 = !DILocation(line: 393, column: 9, scope: !612)
!619 = !DILocation(line: 395, column: 31, scope: !612)
!620 = !DILocation(line: 395, column: 14, scope: !612)
!621 = !DILocation(line: 395, column: 12, scope: !612)
!622 = !DILocation(line: 396, column: 71, scope: !612)
!623 = !DILocation(line: 396, column: 2, scope: !612)
!624 = !DILocation(line: 398, column: 33, scope: !625)
!625 = distinct !DILexicalBlock(scope: !612, file: !33, line: 398, column: 6)
!626 = !DILocation(line: 398, column: 7, scope: !625)
!627 = !DILocation(line: 398, column: 6, scope: !612)
!628 = !DILocation(line: 402, column: 10, scope: !629)
!629 = distinct !DILexicalBlock(scope: !625, file: !33, line: 399, column: 2)
!630 = !DILocation(line: 400, column: 3, scope: !629)
!631 = !DILocation(line: 403, column: 3, scope: !629)
!632 = !DILocation(line: 405, column: 1, scope: !612)
!633 = distinct !DISubprogram(name: "dvc_send_capabilities_response", scope: !33, file: !33, line: 272, type: !634, isLocal: true, isDefinition: true, scopeLine: 273, isOptimized: false, unit: !0, variables: !88)
!634 = !DISubroutineType(types: !635)
!635 = !{null}
!636 = !DILocalVariable(name: "s", scope: !633, file: !33, line: 274, type: !64)
!637 = !DILocation(line: 274, column: 9, scope: !633)
!638 = !DILocalVariable(name: "hdr", scope: !633, file: !33, line: 275, type: !221)
!639 = !DILocation(line: 275, column: 12, scope: !633)
!640 = !DILocalVariable(name: "supportedversion", scope: !633, file: !33, line: 276, type: !28)
!641 = !DILocation(line: 276, column: 9, scope: !633)
!642 = !DILocation(line: 278, column: 6, scope: !633)
!643 = !DILocation(line: 278, column: 10, scope: !633)
!644 = !DILocation(line: 278, column: 15, scope: !633)
!645 = !DILocation(line: 279, column: 6, scope: !633)
!646 = !DILocation(line: 279, column: 10, scope: !633)
!647 = !DILocation(line: 279, column: 13, scope: !633)
!648 = !DILocation(line: 280, column: 6, scope: !633)
!649 = !DILocation(line: 280, column: 10, scope: !633)
!650 = !DILocation(line: 280, column: 14, scope: !633)
!651 = !DILocation(line: 283, column: 74, scope: !633)
!652 = !DILocation(line: 282, column: 2, scope: !633)
!653 = !DILocation(line: 285, column: 6, scope: !633)
!654 = !DILocation(line: 285, column: 4, scope: !633)
!655 = !DILocation(line: 286, column: 5, scope: !633)
!656 = !DILocation(line: 286, column: 9, scope: !633)
!657 = !DILocation(line: 286, column: 10, scope: !633)
!658 = !DILocation(line: 286, column: 14, scope: !633)
!659 = !DILocation(line: 287, column: 26, scope: !660)
!660 = distinct !DILexicalBlock(scope: !633, file: !33, line: 287, column: 2)
!661 = !DILocation(line: 287, column: 17, scope: !660)
!662 = !DILocation(line: 287, column: 21, scope: !660)
!663 = !DILocation(line: 287, column: 4, scope: !660)
!664 = !DILocation(line: 287, column: 24, scope: !660)
!665 = !DILocation(line: 287, column: 45, scope: !660)
!666 = !DILocation(line: 287, column: 49, scope: !660)
!667 = !DILocation(line: 287, column: 51, scope: !660)
!668 = !DILocation(line: 289, column: 14, scope: !633)
!669 = !DILocation(line: 289, column: 18, scope: !633)
!670 = !DILocation(line: 289, column: 3, scope: !633)
!671 = !DILocation(line: 289, column: 7, scope: !633)
!672 = !DILocation(line: 289, column: 11, scope: !633)
!673 = !DILocation(line: 291, column: 15, scope: !633)
!674 = !DILocation(line: 291, column: 18, scope: !633)
!675 = !DILocation(line: 291, column: 2, scope: !633)
!676 = !DILocation(line: 292, column: 1, scope: !633)
!677 = distinct !DISubprogram(name: "dvc_in_channelid", scope: !33, file: !33, line: 350, type: !678, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!678 = !DISubroutineType(types: !679)
!679 = !{!23, !64, !221}
!680 = !DILocalVariable(name: "s", arg: 1, scope: !677, file: !33, line: 350, type: !64)
!681 = !DILocation(line: 350, column: 25, scope: !677)
!682 = !DILocalVariable(name: "hdr", arg: 2, scope: !677, file: !33, line: 350, type: !221)
!683 = !DILocation(line: 350, column: 38, scope: !677)
!684 = !DILocalVariable(name: "id", scope: !677, file: !33, line: 352, type: !23)
!685 = !DILocation(line: 352, column: 9, scope: !677)
!686 = !DILocation(line: 354, column: 5, scope: !677)
!687 = !DILocation(line: 356, column: 14, scope: !677)
!688 = !DILocation(line: 356, column: 18, scope: !677)
!689 = !DILocation(line: 356, column: 10, scope: !677)
!690 = !DILocation(line: 356, column: 2, scope: !677)
!691 = !DILocation(line: 359, column: 12, scope: !692)
!692 = distinct !DILexicalBlock(scope: !677, file: !33, line: 357, column: 2)
!693 = !DILocation(line: 359, column: 16, scope: !692)
!694 = !DILocation(line: 359, column: 17, scope: !692)
!695 = !DILocation(line: 359, column: 9, scope: !692)
!696 = !DILocation(line: 359, column: 7, scope: !692)
!697 = !DILocation(line: 360, column: 4, scope: !692)
!698 = !DILocation(line: 362, column: 24, scope: !699)
!699 = distinct !DILexicalBlock(scope: !692, file: !33, line: 362, column: 4)
!700 = !DILocation(line: 362, column: 28, scope: !699)
!701 = !DILocation(line: 362, column: 11, scope: !699)
!702 = !DILocation(line: 362, column: 9, scope: !699)
!703 = !DILocation(line: 362, column: 33, scope: !699)
!704 = !DILocation(line: 362, column: 37, scope: !699)
!705 = !DILocation(line: 362, column: 39, scope: !699)
!706 = !DILocation(line: 363, column: 4, scope: !692)
!707 = !DILocation(line: 365, column: 24, scope: !708)
!708 = distinct !DILexicalBlock(scope: !692, file: !33, line: 365, column: 4)
!709 = !DILocation(line: 365, column: 28, scope: !708)
!710 = !DILocation(line: 365, column: 11, scope: !708)
!711 = !DILocation(line: 365, column: 9, scope: !708)
!712 = !DILocation(line: 365, column: 33, scope: !708)
!713 = !DILocation(line: 365, column: 37, scope: !708)
!714 = !DILocation(line: 365, column: 39, scope: !708)
!715 = !DILocation(line: 366, column: 4, scope: !692)
!716 = !DILocation(line: 368, column: 9, scope: !677)
!717 = !DILocation(line: 368, column: 2, scope: !677)
!718 = distinct !DISubprogram(name: "dvc_channels_set_id", scope: !33, file: !33, line: 155, type: !719, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!719 = !DISubroutineType(types: !720)
!720 = !{!85, !86, !23}
!721 = !DILocalVariable(name: "name", arg: 1, scope: !718, file: !33, line: 155, type: !86)
!722 = !DILocation(line: 155, column: 33, scope: !718)
!723 = !DILocalVariable(name: "channel_id", arg: 2, scope: !718, file: !33, line: 155, type: !23)
!724 = !DILocation(line: 155, column: 46, scope: !718)
!725 = !DILocalVariable(name: "i", scope: !718, file: !33, line: 157, type: !85)
!726 = !DILocation(line: 157, column: 6, scope: !718)
!727 = !DILocalVariable(name: "hash", scope: !718, file: !33, line: 158, type: !23)
!728 = !DILocation(line: 158, column: 9, scope: !718)
!729 = !DILocation(line: 160, column: 25, scope: !718)
!730 = !DILocation(line: 160, column: 9, scope: !718)
!731 = !DILocation(line: 160, column: 7, scope: !718)
!732 = !DILocation(line: 162, column: 9, scope: !733)
!733 = distinct !DILexicalBlock(scope: !718, file: !33, line: 162, column: 2)
!734 = !DILocation(line: 162, column: 7, scope: !733)
!735 = !DILocation(line: 162, column: 14, scope: !736)
!736 = !DILexicalBlockFile(scope: !737, file: !33, discriminator: 1)
!737 = distinct !DILexicalBlock(scope: !733, file: !33, line: 162, column: 2)
!738 = !DILocation(line: 162, column: 16, scope: !736)
!739 = !DILocation(line: 162, column: 2, scope: !736)
!740 = !DILocation(line: 164, column: 16, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !33, line: 164, column: 7)
!742 = distinct !DILexicalBlock(scope: !737, file: !33, line: 163, column: 2)
!743 = !DILocation(line: 164, column: 7, scope: !741)
!744 = !DILocation(line: 164, column: 19, scope: !741)
!745 = !DILocation(line: 164, column: 27, scope: !741)
!746 = !DILocation(line: 164, column: 24, scope: !741)
!747 = !DILocation(line: 164, column: 7, scope: !742)
!748 = !DILocation(line: 167, column: 11, scope: !749)
!749 = distinct !DILexicalBlock(scope: !741, file: !33, line: 165, column: 3)
!750 = !DILocation(line: 167, column: 17, scope: !749)
!751 = !DILocation(line: 166, column: 4, scope: !749)
!752 = !DILocation(line: 168, column: 29, scope: !749)
!753 = !DILocation(line: 168, column: 13, scope: !749)
!754 = !DILocation(line: 168, column: 4, scope: !749)
!755 = !DILocation(line: 168, column: 16, scope: !749)
!756 = !DILocation(line: 168, column: 27, scope: !749)
!757 = !DILocation(line: 169, column: 4, scope: !749)
!758 = !DILocation(line: 171, column: 2, scope: !742)
!759 = !DILocation(line: 162, column: 23, scope: !760)
!760 = !DILexicalBlockFile(scope: !737, file: !33, discriminator: 2)
!761 = !DILocation(line: 162, column: 2, scope: !760)
!762 = distinct !{!762, !763}
!763 = !DILocation(line: 162, column: 2, scope: !718)
!764 = !DILocation(line: 173, column: 2, scope: !718)
!765 = !DILocation(line: 174, column: 1, scope: !718)
!766 = distinct !DISubprogram(name: "dvc_send_create_response", scope: !33, file: !33, line: 309, type: !767, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !84, !221, !23}
!769 = !DILocalVariable(name: "success", arg: 1, scope: !766, file: !33, line: 309, type: !84)
!770 = !DILocation(line: 309, column: 34, scope: !766)
!771 = !DILocalVariable(name: "hdr", arg: 2, scope: !766, file: !33, line: 309, type: !221)
!772 = !DILocation(line: 309, column: 53, scope: !766)
!773 = !DILocalVariable(name: "channelid", arg: 3, scope: !766, file: !33, line: 309, type: !23)
!774 = !DILocation(line: 309, column: 65, scope: !766)
!775 = !DILocalVariable(name: "s", scope: !766, file: !33, line: 311, type: !64)
!776 = !DILocation(line: 311, column: 9, scope: !766)
!777 = !DILocation(line: 314, column: 10, scope: !766)
!778 = !DILocation(line: 314, column: 43, scope: !766)
!779 = !DILocation(line: 313, column: 2, scope: !766)
!780 = !DILocation(line: 315, column: 27, scope: !766)
!781 = !DILocation(line: 315, column: 6, scope: !766)
!782 = !DILocation(line: 315, column: 4, scope: !766)
!783 = !DILocation(line: 316, column: 26, scope: !784)
!784 = distinct !DILexicalBlock(scope: !766, file: !33, line: 316, column: 2)
!785 = !DILocation(line: 316, column: 17, scope: !784)
!786 = !DILocation(line: 316, column: 21, scope: !784)
!787 = !DILocation(line: 316, column: 4, scope: !784)
!788 = !DILocation(line: 316, column: 24, scope: !784)
!789 = !DILocation(line: 316, column: 45, scope: !784)
!790 = !DILocation(line: 316, column: 49, scope: !784)
!791 = !DILocation(line: 316, column: 51, scope: !784)
!792 = !DILocation(line: 317, column: 14, scope: !766)
!793 = !DILocation(line: 317, column: 18, scope: !766)
!794 = !DILocation(line: 317, column: 3, scope: !766)
!795 = !DILocation(line: 317, column: 7, scope: !766)
!796 = !DILocation(line: 317, column: 11, scope: !766)
!797 = !DILocation(line: 319, column: 15, scope: !766)
!798 = !DILocation(line: 319, column: 18, scope: !766)
!799 = !DILocation(line: 319, column: 2, scope: !766)
!800 = !DILocation(line: 320, column: 1, scope: !766)
!801 = distinct !DISubprogram(name: "dvc_channels_get_by_id", scope: !33, file: !33, line: 73, type: !802, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!802 = !DISubroutineType(types: !803)
!803 = !{!587, !23}
!804 = !DILocalVariable(name: "id", arg: 1, scope: !801, file: !33, line: 73, type: !23)
!805 = !DILocation(line: 73, column: 31, scope: !801)
!806 = !DILocalVariable(name: "i", scope: !801, file: !33, line: 75, type: !85)
!807 = !DILocation(line: 75, column: 6, scope: !801)
!808 = !DILocation(line: 77, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !801, file: !33, line: 77, column: 2)
!810 = !DILocation(line: 77, column: 7, scope: !809)
!811 = !DILocation(line: 77, column: 14, scope: !812)
!812 = !DILexicalBlockFile(scope: !813, file: !33, discriminator: 1)
!813 = distinct !DILexicalBlock(scope: !809, file: !33, line: 77, column: 2)
!814 = !DILocation(line: 77, column: 16, scope: !812)
!815 = !DILocation(line: 77, column: 2, scope: !812)
!816 = !DILocation(line: 79, column: 16, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !33, line: 79, column: 7)
!818 = distinct !DILexicalBlock(scope: !813, file: !33, line: 78, column: 2)
!819 = !DILocation(line: 79, column: 7, scope: !817)
!820 = !DILocation(line: 79, column: 19, scope: !817)
!821 = !DILocation(line: 79, column: 33, scope: !817)
!822 = !DILocation(line: 79, column: 30, scope: !817)
!823 = !DILocation(line: 79, column: 7, scope: !818)
!824 = !DILocation(line: 81, column: 21, scope: !825)
!825 = distinct !DILexicalBlock(scope: !817, file: !33, line: 80, column: 3)
!826 = !DILocation(line: 81, column: 12, scope: !825)
!827 = !DILocation(line: 81, column: 4, scope: !825)
!828 = !DILocation(line: 83, column: 2, scope: !818)
!829 = !DILocation(line: 77, column: 23, scope: !830)
!830 = !DILexicalBlockFile(scope: !813, file: !33, discriminator: 2)
!831 = !DILocation(line: 77, column: 2, scope: !830)
!832 = distinct !{!832, !833}
!833 = !DILocation(line: 77, column: 2, scope: !801)
!834 = !DILocation(line: 85, column: 2, scope: !801)
!835 = !DILocation(line: 86, column: 1, scope: !801)
!836 = distinct !DISubprogram(name: "dvc_channels_remove_by_id", scope: !33, file: !33, line: 107, type: !837, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!837 = !DISubroutineType(types: !838)
!838 = !{!84, !23}
!839 = !DILocalVariable(name: "channelid", arg: 1, scope: !836, file: !33, line: 107, type: !23)
!840 = !DILocation(line: 107, column: 34, scope: !836)
!841 = !DILocalVariable(name: "i", scope: !836, file: !33, line: 109, type: !85)
!842 = !DILocation(line: 109, column: 6, scope: !836)
!843 = !DILocation(line: 111, column: 9, scope: !844)
!844 = distinct !DILexicalBlock(scope: !836, file: !33, line: 111, column: 2)
!845 = !DILocation(line: 111, column: 7, scope: !844)
!846 = !DILocation(line: 111, column: 14, scope: !847)
!847 = !DILexicalBlockFile(scope: !848, file: !33, discriminator: 1)
!848 = distinct !DILexicalBlock(scope: !844, file: !33, line: 111, column: 2)
!849 = !DILocation(line: 111, column: 16, scope: !847)
!850 = !DILocation(line: 111, column: 2, scope: !847)
!851 = !DILocation(line: 113, column: 16, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !33, line: 113, column: 7)
!853 = distinct !DILexicalBlock(scope: !848, file: !33, line: 112, column: 2)
!854 = !DILocation(line: 113, column: 7, scope: !852)
!855 = !DILocation(line: 113, column: 19, scope: !852)
!856 = !DILocation(line: 113, column: 33, scope: !852)
!857 = !DILocation(line: 113, column: 30, scope: !852)
!858 = !DILocation(line: 113, column: 7, scope: !853)
!859 = !DILocation(line: 115, column: 21, scope: !860)
!860 = distinct !DILexicalBlock(scope: !852, file: !33, line: 114, column: 3)
!861 = !DILocation(line: 115, column: 12, scope: !860)
!862 = !DILocation(line: 115, column: 4, scope: !860)
!863 = !DILocation(line: 116, column: 4, scope: !860)
!864 = !DILocation(line: 118, column: 2, scope: !853)
!865 = !DILocation(line: 111, column: 23, scope: !866)
!866 = !DILexicalBlockFile(scope: !848, file: !33, discriminator: 2)
!867 = !DILocation(line: 111, column: 2, scope: !866)
!868 = distinct !{!868, !869}
!869 = !DILocation(line: 111, column: 2, scope: !836)
!870 = !DILocation(line: 119, column: 2, scope: !836)
!871 = !DILocation(line: 120, column: 1, scope: !836)
