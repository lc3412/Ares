; ModuleID = './[inter]rdpsnd_dsp.o.i'
source_filename = "./[inter]rdpsnd_dsp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct._RD_WAVEFORMATEX = type { i16, i16, i32, i32, i16, i16, i16, [256 x i8] }
%struct.audio_driver = type { void (i32*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*)*, void (%struct.fd_set*, %struct.fd_set*)*, i32 ()*, void ()*, i32 (%struct._RD_WAVEFORMATEX*)*, i32 (%struct._RD_WAVEFORMATEX*)*, void (i16, i16)*, i32 ()*, void ()*, i32 (%struct._RD_WAVEFORMATEX*)*, i32 (%struct._RD_WAVEFORMATEX*)*, void (i16, i16)*, i8*, i8*, i32, i32, %struct.audio_driver* }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }

@softvol_left = internal global i16 -1, align 2
@softvol_right = internal global i16 -1, align 2
@.str = private unnamed_addr constant [47 x i8] c"rdpsnd_dsp_softvol_set(), left: %u, right: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"rdpsnd_dsp_softvol(), using softvol with factors left: %d, right: %d (%d/%d)\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"rdpsnd_dsp_swapbytes(), badly aligned sound data\00", align 1
@resample_to_srate = internal global i32 44100, align 4
@resample_to_bitspersample = internal global i16 16, align 2
@resample_to_channels = internal global i16 2, align 2
@.str.3 = private unnamed_addr constant [64 x i8] c"rdpsnd_dsp_reasmple_set(), downsampling currently not supported\00", align 1
@rdpsnd_dsp_process.out = internal global %struct.stream zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define void @rdpsnd_dsp_softvol_set(i16 zeroext, i16 zeroext) #0 !dbg !140 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !141, metadata !142), !dbg !143
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !144, metadata !142), !dbg !145
  %5 = load i16, i16* %3, align 2, !dbg !146
  store i16 %5, i16* @softvol_left, align 2, !dbg !147
  %6 = load i16, i16* %4, align 2, !dbg !148
  store i16 %6, i16* @softvol_right, align 2, !dbg !149
  %7 = load i16, i16* %3, align 2, !dbg !150
  %8 = zext i16 %7 to i32, !dbg !150
  %9 = load i16, i16* %4, align 2, !dbg !151
  %10 = zext i16 %9 to i32, !dbg !151
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0), i32 %8, i32 %10), !dbg !152
  ret void, !dbg !153
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @rdpsnd_dsp_softvol(i8*, i32, %struct._RD_WAVEFORMATEX*) #0 !dbg !154 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._RD_WAVEFORMATEX*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !157, metadata !142), !dbg !158
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !159, metadata !142), !dbg !160
  store %struct._RD_WAVEFORMATEX* %2, %struct._RD_WAVEFORMATEX** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._RD_WAVEFORMATEX** %6, metadata !161, metadata !142), !dbg !162
  call void @llvm.dbg.declare(metadata i32* %7, metadata !163, metadata !142), !dbg !164
  call void @llvm.dbg.declare(metadata i32* %8, metadata !165, metadata !142), !dbg !166
  call void @llvm.dbg.declare(metadata i8** %9, metadata !167, metadata !142), !dbg !168
  %13 = load i8*, i8** %4, align 8, !dbg !169
  store i8* %13, i8** %9, align 8, !dbg !168
  call void @llvm.dbg.declare(metadata i8** %10, metadata !170, metadata !142), !dbg !171
  %14 = load i8*, i8** %4, align 8, !dbg !172
  store i8* %14, i8** %10, align 8, !dbg !171
  %15 = load i16, i16* @softvol_left, align 2, !dbg !173
  %16 = zext i16 %15 to i32, !dbg !173
  %17 = icmp eq i32 %16, 65535, !dbg !175
  br i1 %17, label %18, label %23, !dbg !176

; <label>:18:                                     ; preds = %3
  %19 = load i16, i16* @softvol_right, align 2, !dbg !177
  %20 = zext i16 %19 to i32, !dbg !177
  %21 = icmp eq i32 %20, 65535, !dbg !179
  br i1 %21, label %22, label %23, !dbg !180

; <label>:22:                                     ; preds = %18
  br label %165, !dbg !181

; <label>:23:                                     ; preds = %18, %3
  %24 = load i16, i16* @softvol_left, align 2, !dbg !182
  %25 = zext i16 %24 to i32, !dbg !182
  %26 = mul nsw i32 %25, 256, !dbg !183
  %27 = sdiv i32 %26, 65535, !dbg !184
  store i32 %27, i32* %7, align 4, !dbg !185
  %28 = load i16, i16* @softvol_right, align 2, !dbg !186
  %29 = zext i16 %28 to i32, !dbg !186
  %30 = mul nsw i32 %29, 256, !dbg !187
  %31 = sdiv i32 %30, 65535, !dbg !188
  store i32 %31, i32* %8, align 4, !dbg !189
  %32 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %6, align 8, !dbg !190
  %33 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %32, i32 0, i32 1, !dbg !192
  %34 = load i16, i16* %33, align 2, !dbg !192
  %35 = zext i16 %34 to i32, !dbg !190
  %36 = icmp eq i32 %35, 1, !dbg !193
  br i1 %36, label %37, label %42, !dbg !194

; <label>:37:                                     ; preds = %23
  %38 = load i32, i32* %7, align 4, !dbg !195
  %39 = load i32, i32* %8, align 4, !dbg !197
  %40 = add i32 %38, %39, !dbg !198
  %41 = udiv i32 %40, 2, !dbg !199
  store i32 %41, i32* %8, align 4, !dbg !200
  store i32 %41, i32* %7, align 4, !dbg !201
  br label %42, !dbg !202

; <label>:42:                                     ; preds = %37, %23
  %43 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %6, align 8, !dbg !203
  %44 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %43, i32 0, i32 5, !dbg !205
  %45 = load i16, i16* %44, align 2, !dbg !205
  %46 = zext i16 %45 to i32, !dbg !203
  %47 = icmp eq i32 %46, 8, !dbg !206
  br i1 %47, label %48, label %82, !dbg !207

; <label>:48:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata i8* %11, metadata !208, metadata !142), !dbg !212
  br label %49, !dbg !213

; <label>:49:                                     ; preds = %56, %48
  %50 = load i8*, i8** %10, align 8, !dbg !214
  %51 = load i8*, i8** %4, align 8, !dbg !216
  %52 = load i32, i32* %5, align 4, !dbg !217
  %53 = zext i32 %52 to i64, !dbg !218
  %54 = getelementptr inbounds i8, i8* %51, i64 %53, !dbg !218
  %55 = icmp ult i8* %50, %54, !dbg !219
  br i1 %55, label %56, label %81, !dbg !220

; <label>:56:                                     ; preds = %49
  %57 = load i8*, i8** %9, align 8, !dbg !221
  %58 = getelementptr inbounds i8, i8* %57, i32 1, !dbg !221
  store i8* %58, i8** %9, align 8, !dbg !221
  %59 = load i8, i8* %57, align 1, !dbg !223
  store i8 %59, i8* %11, align 1, !dbg !224
  %60 = load i8, i8* %11, align 1, !dbg !225
  %61 = sext i8 %60 to i32, !dbg !225
  %62 = load i32, i32* %7, align 4, !dbg !226
  %63 = mul i32 %61, %62, !dbg !227
  %64 = lshr i32 %63, 8, !dbg !228
  %65 = trunc i32 %64 to i8, !dbg !229
  store i8 %65, i8* %11, align 1, !dbg !230
  %66 = load i8, i8* %11, align 1, !dbg !231
  %67 = load i8*, i8** %10, align 8, !dbg !232
  %68 = getelementptr inbounds i8, i8* %67, i32 1, !dbg !232
  store i8* %68, i8** %10, align 8, !dbg !232
  store i8 %66, i8* %67, align 1, !dbg !233
  %69 = load i8*, i8** %9, align 8, !dbg !234
  %70 = getelementptr inbounds i8, i8* %69, i32 1, !dbg !234
  store i8* %70, i8** %9, align 8, !dbg !234
  %71 = load i8, i8* %69, align 1, !dbg !235
  store i8 %71, i8* %11, align 1, !dbg !236
  %72 = load i8, i8* %11, align 1, !dbg !237
  %73 = sext i8 %72 to i32, !dbg !237
  %74 = load i32, i32* %8, align 4, !dbg !238
  %75 = mul i32 %73, %74, !dbg !239
  %76 = lshr i32 %75, 8, !dbg !240
  %77 = trunc i32 %76 to i8, !dbg !241
  store i8 %77, i8* %11, align 1, !dbg !242
  %78 = load i8, i8* %11, align 1, !dbg !243
  %79 = load i8*, i8** %10, align 8, !dbg !244
  %80 = getelementptr inbounds i8, i8* %79, i32 1, !dbg !244
  store i8* %80, i8** %10, align 8, !dbg !244
  store i8 %78, i8* %79, align 1, !dbg !245
  br label %49, !dbg !246, !llvm.loop !248

; <label>:81:                                     ; preds = %49
  br label %154, !dbg !249

; <label>:82:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata i16* %12, metadata !250, metadata !142), !dbg !254
  br label %83, !dbg !255

; <label>:83:                                     ; preds = %90, %82
  %84 = load i8*, i8** %10, align 8, !dbg !256
  %85 = load i8*, i8** %4, align 8, !dbg !258
  %86 = load i32, i32* %5, align 4, !dbg !259
  %87 = zext i32 %86 to i64, !dbg !260
  %88 = getelementptr inbounds i8, i8* %85, i64 %87, !dbg !260
  %89 = icmp ult i8* %84, %88, !dbg !261
  br i1 %89, label %90, label %153, !dbg !262

; <label>:90:                                     ; preds = %83
  %91 = load i8*, i8** %9, align 8, !dbg !263
  %92 = getelementptr inbounds i8, i8* %91, i32 1, !dbg !263
  store i8* %92, i8** %9, align 8, !dbg !263
  %93 = load i8, i8* %91, align 1, !dbg !265
  %94 = zext i8 %93 to i16, !dbg !265
  store i16 %94, i16* %12, align 2, !dbg !266
  %95 = load i8*, i8** %9, align 8, !dbg !267
  %96 = getelementptr inbounds i8, i8* %95, i32 1, !dbg !267
  store i8* %96, i8** %9, align 8, !dbg !267
  %97 = load i8, i8* %95, align 1, !dbg !268
  %98 = zext i8 %97 to i32, !dbg !268
  %99 = shl i32 %98, 8, !dbg !269
  %100 = load i16, i16* %12, align 2, !dbg !270
  %101 = sext i16 %100 to i32, !dbg !270
  %102 = or i32 %101, %99, !dbg !270
  %103 = trunc i32 %102 to i16, !dbg !270
  store i16 %103, i16* %12, align 2, !dbg !270
  %104 = load i16, i16* %12, align 2, !dbg !271
  %105 = sext i16 %104 to i32, !dbg !271
  %106 = load i32, i32* %7, align 4, !dbg !272
  %107 = mul i32 %105, %106, !dbg !273
  %108 = lshr i32 %107, 8, !dbg !274
  %109 = trunc i32 %108 to i16, !dbg !275
  store i16 %109, i16* %12, align 2, !dbg !276
  %110 = load i16, i16* %12, align 2, !dbg !277
  %111 = sext i16 %110 to i32, !dbg !277
  %112 = and i32 %111, 255, !dbg !278
  %113 = trunc i32 %112 to i8, !dbg !277
  %114 = load i8*, i8** %10, align 8, !dbg !279
  %115 = getelementptr inbounds i8, i8* %114, i32 1, !dbg !279
  store i8* %115, i8** %10, align 8, !dbg !279
  store i8 %113, i8* %114, align 1, !dbg !280
  %116 = load i16, i16* %12, align 2, !dbg !281
  %117 = sext i16 %116 to i32, !dbg !281
  %118 = ashr i32 %117, 8, !dbg !282
  %119 = trunc i32 %118 to i8, !dbg !281
  %120 = load i8*, i8** %10, align 8, !dbg !283
  %121 = getelementptr inbounds i8, i8* %120, i32 1, !dbg !283
  store i8* %121, i8** %10, align 8, !dbg !283
  store i8 %119, i8* %120, align 1, !dbg !284
  %122 = load i8*, i8** %9, align 8, !dbg !285
  %123 = getelementptr inbounds i8, i8* %122, i32 1, !dbg !285
  store i8* %123, i8** %9, align 8, !dbg !285
  %124 = load i8, i8* %122, align 1, !dbg !286
  %125 = zext i8 %124 to i16, !dbg !286
  store i16 %125, i16* %12, align 2, !dbg !287
  %126 = load i8*, i8** %9, align 8, !dbg !288
  %127 = getelementptr inbounds i8, i8* %126, i32 1, !dbg !288
  store i8* %127, i8** %9, align 8, !dbg !288
  %128 = load i8, i8* %126, align 1, !dbg !289
  %129 = zext i8 %128 to i32, !dbg !289
  %130 = shl i32 %129, 8, !dbg !290
  %131 = load i16, i16* %12, align 2, !dbg !291
  %132 = sext i16 %131 to i32, !dbg !291
  %133 = or i32 %132, %130, !dbg !291
  %134 = trunc i32 %133 to i16, !dbg !291
  store i16 %134, i16* %12, align 2, !dbg !291
  %135 = load i16, i16* %12, align 2, !dbg !292
  %136 = sext i16 %135 to i32, !dbg !292
  %137 = load i32, i32* %8, align 4, !dbg !293
  %138 = mul i32 %136, %137, !dbg !294
  %139 = lshr i32 %138, 8, !dbg !295
  %140 = trunc i32 %139 to i16, !dbg !296
  store i16 %140, i16* %12, align 2, !dbg !297
  %141 = load i16, i16* %12, align 2, !dbg !298
  %142 = sext i16 %141 to i32, !dbg !298
  %143 = and i32 %142, 255, !dbg !299
  %144 = trunc i32 %143 to i8, !dbg !298
  %145 = load i8*, i8** %10, align 8, !dbg !300
  %146 = getelementptr inbounds i8, i8* %145, i32 1, !dbg !300
  store i8* %146, i8** %10, align 8, !dbg !300
  store i8 %144, i8* %145, align 1, !dbg !301
  %147 = load i16, i16* %12, align 2, !dbg !302
  %148 = sext i16 %147 to i32, !dbg !302
  %149 = ashr i32 %148, 8, !dbg !303
  %150 = trunc i32 %149 to i8, !dbg !302
  %151 = load i8*, i8** %10, align 8, !dbg !304
  %152 = getelementptr inbounds i8, i8* %151, i32 1, !dbg !304
  store i8* %152, i8** %10, align 8, !dbg !304
  store i8 %150, i8* %151, align 1, !dbg !305
  br label %83, !dbg !306, !llvm.loop !308

