; ModuleID = './libRpcChannel_la-vsockChannel.o.i'
source_filename = "./libRpcChannel_la-vsockChannel.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._RpcChannelFuncs = type { i32 (%struct._RpcChannel*)*, void (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*, i8*, i64, i8*, i8**, i64*)*, void (%struct._RpcChannel*, %struct._GMainContext*, i8*, i8*)*, void (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*)*, void (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*)* }
%struct._RpcChannel = type { %struct._RpcChannelFuncs*, i8*, %struct._GMainContext*, i8*, i8*, %struct.GStaticMutex, %struct.RpcIn*, i32, i32 }
%struct._GMainContext = type opaque
%struct.GStaticMutex = type { %union._GMutex*, %union.pthread_mutex_t }
%union._GMutex = type { i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.RpcIn = type opaque
%struct.VSockChannel = type { %struct.VSockOut* }
%struct.VSockOut = type { i32, i8*, i32, i32 }

@VSockChannel_New.funcs = internal global %struct._RpcChannelFuncs { i32 (%struct._RpcChannel*)* @VSockChannelStart, void (%struct._RpcChannel*)* @VSockChannelStop, i32 (%struct._RpcChannel*, i8*, i64, i8*, i8**, i64*)* @VSockChannelSend, void (%struct._RpcChannel*, %struct._GMainContext*, i8*, i8*)* null, void (%struct._RpcChannel*)* @VSockChannelShutdown, i32 (%struct._RpcChannel*)* @VSockChannelGetType, void (%struct._RpcChannel*)* @VSockChannelOnStartErr, i32 (%struct._RpcChannel*)* @VSockChannelStopRpcOut }, align 8
@.str = private unnamed_addr constant [44 x i8] c"VSockChan: Creating privileged vsocket ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"VSockChan: Successfully created priv vsocket %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"VSockChan: Creating unprivileged vsocket ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"VSockChan: Successfully created unpriv vsocket %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"VSockChan: Failed to create vsocket channel, %d, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"VSockChan: Sending request for conn %d,  reqLen=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"VSockOut: Unable to send data for the RPCI command\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"VSockOut: Unable to receive the result of the RPCI command\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"VSockOut: Invalid format for the result of the RPCI command\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"VSockOut: recved %d bytes for conn %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct._RpcChannel* @VSockChannel_New() #0 !dbg !25 {
  %1 = alloca %struct._RpcChannel*, align 8
  %2 = alloca %struct.VSockChannel*, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %1, metadata !144, metadata !145), !dbg !146
  call void @llvm.dbg.declare(metadata %struct.VSockChannel** %2, metadata !147, metadata !145), !dbg !161
  %3 = call %struct._RpcChannel* @RpcChannel_Create(), !dbg !162
  store %struct._RpcChannel* %3, %struct._RpcChannel** %1, align 8, !dbg !163
  %4 = call noalias i8* @g_malloc0(i64 8), !dbg !164
  %5 = bitcast i8* %4 to %struct.VSockChannel*, !dbg !164
  store %struct.VSockChannel* %5, %struct.VSockChannel** %2, align 8, !dbg !165
  %6 = call %struct.VSockOut* @VSockOutConstruct(), !dbg !166
  %7 = load %struct.VSockChannel*, %struct.VSockChannel** %2, align 8, !dbg !167
  %8 = getelementptr inbounds %struct.VSockChannel, %struct.VSockChannel* %7, i32 0, i32 0, !dbg !168
  store %struct.VSockOut* %6, %struct.VSockOut** %8, align 8, !dbg !169
  %9 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !170
  %10 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %9, i32 0, i32 7, !dbg !171
  store i32 0, i32* %10, align 8, !dbg !172
  %11 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !173
  %12 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %11, i32 0, i32 8, !dbg !174
  store i32 0, i32* %12, align 4, !dbg !175
  %13 = load %struct.VSockChannel*, %struct.VSockChannel** %2, align 8, !dbg !176
  %14 = bitcast %struct.VSockChannel* %13 to i8*, !dbg !176
  %15 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !177
  %16 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %15, i32 0, i32 1, !dbg !178
  store i8* %14, i8** %16, align 8, !dbg !179
  %17 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !180
  %18 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %17, i32 0, i32 0, !dbg !181
  store %struct._RpcChannelFuncs* @VSockChannel_New.funcs, %struct._RpcChannelFuncs** %18, align 8, !dbg !182
  %19 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !183
  ret %struct._RpcChannel* %19, !dbg !184
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @VSockChannelStart(%struct._RpcChannel*) #0 !dbg !185 {
  %2 = alloca %struct._RpcChannel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.VSockChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !186, metadata !145), !dbg !187
  call void @llvm.dbg.declare(metadata i32* %3, metadata !188, metadata !145), !dbg !189
  store i32 1, i32* %3, align 4, !dbg !189
  call void @llvm.dbg.declare(metadata %struct.VSockChannel** %4, metadata !190, metadata !145), !dbg !191
  %5 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !192
  %6 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %5, i32 0, i32 1, !dbg !193
  %7 = load i8*, i8** %6, align 8, !dbg !193
  %8 = bitcast i8* %7 to %struct.VSockChannel*, !dbg !192
  store %struct.VSockChannel* %8, %struct.VSockChannel** %4, align 8, !dbg !191
  %9 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !194
  %10 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %9, i32 0, i32 6, !dbg !195
  %11 = load %struct.RpcIn*, %struct.RpcIn** %10, align 8, !dbg !195
  %12 = icmp eq %struct.RpcIn* %11, null, !dbg !196
  br i1 %12, label %18, label %13, !dbg !197

; <label>:13:                                     ; preds = %1
  %14 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !198
  %15 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %14, i32 0, i32 7, !dbg !200
  %16 = load i32, i32* %15, align 8, !dbg !200
  %17 = icmp ne i32 %16, 0, !dbg !201
  br label %18, !dbg !201

; <label>:18:                                     ; preds = %13, %1
  %19 = phi i1 [ true, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32, !dbg !202
  store i32 %20, i32* %3, align 4, !dbg !204
  %21 = load i32, i32* %3, align 4, !dbg !205
  %22 = icmp ne i32 %21, 0, !dbg !205
  br i1 %22, label %23, label %28, !dbg !207

; <label>:23:                                     ; preds = %18
  %24 = load %struct.VSockChannel*, %struct.VSockChannel** %4, align 8, !dbg !208
  %25 = getelementptr inbounds %struct.VSockChannel, %struct.VSockChannel* %24, i32 0, i32 0, !dbg !210
  %26 = load %struct.VSockOut*, %struct.VSockOut** %25, align 8, !dbg !210
  %27 = call i32 @VSockOutStart(%struct.VSockOut* %26), !dbg !211
  store i32 %27, i32* %3, align 4, !dbg !212
  br label %28, !dbg !213

; <label>:28:                                     ; preds = %23, %18
  %29 = load i32, i32* %3, align 4, !dbg !214
  %30 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !215
  %31 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %30, i32 0, i32 8, !dbg !216
  store i32 %29, i32* %31, align 4, !dbg !217
  %32 = load i32, i32* %3, align 4, !dbg !218
  ret i32 %32, !dbg !219
}

; Function Attrs: nounwind uwtable
define internal void @VSockChannelStop(%struct._RpcChannel*) #0 !dbg !220 {
  %2 = alloca %struct._RpcChannel*, align 8
  %3 = alloca %struct.VSockChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !221, metadata !145), !dbg !222
  call void @llvm.dbg.declare(metadata %struct.VSockChannel** %3, metadata !223, metadata !145), !dbg !224
  %4 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !225
  %5 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %4, i32 0, i32 1, !dbg !226
  %6 = load i8*, i8** %5, align 8, !dbg !226
  %7 = bitcast i8* %6 to %struct.VSockChannel*, !dbg !225
  store %struct.VSockChannel* %7, %struct.VSockChannel** %3, align 8, !dbg !224
  %8 = load %struct.VSockChannel*, %struct.VSockChannel** %3, align 8, !dbg !227
  %9 = getelementptr inbounds %struct.VSockChannel, %struct.VSockChannel* %8, i32 0, i32 0, !dbg !229
  %10 = load %struct.VSockOut*, %struct.VSockOut** %9, align 8, !dbg !229
  %11 = icmp ne %struct.VSockOut* %10, null, !dbg !230
  br i1 %11, label %12, label %24, !dbg !231

; <label>:12:                                     ; preds = %1
  %13 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !232
  %14 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %13, i32 0, i32 8, !dbg !235
  %15 = load i32, i32* %14, align 4, !dbg !235
  %16 = icmp ne i32 %15, 0, !dbg !232
  br i1 %16, label %17, label %21, !dbg !236

; <label>:17:                                     ; preds = %12
  %18 = load %struct.VSockChannel*, %struct.VSockChannel** %3, align 8, !dbg !237
  %19 = getelementptr inbounds %struct.VSockChannel, %struct.VSockChannel* %18, i32 0, i32 0, !dbg !239
  %20 = load %struct.VSockOut*, %struct.VSockOut** %19, align 8, !dbg !239
  call void @VSockOutStop(%struct.VSockOut* %20), !dbg !240
  br label %21, !dbg !241

; <label>:21:                                     ; preds = %17, %12
  %22 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !242
  %23 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %22, i32 0, i32 8, !dbg !243
  store i32 0, i32* %23, align 4, !dbg !244
  br label %25, !dbg !245

; <label>:24:                                     ; preds = %1
  br label %25

; <label>:25:                                     ; preds = %24, %21
  ret void, !dbg !246
}

