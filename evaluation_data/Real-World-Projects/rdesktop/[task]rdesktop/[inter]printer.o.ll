; ModuleID = './[inter]printer.o.i'
source_filename = "./[inter]printer.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rdpdr_device_info = type { i32, i32, [8 x i8], i8*, i8* }
%struct._DEVICE_FNS = type { i32 (i32, i32, i32, i32, i32, i8*, i32*)*, i32 (i32)*, i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i32, %struct.stream*, %struct.stream*)* }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.rdpdr_printer_info = type { %struct._IO_FILE*, i8*, i8*, i32, i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@g_rdpdr_device = external global [0 x %struct.rdpdr_device_info], align 8
@.str = private unnamed_addr constant [4 x i8] c"PRN\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"mydeskjet\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"MS Publisher Imagesetter\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"printer_enum_devices(), %s to %s driver %s\00", align 1
@printer_fns = global %struct._DEVICE_FNS { i32 (i32, i32, i32, i32, i32, i8*, i32*)* @printer_create, i32 (i32)* @printer_close, i32 (i32, i8*, i32, i32, i32*)* null, i32 (i32, i8*, i32, i32, i32*)* @printer_write, i32 (i32, i32, %struct.stream*, %struct.stream*)* null }, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"lpr\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"lpr -P %s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @printer_enum_devices(i32*, i8*) #0 !dbg !148 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rdpdr_printer_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !152, metadata !153), !dbg !154
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !155, metadata !153), !dbg !156
  call void @llvm.dbg.declare(metadata %struct.rdpdr_printer_info** %5, metadata !157, metadata !153), !dbg !158
  call void @llvm.dbg.declare(metadata i8** %6, metadata !159, metadata !153), !dbg !160
  %10 = load i8*, i8** %4, align 8, !dbg !161
  store i8* %10, i8** %6, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i8** %7, metadata !162, metadata !153), !dbg !163
  call void @llvm.dbg.declare(metadata i64* %8, metadata !164, metadata !153), !dbg !165
  store i64 0, i64* %8, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata i32* %9, metadata !166, metadata !153), !dbg !167
  store i32 0, i32* %9, align 4, !dbg !167
  br label %11, !dbg !168

; <label>:11:                                     ; preds = %26, %2
  %12 = load i64, i64* %8, align 8, !dbg !169
  %13 = load i32*, i32** %3, align 8, !dbg !171
  %14 = load i32, i32* %13, align 4, !dbg !172
  %15 = zext i32 %14 to i64, !dbg !172
  %16 = icmp ult i64 %12, %15, !dbg !173
  br i1 %16, label %17, label %29, !dbg !174

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* %8, align 8, !dbg !175
  %19 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %18, !dbg !178
  %20 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %19, i32 0, i32 0, !dbg !179
  %21 = load i32, i32* %20, align 8, !dbg !179
  %22 = icmp eq i32 %21, 4, !dbg !180
  br i1 %22, label %23, label %26, !dbg !181

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %9, align 4, !dbg !182
  %25 = add nsw i32 %24, 1, !dbg !182
  store i32 %25, i32* %9, align 4, !dbg !182
  br label %26, !dbg !183

; <label>:26:                                     ; preds = %23, %17
  %27 = load i64, i64* %8, align 8, !dbg !184
  %28 = add i64 %27, 1, !dbg !184
  store i64 %28, i64* %8, align 8, !dbg !184
  br label %11, !dbg !185, !llvm.loop !187

; <label>:29:                                     ; preds = %11
  store i64 0, i64* %8, align 8, !dbg !188
  %30 = load i8*, i8** %4, align 8, !dbg !189
  %31 = load i8, i8* %30, align 1, !dbg !191
  %32 = sext i8 %31 to i32, !dbg !191
  %33 = icmp eq i32 %32, 58, !dbg !192
  br i1 %33, label %34, label %37, !dbg !193

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %4, align 8, !dbg !194
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !194
  store i8* %36, i8** %4, align 8, !dbg !194
  br label %37, !dbg !195

; <label>:37:                                     ; preds = %34, %29
  br label %38, !dbg !196

; <label>:38:                                     ; preds = %129, %37
  %39 = load i8*, i8** %4, align 8, !dbg !197
  %40 = call i8* @next_arg(i8* %39, i8 signext 44), !dbg !198
  store i8* %40, i8** %6, align 8, !dbg !199
  %41 = icmp ne i8* %40, null, !dbg !199
  br i1 %41, label %42, label %46, !dbg !200

; <label>:42:                                     ; preds = %38
  %43 = load i32*, i32** %3, align 8, !dbg !201
  %44 = load i32, i32* %43, align 4, !dbg !202
  %45 = icmp ult i32 %44, 16, !dbg !203
  br label %46

; <label>:46:                                     ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  br i1 %47, label %48, label %160, !dbg !204

