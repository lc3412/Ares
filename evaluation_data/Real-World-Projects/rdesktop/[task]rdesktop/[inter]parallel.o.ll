; ModuleID = './[inter]parallel.o.i'
source_filename = "./[inter]parallel.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rdpdr_device_info = type { i32, i32, [8 x i8], i8*, i8* }
%struct._DEVICE_FNS = type { i32 (i32, i32, i32, i32, i32, i8*, i32*)*, i32 (i32)*, i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i32, %struct.stream*, %struct.stream*)* }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.rdpdr_parallel_device_info = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@g_rdpdr_device = external global [0 x %struct.rdpdr_device_info], align 8
@.str = private unnamed_addr constant [34 x i8] c"parallel_enum_devices(), %s to %s\00", align 1
@parallel_fns = global %struct._DEVICE_FNS { i32 (i32, i32, i32, i32, i32, i8*, i32*)* @parallel_create, i32 (i32)* @parallel_close, i32 (i32, i8*, i32, i32, i32*)* @parallel_read, i32 (i32, i8*, i32, i32, i32*)* @parallel_write, i32 (i32, i32, %struct.stream*, %struct.stream*)* @parallel_device_control }, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"parallel_create(), open failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"parallel_create(), fcntl failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"parellel_write(), ioctl failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"parallel_device_control(), ioctl %d\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"parallel_device_control(), unhandled ioctl %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @parallel_enum_devices(i32*, i8*) #0 !dbg !95 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rdpdr_parallel_device_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !99, metadata !100), !dbg !101
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !102, metadata !100), !dbg !103
  call void @llvm.dbg.declare(metadata %struct.rdpdr_parallel_device_info** %5, metadata !104, metadata !100), !dbg !105
  call void @llvm.dbg.declare(metadata i8** %6, metadata !106, metadata !100), !dbg !107
  %9 = load i8*, i8** %4, align 8, !dbg !108
  store i8* %9, i8** %6, align 8, !dbg !107
  call void @llvm.dbg.declare(metadata i8** %7, metadata !109, metadata !100), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %8, metadata !111, metadata !100), !dbg !112
  store i32 0, i32* %8, align 4, !dbg !112
  %10 = load i8*, i8** %4, align 8, !dbg !113
  %11 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !113
  store i8* %11, i8** %4, align 8, !dbg !113
  br label %12, !dbg !114

; <label>:12:                                     ; preds = %22, %2
  %13 = load i8*, i8** %4, align 8, !dbg !115
  %14 = call i8* @next_arg(i8* %13, i8 signext 44), !dbg !117
  store i8* %14, i8** %6, align 8, !dbg !118
  %15 = icmp ne i8* %14, null, !dbg !118
  br i1 %15, label %16, label %20, !dbg !119

; <label>:16:                                     ; preds = %12
  %17 = load i32*, i32** %3, align 8, !dbg !120
  %18 = load i32, i32* %17, align 4, !dbg !122
  %19 = icmp ult i32 %18, 16, !dbg !123
  br label %20

; <label>:20:                                     ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %84, !dbg !124

; <label>:22:                                     ; preds = %20
  %23 = call i8* @xmalloc(i32 64), !dbg !126
  %24 = bitcast i8* %23 to %struct.rdpdr_parallel_device_info*, !dbg !128
  store %struct.rdpdr_parallel_device_info* %24, %struct.rdpdr_parallel_device_info** %5, align 8, !dbg !129
  %25 = load i8*, i8** %4, align 8, !dbg !130
  %26 = call i8* @next_arg(i8* %25, i8 signext 61), !dbg !131
  store i8* %26, i8** %7, align 8, !dbg !132
  %27 = load i32*, i32** %3, align 8, !dbg !133
  %28 = load i32, i32* %27, align 4, !dbg !134
  %29 = zext i32 %28 to i64, !dbg !135
  %30 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %29, !dbg !135
  %31 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %30, i32 0, i32 2, !dbg !136
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %31, i32 0, i32 0, !dbg !135
  %33 = load i8*, i8** %4, align 8, !dbg !137
  %34 = call i8* @strcpy(i8* %32, i8* %33) #6, !dbg !138
  %35 = load i32*, i32** %3, align 8, !dbg !139
  %36 = load i32, i32* %35, align 4, !dbg !140
  %37 = zext i32 %36 to i64, !dbg !141
  %38 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %37, !dbg !141
  %39 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %38, i32 0, i32 2, !dbg !142
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %39, i32 0, i32 0, !dbg !141
  call void @toupper_str(i8* %40), !dbg !143
  %41 = load i8*, i8** %7, align 8, !dbg !144
  %42 = call i64 @strlen(i8* %41) #7, !dbg !145
  %43 = add i64 %42, 1, !dbg !146
  %44 = trunc i64 %43 to i32, !dbg !145
  %45 = call i8* @xmalloc(i32 %44), !dbg !147
  %46 = load i32*, i32** %3, align 8, !dbg !149
  %47 = load i32, i32* %46, align 4, !dbg !150
  %48 = zext i32 %47 to i64, !dbg !151
  %49 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %48, !dbg !151
  %50 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %49, i32 0, i32 3, !dbg !152
  store i8* %45, i8** %50, align 8, !dbg !153
  %51 = load i32*, i32** %3, align 8, !dbg !154
  %52 = load i32, i32* %51, align 4, !dbg !155
  %53 = zext i32 %52 to i64, !dbg !156
  %54 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %53, !dbg !156
  %55 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %54, i32 0, i32 3, !dbg !157
  %56 = load i8*, i8** %55, align 8, !dbg !157
  %57 = load i8*, i8** %7, align 8, !dbg !158
  %58 = call i8* @strcpy(i8* %56, i8* %57) #6, !dbg !159
  %59 = load i8*, i8** %4, align 8, !dbg !160
  %60 = load i8*, i8** %7, align 8, !dbg !161
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* %59, i8* %60), !dbg !162
  %61 = load i32*, i32** %3, align 8, !dbg !163
  %62 = load i32, i32* %61, align 4, !dbg !164
  %63 = zext i32 %62 to i64, !dbg !165
  %64 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %63, !dbg !165
  %65 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %64, i32 0, i32 0, !dbg !166
  store i32 2, i32* %65, align 8, !dbg !167
  %66 = load %struct.rdpdr_parallel_device_info*, %struct.rdpdr_parallel_device_info** %5, align 8, !dbg !168
  %67 = bitcast %struct.rdpdr_parallel_device_info* %66 to i8*, !dbg !169
  %68 = load i32*, i32** %3, align 8, !dbg !170
  %69 = load i32, i32* %68, align 4, !dbg !171
  %70 = zext i32 %69 to i64, !dbg !172
  %71 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %70, !dbg !172
  %72 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %71, i32 0, i32 4, !dbg !173
  store i8* %67, i8** %72, align 8, !dbg !174
  %73 = load i32*, i32** %3, align 8, !dbg !175
  %74 = load i32, i32* %73, align 4, !dbg !176
  %75 = zext i32 %74 to i64, !dbg !177
  %76 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %75, !dbg !177
  %77 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %76, i32 0, i32 1, !dbg !178
  store i32 0, i32* %77, align 4, !dbg !179
  %78 = load i32, i32* %8, align 4, !dbg !180
  %79 = add nsw i32 %78, 1, !dbg !180
  store i32 %79, i32* %8, align 4, !dbg !180
  %80 = load i32*, i32** %3, align 8, !dbg !181
  %81 = load i32, i32* %80, align 4, !dbg !182
  %82 = add i32 %81, 1, !dbg !182
  store i32 %82, i32* %80, align 4, !dbg !182
  %83 = load i8*, i8** %6, align 8, !dbg !183
  store i8* %83, i8** %4, align 8, !dbg !184
  br label %12, !dbg !185, !llvm.loop !187

