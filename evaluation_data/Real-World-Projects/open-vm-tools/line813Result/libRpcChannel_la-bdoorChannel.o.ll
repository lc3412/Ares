; ModuleID = './libRpcChannel_la-bdoorChannel.o.i'
source_filename = "./libRpcChannel_la-bdoorChannel.o.i"
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
%struct.BackdoorChannel = type { %struct.RpcOut* }
%struct.RpcOut = type opaque

@BackdoorChannelSetCallbacks.funcs = internal global %struct._RpcChannelFuncs { i32 (%struct._RpcChannel*)* @BkdoorChannelStart, void (%struct._RpcChannel*)* @BkdoorChannelStop, i32 (%struct._RpcChannel*, i8*, i64, i8*, i8**, i64*)* @BkdoorChannelSend, void (%struct._RpcChannel*, %struct._GMainContext*, i8*, i8*)* null, void (%struct._RpcChannel*)* @BkdoorChannelShutdown, i32 (%struct._RpcChannel*)* @BkdoorChannelGetType, void (%struct._RpcChannel*)* null, i32 (%struct._RpcChannel*)* null }, align 8
@.str = private unnamed_addr constant [37 x i8] c"RpcOut failure, restarting channel.\0A\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"Couldn't restart RpcOut channel; bad things may happen until the RPC channel is reset.\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct._RpcChannel* @BackdoorChannel_New() #0 !dbg !132 {
  %1 = alloca %struct._RpcChannel*, align 8
  %2 = alloca %struct.BackdoorChannel*, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %1, metadata !135, metadata !136), !dbg !137
  call void @llvm.dbg.declare(metadata %struct.BackdoorChannel** %2, metadata !138, metadata !136), !dbg !148
  %3 = call %struct._RpcChannel* @RpcChannel_Create(), !dbg !149
  store %struct._RpcChannel* %3, %struct._RpcChannel** %1, align 8, !dbg !150
  %4 = call noalias i8* @g_malloc0(i64 8), !dbg !151
  %5 = bitcast i8* %4 to %struct.BackdoorChannel*, !dbg !151
  store %struct.BackdoorChannel* %5, %struct.BackdoorChannel** %2, align 8, !dbg !152
  %6 = call %struct.RpcOut* @RpcOut_Construct(), !dbg !153
  %7 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %2, align 8, !dbg !154
  %8 = getelementptr inbounds %struct.BackdoorChannel, %struct.BackdoorChannel* %7, i32 0, i32 0, !dbg !155
  store %struct.RpcOut* %6, %struct.RpcOut** %8, align 8, !dbg !156
  %9 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !157
  %10 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %9, i32 0, i32 7, !dbg !158
  store i32 0, i32* %10, align 8, !dbg !159
  %11 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !160
  %12 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %11, i32 0, i32 8, !dbg !161
  store i32 0, i32* %12, align 4, !dbg !162
  %13 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !163
  call void @BackdoorChannelSetCallbacks(%struct._RpcChannel* %13), !dbg !164
  %14 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %2, align 8, !dbg !165
  %15 = bitcast %struct.BackdoorChannel* %14 to i8*, !dbg !165
  %16 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !166
  %17 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %16, i32 0, i32 1, !dbg !167
  store i8* %15, i8** %17, align 8, !dbg !168
  %18 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !169
  ret %struct._RpcChannel* %18, !dbg !170
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._RpcChannel* @RpcChannel_Create() #2

declare noalias i8* @g_malloc0(i64) #2

declare %struct.RpcOut* @RpcOut_Construct() #2

; Function Attrs: nounwind uwtable
define internal void @BackdoorChannelSetCallbacks(%struct._RpcChannel*) #0 !dbg !14 {
  %2 = alloca %struct._RpcChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !171, metadata !136), !dbg !172
  %3 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !173
  %4 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %3, i32 0, i32 0, !dbg !174
  store %struct._RpcChannelFuncs* @BackdoorChannelSetCallbacks.funcs, %struct._RpcChannelFuncs** %4, align 8, !dbg !175
  ret void, !dbg !176
}

; Function Attrs: nounwind uwtable
define i32 @BackdoorChannel_Fallback(%struct._RpcChannel*) #0 !dbg !177 {
  %2 = alloca %struct._RpcChannel*, align 8
  %3 = alloca %struct.BackdoorChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !178, metadata !136), !dbg !179
  call void @llvm.dbg.declare(metadata %struct.BackdoorChannel** %3, metadata !180, metadata !136), !dbg !181
  %4 = call noalias i8* @g_malloc0(i64 8), !dbg !182
  %5 = bitcast i8* %4 to %struct.BackdoorChannel*, !dbg !182
  store %struct.BackdoorChannel* %5, %struct.BackdoorChannel** %3, align 8, !dbg !183
  %6 = call %struct.RpcOut* @RpcOut_Construct(), !dbg !184
  %7 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %3, align 8, !dbg !185
  %8 = getelementptr inbounds %struct.BackdoorChannel, %struct.BackdoorChannel* %7, i32 0, i32 0, !dbg !186
  store %struct.RpcOut* %6, %struct.RpcOut** %8, align 8, !dbg !187
  %9 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !188
  call void @BackdoorChannelSetCallbacks(%struct._RpcChannel* %9), !dbg !189
  %10 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %3, align 8, !dbg !190
  %11 = bitcast %struct.BackdoorChannel* %10 to i8*, !dbg !190
  %12 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !191
  %13 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %12, i32 0, i32 1, !dbg !192
  store i8* %11, i8** %13, align 8, !dbg !193
  %14 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !194
  %15 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %14, i32 0, i32 0, !dbg !195
  %16 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %15, align 8, !dbg !195
  %17 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %16, i32 0, i32 0, !dbg !196
  %18 = load i32 (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*)** %17, align 8, !dbg !196
  %19 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !197
  %20 = call i32 %18(%struct._RpcChannel* %19), !dbg !194
  ret i32 %20, !dbg !198
}

