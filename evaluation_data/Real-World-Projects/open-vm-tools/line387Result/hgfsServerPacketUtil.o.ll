; ModuleID = './hgfsServerPacketUtil.o.i'
source_filename = "./hgfsServerPacketUtil.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HgfsPacket = type { i64, i64, i8*, i64, i32, i64, i8, i32, i8*, i64, i32, i64, i32, i8, i32, i8*, i64, i64, i8, [2 x %struct.HgfsVmxIov], i32, [1 x %struct.HgfsVmxIov] }
%struct.HgfsVmxIov = type { i8*, i64, i32, i8* }
%struct.HgfsServerChannelCallbacks = type { void ()*, void ()*, i8* (i64, i32, i8**)*, i8* (i64, i32, i8**)*, void (i8**)*, i8 (i8*, %struct.HgfsPacket*, i32)* }

@.str = private unnamed_addr constant [11 x i8] c"hgfsServer\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s:%s:\00", align 1
@__FUNCTION__.HSPU_GetReplyPacket = private unnamed_addr constant [20 x i8] c"HSPU_GetReplyPacket\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Existing reply packet %s %zu %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s Using meta packet for reply packet\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"hgfsServerPacketUtil.c\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%s Allocating reply packet\0A\00", align 1
@__FUNCTION__.HSPU_PutReplyPacket = private unnamed_addr constant [20 x i8] c"HSPU_PutReplyPacket\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s Freeing reply packet\00", align 1
@__FUNCTION__.HSPU_PutMetaPacket = private unnamed_addr constant [19 x i8] c"HSPU_PutMetaPacket\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s Hgfs Putting Meta packet\0A\00", align 1
@__FUNCTION__.HSPU_PutDataPacketBuf = private unnamed_addr constant [22 x i8] c"HSPU_PutDataPacketBuf\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"%s Hgfs Putting Data packet\0A\00", align 1
@__FUNCTION__.HSPUGetBuf = private unnamed_addr constant [11 x i8] c"HSPUGetBuf\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%s: Hgfs Allocating buffer \0A\00", align 1
@__FUNCTION__.HSPUPutBuf = private unnamed_addr constant [11 x i8] c"HSPUPutBuf\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"%s: Hgfs Freeing buffer \0A\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @HSPU_ValidateRequestPacketSize(%struct.HgfsPacket*, i64, i64, i64) #0 !dbg !28 {
  %5 = alloca %struct.HgfsPacket*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.HgfsPacket* %0, %struct.HgfsPacket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsPacket** %5, metadata !85, metadata !86), !dbg !87
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !88, metadata !86), !dbg !89
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !90, metadata !86), !dbg !91
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !92, metadata !86), !dbg !93
  call void @llvm.dbg.declare(metadata i64* %9, metadata !94, metadata !86), !dbg !95
  %11 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !96
  %12 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %11, i32 0, i32 5, !dbg !97
  %13 = load i64, i64* %12, align 8, !dbg !97
  store i64 %13, i64* %9, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata i8* %10, metadata !98, metadata !86), !dbg !99
  store i8 0, i8* %10, align 1, !dbg !99
  %14 = load i64, i64* %9, align 8, !dbg !100
  %15 = load i64, i64* %6, align 8, !dbg !102
  %16 = icmp uge i64 %14, %15, !dbg !103
  br i1 %16, label %17, label %21, !dbg !104

; <label>:17:                                     ; preds = %4
  %18 = load i64, i64* %6, align 8, !dbg !105
  %19 = load i64, i64* %9, align 8, !dbg !107
  %20 = sub i64 %19, %18, !dbg !107
  store i64 %20, i64* %9, align 8, !dbg !107
  br label %22, !dbg !108

; <label>:21:                                     ; preds = %4
  br label %37, !dbg !109

; <label>:22:                                     ; preds = %17
  %23 = load i64, i64* %9, align 8, !dbg !111
  %24 = load i64, i64* %7, align 8, !dbg !113
  %25 = icmp uge i64 %23, %24, !dbg !114
  br i1 %25, label %26, label %30, !dbg !115

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %7, align 8, !dbg !116
  %28 = load i64, i64* %9, align 8, !dbg !118
  %29 = sub i64 %28, %27, !dbg !118
  store i64 %29, i64* %9, align 8, !dbg !118
  br label %31, !dbg !119

; <label>:30:                                     ; preds = %22
  br label %37, !dbg !120

; <label>:31:                                     ; preds = %26
  %32 = load i64, i64* %9, align 8, !dbg !122
  %33 = load i64, i64* %8, align 8, !dbg !124
  %34 = icmp uge i64 %32, %33, !dbg !125
  br i1 %34, label %35, label %36, !dbg !126

; <label>:35:                                     ; preds = %31
  store i8 1, i8* %10, align 1, !dbg !127
  br label %36, !dbg !129

; <label>:36:                                     ; preds = %35, %31
  br label %37, !dbg !130

; <label>:37:                                     ; preds = %36, %30, %21
  %38 = load i8, i8* %10, align 1, !dbg !132
  ret i8 %38, !dbg !133
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define signext i8 @HSPU_ValidateReplyPacketSize(%struct.HgfsPacket*, i64, i64, i64, i8 signext) #0 !dbg !134 {
  %6 = alloca %struct.HgfsPacket*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store %struct.HgfsPacket* %0, %struct.HgfsPacket** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsPacket** %6, metadata !137, metadata !86), !dbg !138
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !139, metadata !86), !dbg !140
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !141, metadata !86), !dbg !142
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !143, metadata !86), !dbg !144
  store i8 %4, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !145, metadata !86), !dbg !146
  call void @llvm.dbg.declare(metadata i64* %11, metadata !147, metadata !86), !dbg !148
  call void @llvm.dbg.declare(metadata i8* %12, metadata !149, metadata !86), !dbg !150
  store i8 0, i8* %12, align 1, !dbg !150
  %13 = load %struct.HgfsPacket*, %struct.HgfsPacket** %6, align 8, !dbg !151
  %14 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %13, i32 0, i32 15, !dbg !153
  %15 = load i8*, i8** %14, align 8, !dbg !153
  %16 = icmp ne i8* %15, null, !dbg !154
  br i1 %16, label %17, label %21, !dbg !155

; <label>:17:                                     ; preds = %5
  %18 = load %struct.HgfsPacket*, %struct.HgfsPacket** %6, align 8, !dbg !156
  %19 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %18, i32 0, i32 16, !dbg !158
  %20 = load i64, i64* %19, align 8, !dbg !158
  store i64 %20, i64* %11, align 8, !dbg !159
  br label %30, !dbg !160

; <label>:21:                                     ; preds = %5
  %22 = load i8, i8* %10, align 1, !dbg !161
  %23 = icmp ne i8 %22, 0, !dbg !161
  br i1 %23, label %24, label %28, !dbg !161

; <label>:24:                                     ; preds = %21
  %25 = load %struct.HgfsPacket*, %struct.HgfsPacket** %6, align 8, !dbg !164
  %26 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %25, i32 0, i32 3, !dbg !166
  %27 = load i64, i64* %26, align 8, !dbg !166
  store i64 %27, i64* %11, align 8, !dbg !167
  br label %29, !dbg !168

; <label>:28:                                     ; preds = %21
  store i8 1, i8* %12, align 1, !dbg !169
  br label %54, !dbg !171

; <label>:29:                                     ; preds = %24
  br label %30

; <label>:30:                                     ; preds = %29, %17
  %31 = load i64, i64* %11, align 8, !dbg !172
  %32 = load i64, i64* %7, align 8, !dbg !174
  %33 = icmp uge i64 %31, %32, !dbg !175
  br i1 %33, label %34, label %38, !dbg !176

; <label>:34:                                     ; preds = %30
  %35 = load i64, i64* %7, align 8, !dbg !177
  %36 = load i64, i64* %11, align 8, !dbg !179
  %37 = sub i64 %36, %35, !dbg !179
  store i64 %37, i64* %11, align 8, !dbg !179
  br label %39, !dbg !180

; <label>:38:                                     ; preds = %30
  br label %54, !dbg !181

; <label>:39:                                     ; preds = %34
  %40 = load i64, i64* %11, align 8, !dbg !183
  %41 = load i64, i64* %8, align 8, !dbg !185
  %42 = icmp uge i64 %40, %41, !dbg !186
  br i1 %42, label %43, label %47, !dbg !187

; <label>:43:                                     ; preds = %39
  %44 = load i64, i64* %8, align 8, !dbg !188
  %45 = load i64, i64* %11, align 8, !dbg !190
  %46 = sub i64 %45, %44, !dbg !190
  store i64 %46, i64* %11, align 8, !dbg !190
  br label %48, !dbg !191

; <label>:47:                                     ; preds = %39
  br label %54, !dbg !192

; <label>:48:                                     ; preds = %43
  %49 = load i64, i64* %11, align 8, !dbg !194
  %50 = load i64, i64* %9, align 8, !dbg !196
  %51 = icmp uge i64 %49, %50, !dbg !197
  br i1 %51, label %52, label %53, !dbg !198

; <label>:52:                                     ; preds = %48
  store i8 1, i8* %12, align 1, !dbg !199
  br label %53, !dbg !201

; <label>:53:                                     ; preds = %52, %48
  br label %54, !dbg !202

; <label>:54:                                     ; preds = %53, %47, %38, %28
  %55 = load i8, i8* %12, align 1, !dbg !204
  ret i8 %55, !dbg !205
}

; Function Attrs: nounwind uwtable
define i8* @HSPU_GetReplyPacket(%struct.HgfsPacket*, %struct.HgfsServerChannelCallbacks*, i64, i64*) #0 !dbg !206 {
  %5 = alloca %struct.HgfsPacket*, align 8
  %6 = alloca %struct.HgfsServerChannelCallbacks*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.HgfsPacket* %0, %struct.HgfsPacket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsPacket** %5, metadata !239, metadata !86), !dbg !240
  store %struct.HgfsServerChannelCallbacks* %1, %struct.HgfsServerChannelCallbacks** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerChannelCallbacks** %6, metadata !241, metadata !86), !dbg !242
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !243, metadata !86), !dbg !244
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !245, metadata !86), !dbg !246
  %9 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !247
  %10 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %9, i32 0, i32 15, !dbg !249
  %11 = load i8*, i8** %10, align 8, !dbg !249
  %12 = icmp ne i8* %11, null, !dbg !250
  br i1 %12, label %13, label %23, !dbg !251

; <label>:13:                                     ; preds = %4
  %14 = load i64, i64* %7, align 8, !dbg !252
  %15 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !254
  %16 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %15, i32 0, i32 17, !dbg !255
  store i64 %14, i64* %16, align 8, !dbg !256
  br label %17, !dbg !257, !llvm.loop !258

; <label>:17:                                     ; preds = %13
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HSPU_GetReplyPacket, i32 0, i32 0)), !dbg !259
  %18 = load i64, i64* %7, align 8, !dbg !264
  %19 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !265
  %20 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %19, i32 0, i32 16, !dbg !266
  %21 = load i64, i64* %20, align 8, !dbg !266
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HSPU_GetReplyPacket, i32 0, i32 0), i64 %18, i64 %21), !dbg !267
  br label %22, !dbg !269

; <label>:22:                                     ; preds = %17
  br label %77, !dbg !270

; <label>:23:                                     ; preds = %4
  %24 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %6, align 8, !dbg !271
  %25 = icmp ne %struct.HgfsServerChannelCallbacks* %24, null, !dbg !274
  br i1 %25, label %26, label %61, !dbg !275

; <label>:26:                                     ; preds = %23
  %27 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %6, align 8, !dbg !276
  %28 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %27, i32 0, i32 3, !dbg !278
  %29 = load i8* (i64, i32, i8**)*, i8* (i64, i32, i8**)** %28, align 8, !dbg !278
  %30 = icmp ne i8* (i64, i32, i8**)* %29, null, !dbg !279
  br i1 %30, label %31, label %61, !dbg !280

; <label>:31:                                     ; preds = %26
  %32 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !281
  %33 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %32, i32 0, i32 2, !dbg !284
  %34 = load i8*, i8** %33, align 8, !dbg !284
  %35 = icmp ne i8* %34, null, !dbg !285
  br i1 %35, label %36, label %59, !dbg !286

; <label>:36:                                     ; preds = %31
  br label %37, !dbg !287, !llvm.loop !289

; <label>:37:                                     ; preds = %36
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HSPU_GetReplyPacket, i32 0, i32 0)), !dbg !290
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HSPU_GetReplyPacket, i32 0, i32 0)), !dbg !295
  br label %38, !dbg !297

; <label>:38:                                     ; preds = %37
  %39 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !298
  %40 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %39, i32 0, i32 2, !dbg !299
  %41 = load i8*, i8** %40, align 8, !dbg !299
  %42 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !300
  %43 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %42, i32 0, i32 15, !dbg !301
  store i8* %41, i8** %43, align 8, !dbg !302
  %44 = load i64, i64* %7, align 8, !dbg !303
  %45 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !304
  %46 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %45, i32 0, i32 17, !dbg !305
  store i64 %44, i64* %46, align 8, !dbg !306
  %47 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !307
  %48 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %47, i32 0, i32 3, !dbg !308
  %49 = load i64, i64* %48, align 8, !dbg !308
  %50 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !309
  %51 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %50, i32 0, i32 16, !dbg !310
  store i64 %49, i64* %51, align 8, !dbg !311
  %52 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !312
  %53 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %52, i32 0, i32 18, !dbg !313
  store i8 0, i8* %53, align 8, !dbg !314
  %54 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !315
  %55 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %54, i32 0, i32 17, !dbg !316
  %56 = load i64, i64* %55, align 8, !dbg !316
  %57 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !317
  %58 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %57, i32 0, i32 5, !dbg !318
  store i64 %56, i64* %58, align 8, !dbg !319
  br label %60, !dbg !320

; <label>:59:                                     ; preds = %31
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32 244) #6, !dbg !321
  unreachable, !dbg !321

; <label>:60:                                     ; preds = %38
  br label %76, !dbg !323

; <label>:61:                                     ; preds = %26, %23
  br label %62, !dbg !324, !llvm.loop !326

; <label>:62:                                     ; preds = %61
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HSPU_GetReplyPacket, i32 0, i32 0)), !dbg !327
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HSPU_GetReplyPacket, i32 0, i32 0)), !dbg !332
  br label %63, !dbg !334

; <label>:63:                                     ; preds = %62
  %64 = load i64, i64* %7, align 8, !dbg !335
  %65 = call i8* @UtilSafeMalloc0(i64 %64), !dbg !336
  %66 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !337
  %67 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %66, i32 0, i32 15, !dbg !338
  store i8* %65, i8** %67, align 8, !dbg !339
  %68 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !340
  %69 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %68, i32 0, i32 18, !dbg !341
  store i8 1, i8* %69, align 8, !dbg !342
  %70 = load i64, i64* %7, align 8, !dbg !343
  %71 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !344
  %72 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %71, i32 0, i32 17, !dbg !345
  store i64 %70, i64* %72, align 8, !dbg !346
  %73 = load i64, i64* %7, align 8, !dbg !347
  %74 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !348
  %75 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %74, i32 0, i32 16, !dbg !349
  store i64 %73, i64* %75, align 8, !dbg !350
  br label %76

; <label>:76:                                     ; preds = %63, %60
  br label %77

; <label>:77:                                     ; preds = %76, %22
  %78 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !351
  %79 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %78, i32 0, i32 16, !dbg !352
  %80 = load i64, i64* %79, align 8, !dbg !352
  %81 = load i64*, i64** %8, align 8, !dbg !353
  store i64 %80, i64* %81, align 8, !dbg !354
  %82 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !355
  %83 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %82, i32 0, i32 15, !dbg !356
  %84 = load i8*, i8** %83, align 8, !dbg !356
  ret i8* %84, !dbg !357
}

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #3

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: nounwind uwtable
define void @HSPU_PutReplyPacket(%struct.HgfsPacket*, %struct.HgfsServerChannelCallbacks*) #0 !dbg !358 {
  %3 = alloca %struct.HgfsPacket*, align 8
  %4 = alloca %struct.HgfsServerChannelCallbacks*, align 8
  store %struct.HgfsPacket* %0, %struct.HgfsPacket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsPacket** %3, metadata !361, metadata !86), !dbg !362
  store %struct.HgfsServerChannelCallbacks* %1, %struct.HgfsServerChannelCallbacks** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerChannelCallbacks** %4, metadata !363, metadata !86), !dbg !364
  %5 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !365
  %6 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %5, i32 0, i32 18, !dbg !367
  %7 = load i8, i8* %6, align 8, !dbg !367
  %8 = icmp ne i8 %7, 0, !dbg !365
  br i1 %8, label %9, label %21, !dbg !368

; <label>:9:                                      ; preds = %2
  br label %10, !dbg !369, !llvm.loop !371

; <label>:10:                                     ; preds = %9
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HSPU_PutReplyPacket, i32 0, i32 0)), !dbg !372
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.HSPU_PutReplyPacket, i32 0, i32 0)), !dbg !377
  br label %11, !dbg !379

; <label>:11:                                     ; preds = %10
  %12 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !380
  %13 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %12, i32 0, i32 15, !dbg !381
  %14 = load i8*, i8** %13, align 8, !dbg !381
  call void @free(i8* %14) #7, !dbg !382
  %15 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !383
  %16 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %15, i32 0, i32 18, !dbg !384
  store i8 0, i8* %16, align 8, !dbg !385
  %17 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !386
  %18 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %17, i32 0, i32 15, !dbg !387
  store i8* null, i8** %18, align 8, !dbg !388
  %19 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !389
  %20 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %19, i32 0, i32 16, !dbg !390
  store i64 0, i64* %20, align 8, !dbg !391
  br label %21, !dbg !392

; <label>:21:                                     ; preds = %11, %2
  ret void, !dbg !393
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define i8* @HSPU_GetMetaPacket(%struct.HgfsPacket*, i64*, %struct.HgfsServerChannelCallbacks*) #0 !dbg !394 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HgfsPacket*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.HgfsServerChannelCallbacks*, align 8
  store %struct.HgfsPacket* %0, %struct.HgfsPacket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsPacket** %5, metadata !397, metadata !86), !dbg !398
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !399, metadata !86), !dbg !400
  store %struct.HgfsServerChannelCallbacks* %2, %struct.HgfsServerChannelCallbacks** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerChannelCallbacks** %7, metadata !401, metadata !86), !dbg !402
  %8 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !403
  %9 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %8, i32 0, i32 5, !dbg !404
  %10 = load i64, i64* %9, align 8, !dbg !404
  %11 = load i64*, i64** %6, align 8, !dbg !405
  store i64 %10, i64* %11, align 8, !dbg !406
  %12 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !407
  %13 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %12, i32 0, i32 2, !dbg !409
  %14 = load i8*, i8** %13, align 8, !dbg !409
  %15 = icmp ne i8* %14, null, !dbg !410
  br i1 %15, label %16, label %20, !dbg !411