; <label>:84:                                     ; preds = %20
  %85 = load i32, i32* %8, align 4, !dbg !188
  ret i32 %85, !dbg !189
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @next_arg(i8*, i8 signext) #2

declare i8* @xmalloc(i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare void @toupper_str(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @parallel_create(i32, i32, i32, i32, i32, i8*, i32*) #0 !dbg !190 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !191, metadata !100), !dbg !192
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !193, metadata !100), !dbg !194
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !195, metadata !100), !dbg !196
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !197, metadata !100), !dbg !198
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !199, metadata !100), !dbg !200
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !201, metadata !100), !dbg !202
  store i32* %6, i32** %15, align 8
  call void @llvm.dbg.declare(metadata i32** %15, metadata !203, metadata !100), !dbg !204
  %17 = load i32, i32* %10, align 4, !dbg !205
  %18 = load i32, i32* %11, align 4, !dbg !206
  %19 = load i32, i32* %12, align 4, !dbg !207
  %20 = load i32, i32* %13, align 4, !dbg !208
  %21 = load i8*, i8** %14, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i32* %16, metadata !210, metadata !100), !dbg !211
  %22 = load i32, i32* %9, align 4, !dbg !212
  %23 = zext i32 %22 to i64, !dbg !213
  %24 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %23, !dbg !213
  %25 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %24, i32 0, i32 3, !dbg !214
  %26 = load i8*, i8** %25, align 8, !dbg !214
  %27 = call i32 (i8*, i32, ...) @open(i8* %26, i32 2), !dbg !215
  store i32 %27, i32* %16, align 4, !dbg !216
  %28 = load i32, i32* %16, align 4, !dbg !217
  %29 = icmp eq i32 %28, -1, !dbg !219
  br i1 %29, label %30, label %34, !dbg !220

; <label>:30:                                     ; preds = %7
  %31 = call i32* @__errno_location() #1, !dbg !221
  %32 = load i32, i32* %31, align 4, !dbg !223
  %33 = call i8* @strerror(i32 %32) #6, !dbg !224
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i8* %33), !dbg !226
  store i32 -1073741790, i32* %8, align 4, !dbg !228
  br label %52, !dbg !228

; <label>:34:                                     ; preds = %7
  %35 = load i32, i32* %16, align 4, !dbg !229
  %36 = call i32 (i32, i32, ...) @fcntl(i32 %35, i32 4, i32 2048), !dbg !231
  %37 = icmp eq i32 %36, -1, !dbg !232
  br i1 %37, label %38, label %42, !dbg !233

; <label>:38:                                     ; preds = %34
  %39 = call i32* @__errno_location() #1, !dbg !234
  %40 = load i32, i32* %39, align 4, !dbg !235
  %41 = call i8* @strerror(i32 %40) #6, !dbg !236
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* %41), !dbg !238
  br label %42, !dbg !240

; <label>:42:                                     ; preds = %38, %34
  %43 = load i32, i32* %16, align 4, !dbg !241
  %44 = call i32 (i32, i64, ...) @ioctl(i32 %43, i64 1540, i32 1) #6, !dbg !242
  %45 = load i32, i32* %16, align 4, !dbg !243
  %46 = load i32, i32* %9, align 4, !dbg !244
  %47 = zext i32 %46 to i64, !dbg !245
  %48 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %47, !dbg !245
  %49 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %48, i32 0, i32 1, !dbg !246
  store i32 %45, i32* %49, align 4, !dbg !247
  %50 = load i32, i32* %16, align 4, !dbg !248
  %51 = load i32*, i32** %15, align 8, !dbg !249
  store i32 %50, i32* %51, align 4, !dbg !250
  store i32 0, i32* %8, align 4, !dbg !251
  br label %52, !dbg !251