; Function Attrs: nounwind uwtable
define internal i32 @BkdoorChannelStart(%struct._RpcChannel*) #0 !dbg !199 {
  %2 = alloca %struct._RpcChannel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.BackdoorChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !200, metadata !136), !dbg !201
  call void @llvm.dbg.declare(metadata i32* %3, metadata !202, metadata !136), !dbg !203
  store i32 1, i32* %3, align 4, !dbg !203
  call void @llvm.dbg.declare(metadata %struct.BackdoorChannel** %4, metadata !204, metadata !136), !dbg !205
  %5 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !206
  %6 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %5, i32 0, i32 1, !dbg !207
  %7 = load i8*, i8** %6, align 8, !dbg !207
  %8 = bitcast i8* %7 to %struct.BackdoorChannel*, !dbg !206
  store %struct.BackdoorChannel* %8, %struct.BackdoorChannel** %4, align 8, !dbg !205
  %9 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !208
  %10 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %9, i32 0, i32 6, !dbg !209
  %11 = load %struct.RpcIn*, %struct.RpcIn** %10, align 8, !dbg !209
  %12 = icmp eq %struct.RpcIn* %11, null, !dbg !210
  br i1 %12, label %18, label %13, !dbg !211

; <label>:13:                                     ; preds = %1
  %14 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !212
  %15 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %14, i32 0, i32 7, !dbg !214
  %16 = load i32, i32* %15, align 8, !dbg !214
  %17 = icmp ne i32 %16, 0, !dbg !215
  br label %18, !dbg !215

; <label>:18:                                     ; preds = %13, %1
  %19 = phi i1 [ true, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32, !dbg !216
  store i32 %20, i32* %3, align 4, !dbg !218
  %21 = load i32, i32* %3, align 4, !dbg !219
  %22 = icmp ne i32 %21, 0, !dbg !219
  br i1 %22, label %23, label %44, !dbg !221

; <label>:23:                                     ; preds = %18
  %24 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %4, align 8, !dbg !222
  %25 = getelementptr inbounds %struct.BackdoorChannel, %struct.BackdoorChannel* %24, i32 0, i32 0, !dbg !224
  %26 = load %struct.RpcOut*, %struct.RpcOut** %25, align 8, !dbg !224
  %27 = call signext i8 @RpcOut_start(%struct.RpcOut* %26), !dbg !225
  %28 = sext i8 %27 to i32, !dbg !225
  store i32 %28, i32* %3, align 4, !dbg !226
  %29 = load i32, i32* %3, align 4, !dbg !227
  %30 = icmp ne i32 %29, 0, !dbg !227
  br i1 %30, label %43, label %31, !dbg !229

; <label>:31:                                     ; preds = %23
  %32 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !230
  %33 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %32, i32 0, i32 7, !dbg !233
  %34 = load i32, i32* %33, align 8, !dbg !233
  %35 = icmp ne i32 %34, 0, !dbg !230
  br i1 %35, label %36, label %42, !dbg !234

; <label>:36:                                     ; preds = %31
  %37 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !235
  %38 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %37, i32 0, i32 6, !dbg !237
  %39 = load %struct.RpcIn*, %struct.RpcIn** %38, align 8, !dbg !237
  call void @RpcIn_stop(%struct.RpcIn* %39), !dbg !238
  %40 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !239
  %41 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %40, i32 0, i32 7, !dbg !240
  store i32 0, i32* %41, align 8, !dbg !241
  br label %42, !dbg !242

; <label>:42:                                     ; preds = %36, %31
  br label %43, !dbg !243

; <label>:43:                                     ; preds = %42, %23
  br label %44, !dbg !244

; <label>:44:                                     ; preds = %43, %18
  %45 = load i32, i32* %3, align 4, !dbg !245
  %46 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !246
  %47 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %46, i32 0, i32 8, !dbg !247
  store i32 %45, i32* %47, align 4, !dbg !248
  %48 = load i32, i32* %3, align 4, !dbg !249
  ret i32 %48, !dbg !250
}

; Function Attrs: nounwind uwtable
define internal void @BkdoorChannelStop(%struct._RpcChannel*) #0 !dbg !251 {
  %2 = alloca %struct._RpcChannel*, align 8
  %3 = alloca %struct.BackdoorChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !252, metadata !136), !dbg !253
  call void @llvm.dbg.declare(metadata %struct.BackdoorChannel** %3, metadata !254, metadata !136), !dbg !255
  %4 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !256
  %5 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %4, i32 0, i32 1, !dbg !257
  %6 = load i8*, i8** %5, align 8, !dbg !257
  %7 = bitcast i8* %6 to %struct.BackdoorChannel*, !dbg !256
  store %struct.BackdoorChannel* %7, %struct.BackdoorChannel** %3, align 8, !dbg !255
  %8 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %3, align 8, !dbg !258
  %9 = getelementptr inbounds %struct.BackdoorChannel, %struct.BackdoorChannel* %8, i32 0, i32 0, !dbg !260
  %10 = load %struct.RpcOut*, %struct.RpcOut** %9, align 8, !dbg !260
  %11 = icmp ne %struct.RpcOut* %10, null, !dbg !261
  br i1 %11, label %12, label %25, !dbg !262

; <label>:12:                                     ; preds = %1
  %13 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !263
  %14 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %13, i32 0, i32 8, !dbg !266
  %15 = load i32, i32* %14, align 4, !dbg !266
  %16 = icmp ne i32 %15, 0, !dbg !263
  br i1 %16, label %17, label %22, !dbg !267

; <label>:17:                                     ; preds = %12
  %18 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %3, align 8, !dbg !268
  %19 = getelementptr inbounds %struct.BackdoorChannel, %struct.BackdoorChannel* %18, i32 0, i32 0, !dbg !270
  %20 = load %struct.RpcOut*, %struct.RpcOut** %19, align 8, !dbg !270
  %21 = call signext i8 @RpcOut_stop(%struct.RpcOut* %20), !dbg !271
  br label %22, !dbg !272

