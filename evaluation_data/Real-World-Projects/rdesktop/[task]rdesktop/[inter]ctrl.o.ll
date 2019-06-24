; ModuleID = './[inter]ctrl.o.i'
source_filename = "./[inter]ctrl.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ctrl_slave_t = type { %struct._ctrl_slave_t*, %struct._ctrl_slave_t*, i32, [1024 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.SHAstate_st = type { i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }
%struct.fd_set = type { [16 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@ctrlsock = internal global i32 0, align 4
@_ctrl_is_slave = internal global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@ctrlsock_name = internal global [4096 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [37 x i8] c"%s/.local/share/rdesktop/ctrl/%s.ctl\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s/.local/share/rdesktop/ctrl\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ctrl_init(), utils_mkdir_p() failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"ctrl_init(), socket() failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ctrl_init(), bind() failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"ctrl_init(), listen() failed: %s\00", align 1
@_ctrl_slaves = internal global %struct._ctrl_slave_t* null, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"ctrl_check_fds(), accept() failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"ctrl_send_command(), socket() failed: %s\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"ctrl_send_command(), connect() failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"ERROR \00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"ERROR %d\00", align 1
@g_seamless_rdp = external global i32, align 4
@.str.15 = private unnamed_addr constant [48 x i8] c"_ctrl_verify_unix_socket(), socket() failed: %s\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"seamless.spawn \00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"seamlessrdpshell.exe\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"ERROR %x\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ctrl_init(i8*, i8*, i8*) #0 !dbg !89 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca %struct.sockaddr_un, align 2
  %10 = alloca [41 x i8], align 16
  %11 = alloca [4096 x i8], align 16
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !95, metadata !96), !dbg !97
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !98, metadata !96), !dbg !99
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !100, metadata !96), !dbg !101
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !102, metadata !96), !dbg !142
  call void @llvm.dbg.declare(metadata %struct.sockaddr_un* %9, metadata !143, metadata !96), !dbg !152
  call void @llvm.dbg.declare(metadata [41 x i8]* %10, metadata !153, metadata !96), !dbg !157
  call void @llvm.dbg.declare(metadata [4096 x i8]* %11, metadata !158, metadata !96), !dbg !159
  call void @llvm.dbg.declare(metadata i8** %12, metadata !160, metadata !96), !dbg !162
  %13 = load i32, i32* @ctrlsock, align 4, !dbg !163
  %14 = icmp ne i32 %13, 0, !dbg !165
  br i1 %14, label %18, label %15, !dbg !166

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* @_ctrl_is_slave, align 4, !dbg !167
  %17 = icmp ne i32 %16, 0, !dbg !167
  br i1 %17, label %18, label %19, !dbg !169

; <label>:18:                                     ; preds = %15, %3
  store i32 0, i32* %4, align 4, !dbg !170
  br label %84, !dbg !170

; <label>:19:                                     ; preds = %15
  %20 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8, !dbg !171
  store i8* %20, i8** %12, align 8, !dbg !172
  %21 = load i8*, i8** %12, align 8, !dbg !173
  %22 = icmp eq i8* %21, null, !dbg !175
  br i1 %22, label %23, label %24, !dbg !176

; <label>:23:                                     ; preds = %19
  store i32 -1, i32* %4, align 4, !dbg !177
  br label %84, !dbg !177

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %5, align 8, !dbg !179
  %26 = load i8*, i8** %6, align 8, !dbg !180
  %27 = load i8*, i8** %7, align 8, !dbg !181
  %28 = getelementptr inbounds [41 x i8], [41 x i8]* %10, i32 0, i32 0, !dbg !182
  call void @_ctrl_create_hash(i8* %25, i8* %26, i8* %27, i8* %28, i64 41), !dbg !183
  %29 = load i8*, i8** %12, align 8, !dbg !184
  %30 = getelementptr inbounds [41 x i8], [41 x i8]* %10, i32 0, i32 0, !dbg !185
  %31 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @ctrlsock_name, i32 0, i32 0), i64 4096, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i8* %29, i8* %30) #8, !dbg !186
  store i8 0, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @ctrlsock_name, i64 0, i64 4095), align 1, !dbg !187
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i32 0, i32 0, !dbg !188
  %33 = load i8*, i8** %12, align 8, !dbg !189
  %34 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %32, i64 4096, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* %33) #8, !dbg !190
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 4095, !dbg !191
  store i8 0, i8* %35, align 1, !dbg !192
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i32 0, i32 0, !dbg !193
  %37 = call i32 @utils_mkdir_p(i8* %36, i32 448), !dbg !195
  %38 = icmp eq i32 %37, -1, !dbg !196
  br i1 %38, label %39, label %43, !dbg !197

; <label>:39:                                     ; preds = %24
  %40 = call i32* @__errno_location() #1, !dbg !198
  %41 = load i32, i32* %40, align 4, !dbg !200
  %42 = call i8* @strerror(i32 %41) #8, !dbg !201
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), i8* %42), !dbg !203
  store i32 -1, i32* %4, align 4, !dbg !205
  br label %84, !dbg !205

; <label>:43:                                     ; preds = %24
  %44 = call i32 @stat(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @ctrlsock_name, i32 0, i32 0), %struct.stat* %8) #8, !dbg !206
  %45 = icmp eq i32 %44, 0, !dbg !208
  br i1 %45, label %46, label %53, !dbg !209

; <label>:46:                                     ; preds = %43
  %47 = call i32 @_ctrl_verify_unix_socket(), !dbg !210
  %48 = icmp eq i32 %47, 1, !dbg !213
  br i1 %48, label %49, label %50, !dbg !214

; <label>:49:                                     ; preds = %46
  store i32 1, i32* @_ctrl_is_slave, align 4, !dbg !215
  store i32 1, i32* %4, align 4, !dbg !217
  br label %84, !dbg !217

; <label>:50:                                     ; preds = %46
  %51 = call i32 @unlink(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @ctrlsock_name, i32 0, i32 0)) #8, !dbg !218
  br label %52

; <label>:52:                                     ; preds = %50
  br label %53, !dbg !220

; <label>:53:                                     ; preds = %52, %43
  %54 = call i32 @socket(i32 1, i32 1, i32 0) #8, !dbg !221
  store i32 %54, i32* @ctrlsock, align 4, !dbg !223
  %55 = icmp slt i32 %54, 0, !dbg !224
  br i1 %55, label %56, label %60, !dbg !225

; <label>:56:                                     ; preds = %53
  %57 = call i32* @__errno_location() #1, !dbg !226
  %58 = load i32, i32* %57, align 4, !dbg !228
  %59 = call i8* @strerror(i32 %58) #8, !dbg !229
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* %59), !dbg !231
  call void @exit(i32 1) #9, !dbg !233
  unreachable, !dbg !233

; <label>:60:                                     ; preds = %53
  %61 = bitcast %struct.sockaddr_un* %9 to i8*, !dbg !234
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 110, i32 2, i1 false), !dbg !234
  %62 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %9, i32 0, i32 0, !dbg !235
  store i16 1, i16* %62, align 2, !dbg !236
  %63 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %9, i32 0, i32 1, !dbg !237
  %64 = getelementptr inbounds [108 x i8], [108 x i8]* %63, i32 0, i32 0, !dbg !238
  %65 = call i8* @strncpy(i8* %64, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @ctrlsock_name, i32 0, i32 0), i64 108) #8, !dbg !239
  %66 = load i32, i32* @ctrlsock, align 4, !dbg !240
  %67 = bitcast %struct.sockaddr_un* %9 to %struct.sockaddr*, !dbg !242
  %68 = call i32 @bind(i32 %66, %struct.sockaddr* %67, i32 110) #8, !dbg !243
  %69 = icmp slt i32 %68, 0, !dbg !244
  br i1 %69, label %70, label %74, !dbg !245

; <label>:70:                                     ; preds = %60
  %71 = call i32* @__errno_location() #1, !dbg !246
  %72 = load i32, i32* %71, align 4, !dbg !248
  %73 = call i8* @strerror(i32 %72) #8, !dbg !249
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* %73), !dbg !251
  call void @exit(i32 1) #9, !dbg !253
  unreachable, !dbg !253

; <label>:74:                                     ; preds = %60
  %75 = load i32, i32* @ctrlsock, align 4, !dbg !254
  %76 = call i32 @listen(i32 %75, i32 5) #8, !dbg !256
  %77 = icmp slt i32 %76, 0, !dbg !257
  br i1 %77, label %78, label %82, !dbg !258

; <label>:78:                                     ; preds = %74
  %79 = call i32* @__errno_location() #1, !dbg !259
  %80 = load i32, i32* %79, align 4, !dbg !261
  %81 = call i8* @strerror(i32 %80) #8, !dbg !262
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* %81), !dbg !264
  call void @exit(i32 1) #9, !dbg !266
  unreachable, !dbg !266

; <label>:82:                                     ; preds = %74
  %83 = call i32 @atexit(void ()* @ctrl_cleanup) #8, !dbg !267
  store i32 0, i32* %4, align 4, !dbg !268
  br label %84, !dbg !268

; <label>:84:                                     ; preds = %82, %49, %39, %23, %18
  %85 = load i32, i32* %4, align 4, !dbg !269
  ret i32 %85, !dbg !269
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @_ctrl_create_hash(i8*, i8*, i8*, i8*, i64) #0 !dbg !270 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.SHAstate_st, align 4
  %12 = alloca [20 x i8], align 16
  %13 = alloca i8, align 1
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !275, metadata !96), !dbg !276
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !277, metadata !96), !dbg !278
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !279, metadata !96), !dbg !280
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !281, metadata !96), !dbg !282
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !283, metadata !96), !dbg !284
  call void @llvm.dbg.declare(metadata %struct.SHAstate_st* %11, metadata !285, metadata !96), !dbg !302
  call void @llvm.dbg.declare(metadata [20 x i8]* %12, metadata !303, metadata !96), !dbg !307
  call void @llvm.dbg.declare(metadata i8* %13, metadata !308, metadata !96), !dbg !309
  call void @llvm.dbg.declare(metadata i16* %14, metadata !310, metadata !96), !dbg !312
  call void @llvm.dbg.declare(metadata i32* %15, metadata !313, metadata !96), !dbg !315
  store i32 0, i32* %15, align 4, !dbg !316
  store i8 0, i8* %13, align 1, !dbg !317
  store i16 256, i16* %14, align 2, !dbg !318
  %16 = load i32, i32* @g_seamless_rdp, align 4, !dbg !319
  %17 = icmp ne i32 %16, 0, !dbg !319
  br i1 %17, label %18, label %19, !dbg !321

; <label>:18:                                     ; preds = %5
  store i32 1, i32* %15, align 4, !dbg !322
  br label %19, !dbg !323

; <label>:19:                                     ; preds = %18, %5
  call void @rdssl_sha1_init(%struct.SHAstate_st* %11), !dbg !324
  %20 = bitcast i16* %14 to i8*, !dbg !325
  call void @rdssl_sha1_update(%struct.SHAstate_st* %11, i8* %20, i32 2), !dbg !326
  call void @rdssl_sha1_update(%struct.SHAstate_st* %11, i8* %13, i32 1), !dbg !327
  %21 = load i8*, i8** %6, align 8, !dbg !328
  %22 = icmp ne i8* %21, null, !dbg !328
  br i1 %22, label %23, label %28, !dbg !330

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %6, align 8, !dbg !331
  %25 = load i8*, i8** %6, align 8, !dbg !332
  %26 = call i64 @strlen(i8* %25) #10, !dbg !333
  %27 = trunc i64 %26 to i32, !dbg !333
  call void @rdssl_sha1_update(%struct.SHAstate_st* %11, i8* %24, i32 %27), !dbg !334
  br label %28, !dbg !336

; <label>:28:                                     ; preds = %23, %19
  call void @rdssl_sha1_update(%struct.SHAstate_st* %11, i8* %13, i32 1), !dbg !337
  %29 = load i8*, i8** %7, align 8, !dbg !338
  %30 = icmp ne i8* %29, null, !dbg !338
  br i1 %30, label %31, label %36, !dbg !340

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %7, align 8, !dbg !341
  %33 = load i8*, i8** %7, align 8, !dbg !342
  %34 = call i64 @strlen(i8* %33) #10, !dbg !343
  %35 = trunc i64 %34 to i32, !dbg !343
  call void @rdssl_sha1_update(%struct.SHAstate_st* %11, i8* %32, i32 %35), !dbg !344
  br label %36, !dbg !346

; <label>:36:                                     ; preds = %31, %28
  call void @rdssl_sha1_update(%struct.SHAstate_st* %11, i8* %13, i32 1), !dbg !347
  %37 = load i8*, i8** %8, align 8, !dbg !348
  %38 = icmp ne i8* %37, null, !dbg !348
  br i1 %38, label %39, label %44, !dbg !350

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** %8, align 8, !dbg !351
  %41 = load i8*, i8** %8, align 8, !dbg !352
  %42 = call i64 @strlen(i8* %41) #10, !dbg !353
  %43 = trunc i64 %42 to i32, !dbg !353
  call void @rdssl_sha1_update(%struct.SHAstate_st* %11, i8* %40, i32 %43), !dbg !354
  br label %44, !dbg !356

; <label>:44:                                     ; preds = %39, %36
  call void @rdssl_sha1_update(%struct.SHAstate_st* %11, i8* %13, i32 1), !dbg !357
  %45 = bitcast i32* %15 to i8*, !dbg !358
  call void @rdssl_sha1_update(%struct.SHAstate_st* %11, i8* %45, i32 4), !dbg !359
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i32 0, i32 0, !dbg !360
  call void @rdssl_sha1_final(%struct.SHAstate_st* %11, i8* %46), !dbg !361
  %47 = load i8*, i8** %9, align 8, !dbg !362
  %48 = load i64, i64* %10, align 8, !dbg !363
  %49 = trunc i64 %48 to i32, !dbg !363
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i32 0, i32 0, !dbg !364
  call void @sec_hash_to_string(i8* %47, i32 %49, i8* %50, i32 20), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare i32 @utils_mkdir_p(i8*, i32) #3

declare void @logger(i32, i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #2

; Function Attrs: nounwind uwtable
define void @ctrl_cleanup() #0 !dbg !367 {
  %1 = load i32, i32* @ctrlsock, align 4, !dbg !370
  %2 = icmp ne i32 %1, 0, !dbg !370
  br i1 %2, label %3, label %7, !dbg !372

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @ctrlsock, align 4, !dbg !373
  %5 = call i32 @close(i32 %4), !dbg !375
  %6 = call i32 @unlink(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @ctrlsock_name, i32 0, i32 0)) #8, !dbg !376
  br label %7, !dbg !377

; <label>:7:                                      ; preds = %3, %0
  ret void, !dbg !378
}

declare i32 @close(i32) #3

; Function Attrs: nounwind uwtable
define i32 @ctrl_is_slave() #0 !dbg !379 {
  %1 = load i32, i32* @_ctrl_is_slave, align 4, !dbg !382
  ret i32 %1, !dbg !383
}

; Function Attrs: nounwind uwtable
define void @ctrl_add_fds(i32*, %struct.fd_set*) #0 !dbg !384 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.fd_set*, align 8
  %5 = alloca %struct._ctrl_slave_t*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !394, metadata !96), !dbg !395
  store %struct.fd_set* %1, %struct.fd_set** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %4, metadata !396, metadata !96), !dbg !397
  call void @llvm.dbg.declare(metadata %struct._ctrl_slave_t** %5, metadata !398, metadata !96), !dbg !399
  %6 = load i32, i32* @ctrlsock, align 4, !dbg !400
  %7 = icmp eq i32 %6, 0, !dbg !402
  br i1 %7, label %8, label %9, !dbg !403

; <label>:8:                                      ; preds = %2
  br label %74, !dbg !404

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* @ctrlsock, align 4, !dbg !405
  %11 = srem i32 %10, 64, !dbg !406
  %12 = zext i32 %11 to i64, !dbg !407
  %13 = shl i64 1, %12, !dbg !407
  %14 = load i32, i32* @ctrlsock, align 4, !dbg !405
  %15 = sdiv i32 %14, 64, !dbg !406
  %16 = sext i32 %15 to i64, !dbg !408
  %17 = load %struct.fd_set*, %struct.fd_set** %4, align 8, !dbg !405
  %18 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %17, i32 0, i32 0, !dbg !409
  %19 = getelementptr inbounds [16 x i64], [16 x i64]* %18, i64 0, i64 %16, !dbg !408
  %20 = load i64, i64* %19, align 8, !dbg !410
  %21 = or i64 %20, %13, !dbg !410
  store i64 %21, i64* %19, align 8, !dbg !410
  %22 = load i32*, i32** %3, align 8, !dbg !411
  %23 = load i32, i32* %22, align 4, !dbg !412
  %24 = load i32, i32* @ctrlsock, align 4, !dbg !413
  %25 = icmp sgt i32 %23, %24, !dbg !414
  br i1 %25, label %26, label %29, !dbg !415

; <label>:26:                                     ; preds = %9
  %27 = load i32*, i32** %3, align 8, !dbg !416
  %28 = load i32, i32* %27, align 4, !dbg !418
  br label %31, !dbg !419