; <label>:48:                                     ; preds = %46
  %49 = call i8* @xmalloc(i32 48), !dbg !206
  %50 = bitcast i8* %49 to %struct.rdpdr_printer_info*, !dbg !208
  store %struct.rdpdr_printer_info* %50, %struct.rdpdr_printer_info** %5, align 8, !dbg !209
  %51 = load i32*, i32** %3, align 8, !dbg !210
  %52 = load i32, i32* %51, align 4, !dbg !211
  %53 = zext i32 %52 to i64, !dbg !212
  %54 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %53, !dbg !212
  %55 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %54, i32 0, i32 2, !dbg !213
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %55, i32 0, i32 0, !dbg !212
  %57 = call i8* @strcpy(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5, !dbg !214
  %58 = load i32*, i32** %3, align 8, !dbg !215
  %59 = load i32, i32* %58, align 4, !dbg !216
  %60 = zext i32 %59 to i64, !dbg !217
  %61 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %60, !dbg !217
  %62 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %61, i32 0, i32 2, !dbg !218
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %62, i32 0, i32 0, !dbg !217
  %64 = load i32, i32* %9, align 4, !dbg !219
  %65 = sext i32 %64 to i64, !dbg !219
  %66 = load i64, i64* %8, align 8, !dbg !220
  %67 = add i64 %65, %66, !dbg !221
  %68 = add i64 %67, 1, !dbg !222
  %69 = call i8* @l_to_a(i64 %68, i32 10), !dbg !223
  %70 = call i8* @strcat(i8* %63, i8* %69) #5, !dbg !224
  %71 = load i32, i32* %9, align 4, !dbg !226
  %72 = sext i32 %71 to i64, !dbg !226
  %73 = load i64, i64* %8, align 8, !dbg !228
  %74 = add i64 %72, %73, !dbg !229
  %75 = icmp eq i64 %74, 0, !dbg !230
  br i1 %75, label %76, label %79, !dbg !231

; <label>:76:                                     ; preds = %48
  %77 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %5, align 8, !dbg !232
  %78 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %77, i32 0, i32 5, !dbg !233
  store i32 1, i32* %78, align 8, !dbg !234
  br label %82, !dbg !232

; <label>:79:                                     ; preds = %48
  %80 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %5, align 8, !dbg !235
  %81 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %80, i32 0, i32 5, !dbg !236
  store i32 0, i32* %81, align 8, !dbg !237
  br label %82

; <label>:82:                                     ; preds = %79, %76
  %83 = load i8*, i8** %4, align 8, !dbg !238
  %84 = call i8* @next_arg(i8* %83, i8 signext 61), !dbg !239
  store i8* %84, i8** %7, align 8, !dbg !240
  %85 = load i8*, i8** %4, align 8, !dbg !241
  %86 = load i8, i8* %85, align 1, !dbg !243
  %87 = sext i8 %86 to i32, !dbg !243
  %88 = icmp eq i32 %87, 0, !dbg !244
  br i1 %88, label %89, label %92, !dbg !245

; <label>:89:                                     ; preds = %82
  %90 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %5, align 8, !dbg !246
  %91 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %90, i32 0, i32 2, !dbg !247
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8** %91, align 8, !dbg !248
  br label %105, !dbg !246

; <label>:92:                                     ; preds = %82
  %93 = load i8*, i8** %4, align 8, !dbg !249
  %94 = call i64 @strlen(i8* %93) #6, !dbg !251
  %95 = add i64 %94, 1, !dbg !252
  %96 = trunc i64 %95 to i32, !dbg !251
  %97 = call i8* @xmalloc(i32 %96), !dbg !253
  %98 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %5, align 8, !dbg !255
  %99 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %98, i32 0, i32 2, !dbg !256
  store i8* %97, i8** %99, align 8, !dbg !257
  %100 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %5, align 8, !dbg !258
  %101 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %100, i32 0, i32 2, !dbg !259
  %102 = load i8*, i8** %101, align 8, !dbg !259
  %103 = load i8*, i8** %4, align 8, !dbg !260
  %104 = call i8* @strcpy(i8* %102, i8* %103) #5, !dbg !261
  br label %105

; <label>:105:                                    ; preds = %92, %89
  %106 = load i8*, i8** %7, align 8, !dbg !262
  %107 = icmp ne i8* %106, null, !dbg !262
  br i1 %107, label %108, label %113, !dbg !264

; <label>:108:                                    ; preds = %105
  %109 = load i8*, i8** %7, align 8, !dbg !265
  %110 = load i8, i8* %109, align 1, !dbg !267
  %111 = sext i8 %110 to i32, !dbg !267
  %112 = icmp eq i32 %111, 0, !dbg !268
  br i1 %112, label %113, label %116, !dbg !269

; <label>:113:                                    ; preds = %108, %105
  %114 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %5, align 8, !dbg !270
  %115 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %114, i32 0, i32 1, !dbg !271
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8** %115, align 8, !dbg !272
  br label %129, !dbg !270

; <label>:116:                                    ; preds = %108
  %117 = load i8*, i8** %7, align 8, !dbg !273
  %118 = call i64 @strlen(i8* %117) #6, !dbg !275
  %119 = add i64 %118, 1, !dbg !276
  %120 = trunc i64 %119 to i32, !dbg !275
  %121 = call i8* @xmalloc(i32 %120), !dbg !277
  %122 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %5, align 8, !dbg !279
  %123 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %122, i32 0, i32 1, !dbg !280
  store i8* %121, i8** %123, align 8, !dbg !281
  %124 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %5, align 8, !dbg !282
  %125 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %124, i32 0, i32 1, !dbg !283
  %126 = load i8*, i8** %125, align 8, !dbg !283
  %127 = load i8*, i8** %7, align 8, !dbg !284
  %128 = call i8* @strcpy(i8* %126, i8* %127) #5, !dbg !285
  br label %129

; <label>:129:                                    ; preds = %116, %113
  %130 = load i32*, i32** %3, align 8, !dbg !286
  %131 = load i32, i32* %130, align 4, !dbg !287
  %132 = zext i32 %131 to i64, !dbg !288
  %133 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %132, !dbg !288
  %134 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %133, i32 0, i32 2, !dbg !289
  %135 = getelementptr inbounds [8 x i8], [8 x i8]* %134, i32 0, i32 0, !dbg !288
  %136 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %5, align 8, !dbg !290
  %137 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %136, i32 0, i32 2, !dbg !291
  %138 = load i8*, i8** %137, align 8, !dbg !291
  %139 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %5, align 8, !dbg !292
  %140 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %139, i32 0, i32 1, !dbg !293
  %141 = load i8*, i8** %140, align 8, !dbg !293
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* %135, i8* %138, i8* %141), !dbg !294
  %142 = load i32*, i32** %3, align 8, !dbg !295
  %143 = load i32, i32* %142, align 4, !dbg !296
  %144 = zext i32 %143 to i64, !dbg !297
  %145 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %144, !dbg !297
  %146 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %145, i32 0, i32 0, !dbg !298
  store i32 4, i32* %146, align 8, !dbg !299
  %147 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %5, align 8, !dbg !300
  %148 = bitcast %struct.rdpdr_printer_info* %147 to i8*, !dbg !301
  %149 = load i32*, i32** %3, align 8, !dbg !302
  %150 = load i32, i32* %149, align 4, !dbg !303
  %151 = zext i32 %150 to i64, !dbg !304
  %152 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %151, !dbg !304
  %153 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %152, i32 0, i32 4, !dbg !305
  store i8* %148, i8** %153, align 8, !dbg !306
  %154 = load i64, i64* %8, align 8, !dbg !307
  %155 = add i64 %154, 1, !dbg !307
  store i64 %155, i64* %8, align 8, !dbg !307
  %156 = load i32*, i32** %3, align 8, !dbg !308
  %157 = load i32, i32* %156, align 4, !dbg !309
  %158 = add i32 %157, 1, !dbg !309
  store i32 %158, i32* %156, align 4, !dbg !309
  %159 = load i8*, i8** %6, align 8, !dbg !310
  store i8* %159, i8** %4, align 8, !dbg !311
  br label %38, !dbg !312, !llvm.loop !314

; <label>:160:                                    ; preds = %46
  %161 = load i64, i64* %8, align 8, !dbg !315
  %162 = trunc i64 %161 to i32, !dbg !315
  ret i32 %162, !dbg !316
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @next_arg(i8*, i8 signext) #2