; Function Attrs: nounwind uwtable
define internal i32 @VSockChannelSend(%struct._RpcChannel*, i8*, i64, i8*, i8**, i64*) #0 !dbg !247 {
  %7 = alloca %struct._RpcChannel*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.VSockChannel*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %7, metadata !248, metadata !145), !dbg !249
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !250, metadata !145), !dbg !251
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !252, metadata !145), !dbg !253
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !254, metadata !145), !dbg !255
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !256, metadata !145), !dbg !257
  store i64* %5, i64** %12, align 8
  call void @llvm.dbg.declare(metadata i64** %12, metadata !258, metadata !145), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %13, metadata !260, metadata !145), !dbg !261
  store i32 0, i32* %13, align 4, !dbg !261
  call void @llvm.dbg.declare(metadata %struct.VSockChannel** %14, metadata !262, metadata !145), !dbg !263
  %17 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !264
  %18 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %17, i32 0, i32 1, !dbg !265
  %19 = load i8*, i8** %18, align 8, !dbg !265
  %20 = bitcast i8* %19 to %struct.VSockChannel*, !dbg !264
  store %struct.VSockChannel* %20, %struct.VSockChannel** %14, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata i8** %15, metadata !266, metadata !145), !dbg !267
  store i8* null, i8** %15, align 8, !dbg !267
  call void @llvm.dbg.declare(metadata i64* %16, metadata !268, metadata !145), !dbg !269
  store i64 0, i64* %16, align 8, !dbg !269
  %21 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !270
  %22 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %21, i32 0, i32 8, !dbg !272
  %23 = load i32, i32* %22, align 4, !dbg !272
  %24 = icmp ne i32 %23, 0, !dbg !270
  br i1 %24, label %26, label %25, !dbg !273

; <label>:25:                                     ; preds = %6
  br label %62, !dbg !274

; <label>:26:                                     ; preds = %6
  %27 = load %struct.VSockChannel*, %struct.VSockChannel** %14, align 8, !dbg !276
  %28 = getelementptr inbounds %struct.VSockChannel, %struct.VSockChannel* %27, i32 0, i32 0, !dbg !277
  %29 = load %struct.VSockOut*, %struct.VSockOut** %28, align 8, !dbg !277
  %30 = load i8*, i8** %8, align 8, !dbg !278
  %31 = load i64, i64* %9, align 8, !dbg !279
  %32 = load i8*, i8** %10, align 8, !dbg !280
  %33 = call i32 @VSockOutSend(%struct.VSockOut* %29, i8* %30, i64 %31, i8* %32, i8** %15, i64* %16), !dbg !281
  store i32 %33, i32* %13, align 4, !dbg !282
  %34 = load i8**, i8*** %11, align 8, !dbg !283
  %35 = icmp ne i8** %34, null, !dbg !285
  br i1 %35, label %36, label %55, !dbg !286

; <label>:36:                                     ; preds = %26
  %37 = load i8*, i8** %15, align 8, !dbg !287
  %38 = icmp ne i8* %37, null, !dbg !290
  br i1 %38, label %39, label %52, !dbg !291

; <label>:39:                                     ; preds = %36
  %40 = load i64, i64* %16, align 8, !dbg !292
  %41 = add i64 %40, 1, !dbg !294
  %42 = call i8* @UtilSafeMalloc0(i64 %41), !dbg !295
  %43 = load i8**, i8*** %11, align 8, !dbg !296
  store i8* %42, i8** %43, align 8, !dbg !297
  %44 = load i8**, i8*** %11, align 8, !dbg !298
  %45 = load i8*, i8** %44, align 8, !dbg !299
  %46 = load i8*, i8** %15, align 8, !dbg !300
  %47 = load i64, i64* %16, align 8, !dbg !301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 %47, i32 1, i1 false), !dbg !302
  %48 = load i64, i64* %16, align 8, !dbg !303
  %49 = load i8**, i8*** %11, align 8, !dbg !304
  %50 = load i8*, i8** %49, align 8, !dbg !305
  %51 = getelementptr inbounds i8, i8* %50, i64 %48, !dbg !306
  store i8 0, i8* %51, align 1, !dbg !307
  br label %54, !dbg !308

; <label>:52:                                     ; preds = %36
  %53 = load i8**, i8*** %11, align 8, !dbg !309
  store i8* null, i8** %53, align 8, !dbg !311
  br label %54

; <label>:54:                                     ; preds = %52, %39
  br label %55, !dbg !312

; <label>:55:                                     ; preds = %54, %26
  %56 = load i64*, i64** %12, align 8, !dbg !313
  %57 = icmp ne i64* %56, null, !dbg !315
  br i1 %57, label %58, label %61, !dbg !316

; <label>:58:                                     ; preds = %55
  %59 = load i64, i64* %16, align 8, !dbg !317
  %60 = load i64*, i64** %12, align 8, !dbg !319
  store i64 %59, i64* %60, align 8, !dbg !320
  br label %61, !dbg !321

; <label>:61:                                     ; preds = %58, %55
  br label %62, !dbg !322

; <label>:62:                                     ; preds = %61, %25
  %63 = load i32, i32* %13, align 4, !dbg !324
  ret i32 %63, !dbg !325
}

; Function Attrs: nounwind uwtable
define internal void @VSockChannelShutdown(%struct._RpcChannel*) #0 !dbg !326 {
  %2 = alloca %struct._RpcChannel*, align 8
  %3 = alloca %struct.VSockChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !327, metadata !145), !dbg !328
  call void @llvm.dbg.declare(metadata %struct.VSockChannel** %3, metadata !329, metadata !145), !dbg !330
  %4 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !331
  %5 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %4, i32 0, i32 1, !dbg !332
  %6 = load i8*, i8** %5, align 8, !dbg !332
  %7 = bitcast i8* %6 to %struct.VSockChannel*, !dbg !331
  store %struct.VSockChannel* %7, %struct.VSockChannel** %3, align 8, !dbg !330
  %8 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !333
  call void @VSockChannelStop(%struct._RpcChannel* %8), !dbg !334
  %9 = load %struct.VSockChannel*, %struct.VSockChannel** %3, align 8, !dbg !335
  %10 = getelementptr inbounds %struct.VSockChannel, %struct.VSockChannel* %9, i32 0, i32 0, !dbg !336
  %11 = load %struct.VSockOut*, %struct.VSockOut** %10, align 8, !dbg !336
  call void @VSockOutDestruct(%struct.VSockOut* %11), !dbg !337
  %12 = load %struct.VSockChannel*, %struct.VSockChannel** %3, align 8, !dbg !338
  %13 = bitcast %struct.VSockChannel* %12 to i8*, !dbg !338
  call void @g_free(i8* %13), !dbg !339
  %14 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !340
  %15 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %14, i32 0, i32 1, !dbg !341
  store i8* null, i8** %15, align 8, !dbg !342
  ret void, !dbg !343
}

; Function Attrs: nounwind uwtable
define internal i32 @VSockChannelGetType(%struct._RpcChannel*) #0 !dbg !344 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._RpcChannel*, align 8
  %4 = alloca %struct.VSockChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %3, metadata !345, metadata !145), !dbg !346
  call void @llvm.dbg.declare(metadata %struct.VSockChannel** %4, metadata !347, metadata !145), !dbg !348
  %5 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !349
  %6 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %5, i32 0, i32 1, !dbg !350
  %7 = load i8*, i8** %6, align 8, !dbg !350
  %8 = bitcast i8* %7 to %struct.VSockChannel*, !dbg !349
  store %struct.VSockChannel* %8, %struct.VSockChannel** %4, align 8, !dbg !348
  %9 = load %struct.VSockChannel*, %struct.VSockChannel** %4, align 8, !dbg !351
  %10 = getelementptr inbounds %struct.VSockChannel, %struct.VSockChannel* %9, i32 0, i32 0, !dbg !353
  %11 = load %struct.VSockOut*, %struct.VSockOut** %10, align 8, !dbg !353
  %12 = icmp ne %struct.VSockOut* %11, null, !dbg !354
  br i1 %12, label %13, label %19, !dbg !355

; <label>:13:                                     ; preds = %1
  %14 = load %struct.VSockChannel*, %struct.VSockChannel** %4, align 8, !dbg !356
  %15 = getelementptr inbounds %struct.VSockChannel, %struct.VSockChannel* %14, i32 0, i32 0, !dbg !358
  %16 = load %struct.VSockOut*, %struct.VSockOut** %15, align 8, !dbg !358
  %17 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %16, i32 0, i32 3, !dbg !359
  %18 = load i32, i32* %17, align 4, !dbg !359
  store i32 %18, i32* %2, align 4, !dbg !360
  br label %20, !dbg !360

; <label>:19:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !361
  br label %20, !dbg !361

; <label>:20:                                     ; preds = %19, %13
  %21 = load i32, i32* %2, align 4, !dbg !363
  ret i32 %21, !dbg !363
}

; Function Attrs: nounwind uwtable
define internal void @VSockChannelOnStartErr(%struct._RpcChannel*) #0 !dbg !364 {
  %2 = alloca %struct._RpcChannel*, align 8
  %3 = alloca %struct.VSockChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !365, metadata !145), !dbg !366
  call void @llvm.dbg.declare(metadata %struct.VSockChannel** %3, metadata !367, metadata !145), !dbg !368
  %4 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !369
  %5 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %4, i32 0, i32 1, !dbg !370
  %6 = load i8*, i8** %5, align 8, !dbg !370
  %7 = bitcast i8* %6 to %struct.VSockChannel*, !dbg !369
  store %struct.VSockChannel* %7, %struct.VSockChannel** %3, align 8, !dbg !368
  %8 = load %struct.VSockChannel*, %struct.VSockChannel** %3, align 8, !dbg !371
  %9 = getelementptr inbounds %struct.VSockChannel, %struct.VSockChannel* %8, i32 0, i32 0, !dbg !372
  %10 = load %struct.VSockOut*, %struct.VSockOut** %9, align 8, !dbg !372
  call void @VSockOutDestruct(%struct.VSockOut* %10), !dbg !373
  %11 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !374
  %12 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %11, i32 0, i32 1, !dbg !375
  store i8* null, i8** %12, align 8, !dbg !376
  ret void, !dbg !377
}