; <label>:52:                                     ; preds = %42, %30
  %53 = load i32, i32* %8, align 4, !dbg !252
  ret i32 %53, !dbg !252
}

; Function Attrs: nounwind uwtable
define internal i32 @parallel_close(i32) #0 !dbg !253 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !254, metadata !100), !dbg !255
  call void @llvm.dbg.declare(metadata i32* %3, metadata !256, metadata !100), !dbg !257
  %4 = load i32, i32* %2, align 4, !dbg !258
  %5 = call i32 @get_device_index(i32 %4), !dbg !259
  store i32 %5, i32* %3, align 4, !dbg !257
  %6 = load i32, i32* %3, align 4, !dbg !260
  %7 = icmp sge i32 %6, 0, !dbg !262
  br i1 %7, label %8, label %13, !dbg !263

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !264
  %10 = sext i32 %9 to i64, !dbg !265
  %11 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %10, !dbg !265
  %12 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %11, i32 0, i32 1, !dbg !266
  store i32 0, i32* %12, align 4, !dbg !267
  br label %13, !dbg !265

; <label>:13:                                     ; preds = %8, %1
  %14 = load i32, i32* %2, align 4, !dbg !268
  %15 = call i32 @close(i32 %14), !dbg !269
  ret i32 0, !dbg !270
}

; Function Attrs: nounwind uwtable
define internal i32 @parallel_read(i32, i8*, i32, i32, i32*) #0 !dbg !271 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !272, metadata !100), !dbg !273
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !274, metadata !100), !dbg !275
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !276, metadata !100), !dbg !277
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !278, metadata !100), !dbg !279
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !280, metadata !100), !dbg !281
  %11 = load i32, i32* %9, align 4, !dbg !282
  %12 = load i32, i32* %6, align 4, !dbg !283
  %13 = load i8*, i8** %7, align 8, !dbg !284
  %14 = load i32, i32* %8, align 4, !dbg !285
  %15 = zext i32 %14 to i64, !dbg !285
  %16 = call i64 @read(i32 %12, i8* %13, i64 %15), !dbg !286
  %17 = trunc i64 %16 to i32, !dbg !286
  %18 = load i32*, i32** %10, align 8, !dbg !287
  store i32 %17, i32* %18, align 4, !dbg !288
  ret i32 0, !dbg !289
}

; Function Attrs: nounwind uwtable
define internal i32 @parallel_write(i32, i8*, i32, i32, i32*) #0 !dbg !290 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !291, metadata !100), !dbg !292
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !293, metadata !100), !dbg !294
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !295, metadata !100), !dbg !296
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !297, metadata !100), !dbg !298
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !299, metadata !100), !dbg !300
  %14 = load i32, i32* %9, align 4, !dbg !301
  call void @llvm.dbg.declare(metadata i32* %11, metadata !302, metadata !100), !dbg !303
  store i32 0, i32* %11, align 4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %12, metadata !304, metadata !100), !dbg !305
  %15 = load i32, i32* %6, align 4, !dbg !306
  %16 = load i8*, i8** %7, align 8, !dbg !307
  %17 = load i32, i32* %8, align 4, !dbg !308
  %18 = zext i32 %17 to i64, !dbg !308
  %19 = call i64 @write(i32 %15, i8* %16, i64 %18), !dbg !309
  %20 = trunc i64 %19 to i32, !dbg !309
  store i32 %20, i32* %12, align 4, !dbg !305
  %21 = load i32, i32* %12, align 4, !dbg !310
  %22 = icmp slt i32 %21, 0, !dbg !312
  br i1 %22, label %23, label %40, !dbg !313

; <label>:23:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata i32* %13, metadata !314, metadata !100), !dbg !316
  %24 = load i32*, i32** %10, align 8, !dbg !317
  store i32 0, i32* %24, align 4, !dbg !318
  %25 = call i32* @__errno_location() #1, !dbg !319
  %26 = load i32, i32* %25, align 4, !dbg !320
  switch i32 %26, label %30 [
    i32 11, label %27
    i32 28, label %28
    i32 5, label %29
  ], !dbg !321

; <label>:27:                                     ; preds = %23
  store i32 -2147483632, i32* %11, align 4, !dbg !322
  br label %31, !dbg !324

; <label>:28:                                     ; preds = %23
  store i32 -2147483634, i32* %11, align 4, !dbg !325
  br label %31, !dbg !326

; <label>:29:                                     ; preds = %23
  store i32 -2147483632, i32* %11, align 4, !dbg !327
  br label %31, !dbg !328

; <label>:30:                                     ; preds = %23
  store i32 -2147483633, i32* %11, align 4, !dbg !329
  br label %31, !dbg !330

; <label>:31:                                     ; preds = %30, %29, %28, %27
  %32 = load i32, i32* %6, align 4, !dbg !331
  %33 = call i32 (i32, i64, ...) @ioctl(i32 %32, i64 1547, i32* %13) #6, !dbg !333
  %34 = icmp eq i32 %33, 0, !dbg !334
  br i1 %34, label %35, label %39, !dbg !335

; <label>:35:                                     ; preds = %31
  %36 = call i32* @__errno_location() #1, !dbg !336
  %37 = load i32, i32* %36, align 4, !dbg !338
  %38 = call i8* @strerror(i32 %37) #6, !dbg !339
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* %38), !dbg !341
  br label %39, !dbg !343

