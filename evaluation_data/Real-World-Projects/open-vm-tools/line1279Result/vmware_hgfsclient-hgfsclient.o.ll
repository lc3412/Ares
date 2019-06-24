; ModuleID = './vmware_hgfsclient-hgfsclient.o.i'
source_filename = "./vmware_hgfsclient-hgfsclient.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RpcOut = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GKeyFile = type opaque
%struct.HgfsFileName = type <{ i32, [1 x i8] }>
%struct.HgfsRequestSearchOpen = type <{ %struct.HgfsRequest, %struct.HgfsFileName }>
%struct.HgfsRequest = type { i32, i32 }
%struct.HgfsReplySearchOpen = type { %struct.HgfsReply, i32 }
%struct.HgfsReply = type { i32, i32 }
%struct.HgfsRequestSearchRead = type { %struct.HgfsRequest, i32, i32 }
%struct.HgfsReplySearchRead = type <{ %struct.HgfsReply, %struct.HgfsAttr, %struct.HgfsFileName }>
%struct.HgfsAttr = type <{ i32, i64, i64, i64, i64, i64, i8 }>
%struct.HgfsRequestSearchClose = type { %struct.HgfsRequest, i32 }
%struct.HgfsReplySearchClose = type { %struct.HgfsReply }

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@gChannel = global %struct.RpcOut* null, align 8
@gPacketBuffer = global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"hgfsclient: lists any shared folders.\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"hgfsclient\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"This application must be run in a Virtual Machine.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to create RPC channel\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to create packet buffer\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"HGFS is disabled in the host\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Failed to send search open request.\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Error in opening root directory.\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Failed to send search read request.\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Error in getting share name.\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Failed to send search close request.\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Error closing root directory.\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Failed to close RPC channel\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !208 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !214, metadata !215), !dbg !216
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !217, metadata !215), !dbg !218
  %6 = load i32, i32* %4, align 4, !dbg !219
  %7 = icmp eq i32 %6, 2, !dbg !221
  br i1 %7, label %8, label %23, !dbg !222

; <label>:8:                                      ; preds = %2
  %9 = load i8**, i8*** %5, align 8, !dbg !223
  %10 = getelementptr inbounds i8*, i8** %9, i64 1, !dbg !223
  %11 = load i8*, i8** %10, align 8, !dbg !223
  %12 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 2) #5, !dbg !224
  %13 = icmp ne i32 %12, 0, !dbg !224
  br i1 %13, label %14, label %20, !dbg !225

; <label>:14:                                     ; preds = %8
  %15 = load i8**, i8*** %5, align 8, !dbg !226
  %16 = getelementptr inbounds i8*, i8** %15, i64 1, !dbg !226
  %17 = load i8*, i8** %16, align 8, !dbg !226
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i64 6) #5, !dbg !227
  %19 = icmp ne i32 %18, 0, !dbg !227
  br i1 %19, label %23, label %20, !dbg !228

; <label>:20:                                     ; preds = %14, %8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !230
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0)), !dbg !232
  store i32 0, i32* %3, align 4, !dbg !233
  br label %36, !dbg !233

; <label>:23:                                     ; preds = %14, %2
  %24 = call signext i8 @HgfsClient_Init(), !dbg !234
  %25 = icmp ne i8 %24, 0, !dbg !234
  br i1 %25, label %27, label %26, !dbg !236

; <label>:26:                                     ; preds = %23
  store i32 1, i32* %3, align 4, !dbg !237
  br label %36, !dbg !237

; <label>:27:                                     ; preds = %23
  %28 = call signext i8 @HgfsClient_PrintShares(), !dbg !239
  %29 = icmp ne i8 %28, 0, !dbg !239
  br i1 %29, label %31, label %30, !dbg !241

; <label>:30:                                     ; preds = %27
  store i32 1, i32* %3, align 4, !dbg !242
  br label %36, !dbg !242

; <label>:31:                                     ; preds = %27
  %32 = call signext i8 @HgfsClient_Cleanup(), !dbg !244
  %33 = icmp ne i8 %32, 0, !dbg !244
  br i1 %33, label %35, label %34, !dbg !246

; <label>:34:                                     ; preds = %31
  store i32 1, i32* %3, align 4, !dbg !247
  br label %36, !dbg !247

; <label>:35:                                     ; preds = %31
  store i32 0, i32* %3, align 4, !dbg !249
  br label %36, !dbg !249

; <label>:36:                                     ; preds = %35, %34, %30, %26, %20
  %37 = load i32, i32* %3, align 4, !dbg !250
  ret i32 %37, !dbg !250
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsClient_Init() #0 !dbg !251 {
  %1 = alloca i8, align 1
  %2 = alloca %struct._GKeyFile*, align 8
  call void @llvm.dbg.declare(metadata i8* %1, metadata !255, metadata !215), !dbg !256
  store i8 0, i8* %1, align 1, !dbg !256
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %2, metadata !257, metadata !215), !dbg !261
  store %struct._GKeyFile* null, %struct._GKeyFile** %2, align 8, !dbg !261
  %3 = call i32 @VMTools_LoadConfig(i8* null, i32 0, %struct._GKeyFile** %2, i64* null), !dbg !262
  %4 = load %struct._GKeyFile*, %struct._GKeyFile** %2, align 8, !dbg !263
  call void @VMTools_ConfigLogging(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct._GKeyFile* %4, i32 0, i32 0), !dbg !264
  %5 = load %struct._GKeyFile*, %struct._GKeyFile** %2, align 8, !dbg !265
  %6 = icmp ne %struct._GKeyFile* %5, null, !dbg !267
  br i1 %6, label %7, label %9, !dbg !268

; <label>:7:                                      ; preds = %0
  %8 = load %struct._GKeyFile*, %struct._GKeyFile** %2, align 8, !dbg !269
  call void @g_key_file_free(%struct._GKeyFile* %8), !dbg !271
  store %struct._GKeyFile* null, %struct._GKeyFile** %2, align 8, !dbg !272
  br label %9, !dbg !273

; <label>:9:                                      ; preds = %7, %0
  %10 = call signext i8 @VmCheck_IsVirtualWorld(), !dbg !274
  %11 = icmp ne i8 %10, 0, !dbg !274
  br i1 %11, label %13, label %12, !dbg !276

; <label>:12:                                     ; preds = %9
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i32 0, i32 0)), !dbg !277
  br label %30, !dbg !279

; <label>:13:                                     ; preds = %9
  %14 = call %struct.RpcOut* @HgfsBd_GetChannel(), !dbg !280
  store %struct.RpcOut* %14, %struct.RpcOut** @gChannel, align 8, !dbg !281
  %15 = load %struct.RpcOut*, %struct.RpcOut** @gChannel, align 8, !dbg !282
  %16 = icmp eq %struct.RpcOut* %15, null, !dbg !284
  br i1 %16, label %17, label %18, !dbg !285

; <label>:17:                                     ; preds = %13
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0)), !dbg !286
  br label %30, !dbg !288

; <label>:18:                                     ; preds = %13
  %19 = call i8* @HgfsBd_GetBuf(), !dbg !289
  store i8* %19, i8** @gPacketBuffer, align 8, !dbg !290
  %20 = load i8*, i8** @gPacketBuffer, align 8, !dbg !291
  %21 = icmp eq i8* %20, null, !dbg !293
  br i1 %21, label %22, label %23, !dbg !294

; <label>:22:                                     ; preds = %18
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0)), !dbg !295
  br label %30, !dbg !297

; <label>:23:                                     ; preds = %18
  %24 = load %struct.RpcOut*, %struct.RpcOut** @gChannel, align 8, !dbg !298
  %25 = load i8*, i8** @gPacketBuffer, align 8, !dbg !300
  %26 = call signext i8 @HgfsBd_Enabled(%struct.RpcOut* %24, i8* %25), !dbg !301
  %27 = icmp ne i8 %26, 0, !dbg !301
  br i1 %27, label %29, label %28, !dbg !302

; <label>:28:                                     ; preds = %23
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0)), !dbg !303
  br label %30, !dbg !305

; <label>:29:                                     ; preds = %23
  store i8 1, i8* %1, align 1, !dbg !306
  br label %30, !dbg !307

; <label>:30:                                     ; preds = %29, %28, %22, %17, %12
  %31 = load i8, i8* %1, align 1, !dbg !308
  %32 = icmp ne i8 %31, 0, !dbg !308
  br i1 %32, label %35, label %33, !dbg !310

; <label>:33:                                     ; preds = %30
  %34 = call signext i8 @HgfsClient_Cleanup(), !dbg !311
  br label %35, !dbg !313

; <label>:35:                                     ; preds = %33, %30
  %36 = load i8, i8* %1, align 1, !dbg !314
  ret i8 %36, !dbg !315
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsClient_PrintShares() #0 !dbg !316 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca [4097 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.HgfsFileName*, align 8
  call void @llvm.dbg.declare(metadata i8* %2, metadata !317, metadata !215), !dbg !318
  store i8 0, i8* %2, align 1, !dbg !318
  call void @llvm.dbg.declare(metadata i32* %3, metadata !319, metadata !215), !dbg !320
  store i32 0, i32* %3, align 4, !dbg !320
  call void @llvm.dbg.declare(metadata [4097 x i8]* %4, metadata !321, metadata !215), !dbg !325
  call void @llvm.dbg.declare(metadata i32* %5, metadata !326, metadata !215), !dbg !327
  call void @llvm.dbg.declare(metadata %struct.HgfsFileName** %6, metadata !328, metadata !215), !dbg !330
  %7 = call signext i8 @HgfsClient_Open(i32* %5), !dbg !331
  %8 = icmp ne i8 %7, 0, !dbg !331
  br i1 %8, label %11, label %9, !dbg !333