; <label>:22:                                     ; preds = %17, %12
  %23 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !273
  %24 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %23, i32 0, i32 8, !dbg !274
  store i32 0, i32* %24, align 4, !dbg !275
  br label %26, !dbg !276

; <label>:25:                                     ; preds = %1
  br label %26

; <label>:26:                                     ; preds = %25, %22
  ret void, !dbg !277
}

; Function Attrs: nounwind uwtable
define internal i32 @BkdoorChannelSend(%struct._RpcChannel*, i8*, i64, i8*, i8**, i64*) #0 !dbg !278 {
  %7 = alloca %struct._RpcChannel*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.BackdoorChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %7, metadata !279, metadata !136), !dbg !280
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !281, metadata !136), !dbg !282
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !283, metadata !136), !dbg !284
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !285, metadata !136), !dbg !286
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !287, metadata !136), !dbg !288
  store i64* %5, i64** %12, align 8
  call void @llvm.dbg.declare(metadata i64** %12, metadata !289, metadata !136), !dbg !290
  call void @llvm.dbg.declare(metadata i32* %13, metadata !291, metadata !136), !dbg !292
  store i32 0, i32* %13, align 4, !dbg !292
  call void @llvm.dbg.declare(metadata i8** %14, metadata !293, metadata !136), !dbg !294
  call void @llvm.dbg.declare(metadata i64* %15, metadata !295, metadata !136), !dbg !296
  call void @llvm.dbg.declare(metadata %struct.BackdoorChannel** %16, metadata !297, metadata !136), !dbg !298
  %17 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !299
  %18 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %17, i32 0, i32 1, !dbg !300
  %19 = load i8*, i8** %18, align 8, !dbg !300
  %20 = bitcast i8* %19 to %struct.BackdoorChannel*, !dbg !299
  store %struct.BackdoorChannel* %20, %struct.BackdoorChannel** %16, align 8, !dbg !298
  %21 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !301
  %22 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %21, i32 0, i32 8, !dbg !303
  %23 = load i32, i32* %22, align 4, !dbg !303
  %24 = icmp ne i32 %23, 0, !dbg !301
  br i1 %24, label %26, label %25, !dbg !304

; <label>:25:                                     ; preds = %6
  br label %89, !dbg !305

; <label>:26:                                     ; preds = %6
  %27 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %16, align 8, !dbg !307
  %28 = getelementptr inbounds %struct.BackdoorChannel, %struct.BackdoorChannel* %27, i32 0, i32 0, !dbg !308
  %29 = load %struct.RpcOut*, %struct.RpcOut** %28, align 8, !dbg !308
  %30 = load i8*, i8** %8, align 8, !dbg !309
  %31 = load i64, i64* %9, align 8, !dbg !310
  %32 = load i8*, i8** %10, align 8, !dbg !311
  %33 = call signext i8 @RpcOut_send(%struct.RpcOut* %29, i8* %30, i64 %31, i8* %32, i8** %14, i64* %15), !dbg !312
  %34 = sext i8 %33 to i32, !dbg !312
  store i32 %34, i32* %13, align 4, !dbg !313
  %35 = load i32, i32* %13, align 4, !dbg !314
  %36 = icmp ne i32 %35, 0, !dbg !314
  br i1 %36, label %60, label %37, !dbg !316

; <label>:37:                                     ; preds = %26
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0)), !dbg !317
  %38 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %16, align 8, !dbg !319
  %39 = getelementptr inbounds %struct.BackdoorChannel, %struct.BackdoorChannel* %38, i32 0, i32 0, !dbg !320
  %40 = load %struct.RpcOut*, %struct.RpcOut** %39, align 8, !dbg !320
  %41 = call signext i8 @RpcOut_stop(%struct.RpcOut* %40), !dbg !321
  %42 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %16, align 8, !dbg !322
  %43 = getelementptr inbounds %struct.BackdoorChannel, %struct.BackdoorChannel* %42, i32 0, i32 0, !dbg !324
  %44 = load %struct.RpcOut*, %struct.RpcOut** %43, align 8, !dbg !324
  %45 = call signext i8 @RpcOut_start(%struct.RpcOut* %44), !dbg !325
  %46 = icmp ne i8 %45, 0, !dbg !325
  br i1 %46, label %47, label %56, !dbg !326

; <label>:47:                                     ; preds = %37
  %48 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %16, align 8, !dbg !327
  %49 = getelementptr inbounds %struct.BackdoorChannel, %struct.BackdoorChannel* %48, i32 0, i32 0, !dbg !329
  %50 = load %struct.RpcOut*, %struct.RpcOut** %49, align 8, !dbg !329
  %51 = load i8*, i8** %8, align 8, !dbg !330
  %52 = load i64, i64* %9, align 8, !dbg !331
  %53 = load i8*, i8** %10, align 8, !dbg !332
  %54 = call signext i8 @RpcOut_send(%struct.RpcOut* %50, i8* %51, i64 %52, i8* %53, i8** %14, i64* %15), !dbg !333
  %55 = sext i8 %54 to i32, !dbg !333
  store i32 %55, i32* %13, align 4, !dbg !334
  br label %59, !dbg !335

; <label>:56:                                     ; preds = %37
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0)), !dbg !336
  %57 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !338
  %58 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %57, i32 0, i32 8, !dbg !339
  store i32 0, i32* %58, align 4, !dbg !340
  br label %59

; <label>:59:                                     ; preds = %56, %47
  br label %60, !dbg !341

; <label>:60:                                     ; preds = %59, %26
  %61 = load i8**, i8*** %11, align 8, !dbg !342
  %62 = icmp ne i8** %61, null, !dbg !344
  br i1 %62, label %63, label %82, !dbg !345

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %14, align 8, !dbg !346
  %65 = icmp ne i8* %64, null, !dbg !349
  br i1 %65, label %66, label %79, !dbg !350

