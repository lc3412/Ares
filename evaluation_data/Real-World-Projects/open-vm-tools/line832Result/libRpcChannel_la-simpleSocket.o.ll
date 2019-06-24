; ModuleID = './libRpcChannel_la-simpleSocket.o.i'
source_filename = "./libRpcChannel_la-simpleSocket.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_vm = type { i16, i16, i32, i32, [4 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.DataMap = type { %struct.HashMap*, i64 }
%struct.HashMap = type opaque

@.str = private unnamed_addr constant [48 x i8] c"SimpleSock: Error in closing socket %d: %d[%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"SimpleSock: Socket %d closed by peer.\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"SimpleSock: Recv error for socket %d: %d[%s]\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"SimpleSock: Recved %d bytes from socket %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"SimpleSock: Send error for socket %d: %d[%s]\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"SimpleSock: Sent %d bytes from socket %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"SimpleSock: Couldn't get VMCI socket family info.\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"SimpleSock: creating new socket, connecting to %u:%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"SimpleSock: Failed to connect using a privileged port.\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"SimpleSock: socket %d connected\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"SimpleSock: error in recving packet header, err=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"SimpleSock: Invalid packetLen value 0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"SimpleSock: Could not allocate recv buffer.\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"SimpleSock: error in recving packet, err=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"/dev/vsock\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"/vmfs/devices/char/vsock/vsock\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"SimpleSock: failed to create socket, error %d: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"SimpleSock: Couldn't bind on source port %d, error %d, %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"SimpleSock: Successfully bound to source port %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"SimpleSock: failed to connect (%d => %d), error %d: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"SimpleSock: Error in dataMap decoding, error=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"SimpleSock: Error in allocating memory\0A\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"SimpleSock: Error in decoding payload, error=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"SimpleSock: Error in allocating memory.\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"SimpleSock: Error in dataMap encoding\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @Socket_Close(i32) #0 !dbg !70 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !75, metadata !76), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %3, metadata !78, metadata !76), !dbg !79
  %5 = load i32, i32* %2, align 4, !dbg !80
  %6 = call i32 @close(i32 %5), !dbg !81
  store i32 %6, i32* %3, align 4, !dbg !82
  %7 = load i32, i32* %3, align 4, !dbg !83
  %8 = icmp eq i32 %7, -1, !dbg !85
  br i1 %8, label %9, label %15, !dbg !86

; <label>:9:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !87, metadata !76), !dbg !89
  %10 = call i32 @SocketGetLastError(), !dbg !90
  store i32 %10, i32* %4, align 4, !dbg !89
  %11 = load i32, i32* %2, align 4, !dbg !91
  %12 = load i32, i32* %4, align 4, !dbg !92
  %13 = load i32, i32* %4, align 4, !dbg !93
  %14 = call i8* @Err_Errno2String(i32 %13), !dbg !94
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i32 %11, i32 %12, i8* %14), !dbg !95
  br label %15, !dbg !96

; <label>:15:                                     ; preds = %9, %1
  ret void, !dbg !97
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @SocketGetLastError() #0 !dbg !98 {
  %1 = call i32* @__errno_location() #1, !dbg !101
  %2 = load i32, i32* %1, align 4, !dbg !102
  ret i32 %2, !dbg !103
}

declare void @Warning(i8*, ...) #2

declare i8* @Err_Errno2String(i32) #2

; Function Attrs: nounwind uwtable
define i32 @Socket_Recv(i32, i8*, i32) #0 !dbg !104 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !110, metadata !76), !dbg !111
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !112, metadata !76), !dbg !113
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !114, metadata !76), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %8, metadata !116, metadata !76), !dbg !117
  %11 = load i32, i32* %7, align 4, !dbg !118
  store i32 %11, i32* %8, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %9, metadata !119, metadata !76), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %10, metadata !121, metadata !76), !dbg !122
  br label %12, !dbg !123

; <label>:12:                                     ; preds = %39, %33, %3
  %13 = load i32, i32* %8, align 4, !dbg !124
  %14 = icmp sgt i32 %13, 0, !dbg !126
  br i1 %14, label %15, label %47, !dbg !127

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %5, align 4, !dbg !128
  %17 = load i8*, i8** %6, align 8, !dbg !130
  %18 = load i32, i32* %8, align 4, !dbg !131
  %19 = sext i32 %18 to i64, !dbg !131
  %20 = call i64 @recv(i32 %16, i8* %17, i64 %19, i32 0), !dbg !132
  %21 = trunc i64 %20 to i32, !dbg !132
  store i32 %21, i32* %9, align 4, !dbg !133
  %22 = load i32, i32* %9, align 4, !dbg !134
  %23 = icmp eq i32 %22, 0, !dbg !136
  br i1 %23, label %24, label %26, !dbg !137

; <label>:24:                                     ; preds = %15
  %25 = load i32, i32* %5, align 4, !dbg !138
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i32 %25), !dbg !140
  store i32 0, i32* %4, align 4, !dbg !141
  br label %50, !dbg !141

; <label>:26:                                     ; preds = %15
  %27 = load i32, i32* %9, align 4, !dbg !142
  %28 = icmp eq i32 %27, -1, !dbg !144
  br i1 %28, label %29, label %39, !dbg !145

; <label>:29:                                     ; preds = %26
  %30 = call i32 @SocketGetLastError(), !dbg !146
  store i32 %30, i32* %10, align 4, !dbg !148
  %31 = load i32, i32* %10, align 4, !dbg !149
  %32 = icmp eq i32 %31, 4, !dbg !151
  br i1 %32, label %33, label %34, !dbg !152

; <label>:33:                                     ; preds = %29
  br label %12, !dbg !153, !llvm.loop !155

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %5, align 4, !dbg !156
  %36 = load i32, i32* %10, align 4, !dbg !157
  %37 = load i32, i32* %10, align 4, !dbg !158
  %38 = call i8* @Err_Errno2String(i32 %37), !dbg !159
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), i32 %35, i32 %36, i8* %38), !dbg !160
  store i32 0, i32* %4, align 4, !dbg !161
  br label %50, !dbg !161

; <label>:39:                                     ; preds = %26
  %40 = load i32, i32* %9, align 4, !dbg !162
  %41 = load i32, i32* %8, align 4, !dbg !163
  %42 = sub nsw i32 %41, %40, !dbg !163
  store i32 %42, i32* %8, align 4, !dbg !163
  %43 = load i32, i32* %9, align 4, !dbg !164
  %44 = load i8*, i8** %6, align 8, !dbg !165
  %45 = sext i32 %43 to i64, !dbg !165
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !165
  store i8* %46, i8** %6, align 8, !dbg !165
  br label %12, !dbg !166, !llvm.loop !155

; <label>:47:                                     ; preds = %12
  %48 = load i32, i32* %7, align 4, !dbg !168
  %49 = load i32, i32* %5, align 4, !dbg !169
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i32 %48, i32 %49), !dbg !170
  store i32 1, i32* %4, align 4, !dbg !171
  br label %50, !dbg !171

; <label>:50:                                     ; preds = %47, %34, %24
  %51 = load i32, i32* %4, align 4, !dbg !172
  ret i32 %51, !dbg !172
}

declare i64 @recv(i32, i8*, i64, i32) #2

declare void @Debug(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @Socket_Send(i32, i8*, i32) #0 !dbg !173 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !174, metadata !76), !dbg !175
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !176, metadata !76), !dbg !177
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !178, metadata !76), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %8, metadata !180, metadata !76), !dbg !181
  %12 = load i32, i32* %7, align 4, !dbg !182
  store i32 %12, i32* %8, align 4, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %9, metadata !183, metadata !76), !dbg !184
  store i32 0, i32* %9, align 4, !dbg !184
  call void @llvm.dbg.declare(metadata i32* %10, metadata !185, metadata !76), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %11, metadata !187, metadata !76), !dbg !188
  br label %13, !dbg !189

; <label>:13:                                     ; preds = %38, %32, %3
  %14 = load i32, i32* %8, align 4, !dbg !190
  %15 = icmp sgt i32 %14, 0, !dbg !192
  br i1 %15, label %16, label %45, !dbg !193

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %5, align 4, !dbg !194
  %18 = load i8*, i8** %6, align 8, !dbg !196
  %19 = load i32, i32* %9, align 4, !dbg !197
  %20 = sext i32 %19 to i64, !dbg !198
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !198
  %22 = load i32, i32* %8, align 4, !dbg !199
  %23 = sext i32 %22 to i64, !dbg !199
  %24 = call i64 @send(i32 %17, i8* %21, i64 %23, i32 0), !dbg !200
  %25 = trunc i64 %24 to i32, !dbg !200
  store i32 %25, i32* %10, align 4, !dbg !201
  %26 = load i32, i32* %10, align 4, !dbg !202
  %27 = icmp eq i32 %26, -1, !dbg !204
  br i1 %27, label %28, label %38, !dbg !205

; <label>:28:                                     ; preds = %16
  %29 = call i32 @SocketGetLastError(), !dbg !206
  store i32 %29, i32* %11, align 4, !dbg !208
  %30 = load i32, i32* %11, align 4, !dbg !209
  %31 = icmp eq i32 %30, 4, !dbg !211
  br i1 %31, label %32, label %33, !dbg !212

; <label>:32:                                     ; preds = %28
  br label %13, !dbg !213, !llvm.loop !215

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %5, align 4, !dbg !216
  %35 = load i32, i32* %11, align 4, !dbg !217
  %36 = load i32, i32* %11, align 4, !dbg !218
  %37 = call i8* @Err_Errno2String(i32 %36), !dbg !219
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i32 %34, i32 %35, i8* %37), !dbg !220
  store i32 0, i32* %4, align 4, !dbg !221
  br label %48, !dbg !221

; <label>:38:                                     ; preds = %16
  %39 = load i32, i32* %10, align 4, !dbg !222
  %40 = load i32, i32* %8, align 4, !dbg !223
  %41 = sub nsw i32 %40, %39, !dbg !223
  store i32 %41, i32* %8, align 4, !dbg !223
  %42 = load i32, i32* %10, align 4, !dbg !224
  %43 = load i32, i32* %9, align 4, !dbg !225
  %44 = add nsw i32 %43, %42, !dbg !225
  store i32 %44, i32* %9, align 4, !dbg !225
  br label %13, !dbg !226, !llvm.loop !215

; <label>:45:                                     ; preds = %13
  %46 = load i32, i32* %7, align 4, !dbg !228
  %47 = load i32, i32* %5, align 4, !dbg !229
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i32 %46, i32 %47), !dbg !230
  store i32 1, i32* %4, align 4, !dbg !231
  br label %48, !dbg !231

; <label>:48:                                     ; preds = %45, %33
  %49 = load i32, i32* %4, align 4, !dbg !232
  ret i32 %49, !dbg !232
}

declare i64 @send(i32, i8*, i64, i32) #2

; Function Attrs: nounwind uwtable
define i32 @Socket_ConnectVMCI(i32, i32, i32, i32*, i32*) #0 !dbg !233 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sockaddr_vm, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !239, metadata !76), !dbg !240
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !241, metadata !76), !dbg !242
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !243, metadata !76), !dbg !244
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !245, metadata !76), !dbg !246
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !247, metadata !76), !dbg !248
  call void @llvm.dbg.declare(metadata %struct.sockaddr_vm* %11, metadata !249, metadata !76), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %12, metadata !263, metadata !76), !dbg !264
  call void @llvm.dbg.declare(metadata i32* %13, metadata !265, metadata !76), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %14, metadata !267, metadata !76), !dbg !268
  store i32 0, i32* %14, align 4, !dbg !268
  call void @llvm.dbg.declare(metadata i32* %15, metadata !269, metadata !76), !dbg !270
  call void @llvm.dbg.declare(metadata i32* %16, metadata !271, metadata !76), !dbg !272
  store i32 -1, i32* %16, align 4, !dbg !272
  call void @llvm.dbg.declare(metadata i32* %17, metadata !273, metadata !76), !dbg !274
  %18 = call i32 @VMCISock_GetAFValueFd(i32* %16), !dbg !275
  store i32 %18, i32* %17, align 4, !dbg !274
  %19 = load i32, i32* %17, align 4, !dbg !276
  %20 = icmp eq i32 %19, -1, !dbg !278
  br i1 %20, label %21, label %22, !dbg !279

; <label>:21:                                     ; preds = %5
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0)), !dbg !280
  store i32 1, i32* %15, align 4, !dbg !282
  store i32 -1, i32* %13, align 4, !dbg !283
  br label %78, !dbg !284

; <label>:22:                                     ; preds = %5
  %23 = call i32 @SocketStartup(), !dbg !285
  %24 = icmp ne i32 %23, 0, !dbg !285
  br i1 %24, label %26, label %25, !dbg !287

; <label>:25:                                     ; preds = %22
  store i32 2, i32* %15, align 4, !dbg !288
  store i32 -1, i32* %13, align 4, !dbg !290
  br label %78, !dbg !291

; <label>:26:                                     ; preds = %22
  %27 = bitcast %struct.sockaddr_vm* %11 to i8*, !dbg !292
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 16, i32 4, i1 false), !dbg !292
  %28 = load i32, i32* %17, align 4, !dbg !293
  %29 = trunc i32 %28 to i16, !dbg !293
  %30 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %11, i32 0, i32 0, !dbg !294
  store i16 %29, i16* %30, align 4, !dbg !295
  %31 = load i32, i32* %6, align 4, !dbg !296
  %32 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %11, i32 0, i32 3, !dbg !297
  store i32 %31, i32* %32, align 4, !dbg !298
  %33 = load i32, i32* %7, align 4, !dbg !299
  %34 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %11, i32 0, i32 2, !dbg !300
  store i32 %33, i32* %34, align 4, !dbg !301
  %35 = load i32, i32* %6, align 4, !dbg !302
  %36 = load i32, i32* %7, align 4, !dbg !303
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i32 %35, i32 %36), !dbg !304
  %37 = load i32, i32* %8, align 4, !dbg !305
  %38 = icmp ne i32 %37, 0, !dbg !305
  br i1 %38, label %41, label %39, !dbg !307