; Function Attrs: nounwind uwtable
define internal i32 @VSockChannelStopRpcOut(%struct._RpcChannel*) #0 !dbg !378 {
  %2 = alloca %struct._RpcChannel*, align 8
  %3 = alloca %struct.VSockChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !379, metadata !145), !dbg !380
  call void @llvm.dbg.declare(metadata %struct.VSockChannel** %3, metadata !381, metadata !145), !dbg !382
  %4 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !383
  %5 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %4, i32 0, i32 1, !dbg !384
  %6 = load i8*, i8** %5, align 8, !dbg !384
  %7 = bitcast i8* %6 to %struct.VSockChannel*, !dbg !383
  store %struct.VSockChannel* %7, %struct.VSockChannel** %3, align 8, !dbg !382
  %8 = load %struct.VSockChannel*, %struct.VSockChannel** %3, align 8, !dbg !385
  %9 = getelementptr inbounds %struct.VSockChannel, %struct.VSockChannel* %8, i32 0, i32 0, !dbg !386
  %10 = load %struct.VSockOut*, %struct.VSockOut** %9, align 8, !dbg !386
  call void @VSockOutStop(%struct.VSockOut* %10), !dbg !387
  %11 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !388
  %12 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %11, i32 0, i32 8, !dbg !389
  store i32 0, i32* %12, align 4, !dbg !390
  ret i32 1, !dbg !391
}

declare %struct._RpcChannel* @RpcChannel_Create() #2

declare noalias i8* @g_malloc0(i64) #2

; Function Attrs: nounwind uwtable
define internal %struct.VSockOut* @VSockOutConstruct() #0 !dbg !392 {
  %1 = alloca %struct.VSockOut*, align 8
  call void @llvm.dbg.declare(metadata %struct.VSockOut** %1, metadata !395, metadata !145), !dbg !396
  %2 = call noalias i8* @calloc(i64 1, i64 24) #6, !dbg !397
  %3 = bitcast i8* %2 to %struct.VSockOut*, !dbg !397
  store %struct.VSockOut* %3, %struct.VSockOut** %1, align 8, !dbg !396
  %4 = load %struct.VSockOut*, %struct.VSockOut** %1, align 8, !dbg !398
  %5 = icmp ne %struct.VSockOut* %4, null, !dbg !400
  br i1 %5, label %6, label %11, !dbg !401

; <label>:6:                                      ; preds = %0
  %7 = load %struct.VSockOut*, %struct.VSockOut** %1, align 8, !dbg !402
  %8 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %7, i32 0, i32 0, !dbg !404
  store i32 -1, i32* %8, align 8, !dbg !405
  %9 = load %struct.VSockOut*, %struct.VSockOut** %1, align 8, !dbg !406
  %10 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %9, i32 0, i32 3, !dbg !407
  store i32 0, i32* %10, align 4, !dbg !408
  br label %11, !dbg !409

; <label>:11:                                     ; preds = %6, %0
  %12 = load %struct.VSockOut*, %struct.VSockOut** %1, align 8, !dbg !410
  ret %struct.VSockOut* %12, !dbg !411
}

; Function Attrs: nounwind uwtable
define internal i32 @VSockOutStart(%struct.VSockOut*) #0 !dbg !412 {
  %2 = alloca %struct.VSockOut*, align 8
  %3 = alloca i32, align 4
  store %struct.VSockOut* %0, %struct.VSockOut** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VSockOut** %2, metadata !415, metadata !145), !dbg !416
  call void @llvm.dbg.declare(metadata i32* %3, metadata !417, metadata !145), !dbg !418
  %4 = call i32 @VSockCreateConn(i32* %3), !dbg !419
  %5 = load %struct.VSockOut*, %struct.VSockOut** %2, align 8, !dbg !420
  %6 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %5, i32 0, i32 0, !dbg !421
  store i32 %4, i32* %6, align 8, !dbg !422
  %7 = load %struct.VSockOut*, %struct.VSockOut** %2, align 8, !dbg !423
  %8 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %7, i32 0, i32 0, !dbg !425
  %9 = load i32, i32* %8, align 8, !dbg !425
  %10 = icmp ne i32 %9, -1, !dbg !426
  br i1 %10, label %11, label %17, !dbg !427

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* %3, align 4, !dbg !428
  %13 = icmp ne i32 %12, 0, !dbg !428
  %14 = select i1 %13, i32 2, i32 3, !dbg !428
  %15 = load %struct.VSockOut*, %struct.VSockOut** %2, align 8, !dbg !430
  %16 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %15, i32 0, i32 3, !dbg !431
  store i32 %14, i32* %16, align 4, !dbg !432
  br label %17, !dbg !433

; <label>:17:                                     ; preds = %11, %1
  %18 = load %struct.VSockOut*, %struct.VSockOut** %2, align 8, !dbg !434
  %19 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %18, i32 0, i32 0, !dbg !435
  %20 = load i32, i32* %19, align 8, !dbg !435
  %21 = icmp ne i32 %20, -1, !dbg !436
  %22 = zext i1 %21 to i32, !dbg !436
  ret i32 %22, !dbg !437
}

; Function Attrs: nounwind uwtable
define internal i32 @VSockCreateConn(i32*) #0 !dbg !438 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !442, metadata !145), !dbg !443
  call void @llvm.dbg.declare(metadata i32* %4, metadata !444, metadata !145), !dbg !446
  call void @llvm.dbg.declare(metadata i32* %5, metadata !447, metadata !145), !dbg !448
  call void @llvm.dbg.declare(metadata i32* %6, metadata !449, metadata !145), !dbg !450
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0)), !dbg !451
  %7 = call i32 @Socket_ConnectVMCI(i32 0, i32 976, i32 1, i32* %4, i32* %5), !dbg !452
  store i32 %7, i32* %6, align 4, !dbg !453
  %8 = load i32, i32* %6, align 4, !dbg !454
  %9 = icmp ne i32 %8, -1, !dbg !456
  br i1 %9, label %10, label %14, !dbg !457

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %6, align 4, !dbg !458
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 %11), !dbg !460
  %12 = load i32*, i32** %3, align 8, !dbg !461
  store i32 1, i32* %12, align 4, !dbg !462
  %13 = load i32, i32* %6, align 4, !dbg !463
  store i32 %13, i32* %2, align 4, !dbg !464
  br label %32, !dbg !464

; <label>:14:                                     ; preds = %1
  %15 = load i32, i32* %4, align 4, !dbg !465
  %16 = icmp eq i32 %15, 5, !dbg !467
  br i1 %16, label %17, label %29, !dbg !468

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %5, align 4, !dbg !469
  %19 = icmp eq i32 %18, 13, !dbg !471
  br i1 %19, label %20, label %29, !dbg !472

; <label>:20:                                     ; preds = %17
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0)), !dbg !473
  %21 = call i32 @Socket_ConnectVMCI(i32 0, i32 976, i32 0, i32* %4, i32* %5), !dbg !475
  store i32 %21, i32* %6, align 4, !dbg !476
  %22 = load i32, i32* %6, align 4, !dbg !477
  %23 = icmp ne i32 %22, -1, !dbg !479
  br i1 %23, label %24, label %28, !dbg !480

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %6, align 4, !dbg !481
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i32 0, i32 0), i32 %25), !dbg !483
  %26 = load i32*, i32** %3, align 8, !dbg !484
  store i32 0, i32* %26, align 4, !dbg !485
  %27 = load i32, i32* %6, align 4, !dbg !486
  store i32 %27, i32* %2, align 4, !dbg !487
  br label %32, !dbg !487

; <label>:28:                                     ; preds = %20
  br label %29, !dbg !488

; <label>:29:                                     ; preds = %28, %17, %14
  %30 = load i32, i32* %4, align 4, !dbg !489
  %31 = load i32, i32* %5, align 4, !dbg !490
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0), i32 %30, i32 %31), !dbg !491
  store i32 -1, i32* %2, align 4, !dbg !492
  br label %32, !dbg !492

; <label>:32:                                     ; preds = %29, %24, %10
  %33 = load i32, i32* %2, align 4, !dbg !493
  ret i32 %33, !dbg !493
}

declare void @Debug(i8*, ...) #2

declare i32 @Socket_ConnectVMCI(i32, i32, i32, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @VSockOutStop(%struct.VSockOut*) #0 !dbg !494 {
  %2 = alloca %struct.VSockOut*, align 8
  store %struct.VSockOut* %0, %struct.VSockOut** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VSockOut** %2, metadata !497, metadata !145), !dbg !498
  %3 = load %struct.VSockOut*, %struct.VSockOut** %2, align 8, !dbg !499
  %4 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %3, i32 0, i32 0, !dbg !501
  %5 = load i32, i32* %4, align 8, !dbg !501
  %6 = icmp ne i32 %5, -1, !dbg !502
  br i1 %6, label %7, label %13, !dbg !503

; <label>:7:                                      ; preds = %1
  %8 = load %struct.VSockOut*, %struct.VSockOut** %2, align 8, !dbg !504
  %9 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %8, i32 0, i32 0, !dbg !506
  %10 = load i32, i32* %9, align 8, !dbg !506
  call void @Socket_Close(i32 %10), !dbg !507
  %11 = load %struct.VSockOut*, %struct.VSockOut** %2, align 8, !dbg !508
  %12 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %11, i32 0, i32 0, !dbg !509
  store i32 -1, i32* %12, align 8, !dbg !510
  br label %13, !dbg !511

; <label>:13:                                     ; preds = %7, %1
  ret void, !dbg !512
}