declare i8* @xmalloc(i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i8* @l_to_a(i64, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @printer_create(i32, i32, i32, i32, i32, i8*, i32*) #0 !dbg !317 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca %struct.rdpdr_printer_info*, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !318, metadata !153), !dbg !319
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !320, metadata !153), !dbg !321
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !322, metadata !153), !dbg !323
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !324, metadata !153), !dbg !325
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !326, metadata !153), !dbg !327
  store i8* %5, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !328, metadata !153), !dbg !329
  store i32* %6, i32** %14, align 8
  call void @llvm.dbg.declare(metadata i32** %14, metadata !330, metadata !153), !dbg !331
  %17 = load i32, i32* %9, align 4, !dbg !332
  %18 = load i32, i32* %10, align 4, !dbg !333
  %19 = load i32, i32* %11, align 4, !dbg !334
  %20 = load i32, i32* %12, align 4, !dbg !335
  %21 = load i8*, i8** %13, align 8, !dbg !336
  call void @llvm.dbg.declare(metadata [256 x i8]* %15, metadata !337, metadata !153), !dbg !341
  call void @llvm.dbg.declare(metadata %struct.rdpdr_printer_info** %16, metadata !342, metadata !153), !dbg !343
  %22 = load i32, i32* %8, align 4, !dbg !344
  %23 = zext i32 %22 to i64, !dbg !345
  %24 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %23, !dbg !345
  %25 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %24, i32 0, i32 4, !dbg !346
  %26 = load i8*, i8** %25, align 8, !dbg !346
  %27 = bitcast i8* %26 to %struct.rdpdr_printer_info*, !dbg !347
  store %struct.rdpdr_printer_info* %27, %struct.rdpdr_printer_info** %16, align 8, !dbg !348
  %28 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %16, align 8, !dbg !349
  %29 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %28, i32 0, i32 2, !dbg !351
  %30 = load i8*, i8** %29, align 8, !dbg !351
  %31 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %16, align 8, !dbg !352
  %32 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %31, i32 0, i32 2, !dbg !353
  %33 = load i8*, i8** %32, align 8, !dbg !353
  %34 = call i64 @strlen(i8* %33) #6, !dbg !354
  %35 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i64 %34) #6, !dbg !355
  %36 = icmp eq i32 %35, 0, !dbg !357
  br i1 %36, label %37, label %41, !dbg !358

; <label>:37:                                     ; preds = %7
  %38 = call %struct._IO_FILE* @popen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !359
  %39 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %16, align 8, !dbg !361
  %40 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %39, i32 0, i32 0, !dbg !362
  store %struct._IO_FILE* %38, %struct._IO_FILE** %40, align 8, !dbg !363
  br label %51, !dbg !364

; <label>:41:                                     ; preds = %7
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i32 0, i32 0, !dbg !365
  %43 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %16, align 8, !dbg !367
  %44 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %43, i32 0, i32 2, !dbg !368
  %45 = load i8*, i8** %44, align 8, !dbg !368
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* %45) #5, !dbg !369
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i32 0, i32 0, !dbg !370
  %48 = call %struct._IO_FILE* @popen(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !dbg !371
  %49 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %16, align 8, !dbg !372
  %50 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %49, i32 0, i32 0, !dbg !373
  store %struct._IO_FILE* %48, %struct._IO_FILE** %50, align 8, !dbg !374
  br label %51

; <label>:51:                                     ; preds = %41, %37
  %52 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %16, align 8, !dbg !375
  %53 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %52, i32 0, i32 0, !dbg !376
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %53, align 8, !dbg !376
  %55 = call i32 @fileno(%struct._IO_FILE* %54) #5, !dbg !377
  %56 = load i32, i32* %8, align 4, !dbg !378
  %57 = zext i32 %56 to i64, !dbg !379
  %58 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %57, !dbg !379
  %59 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %58, i32 0, i32 1, !dbg !380
  store i32 %55, i32* %59, align 4, !dbg !381
  %60 = load i32, i32* %8, align 4, !dbg !382
  %61 = zext i32 %60 to i64, !dbg !383
  %62 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %61, !dbg !383
  %63 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %62, i32 0, i32 1, !dbg !384
  %64 = load i32, i32* %63, align 4, !dbg !384
  %65 = load i32*, i32** %14, align 8, !dbg !385
  store i32 %64, i32* %65, align 4, !dbg !386
  ret i32 0, !dbg !387
}

; Function Attrs: nounwind uwtable
define internal i32 @printer_close(i32) #0 !dbg !388 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdpdr_printer_info*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !389, metadata !153), !dbg !390
  call void @llvm.dbg.declare(metadata i32* %3, metadata !391, metadata !153), !dbg !392
  %5 = load i32, i32* %2, align 4, !dbg !393
  %6 = call i32 @get_device_index(i32 %5), !dbg !394
  store i32 %6, i32* %3, align 4, !dbg !392
  %7 = load i32, i32* %3, align 4, !dbg !395
  %8 = icmp sge i32 %7, 0, !dbg !397
  br i1 %8, label %9, label %28, !dbg !398

; <label>:9:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.rdpdr_printer_info** %4, metadata !399, metadata !153), !dbg !401
  %10 = load i32, i32* %3, align 4, !dbg !402
  %11 = sext i32 %10 to i64, !dbg !403
  %12 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %11, !dbg !403
  %13 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %12, i32 0, i32 4, !dbg !404
  %14 = load i8*, i8** %13, align 8, !dbg !404
  %15 = bitcast i8* %14 to %struct.rdpdr_printer_info*, !dbg !403
  store %struct.rdpdr_printer_info* %15, %struct.rdpdr_printer_info** %4, align 8, !dbg !401
  %16 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %4, align 8, !dbg !405
  %17 = icmp ne %struct.rdpdr_printer_info* %16, null, !dbg !405
  br i1 %17, label %18, label %23, !dbg !407

; <label>:18:                                     ; preds = %9
  %19 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %4, align 8, !dbg !408
  %20 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %19, i32 0, i32 0, !dbg !409
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8, !dbg !409
  %22 = call i32 @pclose(%struct._IO_FILE* %21), !dbg !410
  br label %23, !dbg !410

; <label>:23:                                     ; preds = %18, %9
  %24 = load i32, i32* %3, align 4, !dbg !411
  %25 = sext i32 %24 to i64, !dbg !412
  %26 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %25, !dbg !412
  %27 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %26, i32 0, i32 1, !dbg !413
  store i32 0, i32* %27, align 4, !dbg !414
  br label %28, !dbg !415

; <label>:28:                                     ; preds = %23, %1
  ret i32 0, !dbg !416
}