; <label>:29:                                     ; preds = %9
  %30 = load i32, i32* @ctrlsock, align 4, !dbg !420
  br label %31, !dbg !422

; <label>:31:                                     ; preds = %29, %26
  %32 = phi i32 [ %28, %26 ], [ %30, %29 ], !dbg !423
  %33 = load i32*, i32** %3, align 8, !dbg !425
  store i32 %32, i32* %33, align 4, !dbg !426
  %34 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** @_ctrl_slaves, align 8, !dbg !427
  store %struct._ctrl_slave_t* %34, %struct._ctrl_slave_t** %5, align 8, !dbg !428
  br label %35, !dbg !429

; <label>:35:                                     ; preds = %68, %31
  %36 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %5, align 8, !dbg !430
  %37 = icmp ne %struct._ctrl_slave_t* %36, null, !dbg !431
  br i1 %37, label %38, label %74, !dbg !431

; <label>:38:                                     ; preds = %35
  %39 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %5, align 8, !dbg !432
  %40 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %39, i32 0, i32 2, !dbg !434
  %41 = load i32, i32* %40, align 8, !dbg !434
  %42 = srem i32 %41, 64, !dbg !435
  %43 = zext i32 %42 to i64, !dbg !436
  %44 = shl i64 1, %43, !dbg !436
  %45 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %5, align 8, !dbg !432
  %46 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %45, i32 0, i32 2, !dbg !434
  %47 = load i32, i32* %46, align 8, !dbg !434
  %48 = sdiv i32 %47, 64, !dbg !435
  %49 = sext i32 %48 to i64, !dbg !437
  %50 = load %struct.fd_set*, %struct.fd_set** %4, align 8, !dbg !432
  %51 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %50, i32 0, i32 0, !dbg !438
  %52 = getelementptr inbounds [16 x i64], [16 x i64]* %51, i64 0, i64 %49, !dbg !437
  %53 = load i64, i64* %52, align 8, !dbg !439
  %54 = or i64 %53, %44, !dbg !439
  store i64 %54, i64* %52, align 8, !dbg !439
  %55 = load i32*, i32** %3, align 8, !dbg !440
  %56 = load i32, i32* %55, align 4, !dbg !441
  %57 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %5, align 8, !dbg !442
  %58 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %57, i32 0, i32 2, !dbg !443
  %59 = load i32, i32* %58, align 8, !dbg !443
  %60 = icmp sgt i32 %56, %59, !dbg !444
  br i1 %60, label %61, label %64, !dbg !445

; <label>:61:                                     ; preds = %38
  %62 = load i32*, i32** %3, align 8, !dbg !446
  %63 = load i32, i32* %62, align 4, !dbg !448
  br label %68, !dbg !449

; <label>:64:                                     ; preds = %38
  %65 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %5, align 8, !dbg !450
  %66 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %65, i32 0, i32 2, !dbg !452
  %67 = load i32, i32* %66, align 8, !dbg !452
  br label %68, !dbg !453

; <label>:68:                                     ; preds = %64, %61
  %69 = phi i32 [ %63, %61 ], [ %67, %64 ], !dbg !454
  %70 = load i32*, i32** %3, align 8, !dbg !456
  store i32 %69, i32* %70, align 4, !dbg !457
  %71 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %5, align 8, !dbg !458
  %72 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %71, i32 0, i32 1, !dbg !459
  %73 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %72, align 8, !dbg !459
  store %struct._ctrl_slave_t* %73, %struct._ctrl_slave_t** %5, align 8, !dbg !460
  br label %35, !dbg !461, !llvm.loop !462

; <label>:74:                                     ; preds = %8, %35
  ret void, !dbg !463
}

; Function Attrs: nounwind uwtable
define void @ctrl_check_fds(%struct.fd_set*, %struct.fd_set*) #0 !dbg !464 {
  %3 = alloca %struct.fd_set*, align 8
  %4 = alloca %struct.fd_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_un, align 2
  %9 = alloca i32, align 4
  %10 = alloca %struct._ctrl_slave_t*, align 8
  %11 = alloca i8*, align 8
  store %struct.fd_set* %0, %struct.fd_set** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %3, metadata !467, metadata !96), !dbg !468
  store %struct.fd_set* %1, %struct.fd_set** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %4, metadata !469, metadata !96), !dbg !470
  %12 = load %struct.fd_set*, %struct.fd_set** %4, align 8, !dbg !471
  call void @llvm.dbg.declare(metadata i32* %5, metadata !472, metadata !96), !dbg !473
  call void @llvm.dbg.declare(metadata i32* %6, metadata !474, metadata !96), !dbg !475
  call void @llvm.dbg.declare(metadata i32* %7, metadata !476, metadata !96), !dbg !477
  call void @llvm.dbg.declare(metadata %struct.sockaddr_un* %8, metadata !478, metadata !96), !dbg !479
  call void @llvm.dbg.declare(metadata i32* %9, metadata !480, metadata !96), !dbg !483
  call void @llvm.dbg.declare(metadata %struct._ctrl_slave_t** %10, metadata !484, metadata !96), !dbg !485
  %13 = load i32, i32* @ctrlsock, align 4, !dbg !486
  %14 = icmp eq i32 %13, 0, !dbg !488
  br i1 %14, label %15, label %16, !dbg !489

; <label>:15:                                     ; preds = %2
  br label %183, !dbg !490

; <label>:16:                                     ; preds = %2
  %17 = bitcast %struct.sockaddr_un* %8 to i8*, !dbg !491
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 110, i32 2, i1 false), !dbg !491
  %18 = load i32, i32* @ctrlsock, align 4, !dbg !492
  %19 = sdiv i32 %18, 64, !dbg !494
  %20 = sext i32 %19 to i64, !dbg !494
  %21 = load %struct.fd_set*, %struct.fd_set** %3, align 8, !dbg !492
  %22 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0, !dbg !495
  %23 = getelementptr inbounds [16 x i64], [16 x i64]* %22, i64 0, i64 %20, !dbg !494
  %24 = load i64, i64* %23, align 8, !dbg !494
  %25 = load i32, i32* @ctrlsock, align 4, !dbg !492
  %26 = srem i32 %25, 64, !dbg !494
  %27 = zext i32 %26 to i64, !dbg !496
  %28 = shl i64 1, %27, !dbg !496
  %29 = and i64 %24, %28, !dbg !497
  %30 = icmp ne i64 %29, 0, !dbg !498
  br i1 %30, label %31, label %56, !dbg !499

; <label>:31:                                     ; preds = %16
  %32 = load i32, i32* @ctrlsock, align 4, !dbg !500
  %33 = srem i32 %32, 64, !dbg !502
  %34 = zext i32 %33 to i64, !dbg !503
  %35 = shl i64 1, %34, !dbg !503
  %36 = xor i64 %35, -1, !dbg !504
  %37 = load i32, i32* @ctrlsock, align 4, !dbg !500
  %38 = sdiv i32 %37, 64, !dbg !502
  %39 = sext i32 %38 to i64, !dbg !505
  %40 = load %struct.fd_set*, %struct.fd_set** %3, align 8, !dbg !500
  %41 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %40, i32 0, i32 0, !dbg !506
  %42 = getelementptr inbounds [16 x i64], [16 x i64]* %41, i64 0, i64 %39, !dbg !505
  %43 = load i64, i64* %42, align 8, !dbg !507
  %44 = and i64 %43, %36, !dbg !507
  store i64 %44, i64* %42, align 8, !dbg !507
  store i32 110, i32* %9, align 4, !dbg !508
  %45 = load i32, i32* @ctrlsock, align 4, !dbg !509
  %46 = bitcast %struct.sockaddr_un* %8 to %struct.sockaddr*, !dbg !510
  %47 = call i32 @accept(i32 %45, %struct.sockaddr* %46, i32* %9), !dbg !511
  store i32 %47, i32* %5, align 4, !dbg !512
  %48 = load i32, i32* %5, align 4, !dbg !513
  %49 = icmp slt i32 %48, 0, !dbg !515
  br i1 %49, label %50, label %54, !dbg !516

; <label>:50:                                     ; preds = %31
  %51 = call i32* @__errno_location() #1, !dbg !517
  %52 = load i32, i32* %51, align 4, !dbg !519
  %53 = call i8* @strerror(i32 %52) #8, !dbg !520
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i8* %53), !dbg !522
  call void @exit(i32 1) #9, !dbg !523
  unreachable, !dbg !523

; <label>:54:                                     ; preds = %31
  %55 = load i32, i32* %5, align 4, !dbg !524
  call void @_ctrl_slave_new(i32 %55), !dbg !525
  br label %183, !dbg !526

; <label>:56:                                     ; preds = %16
  %57 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** @_ctrl_slaves, align 8, !dbg !527
  store %struct._ctrl_slave_t* %57, %struct._ctrl_slave_t** %10, align 8, !dbg !528
  br label %58, !dbg !529

; <label>:58:                                     ; preds = %179, %167, %142, %56
  %59 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !530
  %60 = icmp ne %struct._ctrl_slave_t* %59, null, !dbg !532
  br i1 %60, label %61, label %183, !dbg !532

; <label>:61:                                     ; preds = %58
  %62 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !533
  %63 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %62, i32 0, i32 2, !dbg !536
  %64 = load i32, i32* %63, align 8, !dbg !536
  %65 = sdiv i32 %64, 64, !dbg !537
  %66 = sext i32 %65 to i64, !dbg !537
  %67 = load %struct.fd_set*, %struct.fd_set** %3, align 8, !dbg !533
  %68 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %67, i32 0, i32 0, !dbg !538
  %69 = getelementptr inbounds [16 x i64], [16 x i64]* %68, i64 0, i64 %66, !dbg !537
  %70 = load i64, i64* %69, align 8, !dbg !537
  %71 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !533
  %72 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %71, i32 0, i32 2, !dbg !536
  %73 = load i32, i32* %72, align 8, !dbg !536
  %74 = srem i32 %73, 64, !dbg !537
  %75 = zext i32 %74 to i64, !dbg !539
  %76 = shl i64 1, %75, !dbg !539
  %77 = and i64 %70, %76, !dbg !540
  %78 = icmp ne i64 %77, 0, !dbg !541
  br i1 %78, label %79, label %179, !dbg !542

; <label>:79:                                     ; preds = %61
  %80 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !543
  %81 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %80, i32 0, i32 3, !dbg !545
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %81, i32 0, i32 0, !dbg !543
  %83 = call i64 @strlen(i8* %82) #10, !dbg !546
  %84 = trunc i64 %83 to i32, !dbg !546
  store i32 %84, i32* %7, align 4, !dbg !547
  %85 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !548
  %86 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %85, i32 0, i32 2, !dbg !549
  %87 = load i32, i32* %86, align 8, !dbg !549
  %88 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !550
  %89 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %88, i32 0, i32 3, !dbg !551
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %89, i32 0, i32 0, !dbg !550
  %91 = load i32, i32* %7, align 4, !dbg !552
  %92 = sext i32 %91 to i64, !dbg !553
  %93 = getelementptr inbounds i8, i8* %90, i64 %92, !dbg !553
  %94 = load i32, i32* %7, align 4, !dbg !554
  %95 = sub nsw i32 1024, %94, !dbg !555
  %96 = sext i32 %95 to i64, !dbg !556
  %97 = call i64 @recv(i32 %87, i8* %93, i64 %96, i32 0), !dbg !557
  %98 = trunc i64 %97 to i32, !dbg !557
  store i32 %98, i32* %6, align 4, !dbg !558
  %99 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !559
  %100 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %99, i32 0, i32 2, !dbg !560
  %101 = load i32, i32* %100, align 8, !dbg !560
  %102 = srem i32 %101, 64, !dbg !561
  %103 = zext i32 %102 to i64, !dbg !562
  %104 = shl i64 1, %103, !dbg !562
  %105 = xor i64 %104, -1, !dbg !563
  %106 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !559
  %107 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %106, i32 0, i32 2, !dbg !560
  %108 = load i32, i32* %107, align 8, !dbg !560
  %109 = sdiv i32 %108, 64, !dbg !561
  %110 = sext i32 %109 to i64, !dbg !564
  %111 = load %struct.fd_set*, %struct.fd_set** %3, align 8, !dbg !559
  %112 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %111, i32 0, i32 0, !dbg !565
  %113 = getelementptr inbounds [16 x i64], [16 x i64]* %112, i64 0, i64 %110, !dbg !564
  %114 = load i64, i64* %113, align 8, !dbg !566
  %115 = and i64 %114, %105, !dbg !566
  store i64 %115, i64* %113, align 8, !dbg !566
  %116 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !567
  %117 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %116, i32 0, i32 3, !dbg !569
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %117, i64 0, i64 1023, !dbg !567
  %119 = load i8, i8* %118, align 1, !dbg !567
  %120 = sext i8 %119 to i32, !dbg !567
  %121 = icmp ne i32 %120, 0, !dbg !570
  br i1 %121, label %122, label %133, !dbg !571

; <label>:122:                                    ; preds = %79
  %123 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !572
  %124 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %123, i32 0, i32 3, !dbg !573
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %124, i64 0, i64 1023, !dbg !572
  %126 = load i8, i8* %125, align 1, !dbg !572
  %127 = sext i8 %126 to i32, !dbg !572
  %128 = icmp ne i32 %127, 10, !dbg !574
  br i1 %128, label %129, label %133, !dbg !575

; <label>:129:                                    ; preds = %122
  %130 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !577
  %131 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %130, i32 0, i32 2, !dbg !579
  %132 = load i32, i32* %131, align 8, !dbg !579
  call void @_ctrl_slave_disconnect(i32 %132), !dbg !580
  br label %183, !dbg !581

; <label>:133:                                    ; preds = %122, %79
  %134 = load i32, i32* %6, align 4, !dbg !582
  %135 = icmp sgt i32 %134, 0, !dbg !584
  br i1 %135, label %136, label %174, !dbg !585

; <label>:136:                                    ; preds = %133
  call void @llvm.dbg.declare(metadata i8** %11, metadata !586, metadata !96), !dbg !588
  %137 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !589
  %138 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %137, i32 0, i32 3, !dbg !591
  %139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %138, i32 0, i32 0, !dbg !589
  %140 = call i8* @strchr(i8* %139, i32 10) #10, !dbg !592
  store i8* %140, i8** %11, align 8, !dbg !593
  %141 = icmp eq i8* %140, null, !dbg !594
  br i1 %141, label %142, label %143, !dbg !595

; <label>:142:                                    ; preds = %136
  br label %58, !dbg !596, !llvm.loop !597

; <label>:143:                                    ; preds = %136
  br label %144, !dbg !598

; <label>:144:                                    ; preds = %160, %143
  %145 = load i8*, i8** %11, align 8, !dbg !599
  %146 = icmp ne i8* %145, null, !dbg !601
  br i1 %146, label %147, label %164, !dbg !601

; <label>:147:                                    ; preds = %144
  %148 = load i8*, i8** %11, align 8, !dbg !602
  %149 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !605
  %150 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %149, i32 0, i32 3, !dbg !606
  %151 = getelementptr inbounds [1024 x i8], [1024 x i8]* %150, i32 0, i32 0, !dbg !605
  %152 = icmp ugt i8* %148, %151, !dbg !607
  br i1 %152, label %153, label %160, !dbg !608

; <label>:153:                                    ; preds = %147
  %154 = load i8*, i8** %11, align 8, !dbg !609
  %155 = getelementptr inbounds i8, i8* %154, i64 -1, !dbg !611
  %156 = load i8, i8* %155, align 1, !dbg !612
  %157 = sext i8 %156 to i32, !dbg !612
  %158 = icmp ne i32 %157, 92, !dbg !613
  br i1 %158, label %159, label %160, !dbg !614

; <label>:159:                                    ; preds = %153
  br label %164, !dbg !615

; <label>:160:                                    ; preds = %153, %147
  %161 = load i8*, i8** %11, align 8, !dbg !616
  %162 = getelementptr inbounds i8, i8* %161, i64 1, !dbg !617
  %163 = call i8* @strchr(i8* %162, i32 10) #10, !dbg !618
  store i8* %163, i8** %11, align 8, !dbg !619
  br label %144, !dbg !620, !llvm.loop !622

; <label>:164:                                    ; preds = %159, %144
  %165 = load i8*, i8** %11, align 8, !dbg !623
  %166 = icmp eq i8* %165, null, !dbg !625
  br i1 %166, label %167, label %168, !dbg !626

; <label>:167:                                    ; preds = %164
  br label %58, !dbg !627, !llvm.loop !597

; <label>:168:                                    ; preds = %164
  %169 = load i8*, i8** %11, align 8, !dbg !628
  store i8 0, i8* %169, align 1, !dbg !629
  %170 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !630
  call void @_ctrl_dispatch_command(%struct._ctrl_slave_t* %170), !dbg !631
  %171 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !632
  %172 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %171, i32 0, i32 3, !dbg !633
  %173 = getelementptr inbounds [1024 x i8], [1024 x i8]* %172, i32 0, i32 0, !dbg !634
  call void @llvm.memset.p0i8.i64(i8* %173, i8 0, i64 1024, i32 4, i1 false), !dbg !634
  br label %178, !dbg !635

