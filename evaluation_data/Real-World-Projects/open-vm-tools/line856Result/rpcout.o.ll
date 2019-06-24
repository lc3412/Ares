; ModuleID = './rpcout.o.i'
source_filename = "./rpcout.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RpcOut = type { %struct.Message_Channel, i8 }
%struct.Message_Channel = type { i16, i8*, i64, i8, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [50 x i8] c"RpcOut: couldn't open channel with RPCI protocol\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"RpcOut: Unable to send the RPCI command\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"RpcOut: Unable to receive the result of the RPCI command\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"1 \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"0 \00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"RpcOut: Invalid format for the result of the RPCI command\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"RpcOut: couldn't close channel\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Rpci: Sending request='%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"RpcOut: Unable to open the communication channel\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"Rpci: Sent request='%s', reply='%s', len=%zu, status=%d, rpcStatus=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Rpci: unable to close the communication channel\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.RpcOut* @RpcOut_Construct() #0 !dbg !15 {
  %1 = alloca %struct.RpcOut*, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcOut** %1, metadata !49, metadata !50), !dbg !51
  %2 = call noalias i8* @malloc(i64 48) #5, !dbg !52
  %3 = bitcast i8* %2 to %struct.RpcOut*, !dbg !52
  store %struct.RpcOut* %3, %struct.RpcOut** %1, align 8, !dbg !51
  %4 = load %struct.RpcOut*, %struct.RpcOut** %1, align 8, !dbg !53
  call void @RpcOutInitialize(%struct.RpcOut* %4), !dbg !54
  %5 = load %struct.RpcOut*, %struct.RpcOut** %1, align 8, !dbg !55
  ret %struct.RpcOut* %5, !dbg !56
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal void @RpcOutInitialize(%struct.RpcOut*) #0 !dbg !57 {
  %2 = alloca %struct.RpcOut*, align 8
  store %struct.RpcOut* %0, %struct.RpcOut** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcOut** %2, metadata !60, metadata !50), !dbg !61
  %3 = load %struct.RpcOut*, %struct.RpcOut** %2, align 8, !dbg !62
  %4 = bitcast %struct.RpcOut* %3 to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 48, i32 8, i1 false), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: nounwind uwtable
define void @RpcOut_Destruct(%struct.RpcOut*) #0 !dbg !65 {
  %2 = alloca %struct.RpcOut*, align 8
  store %struct.RpcOut* %0, %struct.RpcOut** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcOut** %2, metadata !66, metadata !50), !dbg !67
  %3 = load %struct.RpcOut*, %struct.RpcOut** %2, align 8, !dbg !68
  %4 = bitcast %struct.RpcOut* %3 to i8*, !dbg !68
  call void @free(i8* %4) #5, !dbg !69
  ret void, !dbg !70
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @RpcOut_startWithReceiveBuffer(%struct.RpcOut*, i8*, i64) #0 !dbg !71 {
  %4 = alloca %struct.RpcOut*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.RpcOut* %0, %struct.RpcOut** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcOut** %4, metadata !74, metadata !50), !dbg !75
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !76, metadata !50), !dbg !77
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !78, metadata !50), !dbg !79
  %7 = load %struct.RpcOut*, %struct.RpcOut** %4, align 8, !dbg !80
  %8 = getelementptr inbounds %struct.RpcOut, %struct.RpcOut* %7, i32 0, i32 0, !dbg !81
  %9 = load i8*, i8** %5, align 8, !dbg !82
  %10 = load i64, i64* %6, align 8, !dbg !83
  %11 = call signext i8 @Message_OpenAllocated(i32 1229148242, %struct.Message_Channel* %8, i8* %9, i64 %10), !dbg !84
  %12 = load %struct.RpcOut*, %struct.RpcOut** %4, align 8, !dbg !85
  %13 = getelementptr inbounds %struct.RpcOut, %struct.RpcOut* %12, i32 0, i32 1, !dbg !86
  store i8 %11, i8* %13, align 8, !dbg !87
  %14 = load %struct.RpcOut*, %struct.RpcOut** %4, align 8, !dbg !88
  %15 = getelementptr inbounds %struct.RpcOut, %struct.RpcOut* %14, i32 0, i32 1, !dbg !90
  %16 = load i8, i8* %15, align 8, !dbg !90
  %17 = icmp ne i8 %16, 0, !dbg !88
  br i1 %17, label %19, label %18, !dbg !91

; <label>:18:                                     ; preds = %3
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0)), !dbg !92
  br label %19, !dbg !94

; <label>:19:                                     ; preds = %18, %3
  %20 = load %struct.RpcOut*, %struct.RpcOut** %4, align 8, !dbg !95
  %21 = getelementptr inbounds %struct.RpcOut, %struct.RpcOut* %20, i32 0, i32 1, !dbg !96
  %22 = load i8, i8* %21, align 8, !dbg !96
  ret i8 %22, !dbg !97
}

declare signext i8 @Message_OpenAllocated(i32, %struct.Message_Channel*, i8*, i64) #3

declare void @Debug(i8*, ...) #3

; Function Attrs: nounwind uwtable
define signext i8 @RpcOut_start(%struct.RpcOut*) #0 !dbg !98 {
  %2 = alloca %struct.RpcOut*, align 8
  store %struct.RpcOut* %0, %struct.RpcOut** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcOut** %2, metadata !101, metadata !50), !dbg !102
  %3 = load %struct.RpcOut*, %struct.RpcOut** %2, align 8, !dbg !103
  %4 = call signext i8 @RpcOut_startWithReceiveBuffer(%struct.RpcOut* %3, i8* null, i64 0), !dbg !104
  ret i8 %4, !dbg !105
}

; Function Attrs: nounwind uwtable
define signext i8 @RpcOut_send(%struct.RpcOut*, i8*, i64, i8*, i8**, i64*) #0 !dbg !106 {
  %7 = alloca i8, align 1
  %8 = alloca %struct.RpcOut*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  store %struct.RpcOut* %0, %struct.RpcOut** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcOut** %8, metadata !112, metadata !50), !dbg !113
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !114, metadata !50), !dbg !115
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !116, metadata !50), !dbg !117
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !118, metadata !50), !dbg !119
  store i8** %4, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !120, metadata !50), !dbg !121
  store i64* %5, i64** %13, align 8
  call void @llvm.dbg.declare(metadata i64** %13, metadata !122, metadata !50), !dbg !123
  call void @llvm.dbg.declare(metadata i8** %14, metadata !124, metadata !50), !dbg !125
  call void @llvm.dbg.declare(metadata i64* %15, metadata !126, metadata !50), !dbg !127
  call void @llvm.dbg.declare(metadata i8* %16, metadata !128, metadata !50), !dbg !129
  %17 = load %struct.RpcOut*, %struct.RpcOut** %8, align 8, !dbg !130
  %18 = getelementptr inbounds %struct.RpcOut, %struct.RpcOut* %17, i32 0, i32 0, !dbg !132
  %19 = load i8*, i8** %9, align 8, !dbg !133
  %20 = load i64, i64* %10, align 8, !dbg !134
  %21 = call signext i8 @Message_Send(%struct.Message_Channel* %18, i8* %19, i64 %20), !dbg !135
  %22 = sext i8 %21 to i32, !dbg !135
  %23 = icmp eq i32 %22, 0, !dbg !136
  br i1 %23, label %24, label %30, !dbg !137

; <label>:24:                                     ; preds = %6
  %25 = load i8**, i8*** %12, align 8, !dbg !138
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8** %25, align 8, !dbg !140
  %26 = load i8**, i8*** %12, align 8, !dbg !141
  %27 = load i8*, i8** %26, align 8, !dbg !142
  %28 = call i64 @strlen(i8* %27) #7, !dbg !143
  %29 = load i64*, i64** %13, align 8, !dbg !144
  store i64 %28, i64* %29, align 8, !dbg !145
  store i8 0, i8* %7, align 1, !dbg !146
  br label %72, !dbg !146

; <label>:30:                                     ; preds = %6
  %31 = load %struct.RpcOut*, %struct.RpcOut** %8, align 8, !dbg !147
  %32 = getelementptr inbounds %struct.RpcOut, %struct.RpcOut* %31, i32 0, i32 0, !dbg !149
  %33 = call signext i8 @Message_Receive(%struct.Message_Channel* %32, i8** %14, i64* %15), !dbg !150
  %34 = sext i8 %33 to i32, !dbg !150
  %35 = icmp eq i32 %34, 0, !dbg !151
  br i1 %35, label %36, label %42, !dbg !152