; <label>:66:                                     ; preds = %63
  %67 = load i64, i64* %15, align 8, !dbg !351
  %68 = add i64 %67, 1, !dbg !353
  %69 = call i8* @UtilSafeMalloc0(i64 %68), !dbg !354
  %70 = load i8**, i8*** %11, align 8, !dbg !355
  store i8* %69, i8** %70, align 8, !dbg !356
  %71 = load i8**, i8*** %11, align 8, !dbg !357
  %72 = load i8*, i8** %71, align 8, !dbg !358
  %73 = load i8*, i8** %14, align 8, !dbg !359
  %74 = load i64, i64* %15, align 8, !dbg !360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 %74, i32 1, i1 false), !dbg !361
  %75 = load i64, i64* %15, align 8, !dbg !362
  %76 = load i8**, i8*** %11, align 8, !dbg !363
  %77 = load i8*, i8** %76, align 8, !dbg !364
  %78 = getelementptr inbounds i8, i8* %77, i64 %75, !dbg !365
  store i8 0, i8* %78, align 1, !dbg !366
  br label %81, !dbg !367

; <label>:79:                                     ; preds = %63
  %80 = load i8**, i8*** %11, align 8, !dbg !368
  store i8* null, i8** %80, align 8, !dbg !370
  br label %81

; <label>:81:                                     ; preds = %79, %66
  br label %82, !dbg !371

; <label>:82:                                     ; preds = %81, %60
  %83 = load i64*, i64** %12, align 8, !dbg !372
  %84 = icmp ne i64* %83, null, !dbg !374
  br i1 %84, label %85, label %88, !dbg !375

; <label>:85:                                     ; preds = %82
  %86 = load i64, i64* %15, align 8, !dbg !376
  %87 = load i64*, i64** %12, align 8, !dbg !378
  store i64 %86, i64* %87, align 8, !dbg !379
  br label %88, !dbg !380

; <label>:88:                                     ; preds = %85, %82
  br label %89, !dbg !381

; <label>:89:                                     ; preds = %88, %25
  %90 = load i32, i32* %13, align 4, !dbg !383
  ret i32 %90, !dbg !384
}

; Function Attrs: nounwind uwtable
define internal void @BkdoorChannelShutdown(%struct._RpcChannel*) #0 !dbg !385 {
  %2 = alloca %struct._RpcChannel*, align 8
  %3 = alloca %struct.BackdoorChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !386, metadata !136), !dbg !387
  call void @llvm.dbg.declare(metadata %struct.BackdoorChannel** %3, metadata !388, metadata !136), !dbg !389
  %4 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !390
  %5 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %4, i32 0, i32 1, !dbg !391
  %6 = load i8*, i8** %5, align 8, !dbg !391
  %7 = bitcast i8* %6 to %struct.BackdoorChannel*, !dbg !390
  store %struct.BackdoorChannel* %7, %struct.BackdoorChannel** %3, align 8, !dbg !389
  %8 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !392
  call void @BkdoorChannelStop(%struct._RpcChannel* %8), !dbg !393
  %9 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %3, align 8, !dbg !394
  %10 = getelementptr inbounds %struct.BackdoorChannel, %struct.BackdoorChannel* %9, i32 0, i32 0, !dbg !395
  %11 = load %struct.RpcOut*, %struct.RpcOut** %10, align 8, !dbg !395
  call void @RpcOut_Destruct(%struct.RpcOut* %11), !dbg !396
  %12 = load %struct.BackdoorChannel*, %struct.BackdoorChannel** %3, align 8, !dbg !397
  %13 = bitcast %struct.BackdoorChannel* %12 to i8*, !dbg !397
  call void @g_free(i8* %13), !dbg !398
  %14 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !399
  %15 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %14, i32 0, i32 1, !dbg !400
  store i8* null, i8** %15, align 8, !dbg !401
  ret void, !dbg !402
}

; Function Attrs: nounwind uwtable
define internal i32 @BkdoorChannelGetType(%struct._RpcChannel*) #0 !dbg !403 {
  %2 = alloca %struct._RpcChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !404, metadata !136), !dbg !405
  ret i32 1, !dbg !406
}

declare signext i8 @RpcOut_start(%struct.RpcOut*) #2

declare void @RpcIn_stop(%struct.RpcIn*) #2

declare signext i8 @RpcOut_stop(%struct.RpcOut*) #2

declare signext i8 @RpcOut_send(%struct.RpcOut*, i8*, i64, i8*, i8**, i64*) #2

declare void @Debug(i8*, ...) #2

declare void @Warning(i8*, ...) #2

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare void @RpcOut_Destruct(%struct.RpcOut*) #2