; <label>:16:                                     ; preds = %3
  %17 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !412
  %18 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %17, i32 0, i32 2, !dbg !414
  %19 = load i8*, i8** %18, align 8, !dbg !414
  store i8* %19, i8** %4, align 8, !dbg !415
  br label %52, !dbg !415

; <label>:20:                                     ; preds = %3
  %21 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !416
  %22 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %21, i32 0, i32 3, !dbg !418
  %23 = load i64, i64* %22, align 8, !dbg !418
  %24 = icmp eq i64 %23, 0, !dbg !419
  br i1 %24, label %25, label %26, !dbg !420

; <label>:25:                                     ; preds = %20
  store i8* null, i8** %4, align 8, !dbg !421
  br label %52, !dbg !421

; <label>:26:                                     ; preds = %20
  %27 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !423
  %28 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %27, i32 0, i32 7, !dbg !424
  store i32 2, i32* %28, align 4, !dbg !425
  %29 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %7, align 8, !dbg !426
  %30 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !427
  %31 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %30, i32 0, i32 7, !dbg !428
  %32 = load i32, i32* %31, align 4, !dbg !428
  %33 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !429
  %34 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %33, i32 0, i32 21, !dbg !430
  %35 = getelementptr inbounds [1 x %struct.HgfsVmxIov], [1 x %struct.HgfsVmxIov]* %34, i32 0, i32 0, !dbg !429
  %36 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !431
  %37 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %36, i32 0, i32 20, !dbg !432
  %38 = load i32, i32* %37, align 8, !dbg !432
  %39 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !433
  %40 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %39, i32 0, i32 5, !dbg !434
  %41 = load i64, i64* %40, align 8, !dbg !434
  %42 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !435
  %43 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %42, i32 0, i32 3, !dbg !436
  %44 = load i64, i64* %43, align 8, !dbg !436
  %45 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !437
  %46 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %45, i32 0, i32 2, !dbg !438
  %47 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !439
  %48 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %47, i32 0, i32 6, !dbg !440
  %49 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !441
  %50 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %49, i32 0, i32 4, !dbg !442
  %51 = call i8* @HSPUGetBuf(%struct.HgfsServerChannelCallbacks* %29, i32 %32, %struct.HgfsVmxIov* %35, i32 %38, i32 0, i64 %41, i64 %44, i8** %46, i8* %48, i32* %50), !dbg !443
  store i8* %51, i8** %4, align 8, !dbg !444
  br label %52, !dbg !444

; <label>:52:                                     ; preds = %26, %25, %16
  %53 = load i8*, i8** %4, align 8, !dbg !445
  ret i8* %53, !dbg !445
}

; Function Attrs: nounwind uwtable
define internal i8* @HSPUGetBuf(%struct.HgfsServerChannelCallbacks*, i32, %struct.HgfsVmxIov*, i32, i32, i64, i64, i8**, i8*, i32*) #0 !dbg !446 {
  %11 = alloca %struct.HgfsServerChannelCallbacks*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.HgfsVmxIov*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8* (i64, i32, i8**)*, align 8
  %23 = alloca i8, align 1
  store %struct.HgfsServerChannelCallbacks* %0, %struct.HgfsServerChannelCallbacks** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerChannelCallbacks** %11, metadata !452, metadata !86), !dbg !453
  store i32 %1, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !454, metadata !86), !dbg !455
  store %struct.HgfsVmxIov* %2, %struct.HgfsVmxIov** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsVmxIov** %13, metadata !456, metadata !86), !dbg !457
  store i32 %3, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !458, metadata !86), !dbg !459
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !460, metadata !86), !dbg !461
  store i64 %5, i64* %16, align 8
  call void @llvm.dbg.declare(metadata i64* %16, metadata !462, metadata !86), !dbg !463
  store i64 %6, i64* %17, align 8
  call void @llvm.dbg.declare(metadata i64* %17, metadata !464, metadata !86), !dbg !465
  store i8** %7, i8*** %18, align 8
  call void @llvm.dbg.declare(metadata i8*** %18, metadata !466, metadata !86), !dbg !467
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !468, metadata !86), !dbg !469
  store i32* %9, i32** %20, align 8
  call void @llvm.dbg.declare(metadata i32** %20, metadata !470, metadata !86), !dbg !471
  call void @llvm.dbg.declare(metadata i32* %21, metadata !472, metadata !86), !dbg !473
  store i32 0, i32* %21, align 4, !dbg !473
  call void @llvm.dbg.declare(metadata i8* (i64, i32, i8**)** %22, metadata !474, metadata !86), !dbg !475
  call void @llvm.dbg.declare(metadata i8* %23, metadata !476, metadata !86), !dbg !477
  store i8 0, i8* %23, align 1, !dbg !477
  %24 = load i8**, i8*** %18, align 8, !dbg !478
  store i8* null, i8** %24, align 8, !dbg !479
  %25 = load i8*, i8** %19, align 8, !dbg !480
  store i8 0, i8* %25, align 1, !dbg !481
  %26 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %11, align 8, !dbg !482
  %27 = icmp eq %struct.HgfsServerChannelCallbacks* %26, null, !dbg !484
  br i1 %27, label %28, label %29, !dbg !485

; <label>:28:                                     ; preds = %10
  br label %93, !dbg !486

; <label>:29:                                     ; preds = %10
  %30 = load i32, i32* %12, align 4, !dbg !488
  %31 = icmp eq i32 %30, 1, !dbg !490
  br i1 %31, label %35, label %32, !dbg !491

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %12, align 4, !dbg !492
  %34 = icmp eq i32 %33, 2, !dbg !493
  br i1 %34, label %35, label %39, !dbg !494

; <label>:35:                                     ; preds = %32, %29
  %36 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %11, align 8, !dbg !496
  %37 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %36, i32 0, i32 3, !dbg !498
  %38 = load i8* (i64, i32, i8**)*, i8* (i64, i32, i8**)** %37, align 8, !dbg !498
  store i8* (i64, i32, i8**)* %38, i8* (i64, i32, i8**)** %22, align 8, !dbg !499
  br label %43, !dbg !500

; <label>:39:                                     ; preds = %32
  %40 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %11, align 8, !dbg !501
  %41 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %40, i32 0, i32 2, !dbg !503
  %42 = load i8* (i64, i32, i8**)*, i8* (i64, i32, i8**)** %41, align 8, !dbg !503
  store i8* (i64, i32, i8**)* %42, i8* (i64, i32, i8**)** %22, align 8, !dbg !504
  br label %43

; <label>:43:                                     ; preds = %39, %35
  %44 = load i8* (i64, i32, i8**)*, i8* (i64, i32, i8**)** %22, align 8, !dbg !505
  %45 = icmp eq i8* (i64, i32, i8**)* %44, null, !dbg !507
  br i1 %45, label %46, label %47, !dbg !508

; <label>:46:                                     ; preds = %43
  br label %93, !dbg !509

; <label>:47:                                     ; preds = %43
  %48 = load i8* (i64, i32, i8**)*, i8* (i64, i32, i8**)** %22, align 8, !dbg !511
  %49 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %11, align 8, !dbg !513
  %50 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %49, i32 0, i32 4, !dbg !514
  %51 = load void (i8**)*, void (i8**)** %50, align 8, !dbg !514
  %52 = load i64, i64* %17, align 8, !dbg !515
  %53 = load i32, i32* %15, align 4, !dbg !516
  %54 = load i32, i32* %14, align 4, !dbg !517
  %55 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !518
  %56 = call signext i8 @HSPUMapBuf(i8* (i64, i32, i8**)* %48, void (i8**)* %51, i64 %52, i32 %53, i32 %54, %struct.HgfsVmxIov* %55, i32* %21), !dbg !519
  %57 = icmp ne i8 %56, 0, !dbg !519
  br i1 %57, label %59, label %58, !dbg !520

; <label>:58:                                     ; preds = %47
  br label %93, !dbg !521

; <label>:59:                                     ; preds = %47
  %60 = load i32, i32* %21, align 4, !dbg !523
  %61 = icmp eq i32 %60, 1, !dbg !525
  br i1 %61, label %62, label %70, !dbg !526

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %15, align 4, !dbg !527
  %64 = zext i32 %63 to i64, !dbg !529
  %65 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !529
  %66 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %65, i64 %64, !dbg !529
  %67 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %66, i32 0, i32 0, !dbg !530
  %68 = load i8*, i8** %67, align 8, !dbg !530
  %69 = load i8**, i8*** %18, align 8, !dbg !531
  store i8* %68, i8** %69, align 8, !dbg !532
  br label %93, !dbg !533

; <label>:70:                                     ; preds = %59
  br label %71, !dbg !534, !llvm.loop !535

; <label>:71:                                     ; preds = %70
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.HSPUGetBuf, i32 0, i32 0)), !dbg !536
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.HSPUGetBuf, i32 0, i32 0)), !dbg !541
  br label %72, !dbg !543

; <label>:72:                                     ; preds = %71
  %73 = load i64, i64* %17, align 8, !dbg !544
  %74 = call i8* @UtilSafeMalloc0(i64 %73), !dbg !545
  %75 = load i8**, i8*** %18, align 8, !dbg !546
  store i8* %74, i8** %75, align 8, !dbg !547
  %76 = load i8*, i8** %19, align 8, !dbg !548
  store i8 1, i8* %76, align 1, !dbg !549
  %77 = load i32, i32* %12, align 4, !dbg !550
  %78 = icmp eq i32 %77, 0, !dbg !552
  br i1 %78, label %82, label %79, !dbg !553

; <label>:79:                                     ; preds = %72
  %80 = load i32, i32* %12, align 4, !dbg !554
  %81 = icmp eq i32 %80, 2, !dbg !556
  br i1 %81, label %82, label %92, !dbg !557

; <label>:82:                                     ; preds = %79, %72
  %83 = load i64, i64* %16, align 8, !dbg !558
  %84 = icmp ne i64 0, %83, !dbg !559
  br i1 %84, label %85, label %92, !dbg !560

; <label>:85:                                     ; preds = %82
  %86 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !562
  %87 = load i32, i32* %21, align 4, !dbg !564
  %88 = load i32, i32* %15, align 4, !dbg !565
  %89 = load i8**, i8*** %18, align 8, !dbg !566
  %90 = load i8*, i8** %89, align 8, !dbg !567
  %91 = load i64, i64* %16, align 8, !dbg !568
  call void @HSPUCopyIovecToBuf(%struct.HgfsVmxIov* %86, i32 %87, i32 %88, i8* %90, i64 %91), !dbg !569
  br label %92, !dbg !570

; <label>:92:                                     ; preds = %85, %82, %79
  store i8 1, i8* %23, align 1, !dbg !571
  br label %93, !dbg !572

; <label>:93:                                     ; preds = %92, %62, %58, %46, %28
  %94 = load i8, i8* %23, align 1, !dbg !573
  %95 = icmp ne i8 %94, 0, !dbg !573
  br i1 %95, label %96, label %102, !dbg !575

; <label>:96:                                     ; preds = %93
  %97 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %11, align 8, !dbg !576
  %98 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %97, i32 0, i32 4, !dbg !578
  %99 = load void (i8**)*, void (i8**)** %98, align 8, !dbg !578
  %100 = load i32, i32* %15, align 4, !dbg !579
  %101 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !580
  call void @HSPUUnmapBuf(void (i8**)* %99, i32 %100, %struct.HgfsVmxIov* %101, i32* %21), !dbg !581
  br label %102, !dbg !582

; <label>:102:                                    ; preds = %96, %93
  %103 = load i32, i32* %21, align 4, !dbg !583
  %104 = load i32*, i32** %20, align 8, !dbg !584
  store i32 %103, i32* %104, align 4, !dbg !585
  %105 = load i8**, i8*** %18, align 8, !dbg !586
  %106 = load i8*, i8** %105, align 8, !dbg !587
  ret i8* %106, !dbg !588
}

; Function Attrs: nounwind uwtable
define signext i8 @HSPU_ValidateDataPacketSize(%struct.HgfsPacket*, i64) #0 !dbg !589 {
  %3 = alloca %struct.HgfsPacket*, align 8
  %4 = alloca i64, align 8
  store %struct.HgfsPacket* %0, %struct.HgfsPacket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsPacket** %3, metadata !592, metadata !86), !dbg !593
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !594, metadata !86), !dbg !595
  %5 = load i64, i64* %4, align 8, !dbg !596
  %6 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !597
  %7 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %6, i32 0, i32 9, !dbg !598
  %8 = load i64, i64* %7, align 8, !dbg !598
  %9 = icmp ule i64 %5, %8, !dbg !599
  %10 = zext i1 %9 to i32, !dbg !599
  %11 = trunc i32 %10 to i8, !dbg !600
  ret i8 %11, !dbg !601
}

; Function Attrs: nounwind uwtable
define i8* @HSPU_GetDataPacketBuf(%struct.HgfsPacket*, i32, %struct.HgfsServerChannelCallbacks*) #0 !dbg !602 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HgfsPacket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.HgfsServerChannelCallbacks*, align 8
  store %struct.HgfsPacket* %0, %struct.HgfsPacket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsPacket** %5, metadata !605, metadata !86), !dbg !606
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !607, metadata !86), !dbg !608
  store %struct.HgfsServerChannelCallbacks* %2, %struct.HgfsServerChannelCallbacks** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerChannelCallbacks** %7, metadata !609, metadata !86), !dbg !610
  %8 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !611
  %9 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %8, i32 0, i32 8, !dbg !613
  %10 = load i8*, i8** %9, align 8, !dbg !613
  %11 = icmp ne i8* %10, null, !dbg !614
  br i1 %11, label %12, label %16, !dbg !615

; <label>:12:                                     ; preds = %3
  %13 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !616
  %14 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %13, i32 0, i32 8, !dbg !618
  %15 = load i8*, i8** %14, align 8, !dbg !618
  store i8* %15, i8** %4, align 8, !dbg !619
  br label %52, !dbg !619

; <label>:16:                                     ; preds = %3
  %17 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !620
  %18 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %17, i32 0, i32 9, !dbg !622
  %19 = load i64, i64* %18, align 8, !dbg !622
  %20 = icmp eq i64 %19, 0, !dbg !623
  br i1 %20, label %21, label %22, !dbg !624

; <label>:21:                                     ; preds = %16
  store i8* null, i8** %4, align 8, !dbg !625
  br label %52, !dbg !625

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %6, align 4, !dbg !627
  %24 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !628
  %25 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %24, i32 0, i32 14, !dbg !629
  store i32 %23, i32* %25, align 8, !dbg !630
  %26 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %7, align 8, !dbg !631
  %27 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !632
  %28 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %27, i32 0, i32 14, !dbg !633
  %29 = load i32, i32* %28, align 8, !dbg !633
  %30 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !634
  %31 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %30, i32 0, i32 21, !dbg !635
  %32 = getelementptr inbounds [1 x %struct.HgfsVmxIov], [1 x %struct.HgfsVmxIov]* %31, i32 0, i32 0, !dbg !634
  %33 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !636
  %34 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %33, i32 0, i32 20, !dbg !637
  %35 = load i32, i32* %34, align 8, !dbg !637
  %36 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !638
  %37 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %36, i32 0, i32 12, !dbg !639
  %38 = load i32, i32* %37, align 8, !dbg !639
  %39 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !640
  %40 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %39, i32 0, i32 11, !dbg !641
  %41 = load i64, i64* %40, align 8, !dbg !641
  %42 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !642
  %43 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %42, i32 0, i32 9, !dbg !643
  %44 = load i64, i64* %43, align 8, !dbg !643
  %45 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !644
  %46 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %45, i32 0, i32 8, !dbg !645
  %47 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !646
  %48 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %47, i32 0, i32 13, !dbg !647
  %49 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !648
  %50 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %49, i32 0, i32 10, !dbg !649
  %51 = call i8* @HSPUGetBuf(%struct.HgfsServerChannelCallbacks* %26, i32 %29, %struct.HgfsVmxIov* %32, i32 %35, i32 %38, i64 %41, i64 %44, i8** %46, i8* %48, i32* %50), !dbg !650
  store i8* %51, i8** %4, align 8, !dbg !651
  br label %52, !dbg !651

; <label>:52:                                     ; preds = %22, %21, %12
  %53 = load i8*, i8** %4, align 8, !dbg !652
  ret i8* %53, !dbg !652
}

; Function Attrs: nounwind uwtable
define void @HSPU_PutMetaPacket(%struct.HgfsPacket*, %struct.HgfsServerChannelCallbacks*) #0 !dbg !653 {
  %3 = alloca %struct.HgfsPacket*, align 8
  %4 = alloca %struct.HgfsServerChannelCallbacks*, align 8
  store %struct.HgfsPacket* %0, %struct.HgfsPacket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsPacket** %3, metadata !654, metadata !86), !dbg !655
  store %struct.HgfsServerChannelCallbacks* %1, %struct.HgfsServerChannelCallbacks** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerChannelCallbacks** %4, metadata !656, metadata !86), !dbg !657
  %5 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !658
  %6 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %5, i32 0, i32 2, !dbg !660
  %7 = load i8*, i8** %6, align 8, !dbg !660
  %8 = icmp eq i8* %7, null, !dbg !661
  br i1 %8, label %9, label %10, !dbg !662

; <label>:9:                                      ; preds = %2
  br label %32, !dbg !663

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !665, !llvm.loop !666

; <label>:11:                                     ; preds = %10
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.HSPU_PutMetaPacket, i32 0, i32 0)), !dbg !667
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.HSPU_PutMetaPacket, i32 0, i32 0)), !dbg !672
  br label %12, !dbg !674

; <label>:12:                                     ; preds = %11
  %13 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %4, align 8, !dbg !675
  %14 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !676
  %15 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %14, i32 0, i32 7, !dbg !677
  %16 = load i32, i32* %15, align 4, !dbg !677
  %17 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !678
  %18 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %17, i32 0, i32 21, !dbg !679
  %19 = getelementptr inbounds [1 x %struct.HgfsVmxIov], [1 x %struct.HgfsVmxIov]* %18, i32 0, i32 0, !dbg !678
  %20 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !680
  %21 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %20, i32 0, i32 20, !dbg !681
  %22 = load i32, i32* %21, align 8, !dbg !681
  %23 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !682
  %24 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %23, i32 0, i32 5, !dbg !683
  %25 = load i64, i64* %24, align 8, !dbg !683
  %26 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !684
  %27 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %26, i32 0, i32 2, !dbg !685
  %28 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !686
  %29 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %28, i32 0, i32 6, !dbg !687
  %30 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !688
  %31 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %30, i32 0, i32 4, !dbg !689
  call void @HSPUPutBuf(%struct.HgfsServerChannelCallbacks* %13, i32 %16, %struct.HgfsVmxIov* %19, i32 %22, i32 0, i64 %25, i8** %27, i8* %29, i32* %31), !dbg !690
  br label %32, !dbg !691

; <label>:32:                                     ; preds = %12, %9
  ret void, !dbg !692
}