; <label>:153:                                    ; preds = %83
  br label %154

; <label>:154:                                    ; preds = %153, %81
  %155 = load i32, i32* %7, align 4, !dbg !309
  %156 = load i32, i32* %8, align 4, !dbg !310
  %157 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %6, align 8, !dbg !311
  %158 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %157, i32 0, i32 5, !dbg !312
  %159 = load i16, i16* %158, align 2, !dbg !312
  %160 = zext i16 %159 to i32, !dbg !311
  %161 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %6, align 8, !dbg !313
  %162 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %161, i32 0, i32 1, !dbg !314
  %163 = load i16, i16* %162, align 2, !dbg !314
  %164 = zext i16 %163 to i32, !dbg !313
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i32 0, i32 0), i32 %155, i32 %156, i32 %160, i32 %164), !dbg !315
  br label %165, !dbg !316

; <label>:165:                                    ; preds = %154, %22
  ret void, !dbg !317
}

; Function Attrs: nounwind uwtable
define void @rdpsnd_dsp_swapbytes(i8*, i32, %struct._RD_WAVEFORMATEX*) #0 !dbg !319 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._RD_WAVEFORMATEX*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !320, metadata !142), !dbg !321
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !322, metadata !142), !dbg !323
  store %struct._RD_WAVEFORMATEX* %2, %struct._RD_WAVEFORMATEX** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._RD_WAVEFORMATEX** %6, metadata !324, metadata !142), !dbg !325
  call void @llvm.dbg.declare(metadata i32* %7, metadata !326, metadata !142), !dbg !327
  call void @llvm.dbg.declare(metadata i8* %8, metadata !328, metadata !142), !dbg !329
  %9 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %6, align 8, !dbg !330
  %10 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %9, i32 0, i32 5, !dbg !332
  %11 = load i16, i16* %10, align 2, !dbg !332
  %12 = zext i16 %11 to i32, !dbg !330
  %13 = icmp eq i32 %12, 8, !dbg !333
  br i1 %13, label %14, label %15, !dbg !334

; <label>:14:                                     ; preds = %3
  br label %50, !dbg !335

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %5, align 4, !dbg !336
  %17 = and i32 %16, 1, !dbg !338
  %18 = icmp ne i32 %17, 0, !dbg !338
  br i1 %18, label %19, label %20, !dbg !339

; <label>:19:                                     ; preds = %15
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0)), !dbg !340
  br label %20, !dbg !340

; <label>:20:                                     ; preds = %19, %15
  store i32 0, i32* %7, align 4, !dbg !341
  br label %21, !dbg !343

; <label>:21:                                     ; preds = %47, %20
  %22 = load i32, i32* %7, align 4, !dbg !344
  %23 = load i32, i32* %5, align 4, !dbg !347
  %24 = icmp slt i32 %22, %23, !dbg !348
  br i1 %24, label %25, label %50, !dbg !349

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %4, align 8, !dbg !350
  %27 = load i32, i32* %7, align 4, !dbg !352
  %28 = sext i32 %27 to i64, !dbg !353
  %29 = getelementptr inbounds i8, i8* %26, i64 %28, !dbg !353
  %30 = load i8, i8* %29, align 1, !dbg !354
  store i8 %30, i8* %8, align 1, !dbg !355
  %31 = load i8*, i8** %4, align 8, !dbg !356
  %32 = load i32, i32* %7, align 4, !dbg !357
  %33 = sext i32 %32 to i64, !dbg !358
  %34 = getelementptr inbounds i8, i8* %31, i64 %33, !dbg !358
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !359
  %36 = load i8, i8* %35, align 1, !dbg !360
  %37 = load i8*, i8** %4, align 8, !dbg !361
  %38 = load i32, i32* %7, align 4, !dbg !362
  %39 = sext i32 %38 to i64, !dbg !363
  %40 = getelementptr inbounds i8, i8* %37, i64 %39, !dbg !363
  store i8 %36, i8* %40, align 1, !dbg !364
  %41 = load i8, i8* %8, align 1, !dbg !365
  %42 = load i8*, i8** %4, align 8, !dbg !366
  %43 = load i32, i32* %7, align 4, !dbg !367
  %44 = sext i32 %43 to i64, !dbg !368
  %45 = getelementptr inbounds i8, i8* %42, i64 %44, !dbg !368
  %46 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !369
  store i8 %41, i8* %46, align 1, !dbg !370
  br label %47, !dbg !371

; <label>:47:                                     ; preds = %25
  %48 = load i32, i32* %7, align 4, !dbg !372
  %49 = add nsw i32 %48, 2, !dbg !372
  store i32 %49, i32* %7, align 4, !dbg !372
  br label %21, !dbg !374, !llvm.loop !375

; <label>:50:                                     ; preds = %14, %21
  ret void, !dbg !377
}

; Function Attrs: nounwind uwtable
define i32 @rdpsnd_dsp_resample_set(i32, i16 zeroext, i16 zeroext) #0 !dbg !378 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !381, metadata !142), !dbg !382
  store i16 %1, i16* %6, align 2
  call void @llvm.dbg.declare(metadata i16* %6, metadata !383, metadata !142), !dbg !384
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !385, metadata !142), !dbg !386
  %8 = load i16, i16* %6, align 2, !dbg !387
  %9 = zext i16 %8 to i32, !dbg !387
  %10 = icmp ne i32 %9, 16, !dbg !389
  br i1 %10, label %11, label %16, !dbg !390

; <label>:11:                                     ; preds = %3
  %12 = load i16, i16* %6, align 2, !dbg !391
  %13 = zext i16 %12 to i32, !dbg !391
  %14 = icmp ne i32 %13, 8, !dbg !393
  br i1 %14, label %15, label %16, !dbg !394

; <label>:15:                                     ; preds = %11
  store i32 0, i32* %4, align 4, !dbg !395
  br label %29, !dbg !395

; <label>:16:                                     ; preds = %11, %3
  %17 = load i16, i16* %7, align 2, !dbg !396
  %18 = zext i16 %17 to i32, !dbg !396
  %19 = icmp ne i32 %18, 1, !dbg !398
  br i1 %19, label %20, label %25, !dbg !399

; <label>:20:                                     ; preds = %16
  %21 = load i16, i16* %7, align 2, !dbg !400
  %22 = zext i16 %21 to i32, !dbg !400
  %23 = icmp ne i32 %22, 2, !dbg !402
  br i1 %23, label %24, label %25, !dbg !403

; <label>:24:                                     ; preds = %20
  store i32 0, i32* %4, align 4, !dbg !404
  br label %29, !dbg !404

; <label>:25:                                     ; preds = %20, %16
  %26 = load i32, i32* %5, align 4, !dbg !405
  store i32 %26, i32* @resample_to_srate, align 4, !dbg !406
  %27 = load i16, i16* %6, align 2, !dbg !407
  store i16 %27, i16* @resample_to_bitspersample, align 2, !dbg !408
  %28 = load i16, i16* %7, align 2, !dbg !409
  store i16 %28, i16* @resample_to_channels, align 2, !dbg !410
  store i32 1, i32* %4, align 4, !dbg !411
  br label %29, !dbg !411

; <label>:29:                                     ; preds = %25, %24, %15
  %30 = load i32, i32* %4, align 4, !dbg !412
  ret i32 %30, !dbg !412
}

; Function Attrs: nounwind uwtable
define i32 @rdpsnd_dsp_resample_supported(%struct._RD_WAVEFORMATEX*) #0 !dbg !413 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._RD_WAVEFORMATEX*, align 8
  store %struct._RD_WAVEFORMATEX* %0, %struct._RD_WAVEFORMATEX** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RD_WAVEFORMATEX** %3, metadata !414, metadata !142), !dbg !415
  %4 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !416
  %5 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %4, i32 0, i32 0, !dbg !418
  %6 = load i16, i16* %5, align 4, !dbg !418
  %7 = zext i16 %6 to i32, !dbg !416
  %8 = icmp ne i32 %7, 1, !dbg !419
  br i1 %8, label %9, label %10, !dbg !420

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !421
  br label %37, !dbg !421

; <label>:10:                                     ; preds = %1
  %11 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !422
  %12 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %11, i32 0, i32 1, !dbg !424
  %13 = load i16, i16* %12, align 2, !dbg !424
  %14 = zext i16 %13 to i32, !dbg !422
  %15 = icmp ne i32 %14, 1, !dbg !425
  br i1 %15, label %16, label %23, !dbg !426

; <label>:16:                                     ; preds = %10
  %17 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !427
  %18 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %17, i32 0, i32 1, !dbg !429
  %19 = load i16, i16* %18, align 2, !dbg !429
  %20 = zext i16 %19 to i32, !dbg !427
  %21 = icmp ne i32 %20, 2, !dbg !430
  br i1 %21, label %22, label %23, !dbg !431

; <label>:22:                                     ; preds = %16
  store i32 0, i32* %2, align 4, !dbg !432
  br label %37, !dbg !432

; <label>:23:                                     ; preds = %16, %10
  %24 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !433
  %25 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %24, i32 0, i32 5, !dbg !435
  %26 = load i16, i16* %25, align 2, !dbg !435
  %27 = zext i16 %26 to i32, !dbg !433
  %28 = icmp ne i32 %27, 8, !dbg !436
  br i1 %28, label %29, label %36, !dbg !437

; <label>:29:                                     ; preds = %23
  %30 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %3, align 8, !dbg !438
  %31 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %30, i32 0, i32 5, !dbg !440
  %32 = load i16, i16* %31, align 2, !dbg !440
  %33 = zext i16 %32 to i32, !dbg !438
  %34 = icmp ne i32 %33, 16, !dbg !441
  br i1 %34, label %35, label %36, !dbg !442

; <label>:35:                                     ; preds = %29
  store i32 0, i32* %2, align 4, !dbg !443
  br label %37, !dbg !443

; <label>:36:                                     ; preds = %29, %23
  store i32 1, i32* %2, align 4, !dbg !444
  br label %37, !dbg !444

; <label>:37:                                     ; preds = %36, %35, %22, %9
  %38 = load i32, i32* %2, align 4, !dbg !445
  ret i32 %38, !dbg !445
}

; Function Attrs: nounwind uwtable
define i32 @rdpsnd_dsp_resample(i8**, i8*, i32, %struct._RD_WAVEFORMATEX*, i32) #0 !dbg !446 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._RD_WAVEFORMATEX*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !450, metadata !142), !dbg !451
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !452, metadata !142), !dbg !453
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !454, metadata !142), !dbg !455
  store %struct._RD_WAVEFORMATEX* %3, %struct._RD_WAVEFORMATEX** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._RD_WAVEFORMATEX** %10, metadata !456, metadata !142), !dbg !457
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !458, metadata !142), !dbg !459
  %23 = load i32, i32* %11, align 4, !dbg !460
  call void @llvm.dbg.declare(metadata i32* %12, metadata !461, metadata !142), !dbg !462
  %24 = load i32, i32* @resample_to_srate, align 4, !dbg !463
  %25 = mul i32 %24, 1000, !dbg !464
  %26 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !465
  %27 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %26, i32 0, i32 2, !dbg !466
  %28 = load i32, i32* %27, align 4, !dbg !466
  %29 = udiv i32 %25, %28, !dbg !467
  store i32 %29, i32* %12, align 4, !dbg !462
  call void @llvm.dbg.declare(metadata i32* %13, metadata !468, metadata !142), !dbg !469
  call void @llvm.dbg.declare(metadata i32* %14, metadata !470, metadata !142), !dbg !471
  call void @llvm.dbg.declare(metadata i8** %15, metadata !472, metadata !142), !dbg !473
  store i8* null, i8** %15, align 8, !dbg !473
  call void @llvm.dbg.declare(metadata i8** %16, metadata !474, metadata !142), !dbg !475
  store i8* null, i8** %16, align 8, !dbg !475
  call void @llvm.dbg.declare(metadata i32* %17, metadata !476, metadata !142), !dbg !477
  %30 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !478
  %31 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %30, i32 0, i32 5, !dbg !479
  %32 = load i16, i16* %31, align 2, !dbg !479
  %33 = zext i16 %32 to i32, !dbg !478
  %34 = sdiv i32 %33, 8, !dbg !480
  store i32 %34, i32* %17, align 4, !dbg !477
  call void @llvm.dbg.declare(metadata i32* %18, metadata !481, metadata !142), !dbg !482
  store i32 0, i32* %18, align 4, !dbg !482
  call void @llvm.dbg.declare(metadata i32* %19, metadata !483, metadata !142), !dbg !484
  %35 = load i16, i16* @resample_to_bitspersample, align 2, !dbg !485
  %36 = zext i16 %35 to i32, !dbg !485
  %37 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !487
  %38 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %37, i32 0, i32 5, !dbg !488
  %39 = load i16, i16* %38, align 2, !dbg !488
  %40 = zext i16 %39 to i32, !dbg !487
  %41 = icmp eq i32 %36, %40, !dbg !489
  br i1 %41, label %42, label %57, !dbg !490

; <label>:42:                                     ; preds = %5
  %43 = load i16, i16* @resample_to_channels, align 2, !dbg !491
  %44 = zext i16 %43 to i32, !dbg !491
  %45 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !492
  %46 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %45, i32 0, i32 1, !dbg !493
  %47 = load i16, i16* %46, align 2, !dbg !493
  %48 = zext i16 %47 to i32, !dbg !492
  %49 = icmp eq i32 %44, %48, !dbg !494
  br i1 %49, label %50, label %57, !dbg !495