; <label>:36:                                     ; preds = %30
  %37 = load i8**, i8*** %12, align 8, !dbg !153
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i32 0, i32 0), i8** %37, align 8, !dbg !155
  %38 = load i8**, i8*** %12, align 8, !dbg !156
  %39 = load i8*, i8** %38, align 8, !dbg !157
  %40 = call i64 @strlen(i8* %39) #7, !dbg !158
  %41 = load i64*, i64** %13, align 8, !dbg !159
  store i64 %40, i64* %41, align 8, !dbg !160
  store i8 0, i8* %7, align 1, !dbg !161
  br label %72, !dbg !161

; <label>:42:                                     ; preds = %30
  %43 = load i64, i64* %15, align 8, !dbg !162
  %44 = icmp ult i64 %43, 2, !dbg !164
  br i1 %44, label %57, label %45, !dbg !165

; <label>:45:                                     ; preds = %42
  %46 = load i8*, i8** %14, align 8, !dbg !166
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i64 2) #7, !dbg !168
  %48 = icmp eq i32 %47, 0, !dbg !169
  %49 = zext i1 %48 to i32, !dbg !169
  %50 = trunc i32 %49 to i8, !dbg !168
  store i8 %50, i8* %16, align 1, !dbg !170
  %51 = sext i8 %50 to i32, !dbg !171
  %52 = icmp eq i32 %51, 0, !dbg !172
  br i1 %52, label %53, label %63, !dbg !173

; <label>:53:                                     ; preds = %45
  %54 = load i8*, i8** %14, align 8, !dbg !174
  %55 = call i32 @strncmp(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i64 2) #7, !dbg !175
  %56 = icmp ne i32 %55, 0, !dbg !175
  br i1 %56, label %57, label %63, !dbg !176

; <label>:57:                                     ; preds = %53, %42
  %58 = load i8**, i8*** %12, align 8, !dbg !178
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i32 0, i32 0), i8** %58, align 8, !dbg !180
  %59 = load i8**, i8*** %12, align 8, !dbg !181
  %60 = load i8*, i8** %59, align 8, !dbg !182
  %61 = call i64 @strlen(i8* %60) #7, !dbg !183
  %62 = load i64*, i64** %13, align 8, !dbg !184
  store i64 %61, i64* %62, align 8, !dbg !185
  store i8 0, i8* %7, align 1, !dbg !186
  br label %72, !dbg !186

; <label>:63:                                     ; preds = %53, %45
  %64 = load i8, i8* %16, align 1, !dbg !187
  %65 = load i8*, i8** %11, align 8, !dbg !188
  store i8 %64, i8* %65, align 1, !dbg !189
  %66 = load i8*, i8** %14, align 8, !dbg !190
  %67 = getelementptr inbounds i8, i8* %66, i64 2, !dbg !191
  %68 = load i8**, i8*** %12, align 8, !dbg !192
  store i8* %67, i8** %68, align 8, !dbg !193
  %69 = load i64, i64* %15, align 8, !dbg !194
  %70 = sub i64 %69, 2, !dbg !195
  %71 = load i64*, i64** %13, align 8, !dbg !196
  store i64 %70, i64* %71, align 8, !dbg !197
  store i8 1, i8* %7, align 1, !dbg !198
  br label %72, !dbg !198

; <label>:72:                                     ; preds = %63, %57, %36, %24
  %73 = load i8, i8* %7, align 1, !dbg !199
  ret i8 %73, !dbg !199
}

declare signext i8 @Message_Send(%struct.Message_Channel*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare signext i8 @Message_Receive(%struct.Message_Channel*, i8**, i64*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define signext i8 @RpcOut_stop(%struct.RpcOut*) #0 !dbg !200 {
  %2 = alloca %struct.RpcOut*, align 8
  %3 = alloca i8, align 1
  store %struct.RpcOut* %0, %struct.RpcOut** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcOut** %2, metadata !201, metadata !50), !dbg !202
  call void @llvm.dbg.declare(metadata i8* %3, metadata !203, metadata !50), !dbg !204
  store i8 1, i8* %3, align 1, !dbg !204
  %4 = load %struct.RpcOut*, %struct.RpcOut** %2, align 8, !dbg !205
  %5 = getelementptr inbounds %struct.RpcOut, %struct.RpcOut* %4, i32 0, i32 1, !dbg !207
  %6 = load i8, i8* %5, align 8, !dbg !207
  %7 = icmp ne i8 %6, 0, !dbg !205
  br i1 %7, label %8, label %18, !dbg !208

; <label>:8:                                      ; preds = %1
  %9 = load %struct.RpcOut*, %struct.RpcOut** %2, align 8, !dbg !209
  %10 = getelementptr inbounds %struct.RpcOut, %struct.RpcOut* %9, i32 0, i32 0, !dbg !212
  %11 = call signext i8 @Message_CloseAllocated(%struct.Message_Channel* %10), !dbg !213
  %12 = sext i8 %11 to i32, !dbg !213
  %13 = icmp eq i32 %12, 0, !dbg !214
  br i1 %13, label %14, label %15, !dbg !215

; <label>:14:                                     ; preds = %8
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0)), !dbg !216
  store i8 0, i8* %3, align 1, !dbg !218
  br label %15, !dbg !219

; <label>:15:                                     ; preds = %14, %8
  %16 = load %struct.RpcOut*, %struct.RpcOut** %2, align 8, !dbg !220
  %17 = getelementptr inbounds %struct.RpcOut, %struct.RpcOut* %16, i32 0, i32 1, !dbg !221
  store i8 0, i8* %17, align 8, !dbg !222
  br label %18, !dbg !223

; <label>:18:                                     ; preds = %15, %1
  %19 = load i8, i8* %3, align 1, !dbg !224
  ret i8 %19, !dbg !225
}

declare signext i8 @Message_CloseAllocated(%struct.Message_Channel*) #3

; Function Attrs: nounwind uwtable
define signext i8 @RpcOut_sendOne(i8**, i64*, i8*, ...) #0 !dbg !226 {
  %4 = alloca i8, align 1
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !230, metadata !50), !dbg !231
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !232, metadata !50), !dbg !233
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !234, metadata !50), !dbg !235
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !236, metadata !50), !dbg !251
  call void @llvm.dbg.declare(metadata i8* %9, metadata !252, metadata !50), !dbg !253
  call void @llvm.dbg.declare(metadata i8** %10, metadata !254, metadata !50), !dbg !255
  call void @llvm.dbg.declare(metadata i64* %11, metadata !256, metadata !50), !dbg !257
  store i64 0, i64* %11, align 8, !dbg !257
  store i8 0, i8* %9, align 1, !dbg !258
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !259
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !259
  call void @llvm.va_start(i8* %14), !dbg !259
  %15 = load i8*, i8** %7, align 8, !dbg !260
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !261
  %17 = call i8* @Str_Vasprintf(i64* %11, i8* %15, %struct.__va_list_tag* %16), !dbg !262
  store i8* %17, i8** %10, align 8, !dbg !263
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !264
  %19 = bitcast %struct.__va_list_tag* %18 to i8*, !dbg !264
  call void @llvm.va_end(i8* %19), !dbg !264
  %20 = load i8*, i8** %10, align 8, !dbg !265
  %21 = icmp eq i8* %20, null, !dbg !267
  br i1 %21, label %22, label %28, !dbg !268

; <label>:22:                                     ; preds = %3
  %23 = load i8**, i8*** %5, align 8, !dbg !269
  %24 = icmp ne i8** %23, null, !dbg !269
  br i1 %24, label %25, label %27, !dbg !272

; <label>:25:                                     ; preds = %22
  %26 = load i8**, i8*** %5, align 8, !dbg !273
  store i8* null, i8** %26, align 8, !dbg !275
  br label %27, !dbg !276

; <label>:27:                                     ; preds = %25, %22
  store i8 0, i8* %4, align 1, !dbg !277
  br label %54, !dbg !277