; <label>:39:                                     ; preds = %26
  %40 = call i32 @SocketConnectVmciInternal(%struct.sockaddr_vm* %11, i32 -1, i32* %15, i32* %14), !dbg !308
  store i32 %40, i32* %13, align 4, !dbg !310
  br label %78, !dbg !311

; <label>:41:                                     ; preds = %26
  store i32 1023, i32* %12, align 4, !dbg !312
  br label %42, !dbg !313

; <label>:42:                                     ; preds = %75, %66, %57, %41
  %43 = load i32, i32* %12, align 4, !dbg !314
  %44 = icmp uge i32 %43, 1, !dbg !316
  br i1 %44, label %45, label %77, !dbg !317

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %12, align 4, !dbg !318
  %47 = call i32 @SocketConnectVmciInternal(%struct.sockaddr_vm* %11, i32 %46, i32* %15, i32* %14), !dbg !320
  store i32 %47, i32* %13, align 4, !dbg !321
  %48 = load i32, i32* %13, align 4, !dbg !322
  %49 = icmp ne i32 %48, -1, !dbg !324
  br i1 %49, label %50, label %51, !dbg !325

; <label>:50:                                     ; preds = %45
  br label %78, !dbg !326

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* %15, align 4, !dbg !328
  %53 = icmp eq i32 %52, 5, !dbg !330
  br i1 %53, label %54, label %60, !dbg !331

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %14, align 4, !dbg !332
  %56 = icmp eq i32 %55, 98, !dbg !334
  br i1 %56, label %57, label %60, !dbg !335

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %12, align 4, !dbg !336
  %59 = add i32 %58, -1, !dbg !336
  store i32 %59, i32* %12, align 4, !dbg !336
  br label %42, !dbg !338, !llvm.loop !339

; <label>:60:                                     ; preds = %54, %51
  %61 = load i32, i32* %15, align 4, !dbg !340
  %62 = icmp eq i32 %61, 4, !dbg !342
  br i1 %62, label %63, label %69, !dbg !343

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* %14, align 4, !dbg !344
  %65 = icmp eq i32 %64, 104, !dbg !346
  br i1 %65, label %66, label %69, !dbg !347

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %12, align 4, !dbg !348
  %68 = add i32 %67, -1, !dbg !348
  store i32 %68, i32* %12, align 4, !dbg !348
  br label %42, !dbg !350, !llvm.loop !339

; <label>:69:                                     ; preds = %63, %60
  %70 = load i32, i32* %15, align 4, !dbg !351
  %71 = icmp eq i32 %70, 4, !dbg !353
  br i1 %71, label %72, label %76, !dbg !354

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %14, align 4, !dbg !355
  %74 = icmp eq i32 %73, 4, !dbg !357
  br i1 %74, label %75, label %76, !dbg !358

; <label>:75:                                     ; preds = %72
  br label %42, !dbg !359, !llvm.loop !339

; <label>:76:                                     ; preds = %72, %69
  br label %78, !dbg !361

; <label>:77:                                     ; preds = %42
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0)), !dbg !362
  br label %78, !dbg !362

; <label>:78:                                     ; preds = %77, %76, %50, %39, %25, %21
  %79 = load i32, i32* %16, align 4, !dbg !363
  call void @VMCISock_ReleaseAFValueFd(i32 %79), !dbg !364
  %80 = load i32*, i32** %9, align 8, !dbg !365
  %81 = icmp ne i32* %80, null, !dbg !365
  br i1 %81, label %82, label %85, !dbg !367

; <label>:82:                                     ; preds = %78
  %83 = load i32, i32* %15, align 4, !dbg !368
  %84 = load i32*, i32** %9, align 8, !dbg !370
  store i32 %83, i32* %84, align 4, !dbg !371
  br label %85, !dbg !372

; <label>:85:                                     ; preds = %82, %78
  %86 = load i32*, i32** %10, align 8, !dbg !373
  %87 = icmp ne i32* %86, null, !dbg !373
  br i1 %87, label %88, label %91, !dbg !375

; <label>:88:                                     ; preds = %85
  %89 = load i32, i32* %14, align 4, !dbg !376
  %90 = load i32*, i32** %10, align 8, !dbg !378
  store i32 %89, i32* %90, align 4, !dbg !379
  br label %91, !dbg !380

; <label>:91:                                     ; preds = %88, %85
  %92 = load i32, i32* %13, align 4, !dbg !381
  %93 = icmp ne i32 %92, -1, !dbg !383
  br i1 %93, label %94, label %96, !dbg !384

; <label>:94:                                     ; preds = %91
  %95 = load i32, i32* %13, align 4, !dbg !385
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i32 %95), !dbg !387
  br label %96, !dbg !388

; <label>:96:                                     ; preds = %94, %91
  %97 = load i32, i32* %13, align 4, !dbg !389
  ret i32 %97, !dbg !390
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @VMCISock_GetAFValueFd(i32*) #3 !dbg !391 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !394, metadata !76), !dbg !395
  call void @llvm.dbg.declare(metadata i32* %4, metadata !396, metadata !76), !dbg !397
  call void @llvm.dbg.declare(metadata i32* %5, metadata !398, metadata !76), !dbg !399
  store i32 -1, i32* %5, align 4, !dbg !399
  call void @llvm.dbg.declare(metadata i32* %6, metadata !400, metadata !76), !dbg !402
  %7 = call i32 @socket(i32 40, i32 2, i32 0) #8, !dbg !403
  store i32 %7, i32* %6, align 4, !dbg !402
  %8 = load i32, i32* %6, align 4, !dbg !404
  %9 = icmp ne i32 %8, -1, !dbg !406
  br i1 %9, label %10, label %18, !dbg !407

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %6, align 4, !dbg !408
  %12 = call i32 @close(i32 %11), !dbg !410
  %13 = load i32*, i32** %3, align 8, !dbg !411
  %14 = icmp ne i32* %13, null, !dbg !411
  br i1 %14, label %15, label %17, !dbg !413

; <label>:15:                                     ; preds = %10
  %16 = load i32*, i32** %3, align 8, !dbg !414
  store i32 -1, i32* %16, align 4, !dbg !416
  br label %17, !dbg !417

; <label>:17:                                     ; preds = %15, %10
  store i32 40, i32* %2, align 4, !dbg !418
  br label %48, !dbg !418

; <label>:18:                                     ; preds = %1
  %19 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !419
  store i32 %19, i32* %4, align 4, !dbg !420
  %20 = load i32, i32* %4, align 4, !dbg !421
  %21 = icmp slt i32 %20, 0, !dbg !423
  br i1 %21, label %22, label %28, !dbg !424

; <label>:22:                                     ; preds = %18
  %23 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i32 0), !dbg !425
  store i32 %23, i32* %4, align 4, !dbg !427
  %24 = load i32, i32* %4, align 4, !dbg !428
  %25 = icmp slt i32 %24, 0, !dbg !430
  br i1 %25, label %26, label %27, !dbg !431

; <label>:26:                                     ; preds = %22
  store i32 -1, i32* %2, align 4, !dbg !432
  br label %48, !dbg !432

; <label>:27:                                     ; preds = %22
  br label %28, !dbg !434

; <label>:28:                                     ; preds = %27, %18
  %29 = load i32, i32* %4, align 4, !dbg !435
  %30 = call i32 (i32, i64, ...) @ioctl(i32 %29, i64 1976, i32* %5) #8, !dbg !437
  %31 = icmp slt i32 %30, 0, !dbg !438
  br i1 %31, label %32, label %33, !dbg !439

; <label>:32:                                     ; preds = %28
  store i32 -1, i32* %5, align 4, !dbg !440
  br label %33, !dbg !442

; <label>:33:                                     ; preds = %32, %28
  %34 = load i32, i32* %5, align 4, !dbg !443
  %35 = icmp slt i32 %34, 0, !dbg !445
  br i1 %35, label %36, label %39, !dbg !446

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %4, align 4, !dbg !447
  %38 = call i32 @close(i32 %37), !dbg !449
  br label %46, !dbg !450

; <label>:39:                                     ; preds = %33
  %40 = load i32*, i32** %3, align 8, !dbg !451
  %41 = icmp ne i32* %40, null, !dbg !451
  br i1 %41, label %42, label %45, !dbg !451

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %4, align 4, !dbg !454
  %44 = load i32*, i32** %3, align 8, !dbg !456
  store i32 %43, i32* %44, align 4, !dbg !457
  br label %45, !dbg !458

; <label>:45:                                     ; preds = %42, %39
  br label %46

; <label>:46:                                     ; preds = %45, %36
  %47 = load i32, i32* %5, align 4, !dbg !459
  store i32 %47, i32* %2, align 4, !dbg !460
  br label %48, !dbg !460

; <label>:48:                                     ; preds = %46, %26, %17
  %49 = load i32, i32* %2, align 4, !dbg !461
  ret i32 %49, !dbg !461
}

; Function Attrs: nounwind uwtable
define internal i32 @SocketStartup() #0 !dbg !462 {
  ret i32 1, !dbg !465
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i32 @SocketConnectVmciInternal(%struct.sockaddr_vm*, i32, i32*, i32*) #0 !dbg !466 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_vm, align 4
  store %struct.sockaddr_vm* %0, %struct.sockaddr_vm** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_vm** %6, metadata !471, metadata !76), !dbg !472
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !473, metadata !76), !dbg !474
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !475, metadata !76), !dbg !476
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !477, metadata !76), !dbg !478
  call void @llvm.dbg.declare(metadata i32* %10, metadata !479, metadata !76), !dbg !480
  call void @llvm.dbg.declare(metadata %struct.sockaddr_vm* %11, metadata !481, metadata !76), !dbg !482
  %12 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %6, align 8, !dbg !483
  %13 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %12, i32 0, i32 0, !dbg !484
  %14 = load i16, i16* %13, align 4, !dbg !484
  %15 = zext i16 %14 to i32, !dbg !483
  %16 = call i32 @socket(i32 %15, i32 1, i32 0) #8, !dbg !485
  store i32 %16, i32* %10, align 4, !dbg !486
  %17 = load i32, i32* %10, align 4, !dbg !487
  %18 = icmp eq i32 %17, -1, !dbg !489
  br i1 %18, label %19, label %28, !dbg !490

; <label>:19:                                     ; preds = %4
  %20 = load i32*, i32** %8, align 8, !dbg !491
  store i32 3, i32* %20, align 4, !dbg !493
  %21 = call i32 @SocketGetLastError(), !dbg !494
  %22 = load i32*, i32** %9, align 8, !dbg !495
  store i32 %21, i32* %22, align 4, !dbg !496
  %23 = load i32*, i32** %9, align 8, !dbg !497
  %24 = load i32, i32* %23, align 4, !dbg !498
  %25 = load i32*, i32** %9, align 8, !dbg !499
  %26 = load i32, i32* %25, align 4, !dbg !500
  %27 = call i8* @Err_Errno2String(i32 %26), !dbg !501
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i32 0, i32 0), i32 %24, i8* %27), !dbg !502
  store i32 -1, i32* %5, align 4, !dbg !503
  br label %78, !dbg !503

; <label>:28:                                     ; preds = %4
  %29 = bitcast %struct.sockaddr_vm* %11 to i8*, !dbg !504
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 16, i32 4, i1 false), !dbg !504
  %30 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %6, align 8, !dbg !505
  %31 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %30, i32 0, i32 0, !dbg !506
  %32 = load i16, i16* %31, align 4, !dbg !506
  %33 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %11, i32 0, i32 0, !dbg !507
  store i16 %32, i16* %33, align 4, !dbg !508
  %34 = call i32 @VMCISock_GetLocalCID(), !dbg !509
  %35 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %11, i32 0, i32 3, !dbg !510
  store i32 %34, i32* %35, align 4, !dbg !511
  %36 = load i32, i32* %7, align 4, !dbg !512
  %37 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %11, i32 0, i32 2, !dbg !513
  store i32 %36, i32* %37, align 4, !dbg !514
  %38 = load i32, i32* %10, align 4, !dbg !515
  %39 = bitcast %struct.sockaddr_vm* %11 to %struct.sockaddr*, !dbg !517
  %40 = call i32 @bind(i32 %38, %struct.sockaddr* %39, i32 16) #8, !dbg !518
  %41 = icmp ne i32 %40, 0, !dbg !519
  br i1 %41, label %42, label %53, !dbg !520

; <label>:42:                                     ; preds = %28
  %43 = load i32*, i32** %8, align 8, !dbg !521
  store i32 5, i32* %43, align 4, !dbg !523
  %44 = call i32 @SocketGetLastError(), !dbg !524
  %45 = load i32*, i32** %9, align 8, !dbg !525
  store i32 %44, i32* %45, align 4, !dbg !526
  %46 = load i32, i32* %7, align 4, !dbg !527
  %47 = load i32*, i32** %9, align 8, !dbg !528
  %48 = load i32, i32* %47, align 4, !dbg !529
  %49 = load i32*, i32** %9, align 8, !dbg !530
  %50 = load i32, i32* %49, align 4, !dbg !531
  %51 = call i8* @Err_Errno2String(i32 %50), !dbg !532
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i32 0, i32 0), i32 %46, i32 %48, i8* %51), !dbg !533
  %52 = load i32, i32* %10, align 4, !dbg !534
  call void @Socket_Close(i32 %52), !dbg !535
  store i32 -1, i32* %5, align 4, !dbg !536
  br label %78, !dbg !536

; <label>:53:                                     ; preds = %28
  %54 = load i32, i32* %7, align 4, !dbg !537
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i32 0, i32 0), i32 %54), !dbg !538
  %55 = load i32, i32* %10, align 4, !dbg !539
  %56 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %6, align 8, !dbg !541
  %57 = bitcast %struct.sockaddr_vm* %56 to %struct.sockaddr*, !dbg !542
  %58 = call i32 @connect(i32 %55, %struct.sockaddr* %57, i32 16), !dbg !543
  %59 = icmp ne i32 %58, 0, !dbg !544
  br i1 %59, label %60, label %74, !dbg !545