; <label>:50:                                     ; preds = %42
  %51 = load i32, i32* @resample_to_srate, align 4, !dbg !496
  %52 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !497
  %53 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %52, i32 0, i32 2, !dbg !498
  %54 = load i32, i32* %53, align 4, !dbg !498
  %55 = icmp eq i32 %51, %54, !dbg !499
  br i1 %55, label %56, label %57, !dbg !500

; <label>:56:                                     ; preds = %50
  store i32 0, i32* %6, align 4, !dbg !502
  br label %347, !dbg !502

; <label>:57:                                     ; preds = %50, %42, %5
  %58 = load i16, i16* @resample_to_channels, align 2, !dbg !503
  %59 = zext i16 %58 to i32, !dbg !503
  %60 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !505
  %61 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %60, i32 0, i32 1, !dbg !506
  %62 = load i16, i16* %61, align 2, !dbg !506
  %63 = zext i16 %62 to i32, !dbg !505
  %64 = icmp ne i32 %59, %63, !dbg !507
  br i1 %64, label %65, label %151, !dbg !508

; <label>:65:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata i32* %20, metadata !509, metadata !142), !dbg !511
  %66 = load i32, i32* %9, align 4, !dbg !512
  %67 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !513
  %68 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %67, i32 0, i32 1, !dbg !514
  %69 = load i16, i16* %68, align 2, !dbg !514
  %70 = zext i16 %69 to i32, !dbg !513
  %71 = udiv i32 %66, %70, !dbg !515
  %72 = load i16, i16* @resample_to_channels, align 2, !dbg !516
  %73 = zext i16 %72 to i32, !dbg !516
  %74 = mul i32 %71, %73, !dbg !517
  store i32 %74, i32* %20, align 4, !dbg !511
  %75 = load i32, i32* %20, align 4, !dbg !518
  %76 = call i8* @xmalloc(i32 %75), !dbg !519
  store i8* %76, i8** %15, align 8, !dbg !520
  store i32 0, i32* %19, align 4, !dbg !521
  br label %77, !dbg !523

; <label>:77:                                     ; preds = %145, %65
  %78 = load i32, i32* %19, align 4, !dbg !524
  %79 = load i32, i32* %20, align 4, !dbg !527
  %80 = load i32, i32* %17, align 4, !dbg !528
  %81 = sdiv i32 %79, %80, !dbg !529
  %82 = icmp slt i32 %78, %81, !dbg !530
  br i1 %82, label %83, label %148, !dbg !531

; <label>:83:                                     ; preds = %77
  %84 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !532
  %85 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %84, i32 0, i32 1, !dbg !535
  %86 = load i16, i16* %85, align 2, !dbg !535
  %87 = zext i16 %86 to i32, !dbg !532
  %88 = load i16, i16* @resample_to_channels, align 2, !dbg !536
  %89 = zext i16 %88 to i32, !dbg !536
  %90 = icmp sgt i32 %87, %89, !dbg !537
  br i1 %90, label %91, label %114, !dbg !538

; <label>:91:                                     ; preds = %83
  %92 = load i8*, i8** %15, align 8, !dbg !539
  %93 = load i32, i32* %19, align 4, !dbg !540
  %94 = load i32, i32* %17, align 4, !dbg !541
  %95 = mul nsw i32 %93, %94, !dbg !542
  %96 = sext i32 %95 to i64, !dbg !543
  %97 = getelementptr inbounds i8, i8* %92, i64 %96, !dbg !543
  %98 = load i8*, i8** %8, align 8, !dbg !544
  %99 = load i32, i32* %19, align 4, !dbg !545
  %100 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !546
  %101 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %100, i32 0, i32 1, !dbg !547
  %102 = load i16, i16* %101, align 2, !dbg !547
  %103 = zext i16 %102 to i32, !dbg !546
  %104 = mul nsw i32 %99, %103, !dbg !548
  %105 = load i16, i16* @resample_to_channels, align 2, !dbg !549
  %106 = zext i16 %105 to i32, !dbg !549
  %107 = sdiv i32 %104, %106, !dbg !550
  %108 = load i32, i32* %17, align 4, !dbg !551
  %109 = mul nsw i32 %107, %108, !dbg !552
  %110 = sext i32 %109 to i64, !dbg !553
  %111 = getelementptr inbounds i8, i8* %98, i64 %110, !dbg !553
  %112 = load i32, i32* %17, align 4, !dbg !554
  %113 = sext i32 %112 to i64, !dbg !554
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %111, i64 %113, i32 1, i1 false), !dbg !555
  br label %144, !dbg !555

; <label>:114:                                    ; preds = %83
  %115 = load i8*, i8** %15, align 8, !dbg !556
  %116 = load i32, i32* %19, align 4, !dbg !557
  %117 = load i32, i32* %17, align 4, !dbg !558
  %118 = mul nsw i32 %116, %117, !dbg !559
  %119 = sext i32 %118 to i64, !dbg !560
  %120 = getelementptr inbounds i8, i8* %115, i64 %119, !dbg !560
  %121 = load i8*, i8** %8, align 8, !dbg !561
  %122 = load i32, i32* %19, align 4, !dbg !562
  %123 = load i16, i16* @resample_to_channels, align 2, !dbg !563
  %124 = zext i16 %123 to i32, !dbg !563
  %125 = sdiv i32 %122, %124, !dbg !564
  %126 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !565
  %127 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %126, i32 0, i32 1, !dbg !566
  %128 = load i16, i16* %127, align 2, !dbg !566
  %129 = zext i16 %128 to i32, !dbg !565
  %130 = mul nsw i32 %125, %129, !dbg !567
  %131 = load i32, i32* %19, align 4, !dbg !568
  %132 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !569
  %133 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %132, i32 0, i32 1, !dbg !570
  %134 = load i16, i16* %133, align 2, !dbg !570
  %135 = zext i16 %134 to i32, !dbg !569
  %136 = srem i32 %131, %135, !dbg !571
  %137 = add nsw i32 %130, %136, !dbg !572
  %138 = load i32, i32* %17, align 4, !dbg !573
  %139 = mul nsw i32 %137, %138, !dbg !574
  %140 = sext i32 %139 to i64, !dbg !575
  %141 = getelementptr inbounds i8, i8* %121, i64 %140, !dbg !575
  %142 = load i32, i32* %17, align 4, !dbg !576
  %143 = sext i32 %142 to i64, !dbg !576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %141, i64 %143, i32 1, i1 false), !dbg !577
  br label %144

; <label>:144:                                    ; preds = %114, %91
  br label %145, !dbg !578

; <label>:145:                                    ; preds = %144
  %146 = load i32, i32* %19, align 4, !dbg !579
  %147 = add nsw i32 %146, 1, !dbg !579
  store i32 %147, i32* %19, align 4, !dbg !579
  br label %77, !dbg !581, !llvm.loop !582

; <label>:148:                                    ; preds = %77
  %149 = load i8*, i8** %15, align 8, !dbg !584
  store i8* %149, i8** %8, align 8, !dbg !585
  %150 = load i32, i32* %20, align 4, !dbg !586
  store i32 %150, i32* %9, align 4, !dbg !587
  br label %151, !dbg !588

; <label>:151:                                    ; preds = %148, %57
  %152 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !589
  %153 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %152, i32 0, i32 5, !dbg !591
  %154 = load i16, i16* %153, align 2, !dbg !591
  %155 = zext i16 %154 to i32, !dbg !589
  %156 = load i16, i16* @resample_to_bitspersample, align 2, !dbg !592
  %157 = zext i16 %156 to i32, !dbg !592
  %158 = icmp ne i32 %155, %157, !dbg !593
  br i1 %158, label %159, label %204, !dbg !594

; <label>:159:                                    ; preds = %151
  %160 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !595
  %161 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %160, i32 0, i32 5, !dbg !598
  %162 = load i16, i16* %161, align 2, !dbg !598
  %163 = zext i16 %162 to i32, !dbg !595
  %164 = icmp eq i32 %163, 8, !dbg !599
  br i1 %164, label %165, label %203, !dbg !600

; <label>:165:                                    ; preds = %159
  %166 = load i8*, i8** %15, align 8, !dbg !601
  store i8* %166, i8** %16, align 8, !dbg !603
  %167 = load i32, i32* %9, align 4, !dbg !604
  %168 = mul i32 %167, 2, !dbg !605
  %169 = call i8* @xmalloc(i32 %168), !dbg !606
  store i8* %169, i8** %15, align 8, !dbg !607
  store i32 0, i32* %19, align 4, !dbg !608
  br label %170, !dbg !610

; <label>:170:                                    ; preds = %191, %165
  %171 = load i32, i32* %19, align 4, !dbg !611
  %172 = load i32, i32* %9, align 4, !dbg !614
  %173 = icmp slt i32 %171, %172, !dbg !615
  br i1 %173, label %174, label %194, !dbg !616

; <label>:174:                                    ; preds = %170
  %175 = load i32, i32* %19, align 4, !dbg !617
  %176 = sext i32 %175 to i64, !dbg !619
  %177 = load i8*, i8** %8, align 8, !dbg !619
  %178 = getelementptr inbounds i8, i8* %177, i64 %176, !dbg !619
  %179 = load i8, i8* %178, align 1, !dbg !619
  %180 = load i32, i32* %19, align 4, !dbg !620
  %181 = mul nsw i32 %180, 2, !dbg !621
  %182 = sext i32 %181 to i64, !dbg !622
  %183 = load i8*, i8** %15, align 8, !dbg !622
  %184 = getelementptr inbounds i8, i8* %183, i64 %182, !dbg !622
  store i8 %179, i8* %184, align 1, !dbg !623
  %185 = load i32, i32* %19, align 4, !dbg !624
  %186 = mul nsw i32 %185, 2, !dbg !625
  %187 = add nsw i32 %186, 1, !dbg !626
  %188 = sext i32 %187 to i64, !dbg !627
  %189 = load i8*, i8** %15, align 8, !dbg !627
  %190 = getelementptr inbounds i8, i8* %189, i64 %188, !dbg !627
  store i8 0, i8* %190, align 1, !dbg !628
  br label %191, !dbg !629

; <label>:191:                                    ; preds = %174
  %192 = load i32, i32* %19, align 4, !dbg !630
  %193 = add nsw i32 %192, 1, !dbg !630
  store i32 %193, i32* %19, align 4, !dbg !630
  br label %170, !dbg !632, !llvm.loop !633

; <label>:194:                                    ; preds = %170
  %195 = load i8*, i8** %15, align 8, !dbg !635
  store i8* %195, i8** %8, align 8, !dbg !636
  store i32 8, i32* %17, align 4, !dbg !637
  %196 = load i32, i32* %9, align 4, !dbg !638
  %197 = mul i32 %196, 2, !dbg !638
  store i32 %197, i32* %9, align 4, !dbg !638
  %198 = load i8*, i8** %16, align 8, !dbg !639
  %199 = icmp ne i8* %198, null, !dbg !641
  br i1 %199, label %200, label %202, !dbg !642

; <label>:200:                                    ; preds = %194
  %201 = load i8*, i8** %16, align 8, !dbg !643
  call void @xfree(i8* %201), !dbg !644
  br label %202, !dbg !644

; <label>:202:                                    ; preds = %200, %194
  br label %203, !dbg !645

; <label>:203:                                    ; preds = %202, %159
  br label %204, !dbg !646

; <label>:204:                                    ; preds = %203, %151
  %205 = load i32, i32* %9, align 4, !dbg !647
  %206 = load i32, i32* %17, align 4, !dbg !648
  %207 = udiv i32 %205, %206, !dbg !649
  store i32 %207, i32* %13, align 4, !dbg !650
  %208 = load i32, i32* @resample_to_srate, align 4, !dbg !651
  %209 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !653
  %210 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %209, i32 0, i32 2, !dbg !654
  %211 = load i32, i32* %210, align 4, !dbg !654
  %212 = icmp ult i32 %208, %211, !dbg !655
  br i1 %212, label %213, label %214, !dbg !656

; <label>:213:                                    ; preds = %204
  call void (i32, i32, i8*, ...) @logger(i32 3, i32 2, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i32 0, i32 0)), !dbg !657
  store i32 0, i32* %6, align 4, !dbg !659
  br label %347, !dbg !659

; <label>:214:                                    ; preds = %204
  %215 = load i32, i32* %13, align 4, !dbg !660
  %216 = load i32, i32* %12, align 4, !dbg !661
  %217 = mul nsw i32 %215, %216, !dbg !662
  %218 = sdiv i32 %217, 1000, !dbg !663
  store i32 %218, i32* %14, align 4, !dbg !664
  %219 = load i32, i32* %14, align 4, !dbg !665
  %220 = load i32, i32* %17, align 4, !dbg !666
  %221 = mul nsw i32 %219, %220, !dbg !667
  store i32 %221, i32* %18, align 4, !dbg !668
  %222 = load i32, i32* %18, align 4, !dbg !669
  %223 = call i8* @xmalloc(i32 %222), !dbg !670
  %224 = load i8**, i8*** %7, align 8, !dbg !671
  store i8* %223, i8** %224, align 8, !dbg !672
  %225 = load i8**, i8*** %7, align 8, !dbg !673
  %226 = load i8*, i8** %225, align 8, !dbg !674
  %227 = load i32, i32* %18, align 4, !dbg !675
  %228 = sext i32 %227 to i64, !dbg !675
  call void @llvm.memset.p0i8.i64(i8* %226, i8 0, i64 %228, i32 1, i1 false), !dbg !676
  store i32 0, i32* %19, align 4, !dbg !677
  br label %229, !dbg !679

; <label>:229:                                    ; preds = %294, %214
  %230 = load i32, i32* %19, align 4, !dbg !680
  %231 = load i32, i32* %18, align 4, !dbg !683
  %232 = load i16, i16* @resample_to_channels, align 2, !dbg !684
  %233 = zext i16 %232 to i32, !dbg !684
  %234 = load i32, i32* %17, align 4, !dbg !685
  %235 = mul nsw i32 %233, %234, !dbg !686
  %236 = sdiv i32 %231, %235, !dbg !687
  %237 = icmp slt i32 %230, %236, !dbg !688
  br i1 %237, label %238, label %297, !dbg !689