; <label>:28:                                     ; preds = %3
  %29 = load i8*, i8** %10, align 8, !dbg !278
  %30 = call i8* @strchr(i8* %29, i32 32) #7, !dbg !280
  %31 = icmp eq i8* %30, null, !dbg !281
  br i1 %31, label %32, label %46, !dbg !282

; <label>:32:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata i8** %12, metadata !283, metadata !50), !dbg !285
  %33 = load i8*, i8** %10, align 8, !dbg !286
  %34 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* %33), !dbg !287
  store i8* %34, i8** %12, align 8, !dbg !288
  %35 = load i8*, i8** %10, align 8, !dbg !289
  call void @free(i8* %35) #5, !dbg !290
  %36 = load i8*, i8** %12, align 8, !dbg !291
  store i8* %36, i8** %10, align 8, !dbg !292
  %37 = load i8*, i8** %10, align 8, !dbg !293
  %38 = icmp eq i8* %37, null, !dbg !295
  br i1 %38, label %39, label %45, !dbg !296

; <label>:39:                                     ; preds = %32
  %40 = load i8**, i8*** %5, align 8, !dbg !297
  %41 = icmp ne i8** %40, null, !dbg !300
  br i1 %41, label %42, label %44, !dbg !301

; <label>:42:                                     ; preds = %39
  %43 = load i8**, i8*** %5, align 8, !dbg !302
  store i8* null, i8** %43, align 8, !dbg !304
  br label %44, !dbg !305

; <label>:44:                                     ; preds = %42, %39
  store i8 0, i8* %4, align 1, !dbg !306
  br label %54, !dbg !306

; <label>:45:                                     ; preds = %32
  br label %46, !dbg !307

; <label>:46:                                     ; preds = %45, %28
  %47 = load i8*, i8** %10, align 8, !dbg !308
  %48 = load i64, i64* %11, align 8, !dbg !309
  %49 = load i8**, i8*** %5, align 8, !dbg !310
  %50 = load i64*, i64** %6, align 8, !dbg !311
  %51 = call signext i8 @RpcOut_SendOneRaw(i8* %47, i64 %48, i8** %49, i64* %50), !dbg !312
  store i8 %51, i8* %9, align 1, !dbg !313
  %52 = load i8*, i8** %10, align 8, !dbg !314
  call void @free(i8* %52) #5, !dbg !315
  %53 = load i8, i8* %9, align 1, !dbg !316
  store i8 %53, i8* %4, align 1, !dbg !317
  br label %54, !dbg !317

; <label>:54:                                     ; preds = %46, %44, %27
  %55 = load i8, i8* %4, align 1, !dbg !318
  ret i8 %55, !dbg !318
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare i8* @Str_Vasprintf(i64*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i8* @Str_Asprintf(i64*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define signext i8 @RpcOut_SendOneRaw(i8*, i64, i8**, i64*) #0 !dbg !319 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !322, metadata !50), !dbg !323
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !324, metadata !50), !dbg !325
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !326, metadata !50), !dbg !327
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !328, metadata !50), !dbg !329
  %9 = load i8*, i8** %5, align 8, !dbg !330
  %10 = load i64, i64* %6, align 8, !dbg !331
  %11 = load i8**, i8*** %7, align 8, !dbg !332
  %12 = load i64*, i64** %8, align 8, !dbg !333
  %13 = call signext i8 @RpcOutSendOneRawWork(i8* %9, i64 %10, i8* null, i64 0, i8** %11, i64* %12), !dbg !334
  ret i8 %13, !dbg !335
}

; Function Attrs: nounwind uwtable
define internal signext i8 @RpcOutSendOneRawWork(i8*, i64, i8*, i64, i8**, i64*) #0 !dbg !336 {
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca %struct.RpcOut, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !339, metadata !50), !dbg !340
  store i64 %1, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !341, metadata !50), !dbg !342
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !343, metadata !50), !dbg !344
  store i64 %3, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !345, metadata !50), !dbg !346
  store i8** %4, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !347, metadata !50), !dbg !348
  store i64* %5, i64** %13, align 8
  call void @llvm.dbg.declare(metadata i64** %13, metadata !349, metadata !50), !dbg !350
  call void @llvm.dbg.declare(metadata i8* %14, metadata !351, metadata !50), !dbg !352
  call void @llvm.dbg.declare(metadata i8* %15, metadata !353, metadata !50), !dbg !354
  call void @llvm.dbg.declare(metadata %struct.RpcOut* %16, metadata !355, metadata !50), !dbg !356
  call void @llvm.dbg.declare(metadata i8** %17, metadata !357, metadata !50), !dbg !358
  call void @llvm.dbg.declare(metadata i64* %18, metadata !359, metadata !50), !dbg !360
  %20 = load i8*, i8** %8, align 8, !dbg !361
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i8* %20), !dbg !362
  call void @RpcOutInitialize(%struct.RpcOut* %16), !dbg !363
  %21 = load i8*, i8** %10, align 8, !dbg !364
  %22 = load i64, i64* %11, align 8, !dbg !366
  %23 = call signext i8 @RpcOut_startWithReceiveBuffer(%struct.RpcOut* %16, i8* %21, i64 %22), !dbg !367
  %24 = icmp ne i8 %23, 0, !dbg !367
  br i1 %24, label %52, label %25, !dbg !368

; <label>:25:                                     ; preds = %6
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i8** %17, align 8, !dbg !369
  %26 = load i8*, i8** %17, align 8, !dbg !371
  %27 = call i64 @strlen(i8* %26) #7, !dbg !372
  store i64 %27, i64* %18, align 8, !dbg !373
  %28 = load i8*, i8** %10, align 8, !dbg !374
  %29 = icmp ne i8* %28, null, !dbg !376
  br i1 %29, label %30, label %51, !dbg !377

; <label>:30:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i32* %19, metadata !378, metadata !50), !dbg !380
  %31 = load i64, i64* %11, align 8, !dbg !381
  %32 = sub i64 %31, 1, !dbg !382
  %33 = load i64, i64* %18, align 8, !dbg !383
  %34 = icmp ult i64 %32, %33, !dbg !384
  br i1 %34, label %35, label %38, !dbg !385

; <label>:35:                                     ; preds = %30
  %36 = load i64, i64* %11, align 8, !dbg !386
  %37 = sub i64 %36, 1, !dbg !388
  br label %40, !dbg !389

; <label>:38:                                     ; preds = %30
  %39 = load i64, i64* %18, align 8, !dbg !390
  br label %40, !dbg !392

; <label>:40:                                     ; preds = %38, %35
  %41 = phi i64 [ %37, %35 ], [ %39, %38 ], !dbg !393
  %42 = trunc i64 %41 to i32, !dbg !395
  store i32 %42, i32* %19, align 4, !dbg !396
  %43 = load i8*, i8** %10, align 8, !dbg !397
  %44 = load i8*, i8** %17, align 8, !dbg !398
  %45 = load i32, i32* %19, align 4, !dbg !399
  %46 = zext i32 %45 to i64, !dbg !399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 %46, i32 1, i1 false), !dbg !400
  %47 = load i32, i32* %19, align 4, !dbg !401
  %48 = zext i32 %47 to i64, !dbg !402
  %49 = load i8*, i8** %10, align 8, !dbg !402
  %50 = getelementptr inbounds i8, i8* %49, i64 %48, !dbg !402
  store i8 0, i8* %50, align 1, !dbg !403
  br label %51, !dbg !404

; <label>:51:                                     ; preds = %40, %25
  store i8 0, i8* %7, align 1, !dbg !405
  br label %123, !dbg !405

; <label>:52:                                     ; preds = %6
  %53 = load i8*, i8** %8, align 8, !dbg !406
  %54 = load i64, i64* %9, align 8, !dbg !407
  %55 = call signext i8 @RpcOut_send(%struct.RpcOut* %16, i8* %53, i64 %54, i8* %15, i8** %17, i64* %18), !dbg !408
  store i8 %55, i8* %14, align 1, !dbg !409
  %56 = load i8*, i8** %8, align 8, !dbg !410
  %57 = load i8*, i8** %17, align 8, !dbg !411
  %58 = load i64, i64* %18, align 8, !dbg !412
  %59 = load i8, i8* %14, align 1, !dbg !413
  %60 = sext i8 %59 to i32, !dbg !413
  %61 = load i8, i8* %15, align 1, !dbg !414
  %62 = sext i8 %61 to i32, !dbg !414
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i32 0, i32 0), i8* %56, i8* %57, i64 %58, i32 %60, i32 %62), !dbg !415
  %63 = load i8**, i8*** %12, align 8, !dbg !416
  %64 = icmp ne i8** %63, null, !dbg !418
  br i1 %64, label %65, label %99, !dbg !419