; <label>:9:                                      ; preds = %0
  %10 = load i8, i8* %2, align 1, !dbg !334
  store i8 %10, i8* %1, align 1, !dbg !336
  br label %56, !dbg !336

; <label>:11:                                     ; preds = %0
  br label %12, !dbg !337

; <label>:12:                                     ; preds = %11, %36, %45, %46
  %13 = load i32, i32* %5, align 4, !dbg !338
  %14 = load i32, i32* %3, align 4, !dbg !340
  %15 = add nsw i32 %14, 1, !dbg !340
  store i32 %15, i32* %3, align 4, !dbg !340
  %16 = call %struct.HgfsFileName* @HgfsClient_Read(i32 %13, i32 %14), !dbg !341
  store %struct.HgfsFileName* %16, %struct.HgfsFileName** %6, align 8, !dbg !342
  %17 = load %struct.HgfsFileName*, %struct.HgfsFileName** %6, align 8, !dbg !343
  %18 = icmp eq %struct.HgfsFileName* %17, null, !dbg !345
  br i1 %18, label %19, label %20, !dbg !346

; <label>:19:                                     ; preds = %12
  br label %49, !dbg !347

; <label>:20:                                     ; preds = %12
  %21 = load %struct.HgfsFileName*, %struct.HgfsFileName** %6, align 8, !dbg !349
  %22 = getelementptr inbounds %struct.HgfsFileName, %struct.HgfsFileName* %21, i32 0, i32 0, !dbg !351
  %23 = load i32, i32* %22, align 1, !dbg !351
  %24 = icmp eq i32 %23, 0, !dbg !352
  br i1 %24, label %25, label %26, !dbg !353

; <label>:25:                                     ; preds = %20
  store i8 1, i8* %2, align 1, !dbg !354
  br label %49, !dbg !356

; <label>:26:                                     ; preds = %20
  %27 = load %struct.HgfsFileName*, %struct.HgfsFileName** %6, align 8, !dbg !357
  %28 = getelementptr inbounds %struct.HgfsFileName, %struct.HgfsFileName* %27, i32 0, i32 1, !dbg !359
  %29 = getelementptr inbounds [1 x i8], [1 x i8]* %28, i32 0, i32 0, !dbg !357
  %30 = load %struct.HgfsFileName*, %struct.HgfsFileName** %6, align 8, !dbg !360
  %31 = getelementptr inbounds %struct.HgfsFileName, %struct.HgfsFileName* %30, i32 0, i32 0, !dbg !361
  %32 = load i32, i32* %31, align 1, !dbg !361
  %33 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !362
  %34 = call i32 @HgfsEscape_Do(i8* %29, i32 %32, i32 4097, i8* %33), !dbg !363
  %35 = icmp slt i32 %34, 0, !dbg !364
  br i1 %35, label %36, label %37, !dbg !365

; <label>:36:                                     ; preds = %26
  br label %12, !dbg !366, !llvm.loop !368

; <label>:37:                                     ; preds = %26
  %38 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !369
  %39 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* %38) #5, !dbg !371
  %40 = icmp eq i32 %39, 0, !dbg !372
  br i1 %40, label %45, label %41, !dbg !373

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !374
  %43 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %42) #5, !dbg !375
  %44 = icmp eq i32 %43, 0, !dbg !376
  br i1 %44, label %45, label %46, !dbg !377

; <label>:45:                                     ; preds = %41, %37
  br label %12, !dbg !379, !llvm.loop !368

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !381
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %47), !dbg !382
  br label %12, !dbg !383, !llvm.loop !368

; <label>:49:                                     ; preds = %25, %19
  %50 = load i32, i32* %5, align 4, !dbg !385
  %51 = call signext i8 @HgfsClient_Close(i32 %50), !dbg !387
  %52 = icmp ne i8 %51, 0, !dbg !387
  br i1 %52, label %54, label %53, !dbg !388

; <label>:53:                                     ; preds = %49
  store i8 0, i8* %2, align 1, !dbg !389
  br label %54, !dbg !391

; <label>:54:                                     ; preds = %53, %49
  %55 = load i8, i8* %2, align 1, !dbg !392
  store i8 %55, i8* %1, align 1, !dbg !393
  br label %56, !dbg !393

; <label>:56:                                     ; preds = %54, %9
  %57 = load i8, i8* %1, align 1, !dbg !394
  ret i8 %57, !dbg !394
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsClient_Cleanup() #0 !dbg !395 {
  %1 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !396, metadata !215), !dbg !397
  store i8 1, i8* %1, align 1, !dbg !397
  %2 = load i8*, i8** @gPacketBuffer, align 8, !dbg !398
  %3 = icmp ne i8* %2, null, !dbg !400
  br i1 %3, label %4, label %6, !dbg !401

; <label>:4:                                      ; preds = %0
  %5 = load i8*, i8** @gPacketBuffer, align 8, !dbg !402
  call void @HgfsBd_PutBuf(i8* %5), !dbg !404
  br label %6, !dbg !405

; <label>:6:                                      ; preds = %4, %0
  %7 = load %struct.RpcOut*, %struct.RpcOut** @gChannel, align 8, !dbg !406
  %8 = icmp ne %struct.RpcOut* %7, null, !dbg !408
  br i1 %8, label %9, label %15, !dbg !409

; <label>:9:                                      ; preds = %6
  %10 = load %struct.RpcOut*, %struct.RpcOut** @gChannel, align 8, !dbg !410
  %11 = call signext i8 @HgfsBd_CloseChannel(%struct.RpcOut* %10), !dbg !413
  %12 = icmp ne i8 %11, 0, !dbg !413
  br i1 %12, label %14, label %13, !dbg !414

; <label>:13:                                     ; preds = %9
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0)), !dbg !415
  store i8 0, i8* %1, align 1, !dbg !417
  br label %14, !dbg !418

; <label>:14:                                     ; preds = %13, %9
  br label %15, !dbg !419

; <label>:15:                                     ; preds = %14, %6
  %16 = load i8, i8* %1, align 1, !dbg !420
  ret i8 %16, !dbg !421
}

declare i32 @VMTools_LoadConfig(i8*, i32, %struct._GKeyFile**, i64*) #3

declare void @VMTools_ConfigLogging(i8*, %struct._GKeyFile*, i32, i32) #3

declare void @g_key_file_free(%struct._GKeyFile*) #3

declare signext i8 @VmCheck_IsVirtualWorld() #3

declare void @Warning(i8*, ...) #3

declare %struct.RpcOut* @HgfsBd_GetChannel() #3

declare i8* @HgfsBd_GetBuf() #3

declare signext i8 @HgfsBd_Enabled(%struct.RpcOut*, i8*) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsClient_Open(i32*) #0 !dbg !422 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.HgfsRequestSearchOpen*, align 8
  %5 = alloca %struct.HgfsReplySearchOpen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !426, metadata !215), !dbg !427
  call void @llvm.dbg.declare(metadata i8* %3, metadata !428, metadata !215), !dbg !429
  store i8 0, i8* %3, align 1, !dbg !429
  call void @llvm.dbg.declare(metadata %struct.HgfsRequestSearchOpen** %4, metadata !430, metadata !215), !dbg !431
  call void @llvm.dbg.declare(metadata %struct.HgfsReplySearchOpen** %5, metadata !432, metadata !215), !dbg !433
  store %struct.HgfsReplySearchOpen* null, %struct.HgfsReplySearchOpen** %5, align 8, !dbg !433
  call void @llvm.dbg.declare(metadata i32* %6, metadata !434, metadata !215), !dbg !435
  call void @llvm.dbg.declare(metadata i8** %7, metadata !436, metadata !215), !dbg !438
  call void @llvm.dbg.declare(metadata i64* %8, metadata !439, metadata !215), !dbg !442
  %9 = load i8*, i8** @gPacketBuffer, align 8, !dbg !443
  %10 = bitcast i8* %9 to %struct.HgfsRequestSearchOpen*, !dbg !444
  store %struct.HgfsRequestSearchOpen* %10, %struct.HgfsRequestSearchOpen** %4, align 8, !dbg !445
  %11 = load %struct.HgfsRequestSearchOpen*, %struct.HgfsRequestSearchOpen** %4, align 8, !dbg !446
  %12 = bitcast %struct.HgfsRequestSearchOpen* %11 to i8*, !dbg !447
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 13, i32 1, i1 false), !dbg !447
  %13 = load %struct.HgfsRequestSearchOpen*, %struct.HgfsRequestSearchOpen** %4, align 8, !dbg !448
  %14 = getelementptr inbounds %struct.HgfsRequestSearchOpen, %struct.HgfsRequestSearchOpen* %13, i32 0, i32 0, !dbg !449
  %15 = getelementptr inbounds %struct.HgfsRequest, %struct.HgfsRequest* %14, i32 0, i32 0, !dbg !450
  store i32 0, i32* %15, align 1, !dbg !451
  %16 = load %struct.HgfsRequestSearchOpen*, %struct.HgfsRequestSearchOpen** %4, align 8, !dbg !452
  %17 = getelementptr inbounds %struct.HgfsRequestSearchOpen, %struct.HgfsRequestSearchOpen* %16, i32 0, i32 0, !dbg !453
  %18 = getelementptr inbounds %struct.HgfsRequest, %struct.HgfsRequest* %17, i32 0, i32 1, !dbg !454
  store i32 4, i32* %18, align 1, !dbg !455
  %19 = load %struct.HgfsRequestSearchOpen*, %struct.HgfsRequestSearchOpen** %4, align 8, !dbg !456
  %20 = getelementptr inbounds %struct.HgfsRequestSearchOpen, %struct.HgfsRequestSearchOpen* %19, i32 0, i32 1, !dbg !457
  %21 = getelementptr inbounds %struct.HgfsFileName, %struct.HgfsFileName* %20, i32 0, i32 0, !dbg !458
  store i32 0, i32* %21, align 1, !dbg !459
  %22 = load %struct.HgfsRequestSearchOpen*, %struct.HgfsRequestSearchOpen** %4, align 8, !dbg !460
  %23 = getelementptr inbounds %struct.HgfsRequestSearchOpen, %struct.HgfsRequestSearchOpen* %22, i32 0, i32 1, !dbg !461
  %24 = getelementptr inbounds %struct.HgfsFileName, %struct.HgfsFileName* %23, i32 0, i32 1, !dbg !462
  %25 = getelementptr inbounds [1 x i8], [1 x i8]* %24, i64 0, i64 0, !dbg !460
  store i8 0, i8* %25, align 1, !dbg !463
  store i64 13, i64* %8, align 8, !dbg !464
  %26 = load %struct.RpcOut*, %struct.RpcOut** @gChannel, align 8, !dbg !465
  %27 = load %struct.HgfsRequestSearchOpen*, %struct.HgfsRequestSearchOpen** %4, align 8, !dbg !466
  %28 = bitcast %struct.HgfsRequestSearchOpen* %27 to i8*, !dbg !467
  %29 = call i32 @HgfsBd_Dispatch(%struct.RpcOut* %26, i8* %28, i64* %8, i8** %7), !dbg !468
  store i32 %29, i32* %6, align 4, !dbg !469
  %30 = load i32, i32* %6, align 4, !dbg !470
  %31 = icmp ne i32 %30, 0, !dbg !472
  br i1 %31, label %32, label %33, !dbg !473