; <label>:60:                                     ; preds = %53
  %61 = load i32*, i32** %8, align 8, !dbg !546
  store i32 4, i32* %61, align 4, !dbg !548
  %62 = call i32 @SocketGetLastError(), !dbg !549
  %63 = load i32*, i32** %9, align 8, !dbg !550
  store i32 %62, i32* %63, align 4, !dbg !551
  %64 = load i32, i32* %7, align 4, !dbg !552
  %65 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %6, align 8, !dbg !553
  %66 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %65, i32 0, i32 2, !dbg !554
  %67 = load i32, i32* %66, align 4, !dbg !554
  %68 = load i32*, i32** %9, align 8, !dbg !555
  %69 = load i32, i32* %68, align 4, !dbg !556
  %70 = load i32*, i32** %9, align 8, !dbg !557
  %71 = load i32, i32* %70, align 4, !dbg !558
  %72 = call i8* @Err_Errno2String(i32 %71), !dbg !559
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i32 0, i32 0), i32 %64, i32 %67, i32 %69, i8* %72), !dbg !560
  %73 = load i32, i32* %10, align 4, !dbg !561
  call void @Socket_Close(i32 %73), !dbg !562
  store i32 -1, i32* %5, align 4, !dbg !563
  br label %78, !dbg !563

; <label>:74:                                     ; preds = %53
  %75 = load i32*, i32** %8, align 8, !dbg !564
  store i32 0, i32* %75, align 4, !dbg !565
  %76 = load i32*, i32** %9, align 8, !dbg !566
  store i32 0, i32* %76, align 4, !dbg !567
  %77 = load i32, i32* %10, align 4, !dbg !568
  store i32 %77, i32* %5, align 4, !dbg !569
  br label %78, !dbg !569

; <label>:78:                                     ; preds = %74, %60, %42, %19
  %79 = load i32, i32* %5, align 4, !dbg !570
  ret i32 %79, !dbg !570
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @VMCISock_ReleaseAFValueFd(i32) #3 !dbg !571 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !574, metadata !76), !dbg !575
  %3 = load i32, i32* %2, align 4, !dbg !576
  %4 = icmp sge i32 %3, 0, !dbg !578
  br i1 %4, label %5, label %8, !dbg !579

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !580
  %7 = call i32 @close(i32 %6), !dbg !582
  br label %8, !dbg !583

; <label>:8:                                      ; preds = %5, %1
  ret void, !dbg !584
}

; Function Attrs: nounwind uwtable
define i32 @Socket_RecvPacket(i32, i8**, i32*) #0 !dbg !585 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !589, metadata !76), !dbg !590
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !591, metadata !76), !dbg !592
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !593, metadata !76), !dbg !594
  call void @llvm.dbg.declare(metadata i32* %8, metadata !595, metadata !76), !dbg !596
  call void @llvm.dbg.declare(metadata i32* %9, metadata !597, metadata !76), !dbg !602
  call void @llvm.dbg.declare(metadata i32* %10, metadata !603, metadata !76), !dbg !604
  call void @llvm.dbg.declare(metadata i32* %11, metadata !605, metadata !76), !dbg !606
  store i32 4, i32* %11, align 4, !dbg !606
  call void @llvm.dbg.declare(metadata i32* %12, metadata !607, metadata !76), !dbg !608
  call void @llvm.dbg.declare(metadata i8** %13, metadata !609, metadata !76), !dbg !610
  %14 = load i32, i32* %5, align 4, !dbg !611
  %15 = bitcast i32* %9 to i8*, !dbg !612
  %16 = load i32, i32* %11, align 4, !dbg !613
  %17 = call i32 @Socket_Recv(i32 %14, i8* %15, i32 %16), !dbg !614
  store i32 %17, i32* %8, align 4, !dbg !615
  %18 = load i32, i32* %8, align 4, !dbg !616
  %19 = icmp ne i32 %18, 0, !dbg !616
  br i1 %19, label %22, label %20, !dbg !618

; <label>:20:                                     ; preds = %3
  %21 = call i32 @SocketGetLastError(), !dbg !619
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0), i32 %21), !dbg !621
  store i32 0, i32* %4, align 4, !dbg !622
  br label %68, !dbg !622

; <label>:22:                                     ; preds = %3
  %23 = load i32, i32* %9, align 4, !dbg !623
  %24 = call i32 @ntohl(i32 %23) #1, !dbg !624
  store i32 %24, i32* %10, align 4, !dbg !625
  %25 = load i32, i32* %10, align 4, !dbg !626
  %26 = load i32, i32* %11, align 4, !dbg !628
  %27 = sub nsw i32 2147483647, %26, !dbg !629
  %28 = icmp ugt i32 %25, %27, !dbg !630
  br i1 %28, label %29, label %31, !dbg !631

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* %9, align 4, !dbg !632
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i32 %30) #9, !dbg !634
  unreachable, !dbg !634

; <label>:31:                                     ; preds = %22
  %32 = load i32, i32* %10, align 4, !dbg !635
  %33 = load i32, i32* %11, align 4, !dbg !636
  %34 = add i32 %32, %33, !dbg !637
  store i32 %34, i32* %12, align 4, !dbg !638
  %35 = load i32, i32* %12, align 4, !dbg !639
  %36 = sext i32 %35 to i64, !dbg !639
  %37 = call noalias i8* @malloc(i64 %36) #8, !dbg !640
  store i8* %37, i8** %13, align 8, !dbg !641
  %38 = load i8*, i8** %13, align 8, !dbg !642
  %39 = icmp eq i8* %38, null, !dbg !644
  br i1 %39, label %40, label %41, !dbg !645

; <label>:40:                                     ; preds = %31
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0)), !dbg !646
  store i32 0, i32* %4, align 4, !dbg !648
  br label %68, !dbg !648

; <label>:41:                                     ; preds = %31
  %42 = load i8*, i8** %13, align 8, !dbg !649
  %43 = bitcast i32* %9 to i8*, !dbg !650
  %44 = load i32, i32* %11, align 4, !dbg !651
  %45 = sext i32 %44 to i64, !dbg !651
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 %45, i32 1, i1 false), !dbg !650
  %46 = load i32, i32* %5, align 4, !dbg !652
  %47 = load i8*, i8** %13, align 8, !dbg !653
  %48 = load i32, i32* %11, align 4, !dbg !654
  %49 = sext i32 %48 to i64, !dbg !655
  %50 = getelementptr inbounds i8, i8* %47, i64 %49, !dbg !655
  %51 = load i32, i32* %12, align 4, !dbg !656
  %52 = load i32, i32* %11, align 4, !dbg !657
  %53 = sub nsw i32 %51, %52, !dbg !658
  %54 = call i32 @Socket_Recv(i32 %46, i8* %50, i32 %53), !dbg !659
  store i32 %54, i32* %8, align 4, !dbg !660
  %55 = load i32, i32* %8, align 4, !dbg !661
  %56 = icmp ne i32 %55, 0, !dbg !661
  br i1 %56, label %60, label %57, !dbg !663

; <label>:57:                                     ; preds = %41
  %58 = call i32 @SocketGetLastError(), !dbg !664
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i32 %58), !dbg !666
  %59 = load i8*, i8** %13, align 8, !dbg !667
  call void @free(i8* %59) #8, !dbg !668
  store i32 0, i32* %4, align 4, !dbg !669
  br label %68, !dbg !669

; <label>:60:                                     ; preds = %41
  %61 = load i8*, i8** %13, align 8, !dbg !670
  %62 = load i32, i32* %12, align 4, !dbg !671
  %63 = load i8**, i8*** %6, align 8, !dbg !672
  %64 = load i32*, i32** %7, align 8, !dbg !673
  %65 = call i32 @Socket_DecodePacket(i8* %61, i32 %62, i8** %63, i32* %64), !dbg !674
  store i32 %65, i32* %8, align 4, !dbg !675
  %66 = load i8*, i8** %13, align 8, !dbg !676
  call void @free(i8* %66) #8, !dbg !677
  %67 = load i32, i32* %8, align 4, !dbg !678
  store i32 %67, i32* %4, align 4, !dbg !679
  br label %68, !dbg !679

; <label>:68:                                     ; preds = %60, %57, %40, %20
  %69 = load i32, i32* %4, align 4, !dbg !680
  ret i32 %69, !dbg !680
}

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #5

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #6

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @free(i8*) #7

; Function Attrs: nounwind uwtable
define internal i32 @Socket_DecodePacket(i8*, i32, i8**, i32*) #0 !dbg !681 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.DataMap, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !690, metadata !76), !dbg !691
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !692, metadata !76), !dbg !693
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !694, metadata !76), !dbg !695
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !696, metadata !76), !dbg !697
  call void @llvm.dbg.declare(metadata i32* %10, metadata !698, metadata !76), !dbg !700
  call void @llvm.dbg.declare(metadata %struct.DataMap* %11, metadata !701, metadata !76), !dbg !714
  call void @llvm.dbg.declare(metadata i8** %12, metadata !715, metadata !76), !dbg !716
  call void @llvm.dbg.declare(metadata i32* %13, metadata !717, metadata !76), !dbg !718
  %15 = load i8**, i8*** %8, align 8, !dbg !719
  store i8* null, i8** %15, align 8, !dbg !720
  %16 = load i32*, i32** %9, align 8, !dbg !721
  store i32 0, i32* %16, align 4, !dbg !722
  %17 = load i8*, i8** %6, align 8, !dbg !723
  %18 = load i32, i32* %7, align 4, !dbg !724
  %19 = call i32 @DataMap_Deserialize(i8* %17, i32 %18, %struct.DataMap* %11), !dbg !725
  store i32 %19, i32* %10, align 4, !dbg !726
  %20 = load i32, i32* %10, align 4, !dbg !727
  %21 = icmp ne i32 %20, 0, !dbg !729
  br i1 %21, label %22, label %24, !dbg !730

; <label>:22:                                     ; preds = %4
  %23 = load i32, i32* %10, align 4, !dbg !731
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i32 0, i32 0), i32 %23), !dbg !733
  store i32 0, i32* %5, align 4, !dbg !734
  br label %57, !dbg !734

; <label>:24:                                     ; preds = %4
  %25 = call i32 @DataMap_GetString(%struct.DataMap* %11, i32 2, i8** %12, i32* %13), !dbg !735
  store i32 %25, i32* %10, align 4, !dbg !736
  %26 = load i32, i32* %10, align 4, !dbg !737
  %27 = icmp eq i32 %26, 0, !dbg !739
  br i1 %27, label %28, label %50, !dbg !740

; <label>:28:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i8** %14, metadata !741, metadata !76), !dbg !743
  %29 = load i32, i32* %13, align 4, !dbg !744
  %30 = add nsw i32 %29, 1, !dbg !745
  %31 = sext i32 %30 to i64, !dbg !744
  %32 = call noalias i8* @malloc(i64 %31) #8, !dbg !746
  store i8* %32, i8** %14, align 8, !dbg !743
  %33 = load i8*, i8** %14, align 8, !dbg !747
  %34 = icmp eq i8* %33, null, !dbg !749
  br i1 %34, label %35, label %37, !dbg !750

; <label>:35:                                     ; preds = %28
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0)), !dbg !751
  %36 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !753
  br label %55, !dbg !754

; <label>:37:                                     ; preds = %28
  %38 = load i8*, i8** %14, align 8, !dbg !755
  %39 = load i8*, i8** %12, align 8, !dbg !756
  %40 = load i32, i32* %13, align 4, !dbg !757
  %41 = sext i32 %40 to i64, !dbg !757
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 %41, i32 1, i1 false), !dbg !758
  %42 = load i32, i32* %13, align 4, !dbg !759
  %43 = sext i32 %42 to i64, !dbg !760
  %44 = load i8*, i8** %14, align 8, !dbg !760
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !760
  store i8 0, i8* %45, align 1, !dbg !761
  %46 = load i8*, i8** %14, align 8, !dbg !762
  %47 = load i8**, i8*** %8, align 8, !dbg !763
  store i8* %46, i8** %47, align 8, !dbg !764
  %48 = load i32, i32* %13, align 4, !dbg !765
  %49 = load i32*, i32** %9, align 8, !dbg !766
  store i32 %48, i32* %49, align 4, !dbg !767
  br label %53, !dbg !768

; <label>:50:                                     ; preds = %24
  %51 = load i32, i32* %10, align 4, !dbg !769
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i32 0, i32 0), i32 %51), !dbg !771
  %52 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !772
  br label %55, !dbg !773

; <label>:53:                                     ; preds = %37
  %54 = call i32 @DataMap_Destroy(%struct.DataMap* %11), !dbg !774
  store i32 1, i32* %5, align 4, !dbg !775
  br label %57, !dbg !775

; <label>:55:                                     ; preds = %50, %35
  %56 = call i32 @DataMap_Destroy(%struct.DataMap* %11), !dbg !776
  store i32 0, i32* %5, align 4, !dbg !777
  br label %57, !dbg !777

; <label>:57:                                     ; preds = %55, %53, %22
  %58 = load i32, i32* %5, align 4, !dbg !778
  ret i32 %58, !dbg !778
}

; Function Attrs: nounwind uwtable
define i32 @Socket_SendPacket(i32, i8*, i32) #0 !dbg !779 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !782, metadata !76), !dbg !783
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !784, metadata !76), !dbg !785
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !786, metadata !76), !dbg !787
  call void @llvm.dbg.declare(metadata i32* %8, metadata !788, metadata !76), !dbg !789
  call void @llvm.dbg.declare(metadata i8** %9, metadata !790, metadata !76), !dbg !791
  call void @llvm.dbg.declare(metadata i32* %10, metadata !792, metadata !76), !dbg !793
  %11 = load i8*, i8** %6, align 8, !dbg !794
  %12 = load i32, i32* %7, align 4, !dbg !796
  %13 = call i32 @Socket_PackSendData(i8* %11, i32 %12, i8** %9, i32* %10), !dbg !797
  %14 = icmp ne i32 %13, 0, !dbg !797
  br i1 %14, label %16, label %15, !dbg !798

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !799
  br label %23, !dbg !799

; <label>:16:                                     ; preds = %3
  %17 = load i32, i32* %5, align 4, !dbg !801
  %18 = load i8*, i8** %9, align 8, !dbg !802
  %19 = load i32, i32* %10, align 4, !dbg !803
  %20 = call i32 @Socket_Send(i32 %17, i8* %18, i32 %19), !dbg !804
  store i32 %20, i32* %8, align 4, !dbg !805
  %21 = load i8*, i8** %9, align 8, !dbg !806
  call void @free(i8* %21) #8, !dbg !807
  %22 = load i32, i32* %8, align 4, !dbg !808
  store i32 %22, i32* %4, align 4, !dbg !809
  br label %23, !dbg !809