; <label>:238:                                    ; preds = %229
  call void @llvm.dbg.declare(metadata i32* %21, metadata !690, metadata !142), !dbg !692
  %239 = load i32, i32* %19, align 4, !dbg !693
  %240 = mul nsw i32 %239, 1000, !dbg !694
  %241 = load i32, i32* %12, align 4, !dbg !695
  %242 = sdiv i32 %240, %241, !dbg !696
  store i32 %242, i32* %21, align 4, !dbg !692
  call void @llvm.dbg.declare(metadata i32* %22, metadata !697, metadata !142), !dbg !698
  %243 = load i32, i32* %21, align 4, !dbg !699
  %244 = load i16, i16* @resample_to_channels, align 2, !dbg !701
  %245 = zext i16 %244 to i32, !dbg !701
  %246 = mul nsw i32 %243, %245, !dbg !702
  %247 = load i32, i32* %17, align 4, !dbg !703
  %248 = add nsw i32 %246, %247, !dbg !704
  %249 = load i32, i32* %9, align 4, !dbg !705
  %250 = icmp sgt i32 %248, %249, !dbg !706
  br i1 %250, label %251, label %252, !dbg !707

; <label>:251:                                    ; preds = %238
  br label %297, !dbg !708

; <label>:252:                                    ; preds = %238
  store i32 0, i32* %22, align 4, !dbg !709
  br label %253, !dbg !711

; <label>:253:                                    ; preds = %290, %252
  %254 = load i32, i32* %22, align 4, !dbg !712
  %255 = load i16, i16* @resample_to_channels, align 2, !dbg !715
  %256 = zext i16 %255 to i32, !dbg !715
  %257 = icmp slt i32 %254, %256, !dbg !716
  br i1 %257, label %258, label %293, !dbg !717

; <label>:258:                                    ; preds = %253
  %259 = load i8**, i8*** %7, align 8, !dbg !718
  %260 = load i8*, i8** %259, align 8, !dbg !720
  %261 = load i32, i32* %19, align 4, !dbg !721
  %262 = load i16, i16* @resample_to_channels, align 2, !dbg !722
  %263 = zext i16 %262 to i32, !dbg !722
  %264 = mul nsw i32 %261, %263, !dbg !723
  %265 = load i32, i32* %17, align 4, !dbg !724
  %266 = mul nsw i32 %264, %265, !dbg !725
  %267 = sext i32 %266 to i64, !dbg !726
  %268 = getelementptr inbounds i8, i8* %260, i64 %267, !dbg !726
  %269 = load i32, i32* %17, align 4, !dbg !727
  %270 = load i32, i32* %22, align 4, !dbg !728
  %271 = mul nsw i32 %269, %270, !dbg !729
  %272 = sext i32 %271 to i64, !dbg !730
  %273 = getelementptr inbounds i8, i8* %268, i64 %272, !dbg !730
  %274 = load i8*, i8** %8, align 8, !dbg !731
  %275 = load i32, i32* %21, align 4, !dbg !732
  %276 = load i16, i16* @resample_to_channels, align 2, !dbg !733
  %277 = zext i16 %276 to i32, !dbg !733
  %278 = mul nsw i32 %275, %277, !dbg !734
  %279 = load i32, i32* %17, align 4, !dbg !735
  %280 = mul nsw i32 %278, %279, !dbg !736
  %281 = sext i32 %280 to i64, !dbg !737
  %282 = getelementptr inbounds i8, i8* %274, i64 %281, !dbg !737
  %283 = load i32, i32* %17, align 4, !dbg !738
  %284 = load i32, i32* %22, align 4, !dbg !739
  %285 = mul nsw i32 %283, %284, !dbg !740
  %286 = sext i32 %285 to i64, !dbg !741
  %287 = getelementptr inbounds i8, i8* %282, i64 %286, !dbg !741
  %288 = load i32, i32* %17, align 4, !dbg !742
  %289 = sext i32 %288 to i64, !dbg !742
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %273, i8* %287, i64 %289, i32 1, i1 false), !dbg !743
  br label %290, !dbg !744

; <label>:290:                                    ; preds = %258
  %291 = load i32, i32* %22, align 4, !dbg !745
  %292 = add nsw i32 %291, 1, !dbg !745
  store i32 %292, i32* %22, align 4, !dbg !745
  br label %253, !dbg !747, !llvm.loop !748

; <label>:293:                                    ; preds = %253
  br label %294, !dbg !750

; <label>:294:                                    ; preds = %293
  %295 = load i32, i32* %19, align 4, !dbg !751
  %296 = add nsw i32 %295, 1, !dbg !751
  store i32 %296, i32* %19, align 4, !dbg !751
  br label %229, !dbg !753, !llvm.loop !754

; <label>:297:                                    ; preds = %251, %229
  %298 = load i32, i32* %19, align 4, !dbg !756
  %299 = load i16, i16* @resample_to_channels, align 2, !dbg !757
  %300 = zext i16 %299 to i32, !dbg !757
  %301 = mul nsw i32 %298, %300, !dbg !758
  %302 = load i32, i32* %17, align 4, !dbg !759
  %303 = mul nsw i32 %301, %302, !dbg !760
  store i32 %303, i32* %18, align 4, !dbg !761
  %304 = load i8*, i8** %15, align 8, !dbg !762
  %305 = icmp ne i8* %304, null, !dbg !764
  br i1 %305, label %306, label %308, !dbg !765

; <label>:306:                                    ; preds = %297
  %307 = load i8*, i8** %15, align 8, !dbg !766
  call void @xfree(i8* %307), !dbg !767
  br label %308, !dbg !767

; <label>:308:                                    ; preds = %306, %297
  %309 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %10, align 8, !dbg !768
  %310 = getelementptr inbounds %struct._RD_WAVEFORMATEX, %struct._RD_WAVEFORMATEX* %309, i32 0, i32 5, !dbg !770
  %311 = load i16, i16* %310, align 2, !dbg !770
  %312 = zext i16 %311 to i32, !dbg !768
  %313 = load i16, i16* @resample_to_bitspersample, align 2, !dbg !771
  %314 = zext i16 %313 to i32, !dbg !771
  %315 = icmp ne i32 %312, %314, !dbg !772
  br i1 %315, label %316, label %345, !dbg !773

; <label>:316:                                    ; preds = %308
  %317 = load i16, i16* @resample_to_bitspersample, align 2, !dbg !774
  %318 = zext i16 %317 to i32, !dbg !774
  %319 = icmp eq i32 %318, 8, !dbg !777
  br i1 %319, label %320, label %344, !dbg !778

; <label>:320:                                    ; preds = %316
  store i32 0, i32* %19, align 4, !dbg !779
  br label %321, !dbg !782

; <label>:321:                                    ; preds = %338, %320
  %322 = load i32, i32* %19, align 4, !dbg !783
  %323 = load i32, i32* %18, align 4, !dbg !786
  %324 = icmp slt i32 %322, %323, !dbg !787
  br i1 %324, label %325, label %341, !dbg !788

; <label>:325:                                    ; preds = %321
  %326 = load i32, i32* %19, align 4, !dbg !789
  %327 = mul nsw i32 %326, 2, !dbg !791
  %328 = sext i32 %327 to i64, !dbg !792
  %329 = load i8**, i8*** %7, align 8, !dbg !792
  %330 = getelementptr inbounds i8*, i8** %329, i64 %328, !dbg !792
  %331 = load i8*, i8** %330, align 8, !dbg !792
  %332 = load i8, i8* %331, align 1, !dbg !793
  %333 = load i32, i32* %19, align 4, !dbg !794
  %334 = sext i32 %333 to i64, !dbg !795
  %335 = load i8**, i8*** %7, align 8, !dbg !795
  %336 = getelementptr inbounds i8*, i8** %335, i64 %334, !dbg !795
  %337 = load i8*, i8** %336, align 8, !dbg !795
  store i8 %332, i8* %337, align 1, !dbg !796
  br label %338, !dbg !797

; <label>:338:                                    ; preds = %325
  %339 = load i32, i32* %19, align 4, !dbg !798
  %340 = add nsw i32 %339, 1, !dbg !798
  store i32 %340, i32* %19, align 4, !dbg !798
  br label %321, !dbg !800, !llvm.loop !801

; <label>:341:                                    ; preds = %321
  %342 = load i32, i32* %18, align 4, !dbg !803
  %343 = sdiv i32 %342, 2, !dbg !803
  store i32 %343, i32* %18, align 4, !dbg !803
  br label %344, !dbg !804

; <label>:344:                                    ; preds = %341, %316
  br label %345, !dbg !805

; <label>:345:                                    ; preds = %344, %308
  %346 = load i32, i32* %18, align 4, !dbg !806
  store i32 %346, i32* %6, align 4, !dbg !807
  br label %347, !dbg !807

; <label>:347:                                    ; preds = %345, %213, %56
  %348 = load i32, i32* %6, align 4, !dbg !808
  ret i32 %348, !dbg !808
}

declare i8* @xmalloc(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare void @xfree(i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define %struct.stream* @rdpsnd_dsp_process(i8*, i32, %struct.audio_driver*, %struct._RD_WAVEFORMATEX*) #0 !dbg !29 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_driver*, align 8
  %8 = alloca %struct._RD_WAVEFORMATEX*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !809, metadata !142), !dbg !810
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !811, metadata !142), !dbg !812
  store %struct.audio_driver* %2, %struct.audio_driver** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.audio_driver** %7, metadata !813, metadata !142), !dbg !814
  store %struct._RD_WAVEFORMATEX* %3, %struct._RD_WAVEFORMATEX** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._RD_WAVEFORMATEX** %8, metadata !815, metadata !142), !dbg !816
  call void @llvm.dbg.declare(metadata i32* %9, metadata !817, metadata !142), !dbg !818
  store i32 0, i32* %9, align 4, !dbg !818
  %10 = load %struct.audio_driver*, %struct.audio_driver** %7, align 8, !dbg !819
  %11 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %10, i32 0, i32 6, !dbg !821
  %12 = load void (i16, i16)*, void (i16, i16)** %11, align 8, !dbg !821
  %13 = icmp eq void (i16, i16)* %12, @rdpsnd_dsp_softvol_set, !dbg !822
  br i1 %13, label %14, label %18, !dbg !823

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %5, align 8, !dbg !824
  %16 = load i32, i32* %6, align 4, !dbg !825
  %17 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %8, align 8, !dbg !826
  call void @rdpsnd_dsp_softvol(i8* %15, i32 %16, %struct._RD_WAVEFORMATEX* %17), !dbg !827
  br label %18, !dbg !827

; <label>:18:                                     ; preds = %14, %4
  store i8* null, i8** getelementptr inbounds (%struct.stream, %struct.stream* @rdpsnd_dsp_process.out, i32 0, i32 2), align 8, !dbg !828
  %19 = load %struct.audio_driver*, %struct.audio_driver** %7, align 8, !dbg !829
  %20 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %19, i32 0, i32 15, !dbg !831
  %21 = load i32, i32* %20, align 4, !dbg !831
  %22 = icmp ne i32 %21, 0, !dbg !829
  br i1 %22, label %23, label %29, !dbg !832

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %5, align 8, !dbg !833
  %25 = load i32, i32* %6, align 4, !dbg !834
  %26 = load %struct._RD_WAVEFORMATEX*, %struct._RD_WAVEFORMATEX** %8, align 8, !dbg !835
  %27 = load i32, i32* %9, align 4, !dbg !836
  %28 = call i32 @rdpsnd_dsp_resample(i8** getelementptr inbounds (%struct.stream, %struct.stream* @rdpsnd_dsp_process.out, i32 0, i32 2), i8* %24, i32 %25, %struct._RD_WAVEFORMATEX* %26, i32 %27), !dbg !837
  store i32 %28, i32* getelementptr inbounds (%struct.stream, %struct.stream* @rdpsnd_dsp_process.out, i32 0, i32 3), align 8, !dbg !838
  br label %29, !dbg !839

; <label>:29:                                     ; preds = %23, %18
  %30 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @rdpsnd_dsp_process.out, i32 0, i32 2), align 8, !dbg !840
  %31 = icmp eq i8* %30, null, !dbg !842
  br i1 %31, label %32, label %40, !dbg !843

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %6, align 4, !dbg !844
  %34 = call i8* @xmalloc(i32 %33), !dbg !846
  store i8* %34, i8** getelementptr inbounds (%struct.stream, %struct.stream* @rdpsnd_dsp_process.out, i32 0, i32 2), align 8, !dbg !847
  %35 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @rdpsnd_dsp_process.out, i32 0, i32 2), align 8, !dbg !848
  %36 = load i8*, i8** %5, align 8, !dbg !849
  %37 = load i32, i32* %6, align 4, !dbg !850
  %38 = zext i32 %37 to i64, !dbg !850
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 %38, i32 1, i1 false), !dbg !851
  %39 = load i32, i32* %6, align 4, !dbg !852
  store i32 %39, i32* getelementptr inbounds (%struct.stream, %struct.stream* @rdpsnd_dsp_process.out, i32 0, i32 3), align 8, !dbg !853
  br label %40, !dbg !854