; <label>:65:                                     ; preds = %52
  %66 = load i8*, i8** %17, align 8, !dbg !420
  %67 = icmp ne i8* %66, null, !dbg !423
  br i1 %67, label %68, label %86, !dbg !424

; <label>:68:                                     ; preds = %65
  %69 = load i64, i64* %18, align 8, !dbg !425
  %70 = add i64 %69, 1, !dbg !427
  %71 = call noalias i8* @malloc(i64 %70) #5, !dbg !428
  %72 = load i8**, i8*** %12, align 8, !dbg !429
  store i8* %71, i8** %72, align 8, !dbg !430
  %73 = load i8**, i8*** %12, align 8, !dbg !431
  %74 = load i8*, i8** %73, align 8, !dbg !433
  %75 = icmp ne i8* %74, null, !dbg !434
  br i1 %75, label %76, label %85, !dbg !435

; <label>:76:                                     ; preds = %68
  %77 = load i8**, i8*** %12, align 8, !dbg !436
  %78 = load i8*, i8** %77, align 8, !dbg !438
  %79 = load i8*, i8** %17, align 8, !dbg !439
  %80 = load i64, i64* %18, align 8, !dbg !440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 %80, i32 1, i1 false), !dbg !441
  %81 = load i64, i64* %18, align 8, !dbg !442
  %82 = load i8**, i8*** %12, align 8, !dbg !443
  %83 = load i8*, i8** %82, align 8, !dbg !444
  %84 = getelementptr inbounds i8, i8* %83, i64 %81, !dbg !445
  store i8 0, i8* %84, align 1, !dbg !446
  br label %85, !dbg !447

; <label>:85:                                     ; preds = %76, %68
  br label %88, !dbg !448

; <label>:86:                                     ; preds = %65
  %87 = load i8**, i8*** %12, align 8, !dbg !449
  store i8* null, i8** %87, align 8, !dbg !451
  br label %88

; <label>:88:                                     ; preds = %86, %85
  %89 = load i64*, i64** %13, align 8, !dbg !452
  %90 = icmp ne i64* %89, null, !dbg !454
  br i1 %90, label %91, label %98, !dbg !455

; <label>:91:                                     ; preds = %88
  %92 = load i8**, i8*** %12, align 8, !dbg !456
  %93 = load i8*, i8** %92, align 8, !dbg !458
  %94 = icmp ne i8* %93, null, !dbg !459
  br i1 %94, label %95, label %98, !dbg !460

; <label>:95:                                     ; preds = %91
  %96 = load i64, i64* %18, align 8, !dbg !461
  %97 = load i64*, i64** %13, align 8, !dbg !463
  store i64 %96, i64* %97, align 8, !dbg !464
  br label %98, !dbg !465

; <label>:98:                                     ; preds = %95, %91, %88
  br label %99, !dbg !466

; <label>:99:                                     ; preds = %98, %52
  %100 = call signext i8 @RpcOut_stop(%struct.RpcOut* %16), !dbg !467
  %101 = sext i8 %100 to i32, !dbg !467
  %102 = icmp eq i32 %101, 0, !dbg !469
  br i1 %102, label %103, label %111, !dbg !470

; <label>:103:                                    ; preds = %99
  %104 = load i8**, i8*** %12, align 8, !dbg !471
  %105 = icmp ne i8** %104, null, !dbg !474
  br i1 %105, label %106, label %110, !dbg !475

; <label>:106:                                    ; preds = %103
  %107 = load i8**, i8*** %12, align 8, !dbg !476
  %108 = load i8*, i8** %107, align 8, !dbg !478
  call void @free(i8* %108) #5, !dbg !479
  %109 = load i8**, i8*** %12, align 8, !dbg !480
  store i8* null, i8** %109, align 8, !dbg !481
  br label %110, !dbg !482

; <label>:110:                                    ; preds = %106, %103
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i32 0, i32 0)), !dbg !483
  store i8 0, i8* %14, align 1, !dbg !484
  br label %111, !dbg !485

; <label>:111:                                    ; preds = %110, %99
  %112 = load i8, i8* %14, align 1, !dbg !486
  %113 = sext i8 %112 to i32, !dbg !486
  %114 = icmp ne i32 %113, 0, !dbg !486
  br i1 %114, label %115, label %119, !dbg !487

; <label>:115:                                    ; preds = %111
  %116 = load i8, i8* %15, align 1, !dbg !488
  %117 = sext i8 %116 to i32, !dbg !488
  %118 = icmp ne i32 %117, 0, !dbg !490
  br label %119

; <label>:119:                                    ; preds = %115, %111
  %120 = phi i1 [ false, %111 ], [ %118, %115 ]
  %121 = zext i1 %120 to i32, !dbg !491
  %122 = trunc i32 %121 to i8, !dbg !493
  store i8 %122, i8* %7, align 1, !dbg !494
  br label %123, !dbg !494

; <label>:123:                                    ; preds = %119, %51
  %124 = load i8, i8* %7, align 1, !dbg !495
  ret i8 %124, !dbg !495
}