; Function Attrs: nounwind uwtable
define internal void @HSPUPutBuf(%struct.HgfsServerChannelCallbacks*, i32, %struct.HgfsVmxIov*, i32, i32, i64, i8**, i8*, i32*) #0 !dbg !694 {
  %10 = alloca %struct.HgfsServerChannelCallbacks*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.HgfsVmxIov*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store %struct.HgfsServerChannelCallbacks* %0, %struct.HgfsServerChannelCallbacks** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerChannelCallbacks** %10, metadata !697, metadata !86), !dbg !698
  store i32 %1, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !699, metadata !86), !dbg !700
  store %struct.HgfsVmxIov* %2, %struct.HgfsVmxIov** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsVmxIov** %12, metadata !701, metadata !86), !dbg !702
  store i32 %3, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !703, metadata !86), !dbg !704
  store i32 %4, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !705, metadata !86), !dbg !706
  store i64 %5, i64* %15, align 8
  call void @llvm.dbg.declare(metadata i64* %15, metadata !707, metadata !86), !dbg !708
  store i8** %6, i8*** %16, align 8
  call void @llvm.dbg.declare(metadata i8*** %16, metadata !709, metadata !86), !dbg !710
  store i8* %7, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !711, metadata !86), !dbg !712
  store i32* %8, i32** %18, align 8
  call void @llvm.dbg.declare(metadata i32** %18, metadata !713, metadata !86), !dbg !714
  %19 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %10, align 8, !dbg !715
  %20 = icmp eq %struct.HgfsServerChannelCallbacks* %19, null, !dbg !717
  br i1 %20, label %26, label %21, !dbg !718

; <label>:21:                                     ; preds = %9
  %22 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %10, align 8, !dbg !719
  %23 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %22, i32 0, i32 4, !dbg !721
  %24 = load void (i8**)*, void (i8**)** %23, align 8, !dbg !721
  %25 = icmp eq void (i8**)* %24, null, !dbg !722
  br i1 %25, label %26, label %27, !dbg !723

; <label>:26:                                     ; preds = %21, %9
  br label %78, !dbg !724

; <label>:27:                                     ; preds = %21
  %28 = load i8*, i8** %17, align 8, !dbg !726
  %29 = load i8, i8* %28, align 1, !dbg !728
  %30 = sext i8 %29 to i32, !dbg !728
  %31 = icmp ne i32 %30, 0, !dbg !728
  br i1 %31, label %32, label %66, !dbg !729

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %11, align 4, !dbg !730
  %34 = icmp eq i32 %33, 1, !dbg !731
  br i1 %34, label %38, label %35, !dbg !732

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %11, align 4, !dbg !733
  %37 = icmp eq i32 %36, 2, !dbg !735
  br i1 %37, label %38, label %66, !dbg !736

; <label>:38:                                     ; preds = %35, %32
  %39 = load i32*, i32** %18, align 8, !dbg !738
  %40 = load i32, i32* %39, align 4, !dbg !741
  %41 = icmp eq i32 0, %40, !dbg !742
  br i1 %41, label %42, label %58, !dbg !743

; <label>:42:                                     ; preds = %38
  %43 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %10, align 8, !dbg !744
  %44 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %43, i32 0, i32 3, !dbg !747
  %45 = load i8* (i64, i32, i8**)*, i8* (i64, i32, i8**)** %44, align 8, !dbg !747
  %46 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %10, align 8, !dbg !748
  %47 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %46, i32 0, i32 4, !dbg !749
  %48 = load void (i8**)*, void (i8**)** %47, align 8, !dbg !749
  %49 = load i64, i64* %15, align 8, !dbg !750
  %50 = load i32, i32* %14, align 4, !dbg !751
  %51 = load i32, i32* %13, align 4, !dbg !752
  %52 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %12, align 8, !dbg !753
  %53 = load i32*, i32** %18, align 8, !dbg !754
  %54 = call signext i8 @HSPUMapBuf(i8* (i64, i32, i8**)* %45, void (i8**)* %48, i64 %49, i32 %50, i32 %51, %struct.HgfsVmxIov* %52, i32* %53), !dbg !755
  %55 = icmp ne i8 %54, 0, !dbg !755
  br i1 %55, label %57, label %56, !dbg !756

; <label>:56:                                     ; preds = %42
  br label %78, !dbg !757

; <label>:57:                                     ; preds = %42
  br label %58, !dbg !759

; <label>:58:                                     ; preds = %57, %38
  %59 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %12, align 8, !dbg !760
  %60 = load i32*, i32** %18, align 8, !dbg !761
  %61 = load i32, i32* %60, align 4, !dbg !762
  %62 = load i32, i32* %14, align 4, !dbg !763
  %63 = load i8**, i8*** %16, align 8, !dbg !764
  %64 = load i8*, i8** %63, align 8, !dbg !765
  %65 = load i64, i64* %15, align 8, !dbg !766
  call void @HSPUCopyBufToIovec(%struct.HgfsVmxIov* %59, i32 %61, i32 %62, i8* %64, i64 %65), !dbg !767
  br label %66, !dbg !768

; <label>:66:                                     ; preds = %58, %35, %27
  %67 = load i32*, i32** %18, align 8, !dbg !769
  %68 = load i32, i32* %67, align 4, !dbg !771
  %69 = icmp ult i32 0, %68, !dbg !772
  br i1 %69, label %70, label %77, !dbg !773

; <label>:70:                                     ; preds = %66
  %71 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %10, align 8, !dbg !774
  %72 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %71, i32 0, i32 4, !dbg !776
  %73 = load void (i8**)*, void (i8**)** %72, align 8, !dbg !776
  %74 = load i32, i32* %14, align 4, !dbg !777
  %75 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %12, align 8, !dbg !778
  %76 = load i32*, i32** %18, align 8, !dbg !779
  call void @HSPUUnmapBuf(void (i8**)* %73, i32 %74, %struct.HgfsVmxIov* %75, i32* %76), !dbg !780
  br label %77, !dbg !781

; <label>:77:                                     ; preds = %70, %66
  br label %78, !dbg !782

; <label>:78:                                     ; preds = %77, %56, %26
  %79 = load i8*, i8** %17, align 8, !dbg !784
  %80 = load i8, i8* %79, align 1, !dbg !786
  %81 = icmp ne i8 %80, 0, !dbg !786
  br i1 %81, label %82, label %88, !dbg !787

; <label>:82:                                     ; preds = %78
  br label %83, !dbg !788, !llvm.loop !790

; <label>:83:                                     ; preds = %82
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.HSPUPutBuf, i32 0, i32 0)), !dbg !791
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.HSPUPutBuf, i32 0, i32 0)), !dbg !796
  br label %84, !dbg !798

; <label>:84:                                     ; preds = %83
  %85 = load i8**, i8*** %16, align 8, !dbg !799
  %86 = load i8*, i8** %85, align 8, !dbg !800
  call void @free(i8* %86) #7, !dbg !801
  %87 = load i8*, i8** %17, align 8, !dbg !802
  store i8 0, i8* %87, align 1, !dbg !803
  br label %88, !dbg !804

; <label>:88:                                     ; preds = %84, %78
  %89 = load i8**, i8*** %16, align 8, !dbg !805
  store i8* null, i8** %89, align 8, !dbg !806
  ret void, !dbg !807
}

; Function Attrs: nounwind uwtable
define void @HSPU_SetDataPacketSize(%struct.HgfsPacket*, i64) #0 !dbg !808 {
  %3 = alloca %struct.HgfsPacket*, align 8
  %4 = alloca i64, align 8
  store %struct.HgfsPacket* %0, %struct.HgfsPacket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsPacket** %3, metadata !811, metadata !86), !dbg !812
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !813, metadata !86), !dbg !814
  %5 = load i64, i64* %4, align 8, !dbg !815
  %6 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !816
  %7 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %6, i32 0, i32 11, !dbg !817
  store i64 %5, i64* %7, align 8, !dbg !818
  ret void, !dbg !819
}

; Function Attrs: nounwind uwtable
define void @HSPU_PutDataPacketBuf(%struct.HgfsPacket*, %struct.HgfsServerChannelCallbacks*) #0 !dbg !820 {
  %3 = alloca %struct.HgfsPacket*, align 8
  %4 = alloca %struct.HgfsServerChannelCallbacks*, align 8
  store %struct.HgfsPacket* %0, %struct.HgfsPacket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsPacket** %3, metadata !821, metadata !86), !dbg !822
  store %struct.HgfsServerChannelCallbacks* %1, %struct.HgfsServerChannelCallbacks** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerChannelCallbacks** %4, metadata !823, metadata !86), !dbg !824
  %5 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !825
  %6 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %5, i32 0, i32 8, !dbg !827
  %7 = load i8*, i8** %6, align 8, !dbg !827
  %8 = icmp eq i8* %7, null, !dbg !828
  br i1 %8, label %9, label %10, !dbg !829

; <label>:9:                                      ; preds = %2
  br label %35, !dbg !830

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !832, !llvm.loop !833

; <label>:11:                                     ; preds = %10
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HSPU_PutDataPacketBuf, i32 0, i32 0)), !dbg !834
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HSPU_PutDataPacketBuf, i32 0, i32 0)), !dbg !839
  br label %12, !dbg !841

; <label>:12:                                     ; preds = %11
  %13 = load %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelCallbacks** %4, align 8, !dbg !842
  %14 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !843
  %15 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %14, i32 0, i32 14, !dbg !844
  %16 = load i32, i32* %15, align 8, !dbg !844
  %17 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !845
  %18 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %17, i32 0, i32 21, !dbg !846
  %19 = getelementptr inbounds [1 x %struct.HgfsVmxIov], [1 x %struct.HgfsVmxIov]* %18, i32 0, i32 0, !dbg !845
  %20 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !847
  %21 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %20, i32 0, i32 20, !dbg !848
  %22 = load i32, i32* %21, align 8, !dbg !848
  %23 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !849
  %24 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %23, i32 0, i32 12, !dbg !850
  %25 = load i32, i32* %24, align 8, !dbg !850
  %26 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !851
  %27 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %26, i32 0, i32 11, !dbg !852
  %28 = load i64, i64* %27, align 8, !dbg !852
  %29 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !853
  %30 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %29, i32 0, i32 8, !dbg !854
  %31 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !855
  %32 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %31, i32 0, i32 13, !dbg !856
  %33 = load %struct.HgfsPacket*, %struct.HgfsPacket** %3, align 8, !dbg !857
  %34 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %33, i32 0, i32 10, !dbg !858
  call void @HSPUPutBuf(%struct.HgfsServerChannelCallbacks* %13, i32 %16, %struct.HgfsVmxIov* %19, i32 %22, i32 %25, i64 %28, i8** %30, i8* %32, i32* %34), !dbg !859
  br label %35, !dbg !860

; <label>:35:                                     ; preds = %12, %9
  ret void, !dbg !861
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HSPUMapBuf(i8* (i64, i32, i8**)*, void (i8**)*, i64, i32, i32, %struct.HgfsVmxIov*, i32*) #0 !dbg !863 {
  %8 = alloca i8* (i64, i32, i8**)*, align 8
  %9 = alloca void (i8**)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.HgfsVmxIov*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  store i8* (i64, i32, i8**)* %0, i8* (i64, i32, i8**)** %8, align 8
  call void @llvm.dbg.declare(metadata i8* (i64, i32, i8**)** %8, metadata !866, metadata !86), !dbg !867
  store void (i8**)* %1, void (i8**)** %9, align 8
  call void @llvm.dbg.declare(metadata void (i8**)** %9, metadata !868, metadata !86), !dbg !869
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !870, metadata !86), !dbg !871
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !872, metadata !86), !dbg !873
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !874, metadata !86), !dbg !875
  store %struct.HgfsVmxIov* %5, %struct.HgfsVmxIov** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsVmxIov** %13, metadata !876, metadata !86), !dbg !877
  store i32* %6, i32** %14, align 8
  call void @llvm.dbg.declare(metadata i32** %14, metadata !878, metadata !86), !dbg !879
  call void @llvm.dbg.declare(metadata i32* %15, metadata !880, metadata !86), !dbg !881
  call void @llvm.dbg.declare(metadata i32* %16, metadata !882, metadata !86), !dbg !883
  call void @llvm.dbg.declare(metadata i64* %17, metadata !884, metadata !86), !dbg !885
  call void @llvm.dbg.declare(metadata i8* %18, metadata !886, metadata !86), !dbg !887
  store i8 1, i8* %18, align 1, !dbg !887
  %19 = load i32, i32* %11, align 4, !dbg !888
  store i32 %19, i32* %15, align 4, !dbg !890
  store i32 0, i32* %16, align 4, !dbg !891
  %20 = load i64, i64* %10, align 8, !dbg !892
  store i64 %20, i64* %17, align 8, !dbg !893
  br label %21, !dbg !894

; <label>:21:                                     ; preds = %91, %7
  %22 = load i32, i32* %15, align 4, !dbg !895
  %23 = load i32, i32* %12, align 4, !dbg !897
  %24 = icmp ult i32 %22, %23, !dbg !898
  br i1 %24, label %25, label %28, !dbg !899

; <label>:25:                                     ; preds = %21
  %26 = load i64, i64* %17, align 8, !dbg !900
  %27 = icmp ugt i64 %26, 0, !dbg !902
  br label %28

; <label>:28:                                     ; preds = %25, %21
  %29 = phi i1 [ false, %21 ], [ %27, %25 ]
  br i1 %29, label %30, label %96, !dbg !903

; <label>:30:                                     ; preds = %28
  %31 = load i32, i32* %15, align 4, !dbg !905
  %32 = zext i32 %31 to i64, !dbg !907
  %33 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !907
  %34 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %33, i64 %32, !dbg !907
  %35 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %34, i32 0, i32 3, !dbg !908
  store i8* null, i8** %35, align 8, !dbg !909
  %36 = load i8* (i64, i32, i8**)*, i8* (i64, i32, i8**)** %8, align 8, !dbg !910
  %37 = load i32, i32* %15, align 4, !dbg !911
  %38 = zext i32 %37 to i64, !dbg !912
  %39 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !912
  %40 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %39, i64 %38, !dbg !912
  %41 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %40, i32 0, i32 1, !dbg !913
  %42 = load i64, i64* %41, align 8, !dbg !913
  %43 = load i32, i32* %15, align 4, !dbg !914
  %44 = zext i32 %43 to i64, !dbg !915
  %45 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !915
  %46 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %45, i64 %44, !dbg !915
  %47 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %46, i32 0, i32 2, !dbg !916
  %48 = load i32, i32* %47, align 8, !dbg !916
  %49 = load i32, i32* %15, align 4, !dbg !917
  %50 = zext i32 %49 to i64, !dbg !918
  %51 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !918
  %52 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %51, i64 %50, !dbg !918
  %53 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %52, i32 0, i32 3, !dbg !919
  %54 = call i8* %36(i64 %42, i32 %48, i8** %53), !dbg !910
  %55 = load i32, i32* %15, align 4, !dbg !920
  %56 = zext i32 %55 to i64, !dbg !921
  %57 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !921
  %58 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %57, i64 %56, !dbg !921
  %59 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %58, i32 0, i32 0, !dbg !922
  store i8* %54, i8** %59, align 8, !dbg !923
  %60 = load i32, i32* %15, align 4, !dbg !924
  %61 = zext i32 %60 to i64, !dbg !926
  %62 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !926
  %63 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %62, i64 %61, !dbg !926
  %64 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %63, i32 0, i32 0, !dbg !927
  %65 = load i8*, i8** %64, align 8, !dbg !927
  %66 = icmp eq i8* null, %65, !dbg !928
  br i1 %66, label %67, label %68, !dbg !929

; <label>:67:                                     ; preds = %30
  br label %96, !dbg !930

; <label>:68:                                     ; preds = %30
  %69 = load i64, i64* %17, align 8, !dbg !932
  %70 = load i32, i32* %15, align 4, !dbg !933
  %71 = zext i32 %70 to i64, !dbg !934
  %72 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !934
  %73 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %72, i64 %71, !dbg !934
  %74 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %73, i32 0, i32 2, !dbg !935
  %75 = load i32, i32* %74, align 8, !dbg !935
  %76 = zext i32 %75 to i64, !dbg !934
  %77 = icmp ult i64 %69, %76, !dbg !936
  br i1 %77, label %78, label %79, !dbg !932

; <label>:78:                                     ; preds = %68
  br label %89, !dbg !937

; <label>:79:                                     ; preds = %68
  %80 = load i64, i64* %17, align 8, !dbg !939
  %81 = load i32, i32* %15, align 4, !dbg !940
  %82 = zext i32 %81 to i64, !dbg !941
  %83 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !941
  %84 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %83, i64 %82, !dbg !941
  %85 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %84, i32 0, i32 2, !dbg !942
  %86 = load i32, i32* %85, align 8, !dbg !942
  %87 = zext i32 %86 to i64, !dbg !941
  %88 = sub i64 %80, %87, !dbg !943
  br label %89, !dbg !944

; <label>:89:                                     ; preds = %79, %78
  %90 = phi i64 [ 0, %78 ], [ %88, %79 ], !dbg !946
  store i64 %90, i64* %17, align 8, !dbg !948
  br label %91, !dbg !949

; <label>:91:                                     ; preds = %89
  %92 = load i32, i32* %15, align 4, !dbg !950
  %93 = add i32 %92, 1, !dbg !950
  store i32 %93, i32* %15, align 4, !dbg !950
  %94 = load i32, i32* %16, align 4, !dbg !951
  %95 = add i32 %94, 1, !dbg !951
  store i32 %95, i32* %16, align 4, !dbg !951
  br label %21, !dbg !952, !llvm.loop !954

; <label>:96:                                     ; preds = %67, %28
  %97 = load i64, i64* %17, align 8, !dbg !956
  %98 = icmp ne i64 0, %97, !dbg !958
  br i1 %98, label %99, label %103, !dbg !959

; <label>:99:                                     ; preds = %96
  %100 = load void (i8**)*, void (i8**)** %9, align 8, !dbg !960
  %101 = load i32, i32* %11, align 4, !dbg !962
  %102 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %13, align 8, !dbg !963
  call void @HSPUUnmapBuf(void (i8**)* %100, i32 %101, %struct.HgfsVmxIov* %102, i32* %16), !dbg !964
  store i8 0, i8* %18, align 1, !dbg !965
  br label %103, !dbg !966

; <label>:103:                                    ; preds = %99, %96
  %104 = load i32, i32* %16, align 4, !dbg !967
  %105 = load i32*, i32** %14, align 8, !dbg !968
  store i32 %104, i32* %105, align 4, !dbg !969
  %106 = load i8, i8* %18, align 1, !dbg !970
  ret i8 %106, !dbg !971
}