; <label>:32:                                     ; preds = %1
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0)), !dbg !474
  br label %43, !dbg !476

; <label>:33:                                     ; preds = %1
  %34 = load i8*, i8** %7, align 8, !dbg !477
  %35 = bitcast i8* %34 to %struct.HgfsReplySearchOpen*, !dbg !478
  store %struct.HgfsReplySearchOpen* %35, %struct.HgfsReplySearchOpen** %5, align 8, !dbg !479
  %36 = load %struct.HgfsReplySearchOpen*, %struct.HgfsReplySearchOpen** %5, align 8, !dbg !480
  %37 = getelementptr inbounds %struct.HgfsReplySearchOpen, %struct.HgfsReplySearchOpen* %36, i32 0, i32 0, !dbg !482
  %38 = getelementptr inbounds %struct.HgfsReply, %struct.HgfsReply* %37, i32 0, i32 1, !dbg !483
  %39 = load i32, i32* %38, align 1, !dbg !483
  %40 = icmp ne i32 %39, 0, !dbg !484
  br i1 %40, label %41, label %42, !dbg !485

; <label>:41:                                     ; preds = %33
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0)), !dbg !486
  br label %43, !dbg !488

; <label>:42:                                     ; preds = %33
  store i8 1, i8* %3, align 1, !dbg !489
  br label %43, !dbg !490

; <label>:43:                                     ; preds = %42, %41, %32
  %44 = load i8, i8* %3, align 1, !dbg !491
  %45 = icmp ne i8 %44, 0, !dbg !491
  br i1 %45, label %46, label %51, !dbg !493

; <label>:46:                                     ; preds = %43
  %47 = load %struct.HgfsReplySearchOpen*, %struct.HgfsReplySearchOpen** %5, align 8, !dbg !494
  %48 = getelementptr inbounds %struct.HgfsReplySearchOpen, %struct.HgfsReplySearchOpen* %47, i32 0, i32 1, !dbg !496
  %49 = load i32, i32* %48, align 1, !dbg !496
  %50 = load i32*, i32** %2, align 8, !dbg !497
  store i32 %49, i32* %50, align 4, !dbg !498
  br label %51, !dbg !499

; <label>:51:                                     ; preds = %46, %43
  %52 = load i8, i8* %3, align 1, !dbg !500
  ret i8 %52, !dbg !501
}

; Function Attrs: nounwind uwtable
define internal %struct.HgfsFileName* @HgfsClient_Read(i32, i32) #0 !dbg !502 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.HgfsFileName*, align 8
  %6 = alloca %struct.HgfsRequestSearchRead*, align 8
  %7 = alloca %struct.HgfsReplySearchRead*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !505, metadata !215), !dbg !506
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !507, metadata !215), !dbg !508
  call void @llvm.dbg.declare(metadata %struct.HgfsFileName** %5, metadata !509, metadata !215), !dbg !510
  store %struct.HgfsFileName* null, %struct.HgfsFileName** %5, align 8, !dbg !510
  call void @llvm.dbg.declare(metadata %struct.HgfsRequestSearchRead** %6, metadata !511, metadata !215), !dbg !512
  call void @llvm.dbg.declare(metadata %struct.HgfsReplySearchRead** %7, metadata !513, metadata !215), !dbg !514
  call void @llvm.dbg.declare(metadata i32* %8, metadata !515, metadata !215), !dbg !516
  call void @llvm.dbg.declare(metadata i8** %9, metadata !517, metadata !215), !dbg !518
  call void @llvm.dbg.declare(metadata i64* %10, metadata !519, metadata !215), !dbg !520
  %11 = load i8*, i8** @gPacketBuffer, align 8, !dbg !521
  %12 = bitcast i8* %11 to %struct.HgfsRequestSearchRead*, !dbg !522
  store %struct.HgfsRequestSearchRead* %12, %struct.HgfsRequestSearchRead** %6, align 8, !dbg !523
  %13 = load %struct.HgfsRequestSearchRead*, %struct.HgfsRequestSearchRead** %6, align 8, !dbg !524
  %14 = bitcast %struct.HgfsRequestSearchRead* %13 to i8*, !dbg !525
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 16, i32 1, i1 false), !dbg !525
  %15 = load %struct.HgfsRequestSearchRead*, %struct.HgfsRequestSearchRead** %6, align 8, !dbg !526
  %16 = getelementptr inbounds %struct.HgfsRequestSearchRead, %struct.HgfsRequestSearchRead* %15, i32 0, i32 0, !dbg !527
  %17 = getelementptr inbounds %struct.HgfsRequest, %struct.HgfsRequest* %16, i32 0, i32 0, !dbg !528
  store i32 0, i32* %17, align 1, !dbg !529
  %18 = load %struct.HgfsRequestSearchRead*, %struct.HgfsRequestSearchRead** %6, align 8, !dbg !530
  %19 = getelementptr inbounds %struct.HgfsRequestSearchRead, %struct.HgfsRequestSearchRead* %18, i32 0, i32 0, !dbg !531
  %20 = getelementptr inbounds %struct.HgfsRequest, %struct.HgfsRequest* %19, i32 0, i32 1, !dbg !532
  store i32 5, i32* %20, align 1, !dbg !533
  %21 = load i32, i32* %3, align 4, !dbg !534
  %22 = load %struct.HgfsRequestSearchRead*, %struct.HgfsRequestSearchRead** %6, align 8, !dbg !535
  %23 = getelementptr inbounds %struct.HgfsRequestSearchRead, %struct.HgfsRequestSearchRead* %22, i32 0, i32 1, !dbg !536
  store i32 %21, i32* %23, align 1, !dbg !537
  %24 = load i32, i32* %4, align 4, !dbg !538
  %25 = load %struct.HgfsRequestSearchRead*, %struct.HgfsRequestSearchRead** %6, align 8, !dbg !539
  %26 = getelementptr inbounds %struct.HgfsRequestSearchRead, %struct.HgfsRequestSearchRead* %25, i32 0, i32 2, !dbg !540
  store i32 %24, i32* %26, align 1, !dbg !541
  store i64 16, i64* %10, align 8, !dbg !542
  %27 = load %struct.RpcOut*, %struct.RpcOut** @gChannel, align 8, !dbg !543
  %28 = load %struct.HgfsRequestSearchRead*, %struct.HgfsRequestSearchRead** %6, align 8, !dbg !544
  %29 = bitcast %struct.HgfsRequestSearchRead* %28 to i8*, !dbg !545
  %30 = call i32 @HgfsBd_Dispatch(%struct.RpcOut* %27, i8* %29, i64* %10, i8** %9), !dbg !546
  store i32 %30, i32* %8, align 4, !dbg !547
  %31 = load i32, i32* %8, align 4, !dbg !548
  %32 = icmp ne i32 %31, 0, !dbg !550
  br i1 %32, label %33, label %34, !dbg !551

; <label>:33:                                     ; preds = %2
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0)), !dbg !552
  br label %46, !dbg !554

; <label>:34:                                     ; preds = %2
  %35 = load i8*, i8** %9, align 8, !dbg !555
  %36 = bitcast i8* %35 to %struct.HgfsReplySearchRead*, !dbg !556
  store %struct.HgfsReplySearchRead* %36, %struct.HgfsReplySearchRead** %7, align 8, !dbg !557
  %37 = load %struct.HgfsReplySearchRead*, %struct.HgfsReplySearchRead** %7, align 8, !dbg !558
  %38 = getelementptr inbounds %struct.HgfsReplySearchRead, %struct.HgfsReplySearchRead* %37, i32 0, i32 0, !dbg !560
  %39 = getelementptr inbounds %struct.HgfsReply, %struct.HgfsReply* %38, i32 0, i32 1, !dbg !561
  %40 = load i32, i32* %39, align 1, !dbg !561
  %41 = icmp ne i32 %40, 0, !dbg !562
  br i1 %41, label %42, label %43, !dbg !563

; <label>:42:                                     ; preds = %34
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0)), !dbg !564
  br label %46, !dbg !566

; <label>:43:                                     ; preds = %34
  %44 = load %struct.HgfsReplySearchRead*, %struct.HgfsReplySearchRead** %7, align 8, !dbg !567
  %45 = getelementptr inbounds %struct.HgfsReplySearchRead, %struct.HgfsReplySearchRead* %44, i32 0, i32 2, !dbg !568
  store %struct.HgfsFileName* %45, %struct.HgfsFileName** %5, align 8, !dbg !569
  br label %46, !dbg !570

