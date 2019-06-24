; ModuleID = './[inter]keepalived--core--layer4.o.i'
source_filename = "./[inter]keepalived--core--layer4.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct._conn_opts = type { %struct.sockaddr_storage, %struct.sockaddr_storage, [16 x i8], i32, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.linger = type { i32, i32 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon, %struct._thread_event*, %union.anon.0 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.0 = type { %struct.rb_node }

@.str = private unnamed_addr constant [26 x i8] c"Can't get socket type: %s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Error setting fwmark %d to socket: %s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Checker can't bind to device %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Checker bind failed: %s\00", align 1
@time_now = external global %struct.timeval, align 8

; Function Attrs: nounwind uwtable
define i32 @socket_bind_connect(i32, %struct._conn_opts*) #0 !dbg !64 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._conn_opts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.linger, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_storage*, align 8
  %12 = alloca %struct.sockaddr_storage*, align 8
  %13 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %14 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !90, metadata !91), !dbg !92
  store %struct._conn_opts* %1, %struct._conn_opts** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %5, metadata !93, metadata !91), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %6, metadata !95, metadata !91), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %7, metadata !97, metadata !91), !dbg !102
  call void @llvm.dbg.declare(metadata %struct.linger* %8, metadata !103, metadata !91), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %9, metadata !109, metadata !91), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %10, metadata !111, metadata !91), !dbg !112
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %11, metadata !113, metadata !91), !dbg !115
  %15 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !116
  %16 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %15, i32 0, i32 0, !dbg !117
  store %struct.sockaddr_storage* %16, %struct.sockaddr_storage** %11, align 8, !dbg !115
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %12, metadata !118, metadata !91), !dbg !119
  %17 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !120
  %18 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %17, i32 0, i32 1, !dbg !121
  store %struct.sockaddr_storage* %18, %struct.sockaddr_storage** %12, align 8, !dbg !119
  store i32 4, i32* %7, align 4, !dbg !122
  %19 = load i32, i32* %4, align 4, !dbg !123
  %20 = bitcast i32* %6 to i8*, !dbg !125
  %21 = call i32 @getsockopt(i32 %19, i32 1, i32 3, i8* %20, i32* %7) #8, !dbg !126
  %22 = icmp slt i32 %21, 0, !dbg !127
  br i1 %22, label %23, label %27, !dbg !128

; <label>:23:                                     ; preds = %2
  %24 = call i32* @__errno_location() #1, !dbg !129
  %25 = load i32, i32* %24, align 4, !dbg !131
  %26 = call i8* @strerror(i32 %25) #8, !dbg !132
  call void (i32, i8*, ...) @log_message(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8* %26), !dbg !134
  store i32 0, i32* %3, align 4, !dbg !136
  br label %127, !dbg !136

; <label>:27:                                     ; preds = %2
  %28 = load i32, i32* %6, align 4, !dbg !137
  %29 = icmp eq i32 %28, 1, !dbg !139
  br i1 %29, label %30, label %36, !dbg !140

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.linger, %struct.linger* %8, i32 0, i32 0, !dbg !141
  store i32 1, i32* %31, align 4, !dbg !143
  %32 = getelementptr inbounds %struct.linger, %struct.linger* %8, i32 0, i32 1, !dbg !144
  store i32 0, i32* %32, align 4, !dbg !145
  %33 = load i32, i32* %4, align 4, !dbg !146
  %34 = bitcast %struct.linger* %8 to i8*, !dbg !147
  %35 = call i32 @setsockopt(i32 %33, i32 1, i32 13, i8* %34, i32 8) #8, !dbg !148
  br label %36, !dbg !149

; <label>:36:                                     ; preds = %30, %27
  %37 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !150
  %38 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %37, i32 0, i32 4, !dbg !152
  %39 = load i32, i32* %38, align 4, !dbg !152
  %40 = icmp ne i32 %39, 0, !dbg !150
  br i1 %40, label %41, label %56, !dbg !153

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %4, align 4, !dbg !154
  %43 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !157
  %44 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %43, i32 0, i32 4, !dbg !158
  %45 = bitcast i32* %44 to i8*, !dbg !159
  %46 = call i32 @setsockopt(i32 %42, i32 1, i32 36, i8* %45, i32 4) #8, !dbg !160
  %47 = icmp slt i32 %46, 0, !dbg !161
  br i1 %47, label %48, label %55, !dbg !162

; <label>:48:                                     ; preds = %41
  %49 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !163
  %50 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %49, i32 0, i32 4, !dbg !165
  %51 = load i32, i32* %50, align 4, !dbg !165
  %52 = call i32* @__errno_location() #1, !dbg !166
  %53 = load i32, i32* %52, align 4, !dbg !167
  %54 = call i8* @strerror(i32 %53) #8, !dbg !168
  call void (i32, i8*, ...) @log_message(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i32 %51, i8* %54), !dbg !170
  store i32 0, i32* %3, align 4, !dbg !172
  br label %127, !dbg !172

; <label>:55:                                     ; preds = %41
  br label %56, !dbg !173

; <label>:56:                                     ; preds = %55, %36
  %57 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !174
  %58 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %57, i32 0, i32 2, !dbg !176
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %58, i64 0, i64 0, !dbg !174
  %60 = load i8, i8* %59, align 8, !dbg !174
  %61 = icmp ne i8 %60, 0, !dbg !174
  br i1 %61, label %62, label %83, !dbg !177

; <label>:62:                                     ; preds = %56
  %63 = load i32, i32* %4, align 4, !dbg !178
  %64 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !181
  %65 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %64, i32 0, i32 2, !dbg !182
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %65, i32 0, i32 0, !dbg !181
  %67 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !183
  %68 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %67, i32 0, i32 2, !dbg !184
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %68, i32 0, i32 0, !dbg !183
  %70 = call i64 @strlen(i8* %69) #9, !dbg !185
  %71 = trunc i64 %70 to i32, !dbg !186
  %72 = add i32 %71, 1, !dbg !187
  %73 = call i32 @setsockopt(i32 %63, i32 1, i32 25, i8* %66, i32 %72) #8, !dbg !188
  %74 = icmp slt i32 %73, 0, !dbg !190
  br i1 %74, label %75, label %82, !dbg !191

; <label>:75:                                     ; preds = %62
  %76 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !192
  %77 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %76, i32 0, i32 2, !dbg !194
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %77, i32 0, i32 0, !dbg !192
  %79 = call i32* @__errno_location() #1, !dbg !195
  %80 = load i32, i32* %79, align 4, !dbg !196
  %81 = call i8* @strerror(i32 %80) #8, !dbg !197
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* %78, i8* %81), !dbg !199
  store i32 0, i32* %3, align 4, !dbg !201
  br label %127, !dbg !201

; <label>:82:                                     ; preds = %62
  br label %83, !dbg !202

; <label>:83:                                     ; preds = %82, %56
  %84 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8, !dbg !203
  %85 = bitcast %struct.sockaddr_storage* %84 to %struct.sockaddr*, !dbg !205
  %86 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %85, i32 0, i32 0, !dbg !205
  %87 = load i16, i16* %86, align 2, !dbg !205
  %88 = zext i16 %87 to i32, !dbg !206
  %89 = icmp ne i32 %88, 0, !dbg !207
  br i1 %89, label %90, label %105, !dbg !208