; <label>:174:                                    ; preds = %133
  %175 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !636
  %176 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %175, i32 0, i32 2, !dbg !638
  %177 = load i32, i32* %176, align 8, !dbg !638
  call void @_ctrl_slave_disconnect(i32 %177), !dbg !639
  br label %183, !dbg !640

; <label>:178:                                    ; preds = %168
  br label %179, !dbg !641

; <label>:179:                                    ; preds = %178, %61
  %180 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %10, align 8, !dbg !642
  %181 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %180, i32 0, i32 1, !dbg !643
  %182 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %181, align 8, !dbg !643
  store %struct._ctrl_slave_t* %182, %struct._ctrl_slave_t** %10, align 8, !dbg !644
  br label %58, !dbg !645, !llvm.loop !597

; <label>:183:                                    ; preds = %15, %54, %174, %129, %58
  ret void, !dbg !647
}

declare i32 @accept(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: nounwind uwtable
define internal void @_ctrl_slave_new(i32) #0 !dbg !648 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._ctrl_slave_t*, align 8
  %4 = alloca %struct._ctrl_slave_t*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !651, metadata !96), !dbg !652
  call void @llvm.dbg.declare(metadata %struct._ctrl_slave_t** %3, metadata !653, metadata !96), !dbg !654
  call void @llvm.dbg.declare(metadata %struct._ctrl_slave_t** %4, metadata !655, metadata !96), !dbg !656
  %5 = call i8* @xmalloc(i32 1048), !dbg !657
  %6 = bitcast i8* %5 to %struct._ctrl_slave_t*, !dbg !658
  store %struct._ctrl_slave_t* %6, %struct._ctrl_slave_t** %4, align 8, !dbg !659
  %7 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %4, align 8, !dbg !660
  %8 = bitcast %struct._ctrl_slave_t* %7 to i8*, !dbg !661
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 1048, i32 8, i1 false), !dbg !661
  %9 = load i32, i32* %2, align 4, !dbg !662
  %10 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %4, align 8, !dbg !663
  %11 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %10, i32 0, i32 2, !dbg !664
  store i32 %9, i32* %11, align 8, !dbg !665
  %12 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** @_ctrl_slaves, align 8, !dbg !666
  store %struct._ctrl_slave_t* %12, %struct._ctrl_slave_t** %3, align 8, !dbg !667
  br label %13, !dbg !668

; <label>:13:                                     ; preds = %23, %1
  %14 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !669
  %15 = icmp ne %struct._ctrl_slave_t* %14, null, !dbg !669
  br i1 %15, label %16, label %21, !dbg !671

; <label>:16:                                     ; preds = %13
  %17 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !672
  %18 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %17, i32 0, i32 1, !dbg !674
  %19 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %18, align 8, !dbg !674
  %20 = icmp ne %struct._ctrl_slave_t* %19, null, !dbg !675
  br label %21

; <label>:21:                                     ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %27, !dbg !676

; <label>:23:                                     ; preds = %21
  %24 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !678
  %25 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %24, i32 0, i32 1, !dbg !679
  %26 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %25, align 8, !dbg !679
  store %struct._ctrl_slave_t* %26, %struct._ctrl_slave_t** %3, align 8, !dbg !680
  br label %13, !dbg !681, !llvm.loop !683

; <label>:27:                                     ; preds = %21
  %28 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !684
  %29 = icmp ne %struct._ctrl_slave_t* %28, null, !dbg !684
  br i1 %29, label %30, label %37, !dbg !686

; <label>:30:                                     ; preds = %27
  %31 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %4, align 8, !dbg !687
  %32 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !689
  %33 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %32, i32 0, i32 1, !dbg !690
  store %struct._ctrl_slave_t* %31, %struct._ctrl_slave_t** %33, align 8, !dbg !691
  %34 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !692
  %35 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %4, align 8, !dbg !693
  %36 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %35, i32 0, i32 0, !dbg !694
  store %struct._ctrl_slave_t* %34, %struct._ctrl_slave_t** %36, align 8, !dbg !695
  br label %39, !dbg !696

; <label>:37:                                     ; preds = %27
  %38 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %4, align 8, !dbg !697
  store %struct._ctrl_slave_t* %38, %struct._ctrl_slave_t** @_ctrl_slaves, align 8, !dbg !699
  br label %39

; <label>:39:                                     ; preds = %37, %30
  ret void, !dbg !700
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

declare i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: nounwind uwtable
define internal void @_ctrl_slave_disconnect(i32) #0 !dbg !701 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._ctrl_slave_t*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !702, metadata !96), !dbg !703
  call void @llvm.dbg.declare(metadata %struct._ctrl_slave_t** %3, metadata !704, metadata !96), !dbg !705
  %4 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** @_ctrl_slaves, align 8, !dbg !706
  %5 = icmp ne %struct._ctrl_slave_t* %4, null, !dbg !706
  br i1 %5, label %7, label %6, !dbg !708

; <label>:6:                                      ; preds = %1
  br label %91, !dbg !709

; <label>:7:                                      ; preds = %1
  %8 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** @_ctrl_slaves, align 8, !dbg !710
  store %struct._ctrl_slave_t* %8, %struct._ctrl_slave_t** %3, align 8, !dbg !711
  br label %9, !dbg !712

; <label>:9:                                      ; preds = %22, %7
  %10 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !713
  %11 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %10, i32 0, i32 1, !dbg !715
  %12 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %11, align 8, !dbg !715
  %13 = icmp ne %struct._ctrl_slave_t* %12, null, !dbg !713
  br i1 %13, label %14, label %20, !dbg !716

; <label>:14:                                     ; preds = %9
  %15 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !717
  %16 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %15, i32 0, i32 2, !dbg !719
  %17 = load i32, i32* %16, align 8, !dbg !719
  %18 = load i32, i32* %2, align 4, !dbg !720
  %19 = icmp ne i32 %17, %18, !dbg !721
  br label %20

; <label>:20:                                     ; preds = %14, %9
  %21 = phi i1 [ false, %9 ], [ %19, %14 ]
  br i1 %21, label %22, label %26, !dbg !722

; <label>:22:                                     ; preds = %20
  %23 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !724
  %24 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %23, i32 0, i32 1, !dbg !725
  %25 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %24, align 8, !dbg !725
  store %struct._ctrl_slave_t* %25, %struct._ctrl_slave_t** %3, align 8, !dbg !726
  br label %9, !dbg !727, !llvm.loop !729

; <label>:26:                                     ; preds = %20
  %27 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !730
  %28 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %27, i32 0, i32 2, !dbg !732
  %29 = load i32, i32* %28, align 8, !dbg !732
  %30 = load i32, i32* %2, align 4, !dbg !733
  %31 = icmp eq i32 %29, %30, !dbg !734
  br i1 %31, label %32, label %91, !dbg !735

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %2, align 4, !dbg !736
  %34 = call i32 @shutdown(i32 %33, i32 2) #8, !dbg !738
  %35 = load i32, i32* %2, align 4, !dbg !739
  %36 = call i32 @close(i32 %35), !dbg !740
  %37 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !741
  %38 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** @_ctrl_slaves, align 8, !dbg !743
  %39 = icmp eq %struct._ctrl_slave_t* %37, %38, !dbg !744
  br i1 %39, label %40, label %51, !dbg !745

; <label>:40:                                     ; preds = %32
  %41 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !746
  %42 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %41, i32 0, i32 1, !dbg !749
  %43 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %42, align 8, !dbg !749
  %44 = icmp ne %struct._ctrl_slave_t* %43, null, !dbg !746
  br i1 %44, label %45, label %49, !dbg !750

; <label>:45:                                     ; preds = %40
  %46 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !751
  %47 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %46, i32 0, i32 1, !dbg !752
  %48 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %47, align 8, !dbg !752
  store %struct._ctrl_slave_t* %48, %struct._ctrl_slave_t** @_ctrl_slaves, align 8, !dbg !753
  br label %50, !dbg !754

; <label>:49:                                     ; preds = %40
  store %struct._ctrl_slave_t* null, %struct._ctrl_slave_t** @_ctrl_slaves, align 8, !dbg !755
  br label %50

; <label>:50:                                     ; preds = %49, %45
  br label %51, !dbg !756

; <label>:51:                                     ; preds = %50, %32
  %52 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !757
  %53 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %52, i32 0, i32 0, !dbg !759
  %54 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %53, align 8, !dbg !759
  %55 = icmp ne %struct._ctrl_slave_t* %54, null, !dbg !757
  br i1 %55, label %56, label %77, !dbg !760

; <label>:56:                                     ; preds = %51
  %57 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !761
  %58 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %57, i32 0, i32 1, !dbg !763
  %59 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %58, align 8, !dbg !763
  %60 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !764
  %61 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %60, i32 0, i32 0, !dbg !765
  %62 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %61, align 8, !dbg !765
  %63 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %62, i32 0, i32 1, !dbg !766
  store %struct._ctrl_slave_t* %59, %struct._ctrl_slave_t** %63, align 8, !dbg !767
  %64 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !768
  %65 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %64, i32 0, i32 1, !dbg !770
  %66 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %65, align 8, !dbg !770
  %67 = icmp ne %struct._ctrl_slave_t* %66, null, !dbg !768
  br i1 %67, label %68, label %76, !dbg !771

; <label>:68:                                     ; preds = %56
  %69 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !772
  %70 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %69, i32 0, i32 0, !dbg !773
  %71 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %70, align 8, !dbg !773
  %72 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !774
  %73 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %72, i32 0, i32 1, !dbg !775
  %74 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %73, align 8, !dbg !775
  %75 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %74, i32 0, i32 0, !dbg !776
  store %struct._ctrl_slave_t* %71, %struct._ctrl_slave_t** %75, align 8, !dbg !777
  br label %76, !dbg !778

; <label>:76:                                     ; preds = %68, %56
  br label %88, !dbg !779

; <label>:77:                                     ; preds = %51
  %78 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !780
  %79 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %78, i32 0, i32 1, !dbg !782
  %80 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %79, align 8, !dbg !782
  %81 = icmp ne %struct._ctrl_slave_t* %80, null, !dbg !780
  br i1 %81, label %82, label %87, !dbg !783

; <label>:82:                                     ; preds = %77
  %83 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !784
  %84 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %83, i32 0, i32 1, !dbg !785
  %85 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %84, align 8, !dbg !785
  %86 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %85, i32 0, i32 0, !dbg !786
  store %struct._ctrl_slave_t* null, %struct._ctrl_slave_t** %86, align 8, !dbg !787
  br label %87, !dbg !788

; <label>:87:                                     ; preds = %82, %77
  br label %88

; <label>:88:                                     ; preds = %87, %76
  %89 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !789
  %90 = bitcast %struct._ctrl_slave_t* %89 to i8*, !dbg !789
  call void @xfree(i8* %90), !dbg !790
  br label %91, !dbg !791

; <label>:91:                                     ; preds = %6, %88, %26
  ret void, !dbg !792
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

; Function Attrs: nounwind uwtable
define internal void @_ctrl_dispatch_command(%struct._ctrl_slave_t*) #0 !dbg !793 {
  %2 = alloca %struct._ctrl_slave_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct._ctrl_slave_t* %0, %struct._ctrl_slave_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._ctrl_slave_t** %2, metadata !796, metadata !96), !dbg !797
  call void @llvm.dbg.declare(metadata i8** %3, metadata !798, metadata !96), !dbg !799
  call void @llvm.dbg.declare(metadata i8** %4, metadata !800, metadata !96), !dbg !801
  call void @llvm.dbg.declare(metadata i32* %5, metadata !802, metadata !96), !dbg !803
  %6 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %2, align 8, !dbg !804
  %7 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %6, i32 0, i32 3, !dbg !805
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !804
  %9 = call i8* @utils_string_unescape(i8* %8), !dbg !806
  store i8* %9, i8** %4, align 8, !dbg !807
  %10 = load i8*, i8** %4, align 8, !dbg !808
  %11 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i64 15) #10, !dbg !810
  %12 = icmp eq i32 %11, 0, !dbg !811
  br i1 %12, label %13, label %31, !dbg !812

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %4, align 8, !dbg !813
  %15 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0)) #10, !dbg !815
  store i8* %15, i8** %3, align 8, !dbg !816
  %16 = load i8*, i8** %3, align 8, !dbg !817
  %17 = icmp ne i8* %16, null, !dbg !817
  br i1 %17, label %18, label %21, !dbg !819

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %3, align 8, !dbg !820
  %20 = getelementptr inbounds i8, i8* %19, i64 21, !dbg !820
  store i8* %20, i8** %3, align 8, !dbg !820
  br label %25, !dbg !821

; <label>:21:                                     ; preds = %13
  %22 = load i8*, i8** %4, align 8, !dbg !822
  %23 = getelementptr inbounds i8, i8* %22, i64 14, !dbg !823
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !824
  store i8* %24, i8** %3, align 8, !dbg !825
  br label %25

; <label>:25:                                     ; preds = %21, %18
  store i32 0, i32* %5, align 4, !dbg !826
  %26 = load i8*, i8** %3, align 8, !dbg !827
  %27 = call i32 @seamless_send_spawn(i8* %26), !dbg !829
  %28 = icmp eq i32 %27, -1, !dbg !830
  br i1 %28, label %29, label %30, !dbg !831

; <label>:29:                                     ; preds = %25
  store i32 1, i32* %5, align 4, !dbg !832
  br label %30, !dbg !833

; <label>:30:                                     ; preds = %29, %25
  br label %32, !dbg !834

; <label>:31:                                     ; preds = %1
  store i32 -1, i32* %5, align 4, !dbg !835
  br label %32

; <label>:32:                                     ; preds = %31, %30
  %33 = load i8*, i8** %4, align 8, !dbg !837
  call void @xfree(i8* %33), !dbg !838
  %34 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %2, align 8, !dbg !839
  %35 = load i32, i32* %5, align 4, !dbg !840
  call void @_ctrl_command_result(%struct._ctrl_slave_t* %34, i32 %35), !dbg !841
  ret void, !dbg !842
}

; Function Attrs: nounwind uwtable
define i32 @ctrl_send_command(i8*, i8*) #0 !dbg !843 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.sockaddr_un, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1024 x i8], align 16
  %13 = alloca [1024 x i8], align 16
  %14 = alloca [32 x i8], align 16
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !846, metadata !96), !dbg !847
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !848, metadata !96), !dbg !849
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !850, metadata !96), !dbg !901
  call void @llvm.dbg.declare(metadata %struct.sockaddr_un* %7, metadata !902, metadata !96), !dbg !903
  call void @llvm.dbg.declare(metadata i32* %8, metadata !904, metadata !96), !dbg !905
  call void @llvm.dbg.declare(metadata i32* %9, metadata !906, metadata !96), !dbg !907
  call void @llvm.dbg.declare(metadata i32* %10, metadata !908, metadata !96), !dbg !909
  call void @llvm.dbg.declare(metadata i32* %11, metadata !910, metadata !96), !dbg !911
  call void @llvm.dbg.declare(metadata [1024 x i8]* %12, metadata !912, metadata !96), !dbg !913
  call void @llvm.dbg.declare(metadata [1024 x i8]* %13, metadata !914, metadata !96), !dbg !915
  call void @llvm.dbg.declare(metadata [32 x i8]* %14, metadata !916, metadata !96), !dbg !920
  call void @llvm.dbg.declare(metadata i8* %15, metadata !921, metadata !96), !dbg !922
  call void @llvm.dbg.declare(metadata i8** %16, metadata !923, metadata !96), !dbg !924
  store i8* null, i8** %16, align 8, !dbg !925
  %17 = load i32, i32* @_ctrl_is_slave, align 4, !dbg !926
  %18 = icmp ne i32 %17, 0, !dbg !926
  br i1 %18, label %20, label %19, !dbg !928

; <label>:19:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !929
  br label %122, !dbg !929

; <label>:20:                                     ; preds = %2
  %21 = call i32 @socket(i32 1, i32 1, i32 0) #8, !dbg !930
  store i32 %21, i32* %8, align 4, !dbg !932
  %22 = icmp slt i32 %21, 0, !dbg !933
  br i1 %22, label %23, label %27, !dbg !934

; <label>:23:                                     ; preds = %20
  %24 = call i32* @__errno_location() #1, !dbg !935
  %25 = load i32, i32* %24, align 4, !dbg !937
  %26 = call i8* @strerror(i32 %25) #8, !dbg !938
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i8* %26), !dbg !940
  call void @exit(i32 1) #9, !dbg !942
  unreachable, !dbg !942

; <label>:27:                                     ; preds = %20
  %28 = bitcast %struct.sockaddr_un* %7 to i8*, !dbg !943
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 110, i32 2, i1 false), !dbg !943
  %29 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 0, !dbg !944
  store i16 1, i16* %29, align 2, !dbg !945
  %30 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 1, !dbg !946
  %31 = getelementptr inbounds [108 x i8], [108 x i8]* %30, i32 0, i32 0, !dbg !947
  %32 = call i8* @strcpy(i8* %31, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @ctrlsock_name, i32 0, i32 0)) #8, !dbg !948
  %33 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 1, !dbg !949
  %34 = getelementptr inbounds [108 x i8], [108 x i8]* %33, i32 0, i32 0, !dbg !950
  %35 = call i64 @strlen(i8* %34) #10, !dbg !951
  %36 = add i64 2, %35, !dbg !952
  %37 = trunc i64 %36 to i32, !dbg !953
  store i32 %37, i32* %9, align 4, !dbg !954
  %38 = load i32, i32* %8, align 4, !dbg !955
  %39 = bitcast %struct.sockaddr_un* %7 to %struct.sockaddr*, !dbg !957
  %40 = load i32, i32* %9, align 4, !dbg !958
  %41 = call i32 @connect(i32 %38, %struct.sockaddr* %39, i32 %40), !dbg !959
  %42 = icmp slt i32 %41, 0, !dbg !960
  br i1 %42, label %43, label %47, !dbg !961