; <label>:46:                                     ; preds = %43, %42, %33
  %47 = load %struct.HgfsFileName*, %struct.HgfsFileName** %5, align 8, !dbg !571
  ret %struct.HgfsFileName* %47, !dbg !572
}

declare i32 @HgfsEscape_Do(i8*, i32, i32, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsClient_Close(i32) #0 !dbg !573 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.HgfsRequestSearchClose*, align 8
  %5 = alloca %struct.HgfsReplySearchClose*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !576, metadata !215), !dbg !577
  call void @llvm.dbg.declare(metadata %struct.HgfsRequestSearchClose** %4, metadata !578, metadata !215), !dbg !579
  call void @llvm.dbg.declare(metadata %struct.HgfsReplySearchClose** %5, metadata !580, metadata !215), !dbg !581
  call void @llvm.dbg.declare(metadata i32* %6, metadata !582, metadata !215), !dbg !583
  call void @llvm.dbg.declare(metadata i8** %7, metadata !584, metadata !215), !dbg !585
  call void @llvm.dbg.declare(metadata i64* %8, metadata !586, metadata !215), !dbg !587
  %9 = load i8*, i8** @gPacketBuffer, align 8, !dbg !588
  %10 = bitcast i8* %9 to %struct.HgfsRequestSearchClose*, !dbg !589
  store %struct.HgfsRequestSearchClose* %10, %struct.HgfsRequestSearchClose** %4, align 8, !dbg !590
  %11 = load %struct.HgfsRequestSearchClose*, %struct.HgfsRequestSearchClose** %4, align 8, !dbg !591
  %12 = bitcast %struct.HgfsRequestSearchClose* %11 to i8*, !dbg !592
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 12, i32 1, i1 false), !dbg !592
  %13 = load %struct.HgfsRequestSearchClose*, %struct.HgfsRequestSearchClose** %4, align 8, !dbg !593
  %14 = getelementptr inbounds %struct.HgfsRequestSearchClose, %struct.HgfsRequestSearchClose* %13, i32 0, i32 0, !dbg !594
  %15 = getelementptr inbounds %struct.HgfsRequest, %struct.HgfsRequest* %14, i32 0, i32 0, !dbg !595
  store i32 0, i32* %15, align 1, !dbg !596
  %16 = load %struct.HgfsRequestSearchClose*, %struct.HgfsRequestSearchClose** %4, align 8, !dbg !597
  %17 = getelementptr inbounds %struct.HgfsRequestSearchClose, %struct.HgfsRequestSearchClose* %16, i32 0, i32 0, !dbg !598
  %18 = getelementptr inbounds %struct.HgfsRequest, %struct.HgfsRequest* %17, i32 0, i32 1, !dbg !599
  store i32 6, i32* %18, align 1, !dbg !600
  %19 = load i32, i32* %3, align 4, !dbg !601
  %20 = load %struct.HgfsRequestSearchClose*, %struct.HgfsRequestSearchClose** %4, align 8, !dbg !602
  %21 = getelementptr inbounds %struct.HgfsRequestSearchClose, %struct.HgfsRequestSearchClose* %20, i32 0, i32 1, !dbg !603
  store i32 %19, i32* %21, align 1, !dbg !604
  store i64 12, i64* %8, align 8, !dbg !605
  %22 = load %struct.RpcOut*, %struct.RpcOut** @gChannel, align 8, !dbg !606
  %23 = load %struct.HgfsRequestSearchClose*, %struct.HgfsRequestSearchClose** %4, align 8, !dbg !607
  %24 = bitcast %struct.HgfsRequestSearchClose* %23 to i8*, !dbg !608
  %25 = call i32 @HgfsBd_Dispatch(%struct.RpcOut* %22, i8* %24, i64* %8, i8** %7), !dbg !609
  store i32 %25, i32* %6, align 4, !dbg !610
  %26 = load i32, i32* %6, align 4, !dbg !611
  %27 = icmp ne i32 %26, 0, !dbg !613
  br i1 %27, label %28, label %29, !dbg !614

; <label>:28:                                     ; preds = %1
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0)), !dbg !615
  store i8 0, i8* %2, align 1, !dbg !617
  br label %39, !dbg !617

; <label>:29:                                     ; preds = %1
  %30 = load i8*, i8** %7, align 8, !dbg !618
  %31 = bitcast i8* %30 to %struct.HgfsReplySearchClose*, !dbg !619
  store %struct.HgfsReplySearchClose* %31, %struct.HgfsReplySearchClose** %5, align 8, !dbg !620
  %32 = load %struct.HgfsReplySearchClose*, %struct.HgfsReplySearchClose** %5, align 8, !dbg !621
  %33 = getelementptr inbounds %struct.HgfsReplySearchClose, %struct.HgfsReplySearchClose* %32, i32 0, i32 0, !dbg !623
  %34 = getelementptr inbounds %struct.HgfsReply, %struct.HgfsReply* %33, i32 0, i32 1, !dbg !624
  %35 = load i32, i32* %34, align 1, !dbg !624
  %36 = icmp ne i32 %35, 0, !dbg !625
  br i1 %36, label %37, label %38, !dbg !626

; <label>:37:                                     ; preds = %29
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0)), !dbg !627
  store i8 0, i8* %2, align 1, !dbg !629
  br label %39, !dbg !629

; <label>:38:                                     ; preds = %29
  store i8 1, i8* %2, align 1, !dbg !630
  br label %39, !dbg !630

; <label>:39:                                     ; preds = %38, %37, %28
  %40 = load i8, i8* %2, align 1, !dbg !631
  ret i8 %40, !dbg !631
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare i32 @HgfsBd_Dispatch(%struct.RpcOut*, i8*, i64*, i8**) #3

declare void @HgfsBd_PutBuf(i8*) #3