; <label>:90:                                     ; preds = %83
  store i32 128, i32* %9, align 4, !dbg !209
  %91 = load i32, i32* %4, align 4, !dbg !211
  %92 = bitcast %union.__CONST_SOCKADDR_ARG* %13 to %struct.sockaddr**, !dbg !213
  %93 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8, !dbg !214
  %94 = bitcast %struct.sockaddr_storage* %93 to %struct.sockaddr*, !dbg !213
  store %struct.sockaddr* %94, %struct.sockaddr** %92, align 8, !dbg !213
  %95 = load i32, i32* %9, align 4, !dbg !215
  %96 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %13, i32 0, i32 0, !dbg !216
  %97 = load %struct.sockaddr*, %struct.sockaddr** %96, align 8, !dbg !216
  %98 = call i32 @bind(i32 %91, %struct.sockaddr* %97, i32 %95) #8, !dbg !216
  %99 = icmp ne i32 %98, 0, !dbg !217
  br i1 %99, label %100, label %104, !dbg !218

; <label>:100:                                    ; preds = %90
  %101 = call i32* @__errno_location() #1, !dbg !219
  %102 = load i32, i32* %101, align 4, !dbg !221
  %103 = call i8* @strerror(i32 %102) #8, !dbg !222
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* %103), !dbg !224
  store i32 0, i32* %3, align 4, !dbg !226
  br label %127, !dbg !226

; <label>:104:                                    ; preds = %90
  br label %105, !dbg !227

; <label>:105:                                    ; preds = %104, %83
  store i32 128, i32* %9, align 4, !dbg !228
  %106 = load i32, i32* %4, align 4, !dbg !229
  %107 = bitcast %union.__CONST_SOCKADDR_ARG* %14 to %struct.sockaddr**, !dbg !230
  %108 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %11, align 8, !dbg !231
  %109 = bitcast %struct.sockaddr_storage* %108 to %struct.sockaddr*, !dbg !230
  store %struct.sockaddr* %109, %struct.sockaddr** %107, align 8, !dbg !230
  %110 = load i32, i32* %9, align 4, !dbg !232
  %111 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %14, i32 0, i32 0, !dbg !233
  %112 = load %struct.sockaddr*, %struct.sockaddr** %111, align 8, !dbg !233
  %113 = call i32 @connect(i32 %106, %struct.sockaddr* %112, i32 %110), !dbg !233
  store i32 %113, i32* %10, align 4, !dbg !234
  %114 = load i32, i32* %10, align 4, !dbg !235
  %115 = icmp eq i32 %114, 0, !dbg !237
  br i1 %115, label %116, label %117, !dbg !238

; <label>:116:                                    ; preds = %105
  store i32 3, i32* %3, align 4, !dbg !239
  br label %127, !dbg !239

; <label>:117:                                    ; preds = %105
  %118 = load i32, i32* %10, align 4, !dbg !240
  %119 = icmp slt i32 %118, 0, !dbg !242
  br i1 %119, label %120, label %126, !dbg !243

; <label>:120:                                    ; preds = %117
  %121 = call i32* @__errno_location() #1, !dbg !244
  %122 = load i32, i32* %121, align 4, !dbg !247
  %123 = icmp ne i32 %122, 115, !dbg !248
  br i1 %123, label %124, label %125, !dbg !249

; <label>:124:                                    ; preds = %120
  store i32 0, i32* %3, align 4, !dbg !250
  br label %127, !dbg !250

; <label>:125:                                    ; preds = %120
  br label %126, !dbg !251

; <label>:126:                                    ; preds = %125, %117
  store i32 1, i32* %3, align 4, !dbg !252
  br label %127, !dbg !252

; <label>:127:                                    ; preds = %126, %124, %116, %100, %75, %48, %23
  %128 = load i32, i32* %3, align 4, !dbg !253
  ret i32 %128, !dbg !253
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #2

declare void @log_message(i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #2

declare i32 @connect(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @socket_connect(i32, %struct.sockaddr_storage*) #0 !dbg !254 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct._conn_opts, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !257, metadata !91), !dbg !258
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %4, metadata !259, metadata !91), !dbg !260
  call void @llvm.dbg.declare(metadata %struct._conn_opts* %5, metadata !261, metadata !91), !dbg !262
  %6 = bitcast %struct._conn_opts* %5 to i8*, !dbg !263
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 280, i32 8, i1 false), !dbg !263
  %7 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %5, i32 0, i32 0, !dbg !264
  %8 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !265
  %9 = bitcast %struct.sockaddr_storage* %7 to i8*, !dbg !266
  %10 = bitcast %struct.sockaddr_storage* %8 to i8*, !dbg !266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 128, i32 8, i1 false), !dbg !266
  %11 = load i32, i32* %3, align 4, !dbg !267
  %12 = call i32 @socket_bind_connect(i32 %11, %struct._conn_opts* %5), !dbg !268
  ret i32 %12, !dbg !269
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define i32 @socket_state(%struct._thread*, i32 (%struct._thread*)*) #0 !dbg !270 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._thread*, align 8
  %5 = alloca i32 (%struct._thread*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  store %struct._thread* %0, %struct._thread** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %4, metadata !450, metadata !91), !dbg !451
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %5, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %5, metadata !452, metadata !91), !dbg !453
  call void @llvm.dbg.declare(metadata i32* %6, metadata !454, metadata !91), !dbg !455
  call void @llvm.dbg.declare(metadata i32* %7, metadata !456, metadata !91), !dbg !457
  call void @llvm.dbg.declare(metadata i32* %8, metadata !458, metadata !91), !dbg !459
  store i32 0, i32* %8, align 4, !dbg !459
  call void @llvm.dbg.declare(metadata %struct.timeval* %9, metadata !460, metadata !91), !dbg !461
  %11 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !462
  %12 = getelementptr inbounds %struct._thread, %struct._thread* %11, i32 0, i32 1, !dbg !464
  %13 = load i32, i32* %12, align 8, !dbg !464
  %14 = icmp eq i32 %13, 8, !dbg !465
  br i1 %14, label %15, label %17, !dbg !466

; <label>:15:                                     ; preds = %2
  %16 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !467
  call void @thread_close_fd(%struct._thread* %16), !dbg !469
  store i32 2, i32* %3, align 4, !dbg !470
  br label %77, !dbg !470

; <label>:17:                                     ; preds = %2
  store i32 4, i32* %7, align 4, !dbg !471
  %18 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !472
  %19 = getelementptr inbounds %struct._thread, %struct._thread* %18, i32 0, i32 6, !dbg !474
  %20 = bitcast %union.anon* %19 to i32*, !dbg !475
  %21 = load i32, i32* %20, align 8, !dbg !475
  %22 = bitcast i32* %6 to i8*, !dbg !476
  %23 = call i32 @getsockopt(i32 %21, i32 1, i32 4, i8* %22, i32* %7) #8, !dbg !477
  %24 = icmp slt i32 %23, 0, !dbg !478
  br i1 %24, label %25, label %28, !dbg !479

; <label>:25:                                     ; preds = %17
  %26 = call i32* @__errno_location() #1, !dbg !480
  %27 = load i32, i32* %26, align 4, !dbg !481
  store i32 %27, i32* %8, align 4, !dbg !482
  br label %28, !dbg !483

; <label>:28:                                     ; preds = %25, %17
  %29 = load i32, i32* %8, align 4, !dbg !484
  %30 = icmp ne i32 %29, 0, !dbg !484
  br i1 %30, label %31, label %33, !dbg !486