; Function Attrs: nounwind uwtable
define internal i32 @printer_write(i32, i8*, i32, i32, i32*) #0 !dbg !417 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rdpdr_printer_info*, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !418, metadata !153), !dbg !419
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !420, metadata !153), !dbg !421
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !422, metadata !153), !dbg !423
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !424, metadata !153), !dbg !425
  store i32* %4, i32** %11, align 8
  call void @llvm.dbg.declare(metadata i32** %11, metadata !426, metadata !153), !dbg !427
  %13 = load i32, i32* %10, align 4, !dbg !428
  call void @llvm.dbg.declare(metadata %struct.rdpdr_printer_info** %12, metadata !429, metadata !153), !dbg !430
  %14 = load i32, i32* %7, align 4, !dbg !431
  %15 = call %struct.rdpdr_printer_info* @get_printer_data(i32 %14), !dbg !432
  store %struct.rdpdr_printer_info* %15, %struct.rdpdr_printer_info** %12, align 8, !dbg !433
  %16 = load i32, i32* %9, align 4, !dbg !434
  %17 = zext i32 %16 to i64, !dbg !434
  %18 = load i8*, i8** %8, align 8, !dbg !435
  %19 = load i32, i32* %9, align 4, !dbg !436
  %20 = zext i32 %19 to i64, !dbg !436
  %21 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %12, align 8, !dbg !437
  %22 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %21, i32 0, i32 0, !dbg !438
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8, !dbg !438
  %24 = call i64 @fwrite(i8* %18, i64 %20, i64 1, %struct._IO_FILE* %23), !dbg !439
  %25 = mul i64 %17, %24, !dbg !440
  %26 = trunc i64 %25 to i32, !dbg !434
  %27 = load i32*, i32** %11, align 8, !dbg !441
  store i32 %26, i32* %27, align 4, !dbg !442
  %28 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %12, align 8, !dbg !443
  %29 = getelementptr inbounds %struct.rdpdr_printer_info, %struct.rdpdr_printer_info* %28, i32 0, i32 0, !dbg !445
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %29, align 8, !dbg !445
  %31 = call i32 @ferror(%struct._IO_FILE* %30) #5, !dbg !446
  %32 = icmp ne i32 %31, 0, !dbg !446
  br i1 %32, label %33, label %35, !dbg !447

; <label>:33:                                     ; preds = %5
  %34 = load i32*, i32** %11, align 8, !dbg !448
  store i32 0, i32* %34, align 4, !dbg !450
  store i32 -1073741816, i32* %6, align 4, !dbg !451
  br label %36, !dbg !451

; <label>:35:                                     ; preds = %5
  store i32 0, i32* %6, align 4, !dbg !452
  br label %36, !dbg !452

; <label>:36:                                     ; preds = %35, %33
  %37 = load i32, i32* %6, align 4, !dbg !453
  ret i32 %37, !dbg !453
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare %struct._IO_FILE* @popen(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare i32 @get_device_index(i32) #2

declare i32 @pclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal %struct.rdpdr_printer_info* @get_printer_data(i32) #0 !dbg !454 {
  %2 = alloca %struct.rdpdr_printer_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !457, metadata !153), !dbg !458
  call void @llvm.dbg.declare(metadata i32* %4, metadata !459, metadata !153), !dbg !460
  store i32 0, i32* %4, align 4, !dbg !461
  br label %5, !dbg !463

; <label>:5:                                      ; preds = %24, %1
  %6 = load i32, i32* %4, align 4, !dbg !464
  %7 = icmp slt i32 %6, 16, !dbg !467
  br i1 %7, label %8, label %27, !dbg !468

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %3, align 4, !dbg !469
  %10 = load i32, i32* %4, align 4, !dbg !472
  %11 = sext i32 %10 to i64, !dbg !473
  %12 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %11, !dbg !473
  %13 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %12, i32 0, i32 1, !dbg !474
  %14 = load i32, i32* %13, align 4, !dbg !474
  %15 = icmp eq i32 %9, %14, !dbg !475
  br i1 %15, label %16, label %23, !dbg !476

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* %4, align 4, !dbg !477
  %18 = sext i32 %17 to i64, !dbg !478
  %19 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %18, !dbg !478
  %20 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %19, i32 0, i32 4, !dbg !479
  %21 = load i8*, i8** %20, align 8, !dbg !479
  %22 = bitcast i8* %21 to %struct.rdpdr_printer_info*, !dbg !480
  store %struct.rdpdr_printer_info* %22, %struct.rdpdr_printer_info** %2, align 8, !dbg !481
  br label %28, !dbg !481

; <label>:23:                                     ; preds = %8
  br label %24, !dbg !482

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %4, align 4, !dbg !483
  %26 = add nsw i32 %25, 1, !dbg !483
  store i32 %26, i32* %4, align 4, !dbg !483
  br label %5, !dbg !485, !llvm.loop !486

; <label>:27:                                     ; preds = %5
  store %struct.rdpdr_printer_info* null, %struct.rdpdr_printer_info** %2, align 8, !dbg !488
  br label %28, !dbg !488