; Function Attrs: nounwind uwtable
define internal void @HSPUCopyIovecToBuf(%struct.HgfsVmxIov*, i32, i32, i8*, i64) #0 !dbg !972 {
  %6 = alloca %struct.HgfsVmxIov*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.HgfsVmxIov* %0, %struct.HgfsVmxIov** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsVmxIov** %6, metadata !975, metadata !86), !dbg !976
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !977, metadata !86), !dbg !978
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !979, metadata !86), !dbg !980
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !981, metadata !86), !dbg !982
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !983, metadata !86), !dbg !984
  call void @llvm.dbg.declare(metadata i64* %11, metadata !985, metadata !86), !dbg !986
  call void @llvm.dbg.declare(metadata i64* %12, metadata !987, metadata !86), !dbg !988
  call void @llvm.dbg.declare(metadata i64* %13, metadata !989, metadata !86), !dbg !990
  call void @llvm.dbg.declare(metadata i64* %14, metadata !991, metadata !86), !dbg !992
  store i64 0, i64* %14, align 8, !dbg !992
  %16 = load i32, i32* %8, align 4, !dbg !993
  %17 = zext i32 %16 to i64, !dbg !993
  store i64 %17, i64* %11, align 8, !dbg !995
  %18 = load i32, i32* %8, align 4, !dbg !996
  %19 = load i32, i32* %7, align 4, !dbg !997
  %20 = add i32 %18, %19, !dbg !998
  %21 = zext i32 %20 to i64, !dbg !996
  store i64 %21, i64* %12, align 8, !dbg !999
  %22 = load i64, i64* %10, align 8, !dbg !1000
  store i64 %22, i64* %13, align 8, !dbg !1001
  br label %23, !dbg !1002

; <label>:23:                                     ; preds = %67, %5
  %24 = load i64, i64* %11, align 8, !dbg !1003
  %25 = load i64, i64* %12, align 8, !dbg !1005
  %26 = icmp ult i64 %24, %25, !dbg !1006
  br i1 %26, label %27, label %30, !dbg !1007

; <label>:27:                                     ; preds = %23
  %28 = load i64, i64* %13, align 8, !dbg !1008
  %29 = icmp ugt i64 %28, 0, !dbg !1010
  br label %30

; <label>:30:                                     ; preds = %27, %23
  %31 = phi i1 [ false, %23 ], [ %29, %27 ]
  br i1 %31, label %32, label %70, !dbg !1011

; <label>:32:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1013, metadata !86), !dbg !1015
  %33 = load i64, i64* %13, align 8, !dbg !1016
  %34 = load i64, i64* %11, align 8, !dbg !1017
  %35 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %6, align 8, !dbg !1018
  %36 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %35, i64 %34, !dbg !1018
  %37 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %36, i32 0, i32 2, !dbg !1019
  %38 = load i32, i32* %37, align 8, !dbg !1019
  %39 = zext i32 %38 to i64, !dbg !1018
  %40 = icmp ult i64 %33, %39, !dbg !1020
  br i1 %40, label %41, label %43, !dbg !1016

; <label>:41:                                     ; preds = %32
  %42 = load i64, i64* %13, align 8, !dbg !1021
  br label %50, !dbg !1022

; <label>:43:                                     ; preds = %32
  %44 = load i64, i64* %11, align 8, !dbg !1024
  %45 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %6, align 8, !dbg !1025
  %46 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %45, i64 %44, !dbg !1025
  %47 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %46, i32 0, i32 2, !dbg !1026
  %48 = load i32, i32* %47, align 8, !dbg !1026
  %49 = zext i32 %48 to i64, !dbg !1025
  br label %50, !dbg !1027

; <label>:50:                                     ; preds = %43, %41
  %51 = phi i64 [ %42, %41 ], [ %49, %43 ], !dbg !1029
  store i64 %51, i64* %15, align 8, !dbg !1031
  %52 = load i8*, i8** %9, align 8, !dbg !1032
  %53 = load i64, i64* %14, align 8, !dbg !1033
  %54 = getelementptr inbounds i8, i8* %52, i64 %53, !dbg !1034
  %55 = load i64, i64* %11, align 8, !dbg !1035
  %56 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %6, align 8, !dbg !1036
  %57 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %56, i64 %55, !dbg !1036
  %58 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %57, i32 0, i32 0, !dbg !1037
  %59 = load i8*, i8** %58, align 8, !dbg !1037
  %60 = load i64, i64* %15, align 8, !dbg !1038
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %59, i64 %60, i32 1, i1 false), !dbg !1039
  %61 = load i64, i64* %15, align 8, !dbg !1040
  %62 = load i64, i64* %14, align 8, !dbg !1041
  %63 = add i64 %62, %61, !dbg !1041
  store i64 %63, i64* %14, align 8, !dbg !1041
  %64 = load i64, i64* %15, align 8, !dbg !1042
  %65 = load i64, i64* %13, align 8, !dbg !1043
  %66 = sub i64 %65, %64, !dbg !1043
  store i64 %66, i64* %13, align 8, !dbg !1043
  br label %67, !dbg !1044

; <label>:67:                                     ; preds = %50
  %68 = load i64, i64* %11, align 8, !dbg !1045
  %69 = add i64 %68, 1, !dbg !1045
  store i64 %69, i64* %11, align 8, !dbg !1045
  br label %23, !dbg !1046, !llvm.loop !1048

; <label>:70:                                     ; preds = %30
  ret void, !dbg !1050
}

; Function Attrs: nounwind uwtable
define internal void @HSPUUnmapBuf(void (i8**)*, i32, %struct.HgfsVmxIov*, i32*) #0 !dbg !1051 {
  %5 = alloca void (i8**)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.HgfsVmxIov*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store void (i8**)* %0, void (i8**)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8**)** %5, metadata !1054, metadata !86), !dbg !1055
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1056, metadata !86), !dbg !1057
  store %struct.HgfsVmxIov* %2, %struct.HgfsVmxIov** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsVmxIov** %7, metadata !1058, metadata !86), !dbg !1059
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1060, metadata !86), !dbg !1061
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1062, metadata !86), !dbg !1063
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1064, metadata !86), !dbg !1065
  %11 = load i32, i32* %6, align 4, !dbg !1066
  store i32 %11, i32* %9, align 4, !dbg !1068
  %12 = load i32, i32* %6, align 4, !dbg !1069
  %13 = load i32*, i32** %8, align 8, !dbg !1070
  %14 = load i32, i32* %13, align 4, !dbg !1071
  %15 = add i32 %12, %14, !dbg !1072
  store i32 %15, i32* %10, align 4, !dbg !1073
  br label %16, !dbg !1074

; <label>:16:                                     ; preds = %37, %4
  %17 = load i32, i32* %9, align 4, !dbg !1075
  %18 = load i32, i32* %10, align 4, !dbg !1077
  %19 = icmp ult i32 %17, %18, !dbg !1078
  br i1 %19, label %20, label %40, !dbg !1079

; <label>:20:                                     ; preds = %16
  %21 = load void (i8**)*, void (i8**)** %5, align 8, !dbg !1081
  %22 = load i32, i32* %9, align 4, !dbg !1083
  %23 = zext i32 %22 to i64, !dbg !1084
  %24 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %7, align 8, !dbg !1084
  %25 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %24, i64 %23, !dbg !1084
  %26 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %25, i32 0, i32 3, !dbg !1085
  call void %21(i8** %26), !dbg !1081
  %27 = load i32, i32* %9, align 4, !dbg !1086
  %28 = zext i32 %27 to i64, !dbg !1087
  %29 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %7, align 8, !dbg !1087
  %30 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %29, i64 %28, !dbg !1087
  %31 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %30, i32 0, i32 3, !dbg !1088
  store i8* null, i8** %31, align 8, !dbg !1089
  %32 = load i32, i32* %9, align 4, !dbg !1090
  %33 = zext i32 %32 to i64, !dbg !1091
  %34 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %7, align 8, !dbg !1091
  %35 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %34, i64 %33, !dbg !1091
  %36 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %35, i32 0, i32 0, !dbg !1092
  store i8* null, i8** %36, align 8, !dbg !1093
  br label %37, !dbg !1094

; <label>:37:                                     ; preds = %20
  %38 = load i32, i32* %9, align 4, !dbg !1095
  %39 = add i32 %38, 1, !dbg !1095
  store i32 %39, i32* %9, align 4, !dbg !1095
  br label %16, !dbg !1096, !llvm.loop !1098

; <label>:40:                                     ; preds = %16
  %41 = load i32*, i32** %8, align 8, !dbg !1100
  store i32 0, i32* %41, align 4, !dbg !1101
  ret void, !dbg !1102
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @HSPUCopyBufToIovec(%struct.HgfsVmxIov*, i32, i32, i8*, i64) #0 !dbg !1103 {
  %6 = alloca %struct.HgfsVmxIov*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.HgfsVmxIov* %0, %struct.HgfsVmxIov** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsVmxIov** %6, metadata !1104, metadata !86), !dbg !1105
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1106, metadata !86), !dbg !1107
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1108, metadata !86), !dbg !1109
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1110, metadata !86), !dbg !1111
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1112, metadata !86), !dbg !1113
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1114, metadata !86), !dbg !1115
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1116, metadata !86), !dbg !1117
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1118, metadata !86), !dbg !1119
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1120, metadata !86), !dbg !1121
  store i64 0, i64* %14, align 8, !dbg !1121
  %16 = load i32, i32* %8, align 4, !dbg !1122
  %17 = zext i32 %16 to i64, !dbg !1122
  store i64 %17, i64* %11, align 8, !dbg !1124
  %18 = load i32, i32* %8, align 4, !dbg !1125
  %19 = load i32, i32* %7, align 4, !dbg !1126
  %20 = add i32 %18, %19, !dbg !1127
  %21 = zext i32 %20 to i64, !dbg !1125
  store i64 %21, i64* %12, align 8, !dbg !1128
  %22 = load i64, i64* %10, align 8, !dbg !1129
  store i64 %22, i64* %13, align 8, !dbg !1130
  br label %23, !dbg !1131

; <label>:23:                                     ; preds = %67, %5
  %24 = load i64, i64* %11, align 8, !dbg !1132
  %25 = load i64, i64* %12, align 8, !dbg !1134
  %26 = icmp ult i64 %24, %25, !dbg !1135
  br i1 %26, label %27, label %30, !dbg !1136

; <label>:27:                                     ; preds = %23
  %28 = load i64, i64* %13, align 8, !dbg !1137
  %29 = icmp ugt i64 %28, 0, !dbg !1139
  br label %30

; <label>:30:                                     ; preds = %27, %23
  %31 = phi i1 [ false, %23 ], [ %29, %27 ]
  br i1 %31, label %32, label %70, !dbg !1140

; <label>:32:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1142, metadata !86), !dbg !1144
  %33 = load i64, i64* %13, align 8, !dbg !1145
  %34 = load i64, i64* %11, align 8, !dbg !1146
  %35 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %6, align 8, !dbg !1147
  %36 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %35, i64 %34, !dbg !1147
  %37 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %36, i32 0, i32 2, !dbg !1148
  %38 = load i32, i32* %37, align 8, !dbg !1148
  %39 = zext i32 %38 to i64, !dbg !1147
  %40 = icmp ult i64 %33, %39, !dbg !1149
  br i1 %40, label %41, label %43, !dbg !1145

; <label>:41:                                     ; preds = %32
  %42 = load i64, i64* %13, align 8, !dbg !1150
  br label %50, !dbg !1151

; <label>:43:                                     ; preds = %32
  %44 = load i64, i64* %11, align 8, !dbg !1153
  %45 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %6, align 8, !dbg !1154
  %46 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %45, i64 %44, !dbg !1154
  %47 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %46, i32 0, i32 2, !dbg !1155
  %48 = load i32, i32* %47, align 8, !dbg !1155
  %49 = zext i32 %48 to i64, !dbg !1154
  br label %50, !dbg !1156

; <label>:50:                                     ; preds = %43, %41
  %51 = phi i64 [ %42, %41 ], [ %49, %43 ], !dbg !1158
  store i64 %51, i64* %15, align 8, !dbg !1160
  %52 = load i64, i64* %11, align 8, !dbg !1161
  %53 = load %struct.HgfsVmxIov*, %struct.HgfsVmxIov** %6, align 8, !dbg !1162
  %54 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %53, i64 %52, !dbg !1162
  %55 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %54, i32 0, i32 0, !dbg !1163
  %56 = load i8*, i8** %55, align 8, !dbg !1163
  %57 = load i8*, i8** %9, align 8, !dbg !1164
  %58 = load i64, i64* %14, align 8, !dbg !1165
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !1166
  %60 = load i64, i64* %15, align 8, !dbg !1167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %59, i64 %60, i32 1, i1 false), !dbg !1168
  %61 = load i64, i64* %15, align 8, !dbg !1169
  %62 = load i64, i64* %13, align 8, !dbg !1170
  %63 = sub i64 %62, %61, !dbg !1170
  store i64 %63, i64* %13, align 8, !dbg !1170
  %64 = load i64, i64* %15, align 8, !dbg !1171
  %65 = load i64, i64* %14, align 8, !dbg !1172
  %66 = add i64 %65, %64, !dbg !1172
  store i64 %66, i64* %14, align 8, !dbg !1172
  br label %67, !dbg !1173

; <label>:67:                                     ; preds = %50
  %68 = load i64, i64* %11, align 8, !dbg !1174
  %69 = add i64 %68, 1, !dbg !1174
  store i64 %69, i64* %11, align 8, !dbg !1174
  br label %23, !dbg !1175, !llvm.loop !1177