; <label>:31:                                     ; preds = %28
  %32 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !487
  call void @thread_close_fd(%struct._thread* %32), !dbg !489
  store i32 0, i32* %3, align 4, !dbg !490
  br label %77, !dbg !490

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %6, align 4, !dbg !491
  %35 = icmp eq i32 %34, 0, !dbg !493
  br i1 %35, label %36, label %37, !dbg !494

; <label>:36:                                     ; preds = %33
  store i32 3, i32* %3, align 4, !dbg !495
  br label %77, !dbg !495

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %6, align 4, !dbg !496
  %39 = icmp eq i32 %38, 115, !dbg !498
  br i1 %39, label %40, label %75, !dbg !499

; <label>:40:                                     ; preds = %37
  %41 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !500
  %42 = getelementptr inbounds %struct._thread, %struct._thread* %41, i32 0, i32 5, !dbg !502
  %43 = bitcast %struct.timeval* %42 to { i64, i64 }*, !dbg !503
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 0, !dbg !503
  %45 = load i64, i64* %44, align 8, !dbg !503
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 1, !dbg !503
  %47 = load i64, i64* %46, align 8, !dbg !503
  %48 = call { i64, i64 } @timer_sub_now(i64 %45, i64 %47), !dbg !503
  %49 = bitcast %struct.timeval* %10 to { i64, i64 }*, !dbg !503
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0, !dbg !503
  %51 = extractvalue { i64, i64 } %48, 0, !dbg !503
  store i64 %51, i64* %50, align 8, !dbg !503
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1, !dbg !503
  %53 = extractvalue { i64, i64 } %48, 1, !dbg !503
  store i64 %53, i64* %52, align 8, !dbg !503
  %54 = bitcast %struct.timeval* %9 to i8*, !dbg !503
  %55 = bitcast %struct.timeval* %10 to i8*, !dbg !503
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 16, i32 8, i1 false), !dbg !504
  %56 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !506
  %57 = getelementptr inbounds %struct._thread, %struct._thread* %56, i32 0, i32 2, !dbg !507
  %58 = load %struct._thread_master*, %struct._thread_master** %57, align 8, !dbg !507
  %59 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %5, align 8, !dbg !508
  %60 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !509
  %61 = getelementptr inbounds %struct._thread, %struct._thread* %60, i32 0, i32 4, !dbg !510
  %62 = load i8*, i8** %61, align 8, !dbg !510
  %63 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !511
  %64 = getelementptr inbounds %struct._thread, %struct._thread* %63, i32 0, i32 6, !dbg !512
  %65 = bitcast %union.anon* %64 to i32*, !dbg !513
  %66 = load i32, i32* %65, align 8, !dbg !513
  %67 = bitcast %struct.timeval* %9 to { i64, i64 }*, !dbg !514
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0, !dbg !514
  %69 = load i64, i64* %68, align 8, !dbg !514
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1, !dbg !514
  %71 = load i64, i64* %70, align 8, !dbg !514
  %72 = call i64 @timer_long(i64 %69, i64 %71), !dbg !514
  %73 = sub i64 0, %72, !dbg !515
  %74 = call %struct._thread* @thread_add_write(%struct._thread_master* %58, i32 (%struct._thread*)* %59, i8* %62, i32 %66, i64 %73), !dbg !516
  store i32 1, i32* %3, align 4, !dbg !517
  br label %77, !dbg !517

; <label>:75:                                     ; preds = %37
  %76 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !518
  call void @thread_close_fd(%struct._thread* %76), !dbg !519
  store i32 0, i32* %3, align 4, !dbg !520
  br label %77, !dbg !520

; <label>:77:                                     ; preds = %75, %40, %36, %31, %15
  %78 = load i32, i32* %3, align 4, !dbg !521
  ret i32 %78, !dbg !521
}

declare void @thread_close_fd(%struct._thread*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal { i64, i64 } @timer_sub_now(i64, i64) #7 !dbg !522 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = bitcast %struct.timeval* %4 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !525, metadata !91), !dbg !526
  br label %8, !dbg !527, !llvm.loop !528

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !529
  %10 = load i64, i64* %9, align 8, !dbg !529
  %11 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !529
  %12 = sub nsw i64 %10, %11, !dbg !532
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !529
  store i64 %12, i64* %13, align 8, !dbg !532
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !529
  %15 = load i64, i64* %14, align 8, !dbg !529
  %16 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !529
  %17 = sub nsw i64 %15, %16, !dbg !533
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !529
  store i64 %17, i64* %18, align 8, !dbg !533
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !529
  %20 = load i64, i64* %19, align 8, !dbg !529
  %21 = icmp slt i64 %20, 0, !dbg !533
  br i1 %21, label %22, label %29, !dbg !534

; <label>:22:                                     ; preds = %8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !535
  %24 = load i64, i64* %23, align 8, !dbg !539
  %25 = add nsw i64 %24, -1, !dbg !539
  store i64 %25, i64* %23, align 8, !dbg !539
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !535
  %27 = load i64, i64* %26, align 8, !dbg !540
  %28 = add nsw i64 %27, 1000000, !dbg !540
  store i64 %28, i64* %26, align 8, !dbg !540
  br label %29, !dbg !541

; <label>:29:                                     ; preds = %22, %8
  br label %30, !dbg !542

; <label>:30:                                     ; preds = %29
  %31 = bitcast %struct.timeval* %3 to i8*, !dbg !544
  %32 = bitcast %struct.timeval* %4 to i8*, !dbg !544
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !dbg !544
  %33 = bitcast %struct.timeval* %3 to { i64, i64 }*, !dbg !545
  %34 = load { i64, i64 }, { i64, i64 }* %33, align 8, !dbg !545
  ret { i64, i64 } %34, !dbg !545
}

declare %struct._thread* @thread_add_write(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @timer_long(i64, i64) #7 !dbg !546 {
  %3 = alloca %struct.timeval, align 8
  %4 = bitcast %struct.timeval* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !549, metadata !91), !dbg !550
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !551
  %8 = load i64, i64* %7, align 8, !dbg !551
  %9 = mul i64 %8, 1000000, !dbg !552
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !553
  %11 = load i64, i64* %10, align 8, !dbg !553
  %12 = add i64 %9, %11, !dbg !554
  ret i64 %12, !dbg !555
}

; Function Attrs: nounwind uwtable
define zeroext i1 @socket_connection_state(i32, i32, %struct._thread*, i32 (%struct._thread*)*, i64) #0 !dbg !556 {
  %6 = alloca i1, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._thread*, align 8
  %10 = alloca i32 (%struct._thread*)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !559, metadata !91), !dbg !560
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !561, metadata !91), !dbg !562
  store %struct._thread* %2, %struct._thread** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %9, metadata !563, metadata !91), !dbg !564
  store i32 (%struct._thread*)* %3, i32 (%struct._thread*)** %10, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %10, metadata !565, metadata !91), !dbg !566
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !567, metadata !91), !dbg !568
  call void @llvm.dbg.declare(metadata i8** %12, metadata !569, metadata !91), !dbg !570
  %13 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !571
  %14 = getelementptr inbounds %struct._thread, %struct._thread* %13, i32 0, i32 4, !dbg !572
  %15 = load i8*, i8** %14, align 8, !dbg !572
  store i8* %15, i8** %12, align 8, !dbg !573
  %16 = load i32, i32* %8, align 4, !dbg !574
  %17 = icmp eq i32 %16, 3, !dbg !576
  br i1 %17, label %21, label %18, !dbg !577