; <label>:43:                                     ; preds = %27
  %44 = call i32* @__errno_location() #1, !dbg !962
  %45 = load i32, i32* %44, align 4, !dbg !964
  %46 = call i8* @strerror(i32 %45) #8, !dbg !965
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0), i8* %46), !dbg !967
  call void @exit(i32 1) #9, !dbg !969
  unreachable, !dbg !969

; <label>:47:                                     ; preds = %27
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i32 0, i32 0, !dbg !970
  %49 = load i8*, i8** %4, align 8, !dbg !971
  %50 = load i8*, i8** %5, align 8, !dbg !972
  %51 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %48, i64 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* %49, i8* %50) #8, !dbg !973
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i32 0, i32 0, !dbg !974
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i32 0, i32 0, !dbg !975
  %54 = call i64 @strlen(i8* %53) #10, !dbg !976
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i32 0, i32 0, !dbg !977
  %56 = call i32 @utils_locale_to_utf8(i8* %52, i64 %54, i8* %55, i64 1023), !dbg !978
  store i32 %56, i32* %11, align 4, !dbg !980
  %57 = load i32, i32* %11, align 4, !dbg !981
  %58 = icmp ne i32 %57, 0, !dbg !983
  br i1 %58, label %59, label %60, !dbg !984

; <label>:59:                                     ; preds = %47
  br label %115, !dbg !985

; <label>:60:                                     ; preds = %47
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i32 0, i32 0, !dbg !986
  %62 = call i8* @utils_string_escape(i8* %61), !dbg !987
  store i8* %62, i8** %16, align 8, !dbg !988
  %63 = load i8*, i8** %16, align 8, !dbg !989
  %64 = call i64 @strlen(i8* %63) #10, !dbg !991
  %65 = add i64 %64, 1, !dbg !992
  %66 = icmp ugt i64 %65, 1023, !dbg !993
  br i1 %66, label %67, label %68, !dbg !994

; <label>:67:                                     ; preds = %60
  br label %115, !dbg !995

; <label>:68:                                     ; preds = %60
  %69 = load i32, i32* %8, align 4, !dbg !996
  %70 = load i8*, i8** %16, align 8, !dbg !997
  %71 = load i8*, i8** %16, align 8, !dbg !998
  %72 = call i64 @strlen(i8* %71) #10, !dbg !999
  %73 = call i64 @send(i32 %69, i8* %70, i64 %72, i32 0), !dbg !1000
  %74 = load i32, i32* %8, align 4, !dbg !1001
  %75 = call i64 @send(i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i64 1, i32 0), !dbg !1002
  %76 = load i32, i32* %8, align 4, !dbg !1003
  %77 = call %struct._IO_FILE* @fdopen(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !1004
  store %struct._IO_FILE* %77, %struct._IO_FILE** %6, align 8, !dbg !1005
  store i32 0, i32* %10, align 4, !dbg !1006
  br label %78, !dbg !1007

; <label>:78:                                     ; preds = %93, %68
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1008
  %80 = call i32 @fgetc(%struct._IO_FILE* %79), !dbg !1009
  %81 = trunc i32 %80 to i8, !dbg !1009
  store i8 %81, i8* %15, align 1, !dbg !1010
  %82 = sext i8 %81 to i32, !dbg !1011
  %83 = icmp ne i32 %82, -1, !dbg !1012
  br i1 %83, label %84, label %91, !dbg !1013

; <label>:84:                                     ; preds = %78
  %85 = load i32, i32* %10, align 4, !dbg !1014
  %86 = icmp slt i32 %85, 32, !dbg !1016
  br i1 %86, label %87, label %91, !dbg !1017

; <label>:87:                                     ; preds = %84
  %88 = load i8, i8* %15, align 1, !dbg !1018
  %89 = sext i8 %88 to i32, !dbg !1018
  %90 = icmp ne i32 %89, 10, !dbg !1020
  br label %91

; <label>:91:                                     ; preds = %87, %84, %78
  %92 = phi i1 [ false, %84 ], [ false, %78 ], [ %90, %87 ]
  br i1 %92, label %93, label %100, !dbg !1021

; <label>:93:                                     ; preds = %91
  %94 = load i8, i8* %15, align 1, !dbg !1023
  %95 = load i32, i32* %10, align 4, !dbg !1025
  %96 = sext i32 %95 to i64, !dbg !1026
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 %96, !dbg !1026
  store i8 %94, i8* %97, align 1, !dbg !1027
  %98 = load i32, i32* %10, align 4, !dbg !1028
  %99 = add nsw i32 %98, 1, !dbg !1028
  store i32 %99, i32* %10, align 4, !dbg !1028
  br label %78, !dbg !1029, !llvm.loop !1031

; <label>:100:                                    ; preds = %91
  %101 = load i32, i32* %10, align 4, !dbg !1032
  %102 = sub nsw i32 %101, 1, !dbg !1033
  %103 = sext i32 %102 to i64, !dbg !1034
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 %103, !dbg !1034
  store i8 0, i8* %104, align 1, !dbg !1035
  %105 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i32 0, i32 0, !dbg !1036
  %106 = call i32 @strncmp(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i64 6) #10, !dbg !1038
  %107 = icmp eq i32 %106, 0, !dbg !1039
  br i1 %107, label %108, label %114, !dbg !1040

; <label>:108:                                    ; preds = %100
  %109 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i32 0, i32 0, !dbg !1041
  %110 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32* %11) #8, !dbg !1044
  %111 = icmp ne i32 %110, 1, !dbg !1045
  br i1 %111, label %112, label %113, !dbg !1046

; <label>:112:                                    ; preds = %108
  store i32 -1, i32* %11, align 4, !dbg !1047
  br label %113, !dbg !1048

; <label>:113:                                    ; preds = %112, %108
  br label %114, !dbg !1049

; <label>:114:                                    ; preds = %113, %100
  br label %115, !dbg !1050

; <label>:115:                                    ; preds = %114, %67, %59
  %116 = load i8*, i8** %16, align 8, !dbg !1052
  call void @xfree(i8* %116), !dbg !1053
  %117 = load i32, i32* %8, align 4, !dbg !1054
  %118 = call i32 @shutdown(i32 %117, i32 2) #8, !dbg !1055
  %119 = load i32, i32* %8, align 4, !dbg !1056
  %120 = call i32 @close(i32 %119), !dbg !1057
  %121 = load i32, i32* %11, align 4, !dbg !1058
  store i32 %121, i32* %3, align 4, !dbg !1059
  br label %122, !dbg !1059

; <label>:122:                                    ; preds = %115, %19
  %123 = load i32, i32* %3, align 4, !dbg !1060
  ret i32 %123, !dbg !1060
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i32 @connect(i32, %struct.sockaddr*, i32) #3

declare i32 @utils_locale_to_utf8(i8*, i64, i8*, i64) #3

declare i8* @utils_string_escape(i8*) #3

declare i64 @send(i32, i8*, i64, i32) #3

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #2

declare i32 @fgetc(%struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare void @xfree(i8*) #3

; Function Attrs: nounwind
declare i32 @shutdown(i32, i32) #2

declare void @rdssl_sha1_init(%struct.SHAstate_st*) #3

declare void @rdssl_sha1_update(%struct.SHAstate_st*, i8*, i32) #3

declare void @rdssl_sha1_final(%struct.SHAstate_st*, i8*) #3

declare void @sec_hash_to_string(i8*, i32, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @_ctrl_verify_unix_socket() #0 !dbg !1061 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_un, align 2
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1062, metadata !96), !dbg !1063
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1064, metadata !96), !dbg !1065
  call void @llvm.dbg.declare(metadata %struct.sockaddr_un* %4, metadata !1066, metadata !96), !dbg !1067
  %5 = bitcast %struct.sockaddr_un* %4 to i8*, !dbg !1068
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 110, i32 2, i1 false), !dbg !1068
  %6 = call i32 @socket(i32 1, i32 1, i32 0) #8, !dbg !1069
  store i32 %6, i32* %2, align 4, !dbg !1071
  %7 = icmp slt i32 %6, 0, !dbg !1072
  br i1 %7, label %8, label %12, !dbg !1073

; <label>:8:                                      ; preds = %0
  %9 = call i32* @__errno_location() #1, !dbg !1074
  %10 = load i32, i32* %9, align 4, !dbg !1076
  %11 = call i8* @strerror(i32 %10) #8, !dbg !1077
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i32 0, i32 0), i8* %11), !dbg !1079
  call void @exit(i32 1) #9, !dbg !1080
  unreachable, !dbg !1080

; <label>:12:                                     ; preds = %0
  %13 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0, !dbg !1081
  store i16 1, i16* %13, align 2, !dbg !1082
  %14 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1, !dbg !1083
  %15 = getelementptr inbounds [108 x i8], [108 x i8]* %14, i32 0, i32 0, !dbg !1084
  %16 = call i8* @strcpy(i8* %15, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @ctrlsock_name, i32 0, i32 0)) #8, !dbg !1085
  %17 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1, !dbg !1086
  %18 = getelementptr inbounds [108 x i8], [108 x i8]* %17, i32 0, i32 0, !dbg !1087
  %19 = call i64 @strlen(i8* %18) #10, !dbg !1088
  %20 = add i64 2, %19, !dbg !1089
  %21 = trunc i64 %20 to i32, !dbg !1090
  store i32 %21, i32* %3, align 4, !dbg !1091
  %22 = load i32, i32* %2, align 4, !dbg !1092
  %23 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*, !dbg !1094
  %24 = load i32, i32* %3, align 4, !dbg !1095
  %25 = call i32 @connect(i32 %22, %struct.sockaddr* %23, i32 %24), !dbg !1096
  %26 = icmp ne i32 %25, 0, !dbg !1097
  br i1 %26, label %27, label %28, !dbg !1098

; <label>:27:                                     ; preds = %12
  store i32 0, i32* %1, align 4, !dbg !1099
  br label %33, !dbg !1099

; <label>:28:                                     ; preds = %12
  %29 = load i32, i32* %2, align 4, !dbg !1100
  %30 = call i32 @shutdown(i32 %29, i32 2) #8, !dbg !1101
  %31 = load i32, i32* %2, align 4, !dbg !1102
  %32 = call i32 @close(i32 %31), !dbg !1103
  store i32 1, i32* %1, align 4, !dbg !1104
  br label %33, !dbg !1104

; <label>:33:                                     ; preds = %28, %27
  %34 = load i32, i32* %1, align 4, !dbg !1105
  ret i32 %34, !dbg !1105
}

declare i8* @xmalloc(i32) #3

declare i8* @utils_string_unescape(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #7

declare i32 @seamless_send_spawn(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @_ctrl_command_result(%struct._ctrl_slave_t*, i32) #0 !dbg !1106 {
  %3 = alloca %struct._ctrl_slave_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  store %struct._ctrl_slave_t* %0, %struct._ctrl_slave_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._ctrl_slave_t** %3, metadata !1109, metadata !96), !dbg !1110
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1111, metadata !96), !dbg !1112
  call void @llvm.dbg.declare(metadata [64 x i8]* %5, metadata !1113, metadata !96), !dbg !1117
  %6 = bitcast [64 x i8]* %5 to i8*, !dbg !1117
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 64, i32 16, i1 false), !dbg !1117
  %7 = load i32, i32* %4, align 4, !dbg !1118
  %8 = icmp eq i32 %7, 0, !dbg !1120
  br i1 %8, label %9, label %14, !dbg !1121

; <label>:9:                                      ; preds = %2
  %10 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !1122
  %11 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %10, i32 0, i32 2, !dbg !1123
  %12 = load i32, i32* %11, align 8, !dbg !1123
  %13 = call i64 @send(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64 3, i32 0), !dbg !1124
  br label %25, !dbg !1124

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 0, !dbg !1125
  %16 = load i32, i32* %4, align 4, !dbg !1127
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %15, i64 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 %16) #8, !dbg !1128
  %18 = load %struct._ctrl_slave_t*, %struct._ctrl_slave_t** %3, align 8, !dbg !1129
  %19 = getelementptr inbounds %struct._ctrl_slave_t, %struct._ctrl_slave_t* %18, i32 0, i32 2, !dbg !1130
  %20 = load i32, i32* %19, align 8, !dbg !1130
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 0, !dbg !1131
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 0, !dbg !1132
  %23 = call i64 @strlen(i8* %22) #10, !dbg !1133
  %24 = call i64 @send(i32 %20, i8* %21, i64 %23, i32 0), !dbg !1134
  br label %25