; <label>:23:                                     ; preds = %16, %15
  %24 = load i32, i32* %4, align 4, !dbg !810
  ret i32 %24, !dbg !810
}

; Function Attrs: nounwind uwtable
define internal i32 @Socket_PackSendData(i8*, i32, i8**, i32*) #0 !dbg !811 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.DataMap, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !812, metadata !76), !dbg !813
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !814, metadata !76), !dbg !815
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !816, metadata !76), !dbg !817
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !818, metadata !76), !dbg !819
  call void @llvm.dbg.declare(metadata %struct.DataMap* %10, metadata !820, metadata !76), !dbg !821
  call void @llvm.dbg.declare(metadata i32* %11, metadata !822, metadata !76), !dbg !823
  call void @llvm.dbg.declare(metadata i8** %12, metadata !824, metadata !76), !dbg !825
  call void @llvm.dbg.declare(metadata i32* %13, metadata !826, metadata !76), !dbg !827
  store i32 0, i32* %13, align 4, !dbg !827
  call void @llvm.dbg.declare(metadata i64* %14, metadata !828, metadata !76), !dbg !832
  store i64 1, i64* %14, align 8, !dbg !832
  %15 = call i32 @DataMap_Create(%struct.DataMap* %10), !dbg !833
  store i32 %15, i32* %11, align 4, !dbg !834
  %16 = load i32, i32* %11, align 4, !dbg !835
  %17 = icmp ne i32 %16, 0, !dbg !837
  br i1 %17, label %18, label %20, !dbg !838

; <label>:18:                                     ; preds = %4
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !839
  br label %58, !dbg !841

; <label>:20:                                     ; preds = %4
  store i32 1, i32* %13, align 4, !dbg !842
  %21 = load i64, i64* %14, align 8, !dbg !843
  %22 = call i32 @DataMap_SetInt64(%struct.DataMap* %10, i32 1, i64 %21, i8 signext 1), !dbg !844
  store i32 %22, i32* %11, align 4, !dbg !845
  %23 = load i32, i32* %11, align 4, !dbg !846
  %24 = icmp ne i32 %23, 0, !dbg !848
  br i1 %24, label %25, label %27, !dbg !849

; <label>:25:                                     ; preds = %20
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !850
  br label %58, !dbg !852

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %7, align 4, !dbg !853
  %29 = sext i32 %28 to i64, !dbg !853
  %30 = call noalias i8* @malloc(i64 %29) #8, !dbg !854
  store i8* %30, i8** %12, align 8, !dbg !855
  %31 = load i8*, i8** %12, align 8, !dbg !856
  %32 = icmp eq i8* %31, null, !dbg !858
  br i1 %32, label %33, label %35, !dbg !859

; <label>:33:                                     ; preds = %27
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0)), !dbg !860
  %34 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !863
  br label %58, !dbg !864

; <label>:35:                                     ; preds = %27
  %36 = load i8*, i8** %12, align 8, !dbg !865
  %37 = load i8*, i8** %6, align 8, !dbg !866
  %38 = load i32, i32* %7, align 4, !dbg !867
  %39 = sext i32 %38 to i64, !dbg !867
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 %39, i32 1, i1 false), !dbg !868
  %40 = load i8*, i8** %12, align 8, !dbg !869
  %41 = load i32, i32* %7, align 4, !dbg !870
  %42 = call i32 @DataMap_SetString(%struct.DataMap* %10, i32 2, i8* %40, i32 %41, i8 signext 1), !dbg !871
  store i32 %42, i32* %11, align 4, !dbg !872
  %43 = load i32, i32* %11, align 4, !dbg !873
  %44 = icmp ne i32 %43, 0, !dbg !875
  br i1 %44, label %45, label %48, !dbg !876

; <label>:45:                                     ; preds = %35
  %46 = load i8*, i8** %12, align 8, !dbg !877
  call void @free(i8* %46) #8, !dbg !879
  %47 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !880
  br label %58, !dbg !881

; <label>:48:                                     ; preds = %35
  %49 = load i8**, i8*** %8, align 8, !dbg !882
  %50 = load i32*, i32** %9, align 8, !dbg !883
  %51 = call i32 @DataMap_Serialize(%struct.DataMap* %10, i8** %49, i32* %50), !dbg !884
  store i32 %51, i32* %11, align 4, !dbg !885
  %52 = load i32, i32* %11, align 4, !dbg !886
  %53 = icmp ne i32 %52, 0, !dbg !888
  br i1 %53, label %54, label %56, !dbg !889

; <label>:54:                                     ; preds = %48
  %55 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !890
  br label %58, !dbg !892

; <label>:56:                                     ; preds = %48
  %57 = call i32 @DataMap_Destroy(%struct.DataMap* %10), !dbg !893
  store i32 1, i32* %5, align 4, !dbg !894
  br label %64, !dbg !894

; <label>:58:                                     ; preds = %54, %45, %33, %25, %18
  %59 = load i32, i32* %13, align 4, !dbg !895
  %60 = icmp ne i32 %59, 0, !dbg !895
  br i1 %60, label %61, label %63, !dbg !897

; <label>:61:                                     ; preds = %58
  %62 = call i32 @DataMap_Destroy(%struct.DataMap* %10), !dbg !898
  br label %63, !dbg !900

; <label>:63:                                     ; preds = %61, %58
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0)), !dbg !901
  store i32 0, i32* %5, align 4, !dbg !902
  br label %64, !dbg !902

; <label>:64:                                     ; preds = %63, %56
  %65 = load i32, i32* %5, align 4, !dbg !903
  ret i32 %65, !dbg !903
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #7

declare i32 @open64(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @VMCISock_GetLocalCID() #3 !dbg !904 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !907, metadata !76), !dbg !908
  call void @llvm.dbg.declare(metadata i32* %3, metadata !909, metadata !76), !dbg !910
  %4 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !911
  store i32 %4, i32* %2, align 4, !dbg !912
  %5 = load i32, i32* %2, align 4, !dbg !913
  %6 = icmp slt i32 %5, 0, !dbg !915
  br i1 %6, label %7, label %13, !dbg !916

; <label>:7:                                      ; preds = %0
  %8 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i32 0), !dbg !917
  store i32 %8, i32* %2, align 4, !dbg !919
  %9 = load i32, i32* %2, align 4, !dbg !920
  %10 = icmp slt i32 %9, 0, !dbg !922
  br i1 %10, label %11, label %12, !dbg !923

; <label>:11:                                     ; preds = %7
  store i32 -1, i32* %1, align 4, !dbg !924
  br label %22, !dbg !924

; <label>:12:                                     ; preds = %7
  br label %13, !dbg !926

; <label>:13:                                     ; preds = %12, %0
  %14 = load i32, i32* %2, align 4, !dbg !927
  %15 = call i32 (i32, i64, ...) @ioctl(i32 %14, i64 1977, i32* %3) #8, !dbg !929
  %16 = icmp slt i32 %15, 0, !dbg !930
  br i1 %16, label %17, label %18, !dbg !931

; <label>:17:                                     ; preds = %13
  store i32 -1, i32* %3, align 4, !dbg !932
  br label %18, !dbg !934

; <label>:18:                                     ; preds = %17, %13
  %19 = load i32, i32* %2, align 4, !dbg !935
  %20 = call i32 @close(i32 %19), !dbg !936
  %21 = load i32, i32* %3, align 4, !dbg !937
  store i32 %21, i32* %1, align 4, !dbg !938
  br label %22, !dbg !938

; <label>:22:                                     ; preds = %18, %11
  %23 = load i32, i32* %1, align 4, !dbg !939
  ret i32 %23, !dbg !939
}

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #7

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

declare i32 @DataMap_Deserialize(i8*, i32, %struct.DataMap*) #2

declare i32 @DataMap_GetString(%struct.DataMap*, i32, i8**, i32*) #2

declare i32 @assert(...) #2

declare i32 @DataMap_Destroy(%struct.DataMap*) #2

declare i32 @DataMap_Create(%struct.DataMap*) #2

declare i32 @DataMap_SetInt64(%struct.DataMap*, i32, i64, i8 signext) #2

declare i32 @DataMap_SetString(%struct.DataMap*, i32, i8*, i32, i8 signext) #2