; <label>:18:                                     ; preds = %5
  %19 = load i32, i32* %8, align 4, !dbg !578
  %20 = icmp eq i32 %19, 1, !dbg !579
  br i1 %20, label %21, label %30, !dbg !580

; <label>:21:                                     ; preds = %18, %5
  %22 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !582
  %23 = getelementptr inbounds %struct._thread, %struct._thread* %22, i32 0, i32 2, !dbg !584
  %24 = load %struct._thread_master*, %struct._thread_master** %23, align 8, !dbg !584
  %25 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %10, align 8, !dbg !585
  %26 = load i8*, i8** %12, align 8, !dbg !586
  %27 = load i32, i32* %7, align 4, !dbg !587
  %28 = load i64, i64* %11, align 8, !dbg !588
  %29 = call %struct._thread* @thread_add_write(%struct._thread_master* %24, i32 (%struct._thread*)* %25, i8* %26, i32 %27, i64 %28), !dbg !589
  store i1 false, i1* %6, align 1, !dbg !590
  br label %31, !dbg !590

; <label>:30:                                     ; preds = %18
  store i1 true, i1* %6, align 1, !dbg !591
  br label %31, !dbg !591

; <label>:31:                                     ; preds = %30, %21
  %32 = load i1, i1* %6, align 1, !dbg !592
  ret i1 %32, !dbg !592
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !43)
!1 = !DIFile(filename: "[inter]keepalived--core--layer4.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!2 = !{!3, !10, !22}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "connect_result", file: !4, line: 34, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./../include/layer4.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "connect_error", value: 0)
!7 = !DIEnumerator(name: "connect_in_progress", value: 1)
!8 = !DIEnumerator(name: "connect_timeout", value: 2)
!9 = !DIEnumerator(name: "connect_success", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !11, line: 24, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21}
!13 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!14 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!15 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!16 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!17 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!18 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!19 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!20 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!21 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 41, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!25 = !DIEnumerator(name: "THREAD_READ", value: 0)
!26 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!27 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!28 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!29 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!30 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!31 = !DIEnumerator(name: "THREAD_READY", value: 6)
!32 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!33 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!34 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!35 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!36 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!37 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!38 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!39 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!40 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!41 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!42 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!43 = !{!44, !45, !47, !48, !60}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!47 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !50, line: 153, size: 128, align: 16, elements: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!51 = !{!52, !56}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !49, file: !50, line: 155, baseType: !53, size: 16, align: 16)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !54, line: 28, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!55 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !49, file: !50, line: 156, baseType: !57, size: 112, align: 8, offset: 16)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 112, align: 8, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 14)
!60 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!61 = !{i32 2, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!64 = distinct !DISubprogram(name: "socket_bind_connect", scope: !65, file: !65, line: 37, type: !66, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !89)
!65 = !DIFile(filename: "layer4.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!66 = !DISubroutineType(types: !67)
!67 = !{!3, !68, !69}
!68 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_opts_t", file: !4, line: 50, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_conn_opts", file: !4, line: 42, size: 2240, align: 64, elements: !72)
!72 = !{!73, !82, !83, !87, !88}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !71, file: !4, line: 43, baseType: !74, size: 1024, align: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !50, line: 166, size: 1024, align: 64, elements: !75)
!75 = !{!76, !77, !81}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !74, file: !50, line: 168, baseType: !53, size: 16, align: 16)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !74, file: !50, line: 169, baseType: !78, size: 944, align: 8, offset: 16)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 944, align: 8, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 118)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !74, file: !50, line: 170, baseType: !60, size: 64, align: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "bindto", scope: !71, file: !4, line: 44, baseType: !74, size: 1024, align: 64, offset: 1024)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "bind_if", scope: !71, file: !4, line: 45, baseType: !84, size: 128, align: 8, offset: 2048)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, align: 8, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 16)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "connection_to", scope: !71, file: !4, line: 46, baseType: !47, size: 32, align: 32, offset: 2176)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark", scope: !71, file: !4, line: 48, baseType: !47, size: 32, align: 32, offset: 2208)
!89 = !{}
!90 = !DILocalVariable(name: "fd", arg: 1, scope: !64, file: !65, line: 37, type: !68)
!91 = !DIExpression()
!92 = !DILocation(line: 37, column: 25, scope: !64)
!93 = !DILocalVariable(name: "co", arg: 2, scope: !64, file: !65, line: 37, type: !69)
!94 = !DILocation(line: 37, column: 42, scope: !64)
!95 = !DILocalVariable(name: "opt", scope: !64, file: !65, line: 39, type: !68)
!96 = !DILocation(line: 39, column: 6, scope: !64)
!97 = !DILocalVariable(name: "optlen", scope: !64, file: !65, line: 40, type: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !99, line: 277, baseType: !100)
!99 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !101, line: 189, baseType: !47)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!102 = !DILocation(line: 40, column: 12, scope: !64)
!103 = !DILocalVariable(name: "li", scope: !64, file: !65, line: 41, type: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linger", file: !50, line: 383, size: 64, align: 32, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "l_onoff", scope: !104, file: !50, line: 385, baseType: !68, size: 32, align: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "l_linger", scope: !104, file: !50, line: 386, baseType: !68, size: 32, align: 32, offset: 32)
!108 = !DILocation(line: 41, column: 16, scope: !64)
!109 = !DILocalVariable(name: "addrlen", scope: !64, file: !65, line: 42, type: !98)
!110 = !DILocation(line: 42, column: 12, scope: !64)
!111 = !DILocalVariable(name: "ret", scope: !64, file: !65, line: 43, type: !68)
!112 = !DILocation(line: 43, column: 6, scope: !64)
!113 = !DILocalVariable(name: "addr", scope: !64, file: !65, line: 44, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!115 = !DILocation(line: 44, column: 27, scope: !64)
!116 = !DILocation(line: 44, column: 35, scope: !64)
!117 = !DILocation(line: 44, column: 39, scope: !64)
!118 = !DILocalVariable(name: "bind_addr", scope: !64, file: !65, line: 45, type: !114)
!119 = !DILocation(line: 45, column: 27, scope: !64)
!120 = !DILocation(line: 45, column: 40, scope: !64)
!121 = !DILocation(line: 45, column: 44, scope: !64)
!122 = !DILocation(line: 47, column: 9, scope: !64)
!123 = !DILocation(line: 48, column: 17, scope: !124)
!124 = distinct !DILexicalBlock(scope: !64, file: !65, line: 48, column: 6)
!125 = !DILocation(line: 48, column: 41, scope: !124)
!126 = !DILocation(line: 48, column: 6, scope: !124)
!127 = !DILocation(line: 48, column: 65, scope: !124)
!128 = !DILocation(line: 48, column: 6, scope: !64)
!129 = !DILocation(line: 49, column: 63, scope: !130)
!130 = distinct !DILexicalBlock(scope: !124, file: !65, line: 48, column: 70)
!131 = !DILocation(line: 49, column: 62, scope: !130)
!132 = !DILocation(line: 49, column: 52, scope: !133)
!133 = !DILexicalBlockFile(scope: !130, file: !65, discriminator: 1)
!134 = !DILocation(line: 49, column: 3, scope: !135)
!135 = !DILexicalBlockFile(scope: !130, file: !65, discriminator: 2)
!136 = !DILocation(line: 50, column: 3, scope: !130)
!137 = !DILocation(line: 52, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !64, file: !65, line: 52, column: 6)
!139 = !DILocation(line: 52, column: 10, scope: !138)
!140 = !DILocation(line: 52, column: 6, scope: !64)
!141 = !DILocation(line: 54, column: 6, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !65, line: 52, column: 25)
!143 = !DILocation(line: 54, column: 14, scope: !142)
!144 = !DILocation(line: 55, column: 6, scope: !142)
!145 = !DILocation(line: 55, column: 15, scope: !142)
!146 = !DILocation(line: 56, column: 14, scope: !142)
!147 = !DILocation(line: 56, column: 40, scope: !142)
!148 = !DILocation(line: 56, column: 3, scope: !142)
!149 = !DILocation(line: 57, column: 2, scope: !142)
!150 = !DILocation(line: 60, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !64, file: !65, line: 60, column: 6)
!152 = !DILocation(line: 60, column: 10, scope: !151)
!153 = !DILocation(line: 60, column: 6, scope: !64)
!154 = !DILocation(line: 61, column: 19, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !65, line: 61, column: 7)
!156 = distinct !DILexicalBlock(scope: !151, file: !65, line: 60, column: 18)
!157 = !DILocation(line: 61, column: 44, scope: !155)
!158 = !DILocation(line: 61, column: 48, scope: !155)
!159 = !DILocation(line: 61, column: 43, scope: !155)
!160 = !DILocation(line: 61, column: 7, scope: !155)
!161 = !DILocation(line: 61, column: 77, scope: !155)
!162 = !DILocation(line: 61, column: 7, scope: !156)
!163 = !DILocation(line: 62, column: 65, scope: !164)
!164 = distinct !DILexicalBlock(scope: !155, file: !65, line: 61, column: 82)
!165 = !DILocation(line: 62, column: 69, scope: !164)
!166 = !DILocation(line: 62, column: 88, scope: !164)
!167 = !DILocation(line: 62, column: 87, scope: !164)
!168 = !DILocation(line: 62, column: 77, scope: !169)
!169 = !DILexicalBlockFile(scope: !164, file: !65, discriminator: 1)
!170 = !DILocation(line: 62, column: 4, scope: !171)
!171 = !DILexicalBlockFile(scope: !164, file: !65, discriminator: 2)
!172 = !DILocation(line: 63, column: 4, scope: !164)
!173 = !DILocation(line: 65, column: 2, scope: !156)
!174 = !DILocation(line: 68, column: 6, scope: !175)
!175 = distinct !DILexicalBlock(scope: !64, file: !65, line: 68, column: 6)
!176 = !DILocation(line: 68, column: 10, scope: !175)
!177 = !DILocation(line: 68, column: 6, scope: !64)
!178 = !DILocation(line: 69, column: 18, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !65, line: 69, column: 7)
!180 = distinct !DILexicalBlock(scope: !175, file: !65, line: 68, column: 22)
!181 = !DILocation(line: 69, column: 50, scope: !179)
!182 = !DILocation(line: 69, column: 54, scope: !179)
!183 = !DILocation(line: 69, column: 80, scope: !179)
!184 = !DILocation(line: 69, column: 84, scope: !179)
!185 = !DILocation(line: 69, column: 73, scope: !179)
!186 = !DILocation(line: 69, column: 63, scope: !179)
!187 = !DILocation(line: 69, column: 93, scope: !179)
!188 = !DILocation(line: 69, column: 7, scope: !189)
!189 = !DILexicalBlockFile(scope: !179, file: !65, discriminator: 1)
!190 = !DILocation(line: 69, column: 98, scope: !179)
!191 = !DILocation(line: 69, column: 7, scope: !180)
!192 = !DILocation(line: 70, column: 64, scope: !193)
!193 = distinct !DILexicalBlock(scope: !179, file: !65, line: 69, column: 103)
!194 = !DILocation(line: 70, column: 68, scope: !193)
!195 = !DILocation(line: 70, column: 88, scope: !193)
!196 = !DILocation(line: 70, column: 87, scope: !193)
!197 = !DILocation(line: 70, column: 77, scope: !198)
!198 = !DILexicalBlockFile(scope: !193, file: !65, discriminator: 1)
!199 = !DILocation(line: 70, column: 4, scope: !200)
!200 = !DILexicalBlockFile(scope: !193, file: !65, discriminator: 2)
!201 = !DILocation(line: 71, column: 4, scope: !193)
!202 = !DILocation(line: 73, column: 2, scope: !180)
!203 = !DILocation(line: 76, column: 27, scope: !204)
!204 = distinct !DILexicalBlock(scope: !64, file: !65, line: 76, column: 6)
!205 = !DILocation(line: 76, column: 39, scope: !204)
!206 = !DILocation(line: 76, column: 6, scope: !204)
!207 = !DILocation(line: 76, column: 49, scope: !204)
!208 = !DILocation(line: 76, column: 6, scope: !64)
!209 = !DILocation(line: 77, column: 11, scope: !210)
!210 = distinct !DILexicalBlock(scope: !204, file: !65, line: 76, column: 62)
!211 = !DILocation(line: 78, column: 12, scope: !212)
!212 = distinct !DILexicalBlock(scope: !210, file: !65, line: 78, column: 7)
!213 = !DILocation(line: 78, column: 16, scope: !212)
!214 = !DILocation(line: 78, column: 36, scope: !212)
!215 = !DILocation(line: 78, column: 47, scope: !212)
!216 = !DILocation(line: 78, column: 7, scope: !212)
!217 = !DILocation(line: 78, column: 56, scope: !212)
!218 = !DILocation(line: 78, column: 7, scope: !210)
!219 = !DILocation(line: 79, column: 63, scope: !220)
!220 = distinct !DILexicalBlock(scope: !212, file: !65, line: 78, column: 62)
!221 = !DILocation(line: 79, column: 62, scope: !220)
!222 = !DILocation(line: 79, column: 52, scope: !223)
!223 = !DILexicalBlockFile(scope: !220, file: !65, discriminator: 1)
!224 = !DILocation(line: 79, column: 4, scope: !225)
!225 = !DILexicalBlockFile(scope: !220, file: !65, discriminator: 2)
!226 = !DILocation(line: 80, column: 4, scope: !220)
!227 = !DILocation(line: 82, column: 2, scope: !210)
!228 = !DILocation(line: 85, column: 10, scope: !64)
!229 = !DILocation(line: 86, column: 16, scope: !64)
!230 = !DILocation(line: 86, column: 20, scope: !64)
!231 = !DILocation(line: 86, column: 40, scope: !64)
!232 = !DILocation(line: 86, column: 46, scope: !64)
!233 = !DILocation(line: 86, column: 8, scope: !64)
!234 = !DILocation(line: 86, column: 6, scope: !64)
!235 = !DILocation(line: 89, column: 6, scope: !236)
!236 = distinct !DILexicalBlock(scope: !64, file: !65, line: 89, column: 6)
!237 = !DILocation(line: 89, column: 10, scope: !236)
!238 = !DILocation(line: 89, column: 6, scope: !64)
!239 = !DILocation(line: 90, column: 3, scope: !236)
!240 = !DILocation(line: 93, column: 6, scope: !241)
!241 = distinct !DILexicalBlock(scope: !64, file: !65, line: 93, column: 6)
!242 = !DILocation(line: 93, column: 10, scope: !241)
!243 = !DILocation(line: 93, column: 6, scope: !64)
!244 = !DILocation(line: 94, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !65, line: 94, column: 6)
!246 = distinct !DILexicalBlock(scope: !241, file: !65, line: 93, column: 15)
!247 = !DILocation(line: 94, column: 7, scope: !245)
!248 = !DILocation(line: 94, column: 12, scope: !245)
!249 = !DILocation(line: 94, column: 6, scope: !246)
!250 = !DILocation(line: 95, column: 4, scope: !245)
!251 = !DILocation(line: 96, column: 2, scope: !246)
!252 = !DILocation(line: 98, column: 2, scope: !64)
!253 = !DILocation(line: 99, column: 1, scope: !64)
!254 = distinct !DISubprogram(name: "socket_connect", scope: !65, file: !65, line: 102, type: !255, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !89)
!255 = !DISubroutineType(types: !256)
!256 = !{!3, !68, !114}
!257 = !DILocalVariable(name: "fd", arg: 1, scope: !254, file: !65, line: 102, type: !68)
!258 = !DILocation(line: 102, column: 20, scope: !254)
!259 = !DILocalVariable(name: "addr", arg: 2, scope: !254, file: !65, line: 102, type: !114)
!260 = !DILocation(line: 102, column: 49, scope: !254)
!261 = !DILocalVariable(name: "co", scope: !254, file: !65, line: 104, type: !70)
!262 = !DILocation(line: 104, column: 14, scope: !254)
!263 = !DILocation(line: 105, column: 2, scope: !254)
!264 = !DILocation(line: 106, column: 5, scope: !254)
!265 = !DILocation(line: 106, column: 12, scope: !254)
!266 = !DILocation(line: 106, column: 11, scope: !254)
!267 = !DILocation(line: 107, column: 29, scope: !254)
!268 = !DILocation(line: 107, column: 9, scope: !254)
!269 = !DILocation(line: 107, column: 2, scope: !254)
!270 = distinct !DISubprogram(name: "socket_state", scope: !65, file: !65, line: 111, type: !271, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !89)
!271 = !DISubroutineType(types: !272)
!272 = !{!3, !273, !447}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !23, line: 99, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !23, line: 78, size: 768, align: 64, elements: !276)
!276 = !{!277, !278, !280, !412, !417, !418, !428, !440, !442}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !275, file: !23, line: 79, baseType: !60, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !275, file: !23, line: 80, baseType: !279, size: 32, align: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !23, line: 63, baseType: !22)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !275, file: !23, line: 81, baseType: !281, size: 64, align: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !23, line: 112, size: 1280, align: 64, elements: !283)
!283 = !{!284, !296, !297, !298, !299, !307, !308, !309, !388, !389, !392, !403, !404, !405, !406, !407, !408, !409, !410}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !282, file: !23, line: 113, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !286, line: 109, baseType: !287)
!286 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !286, line: 106, size: 64, align: 64, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !287, file: !286, line: 108, baseType: !290, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !286, line: 97, size: 192, align: 64, elements: !292)
!292 = !{!293, !294, !295}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !291, file: !286, line: 99, baseType: !60, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !291, file: !286, line: 102, baseType: !290, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !291, file: !286, line: 103, baseType: !290, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !282, file: !23, line: 114, baseType: !285, size: 64, align: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !282, file: !23, line: 115, baseType: !285, size: 64, align: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !282, file: !23, line: 116, baseType: !285, size: 64, align: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !282, file: !23, line: 117, baseType: !300, size: 128, align: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !301, line: 62, baseType: !302)
!301 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !301, line: 60, size: 128, align: 64, elements: !303)
!303 = !{!304, !306}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !301, line: 61, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !302, file: !301, line: 61, baseType: !305, size: 64, align: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !282, file: !23, line: 121, baseType: !300, size: 128, align: 64, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !282, file: !23, line: 122, baseType: !300, size: 128, align: 64, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !282, file: !23, line: 124, baseType: !310, size: 64, align: 64, offset: 640)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !311, line: 31, baseType: !312)
!311 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !311, line: 39, size: 320, align: 64, elements: !314)
!314 = !{!315, !322, !323, !324, !328}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !313, file: !311, line: 40, baseType: !316, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !311, line: 33, size: 192, align: 64, elements: !318)
!318 = !{!319, !320, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !311, line: 34, baseType: !316, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !317, file: !311, line: 35, baseType: !316, size: 64, align: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !317, file: !311, line: 36, baseType: !44, size: 64, align: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !313, file: !311, line: 41, baseType: !316, size: 64, align: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !313, file: !311, line: 42, baseType: !47, size: 32, align: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !313, file: !311, line: 43, baseType: !325, size: 64, align: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !44}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !313, file: !311, line: 44, baseType: !329, size: 64, align: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !332, !44}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 48, baseType: !335)
!334 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 241, size: 1728, align: 64, elements: !337)
!336 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !358, !359, !360, !361, !364, !365, !367, !371, !374, !376, !377, !378, !379, !380, !383, !384}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !335, file: !336, line: 242, baseType: !68, size: 32, align: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !335, file: !336, line: 247, baseType: !45, size: 64, align: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !335, file: !336, line: 248, baseType: !45, size: 64, align: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !335, file: !336, line: 249, baseType: !45, size: 64, align: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !335, file: !336, line: 250, baseType: !45, size: 64, align: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !335, file: !336, line: 251, baseType: !45, size: 64, align: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !335, file: !336, line: 252, baseType: !45, size: 64, align: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !335, file: !336, line: 253, baseType: !45, size: 64, align: 64, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !335, file: !336, line: 254, baseType: !45, size: 64, align: 64, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !335, file: !336, line: 256, baseType: !45, size: 64, align: 64, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !335, file: !336, line: 257, baseType: !45, size: 64, align: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !335, file: !336, line: 258, baseType: !45, size: 64, align: 64, offset: 704)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !335, file: !336, line: 260, baseType: !351, size: 64, align: 64, offset: 768)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !336, line: 156, size: 192, align: 64, elements: !353)
!353 = !{!354, !355, !357}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !352, file: !336, line: 157, baseType: !351, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !352, file: !336, line: 158, baseType: !356, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !352, file: !336, line: 162, baseType: !68, size: 32, align: 32, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !335, file: !336, line: 262, baseType: !356, size: 64, align: 64, offset: 832)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !335, file: !336, line: 264, baseType: !68, size: 32, align: 32, offset: 896)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !335, file: !336, line: 268, baseType: !68, size: 32, align: 32, offset: 928)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !335, file: !336, line: 270, baseType: !362, size: 64, align: 64, offset: 960)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !101, line: 131, baseType: !363)
!363 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !335, file: !336, line: 274, baseType: !55, size: 16, align: 16, offset: 1024)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !335, file: !336, line: 275, baseType: !366, size: 8, align: 8, offset: 1040)
!366 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !335, file: !336, line: 276, baseType: !368, size: 8, align: 8, offset: 1048)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, align: 8, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 1)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !335, file: !336, line: 280, baseType: !372, size: 64, align: 64, offset: 1088)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !336, line: 150, baseType: null)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !335, file: !336, line: 289, baseType: !375, size: 64, align: 64, offset: 1152)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !101, line: 132, baseType: !363)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !335, file: !336, line: 297, baseType: !44, size: 64, align: 64, offset: 1216)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !335, file: !336, line: 298, baseType: !44, size: 64, align: 64, offset: 1280)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !335, file: !336, line: 299, baseType: !44, size: 64, align: 64, offset: 1344)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !335, file: !336, line: 300, baseType: !44, size: 64, align: 64, offset: 1408)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !335, file: !336, line: 302, baseType: !381, size: 64, align: 64, offset: 1472)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !382, line: 216, baseType: !60)
!382 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !335, file: !336, line: 303, baseType: !68, size: 32, align: 32, offset: 1536)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !335, file: !336, line: 305, baseType: !385, size: 160, align: 8, offset: 1568)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, align: 8, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 20)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !282, file: !23, line: 127, baseType: !285, size: 64, align: 64, offset: 704)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !282, file: !23, line: 128, baseType: !390, size: 64, align: 64, offset: 768)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !23, line: 128, flags: DIFlagFwdDecl)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !282, file: !23, line: 129, baseType: !393, size: 64, align: 64, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !23, line: 109, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !23, line: 102, size: 448, align: 64, elements: !396)
!396 = !{!397, !398, !399, !400, !401}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !395, file: !23, line: 103, baseType: !273, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !395, file: !23, line: 104, baseType: !273, size: 64, align: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !23, line: 105, baseType: !60, size: 64, align: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !395, file: !23, line: 106, baseType: !68, size: 32, align: 32, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !395, file: !23, line: 108, baseType: !402, size: 192, align: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !286, line: 104, baseType: !291)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !282, file: !23, line: 130, baseType: !47, size: 32, align: 32, offset: 896)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !282, file: !23, line: 131, baseType: !47, size: 32, align: 32, offset: 928)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !282, file: !23, line: 132, baseType: !68, size: 32, align: 32, offset: 960)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !282, file: !23, line: 135, baseType: !68, size: 32, align: 32, offset: 992)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !282, file: !23, line: 136, baseType: !273, size: 64, align: 64, offset: 1024)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !282, file: !23, line: 146, baseType: !60, size: 64, align: 64, offset: 1088)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !282, file: !23, line: 147, baseType: !60, size: 64, align: 64, offset: 1152)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !282, file: !23, line: 148, baseType: !411, size: 8, align: 8, offset: 1216)
!411 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !275, file: !23, line: 82, baseType: !413, size: 64, align: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!68, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !275, file: !23, line: 83, baseType: !44, size: 64, align: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !275, file: !23, line: 84, baseType: !419, size: 128, align: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !420, line: 31, baseType: !421)
!420 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !422, line: 30, size: 128, align: 64, elements: !423)
!422 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!423 = !{!424, !426}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !421, file: !422, line: 32, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !101, line: 139, baseType: !363)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !421, file: !422, line: 33, baseType: !427, size: 64, align: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !101, line: 141, baseType: !363)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !275, file: !23, line: 92, baseType: !429, size: 64, align: 32, offset: 448)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !275, file: !23, line: 85, size: 64, align: 32, elements: !430)
!430 = !{!431, !432, !433}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !429, file: !23, line: 86, baseType: !68, size: 32, align: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !429, file: !23, line: 87, baseType: !68, size: 32, align: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !429, file: !23, line: 91, baseType: !434, size: 64, align: 32)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !23, line: 88, size: 64, align: 32, elements: !435)
!435 = !{!436, !439}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !434, file: !23, line: 89, baseType: !437, size: 32, align: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !99, line: 263, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !101, line: 133, baseType: !68)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !434, file: !23, line: 90, baseType: !68, size: 32, align: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !275, file: !23, line: 93, baseType: !441, size: 64, align: 64, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !275, file: !23, line: 95, baseType: !443, size: 192, align: 64, offset: 576)
!443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !275, file: !23, line: 95, size: 192, align: 64, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !443, file: !23, line: 96, baseType: !402, size: 192, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !443, file: !23, line: 97, baseType: !300, size: 128, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!68, !273}
!450 = !DILocalVariable(name: "thread", arg: 1, scope: !270, file: !65, line: 111, type: !273)
!451 = !DILocation(line: 111, column: 25, scope: !270)
!452 = !DILocalVariable(name: "func", arg: 2, scope: !270, file: !65, line: 111, type: !447)
!453 = !DILocation(line: 111, column: 39, scope: !270)
!454 = !DILocalVariable(name: "status", scope: !270, file: !65, line: 113, type: !68)
!455 = !DILocation(line: 113, column: 6, scope: !270)
!456 = !DILocalVariable(name: "addrlen", scope: !270, file: !65, line: 114, type: !98)
!457 = !DILocation(line: 114, column: 12, scope: !270)
!458 = !DILocalVariable(name: "ret", scope: !270, file: !65, line: 115, type: !68)
!459 = !DILocation(line: 115, column: 6, scope: !270)
!460 = !DILocalVariable(name: "timer_min", scope: !270, file: !65, line: 116, type: !419)
!461 = !DILocation(line: 116, column: 12, scope: !270)
!462 = !DILocation(line: 119, column: 6, scope: !463)
!463 = distinct !DILexicalBlock(scope: !270, file: !65, line: 119, column: 6)
!464 = !DILocation(line: 119, column: 14, scope: !463)
!465 = !DILocation(line: 119, column: 19, scope: !463)
!466 = !DILocation(line: 119, column: 6, scope: !270)
!467 = !DILocation(line: 120, column: 19, scope: !468)
!468 = distinct !DILexicalBlock(scope: !463, file: !65, line: 119, column: 44)
!469 = !DILocation(line: 120, column: 3, scope: !468)
!470 = !DILocation(line: 121, column: 3, scope: !468)
!471 = !DILocation(line: 125, column: 10, scope: !270)
!472 = !DILocation(line: 126, column: 17, scope: !473)
!473 = distinct !DILexicalBlock(scope: !270, file: !65, line: 126, column: 6)
!474 = !DILocation(line: 126, column: 25, scope: !473)
!475 = !DILocation(line: 126, column: 27, scope: !473)
!476 = !DILocation(line: 126, column: 52, scope: !473)
!477 = !DILocation(line: 126, column: 6, scope: !473)
!478 = !DILocation(line: 126, column: 80, scope: !473)
!479 = !DILocation(line: 126, column: 6, scope: !270)
!480 = !DILocation(line: 127, column: 10, scope: !473)
!481 = !DILocation(line: 127, column: 9, scope: !473)
!482 = !DILocation(line: 127, column: 7, scope: !473)
!483 = !DILocation(line: 127, column: 3, scope: !473)
!484 = !DILocation(line: 130, column: 6, scope: !485)
!485 = distinct !DILexicalBlock(scope: !270, file: !65, line: 130, column: 6)
!486 = !DILocation(line: 130, column: 6, scope: !270)
!487 = !DILocation(line: 131, column: 19, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !65, line: 130, column: 11)
!489 = !DILocation(line: 131, column: 3, scope: !488)
!490 = !DILocation(line: 132, column: 3, scope: !488)
!491 = !DILocation(line: 140, column: 6, scope: !492)
!492 = distinct !DILexicalBlock(scope: !270, file: !65, line: 140, column: 6)
!493 = !DILocation(line: 140, column: 13, scope: !492)
!494 = !DILocation(line: 140, column: 6, scope: !270)
!495 = !DILocation(line: 141, column: 3, scope: !492)
!496 = !DILocation(line: 143, column: 6, scope: !497)
!497 = distinct !DILexicalBlock(scope: !270, file: !65, line: 143, column: 6)
!498 = !DILocation(line: 143, column: 13, scope: !497)
!499 = !DILocation(line: 143, column: 6, scope: !270)
!500 = !DILocation(line: 144, column: 29, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !65, line: 143, column: 28)
!502 = !DILocation(line: 144, column: 37, scope: !501)
!503 = !DILocation(line: 144, column: 15, scope: !501)
!504 = !DILocation(line: 144, column: 15, scope: !505)
!505 = !DILexicalBlockFile(scope: !501, file: !65, discriminator: 1)
!506 = !DILocation(line: 145, column: 20, scope: !501)
!507 = !DILocation(line: 145, column: 28, scope: !501)
!508 = !DILocation(line: 145, column: 36, scope: !501)
!509 = !DILocation(line: 145, column: 44, scope: !501)
!510 = !DILocation(line: 145, column: 53, scope: !501)
!511 = !DILocation(line: 146, column: 6, scope: !501)
!512 = !DILocation(line: 146, column: 14, scope: !501)
!513 = !DILocation(line: 146, column: 16, scope: !501)
!514 = !DILocation(line: 146, column: 21, scope: !501)
!515 = !DILocation(line: 146, column: 20, scope: !501)
!516 = !DILocation(line: 145, column: 3, scope: !501)
!517 = !DILocation(line: 147, column: 3, scope: !501)
!518 = !DILocation(line: 150, column: 18, scope: !270)
!519 = !DILocation(line: 150, column: 2, scope: !270)
!520 = !DILocation(line: 151, column: 2, scope: !270)
!521 = !DILocation(line: 152, column: 1, scope: !270)
!522 = distinct !DISubprogram(name: "timer_sub_now", scope: !420, file: !420, line: 57, type: !523, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !89)
!523 = !DISubroutineType(types: !524)
!524 = !{!419, !419}
!525 = !DILocalVariable(name: "a", arg: 1, scope: !522, file: !420, line: 57, type: !419)
!526 = !DILocation(line: 57, column: 25, scope: !522)
!527 = !DILocation(line: 59, column: 1, scope: !522)
!528 = distinct !{!528, !527}
!529 = !DILocation(line: 59, column: 4, scope: !530)
!530 = !DILexicalBlockFile(scope: !531, file: !420, discriminator: 1)
!531 = distinct !DILexicalBlock(scope: !522, file: !420, line: 59, column: 4)
!532 = !DILocation(line: 59, column: 11, scope: !530)
!533 = !DILocation(line: 59, column: 12, scope: !530)
!534 = !DILocation(line: 59, column: 17, scope: !530)
!535 = !DILocation(line: 59, column: 4, scope: !536)
!536 = !DILexicalBlockFile(scope: !537, file: !420, discriminator: 2)
!537 = distinct !DILexicalBlock(scope: !538, file: !420, line: 59, column: 17)
!538 = distinct !DILexicalBlock(scope: !531, file: !420, line: 59, column: 17)
!539 = !DILocation(line: 59, column: 19, scope: !536)
!540 = !DILocation(line: 59, column: 12, scope: !536)
!541 = !DILocation(line: 59, column: 24, scope: !536)
!542 = !DILocation(line: 59, column: 26, scope: !543)
!543 = !DILexicalBlockFile(scope: !531, file: !420, discriminator: 3)
!544 = !DILocation(line: 61, column: 9, scope: !522)
!545 = !DILocation(line: 61, column: 2, scope: !522)
!546 = distinct !DISubprogram(name: "timer_long", scope: !420, file: !420, line: 75, type: !547, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !89)
!547 = !DISubroutineType(types: !548)
!548 = !{!60, !419}
!549 = !DILocalVariable(name: "a", arg: 1, scope: !546, file: !420, line: 75, type: !419)
!550 = !DILocation(line: 75, column: 22, scope: !546)
!551 = !DILocation(line: 77, column: 26, scope: !546)
!552 = !DILocation(line: 77, column: 33, scope: !546)
!553 = !DILocation(line: 77, column: 63, scope: !546)
!554 = !DILocation(line: 77, column: 44, scope: !546)
!555 = !DILocation(line: 77, column: 2, scope: !546)
!556 = distinct !DISubprogram(name: "socket_connection_state", scope: !65, file: !65, line: 156, type: !557, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !89)
!557 = !DISubroutineType(types: !558)
!558 = !{!411, !68, !3, !273, !447, !60}
!559 = !DILocalVariable(name: "fd", arg: 1, scope: !556, file: !65, line: 156, type: !68)
!560 = !DILocation(line: 156, column: 29, scope: !556)
!561 = !DILocalVariable(name: "status", arg: 2, scope: !556, file: !65, line: 156, type: !3)
!562 = !DILocation(line: 156, column: 53, scope: !556)
!563 = !DILocalVariable(name: "thread", arg: 3, scope: !556, file: !65, line: 156, type: !273)
!564 = !DILocation(line: 156, column: 72, scope: !556)
!565 = !DILocalVariable(name: "func", arg: 4, scope: !556, file: !65, line: 157, type: !447)
!566 = !DILocation(line: 157, column: 14, scope: !556)
!567 = !DILocalVariable(name: "timeout", arg: 5, scope: !556, file: !65, line: 157, type: !60)
!568 = !DILocation(line: 157, column: 48, scope: !556)
!569 = !DILocalVariable(name: "checker", scope: !556, file: !65, line: 159, type: !44)
!570 = !DILocation(line: 159, column: 8, scope: !556)
!571 = !DILocation(line: 161, column: 14, scope: !556)
!572 = !DILocation(line: 161, column: 23, scope: !556)
!573 = !DILocation(line: 161, column: 10, scope: !556)
!574 = !DILocation(line: 163, column: 6, scope: !575)
!575 = distinct !DILexicalBlock(scope: !556, file: !65, line: 163, column: 6)
!576 = !DILocation(line: 163, column: 13, scope: !575)
!577 = !DILocation(line: 163, column: 32, scope: !575)
!578 = !DILocation(line: 164, column: 6, scope: !575)
!579 = !DILocation(line: 164, column: 13, scope: !575)
!580 = !DILocation(line: 163, column: 6, scope: !581)
!581 = !DILexicalBlockFile(scope: !556, file: !65, discriminator: 1)
!582 = !DILocation(line: 165, column: 20, scope: !583)
!583 = distinct !DILexicalBlock(scope: !575, file: !65, line: 164, column: 37)
!584 = !DILocation(line: 165, column: 28, scope: !583)
!585 = !DILocation(line: 165, column: 36, scope: !583)
!586 = !DILocation(line: 165, column: 42, scope: !583)
!587 = !DILocation(line: 165, column: 51, scope: !583)
!588 = !DILocation(line: 165, column: 55, scope: !583)
!589 = !DILocation(line: 165, column: 3, scope: !583)
!590 = !DILocation(line: 166, column: 3, scope: !583)
!591 = !DILocation(line: 169, column: 2, scope: !556)
!592 = !DILocation(line: 170, column: 1, scope: !556)