; <label>:70:                                     ; preds = %30
  ret void, !dbg !1179
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "hgfsServerPacketUtil.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line387")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServer.h", directory: "/home/lichi/Desktop/open-vm-tools/line387")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "BUF_READABLE", value: 0)
!7 = !DIEnumerator(name: "BUF_WRITEABLE", value: 1)
!8 = !DIEnumerator(name: "BUF_READWRITEABLE", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 51, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line387")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20}
!12 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!13 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!15 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!16 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!17 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!18 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!19 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!20 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!28 = distinct !DISubprogram(name: "HSPU_ValidateRequestPacketSize", scope: !29, file: !29, line: 95, type: !30, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!29 = !DIFile(filename: "hgfsServerPacketUtil.c", directory: "/home/lichi/Desktop/open-vm-tools/line387")
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !34, !47, !47, !47}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !33, line: 230, baseType: !24)
!33 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line387")
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsPacket", file: !4, line: 78, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsPacket", file: !4, line: 45, size: 1920, align: 64, elements: !37)
!37 = !{!38, !43, !45, !46, !49, !53, !54, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !79, !80}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !36, file: !4, line: 46, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !33, line: 171, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !41, line: 55, baseType: !42)
!41 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line387")
!42 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !36, file: !4, line: 48, baseType: !44, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsStateFlags", file: !4, line: 42, baseType: !39)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacket", scope: !36, file: !4, line: 51, baseType: !22, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacketSize", scope: !36, file: !4, line: 52, baseType: !47, size: 64, align: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 216, baseType: !42)
!48 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line387")
!49 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacketMappedIov", scope: !36, file: !4, line: 53, baseType: !50, size: 32, align: 32, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !33, line: 173, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 51, baseType: !52)
!52 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacketDataSize", scope: !36, file: !4, line: 54, baseType: !47, size: 64, align: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacketIsAllocated", scope: !36, file: !4, line: 55, baseType: !32, size: 8, align: 8, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "metaMappingType", scope: !36, file: !4, line: 56, baseType: !56, size: 32, align: 32, offset: 416)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "MappingType", file: !4, line: 40, baseType: !3)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacket", scope: !36, file: !4, line: 58, baseType: !22, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketSize", scope: !36, file: !4, line: 59, baseType: !47, size: 64, align: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketMappedIov", scope: !36, file: !4, line: 60, baseType: !50, size: 32, align: 32, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketDataSize", scope: !36, file: !4, line: 61, baseType: !47, size: 64, align: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketIovIndex", scope: !36, file: !4, line: 62, baseType: !50, size: 32, align: 32, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketIsAllocated", scope: !36, file: !4, line: 63, baseType: !32, size: 8, align: 8, offset: 736)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "dataMappingType", scope: !36, file: !4, line: 65, baseType: !56, size: 32, align: 32, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "replyPacket", scope: !36, file: !4, line: 67, baseType: !22, size: 64, align: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "replyPacketSize", scope: !36, file: !4, line: 68, baseType: !47, size: 64, align: 64, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "replyPacketDataSize", scope: !36, file: !4, line: 69, baseType: !47, size: 64, align: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "replyPacketIsAllocated", scope: !36, file: !4, line: 70, baseType: !32, size: 8, align: 8, offset: 1024)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "channelIov", scope: !36, file: !4, line: 73, baseType: !69, size: 512, align: 64, offset: 1088)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 512, align: 64, elements: !77)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsVmxIov", file: !4, line: 34, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsVmxIov", file: !4, line: 29, size: 256, align: 64, elements: !72)
!72 = !{!73, !74, !75, !76}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !71, file: !4, line: 30, baseType: !22, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !71, file: !4, line: 31, baseType: !39, size: 64, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !71, file: !4, line: 32, baseType: !50, size: 32, align: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !71, file: !4, line: 33, baseType: !22, size: 64, align: 64, offset: 192)
!77 = !{!78}
!78 = !DISubrange(count: 2)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "iovCount", scope: !36, file: !4, line: 75, baseType: !50, size: 32, align: 32, offset: 1600)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !36, file: !4, line: 76, baseType: !81, size: 256, align: 64, offset: 1664)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 256, align: 64, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !{}
!85 = !DILocalVariable(name: "packet", arg: 1, scope: !28, file: !29, line: 95, type: !34)
!86 = !DIExpression()
!87 = !DILocation(line: 95, column: 44, scope: !28)
!88 = !DILocalVariable(name: "requestHeaderSize", arg: 2, scope: !28, file: !29, line: 96, type: !47)
!89 = !DILocation(line: 96, column: 39, scope: !28)
!90 = !DILocalVariable(name: "requestOpSize", arg: 3, scope: !28, file: !29, line: 97, type: !47)
!91 = !DILocation(line: 97, column: 39, scope: !28)
!92 = !DILocalVariable(name: "requestOpDataSize", arg: 4, scope: !28, file: !29, line: 98, type: !47)
!93 = !DILocation(line: 98, column: 39, scope: !28)
!94 = !DILocalVariable(name: "bytesRemaining", scope: !28, file: !29, line: 100, type: !47)
!95 = !DILocation(line: 100, column: 11, scope: !28)
!96 = !DILocation(line: 100, column: 28, scope: !28)
!97 = !DILocation(line: 100, column: 36, scope: !28)
!98 = !DILocalVariable(name: "requestSizeIsOkay", scope: !28, file: !29, line: 101, type: !32)
!99 = !DILocation(line: 101, column: 9, scope: !28)
!100 = !DILocation(line: 108, column: 8, scope: !101)
!101 = distinct !DILexicalBlock(scope: !28, file: !29, line: 108, column: 8)
!102 = !DILocation(line: 108, column: 26, scope: !101)
!103 = !DILocation(line: 108, column: 23, scope: !101)
!104 = !DILocation(line: 108, column: 8, scope: !28)
!105 = !DILocation(line: 109, column: 25, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !29, line: 108, column: 45)
!107 = !DILocation(line: 109, column: 22, scope: !106)
!108 = !DILocation(line: 110, column: 4, scope: !106)
!109 = !DILocation(line: 111, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !101, file: !29, line: 110, column: 11)
!111 = !DILocation(line: 113, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !28, file: !29, line: 113, column: 8)
!113 = !DILocation(line: 113, column: 26, scope: !112)
!114 = !DILocation(line: 113, column: 23, scope: !112)
!115 = !DILocation(line: 113, column: 8, scope: !28)
!116 = !DILocation(line: 114, column: 25, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !29, line: 113, column: 41)
!118 = !DILocation(line: 114, column: 22, scope: !117)
!119 = !DILocation(line: 115, column: 4, scope: !117)
!120 = !DILocation(line: 116, column: 7, scope: !121)
!121 = distinct !DILexicalBlock(scope: !112, file: !29, line: 115, column: 11)
!122 = !DILocation(line: 118, column: 8, scope: !123)
!123 = distinct !DILexicalBlock(scope: !28, file: !29, line: 118, column: 8)
!124 = !DILocation(line: 118, column: 26, scope: !123)
!125 = !DILocation(line: 118, column: 23, scope: !123)
!126 = !DILocation(line: 118, column: 8, scope: !28)
!127 = !DILocation(line: 119, column: 25, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !29, line: 118, column: 45)
!129 = !DILocation(line: 120, column: 4, scope: !128)
!130 = !DILocation(line: 118, column: 26, scope: !131)
!131 = !DILexicalBlockFile(scope: !123, file: !29, discriminator: 1)
!132 = !DILocation(line: 123, column: 11, scope: !28)
!133 = !DILocation(line: 123, column: 4, scope: !28)
!134 = distinct !DISubprogram(name: "HSPU_ValidateReplyPacketSize", scope: !29, file: !29, line: 145, type: !135, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!135 = !DISubroutineType(types: !136)
!136 = !{!32, !34, !47, !47, !47, !32}
!137 = !DILocalVariable(name: "packet", arg: 1, scope: !134, file: !29, line: 145, type: !34)
!138 = !DILocation(line: 145, column: 42, scope: !134)
!139 = !DILocalVariable(name: "replyHeaderSize", arg: 2, scope: !134, file: !29, line: 146, type: !47)
!140 = !DILocation(line: 146, column: 37, scope: !134)
!141 = !DILocalVariable(name: "replyResultSize", arg: 3, scope: !134, file: !29, line: 147, type: !47)
!142 = !DILocation(line: 147, column: 37, scope: !134)
!143 = !DILocalVariable(name: "replyResultDataSize", arg: 4, scope: !134, file: !29, line: 148, type: !47)
!144 = !DILocation(line: 148, column: 37, scope: !134)
!145 = !DILocalVariable(name: "useMappedMetaPacket", arg: 5, scope: !134, file: !29, line: 149, type: !32)
!146 = !DILocation(line: 149, column: 35, scope: !134)
!147 = !DILocalVariable(name: "bytesRemaining", scope: !134, file: !29, line: 151, type: !47)
!148 = !DILocation(line: 151, column: 11, scope: !134)
!149 = !DILocalVariable(name: "replySizeIsOkay", scope: !134, file: !29, line: 152, type: !32)
!150 = !DILocation(line: 152, column: 9, scope: !134)
!151 = !DILocation(line: 154, column: 8, scope: !152)
!152 = distinct !DILexicalBlock(scope: !134, file: !29, line: 154, column: 8)
!153 = !DILocation(line: 154, column: 16, scope: !152)
!154 = !DILocation(line: 154, column: 28, scope: !152)
!155 = !DILocation(line: 154, column: 8, scope: !134)
!156 = !DILocation(line: 156, column: 24, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !29, line: 154, column: 36)
!158 = !DILocation(line: 156, column: 32, scope: !157)
!159 = !DILocation(line: 156, column: 22, scope: !157)
!160 = !DILocation(line: 157, column: 4, scope: !157)
!161 = !DILocation(line: 157, column: 15, scope: !162)
!162 = !DILexicalBlockFile(scope: !163, file: !29, discriminator: 1)
!163 = distinct !DILexicalBlock(scope: !152, file: !29, line: 157, column: 15)
!164 = !DILocation(line: 159, column: 24, scope: !165)
!165 = distinct !DILexicalBlock(scope: !163, file: !29, line: 157, column: 36)
!166 = !DILocation(line: 159, column: 32, scope: !165)
!167 = !DILocation(line: 159, column: 22, scope: !165)
!168 = !DILocation(line: 160, column: 4, scope: !165)
!169 = !DILocation(line: 162, column: 23, scope: !170)
!170 = distinct !DILexicalBlock(scope: !163, file: !29, line: 160, column: 11)
!171 = !DILocation(line: 163, column: 7, scope: !170)
!172 = !DILocation(line: 166, column: 8, scope: !173)
!173 = distinct !DILexicalBlock(scope: !134, file: !29, line: 166, column: 8)
!174 = !DILocation(line: 166, column: 26, scope: !173)
!175 = !DILocation(line: 166, column: 23, scope: !173)
!176 = !DILocation(line: 166, column: 8, scope: !134)
!177 = !DILocation(line: 167, column: 25, scope: !178)
!178 = distinct !DILexicalBlock(scope: !173, file: !29, line: 166, column: 43)
!179 = !DILocation(line: 167, column: 22, scope: !178)
!180 = !DILocation(line: 168, column: 4, scope: !178)
!181 = !DILocation(line: 169, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !173, file: !29, line: 168, column: 11)
!183 = !DILocation(line: 171, column: 8, scope: !184)
!184 = distinct !DILexicalBlock(scope: !134, file: !29, line: 171, column: 8)
!185 = !DILocation(line: 171, column: 26, scope: !184)
!186 = !DILocation(line: 171, column: 23, scope: !184)
!187 = !DILocation(line: 171, column: 8, scope: !134)
!188 = !DILocation(line: 172, column: 25, scope: !189)
!189 = distinct !DILexicalBlock(scope: !184, file: !29, line: 171, column: 43)
!190 = !DILocation(line: 172, column: 22, scope: !189)
!191 = !DILocation(line: 173, column: 4, scope: !189)
!192 = !DILocation(line: 174, column: 7, scope: !193)
!193 = distinct !DILexicalBlock(scope: !184, file: !29, line: 173, column: 11)
!194 = !DILocation(line: 176, column: 8, scope: !195)
!195 = distinct !DILexicalBlock(scope: !134, file: !29, line: 176, column: 8)
!196 = !DILocation(line: 176, column: 26, scope: !195)
!197 = !DILocation(line: 176, column: 23, scope: !195)
!198 = !DILocation(line: 176, column: 8, scope: !134)
!199 = !DILocation(line: 177, column: 23, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !29, line: 176, column: 47)
!201 = !DILocation(line: 178, column: 4, scope: !200)
!202 = !DILocation(line: 176, column: 26, scope: !203)
!203 = !DILexicalBlockFile(scope: !195, file: !29, discriminator: 1)
!204 = !DILocation(line: 181, column: 11, scope: !134)
!205 = !DILocation(line: 181, column: 4, scope: !134)
!206 = distinct !DISubprogram(name: "HSPU_GetReplyPacket", scope: !29, file: !29, line: 202, type: !207, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!207 = !DISubroutineType(types: !208)
!208 = !{!22, !34, !209, !47, !238}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerChannelCallbacks", file: !4, line: 190, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerChannelCallbacks", file: !4, line: 183, size: 384, align: 64, elements: !212)
!212 = !{!213, !218, !220, !226, !227, !232}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "registerThread", scope: !211, file: !4, line: 184, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelRegisterThreadFunc", file: !4, line: 180, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{null}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "unregisterThread", scope: !211, file: !4, line: 185, baseType: !219, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelUnregisterThreadFunc", file: !4, line: 181, baseType: !215)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "getReadVa", scope: !211, file: !4, line: 186, baseType: !221, size: 64, align: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelMapVirtAddrFunc", file: !4, line: 178, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!22, !39, !50, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "getWriteVa", scope: !211, file: !4, line: 187, baseType: !221, size: 64, align: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "putVa", scope: !211, file: !4, line: 188, baseType: !228, size: 64, align: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelUnmapVirtAddrFunc", file: !4, line: 179, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !225}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !211, file: !4, line: 189, baseType: !233, size: 64, align: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelSendFunc", file: !4, line: 175, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!32, !22, !34, !237}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSendFlags", file: !4, line: 98, baseType: !50)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!239 = !DILocalVariable(name: "packet", arg: 1, scope: !206, file: !29, line: 202, type: !34)
!240 = !DILocation(line: 202, column: 33, scope: !206)
!241 = !DILocalVariable(name: "chanCb", arg: 2, scope: !206, file: !29, line: 203, type: !209)
!242 = !DILocation(line: 203, column: 49, scope: !206)
!243 = !DILocalVariable(name: "replyDataSize", arg: 3, scope: !206, file: !29, line: 204, type: !47)
!244 = !DILocation(line: 204, column: 28, scope: !206)
!245 = !DILocalVariable(name: "replyPacketSize", arg: 4, scope: !206, file: !29, line: 205, type: !238)
!246 = !DILocation(line: 205, column: 29, scope: !206)
!247 = !DILocation(line: 207, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !206, file: !29, line: 207, column: 8)
!249 = !DILocation(line: 207, column: 16, scope: !248)
!250 = !DILocation(line: 207, column: 28, scope: !248)
!251 = !DILocation(line: 207, column: 8, scope: !206)
!252 = !DILocation(line: 212, column: 37, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !29, line: 207, column: 36)
!254 = !DILocation(line: 212, column: 7, scope: !253)
!255 = !DILocation(line: 212, column: 15, scope: !253)
!256 = !DILocation(line: 212, column: 35, scope: !253)
!257 = !DILocation(line: 213, column: 7, scope: !253)
!258 = distinct !{!258, !257}
!259 = !DILocation(line: 213, column: 33, scope: !260)
!260 = !DILexicalBlockFile(scope: !261, file: !29, discriminator: 1)
!261 = distinct !DILexicalBlock(scope: !262, file: !29, line: 213, column: 31)
!262 = distinct !DILexicalBlock(scope: !263, file: !29, line: 213, column: 16)
!263 = distinct !DILexicalBlock(scope: !253, file: !29, line: 213, column: 10)
!264 = !DILocation(line: 213, column: 212, scope: !260)
!265 = !DILocation(line: 213, column: 227, scope: !260)
!266 = !DILocation(line: 213, column: 235, scope: !260)
!267 = !DILocation(line: 213, column: 112, scope: !268)
!268 = !DILexicalBlockFile(scope: !260, file: !29, discriminator: 2)
!269 = !DILocation(line: 213, column: 255, scope: !260)
!270 = !DILocation(line: 216, column: 4, scope: !253)
!271 = !DILocation(line: 216, column: 15, scope: !272)
!272 = !DILexicalBlockFile(scope: !273, file: !29, discriminator: 1)
!273 = distinct !DILexicalBlock(scope: !248, file: !29, line: 216, column: 15)
!274 = !DILocation(line: 216, column: 22, scope: !272)
!275 = !DILocation(line: 216, column: 29, scope: !272)
!276 = !DILocation(line: 216, column: 32, scope: !277)
!277 = !DILexicalBlockFile(scope: !273, file: !29, discriminator: 2)
!278 = !DILocation(line: 216, column: 40, scope: !277)
!279 = !DILocation(line: 216, column: 51, scope: !277)
!280 = !DILocation(line: 216, column: 15, scope: !277)
!281 = !DILocation(line: 218, column: 11, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !29, line: 218, column: 11)
!283 = distinct !DILexicalBlock(scope: !273, file: !29, line: 216, column: 60)
!284 = !DILocation(line: 218, column: 19, scope: !282)
!285 = !DILocation(line: 218, column: 30, scope: !282)
!286 = !DILocation(line: 218, column: 11, scope: !283)
!287 = !DILocation(line: 227, column: 10, scope: !288)
!288 = distinct !DILexicalBlock(scope: !282, file: !29, line: 218, column: 38)
!289 = distinct !{!289, !287}
!290 = !DILocation(line: 227, column: 37, scope: !291)
!291 = !DILexicalBlockFile(scope: !292, file: !29, discriminator: 1)
!292 = distinct !DILexicalBlock(scope: !293, file: !29, line: 227, column: 35)
!293 = distinct !DILexicalBlock(scope: !294, file: !29, line: 227, column: 19)
!294 = distinct !DILexicalBlock(scope: !288, file: !29, line: 227, column: 13)
!295 = !DILocation(line: 227, column: 116, scope: !296)
!296 = !DILexicalBlockFile(scope: !291, file: !29, discriminator: 2)
!297 = !DILocation(line: 227, column: 216, scope: !291)
!298 = !DILocation(line: 231, column: 32, scope: !288)
!299 = !DILocation(line: 231, column: 40, scope: !288)
!300 = !DILocation(line: 231, column: 10, scope: !288)
!301 = !DILocation(line: 231, column: 18, scope: !288)
!302 = !DILocation(line: 231, column: 30, scope: !288)
!303 = !DILocation(line: 232, column: 40, scope: !288)
!304 = !DILocation(line: 232, column: 10, scope: !288)
!305 = !DILocation(line: 232, column: 18, scope: !288)
!306 = !DILocation(line: 232, column: 38, scope: !288)
!307 = !DILocation(line: 233, column: 36, scope: !288)
!308 = !DILocation(line: 233, column: 44, scope: !288)
!309 = !DILocation(line: 233, column: 10, scope: !288)
!310 = !DILocation(line: 233, column: 18, scope: !288)
!311 = !DILocation(line: 233, column: 34, scope: !288)
!312 = !DILocation(line: 234, column: 10, scope: !288)
!313 = !DILocation(line: 234, column: 18, scope: !288)
!314 = !DILocation(line: 234, column: 41, scope: !288)
!315 = !DILocation(line: 242, column: 39, scope: !288)
!316 = !DILocation(line: 242, column: 47, scope: !288)
!317 = !DILocation(line: 242, column: 10, scope: !288)
!318 = !DILocation(line: 242, column: 18, scope: !288)
!319 = !DILocation(line: 242, column: 37, scope: !288)
!320 = !DILocation(line: 243, column: 7, scope: !288)
!321 = !DILocation(line: 244, column: 10, scope: !322)
!322 = distinct !DILexicalBlock(scope: !282, file: !29, line: 243, column: 14)
!323 = !DILocation(line: 246, column: 4, scope: !283)
!324 = !DILocation(line: 248, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !273, file: !29, line: 246, column: 11)
!326 = distinct !{!326, !324}
!327 = !DILocation(line: 248, column: 34, scope: !328)
!328 = !DILexicalBlockFile(scope: !329, file: !29, discriminator: 1)
!329 = distinct !DILexicalBlock(scope: !330, file: !29, line: 248, column: 32)
!330 = distinct !DILexicalBlock(scope: !331, file: !29, line: 248, column: 16)
!331 = distinct !DILexicalBlock(scope: !325, file: !29, line: 248, column: 10)
!332 = !DILocation(line: 248, column: 113, scope: !333)
!333 = !DILexicalBlockFile(scope: !328, file: !29, discriminator: 2)
!334 = !DILocation(line: 248, column: 202, scope: !328)
!335 = !DILocation(line: 249, column: 46, scope: !325)
!336 = !DILocation(line: 249, column: 29, scope: !325)
!337 = !DILocation(line: 249, column: 7, scope: !325)
!338 = !DILocation(line: 249, column: 15, scope: !325)
!339 = !DILocation(line: 249, column: 27, scope: !325)
!340 = !DILocation(line: 250, column: 7, scope: !325)
!341 = !DILocation(line: 250, column: 15, scope: !325)
!342 = !DILocation(line: 250, column: 38, scope: !325)
!343 = !DILocation(line: 251, column: 37, scope: !325)
!344 = !DILocation(line: 251, column: 7, scope: !325)
!345 = !DILocation(line: 251, column: 15, scope: !325)
!346 = !DILocation(line: 251, column: 35, scope: !325)
!347 = !DILocation(line: 252, column: 33, scope: !325)
!348 = !DILocation(line: 252, column: 7, scope: !325)
!349 = !DILocation(line: 252, column: 15, scope: !325)
!350 = !DILocation(line: 252, column: 31, scope: !325)
!351 = !DILocation(line: 255, column: 23, scope: !206)
!352 = !DILocation(line: 255, column: 31, scope: !206)
!353 = !DILocation(line: 255, column: 5, scope: !206)
!354 = !DILocation(line: 255, column: 21, scope: !206)
!355 = !DILocation(line: 256, column: 11, scope: !206)
!356 = !DILocation(line: 256, column: 19, scope: !206)
!357 = !DILocation(line: 256, column: 4, scope: !206)
!358 = distinct !DISubprogram(name: "HSPU_PutReplyPacket", scope: !29, file: !29, line: 276, type: !359, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !34, !209}
!361 = !DILocalVariable(name: "packet", arg: 1, scope: !358, file: !29, line: 276, type: !34)
!362 = !DILocation(line: 276, column: 33, scope: !358)
!363 = !DILocalVariable(name: "chanCb", arg: 2, scope: !358, file: !29, line: 277, type: !209)
!364 = !DILocation(line: 277, column: 49, scope: !358)
!365 = !DILocation(line: 284, column: 8, scope: !366)
!366 = distinct !DILexicalBlock(scope: !358, file: !29, line: 284, column: 8)
!367 = !DILocation(line: 284, column: 16, scope: !366)
!368 = !DILocation(line: 284, column: 8, scope: !358)
!369 = !DILocation(line: 285, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !29, line: 284, column: 40)
!371 = distinct !{!371, !369}
!372 = !DILocation(line: 285, column: 34, scope: !373)
!373 = !DILexicalBlockFile(scope: !374, file: !29, discriminator: 1)
!374 = distinct !DILexicalBlock(scope: !375, file: !29, line: 285, column: 32)
!375 = distinct !DILexicalBlock(scope: !376, file: !29, line: 285, column: 16)
!376 = distinct !DILexicalBlock(scope: !370, file: !29, line: 285, column: 10)
!377 = !DILocation(line: 285, column: 113, scope: !378)
!378 = !DILexicalBlockFile(scope: !373, file: !29, discriminator: 2)
!379 = !DILocation(line: 285, column: 197, scope: !373)
!380 = !DILocation(line: 286, column: 12, scope: !370)
!381 = !DILocation(line: 286, column: 20, scope: !370)
!382 = !DILocation(line: 286, column: 7, scope: !370)
!383 = !DILocation(line: 287, column: 7, scope: !370)
!384 = !DILocation(line: 287, column: 15, scope: !370)
!385 = !DILocation(line: 287, column: 38, scope: !370)
!386 = !DILocation(line: 288, column: 7, scope: !370)
!387 = !DILocation(line: 288, column: 15, scope: !370)
!388 = !DILocation(line: 288, column: 27, scope: !370)
!389 = !DILocation(line: 289, column: 7, scope: !370)
!390 = !DILocation(line: 289, column: 15, scope: !370)
!391 = !DILocation(line: 289, column: 31, scope: !370)
!392 = !DILocation(line: 290, column: 4, scope: !370)
!393 = !DILocation(line: 291, column: 1, scope: !358)
!394 = distinct !DISubprogram(name: "HSPU_GetMetaPacket", scope: !29, file: !29, line: 311, type: !395, isLocal: false, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!395 = !DISubroutineType(types: !396)
!396 = !{!22, !34, !238, !209}
!397 = !DILocalVariable(name: "packet", arg: 1, scope: !394, file: !29, line: 311, type: !34)
!398 = !DILocation(line: 311, column: 32, scope: !394)
!399 = !DILocalVariable(name: "metaPacketSize", arg: 2, scope: !394, file: !29, line: 312, type: !238)
!400 = !DILocation(line: 312, column: 28, scope: !394)
!401 = !DILocalVariable(name: "chanCb", arg: 3, scope: !394, file: !29, line: 313, type: !209)
!402 = !DILocation(line: 313, column: 48, scope: !394)
!403 = !DILocation(line: 315, column: 22, scope: !394)
!404 = !DILocation(line: 315, column: 30, scope: !394)
!405 = !DILocation(line: 315, column: 5, scope: !394)
!406 = !DILocation(line: 315, column: 20, scope: !394)
!407 = !DILocation(line: 316, column: 8, scope: !408)
!408 = distinct !DILexicalBlock(scope: !394, file: !29, line: 316, column: 8)
!409 = !DILocation(line: 316, column: 16, scope: !408)
!410 = !DILocation(line: 316, column: 27, scope: !408)
!411 = !DILocation(line: 316, column: 8, scope: !394)
!412 = !DILocation(line: 317, column: 14, scope: !413)
!413 = distinct !DILexicalBlock(scope: !408, file: !29, line: 316, column: 35)
!414 = !DILocation(line: 317, column: 22, scope: !413)
!415 = !DILocation(line: 317, column: 7, scope: !413)
!416 = !DILocation(line: 320, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !394, file: !29, line: 320, column: 8)
!418 = !DILocation(line: 320, column: 16, scope: !417)
!419 = !DILocation(line: 320, column: 31, scope: !417)
!420 = !DILocation(line: 320, column: 8, scope: !394)
!421 = !DILocation(line: 321, column: 7, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !29, line: 320, column: 37)
!423 = !DILocation(line: 324, column: 4, scope: !394)
!424 = !DILocation(line: 324, column: 12, scope: !394)
!425 = !DILocation(line: 324, column: 28, scope: !394)
!426 = !DILocation(line: 326, column: 22, scope: !394)
!427 = !DILocation(line: 327, column: 22, scope: !394)
!428 = !DILocation(line: 327, column: 30, scope: !394)
!429 = !DILocation(line: 328, column: 22, scope: !394)
!430 = !DILocation(line: 328, column: 30, scope: !394)
!431 = !DILocation(line: 329, column: 22, scope: !394)
!432 = !DILocation(line: 329, column: 30, scope: !394)
!433 = !DILocation(line: 331, column: 22, scope: !394)
!434 = !DILocation(line: 331, column: 30, scope: !394)
!435 = !DILocation(line: 332, column: 22, scope: !394)
!436 = !DILocation(line: 332, column: 30, scope: !394)
!437 = !DILocation(line: 333, column: 23, scope: !394)
!438 = !DILocation(line: 333, column: 31, scope: !394)
!439 = !DILocation(line: 334, column: 23, scope: !394)
!440 = !DILocation(line: 334, column: 31, scope: !394)
!441 = !DILocation(line: 335, column: 23, scope: !394)
!442 = !DILocation(line: 335, column: 31, scope: !394)
!443 = !DILocation(line: 326, column: 11, scope: !394)
!444 = !DILocation(line: 326, column: 4, scope: !394)
!445 = !DILocation(line: 336, column: 1, scope: !394)
!446 = distinct !DISubprogram(name: "HSPUGetBuf", scope: !29, file: !29, line: 424, type: !447, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!447 = !DISubroutineType(types: !448)
!448 = !{!22, !209, !56, !449, !50, !50, !47, !47, !225, !450, !451}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!452 = !DILocalVariable(name: "chanCb", arg: 1, scope: !446, file: !29, line: 424, type: !209)
!453 = !DILocation(line: 424, column: 40, scope: !446)
!454 = !DILocalVariable(name: "mappingType", arg: 2, scope: !446, file: !29, line: 425, type: !56)
!455 = !DILocation(line: 425, column: 24, scope: !446)
!456 = !DILocalVariable(name: "iov", arg: 3, scope: !446, file: !29, line: 426, type: !449)
!457 = !DILocation(line: 426, column: 24, scope: !446)
!458 = !DILocalVariable(name: "iovCount", arg: 4, scope: !446, file: !29, line: 427, type: !50)
!459 = !DILocation(line: 427, column: 19, scope: !446)
!460 = !DILocalVariable(name: "startIndex", arg: 5, scope: !446, file: !29, line: 428, type: !50)
!461 = !DILocation(line: 428, column: 19, scope: !446)
!462 = !DILocalVariable(name: "dataSize", arg: 6, scope: !446, file: !29, line: 429, type: !47)
!463 = !DILocation(line: 429, column: 19, scope: !446)
!464 = !DILocalVariable(name: "bufSize", arg: 7, scope: !446, file: !29, line: 430, type: !47)
!465 = !DILocation(line: 430, column: 19, scope: !446)
!466 = !DILocalVariable(name: "buf", arg: 8, scope: !446, file: !29, line: 431, type: !225)
!467 = !DILocation(line: 431, column: 19, scope: !446)
!468 = !DILocalVariable(name: "isAllocated", arg: 9, scope: !446, file: !29, line: 432, type: !450)
!469 = !DILocation(line: 432, column: 18, scope: !446)
!470 = !DILocalVariable(name: "iovMappedCount", arg: 10, scope: !446, file: !29, line: 433, type: !451)
!471 = !DILocation(line: 433, column: 20, scope: !446)
!472 = !DILocalVariable(name: "iovMapped", scope: !446, file: !29, line: 435, type: !50)
!473 = !DILocation(line: 435, column: 11, scope: !446)
!474 = !DILocalVariable(name: "mapVa", scope: !446, file: !29, line: 436, type: !221)
!475 = !DILocation(line: 436, column: 31, scope: !446)
!476 = !DILocalVariable(name: "releaseMappings", scope: !446, file: !29, line: 437, type: !32)
!477 = !DILocation(line: 437, column: 9, scope: !446)
!478 = !DILocation(line: 441, column: 5, scope: !446)
!479 = !DILocation(line: 441, column: 9, scope: !446)
!480 = !DILocation(line: 442, column: 5, scope: !446)
!481 = !DILocation(line: 442, column: 17, scope: !446)
!482 = !DILocation(line: 444, column: 8, scope: !483)
!483 = distinct !DILexicalBlock(scope: !446, file: !29, line: 444, column: 8)
!484 = !DILocation(line: 444, column: 15, scope: !483)
!485 = !DILocation(line: 444, column: 8, scope: !446)
!486 = !DILocation(line: 445, column: 7, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !29, line: 444, column: 23)
!488 = !DILocation(line: 448, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !446, file: !29, line: 448, column: 8)
!490 = !DILocation(line: 448, column: 20, scope: !489)
!491 = !DILocation(line: 448, column: 37, scope: !489)
!492 = !DILocation(line: 449, column: 8, scope: !489)
!493 = !DILocation(line: 449, column: 20, scope: !489)
!494 = !DILocation(line: 448, column: 8, scope: !495)
!495 = !DILexicalBlockFile(scope: !446, file: !29, discriminator: 1)
!496 = !DILocation(line: 450, column: 15, scope: !497)
!497 = distinct !DILexicalBlock(scope: !489, file: !29, line: 449, column: 42)
!498 = !DILocation(line: 450, column: 23, scope: !497)
!499 = !DILocation(line: 450, column: 13, scope: !497)
!500 = !DILocation(line: 451, column: 4, scope: !497)
!501 = !DILocation(line: 453, column: 15, scope: !502)
!502 = distinct !DILexicalBlock(scope: !489, file: !29, line: 451, column: 11)
!503 = !DILocation(line: 453, column: 23, scope: !502)
!504 = !DILocation(line: 453, column: 13, scope: !502)
!505 = !DILocation(line: 457, column: 8, scope: !506)
!506 = distinct !DILexicalBlock(scope: !446, file: !29, line: 457, column: 8)
!507 = !DILocation(line: 457, column: 14, scope: !506)
!508 = !DILocation(line: 457, column: 8, scope: !446)
!509 = !DILocation(line: 458, column: 7, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !29, line: 457, column: 22)
!511 = !DILocation(line: 462, column: 20, scope: !512)
!512 = distinct !DILexicalBlock(scope: !446, file: !29, line: 462, column: 8)
!513 = !DILocation(line: 463, column: 20, scope: !512)
!514 = !DILocation(line: 463, column: 28, scope: !512)
!515 = !DILocation(line: 464, column: 20, scope: !512)
!516 = !DILocation(line: 465, column: 20, scope: !512)
!517 = !DILocation(line: 466, column: 20, scope: !512)
!518 = !DILocation(line: 467, column: 20, scope: !512)
!519 = !DILocation(line: 462, column: 9, scope: !512)
!520 = !DILocation(line: 462, column: 8, scope: !446)
!521 = !DILocation(line: 470, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !512, file: !29, line: 468, column: 33)
!523 = !DILocation(line: 473, column: 8, scope: !524)
!524 = distinct !DILexicalBlock(scope: !446, file: !29, line: 473, column: 8)
!525 = !DILocation(line: 473, column: 18, scope: !524)
!526 = !DILocation(line: 473, column: 8, scope: !446)
!527 = !DILocation(line: 475, column: 18, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !29, line: 473, column: 24)
!529 = !DILocation(line: 475, column: 14, scope: !528)
!530 = !DILocation(line: 475, column: 30, scope: !528)
!531 = !DILocation(line: 475, column: 8, scope: !528)
!532 = !DILocation(line: 475, column: 12, scope: !528)
!533 = !DILocation(line: 476, column: 7, scope: !528)
!534 = !DILocation(line: 482, column: 4, scope: !446)
!535 = distinct !{!535, !534}
!536 = !DILocation(line: 482, column: 31, scope: !537)
!537 = !DILexicalBlockFile(scope: !538, file: !29, discriminator: 1)
!538 = distinct !DILexicalBlock(scope: !539, file: !29, line: 482, column: 29)
!539 = distinct !DILexicalBlock(scope: !540, file: !29, line: 482, column: 13)
!540 = distinct !DILexicalBlock(scope: !446, file: !29, line: 482, column: 7)
!541 = !DILocation(line: 482, column: 110, scope: !542)
!542 = !DILexicalBlockFile(scope: !537, file: !29, discriminator: 2)
!543 = !DILocation(line: 482, column: 200, scope: !537)
!544 = !DILocation(line: 483, column: 28, scope: !446)
!545 = !DILocation(line: 483, column: 11, scope: !446)
!546 = !DILocation(line: 483, column: 5, scope: !446)
!547 = !DILocation(line: 483, column: 9, scope: !446)
!548 = !DILocation(line: 484, column: 5, scope: !446)
!549 = !DILocation(line: 484, column: 17, scope: !446)
!550 = !DILocation(line: 486, column: 9, scope: !551)
!551 = distinct !DILexicalBlock(scope: !446, file: !29, line: 486, column: 8)
!552 = !DILocation(line: 486, column: 21, scope: !551)
!553 = !DILocation(line: 486, column: 37, scope: !551)
!554 = !DILocation(line: 486, column: 40, scope: !555)
!555 = !DILexicalBlockFile(scope: !551, file: !29, discriminator: 1)
!556 = !DILocation(line: 486, column: 52, scope: !555)
!557 = !DILocation(line: 486, column: 74, scope: !555)
!558 = !DILocation(line: 487, column: 14, scope: !551)
!559 = !DILocation(line: 487, column: 11, scope: !551)
!560 = !DILocation(line: 486, column: 8, scope: !561)
!561 = !DILexicalBlockFile(scope: !446, file: !29, discriminator: 2)
!562 = !DILocation(line: 488, column: 26, scope: !563)
!563 = distinct !DILexicalBlock(scope: !551, file: !29, line: 487, column: 25)
!564 = !DILocation(line: 488, column: 31, scope: !563)
!565 = !DILocation(line: 488, column: 42, scope: !563)
!566 = !DILocation(line: 488, column: 55, scope: !563)
!567 = !DILocation(line: 488, column: 54, scope: !563)
!568 = !DILocation(line: 488, column: 60, scope: !563)
!569 = !DILocation(line: 488, column: 7, scope: !563)
!570 = !DILocation(line: 489, column: 4, scope: !563)
!571 = !DILocation(line: 490, column: 20, scope: !446)
!572 = !DILocation(line: 490, column: 4, scope: !446)
!573 = !DILocation(line: 494, column: 8, scope: !574)
!574 = distinct !DILexicalBlock(scope: !446, file: !29, line: 494, column: 8)
!575 = !DILocation(line: 494, column: 8, scope: !446)
!576 = !DILocation(line: 495, column: 20, scope: !577)
!577 = distinct !DILexicalBlock(scope: !574, file: !29, line: 494, column: 25)
!578 = !DILocation(line: 495, column: 28, scope: !577)
!579 = !DILocation(line: 495, column: 35, scope: !577)
!580 = !DILocation(line: 495, column: 47, scope: !577)
!581 = !DILocation(line: 495, column: 7, scope: !577)
!582 = !DILocation(line: 496, column: 4, scope: !577)
!583 = !DILocation(line: 497, column: 22, scope: !446)
!584 = !DILocation(line: 497, column: 5, scope: !446)
!585 = !DILocation(line: 497, column: 20, scope: !446)
!586 = !DILocation(line: 499, column: 12, scope: !446)
!587 = !DILocation(line: 499, column: 11, scope: !446)
!588 = !DILocation(line: 499, column: 4, scope: !446)
!589 = distinct !DISubprogram(name: "HSPU_ValidateDataPacketSize", scope: !29, file: !29, line: 357, type: !590, isLocal: false, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!590 = !DISubroutineType(types: !591)
!591 = !{!32, !34, !47}
!592 = !DILocalVariable(name: "packet", arg: 1, scope: !589, file: !29, line: 357, type: !34)
!593 = !DILocation(line: 357, column: 41, scope: !589)
!594 = !DILocalVariable(name: "dataSize", arg: 2, scope: !589, file: !29, line: 358, type: !47)
!595 = !DILocation(line: 358, column: 36, scope: !589)
!596 = !DILocation(line: 360, column: 12, scope: !589)
!597 = !DILocation(line: 360, column: 24, scope: !589)
!598 = !DILocation(line: 360, column: 32, scope: !589)
!599 = !DILocation(line: 360, column: 21, scope: !589)
!600 = !DILocation(line: 360, column: 11, scope: !589)
!601 = !DILocation(line: 360, column: 4, scope: !589)
!602 = distinct !DISubprogram(name: "HSPU_GetDataPacketBuf", scope: !29, file: !29, line: 381, type: !603, isLocal: false, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!603 = !DISubroutineType(types: !604)
!604 = !{!22, !34, !56, !209}
!605 = !DILocalVariable(name: "packet", arg: 1, scope: !602, file: !29, line: 381, type: !34)
!606 = !DILocation(line: 381, column: 35, scope: !602)
!607 = !DILocalVariable(name: "mappingType", arg: 2, scope: !602, file: !29, line: 382, type: !56)
!608 = !DILocation(line: 382, column: 35, scope: !602)
!609 = !DILocalVariable(name: "chanCb", arg: 3, scope: !602, file: !29, line: 383, type: !209)
!610 = !DILocation(line: 383, column: 51, scope: !602)
!611 = !DILocation(line: 385, column: 8, scope: !612)
!612 = distinct !DILexicalBlock(scope: !602, file: !29, line: 385, column: 8)
!613 = !DILocation(line: 385, column: 16, scope: !612)
!614 = !DILocation(line: 385, column: 27, scope: !612)
!615 = !DILocation(line: 385, column: 8, scope: !602)
!616 = !DILocation(line: 386, column: 14, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !29, line: 385, column: 35)
!618 = !DILocation(line: 386, column: 22, scope: !617)
!619 = !DILocation(line: 386, column: 7, scope: !617)
!620 = !DILocation(line: 389, column: 8, scope: !621)
!621 = distinct !DILexicalBlock(scope: !602, file: !29, line: 389, column: 8)
!622 = !DILocation(line: 389, column: 16, scope: !621)
!623 = !DILocation(line: 389, column: 31, scope: !621)
!624 = !DILocation(line: 389, column: 8, scope: !602)
!625 = !DILocation(line: 390, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !621, file: !29, line: 389, column: 37)
!627 = !DILocation(line: 393, column: 30, scope: !602)
!628 = !DILocation(line: 393, column: 4, scope: !602)
!629 = !DILocation(line: 393, column: 12, scope: !602)
!630 = !DILocation(line: 393, column: 28, scope: !602)
!631 = !DILocation(line: 394, column: 22, scope: !602)
!632 = !DILocation(line: 395, column: 22, scope: !602)
!633 = !DILocation(line: 395, column: 30, scope: !602)
!634 = !DILocation(line: 396, column: 22, scope: !602)
!635 = !DILocation(line: 396, column: 30, scope: !602)
!636 = !DILocation(line: 397, column: 22, scope: !602)
!637 = !DILocation(line: 397, column: 30, scope: !602)
!638 = !DILocation(line: 398, column: 22, scope: !602)
!639 = !DILocation(line: 398, column: 30, scope: !602)
!640 = !DILocation(line: 399, column: 22, scope: !602)
!641 = !DILocation(line: 399, column: 30, scope: !602)
!642 = !DILocation(line: 400, column: 22, scope: !602)
!643 = !DILocation(line: 400, column: 30, scope: !602)
!644 = !DILocation(line: 401, column: 23, scope: !602)
!645 = !DILocation(line: 401, column: 31, scope: !602)
!646 = !DILocation(line: 402, column: 23, scope: !602)
!647 = !DILocation(line: 402, column: 31, scope: !602)
!648 = !DILocation(line: 403, column: 23, scope: !602)
!649 = !DILocation(line: 403, column: 31, scope: !602)
!650 = !DILocation(line: 394, column: 11, scope: !602)
!651 = !DILocation(line: 394, column: 4, scope: !602)
!652 = !DILocation(line: 404, column: 1, scope: !602)
!653 = distinct !DISubprogram(name: "HSPU_PutMetaPacket", scope: !29, file: !29, line: 520, type: !359, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!654 = !DILocalVariable(name: "packet", arg: 1, scope: !653, file: !29, line: 520, type: !34)
!655 = !DILocation(line: 520, column: 32, scope: !653)
!656 = !DILocalVariable(name: "chanCb", arg: 2, scope: !653, file: !29, line: 521, type: !209)
!657 = !DILocation(line: 521, column: 48, scope: !653)
!658 = !DILocation(line: 523, column: 8, scope: !659)
!659 = distinct !DILexicalBlock(scope: !653, file: !29, line: 523, column: 8)
!660 = !DILocation(line: 523, column: 16, scope: !659)
!661 = !DILocation(line: 523, column: 27, scope: !659)
!662 = !DILocation(line: 523, column: 8, scope: !653)
!663 = !DILocation(line: 524, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !29, line: 523, column: 35)
!665 = !DILocation(line: 527, column: 4, scope: !653)
!666 = distinct !{!666, !665}
!667 = !DILocation(line: 527, column: 30, scope: !668)
!668 = !DILexicalBlockFile(scope: !669, file: !29, discriminator: 1)
!669 = distinct !DILexicalBlock(scope: !670, file: !29, line: 527, column: 28)
!670 = distinct !DILexicalBlock(scope: !671, file: !29, line: 527, column: 13)
!671 = distinct !DILexicalBlock(scope: !653, file: !29, line: 527, column: 7)
!672 = !DILocation(line: 527, column: 109, scope: !673)
!673 = !DILexicalBlockFile(scope: !668, file: !29, discriminator: 2)
!674 = !DILocation(line: 527, column: 199, scope: !668)
!675 = !DILocation(line: 528, column: 15, scope: !653)
!676 = !DILocation(line: 529, column: 15, scope: !653)
!677 = !DILocation(line: 529, column: 23, scope: !653)
!678 = !DILocation(line: 530, column: 15, scope: !653)
!679 = !DILocation(line: 530, column: 23, scope: !653)
!680 = !DILocation(line: 531, column: 15, scope: !653)
!681 = !DILocation(line: 531, column: 23, scope: !653)
!682 = !DILocation(line: 533, column: 15, scope: !653)
!683 = !DILocation(line: 533, column: 23, scope: !653)
!684 = !DILocation(line: 534, column: 16, scope: !653)
!685 = !DILocation(line: 534, column: 24, scope: !653)
!686 = !DILocation(line: 535, column: 16, scope: !653)
!687 = !DILocation(line: 535, column: 24, scope: !653)
!688 = !DILocation(line: 536, column: 16, scope: !653)
!689 = !DILocation(line: 536, column: 24, scope: !653)
!690 = !DILocation(line: 528, column: 4, scope: !653)
!691 = !DILocation(line: 537, column: 1, scope: !653)
!692 = !DILocation(line: 537, column: 1, scope: !693)
!693 = !DILexicalBlockFile(scope: !653, file: !29, discriminator: 1)
!694 = distinct !DISubprogram(name: "HSPUPutBuf", scope: !29, file: !29, line: 618, type: !695, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !209, !56, !449, !50, !50, !47, !225, !450, !451}
!697 = !DILocalVariable(name: "chanCb", arg: 1, scope: !694, file: !29, line: 618, type: !209)
!698 = !DILocation(line: 618, column: 40, scope: !694)
!699 = !DILocalVariable(name: "mappingType", arg: 2, scope: !694, file: !29, line: 619, type: !56)
!700 = !DILocation(line: 619, column: 24, scope: !694)
!701 = !DILocalVariable(name: "iov", arg: 3, scope: !694, file: !29, line: 620, type: !449)
!702 = !DILocation(line: 620, column: 24, scope: !694)
!703 = !DILocalVariable(name: "iovCount", arg: 4, scope: !694, file: !29, line: 621, type: !50)
!704 = !DILocation(line: 621, column: 19, scope: !694)
!705 = !DILocalVariable(name: "startIndex", arg: 5, scope: !694, file: !29, line: 622, type: !50)
!706 = !DILocation(line: 622, column: 19, scope: !694)
!707 = !DILocalVariable(name: "bufSize", arg: 6, scope: !694, file: !29, line: 623, type: !47)
!708 = !DILocation(line: 623, column: 19, scope: !694)
!709 = !DILocalVariable(name: "buf", arg: 7, scope: !694, file: !29, line: 624, type: !225)
!710 = !DILocation(line: 624, column: 19, scope: !694)
!711 = !DILocalVariable(name: "isAllocated", arg: 8, scope: !694, file: !29, line: 625, type: !450)
!712 = !DILocation(line: 625, column: 18, scope: !694)
!713 = !DILocalVariable(name: "iovMappedCount", arg: 9, scope: !694, file: !29, line: 626, type: !451)
!714 = !DILocation(line: 626, column: 20, scope: !694)
!715 = !DILocation(line: 630, column: 8, scope: !716)
!716 = distinct !DILexicalBlock(scope: !694, file: !29, line: 630, column: 8)
!717 = !DILocation(line: 630, column: 15, scope: !716)
!718 = !DILocation(line: 630, column: 22, scope: !716)
!719 = !DILocation(line: 630, column: 25, scope: !720)
!720 = !DILexicalBlockFile(scope: !716, file: !29, discriminator: 1)
!721 = !DILocation(line: 630, column: 33, scope: !720)
!722 = !DILocation(line: 630, column: 39, scope: !720)
!723 = !DILocation(line: 630, column: 8, scope: !720)
!724 = !DILocation(line: 631, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !716, file: !29, line: 630, column: 48)
!726 = !DILocation(line: 634, column: 9, scope: !727)
!727 = distinct !DILexicalBlock(scope: !694, file: !29, line: 634, column: 8)
!728 = !DILocation(line: 634, column: 8, scope: !727)
!729 = !DILocation(line: 634, column: 21, scope: !727)
!730 = !DILocation(line: 635, column: 9, scope: !727)
!731 = !DILocation(line: 635, column: 21, scope: !727)
!732 = !DILocation(line: 635, column: 38, scope: !727)
!733 = !DILocation(line: 635, column: 41, scope: !734)
!734 = !DILexicalBlockFile(scope: !727, file: !29, discriminator: 1)
!735 = !DILocation(line: 635, column: 53, scope: !734)
!736 = !DILocation(line: 634, column: 8, scope: !737)
!737 = !DILexicalBlockFile(scope: !694, file: !29, discriminator: 1)
!738 = !DILocation(line: 641, column: 17, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !29, line: 641, column: 11)
!740 = distinct !DILexicalBlock(scope: !727, file: !29, line: 635, column: 76)
!741 = !DILocation(line: 641, column: 16, scope: !739)
!742 = !DILocation(line: 641, column: 13, scope: !739)
!743 = !DILocation(line: 641, column: 11, scope: !740)
!744 = !DILocation(line: 642, column: 26, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !29, line: 642, column: 14)
!746 = distinct !DILexicalBlock(scope: !739, file: !29, line: 641, column: 33)
!747 = !DILocation(line: 642, column: 34, scope: !745)
!748 = !DILocation(line: 643, column: 26, scope: !745)
!749 = !DILocation(line: 643, column: 34, scope: !745)
!750 = !DILocation(line: 644, column: 26, scope: !745)
!751 = !DILocation(line: 645, column: 26, scope: !745)
!752 = !DILocation(line: 646, column: 26, scope: !745)
!753 = !DILocation(line: 647, column: 26, scope: !745)
!754 = !DILocation(line: 648, column: 26, scope: !745)
!755 = !DILocation(line: 642, column: 15, scope: !745)
!756 = !DILocation(line: 642, column: 14, scope: !746)
!757 = !DILocation(line: 649, column: 13, scope: !758)
!758 = distinct !DILexicalBlock(scope: !745, file: !29, line: 648, column: 43)
!759 = !DILocation(line: 651, column: 7, scope: !746)
!760 = !DILocation(line: 652, column: 26, scope: !740)
!761 = !DILocation(line: 652, column: 32, scope: !740)
!762 = !DILocation(line: 652, column: 31, scope: !740)
!763 = !DILocation(line: 652, column: 48, scope: !740)
!764 = !DILocation(line: 652, column: 61, scope: !740)
!765 = !DILocation(line: 652, column: 60, scope: !740)
!766 = !DILocation(line: 652, column: 66, scope: !740)
!767 = !DILocation(line: 652, column: 7, scope: !740)
!768 = !DILocation(line: 653, column: 4, scope: !740)
!769 = !DILocation(line: 655, column: 13, scope: !770)
!770 = distinct !DILexicalBlock(scope: !694, file: !29, line: 655, column: 8)
!771 = !DILocation(line: 655, column: 12, scope: !770)
!772 = !DILocation(line: 655, column: 10, scope: !770)
!773 = !DILocation(line: 655, column: 8, scope: !694)
!774 = !DILocation(line: 656, column: 20, scope: !775)
!775 = distinct !DILexicalBlock(scope: !770, file: !29, line: 655, column: 29)
!776 = !DILocation(line: 656, column: 28, scope: !775)
!777 = !DILocation(line: 656, column: 35, scope: !775)
!778 = !DILocation(line: 656, column: 47, scope: !775)
!779 = !DILocation(line: 656, column: 52, scope: !775)
!780 = !DILocation(line: 656, column: 7, scope: !775)
!781 = !DILocation(line: 657, column: 4, scope: !775)
!782 = !DILocation(line: 655, column: 13, scope: !783)
!783 = !DILexicalBlockFile(scope: !770, file: !29, discriminator: 1)
!784 = !DILocation(line: 660, column: 9, scope: !785)
!785 = distinct !DILexicalBlock(scope: !694, file: !29, line: 660, column: 8)
!786 = !DILocation(line: 660, column: 8, scope: !785)
!787 = !DILocation(line: 660, column: 8, scope: !694)
!788 = !DILocation(line: 661, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !785, file: !29, line: 660, column: 22)
!790 = distinct !{!790, !788}
!791 = !DILocation(line: 661, column: 34, scope: !792)
!792 = !DILexicalBlockFile(scope: !793, file: !29, discriminator: 1)
!793 = distinct !DILexicalBlock(scope: !794, file: !29, line: 661, column: 32)
!794 = distinct !DILexicalBlock(scope: !795, file: !29, line: 661, column: 16)
!795 = distinct !DILexicalBlock(scope: !789, file: !29, line: 661, column: 10)
!796 = !DILocation(line: 661, column: 113, scope: !797)
!797 = !DILexicalBlockFile(scope: !792, file: !29, discriminator: 2)
!798 = !DILocation(line: 661, column: 200, scope: !792)
!799 = !DILocation(line: 662, column: 13, scope: !789)
!800 = !DILocation(line: 662, column: 12, scope: !789)
!801 = !DILocation(line: 662, column: 7, scope: !789)
!802 = !DILocation(line: 663, column: 8, scope: !789)
!803 = !DILocation(line: 663, column: 20, scope: !789)
!804 = !DILocation(line: 664, column: 4, scope: !789)
!805 = !DILocation(line: 666, column: 5, scope: !694)
!806 = !DILocation(line: 666, column: 9, scope: !694)
!807 = !DILocation(line: 667, column: 1, scope: !694)
!808 = distinct !DISubprogram(name: "HSPU_SetDataPacketSize", scope: !29, file: !29, line: 556, type: !809, isLocal: false, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !34, !47}
!811 = !DILocalVariable(name: "packet", arg: 1, scope: !808, file: !29, line: 556, type: !34)
!812 = !DILocation(line: 556, column: 36, scope: !808)
!813 = !DILocalVariable(name: "dataSize", arg: 2, scope: !808, file: !29, line: 557, type: !47)
!814 = !DILocation(line: 557, column: 31, scope: !808)
!815 = !DILocation(line: 561, column: 33, scope: !808)
!816 = !DILocation(line: 561, column: 4, scope: !808)
!817 = !DILocation(line: 561, column: 12, scope: !808)
!818 = !DILocation(line: 561, column: 31, scope: !808)
!819 = !DILocation(line: 562, column: 1, scope: !808)
!820 = distinct !DISubprogram(name: "HSPU_PutDataPacketBuf", scope: !29, file: !29, line: 582, type: !359, isLocal: false, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!821 = !DILocalVariable(name: "packet", arg: 1, scope: !820, file: !29, line: 582, type: !34)
!822 = !DILocation(line: 582, column: 35, scope: !820)
!823 = !DILocalVariable(name: "chanCb", arg: 2, scope: !820, file: !29, line: 583, type: !209)
!824 = !DILocation(line: 583, column: 51, scope: !820)
!825 = !DILocation(line: 585, column: 8, scope: !826)
!826 = distinct !DILexicalBlock(scope: !820, file: !29, line: 585, column: 8)
!827 = !DILocation(line: 585, column: 16, scope: !826)
!828 = !DILocation(line: 585, column: 27, scope: !826)
!829 = !DILocation(line: 585, column: 8, scope: !820)
!830 = !DILocation(line: 586, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !826, file: !29, line: 585, column: 35)
!832 = !DILocation(line: 589, column: 4, scope: !820)
!833 = distinct !{!833, !832}
!834 = !DILocation(line: 589, column: 30, scope: !835)
!835 = !DILexicalBlockFile(scope: !836, file: !29, discriminator: 1)
!836 = distinct !DILexicalBlock(scope: !837, file: !29, line: 589, column: 28)
!837 = distinct !DILexicalBlock(scope: !838, file: !29, line: 589, column: 13)
!838 = distinct !DILexicalBlock(scope: !820, file: !29, line: 589, column: 7)
!839 = !DILocation(line: 589, column: 109, scope: !840)
!840 = !DILexicalBlockFile(scope: !835, file: !29, discriminator: 2)
!841 = !DILocation(line: 589, column: 199, scope: !835)
!842 = !DILocation(line: 590, column: 15, scope: !820)
!843 = !DILocation(line: 591, column: 15, scope: !820)
!844 = !DILocation(line: 591, column: 23, scope: !820)
!845 = !DILocation(line: 592, column: 15, scope: !820)
!846 = !DILocation(line: 592, column: 23, scope: !820)
!847 = !DILocation(line: 593, column: 15, scope: !820)
!848 = !DILocation(line: 593, column: 23, scope: !820)
!849 = !DILocation(line: 594, column: 15, scope: !820)
!850 = !DILocation(line: 594, column: 23, scope: !820)
!851 = !DILocation(line: 595, column: 15, scope: !820)
!852 = !DILocation(line: 595, column: 23, scope: !820)
!853 = !DILocation(line: 596, column: 16, scope: !820)
!854 = !DILocation(line: 596, column: 24, scope: !820)
!855 = !DILocation(line: 597, column: 16, scope: !820)
!856 = !DILocation(line: 597, column: 24, scope: !820)
!857 = !DILocation(line: 598, column: 16, scope: !820)
!858 = !DILocation(line: 598, column: 24, scope: !820)
!859 = !DILocation(line: 590, column: 4, scope: !820)
!860 = !DILocation(line: 599, column: 1, scope: !820)
!861 = !DILocation(line: 599, column: 1, scope: !862)
!862 = !DILexicalBlockFile(scope: !820, file: !29, discriminator: 1)
!863 = distinct !DISubprogram(name: "HSPUMapBuf", scope: !29, file: !29, line: 774, type: !864, isLocal: true, isDefinition: true, scopeLine: 781, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!864 = !DISubroutineType(types: !865)
!865 = !{!32, !221, !228, !47, !50, !50, !449, !451}
!866 = !DILocalVariable(name: "mapVa", arg: 1, scope: !863, file: !29, line: 774, type: !221)
!867 = !DILocation(line: 774, column: 39, scope: !863)
!868 = !DILocalVariable(name: "putVa", arg: 2, scope: !863, file: !29, line: 775, type: !228)
!869 = !DILocation(line: 775, column: 41, scope: !863)
!870 = !DILocalVariable(name: "mapSize", arg: 3, scope: !863, file: !29, line: 776, type: !47)
!871 = !DILocation(line: 776, column: 19, scope: !863)
!872 = !DILocalVariable(name: "startIndex", arg: 4, scope: !863, file: !29, line: 777, type: !50)
!873 = !DILocation(line: 777, column: 19, scope: !863)
!874 = !DILocalVariable(name: "iovCount", arg: 5, scope: !863, file: !29, line: 778, type: !50)
!875 = !DILocation(line: 778, column: 19, scope: !863)
!876 = !DILocalVariable(name: "iov", arg: 6, scope: !863, file: !29, line: 779, type: !449)
!877 = !DILocation(line: 779, column: 24, scope: !863)
!878 = !DILocalVariable(name: "mappedCount", arg: 7, scope: !863, file: !29, line: 780, type: !451)
!879 = !DILocation(line: 780, column: 20, scope: !863)
!880 = !DILocalVariable(name: "iovIndex", scope: !863, file: !29, line: 782, type: !50)
!881 = !DILocation(line: 782, column: 11, scope: !863)
!882 = !DILocalVariable(name: "mappedIovCount", scope: !863, file: !29, line: 783, type: !50)
!883 = !DILocation(line: 783, column: 11, scope: !863)
!884 = !DILocalVariable(name: "remainingSize", scope: !863, file: !29, line: 784, type: !47)
!885 = !DILocation(line: 784, column: 11, scope: !863)
!886 = !DILocalVariable(name: "mapped", scope: !863, file: !29, line: 785, type: !32)
!887 = !DILocation(line: 785, column: 9, scope: !863)
!888 = !DILocation(line: 787, column: 20, scope: !889)
!889 = distinct !DILexicalBlock(scope: !863, file: !29, line: 787, column: 4)
!890 = !DILocation(line: 787, column: 18, scope: !889)
!891 = !DILocation(line: 787, column: 47, scope: !889)
!892 = !DILocation(line: 787, column: 68, scope: !889)
!893 = !DILocation(line: 787, column: 66, scope: !889)
!894 = !DILocation(line: 787, column: 9, scope: !889)
!895 = !DILocation(line: 788, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !889, file: !29, line: 787, column: 4)
!897 = !DILocation(line: 788, column: 20, scope: !896)
!898 = !DILocation(line: 788, column: 18, scope: !896)
!899 = !DILocation(line: 788, column: 29, scope: !896)
!900 = !DILocation(line: 788, column: 32, scope: !901)
!901 = !DILexicalBlockFile(scope: !896, file: !29, discriminator: 1)
!902 = !DILocation(line: 788, column: 46, scope: !901)
!903 = !DILocation(line: 787, column: 4, scope: !904)
!904 = !DILexicalBlockFile(scope: !889, file: !29, discriminator: 1)
!905 = !DILocation(line: 791, column: 11, scope: !906)
!906 = distinct !DILexicalBlock(scope: !896, file: !29, line: 789, column: 39)
!907 = !DILocation(line: 791, column: 7, scope: !906)
!908 = !DILocation(line: 791, column: 21, scope: !906)
!909 = !DILocation(line: 791, column: 29, scope: !906)
!910 = !DILocation(line: 796, column: 26, scope: !906)
!911 = !DILocation(line: 796, column: 36, scope: !906)
!912 = !DILocation(line: 796, column: 32, scope: !906)
!913 = !DILocation(line: 796, column: 46, scope: !906)
!914 = !DILocation(line: 797, column: 36, scope: !906)
!915 = !DILocation(line: 797, column: 32, scope: !906)
!916 = !DILocation(line: 797, column: 46, scope: !906)
!917 = !DILocation(line: 798, column: 37, scope: !906)
!918 = !DILocation(line: 798, column: 33, scope: !906)
!919 = !DILocation(line: 798, column: 47, scope: !906)
!920 = !DILocation(line: 796, column: 11, scope: !906)
!921 = !DILocation(line: 796, column: 7, scope: !906)
!922 = !DILocation(line: 796, column: 21, scope: !906)
!923 = !DILocation(line: 796, column: 24, scope: !906)
!924 = !DILocation(line: 799, column: 22, scope: !925)
!925 = distinct !DILexicalBlock(scope: !906, file: !29, line: 799, column: 10)
!926 = !DILocation(line: 799, column: 18, scope: !925)
!927 = !DILocation(line: 799, column: 32, scope: !925)
!928 = !DILocation(line: 799, column: 15, scope: !925)
!929 = !DILocation(line: 799, column: 10, scope: !906)
!930 = !DILocation(line: 801, column: 10, scope: !931)
!931 = distinct !DILexicalBlock(scope: !925, file: !29, line: 799, column: 36)
!932 = !DILocation(line: 803, column: 23, scope: !906)
!933 = !DILocation(line: 803, column: 43, scope: !906)
!934 = !DILocation(line: 803, column: 39, scope: !906)
!935 = !DILocation(line: 803, column: 53, scope: !906)
!936 = !DILocation(line: 803, column: 37, scope: !906)
!937 = !DILocation(line: 803, column: 23, scope: !938)
!938 = !DILexicalBlockFile(scope: !906, file: !29, discriminator: 1)
!939 = !DILocation(line: 804, column: 26, scope: !906)
!940 = !DILocation(line: 804, column: 46, scope: !906)
!941 = !DILocation(line: 804, column: 42, scope: !906)
!942 = !DILocation(line: 804, column: 56, scope: !906)
!943 = !DILocation(line: 804, column: 40, scope: !906)
!944 = !DILocation(line: 803, column: 23, scope: !945)
!945 = !DILexicalBlockFile(scope: !906, file: !29, discriminator: 2)
!946 = !DILocation(line: 803, column: 23, scope: !947)
!947 = !DILexicalBlockFile(scope: !906, file: !29, discriminator: 3)
!948 = !DILocation(line: 803, column: 21, scope: !947)
!949 = !DILocation(line: 805, column: 4, scope: !906)
!950 = !DILocation(line: 789, column: 17, scope: !896)
!951 = !DILocation(line: 789, column: 35, scope: !896)
!952 = !DILocation(line: 787, column: 4, scope: !953)
!953 = !DILexicalBlockFile(scope: !896, file: !29, discriminator: 2)
!954 = distinct !{!954, !955}
!955 = !DILocation(line: 787, column: 4, scope: !863)
!956 = !DILocation(line: 807, column: 13, scope: !957)
!957 = distinct !DILexicalBlock(scope: !863, file: !29, line: 807, column: 8)
!958 = !DILocation(line: 807, column: 10, scope: !957)
!959 = !DILocation(line: 807, column: 8, scope: !863)
!960 = !DILocation(line: 809, column: 20, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !29, line: 807, column: 28)
!962 = !DILocation(line: 809, column: 27, scope: !961)
!963 = !DILocation(line: 809, column: 39, scope: !961)
!964 = !DILocation(line: 809, column: 7, scope: !961)
!965 = !DILocation(line: 810, column: 14, scope: !961)
!966 = !DILocation(line: 811, column: 4, scope: !961)
!967 = !DILocation(line: 813, column: 19, scope: !863)
!968 = !DILocation(line: 813, column: 5, scope: !863)
!969 = !DILocation(line: 813, column: 17, scope: !863)
!970 = !DILocation(line: 814, column: 11, scope: !863)
!971 = !DILocation(line: 814, column: 4, scope: !863)
!972 = distinct !DISubprogram(name: "HSPUCopyIovecToBuf", scope: !29, file: !29, line: 732, type: !973, isLocal: true, isDefinition: true, scopeLine: 737, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !449, !50, !50, !22, !47}
!975 = !DILocalVariable(name: "iov", arg: 1, scope: !972, file: !29, line: 732, type: !449)
!976 = !DILocation(line: 732, column: 32, scope: !972)
!977 = !DILocalVariable(name: "iovCount", arg: 2, scope: !972, file: !29, line: 733, type: !50)
!978 = !DILocation(line: 733, column: 27, scope: !972)
!979 = !DILocalVariable(name: "startIndex", arg: 3, scope: !972, file: !29, line: 734, type: !50)
!980 = !DILocation(line: 734, column: 27, scope: !972)
!981 = !DILocalVariable(name: "buf", arg: 4, scope: !972, file: !29, line: 735, type: !22)
!982 = !DILocation(line: 735, column: 26, scope: !972)
!983 = !DILocalVariable(name: "bufSize", arg: 5, scope: !972, file: !29, line: 736, type: !47)
!984 = !DILocation(line: 736, column: 27, scope: !972)
!985 = !DILocalVariable(name: "iovIndex", scope: !972, file: !29, line: 738, type: !47)
!986 = !DILocation(line: 738, column: 11, scope: !972)
!987 = !DILocalVariable(name: "endIndex", scope: !972, file: !29, line: 739, type: !47)
!988 = !DILocation(line: 739, column: 11, scope: !972)
!989 = !DILocalVariable(name: "remainingSize", scope: !972, file: !29, line: 740, type: !47)
!990 = !DILocation(line: 740, column: 11, scope: !972)
!991 = !DILocalVariable(name: "copiedAmount", scope: !972, file: !29, line: 741, type: !47)
!992 = !DILocation(line: 741, column: 11, scope: !972)
!993 = !DILocation(line: 743, column: 20, scope: !994)
!994 = distinct !DILexicalBlock(scope: !972, file: !29, line: 743, column: 4)
!995 = !DILocation(line: 743, column: 18, scope: !994)
!996 = !DILocation(line: 743, column: 43, scope: !994)
!997 = !DILocation(line: 743, column: 56, scope: !994)
!998 = !DILocation(line: 743, column: 54, scope: !994)
!999 = !DILocation(line: 743, column: 41, scope: !994)
!1000 = !DILocation(line: 743, column: 82, scope: !994)
!1001 = !DILocation(line: 743, column: 80, scope: !994)
!1002 = !DILocation(line: 743, column: 9, scope: !994)
!1003 = !DILocation(line: 744, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !994, file: !29, line: 743, column: 4)
!1005 = !DILocation(line: 744, column: 20, scope: !1004)
!1006 = !DILocation(line: 744, column: 18, scope: !1004)
!1007 = !DILocation(line: 744, column: 29, scope: !1004)
!1008 = !DILocation(line: 744, column: 32, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1004, file: !29, discriminator: 1)
!1010 = !DILocation(line: 744, column: 46, scope: !1009)
!1011 = !DILocation(line: 743, column: 4, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !994, file: !29, discriminator: 1)
!1013 = !DILocalVariable(name: "copyAmount", scope: !1014, file: !29, line: 746, type: !47)
!1014 = distinct !DILexicalBlock(scope: !1004, file: !29, line: 745, column: 21)
!1015 = !DILocation(line: 746, column: 14, scope: !1014)
!1016 = !DILocation(line: 746, column: 27, scope: !1014)
!1017 = !DILocation(line: 746, column: 47, scope: !1014)
!1018 = !DILocation(line: 746, column: 43, scope: !1014)
!1019 = !DILocation(line: 746, column: 57, scope: !1014)
!1020 = !DILocation(line: 746, column: 41, scope: !1014)
!1021 = !DILocation(line: 747, column: 27, scope: !1014)
!1022 = !DILocation(line: 746, column: 27, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1014, file: !29, discriminator: 1)
!1024 = !DILocation(line: 747, column: 47, scope: !1023)
!1025 = !DILocation(line: 747, column: 43, scope: !1023)
!1026 = !DILocation(line: 747, column: 57, scope: !1023)
!1027 = !DILocation(line: 746, column: 27, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1014, file: !29, discriminator: 2)
!1029 = !DILocation(line: 746, column: 27, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1014, file: !29, discriminator: 3)
!1031 = !DILocation(line: 746, column: 14, scope: !1030)
!1032 = !DILocation(line: 749, column: 22, scope: !1014)
!1033 = !DILocation(line: 749, column: 28, scope: !1014)
!1034 = !DILocation(line: 749, column: 26, scope: !1014)
!1035 = !DILocation(line: 749, column: 46, scope: !1014)
!1036 = !DILocation(line: 749, column: 42, scope: !1014)
!1037 = !DILocation(line: 749, column: 56, scope: !1014)
!1038 = !DILocation(line: 749, column: 60, scope: !1014)
!1039 = !DILocation(line: 749, column: 7, scope: !1014)
!1040 = !DILocation(line: 750, column: 23, scope: !1014)
!1041 = !DILocation(line: 750, column: 20, scope: !1014)
!1042 = !DILocation(line: 751, column: 24, scope: !1014)
!1043 = !DILocation(line: 751, column: 21, scope: !1014)
!1044 = !DILocation(line: 752, column: 4, scope: !1014)
!1045 = !DILocation(line: 745, column: 17, scope: !1004)
!1046 = !DILocation(line: 743, column: 4, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1004, file: !29, discriminator: 2)
!1048 = distinct !{!1048, !1049}
!1049 = !DILocation(line: 743, column: 4, scope: !972)
!1050 = !DILocation(line: 754, column: 1, scope: !972)
!1051 = distinct !DISubprogram(name: "HSPUUnmapBuf", scope: !29, file: !29, line: 834, type: !1052, isLocal: true, isDefinition: true, scopeLine: 838, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !228, !50, !449, !451}
!1054 = !DILocalVariable(name: "unmapVa", arg: 1, scope: !1051, file: !29, line: 834, type: !228)
!1055 = !DILocation(line: 834, column: 43, scope: !1051)
!1056 = !DILocalVariable(name: "startIndex", arg: 2, scope: !1051, file: !29, line: 835, type: !50)
!1057 = !DILocation(line: 835, column: 21, scope: !1051)
!1058 = !DILocalVariable(name: "iov", arg: 3, scope: !1051, file: !29, line: 836, type: !449)
!1059 = !DILocation(line: 836, column: 26, scope: !1051)
!1060 = !DILocalVariable(name: "mappedCount", arg: 4, scope: !1051, file: !29, line: 837, type: !451)
!1061 = !DILocation(line: 837, column: 22, scope: !1051)
!1062 = !DILocalVariable(name: "iovIndex", scope: !1051, file: !29, line: 839, type: !50)
!1063 = !DILocation(line: 839, column: 11, scope: !1051)
!1064 = !DILocalVariable(name: "endIndex", scope: !1051, file: !29, line: 840, type: !50)
!1065 = !DILocation(line: 840, column: 11, scope: !1051)
!1066 = !DILocation(line: 842, column: 20, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1051, file: !29, line: 842, column: 4)
!1068 = !DILocation(line: 842, column: 18, scope: !1067)
!1069 = !DILocation(line: 842, column: 43, scope: !1067)
!1070 = !DILocation(line: 842, column: 57, scope: !1067)
!1071 = !DILocation(line: 842, column: 56, scope: !1067)
!1072 = !DILocation(line: 842, column: 54, scope: !1067)
!1073 = !DILocation(line: 842, column: 41, scope: !1067)
!1074 = !DILocation(line: 842, column: 9, scope: !1067)
!1075 = !DILocation(line: 843, column: 9, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1067, file: !29, line: 842, column: 4)
!1077 = !DILocation(line: 843, column: 20, scope: !1076)
!1078 = !DILocation(line: 843, column: 18, scope: !1076)
!1079 = !DILocation(line: 842, column: 4, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1067, file: !29, discriminator: 1)
!1081 = !DILocation(line: 846, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1076, file: !29, line: 844, column: 21)
!1083 = !DILocation(line: 846, column: 20, scope: !1082)
!1084 = !DILocation(line: 846, column: 16, scope: !1082)
!1085 = !DILocation(line: 846, column: 30, scope: !1082)
!1086 = !DILocation(line: 847, column: 11, scope: !1082)
!1087 = !DILocation(line: 847, column: 7, scope: !1082)
!1088 = !DILocation(line: 847, column: 21, scope: !1082)
!1089 = !DILocation(line: 847, column: 29, scope: !1082)
!1090 = !DILocation(line: 848, column: 11, scope: !1082)
!1091 = !DILocation(line: 848, column: 7, scope: !1082)
!1092 = !DILocation(line: 848, column: 21, scope: !1082)
!1093 = !DILocation(line: 848, column: 24, scope: !1082)
!1094 = !DILocation(line: 849, column: 4, scope: !1082)
!1095 = !DILocation(line: 844, column: 17, scope: !1076)
!1096 = !DILocation(line: 842, column: 4, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1076, file: !29, discriminator: 2)
!1098 = distinct !{!1098, !1099}
!1099 = !DILocation(line: 842, column: 4, scope: !1051)
!1100 = !DILocation(line: 850, column: 5, scope: !1051)
!1101 = !DILocation(line: 850, column: 17, scope: !1051)
!1102 = !DILocation(line: 851, column: 1, scope: !1051)
!1103 = distinct !DISubprogram(name: "HSPUCopyBufToIovec", scope: !29, file: !29, line: 686, type: !973, isLocal: true, isDefinition: true, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!1104 = !DILocalVariable(name: "iov", arg: 1, scope: !1103, file: !29, line: 686, type: !449)
!1105 = !DILocation(line: 686, column: 32, scope: !1103)
!1106 = !DILocalVariable(name: "iovCount", arg: 2, scope: !1103, file: !29, line: 687, type: !50)
!1107 = !DILocation(line: 687, column: 27, scope: !1103)
!1108 = !DILocalVariable(name: "startIndex", arg: 3, scope: !1103, file: !29, line: 688, type: !50)
!1109 = !DILocation(line: 688, column: 27, scope: !1103)
!1110 = !DILocalVariable(name: "buf", arg: 4, scope: !1103, file: !29, line: 689, type: !22)
!1111 = !DILocation(line: 689, column: 26, scope: !1103)
!1112 = !DILocalVariable(name: "bufSize", arg: 5, scope: !1103, file: !29, line: 690, type: !47)
!1113 = !DILocation(line: 690, column: 27, scope: !1103)
!1114 = !DILocalVariable(name: "iovIndex", scope: !1103, file: !29, line: 692, type: !47)
!1115 = !DILocation(line: 692, column: 11, scope: !1103)
!1116 = !DILocalVariable(name: "endIndex", scope: !1103, file: !29, line: 693, type: !47)
!1117 = !DILocation(line: 693, column: 11, scope: !1103)
!1118 = !DILocalVariable(name: "remainingSize", scope: !1103, file: !29, line: 694, type: !47)
!1119 = !DILocation(line: 694, column: 11, scope: !1103)
!1120 = !DILocalVariable(name: "copiedAmount", scope: !1103, file: !29, line: 695, type: !47)
!1121 = !DILocation(line: 695, column: 11, scope: !1103)
!1122 = !DILocation(line: 699, column: 20, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1103, file: !29, line: 699, column: 4)
!1124 = !DILocation(line: 699, column: 18, scope: !1123)
!1125 = !DILocation(line: 699, column: 43, scope: !1123)
!1126 = !DILocation(line: 699, column: 56, scope: !1123)
!1127 = !DILocation(line: 699, column: 54, scope: !1123)
!1128 = !DILocation(line: 699, column: 41, scope: !1123)
!1129 = !DILocation(line: 699, column: 82, scope: !1123)
!1130 = !DILocation(line: 699, column: 80, scope: !1123)
!1131 = !DILocation(line: 699, column: 9, scope: !1123)
!1132 = !DILocation(line: 700, column: 9, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1123, file: !29, line: 699, column: 4)
!1134 = !DILocation(line: 700, column: 20, scope: !1133)
!1135 = !DILocation(line: 700, column: 18, scope: !1133)
!1136 = !DILocation(line: 700, column: 29, scope: !1133)
!1137 = !DILocation(line: 700, column: 32, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1133, file: !29, discriminator: 1)
!1139 = !DILocation(line: 700, column: 46, scope: !1138)
!1140 = !DILocation(line: 699, column: 4, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1123, file: !29, discriminator: 1)
!1142 = !DILocalVariable(name: "copyAmount", scope: !1143, file: !29, line: 702, type: !47)
!1143 = distinct !DILexicalBlock(scope: !1133, file: !29, line: 701, column: 21)
!1144 = !DILocation(line: 702, column: 14, scope: !1143)
!1145 = !DILocation(line: 702, column: 27, scope: !1143)
!1146 = !DILocation(line: 702, column: 47, scope: !1143)
!1147 = !DILocation(line: 702, column: 43, scope: !1143)
!1148 = !DILocation(line: 702, column: 57, scope: !1143)
!1149 = !DILocation(line: 702, column: 41, scope: !1143)
!1150 = !DILocation(line: 703, column: 27, scope: !1143)
!1151 = !DILocation(line: 702, column: 27, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1143, file: !29, discriminator: 1)
!1153 = !DILocation(line: 703, column: 46, scope: !1152)
!1154 = !DILocation(line: 703, column: 42, scope: !1152)
!1155 = !DILocation(line: 703, column: 56, scope: !1152)
!1156 = !DILocation(line: 702, column: 27, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1143, file: !29, discriminator: 2)
!1158 = !DILocation(line: 702, column: 27, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1143, file: !29, discriminator: 3)
!1160 = !DILocation(line: 702, column: 14, scope: !1159)
!1161 = !DILocation(line: 707, column: 18, scope: !1143)
!1162 = !DILocation(line: 707, column: 14, scope: !1143)
!1163 = !DILocation(line: 707, column: 28, scope: !1143)
!1164 = !DILocation(line: 707, column: 40, scope: !1143)
!1165 = !DILocation(line: 707, column: 46, scope: !1143)
!1166 = !DILocation(line: 707, column: 44, scope: !1143)
!1167 = !DILocation(line: 707, column: 60, scope: !1143)
!1168 = !DILocation(line: 707, column: 7, scope: !1143)
!1169 = !DILocation(line: 708, column: 24, scope: !1143)
!1170 = !DILocation(line: 708, column: 21, scope: !1143)
!1171 = !DILocation(line: 709, column: 23, scope: !1143)
!1172 = !DILocation(line: 709, column: 20, scope: !1143)
!1173 = !DILocation(line: 710, column: 4, scope: !1143)
!1174 = !DILocation(line: 701, column: 17, scope: !1133)
!1175 = !DILocation(line: 699, column: 4, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1133, file: !29, discriminator: 2)
!1177 = distinct !{!1177, !1178}
!1178 = !DILocation(line: 699, column: 4, scope: !1103)
!1179 = !DILocation(line: 713, column: 1, scope: !1103)