declare i32 @DataMap_Serialize(%struct.DataMap*, i8**, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!67, !68}
!llvm.ident = !{!69}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !48)
!1 = !DIFile(filename: "libRpcChannel_la-simpleSocket.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!2 = !{!3, !12, !24, !39, !44}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "simpleSocket.h", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "SOCKERR_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "SOCKERR_VMCI_FAMILY", value: 1)
!8 = !DIEnumerator(name: "SOCKERR_STARTUP", value: 2)
!9 = !DIEnumerator(name: "SOCKERR_SOCKET", value: 3)
!10 = !DIEnumerator(name: "SOCKERR_CONNECT", value: 4)
!11 = !DIEnumerator(name: "SOCKERR_BIND", value: 5)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !13, line: 24, size: 32, align: 32, elements: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23}
!15 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!16 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!17 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!18 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!19 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!20 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!21 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!22 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!23 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 47, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dataMap.h", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!27 = !DIEnumerator(name: "DMERR_SUCCESS", value: 0)
!28 = !DIEnumerator(name: "DMERR_NOT_FOUND", value: 1)
!29 = !DIEnumerator(name: "DMERR_ALREADY_EXIST", value: 2)
!30 = !DIEnumerator(name: "DMERR_DUPLICATED_FIELD_IDS", value: 3)
!31 = !DIEnumerator(name: "DMERR_INSUFFICIENT_MEM", value: 4)
!32 = !DIEnumerator(name: "DMERR_TYPE_MISMATCH", value: 5)
!33 = !DIEnumerator(name: "DMERR_INVALID_ARGS", value: 6)
!34 = !DIEnumerator(name: "DMERR_UNKNOWN_TYPE", value: 7)
!35 = !DIEnumerator(name: "DMERR_TRUNCATED_DATA", value: 8)
!36 = !DIEnumerator(name: "DMERR_BUFFER_TOO_SMALL", value: 9)
!37 = !DIEnumerator(name: "DMERR_INTEGER_OVERFLOW", value: 10)
!38 = !DIEnumerator(name: "DMERR_BAD_DATA", value: 11)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 127, size: 32, align: 32, elements: !41)
!40 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/guestrpc/tclodefs.h", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!41 = !{!42, !43}
!42 = !DIEnumerator(name: "GUESTRPCPKT_FIELD_TYPE", value: 1)
!43 = !DIEnumerator(name: "GUESTRPCPKT_FIELD_PAYLOAD", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 122, size: 32, align: 32, elements: !45)
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "GUESTRPCPKT_TYPE_DATA", value: 1)
!47 = !DIEnumerator(name: "GUESTRPCPKT_TYPE_PING", value: 2)
!48 = !{!49, !51, !53, !54, !55}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET", file: !4, line: 66, baseType: !50)
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!53 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !57, line: 153, size: 128, align: 16, elements: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!58 = !{!59, !63}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !56, file: !57, line: 155, baseType: !60, size: 16, align: 16)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !61, line: 28, baseType: !62)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!62 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !56, file: !57, line: 156, baseType: !64, size: 112, align: 8, offset: 16)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 112, align: 8, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 14)
!67 = !{i32 2, !"Dwarf Version", i32 4}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!70 = distinct !DISubprogram(name: "Socket_Close", scope: !71, file: !71, line: 109, type: !72, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!71 = !DIFile(filename: "simpleSocket.c", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!72 = !DISubroutineType(types: !73)
!73 = !{null, !49}
!74 = !{}
!75 = !DILocalVariable(name: "sock", arg: 1, scope: !70, file: !71, line: 109, type: !49)
!76 = !DIExpression()
!77 = !DILocation(line: 109, column: 21, scope: !70)
!78 = !DILocalVariable(name: "res", scope: !70, file: !71, line: 111, type: !50)
!79 = !DILocation(line: 111, column: 8, scope: !70)
!80 = !DILocation(line: 116, column: 16, scope: !70)
!81 = !DILocation(line: 116, column: 10, scope: !70)
!82 = !DILocation(line: 116, column: 8, scope: !70)
!83 = !DILocation(line: 119, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !70, file: !71, line: 119, column: 8)
!85 = !DILocation(line: 119, column: 12, scope: !84)
!86 = !DILocation(line: 119, column: 8, scope: !70)
!87 = !DILocalVariable(name: "err", scope: !88, file: !71, line: 120, type: !50)
!88 = distinct !DILexicalBlock(scope: !84, file: !71, line: 119, column: 21)
!89 = !DILocation(line: 120, column: 11, scope: !88)
!90 = !DILocation(line: 120, column: 17, scope: !88)
!91 = !DILocation(line: 122, column: 15, scope: !88)
!92 = !DILocation(line: 122, column: 21, scope: !88)
!93 = !DILocation(line: 122, column: 43, scope: !88)
!94 = !DILocation(line: 122, column: 26, scope: !88)
!95 = !DILocation(line: 121, column: 7, scope: !88)
!96 = !DILocation(line: 123, column: 4, scope: !88)
!97 = !DILocation(line: 124, column: 1, scope: !70)
!98 = distinct !DISubprogram(name: "SocketGetLastError", scope: !71, file: !71, line: 144, type: !99, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!99 = !DISubroutineType(types: !100)
!100 = !{!50}
!101 = !DILocation(line: 149, column: 12, scope: !98)
!102 = !DILocation(line: 149, column: 11, scope: !98)
!103 = !DILocation(line: 149, column: 4, scope: !98)
!104 = distinct !DISubprogram(name: "Socket_Recv", scope: !71, file: !71, line: 171, type: !105, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !49, !51, !50}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !108, line: 50, baseType: !109)
!108 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !108, line: 49, baseType: !50)
!110 = !DILocalVariable(name: "fd", arg: 1, scope: !104, file: !71, line: 171, type: !49)
!111 = !DILocation(line: 171, column: 20, scope: !104)
!112 = !DILocalVariable(name: "buf", arg: 2, scope: !104, file: !71, line: 172, type: !51)
!113 = !DILocation(line: 172, column: 19, scope: !104)
!114 = !DILocalVariable(name: "len", arg: 3, scope: !104, file: !71, line: 173, type: !50)
!115 = !DILocation(line: 173, column: 17, scope: !104)
!116 = !DILocalVariable(name: "remaining", scope: !104, file: !71, line: 175, type: !50)
!117 = !DILocation(line: 175, column: 8, scope: !104)
!118 = !DILocation(line: 175, column: 20, scope: !104)
!119 = !DILocalVariable(name: "rv", scope: !104, file: !71, line: 176, type: !50)
!120 = !DILocation(line: 176, column: 8, scope: !104)
!121 = !DILocalVariable(name: "sysErr", scope: !104, file: !71, line: 177, type: !50)
!122 = !DILocation(line: 177, column: 8, scope: !104)
!123 = !DILocation(line: 179, column: 4, scope: !104)
!124 = !DILocation(line: 179, column: 11, scope: !125)
!125 = !DILexicalBlockFile(scope: !104, file: !71, discriminator: 1)
!126 = !DILocation(line: 179, column: 21, scope: !125)
!127 = !DILocation(line: 179, column: 4, scope: !125)
!128 = !DILocation(line: 180, column: 17, scope: !129)
!129 = distinct !DILexicalBlock(scope: !104, file: !71, line: 179, column: 26)
!130 = !DILocation(line: 180, column: 21, scope: !129)
!131 = !DILocation(line: 180, column: 27, scope: !129)
!132 = !DILocation(line: 180, column: 12, scope: !129)
!133 = !DILocation(line: 180, column: 10, scope: !129)
!134 = !DILocation(line: 181, column: 11, scope: !135)
!135 = distinct !DILexicalBlock(scope: !129, file: !71, line: 181, column: 11)
!136 = !DILocation(line: 181, column: 14, scope: !135)
!137 = !DILocation(line: 181, column: 11, scope: !129)
!138 = !DILocation(line: 182, column: 60, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !71, line: 181, column: 20)
!140 = !DILocation(line: 182, column: 10, scope: !139)
!141 = !DILocation(line: 183, column: 10, scope: !139)
!142 = !DILocation(line: 185, column: 11, scope: !143)
!143 = distinct !DILexicalBlock(scope: !129, file: !71, line: 185, column: 11)
!144 = !DILocation(line: 185, column: 14, scope: !143)
!145 = !DILocation(line: 185, column: 11, scope: !129)
!146 = !DILocation(line: 186, column: 19, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !71, line: 185, column: 23)
!148 = !DILocation(line: 186, column: 17, scope: !147)
!149 = !DILocation(line: 187, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !71, line: 187, column: 14)
!151 = !DILocation(line: 187, column: 21, scope: !150)
!152 = !DILocation(line: 187, column: 14, scope: !147)
!153 = !DILocation(line: 188, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !71, line: 187, column: 37)
!155 = distinct !{!155, !123}
!156 = !DILocation(line: 190, column: 69, scope: !147)
!157 = !DILocation(line: 190, column: 73, scope: !147)
!158 = !DILocation(line: 191, column: 35, scope: !147)
!159 = !DILocation(line: 191, column: 18, scope: !147)
!160 = !DILocation(line: 190, column: 10, scope: !147)
!161 = !DILocation(line: 192, column: 10, scope: !147)
!162 = !DILocation(line: 194, column: 20, scope: !129)
!163 = !DILocation(line: 194, column: 17, scope: !129)
!164 = !DILocation(line: 195, column: 14, scope: !129)
!165 = !DILocation(line: 195, column: 11, scope: !129)
!166 = !DILocation(line: 179, column: 4, scope: !167)
!167 = !DILexicalBlockFile(scope: !104, file: !71, discriminator: 2)
!168 = !DILocation(line: 198, column: 61, scope: !104)
!169 = !DILocation(line: 198, column: 66, scope: !104)
!170 = !DILocation(line: 198, column: 4, scope: !104)
!171 = !DILocation(line: 199, column: 4, scope: !104)
!172 = !DILocation(line: 200, column: 1, scope: !104)
!173 = distinct !DISubprogram(name: "Socket_Send", scope: !71, file: !71, line: 220, type: !105, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!174 = !DILocalVariable(name: "fd", arg: 1, scope: !173, file: !71, line: 220, type: !49)
!175 = !DILocation(line: 220, column: 20, scope: !173)
!176 = !DILocalVariable(name: "buf", arg: 2, scope: !173, file: !71, line: 221, type: !51)
!177 = !DILocation(line: 221, column: 19, scope: !173)
!178 = !DILocalVariable(name: "len", arg: 3, scope: !173, file: !71, line: 222, type: !50)
!179 = !DILocation(line: 222, column: 17, scope: !173)
!180 = !DILocalVariable(name: "left", scope: !173, file: !71, line: 224, type: !50)
!181 = !DILocation(line: 224, column: 8, scope: !173)
!182 = !DILocation(line: 224, column: 15, scope: !173)
!183 = !DILocalVariable(name: "sent", scope: !173, file: !71, line: 225, type: !50)
!184 = !DILocation(line: 225, column: 8, scope: !173)
!185 = !DILocalVariable(name: "rv", scope: !173, file: !71, line: 226, type: !50)
!186 = !DILocation(line: 226, column: 8, scope: !173)
!187 = !DILocalVariable(name: "sysErr", scope: !173, file: !71, line: 227, type: !50)
!188 = !DILocation(line: 227, column: 8, scope: !173)
!189 = !DILocation(line: 229, column: 4, scope: !173)
!190 = !DILocation(line: 229, column: 11, scope: !191)
!191 = !DILexicalBlockFile(scope: !173, file: !71, discriminator: 1)
!192 = !DILocation(line: 229, column: 16, scope: !191)
!193 = !DILocation(line: 229, column: 4, scope: !191)
!194 = !DILocation(line: 230, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !173, file: !71, line: 229, column: 21)
!196 = !DILocation(line: 230, column: 21, scope: !195)
!197 = !DILocation(line: 230, column: 27, scope: !195)
!198 = !DILocation(line: 230, column: 25, scope: !195)
!199 = !DILocation(line: 230, column: 33, scope: !195)
!200 = !DILocation(line: 230, column: 12, scope: !195)
!201 = !DILocation(line: 230, column: 10, scope: !195)
!202 = !DILocation(line: 231, column: 11, scope: !203)
!203 = distinct !DILexicalBlock(scope: !195, file: !71, line: 231, column: 11)
!204 = !DILocation(line: 231, column: 14, scope: !203)
!205 = !DILocation(line: 231, column: 11, scope: !195)
!206 = !DILocation(line: 232, column: 19, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !71, line: 231, column: 23)
!208 = !DILocation(line: 232, column: 17, scope: !207)
!209 = !DILocation(line: 233, column: 14, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !71, line: 233, column: 14)
!211 = !DILocation(line: 233, column: 21, scope: !210)
!212 = !DILocation(line: 233, column: 14, scope: !207)
!213 = !DILocation(line: 234, column: 13, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !71, line: 233, column: 37)
!215 = distinct !{!215, !189}
!216 = !DILocation(line: 236, column: 69, scope: !207)
!217 = !DILocation(line: 236, column: 73, scope: !207)
!218 = !DILocation(line: 237, column: 35, scope: !207)
!219 = !DILocation(line: 237, column: 18, scope: !207)
!220 = !DILocation(line: 236, column: 10, scope: !207)
!221 = !DILocation(line: 238, column: 10, scope: !207)
!222 = !DILocation(line: 240, column: 15, scope: !195)
!223 = !DILocation(line: 240, column: 12, scope: !195)
!224 = !DILocation(line: 241, column: 15, scope: !195)
!225 = !DILocation(line: 241, column: 12, scope: !195)
!226 = !DILocation(line: 229, column: 4, scope: !227)
!227 = !DILexicalBlockFile(scope: !173, file: !71, discriminator: 2)
!228 = !DILocation(line: 244, column: 59, scope: !173)
!229 = !DILocation(line: 244, column: 64, scope: !173)
!230 = !DILocation(line: 244, column: 4, scope: !173)
!231 = !DILocation(line: 245, column: 4, scope: !173)
!232 = !DILocation(line: 246, column: 1, scope: !173)
!233 = distinct !DISubprogram(name: "Socket_ConnectVMCI", scope: !71, file: !71, line: 337, type: !234, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!234 = !DISubroutineType(types: !235)
!235 = !{!49, !53, !53, !107, !236, !238}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "ApiError", file: !4, line: 48, baseType: !3)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!239 = !DILocalVariable(name: "cid", arg: 1, scope: !233, file: !71, line: 337, type: !53)
!240 = !DILocation(line: 337, column: 33, scope: !233)
!241 = !DILocalVariable(name: "port", arg: 2, scope: !233, file: !71, line: 338, type: !53)
!242 = !DILocation(line: 338, column: 33, scope: !233)
!243 = !DILocalVariable(name: "isPriv", arg: 3, scope: !233, file: !71, line: 339, type: !107)
!244 = !DILocation(line: 339, column: 29, scope: !233)
!245 = !DILocalVariable(name: "outApiErr", arg: 4, scope: !233, file: !71, line: 340, type: !236)
!246 = !DILocation(line: 340, column: 30, scope: !233)
!247 = !DILocalVariable(name: "outSysErr", arg: 5, scope: !233, file: !71, line: 341, type: !238)
!248 = !DILocation(line: 341, column: 25, scope: !233)
!249 = !DILocalVariable(name: "addr", scope: !233, file: !71, line: 343, type: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_vm", file: !251, line: 420, size: 128, align: 32, elements: !252)
!251 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmci_sockets.h", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!252 = !{!253, !254, !255, !256, !257}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "svm_family", scope: !250, file: !251, line: 426, baseType: !60, size: 16, align: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "svm_reserved1", scope: !250, file: !251, line: 429, baseType: !62, size: 16, align: 16, offset: 16)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "svm_port", scope: !250, file: !251, line: 433, baseType: !53, size: 32, align: 32, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "svm_cid", scope: !250, file: !251, line: 436, baseType: !53, size: 32, align: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "svm_zero", scope: !250, file: !251, line: 439, baseType: !258, size: 32, align: 8, offset: 96)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 32, align: 8, elements: !260)
!259 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!260 = !{!261}
!261 = !DISubrange(count: 4)
!262 = !DILocation(line: 343, column: 23, scope: !233)
!263 = !DILocalVariable(name: "localPort", scope: !233, file: !71, line: 344, type: !53)
!264 = !DILocation(line: 344, column: 17, scope: !233)
!265 = !DILocalVariable(name: "fd", scope: !233, file: !71, line: 345, type: !49)
!266 = !DILocation(line: 345, column: 11, scope: !233)
!267 = !DILocalVariable(name: "sysErr", scope: !233, file: !71, line: 346, type: !50)
!268 = !DILocation(line: 346, column: 8, scope: !233)
!269 = !DILocalVariable(name: "apiErr", scope: !233, file: !71, line: 347, type: !237)
!270 = !DILocation(line: 347, column: 13, scope: !233)
!271 = !DILocalVariable(name: "vsockDev", scope: !233, file: !71, line: 348, type: !50)
!272 = !DILocation(line: 348, column: 8, scope: !233)
!273 = !DILocalVariable(name: "family", scope: !233, file: !71, line: 349, type: !50)
!274 = !DILocation(line: 349, column: 8, scope: !233)
!275 = !DILocation(line: 349, column: 17, scope: !233)
!276 = !DILocation(line: 351, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !233, file: !71, line: 351, column: 8)
!278 = !DILocation(line: 351, column: 15, scope: !277)
!279 = !DILocation(line: 351, column: 8, scope: !233)
!280 = !DILocation(line: 352, column: 7, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !71, line: 351, column: 22)
!282 = !DILocation(line: 353, column: 14, scope: !281)
!283 = !DILocation(line: 354, column: 10, scope: !281)
!284 = !DILocation(line: 355, column: 7, scope: !281)
!285 = !DILocation(line: 358, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !233, file: !71, line: 358, column: 8)
!287 = !DILocation(line: 358, column: 8, scope: !233)
!288 = !DILocation(line: 359, column: 14, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !71, line: 358, column: 26)
!290 = !DILocation(line: 360, column: 10, scope: !289)
!291 = !DILocation(line: 361, column: 7, scope: !289)
!292 = !DILocation(line: 364, column: 4, scope: !233)
!293 = !DILocation(line: 365, column: 22, scope: !233)
!294 = !DILocation(line: 365, column: 9, scope: !233)
!295 = !DILocation(line: 365, column: 20, scope: !233)
!296 = !DILocation(line: 366, column: 19, scope: !233)
!297 = !DILocation(line: 366, column: 9, scope: !233)
!298 = !DILocation(line: 366, column: 17, scope: !233)
!299 = !DILocation(line: 367, column: 20, scope: !233)
!300 = !DILocation(line: 367, column: 9, scope: !233)
!301 = !DILocation(line: 367, column: 18, scope: !233)
!302 = !DILocation(line: 369, column: 71, scope: !233)
!303 = !DILocation(line: 369, column: 76, scope: !233)
!304 = !DILocation(line: 369, column: 4, scope: !233)
!305 = !DILocation(line: 371, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !233, file: !71, line: 371, column: 8)
!307 = !DILocation(line: 371, column: 8, scope: !233)
!308 = !DILocation(line: 372, column: 12, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !71, line: 371, column: 17)
!310 = !DILocation(line: 372, column: 10, scope: !309)
!311 = !DILocation(line: 374, column: 7, scope: !309)
!312 = !DILocation(line: 378, column: 14, scope: !233)
!313 = !DILocation(line: 379, column: 4, scope: !233)
!314 = !DILocation(line: 379, column: 11, scope: !315)
!315 = !DILexicalBlockFile(scope: !233, file: !71, discriminator: 1)
!316 = !DILocation(line: 379, column: 21, scope: !315)
!317 = !DILocation(line: 379, column: 4, scope: !315)
!318 = !DILocation(line: 380, column: 45, scope: !319)
!319 = distinct !DILexicalBlock(scope: !233, file: !71, line: 379, column: 27)
!320 = !DILocation(line: 380, column: 12, scope: !319)
!321 = !DILocation(line: 380, column: 10, scope: !319)
!322 = !DILocation(line: 381, column: 11, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !71, line: 381, column: 11)
!324 = !DILocation(line: 381, column: 14, scope: !323)
!325 = !DILocation(line: 381, column: 11, scope: !319)
!326 = !DILocation(line: 382, column: 10, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !71, line: 381, column: 32)
!328 = !DILocation(line: 384, column: 11, scope: !329)
!329 = distinct !DILexicalBlock(scope: !319, file: !71, line: 384, column: 11)
!330 = !DILocation(line: 384, column: 18, scope: !329)
!331 = !DILocation(line: 384, column: 34, scope: !329)
!332 = !DILocation(line: 384, column: 37, scope: !333)
!333 = !DILexicalBlockFile(scope: !329, file: !71, discriminator: 1)
!334 = !DILocation(line: 384, column: 44, scope: !333)
!335 = !DILocation(line: 384, column: 11, scope: !333)
!336 = !DILocation(line: 385, column: 10, scope: !337)
!337 = distinct !DILexicalBlock(scope: !329, file: !71, line: 384, column: 65)
!338 = !DILocation(line: 386, column: 10, scope: !337)
!339 = distinct !{!339, !313}
!340 = !DILocation(line: 388, column: 11, scope: !341)
!341 = distinct !DILexicalBlock(scope: !319, file: !71, line: 388, column: 11)
!342 = !DILocation(line: 388, column: 18, scope: !341)
!343 = !DILocation(line: 388, column: 37, scope: !341)
!344 = !DILocation(line: 388, column: 40, scope: !345)
!345 = !DILexicalBlockFile(scope: !341, file: !71, discriminator: 1)
!346 = !DILocation(line: 388, column: 47, scope: !345)
!347 = !DILocation(line: 388, column: 11, scope: !345)
!348 = !DILocation(line: 394, column: 10, scope: !349)
!349 = distinct !DILexicalBlock(scope: !341, file: !71, line: 388, column: 68)
!350 = !DILocation(line: 395, column: 10, scope: !349)
!351 = !DILocation(line: 397, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !319, file: !71, line: 397, column: 11)
!353 = !DILocation(line: 397, column: 18, scope: !352)
!354 = !DILocation(line: 397, column: 37, scope: !352)
!355 = !DILocation(line: 397, column: 40, scope: !356)
!356 = !DILexicalBlockFile(scope: !352, file: !71, discriminator: 1)
!357 = !DILocation(line: 397, column: 47, scope: !356)
!358 = !DILocation(line: 397, column: 11, scope: !356)
!359 = !DILocation(line: 402, column: 10, scope: !360)
!360 = distinct !DILexicalBlock(scope: !352, file: !71, line: 397, column: 63)
!361 = !DILocation(line: 405, column: 7, scope: !319)
!362 = !DILocation(line: 408, column: 4, scope: !233)
!363 = !DILocation(line: 412, column: 30, scope: !233)
!364 = !DILocation(line: 412, column: 4, scope: !233)
!365 = !DILocation(line: 414, column: 8, scope: !366)
!366 = distinct !DILexicalBlock(scope: !233, file: !71, line: 414, column: 8)
!367 = !DILocation(line: 414, column: 8, scope: !233)
!368 = !DILocation(line: 415, column: 20, scope: !369)
!369 = distinct !DILexicalBlock(scope: !366, file: !71, line: 414, column: 19)
!370 = !DILocation(line: 415, column: 8, scope: !369)
!371 = !DILocation(line: 415, column: 18, scope: !369)
!372 = !DILocation(line: 416, column: 4, scope: !369)
!373 = !DILocation(line: 418, column: 8, scope: !374)
!374 = distinct !DILexicalBlock(scope: !233, file: !71, line: 418, column: 8)
!375 = !DILocation(line: 418, column: 8, scope: !233)
!376 = !DILocation(line: 419, column: 20, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !71, line: 418, column: 19)
!378 = !DILocation(line: 419, column: 8, scope: !377)
!379 = !DILocation(line: 419, column: 18, scope: !377)
!380 = !DILocation(line: 420, column: 4, scope: !377)
!381 = !DILocation(line: 422, column: 8, scope: !382)
!382 = distinct !DILexicalBlock(scope: !233, file: !71, line: 422, column: 8)
!383 = !DILocation(line: 422, column: 11, scope: !382)
!384 = !DILocation(line: 422, column: 8, scope: !233)
!385 = !DILocation(line: 423, column: 53, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !71, line: 422, column: 29)
!387 = !DILocation(line: 423, column: 7, scope: !386)
!388 = !DILocation(line: 424, column: 4, scope: !386)
!389 = !DILocation(line: 425, column: 11, scope: !233)
!390 = !DILocation(line: 425, column: 4, scope: !233)
!391 = distinct !DISubprogram(name: "VMCISock_GetAFValueFd", scope: !251, file: !251, line: 657, type: !392, isLocal: true, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!392 = !DISubroutineType(types: !393)
!393 = !{!50, !238}
!394 = !DILocalVariable(name: "outFd", arg: 1, scope: !391, file: !251, line: 657, type: !238)
!395 = !DILocation(line: 657, column: 49, scope: !391)
!396 = !DILocalVariable(name: "fd", scope: !391, file: !251, line: 659, type: !50)
!397 = !DILocation(line: 659, column: 11, scope: !391)
!398 = !DILocalVariable(name: "family", scope: !391, file: !251, line: 660, type: !50)
!399 = !DILocation(line: 660, column: 11, scope: !391)
!400 = !DILocalVariable(name: "s", scope: !401, file: !251, line: 676, type: !50)
!401 = distinct !DILexicalBlock(scope: !391, file: !251, line: 675, column: 7)
!402 = !DILocation(line: 676, column: 14, scope: !401)
!403 = !DILocation(line: 676, column: 18, scope: !401)
!404 = !DILocation(line: 677, column: 14, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !251, line: 677, column: 14)
!406 = !DILocation(line: 677, column: 16, scope: !405)
!407 = !DILocation(line: 677, column: 14, scope: !401)
!408 = !DILocation(line: 678, column: 19, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !251, line: 677, column: 23)
!410 = !DILocation(line: 678, column: 13, scope: !409)
!411 = !DILocation(line: 679, column: 17, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !251, line: 679, column: 17)
!413 = !DILocation(line: 679, column: 17, scope: !409)
!414 = !DILocation(line: 680, column: 17, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !251, line: 679, column: 24)
!416 = !DILocation(line: 680, column: 23, scope: !415)
!417 = !DILocation(line: 681, column: 13, scope: !415)
!418 = !DILocation(line: 682, column: 13, scope: !409)
!419 = !DILocation(line: 688, column: 12, scope: !391)
!420 = !DILocation(line: 688, column: 10, scope: !391)
!421 = !DILocation(line: 689, column: 11, scope: !422)
!422 = distinct !DILexicalBlock(scope: !391, file: !251, line: 689, column: 11)
!423 = !DILocation(line: 689, column: 14, scope: !422)
!424 = !DILocation(line: 689, column: 11, scope: !391)
!425 = !DILocation(line: 690, column: 15, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !251, line: 689, column: 19)
!427 = !DILocation(line: 690, column: 13, scope: !426)
!428 = !DILocation(line: 691, column: 14, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !251, line: 691, column: 14)
!430 = !DILocation(line: 691, column: 17, scope: !429)
!431 = !DILocation(line: 691, column: 14, scope: !426)
!432 = !DILocation(line: 692, column: 13, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !251, line: 691, column: 22)
!434 = !DILocation(line: 694, column: 7, scope: !426)
!435 = !DILocation(line: 696, column: 17, scope: !436)
!436 = distinct !DILexicalBlock(scope: !391, file: !251, line: 696, column: 11)
!437 = !DILocation(line: 696, column: 11, scope: !436)
!438 = !DILocation(line: 696, column: 36, scope: !436)
!439 = !DILocation(line: 696, column: 11, scope: !391)
!440 = !DILocation(line: 697, column: 17, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !251, line: 696, column: 41)
!442 = !DILocation(line: 698, column: 7, scope: !441)
!443 = !DILocation(line: 700, column: 11, scope: !444)
!444 = distinct !DILexicalBlock(scope: !391, file: !251, line: 700, column: 11)
!445 = !DILocation(line: 700, column: 18, scope: !444)
!446 = !DILocation(line: 700, column: 11, scope: !391)
!447 = !DILocation(line: 701, column: 16, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !251, line: 700, column: 23)
!449 = !DILocation(line: 701, column: 10, scope: !448)
!450 = !DILocation(line: 702, column: 7, scope: !448)
!451 = !DILocation(line: 702, column: 18, scope: !452)
!452 = !DILexicalBlockFile(scope: !453, file: !251, discriminator: 1)
!453 = distinct !DILexicalBlock(scope: !444, file: !251, line: 702, column: 18)
!454 = !DILocation(line: 703, column: 19, scope: !455)
!455 = distinct !DILexicalBlock(scope: !453, file: !251, line: 702, column: 25)
!456 = !DILocation(line: 703, column: 11, scope: !455)
!457 = !DILocation(line: 703, column: 17, scope: !455)
!458 = !DILocation(line: 704, column: 7, scope: !455)
!459 = !DILocation(line: 706, column: 14, scope: !391)
!460 = !DILocation(line: 706, column: 7, scope: !391)
!461 = !DILocation(line: 707, column: 4, scope: !391)
!462 = distinct !DISubprogram(name: "SocketStartup", scope: !71, file: !71, line: 61, type: !463, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!463 = !DISubroutineType(types: !464)
!464 = !{!107}
!465 = !DILocation(line: 88, column: 4, scope: !462)
!466 = distinct !DISubprogram(name: "SocketConnectVmciInternal", scope: !71, file: !71, line: 267, type: !467, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!467 = !DISubroutineType(types: !468)
!468 = !{!49, !469, !53, !236, !238}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!471 = !DILocalVariable(name: "destAddr", arg: 1, scope: !466, file: !71, line: 267, type: !469)
!472 = !DILocation(line: 267, column: 53, scope: !466)
!473 = !DILocalVariable(name: "localPort", arg: 2, scope: !466, file: !71, line: 268, type: !53)
!474 = !DILocation(line: 268, column: 40, scope: !466)
!475 = !DILocalVariable(name: "apiErr", arg: 3, scope: !466, file: !71, line: 269, type: !236)
!476 = !DILocation(line: 269, column: 37, scope: !466)
!477 = !DILocalVariable(name: "sysErr", arg: 4, scope: !466, file: !71, line: 270, type: !238)
!478 = !DILocation(line: 270, column: 32, scope: !466)
!479 = !DILocalVariable(name: "fd", scope: !466, file: !71, line: 272, type: !49)
!480 = !DILocation(line: 272, column: 11, scope: !466)
!481 = !DILocalVariable(name: "localAddr", scope: !466, file: !71, line: 273, type: !250)
!482 = !DILocation(line: 273, column: 23, scope: !466)
!483 = !DILocation(line: 275, column: 16, scope: !466)
!484 = !DILocation(line: 275, column: 26, scope: !466)
!485 = !DILocation(line: 275, column: 9, scope: !466)
!486 = !DILocation(line: 275, column: 7, scope: !466)
!487 = !DILocation(line: 276, column: 8, scope: !488)
!488 = distinct !DILexicalBlock(scope: !466, file: !71, line: 276, column: 8)
!489 = !DILocation(line: 276, column: 11, scope: !488)
!490 = !DILocation(line: 276, column: 8, scope: !466)
!491 = !DILocation(line: 277, column: 8, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !71, line: 276, column: 29)
!493 = !DILocation(line: 277, column: 15, scope: !492)
!494 = !DILocation(line: 278, column: 17, scope: !492)
!495 = !DILocation(line: 278, column: 8, scope: !492)
!496 = !DILocation(line: 278, column: 15, scope: !492)
!497 = !DILocation(line: 280, column: 16, scope: !492)
!498 = !DILocation(line: 280, column: 15, scope: !492)
!499 = !DILocation(line: 280, column: 42, scope: !492)
!500 = !DILocation(line: 280, column: 41, scope: !492)
!501 = !DILocation(line: 280, column: 24, scope: !492)
!502 = !DILocation(line: 279, column: 7, scope: !492)
!503 = !DILocation(line: 281, column: 7, scope: !492)
!504 = !DILocation(line: 284, column: 4, scope: !466)
!505 = !DILocation(line: 285, column: 27, scope: !466)
!506 = !DILocation(line: 285, column: 37, scope: !466)
!507 = !DILocation(line: 285, column: 14, scope: !466)
!508 = !DILocation(line: 285, column: 25, scope: !466)
!509 = !DILocation(line: 286, column: 24, scope: !466)
!510 = !DILocation(line: 286, column: 14, scope: !466)
!511 = !DILocation(line: 286, column: 22, scope: !466)
!512 = !DILocation(line: 287, column: 25, scope: !466)
!513 = !DILocation(line: 287, column: 14, scope: !466)
!514 = !DILocation(line: 287, column: 23, scope: !466)
!515 = !DILocation(line: 289, column: 13, scope: !516)
!516 = distinct !DILexicalBlock(scope: !466, file: !71, line: 289, column: 8)
!517 = !DILocation(line: 289, column: 17, scope: !516)
!518 = !DILocation(line: 289, column: 8, scope: !516)
!519 = !DILocation(line: 289, column: 66, scope: !516)
!520 = !DILocation(line: 289, column: 8, scope: !466)
!521 = !DILocation(line: 290, column: 8, scope: !522)
!522 = distinct !DILexicalBlock(scope: !516, file: !71, line: 289, column: 72)
!523 = !DILocation(line: 290, column: 15, scope: !522)
!524 = !DILocation(line: 291, column: 17, scope: !522)
!525 = !DILocation(line: 291, column: 8, scope: !522)
!526 = !DILocation(line: 291, column: 15, scope: !522)
!527 = !DILocation(line: 293, column: 13, scope: !522)
!528 = !DILocation(line: 293, column: 25, scope: !522)
!529 = !DILocation(line: 293, column: 24, scope: !522)
!530 = !DILocation(line: 293, column: 51, scope: !522)
!531 = !DILocation(line: 293, column: 50, scope: !522)
!532 = !DILocation(line: 293, column: 33, scope: !522)
!533 = !DILocation(line: 292, column: 7, scope: !522)
!534 = !DILocation(line: 294, column: 20, scope: !522)
!535 = !DILocation(line: 294, column: 7, scope: !522)
!536 = !DILocation(line: 295, column: 7, scope: !522)
!537 = !DILocation(line: 298, column: 67, scope: !466)
!538 = !DILocation(line: 298, column: 4, scope: !466)
!539 = !DILocation(line: 300, column: 16, scope: !540)
!540 = distinct !DILexicalBlock(scope: !466, file: !71, line: 300, column: 8)
!541 = !DILocation(line: 300, column: 39, scope: !540)
!542 = !DILocation(line: 300, column: 20, scope: !540)
!543 = !DILocation(line: 300, column: 8, scope: !540)
!544 = !DILocation(line: 300, column: 67, scope: !540)
!545 = !DILocation(line: 300, column: 8, scope: !466)
!546 = !DILocation(line: 301, column: 8, scope: !547)
!547 = distinct !DILexicalBlock(scope: !540, file: !71, line: 300, column: 73)
!548 = !DILocation(line: 301, column: 15, scope: !547)
!549 = !DILocation(line: 302, column: 17, scope: !547)
!550 = !DILocation(line: 302, column: 8, scope: !547)
!551 = !DILocation(line: 302, column: 15, scope: !547)
!552 = !DILocation(line: 304, column: 15, scope: !547)
!553 = !DILocation(line: 304, column: 26, scope: !547)
!554 = !DILocation(line: 304, column: 36, scope: !547)
!555 = !DILocation(line: 304, column: 47, scope: !547)
!556 = !DILocation(line: 304, column: 46, scope: !547)
!557 = !DILocation(line: 305, column: 33, scope: !547)
!558 = !DILocation(line: 305, column: 32, scope: !547)
!559 = !DILocation(line: 305, column: 15, scope: !547)
!560 = !DILocation(line: 303, column: 7, scope: !547)
!561 = !DILocation(line: 306, column: 20, scope: !547)
!562 = !DILocation(line: 306, column: 7, scope: !547)
!563 = !DILocation(line: 307, column: 7, scope: !547)
!564 = !DILocation(line: 310, column: 5, scope: !466)
!565 = !DILocation(line: 310, column: 12, scope: !466)
!566 = !DILocation(line: 311, column: 5, scope: !466)
!567 = !DILocation(line: 311, column: 12, scope: !466)
!568 = !DILocation(line: 312, column: 11, scope: !466)
!569 = !DILocation(line: 312, column: 4, scope: !466)
!570 = !DILocation(line: 313, column: 1, scope: !466)
!571 = distinct !DISubprogram(name: "VMCISock_ReleaseAFValueFd", scope: !251, file: !251, line: 772, type: !572, isLocal: true, isDefinition: true, scopeLine: 773, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !50}
!574 = !DILocalVariable(name: "fd", arg: 1, scope: !571, file: !251, line: 772, type: !50)
!575 = !DILocation(line: 772, column: 53, scope: !571)
!576 = !DILocation(line: 774, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !571, file: !251, line: 774, column: 11)
!578 = !DILocation(line: 774, column: 14, scope: !577)
!579 = !DILocation(line: 774, column: 11, scope: !571)
!580 = !DILocation(line: 775, column: 16, scope: !581)
!581 = distinct !DILexicalBlock(scope: !577, file: !251, line: 774, column: 20)
!582 = !DILocation(line: 775, column: 10, scope: !581)
!583 = !DILocation(line: 776, column: 7, scope: !581)
!584 = !DILocation(line: 777, column: 4, scope: !571)
!585 = distinct !DISubprogram(name: "Socket_RecvPacket", scope: !71, file: !71, line: 581, type: !586, isLocal: false, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!586 = !DISubroutineType(types: !587)
!587 = !{!107, !49, !588, !238}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!589 = !DILocalVariable(name: "sock", arg: 1, scope: !585, file: !71, line: 581, type: !49)
!590 = !DILocation(line: 581, column: 26, scope: !585)
!591 = !DILocalVariable(name: "payload", arg: 2, scope: !585, file: !71, line: 582, type: !588)
!592 = !DILocation(line: 582, column: 26, scope: !585)
!593 = !DILocalVariable(name: "payloadLen", arg: 3, scope: !585, file: !71, line: 583, type: !238)
!594 = !DILocation(line: 583, column: 24, scope: !585)
!595 = !DILocalVariable(name: "ok", scope: !585, file: !71, line: 585, type: !107)
!596 = !DILocation(line: 585, column: 13, scope: !585)
!597 = !DILocalVariable(name: "packetLen", scope: !585, file: !71, line: 586, type: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !599, line: 173, baseType: !600)
!599 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !601, line: 51, baseType: !53)
!601 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!602 = !DILocation(line: 586, column: 11, scope: !585)
!603 = !DILocalVariable(name: "partialPktLen", scope: !585, file: !71, line: 587, type: !598)
!604 = !DILocation(line: 587, column: 11, scope: !585)
!605 = !DILocalVariable(name: "packetLenSize", scope: !585, file: !71, line: 588, type: !50)
!606 = !DILocation(line: 588, column: 8, scope: !585)
!607 = !DILocalVariable(name: "fullPktLen", scope: !585, file: !71, line: 589, type: !50)
!608 = !DILocation(line: 589, column: 8, scope: !585)
!609 = !DILocalVariable(name: "recvBuf", scope: !585, file: !71, line: 590, type: !51)
!610 = !DILocation(line: 590, column: 10, scope: !585)
!611 = !DILocation(line: 592, column: 21, scope: !585)
!612 = !DILocation(line: 592, column: 27, scope: !585)
!613 = !DILocation(line: 592, column: 47, scope: !585)
!614 = !DILocation(line: 592, column: 9, scope: !585)
!615 = !DILocation(line: 592, column: 7, scope: !585)
!616 = !DILocation(line: 593, column: 9, scope: !617)
!617 = distinct !DILexicalBlock(scope: !585, file: !71, line: 593, column: 8)
!618 = !DILocation(line: 593, column: 8, scope: !585)
!619 = !DILocation(line: 595, column: 13, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !71, line: 593, column: 13)
!621 = !DILocation(line: 594, column: 7, scope: !620)
!622 = !DILocation(line: 596, column: 7, scope: !620)
!623 = !DILocation(line: 599, column: 26, scope: !585)
!624 = !DILocation(line: 599, column: 20, scope: !585)
!625 = !DILocation(line: 599, column: 18, scope: !585)
!626 = !DILocation(line: 600, column: 8, scope: !627)
!627 = distinct !DILexicalBlock(scope: !585, file: !71, line: 600, column: 8)
!628 = !DILocation(line: 600, column: 37, scope: !627)
!629 = !DILocation(line: 600, column: 35, scope: !627)
!630 = !DILocation(line: 600, column: 22, scope: !627)
!631 = !DILocation(line: 600, column: 8, scope: !585)
!632 = !DILocation(line: 601, column: 64, scope: !633)
!633 = distinct !DILexicalBlock(scope: !627, file: !71, line: 600, column: 52)
!634 = !DILocation(line: 601, column: 7, scope: !633)
!635 = !DILocation(line: 604, column: 17, scope: !585)
!636 = !DILocation(line: 604, column: 33, scope: !585)
!637 = !DILocation(line: 604, column: 31, scope: !585)
!638 = !DILocation(line: 604, column: 15, scope: !585)
!639 = !DILocation(line: 605, column: 21, scope: !585)
!640 = !DILocation(line: 605, column: 14, scope: !585)
!641 = !DILocation(line: 605, column: 12, scope: !585)
!642 = !DILocation(line: 606, column: 8, scope: !643)
!643 = distinct !DILexicalBlock(scope: !585, file: !71, line: 606, column: 8)
!644 = !DILocation(line: 606, column: 16, scope: !643)
!645 = !DILocation(line: 606, column: 8, scope: !585)
!646 = !DILocation(line: 607, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !643, file: !71, line: 606, column: 24)
!648 = !DILocation(line: 608, column: 7, scope: !647)
!649 = !DILocation(line: 611, column: 11, scope: !585)
!650 = !DILocation(line: 611, column: 4, scope: !585)
!651 = !DILocation(line: 611, column: 32, scope: !585)
!652 = !DILocation(line: 612, column: 21, scope: !585)
!653 = !DILocation(line: 612, column: 27, scope: !585)
!654 = !DILocation(line: 612, column: 37, scope: !585)
!655 = !DILocation(line: 612, column: 35, scope: !585)
!656 = !DILocation(line: 613, column: 22, scope: !585)
!657 = !DILocation(line: 613, column: 35, scope: !585)
!658 = !DILocation(line: 613, column: 33, scope: !585)
!659 = !DILocation(line: 612, column: 9, scope: !585)
!660 = !DILocation(line: 612, column: 7, scope: !585)
!661 = !DILocation(line: 614, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !585, file: !71, line: 614, column: 8)
!663 = !DILocation(line: 614, column: 8, scope: !585)
!664 = !DILocation(line: 616, column: 13, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !71, line: 614, column: 13)
!666 = !DILocation(line: 615, column: 7, scope: !665)
!667 = !DILocation(line: 617, column: 12, scope: !665)
!668 = !DILocation(line: 617, column: 7, scope: !665)
!669 = !DILocation(line: 618, column: 7, scope: !665)
!670 = !DILocation(line: 621, column: 29, scope: !585)
!671 = !DILocation(line: 621, column: 38, scope: !585)
!672 = !DILocation(line: 621, column: 50, scope: !585)
!673 = !DILocation(line: 621, column: 59, scope: !585)
!674 = !DILocation(line: 621, column: 9, scope: !585)
!675 = !DILocation(line: 621, column: 7, scope: !585)
!676 = !DILocation(line: 622, column: 9, scope: !585)
!677 = !DILocation(line: 622, column: 4, scope: !585)
!678 = !DILocation(line: 623, column: 11, scope: !585)
!679 = !DILocation(line: 623, column: 4, scope: !585)
!680 = !DILocation(line: 624, column: 1, scope: !585)
!681 = distinct !DISubprogram(name: "Socket_DecodePacket", scope: !71, file: !71, line: 446, type: !682, isLocal: true, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!682 = !DISubroutineType(types: !683)
!683 = !{!107, !684, !50, !588, !686}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64, align: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64, align: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !599, line: 174, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !689, line: 196, baseType: !50)
!689 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!690 = !DILocalVariable(name: "recvBuf", arg: 1, scope: !681, file: !71, line: 446, type: !684)
!691 = !DILocation(line: 446, column: 33, scope: !681)
!692 = !DILocalVariable(name: "fullPktLen", arg: 2, scope: !681, file: !71, line: 447, type: !50)
!693 = !DILocation(line: 447, column: 25, scope: !681)
!694 = !DILocalVariable(name: "payload", arg: 3, scope: !681, file: !71, line: 448, type: !588)
!695 = !DILocation(line: 448, column: 28, scope: !681)
!696 = !DILocalVariable(name: "payloadLen", arg: 4, scope: !681, file: !71, line: 449, type: !686)
!697 = !DILocation(line: 449, column: 28, scope: !681)
!698 = !DILocalVariable(name: "res", scope: !681, file: !71, line: 451, type: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorCode", file: !25, line: 60, baseType: !24)
!700 = !DILocation(line: 451, column: 14, scope: !681)
!701 = !DILocalVariable(name: "map", scope: !681, file: !71, line: 452, type: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataMap", file: !25, line: 77, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 74, size: 128, align: 64, elements: !704)
!704 = !{!705, !710}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !703, file: !25, line: 75, baseType: !706, size: 64, align: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64, align: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashMap", file: !708, line: 45, baseType: !709)
!708 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashMap.h", directory: "/home/lichi/Desktop/open-vm-tools/line832")
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "HashMap", file: !708, line: 45, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !703, file: !25, line: 76, baseType: !711, size: 64, align: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !599, line: 171, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !601, line: 55, baseType: !713)
!713 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!714 = !DILocation(line: 452, column: 12, scope: !681)
!715 = !DILocalVariable(name: "buf", scope: !681, file: !71, line: 453, type: !51)
!716 = !DILocation(line: 453, column: 10, scope: !681)
!717 = !DILocalVariable(name: "len", scope: !681, file: !71, line: 454, type: !687)
!718 = !DILocation(line: 454, column: 10, scope: !681)
!719 = !DILocation(line: 456, column: 5, scope: !681)
!720 = !DILocation(line: 456, column: 13, scope: !681)
!721 = !DILocation(line: 457, column: 5, scope: !681)
!722 = !DILocation(line: 457, column: 16, scope: !681)
!723 = !DILocation(line: 460, column: 30, scope: !681)
!724 = !DILocation(line: 460, column: 39, scope: !681)
!725 = !DILocation(line: 460, column: 10, scope: !681)
!726 = !DILocation(line: 460, column: 8, scope: !681)
!727 = !DILocation(line: 461, column: 8, scope: !728)
!728 = distinct !DILexicalBlock(scope: !681, file: !71, line: 461, column: 8)
!729 = !DILocation(line: 461, column: 12, scope: !728)
!730 = !DILocation(line: 461, column: 8, scope: !681)
!731 = !DILocation(line: 462, column: 69, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !71, line: 461, column: 30)
!733 = !DILocation(line: 462, column: 7, scope: !732)
!734 = !DILocation(line: 463, column: 7, scope: !732)
!735 = !DILocation(line: 466, column: 10, scope: !681)
!736 = !DILocation(line: 466, column: 8, scope: !681)
!737 = !DILocation(line: 467, column: 8, scope: !738)
!738 = distinct !DILexicalBlock(scope: !681, file: !71, line: 467, column: 8)
!739 = !DILocation(line: 467, column: 12, scope: !738)
!740 = !DILocation(line: 467, column: 8, scope: !681)
!741 = !DILocalVariable(name: "tmpPtr", scope: !742, file: !71, line: 468, type: !51)
!742 = distinct !DILexicalBlock(scope: !738, file: !71, line: 467, column: 30)
!743 = !DILocation(line: 468, column: 13, scope: !742)
!744 = !DILocation(line: 468, column: 29, scope: !742)
!745 = !DILocation(line: 468, column: 33, scope: !742)
!746 = !DILocation(line: 468, column: 22, scope: !742)
!747 = !DILocation(line: 469, column: 11, scope: !748)
!748 = distinct !DILexicalBlock(scope: !742, file: !71, line: 469, column: 11)
!749 = !DILocation(line: 469, column: 18, scope: !748)
!750 = !DILocation(line: 469, column: 11, scope: !742)
!751 = !DILocation(line: 470, column: 10, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !71, line: 469, column: 26)
!753 = !DILocation(line: 471, column: 1, scope: !752)
!754 = !DILocation(line: 472, column: 10, scope: !752)
!755 = !DILocation(line: 474, column: 14, scope: !742)
!756 = !DILocation(line: 474, column: 22, scope: !742)
!757 = !DILocation(line: 474, column: 27, scope: !742)
!758 = !DILocation(line: 474, column: 7, scope: !742)
!759 = !DILocation(line: 476, column: 14, scope: !742)
!760 = !DILocation(line: 476, column: 7, scope: !742)
!761 = !DILocation(line: 476, column: 19, scope: !742)
!762 = !DILocation(line: 478, column: 18, scope: !742)
!763 = !DILocation(line: 478, column: 8, scope: !742)
!764 = !DILocation(line: 478, column: 16, scope: !742)
!765 = !DILocation(line: 479, column: 21, scope: !742)
!766 = !DILocation(line: 479, column: 8, scope: !742)
!767 = !DILocation(line: 479, column: 19, scope: !742)
!768 = !DILocation(line: 480, column: 4, scope: !742)
!769 = !DILocation(line: 481, column: 69, scope: !770)
!770 = distinct !DILexicalBlock(scope: !738, file: !71, line: 480, column: 11)
!771 = !DILocation(line: 481, column: 7, scope: !770)
!772 = !DILocation(line: 482, column: 1, scope: !770)
!773 = !DILocation(line: 483, column: 7, scope: !770)
!774 = !DILocation(line: 486, column: 4, scope: !681)
!775 = !DILocation(line: 487, column: 4, scope: !681)
!776 = !DILocation(line: 490, column: 4, scope: !681)
!777 = !DILocation(line: 491, column: 4, scope: !681)
!778 = !DILocation(line: 492, column: 1, scope: !681)
!779 = distinct !DISubprogram(name: "Socket_SendPacket", scope: !71, file: !71, line: 644, type: !780, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!780 = !DISubroutineType(types: !781)
!781 = !{!107, !49, !684, !50}
!782 = !DILocalVariable(name: "sock", arg: 1, scope: !779, file: !71, line: 644, type: !49)
!783 = !DILocation(line: 644, column: 26, scope: !779)
!784 = !DILocalVariable(name: "payload", arg: 2, scope: !779, file: !71, line: 645, type: !684)
!785 = !DILocation(line: 645, column: 31, scope: !779)
!786 = !DILocalVariable(name: "payloadLen", arg: 3, scope: !779, file: !71, line: 646, type: !50)
!787 = !DILocation(line: 646, column: 23, scope: !779)
!788 = !DILocalVariable(name: "ok", scope: !779, file: !71, line: 648, type: !107)
!789 = !DILocation(line: 648, column: 13, scope: !779)
!790 = !DILocalVariable(name: "sendBuf", scope: !779, file: !71, line: 649, type: !51)
!791 = !DILocation(line: 649, column: 10, scope: !779)
!792 = !DILocalVariable(name: "sendBufLen", scope: !779, file: !71, line: 650, type: !50)
!793 = !DILocation(line: 650, column: 8, scope: !779)
!794 = !DILocation(line: 652, column: 29, scope: !795)
!795 = distinct !DILexicalBlock(scope: !779, file: !71, line: 652, column: 8)
!796 = !DILocation(line: 652, column: 38, scope: !795)
!797 = !DILocation(line: 652, column: 9, scope: !795)
!798 = !DILocation(line: 652, column: 8, scope: !779)
!799 = !DILocation(line: 653, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !795, file: !71, line: 652, column: 74)
!801 = !DILocation(line: 656, column: 21, scope: !779)
!802 = !DILocation(line: 656, column: 27, scope: !779)
!803 = !DILocation(line: 656, column: 36, scope: !779)
!804 = !DILocation(line: 656, column: 9, scope: !779)
!805 = !DILocation(line: 656, column: 7, scope: !779)
!806 = !DILocation(line: 657, column: 9, scope: !779)
!807 = !DILocation(line: 657, column: 4, scope: !779)
!808 = !DILocation(line: 659, column: 11, scope: !779)
!809 = !DILocation(line: 659, column: 4, scope: !779)
!810 = !DILocation(line: 660, column: 1, scope: !779)
!811 = distinct !DISubprogram(name: "Socket_PackSendData", scope: !71, file: !71, line: 510, type: !682, isLocal: true, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!812 = !DILocalVariable(name: "buf", arg: 1, scope: !811, file: !71, line: 510, type: !684)
!813 = !DILocation(line: 510, column: 33, scope: !811)
!814 = !DILocalVariable(name: "len", arg: 2, scope: !811, file: !71, line: 511, type: !50)
!815 = !DILocation(line: 511, column: 25, scope: !811)
!816 = !DILocalVariable(name: "serBuf", arg: 3, scope: !811, file: !71, line: 512, type: !588)
!817 = !DILocation(line: 512, column: 28, scope: !811)
!818 = !DILocalVariable(name: "serBufLen", arg: 4, scope: !811, file: !71, line: 513, type: !686)
!819 = !DILocation(line: 513, column: 28, scope: !811)
!820 = !DILocalVariable(name: "map", scope: !811, file: !71, line: 515, type: !702)
!821 = !DILocation(line: 515, column: 12, scope: !811)
!822 = !DILocalVariable(name: "res", scope: !811, file: !71, line: 516, type: !699)
!823 = !DILocation(line: 516, column: 14, scope: !811)
!824 = !DILocalVariable(name: "newBuf", scope: !811, file: !71, line: 517, type: !51)
!825 = !DILocation(line: 517, column: 10, scope: !811)
!826 = !DILocalVariable(name: "mapCreated", scope: !811, file: !71, line: 518, type: !107)
!827 = !DILocation(line: 518, column: 13, scope: !811)
!828 = !DILocalVariable(name: "pktType", scope: !811, file: !71, line: 519, type: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !599, line: 172, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !689, line: 197, baseType: !831)
!831 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!832 = !DILocation(line: 519, column: 10, scope: !811)
!833 = !DILocation(line: 521, column: 10, scope: !811)
!834 = !DILocation(line: 521, column: 8, scope: !811)
!835 = !DILocation(line: 522, column: 8, scope: !836)
!836 = distinct !DILexicalBlock(scope: !811, file: !71, line: 522, column: 8)
!837 = !DILocation(line: 522, column: 12, scope: !836)
!838 = !DILocation(line: 522, column: 8, scope: !811)
!839 = !DILocation(line: 523, column: 1, scope: !840)
!840 = distinct !DILexicalBlock(scope: !836, file: !71, line: 522, column: 30)
!841 = !DILocation(line: 524, column: 7, scope: !840)
!842 = !DILocation(line: 527, column: 15, scope: !811)
!843 = !DILocation(line: 529, column: 27, scope: !811)
!844 = !DILocation(line: 528, column: 10, scope: !811)
!845 = !DILocation(line: 528, column: 8, scope: !811)
!846 = !DILocation(line: 530, column: 8, scope: !847)
!847 = distinct !DILexicalBlock(scope: !811, file: !71, line: 530, column: 8)
!848 = !DILocation(line: 530, column: 12, scope: !847)
!849 = !DILocation(line: 530, column: 8, scope: !811)
!850 = !DILocation(line: 531, column: 1, scope: !851)
!851 = distinct !DILexicalBlock(scope: !847, file: !71, line: 530, column: 30)
!852 = !DILocation(line: 532, column: 7, scope: !851)
!853 = !DILocation(line: 535, column: 20, scope: !811)
!854 = !DILocation(line: 535, column: 13, scope: !811)
!855 = !DILocation(line: 535, column: 11, scope: !811)
!856 = !DILocation(line: 536, column: 8, scope: !857)
!857 = distinct !DILexicalBlock(scope: !811, file: !71, line: 536, column: 8)
!858 = !DILocation(line: 536, column: 15, scope: !857)
!859 = !DILocation(line: 536, column: 8, scope: !811)
!860 = !DILocation(line: 535, column: 7, scope: !861)
!861 = !DILexicalBlockFile(scope: !862, file: !71, discriminator: 1)
!862 = distinct !DILexicalBlock(scope: !857, file: !71, line: 534, column: 23)
!863 = !DILocation(line: 536, column: 1, scope: !861)
!864 = !DILocation(line: 537, column: 7, scope: !862)
!865 = !DILocation(line: 539, column: 11, scope: !811)
!866 = !DILocation(line: 539, column: 19, scope: !811)
!867 = !DILocation(line: 539, column: 24, scope: !811)
!868 = !DILocation(line: 539, column: 4, scope: !811)
!869 = !DILocation(line: 540, column: 61, scope: !811)
!870 = !DILocation(line: 541, column: 28, scope: !811)
!871 = !DILocation(line: 540, column: 10, scope: !811)
!872 = !DILocation(line: 540, column: 8, scope: !811)
!873 = !DILocation(line: 542, column: 8, scope: !874)
!874 = distinct !DILexicalBlock(scope: !811, file: !71, line: 542, column: 8)
!875 = !DILocation(line: 542, column: 12, scope: !874)
!876 = !DILocation(line: 542, column: 8, scope: !811)
!877 = !DILocation(line: 543, column: 12, scope: !878)
!878 = distinct !DILexicalBlock(scope: !874, file: !71, line: 542, column: 30)
!879 = !DILocation(line: 543, column: 7, scope: !878)
!880 = !DILocation(line: 544, column: 1, scope: !878)
!881 = !DILocation(line: 545, column: 7, scope: !878)
!882 = !DILocation(line: 548, column: 34, scope: !811)
!883 = !DILocation(line: 548, column: 42, scope: !811)
!884 = !DILocation(line: 548, column: 10, scope: !811)
!885 = !DILocation(line: 548, column: 8, scope: !811)
!886 = !DILocation(line: 549, column: 8, scope: !887)
!887 = distinct !DILexicalBlock(scope: !811, file: !71, line: 549, column: 8)
!888 = !DILocation(line: 549, column: 12, scope: !887)
!889 = !DILocation(line: 549, column: 8, scope: !811)
!890 = !DILocation(line: 550, column: 1, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !71, line: 549, column: 30)
!892 = !DILocation(line: 551, column: 7, scope: !891)
!893 = !DILocation(line: 554, column: 4, scope: !811)
!894 = !DILocation(line: 555, column: 4, scope: !811)
!895 = !DILocation(line: 558, column: 8, scope: !896)
!896 = distinct !DILexicalBlock(scope: !811, file: !71, line: 558, column: 8)
!897 = !DILocation(line: 558, column: 8, scope: !811)
!898 = !DILocation(line: 559, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !71, line: 558, column: 20)
!900 = !DILocation(line: 560, column: 4, scope: !899)
!901 = !DILocation(line: 561, column: 4, scope: !811)
!902 = !DILocation(line: 562, column: 4, scope: !811)
!903 = !DILocation(line: 563, column: 1, scope: !811)
!904 = distinct !DISubprogram(name: "VMCISock_GetLocalCID", scope: !251, file: !251, line: 804, type: !905, isLocal: true, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!905 = !DISubroutineType(types: !906)
!906 = !{!53}
!907 = !DILocalVariable(name: "fd", scope: !904, file: !251, line: 806, type: !50)
!908 = !DILocation(line: 806, column: 11, scope: !904)
!909 = !DILocalVariable(name: "contextId", scope: !904, file: !251, line: 807, type: !53)
!910 = !DILocation(line: 807, column: 20, scope: !904)
!911 = !DILocation(line: 809, column: 12, scope: !904)
!912 = !DILocation(line: 809, column: 10, scope: !904)
!913 = !DILocation(line: 810, column: 11, scope: !914)
!914 = distinct !DILexicalBlock(scope: !904, file: !251, line: 810, column: 11)
!915 = !DILocation(line: 810, column: 14, scope: !914)
!916 = !DILocation(line: 810, column: 11, scope: !904)
!917 = !DILocation(line: 811, column: 15, scope: !918)
!918 = distinct !DILexicalBlock(scope: !914, file: !251, line: 810, column: 19)
!919 = !DILocation(line: 811, column: 13, scope: !918)
!920 = !DILocation(line: 812, column: 14, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !251, line: 812, column: 14)
!922 = !DILocation(line: 812, column: 17, scope: !921)
!923 = !DILocation(line: 812, column: 14, scope: !918)
!924 = !DILocation(line: 813, column: 13, scope: !925)
!925 = distinct !DILexicalBlock(scope: !921, file: !251, line: 812, column: 22)
!926 = !DILocation(line: 815, column: 7, scope: !918)
!927 = !DILocation(line: 817, column: 17, scope: !928)
!928 = distinct !DILexicalBlock(scope: !904, file: !251, line: 817, column: 11)
!929 = !DILocation(line: 817, column: 11, scope: !928)
!930 = !DILocation(line: 817, column: 39, scope: !928)
!931 = !DILocation(line: 817, column: 11, scope: !904)
!932 = !DILocation(line: 818, column: 20, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !251, line: 817, column: 44)
!934 = !DILocation(line: 819, column: 7, scope: !933)
!935 = !DILocation(line: 821, column: 13, scope: !904)
!936 = !DILocation(line: 821, column: 7, scope: !904)
!937 = !DILocation(line: 822, column: 14, scope: !904)
!938 = !DILocation(line: 822, column: 7, scope: !904)
!939 = !DILocation(line: 823, column: 4, scope: !904)