declare void @Socket_Close(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @VSockOutSend(%struct.VSockOut*, i8*, i64, i8*, i8**, i64*) #0 !dbg !513 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.VSockOut*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  store %struct.VSockOut* %0, %struct.VSockOut** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.VSockOut** %8, metadata !517, metadata !145), !dbg !518
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !519, metadata !145), !dbg !520
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !521, metadata !145), !dbg !522
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !523, metadata !145), !dbg !524
  store i8** %4, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !525, metadata !145), !dbg !526
  store i64* %5, i64** %13, align 8
  call void @llvm.dbg.declare(metadata i64** %13, metadata !527, metadata !145), !dbg !528
  %14 = load i8**, i8*** %12, align 8, !dbg !529
  store i8* null, i8** %14, align 8, !dbg !530
  %15 = load i64*, i64** %13, align 8, !dbg !531
  store i64 0, i64* %15, align 8, !dbg !532
  %16 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !533
  %17 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %16, i32 0, i32 0, !dbg !534
  %18 = load i32, i32* %17, align 8, !dbg !534
  %19 = load i64, i64* %10, align 8, !dbg !535
  %20 = trunc i64 %19 to i32, !dbg !536
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0), i32 %18, i32 %20), !dbg !537
  %21 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !538
  %22 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %21, i32 0, i32 0, !dbg !540
  %23 = load i32, i32* %22, align 8, !dbg !540
  %24 = load i8*, i8** %9, align 8, !dbg !541
  %25 = load i64, i64* %10, align 8, !dbg !542
  %26 = trunc i64 %25 to i32, !dbg !542
  %27 = call i32 @Socket_SendPacket(i32 %23, i8* %24, i32 %26), !dbg !543
  %28 = icmp ne i32 %27, 0, !dbg !543
  br i1 %28, label %32, label %29, !dbg !544

; <label>:29:                                     ; preds = %6
  %30 = load i8**, i8*** %12, align 8, !dbg !545
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0), i8** %30, align 8, !dbg !547
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !548
  br label %110, !dbg !549

; <label>:32:                                     ; preds = %6
  %33 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !550
  %34 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %33, i32 0, i32 1, !dbg !551
  %35 = load i8*, i8** %34, align 8, !dbg !551
  call void @free(i8* %35) #6, !dbg !552
  %36 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !553
  %37 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %36, i32 0, i32 1, !dbg !554
  store i8* null, i8** %37, align 8, !dbg !555
  %38 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !556
  %39 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %38, i32 0, i32 0, !dbg !558
  %40 = load i32, i32* %39, align 8, !dbg !558
  %41 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !559
  %42 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %41, i32 0, i32 1, !dbg !560
  %43 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !561
  %44 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %43, i32 0, i32 2, !dbg !562
  %45 = call i32 @Socket_RecvPacket(i32 %40, i8** %42, i32* %44), !dbg !563
  %46 = icmp ne i32 %45, 0, !dbg !563
  br i1 %46, label %50, label %47, !dbg !564

; <label>:47:                                     ; preds = %32
  %48 = load i8**, i8*** %12, align 8, !dbg !565
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i32 0, i32 0), i8** %48, align 8, !dbg !567
  %49 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !568
  br label %110, !dbg !569

; <label>:50:                                     ; preds = %32
  %51 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !570
  %52 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %51, i32 0, i32 2, !dbg !572
  %53 = load i32, i32* %52, align 8, !dbg !572
  %54 = icmp slt i32 %53, 2, !dbg !573
  br i1 %54, label %79, label %55, !dbg !574

; <label>:55:                                     ; preds = %50
  %56 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !575
  %57 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %56, i32 0, i32 1, !dbg !576
  %58 = load i8*, i8** %57, align 8, !dbg !576
  %59 = getelementptr inbounds i8, i8* %58, i64 0, !dbg !575
  %60 = load i8, i8* %59, align 1, !dbg !575
  %61 = sext i8 %60 to i32, !dbg !575
  %62 = icmp ne i32 %61, 49, !dbg !577
  br i1 %62, label %63, label %71, !dbg !578

; <label>:63:                                     ; preds = %55
  %64 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !579
  %65 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %64, i32 0, i32 1, !dbg !581
  %66 = load i8*, i8** %65, align 8, !dbg !581
  %67 = getelementptr inbounds i8, i8* %66, i64 0, !dbg !579
  %68 = load i8, i8* %67, align 1, !dbg !579
  %69 = sext i8 %68 to i32, !dbg !579
  %70 = icmp ne i32 %69, 48, !dbg !582
  br i1 %70, label %79, label %71, !dbg !583

; <label>:71:                                     ; preds = %63, %55
  %72 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !584
  %73 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %72, i32 0, i32 1, !dbg !585
  %74 = load i8*, i8** %73, align 8, !dbg !585
  %75 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !584
  %76 = load i8, i8* %75, align 1, !dbg !584
  %77 = sext i8 %76 to i32, !dbg !584
  %78 = icmp ne i32 %77, 32, !dbg !586
  br i1 %78, label %79, label %82, !dbg !587

; <label>:79:                                     ; preds = %71, %63, %50
  %80 = load i8**, i8*** %12, align 8, !dbg !589
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0), i8** %80, align 8, !dbg !591
  %81 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !592
  br label %110, !dbg !593

; <label>:82:                                     ; preds = %71
  %83 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !594
  %84 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %83, i32 0, i32 1, !dbg !595
  %85 = load i8*, i8** %84, align 8, !dbg !595
  %86 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !596
  %87 = load i8**, i8*** %12, align 8, !dbg !597
  store i8* %86, i8** %87, align 8, !dbg !598
  %88 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !599
  %89 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %88, i32 0, i32 2, !dbg !600
  %90 = load i32, i32* %89, align 8, !dbg !600
  %91 = sub nsw i32 %90, 2, !dbg !601
  %92 = sext i32 %91 to i64, !dbg !599
  %93 = load i64*, i64** %13, align 8, !dbg !602
  store i64 %92, i64* %93, align 8, !dbg !603
  %94 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !604
  %95 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %94, i32 0, i32 2, !dbg !605
  %96 = load i32, i32* %95, align 8, !dbg !605
  %97 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !606
  %98 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %97, i32 0, i32 0, !dbg !607
  %99 = load i32, i32* %98, align 8, !dbg !607
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i32 %96, i32 %99), !dbg !608
  %100 = load %struct.VSockOut*, %struct.VSockOut** %8, align 8, !dbg !609
  %101 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %100, i32 0, i32 1, !dbg !610
  %102 = load i8*, i8** %101, align 8, !dbg !610
  %103 = getelementptr inbounds i8, i8* %102, i64 0, !dbg !609
  %104 = load i8, i8* %103, align 1, !dbg !609
  %105 = sext i8 %104 to i32, !dbg !609
  %106 = icmp eq i32 %105, 49, !dbg !611
  %107 = zext i1 %106 to i32, !dbg !611
  %108 = trunc i32 %107 to i8, !dbg !609
  %109 = load i8*, i8** %11, align 8, !dbg !612
  store i8 %108, i8* %109, align 1, !dbg !613
  store i32 1, i32* %7, align 4, !dbg !614
  br label %116, !dbg !614

; <label>:110:                                    ; preds = %79, %47, %29
  %111 = load i8**, i8*** %12, align 8, !dbg !615
  %112 = load i8*, i8** %111, align 8, !dbg !616
  %113 = call i64 @strlen(i8* %112) #7, !dbg !617
  %114 = load i64*, i64** %13, align 8, !dbg !618
  store i64 %113, i64* %114, align 8, !dbg !619
  %115 = load i8*, i8** %11, align 8, !dbg !620
  store i8 0, i8* %115, align 1, !dbg !621
  store i32 0, i32* %7, align 4, !dbg !622
  br label %116, !dbg !622

; <label>:116:                                    ; preds = %110, %82
  %117 = load i32, i32* %7, align 4, !dbg !623
  ret i32 %117, !dbg !623
}

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @Socket_SendPacket(i32, i8*, i32) #2