; <label>:39:                                     ; preds = %35, %31
  br label %40, !dbg !344

; <label>:40:                                     ; preds = %39, %5
  %41 = load i32, i32* %12, align 4, !dbg !345
  %42 = load i32*, i32** %10, align 8, !dbg !346
  store i32 %41, i32* %42, align 4, !dbg !347
  %43 = load i32, i32* %11, align 4, !dbg !348
  ret i32 %43, !dbg !349
}

; Function Attrs: nounwind uwtable
define internal i32 @parallel_device_control(i32, i32, %struct.stream*, %struct.stream*) #0 !dbg !350 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stream*, align 8
  %9 = alloca %struct.stream*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !351, metadata !100), !dbg !352
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !353, metadata !100), !dbg !354
  store %struct.stream* %2, %struct.stream** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %8, metadata !355, metadata !100), !dbg !356
  store %struct.stream* %3, %struct.stream** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %9, metadata !357, metadata !100), !dbg !358
  %10 = load i32, i32* %6, align 4, !dbg !359
  %11 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !360
  %12 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !361
  %13 = load i32, i32* %7, align 4, !dbg !362
  %14 = lshr i32 %13, 16, !dbg !364
  %15 = icmp ne i32 %14, 34, !dbg !365
  br i1 %15, label %16, label %17, !dbg !366

; <label>:16:                                     ; preds = %4
  store i32 -1073741811, i32* %5, align 4, !dbg !367
  br label %28, !dbg !367

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %7, align 4, !dbg !368
  %19 = lshr i32 %18, 2, !dbg !368
  store i32 %19, i32* %7, align 4, !dbg !368
  %20 = load i32, i32* %7, align 4, !dbg !369
  %21 = and i32 %20, 4095, !dbg !369
  store i32 %21, i32* %7, align 4, !dbg !369
  %22 = load i32, i32* %7, align 4, !dbg !370
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i32 %22), !dbg !371
  %23 = load i32, i32* %7, align 4, !dbg !372
  switch i32 %23, label %25 [
    i32 12, label %24
  ], !dbg !373

; <label>:24:                                     ; preds = %17
  br label %25, !dbg !374

; <label>:25:                                     ; preds = %17, %24
  %26 = load i32, i32* %7, align 4, !dbg !375
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0), i32 %26), !dbg !377
  br label %27, !dbg !378

; <label>:27:                                     ; preds = %25
  store i32 0, i32* %5, align 4, !dbg !379
  br label %28, !dbg !379

; <label>:28:                                     ; preds = %27, %16
  %29 = load i32, i32* %5, align 4, !dbg !380
  ret i32 %29, !dbg !380
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #3

declare i32 @get_device_index(i32) #2

declare i32 @close(i32) #2

declare i64 @read(i32, i8*, i64) #2