; Function Attrs: nounwind uwtable
define signext i8 @RpcOut_SendOneRawPreallocated(i8*, i64, i8*, i64) #0 !dbg !496 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !499, metadata !50), !dbg !500
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !501, metadata !50), !dbg !502
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !503, metadata !50), !dbg !504
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !505, metadata !50), !dbg !506
  %9 = load i8*, i8** %5, align 8, !dbg !507
  %10 = load i64, i64* %6, align 8, !dbg !508
  %11 = load i8*, i8** %7, align 8, !dbg !509
  %12 = load i64, i64* %8, align 8, !dbg !510
  %13 = call signext i8 @RpcOutSendOneRawWork(i8* %9, i64 %10, i8* %11, i64 %12, i8** null, i64* null), !dbg !511
  ret i8 %13, !dbg !512
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "rpcout.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line856")
!2 = !{}
!3 = !{!4, !7, !10, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!15 = distinct !DISubprogram(name: "RpcOut_Construct", scope: !16, file: !16, line: 112, type: !17, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!16 = !DIFile(filename: "rpcout.c", directory: "/home/lichi/Desktop/open-vm-tools/line856")
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcOut", file: !21, line: 48, baseType: !22)
!21 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/rpcout.h", directory: "/home/lichi/Desktop/open-vm-tools/line856")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcOut", file: !16, line: 66, size: 384, align: 64, elements: !23)
!23 = !{!24, !48}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !22, file: !16, line: 67, baseType: !25, size: 320, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "Message_Channel", file: !26, line: 65, baseType: !27)
!26 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/message.h", directory: "/home/lichi/Desktop/open-vm-tools/line856")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Message_Channel", file: !26, line: 51, size: 320, align: 64, elements: !28)
!28 = !{!29, !35, !37, !41, !43, !47}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !27, file: !26, line: 53, baseType: !30, size: 16, align: 16)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !31, line: 175, baseType: !32)
!31 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line856")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !33, line: 49, baseType: !34)
!33 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line856")
!34 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !27, file: !26, line: 57, baseType: !36, size: 64, align: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "inAlloc", scope: !27, file: !26, line: 59, baseType: !38, size: 64, align: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 216, baseType: !40)
!39 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line856")
!40 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "inPreallocated", scope: !27, file: !26, line: 60, baseType: !42, size: 8, align: 8, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !31, line: 230, baseType: !9)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cookieHigh", scope: !27, file: !26, line: 63, baseType: !44, size: 32, align: 32, offset: 224)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !31, line: 173, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !33, line: 51, baseType: !46)
!46 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cookieLow", scope: !27, file: !26, line: 64, baseType: !44, size: 32, align: 32, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !22, file: !16, line: 68, baseType: !42, size: 8, align: 8, offset: 320)
!49 = !DILocalVariable(name: "rpcOut", scope: !15, file: !16, line: 114, type: !19)
!50 = !DIExpression()
!51 = !DILocation(line: 114, column: 12, scope: !15)
!52 = !DILocation(line: 114, column: 21, scope: !15)
!53 = !DILocation(line: 115, column: 21, scope: !15)
!54 = !DILocation(line: 115, column: 4, scope: !15)
!55 = !DILocation(line: 116, column: 11, scope: !15)
!56 = !DILocation(line: 116, column: 4, scope: !15)
!57 = distinct !DISubprogram(name: "RpcOutInitialize", scope: !16, file: !16, line: 89, type: !58, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !19}
!60 = !DILocalVariable(name: "rpcOut", arg: 1, scope: !57, file: !16, line: 89, type: !19)
!61 = !DILocation(line: 89, column: 26, scope: !57)
!62 = !DILocation(line: 91, column: 11, scope: !57)
!63 = !DILocation(line: 91, column: 4, scope: !57)
!64 = !DILocation(line: 92, column: 1, scope: !57)
!65 = distinct !DISubprogram(name: "RpcOut_Destruct", scope: !16, file: !16, line: 137, type: !58, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!66 = !DILocalVariable(name: "out", arg: 1, scope: !65, file: !16, line: 137, type: !19)
!67 = !DILocation(line: 137, column: 25, scope: !65)
!68 = !DILocation(line: 142, column: 9, scope: !65)
!69 = !DILocation(line: 142, column: 4, scope: !65)
!70 = !DILocation(line: 143, column: 1, scope: !65)
!71 = distinct !DISubprogram(name: "RpcOut_startWithReceiveBuffer", scope: !16, file: !16, line: 170, type: !72, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!72 = !DISubroutineType(types: !73)
!73 = !{!42, !19, !11, !38}
!74 = !DILocalVariable(name: "out", arg: 1, scope: !71, file: !16, line: 170, type: !19)
!75 = !DILocation(line: 170, column: 39, scope: !71)
!76 = !DILocalVariable(name: "receiveBuffer", arg: 2, scope: !71, file: !16, line: 170, type: !11)
!77 = !DILocation(line: 170, column: 50, scope: !71)
!78 = !DILocalVariable(name: "receiveBufferSize", arg: 3, scope: !71, file: !16, line: 171, type: !38)
!79 = !DILocation(line: 171, column: 38, scope: !71)
!80 = !DILocation(line: 175, column: 54, scope: !71)
!81 = !DILocation(line: 175, column: 59, scope: !71)
!82 = !DILocation(line: 176, column: 41, scope: !71)
!83 = !DILocation(line: 176, column: 56, scope: !71)
!84 = !DILocation(line: 175, column: 19, scope: !71)
!85 = !DILocation(line: 175, column: 4, scope: !71)
!86 = !DILocation(line: 175, column: 9, scope: !71)
!87 = !DILocation(line: 175, column: 17, scope: !71)
!88 = !DILocation(line: 177, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !71, file: !16, line: 177, column: 8)
!90 = !DILocation(line: 177, column: 14, scope: !89)
!91 = !DILocation(line: 177, column: 8, scope: !71)
!92 = !DILocation(line: 178, column: 7, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !16, line: 177, column: 23)
!94 = !DILocation(line: 179, column: 4, scope: !93)
!95 = !DILocation(line: 180, column: 11, scope: !71)
!96 = !DILocation(line: 180, column: 16, scope: !71)
!97 = !DILocation(line: 180, column: 4, scope: !71)
!98 = distinct !DISubprogram(name: "RpcOut_start", scope: !16, file: !16, line: 202, type: !99, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!99 = !DISubroutineType(types: !100)
!100 = !{!42, !19}
!101 = !DILocalVariable(name: "out", arg: 1, scope: !98, file: !16, line: 202, type: !19)
!102 = !DILocation(line: 202, column: 22, scope: !98)
!103 = !DILocation(line: 204, column: 41, scope: !98)
!104 = !DILocation(line: 204, column: 11, scope: !98)
!105 = !DILocation(line: 204, column: 4, scope: !98)
!106 = distinct !DISubprogram(name: "RpcOut_send", scope: !16, file: !16, line: 234, type: !107, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!107 = !DISubroutineType(types: !108)
!108 = !{!42, !19, !7, !38, !109, !110, !111}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!112 = !DILocalVariable(name: "out", arg: 1, scope: !106, file: !16, line: 234, type: !19)
!113 = !DILocation(line: 234, column: 21, scope: !106)
!114 = !DILocalVariable(name: "request", arg: 2, scope: !106, file: !16, line: 235, type: !7)
!115 = !DILocation(line: 235, column: 25, scope: !106)
!116 = !DILocalVariable(name: "reqLen", arg: 3, scope: !106, file: !16, line: 236, type: !38)
!117 = !DILocation(line: 236, column: 20, scope: !106)
!118 = !DILocalVariable(name: "rpcStatus", arg: 4, scope: !106, file: !16, line: 237, type: !109)
!119 = !DILocation(line: 237, column: 19, scope: !106)
!120 = !DILocalVariable(name: "reply", arg: 5, scope: !106, file: !16, line: 238, type: !110)
!121 = !DILocation(line: 238, column: 26, scope: !106)
!122 = !DILocalVariable(name: "repLen", arg: 6, scope: !106, file: !16, line: 239, type: !111)
!123 = !DILocation(line: 239, column: 21, scope: !106)
!124 = !DILocalVariable(name: "myReply", scope: !106, file: !16, line: 241, type: !36)
!125 = !DILocation(line: 241, column: 19, scope: !106)
!126 = !DILocalVariable(name: "myRepLen", scope: !106, file: !16, line: 242, type: !38)
!127 = !DILocation(line: 242, column: 11, scope: !106)
!128 = !DILocalVariable(name: "success", scope: !106, file: !16, line: 243, type: !42)
!129 = !DILocation(line: 243, column: 9, scope: !106)
!130 = !DILocation(line: 248, column: 22, scope: !131)
!131 = distinct !DILexicalBlock(scope: !106, file: !16, line: 248, column: 8)
!132 = !DILocation(line: 248, column: 27, scope: !131)
!133 = !DILocation(line: 248, column: 59, scope: !131)
!134 = !DILocation(line: 248, column: 68, scope: !131)
!135 = !DILocation(line: 248, column: 8, scope: !131)
!136 = !DILocation(line: 248, column: 76, scope: !131)
!137 = !DILocation(line: 248, column: 8, scope: !106)
!138 = !DILocation(line: 249, column: 8, scope: !139)
!139 = distinct !DILexicalBlock(scope: !131, file: !16, line: 248, column: 82)
!140 = !DILocation(line: 249, column: 14, scope: !139)
!141 = !DILocation(line: 250, column: 25, scope: !139)
!142 = !DILocation(line: 250, column: 24, scope: !139)
!143 = !DILocation(line: 250, column: 17, scope: !139)
!144 = !DILocation(line: 250, column: 8, scope: !139)
!145 = !DILocation(line: 250, column: 15, scope: !139)
!146 = !DILocation(line: 252, column: 7, scope: !139)
!147 = !DILocation(line: 255, column: 25, scope: !148)
!148 = distinct !DILexicalBlock(scope: !106, file: !16, line: 255, column: 8)
!149 = !DILocation(line: 255, column: 30, scope: !148)
!150 = !DILocation(line: 255, column: 8, scope: !148)
!151 = !DILocation(line: 255, column: 60, scope: !148)
!152 = !DILocation(line: 255, column: 8, scope: !106)
!153 = !DILocation(line: 256, column: 8, scope: !154)
!154 = distinct !DILexicalBlock(scope: !148, file: !16, line: 255, column: 66)
!155 = !DILocation(line: 256, column: 14, scope: !154)
!156 = !DILocation(line: 257, column: 25, scope: !154)
!157 = !DILocation(line: 257, column: 24, scope: !154)
!158 = !DILocation(line: 257, column: 17, scope: !154)
!159 = !DILocation(line: 257, column: 8, scope: !154)
!160 = !DILocation(line: 257, column: 15, scope: !154)
!161 = !DILocation(line: 259, column: 7, scope: !154)
!162 = !DILocation(line: 262, column: 8, scope: !163)
!163 = distinct !DILexicalBlock(scope: !106, file: !16, line: 262, column: 8)
!164 = !DILocation(line: 262, column: 17, scope: !163)
!165 = !DILocation(line: 263, column: 8, scope: !163)
!166 = !DILocation(line: 263, column: 46, scope: !167)
!167 = !DILexicalBlockFile(scope: !163, file: !16, discriminator: 1)
!168 = !DILocation(line: 263, column: 24, scope: !167)
!169 = !DILocation(line: 263, column: 64, scope: !167)
!170 = !DILocation(line: 263, column: 22, scope: !167)
!171 = !DILocation(line: 263, column: 13, scope: !167)
!172 = !DILocation(line: 263, column: 70, scope: !167)
!173 = !DILocation(line: 264, column: 15, scope: !163)
!174 = !DILocation(line: 264, column: 40, scope: !167)
!175 = !DILocation(line: 264, column: 18, scope: !167)
!176 = !DILocation(line: 262, column: 8, scope: !177)
!177 = !DILexicalBlockFile(scope: !106, file: !16, discriminator: 1)
!178 = !DILocation(line: 265, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !163, file: !16, line: 264, column: 60)
!180 = !DILocation(line: 265, column: 14, scope: !179)
!181 = !DILocation(line: 266, column: 25, scope: !179)
!182 = !DILocation(line: 266, column: 24, scope: !179)
!183 = !DILocation(line: 266, column: 17, scope: !179)
!184 = !DILocation(line: 266, column: 8, scope: !179)
!185 = !DILocation(line: 266, column: 15, scope: !179)
!186 = !DILocation(line: 268, column: 7, scope: !179)
!187 = !DILocation(line: 271, column: 17, scope: !106)
!188 = !DILocation(line: 271, column: 5, scope: !106)
!189 = !DILocation(line: 271, column: 15, scope: !106)
!190 = !DILocation(line: 272, column: 28, scope: !106)
!191 = !DILocation(line: 272, column: 37, scope: !106)
!192 = !DILocation(line: 272, column: 5, scope: !106)
!193 = !DILocation(line: 272, column: 11, scope: !106)
!194 = !DILocation(line: 273, column: 14, scope: !106)
!195 = !DILocation(line: 273, column: 23, scope: !106)
!196 = !DILocation(line: 273, column: 5, scope: !106)
!197 = !DILocation(line: 273, column: 12, scope: !106)
!198 = !DILocation(line: 275, column: 4, scope: !106)
!199 = !DILocation(line: 276, column: 1, scope: !106)
!200 = distinct !DISubprogram(name: "RpcOut_stop", scope: !16, file: !16, line: 297, type: !99, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!201 = !DILocalVariable(name: "out", arg: 1, scope: !200, file: !16, line: 297, type: !19)
!202 = !DILocation(line: 297, column: 21, scope: !200)
!203 = !DILocalVariable(name: "status", scope: !200, file: !16, line: 299, type: !42)
!204 = !DILocation(line: 299, column: 9, scope: !200)
!205 = !DILocation(line: 303, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !200, file: !16, line: 303, column: 8)
!207 = !DILocation(line: 303, column: 13, scope: !206)
!208 = !DILocation(line: 303, column: 8, scope: !200)
!209 = !DILocation(line: 305, column: 35, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !16, line: 305, column: 11)
!211 = distinct !DILexicalBlock(scope: !206, file: !16, line: 303, column: 22)
!212 = !DILocation(line: 305, column: 40, scope: !210)
!213 = !DILocation(line: 305, column: 11, scope: !210)
!214 = !DILocation(line: 305, column: 49, scope: !210)
!215 = !DILocation(line: 305, column: 11, scope: !211)
!216 = !DILocation(line: 306, column: 10, scope: !217)
!217 = distinct !DILexicalBlock(scope: !210, file: !16, line: 305, column: 55)
!218 = !DILocation(line: 307, column: 17, scope: !217)
!219 = !DILocation(line: 308, column: 7, scope: !217)
!220 = !DILocation(line: 310, column: 7, scope: !211)
!221 = !DILocation(line: 310, column: 12, scope: !211)
!222 = !DILocation(line: 310, column: 20, scope: !211)
!223 = !DILocation(line: 311, column: 4, scope: !211)
!224 = !DILocation(line: 313, column: 11, scope: !200)
!225 = !DILocation(line: 313, column: 4, scope: !200)
!226 = distinct !DISubprogram(name: "RpcOut_sendOne", scope: !16, file: !16, line: 340, type: !227, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!227 = !DISubroutineType(types: !228)
!228 = !{!42, !229, !111, !7, null}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!230 = !DILocalVariable(name: "reply", arg: 1, scope: !226, file: !16, line: 340, type: !229)
!231 = !DILocation(line: 340, column: 23, scope: !226)
!232 = !DILocalVariable(name: "repLen", arg: 2, scope: !226, file: !16, line: 341, type: !111)
!233 = !DILocation(line: 341, column: 24, scope: !226)
!234 = !DILocalVariable(name: "reqFmt", arg: 3, scope: !226, file: !16, line: 342, type: !7)
!235 = !DILocation(line: 342, column: 28, scope: !226)
!236 = !DILocalVariable(name: "args", scope: !226, file: !16, line: 345, type: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !238, line: 79, baseType: !239)
!238 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line856")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !240, line: 40, baseType: !241)
!240 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line856")
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 345, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 192, align: 64, elements: !249)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 345, size: 192, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !243, file: !1, line: 345, baseType: !46, size: 32, align: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !243, file: !1, line: 345, baseType: !46, size: 32, align: 32, offset: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !243, file: !1, line: 345, baseType: !10, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !243, file: !1, line: 345, baseType: !10, size: 64, align: 64, offset: 128)
!249 = !{!250}
!250 = !DISubrange(count: 1)
!251 = !DILocation(line: 345, column: 12, scope: !226)
!252 = !DILocalVariable(name: "status", scope: !226, file: !16, line: 346, type: !42)
!253 = !DILocation(line: 346, column: 9, scope: !226)
!254 = !DILocalVariable(name: "request", scope: !226, file: !16, line: 347, type: !11)
!255 = !DILocation(line: 347, column: 10, scope: !226)
!256 = !DILocalVariable(name: "reqLen", scope: !226, file: !16, line: 348, type: !38)
!257 = !DILocation(line: 348, column: 11, scope: !226)
!258 = !DILocation(line: 350, column: 11, scope: !226)
!259 = !DILocation(line: 353, column: 3, scope: !226)
!260 = !DILocation(line: 354, column: 37, scope: !226)
!261 = !DILocation(line: 354, column: 45, scope: !226)
!262 = !DILocation(line: 354, column: 14, scope: !226)
!263 = !DILocation(line: 354, column: 12, scope: !226)
!264 = !DILocation(line: 355, column: 3, scope: !226)
!265 = !DILocation(line: 361, column: 8, scope: !266)
!266 = distinct !DILexicalBlock(scope: !226, file: !16, line: 361, column: 8)
!267 = !DILocation(line: 361, column: 16, scope: !266)
!268 = !DILocation(line: 361, column: 8, scope: !226)
!269 = !DILocation(line: 362, column: 11, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !16, line: 362, column: 11)
!271 = distinct !DILexicalBlock(scope: !266, file: !16, line: 361, column: 24)
!272 = !DILocation(line: 362, column: 11, scope: !271)
!273 = !DILocation(line: 363, column: 11, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !16, line: 362, column: 18)
!275 = !DILocation(line: 363, column: 17, scope: !274)
!276 = !DILocation(line: 364, column: 7, scope: !274)
!277 = !DILocation(line: 365, column: 7, scope: !271)
!278 = !DILocation(line: 377, column: 15, scope: !279)
!279 = distinct !DILexicalBlock(scope: !226, file: !16, line: 377, column: 8)
!280 = !DILocation(line: 377, column: 8, scope: !279)
!281 = !DILocation(line: 377, column: 29, scope: !279)
!282 = !DILocation(line: 377, column: 8, scope: !226)
!283 = !DILocalVariable(name: "tmp", scope: !284, file: !16, line: 378, type: !11)
!284 = distinct !DILexicalBlock(scope: !279, file: !16, line: 377, column: 37)
!285 = !DILocation(line: 378, column: 13, scope: !284)
!286 = !DILocation(line: 380, column: 38, scope: !284)
!287 = !DILocation(line: 380, column: 13, scope: !284)
!288 = !DILocation(line: 380, column: 11, scope: !284)
!289 = !DILocation(line: 381, column: 12, scope: !284)
!290 = !DILocation(line: 381, column: 7, scope: !284)
!291 = !DILocation(line: 382, column: 17, scope: !284)
!292 = !DILocation(line: 382, column: 15, scope: !284)
!293 = !DILocation(line: 388, column: 11, scope: !294)
!294 = distinct !DILexicalBlock(scope: !284, file: !16, line: 388, column: 11)
!295 = !DILocation(line: 388, column: 19, scope: !294)
!296 = !DILocation(line: 388, column: 11, scope: !284)
!297 = !DILocation(line: 389, column: 14, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !16, line: 389, column: 14)
!299 = distinct !DILexicalBlock(scope: !294, file: !16, line: 388, column: 27)
!300 = !DILocation(line: 389, column: 20, scope: !298)
!301 = !DILocation(line: 389, column: 14, scope: !299)
!302 = !DILocation(line: 390, column: 14, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !16, line: 389, column: 28)
!304 = !DILocation(line: 390, column: 20, scope: !303)
!305 = !DILocation(line: 391, column: 10, scope: !303)
!306 = !DILocation(line: 392, column: 10, scope: !299)
!307 = !DILocation(line: 394, column: 4, scope: !284)
!308 = !DILocation(line: 396, column: 31, scope: !226)
!309 = !DILocation(line: 396, column: 40, scope: !226)
!310 = !DILocation(line: 396, column: 48, scope: !226)
!311 = !DILocation(line: 396, column: 55, scope: !226)
!312 = !DILocation(line: 396, column: 13, scope: !226)
!313 = !DILocation(line: 396, column: 11, scope: !226)
!314 = !DILocation(line: 398, column: 9, scope: !226)
!315 = !DILocation(line: 398, column: 4, scope: !226)
!316 = !DILocation(line: 400, column: 11, scope: !226)
!317 = !DILocation(line: 400, column: 4, scope: !226)
!318 = !DILocation(line: 401, column: 1, scope: !226)
!319 = distinct !DISubprogram(name: "RpcOut_SendOneRaw", scope: !16, file: !16, line: 549, type: !320, isLocal: false, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!320 = !DISubroutineType(types: !321)
!321 = !{!42, !10, !38, !229, !111}
!322 = !DILocalVariable(name: "request", arg: 1, scope: !319, file: !16, line: 549, type: !10)
!323 = !DILocation(line: 549, column: 25, scope: !319)
!324 = !DILocalVariable(name: "reqLen", arg: 2, scope: !319, file: !16, line: 550, type: !38)
!325 = !DILocation(line: 550, column: 26, scope: !319)
!326 = !DILocalVariable(name: "reply", arg: 3, scope: !319, file: !16, line: 551, type: !229)
!327 = !DILocation(line: 551, column: 26, scope: !319)
!328 = !DILocalVariable(name: "repLen", arg: 4, scope: !319, file: !16, line: 552, type: !111)
!329 = !DILocation(line: 552, column: 27, scope: !319)
!330 = !DILocation(line: 554, column: 32, scope: !319)
!331 = !DILocation(line: 554, column: 41, scope: !319)
!332 = !DILocation(line: 554, column: 57, scope: !319)
!333 = !DILocation(line: 554, column: 64, scope: !319)
!334 = !DILocation(line: 554, column: 11, scope: !319)
!335 = !DILocation(line: 554, column: 4, scope: !319)
!336 = distinct !DISubprogram(name: "RpcOutSendOneRawWork", scope: !16, file: !16, line: 416, type: !337, isLocal: true, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!337 = !DISubroutineType(types: !338)
!338 = !{!42, !10, !38, !11, !38, !229, !111}
!339 = !DILocalVariable(name: "request", arg: 1, scope: !336, file: !16, line: 416, type: !10)
!340 = !DILocation(line: 416, column: 28, scope: !336)
!341 = !DILocalVariable(name: "reqLen", arg: 2, scope: !336, file: !16, line: 417, type: !38)
!342 = !DILocation(line: 417, column: 29, scope: !336)
!343 = !DILocalVariable(name: "callerReply", arg: 3, scope: !336, file: !16, line: 418, type: !11)
!344 = !DILocation(line: 418, column: 28, scope: !336)
!345 = !DILocalVariable(name: "callerReplyLen", arg: 4, scope: !336, file: !16, line: 419, type: !38)
!346 = !DILocation(line: 419, column: 29, scope: !336)
!347 = !DILocalVariable(name: "reply", arg: 5, scope: !336, file: !16, line: 420, type: !229)
!348 = !DILocation(line: 420, column: 29, scope: !336)
!349 = !DILocalVariable(name: "repLen", arg: 6, scope: !336, file: !16, line: 421, type: !111)
!350 = !DILocation(line: 421, column: 30, scope: !336)
!351 = !DILocalVariable(name: "status", scope: !336, file: !16, line: 423, type: !42)
!352 = !DILocation(line: 423, column: 9, scope: !336)
!353 = !DILocalVariable(name: "rpcStatus", scope: !336, file: !16, line: 424, type: !42)
!354 = !DILocation(line: 424, column: 9, scope: !336)
!355 = !DILocalVariable(name: "out", scope: !336, file: !16, line: 426, type: !20)
!356 = !DILocation(line: 426, column: 11, scope: !336)
!357 = !DILocalVariable(name: "myReply", scope: !336, file: !16, line: 427, type: !7)
!358 = !DILocation(line: 427, column: 16, scope: !336)
!359 = !DILocalVariable(name: "myRepLen", scope: !336, file: !16, line: 428, type: !38)
!360 = !DILocation(line: 428, column: 11, scope: !336)
!361 = !DILocation(line: 430, column: 50, scope: !336)
!362 = !DILocation(line: 430, column: 4, scope: !336)
!363 = !DILocation(line: 431, column: 4, scope: !336)
!364 = !DILocation(line: 432, column: 45, scope: !365)
!365 = distinct !DILexicalBlock(scope: !336, file: !16, line: 432, column: 8)
!366 = !DILocation(line: 432, column: 58, scope: !365)
!367 = !DILocation(line: 432, column: 9, scope: !365)
!368 = !DILocation(line: 432, column: 8, scope: !336)
!369 = !DILocation(line: 433, column: 15, scope: !370)
!370 = distinct !DILexicalBlock(scope: !365, file: !16, line: 432, column: 75)
!371 = !DILocation(line: 434, column: 25, scope: !370)
!372 = !DILocation(line: 434, column: 18, scope: !370)
!373 = !DILocation(line: 434, column: 16, scope: !370)
!374 = !DILocation(line: 436, column: 11, scope: !375)
!375 = distinct !DILexicalBlock(scope: !370, file: !16, line: 436, column: 11)
!376 = !DILocation(line: 436, column: 23, scope: !375)
!377 = !DILocation(line: 436, column: 11, scope: !370)
!378 = !DILocalVariable(name: "s", scope: !379, file: !16, line: 437, type: !46)
!379 = distinct !DILexicalBlock(scope: !375, file: !16, line: 436, column: 31)
!380 = !DILocation(line: 437, column: 19, scope: !379)
!381 = !DILocation(line: 437, column: 26, scope: !379)
!382 = !DILocation(line: 437, column: 41, scope: !379)
!383 = !DILocation(line: 437, column: 49, scope: !379)
!384 = !DILocation(line: 437, column: 46, scope: !379)
!385 = !DILocation(line: 437, column: 24, scope: !379)
!386 = !DILocation(line: 437, column: 63, scope: !387)
!387 = !DILexicalBlockFile(scope: !379, file: !16, discriminator: 1)
!388 = !DILocation(line: 437, column: 78, scope: !387)
!389 = !DILocation(line: 437, column: 24, scope: !387)
!390 = !DILocation(line: 437, column: 86, scope: !391)
!391 = !DILexicalBlockFile(scope: !379, file: !16, discriminator: 2)
!392 = !DILocation(line: 437, column: 24, scope: !391)
!393 = !DILocation(line: 437, column: 24, scope: !394)
!394 = !DILexicalBlockFile(scope: !379, file: !16, discriminator: 3)
!395 = !DILocation(line: 437, column: 23, scope: !394)
!396 = !DILocation(line: 437, column: 19, scope: !394)
!397 = !DILocation(line: 439, column: 17, scope: !379)
!398 = !DILocation(line: 439, column: 30, scope: !379)
!399 = !DILocation(line: 439, column: 39, scope: !379)
!400 = !DILocation(line: 439, column: 10, scope: !379)
!401 = !DILocation(line: 440, column: 22, scope: !379)
!402 = !DILocation(line: 440, column: 10, scope: !379)
!403 = !DILocation(line: 440, column: 25, scope: !379)
!404 = !DILocation(line: 441, column: 7, scope: !379)
!405 = !DILocation(line: 443, column: 7, scope: !370)
!406 = !DILocation(line: 446, column: 31, scope: !336)
!407 = !DILocation(line: 446, column: 40, scope: !336)
!408 = !DILocation(line: 446, column: 13, scope: !336)
!409 = !DILocation(line: 446, column: 11, scope: !336)
!410 = !DILocation(line: 452, column: 18, scope: !336)
!411 = !DILocation(line: 452, column: 27, scope: !336)
!412 = !DILocation(line: 452, column: 36, scope: !336)
!413 = !DILocation(line: 452, column: 46, scope: !336)
!414 = !DILocation(line: 452, column: 54, scope: !336)
!415 = !DILocation(line: 450, column: 4, scope: !336)
!416 = !DILocation(line: 454, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !336, file: !16, line: 454, column: 8)
!418 = !DILocation(line: 454, column: 14, scope: !417)
!419 = !DILocation(line: 454, column: 8, scope: !336)
!420 = !DILocation(line: 460, column: 11, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !16, line: 460, column: 11)
!422 = distinct !DILexicalBlock(scope: !417, file: !16, line: 454, column: 22)
!423 = !DILocation(line: 460, column: 19, scope: !421)
!424 = !DILocation(line: 460, column: 11, scope: !422)
!425 = !DILocation(line: 469, column: 26, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !16, line: 460, column: 27)
!427 = !DILocation(line: 469, column: 35, scope: !426)
!428 = !DILocation(line: 469, column: 19, scope: !426)
!429 = !DILocation(line: 469, column: 11, scope: !426)
!430 = !DILocation(line: 469, column: 17, scope: !426)
!431 = !DILocation(line: 470, column: 15, scope: !432)
!432 = distinct !DILexicalBlock(scope: !426, file: !16, line: 470, column: 14)
!433 = !DILocation(line: 470, column: 14, scope: !432)
!434 = !DILocation(line: 470, column: 21, scope: !432)
!435 = !DILocation(line: 470, column: 14, scope: !426)
!436 = !DILocation(line: 471, column: 21, scope: !437)
!437 = distinct !DILexicalBlock(scope: !432, file: !16, line: 470, column: 29)
!438 = !DILocation(line: 471, column: 20, scope: !437)
!439 = !DILocation(line: 471, column: 28, scope: !437)
!440 = !DILocation(line: 471, column: 37, scope: !437)
!441 = !DILocation(line: 471, column: 13, scope: !437)
!442 = !DILocation(line: 476, column: 22, scope: !437)
!443 = !DILocation(line: 476, column: 15, scope: !437)
!444 = !DILocation(line: 476, column: 14, scope: !437)
!445 = !DILocation(line: 476, column: 13, scope: !437)
!446 = !DILocation(line: 476, column: 32, scope: !437)
!447 = !DILocation(line: 477, column: 10, scope: !437)
!448 = !DILocation(line: 478, column: 7, scope: !426)
!449 = !DILocation(line: 482, column: 11, scope: !450)
!450 = distinct !DILexicalBlock(scope: !421, file: !16, line: 478, column: 14)
!451 = !DILocation(line: 482, column: 17, scope: !450)
!452 = !DILocation(line: 489, column: 11, scope: !453)
!453 = distinct !DILexicalBlock(scope: !422, file: !16, line: 489, column: 11)
!454 = !DILocation(line: 489, column: 18, scope: !453)
!455 = !DILocation(line: 489, column: 25, scope: !453)
!456 = !DILocation(line: 489, column: 29, scope: !457)
!457 = !DILexicalBlockFile(scope: !453, file: !16, discriminator: 1)
!458 = !DILocation(line: 489, column: 28, scope: !457)
!459 = !DILocation(line: 489, column: 35, scope: !457)
!460 = !DILocation(line: 489, column: 11, scope: !457)
!461 = !DILocation(line: 490, column: 20, scope: !462)
!462 = distinct !DILexicalBlock(scope: !453, file: !16, line: 489, column: 44)
!463 = !DILocation(line: 490, column: 11, scope: !462)
!464 = !DILocation(line: 490, column: 18, scope: !462)
!465 = !DILocation(line: 491, column: 7, scope: !462)
!466 = !DILocation(line: 492, column: 4, scope: !422)
!467 = !DILocation(line: 494, column: 8, scope: !468)
!468 = distinct !DILexicalBlock(scope: !336, file: !16, line: 494, column: 8)
!469 = !DILocation(line: 494, column: 26, scope: !468)
!470 = !DILocation(line: 494, column: 8, scope: !336)
!471 = !DILocation(line: 500, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !16, line: 500, column: 11)
!473 = distinct !DILexicalBlock(scope: !468, file: !16, line: 494, column: 32)
!474 = !DILocation(line: 500, column: 17, scope: !472)
!475 = !DILocation(line: 500, column: 11, scope: !473)
!476 = !DILocation(line: 501, column: 16, scope: !477)
!477 = distinct !DILexicalBlock(scope: !472, file: !16, line: 500, column: 25)
!478 = !DILocation(line: 501, column: 15, scope: !477)
!479 = !DILocation(line: 501, column: 10, scope: !477)
!480 = !DILocation(line: 502, column: 11, scope: !477)
!481 = !DILocation(line: 502, column: 17, scope: !477)
!482 = !DILocation(line: 503, column: 7, scope: !477)
!483 = !DILocation(line: 504, column: 7, scope: !473)
!484 = !DILocation(line: 505, column: 14, scope: !473)
!485 = !DILocation(line: 506, column: 4, scope: !473)
!486 = !DILocation(line: 508, column: 11, scope: !336)
!487 = !DILocation(line: 508, column: 18, scope: !336)
!488 = !DILocation(line: 508, column: 21, scope: !489)
!489 = !DILexicalBlockFile(scope: !336, file: !16, discriminator: 1)
!490 = !DILocation(line: 508, column: 18, scope: !489)
!491 = !DILocation(line: 508, column: 18, scope: !492)
!492 = !DILexicalBlockFile(scope: !336, file: !16, discriminator: 2)
!493 = !DILocation(line: 508, column: 11, scope: !492)
!494 = !DILocation(line: 508, column: 4, scope: !492)
!495 = !DILocation(line: 509, column: 1, scope: !336)
!496 = distinct !DISubprogram(name: "RpcOut_SendOneRawPreallocated", scope: !16, file: !16, line: 587, type: !497, isLocal: false, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!497 = !DISubroutineType(types: !498)
!498 = !{!42, !10, !38, !11, !38}
!499 = !DILocalVariable(name: "request", arg: 1, scope: !496, file: !16, line: 587, type: !10)
!500 = !DILocation(line: 587, column: 37, scope: !496)
!501 = !DILocalVariable(name: "reqLen", arg: 2, scope: !496, file: !16, line: 588, type: !38)
!502 = !DILocation(line: 588, column: 38, scope: !496)
!503 = !DILocalVariable(name: "reply", arg: 3, scope: !496, file: !16, line: 589, type: !11)
!504 = !DILocation(line: 589, column: 37, scope: !496)
!505 = !DILocalVariable(name: "repLen", arg: 4, scope: !496, file: !16, line: 590, type: !38)
!506 = !DILocation(line: 590, column: 38, scope: !496)
!507 = !DILocation(line: 592, column: 32, scope: !496)
!508 = !DILocation(line: 592, column: 41, scope: !496)
!509 = !DILocation(line: 592, column: 49, scope: !496)
!510 = !DILocation(line: 592, column: 56, scope: !496)
!511 = !DILocation(line: 592, column: 11, scope: !496)
!512 = !DILocation(line: 592, column: 4, scope: !496)