declare i32 @assert(...) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @Socket_RecvPacket(i32, i8**, i32*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @VSockOutDestruct(%struct.VSockOut*) #0 !dbg !624 {
  %2 = alloca %struct.VSockOut*, align 8
  store %struct.VSockOut* %0, %struct.VSockOut** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VSockOut** %2, metadata !625, metadata !145), !dbg !626
  %3 = load %struct.VSockOut*, %struct.VSockOut** %2, align 8, !dbg !627
  %4 = getelementptr inbounds %struct.VSockOut, %struct.VSockOut* %3, i32 0, i32 1, !dbg !628
  %5 = load i8*, i8** %4, align 8, !dbg !628
  call void @free(i8* %5) #6, !dbg !629
  %6 = load %struct.VSockOut*, %struct.VSockOut** %2, align 8, !dbg !630
  %7 = bitcast %struct.VSockOut* %6 to i8*, !dbg !630
  call void @free(i8* %7) #6, !dbg !631
  ret void, !dbg !632
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!141, !142}
!llvm.ident = !{!143}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, globals: !23)
!1 = !DIFile(filename: "libRpcChannel_la-vsockChannel.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line825")
!2 = !{!3, !10}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RpcChannelType", file: !4, line: 79, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line825")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "RPCCHANNEL_TYPE_INACTIVE", value: 0)
!7 = !DIEnumerator(name: "RPCCHANNEL_TYPE_BKDOOR", value: 1)
!8 = !DIEnumerator(name: "RPCCHANNEL_TYPE_PRIV_VSOCK", value: 2)
!9 = !DIEnumerator(name: "RPCCHANNEL_TYPE_UNPRIV_VSOCK", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 41, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "simpleSocket.h", directory: "/home/lichi/Desktop/open-vm-tools/line825")
!12 = !{!13, !14, !15, !16, !17, !18}
!13 = !DIEnumerator(name: "SOCKERR_SUCCESS", value: 0)
!14 = !DIEnumerator(name: "SOCKERR_VMCI_FAMILY", value: 1)
!15 = !DIEnumerator(name: "SOCKERR_STARTUP", value: 2)
!16 = !DIEnumerator(name: "SOCKERR_SOCKET", value: 3)
!17 = !DIEnumerator(name: "SOCKERR_CONNECT", value: 4)
!18 = !DIEnumerator(name: "SOCKERR_BIND", value: 5)
!19 = !{!20, !21, !22}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET", file: !11, line: 66, baseType: !22)
!22 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!23 = !{!24}
!24 = distinct !DIGlobalVariable(name: "funcs", scope: !25, file: !26, line: 567, type: !37, isLocal: true, isDefinition: true, variable: %struct._RpcChannelFuncs* @VSockChannel_New.funcs)
!25 = distinct !DISubprogram(name: "VSockChannel_New", scope: !26, file: !26, line: 562, type: !27, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!26 = !DIFile(filename: "vsockChannel.c", directory: "/home/lichi/Desktop/open-vm-tools/line825")
!27 = !DISubroutineType(types: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !4, line: 48, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !32, line: 64, size: 832, align: 64, elements: !33)
!32 = !DIFile(filename: "rpcChannelInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line825")
!33 = !{!34, !84, !85, !86, !87, !88, !135, !138, !139}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !31, file: !32, line: 65, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelFuncs", file: !32, line: 56, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannelFuncs", file: !32, line: 45, size: 512, align: 64, elements: !39)
!39 = !{!40, !47, !51, !67, !76, !77, !82, !83}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !38, file: !32, line: 46, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !29}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !45, line: 50, baseType: !46)
!45 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line825")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !45, line: 49, baseType: !22)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !38, file: !32, line: 47, baseType: !48, size: 64, align: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !29}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !38, file: !32, line: 48, baseType: !52, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!44, !29, !55, !58, !61, !64, !66}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 216, baseType: !60)
!59 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line825")
!60 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !63, line: 230, baseType: !57)
!63 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line825")
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !38, file: !32, line: 50, baseType: !68, size: 64, align: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !29, !71, !55, !75}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !73, line: 48, baseType: !74)
!73 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line825")
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !73, line: 48, flags: DIFlagFwdDecl)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !45, line: 77, baseType: !20)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !38, file: !32, line: 52, baseType: !48, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "getType", scope: !38, file: !32, line: 53, baseType: !78, size: 64, align: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !29}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelType", file: !4, line: 84, baseType: !3)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "onStartErr", scope: !38, file: !32, line: 54, baseType: !48, size: 64, align: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "stopRpcOut", scope: !38, file: !32, line: 55, baseType: !41, size: 64, align: 64, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !31, file: !32, line: 66, baseType: !75, size: 64, align: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "mainCtx", scope: !31, file: !32, line: 68, baseType: !71, size: 64, align: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "appName", scope: !31, file: !32, line: 69, baseType: !55, size: 64, align: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !31, file: !32, line: 70, baseType: !75, size: 64, align: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "outLock", scope: !31, file: !32, line: 72, baseType: !89, size: 384, align: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticMutex", file: !90, line: 140, baseType: !91)
!90 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line825")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 133, size: 384, align: 64, elements: !92)
!92 = !{!93, !106}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !91, file: !90, line: 135, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !96, line: 51, baseType: !97)
!96 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line825")
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !96, line: 58, size: 64, align: 64, elements: !98)
!98 = !{!99, !100}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !97, file: !96, line: 61, baseType: !75, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !97, file: !96, line: 62, baseType: !101, size: 64, align: 32)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, align: 32, elements: !104)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !45, line: 55, baseType: !103)
!103 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!104 = !{!105}
!105 = !DISubrange(count: 2)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !91, file: !90, line: 138, baseType: !107, size: 320, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !108, line: 128, baseType: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line825")
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !108, line: 90, size: 320, align: 64, elements: !110)
!110 = !{!111, !129, !133}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !109, file: !108, line: 125, baseType: !112, size: 320, align: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !108, line: 92, size: 320, align: 64, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !121, !122}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !112, file: !108, line: 94, baseType: !22, size: 32, align: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !112, file: !108, line: 95, baseType: !103, size: 32, align: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !112, file: !108, line: 96, baseType: !22, size: 32, align: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !112, file: !108, line: 98, baseType: !103, size: 32, align: 32, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !112, file: !108, line: 102, baseType: !22, size: 32, align: 32, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !112, file: !108, line: 104, baseType: !120, size: 16, align: 16, offset: 160)
!120 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !112, file: !108, line: 105, baseType: !120, size: 16, align: 16, offset: 176)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !112, file: !108, line: 106, baseType: !123, size: 128, align: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !108, line: 79, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !108, line: 75, size: 128, align: 64, elements: !125)
!125 = !{!126, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !124, file: !108, line: 77, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !124, file: !108, line: 78, baseType: !127, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !109, file: !108, line: 126, baseType: !130, size: 320, align: 8)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 320, align: 8, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 40)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !109, file: !108, line: 127, baseType: !134, size: 64, align: 64)
!134 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !31, file: !32, line: 74, baseType: !136, size: 64, align: 64, offset: 704)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "RpcIn", file: !32, line: 41, flags: DIFlagFwdDecl)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "inStarted", scope: !31, file: !32, line: 75, baseType: !44, size: 32, align: 32, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "outStarted", scope: !31, file: !32, line: 77, baseType: !44, size: 32, align: 32, offset: 800)
!140 = !{}
!141 = !{i32 2, !"Dwarf Version", i32 4}
!142 = !{i32 2, !"Debug Info Version", i32 3}
!143 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!144 = !DILocalVariable(name: "chan", scope: !25, file: !26, line: 564, type: !29)
!145 = !DIExpression()
!146 = !DILocation(line: 564, column: 16, scope: !25)
!147 = !DILocalVariable(name: "vsock", scope: !25, file: !26, line: 565, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "VSockChannel", file: !26, line: 45, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VSockChannel", file: !26, line: 43, size: 64, align: 64, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !150, file: !26, line: 44, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "VSockOut", file: !26, line: 41, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VSockOut", file: !26, line: 36, size: 192, align: 64, elements: !156)
!156 = !{!157, !158, !159, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !155, file: !26, line: 37, baseType: !21, size: 32, align: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !155, file: !26, line: 38, baseType: !65, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "payloadLen", scope: !155, file: !26, line: 39, baseType: !22, size: 32, align: 32, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !155, file: !26, line: 40, baseType: !81, size: 32, align: 32, offset: 160)
!161 = !DILocation(line: 565, column: 18, scope: !25)
!162 = !DILocation(line: 578, column: 11, scope: !25)
!163 = !DILocation(line: 578, column: 9, scope: !25)
!164 = !DILocation(line: 579, column: 12, scope: !25)
!165 = !DILocation(line: 579, column: 10, scope: !25)
!166 = !DILocation(line: 581, column: 17, scope: !25)
!167 = !DILocation(line: 581, column: 4, scope: !25)
!168 = !DILocation(line: 581, column: 11, scope: !25)
!169 = !DILocation(line: 581, column: 15, scope: !25)
!170 = !DILocation(line: 585, column: 4, scope: !25)
!171 = !DILocation(line: 585, column: 10, scope: !25)
!172 = !DILocation(line: 585, column: 20, scope: !25)
!173 = !DILocation(line: 587, column: 4, scope: !25)
!174 = !DILocation(line: 587, column: 10, scope: !25)
!175 = !DILocation(line: 587, column: 21, scope: !25)
!176 = !DILocation(line: 589, column: 21, scope: !25)
!177 = !DILocation(line: 589, column: 4, scope: !25)
!178 = !DILocation(line: 589, column: 10, scope: !25)
!179 = !DILocation(line: 589, column: 19, scope: !25)
!180 = !DILocation(line: 590, column: 4, scope: !25)
!181 = !DILocation(line: 590, column: 10, scope: !25)
!182 = !DILocation(line: 590, column: 16, scope: !25)
!183 = !DILocation(line: 592, column: 11, scope: !25)
!184 = !DILocation(line: 592, column: 4, scope: !25)
!185 = distinct !DISubprogram(name: "VSockChannelStart", scope: !26, file: !26, line: 342, type: !42, isLocal: true, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!186 = !DILocalVariable(name: "chan", arg: 1, scope: !185, file: !26, line: 342, type: !29)
!187 = !DILocation(line: 342, column: 31, scope: !185)
!188 = !DILocalVariable(name: "ret", scope: !185, file: !26, line: 344, type: !44)
!189 = !DILocation(line: 344, column: 13, scope: !185)
!190 = !DILocalVariable(name: "vsock", scope: !185, file: !26, line: 345, type: !148)
!191 = !DILocation(line: 345, column: 18, scope: !185)
!192 = !DILocation(line: 345, column: 26, scope: !185)
!193 = !DILocation(line: 345, column: 32, scope: !185)
!194 = !DILocation(line: 348, column: 10, scope: !185)
!195 = !DILocation(line: 348, column: 16, scope: !185)
!196 = !DILocation(line: 348, column: 19, scope: !185)
!197 = !DILocation(line: 348, column: 26, scope: !185)
!198 = !DILocation(line: 348, column: 29, scope: !199)
!199 = !DILexicalBlockFile(scope: !185, file: !26, discriminator: 1)
!200 = !DILocation(line: 348, column: 35, scope: !199)
!201 = !DILocation(line: 348, column: 26, scope: !199)
!202 = !DILocation(line: 348, column: 26, scope: !203)
!203 = !DILexicalBlockFile(scope: !185, file: !26, discriminator: 2)
!204 = !DILocation(line: 348, column: 8, scope: !203)
!205 = !DILocation(line: 351, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !185, file: !26, line: 351, column: 8)
!207 = !DILocation(line: 351, column: 8, scope: !185)
!208 = !DILocation(line: 352, column: 27, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !26, line: 351, column: 13)
!210 = !DILocation(line: 352, column: 34, scope: !209)
!211 = !DILocation(line: 352, column: 13, scope: !209)
!212 = !DILocation(line: 352, column: 11, scope: !209)
!213 = !DILocation(line: 353, column: 4, scope: !209)
!214 = !DILocation(line: 354, column: 23, scope: !185)
!215 = !DILocation(line: 354, column: 4, scope: !185)
!216 = !DILocation(line: 354, column: 10, scope: !185)
!217 = !DILocation(line: 354, column: 21, scope: !185)
!218 = !DILocation(line: 356, column: 11, scope: !185)
!219 = !DILocation(line: 356, column: 4, scope: !185)
!220 = distinct !DISubprogram(name: "VSockChannelStop", scope: !26, file: !26, line: 378, type: !49, isLocal: true, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!221 = !DILocalVariable(name: "chan", arg: 1, scope: !220, file: !26, line: 378, type: !29)
!222 = !DILocation(line: 378, column: 30, scope: !220)
!223 = !DILocalVariable(name: "vsock", scope: !220, file: !26, line: 380, type: !148)
!224 = !DILocation(line: 380, column: 18, scope: !220)
!225 = !DILocation(line: 380, column: 26, scope: !220)
!226 = !DILocation(line: 380, column: 32, scope: !220)
!227 = !DILocation(line: 382, column: 8, scope: !228)
!228 = distinct !DILexicalBlock(scope: !220, file: !26, line: 382, column: 8)
!229 = !DILocation(line: 382, column: 15, scope: !228)
!230 = !DILocation(line: 382, column: 19, scope: !228)
!231 = !DILocation(line: 382, column: 8, scope: !220)
!232 = !DILocation(line: 383, column: 11, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !26, line: 383, column: 11)
!234 = distinct !DILexicalBlock(scope: !228, file: !26, line: 382, column: 27)
!235 = !DILocation(line: 383, column: 17, scope: !233)
!236 = !DILocation(line: 383, column: 11, scope: !234)
!237 = !DILocation(line: 384, column: 23, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !26, line: 383, column: 29)
!239 = !DILocation(line: 384, column: 30, scope: !238)
!240 = !DILocation(line: 384, column: 10, scope: !238)
!241 = !DILocation(line: 385, column: 7, scope: !238)
!242 = !DILocation(line: 386, column: 7, scope: !234)
!243 = !DILocation(line: 386, column: 13, scope: !234)
!244 = !DILocation(line: 386, column: 24, scope: !234)
!245 = !DILocation(line: 387, column: 4, scope: !234)
!246 = !DILocation(line: 390, column: 1, scope: !220)
!247 = distinct !DISubprogram(name: "VSockChannelSend", scope: !26, file: !26, line: 445, type: !53, isLocal: true, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!248 = !DILocalVariable(name: "chan", arg: 1, scope: !247, file: !26, line: 445, type: !29)
!249 = !DILocation(line: 445, column: 30, scope: !247)
!250 = !DILocalVariable(name: "data", arg: 2, scope: !247, file: !26, line: 446, type: !55)
!251 = !DILocation(line: 446, column: 30, scope: !247)
!252 = !DILocalVariable(name: "dataLen", arg: 3, scope: !247, file: !26, line: 447, type: !58)
!253 = !DILocation(line: 447, column: 25, scope: !247)
!254 = !DILocalVariable(name: "rpcStatus", arg: 4, scope: !247, file: !26, line: 448, type: !61)
!255 = !DILocation(line: 448, column: 24, scope: !247)
!256 = !DILocalVariable(name: "result", arg: 5, scope: !247, file: !26, line: 449, type: !64)
!257 = !DILocation(line: 449, column: 25, scope: !247)
!258 = !DILocalVariable(name: "resultLen", arg: 6, scope: !247, file: !26, line: 450, type: !66)
!259 = !DILocation(line: 450, column: 26, scope: !247)
!260 = !DILocalVariable(name: "ret", scope: !247, file: !26, line: 452, type: !44)
!261 = !DILocation(line: 452, column: 13, scope: !247)
!262 = !DILocalVariable(name: "vsock", scope: !247, file: !26, line: 453, type: !148)
!263 = !DILocation(line: 453, column: 18, scope: !247)
!264 = !DILocation(line: 453, column: 26, scope: !247)
!265 = !DILocation(line: 453, column: 32, scope: !247)
!266 = !DILocalVariable(name: "reply", scope: !247, file: !26, line: 454, type: !55)
!267 = !DILocation(line: 454, column: 16, scope: !247)
!268 = !DILocalVariable(name: "replyLen", scope: !247, file: !26, line: 455, type: !58)
!269 = !DILocation(line: 455, column: 11, scope: !247)
!270 = !DILocation(line: 457, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !247, file: !26, line: 457, column: 8)
!272 = !DILocation(line: 457, column: 15, scope: !271)
!273 = !DILocation(line: 457, column: 8, scope: !247)
!274 = !DILocation(line: 458, column: 7, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !26, line: 457, column: 27)
!276 = !DILocation(line: 465, column: 23, scope: !247)
!277 = !DILocation(line: 465, column: 30, scope: !247)
!278 = !DILocation(line: 465, column: 35, scope: !247)
!279 = !DILocation(line: 465, column: 41, scope: !247)
!280 = !DILocation(line: 465, column: 50, scope: !247)
!281 = !DILocation(line: 465, column: 10, scope: !247)
!282 = !DILocation(line: 465, column: 8, scope: !247)
!283 = !DILocation(line: 467, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !247, file: !26, line: 467, column: 8)
!285 = !DILocation(line: 467, column: 15, scope: !284)
!286 = !DILocation(line: 467, column: 8, scope: !247)
!287 = !DILocation(line: 468, column: 11, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !26, line: 468, column: 11)
!289 = distinct !DILexicalBlock(scope: !284, file: !26, line: 467, column: 23)
!290 = !DILocation(line: 468, column: 17, scope: !288)
!291 = !DILocation(line: 468, column: 11, scope: !289)
!292 = !DILocation(line: 469, column: 37, scope: !293)
!293 = distinct !DILexicalBlock(scope: !288, file: !26, line: 468, column: 25)
!294 = !DILocation(line: 469, column: 46, scope: !293)
!295 = !DILocation(line: 469, column: 20, scope: !293)
!296 = !DILocation(line: 469, column: 11, scope: !293)
!297 = !DILocation(line: 469, column: 18, scope: !293)
!298 = !DILocation(line: 470, column: 18, scope: !293)
!299 = !DILocation(line: 470, column: 17, scope: !293)
!300 = !DILocation(line: 470, column: 26, scope: !293)
!301 = !DILocation(line: 470, column: 33, scope: !293)
!302 = !DILocation(line: 470, column: 10, scope: !293)
!303 = !DILocation(line: 471, column: 20, scope: !293)
!304 = !DILocation(line: 471, column: 12, scope: !293)
!305 = !DILocation(line: 471, column: 11, scope: !293)
!306 = !DILocation(line: 471, column: 10, scope: !293)
!307 = !DILocation(line: 471, column: 30, scope: !293)
!308 = !DILocation(line: 472, column: 7, scope: !293)
!309 = !DILocation(line: 473, column: 11, scope: !310)
!310 = distinct !DILexicalBlock(scope: !288, file: !26, line: 472, column: 14)
!311 = !DILocation(line: 473, column: 18, scope: !310)
!312 = !DILocation(line: 475, column: 4, scope: !289)
!313 = !DILocation(line: 477, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !247, file: !26, line: 477, column: 8)
!315 = !DILocation(line: 477, column: 18, scope: !314)
!316 = !DILocation(line: 477, column: 8, scope: !247)
!317 = !DILocation(line: 478, column: 20, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !26, line: 477, column: 26)
!319 = !DILocation(line: 478, column: 8, scope: !318)
!320 = !DILocation(line: 478, column: 18, scope: !318)
!321 = !DILocation(line: 479, column: 4, scope: !318)
!322 = !DILocation(line: 477, column: 30, scope: !323)
!323 = !DILexicalBlockFile(scope: !314, file: !26, discriminator: 1)
!324 = !DILocation(line: 482, column: 11, scope: !247)
!325 = !DILocation(line: 482, column: 4, scope: !247)
!326 = distinct !DISubprogram(name: "VSockChannelShutdown", scope: !26, file: !26, line: 410, type: !49, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!327 = !DILocalVariable(name: "chan", arg: 1, scope: !326, file: !26, line: 410, type: !29)
!328 = !DILocation(line: 410, column: 34, scope: !326)
!329 = !DILocalVariable(name: "vsock", scope: !326, file: !26, line: 412, type: !148)
!330 = !DILocation(line: 412, column: 18, scope: !326)
!331 = !DILocation(line: 412, column: 26, scope: !326)
!332 = !DILocation(line: 412, column: 32, scope: !326)
!333 = !DILocation(line: 414, column: 21, scope: !326)
!334 = !DILocation(line: 414, column: 4, scope: !326)
!335 = !DILocation(line: 415, column: 21, scope: !326)
!336 = !DILocation(line: 415, column: 28, scope: !326)
!337 = !DILocation(line: 415, column: 4, scope: !326)
!338 = !DILocation(line: 416, column: 11, scope: !326)
!339 = !DILocation(line: 416, column: 4, scope: !326)
!340 = !DILocation(line: 417, column: 4, scope: !326)
!341 = !DILocation(line: 417, column: 10, scope: !326)
!342 = !DILocation(line: 417, column: 19, scope: !326)
!343 = !DILocation(line: 418, column: 1, scope: !326)
!344 = distinct !DISubprogram(name: "VSockChannelGetType", scope: !26, file: !26, line: 503, type: !79, isLocal: true, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!345 = !DILocalVariable(name: "chan", arg: 1, scope: !344, file: !26, line: 503, type: !29)
!346 = !DILocation(line: 503, column: 33, scope: !344)
!347 = !DILocalVariable(name: "vsock", scope: !344, file: !26, line: 505, type: !148)
!348 = !DILocation(line: 505, column: 18, scope: !344)
!349 = !DILocation(line: 505, column: 26, scope: !344)
!350 = !DILocation(line: 505, column: 32, scope: !344)
!351 = !DILocation(line: 507, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !344, file: !26, line: 507, column: 8)
!353 = !DILocation(line: 507, column: 15, scope: !352)
!354 = !DILocation(line: 507, column: 19, scope: !352)
!355 = !DILocation(line: 507, column: 8, scope: !344)
!356 = !DILocation(line: 508, column: 14, scope: !357)
!357 = distinct !DILexicalBlock(scope: !352, file: !26, line: 507, column: 27)
!358 = !DILocation(line: 508, column: 21, scope: !357)
!359 = !DILocation(line: 508, column: 26, scope: !357)
!360 = !DILocation(line: 508, column: 7, scope: !357)
!361 = !DILocation(line: 510, column: 7, scope: !362)
!362 = distinct !DILexicalBlock(scope: !352, file: !26, line: 509, column: 11)
!363 = !DILocation(line: 512, column: 1, scope: !344)
!364 = distinct !DISubprogram(name: "VSockChannelOnStartErr", scope: !26, file: !26, line: 315, type: !49, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!365 = !DILocalVariable(name: "chan", arg: 1, scope: !364, file: !26, line: 315, type: !29)
!366 = !DILocation(line: 315, column: 36, scope: !364)
!367 = !DILocalVariable(name: "vsock", scope: !364, file: !26, line: 317, type: !148)
!368 = !DILocation(line: 317, column: 18, scope: !364)
!369 = !DILocation(line: 317, column: 26, scope: !364)
!370 = !DILocation(line: 317, column: 32, scope: !364)
!371 = !DILocation(line: 320, column: 21, scope: !364)
!372 = !DILocation(line: 320, column: 28, scope: !364)
!373 = !DILocation(line: 320, column: 4, scope: !364)
!374 = !DILocation(line: 321, column: 4, scope: !364)
!375 = !DILocation(line: 321, column: 10, scope: !364)
!376 = !DILocation(line: 321, column: 19, scope: !364)
!377 = !DILocation(line: 322, column: 1, scope: !364)
!378 = distinct !DISubprogram(name: "VSockChannelStopRpcOut", scope: !26, file: !26, line: 532, type: !42, isLocal: true, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!379 = !DILocalVariable(name: "chan", arg: 1, scope: !378, file: !26, line: 532, type: !29)
!380 = !DILocation(line: 532, column: 36, scope: !378)
!381 = !DILocalVariable(name: "vsock", scope: !378, file: !26, line: 534, type: !148)
!382 = !DILocation(line: 534, column: 18, scope: !378)
!383 = !DILocation(line: 534, column: 26, scope: !378)
!384 = !DILocation(line: 534, column: 32, scope: !378)
!385 = !DILocation(line: 535, column: 17, scope: !378)
!386 = !DILocation(line: 535, column: 24, scope: !378)
!387 = !DILocation(line: 535, column: 4, scope: !378)
!388 = !DILocation(line: 536, column: 4, scope: !378)
!389 = !DILocation(line: 536, column: 10, scope: !378)
!390 = !DILocation(line: 536, column: 21, scope: !378)
!391 = !DILocation(line: 538, column: 4, scope: !378)
!392 = distinct !DISubprogram(name: "VSockOutConstruct", scope: !26, file: !26, line: 119, type: !393, isLocal: true, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!393 = !DISubroutineType(types: !394)
!394 = !{!153}
!395 = !DILocalVariable(name: "out", scope: !392, file: !26, line: 121, type: !153)
!396 = !DILocation(line: 121, column: 14, scope: !392)
!397 = !DILocation(line: 121, column: 20, scope: !392)
!398 = !DILocation(line: 123, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !392, file: !26, line: 123, column: 8)
!400 = !DILocation(line: 123, column: 12, scope: !399)
!401 = !DILocation(line: 123, column: 8, scope: !392)
!402 = !DILocation(line: 124, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !26, line: 123, column: 20)
!404 = !DILocation(line: 124, column: 12, scope: !403)
!405 = !DILocation(line: 124, column: 15, scope: !403)
!406 = !DILocation(line: 125, column: 7, scope: !403)
!407 = !DILocation(line: 125, column: 12, scope: !403)
!408 = !DILocation(line: 125, column: 17, scope: !403)
!409 = !DILocation(line: 126, column: 4, scope: !403)
!410 = !DILocation(line: 127, column: 11, scope: !392)
!411 = !DILocation(line: 127, column: 4, scope: !392)
!412 = distinct !DISubprogram(name: "VSockOutStart", scope: !26, file: !26, line: 177, type: !413, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!413 = !DISubroutineType(types: !414)
!414 = !{!44, !153}
!415 = !DILocalVariable(name: "out", arg: 1, scope: !412, file: !26, line: 177, type: !153)
!416 = !DILocation(line: 177, column: 25, scope: !412)
!417 = !DILocalVariable(name: "isPriv", scope: !412, file: !26, line: 179, type: !44)
!418 = !DILocation(line: 179, column: 13, scope: !412)
!419 = !DILocation(line: 184, column: 14, scope: !412)
!420 = !DILocation(line: 184, column: 4, scope: !412)
!421 = !DILocation(line: 184, column: 9, scope: !412)
!422 = !DILocation(line: 184, column: 12, scope: !412)
!423 = !DILocation(line: 185, column: 8, scope: !424)
!424 = distinct !DILexicalBlock(scope: !412, file: !26, line: 185, column: 8)
!425 = !DILocation(line: 185, column: 13, scope: !424)
!426 = !DILocation(line: 185, column: 16, scope: !424)
!427 = !DILocation(line: 185, column: 8, scope: !412)
!428 = !DILocation(line: 186, column: 19, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !26, line: 185, column: 34)
!430 = !DILocation(line: 186, column: 7, scope: !429)
!431 = !DILocation(line: 186, column: 12, scope: !429)
!432 = !DILocation(line: 186, column: 17, scope: !429)
!433 = !DILocation(line: 188, column: 4, scope: !429)
!434 = !DILocation(line: 189, column: 11, scope: !412)
!435 = !DILocation(line: 189, column: 16, scope: !412)
!436 = !DILocation(line: 189, column: 19, scope: !412)
!437 = !DILocation(line: 189, column: 4, scope: !412)
!438 = distinct !DISubprogram(name: "VSockCreateConn", scope: !26, file: !26, line: 68, type: !439, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!439 = !DISubroutineType(types: !440)
!440 = !{!21, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!442 = !DILocalVariable(name: "isPriv", arg: 1, scope: !438, file: !26, line: 68, type: !441)
!443 = !DILocation(line: 68, column: 27, scope: !438)
!444 = !DILocalVariable(name: "apiErr", scope: !438, file: !26, line: 70, type: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "ApiError", file: !11, line: 48, baseType: !10)
!446 = !DILocation(line: 70, column: 13, scope: !438)
!447 = !DILocalVariable(name: "sysErr", scope: !438, file: !26, line: 71, type: !22)
!448 = !DILocation(line: 71, column: 8, scope: !438)
!449 = !DILocalVariable(name: "fd", scope: !438, file: !26, line: 72, type: !21)
!450 = !DILocation(line: 72, column: 11, scope: !438)
!451 = !DILocation(line: 74, column: 4, scope: !438)
!452 = !DILocation(line: 75, column: 9, scope: !438)
!453 = !DILocation(line: 75, column: 7, scope: !438)
!454 = !DILocation(line: 79, column: 8, scope: !455)
!455 = distinct !DILexicalBlock(scope: !438, file: !26, line: 79, column: 8)
!456 = !DILocation(line: 79, column: 11, scope: !455)
!457 = !DILocation(line: 79, column: 8, scope: !438)
!458 = !DILocation(line: 80, column: 69, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !26, line: 79, column: 29)
!460 = !DILocation(line: 80, column: 7, scope: !459)
!461 = !DILocation(line: 81, column: 8, scope: !459)
!462 = !DILocation(line: 81, column: 15, scope: !459)
!463 = !DILocation(line: 82, column: 14, scope: !459)
!464 = !DILocation(line: 82, column: 7, scope: !459)
!465 = !DILocation(line: 85, column: 8, scope: !466)
!466 = distinct !DILexicalBlock(scope: !438, file: !26, line: 85, column: 8)
!467 = !DILocation(line: 85, column: 15, scope: !466)
!468 = !DILocation(line: 85, column: 31, scope: !466)
!469 = !DILocation(line: 85, column: 34, scope: !470)
!470 = !DILexicalBlockFile(scope: !466, file: !26, discriminator: 1)
!471 = !DILocation(line: 85, column: 41, scope: !470)
!472 = !DILocation(line: 85, column: 8, scope: !470)
!473 = !DILocation(line: 86, column: 7, scope: !474)
!474 = distinct !DILexicalBlock(scope: !466, file: !26, line: 85, column: 59)
!475 = !DILocation(line: 87, column: 12, scope: !474)
!476 = !DILocation(line: 87, column: 10, scope: !474)
!477 = !DILocation(line: 90, column: 11, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !26, line: 90, column: 11)
!479 = !DILocation(line: 90, column: 14, scope: !478)
!480 = !DILocation(line: 90, column: 11, scope: !474)
!481 = !DILocation(line: 91, column: 74, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !26, line: 90, column: 32)
!483 = !DILocation(line: 91, column: 10, scope: !482)
!484 = !DILocation(line: 92, column: 11, scope: !482)
!485 = !DILocation(line: 92, column: 18, scope: !482)
!486 = !DILocation(line: 93, column: 17, scope: !482)
!487 = !DILocation(line: 93, column: 10, scope: !482)
!488 = !DILocation(line: 95, column: 4, scope: !474)
!489 = !DILocation(line: 97, column: 70, scope: !438)
!490 = !DILocation(line: 97, column: 78, scope: !438)
!491 = !DILocation(line: 97, column: 4, scope: !438)
!492 = !DILocation(line: 98, column: 4, scope: !438)
!493 = !DILocation(line: 99, column: 1, scope: !438)
!494 = distinct !DISubprogram(name: "VSockOutStop", scope: !26, file: !26, line: 210, type: !495, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !153}
!497 = !DILocalVariable(name: "out", arg: 1, scope: !494, file: !26, line: 210, type: !153)
!498 = !DILocation(line: 210, column: 24, scope: !494)
!499 = !DILocation(line: 214, column: 8, scope: !500)
!500 = distinct !DILexicalBlock(scope: !494, file: !26, line: 214, column: 8)
!501 = !DILocation(line: 214, column: 13, scope: !500)
!502 = !DILocation(line: 214, column: 16, scope: !500)
!503 = !DILocation(line: 214, column: 8, scope: !494)
!504 = !DILocation(line: 215, column: 20, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !26, line: 214, column: 34)
!506 = !DILocation(line: 215, column: 25, scope: !505)
!507 = !DILocation(line: 215, column: 7, scope: !505)
!508 = !DILocation(line: 216, column: 7, scope: !505)
!509 = !DILocation(line: 216, column: 12, scope: !505)
!510 = !DILocation(line: 216, column: 15, scope: !505)
!511 = !DILocation(line: 217, column: 4, scope: !505)
!512 = !DILocation(line: 218, column: 1, scope: !494)
!513 = distinct !DISubprogram(name: "VSockOutSend", scope: !26, file: !26, line: 247, type: !514, isLocal: true, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!514 = !DISubroutineType(types: !515)
!515 = !{!44, !153, !55, !58, !61, !516, !66}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!517 = !DILocalVariable(name: "out", arg: 1, scope: !513, file: !26, line: 247, type: !153)
!518 = !DILocation(line: 247, column: 24, scope: !513)
!519 = !DILocalVariable(name: "request", arg: 2, scope: !513, file: !26, line: 248, type: !55)
!520 = !DILocation(line: 248, column: 26, scope: !513)
!521 = !DILocalVariable(name: "reqLen", arg: 3, scope: !513, file: !26, line: 249, type: !58)
!522 = !DILocation(line: 249, column: 21, scope: !513)
!523 = !DILocalVariable(name: "rpcStatus", arg: 4, scope: !513, file: !26, line: 250, type: !61)
!524 = !DILocation(line: 250, column: 20, scope: !513)
!525 = !DILocalVariable(name: "reply", arg: 5, scope: !513, file: !26, line: 251, type: !516)
!526 = !DILocation(line: 251, column: 27, scope: !513)
!527 = !DILocalVariable(name: "repLen", arg: 6, scope: !513, file: !26, line: 252, type: !66)
!528 = !DILocation(line: 252, column: 22, scope: !513)
!529 = !DILocation(line: 257, column: 5, scope: !513)
!530 = !DILocation(line: 257, column: 11, scope: !513)
!531 = !DILocation(line: 258, column: 5, scope: !513)
!532 = !DILocation(line: 258, column: 12, scope: !513)
!533 = !DILocation(line: 261, column: 10, scope: !513)
!534 = !DILocation(line: 261, column: 15, scope: !513)
!535 = !DILocation(line: 261, column: 24, scope: !513)
!536 = !DILocation(line: 261, column: 19, scope: !513)
!537 = !DILocation(line: 260, column: 4, scope: !513)
!538 = !DILocation(line: 263, column: 27, scope: !539)
!539 = distinct !DILexicalBlock(scope: !513, file: !26, line: 263, column: 8)
!540 = !DILocation(line: 263, column: 32, scope: !539)
!541 = !DILocation(line: 263, column: 36, scope: !539)
!542 = !DILocation(line: 263, column: 45, scope: !539)
!543 = !DILocation(line: 263, column: 9, scope: !539)
!544 = !DILocation(line: 263, column: 8, scope: !513)
!545 = !DILocation(line: 264, column: 8, scope: !546)
!546 = distinct !DILexicalBlock(scope: !539, file: !26, line: 263, column: 54)
!547 = !DILocation(line: 264, column: 14, scope: !546)
!548 = !DILocation(line: 265, column: 1, scope: !546)
!549 = !DILocation(line: 266, column: 7, scope: !546)
!550 = !DILocation(line: 269, column: 9, scope: !513)
!551 = !DILocation(line: 269, column: 14, scope: !513)
!552 = !DILocation(line: 269, column: 4, scope: !513)
!553 = !DILocation(line: 270, column: 4, scope: !513)
!554 = !DILocation(line: 270, column: 9, scope: !513)
!555 = !DILocation(line: 270, column: 17, scope: !513)
!556 = !DILocation(line: 271, column: 27, scope: !557)
!557 = distinct !DILexicalBlock(scope: !513, file: !26, line: 271, column: 8)
!558 = !DILocation(line: 271, column: 32, scope: !557)
!559 = !DILocation(line: 271, column: 37, scope: !557)
!560 = !DILocation(line: 271, column: 42, scope: !557)
!561 = !DILocation(line: 271, column: 52, scope: !557)
!562 = !DILocation(line: 271, column: 57, scope: !557)
!563 = !DILocation(line: 271, column: 9, scope: !557)
!564 = !DILocation(line: 271, column: 8, scope: !513)
!565 = !DILocation(line: 272, column: 8, scope: !566)
!566 = distinct !DILexicalBlock(scope: !557, file: !26, line: 271, column: 70)
!567 = !DILocation(line: 272, column: 14, scope: !566)
!568 = !DILocation(line: 273, column: 1, scope: !566)
!569 = !DILocation(line: 274, column: 7, scope: !566)
!570 = !DILocation(line: 277, column: 8, scope: !571)
!571 = distinct !DILexicalBlock(scope: !513, file: !26, line: 277, column: 8)
!572 = !DILocation(line: 277, column: 13, scope: !571)
!573 = !DILocation(line: 277, column: 24, scope: !571)
!574 = !DILocation(line: 277, column: 28, scope: !571)
!575 = !DILocation(line: 278, column: 10, scope: !571)
!576 = !DILocation(line: 278, column: 15, scope: !571)
!577 = !DILocation(line: 278, column: 26, scope: !571)
!578 = !DILocation(line: 278, column: 34, scope: !571)
!579 = !DILocation(line: 278, column: 38, scope: !580)
!580 = !DILexicalBlockFile(scope: !571, file: !26, discriminator: 1)
!581 = !DILocation(line: 278, column: 43, scope: !580)
!582 = !DILocation(line: 278, column: 54, scope: !580)
!583 = !DILocation(line: 278, column: 63, scope: !580)
!584 = !DILocation(line: 279, column: 8, scope: !571)
!585 = !DILocation(line: 279, column: 13, scope: !571)
!586 = !DILocation(line: 279, column: 24, scope: !571)
!587 = !DILocation(line: 277, column: 8, scope: !588)
!588 = !DILexicalBlockFile(scope: !513, file: !26, discriminator: 1)
!589 = !DILocation(line: 280, column: 8, scope: !590)
!590 = distinct !DILexicalBlock(scope: !571, file: !26, line: 279, column: 32)
!591 = !DILocation(line: 280, column: 14, scope: !590)
!592 = !DILocation(line: 281, column: 1, scope: !590)
!593 = !DILocation(line: 282, column: 7, scope: !590)
!594 = !DILocation(line: 285, column: 13, scope: !513)
!595 = !DILocation(line: 285, column: 18, scope: !513)
!596 = !DILocation(line: 285, column: 26, scope: !513)
!597 = !DILocation(line: 285, column: 5, scope: !513)
!598 = !DILocation(line: 285, column: 11, scope: !513)
!599 = !DILocation(line: 286, column: 14, scope: !513)
!600 = !DILocation(line: 286, column: 19, scope: !513)
!601 = !DILocation(line: 286, column: 30, scope: !513)
!602 = !DILocation(line: 286, column: 5, scope: !513)
!603 = !DILocation(line: 286, column: 12, scope: !513)
!604 = !DILocation(line: 288, column: 53, scope: !513)
!605 = !DILocation(line: 288, column: 58, scope: !513)
!606 = !DILocation(line: 288, column: 70, scope: !513)
!607 = !DILocation(line: 288, column: 75, scope: !513)
!608 = !DILocation(line: 288, column: 4, scope: !513)
!609 = !DILocation(line: 290, column: 17, scope: !513)
!610 = !DILocation(line: 290, column: 22, scope: !513)
!611 = !DILocation(line: 290, column: 33, scope: !513)
!612 = !DILocation(line: 290, column: 5, scope: !513)
!613 = !DILocation(line: 290, column: 15, scope: !513)
!614 = !DILocation(line: 291, column: 4, scope: !513)
!615 = !DILocation(line: 294, column: 22, scope: !513)
!616 = !DILocation(line: 294, column: 21, scope: !513)
!617 = !DILocation(line: 294, column: 14, scope: !513)
!618 = !DILocation(line: 294, column: 5, scope: !513)
!619 = !DILocation(line: 294, column: 12, scope: !513)
!620 = !DILocation(line: 295, column: 5, scope: !513)
!621 = !DILocation(line: 295, column: 15, scope: !513)
!622 = !DILocation(line: 296, column: 4, scope: !513)
!623 = !DILocation(line: 297, column: 1, scope: !513)
!624 = distinct !DISubprogram(name: "VSockOutDestruct", scope: !26, file: !26, line: 148, type: !495, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!625 = !DILocalVariable(name: "out", arg: 1, scope: !624, file: !26, line: 148, type: !153)
!626 = !DILocation(line: 148, column: 28, scope: !624)
!627 = !DILocation(line: 154, column: 9, scope: !624)
!628 = !DILocation(line: 154, column: 14, scope: !624)
!629 = !DILocation(line: 154, column: 4, scope: !624)
!630 = !DILocation(line: 155, column: 9, scope: !624)
!631 = !DILocation(line: 155, column: 4, scope: !624)
!632 = !DILocation(line: 156, column: 1, scope: !624)