; <label>:40:                                     ; preds = %32, %29
  %41 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @rdpsnd_dsp_process.out, i32 0, i32 2), align 8, !dbg !855
  store i8* %41, i8** getelementptr inbounds (%struct.stream, %struct.stream* @rdpsnd_dsp_process.out, i32 0, i32 0), align 8, !dbg !856
  %42 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @rdpsnd_dsp_process.out, i32 0, i32 0), align 8, !dbg !857
  %43 = load i32, i32* getelementptr inbounds (%struct.stream, %struct.stream* @rdpsnd_dsp_process.out, i32 0, i32 3), align 8, !dbg !858
  %44 = zext i32 %43 to i64, !dbg !859
  %45 = getelementptr inbounds i8, i8* %42, i64 %44, !dbg !859
  store i8* %45, i8** getelementptr inbounds (%struct.stream, %struct.stream* @rdpsnd_dsp_process.out, i32 0, i32 1), align 8, !dbg !860
  ret %struct.stream* @rdpsnd_dsp_process.out, !dbg !861
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!137, !138}
!llvm.ident = !{!139}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !27)
!1 = !DIFile(filename: "[inter]rdpsnd_dsp.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !{!23, !24, !26}
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!27 = !{!28, !132, !133, !134, !135, !136}
!28 = distinct !DIGlobalVariable(name: "out", scope: !29, file: !30, line: 398, type: !36, isLocal: true, isDefinition: true, variable: %struct.stream* @rdpsnd_dsp_process.out)
!29 = distinct !DISubprogram(name: "rdpsnd_dsp_process", scope: !30, file: !30, line: 395, type: !31, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!30 = !DIFile(filename: "rdpsnd_dsp.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !24, !42, !48, !95}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !34, line: 40, baseType: !35)
!34 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !34, line: 25, size: 576, align: 64, elements: !37)
!37 = !{!38, !39, !40, !41, !43, !44, !45, !46, !47}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !36, file: !34, line: 27, baseType: !24, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !36, file: !34, line: 28, baseType: !24, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !36, file: !34, line: 29, baseType: !24, size: 64, align: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !36, file: !34, line: 30, baseType: !42, size: 32, align: 32, offset: 192)
!42 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !36, file: !34, line: 33, baseType: !24, size: 64, align: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !36, file: !34, line: 34, baseType: !24, size: 64, align: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !36, file: !34, line: 35, baseType: !24, size: 64, align: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !36, file: !34, line: 36, baseType: !24, size: 64, align: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !36, file: !34, line: 37, baseType: !24, size: 64, align: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "audio_driver", file: !50, line: 30, size: 1024, align: 64, elements: !51)
!50 = !DIFile(filename: "rdpsnd.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!51 = !{!52, !77, !81, !87, !91, !114, !115, !119, !120, !121, !122, !123, !124, !127, !128, !129, !130}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "add_fds", scope: !49, file: !50, line: 32, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56, !57, !57, !68}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !59, line: 75, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 64, size: 1024, align: 64, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !60, file: !59, line: 72, baseType: !63, size: 1024, align: 64)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1024, align: 64, elements: !66)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !59, line: 54, baseType: !65)
!65 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!66 = !{!67}
!67 = !DISubrange(count: 16)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !70, line: 30, size: 128, align: 64, elements: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!71 = !{!72, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !69, file: !70, line: 32, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !74, line: 139, baseType: !65)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !69, file: !70, line: 33, baseType: !76, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !74, line: 141, baseType: !65)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "check_fds", scope: !49, file: !50, line: 33, baseType: !78, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !57, !57}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_open", scope: !49, file: !50, line: 35, baseType: !82, size: 64, align: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !86, line: 28, baseType: !23)
!86 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!87 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_close", scope: !49, file: !50, line: 36, baseType: !88, size: 64, align: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{null}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_format_supported", scope: !49, file: !50, line: 37, baseType: !92, size: 64, align: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!85, !95}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_WAVEFORMATEX", file: !86, line: 197, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RD_WAVEFORMATEX", file: !86, line: 187, size: 2208, align: 32, elements: !98)
!98 = !{!99, !102, !103, !105, !106, !107, !108, !109}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "wFormatTag", scope: !97, file: !86, line: 189, baseType: !100, size: 16, align: 16)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !86, line: 41, baseType: !101)
!101 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "nChannels", scope: !97, file: !86, line: 190, baseType: !100, size: 16, align: 16, offset: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "nSamplesPerSec", scope: !97, file: !86, line: 191, baseType: !104, size: 32, align: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !86, line: 43, baseType: !42)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "nAvgBytesPerSec", scope: !97, file: !86, line: 192, baseType: !104, size: 32, align: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "nBlockAlign", scope: !97, file: !86, line: 193, baseType: !100, size: 16, align: 16, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "wBitsPerSample", scope: !97, file: !86, line: 194, baseType: !100, size: 16, align: 16, offset: 112)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "cbSize", scope: !97, file: !86, line: 195, baseType: !100, size: 16, align: 16, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !97, file: !86, line: 196, baseType: !110, size: 2048, align: 8, offset: 144)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 2048, align: 8, elements: !112)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !86, line: 39, baseType: !25)
!112 = !{!113}
!113 = !DISubrange(count: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_set_format", scope: !49, file: !50, line: 38, baseType: !92, size: 64, align: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "wave_out_volume", scope: !49, file: !50, line: 39, baseType: !116, size: 64, align: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !100, !100}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_open", scope: !49, file: !50, line: 41, baseType: !82, size: 64, align: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_close", scope: !49, file: !50, line: 42, baseType: !88, size: 64, align: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_format_supported", scope: !49, file: !50, line: 43, baseType: !92, size: 64, align: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_set_format", scope: !49, file: !50, line: 44, baseType: !92, size: 64, align: 64, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "wave_in_volume", scope: !49, file: !50, line: 45, baseType: !116, size: 64, align: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !49, file: !50, line: 47, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !49, file: !50, line: 48, baseType: !125, size: 64, align: 64, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "need_byteswap_on_be", scope: !49, file: !50, line: 49, baseType: !23, size: 32, align: 32, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "need_resampling", scope: !49, file: !50, line: 50, baseType: !23, size: 32, align: 32, offset: 928)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !49, file: !50, line: 51, baseType: !48, size: 64, align: 64, offset: 960)
!131 = !{}
!132 = distinct !DIGlobalVariable(name: "softvol_left", scope: !0, file: !30, line: 35, type: !100, isLocal: true, isDefinition: true, variable: i16* @softvol_left)
!133 = distinct !DIGlobalVariable(name: "softvol_right", scope: !0, file: !30, line: 36, type: !100, isLocal: true, isDefinition: true, variable: i16* @softvol_right)
!134 = distinct !DIGlobalVariable(name: "resample_to_srate", scope: !0, file: !30, line: 37, type: !104, isLocal: true, isDefinition: true, variable: i32* @resample_to_srate)
!135 = distinct !DIGlobalVariable(name: "resample_to_bitspersample", scope: !0, file: !30, line: 38, type: !100, isLocal: true, isDefinition: true, variable: i16* @resample_to_bitspersample)
!136 = distinct !DIGlobalVariable(name: "resample_to_channels", scope: !0, file: !30, line: 39, type: !100, isLocal: true, isDefinition: true, variable: i16* @resample_to_channels)
!137 = !{i32 2, !"Dwarf Version", i32 4}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!140 = distinct !DISubprogram(name: "rdpsnd_dsp_softvol_set", scope: !30, file: !30, line: 45, type: !117, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!141 = !DILocalVariable(name: "left", arg: 1, scope: !140, file: !30, line: 45, type: !100)
!142 = !DIExpression()
!143 = !DILocation(line: 45, column: 31, scope: !140)
!144 = !DILocalVariable(name: "right", arg: 2, scope: !140, file: !30, line: 45, type: !100)
!145 = !DILocation(line: 45, column: 44, scope: !140)
!146 = !DILocation(line: 47, column: 17, scope: !140)
!147 = !DILocation(line: 47, column: 15, scope: !140)
!148 = !DILocation(line: 48, column: 18, scope: !140)
!149 = !DILocation(line: 48, column: 16, scope: !140)
!150 = !DILocation(line: 49, column: 74, scope: !140)
!151 = !DILocation(line: 49, column: 80, scope: !140)
!152 = !DILocation(line: 49, column: 2, scope: !140)
!153 = !DILocation(line: 50, column: 1, scope: !140)
!154 = distinct !DISubprogram(name: "rdpsnd_dsp_softvol", scope: !30, file: !30, line: 53, type: !155, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !24, !42, !95}
!157 = !DILocalVariable(name: "buffer", arg: 1, scope: !154, file: !30, line: 53, type: !24)
!158 = !DILocation(line: 53, column: 35, scope: !154)
!159 = !DILocalVariable(name: "size", arg: 2, scope: !154, file: !30, line: 53, type: !42)
!160 = !DILocation(line: 53, column: 56, scope: !154)
!161 = !DILocalVariable(name: "format", arg: 3, scope: !154, file: !30, line: 53, type: !95)
!162 = !DILocation(line: 53, column: 80, scope: !154)
!163 = !DILocalVariable(name: "factor_left", scope: !154, file: !30, line: 55, type: !42)
!164 = !DILocation(line: 55, column: 15, scope: !154)
!165 = !DILocalVariable(name: "factor_right", scope: !154, file: !30, line: 55, type: !42)
!166 = !DILocation(line: 55, column: 28, scope: !154)
!167 = !DILocalVariable(name: "posin", scope: !154, file: !30, line: 56, type: !24)
!168 = !DILocation(line: 56, column: 17, scope: !154)
!169 = !DILocation(line: 56, column: 25, scope: !154)
!170 = !DILocalVariable(name: "posout", scope: !154, file: !30, line: 57, type: !24)
!171 = !DILocation(line: 57, column: 17, scope: !154)
!172 = !DILocation(line: 57, column: 26, scope: !154)
!173 = !DILocation(line: 59, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !154, file: !30, line: 59, column: 6)
!175 = !DILocation(line: 59, column: 20, scope: !174)
!176 = !DILocation(line: 59, column: 30, scope: !174)
!177 = !DILocation(line: 59, column: 34, scope: !178)
!178 = !DILexicalBlockFile(scope: !174, file: !30, discriminator: 1)
!179 = !DILocation(line: 59, column: 48, scope: !178)
!180 = !DILocation(line: 59, column: 6, scope: !178)
!181 = !DILocation(line: 60, column: 3, scope: !174)
!182 = !DILocation(line: 62, column: 17, scope: !154)
!183 = !DILocation(line: 62, column: 30, scope: !154)
!184 = !DILocation(line: 62, column: 37, scope: !154)
!185 = !DILocation(line: 62, column: 14, scope: !154)
!186 = !DILocation(line: 63, column: 18, scope: !154)
!187 = !DILocation(line: 63, column: 32, scope: !154)
!188 = !DILocation(line: 63, column: 39, scope: !154)
!189 = !DILocation(line: 63, column: 15, scope: !154)
!190 = !DILocation(line: 65, column: 6, scope: !191)
!191 = distinct !DILexicalBlock(scope: !154, file: !30, line: 65, column: 6)
!192 = !DILocation(line: 65, column: 14, scope: !191)
!193 = !DILocation(line: 65, column: 24, scope: !191)
!194 = !DILocation(line: 65, column: 6, scope: !154)
!195 = !DILocation(line: 67, column: 33, scope: !196)
!196 = distinct !DILexicalBlock(scope: !191, file: !30, line: 66, column: 2)
!197 = !DILocation(line: 67, column: 47, scope: !196)
!198 = !DILocation(line: 67, column: 45, scope: !196)
!199 = !DILocation(line: 67, column: 61, scope: !196)
!200 = !DILocation(line: 67, column: 30, scope: !196)
!201 = !DILocation(line: 67, column: 15, scope: !196)
!202 = !DILocation(line: 68, column: 2, scope: !196)
!203 = !DILocation(line: 70, column: 6, scope: !204)
!204 = distinct !DILexicalBlock(scope: !154, file: !30, line: 70, column: 6)
!205 = !DILocation(line: 70, column: 14, scope: !204)
!206 = !DILocation(line: 70, column: 29, scope: !204)
!207 = !DILocation(line: 70, column: 6, scope: !154)
!208 = !DILocalVariable(name: "val", scope: !209, file: !30, line: 72, type: !210)
!209 = distinct !DILexicalBlock(scope: !204, file: !30, line: 71, column: 2)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "sint8", file: !86, line: 40, baseType: !211)
!211 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!212 = !DILocation(line: 72, column: 9, scope: !209)
!213 = !DILocation(line: 74, column: 3, scope: !209)
!214 = !DILocation(line: 74, column: 10, scope: !215)
!215 = !DILexicalBlockFile(scope: !209, file: !30, discriminator: 1)
!216 = !DILocation(line: 74, column: 19, scope: !215)
!217 = !DILocation(line: 74, column: 28, scope: !215)
!218 = !DILocation(line: 74, column: 26, scope: !215)
!219 = !DILocation(line: 74, column: 17, scope: !215)
!220 = !DILocation(line: 74, column: 3, scope: !215)
!221 = !DILocation(line: 77, column: 16, scope: !222)
!222 = distinct !DILexicalBlock(scope: !209, file: !30, line: 75, column: 3)
!223 = !DILocation(line: 77, column: 10, scope: !222)
!224 = !DILocation(line: 77, column: 8, scope: !222)
!225 = !DILocation(line: 78, column: 11, scope: !222)
!226 = !DILocation(line: 78, column: 17, scope: !222)
!227 = !DILocation(line: 78, column: 15, scope: !222)
!228 = !DILocation(line: 78, column: 30, scope: !222)
!229 = !DILocation(line: 78, column: 10, scope: !222)
!230 = !DILocation(line: 78, column: 8, scope: !222)
!231 = !DILocation(line: 79, column: 16, scope: !222)
!232 = !DILocation(line: 79, column: 11, scope: !222)
!233 = !DILocation(line: 79, column: 14, scope: !222)
!234 = !DILocation(line: 82, column: 16, scope: !222)
!235 = !DILocation(line: 82, column: 10, scope: !222)
!236 = !DILocation(line: 82, column: 8, scope: !222)
!237 = !DILocation(line: 83, column: 11, scope: !222)
!238 = !DILocation(line: 83, column: 17, scope: !222)
!239 = !DILocation(line: 83, column: 15, scope: !222)
!240 = !DILocation(line: 83, column: 31, scope: !222)
!241 = !DILocation(line: 83, column: 10, scope: !222)
!242 = !DILocation(line: 83, column: 8, scope: !222)
!243 = !DILocation(line: 84, column: 16, scope: !222)
!244 = !DILocation(line: 84, column: 11, scope: !222)
!245 = !DILocation(line: 84, column: 14, scope: !222)
!246 = !DILocation(line: 74, column: 3, scope: !247)
!247 = !DILexicalBlockFile(scope: !209, file: !30, discriminator: 2)
!248 = distinct !{!248, !213}
!249 = !DILocation(line: 86, column: 2, scope: !209)
!250 = !DILocalVariable(name: "val", scope: !251, file: !30, line: 89, type: !252)
!251 = distinct !DILexicalBlock(scope: !204, file: !30, line: 88, column: 2)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "sint16", file: !86, line: 42, baseType: !253)
!253 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!254 = !DILocation(line: 89, column: 10, scope: !251)
!255 = !DILocation(line: 91, column: 3, scope: !251)
!256 = !DILocation(line: 91, column: 10, scope: !257)
!257 = !DILexicalBlockFile(scope: !251, file: !30, discriminator: 1)
!258 = !DILocation(line: 91, column: 19, scope: !257)
!259 = !DILocation(line: 91, column: 28, scope: !257)
!260 = !DILocation(line: 91, column: 26, scope: !257)
!261 = !DILocation(line: 91, column: 17, scope: !257)
!262 = !DILocation(line: 91, column: 3, scope: !257)
!263 = !DILocation(line: 94, column: 16, scope: !264)
!264 = distinct !DILexicalBlock(scope: !251, file: !30, line: 92, column: 3)
!265 = !DILocation(line: 94, column: 10, scope: !264)
!266 = !DILocation(line: 94, column: 8, scope: !264)
!267 = !DILocation(line: 95, column: 17, scope: !264)
!268 = !DILocation(line: 95, column: 11, scope: !264)
!269 = !DILocation(line: 95, column: 20, scope: !264)
!270 = !DILocation(line: 95, column: 8, scope: !264)
!271 = !DILocation(line: 96, column: 11, scope: !264)
!272 = !DILocation(line: 96, column: 17, scope: !264)
!273 = !DILocation(line: 96, column: 15, scope: !264)
!274 = !DILocation(line: 96, column: 30, scope: !264)
!275 = !DILocation(line: 96, column: 10, scope: !264)
!276 = !DILocation(line: 96, column: 8, scope: !264)
!277 = !DILocation(line: 97, column: 16, scope: !264)
!278 = !DILocation(line: 97, column: 20, scope: !264)
!279 = !DILocation(line: 97, column: 11, scope: !264)
!280 = !DILocation(line: 97, column: 14, scope: !264)
!281 = !DILocation(line: 98, column: 16, scope: !264)
!282 = !DILocation(line: 98, column: 20, scope: !264)
!283 = !DILocation(line: 98, column: 11, scope: !264)
!284 = !DILocation(line: 98, column: 14, scope: !264)
!285 = !DILocation(line: 101, column: 16, scope: !264)
!286 = !DILocation(line: 101, column: 10, scope: !264)
!287 = !DILocation(line: 101, column: 8, scope: !264)
!288 = !DILocation(line: 102, column: 17, scope: !264)
!289 = !DILocation(line: 102, column: 11, scope: !264)
!290 = !DILocation(line: 102, column: 20, scope: !264)
!291 = !DILocation(line: 102, column: 8, scope: !264)
!292 = !DILocation(line: 103, column: 11, scope: !264)
!293 = !DILocation(line: 103, column: 17, scope: !264)
!294 = !DILocation(line: 103, column: 15, scope: !264)
!295 = !DILocation(line: 103, column: 31, scope: !264)
!296 = !DILocation(line: 103, column: 10, scope: !264)
!297 = !DILocation(line: 103, column: 8, scope: !264)
!298 = !DILocation(line: 104, column: 16, scope: !264)
!299 = !DILocation(line: 104, column: 20, scope: !264)
!300 = !DILocation(line: 104, column: 11, scope: !264)
!301 = !DILocation(line: 104, column: 14, scope: !264)
!302 = !DILocation(line: 105, column: 16, scope: !264)
!303 = !DILocation(line: 105, column: 20, scope: !264)
!304 = !DILocation(line: 105, column: 11, scope: !264)
!305 = !DILocation(line: 105, column: 14, scope: !264)
!306 = !DILocation(line: 91, column: 3, scope: !307)
!307 = !DILexicalBlockFile(scope: !251, file: !30, discriminator: 2)
!308 = distinct !{!308, !255}
!309 = !DILocation(line: 111, column: 9, scope: !154)
!310 = !DILocation(line: 111, column: 22, scope: !154)
!311 = !DILocation(line: 111, column: 36, scope: !154)
!312 = !DILocation(line: 111, column: 44, scope: !154)
!313 = !DILocation(line: 111, column: 60, scope: !154)
!314 = !DILocation(line: 111, column: 68, scope: !154)
!315 = !DILocation(line: 109, column: 2, scope: !154)
!316 = !DILocation(line: 112, column: 1, scope: !154)
!317 = !DILocation(line: 112, column: 1, scope: !318)
!318 = !DILexicalBlockFile(scope: !154, file: !30, discriminator: 1)
!319 = distinct !DISubprogram(name: "rdpsnd_dsp_swapbytes", scope: !30, file: !30, line: 115, type: !155, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!320 = !DILocalVariable(name: "buffer", arg: 1, scope: !319, file: !30, line: 115, type: !24)
!321 = !DILocation(line: 115, column: 37, scope: !319)
!322 = !DILocalVariable(name: "size", arg: 2, scope: !319, file: !30, line: 115, type: !42)
!323 = !DILocation(line: 115, column: 58, scope: !319)
!324 = !DILocalVariable(name: "format", arg: 3, scope: !319, file: !30, line: 115, type: !95)
!325 = !DILocation(line: 115, column: 82, scope: !319)
!326 = !DILocalVariable(name: "i", scope: !319, file: !30, line: 117, type: !23)
!327 = !DILocation(line: 117, column: 6, scope: !319)
!328 = !DILocalVariable(name: "swap", scope: !319, file: !30, line: 118, type: !111)
!329 = !DILocation(line: 118, column: 8, scope: !319)
!330 = !DILocation(line: 120, column: 6, scope: !331)
!331 = distinct !DILexicalBlock(scope: !319, file: !30, line: 120, column: 6)
!332 = !DILocation(line: 120, column: 14, scope: !331)
!333 = !DILocation(line: 120, column: 29, scope: !331)
!334 = !DILocation(line: 120, column: 6, scope: !319)
!335 = !DILocation(line: 121, column: 3, scope: !331)
!336 = !DILocation(line: 123, column: 6, scope: !337)
!337 = distinct !DILexicalBlock(scope: !319, file: !30, line: 123, column: 6)
!338 = !DILocation(line: 123, column: 11, scope: !337)
!339 = !DILocation(line: 123, column: 6, scope: !319)
!340 = !DILocation(line: 124, column: 3, scope: !337)
!341 = !DILocation(line: 126, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !319, file: !30, line: 126, column: 2)
!343 = !DILocation(line: 126, column: 7, scope: !342)
!344 = !DILocation(line: 126, column: 14, scope: !345)
!345 = !DILexicalBlockFile(scope: !346, file: !30, discriminator: 1)
!346 = distinct !DILexicalBlock(scope: !342, file: !30, line: 126, column: 2)
!347 = !DILocation(line: 126, column: 24, scope: !345)
!348 = !DILocation(line: 126, column: 16, scope: !345)
!349 = !DILocation(line: 126, column: 2, scope: !345)
!350 = !DILocation(line: 128, column: 12, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !30, line: 127, column: 2)
!352 = !DILocation(line: 128, column: 21, scope: !351)
!353 = !DILocation(line: 128, column: 19, scope: !351)
!354 = !DILocation(line: 128, column: 10, scope: !351)
!355 = !DILocation(line: 128, column: 8, scope: !351)
!356 = !DILocation(line: 129, column: 21, scope: !351)
!357 = !DILocation(line: 129, column: 30, scope: !351)
!358 = !DILocation(line: 129, column: 28, scope: !351)
!359 = !DILocation(line: 129, column: 32, scope: !351)
!360 = !DILocation(line: 129, column: 19, scope: !351)
!361 = !DILocation(line: 129, column: 5, scope: !351)
!362 = !DILocation(line: 129, column: 14, scope: !351)
!363 = !DILocation(line: 129, column: 12, scope: !351)
!364 = !DILocation(line: 129, column: 17, scope: !351)
!365 = !DILocation(line: 130, column: 23, scope: !351)
!366 = !DILocation(line: 130, column: 5, scope: !351)
!367 = !DILocation(line: 130, column: 14, scope: !351)
!368 = !DILocation(line: 130, column: 12, scope: !351)
!369 = !DILocation(line: 130, column: 16, scope: !351)
!370 = !DILocation(line: 130, column: 21, scope: !351)
!371 = !DILocation(line: 131, column: 2, scope: !351)
!372 = !DILocation(line: 126, column: 32, scope: !373)
!373 = !DILexicalBlockFile(scope: !346, file: !30, discriminator: 2)
!374 = !DILocation(line: 126, column: 2, scope: !373)
!375 = distinct !{!375, !376}
!376 = !DILocation(line: 126, column: 2, scope: !319)
!377 = !DILocation(line: 132, column: 1, scope: !319)
!378 = distinct !DISubprogram(name: "rdpsnd_dsp_resample_set", scope: !30, file: !30, line: 135, type: !379, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!379 = !DISubroutineType(types: !380)
!380 = !{!85, !104, !100, !100}
!381 = !DILocalVariable(name: "device_srate", arg: 1, scope: !378, file: !30, line: 135, type: !104)
!382 = !DILocation(line: 135, column: 32, scope: !378)
!383 = !DILocalVariable(name: "device_bitspersample", arg: 2, scope: !378, file: !30, line: 135, type: !100)
!384 = !DILocation(line: 135, column: 53, scope: !378)
!385 = !DILocalVariable(name: "device_channels", arg: 3, scope: !378, file: !30, line: 135, type: !100)
!386 = !DILocation(line: 135, column: 82, scope: !378)
!387 = !DILocation(line: 141, column: 6, scope: !388)
!388 = distinct !DILexicalBlock(scope: !378, file: !30, line: 141, column: 6)
!389 = !DILocation(line: 141, column: 27, scope: !388)
!390 = !DILocation(line: 141, column: 33, scope: !388)
!391 = !DILocation(line: 141, column: 36, scope: !392)
!392 = !DILexicalBlockFile(scope: !388, file: !30, discriminator: 1)
!393 = !DILocation(line: 141, column: 57, scope: !392)
!394 = !DILocation(line: 141, column: 6, scope: !392)
!395 = !DILocation(line: 142, column: 3, scope: !388)
!396 = !DILocation(line: 144, column: 6, scope: !397)
!397 = distinct !DILexicalBlock(scope: !378, file: !30, line: 144, column: 6)
!398 = !DILocation(line: 144, column: 22, scope: !397)
!399 = !DILocation(line: 144, column: 27, scope: !397)
!400 = !DILocation(line: 144, column: 30, scope: !401)
!401 = !DILexicalBlockFile(scope: !397, file: !30, discriminator: 1)
!402 = !DILocation(line: 144, column: 46, scope: !401)
!403 = !DILocation(line: 144, column: 6, scope: !401)
!404 = !DILocation(line: 145, column: 3, scope: !397)
!405 = !DILocation(line: 147, column: 22, scope: !378)
!406 = !DILocation(line: 147, column: 20, scope: !378)
!407 = !DILocation(line: 148, column: 30, scope: !378)
!408 = !DILocation(line: 148, column: 28, scope: !378)
!409 = !DILocation(line: 149, column: 25, scope: !378)
!410 = !DILocation(line: 149, column: 23, scope: !378)
!411 = !DILocation(line: 162, column: 2, scope: !378)
!412 = !DILocation(line: 163, column: 1, scope: !378)
!413 = distinct !DISubprogram(name: "rdpsnd_dsp_resample_supported", scope: !30, file: !30, line: 166, type: !93, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!414 = !DILocalVariable(name: "format", arg: 1, scope: !413, file: !30, line: 166, type: !95)
!415 = !DILocation(line: 166, column: 49, scope: !413)
!416 = !DILocation(line: 168, column: 6, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !30, line: 168, column: 6)
!418 = !DILocation(line: 168, column: 14, scope: !417)
!419 = !DILocation(line: 168, column: 25, scope: !417)
!420 = !DILocation(line: 168, column: 6, scope: !413)
!421 = !DILocation(line: 169, column: 3, scope: !417)
!422 = !DILocation(line: 170, column: 7, scope: !423)
!423 = distinct !DILexicalBlock(scope: !413, file: !30, line: 170, column: 6)
!424 = !DILocation(line: 170, column: 15, scope: !423)
!425 = !DILocation(line: 170, column: 25, scope: !423)
!426 = !DILocation(line: 170, column: 31, scope: !423)
!427 = !DILocation(line: 170, column: 35, scope: !428)
!428 = !DILexicalBlockFile(scope: !423, file: !30, discriminator: 1)
!429 = !DILocation(line: 170, column: 43, scope: !428)
!430 = !DILocation(line: 170, column: 53, scope: !428)
!431 = !DILocation(line: 170, column: 6, scope: !428)
!432 = !DILocation(line: 171, column: 3, scope: !423)
!433 = !DILocation(line: 172, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !413, file: !30, line: 172, column: 6)
!435 = !DILocation(line: 172, column: 15, scope: !434)
!436 = !DILocation(line: 172, column: 30, scope: !434)
!437 = !DILocation(line: 172, column: 36, scope: !434)
!438 = !DILocation(line: 172, column: 40, scope: !439)
!439 = !DILexicalBlockFile(scope: !434, file: !30, discriminator: 1)
!440 = !DILocation(line: 172, column: 48, scope: !439)
!441 = !DILocation(line: 172, column: 63, scope: !439)
!442 = !DILocation(line: 172, column: 6, scope: !439)
!443 = !DILocation(line: 173, column: 3, scope: !434)
!444 = !DILocation(line: 175, column: 2, scope: !413)
!445 = !DILocation(line: 176, column: 1, scope: !413)
!446 = distinct !DISubprogram(name: "rdpsnd_dsp_resample", scope: !30, file: !30, line: 179, type: !447, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !131)
!447 = !DISubroutineType(types: !448)
!448 = !{!104, !449, !24, !42, !95, !85}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!450 = !DILocalVariable(name: "out", arg: 1, scope: !446, file: !30, line: 179, type: !449)
!451 = !DILocation(line: 179, column: 37, scope: !446)
!452 = !DILocalVariable(name: "in", arg: 2, scope: !446, file: !30, line: 179, type: !24)
!453 = !DILocation(line: 179, column: 57, scope: !446)
!454 = !DILocalVariable(name: "size", arg: 3, scope: !446, file: !30, line: 179, type: !42)
!455 = !DILocation(line: 179, column: 74, scope: !446)
!456 = !DILocalVariable(name: "format", arg: 4, scope: !446, file: !30, line: 180, type: !95)
!457 = !DILocation(line: 180, column: 25, scope: !446)
!458 = !DILocalVariable(name: "stream_be", arg: 5, scope: !446, file: !30, line: 180, type: !85)
!459 = !DILocation(line: 180, column: 41, scope: !446)
!460 = !DILocation(line: 182, column: 9, scope: !446)
!461 = !DILocalVariable(name: "ratio1k", scope: !446, file: !30, line: 188, type: !23)
!462 = !DILocation(line: 188, column: 6, scope: !446)
!463 = !DILocation(line: 188, column: 17, scope: !446)
!464 = !DILocation(line: 188, column: 35, scope: !446)
!465 = !DILocation(line: 188, column: 45, scope: !446)
!466 = !DILocation(line: 188, column: 53, scope: !446)
!467 = !DILocation(line: 188, column: 43, scope: !446)
!468 = !DILocalVariable(name: "innum", scope: !446, file: !30, line: 190, type: !23)
!469 = !DILocation(line: 190, column: 6, scope: !446)
!470 = !DILocalVariable(name: "outnum", scope: !446, file: !30, line: 190, type: !23)
!471 = !DILocation(line: 190, column: 13, scope: !446)
!472 = !DILocalVariable(name: "tmpdata", scope: !446, file: !30, line: 191, type: !24)
!473 = !DILocation(line: 191, column: 17, scope: !446)
!474 = !DILocalVariable(name: "tmp", scope: !446, file: !30, line: 191, type: !24)
!475 = !DILocation(line: 191, column: 33, scope: !446)
!476 = !DILocalVariable(name: "samplewidth", scope: !446, file: !30, line: 192, type: !23)
!477 = !DILocation(line: 192, column: 6, scope: !446)
!478 = !DILocation(line: 192, column: 20, scope: !446)
!479 = !DILocation(line: 192, column: 28, scope: !446)
!480 = !DILocation(line: 192, column: 43, scope: !446)
!481 = !DILocalVariable(name: "outsize", scope: !446, file: !30, line: 193, type: !23)
!482 = !DILocation(line: 193, column: 6, scope: !446)
!483 = !DILocalVariable(name: "i", scope: !446, file: !30, line: 194, type: !23)
!484 = !DILocation(line: 194, column: 6, scope: !446)
!485 = !DILocation(line: 196, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !446, file: !30, line: 196, column: 6)
!487 = !DILocation(line: 196, column: 36, scope: !486)
!488 = !DILocation(line: 196, column: 44, scope: !486)
!489 = !DILocation(line: 196, column: 33, scope: !486)
!490 = !DILocation(line: 196, column: 60, scope: !486)
!491 = !DILocation(line: 197, column: 7, scope: !486)
!492 = !DILocation(line: 197, column: 31, scope: !486)
!493 = !DILocation(line: 197, column: 39, scope: !486)
!494 = !DILocation(line: 197, column: 28, scope: !486)
!495 = !DILocation(line: 197, column: 50, scope: !486)
!496 = !DILocation(line: 198, column: 7, scope: !486)
!497 = !DILocation(line: 198, column: 28, scope: !486)
!498 = !DILocation(line: 198, column: 36, scope: !486)
!499 = !DILocation(line: 198, column: 25, scope: !486)
!500 = !DILocation(line: 196, column: 6, scope: !501)
!501 = !DILexicalBlockFile(scope: !446, file: !30, discriminator: 1)
!502 = !DILocation(line: 199, column: 3, scope: !486)
!503 = !DILocation(line: 206, column: 6, scope: !504)
!504 = distinct !DILexicalBlock(scope: !446, file: !30, line: 206, column: 6)
!505 = !DILocation(line: 206, column: 30, scope: !504)
!506 = !DILocation(line: 206, column: 38, scope: !504)
!507 = !DILocation(line: 206, column: 27, scope: !504)
!508 = !DILocation(line: 206, column: 6, scope: !446)
!509 = !DILocalVariable(name: "newsize", scope: !510, file: !30, line: 208, type: !23)
!510 = distinct !DILexicalBlock(scope: !504, file: !30, line: 207, column: 2)
!511 = !DILocation(line: 208, column: 7, scope: !510)
!512 = !DILocation(line: 208, column: 18, scope: !510)
!513 = !DILocation(line: 208, column: 25, scope: !510)
!514 = !DILocation(line: 208, column: 33, scope: !510)
!515 = !DILocation(line: 208, column: 23, scope: !510)
!516 = !DILocation(line: 208, column: 46, scope: !510)
!517 = !DILocation(line: 208, column: 44, scope: !510)
!518 = !DILocation(line: 209, column: 39, scope: !510)
!519 = !DILocation(line: 209, column: 31, scope: !510)
!520 = !DILocation(line: 209, column: 11, scope: !510)
!521 = !DILocation(line: 211, column: 10, scope: !522)
!522 = distinct !DILexicalBlock(scope: !510, file: !30, line: 211, column: 3)
!523 = !DILocation(line: 211, column: 8, scope: !522)
!524 = !DILocation(line: 211, column: 15, scope: !525)
!525 = !DILexicalBlockFile(scope: !526, file: !30, discriminator: 1)
!526 = distinct !DILexicalBlock(scope: !522, file: !30, line: 211, column: 3)
!527 = !DILocation(line: 211, column: 19, scope: !525)
!528 = !DILocation(line: 211, column: 29, scope: !525)
!529 = !DILocation(line: 211, column: 27, scope: !525)
!530 = !DILocation(line: 211, column: 17, scope: !525)
!531 = !DILocation(line: 211, column: 3, scope: !525)
!532 = !DILocation(line: 213, column: 8, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !30, line: 213, column: 8)
!534 = distinct !DILexicalBlock(scope: !526, file: !30, line: 212, column: 3)
!535 = !DILocation(line: 213, column: 16, scope: !533)
!536 = !DILocation(line: 213, column: 28, scope: !533)
!537 = !DILocation(line: 213, column: 26, scope: !533)
!538 = !DILocation(line: 213, column: 8, scope: !534)
!539 = !DILocation(line: 214, column: 12, scope: !533)
!540 = !DILocation(line: 214, column: 23, scope: !533)
!541 = !DILocation(line: 214, column: 27, scope: !533)
!542 = !DILocation(line: 214, column: 25, scope: !533)
!543 = !DILocation(line: 214, column: 20, scope: !533)
!544 = !DILocation(line: 215, column: 12, scope: !533)
!545 = !DILocation(line: 216, column: 15, scope: !533)
!546 = !DILocation(line: 216, column: 19, scope: !533)
!547 = !DILocation(line: 216, column: 27, scope: !533)
!548 = !DILocation(line: 216, column: 17, scope: !533)
!549 = !DILocation(line: 216, column: 40, scope: !533)
!550 = !DILocation(line: 216, column: 38, scope: !533)
!551 = !DILocation(line: 217, column: 6, scope: !533)
!552 = !DILocation(line: 216, column: 62, scope: !533)
!553 = !DILocation(line: 215, column: 15, scope: !533)
!554 = !DILocation(line: 217, column: 20, scope: !533)
!555 = !DILocation(line: 214, column: 5, scope: !533)
!556 = !DILocation(line: 219, column: 12, scope: !533)
!557 = !DILocation(line: 219, column: 23, scope: !533)
!558 = !DILocation(line: 219, column: 27, scope: !533)
!559 = !DILocation(line: 219, column: 25, scope: !533)
!560 = !DILocation(line: 219, column: 20, scope: !533)
!561 = !DILocation(line: 220, column: 12, scope: !533)
!562 = !DILocation(line: 221, column: 15, scope: !533)
!563 = !DILocation(line: 221, column: 19, scope: !533)
!564 = !DILocation(line: 221, column: 17, scope: !533)
!565 = !DILocation(line: 221, column: 43, scope: !533)
!566 = !DILocation(line: 221, column: 51, scope: !533)
!567 = !DILocation(line: 221, column: 41, scope: !533)
!568 = !DILocation(line: 222, column: 8, scope: !533)
!569 = !DILocation(line: 222, column: 12, scope: !533)
!570 = !DILocation(line: 222, column: 20, scope: !533)
!571 = !DILocation(line: 222, column: 10, scope: !533)
!572 = !DILocation(line: 221, column: 61, scope: !533)
!573 = !DILocation(line: 222, column: 34, scope: !533)
!574 = !DILocation(line: 222, column: 32, scope: !533)
!575 = !DILocation(line: 220, column: 15, scope: !533)
!576 = !DILocation(line: 222, column: 48, scope: !533)
!577 = !DILocation(line: 219, column: 5, scope: !533)
!578 = !DILocation(line: 224, column: 3, scope: !534)
!579 = !DILocation(line: 211, column: 43, scope: !580)
!580 = !DILexicalBlockFile(scope: !526, file: !30, discriminator: 2)
!581 = !DILocation(line: 211, column: 3, scope: !580)
!582 = distinct !{!582, !583}
!583 = !DILocation(line: 211, column: 3, scope: !510)
!584 = !DILocation(line: 226, column: 8, scope: !510)
!585 = !DILocation(line: 226, column: 6, scope: !510)
!586 = !DILocation(line: 227, column: 10, scope: !510)
!587 = !DILocation(line: 227, column: 8, scope: !510)
!588 = !DILocation(line: 228, column: 2, scope: !510)
!589 = !DILocation(line: 233, column: 6, scope: !590)
!590 = distinct !DILexicalBlock(scope: !446, file: !30, line: 233, column: 6)
!591 = !DILocation(line: 233, column: 14, scope: !590)
!592 = !DILocation(line: 233, column: 32, scope: !590)
!593 = !DILocation(line: 233, column: 29, scope: !590)
!594 = !DILocation(line: 233, column: 6, scope: !446)
!595 = !DILocation(line: 237, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !30, line: 237, column: 7)
!597 = distinct !DILexicalBlock(scope: !590, file: !30, line: 235, column: 2)
!598 = !DILocation(line: 237, column: 15, scope: !596)
!599 = !DILocation(line: 237, column: 30, scope: !596)
!600 = !DILocation(line: 237, column: 7, scope: !597)
!601 = !DILocation(line: 239, column: 10, scope: !602)
!602 = distinct !DILexicalBlock(scope: !596, file: !30, line: 238, column: 3)
!603 = !DILocation(line: 239, column: 8, scope: !602)
!604 = !DILocation(line: 240, column: 40, scope: !602)
!605 = !DILocation(line: 240, column: 45, scope: !602)
!606 = !DILocation(line: 240, column: 32, scope: !602)
!607 = !DILocation(line: 240, column: 12, scope: !602)
!608 = !DILocation(line: 241, column: 11, scope: !609)
!609 = distinct !DILexicalBlock(scope: !602, file: !30, line: 241, column: 4)
!610 = !DILocation(line: 241, column: 9, scope: !609)
!611 = !DILocation(line: 241, column: 16, scope: !612)
!612 = !DILexicalBlockFile(scope: !613, file: !30, discriminator: 1)
!613 = distinct !DILexicalBlock(scope: !609, file: !30, line: 241, column: 4)
!614 = !DILocation(line: 241, column: 26, scope: !612)
!615 = !DILocation(line: 241, column: 18, scope: !612)
!616 = !DILocation(line: 241, column: 4, scope: !612)
!617 = !DILocation(line: 243, column: 25, scope: !618)
!618 = distinct !DILexicalBlock(scope: !613, file: !30, line: 242, column: 4)
!619 = !DILocation(line: 243, column: 22, scope: !618)
!620 = !DILocation(line: 243, column: 13, scope: !618)
!621 = !DILocation(line: 243, column: 15, scope: !618)
!622 = !DILocation(line: 243, column: 5, scope: !618)
!623 = !DILocation(line: 243, column: 20, scope: !618)
!624 = !DILocation(line: 244, column: 14, scope: !618)
!625 = !DILocation(line: 244, column: 16, scope: !618)
!626 = !DILocation(line: 244, column: 21, scope: !618)
!627 = !DILocation(line: 244, column: 5, scope: !618)
!628 = !DILocation(line: 244, column: 26, scope: !618)
!629 = !DILocation(line: 245, column: 4, scope: !618)
!630 = !DILocation(line: 241, column: 33, scope: !631)
!631 = !DILexicalBlockFile(scope: !613, file: !30, discriminator: 2)
!632 = !DILocation(line: 241, column: 4, scope: !631)
!633 = distinct !{!633, !634}
!634 = !DILocation(line: 241, column: 4, scope: !602)
!635 = !DILocation(line: 246, column: 9, scope: !602)
!636 = !DILocation(line: 246, column: 7, scope: !602)
!637 = !DILocation(line: 247, column: 16, scope: !602)
!638 = !DILocation(line: 248, column: 9, scope: !602)
!639 = !DILocation(line: 250, column: 8, scope: !640)
!640 = distinct !DILexicalBlock(scope: !602, file: !30, line: 250, column: 8)
!641 = !DILocation(line: 250, column: 12, scope: !640)
!642 = !DILocation(line: 250, column: 8, scope: !602)
!643 = !DILocation(line: 251, column: 11, scope: !640)
!644 = !DILocation(line: 251, column: 5, scope: !640)
!645 = !DILocation(line: 252, column: 3, scope: !602)
!646 = !DILocation(line: 253, column: 2, scope: !597)
!647 = !DILocation(line: 255, column: 10, scope: !446)
!648 = !DILocation(line: 255, column: 17, scope: !446)
!649 = !DILocation(line: 255, column: 15, scope: !446)
!650 = !DILocation(line: 255, column: 8, scope: !446)
!651 = !DILocation(line: 295, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !446, file: !30, line: 295, column: 6)
!653 = !DILocation(line: 295, column: 26, scope: !652)
!654 = !DILocation(line: 295, column: 34, scope: !652)
!655 = !DILocation(line: 295, column: 24, scope: !652)
!656 = !DILocation(line: 295, column: 6, scope: !446)
!657 = !DILocation(line: 297, column: 3, scope: !658)
!658 = distinct !DILexicalBlock(scope: !652, file: !30, line: 296, column: 2)
!659 = !DILocation(line: 299, column: 3, scope: !658)
!660 = !DILocation(line: 302, column: 12, scope: !446)
!661 = !DILocation(line: 302, column: 20, scope: !446)
!662 = !DILocation(line: 302, column: 18, scope: !446)
!663 = !DILocation(line: 302, column: 29, scope: !446)
!664 = !DILocation(line: 302, column: 9, scope: !446)
!665 = !DILocation(line: 304, column: 12, scope: !446)
!666 = !DILocation(line: 304, column: 21, scope: !446)
!667 = !DILocation(line: 304, column: 19, scope: !446)
!668 = !DILocation(line: 304, column: 10, scope: !446)
!669 = !DILocation(line: 305, column: 35, scope: !446)
!670 = !DILocation(line: 305, column: 27, scope: !446)
!671 = !DILocation(line: 305, column: 3, scope: !446)
!672 = !DILocation(line: 305, column: 7, scope: !446)
!673 = !DILocation(line: 306, column: 9, scope: !446)
!674 = !DILocation(line: 306, column: 8, scope: !446)
!675 = !DILocation(line: 306, column: 14, scope: !446)
!676 = !DILocation(line: 306, column: 2, scope: !446)
!677 = !DILocation(line: 308, column: 9, scope: !678)
!678 = distinct !DILexicalBlock(scope: !446, file: !30, line: 308, column: 2)
!679 = !DILocation(line: 308, column: 7, scope: !678)
!680 = !DILocation(line: 308, column: 14, scope: !681)
!681 = !DILexicalBlockFile(scope: !682, file: !30, discriminator: 1)
!682 = distinct !DILexicalBlock(scope: !678, file: !30, line: 308, column: 2)
!683 = !DILocation(line: 308, column: 18, scope: !681)
!684 = !DILocation(line: 308, column: 29, scope: !681)
!685 = !DILocation(line: 308, column: 52, scope: !681)
!686 = !DILocation(line: 308, column: 50, scope: !681)
!687 = !DILocation(line: 308, column: 26, scope: !681)
!688 = !DILocation(line: 308, column: 16, scope: !681)
!689 = !DILocation(line: 308, column: 2, scope: !681)
!690 = !DILocalVariable(name: "source", scope: !691, file: !30, line: 310, type: !23)
!691 = distinct !DILexicalBlock(scope: !682, file: !30, line: 309, column: 2)
!692 = !DILocation(line: 310, column: 7, scope: !691)
!693 = !DILocation(line: 310, column: 17, scope: !691)
!694 = !DILocation(line: 310, column: 19, scope: !691)
!695 = !DILocation(line: 310, column: 29, scope: !691)
!696 = !DILocation(line: 310, column: 27, scope: !691)
!697 = !DILocalVariable(name: "j", scope: !691, file: !30, line: 314, type: !23)
!698 = !DILocation(line: 314, column: 7, scope: !691)
!699 = !DILocation(line: 316, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !691, file: !30, line: 316, column: 7)
!701 = !DILocation(line: 316, column: 16, scope: !700)
!702 = !DILocation(line: 316, column: 14, scope: !700)
!703 = !DILocation(line: 316, column: 39, scope: !700)
!704 = !DILocation(line: 316, column: 37, scope: !700)
!705 = !DILocation(line: 316, column: 59, scope: !700)
!706 = !DILocation(line: 316, column: 51, scope: !700)
!707 = !DILocation(line: 316, column: 7, scope: !691)
!708 = !DILocation(line: 317, column: 4, scope: !700)
!709 = !DILocation(line: 357, column: 10, scope: !710)
!710 = distinct !DILexicalBlock(scope: !691, file: !30, line: 357, column: 3)
!711 = !DILocation(line: 357, column: 8, scope: !710)
!712 = !DILocation(line: 357, column: 15, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !30, discriminator: 1)
!714 = distinct !DILexicalBlock(scope: !710, file: !30, line: 357, column: 3)
!715 = !DILocation(line: 357, column: 19, scope: !713)
!716 = !DILocation(line: 357, column: 17, scope: !713)
!717 = !DILocation(line: 357, column: 3, scope: !713)
!718 = !DILocation(line: 359, column: 12, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !30, line: 358, column: 3)
!720 = !DILocation(line: 359, column: 11, scope: !719)
!721 = !DILocation(line: 359, column: 19, scope: !719)
!722 = !DILocation(line: 359, column: 23, scope: !719)
!723 = !DILocation(line: 359, column: 21, scope: !719)
!724 = !DILocation(line: 359, column: 46, scope: !719)
!725 = !DILocation(line: 359, column: 44, scope: !719)
!726 = !DILocation(line: 359, column: 16, scope: !719)
!727 = !DILocation(line: 359, column: 62, scope: !719)
!728 = !DILocation(line: 359, column: 76, scope: !719)
!729 = !DILocation(line: 359, column: 74, scope: !719)
!730 = !DILocation(line: 359, column: 59, scope: !719)
!731 = !DILocation(line: 360, column: 11, scope: !719)
!732 = !DILocation(line: 360, column: 17, scope: !719)
!733 = !DILocation(line: 360, column: 26, scope: !719)
!734 = !DILocation(line: 360, column: 24, scope: !719)
!735 = !DILocation(line: 360, column: 49, scope: !719)
!736 = !DILocation(line: 360, column: 47, scope: !719)
!737 = !DILocation(line: 360, column: 14, scope: !719)
!738 = !DILocation(line: 361, column: 12, scope: !719)
!739 = !DILocation(line: 361, column: 26, scope: !719)
!740 = !DILocation(line: 361, column: 24, scope: !719)
!741 = !DILocation(line: 360, column: 62, scope: !719)
!742 = !DILocation(line: 361, column: 30, scope: !719)
!743 = !DILocation(line: 359, column: 4, scope: !719)
!744 = !DILocation(line: 362, column: 3, scope: !719)
!745 = !DILocation(line: 357, column: 42, scope: !746)
!746 = !DILexicalBlockFile(scope: !714, file: !30, discriminator: 2)
!747 = !DILocation(line: 357, column: 3, scope: !746)
!748 = distinct !{!748, !749}
!749 = !DILocation(line: 357, column: 3, scope: !691)
!750 = !DILocation(line: 364, column: 2, scope: !691)
!751 = !DILocation(line: 308, column: 67, scope: !752)
!752 = !DILexicalBlockFile(scope: !682, file: !30, discriminator: 2)
!753 = !DILocation(line: 308, column: 2, scope: !752)
!754 = distinct !{!754, !755}
!755 = !DILocation(line: 308, column: 2, scope: !446)
!756 = !DILocation(line: 365, column: 12, scope: !446)
!757 = !DILocation(line: 365, column: 16, scope: !446)
!758 = !DILocation(line: 365, column: 14, scope: !446)
!759 = !DILocation(line: 365, column: 39, scope: !446)
!760 = !DILocation(line: 365, column: 37, scope: !446)
!761 = !DILocation(line: 365, column: 10, scope: !446)
!762 = !DILocation(line: 368, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !446, file: !30, line: 368, column: 6)
!764 = !DILocation(line: 368, column: 14, scope: !763)
!765 = !DILocation(line: 368, column: 6, scope: !446)
!766 = !DILocation(line: 369, column: 9, scope: !763)
!767 = !DILocation(line: 369, column: 3, scope: !763)
!768 = !DILocation(line: 373, column: 6, scope: !769)
!769 = distinct !DILexicalBlock(scope: !446, file: !30, line: 373, column: 6)
!770 = !DILocation(line: 373, column: 14, scope: !769)
!771 = !DILocation(line: 373, column: 32, scope: !769)
!772 = !DILocation(line: 373, column: 29, scope: !769)
!773 = !DILocation(line: 373, column: 6, scope: !446)
!774 = !DILocation(line: 377, column: 7, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !30, line: 377, column: 7)
!776 = distinct !DILexicalBlock(scope: !769, file: !30, line: 375, column: 2)
!777 = !DILocation(line: 377, column: 33, scope: !775)
!778 = !DILocation(line: 377, column: 7, scope: !776)
!779 = !DILocation(line: 379, column: 11, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !30, line: 379, column: 4)
!781 = distinct !DILexicalBlock(scope: !775, file: !30, line: 378, column: 3)
!782 = !DILocation(line: 379, column: 9, scope: !780)
!783 = !DILocation(line: 379, column: 16, scope: !784)
!784 = !DILexicalBlockFile(scope: !785, file: !30, discriminator: 1)
!785 = distinct !DILexicalBlock(scope: !780, file: !30, line: 379, column: 4)
!786 = !DILocation(line: 379, column: 20, scope: !784)
!787 = !DILocation(line: 379, column: 18, scope: !784)
!788 = !DILocation(line: 379, column: 4, scope: !784)
!789 = !DILocation(line: 381, column: 20, scope: !790)
!790 = distinct !DILexicalBlock(scope: !785, file: !30, line: 380, column: 4)
!791 = !DILocation(line: 381, column: 22, scope: !790)
!792 = !DILocation(line: 381, column: 16, scope: !790)
!793 = !DILocation(line: 381, column: 15, scope: !790)
!794 = !DILocation(line: 381, column: 10, scope: !790)
!795 = !DILocation(line: 381, column: 6, scope: !790)
!796 = !DILocation(line: 381, column: 13, scope: !790)
!797 = !DILocation(line: 382, column: 4, scope: !790)
!798 = !DILocation(line: 379, column: 30, scope: !799)
!799 = !DILexicalBlockFile(scope: !785, file: !30, discriminator: 2)
!800 = !DILocation(line: 379, column: 4, scope: !799)
!801 = distinct !{!801, !802}
!802 = !DILocation(line: 379, column: 4, scope: !781)
!803 = !DILocation(line: 383, column: 12, scope: !781)
!804 = !DILocation(line: 384, column: 3, scope: !781)
!805 = !DILocation(line: 385, column: 2, scope: !776)
!806 = !DILocation(line: 391, column: 9, scope: !446)
!807 = !DILocation(line: 391, column: 2, scope: !446)
!808 = !DILocation(line: 392, column: 1, scope: !446)
!809 = !DILocalVariable(name: "data", arg: 1, scope: !29, file: !30, line: 395, type: !24)
!810 = !DILocation(line: 395, column: 35, scope: !29)
!811 = !DILocalVariable(name: "size", arg: 2, scope: !29, file: !30, line: 395, type: !42)
!812 = !DILocation(line: 395, column: 54, scope: !29)
!813 = !DILocalVariable(name: "current_driver", arg: 3, scope: !29, file: !30, line: 395, type: !48)
!814 = !DILocation(line: 395, column: 82, scope: !29)
!815 = !DILocalVariable(name: "format", arg: 4, scope: !29, file: !30, line: 396, type: !95)
!816 = !DILocation(line: 396, column: 24, scope: !29)
!817 = !DILocalVariable(name: "stream_be", scope: !29, file: !30, line: 399, type: !85)
!818 = !DILocation(line: 399, column: 10, scope: !29)
!819 = !DILocation(line: 403, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !29, file: !30, line: 403, column: 6)
!821 = !DILocation(line: 403, column: 22, scope: !820)
!822 = !DILocation(line: 403, column: 38, scope: !820)
!823 = !DILocation(line: 403, column: 6, scope: !29)
!824 = !DILocation(line: 404, column: 22, scope: !820)
!825 = !DILocation(line: 404, column: 28, scope: !820)
!826 = !DILocation(line: 404, column: 34, scope: !820)
!827 = !DILocation(line: 404, column: 3, scope: !820)
!828 = !DILocation(line: 414, column: 11, scope: !29)
!829 = !DILocation(line: 416, column: 6, scope: !830)
!830 = distinct !DILexicalBlock(scope: !29, file: !30, line: 416, column: 6)
!831 = !DILocation(line: 416, column: 22, scope: !830)
!832 = !DILocation(line: 416, column: 6, scope: !29)
!833 = !DILocation(line: 417, column: 45, scope: !830)
!834 = !DILocation(line: 417, column: 51, scope: !830)
!835 = !DILocation(line: 417, column: 57, scope: !830)
!836 = !DILocation(line: 417, column: 65, scope: !830)
!837 = !DILocation(line: 417, column: 14, scope: !830)
!838 = !DILocation(line: 417, column: 12, scope: !830)
!839 = !DILocation(line: 417, column: 3, scope: !830)
!840 = !DILocation(line: 419, column: 10, scope: !841)
!841 = distinct !DILexicalBlock(scope: !29, file: !30, line: 419, column: 6)
!842 = !DILocation(line: 419, column: 15, scope: !841)
!843 = !DILocation(line: 419, column: 6, scope: !29)
!844 = !DILocation(line: 421, column: 40, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !30, line: 420, column: 2)
!846 = !DILocation(line: 421, column: 32, scope: !845)
!847 = !DILocation(line: 421, column: 12, scope: !845)
!848 = !DILocation(line: 422, column: 14, scope: !845)
!849 = !DILocation(line: 422, column: 20, scope: !845)
!850 = !DILocation(line: 422, column: 26, scope: !845)
!851 = !DILocation(line: 422, column: 3, scope: !845)
!852 = !DILocation(line: 423, column: 14, scope: !845)
!853 = !DILocation(line: 423, column: 12, scope: !845)
!854 = !DILocation(line: 424, column: 2, scope: !845)
!855 = !DILocation(line: 426, column: 14, scope: !29)
!856 = !DILocation(line: 426, column: 8, scope: !29)
!857 = !DILocation(line: 427, column: 16, scope: !29)
!858 = !DILocation(line: 427, column: 24, scope: !29)
!859 = !DILocation(line: 427, column: 18, scope: !29)
!860 = !DILocation(line: 427, column: 10, scope: !29)
!861 = !DILocation(line: 429, column: 2, scope: !29)