; <label>:25:                                     ; preds = %14, %9
  ret void, !dbg !1136
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!86, !87}
!llvm.ident = !{!88}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, globals: !77)
!1 = !DIFile(filename: "[inter]ctrl.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15, !22, !34}
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
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !23, line: 24, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33}
!25 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!26 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!27 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!28 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!29 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!30 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!31 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!32 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!33 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 52, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/socket.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "SHUT_RD", value: 0)
!38 = !DIEnumerator(name: "SHUT_WR", value: 1)
!39 = !DIEnumerator(name: "SHUT_RDWR", value: 2)
!40 = !{!41, !42, !55, !58, !59, !63, !76}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !44, line: 153, size: 128, align: 16, elements: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!45 = !{!46, !50}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !43, file: !44, line: 155, baseType: !47, size: 16, align: 16)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !48, line: 28, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!49 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !43, file: !44, line: 156, baseType: !51, size: 112, align: 8, offset: 16)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 112, align: 8, elements: !53)
!52 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!53 = !{!54}
!54 = !DISubrange(count: 14)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !56, line: 54, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!57 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!58 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !61, line: 39, baseType: !62)
!61 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!62 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ctrl_slave_t", file: !65, line: 57, baseType: !66)
!65 = !DIFile(filename: "ctrl.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ctrl_slave_t", file: !65, line: 52, size: 8384, align: 64, elements: !67)
!67 = !{!68, !70, !71, !72}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !66, file: !65, line: 54, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !65, line: 54, baseType: !69, size: 64, align: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !66, file: !65, line: 55, baseType: !58, size: 32, align: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "linebuf", scope: !66, file: !65, line: 56, baseType: !73, size: 8192, align: 8, offset: 160)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8192, align: 8, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 1024)
!76 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!77 = !{!78, !80, !81, !85}
!78 = distinct !DIGlobalVariable(name: "_ctrl_is_slave", scope: !0, file: !65, line: 45, type: !79, isLocal: true, isDefinition: true, variable: i32* @_ctrl_is_slave)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !61, line: 28, baseType: !58)
!80 = distinct !DIGlobalVariable(name: "ctrlsock", scope: !0, file: !65, line: 46, type: !58, isLocal: true, isDefinition: true, variable: i32* @ctrlsock)
!81 = distinct !DIGlobalVariable(name: "ctrlsock_name", scope: !0, file: !65, line: 47, type: !82, isLocal: true, isDefinition: true, variable: [4096 x i8]* @ctrlsock_name)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 32768, align: 8, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 4096)
!85 = distinct !DIGlobalVariable(name: "_ctrl_slaves", scope: !0, file: !65, line: 48, type: !69, isLocal: true, isDefinition: true, variable: %struct._ctrl_slave_t** @_ctrl_slaves)
!86 = !{i32 2, !"Dwarf Version", i32 4}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!89 = distinct !DISubprogram(name: "ctrl_init", scope: !65, file: !65, line: 252, type: !90, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!90 = !DISubroutineType(types: !91)
!91 = !{!58, !92, !92, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!94 = !{}
!95 = !DILocalVariable(name: "user", arg: 1, scope: !89, file: !65, line: 252, type: !92)
!96 = !DIExpression()
!97 = !DILocation(line: 252, column: 23, scope: !89)
!98 = !DILocalVariable(name: "domain", arg: 2, scope: !89, file: !65, line: 252, type: !92)
!99 = !DILocation(line: 252, column: 41, scope: !89)
!100 = !DILocalVariable(name: "host", arg: 3, scope: !89, file: !65, line: 252, type: !92)
!101 = !DILocation(line: 252, column: 61, scope: !89)
!102 = !DILocalVariable(name: "st", scope: !89, file: !65, line: 254, type: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !104, line: 46, size: 1152, align: 64, elements: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!105 = !{!106, !110, !112, !114, !116, !118, !120, !121, !122, !124, !126, !128, !136, !137, !138}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !103, file: !104, line: 48, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !108, line: 124, baseType: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!109 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !103, file: !104, line: 53, baseType: !111, size: 64, align: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !108, line: 127, baseType: !109)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !103, file: !104, line: 61, baseType: !113, size: 64, align: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !108, line: 130, baseType: !109)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !103, file: !104, line: 62, baseType: !115, size: 32, align: 32, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !108, line: 129, baseType: !76)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !103, file: !104, line: 64, baseType: !117, size: 32, align: 32, offset: 224)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !108, line: 125, baseType: !76)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !103, file: !104, line: 65, baseType: !119, size: 32, align: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !108, line: 126, baseType: !76)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !103, file: !104, line: 67, baseType: !58, size: 32, align: 32, offset: 288)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !103, file: !104, line: 69, baseType: !107, size: 64, align: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !103, file: !104, line: 74, baseType: !123, size: 64, align: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !108, line: 131, baseType: !57)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !103, file: !104, line: 78, baseType: !125, size: 64, align: 64, offset: 448)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !108, line: 153, baseType: !57)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !103, file: !104, line: 80, baseType: !127, size: 64, align: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !108, line: 158, baseType: !57)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !103, file: !104, line: 91, baseType: !129, size: 128, align: 64, offset: 576)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !130, line: 120, size: 128, align: 64, elements: !131)
!130 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!131 = !{!132, !134}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !129, file: !130, line: 122, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !108, line: 139, baseType: !57)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !129, file: !130, line: 123, baseType: !135, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !108, line: 175, baseType: !57)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !103, file: !104, line: 92, baseType: !129, size: 128, align: 64, offset: 704)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !103, file: !104, line: 93, baseType: !129, size: 128, align: 64, offset: 832)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !103, file: !104, line: 106, baseType: !139, size: 192, align: 64, offset: 960)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 192, align: 64, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 3)
!142 = !DILocation(line: 254, column: 14, scope: !89)
!143 = !DILocalVariable(name: "saun", scope: !89, file: !65, line: 255, type: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !145, line: 29, size: 880, align: 16, elements: !146)
!145 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !144, file: !145, line: 31, baseType: !47, size: 16, align: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !144, file: !145, line: 32, baseType: !149, size: 864, align: 8, offset: 16)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 864, align: 8, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 108)
!152 = !DILocation(line: 255, column: 21, scope: !89)
!153 = !DILocalVariable(name: "hash", scope: !89, file: !65, line: 256, type: !154)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 328, align: 8, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 41)
!157 = !DILocation(line: 256, column: 7, scope: !89)
!158 = !DILocalVariable(name: "path", scope: !89, file: !65, line: 256, type: !82)
!159 = !DILocation(line: 256, column: 17, scope: !89)
!160 = !DILocalVariable(name: "home", scope: !89, file: !65, line: 257, type: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!162 = !DILocation(line: 257, column: 8, scope: !89)
!163 = !DILocation(line: 260, column: 6, scope: !164)
!164 = distinct !DILexicalBlock(scope: !89, file: !65, line: 260, column: 6)
!165 = !DILocation(line: 260, column: 15, scope: !164)
!166 = !DILocation(line: 260, column: 20, scope: !164)
!167 = !DILocation(line: 260, column: 23, scope: !168)
!168 = !DILexicalBlockFile(scope: !164, file: !65, discriminator: 1)
!169 = !DILocation(line: 260, column: 6, scope: !168)
!170 = !DILocation(line: 261, column: 3, scope: !164)
!171 = !DILocation(line: 263, column: 9, scope: !89)
!172 = !DILocation(line: 263, column: 7, scope: !89)
!173 = !DILocation(line: 264, column: 6, scope: !174)
!174 = distinct !DILexicalBlock(scope: !89, file: !65, line: 264, column: 6)
!175 = !DILocation(line: 264, column: 11, scope: !174)
!176 = !DILocation(line: 264, column: 6, scope: !89)
!177 = !DILocation(line: 266, column: 3, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !65, line: 265, column: 2)
!179 = !DILocation(line: 270, column: 20, scope: !89)
!180 = !DILocation(line: 270, column: 26, scope: !89)
!181 = !DILocation(line: 270, column: 34, scope: !89)
!182 = !DILocation(line: 270, column: 40, scope: !89)
!183 = !DILocation(line: 270, column: 2, scope: !89)
!184 = !DILocation(line: 271, column: 81, scope: !89)
!185 = !DILocation(line: 271, column: 87, scope: !89)
!186 = !DILocation(line: 271, column: 2, scope: !89)
!187 = !DILocation(line: 272, column: 43, scope: !89)
!188 = !DILocation(line: 275, column: 11, scope: !89)
!189 = !DILocation(line: 275, column: 62, scope: !89)
!190 = !DILocation(line: 275, column: 2, scope: !89)
!191 = !DILocation(line: 276, column: 2, scope: !89)
!192 = !DILocation(line: 276, column: 25, scope: !89)
!193 = !DILocation(line: 277, column: 20, scope: !194)
!194 = distinct !DILexicalBlock(scope: !89, file: !65, line: 277, column: 6)
!195 = !DILocation(line: 277, column: 6, scope: !194)
!196 = !DILocation(line: 277, column: 32, scope: !194)
!197 = !DILocation(line: 277, column: 6, scope: !89)
!198 = !DILocation(line: 279, column: 76, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !65, line: 278, column: 2)
!200 = !DILocation(line: 279, column: 75, scope: !199)
!201 = !DILocation(line: 279, column: 66, scope: !202)
!202 = !DILexicalBlockFile(scope: !199, file: !65, discriminator: 1)
!203 = !DILocation(line: 279, column: 3, scope: !204)
!204 = !DILexicalBlockFile(scope: !199, file: !65, discriminator: 2)
!205 = !DILocation(line: 280, column: 3, scope: !199)
!206 = !DILocation(line: 284, column: 6, scope: !207)
!207 = distinct !DILexicalBlock(scope: !89, file: !65, line: 284, column: 6)
!208 = !DILocation(line: 284, column: 31, scope: !207)
!209 = !DILocation(line: 284, column: 6, scope: !89)
!210 = !DILocation(line: 287, column: 7, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !65, line: 287, column: 7)
!212 = distinct !DILexicalBlock(scope: !207, file: !65, line: 285, column: 2)
!213 = !DILocation(line: 287, column: 34, scope: !211)
!214 = !DILocation(line: 287, column: 7, scope: !212)
!215 = !DILocation(line: 289, column: 19, scope: !216)
!216 = distinct !DILexicalBlock(scope: !211, file: !65, line: 288, column: 3)
!217 = !DILocation(line: 290, column: 4, scope: !216)
!218 = !DILocation(line: 294, column: 4, scope: !219)
!219 = distinct !DILexicalBlock(scope: !211, file: !65, line: 293, column: 3)
!220 = !DILocation(line: 296, column: 2, scope: !212)
!221 = !DILocation(line: 299, column: 18, scope: !222)
!222 = distinct !DILexicalBlock(scope: !89, file: !65, line: 299, column: 6)
!223 = !DILocation(line: 299, column: 16, scope: !222)
!224 = !DILocation(line: 299, column: 50, scope: !222)
!225 = !DILocation(line: 299, column: 6, scope: !89)
!226 = !DILocation(line: 301, column: 69, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !65, line: 300, column: 2)
!228 = !DILocation(line: 301, column: 68, scope: !227)
!229 = !DILocation(line: 301, column: 59, scope: !230)
!230 = !DILexicalBlockFile(scope: !227, file: !65, discriminator: 1)
!231 = !DILocation(line: 301, column: 3, scope: !232)
!232 = !DILexicalBlockFile(scope: !227, file: !65, discriminator: 2)
!233 = !DILocation(line: 302, column: 3, scope: !227)
!234 = !DILocation(line: 306, column: 2, scope: !89)
!235 = !DILocation(line: 307, column: 7, scope: !89)
!236 = !DILocation(line: 307, column: 18, scope: !89)
!237 = !DILocation(line: 308, column: 15, scope: !89)
!238 = !DILocation(line: 308, column: 10, scope: !89)
!239 = !DILocation(line: 308, column: 2, scope: !89)
!240 = !DILocation(line: 309, column: 11, scope: !241)
!241 = distinct !DILexicalBlock(scope: !89, file: !65, line: 309, column: 6)
!242 = !DILocation(line: 309, column: 21, scope: !241)
!243 = !DILocation(line: 309, column: 6, scope: !241)
!244 = !DILocation(line: 309, column: 76, scope: !241)
!245 = !DILocation(line: 309, column: 6, scope: !89)
!246 = !DILocation(line: 311, column: 67, scope: !247)
!247 = distinct !DILexicalBlock(scope: !241, file: !65, line: 310, column: 2)
!248 = !DILocation(line: 311, column: 66, scope: !247)
!249 = !DILocation(line: 311, column: 57, scope: !250)
!250 = !DILexicalBlockFile(scope: !247, file: !65, discriminator: 1)
!251 = !DILocation(line: 311, column: 3, scope: !252)
!252 = !DILexicalBlockFile(scope: !247, file: !65, discriminator: 2)
!253 = !DILocation(line: 312, column: 3, scope: !247)
!254 = !DILocation(line: 315, column: 13, scope: !255)
!255 = distinct !DILexicalBlock(scope: !89, file: !65, line: 315, column: 6)
!256 = !DILocation(line: 315, column: 6, scope: !255)
!257 = !DILocation(line: 315, column: 26, scope: !255)
!258 = !DILocation(line: 315, column: 6, scope: !89)
!259 = !DILocation(line: 317, column: 69, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !65, line: 316, column: 2)
!261 = !DILocation(line: 317, column: 68, scope: !260)
!262 = !DILocation(line: 317, column: 59, scope: !263)
!263 = !DILexicalBlockFile(scope: !260, file: !65, discriminator: 1)
!264 = !DILocation(line: 317, column: 3, scope: !265)
!265 = !DILexicalBlockFile(scope: !260, file: !65, discriminator: 2)
!266 = !DILocation(line: 318, column: 3, scope: !260)
!267 = !DILocation(line: 322, column: 2, scope: !89)
!268 = !DILocation(line: 324, column: 2, scope: !89)
!269 = !DILocation(line: 325, column: 1, scope: !89)
!270 = distinct !DISubprogram(name: "_ctrl_create_hash", scope: !65, file: !65, line: 210, type: !271, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !92, !92, !92, !161, !273}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !274, line: 216, baseType: !109)
!274 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!275 = !DILocalVariable(name: "user", arg: 1, scope: !270, file: !65, line: 210, type: !92)
!276 = !DILocation(line: 210, column: 31, scope: !270)
!277 = !DILocalVariable(name: "domain", arg: 2, scope: !270, file: !65, line: 210, type: !92)
!278 = !DILocation(line: 210, column: 49, scope: !270)
!279 = !DILocalVariable(name: "host", arg: 3, scope: !270, file: !65, line: 210, type: !92)
!280 = !DILocation(line: 210, column: 69, scope: !270)
!281 = !DILocalVariable(name: "hash", arg: 4, scope: !270, file: !65, line: 210, type: !161)
!282 = !DILocation(line: 210, column: 81, scope: !270)
!283 = !DILocalVariable(name: "hsize", arg: 5, scope: !270, file: !65, line: 210, type: !273)
!284 = !DILocation(line: 210, column: 94, scope: !270)
!285 = !DILocalVariable(name: "sha1", scope: !270, file: !65, line: 212, type: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHA_CTX", file: !287, line: 105, baseType: !288)
!287 = !DIFile(filename: "/usr/include/openssl/sha.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SHAstate_st", file: !287, line: 100, size: 768, align: 32, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !301}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "h0", scope: !288, file: !287, line: 101, baseType: !76, size: 32, align: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "h1", scope: !288, file: !287, line: 101, baseType: !76, size: 32, align: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "h2", scope: !288, file: !287, line: 101, baseType: !76, size: 32, align: 32, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "h3", scope: !288, file: !287, line: 101, baseType: !76, size: 32, align: 32, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "h4", scope: !288, file: !287, line: 101, baseType: !76, size: 32, align: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "Nl", scope: !288, file: !287, line: 102, baseType: !76, size: 32, align: 32, offset: 160)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "Nh", scope: !288, file: !287, line: 102, baseType: !76, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !288, file: !287, line: 103, baseType: !298, size: 512, align: 32, offset: 224)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 512, align: 32, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 16)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !288, file: !287, line: 104, baseType: !76, size: 32, align: 32, offset: 736)
!302 = !DILocation(line: 212, column: 10, scope: !270)
!303 = !DILocalVariable(name: "out", scope: !270, file: !65, line: 213, type: !304)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 160, align: 8, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 20)
!307 = !DILocation(line: 213, column: 8, scope: !270)
!308 = !DILocalVariable(name: "delim", scope: !270, file: !65, line: 213, type: !60)
!309 = !DILocation(line: 213, column: 17, scope: !270)
!310 = !DILocalVariable(name: "version", scope: !270, file: !65, line: 214, type: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !61, line: 41, baseType: !49)
!312 = !DILocation(line: 214, column: 9, scope: !270)
!313 = !DILocalVariable(name: "flags", scope: !270, file: !65, line: 215, type: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !61, line: 43, baseType: !76)
!315 = !DILocation(line: 215, column: 9, scope: !270)
!316 = !DILocation(line: 218, column: 8, scope: !270)
!317 = !DILocation(line: 219, column: 8, scope: !270)
!318 = !DILocation(line: 220, column: 10, scope: !270)
!319 = !DILocation(line: 222, column: 6, scope: !320)
!320 = distinct !DILexicalBlock(scope: !270, file: !65, line: 222, column: 6)
!321 = !DILocation(line: 222, column: 6, scope: !270)
!322 = !DILocation(line: 223, column: 9, scope: !320)
!323 = !DILocation(line: 223, column: 3, scope: !320)
!324 = !DILocation(line: 225, column: 2, scope: !270)
!325 = !DILocation(line: 226, column: 27, scope: !270)
!326 = !DILocation(line: 226, column: 2, scope: !270)
!327 = !DILocation(line: 227, column: 2, scope: !270)
!328 = !DILocation(line: 229, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !270, file: !65, line: 229, column: 6)
!330 = !DILocation(line: 229, column: 6, scope: !270)
!331 = !DILocation(line: 230, column: 38, scope: !329)
!332 = !DILocation(line: 230, column: 51, scope: !329)
!333 = !DILocation(line: 230, column: 44, scope: !329)
!334 = !DILocation(line: 230, column: 3, scope: !335)
!335 = !DILexicalBlockFile(scope: !329, file: !65, discriminator: 1)
!336 = !DILocation(line: 230, column: 3, scope: !329)
!337 = !DILocation(line: 231, column: 2, scope: !270)
!338 = !DILocation(line: 233, column: 6, scope: !339)
!339 = distinct !DILexicalBlock(scope: !270, file: !65, line: 233, column: 6)
!340 = !DILocation(line: 233, column: 6, scope: !270)
!341 = !DILocation(line: 234, column: 38, scope: !339)
!342 = !DILocation(line: 234, column: 53, scope: !339)
!343 = !DILocation(line: 234, column: 46, scope: !339)
!344 = !DILocation(line: 234, column: 3, scope: !345)
!345 = !DILexicalBlockFile(scope: !339, file: !65, discriminator: 1)
!346 = !DILocation(line: 234, column: 3, scope: !339)
!347 = !DILocation(line: 235, column: 2, scope: !270)
!348 = !DILocation(line: 237, column: 6, scope: !349)
!349 = distinct !DILexicalBlock(scope: !270, file: !65, line: 237, column: 6)
!350 = !DILocation(line: 237, column: 6, scope: !270)
!351 = !DILocation(line: 238, column: 38, scope: !349)
!352 = !DILocation(line: 238, column: 51, scope: !349)
!353 = !DILocation(line: 238, column: 44, scope: !349)
!354 = !DILocation(line: 238, column: 3, scope: !355)
!355 = !DILexicalBlockFile(scope: !349, file: !65, discriminator: 1)
!356 = !DILocation(line: 238, column: 3, scope: !349)
!357 = !DILocation(line: 239, column: 2, scope: !270)
!358 = !DILocation(line: 241, column: 27, scope: !270)
!359 = !DILocation(line: 241, column: 2, scope: !270)
!360 = !DILocation(line: 242, column: 26, scope: !270)
!361 = !DILocation(line: 242, column: 2, scope: !270)
!362 = !DILocation(line: 244, column: 21, scope: !270)
!363 = !DILocation(line: 244, column: 27, scope: !270)
!364 = !DILocation(line: 244, column: 34, scope: !270)
!365 = !DILocation(line: 244, column: 2, scope: !270)
!366 = !DILocation(line: 245, column: 1, scope: !270)
!367 = distinct !DISubprogram(name: "ctrl_cleanup", scope: !65, file: !65, line: 328, type: !368, isLocal: false, isDefinition: true, scopeLine: 329, isOptimized: false, unit: !0, variables: !94)
!368 = !DISubroutineType(types: !369)
!369 = !{null}
!370 = !DILocation(line: 330, column: 6, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !65, line: 330, column: 6)
!372 = !DILocation(line: 330, column: 6, scope: !367)
!373 = !DILocation(line: 332, column: 9, scope: !374)
!374 = distinct !DILexicalBlock(scope: !371, file: !65, line: 331, column: 2)
!375 = !DILocation(line: 332, column: 3, scope: !374)
!376 = !DILocation(line: 333, column: 3, scope: !374)
!377 = !DILocation(line: 334, column: 2, scope: !374)
!378 = !DILocation(line: 335, column: 1, scope: !367)
!379 = distinct !DISubprogram(name: "ctrl_is_slave", scope: !65, file: !65, line: 338, type: !380, isLocal: false, isDefinition: true, scopeLine: 339, isOptimized: false, unit: !0, variables: !94)
!380 = !DISubroutineType(types: !381)
!381 = !{!79}
!382 = !DILocation(line: 340, column: 9, scope: !379)
!383 = !DILocation(line: 340, column: 2, scope: !379)
!384 = distinct !DISubprogram(name: "ctrl_add_fds", scope: !65, file: !65, line: 345, type: !385, isLocal: false, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387, !388}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !56, line: 75, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 64, size: 1024, align: 64, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !390, file: !56, line: 72, baseType: !393, size: 1024, align: 64)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 1024, align: 64, elements: !299)
!394 = !DILocalVariable(name: "n", arg: 1, scope: !384, file: !65, line: 345, type: !387)
!395 = !DILocation(line: 345, column: 19, scope: !384)
!396 = !DILocalVariable(name: "rfds", arg: 2, scope: !384, file: !65, line: 345, type: !388)
!397 = !DILocation(line: 345, column: 31, scope: !384)
!398 = !DILocalVariable(name: "it", scope: !384, file: !65, line: 347, type: !63)
!399 = !DILocation(line: 347, column: 17, scope: !384)
!400 = !DILocation(line: 348, column: 6, scope: !401)
!401 = distinct !DILexicalBlock(scope: !384, file: !65, line: 348, column: 6)
!402 = !DILocation(line: 348, column: 15, scope: !401)
!403 = !DILocation(line: 348, column: 6, scope: !384)
!404 = !DILocation(line: 349, column: 3, scope: !401)
!405 = !DILocation(line: 351, column: 1, scope: !384)
!406 = !DILocation(line: 351, column: 3, scope: !384)
!407 = !DILocation(line: 351, column: 59, scope: !384)
!408 = !DILocation(line: 351, column: 10, scope: !384)
!409 = !DILocation(line: 351, column: 4, scope: !384)
!410 = !DILocation(line: 351, column: 38, scope: !384)
!411 = !DILocation(line: 352, column: 11, scope: !384)
!412 = !DILocation(line: 352, column: 10, scope: !384)
!413 = !DILocation(line: 352, column: 17, scope: !384)
!414 = !DILocation(line: 352, column: 14, scope: !384)
!415 = !DILocation(line: 352, column: 8, scope: !384)
!416 = !DILocation(line: 352, column: 32, scope: !417)
!417 = !DILexicalBlockFile(scope: !384, file: !65, discriminator: 1)
!418 = !DILocation(line: 352, column: 31, scope: !417)
!419 = !DILocation(line: 352, column: 8, scope: !417)
!420 = !DILocation(line: 352, column: 38, scope: !421)
!421 = !DILexicalBlockFile(scope: !384, file: !65, discriminator: 2)
!422 = !DILocation(line: 352, column: 8, scope: !421)
!423 = !DILocation(line: 352, column: 8, scope: !424)
!424 = !DILexicalBlockFile(scope: !384, file: !65, discriminator: 3)
!425 = !DILocation(line: 352, column: 3, scope: !424)
!426 = !DILocation(line: 352, column: 5, scope: !424)
!427 = !DILocation(line: 356, column: 7, scope: !384)
!428 = !DILocation(line: 356, column: 5, scope: !384)
!429 = !DILocation(line: 357, column: 2, scope: !384)
!430 = !DILocation(line: 357, column: 9, scope: !417)
!431 = !DILocation(line: 357, column: 2, scope: !417)
!432 = !DILocation(line: 359, column: 2, scope: !433)
!433 = distinct !DILexicalBlock(scope: !384, file: !65, line: 358, column: 2)
!434 = !DILocation(line: 359, column: 6, scope: !433)
!435 = !DILocation(line: 359, column: 4, scope: !433)
!436 = !DILocation(line: 359, column: 60, scope: !433)
!437 = !DILocation(line: 359, column: 11, scope: !433)
!438 = !DILocation(line: 359, column: 5, scope: !433)
!439 = !DILocation(line: 359, column: 39, scope: !433)
!440 = !DILocation(line: 360, column: 12, scope: !433)
!441 = !DILocation(line: 360, column: 11, scope: !433)
!442 = !DILocation(line: 360, column: 18, scope: !433)
!443 = !DILocation(line: 360, column: 22, scope: !433)
!444 = !DILocation(line: 360, column: 15, scope: !433)
!445 = !DILocation(line: 360, column: 9, scope: !433)
!446 = !DILocation(line: 360, column: 33, scope: !447)
!447 = !DILexicalBlockFile(scope: !433, file: !65, discriminator: 1)
!448 = !DILocation(line: 360, column: 32, scope: !447)
!449 = !DILocation(line: 360, column: 9, scope: !447)
!450 = !DILocation(line: 360, column: 39, scope: !451)
!451 = !DILexicalBlockFile(scope: !433, file: !65, discriminator: 2)
!452 = !DILocation(line: 360, column: 43, scope: !451)
!453 = !DILocation(line: 360, column: 9, scope: !451)
!454 = !DILocation(line: 360, column: 9, scope: !455)
!455 = !DILexicalBlockFile(scope: !433, file: !65, discriminator: 3)
!456 = !DILocation(line: 360, column: 4, scope: !455)
!457 = !DILocation(line: 360, column: 6, scope: !455)
!458 = !DILocation(line: 361, column: 8, scope: !433)
!459 = !DILocation(line: 361, column: 12, scope: !433)
!460 = !DILocation(line: 361, column: 6, scope: !433)
!461 = !DILocation(line: 357, column: 2, scope: !421)
!462 = distinct !{!462, !429}
!463 = !DILocation(line: 363, column: 1, scope: !384)
!464 = distinct !DISubprogram(name: "ctrl_check_fds", scope: !65, file: !65, line: 366, type: !465, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !388, !388}
!467 = !DILocalVariable(name: "rfds", arg: 1, scope: !464, file: !65, line: 366, type: !388)
!468 = !DILocation(line: 366, column: 25, scope: !464)
!469 = !DILocalVariable(name: "wfds", arg: 2, scope: !464, file: !65, line: 366, type: !388)
!470 = !DILocation(line: 366, column: 40, scope: !464)
!471 = !DILocation(line: 368, column: 9, scope: !464)
!472 = !DILocalVariable(name: "ns", scope: !464, file: !65, line: 369, type: !58)
!473 = !DILocation(line: 369, column: 6, scope: !464)
!474 = !DILocalVariable(name: "res", scope: !464, file: !65, line: 369, type: !58)
!475 = !DILocation(line: 369, column: 10, scope: !464)
!476 = !DILocalVariable(name: "offs", scope: !464, file: !65, line: 369, type: !58)
!477 = !DILocation(line: 369, column: 15, scope: !464)
!478 = !DILocalVariable(name: "fsaun", scope: !464, file: !65, line: 370, type: !144)
!479 = !DILocation(line: 370, column: 21, scope: !464)
!480 = !DILocalVariable(name: "fromlen", scope: !464, file: !65, line: 371, type: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !44, line: 33, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !108, line: 189, baseType: !76)
!483 = !DILocation(line: 371, column: 12, scope: !464)
!484 = !DILocalVariable(name: "it", scope: !464, file: !65, line: 372, type: !63)
!485 = !DILocation(line: 372, column: 17, scope: !464)
!486 = !DILocation(line: 374, column: 6, scope: !487)
!487 = distinct !DILexicalBlock(scope: !464, file: !65, line: 374, column: 6)
!488 = !DILocation(line: 374, column: 15, scope: !487)
!489 = !DILocation(line: 374, column: 6, scope: !464)
!490 = !DILocation(line: 375, column: 3, scope: !487)
!491 = !DILocation(line: 377, column: 2, scope: !464)
!492 = !DILocation(line: 380, column: 5, scope: !493)
!493 = distinct !DILexicalBlock(scope: !464, file: !65, line: 380, column: 5)
!494 = !DILocation(line: 380, column: 7, scope: !493)
!495 = !DILocation(line: 380, column: 8, scope: !493)
!496 = !DILocation(line: 380, column: 62, scope: !493)
!497 = !DILocation(line: 380, column: 42, scope: !493)
!498 = !DILocation(line: 380, column: 44, scope: !493)
!499 = !DILocation(line: 380, column: 5, scope: !464)
!500 = !DILocation(line: 382, column: 2, scope: !501)
!501 = distinct !DILexicalBlock(scope: !493, file: !65, line: 381, column: 2)
!502 = !DILocation(line: 382, column: 4, scope: !501)
!503 = !DILocation(line: 382, column: 61, scope: !501)
!504 = !DILocation(line: 382, column: 42, scope: !501)
!505 = !DILocation(line: 382, column: 11, scope: !501)
!506 = !DILocation(line: 382, column: 5, scope: !501)
!507 = !DILocation(line: 382, column: 39, scope: !501)
!508 = !DILocation(line: 383, column: 11, scope: !501)
!509 = !DILocation(line: 384, column: 15, scope: !501)
!510 = !DILocation(line: 384, column: 25, scope: !501)
!511 = !DILocation(line: 384, column: 8, scope: !501)
!512 = !DILocation(line: 384, column: 6, scope: !501)
!513 = !DILocation(line: 385, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !501, file: !65, line: 385, column: 7)
!515 = !DILocation(line: 385, column: 10, scope: !514)
!516 = !DILocation(line: 385, column: 7, scope: !501)
!517 = !DILocation(line: 388, column: 21, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !65, line: 386, column: 3)
!519 = !DILocation(line: 388, column: 20, scope: !518)
!520 = !DILocation(line: 388, column: 11, scope: !521)
!521 = !DILexicalBlockFile(scope: !518, file: !65, discriminator: 1)
!522 = !DILocation(line: 387, column: 4, scope: !518)
!523 = !DILocation(line: 389, column: 4, scope: !518)
!524 = !DILocation(line: 392, column: 19, scope: !501)
!525 = !DILocation(line: 392, column: 3, scope: !501)
!526 = !DILocation(line: 393, column: 3, scope: !501)
!527 = !DILocation(line: 397, column: 7, scope: !464)
!528 = !DILocation(line: 397, column: 5, scope: !464)
!529 = !DILocation(line: 398, column: 2, scope: !464)
!530 = !DILocation(line: 398, column: 9, scope: !531)
!531 = !DILexicalBlockFile(scope: !464, file: !65, discriminator: 1)
!532 = !DILocation(line: 398, column: 2, scope: !531)
!533 = !DILocation(line: 400, column: 6, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !65, line: 400, column: 6)
!535 = distinct !DILexicalBlock(scope: !464, file: !65, line: 399, column: 2)
!536 = !DILocation(line: 400, column: 10, scope: !534)
!537 = !DILocation(line: 400, column: 8, scope: !534)
!538 = !DILocation(line: 400, column: 9, scope: !534)
!539 = !DILocation(line: 400, column: 63, scope: !534)
!540 = !DILocation(line: 400, column: 43, scope: !534)
!541 = !DILocation(line: 400, column: 45, scope: !534)
!542 = !DILocation(line: 400, column: 6, scope: !535)
!543 = !DILocation(line: 402, column: 18, scope: !544)
!544 = distinct !DILexicalBlock(scope: !534, file: !65, line: 401, column: 3)
!545 = !DILocation(line: 402, column: 22, scope: !544)
!546 = !DILocation(line: 402, column: 11, scope: !544)
!547 = !DILocation(line: 402, column: 9, scope: !544)
!548 = !DILocation(line: 403, column: 15, scope: !544)
!549 = !DILocation(line: 403, column: 19, scope: !544)
!550 = !DILocation(line: 403, column: 25, scope: !544)
!551 = !DILocation(line: 403, column: 29, scope: !544)
!552 = !DILocation(line: 403, column: 39, scope: !544)
!553 = !DILocation(line: 403, column: 37, scope: !544)
!554 = !DILocation(line: 403, column: 52, scope: !544)
!555 = !DILocation(line: 403, column: 50, scope: !544)
!556 = !DILocation(line: 403, column: 45, scope: !544)
!557 = !DILocation(line: 403, column: 10, scope: !544)
!558 = !DILocation(line: 403, column: 8, scope: !544)
!559 = !DILocation(line: 404, column: 3, scope: !544)
!560 = !DILocation(line: 404, column: 7, scope: !544)
!561 = !DILocation(line: 404, column: 5, scope: !544)
!562 = !DILocation(line: 404, column: 62, scope: !544)
!563 = !DILocation(line: 404, column: 43, scope: !544)
!564 = !DILocation(line: 404, column: 12, scope: !544)
!565 = !DILocation(line: 404, column: 6, scope: !544)
!566 = !DILocation(line: 404, column: 40, scope: !544)
!567 = !DILocation(line: 407, column: 8, scope: !568)
!568 = distinct !DILexicalBlock(scope: !544, file: !65, line: 407, column: 8)
!569 = !DILocation(line: 407, column: 12, scope: !568)
!570 = !DILocation(line: 407, column: 30, scope: !568)
!571 = !DILocation(line: 407, column: 38, scope: !568)
!572 = !DILocation(line: 408, column: 8, scope: !568)
!573 = !DILocation(line: 408, column: 12, scope: !568)
!574 = !DILocation(line: 408, column: 30, scope: !568)
!575 = !DILocation(line: 407, column: 8, scope: !576)
!576 = !DILexicalBlockFile(scope: !544, file: !65, discriminator: 1)
!577 = !DILocation(line: 410, column: 28, scope: !578)
!578 = distinct !DILexicalBlock(scope: !568, file: !65, line: 409, column: 4)
!579 = !DILocation(line: 410, column: 32, scope: !578)
!580 = !DILocation(line: 410, column: 5, scope: !578)
!581 = !DILocation(line: 411, column: 5, scope: !578)
!582 = !DILocation(line: 414, column: 8, scope: !583)
!583 = distinct !DILexicalBlock(scope: !544, file: !65, line: 414, column: 8)
!584 = !DILocation(line: 414, column: 12, scope: !583)
!585 = !DILocation(line: 414, column: 8, scope: !544)
!586 = !DILocalVariable(name: "p", scope: !587, file: !65, line: 417, type: !161)
!587 = distinct !DILexicalBlock(scope: !583, file: !65, line: 415, column: 4)
!588 = !DILocation(line: 417, column: 11, scope: !587)
!589 = !DILocation(line: 418, column: 21, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !65, line: 418, column: 9)
!591 = !DILocation(line: 418, column: 25, scope: !590)
!592 = !DILocation(line: 418, column: 14, scope: !590)
!593 = !DILocation(line: 418, column: 12, scope: !590)
!594 = !DILocation(line: 418, column: 41, scope: !590)
!595 = !DILocation(line: 418, column: 9, scope: !587)
!596 = !DILocation(line: 419, column: 6, scope: !590)
!597 = distinct !{!597, !529}
!598 = !DILocation(line: 422, column: 5, scope: !587)
!599 = !DILocation(line: 422, column: 12, scope: !600)
!600 = !DILexicalBlockFile(scope: !587, file: !65, discriminator: 1)
!601 = !DILocation(line: 422, column: 5, scope: !600)
!602 = !DILocation(line: 425, column: 10, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !65, line: 425, column: 10)
!604 = distinct !DILexicalBlock(scope: !587, file: !65, line: 423, column: 5)
!605 = !DILocation(line: 425, column: 14, scope: !603)
!606 = !DILocation(line: 425, column: 18, scope: !603)
!607 = !DILocation(line: 425, column: 12, scope: !603)
!608 = !DILocation(line: 425, column: 26, scope: !603)
!609 = !DILocation(line: 425, column: 31, scope: !610)
!610 = !DILexicalBlockFile(scope: !603, file: !65, discriminator: 1)
!611 = !DILocation(line: 425, column: 33, scope: !610)
!612 = !DILocation(line: 425, column: 29, scope: !610)
!613 = !DILocation(line: 425, column: 38, scope: !610)
!614 = !DILocation(line: 425, column: 10, scope: !610)
!615 = !DILocation(line: 426, column: 7, scope: !603)
!616 = !DILocation(line: 427, column: 17, scope: !604)
!617 = !DILocation(line: 427, column: 19, scope: !604)
!618 = !DILocation(line: 427, column: 10, scope: !604)
!619 = !DILocation(line: 427, column: 8, scope: !604)
!620 = !DILocation(line: 422, column: 5, scope: !621)
!621 = !DILexicalBlockFile(scope: !587, file: !65, discriminator: 2)
!622 = distinct !{!622, !598}
!623 = !DILocation(line: 431, column: 9, scope: !624)
!624 = distinct !DILexicalBlock(scope: !587, file: !65, line: 431, column: 9)
!625 = !DILocation(line: 431, column: 11, scope: !624)
!626 = !DILocation(line: 431, column: 9, scope: !587)
!627 = !DILocation(line: 432, column: 6, scope: !624)
!628 = !DILocation(line: 435, column: 6, scope: !587)
!629 = !DILocation(line: 435, column: 8, scope: !587)
!630 = !DILocation(line: 436, column: 28, scope: !587)
!631 = !DILocation(line: 436, column: 5, scope: !587)
!632 = !DILocation(line: 437, column: 12, scope: !587)
!633 = !DILocation(line: 437, column: 16, scope: !587)
!634 = !DILocation(line: 437, column: 5, scope: !587)
!635 = !DILocation(line: 438, column: 4, scope: !587)
!636 = !DILocation(line: 442, column: 28, scope: !637)
!637 = distinct !DILexicalBlock(scope: !583, file: !65, line: 440, column: 4)
!638 = !DILocation(line: 442, column: 32, scope: !637)
!639 = !DILocation(line: 442, column: 5, scope: !637)
!640 = !DILocation(line: 443, column: 5, scope: !637)
!641 = !DILocation(line: 445, column: 3, scope: !544)
!642 = !DILocation(line: 446, column: 8, scope: !535)
!643 = !DILocation(line: 446, column: 12, scope: !535)
!644 = !DILocation(line: 446, column: 6, scope: !535)
!645 = !DILocation(line: 398, column: 2, scope: !646)
!646 = !DILexicalBlockFile(scope: !464, file: !65, discriminator: 2)
!647 = !DILocation(line: 448, column: 1, scope: !464)
!648 = distinct !DISubprogram(name: "_ctrl_slave_new", scope: !65, file: !65, line: 61, type: !649, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !58}
!651 = !DILocalVariable(name: "sock", arg: 1, scope: !648, file: !65, line: 61, type: !58)
!652 = !DILocation(line: 61, column: 21, scope: !648)
!653 = !DILocalVariable(name: "it", scope: !648, file: !65, line: 63, type: !63)
!654 = !DILocation(line: 63, column: 17, scope: !648)
!655 = !DILocalVariable(name: "ns", scope: !648, file: !65, line: 63, type: !63)
!656 = !DILocation(line: 63, column: 22, scope: !648)
!657 = !DILocation(line: 66, column: 25, scope: !648)
!658 = !DILocation(line: 66, column: 7, scope: !648)
!659 = !DILocation(line: 66, column: 5, scope: !648)
!660 = !DILocation(line: 67, column: 9, scope: !648)
!661 = !DILocation(line: 67, column: 2, scope: !648)
!662 = !DILocation(line: 68, column: 13, scope: !648)
!663 = !DILocation(line: 68, column: 2, scope: !648)
!664 = !DILocation(line: 68, column: 6, scope: !648)
!665 = !DILocation(line: 68, column: 11, scope: !648)
!666 = !DILocation(line: 71, column: 7, scope: !648)
!667 = !DILocation(line: 71, column: 5, scope: !648)
!668 = !DILocation(line: 74, column: 2, scope: !648)
!669 = !DILocation(line: 74, column: 9, scope: !670)
!670 = !DILexicalBlockFile(scope: !648, file: !65, discriminator: 1)
!671 = !DILocation(line: 74, column: 12, scope: !670)
!672 = !DILocation(line: 74, column: 15, scope: !673)
!673 = !DILexicalBlockFile(scope: !648, file: !65, discriminator: 2)
!674 = !DILocation(line: 74, column: 19, scope: !673)
!675 = !DILocation(line: 74, column: 12, scope: !673)
!676 = !DILocation(line: 74, column: 2, scope: !677)
!677 = !DILexicalBlockFile(scope: !648, file: !65, discriminator: 3)
!678 = !DILocation(line: 75, column: 8, scope: !648)
!679 = !DILocation(line: 75, column: 12, scope: !648)
!680 = !DILocation(line: 75, column: 6, scope: !648)
!681 = !DILocation(line: 74, column: 2, scope: !682)
!682 = !DILexicalBlockFile(scope: !648, file: !65, discriminator: 4)
!683 = distinct !{!683, !668}
!684 = !DILocation(line: 78, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !648, file: !65, line: 78, column: 6)
!686 = !DILocation(line: 78, column: 6, scope: !648)
!687 = !DILocation(line: 80, column: 14, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !65, line: 79, column: 2)
!689 = !DILocation(line: 80, column: 3, scope: !688)
!690 = !DILocation(line: 80, column: 7, scope: !688)
!691 = !DILocation(line: 80, column: 12, scope: !688)
!692 = !DILocation(line: 81, column: 14, scope: !688)
!693 = !DILocation(line: 81, column: 3, scope: !688)
!694 = !DILocation(line: 81, column: 7, scope: !688)
!695 = !DILocation(line: 81, column: 12, scope: !688)
!696 = !DILocation(line: 82, column: 2, scope: !688)
!697 = !DILocation(line: 86, column: 18, scope: !698)
!698 = distinct !DILexicalBlock(scope: !685, file: !65, line: 84, column: 2)
!699 = !DILocation(line: 86, column: 16, scope: !698)
!700 = !DILocation(line: 88, column: 1, scope: !648)
!701 = distinct !DISubprogram(name: "_ctrl_slave_disconnect", scope: !65, file: !65, line: 91, type: !649, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!702 = !DILocalVariable(name: "sock", arg: 1, scope: !701, file: !65, line: 91, type: !58)
!703 = !DILocation(line: 91, column: 28, scope: !701)
!704 = !DILocalVariable(name: "it", scope: !701, file: !65, line: 93, type: !63)
!705 = !DILocation(line: 93, column: 17, scope: !701)
!706 = !DILocation(line: 95, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !701, file: !65, line: 95, column: 6)
!708 = !DILocation(line: 95, column: 6, scope: !701)
!709 = !DILocation(line: 96, column: 3, scope: !707)
!710 = !DILocation(line: 98, column: 7, scope: !701)
!711 = !DILocation(line: 98, column: 5, scope: !701)
!712 = !DILocation(line: 101, column: 2, scope: !701)
!713 = !DILocation(line: 101, column: 9, scope: !714)
!714 = !DILexicalBlockFile(scope: !701, file: !65, discriminator: 1)
!715 = !DILocation(line: 101, column: 13, scope: !714)
!716 = !DILocation(line: 101, column: 18, scope: !714)
!717 = !DILocation(line: 101, column: 21, scope: !718)
!718 = !DILexicalBlockFile(scope: !701, file: !65, discriminator: 2)
!719 = !DILocation(line: 101, column: 25, scope: !718)
!720 = !DILocation(line: 101, column: 33, scope: !718)
!721 = !DILocation(line: 101, column: 30, scope: !718)
!722 = !DILocation(line: 101, column: 2, scope: !723)
!723 = !DILexicalBlockFile(scope: !701, file: !65, discriminator: 3)
!724 = !DILocation(line: 102, column: 8, scope: !701)
!725 = !DILocation(line: 102, column: 12, scope: !701)
!726 = !DILocation(line: 102, column: 6, scope: !701)
!727 = !DILocation(line: 101, column: 2, scope: !728)
!728 = !DILexicalBlockFile(scope: !701, file: !65, discriminator: 4)
!729 = distinct !{!729, !712}
!730 = !DILocation(line: 104, column: 6, scope: !731)
!731 = distinct !DILexicalBlock(scope: !701, file: !65, line: 104, column: 6)
!732 = !DILocation(line: 104, column: 10, scope: !731)
!733 = !DILocation(line: 104, column: 18, scope: !731)
!734 = !DILocation(line: 104, column: 15, scope: !731)
!735 = !DILocation(line: 104, column: 6, scope: !701)
!736 = !DILocation(line: 107, column: 12, scope: !737)
!737 = distinct !DILexicalBlock(scope: !731, file: !65, line: 105, column: 2)
!738 = !DILocation(line: 107, column: 3, scope: !737)
!739 = !DILocation(line: 108, column: 9, scope: !737)
!740 = !DILocation(line: 108, column: 3, scope: !737)
!741 = !DILocation(line: 111, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !737, file: !65, line: 111, column: 7)
!743 = !DILocation(line: 111, column: 13, scope: !742)
!744 = !DILocation(line: 111, column: 10, scope: !742)
!745 = !DILocation(line: 111, column: 7, scope: !737)
!746 = !DILocation(line: 113, column: 8, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !65, line: 113, column: 8)
!748 = distinct !DILexicalBlock(scope: !742, file: !65, line: 112, column: 3)
!749 = !DILocation(line: 113, column: 12, scope: !747)
!750 = !DILocation(line: 113, column: 8, scope: !748)
!751 = !DILocation(line: 114, column: 20, scope: !747)
!752 = !DILocation(line: 114, column: 24, scope: !747)
!753 = !DILocation(line: 114, column: 18, scope: !747)
!754 = !DILocation(line: 114, column: 5, scope: !747)
!755 = !DILocation(line: 116, column: 18, scope: !747)
!756 = !DILocation(line: 117, column: 3, scope: !748)
!757 = !DILocation(line: 119, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !737, file: !65, line: 119, column: 7)
!759 = !DILocation(line: 119, column: 11, scope: !758)
!760 = !DILocation(line: 119, column: 7, scope: !737)
!761 = !DILocation(line: 121, column: 23, scope: !762)
!762 = distinct !DILexicalBlock(scope: !758, file: !65, line: 120, column: 3)
!763 = !DILocation(line: 121, column: 27, scope: !762)
!764 = !DILocation(line: 121, column: 5, scope: !762)
!765 = !DILocation(line: 121, column: 9, scope: !762)
!766 = !DILocation(line: 121, column: 16, scope: !762)
!767 = !DILocation(line: 121, column: 21, scope: !762)
!768 = !DILocation(line: 122, column: 8, scope: !769)
!769 = distinct !DILexicalBlock(scope: !762, file: !65, line: 122, column: 8)
!770 = !DILocation(line: 122, column: 12, scope: !769)
!771 = !DILocation(line: 122, column: 8, scope: !762)
!772 = !DILocation(line: 123, column: 24, scope: !769)
!773 = !DILocation(line: 123, column: 28, scope: !769)
!774 = !DILocation(line: 123, column: 6, scope: !769)
!775 = !DILocation(line: 123, column: 10, scope: !769)
!776 = !DILocation(line: 123, column: 17, scope: !769)
!777 = !DILocation(line: 123, column: 22, scope: !769)
!778 = !DILocation(line: 123, column: 5, scope: !769)
!779 = !DILocation(line: 124, column: 3, scope: !762)
!780 = !DILocation(line: 125, column: 12, scope: !781)
!781 = distinct !DILexicalBlock(scope: !758, file: !65, line: 125, column: 12)
!782 = !DILocation(line: 125, column: 16, scope: !781)
!783 = !DILocation(line: 125, column: 12, scope: !758)
!784 = !DILocation(line: 126, column: 5, scope: !781)
!785 = !DILocation(line: 126, column: 9, scope: !781)
!786 = !DILocation(line: 126, column: 16, scope: !781)
!787 = !DILocation(line: 126, column: 21, scope: !781)
!788 = !DILocation(line: 126, column: 4, scope: !781)
!789 = !DILocation(line: 128, column: 9, scope: !737)
!790 = !DILocation(line: 128, column: 3, scope: !737)
!791 = !DILocation(line: 130, column: 2, scope: !737)
!792 = !DILocation(line: 131, column: 1, scope: !701)
!793 = distinct !DISubprogram(name: "_ctrl_dispatch_command", scope: !65, file: !65, line: 149, type: !794, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !63}
!796 = !DILocalVariable(name: "slave", arg: 1, scope: !793, file: !65, line: 149, type: !63)
!797 = !DILocation(line: 149, column: 40, scope: !793)
!798 = !DILocalVariable(name: "p", scope: !793, file: !65, line: 151, type: !161)
!799 = !DILocation(line: 151, column: 8, scope: !793)
!800 = !DILocalVariable(name: "cmd", scope: !793, file: !65, line: 152, type: !161)
!801 = !DILocation(line: 152, column: 8, scope: !793)
!802 = !DILocalVariable(name: "res", scope: !793, file: !65, line: 153, type: !76)
!803 = !DILocation(line: 153, column: 15, scope: !793)
!804 = !DILocation(line: 156, column: 30, scope: !793)
!805 = !DILocation(line: 156, column: 37, scope: !793)
!806 = !DILocation(line: 156, column: 8, scope: !793)
!807 = !DILocation(line: 156, column: 6, scope: !793)
!808 = !DILocation(line: 157, column: 14, scope: !809)
!809 = distinct !DILexicalBlock(scope: !793, file: !65, line: 157, column: 6)
!810 = !DILocation(line: 157, column: 6, scope: !809)
!811 = !DILocation(line: 157, column: 71, scope: !809)
!812 = !DILocation(line: 157, column: 6, scope: !793)
!813 = !DILocation(line: 160, column: 14, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !65, line: 158, column: 2)
!815 = !DILocation(line: 160, column: 7, scope: !814)
!816 = !DILocation(line: 160, column: 5, scope: !814)
!817 = !DILocation(line: 161, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !814, file: !65, line: 161, column: 7)
!819 = !DILocation(line: 161, column: 7, scope: !814)
!820 = !DILocation(line: 162, column: 6, scope: !818)
!821 = !DILocation(line: 162, column: 4, scope: !818)
!822 = !DILocation(line: 164, column: 8, scope: !818)
!823 = !DILocation(line: 164, column: 12, scope: !818)
!824 = !DILocation(line: 164, column: 39, scope: !818)
!825 = !DILocation(line: 164, column: 6, scope: !818)
!826 = !DILocation(line: 166, column: 7, scope: !814)
!827 = !DILocation(line: 168, column: 27, scope: !828)
!828 = distinct !DILexicalBlock(scope: !814, file: !65, line: 168, column: 7)
!829 = !DILocation(line: 168, column: 7, scope: !828)
!830 = !DILocation(line: 168, column: 30, scope: !828)
!831 = !DILocation(line: 168, column: 7, scope: !814)
!832 = !DILocation(line: 169, column: 8, scope: !828)
!833 = !DILocation(line: 169, column: 4, scope: !828)
!834 = !DILocation(line: 170, column: 2, scope: !814)
!835 = !DILocation(line: 173, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !809, file: !65, line: 172, column: 2)
!837 = !DILocation(line: 175, column: 8, scope: !793)
!838 = !DILocation(line: 175, column: 2, scope: !793)
!839 = !DILocation(line: 177, column: 23, scope: !793)
!840 = !DILocation(line: 177, column: 30, scope: !793)
!841 = !DILocation(line: 177, column: 2, scope: !793)
!842 = !DILocation(line: 178, column: 1, scope: !793)
!843 = distinct !DISubprogram(name: "ctrl_send_command", scope: !65, file: !65, line: 451, type: !844, isLocal: false, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!844 = !DISubroutineType(types: !845)
!845 = !{!58, !92, !92}
!846 = !DILocalVariable(name: "cmd", arg: 1, scope: !843, file: !65, line: 451, type: !92)
!847 = !DILocation(line: 451, column: 31, scope: !843)
!848 = !DILocalVariable(name: "arg", arg: 2, scope: !843, file: !65, line: 451, type: !92)
!849 = !DILocation(line: 451, column: 48, scope: !843)
!850 = !DILocalVariable(name: "fp", scope: !843, file: !65, line: 453, type: !851)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64, align: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !853, line: 48, baseType: !854)
!853 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !855, line: 241, size: 1728, align: 64, elements: !856)
!855 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!856 = !{!857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !877, !878, !879, !880, !881, !882, !884, !888, !891, !893, !894, !895, !896, !897, !898, !899}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !854, file: !855, line: 242, baseType: !58, size: 32, align: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !854, file: !855, line: 247, baseType: !161, size: 64, align: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !854, file: !855, line: 248, baseType: !161, size: 64, align: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !854, file: !855, line: 249, baseType: !161, size: 64, align: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !854, file: !855, line: 250, baseType: !161, size: 64, align: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !854, file: !855, line: 251, baseType: !161, size: 64, align: 64, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !854, file: !855, line: 252, baseType: !161, size: 64, align: 64, offset: 384)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !854, file: !855, line: 253, baseType: !161, size: 64, align: 64, offset: 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !854, file: !855, line: 254, baseType: !161, size: 64, align: 64, offset: 512)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !854, file: !855, line: 256, baseType: !161, size: 64, align: 64, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !854, file: !855, line: 257, baseType: !161, size: 64, align: 64, offset: 640)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !854, file: !855, line: 258, baseType: !161, size: 64, align: 64, offset: 704)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !854, file: !855, line: 260, baseType: !870, size: 64, align: 64, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64, align: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !855, line: 156, size: 192, align: 64, elements: !872)
!872 = !{!873, !874, !876}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !871, file: !855, line: 157, baseType: !870, size: 64, align: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !871, file: !855, line: 158, baseType: !875, size: 64, align: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64, align: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !871, file: !855, line: 162, baseType: !58, size: 32, align: 32, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !854, file: !855, line: 262, baseType: !875, size: 64, align: 64, offset: 832)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !854, file: !855, line: 264, baseType: !58, size: 32, align: 32, offset: 896)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !854, file: !855, line: 268, baseType: !58, size: 32, align: 32, offset: 928)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !854, file: !855, line: 270, baseType: !123, size: 64, align: 64, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !854, file: !855, line: 274, baseType: !49, size: 16, align: 16, offset: 1024)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !854, file: !855, line: 275, baseType: !883, size: 8, align: 8, offset: 1040)
!883 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !854, file: !855, line: 276, baseType: !885, size: 8, align: 8, offset: 1048)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, align: 8, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 1)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !854, file: !855, line: 280, baseType: !889, size: 64, align: 64, offset: 1088)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64, align: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !855, line: 150, baseType: null)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !854, file: !855, line: 289, baseType: !892, size: 64, align: 64, offset: 1152)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !108, line: 132, baseType: !57)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !854, file: !855, line: 297, baseType: !41, size: 64, align: 64, offset: 1216)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !854, file: !855, line: 298, baseType: !41, size: 64, align: 64, offset: 1280)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !854, file: !855, line: 299, baseType: !41, size: 64, align: 64, offset: 1344)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !854, file: !855, line: 300, baseType: !41, size: 64, align: 64, offset: 1408)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !854, file: !855, line: 302, baseType: !273, size: 64, align: 64, offset: 1472)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !854, file: !855, line: 303, baseType: !58, size: 32, align: 32, offset: 1536)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !854, file: !855, line: 305, baseType: !900, size: 160, align: 8, offset: 1568)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, align: 8, elements: !305)
!901 = !DILocation(line: 453, column: 8, scope: !843)
!902 = !DILocalVariable(name: "saun", scope: !843, file: !65, line: 454, type: !144)
!903 = !DILocation(line: 454, column: 21, scope: !843)
!904 = !DILocalVariable(name: "s", scope: !843, file: !65, line: 455, type: !58)
!905 = !DILocation(line: 455, column: 6, scope: !843)
!906 = !DILocalVariable(name: "len", scope: !843, file: !65, line: 455, type: !58)
!907 = !DILocation(line: 455, column: 9, scope: !843)
!908 = !DILocalVariable(name: "index", scope: !843, file: !65, line: 455, type: !58)
!909 = !DILocation(line: 455, column: 14, scope: !843)
!910 = !DILocalVariable(name: "ret", scope: !843, file: !65, line: 455, type: !58)
!911 = !DILocation(line: 455, column: 21, scope: !843)
!912 = !DILocalVariable(name: "data", scope: !843, file: !65, line: 456, type: !73)
!913 = !DILocation(line: 456, column: 7, scope: !843)
!914 = !DILocalVariable(name: "tmp", scope: !843, file: !65, line: 456, type: !73)
!915 = !DILocation(line: 456, column: 19, scope: !843)
!916 = !DILocalVariable(name: "result", scope: !843, file: !65, line: 457, type: !917)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 256, align: 8, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: 32)
!920 = !DILocation(line: 457, column: 7, scope: !843)
!921 = !DILocalVariable(name: "c", scope: !843, file: !65, line: 457, type: !52)
!922 = !DILocation(line: 457, column: 19, scope: !843)
!923 = !DILocalVariable(name: "escaped", scope: !843, file: !65, line: 457, type: !161)
!924 = !DILocation(line: 457, column: 23, scope: !843)
!925 = !DILocation(line: 459, column: 10, scope: !843)
!926 = !DILocation(line: 461, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !843, file: !65, line: 461, column: 6)
!928 = !DILocation(line: 461, column: 6, scope: !843)
!929 = !DILocation(line: 462, column: 3, scope: !927)
!930 = !DILocation(line: 464, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !843, file: !65, line: 464, column: 6)
!932 = !DILocation(line: 464, column: 9, scope: !931)
!933 = !DILocation(line: 464, column: 43, scope: !931)
!934 = !DILocation(line: 464, column: 6, scope: !843)
!935 = !DILocation(line: 466, column: 77, scope: !936)
!936 = distinct !DILexicalBlock(scope: !931, file: !65, line: 465, column: 2)
!937 = !DILocation(line: 466, column: 76, scope: !936)
!938 = !DILocation(line: 466, column: 67, scope: !939)
!939 = !DILexicalBlockFile(scope: !936, file: !65, discriminator: 1)
!940 = !DILocation(line: 466, column: 3, scope: !941)
!941 = !DILexicalBlockFile(scope: !936, file: !65, discriminator: 2)
!942 = !DILocation(line: 467, column: 3, scope: !936)
!943 = !DILocation(line: 470, column: 2, scope: !843)
!944 = !DILocation(line: 471, column: 7, scope: !843)
!945 = !DILocation(line: 471, column: 18, scope: !843)
!946 = !DILocation(line: 472, column: 14, scope: !843)
!947 = !DILocation(line: 472, column: 9, scope: !843)
!948 = !DILocation(line: 472, column: 2, scope: !843)
!949 = !DILocation(line: 473, column: 46, scope: !843)
!950 = !DILocation(line: 473, column: 41, scope: !843)
!951 = !DILocation(line: 473, column: 34, scope: !843)
!952 = !DILocation(line: 473, column: 32, scope: !843)
!953 = !DILocation(line: 473, column: 8, scope: !843)
!954 = !DILocation(line: 473, column: 6, scope: !843)
!955 = !DILocation(line: 475, column: 14, scope: !956)
!956 = distinct !DILexicalBlock(scope: !843, file: !65, line: 475, column: 6)
!957 = !DILocation(line: 475, column: 17, scope: !956)
!958 = !DILocation(line: 475, column: 44, scope: !956)
!959 = !DILocation(line: 475, column: 6, scope: !956)
!960 = !DILocation(line: 475, column: 49, scope: !956)
!961 = !DILocation(line: 475, column: 6, scope: !843)
!962 = !DILocation(line: 477, column: 78, scope: !963)
!963 = distinct !DILexicalBlock(scope: !956, file: !65, line: 476, column: 2)
!964 = !DILocation(line: 477, column: 77, scope: !963)
!965 = !DILocation(line: 477, column: 68, scope: !966)
!966 = !DILexicalBlockFile(scope: !963, file: !65, discriminator: 1)
!967 = !DILocation(line: 477, column: 3, scope: !968)
!968 = !DILexicalBlockFile(scope: !963, file: !65, discriminator: 2)
!969 = !DILocation(line: 478, column: 3, scope: !963)
!970 = !DILocation(line: 482, column: 11, scope: !843)
!971 = !DILocation(line: 482, column: 32, scope: !843)
!972 = !DILocation(line: 482, column: 37, scope: !843)
!973 = !DILocation(line: 482, column: 2, scope: !843)
!974 = !DILocation(line: 483, column: 29, scope: !843)
!975 = !DILocation(line: 483, column: 42, scope: !843)
!976 = !DILocation(line: 483, column: 35, scope: !843)
!977 = !DILocation(line: 483, column: 49, scope: !843)
!978 = !DILocation(line: 483, column: 8, scope: !979)
!979 = !DILexicalBlockFile(scope: !843, file: !65, discriminator: 1)
!980 = !DILocation(line: 483, column: 6, scope: !843)
!981 = !DILocation(line: 485, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !843, file: !65, line: 485, column: 6)
!983 = !DILocation(line: 485, column: 10, scope: !982)
!984 = !DILocation(line: 485, column: 6, scope: !843)
!985 = !DILocation(line: 486, column: 3, scope: !982)
!986 = !DILocation(line: 489, column: 32, scope: !843)
!987 = !DILocation(line: 489, column: 12, scope: !843)
!988 = !DILocation(line: 489, column: 10, scope: !843)
!989 = !DILocation(line: 490, column: 14, scope: !990)
!990 = distinct !DILexicalBlock(scope: !843, file: !65, line: 490, column: 6)
!991 = !DILocation(line: 490, column: 7, scope: !990)
!992 = !DILocation(line: 490, column: 23, scope: !990)
!993 = !DILocation(line: 490, column: 28, scope: !990)
!994 = !DILocation(line: 490, column: 6, scope: !843)
!995 = !DILocation(line: 491, column: 3, scope: !990)
!996 = !DILocation(line: 494, column: 7, scope: !843)
!997 = !DILocation(line: 494, column: 10, scope: !843)
!998 = !DILocation(line: 494, column: 26, scope: !843)
!999 = !DILocation(line: 494, column: 19, scope: !843)
!1000 = !DILocation(line: 494, column: 2, scope: !979)
!1001 = !DILocation(line: 495, column: 7, scope: !843)
!1002 = !DILocation(line: 495, column: 2, scope: !843)
!1003 = !DILocation(line: 498, column: 14, scope: !843)
!1004 = !DILocation(line: 498, column: 7, scope: !843)
!1005 = !DILocation(line: 498, column: 5, scope: !843)
!1006 = !DILocation(line: 499, column: 8, scope: !843)
!1007 = !DILocation(line: 500, column: 2, scope: !843)
!1008 = !DILocation(line: 500, column: 20, scope: !979)
!1009 = !DILocation(line: 500, column: 14, scope: !979)
!1010 = !DILocation(line: 500, column: 12, scope: !979)
!1011 = !DILocation(line: 500, column: 9, scope: !979)
!1012 = !DILocation(line: 500, column: 25, scope: !979)
!1013 = !DILocation(line: 500, column: 31, scope: !979)
!1014 = !DILocation(line: 500, column: 34, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !843, file: !65, discriminator: 2)
!1016 = !DILocation(line: 500, column: 40, scope: !1015)
!1017 = !DILocation(line: 500, column: 45, scope: !1015)
!1018 = !DILocation(line: 500, column: 48, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !843, file: !65, discriminator: 3)
!1020 = !DILocation(line: 500, column: 50, scope: !1019)
!1021 = !DILocation(line: 500, column: 2, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !843, file: !65, discriminator: 4)
!1023 = !DILocation(line: 502, column: 19, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !843, file: !65, line: 501, column: 2)
!1025 = !DILocation(line: 502, column: 10, scope: !1024)
!1026 = !DILocation(line: 502, column: 3, scope: !1024)
!1027 = !DILocation(line: 502, column: 17, scope: !1024)
!1028 = !DILocation(line: 503, column: 8, scope: !1024)
!1029 = !DILocation(line: 500, column: 2, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !843, file: !65, discriminator: 5)
!1031 = distinct !{!1031, !1007}
!1032 = !DILocation(line: 505, column: 9, scope: !843)
!1033 = !DILocation(line: 505, column: 15, scope: !843)
!1034 = !DILocation(line: 505, column: 2, scope: !843)
!1035 = !DILocation(line: 505, column: 20, scope: !843)
!1036 = !DILocation(line: 507, column: 14, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !843, file: !65, line: 507, column: 6)
!1038 = !DILocation(line: 507, column: 6, scope: !1037)
!1039 = !DILocation(line: 507, column: 35, scope: !1037)
!1040 = !DILocation(line: 507, column: 6, scope: !843)
!1041 = !DILocation(line: 509, column: 14, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !65, line: 509, column: 7)
!1043 = distinct !DILexicalBlock(scope: !1037, file: !65, line: 508, column: 2)
!1044 = !DILocation(line: 509, column: 7, scope: !1042)
!1045 = !DILocation(line: 509, column: 40, scope: !1042)
!1046 = !DILocation(line: 509, column: 7, scope: !1043)
!1047 = !DILocation(line: 510, column: 8, scope: !1042)
!1048 = !DILocation(line: 510, column: 4, scope: !1042)
!1049 = !DILocation(line: 511, column: 2, scope: !1043)
!1050 = !DILocation(line: 507, column: 38, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1037, file: !65, discriminator: 1)
!1052 = !DILocation(line: 514, column: 8, scope: !843)
!1053 = !DILocation(line: 514, column: 2, scope: !843)
!1054 = !DILocation(line: 515, column: 11, scope: !843)
!1055 = !DILocation(line: 515, column: 2, scope: !843)
!1056 = !DILocation(line: 516, column: 8, scope: !843)
!1057 = !DILocation(line: 516, column: 2, scope: !843)
!1058 = !DILocation(line: 518, column: 9, scope: !843)
!1059 = !DILocation(line: 518, column: 2, scope: !843)
!1060 = !DILocation(line: 519, column: 1, scope: !843)
!1061 = distinct !DISubprogram(name: "_ctrl_verify_unix_socket", scope: !65, file: !65, line: 181, type: !380, isLocal: true, isDefinition: true, scopeLine: 182, isOptimized: false, unit: !0, variables: !94)
!1062 = !DILocalVariable(name: "s", scope: !1061, file: !65, line: 183, type: !58)
!1063 = !DILocation(line: 183, column: 6, scope: !1061)
!1064 = !DILocalVariable(name: "len", scope: !1061, file: !65, line: 183, type: !58)
!1065 = !DILocation(line: 183, column: 9, scope: !1061)
!1066 = !DILocalVariable(name: "saun", scope: !1061, file: !65, line: 184, type: !144)
!1067 = !DILocation(line: 184, column: 21, scope: !1061)
!1068 = !DILocation(line: 186, column: 2, scope: !1061)
!1069 = !DILocation(line: 188, column: 11, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1061, file: !65, line: 188, column: 6)
!1071 = !DILocation(line: 188, column: 9, scope: !1070)
!1072 = !DILocation(line: 188, column: 43, scope: !1070)
!1073 = !DILocation(line: 188, column: 6, scope: !1061)
!1074 = !DILocation(line: 191, column: 20, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !65, line: 189, column: 2)
!1076 = !DILocation(line: 191, column: 19, scope: !1075)
!1077 = !DILocation(line: 191, column: 10, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1075, file: !65, discriminator: 1)
!1079 = !DILocation(line: 190, column: 3, scope: !1075)
!1080 = !DILocation(line: 192, column: 3, scope: !1075)
!1081 = !DILocation(line: 195, column: 7, scope: !1061)
!1082 = !DILocation(line: 195, column: 18, scope: !1061)
!1083 = !DILocation(line: 196, column: 14, scope: !1061)
!1084 = !DILocation(line: 196, column: 9, scope: !1061)
!1085 = !DILocation(line: 196, column: 2, scope: !1061)
!1086 = !DILocation(line: 197, column: 46, scope: !1061)
!1087 = !DILocation(line: 197, column: 41, scope: !1061)
!1088 = !DILocation(line: 197, column: 34, scope: !1061)
!1089 = !DILocation(line: 197, column: 32, scope: !1061)
!1090 = !DILocation(line: 197, column: 8, scope: !1061)
!1091 = !DILocation(line: 197, column: 6, scope: !1061)
!1092 = !DILocation(line: 200, column: 14, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1061, file: !65, line: 200, column: 6)
!1094 = !DILocation(line: 200, column: 17, scope: !1093)
!1095 = !DILocation(line: 200, column: 44, scope: !1093)
!1096 = !DILocation(line: 200, column: 6, scope: !1093)
!1097 = !DILocation(line: 200, column: 49, scope: !1093)
!1098 = !DILocation(line: 200, column: 6, scope: !1061)
!1099 = !DILocation(line: 201, column: 3, scope: !1093)
!1100 = !DILocation(line: 203, column: 11, scope: !1061)
!1101 = !DILocation(line: 203, column: 2, scope: !1061)
!1102 = !DILocation(line: 204, column: 8, scope: !1061)
!1103 = !DILocation(line: 204, column: 2, scope: !1061)
!1104 = !DILocation(line: 205, column: 2, scope: !1061)
!1105 = !DILocation(line: 206, column: 1, scope: !1061)
!1106 = distinct !DISubprogram(name: "_ctrl_command_result", scope: !65, file: !65, line: 134, type: !1107, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !63, !58}
!1109 = !DILocalVariable(name: "slave", arg: 1, scope: !1106, file: !65, line: 134, type: !63)
!1110 = !DILocation(line: 134, column: 38, scope: !1106)
!1111 = !DILocalVariable(name: "result", arg: 2, scope: !1106, file: !65, line: 134, type: !58)
!1112 = !DILocation(line: 134, column: 49, scope: !1106)
!1113 = !DILocalVariable(name: "buf", scope: !1106, file: !65, line: 136, type: !1114)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 512, align: 8, elements: !1115)
!1115 = !{!1116}
!1116 = !DISubrange(count: 64)
!1117 = !DILocation(line: 136, column: 7, scope: !1106)
!1118 = !DILocation(line: 139, column: 6, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1106, file: !65, line: 139, column: 6)
!1120 = !DILocation(line: 139, column: 13, scope: !1119)
!1121 = !DILocation(line: 139, column: 6, scope: !1106)
!1122 = !DILocation(line: 140, column: 8, scope: !1119)
!1123 = !DILocation(line: 140, column: 15, scope: !1119)
!1124 = !DILocation(line: 140, column: 3, scope: !1119)
!1125 = !DILocation(line: 143, column: 12, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1119, file: !65, line: 142, column: 2)
!1127 = !DILocation(line: 143, column: 35, scope: !1126)
!1128 = !DILocation(line: 143, column: 3, scope: !1126)
!1129 = !DILocation(line: 144, column: 8, scope: !1126)
!1130 = !DILocation(line: 144, column: 15, scope: !1126)
!1131 = !DILocation(line: 144, column: 21, scope: !1126)
!1132 = !DILocation(line: 144, column: 33, scope: !1126)
!1133 = !DILocation(line: 144, column: 26, scope: !1126)
!1134 = !DILocation(line: 144, column: 3, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1126, file: !65, discriminator: 1)
!1136 = !DILocation(line: 146, column: 1, scope: !1106)