declare signext i8 @HgfsBd_CloseChannel(%struct.RpcOut*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!205, !206}
!llvm.ident = !{!207}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !107, globals: !192)
!1 = !DIFile(filename: "vmware_hgfsclient-hgfsclient.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1279")
!2 = !{!3, !9, !79, !102}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 50, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1279")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "G_KEY_FILE_NONE", value: 0)
!7 = !DIEnumerator(name: "G_KEY_FILE_KEEP_COMMENTS", value: 1)
!8 = !DIEnumerator(name: "G_KEY_FILE_KEEP_TRANSLATIONS", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 68, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsProto.h", directory: "/home/lichi/Desktop/open-vm-tools/line1279")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!12 = !DIEnumerator(name: "HGFS_OP_OPEN", value: 0)
!13 = !DIEnumerator(name: "HGFS_OP_READ", value: 1)
!14 = !DIEnumerator(name: "HGFS_OP_WRITE", value: 2)
!15 = !DIEnumerator(name: "HGFS_OP_CLOSE", value: 3)
!16 = !DIEnumerator(name: "HGFS_OP_SEARCH_OPEN", value: 4)
!17 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ", value: 5)
!18 = !DIEnumerator(name: "HGFS_OP_SEARCH_CLOSE", value: 6)
!19 = !DIEnumerator(name: "HGFS_OP_GETATTR", value: 7)
!20 = !DIEnumerator(name: "HGFS_OP_SETATTR", value: 8)
!21 = !DIEnumerator(name: "HGFS_OP_CREATE_DIR", value: 9)
!22 = !DIEnumerator(name: "HGFS_OP_DELETE_FILE", value: 10)
!23 = !DIEnumerator(name: "HGFS_OP_DELETE_DIR", value: 11)
!24 = !DIEnumerator(name: "HGFS_OP_RENAME", value: 12)
!25 = !DIEnumerator(name: "HGFS_OP_QUERY_VOLUME_INFO", value: 13)
!26 = !DIEnumerator(name: "HGFS_OP_OPEN_V2", value: 14)
!27 = !DIEnumerator(name: "HGFS_OP_GETATTR_V2", value: 15)
!28 = !DIEnumerator(name: "HGFS_OP_SETATTR_V2", value: 16)
!29 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ_V2", value: 17)
!30 = !DIEnumerator(name: "HGFS_OP_CREATE_SYMLINK", value: 18)
!31 = !DIEnumerator(name: "HGFS_OP_SERVER_LOCK_CHANGE", value: 19)
!32 = !DIEnumerator(name: "HGFS_OP_CREATE_DIR_V2", value: 20)
!33 = !DIEnumerator(name: "HGFS_OP_DELETE_FILE_V2", value: 21)
!34 = !DIEnumerator(name: "HGFS_OP_DELETE_DIR_V2", value: 22)
!35 = !DIEnumerator(name: "HGFS_OP_RENAME_V2", value: 23)
!36 = !DIEnumerator(name: "HGFS_OP_OPEN_V3", value: 24)
!37 = !DIEnumerator(name: "HGFS_OP_READ_V3", value: 25)
!38 = !DIEnumerator(name: "HGFS_OP_WRITE_V3", value: 26)
!39 = !DIEnumerator(name: "HGFS_OP_CLOSE_V3", value: 27)
!40 = !DIEnumerator(name: "HGFS_OP_SEARCH_OPEN_V3", value: 28)
!41 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ_V3", value: 29)
!42 = !DIEnumerator(name: "HGFS_OP_SEARCH_CLOSE_V3", value: 30)
!43 = !DIEnumerator(name: "HGFS_OP_GETATTR_V3", value: 31)
!44 = !DIEnumerator(name: "HGFS_OP_SETATTR_V3", value: 32)
!45 = !DIEnumerator(name: "HGFS_OP_CREATE_DIR_V3", value: 33)
!46 = !DIEnumerator(name: "HGFS_OP_DELETE_FILE_V3", value: 34)
!47 = !DIEnumerator(name: "HGFS_OP_DELETE_DIR_V3", value: 35)
!48 = !DIEnumerator(name: "HGFS_OP_RENAME_V3", value: 36)
!49 = !DIEnumerator(name: "HGFS_OP_QUERY_VOLUME_INFO_V3", value: 37)
!50 = !DIEnumerator(name: "HGFS_OP_CREATE_SYMLINK_V3", value: 38)
!51 = !DIEnumerator(name: "HGFS_OP_SERVER_LOCK_CHANGE_V3", value: 39)
!52 = !DIEnumerator(name: "HGFS_OP_WRITE_WIN32_STREAM_V3", value: 40)
!53 = !DIEnumerator(name: "HGFS_OP_CREATE_SESSION_V4", value: 41)
!54 = !DIEnumerator(name: "HGFS_OP_DESTROY_SESSION_V4", value: 42)
!55 = !DIEnumerator(name: "HGFS_OP_READ_FAST_V4", value: 43)
!56 = !DIEnumerator(name: "HGFS_OP_WRITE_FAST_V4", value: 44)
!57 = !DIEnumerator(name: "HGFS_OP_SET_WATCH_V4", value: 45)
!58 = !DIEnumerator(name: "HGFS_OP_REMOVE_WATCH_V4", value: 46)
!59 = !DIEnumerator(name: "HGFS_OP_NOTIFY_V4", value: 47)
!60 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ_V4", value: 48)
!61 = !DIEnumerator(name: "HGFS_OP_OPEN_V4", value: 49)
!62 = !DIEnumerator(name: "HGFS_OP_ENUMERATE_STREAMS_V4", value: 50)
!63 = !DIEnumerator(name: "HGFS_OP_GETATTR_V4", value: 51)
!64 = !DIEnumerator(name: "HGFS_OP_SETATTR_V4", value: 52)
!65 = !DIEnumerator(name: "HGFS_OP_DELETE_V4", value: 53)
!66 = !DIEnumerator(name: "HGFS_OP_LINKMOVE_V4", value: 54)
!67 = !DIEnumerator(name: "HGFS_OP_FSCTL_V4", value: 55)
!68 = !DIEnumerator(name: "HGFS_OP_ACCESS_CHECK_V4", value: 56)
!69 = !DIEnumerator(name: "HGFS_OP_FSYNC_V4", value: 57)
!70 = !DIEnumerator(name: "HGFS_OP_QUERY_VOLUME_INFO_V4", value: 58)
!71 = !DIEnumerator(name: "HGFS_OP_OPLOCK_ACQUIRE_V4", value: 59)
!72 = !DIEnumerator(name: "HGFS_OP_OPLOCK_BREAK_V4", value: 60)
!73 = !DIEnumerator(name: "HGFS_OP_LOCK_BYTE_RANGE_V4", value: 61)
!74 = !DIEnumerator(name: "HGFS_OP_UNLOCK_BYTE_RANGE_V4", value: 62)
!75 = !DIEnumerator(name: "HGFS_OP_QUERY_EAS_V4", value: 63)
!76 = !DIEnumerator(name: "HGFS_OP_SET_EAS_V4", value: 64)
!77 = !DIEnumerator(name: "HGFS_OP_MAX", value: 65)
!78 = !DIEnumerator(name: "HGFS_OP_NEW_HEADER", value: 255)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 177, size: 32, align: 32, elements: !81)
!80 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfs.h", directory: "/home/lichi/Desktop/open-vm-tools/line1279")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!82 = !DIEnumerator(name: "HGFS_STATUS_SUCCESS", value: 0)
!83 = !DIEnumerator(name: "HGFS_STATUS_NO_SUCH_FILE_OR_DIR", value: 1)
!84 = !DIEnumerator(name: "HGFS_STATUS_INVALID_HANDLE", value: 2)
!85 = !DIEnumerator(name: "HGFS_STATUS_OPERATION_NOT_PERMITTED", value: 3)
!86 = !DIEnumerator(name: "HGFS_STATUS_FILE_EXISTS", value: 4)
!87 = !DIEnumerator(name: "HGFS_STATUS_NOT_DIRECTORY", value: 5)
!88 = !DIEnumerator(name: "HGFS_STATUS_DIR_NOT_EMPTY", value: 6)
!89 = !DIEnumerator(name: "HGFS_STATUS_PROTOCOL_ERROR", value: 7)
!90 = !DIEnumerator(name: "HGFS_STATUS_ACCESS_DENIED", value: 8)
!91 = !DIEnumerator(name: "HGFS_STATUS_INVALID_NAME", value: 9)
!92 = !DIEnumerator(name: "HGFS_STATUS_GENERIC_ERROR", value: 10)
!93 = !DIEnumerator(name: "HGFS_STATUS_SHARING_VIOLATION", value: 11)
!94 = !DIEnumerator(name: "HGFS_STATUS_NO_SPACE", value: 12)
!95 = !DIEnumerator(name: "HGFS_STATUS_OPERATION_NOT_SUPPORTED", value: 13)
!96 = !DIEnumerator(name: "HGFS_STATUS_NAME_TOO_LONG", value: 14)
!97 = !DIEnumerator(name: "HGFS_STATUS_INVALID_PARAMETER", value: 15)
!98 = !DIEnumerator(name: "HGFS_STATUS_NOT_SAME_DEVICE", value: 16)
!99 = !DIEnumerator(name: "HGFS_STATUS_STALE_SESSION", value: 17)
!100 = !DIEnumerator(name: "HGFS_STATUS_TOO_MANY_SESSIONS", value: 18)
!101 = !DIEnumerator(name: "HGFS_STATUS_TRANSPORT_ERROR", value: 19)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 95, size: 32, align: 32, elements: !103)
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "HGFS_FILE_TYPE_REGULAR", value: 0)
!105 = !DIEnumerator(name: "HGFS_FILE_TYPE_DIRECTORY", value: 1)
!106 = !DIEnumerator(name: "HGFS_FILE_TYPE_SYMLINK", value: 2)
!107 = !{!108, !109, !136, !137, !149, !156, !181, !187}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsRequestSearchOpen", file: !10, line: 998, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsRequestSearchOpen", file: !10, line: 993, size: 104, align: 8, elements: !112)
!112 = !{!113, !126}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !111, file: !10, line: 994, baseType: !114, size: 64, align: 8)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsRequest", file: !10, line: 671, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsRequest", file: !10, line: 666, size: 64, align: 8, elements: !116)
!116 = !{!117, !124}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !115, file: !10, line: 667, baseType: !118, size: 32, align: 32)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsHandle", file: !10, line: 58, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !120, line: 173, baseType: !121)
!120 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1279")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !122, line: 51, baseType: !123)
!122 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1279")
!123 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !115, file: !10, line: 668, baseType: !125, size: 32, align: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOp", file: !10, line: 152, baseType: !9)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dirName", scope: !111, file: !10, line: 995, baseType: !127, size: 40, align: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsFileName", file: !10, line: 606, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsFileName", file: !10, line: 601, size: 40, align: 8, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !128, file: !10, line: 602, baseType: !119, size: 32, align: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !10, line: 603, baseType: !132, size: 8, align: 8, offset: 32)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 8, align: 8, elements: !134)
!133 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!134 = !{!135}
!135 = !DISubrange(count: 1)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsReplySearchOpen", file: !10, line: 1020, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsReplySearchOpen", file: !10, line: 1015, size: 96, align: 8, elements: !140)
!140 = !{!141, !148}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !139, file: !10, line: 1016, baseType: !142, size: 64, align: 8)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsReply", file: !10, line: 681, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsReply", file: !10, line: 676, size: 64, align: 8, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !143, file: !10, line: 677, baseType: !118, size: 32, align: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !143, file: !10, line: 678, baseType: !147, size: 32, align: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsStatus", file: !80, line: 203, baseType: !79)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !139, file: !10, line: 1017, baseType: !118, size: 32, align: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsRequestSearchRead", file: !10, line: 1043, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsRequestSearchRead", file: !10, line: 1037, size: 128, align: 8, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !151, file: !10, line: 1038, baseType: !114, size: 64, align: 8)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !151, file: !10, line: 1039, baseType: !118, size: 32, align: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !151, file: !10, line: 1040, baseType: !119, size: 32, align: 32, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsReplySearchRead", file: !10, line: 1081, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsReplySearchRead", file: !10, line: 1074, size: 464, align: 8, elements: !159)
!159 = !{!160, !161, !180}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !158, file: !10, line: 1075, baseType: !142, size: 64, align: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !158, file: !10, line: 1076, baseType: !162, size: 360, align: 8, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsAttr", file: !10, line: 380, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsAttr", file: !10, line: 369, size: 360, align: 8, elements: !164)
!164 = !{!165, !167, !171, !172, !173, !174, !175}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !10, line: 370, baseType: !166, size: 32, align: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsFileType", file: !80, line: 99, baseType: !102)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !163, file: !10, line: 371, baseType: !168, size: 64, align: 64, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !120, line: 171, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !122, line: 55, baseType: !170)
!170 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "creationTime", scope: !163, file: !10, line: 372, baseType: !168, size: 64, align: 64, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "accessTime", scope: !163, file: !10, line: 373, baseType: !168, size: 64, align: 64, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "writeTime", scope: !163, file: !10, line: 374, baseType: !168, size: 64, align: 64, offset: 224)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "attrChangeTime", scope: !163, file: !10, line: 375, baseType: !168, size: 64, align: 64, offset: 288)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !163, file: !10, line: 377, baseType: !176, size: 8, align: 8, offset: 352)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsPermissions", file: !10, line: 220, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !120, line: 177, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !122, line: 48, baseType: !179)
!179 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "fileName", scope: !158, file: !10, line: 1077, baseType: !127, size: 40, align: 8, offset: 424)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsRequestSearchClose", file: !10, line: 1137, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsRequestSearchClose", file: !10, line: 1132, size: 96, align: 8, elements: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !183, file: !10, line: 1133, baseType: !114, size: 64, align: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !183, file: !10, line: 1134, baseType: !118, size: 32, align: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsReplySearchClose", file: !10, line: 1148, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsReplySearchClose", file: !10, line: 1144, size: 64, align: 8, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !189, file: !10, line: 1145, baseType: !142, size: 64, align: 8)
!192 = !{!193, !199, !204}
!193 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !194, line: 44, type: !195, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!194 = !DIFile(filename: "hgfsclient.c", directory: "/home/lichi/Desktop/open-vm-tools/line1279")
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 160, align: 8, elements: !197)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!197 = !{!198}
!198 = !DISubrange(count: 20)
!199 = distinct !DIGlobalVariable(name: "gChannel", scope: !0, file: !194, line: 52, type: !200, isLocal: false, isDefinition: true, variable: %struct.RpcOut** @gChannel)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcOut", file: !202, line: 48, baseType: !203)
!202 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/rpcout.h", directory: "/home/lichi/Desktop/open-vm-tools/line1279")
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "RpcOut", file: !202, line: 48, flags: DIFlagFwdDecl)
!204 = distinct !DIGlobalVariable(name: "gPacketBuffer", scope: !0, file: !194, line: 53, type: !136, isLocal: false, isDefinition: true, variable: i8** @gPacketBuffer)
!205 = !{i32 2, !"Dwarf Version", i32 4}
!206 = !{i32 2, !"Debug Info Version", i32 3}
!207 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!208 = distinct !DISubprogram(name: "main", scope: !194, file: !194, line: 415, type: !209, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !211, !212}
!211 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!213 = !{}
!214 = !DILocalVariable(name: "argc", arg: 1, scope: !208, file: !194, line: 415, type: !211)
!215 = !DIExpression()
!216 = !DILocation(line: 415, column: 10, scope: !208)
!217 = !DILocalVariable(name: "argv", arg: 2, scope: !208, file: !194, line: 416, type: !212)
!218 = !DILocation(line: 416, column: 12, scope: !208)
!219 = !DILocation(line: 418, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !208, file: !194, line: 418, column: 8)
!221 = !DILocation(line: 418, column: 13, scope: !220)
!222 = !DILocation(line: 418, column: 18, scope: !220)
!223 = !DILocation(line: 419, column: 18, scope: !220)
!224 = !DILocation(line: 419, column: 10, scope: !220)
!225 = !DILocation(line: 419, column: 36, scope: !220)
!226 = !DILocation(line: 420, column: 18, scope: !220)
!227 = !DILocation(line: 420, column: 10, scope: !220)
!228 = !DILocation(line: 418, column: 8, scope: !229)
!229 = !DILexicalBlockFile(scope: !208, file: !194, discriminator: 1)
!230 = !DILocation(line: 421, column: 14, scope: !231)
!231 = distinct !DILexicalBlock(scope: !220, file: !194, line: 420, column: 42)
!232 = !DILocation(line: 421, column: 7, scope: !231)
!233 = !DILocation(line: 422, column: 7, scope: !231)
!234 = !DILocation(line: 425, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !208, file: !194, line: 425, column: 8)
!236 = !DILocation(line: 425, column: 8, scope: !208)
!237 = !DILocation(line: 426, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !194, line: 425, column: 28)
!239 = !DILocation(line: 428, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !208, file: !194, line: 428, column: 8)
!241 = !DILocation(line: 428, column: 8, scope: !208)
!242 = !DILocation(line: 429, column: 7, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !194, line: 428, column: 35)
!244 = !DILocation(line: 431, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !208, file: !194, line: 431, column: 8)
!246 = !DILocation(line: 431, column: 8, scope: !208)
!247 = !DILocation(line: 432, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !194, line: 431, column: 31)
!249 = !DILocation(line: 434, column: 4, scope: !208)
!250 = !DILocation(line: 435, column: 1, scope: !208)
!251 = distinct !DISubprogram(name: "HgfsClient_Init", scope: !194, file: !194, line: 319, type: !252, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!252 = !DISubroutineType(types: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !120, line: 230, baseType: !133)
!255 = !DILocalVariable(name: "success", scope: !251, file: !194, line: 321, type: !254)
!256 = !DILocation(line: 321, column: 9, scope: !251)
!257 = !DILocalVariable(name: "conf", scope: !251, file: !194, line: 322, type: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !4, line: 48, baseType: !260)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !4, line: 48, flags: DIFlagFwdDecl)
!261 = !DILocation(line: 322, column: 14, scope: !251)
!262 = !DILocation(line: 324, column: 4, scope: !251)
!263 = !DILocation(line: 325, column: 40, scope: !251)
!264 = !DILocation(line: 325, column: 4, scope: !251)
!265 = !DILocation(line: 326, column: 8, scope: !266)
!266 = distinct !DILexicalBlock(scope: !251, file: !194, line: 326, column: 8)
!267 = !DILocation(line: 326, column: 13, scope: !266)
!268 = !DILocation(line: 326, column: 8, scope: !251)
!269 = !DILocation(line: 327, column: 23, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !194, line: 326, column: 21)
!271 = !DILocation(line: 327, column: 7, scope: !270)
!272 = !DILocation(line: 328, column: 12, scope: !270)
!273 = !DILocation(line: 329, column: 4, scope: !270)
!274 = !DILocation(line: 331, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !251, file: !194, line: 331, column: 8)
!276 = !DILocation(line: 331, column: 8, scope: !251)
!277 = !DILocation(line: 332, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !194, line: 331, column: 35)
!279 = !DILocation(line: 333, column: 7, scope: !278)
!280 = !DILocation(line: 337, column: 15, scope: !251)
!281 = !DILocation(line: 337, column: 13, scope: !251)
!282 = !DILocation(line: 338, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !251, file: !194, line: 338, column: 8)
!284 = !DILocation(line: 338, column: 17, scope: !283)
!285 = !DILocation(line: 338, column: 8, scope: !251)
!286 = !DILocation(line: 339, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !194, line: 338, column: 25)
!288 = !DILocation(line: 340, column: 7, scope: !287)
!289 = !DILocation(line: 342, column: 20, scope: !251)
!290 = !DILocation(line: 342, column: 18, scope: !251)
!291 = !DILocation(line: 343, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !251, file: !194, line: 343, column: 8)
!293 = !DILocation(line: 343, column: 22, scope: !292)
!294 = !DILocation(line: 343, column: 8, scope: !251)
!295 = !DILocation(line: 344, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !194, line: 343, column: 30)
!297 = !DILocation(line: 345, column: 7, scope: !296)
!298 = !DILocation(line: 349, column: 24, scope: !299)
!299 = distinct !DILexicalBlock(scope: !251, file: !194, line: 349, column: 8)
!300 = !DILocation(line: 349, column: 34, scope: !299)
!301 = !DILocation(line: 349, column: 9, scope: !299)
!302 = !DILocation(line: 349, column: 8, scope: !251)
!303 = !DILocation(line: 350, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !194, line: 349, column: 50)
!305 = !DILocation(line: 351, column: 7, scope: !304)
!306 = !DILocation(line: 353, column: 12, scope: !251)
!307 = !DILocation(line: 353, column: 4, scope: !251)
!308 = !DILocation(line: 356, column: 9, scope: !309)
!309 = distinct !DILexicalBlock(scope: !251, file: !194, line: 356, column: 8)
!310 = !DILocation(line: 356, column: 8, scope: !251)
!311 = !DILocation(line: 357, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !194, line: 356, column: 18)
!313 = !DILocation(line: 358, column: 4, scope: !312)
!314 = !DILocation(line: 359, column: 11, scope: !251)
!315 = !DILocation(line: 359, column: 4, scope: !251)
!316 = distinct !DISubprogram(name: "HgfsClient_PrintShares", scope: !194, file: !194, line: 253, type: !252, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!317 = !DILocalVariable(name: "success", scope: !316, file: !194, line: 255, type: !254)
!318 = !DILocation(line: 255, column: 9, scope: !316)
!319 = !DILocalVariable(name: "offset", scope: !316, file: !194, line: 256, type: !211)
!320 = !DILocation(line: 256, column: 8, scope: !316)
!321 = !DILocalVariable(name: "escapedName", scope: !316, file: !194, line: 257, type: !322)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 32776, align: 8, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 4097)
!325 = !DILocation(line: 257, column: 9, scope: !316)
!326 = !DILocalVariable(name: "rootHandle", scope: !316, file: !194, line: 258, type: !118)
!327 = !DILocation(line: 258, column: 15, scope: !316)
!328 = !DILocalVariable(name: "fileName", scope: !316, file: !194, line: 259, type: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!330 = !DILocation(line: 259, column: 18, scope: !316)
!331 = !DILocation(line: 261, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !316, file: !194, line: 261, column: 8)
!333 = !DILocation(line: 261, column: 8, scope: !316)
!334 = !DILocation(line: 262, column: 14, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !194, line: 261, column: 39)
!336 = !DILocation(line: 262, column: 7, scope: !335)
!337 = !DILocation(line: 265, column: 4, scope: !316)
!338 = !DILocation(line: 266, column: 34, scope: !339)
!339 = distinct !DILexicalBlock(scope: !316, file: !194, line: 265, column: 14)
!340 = !DILocation(line: 266, column: 52, scope: !339)
!341 = !DILocation(line: 266, column: 18, scope: !339)
!342 = !DILocation(line: 266, column: 16, scope: !339)
!343 = !DILocation(line: 267, column: 11, scope: !344)
!344 = distinct !DILexicalBlock(scope: !339, file: !194, line: 267, column: 11)
!345 = !DILocation(line: 267, column: 20, scope: !344)
!346 = !DILocation(line: 267, column: 11, scope: !339)
!347 = !DILocation(line: 268, column: 10, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !194, line: 267, column: 28)
!349 = !DILocation(line: 272, column: 11, scope: !350)
!350 = distinct !DILexicalBlock(scope: !339, file: !194, line: 272, column: 11)
!351 = !DILocation(line: 272, column: 21, scope: !350)
!352 = !DILocation(line: 272, column: 28, scope: !350)
!353 = !DILocation(line: 272, column: 11, scope: !339)
!354 = !DILocation(line: 273, column: 18, scope: !355)
!355 = distinct !DILexicalBlock(scope: !350, file: !194, line: 272, column: 34)
!356 = !DILocation(line: 274, column: 10, scope: !355)
!357 = !DILocation(line: 281, column: 25, scope: !358)
!358 = distinct !DILexicalBlock(scope: !339, file: !194, line: 281, column: 11)
!359 = !DILocation(line: 281, column: 35, scope: !358)
!360 = !DILocation(line: 281, column: 41, scope: !358)
!361 = !DILocation(line: 281, column: 51, scope: !358)
!362 = !DILocation(line: 282, column: 48, scope: !358)
!363 = !DILocation(line: 281, column: 11, scope: !358)
!364 = !DILocation(line: 282, column: 61, scope: !358)
!365 = !DILocation(line: 281, column: 11, scope: !339)
!366 = !DILocation(line: 283, column: 10, scope: !367)
!367 = distinct !DILexicalBlock(scope: !358, file: !194, line: 282, column: 66)
!368 = distinct !{!368, !337}
!369 = !DILocation(line: 287, column: 23, scope: !370)
!370 = distinct !DILexicalBlock(scope: !339, file: !194, line: 287, column: 11)
!371 = !DILocation(line: 287, column: 11, scope: !370)
!372 = !DILocation(line: 287, column: 36, scope: !370)
!373 = !DILocation(line: 287, column: 41, scope: !370)
!374 = !DILocation(line: 288, column: 24, scope: !370)
!375 = !DILocation(line: 288, column: 11, scope: !370)
!376 = !DILocation(line: 288, column: 37, scope: !370)
!377 = !DILocation(line: 287, column: 11, scope: !378)
!378 = !DILexicalBlockFile(scope: !339, file: !194, discriminator: 1)
!379 = !DILocation(line: 289, column: 10, scope: !380)
!380 = distinct !DILexicalBlock(scope: !370, file: !194, line: 288, column: 43)
!381 = !DILocation(line: 291, column: 22, scope: !339)
!382 = !DILocation(line: 291, column: 7, scope: !339)
!383 = !DILocation(line: 265, column: 4, scope: !384)
!384 = !DILexicalBlockFile(scope: !316, file: !194, discriminator: 1)
!385 = !DILocation(line: 295, column: 26, scope: !386)
!386 = distinct !DILexicalBlock(scope: !316, file: !194, line: 295, column: 8)
!387 = !DILocation(line: 295, column: 9, scope: !386)
!388 = !DILocation(line: 295, column: 8, scope: !316)
!389 = !DILocation(line: 296, column: 15, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !194, line: 295, column: 39)
!391 = !DILocation(line: 297, column: 4, scope: !390)
!392 = !DILocation(line: 298, column: 11, scope: !316)
!393 = !DILocation(line: 298, column: 4, scope: !316)
!394 = !DILocation(line: 299, column: 1, scope: !316)
!395 = distinct !DISubprogram(name: "HgfsClient_Cleanup", scope: !194, file: !194, line: 380, type: !252, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!396 = !DILocalVariable(name: "success", scope: !395, file: !194, line: 382, type: !254)
!397 = !DILocation(line: 382, column: 9, scope: !395)
!398 = !DILocation(line: 384, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !194, line: 384, column: 8)
!400 = !DILocation(line: 384, column: 22, scope: !399)
!401 = !DILocation(line: 384, column: 8, scope: !395)
!402 = !DILocation(line: 385, column: 21, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !194, line: 384, column: 30)
!404 = !DILocation(line: 385, column: 7, scope: !403)
!405 = !DILocation(line: 386, column: 4, scope: !403)
!406 = !DILocation(line: 387, column: 8, scope: !407)
!407 = distinct !DILexicalBlock(scope: !395, file: !194, line: 387, column: 8)
!408 = !DILocation(line: 387, column: 17, scope: !407)
!409 = !DILocation(line: 387, column: 8, scope: !395)
!410 = !DILocation(line: 388, column: 32, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !194, line: 388, column: 11)
!412 = distinct !DILexicalBlock(scope: !407, file: !194, line: 387, column: 25)
!413 = !DILocation(line: 388, column: 12, scope: !411)
!414 = !DILocation(line: 388, column: 11, scope: !412)
!415 = !DILocation(line: 389, column: 10, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !194, line: 388, column: 43)
!417 = !DILocation(line: 390, column: 18, scope: !416)
!418 = !DILocation(line: 391, column: 7, scope: !416)
!419 = !DILocation(line: 392, column: 4, scope: !412)
!420 = !DILocation(line: 393, column: 11, scope: !395)
!421 = !DILocation(line: 393, column: 4, scope: !395)
!422 = distinct !DISubprogram(name: "HgfsClient_Open", scope: !194, file: !194, line: 82, type: !423, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!423 = !DISubroutineType(types: !424)
!424 = !{!254, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!426 = !DILocalVariable(name: "rootHandle", arg: 1, scope: !422, file: !194, line: 82, type: !425)
!427 = !DILocation(line: 82, column: 29, scope: !422)
!428 = !DILocalVariable(name: "success", scope: !422, file: !194, line: 84, type: !254)
!429 = !DILocation(line: 84, column: 9, scope: !422)
!430 = !DILocalVariable(name: "searchOpenReq", scope: !422, file: !194, line: 85, type: !109)
!431 = !DILocation(line: 85, column: 27, scope: !422)
!432 = !DILocalVariable(name: "searchOpenRep", scope: !422, file: !194, line: 86, type: !137)
!433 = !DILocation(line: 86, column: 25, scope: !422)
!434 = !DILocalVariable(name: "err", scope: !422, file: !194, line: 87, type: !211)
!435 = !DILocation(line: 87, column: 8, scope: !422)
!436 = !DILocalVariable(name: "replyPacket", scope: !422, file: !194, line: 88, type: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!438 = !DILocation(line: 88, column: 16, scope: !422)
!439 = !DILocalVariable(name: "packetSize", scope: !422, file: !194, line: 89, type: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !441, line: 216, baseType: !170)
!441 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1279")
!442 = !DILocation(line: 89, column: 11, scope: !422)
!443 = !DILocation(line: 92, column: 45, scope: !422)
!444 = !DILocation(line: 92, column: 20, scope: !422)
!445 = !DILocation(line: 92, column: 18, scope: !422)
!446 = !DILocation(line: 93, column: 11, scope: !422)
!447 = !DILocation(line: 93, column: 4, scope: !422)
!448 = !DILocation(line: 94, column: 4, scope: !422)
!449 = !DILocation(line: 94, column: 19, scope: !422)
!450 = !DILocation(line: 94, column: 26, scope: !422)
!451 = !DILocation(line: 94, column: 29, scope: !422)
!452 = !DILocation(line: 95, column: 4, scope: !422)
!453 = !DILocation(line: 95, column: 19, scope: !422)
!454 = !DILocation(line: 95, column: 26, scope: !422)
!455 = !DILocation(line: 95, column: 29, scope: !422)
!456 = !DILocation(line: 96, column: 4, scope: !422)
!457 = !DILocation(line: 96, column: 19, scope: !422)
!458 = !DILocation(line: 96, column: 27, scope: !422)
!459 = !DILocation(line: 96, column: 34, scope: !422)
!460 = !DILocation(line: 97, column: 4, scope: !422)
!461 = !DILocation(line: 97, column: 19, scope: !422)
!462 = !DILocation(line: 97, column: 27, scope: !422)
!463 = !DILocation(line: 97, column: 35, scope: !422)
!464 = !DILocation(line: 98, column: 15, scope: !422)
!465 = !DILocation(line: 100, column: 26, scope: !422)
!466 = !DILocation(line: 100, column: 44, scope: !422)
!467 = !DILocation(line: 100, column: 36, scope: !422)
!468 = !DILocation(line: 100, column: 10, scope: !422)
!469 = !DILocation(line: 100, column: 8, scope: !422)
!470 = !DILocation(line: 102, column: 8, scope: !471)
!471 = distinct !DILexicalBlock(scope: !422, file: !194, line: 102, column: 8)
!472 = !DILocation(line: 102, column: 12, scope: !471)
!473 = !DILocation(line: 102, column: 8, scope: !422)
!474 = !DILocation(line: 103, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !471, file: !194, line: 102, column: 18)
!476 = !DILocation(line: 104, column: 7, scope: !475)
!477 = !DILocation(line: 108, column: 43, scope: !422)
!478 = !DILocation(line: 108, column: 20, scope: !422)
!479 = !DILocation(line: 108, column: 18, scope: !422)
!480 = !DILocation(line: 109, column: 8, scope: !481)
!481 = distinct !DILexicalBlock(scope: !422, file: !194, line: 109, column: 8)
!482 = !DILocation(line: 109, column: 23, scope: !481)
!483 = !DILocation(line: 109, column: 30, scope: !481)
!484 = !DILocation(line: 109, column: 37, scope: !481)
!485 = !DILocation(line: 109, column: 8, scope: !422)
!486 = !DILocation(line: 110, column: 7, scope: !487)
!487 = distinct !DILexicalBlock(scope: !481, file: !194, line: 109, column: 61)
!488 = !DILocation(line: 111, column: 7, scope: !487)
!489 = !DILocation(line: 113, column: 12, scope: !422)
!490 = !DILocation(line: 113, column: 4, scope: !422)
!491 = !DILocation(line: 117, column: 8, scope: !492)
!492 = distinct !DILexicalBlock(scope: !422, file: !194, line: 117, column: 8)
!493 = !DILocation(line: 117, column: 8, scope: !422)
!494 = !DILocation(line: 118, column: 21, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !194, line: 117, column: 17)
!496 = !DILocation(line: 118, column: 36, scope: !495)
!497 = !DILocation(line: 118, column: 8, scope: !495)
!498 = !DILocation(line: 118, column: 19, scope: !495)
!499 = !DILocation(line: 119, column: 4, scope: !495)
!500 = !DILocation(line: 120, column: 11, scope: !422)
!501 = !DILocation(line: 120, column: 4, scope: !422)
!502 = distinct !DISubprogram(name: "HgfsClient_Read", scope: !194, file: !194, line: 145, type: !503, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!503 = !DISubroutineType(types: !504)
!504 = !{!329, !118, !211}
!505 = !DILocalVariable(name: "rootHandle", arg: 1, scope: !502, file: !194, line: 145, type: !118)
!506 = !DILocation(line: 145, column: 28, scope: !502)
!507 = !DILocalVariable(name: "offset", arg: 2, scope: !502, file: !194, line: 146, type: !211)
!508 = !DILocation(line: 146, column: 21, scope: !502)
!509 = !DILocalVariable(name: "shareName", scope: !502, file: !194, line: 148, type: !329)
!510 = !DILocation(line: 148, column: 18, scope: !502)
!511 = !DILocalVariable(name: "searchReadReq", scope: !502, file: !194, line: 149, type: !149)
!512 = !DILocation(line: 149, column: 27, scope: !502)
!513 = !DILocalVariable(name: "searchReadRep", scope: !502, file: !194, line: 150, type: !156)
!514 = !DILocation(line: 150, column: 25, scope: !502)
!515 = !DILocalVariable(name: "err", scope: !502, file: !194, line: 151, type: !211)
!516 = !DILocation(line: 151, column: 8, scope: !502)
!517 = !DILocalVariable(name: "replyPacket", scope: !502, file: !194, line: 152, type: !437)
!518 = !DILocation(line: 152, column: 16, scope: !502)
!519 = !DILocalVariable(name: "packetSize", scope: !502, file: !194, line: 153, type: !440)
!520 = !DILocation(line: 153, column: 11, scope: !502)
!521 = !DILocation(line: 156, column: 45, scope: !502)
!522 = !DILocation(line: 156, column: 20, scope: !502)
!523 = !DILocation(line: 156, column: 18, scope: !502)
!524 = !DILocation(line: 157, column: 11, scope: !502)
!525 = !DILocation(line: 157, column: 4, scope: !502)
!526 = !DILocation(line: 158, column: 4, scope: !502)
!527 = !DILocation(line: 158, column: 19, scope: !502)
!528 = !DILocation(line: 158, column: 26, scope: !502)
!529 = !DILocation(line: 158, column: 29, scope: !502)
!530 = !DILocation(line: 159, column: 4, scope: !502)
!531 = !DILocation(line: 159, column: 19, scope: !502)
!532 = !DILocation(line: 159, column: 26, scope: !502)
!533 = !DILocation(line: 159, column: 29, scope: !502)
!534 = !DILocation(line: 160, column: 28, scope: !502)
!535 = !DILocation(line: 160, column: 4, scope: !502)
!536 = !DILocation(line: 160, column: 19, scope: !502)
!537 = !DILocation(line: 160, column: 26, scope: !502)
!538 = !DILocation(line: 161, column: 28, scope: !502)
!539 = !DILocation(line: 161, column: 4, scope: !502)
!540 = !DILocation(line: 161, column: 19, scope: !502)
!541 = !DILocation(line: 161, column: 26, scope: !502)
!542 = !DILocation(line: 162, column: 15, scope: !502)
!543 = !DILocation(line: 164, column: 26, scope: !502)
!544 = !DILocation(line: 164, column: 44, scope: !502)
!545 = !DILocation(line: 164, column: 36, scope: !502)
!546 = !DILocation(line: 164, column: 10, scope: !502)
!547 = !DILocation(line: 164, column: 8, scope: !502)
!548 = !DILocation(line: 166, column: 8, scope: !549)
!549 = distinct !DILexicalBlock(scope: !502, file: !194, line: 166, column: 8)
!550 = !DILocation(line: 166, column: 12, scope: !549)
!551 = !DILocation(line: 166, column: 8, scope: !502)
!552 = !DILocation(line: 167, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !549, file: !194, line: 166, column: 18)
!554 = !DILocation(line: 168, column: 7, scope: !553)
!555 = !DILocation(line: 172, column: 43, scope: !502)
!556 = !DILocation(line: 172, column: 20, scope: !502)
!557 = !DILocation(line: 172, column: 18, scope: !502)
!558 = !DILocation(line: 173, column: 8, scope: !559)
!559 = distinct !DILexicalBlock(scope: !502, file: !194, line: 173, column: 8)
!560 = !DILocation(line: 173, column: 23, scope: !559)
!561 = !DILocation(line: 173, column: 30, scope: !559)
!562 = !DILocation(line: 173, column: 37, scope: !559)
!563 = !DILocation(line: 173, column: 8, scope: !502)
!564 = !DILocation(line: 174, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !559, file: !194, line: 173, column: 61)
!566 = !DILocation(line: 175, column: 7, scope: !565)
!567 = !DILocation(line: 179, column: 17, scope: !502)
!568 = !DILocation(line: 179, column: 32, scope: !502)
!569 = !DILocation(line: 179, column: 14, scope: !502)
!570 = !DILocation(line: 179, column: 4, scope: !502)
!571 = !DILocation(line: 182, column: 11, scope: !502)
!572 = !DILocation(line: 182, column: 4, scope: !502)
!573 = distinct !DISubprogram(name: "HgfsClient_Close", scope: !194, file: !194, line: 203, type: !574, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !213)
!574 = !DISubroutineType(types: !575)
!575 = !{!254, !118}
!576 = !DILocalVariable(name: "rootHandle", arg: 1, scope: !573, file: !194, line: 203, type: !118)
!577 = !DILocation(line: 203, column: 29, scope: !573)
!578 = !DILocalVariable(name: "searchCloseReq", scope: !573, file: !194, line: 205, type: !181)
!579 = !DILocation(line: 205, column: 28, scope: !573)
!580 = !DILocalVariable(name: "searchCloseRep", scope: !573, file: !194, line: 206, type: !187)
!581 = !DILocation(line: 206, column: 26, scope: !573)
!582 = !DILocalVariable(name: "err", scope: !573, file: !194, line: 207, type: !211)
!583 = !DILocation(line: 207, column: 8, scope: !573)
!584 = !DILocalVariable(name: "replyPacket", scope: !573, file: !194, line: 208, type: !437)
!585 = !DILocation(line: 208, column: 16, scope: !573)
!586 = !DILocalVariable(name: "packetSize", scope: !573, file: !194, line: 209, type: !440)
!587 = !DILocation(line: 209, column: 11, scope: !573)
!588 = !DILocation(line: 212, column: 47, scope: !573)
!589 = !DILocation(line: 212, column: 21, scope: !573)
!590 = !DILocation(line: 212, column: 19, scope: !573)
!591 = !DILocation(line: 213, column: 11, scope: !573)
!592 = !DILocation(line: 213, column: 4, scope: !573)
!593 = !DILocation(line: 214, column: 4, scope: !573)
!594 = !DILocation(line: 214, column: 20, scope: !573)
!595 = !DILocation(line: 214, column: 27, scope: !573)
!596 = !DILocation(line: 214, column: 30, scope: !573)
!597 = !DILocation(line: 215, column: 4, scope: !573)
!598 = !DILocation(line: 215, column: 20, scope: !573)
!599 = !DILocation(line: 215, column: 27, scope: !573)
!600 = !DILocation(line: 215, column: 30, scope: !573)
!601 = !DILocation(line: 216, column: 29, scope: !573)
!602 = !DILocation(line: 216, column: 4, scope: !573)
!603 = !DILocation(line: 216, column: 20, scope: !573)
!604 = !DILocation(line: 216, column: 27, scope: !573)
!605 = !DILocation(line: 217, column: 15, scope: !573)
!606 = !DILocation(line: 219, column: 26, scope: !573)
!607 = !DILocation(line: 219, column: 44, scope: !573)
!608 = !DILocation(line: 219, column: 36, scope: !573)
!609 = !DILocation(line: 219, column: 10, scope: !573)
!610 = !DILocation(line: 219, column: 8, scope: !573)
!611 = !DILocation(line: 221, column: 8, scope: !612)
!612 = distinct !DILexicalBlock(scope: !573, file: !194, line: 221, column: 8)
!613 = !DILocation(line: 221, column: 12, scope: !612)
!614 = !DILocation(line: 221, column: 8, scope: !573)
!615 = !DILocation(line: 222, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !194, line: 221, column: 18)
!617 = !DILocation(line: 223, column: 7, scope: !616)
!618 = !DILocation(line: 227, column: 45, scope: !573)
!619 = !DILocation(line: 227, column: 21, scope: !573)
!620 = !DILocation(line: 227, column: 19, scope: !573)
!621 = !DILocation(line: 228, column: 8, scope: !622)
!622 = distinct !DILexicalBlock(scope: !573, file: !194, line: 228, column: 8)
!623 = !DILocation(line: 228, column: 24, scope: !622)
!624 = !DILocation(line: 228, column: 31, scope: !622)
!625 = !DILocation(line: 228, column: 38, scope: !622)
!626 = !DILocation(line: 228, column: 8, scope: !573)
!627 = !DILocation(line: 229, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !622, file: !194, line: 228, column: 62)
!629 = !DILocation(line: 230, column: 7, scope: !628)
!630 = !DILocation(line: 232, column: 4, scope: !573)
!631 = !DILocation(line: 233, column: 1, scope: !573)