; <label>:28:                                     ; preds = %27, %16
  %29 = load %struct.rdpdr_printer_info*, %struct.rdpdr_printer_info** %2, align 8, !dbg !489
  ret %struct.rdpdr_printer_info* %29, !dbg !489
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!145, !146}
!llvm.ident = !{!147}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !103)
!1 = !DIFile(filename: "[inter]printer.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !{!23, !39, !79}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "PRINTER", file: !25, line: 285, baseType: !26)
!25 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdpdr_printer_info", file: !25, line: 277, size: 384, align: 64, elements: !27)
!27 = !{!28, !92, !93, !94, !97, !101}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "printer_fp", scope: !26, file: !25, line: 279, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !31, line: 48, baseType: !32)
!31 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !33, line: 241, size: 1728, align: 64, elements: !34)
!33 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!34 = !{!35, !37, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !58, !59, !60, !61, !65, !67, !69, !73, !76, !78, !80, !81, !82, !83, !87, !88}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !32, file: !33, line: 242, baseType: !36, size: 32, align: 32)
!36 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !32, file: !33, line: 247, baseType: !38, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !32, file: !33, line: 248, baseType: !38, size: 64, align: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !32, file: !33, line: 249, baseType: !38, size: 64, align: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !32, file: !33, line: 250, baseType: !38, size: 64, align: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !32, file: !33, line: 251, baseType: !38, size: 64, align: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !32, file: !33, line: 252, baseType: !38, size: 64, align: 64, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !32, file: !33, line: 253, baseType: !38, size: 64, align: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !32, file: !33, line: 254, baseType: !38, size: 64, align: 64, offset: 512)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !32, file: !33, line: 256, baseType: !38, size: 64, align: 64, offset: 576)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !32, file: !33, line: 257, baseType: !38, size: 64, align: 64, offset: 640)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !32, file: !33, line: 258, baseType: !38, size: 64, align: 64, offset: 704)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !32, file: !33, line: 260, baseType: !51, size: 64, align: 64, offset: 768)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !33, line: 156, size: 192, align: 64, elements: !53)
!53 = !{!54, !55, !57}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !52, file: !33, line: 157, baseType: !51, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !52, file: !33, line: 158, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !52, file: !33, line: 162, baseType: !36, size: 32, align: 32, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !32, file: !33, line: 262, baseType: !56, size: 64, align: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !32, file: !33, line: 264, baseType: !36, size: 32, align: 32, offset: 896)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !32, file: !33, line: 268, baseType: !36, size: 32, align: 32, offset: 928)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !32, file: !33, line: 270, baseType: !62, size: 64, align: 64, offset: 960)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !63, line: 131, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!64 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !32, file: !33, line: 274, baseType: !66, size: 16, align: 16, offset: 1024)
!66 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !32, file: !33, line: 275, baseType: !68, size: 8, align: 8, offset: 1040)
!68 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !32, file: !33, line: 276, baseType: !70, size: 8, align: 8, offset: 1048)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, align: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !32, file: !33, line: 280, baseType: !74, size: 64, align: 64, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !33, line: 150, baseType: null)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !32, file: !33, line: 289, baseType: !77, size: 64, align: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !63, line: 132, baseType: !64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !32, file: !33, line: 297, baseType: !79, size: 64, align: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !32, file: !33, line: 298, baseType: !79, size: 64, align: 64, offset: 1280)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !32, file: !33, line: 299, baseType: !79, size: 64, align: 64, offset: 1344)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !32, file: !33, line: 300, baseType: !79, size: 64, align: 64, offset: 1408)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !32, file: !33, line: 302, baseType: !84, size: 64, align: 64, offset: 1472)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 216, baseType: !86)
!85 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!86 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !32, file: !33, line: 303, baseType: !36, size: 32, align: 32, offset: 1536)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !32, file: !33, line: 305, baseType: !89, size: 160, align: 8, offset: 1568)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 160, align: 8, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 20)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !26, file: !25, line: 280, baseType: !38, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "printer", scope: !26, file: !25, line: 280, baseType: !38, size: 64, align: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "bloblen", scope: !26, file: !25, line: 281, baseType: !95, size: 32, align: 32, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !25, line: 43, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !26, file: !25, line: 282, baseType: !98, size: 64, align: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !25, line: 39, baseType: !100)
!100 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "default_printer", scope: !26, file: !25, line: 283, baseType: !102, size: 32, align: 32, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !25, line: 28, baseType: !36)
!103 = !{!104}
!104 = distinct !DIGlobalVariable(name: "printer_fns", scope: !0, file: !105, line: 163, type: !106, isLocal: false, isDefinition: true, variable: %struct._DEVICE_FNS* @printer_fns)
!105 = !DIFile(filename: "printer.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_FNS", file: !25, line: 223, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVICE_FNS", file: !25, line: 211, size: 320, align: 64, elements: !108)
!108 = !{!109, !116, !120, !125, !126}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !107, file: !25, line: 213, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !95, !95, !95, !95, !95, !38, !114}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_NTSTATUS", file: !25, line: 208, baseType: !95)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_NTHANDLE", file: !25, line: 209, baseType: !95)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !107, file: !25, line: 216, baseType: !117, size: 64, align: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!113, !115}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !107, file: !25, line: 217, baseType: !121, size: 64, align: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!113, !115, !98, !95, !95, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !107, file: !25, line: 219, baseType: !121, size: 64, align: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "device_control", scope: !107, file: !25, line: 221, baseType: !127, size: 64, align: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!113, !115, !95, !130, !130}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !131, line: 40, baseType: !132)
!131 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !131, line: 25, size: 576, align: 64, elements: !134)
!134 = !{!135, !137, !138, !139, !140, !141, !142, !143, !144}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !133, file: !131, line: 27, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !133, file: !131, line: 28, baseType: !136, size: 64, align: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !133, file: !131, line: 29, baseType: !136, size: 64, align: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !133, file: !131, line: 30, baseType: !96, size: 32, align: 32, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !133, file: !131, line: 33, baseType: !136, size: 64, align: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !133, file: !131, line: 34, baseType: !136, size: 64, align: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !133, file: !131, line: 35, baseType: !136, size: 64, align: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !133, file: !131, line: 36, baseType: !136, size: 64, align: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !133, file: !131, line: 37, baseType: !136, size: 64, align: 64, offset: 512)
!145 = !{i32 2, !"Dwarf Version", i32 4}
!146 = !{i32 2, !"Debug Info Version", i32 3}
!147 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!148 = distinct !DISubprogram(name: "printer_enum_devices", scope: !105, file: !105, line: 37, type: !149, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{!36, !124, !38}
!151 = !{}
!152 = !DILocalVariable(name: "id", arg: 1, scope: !148, file: !105, line: 37, type: !124)
!153 = !DIExpression()
!154 = !DILocation(line: 37, column: 31, scope: !148)
!155 = !DILocalVariable(name: "optarg", arg: 2, scope: !148, file: !105, line: 37, type: !38)
!156 = !DILocation(line: 37, column: 41, scope: !148)
!157 = !DILocalVariable(name: "pprinter_data", scope: !148, file: !105, line: 39, type: !23)
!158 = !DILocation(line: 39, column: 11, scope: !148)
!159 = !DILocalVariable(name: "pos", scope: !148, file: !105, line: 41, type: !38)
!160 = !DILocation(line: 41, column: 8, scope: !148)
!161 = !DILocation(line: 41, column: 14, scope: !148)
!162 = !DILocalVariable(name: "pos2", scope: !148, file: !105, line: 42, type: !38)
!163 = !DILocation(line: 42, column: 8, scope: !148)
!164 = !DILocalVariable(name: "count", scope: !148, file: !105, line: 43, type: !84)
!165 = !DILocation(line: 43, column: 9, scope: !148)
!166 = !DILocalVariable(name: "already", scope: !148, file: !105, line: 44, type: !36)
!167 = !DILocation(line: 44, column: 6, scope: !148)
!168 = !DILocation(line: 48, column: 2, scope: !148)
!169 = !DILocation(line: 48, column: 9, scope: !170)
!170 = !DILexicalBlockFile(scope: !148, file: !105, discriminator: 1)
!171 = !DILocation(line: 48, column: 18, scope: !170)
!172 = !DILocation(line: 48, column: 17, scope: !170)
!173 = !DILocation(line: 48, column: 15, scope: !170)
!174 = !DILocation(line: 48, column: 2, scope: !170)
!175 = !DILocation(line: 50, column: 22, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !105, line: 50, column: 7)
!177 = distinct !DILexicalBlock(scope: !148, file: !105, line: 49, column: 2)
!178 = !DILocation(line: 50, column: 7, scope: !176)
!179 = !DILocation(line: 50, column: 29, scope: !176)
!180 = !DILocation(line: 50, column: 41, scope: !176)
!181 = !DILocation(line: 50, column: 7, scope: !177)
!182 = !DILocation(line: 51, column: 11, scope: !176)
!183 = !DILocation(line: 51, column: 4, scope: !176)
!184 = !DILocation(line: 52, column: 8, scope: !177)
!185 = !DILocation(line: 48, column: 2, scope: !186)
!186 = !DILexicalBlockFile(scope: !148, file: !105, discriminator: 2)
!187 = distinct !{!187, !168}
!188 = !DILocation(line: 55, column: 8, scope: !148)
!189 = !DILocation(line: 57, column: 7, scope: !190)
!190 = distinct !DILexicalBlock(scope: !148, file: !105, line: 57, column: 6)
!191 = !DILocation(line: 57, column: 6, scope: !190)
!192 = !DILocation(line: 57, column: 14, scope: !190)
!193 = !DILocation(line: 57, column: 6, scope: !148)
!194 = !DILocation(line: 58, column: 9, scope: !190)
!195 = !DILocation(line: 58, column: 3, scope: !190)
!196 = !DILocation(line: 60, column: 2, scope: !148)
!197 = !DILocation(line: 60, column: 25, scope: !170)
!198 = !DILocation(line: 60, column: 16, scope: !170)
!199 = !DILocation(line: 60, column: 14, scope: !170)
!200 = !DILocation(line: 60, column: 39, scope: !170)
!201 = !DILocation(line: 60, column: 43, scope: !186)
!202 = !DILocation(line: 60, column: 42, scope: !186)
!203 = !DILocation(line: 60, column: 46, scope: !186)
!204 = !DILocation(line: 60, column: 2, scope: !205)
!205 = !DILexicalBlockFile(scope: !148, file: !105, discriminator: 3)
!206 = !DILocation(line: 62, column: 31, scope: !207)
!207 = distinct !DILexicalBlock(scope: !148, file: !105, line: 61, column: 2)
!208 = !DILocation(line: 62, column: 19, scope: !207)
!209 = !DILocation(line: 62, column: 17, scope: !207)
!210 = !DILocation(line: 64, column: 26, scope: !207)
!211 = !DILocation(line: 64, column: 25, scope: !207)
!212 = !DILocation(line: 64, column: 10, scope: !207)
!213 = !DILocation(line: 64, column: 30, scope: !207)
!214 = !DILocation(line: 64, column: 3, scope: !207)
!215 = !DILocation(line: 65, column: 26, scope: !207)
!216 = !DILocation(line: 65, column: 25, scope: !207)
!217 = !DILocation(line: 65, column: 10, scope: !207)
!218 = !DILocation(line: 65, column: 30, scope: !207)
!219 = !DILocation(line: 65, column: 43, scope: !207)
!220 = !DILocation(line: 65, column: 53, scope: !207)
!221 = !DILocation(line: 65, column: 51, scope: !207)
!222 = !DILocation(line: 65, column: 59, scope: !207)
!223 = !DILocation(line: 65, column: 36, scope: !207)
!224 = !DILocation(line: 65, column: 3, scope: !225)
!225 = !DILexicalBlockFile(scope: !207, file: !105, discriminator: 1)
!226 = !DILocation(line: 68, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !207, file: !105, line: 68, column: 7)
!228 = !DILocation(line: 68, column: 18, scope: !227)
!229 = !DILocation(line: 68, column: 16, scope: !227)
!230 = !DILocation(line: 68, column: 25, scope: !227)
!231 = !DILocation(line: 68, column: 7, scope: !207)
!232 = !DILocation(line: 69, column: 4, scope: !227)
!233 = !DILocation(line: 69, column: 19, scope: !227)
!234 = !DILocation(line: 69, column: 35, scope: !227)
!235 = !DILocation(line: 71, column: 4, scope: !227)
!236 = !DILocation(line: 71, column: 19, scope: !227)
!237 = !DILocation(line: 71, column: 35, scope: !227)
!238 = !DILocation(line: 73, column: 19, scope: !207)
!239 = !DILocation(line: 73, column: 10, scope: !207)
!240 = !DILocation(line: 73, column: 8, scope: !207)
!241 = !DILocation(line: 74, column: 8, scope: !242)
!242 = distinct !DILexicalBlock(scope: !207, file: !105, line: 74, column: 7)
!243 = !DILocation(line: 74, column: 7, scope: !242)
!244 = !DILocation(line: 74, column: 15, scope: !242)
!245 = !DILocation(line: 74, column: 7, scope: !207)
!246 = !DILocation(line: 75, column: 4, scope: !242)
!247 = !DILocation(line: 75, column: 19, scope: !242)
!248 = !DILocation(line: 75, column: 27, scope: !242)
!249 = !DILocation(line: 78, column: 44, scope: !250)
!250 = distinct !DILexicalBlock(scope: !242, file: !105, line: 77, column: 3)
!251 = !DILocation(line: 78, column: 37, scope: !250)
!252 = !DILocation(line: 78, column: 52, scope: !250)
!253 = !DILocation(line: 78, column: 29, scope: !254)
!254 = !DILexicalBlockFile(scope: !250, file: !105, discriminator: 1)
!255 = !DILocation(line: 78, column: 4, scope: !250)
!256 = !DILocation(line: 78, column: 19, scope: !250)
!257 = !DILocation(line: 78, column: 27, scope: !250)
!258 = !DILocation(line: 79, column: 11, scope: !250)
!259 = !DILocation(line: 79, column: 26, scope: !250)
!260 = !DILocation(line: 79, column: 35, scope: !250)
!261 = !DILocation(line: 79, column: 4, scope: !250)
!262 = !DILocation(line: 82, column: 8, scope: !263)
!263 = distinct !DILexicalBlock(scope: !207, file: !105, line: 82, column: 7)
!264 = !DILocation(line: 82, column: 13, scope: !263)
!265 = !DILocation(line: 82, column: 18, scope: !266)
!266 = !DILexicalBlockFile(scope: !263, file: !105, discriminator: 1)
!267 = !DILocation(line: 82, column: 17, scope: !266)
!268 = !DILocation(line: 82, column: 23, scope: !266)
!269 = !DILocation(line: 82, column: 7, scope: !266)
!270 = !DILocation(line: 83, column: 4, scope: !263)
!271 = !DILocation(line: 83, column: 19, scope: !263)
!272 = !DILocation(line: 83, column: 26, scope: !263)
!273 = !DILocation(line: 86, column: 43, scope: !274)
!274 = distinct !DILexicalBlock(scope: !263, file: !105, line: 85, column: 3)
!275 = !DILocation(line: 86, column: 36, scope: !274)
!276 = !DILocation(line: 86, column: 49, scope: !274)
!277 = !DILocation(line: 86, column: 28, scope: !278)
!278 = !DILexicalBlockFile(scope: !274, file: !105, discriminator: 1)
!279 = !DILocation(line: 86, column: 4, scope: !274)
!280 = !DILocation(line: 86, column: 19, scope: !274)
!281 = !DILocation(line: 86, column: 26, scope: !274)
!282 = !DILocation(line: 87, column: 11, scope: !274)
!283 = !DILocation(line: 87, column: 26, scope: !274)
!284 = !DILocation(line: 87, column: 34, scope: !274)
!285 = !DILocation(line: 87, column: 4, scope: !274)
!286 = !DILocation(line: 91, column: 26, scope: !207)
!287 = !DILocation(line: 91, column: 25, scope: !207)
!288 = !DILocation(line: 91, column: 10, scope: !207)
!289 = !DILocation(line: 91, column: 30, scope: !207)
!290 = !DILocation(line: 91, column: 36, scope: !207)
!291 = !DILocation(line: 91, column: 51, scope: !207)
!292 = !DILocation(line: 91, column: 60, scope: !207)
!293 = !DILocation(line: 91, column: 75, scope: !207)
!294 = !DILocation(line: 90, column: 3, scope: !207)
!295 = !DILocation(line: 92, column: 19, scope: !207)
!296 = !DILocation(line: 92, column: 18, scope: !207)
!297 = !DILocation(line: 92, column: 3, scope: !207)
!298 = !DILocation(line: 92, column: 23, scope: !207)
!299 = !DILocation(line: 92, column: 35, scope: !207)
!300 = !DILocation(line: 93, column: 47, scope: !207)
!301 = !DILocation(line: 93, column: 38, scope: !207)
!302 = !DILocation(line: 93, column: 19, scope: !207)
!303 = !DILocation(line: 93, column: 18, scope: !207)
!304 = !DILocation(line: 93, column: 3, scope: !207)
!305 = !DILocation(line: 93, column: 23, scope: !207)
!306 = !DILocation(line: 93, column: 36, scope: !207)
!307 = !DILocation(line: 94, column: 8, scope: !207)
!308 = !DILocation(line: 95, column: 5, scope: !207)
!309 = !DILocation(line: 95, column: 8, scope: !207)
!310 = !DILocation(line: 97, column: 12, scope: !207)
!311 = !DILocation(line: 97, column: 10, scope: !207)
!312 = !DILocation(line: 60, column: 2, scope: !313)
!313 = !DILexicalBlockFile(scope: !148, file: !105, discriminator: 4)
!314 = distinct !{!314, !196}
!315 = !DILocation(line: 99, column: 9, scope: !148)
!316 = !DILocation(line: 99, column: 2, scope: !148)
!317 = distinct !DISubprogram(name: "printer_create", scope: !105, file: !105, line: 103, type: !111, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!318 = !DILocalVariable(name: "device_id", arg: 1, scope: !317, file: !105, line: 103, type: !95)
!319 = !DILocation(line: 103, column: 23, scope: !317)
!320 = !DILocalVariable(name: "access", arg: 2, scope: !317, file: !105, line: 103, type: !95)
!321 = !DILocation(line: 103, column: 41, scope: !317)
!322 = !DILocalVariable(name: "share_mode", arg: 3, scope: !317, file: !105, line: 103, type: !95)
!323 = !DILocation(line: 103, column: 56, scope: !317)
!324 = !DILocalVariable(name: "disposition", arg: 4, scope: !317, file: !105, line: 103, type: !95)
!325 = !DILocation(line: 103, column: 75, scope: !317)
!326 = !DILocalVariable(name: "flags", arg: 5, scope: !317, file: !105, line: 103, type: !95)
!327 = !DILocation(line: 103, column: 95, scope: !317)
!328 = !DILocalVariable(name: "filename", arg: 6, scope: !317, file: !105, line: 104, type: !38)
!329 = !DILocation(line: 104, column: 15, scope: !317)
!330 = !DILocalVariable(name: "handle", arg: 7, scope: !317, file: !105, line: 104, type: !114)
!331 = !DILocation(line: 104, column: 39, scope: !317)
!332 = !DILocation(line: 106, column: 9, scope: !317)
!333 = !DILocation(line: 107, column: 9, scope: !317)
!334 = !DILocation(line: 108, column: 9, scope: !317)
!335 = !DILocation(line: 109, column: 9, scope: !317)
!336 = !DILocation(line: 110, column: 9, scope: !317)
!337 = !DILocalVariable(name: "cmd", scope: !317, file: !105, line: 111, type: !338)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, align: 8, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 256)
!341 = !DILocation(line: 111, column: 7, scope: !317)
!342 = !DILocalVariable(name: "pprinter_data", scope: !317, file: !105, line: 112, type: !23)
!343 = !DILocation(line: 112, column: 11, scope: !317)
!344 = !DILocation(line: 114, column: 45, scope: !317)
!345 = !DILocation(line: 114, column: 30, scope: !317)
!346 = !DILocation(line: 114, column: 56, scope: !317)
!347 = !DILocation(line: 114, column: 18, scope: !317)
!348 = !DILocation(line: 114, column: 16, scope: !317)
!349 = !DILocation(line: 117, column: 14, scope: !350)
!350 = distinct !DILexicalBlock(scope: !317, file: !105, line: 117, column: 6)
!351 = !DILocation(line: 117, column: 29, scope: !350)
!352 = !DILocation(line: 117, column: 58, scope: !350)
!353 = !DILocation(line: 117, column: 73, scope: !350)
!354 = !DILocation(line: 117, column: 51, scope: !350)
!355 = !DILocation(line: 117, column: 6, scope: !356)
!356 = !DILexicalBlockFile(scope: !350, file: !105, discriminator: 1)
!357 = !DILocation(line: 117, column: 83, scope: !350)
!358 = !DILocation(line: 117, column: 6, scope: !317)
!359 = !DILocation(line: 119, column: 31, scope: !360)
!360 = distinct !DILexicalBlock(scope: !350, file: !105, line: 118, column: 2)
!361 = !DILocation(line: 119, column: 3, scope: !360)
!362 = !DILocation(line: 119, column: 18, scope: !360)
!363 = !DILocation(line: 119, column: 29, scope: !360)
!364 = !DILocation(line: 120, column: 2, scope: !360)
!365 = !DILocation(line: 123, column: 11, scope: !366)
!366 = distinct !DILexicalBlock(scope: !350, file: !105, line: 122, column: 2)
!367 = !DILocation(line: 123, column: 29, scope: !366)
!368 = !DILocation(line: 123, column: 44, scope: !366)
!369 = !DILocation(line: 123, column: 3, scope: !366)
!370 = !DILocation(line: 124, column: 37, scope: !366)
!371 = !DILocation(line: 124, column: 31, scope: !366)
!372 = !DILocation(line: 124, column: 3, scope: !366)
!373 = !DILocation(line: 124, column: 18, scope: !366)
!374 = !DILocation(line: 124, column: 29, scope: !366)
!375 = !DILocation(line: 127, column: 44, scope: !317)
!376 = !DILocation(line: 127, column: 59, scope: !317)
!377 = !DILocation(line: 127, column: 37, scope: !317)
!378 = !DILocation(line: 127, column: 17, scope: !317)
!379 = !DILocation(line: 127, column: 2, scope: !317)
!380 = !DILocation(line: 127, column: 28, scope: !317)
!381 = !DILocation(line: 127, column: 35, scope: !317)
!382 = !DILocation(line: 128, column: 27, scope: !317)
!383 = !DILocation(line: 128, column: 12, scope: !317)
!384 = !DILocation(line: 128, column: 38, scope: !317)
!385 = !DILocation(line: 128, column: 3, scope: !317)
!386 = !DILocation(line: 128, column: 10, scope: !317)
!387 = !DILocation(line: 129, column: 2, scope: !317)
!388 = distinct !DISubprogram(name: "printer_close", scope: !105, file: !105, line: 133, type: !118, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!389 = !DILocalVariable(name: "handle", arg: 1, scope: !388, file: !105, line: 133, type: !115)
!390 = !DILocation(line: 133, column: 27, scope: !388)
!391 = !DILocalVariable(name: "i", scope: !388, file: !105, line: 135, type: !36)
!392 = !DILocation(line: 135, column: 6, scope: !388)
!393 = !DILocation(line: 135, column: 27, scope: !388)
!394 = !DILocation(line: 135, column: 10, scope: !388)
!395 = !DILocation(line: 136, column: 6, scope: !396)
!396 = distinct !DILexicalBlock(scope: !388, file: !105, line: 136, column: 6)
!397 = !DILocation(line: 136, column: 8, scope: !396)
!398 = !DILocation(line: 136, column: 6, scope: !388)
!399 = !DILocalVariable(name: "pprinter_data", scope: !400, file: !105, line: 138, type: !23)
!400 = distinct !DILexicalBlock(scope: !396, file: !105, line: 137, column: 2)
!401 = !DILocation(line: 138, column: 12, scope: !400)
!402 = !DILocation(line: 138, column: 43, scope: !400)
!403 = !DILocation(line: 138, column: 28, scope: !400)
!404 = !DILocation(line: 138, column: 46, scope: !400)
!405 = !DILocation(line: 139, column: 7, scope: !406)
!406 = distinct !DILexicalBlock(scope: !400, file: !105, line: 139, column: 7)
!407 = !DILocation(line: 139, column: 7, scope: !400)
!408 = !DILocation(line: 140, column: 11, scope: !406)
!409 = !DILocation(line: 140, column: 26, scope: !406)
!410 = !DILocation(line: 140, column: 4, scope: !406)
!411 = !DILocation(line: 141, column: 18, scope: !400)
!412 = !DILocation(line: 141, column: 3, scope: !400)
!413 = !DILocation(line: 141, column: 21, scope: !400)
!414 = !DILocation(line: 141, column: 28, scope: !400)
!415 = !DILocation(line: 142, column: 2, scope: !400)
!416 = !DILocation(line: 143, column: 2, scope: !388)
!417 = distinct !DISubprogram(name: "printer_write", scope: !105, file: !105, line: 147, type: !122, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!418 = !DILocalVariable(name: "handle", arg: 1, scope: !417, file: !105, line: 147, type: !115)
!419 = !DILocation(line: 147, column: 27, scope: !417)
!420 = !DILocalVariable(name: "data", arg: 2, scope: !417, file: !105, line: 147, type: !98)
!421 = !DILocation(line: 147, column: 43, scope: !417)
!422 = !DILocalVariable(name: "length", arg: 3, scope: !417, file: !105, line: 147, type: !95)
!423 = !DILocation(line: 147, column: 56, scope: !417)
!424 = !DILocalVariable(name: "offset", arg: 4, scope: !417, file: !105, line: 147, type: !95)
!425 = !DILocation(line: 147, column: 71, scope: !417)
!426 = !DILocalVariable(name: "result", arg: 5, scope: !417, file: !105, line: 147, type: !124)
!427 = !DILocation(line: 147, column: 88, scope: !417)
!428 = !DILocation(line: 149, column: 9, scope: !417)
!429 = !DILocalVariable(name: "pprinter_data", scope: !417, file: !105, line: 150, type: !23)
!430 = !DILocation(line: 150, column: 11, scope: !417)
!431 = !DILocation(line: 152, column: 35, scope: !417)
!432 = !DILocation(line: 152, column: 18, scope: !417)
!433 = !DILocation(line: 152, column: 16, scope: !417)
!434 = !DILocation(line: 153, column: 12, scope: !417)
!435 = !DILocation(line: 153, column: 28, scope: !417)
!436 = !DILocation(line: 153, column: 34, scope: !417)
!437 = !DILocation(line: 153, column: 45, scope: !417)
!438 = !DILocation(line: 153, column: 60, scope: !417)
!439 = !DILocation(line: 153, column: 21, scope: !417)
!440 = !DILocation(line: 153, column: 19, scope: !417)
!441 = !DILocation(line: 153, column: 3, scope: !417)
!442 = !DILocation(line: 153, column: 10, scope: !417)
!443 = !DILocation(line: 155, column: 13, scope: !444)
!444 = distinct !DILexicalBlock(scope: !417, file: !105, line: 155, column: 6)
!445 = !DILocation(line: 155, column: 28, scope: !444)
!446 = !DILocation(line: 155, column: 6, scope: !444)
!447 = !DILocation(line: 155, column: 6, scope: !417)
!448 = !DILocation(line: 157, column: 4, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !105, line: 156, column: 2)
!450 = !DILocation(line: 157, column: 11, scope: !449)
!451 = !DILocation(line: 158, column: 3, scope: !449)
!452 = !DILocation(line: 160, column: 2, scope: !417)
!453 = !DILocation(line: 161, column: 1, scope: !417)
!454 = distinct !DISubprogram(name: "get_printer_data", scope: !105, file: !105, line: 24, type: !455, isLocal: true, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !151)
!455 = !DISubroutineType(types: !456)
!456 = !{!23, !115}
!457 = !DILocalVariable(name: "handle", arg: 1, scope: !454, file: !105, line: 24, type: !115)
!458 = !DILocation(line: 24, column: 30, scope: !454)
!459 = !DILocalVariable(name: "index", scope: !454, file: !105, line: 26, type: !36)
!460 = !DILocation(line: 26, column: 6, scope: !454)
!461 = !DILocation(line: 28, column: 13, scope: !462)
!462 = distinct !DILexicalBlock(scope: !454, file: !105, line: 28, column: 2)
!463 = !DILocation(line: 28, column: 7, scope: !462)
!464 = !DILocation(line: 28, column: 18, scope: !465)
!465 = !DILexicalBlockFile(scope: !466, file: !105, discriminator: 1)
!466 = distinct !DILexicalBlock(scope: !462, file: !105, line: 28, column: 2)
!467 = !DILocation(line: 28, column: 24, scope: !465)
!468 = !DILocation(line: 28, column: 2, scope: !465)
!469 = !DILocation(line: 30, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !105, line: 30, column: 7)
!471 = distinct !DILexicalBlock(scope: !466, file: !105, line: 29, column: 2)
!472 = !DILocation(line: 30, column: 32, scope: !470)
!473 = !DILocation(line: 30, column: 17, scope: !470)
!474 = !DILocation(line: 30, column: 39, scope: !470)
!475 = !DILocation(line: 30, column: 14, scope: !470)
!476 = !DILocation(line: 30, column: 7, scope: !471)
!477 = !DILocation(line: 31, column: 38, scope: !470)
!478 = !DILocation(line: 31, column: 23, scope: !470)
!479 = !DILocation(line: 31, column: 45, scope: !470)
!480 = !DILocation(line: 31, column: 11, scope: !470)
!481 = !DILocation(line: 31, column: 4, scope: !470)
!482 = !DILocation(line: 32, column: 2, scope: !471)
!483 = !DILocation(line: 28, column: 37, scope: !484)
!484 = !DILexicalBlockFile(scope: !466, file: !105, discriminator: 2)
!485 = !DILocation(line: 28, column: 2, scope: !484)
!486 = distinct !{!486, !487}
!487 = !DILocation(line: 28, column: 2, scope: !454)
!488 = !DILocation(line: 33, column: 2, scope: !454)
!489 = !DILocation(line: 34, column: 1, scope: !454)