declare void @g_free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!129, !130}
!llvm.ident = !{!131}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10, globals: !12)
!1 = !DIFile(filename: "libRpcChannel_la-bdoorChannel.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line813")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RpcChannelType", file: !4, line: 79, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line813")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "RPCCHANNEL_TYPE_INACTIVE", value: 0)
!7 = !DIEnumerator(name: "RPCCHANNEL_TYPE_BKDOOR", value: 1)
!8 = !DIEnumerator(name: "RPCCHANNEL_TYPE_PRIV_VSOCK", value: 2)
!9 = !DIEnumerator(name: "RPCCHANNEL_TYPE_UNPRIV_VSOCK", value: 3)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !{!13}
!13 = distinct !DIGlobalVariable(name: "funcs", scope: !14, file: !15, line: 233, type: !26, isLocal: true, isDefinition: true, variable: %struct._RpcChannelFuncs* @BackdoorChannelSetCallbacks.funcs)
!14 = distinct !DISubprogram(name: "BackdoorChannelSetCallbacks", scope: !15, file: !15, line: 231, type: !16, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !128)
!15 = !DIFile(filename: "bdoorChannel.c", directory: "/home/lichi/Desktop/open-vm-tools/line813")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !4, line: 48, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !21, line: 64, size: 832, align: 64, elements: !22)
!21 = !DIFile(filename: "rpcChannelInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line813")
!22 = !{!23, !72, !73, !74, !75, !76, !123, !126, !127}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !20, file: !21, line: 65, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelFuncs", file: !21, line: 56, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannelFuncs", file: !21, line: 45, size: 512, align: 64, elements: !28)
!28 = !{!29, !37, !39, !55, !64, !65, !70, !71}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !27, file: !21, line: 46, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !18}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !34, line: 50, baseType: !35)
!34 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line813")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !34, line: 49, baseType: !36)
!36 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !27, file: !21, line: 47, baseType: !38, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !27, file: !21, line: 48, baseType: !40, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!33, !18, !43, !46, !49, !52, !54}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 216, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line813")
!48 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !51, line: 230, baseType: !45)
!51 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line813")
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !27, file: !21, line: 50, baseType: !56, size: 64, align: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !18, !59, !43, !63}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !61, line: 48, baseType: !62)
!61 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line813")
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !61, line: 48, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !34, line: 77, baseType: !11)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !27, file: !21, line: 52, baseType: !38, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "getType", scope: !27, file: !21, line: 53, baseType: !66, size: 64, align: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !18}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelType", file: !4, line: 84, baseType: !3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "onStartErr", scope: !27, file: !21, line: 54, baseType: !38, size: 64, align: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "stopRpcOut", scope: !27, file: !21, line: 55, baseType: !30, size: 64, align: 64, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !20, file: !21, line: 66, baseType: !63, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "mainCtx", scope: !20, file: !21, line: 68, baseType: !59, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "appName", scope: !20, file: !21, line: 69, baseType: !43, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !20, file: !21, line: 70, baseType: !63, size: 64, align: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "outLock", scope: !20, file: !21, line: 72, baseType: !77, size: 384, align: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticMutex", file: !78, line: 140, baseType: !79)
!78 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line813")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 133, size: 384, align: 64, elements: !80)
!80 = !{!81, !94}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !79, file: !78, line: 135, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !84, line: 51, baseType: !85)
!84 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line813")
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !84, line: 58, size: 64, align: 64, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !85, file: !84, line: 61, baseType: !63, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !85, file: !84, line: 62, baseType: !89, size: 64, align: 32)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 64, align: 32, elements: !92)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !34, line: 55, baseType: !91)
!91 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!92 = !{!93}
!93 = !DISubrange(count: 2)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !79, file: !78, line: 138, baseType: !95, size: 320, align: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !96, line: 128, baseType: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line813")
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !96, line: 90, size: 320, align: 64, elements: !98)
!98 = !{!99, !117, !121}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !97, file: !96, line: 125, baseType: !100, size: 320, align: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !96, line: 92, size: 320, align: 64, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !109, !110}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !100, file: !96, line: 94, baseType: !36, size: 32, align: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !100, file: !96, line: 95, baseType: !91, size: 32, align: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !100, file: !96, line: 96, baseType: !36, size: 32, align: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !100, file: !96, line: 98, baseType: !91, size: 32, align: 32, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !100, file: !96, line: 102, baseType: !36, size: 32, align: 32, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !100, file: !96, line: 104, baseType: !108, size: 16, align: 16, offset: 160)
!108 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !100, file: !96, line: 105, baseType: !108, size: 16, align: 16, offset: 176)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !100, file: !96, line: 106, baseType: !111, size: 128, align: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !96, line: 79, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !96, line: 75, size: 128, align: 64, elements: !113)
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !112, file: !96, line: 77, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !112, file: !96, line: 78, baseType: !115, size: 64, align: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !97, file: !96, line: 126, baseType: !118, size: 320, align: 8)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 320, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 40)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !97, file: !96, line: 127, baseType: !122, size: 64, align: 64)
!122 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !20, file: !21, line: 74, baseType: !124, size: 64, align: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "RpcIn", file: !21, line: 41, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "inStarted", scope: !20, file: !21, line: 75, baseType: !33, size: 32, align: 32, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "outStarted", scope: !20, file: !21, line: 77, baseType: !33, size: 32, align: 32, offset: 800)
!128 = !{}
!129 = !{i32 2, !"Dwarf Version", i32 4}
!130 = !{i32 2, !"Debug Info Version", i32 3}
!131 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!132 = distinct !DISubprogram(name: "BackdoorChannel_New", scope: !15, file: !15, line: 256, type: !133, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !128)
!133 = !DISubroutineType(types: !134)
!134 = !{!18}
!135 = !DILocalVariable(name: "ret", scope: !132, file: !15, line: 258, type: !18)
!136 = !DIExpression()
!137 = !DILocation(line: 258, column: 16, scope: !132)
!138 = !DILocalVariable(name: "bdoor", scope: !132, file: !15, line: 259, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "BackdoorChannel", file: !15, line: 37, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BackdoorChannel", file: !15, line: 35, size: 64, align: 64, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !141, file: !15, line: 36, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcOut", file: !146, line: 48, baseType: !147)
!146 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/rpcout.h", directory: "/home/lichi/Desktop/open-vm-tools/line813")
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "RpcOut", file: !146, line: 48, flags: DIFlagFwdDecl)
!148 = !DILocation(line: 259, column: 21, scope: !132)
!149 = !DILocation(line: 261, column: 10, scope: !132)
!150 = !DILocation(line: 261, column: 8, scope: !132)
!151 = !DILocation(line: 262, column: 12, scope: !132)
!152 = !DILocation(line: 262, column: 10, scope: !132)
!153 = !DILocation(line: 264, column: 17, scope: !132)
!154 = !DILocation(line: 264, column: 4, scope: !132)
!155 = !DILocation(line: 264, column: 11, scope: !132)
!156 = !DILocation(line: 264, column: 15, scope: !132)
!157 = !DILocation(line: 268, column: 4, scope: !132)
!158 = !DILocation(line: 268, column: 9, scope: !132)
!159 = !DILocation(line: 268, column: 19, scope: !132)
!160 = !DILocation(line: 270, column: 4, scope: !132)
!161 = !DILocation(line: 270, column: 9, scope: !132)
!162 = !DILocation(line: 270, column: 20, scope: !132)
!163 = !DILocation(line: 272, column: 32, scope: !132)
!164 = !DILocation(line: 272, column: 4, scope: !132)
!165 = !DILocation(line: 273, column: 20, scope: !132)
!166 = !DILocation(line: 273, column: 4, scope: !132)
!167 = !DILocation(line: 273, column: 9, scope: !132)
!168 = !DILocation(line: 273, column: 18, scope: !132)
!169 = !DILocation(line: 275, column: 11, scope: !132)
!170 = !DILocation(line: 275, column: 4, scope: !132)
!171 = !DILocalVariable(name: "chan", arg: 1, scope: !14, file: !15, line: 231, type: !18)
!172 = !DILocation(line: 231, column: 41, scope: !14)
!173 = !DILocation(line: 245, column: 4, scope: !14)
!174 = !DILocation(line: 245, column: 10, scope: !14)
!175 = !DILocation(line: 245, column: 16, scope: !14)
!176 = !DILocation(line: 246, column: 1, scope: !14)
!177 = distinct !DISubprogram(name: "BackdoorChannel_Fallback", scope: !15, file: !15, line: 288, type: !31, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !128)
!178 = !DILocalVariable(name: "chan", arg: 1, scope: !177, file: !15, line: 288, type: !18)
!179 = !DILocation(line: 288, column: 38, scope: !177)
!180 = !DILocalVariable(name: "bdoor", scope: !177, file: !15, line: 290, type: !139)
!181 = !DILocation(line: 290, column: 21, scope: !177)
!182 = !DILocation(line: 295, column: 12, scope: !177)
!183 = !DILocation(line: 295, column: 10, scope: !177)
!184 = !DILocation(line: 296, column: 17, scope: !177)
!185 = !DILocation(line: 296, column: 4, scope: !177)
!186 = !DILocation(line: 296, column: 11, scope: !177)
!187 = !DILocation(line: 296, column: 15, scope: !177)
!188 = !DILocation(line: 299, column: 32, scope: !177)
!189 = !DILocation(line: 299, column: 4, scope: !177)
!190 = !DILocation(line: 300, column: 21, scope: !177)
!191 = !DILocation(line: 300, column: 4, scope: !177)
!192 = !DILocation(line: 300, column: 10, scope: !177)
!193 = !DILocation(line: 300, column: 19, scope: !177)
!194 = !DILocation(line: 302, column: 11, scope: !177)
!195 = !DILocation(line: 302, column: 17, scope: !177)
!196 = !DILocation(line: 302, column: 24, scope: !177)
!197 = !DILocation(line: 302, column: 30, scope: !177)
!198 = !DILocation(line: 302, column: 4, scope: !177)
!199 = distinct !DISubprogram(name: "BkdoorChannelStart", scope: !15, file: !15, line: 51, type: !31, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !128)
!200 = !DILocalVariable(name: "chan", arg: 1, scope: !199, file: !15, line: 51, type: !18)
!201 = !DILocation(line: 51, column: 32, scope: !199)
!202 = !DILocalVariable(name: "ret", scope: !199, file: !15, line: 53, type: !33)
!203 = !DILocation(line: 53, column: 13, scope: !199)
!204 = !DILocalVariable(name: "bdoor", scope: !199, file: !15, line: 54, type: !139)
!205 = !DILocation(line: 54, column: 21, scope: !199)
!206 = !DILocation(line: 54, column: 29, scope: !199)
!207 = !DILocation(line: 54, column: 35, scope: !199)
!208 = !DILocation(line: 57, column: 10, scope: !199)
!209 = !DILocation(line: 57, column: 16, scope: !199)
!210 = !DILocation(line: 57, column: 19, scope: !199)
!211 = !DILocation(line: 57, column: 26, scope: !199)
!212 = !DILocation(line: 57, column: 29, scope: !213)
!213 = !DILexicalBlockFile(scope: !199, file: !15, discriminator: 1)
!214 = !DILocation(line: 57, column: 35, scope: !213)
!215 = !DILocation(line: 57, column: 26, scope: !213)
!216 = !DILocation(line: 57, column: 26, scope: !217)
!217 = !DILexicalBlockFile(scope: !199, file: !15, discriminator: 2)
!218 = !DILocation(line: 57, column: 8, scope: !217)
!219 = !DILocation(line: 58, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !199, file: !15, line: 58, column: 8)
!221 = !DILocation(line: 58, column: 8, scope: !199)
!222 = !DILocation(line: 59, column: 26, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !15, line: 58, column: 13)
!224 = !DILocation(line: 59, column: 33, scope: !223)
!225 = !DILocation(line: 59, column: 13, scope: !223)
!226 = !DILocation(line: 59, column: 11, scope: !223)
!227 = !DILocation(line: 60, column: 12, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !15, line: 60, column: 11)
!229 = !DILocation(line: 60, column: 11, scope: !223)
!230 = !DILocation(line: 61, column: 14, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !15, line: 61, column: 14)
!232 = distinct !DILexicalBlock(scope: !228, file: !15, line: 60, column: 17)
!233 = !DILocation(line: 61, column: 20, scope: !231)
!234 = !DILocation(line: 61, column: 14, scope: !232)
!235 = !DILocation(line: 62, column: 24, scope: !236)
!236 = distinct !DILexicalBlock(scope: !231, file: !15, line: 61, column: 31)
!237 = !DILocation(line: 62, column: 30, scope: !236)
!238 = !DILocation(line: 62, column: 13, scope: !236)
!239 = !DILocation(line: 63, column: 13, scope: !236)
!240 = !DILocation(line: 63, column: 19, scope: !236)
!241 = !DILocation(line: 63, column: 29, scope: !236)
!242 = !DILocation(line: 64, column: 10, scope: !236)
!243 = !DILocation(line: 65, column: 7, scope: !232)
!244 = !DILocation(line: 66, column: 4, scope: !223)
!245 = !DILocation(line: 70, column: 23, scope: !199)
!246 = !DILocation(line: 70, column: 4, scope: !199)
!247 = !DILocation(line: 70, column: 10, scope: !199)
!248 = !DILocation(line: 70, column: 21, scope: !199)
!249 = !DILocation(line: 71, column: 11, scope: !199)
!250 = !DILocation(line: 71, column: 4, scope: !199)
!251 = distinct !DISubprogram(name: "BkdoorChannelStop", scope: !15, file: !15, line: 87, type: !16, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !128)
!252 = !DILocalVariable(name: "chan", arg: 1, scope: !251, file: !15, line: 87, type: !18)
!253 = !DILocation(line: 87, column: 31, scope: !251)
!254 = !DILocalVariable(name: "bdoor", scope: !251, file: !15, line: 89, type: !139)
!255 = !DILocation(line: 89, column: 21, scope: !251)
!256 = !DILocation(line: 89, column: 29, scope: !251)
!257 = !DILocation(line: 89, column: 35, scope: !251)
!258 = !DILocation(line: 91, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !251, file: !15, line: 91, column: 8)
!260 = !DILocation(line: 91, column: 15, scope: !259)
!261 = !DILocation(line: 91, column: 19, scope: !259)
!262 = !DILocation(line: 91, column: 8, scope: !251)
!263 = !DILocation(line: 92, column: 11, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !15, line: 92, column: 11)
!265 = distinct !DILexicalBlock(scope: !259, file: !15, line: 91, column: 27)
!266 = !DILocation(line: 92, column: 17, scope: !264)
!267 = !DILocation(line: 92, column: 11, scope: !265)
!268 = !DILocation(line: 93, column: 22, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !15, line: 92, column: 29)
!270 = !DILocation(line: 93, column: 29, scope: !269)
!271 = !DILocation(line: 93, column: 10, scope: !269)
!272 = !DILocation(line: 94, column: 7, scope: !269)
!273 = !DILocation(line: 95, column: 7, scope: !265)
!274 = !DILocation(line: 95, column: 13, scope: !265)
!275 = !DILocation(line: 95, column: 24, scope: !265)
!276 = !DILocation(line: 96, column: 4, scope: !265)
!277 = !DILocation(line: 99, column: 1, scope: !251)
!278 = distinct !DISubprogram(name: "BkdoorChannelSend", scope: !15, file: !15, line: 137, type: !41, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !128)
!279 = !DILocalVariable(name: "chan", arg: 1, scope: !278, file: !15, line: 137, type: !18)
!280 = !DILocation(line: 137, column: 31, scope: !278)
!281 = !DILocalVariable(name: "data", arg: 2, scope: !278, file: !15, line: 138, type: !43)
!282 = !DILocation(line: 138, column: 31, scope: !278)
!283 = !DILocalVariable(name: "dataLen", arg: 3, scope: !278, file: !15, line: 139, type: !46)
!284 = !DILocation(line: 139, column: 26, scope: !278)
!285 = !DILocalVariable(name: "rpcStatus", arg: 4, scope: !278, file: !15, line: 140, type: !49)
!286 = !DILocation(line: 140, column: 25, scope: !278)
!287 = !DILocalVariable(name: "result", arg: 5, scope: !278, file: !15, line: 141, type: !52)
!288 = !DILocation(line: 141, column: 26, scope: !278)
!289 = !DILocalVariable(name: "resultLen", arg: 6, scope: !278, file: !15, line: 142, type: !54)
!290 = !DILocation(line: 142, column: 27, scope: !278)
!291 = !DILocalVariable(name: "ret", scope: !278, file: !15, line: 144, type: !33)
!292 = !DILocation(line: 144, column: 13, scope: !278)
!293 = !DILocalVariable(name: "reply", scope: !278, file: !15, line: 145, type: !43)
!294 = !DILocation(line: 145, column: 16, scope: !278)
!295 = !DILocalVariable(name: "replyLen", scope: !278, file: !15, line: 146, type: !46)
!296 = !DILocation(line: 146, column: 11, scope: !278)
!297 = !DILocalVariable(name: "bdoor", scope: !278, file: !15, line: 147, type: !139)
!298 = !DILocation(line: 147, column: 21, scope: !278)
!299 = !DILocation(line: 147, column: 29, scope: !278)
!300 = !DILocation(line: 147, column: 35, scope: !278)
!301 = !DILocation(line: 149, column: 9, scope: !302)
!302 = distinct !DILexicalBlock(scope: !278, file: !15, line: 149, column: 8)
!303 = !DILocation(line: 149, column: 15, scope: !302)
!304 = !DILocation(line: 149, column: 8, scope: !278)
!305 = !DILocation(line: 150, column: 7, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !15, line: 149, column: 27)
!307 = !DILocation(line: 153, column: 22, scope: !278)
!308 = !DILocation(line: 153, column: 29, scope: !278)
!309 = !DILocation(line: 153, column: 34, scope: !278)
!310 = !DILocation(line: 153, column: 40, scope: !278)
!311 = !DILocation(line: 153, column: 49, scope: !278)
!312 = !DILocation(line: 153, column: 10, scope: !278)
!313 = !DILocation(line: 153, column: 8, scope: !278)
!314 = !DILocation(line: 173, column: 9, scope: !315)
!315 = distinct !DILexicalBlock(scope: !278, file: !15, line: 173, column: 8)
!316 = !DILocation(line: 173, column: 8, scope: !278)
!317 = !DILocation(line: 174, column: 7, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !15, line: 173, column: 14)
!319 = !DILocation(line: 175, column: 19, scope: !318)
!320 = !DILocation(line: 175, column: 26, scope: !318)
!321 = !DILocation(line: 175, column: 7, scope: !318)
!322 = !DILocation(line: 176, column: 24, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !15, line: 176, column: 11)
!324 = !DILocation(line: 176, column: 31, scope: !323)
!325 = !DILocation(line: 176, column: 11, scope: !323)
!326 = !DILocation(line: 176, column: 11, scope: !318)
!327 = !DILocation(line: 177, column: 28, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !15, line: 176, column: 37)
!329 = !DILocation(line: 177, column: 35, scope: !328)
!330 = !DILocation(line: 177, column: 40, scope: !328)
!331 = !DILocation(line: 177, column: 46, scope: !328)
!332 = !DILocation(line: 177, column: 55, scope: !328)
!333 = !DILocation(line: 177, column: 16, scope: !328)
!334 = !DILocation(line: 177, column: 14, scope: !328)
!335 = !DILocation(line: 179, column: 7, scope: !328)
!336 = !DILocation(line: 180, column: 10, scope: !337)
!337 = distinct !DILexicalBlock(scope: !323, file: !15, line: 179, column: 14)
!338 = !DILocation(line: 182, column: 10, scope: !337)
!339 = !DILocation(line: 182, column: 16, scope: !337)
!340 = !DILocation(line: 182, column: 27, scope: !337)
!341 = !DILocation(line: 184, column: 4, scope: !318)
!342 = !DILocation(line: 190, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !278, file: !15, line: 190, column: 8)
!344 = !DILocation(line: 190, column: 15, scope: !343)
!345 = !DILocation(line: 190, column: 8, scope: !278)
!346 = !DILocation(line: 191, column: 11, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !15, line: 191, column: 11)
!348 = distinct !DILexicalBlock(scope: !343, file: !15, line: 190, column: 23)
!349 = !DILocation(line: 191, column: 17, scope: !347)
!350 = !DILocation(line: 191, column: 11, scope: !348)
!351 = !DILocation(line: 192, column: 37, scope: !352)
!352 = distinct !DILexicalBlock(scope: !347, file: !15, line: 191, column: 25)
!353 = !DILocation(line: 192, column: 46, scope: !352)
!354 = !DILocation(line: 192, column: 20, scope: !352)
!355 = !DILocation(line: 192, column: 11, scope: !352)
!356 = !DILocation(line: 192, column: 18, scope: !352)
!357 = !DILocation(line: 193, column: 18, scope: !352)
!358 = !DILocation(line: 193, column: 17, scope: !352)
!359 = !DILocation(line: 193, column: 26, scope: !352)
!360 = !DILocation(line: 193, column: 33, scope: !352)
!361 = !DILocation(line: 193, column: 10, scope: !352)
!362 = !DILocation(line: 194, column: 20, scope: !352)
!363 = !DILocation(line: 194, column: 12, scope: !352)
!364 = !DILocation(line: 194, column: 11, scope: !352)
!365 = !DILocation(line: 194, column: 10, scope: !352)
!366 = !DILocation(line: 194, column: 30, scope: !352)
!367 = !DILocation(line: 195, column: 7, scope: !352)
!368 = !DILocation(line: 196, column: 11, scope: !369)
!369 = distinct !DILexicalBlock(scope: !347, file: !15, line: 195, column: 14)
!370 = !DILocation(line: 196, column: 18, scope: !369)
!371 = !DILocation(line: 198, column: 4, scope: !348)
!372 = !DILocation(line: 200, column: 8, scope: !373)
!373 = distinct !DILexicalBlock(scope: !278, file: !15, line: 200, column: 8)
!374 = !DILocation(line: 200, column: 18, scope: !373)
!375 = !DILocation(line: 200, column: 8, scope: !278)
!376 = !DILocation(line: 201, column: 20, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !15, line: 200, column: 26)
!378 = !DILocation(line: 201, column: 8, scope: !377)
!379 = !DILocation(line: 201, column: 18, scope: !377)
!380 = !DILocation(line: 202, column: 4, scope: !377)
!381 = !DILocation(line: 200, column: 30, scope: !382)
!382 = !DILexicalBlockFile(scope: !373, file: !15, discriminator: 1)
!383 = !DILocation(line: 205, column: 11, scope: !278)
!384 = !DILocation(line: 205, column: 4, scope: !278)
!385 = distinct !DISubprogram(name: "BkdoorChannelShutdown", scope: !15, file: !15, line: 111, type: !16, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !128)
!386 = !DILocalVariable(name: "chan", arg: 1, scope: !385, file: !15, line: 111, type: !18)
!387 = !DILocation(line: 111, column: 35, scope: !385)
!388 = !DILocalVariable(name: "bdoor", scope: !385, file: !15, line: 113, type: !139)
!389 = !DILocation(line: 113, column: 21, scope: !385)
!390 = !DILocation(line: 113, column: 29, scope: !385)
!391 = !DILocation(line: 113, column: 35, scope: !385)
!392 = !DILocation(line: 114, column: 22, scope: !385)
!393 = !DILocation(line: 114, column: 4, scope: !385)
!394 = !DILocation(line: 115, column: 20, scope: !385)
!395 = !DILocation(line: 115, column: 27, scope: !385)
!396 = !DILocation(line: 115, column: 4, scope: !385)
!397 = !DILocation(line: 116, column: 11, scope: !385)
!398 = !DILocation(line: 116, column: 4, scope: !385)
!399 = !DILocation(line: 117, column: 4, scope: !385)
!400 = !DILocation(line: 117, column: 10, scope: !385)
!401 = !DILocation(line: 117, column: 19, scope: !385)
!402 = !DILocation(line: 118, column: 1, scope: !385)
!403 = distinct !DISubprogram(name: "BkdoorChannelGetType", scope: !15, file: !15, line: 218, type: !67, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !128)
!404 = !DILocalVariable(name: "chan", arg: 1, scope: !403, file: !15, line: 218, type: !18)
!405 = !DILocation(line: 218, column: 34, scope: !403)
!406 = !DILocation(line: 220, column: 4, scope: !403)