declare i64 @write(i32, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!92, !93}
!llvm.ident = !{!94}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !50)
!1 = !DIFile(filename: "[inter]parallel.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !{!23, !48, !49}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARALLEL_DEVICE", file: !25, line: 275, baseType: !26)
!25 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdpdr_parallel_device_info", file: !25, line: 262, size: 512, align: 64, elements: !27)
!27 = !{!28, !31, !32, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !26, file: !25, line: 264, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "printer", scope: !26, file: !25, line: 264, baseType: !29, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "queue_in_size", scope: !26, file: !25, line: 265, baseType: !33, size: 32, align: 32, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !25, line: 43, baseType: !34)
!34 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "queue_out_size", scope: !26, file: !25, line: 266, baseType: !33, size: 32, align: 32, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "wait_mask", scope: !26, file: !25, line: 267, baseType: !33, size: 32, align: 32, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "read_interval_timeout", scope: !26, file: !25, line: 268, baseType: !33, size: 32, align: 32, offset: 224)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "read_total_timeout_multiplier", scope: !26, file: !25, line: 269, baseType: !33, size: 32, align: 32, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "read_total_timeout_constant", scope: !26, file: !25, line: 270, baseType: !33, size: 32, align: 32, offset: 288)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "write_total_timeout_multiplier", scope: !26, file: !25, line: 271, baseType: !33, size: 32, align: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "write_total_timeout_constant", scope: !26, file: !25, line: 272, baseType: !33, size: 32, align: 32, offset: 352)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "posix_wait_mask", scope: !26, file: !25, line: 272, baseType: !33, size: 32, align: 32, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "bloblen", scope: !26, file: !25, line: 272, baseType: !33, size: 32, align: 32, offset: 416)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !26, file: !25, line: 273, baseType: !45, size: 64, align: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !25, line: 39, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !{!51}
!51 = distinct !DIGlobalVariable(name: "parallel_fns", scope: !0, file: !52, line: 195, type: !53, isLocal: false, isDefinition: true, variable: %struct._DEVICE_FNS* @parallel_fns)
!52 = !DIFile(filename: "parallel.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_FNS", file: !25, line: 223, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVICE_FNS", file: !25, line: 211, size: 320, align: 64, elements: !55)
!55 = !{!56, !63, !67, !72, !73}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !54, file: !25, line: 213, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !33, !33, !33, !33, !33, !29, !61}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_NTSTATUS", file: !25, line: 208, baseType: !33)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_NTHANDLE", file: !25, line: 209, baseType: !33)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !54, file: !25, line: 216, baseType: !64, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!60, !62}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !54, file: !25, line: 217, baseType: !68, size: 64, align: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!60, !62, !45, !33, !33, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !54, file: !25, line: 219, baseType: !68, size: 64, align: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "device_control", scope: !54, file: !25, line: 221, baseType: !74, size: 64, align: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!60, !62, !33, !77, !77}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !78, line: 40, baseType: !79)
!78 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !78, line: 25, size: 576, align: 64, elements: !81)
!81 = !{!82, !84, !85, !86, !87, !88, !89, !90, !91}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !80, file: !78, line: 27, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !80, file: !78, line: 28, baseType: !83, size: 64, align: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !80, file: !78, line: 29, baseType: !83, size: 64, align: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !80, file: !78, line: 30, baseType: !34, size: 32, align: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !80, file: !78, line: 33, baseType: !83, size: 64, align: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !80, file: !78, line: 34, baseType: !83, size: 64, align: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !80, file: !78, line: 35, baseType: !83, size: 64, align: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !80, file: !78, line: 36, baseType: !83, size: 64, align: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !80, file: !78, line: 37, baseType: !83, size: 64, align: 64, offset: 512)
!92 = !{i32 2, !"Dwarf Version", i32 4}
!93 = !{i32 2, !"Debug Info Version", i32 3}
!94 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!95 = distinct !DISubprogram(name: "parallel_enum_devices", scope: !52, file: !52, line: 42, type: !96, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!96 = !DISubroutineType(types: !97)
!97 = !{!49, !71, !29}
!98 = !{}
!99 = !DILocalVariable(name: "id", arg: 1, scope: !95, file: !52, line: 42, type: !71)
!100 = !DIExpression()
!101 = !DILocation(line: 42, column: 32, scope: !95)
!102 = !DILocalVariable(name: "optarg", arg: 2, scope: !95, file: !52, line: 42, type: !29)
!103 = !DILocation(line: 42, column: 42, scope: !95)
!104 = !DILocalVariable(name: "ppar_info", scope: !95, file: !52, line: 44, type: !23)
!105 = !DILocation(line: 44, column: 19, scope: !95)
!106 = !DILocalVariable(name: "pos", scope: !95, file: !52, line: 46, type: !29)
!107 = !DILocation(line: 46, column: 8, scope: !95)
!108 = !DILocation(line: 46, column: 14, scope: !95)
!109 = !DILocalVariable(name: "pos2", scope: !95, file: !52, line: 47, type: !29)
!110 = !DILocation(line: 47, column: 8, scope: !95)
!111 = !DILocalVariable(name: "count", scope: !95, file: !52, line: 48, type: !49)
!112 = !DILocation(line: 48, column: 6, scope: !95)
!113 = !DILocation(line: 51, column: 8, scope: !95)
!114 = !DILocation(line: 52, column: 2, scope: !95)
!115 = !DILocation(line: 52, column: 25, scope: !116)
!116 = !DILexicalBlockFile(scope: !95, file: !52, discriminator: 1)
!117 = !DILocation(line: 52, column: 16, scope: !116)
!118 = !DILocation(line: 52, column: 14, scope: !116)
!119 = !DILocation(line: 52, column: 39, scope: !116)
!120 = !DILocation(line: 52, column: 43, scope: !121)
!121 = !DILexicalBlockFile(scope: !95, file: !52, discriminator: 2)
!122 = !DILocation(line: 52, column: 42, scope: !121)
!123 = !DILocation(line: 52, column: 46, scope: !121)
!124 = !DILocation(line: 52, column: 2, scope: !125)
!125 = !DILexicalBlockFile(scope: !95, file: !52, discriminator: 3)
!126 = !DILocation(line: 54, column: 35, scope: !127)
!127 = distinct !DILexicalBlock(scope: !95, file: !52, line: 53, column: 2)
!128 = !DILocation(line: 54, column: 15, scope: !127)
!129 = !DILocation(line: 54, column: 13, scope: !127)
!130 = !DILocation(line: 56, column: 19, scope: !127)
!131 = !DILocation(line: 56, column: 10, scope: !127)
!132 = !DILocation(line: 56, column: 8, scope: !127)
!133 = !DILocation(line: 57, column: 26, scope: !127)
!134 = !DILocation(line: 57, column: 25, scope: !127)
!135 = !DILocation(line: 57, column: 10, scope: !127)
!136 = !DILocation(line: 57, column: 30, scope: !127)
!137 = !DILocation(line: 57, column: 36, scope: !127)
!138 = !DILocation(line: 57, column: 3, scope: !127)
!139 = !DILocation(line: 59, column: 31, scope: !127)
!140 = !DILocation(line: 59, column: 30, scope: !127)
!141 = !DILocation(line: 59, column: 15, scope: !127)
!142 = !DILocation(line: 59, column: 35, scope: !127)
!143 = !DILocation(line: 59, column: 3, scope: !127)
!144 = !DILocation(line: 61, column: 51, scope: !127)
!145 = !DILocation(line: 61, column: 44, scope: !127)
!146 = !DILocation(line: 61, column: 57, scope: !127)
!147 = !DILocation(line: 61, column: 36, scope: !148)
!148 = !DILexicalBlockFile(scope: !127, file: !52, discriminator: 1)
!149 = !DILocation(line: 61, column: 19, scope: !127)
!150 = !DILocation(line: 61, column: 18, scope: !127)
!151 = !DILocation(line: 61, column: 3, scope: !127)
!152 = !DILocation(line: 61, column: 23, scope: !127)
!153 = !DILocation(line: 61, column: 34, scope: !127)
!154 = !DILocation(line: 62, column: 26, scope: !127)
!155 = !DILocation(line: 62, column: 25, scope: !127)
!156 = !DILocation(line: 62, column: 10, scope: !127)
!157 = !DILocation(line: 62, column: 30, scope: !127)
!158 = !DILocation(line: 62, column: 42, scope: !127)
!159 = !DILocation(line: 62, column: 3, scope: !127)
!160 = !DILocation(line: 63, column: 60, scope: !127)
!161 = !DILocation(line: 63, column: 68, scope: !127)
!162 = !DILocation(line: 63, column: 3, scope: !127)
!163 = !DILocation(line: 66, column: 19, scope: !127)
!164 = !DILocation(line: 66, column: 18, scope: !127)
!165 = !DILocation(line: 66, column: 3, scope: !127)
!166 = !DILocation(line: 66, column: 23, scope: !127)
!167 = !DILocation(line: 66, column: 35, scope: !127)
!168 = !DILocation(line: 67, column: 47, scope: !127)
!169 = !DILocation(line: 67, column: 38, scope: !127)
!170 = !DILocation(line: 67, column: 19, scope: !127)
!171 = !DILocation(line: 67, column: 18, scope: !127)
!172 = !DILocation(line: 67, column: 3, scope: !127)
!173 = !DILocation(line: 67, column: 23, scope: !127)
!174 = !DILocation(line: 67, column: 36, scope: !127)
!175 = !DILocation(line: 68, column: 19, scope: !127)
!176 = !DILocation(line: 68, column: 18, scope: !127)
!177 = !DILocation(line: 68, column: 3, scope: !127)
!178 = !DILocation(line: 68, column: 23, scope: !127)
!179 = !DILocation(line: 68, column: 30, scope: !127)
!180 = !DILocation(line: 69, column: 8, scope: !127)
!181 = !DILocation(line: 70, column: 5, scope: !127)
!182 = !DILocation(line: 70, column: 8, scope: !127)
!183 = !DILocation(line: 72, column: 12, scope: !127)
!184 = !DILocation(line: 72, column: 10, scope: !127)
!185 = !DILocation(line: 52, column: 2, scope: !186)
!186 = !DILexicalBlockFile(scope: !95, file: !52, discriminator: 4)
!187 = distinct !{!187, !114}
!188 = !DILocation(line: 74, column: 9, scope: !95)
!189 = !DILocation(line: 74, column: 2, scope: !95)
!190 = distinct !DISubprogram(name: "parallel_create", scope: !52, file: !52, line: 78, type: !58, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!191 = !DILocalVariable(name: "device_id", arg: 1, scope: !190, file: !52, line: 78, type: !33)
!192 = !DILocation(line: 78, column: 24, scope: !190)
!193 = !DILocalVariable(name: "access", arg: 2, scope: !190, file: !52, line: 78, type: !33)
!194 = !DILocation(line: 78, column: 42, scope: !190)
!195 = !DILocalVariable(name: "share_mode", arg: 3, scope: !190, file: !52, line: 78, type: !33)
!196 = !DILocation(line: 78, column: 57, scope: !190)
!197 = !DILocalVariable(name: "disposition", arg: 4, scope: !190, file: !52, line: 78, type: !33)
!198 = !DILocation(line: 78, column: 76, scope: !190)
!199 = !DILocalVariable(name: "flags", arg: 5, scope: !190, file: !52, line: 79, type: !33)
!200 = !DILocation(line: 79, column: 10, scope: !190)
!201 = !DILocalVariable(name: "filename", arg: 6, scope: !190, file: !52, line: 79, type: !29)
!202 = !DILocation(line: 79, column: 23, scope: !190)
!203 = !DILocalVariable(name: "handle", arg: 7, scope: !190, file: !52, line: 79, type: !61)
!204 = !DILocation(line: 79, column: 47, scope: !190)
!205 = !DILocation(line: 81, column: 9, scope: !190)
!206 = !DILocation(line: 82, column: 9, scope: !190)
!207 = !DILocation(line: 83, column: 9, scope: !190)
!208 = !DILocation(line: 84, column: 9, scope: !190)
!209 = !DILocation(line: 85, column: 9, scope: !190)
!210 = !DILocalVariable(name: "parallel_fd", scope: !190, file: !52, line: 86, type: !49)
!211 = !DILocation(line: 86, column: 6, scope: !190)
!212 = !DILocation(line: 88, column: 36, scope: !190)
!213 = !DILocation(line: 88, column: 21, scope: !190)
!214 = !DILocation(line: 88, column: 47, scope: !190)
!215 = !DILocation(line: 88, column: 16, scope: !190)
!216 = !DILocation(line: 88, column: 14, scope: !190)
!217 = !DILocation(line: 89, column: 6, scope: !218)
!218 = distinct !DILexicalBlock(scope: !190, file: !52, line: 89, column: 6)
!219 = !DILocation(line: 89, column: 18, scope: !218)
!220 = !DILocation(line: 89, column: 6, scope: !190)
!221 = !DILocation(line: 91, column: 71, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !52, line: 90, column: 2)
!223 = !DILocation(line: 91, column: 70, scope: !222)
!224 = !DILocation(line: 91, column: 61, scope: !225)
!225 = !DILexicalBlockFile(scope: !222, file: !52, discriminator: 1)
!226 = !DILocation(line: 91, column: 3, scope: !227)
!227 = !DILexicalBlockFile(scope: !222, file: !52, discriminator: 2)
!228 = !DILocation(line: 92, column: 3, scope: !222)
!229 = !DILocation(line: 96, column: 12, scope: !230)
!230 = distinct !DILexicalBlock(scope: !190, file: !52, line: 96, column: 6)
!231 = !DILocation(line: 96, column: 6, scope: !230)
!232 = !DILocation(line: 96, column: 45, scope: !230)
!233 = !DILocation(line: 96, column: 6, scope: !190)
!234 = !DILocation(line: 97, column: 72, scope: !230)
!235 = !DILocation(line: 97, column: 71, scope: !230)
!236 = !DILocation(line: 97, column: 62, scope: !237)
!237 = !DILexicalBlockFile(scope: !230, file: !52, discriminator: 1)
!238 = !DILocation(line: 97, column: 3, scope: !239)
!239 = !DILexicalBlockFile(scope: !230, file: !52, discriminator: 2)
!240 = !DILocation(line: 97, column: 3, scope: !230)
!241 = !DILocation(line: 101, column: 8, scope: !190)
!242 = !DILocation(line: 101, column: 2, scope: !190)
!243 = !DILocation(line: 104, column: 37, scope: !190)
!244 = !DILocation(line: 104, column: 17, scope: !190)
!245 = !DILocation(line: 104, column: 2, scope: !190)
!246 = !DILocation(line: 104, column: 28, scope: !190)
!247 = !DILocation(line: 104, column: 35, scope: !190)
!248 = !DILocation(line: 106, column: 12, scope: !190)
!249 = !DILocation(line: 106, column: 3, scope: !190)
!250 = !DILocation(line: 106, column: 10, scope: !190)
!251 = !DILocation(line: 108, column: 2, scope: !190)
!252 = !DILocation(line: 109, column: 1, scope: !190)
!253 = distinct !DISubprogram(name: "parallel_close", scope: !52, file: !52, line: 112, type: !65, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!254 = !DILocalVariable(name: "handle", arg: 1, scope: !253, file: !52, line: 112, type: !62)
!255 = !DILocation(line: 112, column: 28, scope: !253)
!256 = !DILocalVariable(name: "i", scope: !253, file: !52, line: 114, type: !49)
!257 = !DILocation(line: 114, column: 6, scope: !253)
!258 = !DILocation(line: 114, column: 27, scope: !253)
!259 = !DILocation(line: 114, column: 10, scope: !253)
!260 = !DILocation(line: 115, column: 6, scope: !261)
!261 = distinct !DILexicalBlock(scope: !253, file: !52, line: 115, column: 6)
!262 = !DILocation(line: 115, column: 8, scope: !261)
!263 = !DILocation(line: 115, column: 6, scope: !253)
!264 = !DILocation(line: 116, column: 18, scope: !261)
!265 = !DILocation(line: 116, column: 3, scope: !261)
!266 = !DILocation(line: 116, column: 21, scope: !261)
!267 = !DILocation(line: 116, column: 28, scope: !261)
!268 = !DILocation(line: 117, column: 8, scope: !253)
!269 = !DILocation(line: 117, column: 2, scope: !253)
!270 = !DILocation(line: 118, column: 2, scope: !253)
!271 = distinct !DISubprogram(name: "parallel_read", scope: !52, file: !52, line: 122, type: !69, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!272 = !DILocalVariable(name: "handle", arg: 1, scope: !271, file: !52, line: 122, type: !62)
!273 = !DILocation(line: 122, column: 27, scope: !271)
!274 = !DILocalVariable(name: "data", arg: 2, scope: !271, file: !52, line: 122, type: !45)
!275 = !DILocation(line: 122, column: 43, scope: !271)
!276 = !DILocalVariable(name: "length", arg: 3, scope: !271, file: !52, line: 122, type: !33)
!277 = !DILocation(line: 122, column: 56, scope: !271)
!278 = !DILocalVariable(name: "offset", arg: 4, scope: !271, file: !52, line: 122, type: !33)
!279 = !DILocation(line: 122, column: 71, scope: !271)
!280 = !DILocalVariable(name: "result", arg: 5, scope: !271, file: !52, line: 122, type: !71)
!281 = !DILocation(line: 122, column: 88, scope: !271)
!282 = !DILocation(line: 124, column: 9, scope: !271)
!283 = !DILocation(line: 125, column: 17, scope: !271)
!284 = !DILocation(line: 125, column: 25, scope: !271)
!285 = !DILocation(line: 125, column: 31, scope: !271)
!286 = !DILocation(line: 125, column: 12, scope: !271)
!287 = !DILocation(line: 125, column: 3, scope: !271)
!288 = !DILocation(line: 125, column: 10, scope: !271)
!289 = !DILocation(line: 126, column: 2, scope: !271)
!290 = distinct !DISubprogram(name: "parallel_write", scope: !52, file: !52, line: 130, type: !69, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!291 = !DILocalVariable(name: "handle", arg: 1, scope: !290, file: !52, line: 130, type: !62)
!292 = !DILocation(line: 130, column: 28, scope: !290)
!293 = !DILocalVariable(name: "data", arg: 2, scope: !290, file: !52, line: 130, type: !45)
!294 = !DILocation(line: 130, column: 44, scope: !290)
!295 = !DILocalVariable(name: "length", arg: 3, scope: !290, file: !52, line: 130, type: !33)
!296 = !DILocation(line: 130, column: 57, scope: !290)
!297 = !DILocalVariable(name: "offset", arg: 4, scope: !290, file: !52, line: 130, type: !33)
!298 = !DILocation(line: 130, column: 72, scope: !290)
!299 = !DILocalVariable(name: "result", arg: 5, scope: !290, file: !52, line: 130, type: !71)
!300 = !DILocation(line: 130, column: 89, scope: !290)
!301 = !DILocation(line: 132, column: 9, scope: !290)
!302 = !DILocalVariable(name: "rc", scope: !290, file: !52, line: 133, type: !49)
!303 = !DILocation(line: 133, column: 6, scope: !290)
!304 = !DILocalVariable(name: "n", scope: !290, file: !52, line: 135, type: !49)
!305 = !DILocation(line: 135, column: 6, scope: !290)
!306 = !DILocation(line: 135, column: 16, scope: !290)
!307 = !DILocation(line: 135, column: 24, scope: !290)
!308 = !DILocation(line: 135, column: 30, scope: !290)
!309 = !DILocation(line: 135, column: 10, scope: !290)
!310 = !DILocation(line: 136, column: 6, scope: !311)
!311 = distinct !DILexicalBlock(scope: !290, file: !52, line: 136, column: 6)
!312 = !DILocation(line: 136, column: 8, scope: !311)
!313 = !DILocation(line: 136, column: 6, scope: !290)
!314 = !DILocalVariable(name: "status", scope: !315, file: !52, line: 139, type: !49)
!315 = distinct !DILexicalBlock(scope: !311, file: !52, line: 137, column: 2)
!316 = !DILocation(line: 139, column: 7, scope: !315)
!317 = !DILocation(line: 142, column: 4, scope: !315)
!318 = !DILocation(line: 142, column: 11, scope: !315)
!319 = !DILocation(line: 143, column: 12, scope: !315)
!320 = !DILocation(line: 143, column: 11, scope: !315)
!321 = !DILocation(line: 143, column: 3, scope: !315)
!322 = !DILocation(line: 146, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !315, file: !52, line: 144, column: 3)
!324 = !DILocation(line: 147, column: 5, scope: !323)
!325 = !DILocation(line: 149, column: 8, scope: !323)
!326 = !DILocation(line: 150, column: 5, scope: !323)
!327 = !DILocation(line: 152, column: 8, scope: !323)
!328 = !DILocation(line: 153, column: 5, scope: !323)
!329 = !DILocation(line: 155, column: 8, scope: !323)
!330 = !DILocation(line: 156, column: 5, scope: !323)
!331 = !DILocation(line: 159, column: 13, scope: !332)
!332 = distinct !DILexicalBlock(scope: !315, file: !52, line: 159, column: 7)
!333 = !DILocation(line: 159, column: 7, scope: !332)
!334 = !DILocation(line: 159, column: 42, scope: !332)
!335 = !DILocation(line: 159, column: 7, scope: !315)
!336 = !DILocation(line: 161, column: 72, scope: !337)
!337 = distinct !DILexicalBlock(scope: !332, file: !52, line: 160, column: 3)
!338 = !DILocation(line: 161, column: 71, scope: !337)
!339 = !DILocation(line: 161, column: 62, scope: !340)
!340 = !DILexicalBlockFile(scope: !337, file: !52, discriminator: 1)
!341 = !DILocation(line: 161, column: 4, scope: !342)
!342 = !DILexicalBlockFile(scope: !337, file: !52, discriminator: 2)
!343 = !DILocation(line: 162, column: 3, scope: !337)
!344 = !DILocation(line: 164, column: 2, scope: !315)
!345 = !DILocation(line: 165, column: 12, scope: !290)
!346 = !DILocation(line: 165, column: 3, scope: !290)
!347 = !DILocation(line: 165, column: 10, scope: !290)
!348 = !DILocation(line: 166, column: 9, scope: !290)
!349 = !DILocation(line: 166, column: 2, scope: !290)
!350 = distinct !DISubprogram(name: "parallel_device_control", scope: !52, file: !52, line: 170, type: !75, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!351 = !DILocalVariable(name: "handle", arg: 1, scope: !350, file: !52, line: 170, type: !62)
!352 = !DILocation(line: 170, column: 37, scope: !350)
!353 = !DILocalVariable(name: "request", arg: 2, scope: !350, file: !52, line: 170, type: !33)
!354 = !DILocation(line: 170, column: 52, scope: !350)
!355 = !DILocalVariable(name: "in", arg: 3, scope: !350, file: !52, line: 170, type: !77)
!356 = !DILocation(line: 170, column: 68, scope: !350)
!357 = !DILocalVariable(name: "out", arg: 4, scope: !350, file: !52, line: 170, type: !77)
!358 = !DILocation(line: 170, column: 79, scope: !350)
!359 = !DILocation(line: 172, column: 9, scope: !350)
!360 = !DILocation(line: 173, column: 9, scope: !350)
!361 = !DILocation(line: 174, column: 9, scope: !350)
!362 = !DILocation(line: 175, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !350, file: !52, line: 175, column: 6)
!364 = !DILocation(line: 175, column: 15, scope: !363)
!365 = !DILocation(line: 175, column: 22, scope: !363)
!366 = !DILocation(line: 175, column: 6, scope: !350)
!367 = !DILocation(line: 176, column: 3, scope: !363)
!368 = !DILocation(line: 179, column: 10, scope: !350)
!369 = !DILocation(line: 180, column: 10, scope: !350)
!370 = !DILocation(line: 182, column: 65, scope: !350)
!371 = !DILocation(line: 182, column: 2, scope: !350)
!372 = !DILocation(line: 184, column: 10, scope: !350)
!373 = !DILocation(line: 184, column: 2, scope: !350)
!374 = !DILocation(line: 185, column: 2, scope: !350)
!375 = !DILocation(line: 190, column: 11, scope: !376)
!376 = distinct !DILexicalBlock(scope: !350, file: !52, line: 185, column: 2)
!377 = !DILocation(line: 189, column: 4, scope: !376)
!378 = !DILocation(line: 191, column: 2, scope: !376)
!379 = !DILocation(line: 192, column: 2, scope: !350)
!380 = !DILocation(line: 193, column: 1, scope: !350)
