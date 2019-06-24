; ModuleID = './line7-tcp.o.i'
source_filename = "./line7-tcp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.linger = type { i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }

@.str = private unnamed_addr constant [41 x i8] c"could not set TCP_NODELAY on socket (%s)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"problem creating socket (%s)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"error setting sockopt to interface (%s)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error binding to interface (%s)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"error setting MTU size (%s)\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"error setting transmit buffer size (%s)\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"error setting receive buffer size (%s)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"error setting priority (%s)\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"failed to set TOS info\00", align 1
@.str.9 = private unnamed_addr constant [103 x i8] c"TCP TFO Not Supported. Please check if \22/proc/sys/net/ipv4/tcp_fastopen\22 is 1. Disabling TFO for now.\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"problem connecting to host: %s\00", align 1
@stop = external global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"connect time out\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"select() failed: %s\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"getsockopt failed (%s)\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"could not connect (%s)\00", align 1

; Function Attrs: nounwind uwtable
define void @failure_close(i32) #0 !dbg !64 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linger, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !69, metadata !70), !dbg !71
  call void @llvm.dbg.declare(metadata %struct.linger* %3, metadata !72, metadata !70), !dbg !77
  %4 = getelementptr inbounds %struct.linger, %struct.linger* %3, i32 0, i32 0, !dbg !78
  store i32 1, i32* %4, align 4, !dbg !79
  %5 = getelementptr inbounds %struct.linger, %struct.linger* %3, i32 0, i32 1, !dbg !80
  store i32 0, i32* %5, align 4, !dbg !81
  %6 = load i32, i32* %2, align 4, !dbg !82
  %7 = bitcast %struct.linger* %3 to i8*, !dbg !84
  %8 = call i32 @setsockopt(i32 %6, i32 1, i32 13, i8* %7, i32 8) #5, !dbg !85
  %9 = icmp eq i32 %8, -1, !dbg !86
  br i1 %9, label %10, label %15, !dbg !87

; <label>:10:                                     ; preds = %1
  %11 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0)) #5, !dbg !88
  %12 = call i32* @__errno_location() #1, !dbg !89
  %13 = load i32, i32* %12, align 4, !dbg !91
  %14 = call i8* @strerror(i32 %13) #5, !dbg !92
  call void (i8*, ...) @set_error(i8* %11, i8* %14), !dbg !94
  br label %15, !dbg !96

; <label>:15:                                     ; preds = %10, %1
  %16 = load i32, i32* %2, align 4, !dbg !97
  %17 = call i32 @close(i32 %16), !dbg !98
  ret void, !dbg !99
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #2

declare void @set_error(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i32 @close(i32) #3

; Function Attrs: nounwind uwtable
define i32 @set_no_delay(i32) #0 !dbg !100 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !103, metadata !70), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %4, metadata !105, metadata !70), !dbg !106
  store i32 1, i32* %4, align 4, !dbg !106
  %5 = load i32, i32* %3, align 4, !dbg !107
  %6 = bitcast i32* %4 to i8*, !dbg !109
  %7 = call i32 @setsockopt(i32 %5, i32 6, i32 1, i8* %6, i32 4) #5, !dbg !110
  %8 = icmp eq i32 %7, -1, !dbg !111
  br i1 %8, label %9, label %14, !dbg !112

; <label>:9:                                      ; preds = %1
  %10 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0)) #5, !dbg !113
  %11 = call i32* @__errno_location() #1, !dbg !115
  %12 = load i32, i32* %11, align 4, !dbg !117
  %13 = call i8* @strerror(i32 %12) #5, !dbg !118
  call void (i8*, ...) @set_error(i8* %10, i8* %13), !dbg !120
  store i32 -1, i32* %2, align 4, !dbg !122
  br label %15, !dbg !122

; <label>:14:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !123
  br label %15, !dbg !123

; <label>:15:                                     ; preds = %14, %9
  %16 = load i32, i32* %2, align 4, !dbg !124
  ret i32 %16, !dbg !124
}

; Function Attrs: nounwind uwtable
define i32 @create_socket(%struct.sockaddr*, %struct.addrinfo*, i32, i32, i32, i8 signext, i32, i32) #0 !dbg !125 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %10, metadata !155, metadata !70), !dbg !156
  store %struct.addrinfo* %1, %struct.addrinfo** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %11, metadata !157, metadata !70), !dbg !158
  store i32 %2, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !159, metadata !70), !dbg !160
  store i32 %3, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !161, metadata !70), !dbg !162
  store i32 %4, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !163, metadata !70), !dbg !164
  store i8 %5, i8* %15, align 1
  call void @llvm.dbg.declare(metadata i8* %15, metadata !165, metadata !70), !dbg !166
  store i32 %6, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !167, metadata !70), !dbg !168
  store i32 %7, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !169, metadata !70), !dbg !170
  call void @llvm.dbg.declare(metadata i32* %18, metadata !171, metadata !70), !dbg !172
  store i32 -1, i32* %18, align 4, !dbg !172
  %21 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !173
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 1, !dbg !174
  %23 = load i32, i32* %22, align 4, !dbg !174
  %24 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !175
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 2, !dbg !176
  %26 = load i32, i32* %25, align 8, !dbg !176
  %27 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !177
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 3, !dbg !178
  %29 = load i32, i32* %28, align 4, !dbg !178
  %30 = call i32 @socket(i32 %23, i32 %26, i32 %29) #5, !dbg !179
  store i32 %30, i32* %18, align 4, !dbg !180
  %31 = load i32, i32* %18, align 4, !dbg !181
  %32 = icmp eq i32 %31, -1, !dbg !183
  br i1 %32, label %33, label %38, !dbg !184

; <label>:33:                                     ; preds = %8
  %34 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !185
  %35 = call i32* @__errno_location() #1, !dbg !187
  %36 = load i32, i32* %35, align 4, !dbg !189
  %37 = call i8* @strerror(i32 %36) #5, !dbg !190
  call void (i8*, ...) @set_error(i8* %34, i8* %37), !dbg !192
  store i32 -4, i32* %9, align 4, !dbg !194
  br label %155, !dbg !194

; <label>:38:                                     ; preds = %8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8, !dbg !195
  %40 = icmp ne %struct.sockaddr* %39, null, !dbg !195
  br i1 %40, label %41, label %66, !dbg !197

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %19, metadata !198, metadata !70), !dbg !200
  store i32 1, i32* %19, align 4, !dbg !200
  %42 = load i32, i32* %18, align 4, !dbg !201
  %43 = bitcast i32* %19 to i8*, !dbg !203
  %44 = call i32 @setsockopt(i32 %42, i32 1, i32 2, i8* %43, i32 4) #5, !dbg !204
  %45 = icmp eq i32 %44, -1, !dbg !205
  br i1 %45, label %46, label %53, !dbg !206

; <label>:46:                                     ; preds = %41
  %47 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !207
  %48 = call i32* @__errno_location() #1, !dbg !209
  %49 = load i32, i32* %48, align 4, !dbg !211
  %50 = call i8* @strerror(i32 %49) #5, !dbg !212
  call void (i8*, ...) @set_error(i8* %47, i8* %50), !dbg !214
  %51 = load i32, i32* %18, align 4, !dbg !216
  %52 = call i32 @close(i32 %51), !dbg !217
  store i32 -4, i32* %9, align 4, !dbg !218
  br label %155, !dbg !218

; <label>:53:                                     ; preds = %41
  %54 = load i32, i32* %18, align 4, !dbg !219
  %55 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8, !dbg !221
  %56 = call i32 @bind(i32 %54, %struct.sockaddr* %55, i32 16) #5, !dbg !222
  %57 = icmp eq i32 %56, -1, !dbg !223
  br i1 %57, label %58, label %65, !dbg !224

; <label>:58:                                     ; preds = %53
  %59 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #5, !dbg !225
  %60 = call i32* @__errno_location() #1, !dbg !227
  %61 = load i32, i32* %60, align 4, !dbg !229
  %62 = call i8* @strerror(i32 %61) #5, !dbg !230
  call void (i8*, ...) @set_error(i8* %59, i8* %62), !dbg !232
  %63 = load i32, i32* %18, align 4, !dbg !234
  %64 = call i32 @close(i32 %63), !dbg !235
  store i32 -4, i32* %9, align 4, !dbg !236
  br label %155, !dbg !236

; <label>:65:                                     ; preds = %53
  br label %66, !dbg !237

; <label>:66:                                     ; preds = %65, %38
  %67 = load i32, i32* %14, align 4, !dbg !238
  %68 = icmp sge i32 %67, 0, !dbg !240
  br i1 %68, label %69, label %82, !dbg !241

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %18, align 4, !dbg !242
  %71 = bitcast i32* %14 to i8*, !dbg !245
  %72 = call i32 @setsockopt(i32 %70, i32 6, i32 2, i8* %71, i32 4) #5, !dbg !246
  %73 = icmp eq i32 %72, -1, !dbg !247
  br i1 %73, label %74, label %81, !dbg !248

; <label>:74:                                     ; preds = %69
  %75 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)) #5, !dbg !249
  %76 = call i32* @__errno_location() #1, !dbg !251
  %77 = load i32, i32* %76, align 4, !dbg !253
  %78 = call i8* @strerror(i32 %77) #5, !dbg !254
  call void (i8*, ...) @set_error(i8* %75, i8* %78), !dbg !256
  %79 = load i32, i32* %18, align 4, !dbg !258
  %80 = call i32 @close(i32 %79), !dbg !259
  store i32 -4, i32* %9, align 4, !dbg !260
  br label %155, !dbg !260

; <label>:81:                                     ; preds = %69
  br label %82, !dbg !261

; <label>:82:                                     ; preds = %81, %66
  %83 = load i8, i8* %15, align 1, !dbg !262
  %84 = icmp ne i8 %83, 0, !dbg !262
  br i1 %84, label %85, label %92, !dbg !264

; <label>:85:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata i32* %20, metadata !265, metadata !70), !dbg !267
  store i32 -1, i32* %20, align 4, !dbg !267
  %86 = load i32, i32* %18, align 4, !dbg !268
  %87 = call i32 @set_no_delay(i32 %86), !dbg !270
  store i32 %87, i32* %20, align 4, !dbg !271
  %88 = icmp ne i32 %87, 0, !dbg !272
  br i1 %88, label %89, label %91, !dbg !273

; <label>:89:                                     ; preds = %85
  %90 = load i32, i32* %20, align 4, !dbg !274
  store i32 %90, i32* %9, align 4, !dbg !275
  br label %155, !dbg !275

; <label>:91:                                     ; preds = %85
  br label %92, !dbg !276

; <label>:92:                                     ; preds = %91, %82
  %93 = load i32, i32* %13, align 4, !dbg !277
  %94 = icmp sgt i32 %93, 0, !dbg !279
  br i1 %94, label %95, label %108, !dbg !280

; <label>:95:                                     ; preds = %92
  %96 = load i32, i32* %18, align 4, !dbg !281
  %97 = bitcast i32* %13 to i8*, !dbg !284
  %98 = call i32 @setsockopt(i32 %96, i32 1, i32 7, i8* %97, i32 4) #5, !dbg !285
  %99 = icmp eq i32 %98, -1, !dbg !286
  br i1 %99, label %100, label %107, !dbg !287

; <label>:100:                                    ; preds = %95
  %101 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0)) #5, !dbg !288
  %102 = call i32* @__errno_location() #1, !dbg !290
  %103 = load i32, i32* %102, align 4, !dbg !292
  %104 = call i8* @strerror(i32 %103) #5, !dbg !293
  call void (i8*, ...) @set_error(i8* %101, i8* %104), !dbg !295
  %105 = load i32, i32* %18, align 4, !dbg !297
  %106 = call i32 @close(i32 %105), !dbg !298
  store i32 -4, i32* %9, align 4, !dbg !299
  br label %155, !dbg !299

; <label>:107:                                    ; preds = %95
  br label %108, !dbg !300

; <label>:108:                                    ; preds = %107, %92
  %109 = load i32, i32* %12, align 4, !dbg !301
  %110 = icmp sgt i32 %109, 0, !dbg !303
  br i1 %110, label %111, label %124, !dbg !304

; <label>:111:                                    ; preds = %108
  %112 = load i32, i32* %18, align 4, !dbg !305
  %113 = bitcast i32* %12 to i8*, !dbg !308
  %114 = call i32 @setsockopt(i32 %112, i32 1, i32 8, i8* %113, i32 4) #5, !dbg !309
  %115 = icmp eq i32 %114, -1, !dbg !310
  br i1 %115, label %116, label %123, !dbg !311

; <label>:116:                                    ; preds = %111
  %117 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0)) #5, !dbg !312
  %118 = call i32* @__errno_location() #1, !dbg !314
  %119 = load i32, i32* %118, align 4, !dbg !316
  %120 = call i8* @strerror(i32 %119) #5, !dbg !317
  call void (i8*, ...) @set_error(i8* %117, i8* %120), !dbg !319
  %121 = load i32, i32* %18, align 4, !dbg !321
  %122 = call i32 @close(i32 %121), !dbg !322
  store i32 -4, i32* %9, align 4, !dbg !323
  br label %155, !dbg !323

; <label>:123:                                    ; preds = %111
  br label %124, !dbg !324

; <label>:124:                                    ; preds = %123, %108
  %125 = load i32, i32* %16, align 4, !dbg !325
  %126 = icmp sge i32 %125, 0, !dbg !327
  br i1 %126, label %127, label %140, !dbg !328

; <label>:127:                                    ; preds = %124
  %128 = load i32, i32* %18, align 4, !dbg !329
  %129 = bitcast i32* %16 to i8*, !dbg !332
  %130 = call i32 @setsockopt(i32 %128, i32 1, i32 12, i8* %129, i32 4) #5, !dbg !333
  %131 = icmp eq i32 %130, -1, !dbg !334
  br i1 %131, label %132, label %139, !dbg !335

; <label>:132:                                    ; preds = %127
  %133 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0)) #5, !dbg !336
  %134 = call i32* @__errno_location() #1, !dbg !338
  %135 = load i32, i32* %134, align 4, !dbg !340
  %136 = call i8* @strerror(i32 %135) #5, !dbg !341
  call void (i8*, ...) @set_error(i8* %133, i8* %136), !dbg !343
  %137 = load i32, i32* %18, align 4, !dbg !345
  %138 = call i32 @close(i32 %137), !dbg !346
  store i32 -4, i32* %9, align 4, !dbg !347
  br label %155, !dbg !347

; <label>:139:                                    ; preds = %127
  br label %140, !dbg !348

; <label>:140:                                    ; preds = %139, %124
  %141 = load i32, i32* %17, align 4, !dbg !349
  %142 = icmp sge i32 %141, 0, !dbg !351
  br i1 %142, label %143, label %153, !dbg !352

; <label>:143:                                    ; preds = %140
  %144 = load i32, i32* %18, align 4, !dbg !353
  %145 = bitcast i32* %17 to i8*, !dbg !356
  %146 = call i32 @setsockopt(i32 %144, i32 0, i32 1, i8* %145, i32 4) #5, !dbg !357
  %147 = icmp eq i32 %146, -1, !dbg !358
  br i1 %147, label %148, label %152, !dbg !359

; <label>:148:                                    ; preds = %143
  %149 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #5, !dbg !360
  call void (i8*, ...) @set_error(i8* %149), !dbg !362
  %150 = load i32, i32* %18, align 4, !dbg !364
  %151 = call i32 @close(i32 %150), !dbg !365
  store i32 -4, i32* %9, align 4, !dbg !366
  br label %155, !dbg !366

; <label>:152:                                    ; preds = %143
  br label %153, !dbg !367

; <label>:153:                                    ; preds = %152, %140
  %154 = load i32, i32* %18, align 4, !dbg !368
  store i32 %154, i32* %9, align 4, !dbg !369
  br label %155, !dbg !369

; <label>:155:                                    ; preds = %153, %148, %132, %116, %100, %89, %74, %58, %46, %33
  %156 = load i32, i32* %9, align 4, !dbg !370
  ret i32 %156, !dbg !370
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #2

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @connect_to(i32, %struct.addrinfo*, double, i8*, i8*, i32, i8*) #0 !dbg !371 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.timeval, align 8
  %18 = alloca %struct.fd_set, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !375, metadata !70), !dbg !376
  store %struct.addrinfo* %1, %struct.addrinfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %10, metadata !377, metadata !70), !dbg !378
  store double %2, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !379, metadata !70), !dbg !380
  store i8* %3, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !381, metadata !70), !dbg !382
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !383, metadata !70), !dbg !384
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !385, metadata !70), !dbg !386
  store i8* %6, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !387, metadata !70), !dbg !388
  call void @llvm.dbg.declare(metadata i32* %16, metadata !389, metadata !70), !dbg !390
  store i32 -1, i32* %16, align 4, !dbg !390
  call void @llvm.dbg.declare(metadata %struct.timeval* %17, metadata !391, metadata !70), !dbg !399
  call void @llvm.dbg.declare(metadata %struct.fd_set* %18, metadata !400, metadata !70), !dbg !408
  %24 = load i32, i32* %9, align 4, !dbg !409
  %25 = call i32 @set_fd_nonblocking(i32 %24), !dbg !411
  %26 = icmp eq i32 %25, -1, !dbg !412
  br i1 %26, label %27, label %28, !dbg !413

; <label>:27:                                     ; preds = %7
  store i32 -4, i32* %8, align 4, !dbg !414
  br label %173, !dbg !414

; <label>:28:                                     ; preds = %7
  br label %29, !dbg !415, !llvm.loop !416

; <label>:29:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata i32* %19, metadata !417, metadata !70), !dbg !419
  call void @llvm.dbg.declare(metadata i32* %20, metadata !420, metadata !70), !dbg !421
  %30 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0, !dbg !422
  %31 = getelementptr inbounds [16 x i64], [16 x i64]* %30, i64 0, i64 0, !dbg !424
  %32 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %31) #5, !dbg !425, !srcloc !426
  %33 = extractvalue { i64, i64* } %32, 0, !dbg !425
  %34 = extractvalue { i64, i64* } %32, 1, !dbg !425
  %35 = trunc i64 %33 to i32, !dbg !425
  store i32 %35, i32* %19, align 4, !dbg !425
  %36 = ptrtoint i64* %34 to i64, !dbg !425
  %37 = trunc i64 %36 to i32, !dbg !425
  store i32 %37, i32* %20, align 4, !dbg !425
  br label %38, !dbg !427

; <label>:38:                                     ; preds = %29
  %39 = load i32, i32* %9, align 4, !dbg !428
  %40 = srem i32 %39, 64, !dbg !429
  %41 = zext i32 %40 to i64, !dbg !430
  %42 = shl i64 1, %41, !dbg !430
  %43 = load i32, i32* %9, align 4, !dbg !428
  %44 = sdiv i32 %43, 64, !dbg !429
  %45 = sext i32 %44 to i64, !dbg !431
  %46 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %18, i32 0, i32 0, !dbg !432
  %47 = getelementptr inbounds [16 x i64], [16 x i64]* %46, i64 0, i64 %45, !dbg !431
  %48 = load i64, i64* %47, align 8, !dbg !433
  %49 = or i64 %48, %42, !dbg !433
  store i64 %49, i64* %47, align 8, !dbg !433
  %50 = load double, double* %11, align 8, !dbg !434
  %51 = fdiv double %50, 1.000000e+03, !dbg !435
  %52 = fptosi double %51 to i64, !dbg !436
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0, !dbg !437
  store i64 %52, i64* %53, align 8, !dbg !438
  %54 = load double, double* %11, align 8, !dbg !439
  %55 = fmul double %54, 1.000000e+03, !dbg !440
  %56 = fptosi double %55 to i64, !dbg !441
  %57 = srem i64 %56, 1000000, !dbg !442
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1, !dbg !443
  store i64 %57, i64* %58, align 8, !dbg !444
  %59 = load i8*, i8** %12, align 8, !dbg !445
  %60 = icmp ne i8* %59, null, !dbg !445
  br i1 %60, label %61, label %98, !dbg !447

; <label>:61:                                     ; preds = %38
  %62 = load i8*, i8** %12, align 8, !dbg !448
  %63 = load i8, i8* %62, align 1, !dbg !450
  %64 = sext i8 %63 to i32, !dbg !450
  %65 = icmp ne i32 %64, 0, !dbg !450
  br i1 %65, label %66, label %98, !dbg !451

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* %9, align 4, !dbg !452
  %68 = load i8*, i8** %13, align 8, !dbg !454
  %69 = load i32, i32* %14, align 4, !dbg !455
  %70 = sext i32 %69 to i64, !dbg !455
  %71 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !456
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 5, !dbg !457
  %73 = load %struct.sockaddr*, %struct.sockaddr** %72, align 8, !dbg !457
  %74 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !458
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 4, !dbg !459
  %76 = load i32, i32* %75, align 8, !dbg !459
  %77 = call i64 @sendto(i32 %67, i8* %68, i64 %70, i32 536870912, %struct.sockaddr* %73, i32 %76), !dbg !460
  %78 = trunc i64 %77 to i32, !dbg !460
  store i32 %78, i32* %16, align 4, !dbg !461
  %79 = load i32, i32* %16, align 4, !dbg !462
  %80 = load i32, i32* %14, align 4, !dbg !464
  %81 = icmp eq i32 %79, %80, !dbg !465
  br i1 %81, label %82, label %84, !dbg !466

; <label>:82:                                     ; preds = %66
  %83 = load i8*, i8** %15, align 8, !dbg !467
  store i8 1, i8* %83, align 1, !dbg !468
  br label %84, !dbg !469

; <label>:84:                                     ; preds = %82, %66
  %85 = call i32* @__errno_location() #1, !dbg !470
  %86 = load i32, i32* %85, align 4, !dbg !472
  %87 = icmp eq i32 %86, 0, !dbg !473
  br i1 %87, label %88, label %89, !dbg !474

; <label>:88:                                     ; preds = %84
  store i32 0, i32* %8, align 4, !dbg !475
  br label %173, !dbg !475

; <label>:89:                                     ; preds = %84
  %90 = call i32* @__errno_location() #1, !dbg !476
  %91 = load i32, i32* %90, align 4, !dbg !478
  %92 = icmp eq i32 %91, 95, !dbg !479
  br i1 %92, label %93, label %97, !dbg !480

; <label>:93:                                     ; preds = %89
  %94 = call i8* @gettext(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.9, i32 0, i32 0)) #5, !dbg !481
  %95 = call i32 (i8*, ...) @printf(i8* %94), !dbg !483
  %96 = load i8*, i8** %12, align 8, !dbg !485
  store i8 0, i8* %96, align 1, !dbg !486
  br label %99, !dbg !487

; <label>:97:                                     ; preds = %89
  br label %125, !dbg !488

; <label>:98:                                     ; preds = %61, %38
  call void @llvm.dbg.declare(metadata i32* %21, metadata !489, metadata !70), !dbg !491
  store i32 -1, i32* %21, align 4, !dbg !491
  br label %99, !dbg !492

; <label>:99:                                     ; preds = %98, %93
  %100 = load i32, i32* %9, align 4, !dbg !493
  %101 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !494
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 5, !dbg !495
  %103 = load %struct.sockaddr*, %struct.sockaddr** %102, align 8, !dbg !495
  %104 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !496
  %105 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %104, i32 0, i32 4, !dbg !497
  %106 = load i32, i32* %105, align 8, !dbg !497
  %107 = call i32 @connect(i32 %100, %struct.sockaddr* %103, i32 %106), !dbg !498
  store i32 %107, i32* %21, align 4, !dbg !499
  %108 = load i32, i32* %21, align 4, !dbg !500
  %109 = icmp eq i32 %108, 0, !dbg !502
  br i1 %109, label %110, label %111, !dbg !503

; <label>:110:                                    ; preds = %99
  store i32 0, i32* %8, align 4, !dbg !504
  br label %173, !dbg !504

; <label>:111:                                    ; preds = %99
  %112 = load i32, i32* %21, align 4, !dbg !506
  %113 = icmp eq i32 %112, -1, !dbg !508
  br i1 %113, label %114, label %124, !dbg !509

; <label>:114:                                    ; preds = %111
  %115 = call i32* @__errno_location() #1, !dbg !510
  %116 = load i32, i32* %115, align 4, !dbg !513
  %117 = icmp ne i32 %116, 115, !dbg !514
  br i1 %117, label %118, label %123, !dbg !515

; <label>:118:                                    ; preds = %114
  %119 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0)) #5, !dbg !516
  %120 = call i32* @__errno_location() #1, !dbg !518
  %121 = load i32, i32* %120, align 4, !dbg !520
  %122 = call i8* @strerror(i32 %121) #5, !dbg !521
  call void (i8*, ...) @set_error(i8* %119, i8* %122), !dbg !523
  store i32 -4, i32* %8, align 4, !dbg !525
  br label %173, !dbg !525

; <label>:123:                                    ; preds = %114
  br label %124, !dbg !526

; <label>:124:                                    ; preds = %123, %111
  br label %125

; <label>:125:                                    ; preds = %124, %97
  %126 = load volatile i32, i32* @stop, align 4, !dbg !527
  %127 = icmp ne i32 %126, 0, !dbg !527
  br i1 %127, label %128, label %129, !dbg !529

; <label>:128:                                    ; preds = %125
  store i32 -3, i32* %8, align 4, !dbg !530
  br label %173, !dbg !530

; <label>:129:                                    ; preds = %125
  %130 = load i32, i32* %9, align 4, !dbg !531
  %131 = add nsw i32 %130, 1, !dbg !532
  %132 = call i32 @select(i32 %131, %struct.fd_set* null, %struct.fd_set* %18, %struct.fd_set* null, %struct.timeval* %17), !dbg !533
  store i32 %132, i32* %16, align 4, !dbg !534
  %133 = load i32, i32* %16, align 4, !dbg !535
  %134 = icmp eq i32 %133, 0, !dbg !537
  br i1 %134, label %135, label %137, !dbg !538

; <label>:135:                                    ; preds = %129
  %136 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)) #5, !dbg !539
  call void (i8*, ...) @set_error(i8* %136), !dbg !541
  store i32 -2, i32* %8, align 4, !dbg !543
  br label %173, !dbg !543

; <label>:137:                                    ; preds = %129
  %138 = load i32, i32* %16, align 4, !dbg !544
  %139 = icmp eq i32 %138, -1, !dbg !546
  br i1 %139, label %140, label %150, !dbg !547

; <label>:140:                                    ; preds = %137
  %141 = call i32* @__errno_location() #1, !dbg !548
  %142 = load i32, i32* %141, align 4, !dbg !551
  %143 = icmp eq i32 %142, 4, !dbg !552
  br i1 %143, label %144, label %145, !dbg !553

; <label>:144:                                    ; preds = %140
  store i32 -3, i32* %8, align 4, !dbg !554
  br label %173, !dbg !554

; <label>:145:                                    ; preds = %140
  %146 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #5, !dbg !555
  %147 = call i32* @__errno_location() #1, !dbg !556
  %148 = load i32, i32* %147, align 4, !dbg !558
  %149 = call i8* @strerror(i32 %148) #5, !dbg !559
  call void (i8*, ...) @set_error(i8* %146, i8* %149), !dbg !561
  store i32 -4, i32* %8, align 4, !dbg !563
  br label %173, !dbg !563

; <label>:150:                                    ; preds = %137
  call void @llvm.dbg.declare(metadata i32* %22, metadata !564, metadata !70), !dbg !566
  store i32 0, i32* %22, align 4, !dbg !566
  call void @llvm.dbg.declare(metadata i32* %23, metadata !567, metadata !70), !dbg !568
  store i32 4, i32* %23, align 4, !dbg !568
  %151 = load i32, i32* %9, align 4, !dbg !569
  %152 = bitcast i32* %22 to i8*, !dbg !571
  %153 = call i32 @getsockopt(i32 %151, i32 1, i32 4, i8* %152, i32* %23) #5, !dbg !572
  %154 = icmp eq i32 %153, -1, !dbg !573
  br i1 %154, label %155, label %160, !dbg !574

; <label>:155:                                    ; preds = %150
  %156 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0)) #5, !dbg !575
  %157 = call i32* @__errno_location() #1, !dbg !577
  %158 = load i32, i32* %157, align 4, !dbg !579
  %159 = call i8* @strerror(i32 %158) #5, !dbg !580
  call void (i8*, ...) @set_error(i8* %156, i8* %159), !dbg !582
  store i32 -4, i32* %8, align 4, !dbg !584
  br label %173, !dbg !584

; <label>:160:                                    ; preds = %150
  %161 = load i32, i32* %22, align 4, !dbg !585
  %162 = icmp eq i32 %161, 0, !dbg !587
  br i1 %162, label %163, label %164, !dbg !588

; <label>:163:                                    ; preds = %160
  store i32 0, i32* %8, align 4, !dbg !589
  br label %173, !dbg !589

; <label>:164:                                    ; preds = %160
  %165 = load i32, i32* %22, align 4, !dbg !590
  %166 = call i32* @__errno_location() #1, !dbg !591
  store i32 %165, i32* %166, align 4, !dbg !592
  br label %167

; <label>:167:                                    ; preds = %164
  br label %168

; <label>:168:                                    ; preds = %167
  %169 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0)) #5, !dbg !593
  %170 = call i32* @__errno_location() #1, !dbg !594
  %171 = load i32, i32* %170, align 4, !dbg !596
  %172 = call i8* @strerror(i32 %171) #5, !dbg !597
  call void (i8*, ...) @set_error(i8* %169, i8* %172), !dbg !599
  store i32 -4, i32* %8, align 4, !dbg !601
  br label %173, !dbg !601

; <label>:173:                                    ; preds = %168, %163, %155, %145, %144, %135, %128, %118, %110, %88, %27
  %174 = load i32, i32* %8, align 4, !dbg !602
  ret i32 %174, !dbg !602
}

declare i32 @set_fd_nonblocking(i32) #3

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #3

declare i32 @printf(i8*, ...) #3

declare i32 @connect(i32, %struct.sockaddr*, i32) #3

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #3

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !54)
!1 = !DIFile(filename: "line7-tcp.o.i", directory: "/home/lichi/Desktop/httping/task1")
!2 = !{!3, !32}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 40, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/httping/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!6 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!7 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!8 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!9 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!10 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!11 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!12 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!13 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!14 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!15 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!16 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!17 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!18 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!19 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!20 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!21 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!22 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!23 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!24 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!25 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!26 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!27 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!28 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!29 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!30 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!31 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 175, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/httping/task1")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !DIEnumerator(name: "MSG_OOB", value: 1)
!36 = !DIEnumerator(name: "MSG_PEEK", value: 2)
!37 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4)
!38 = !DIEnumerator(name: "MSG_CTRUNC", value: 8)
!39 = !DIEnumerator(name: "MSG_PROXY", value: 16)
!40 = !DIEnumerator(name: "MSG_TRUNC", value: 32)
!41 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64)
!42 = !DIEnumerator(name: "MSG_EOR", value: 128)
!43 = !DIEnumerator(name: "MSG_WAITALL", value: 256)
!44 = !DIEnumerator(name: "MSG_FIN", value: 512)
!45 = !DIEnumerator(name: "MSG_SYN", value: 1024)
!46 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048)
!47 = !DIEnumerator(name: "MSG_RST", value: 4096)
!48 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192)
!49 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384)
!50 = !DIEnumerator(name: "MSG_MORE", value: 32768)
!51 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536)
!52 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912)
!53 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824)
!54 = !{!55, !57, !60, !59}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !58, line: 54, baseType: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/httping/task1")
!59 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!60 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!61 = !{i32 2, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!64 = distinct !DISubprogram(name: "failure_close", scope: !65, file: !65, line: 22, type: !66, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !68)
!65 = !DIFile(filename: "tcp.c", directory: "/home/lichi/Desktop/httping/task1")
!66 = !DISubroutineType(types: !67)
!67 = !{null, !60}
!68 = !{}
!69 = !DILocalVariable(name: "fd", arg: 1, scope: !64, file: !65, line: 22, type: !60)
!70 = !DIExpression()
!71 = !DILocation(line: 22, column: 24, scope: !64)
!72 = !DILocalVariable(name: "sl", scope: !64, file: !65, line: 24, type: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linger", file: !33, line: 383, size: 64, align: 32, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "l_onoff", scope: !73, file: !33, line: 385, baseType: !60, size: 32, align: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "l_linger", scope: !73, file: !33, line: 386, baseType: !60, size: 32, align: 32, offset: 32)
!77 = !DILocation(line: 24, column: 16, scope: !64)
!78 = !DILocation(line: 26, column: 5, scope: !64)
!79 = !DILocation(line: 26, column: 13, scope: !64)
!80 = !DILocation(line: 27, column: 5, scope: !64)
!81 = !DILocation(line: 27, column: 14, scope: !64)
!82 = !DILocation(line: 29, column: 17, scope: !83)
!83 = distinct !DILexicalBlock(scope: !64, file: !65, line: 29, column: 6)
!84 = !DILocation(line: 29, column: 43, scope: !83)
!85 = !DILocation(line: 29, column: 6, scope: !83)
!86 = !DILocation(line: 29, column: 59, scope: !83)
!87 = !DILocation(line: 29, column: 6, scope: !64)
!88 = !DILocation(line: 30, column: 13, scope: !83)
!89 = !DILocation(line: 30, column: 76, scope: !90)
!90 = !DILexicalBlockFile(scope: !83, file: !65, discriminator: 1)
!91 = !DILocation(line: 30, column: 75, scope: !83)
!92 = !DILocation(line: 30, column: 66, scope: !93)
!93 = !DILexicalBlockFile(scope: !83, file: !65, discriminator: 2)
!94 = !DILocation(line: 30, column: 3, scope: !95)
!95 = !DILexicalBlockFile(scope: !83, file: !65, discriminator: 3)
!96 = !DILocation(line: 30, column: 3, scope: !83)
!97 = !DILocation(line: 32, column: 8, scope: !64)
!98 = !DILocation(line: 32, column: 2, scope: !64)
!99 = !DILocation(line: 33, column: 1, scope: !64)
!100 = distinct !DISubprogram(name: "set_no_delay", scope: !65, file: !65, line: 35, type: !101, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !68)
!101 = !DISubroutineType(types: !102)
!102 = !{!60, !60}
!103 = !DILocalVariable(name: "fd", arg: 1, scope: !100, file: !65, line: 35, type: !60)
!104 = !DILocation(line: 35, column: 22, scope: !100)
!105 = !DILocalVariable(name: "flag", scope: !100, file: !65, line: 37, type: !60)
!106 = !DILocation(line: 37, column: 6, scope: !100)
!107 = !DILocation(line: 39, column: 17, scope: !108)
!108 = distinct !DILexicalBlock(scope: !100, file: !65, line: 39, column: 6)
!109 = !DILocation(line: 39, column: 46, scope: !108)
!110 = !DILocation(line: 39, column: 6, scope: !108)
!111 = !DILocation(line: 39, column: 74, scope: !108)
!112 = !DILocation(line: 39, column: 6, scope: !100)
!113 = !DILocation(line: 41, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !108, file: !65, line: 40, column: 2)
!115 = !DILocation(line: 41, column: 76, scope: !116)
!116 = !DILexicalBlockFile(scope: !114, file: !65, discriminator: 1)
!117 = !DILocation(line: 41, column: 75, scope: !114)
!118 = !DILocation(line: 41, column: 66, scope: !119)
!119 = !DILexicalBlockFile(scope: !114, file: !65, discriminator: 2)
!120 = !DILocation(line: 41, column: 3, scope: !121)
!121 = !DILexicalBlockFile(scope: !114, file: !65, discriminator: 3)
!122 = !DILocation(line: 42, column: 3, scope: !114)
!123 = !DILocation(line: 45, column: 2, scope: !100)
!124 = !DILocation(line: 46, column: 1, scope: !100)
!125 = distinct !DISubprogram(name: "create_socket", scope: !65, file: !65, line: 48, type: !126, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !68)
!126 = !DISubroutineType(types: !127)
!127 = !{!60, !128, !139, !60, !60, !60, !56, !60, !60}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !33, line: 153, size: 128, align: 16, elements: !130)
!130 = !{!131, !135}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !129, file: !33, line: 155, baseType: !132, size: 16, align: 16)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !133, line: 28, baseType: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/httping/task1")
!134 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !129, file: !33, line: 156, baseType: !136, size: 112, align: 8, offset: 16)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 112, align: 8, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 14)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !141, line: 567, size: 384, align: 64, elements: !142)
!141 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/lichi/Desktop/httping/task1")
!142 = !{!143, !144, !145, !146, !147, !152, !153, !154}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !140, file: !141, line: 569, baseType: !60, size: 32, align: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !140, file: !141, line: 570, baseType: !60, size: 32, align: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !140, file: !141, line: 571, baseType: !60, size: 32, align: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !140, file: !141, line: 572, baseType: !60, size: 32, align: 32, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !140, file: !141, line: 573, baseType: !148, size: 32, align: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !33, line: 33, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !150, line: 189, baseType: !151)
!150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/httping/task1")
!151 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !140, file: !141, line: 574, baseType: !128, size: 64, align: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !140, file: !141, line: 575, baseType: !55, size: 64, align: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !140, file: !141, line: 576, baseType: !139, size: 64, align: 64, offset: 320)
!155 = !DILocalVariable(name: "bind_to", arg: 1, scope: !125, file: !65, line: 48, type: !128)
!156 = !DILocation(line: 48, column: 36, scope: !125)
!157 = !DILocalVariable(name: "ai", arg: 2, scope: !125, file: !65, line: 48, type: !139)
!158 = !DILocation(line: 48, column: 62, scope: !125)
!159 = !DILocalVariable(name: "recv_buffer_size", arg: 3, scope: !125, file: !65, line: 48, type: !60)
!160 = !DILocation(line: 48, column: 70, scope: !125)
!161 = !DILocalVariable(name: "tx_buffer_size", arg: 4, scope: !125, file: !65, line: 48, type: !60)
!162 = !DILocation(line: 48, column: 92, scope: !125)
!163 = !DILocalVariable(name: "max_mtu", arg: 5, scope: !125, file: !65, line: 48, type: !60)
!164 = !DILocation(line: 48, column: 112, scope: !125)
!165 = !DILocalVariable(name: "use_no_delay", arg: 6, scope: !125, file: !65, line: 48, type: !56)
!166 = !DILocation(line: 48, column: 126, scope: !125)
!167 = !DILocalVariable(name: "priority", arg: 7, scope: !125, file: !65, line: 48, type: !60)
!168 = !DILocation(line: 48, column: 144, scope: !125)
!169 = !DILocalVariable(name: "tos", arg: 8, scope: !125, file: !65, line: 48, type: !60)
!170 = !DILocation(line: 48, column: 158, scope: !125)
!171 = !DILocalVariable(name: "fd", scope: !125, file: !65, line: 50, type: !60)
!172 = !DILocation(line: 50, column: 6, scope: !125)
!173 = !DILocation(line: 53, column: 14, scope: !125)
!174 = !DILocation(line: 53, column: 18, scope: !125)
!175 = !DILocation(line: 53, column: 29, scope: !125)
!176 = !DILocation(line: 53, column: 33, scope: !125)
!177 = !DILocation(line: 53, column: 46, scope: !125)
!178 = !DILocation(line: 53, column: 50, scope: !125)
!179 = !DILocation(line: 53, column: 7, scope: !125)
!180 = !DILocation(line: 53, column: 5, scope: !125)
!181 = !DILocation(line: 54, column: 6, scope: !182)
!182 = distinct !DILexicalBlock(scope: !125, file: !65, line: 54, column: 6)
!183 = !DILocation(line: 54, column: 9, scope: !182)
!184 = !DILocation(line: 54, column: 6, scope: !125)
!185 = !DILocation(line: 56, column: 13, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !65, line: 55, column: 2)
!187 = !DILocation(line: 56, column: 64, scope: !188)
!188 = !DILexicalBlockFile(scope: !186, file: !65, discriminator: 1)
!189 = !DILocation(line: 56, column: 63, scope: !186)
!190 = !DILocation(line: 56, column: 54, scope: !191)
!191 = !DILexicalBlockFile(scope: !186, file: !65, discriminator: 2)
!192 = !DILocation(line: 56, column: 3, scope: !193)
!193 = !DILexicalBlockFile(scope: !186, file: !65, discriminator: 3)
!194 = !DILocation(line: 57, column: 3, scope: !186)
!195 = !DILocation(line: 61, column: 6, scope: !196)
!196 = distinct !DILexicalBlock(scope: !125, file: !65, line: 61, column: 6)
!197 = !DILocation(line: 61, column: 6, scope: !125)
!198 = !DILocalVariable(name: "set", scope: !199, file: !65, line: 63, type: !60)
!199 = distinct !DILexicalBlock(scope: !196, file: !65, line: 62, column: 2)
!200 = !DILocation(line: 63, column: 7, scope: !199)
!201 = !DILocation(line: 66, column: 18, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !65, line: 66, column: 7)
!203 = !DILocation(line: 66, column: 47, scope: !202)
!204 = !DILocation(line: 66, column: 7, scope: !202)
!205 = !DILocation(line: 66, column: 65, scope: !202)
!206 = !DILocation(line: 66, column: 7, scope: !199)
!207 = !DILocation(line: 68, column: 14, scope: !208)
!208 = distinct !DILexicalBlock(scope: !202, file: !65, line: 67, column: 3)
!209 = !DILocation(line: 68, column: 76, scope: !210)
!210 = !DILexicalBlockFile(scope: !208, file: !65, discriminator: 1)
!211 = !DILocation(line: 68, column: 75, scope: !208)
!212 = !DILocation(line: 68, column: 66, scope: !213)
!213 = !DILexicalBlockFile(scope: !208, file: !65, discriminator: 2)
!214 = !DILocation(line: 68, column: 4, scope: !215)
!215 = !DILexicalBlockFile(scope: !208, file: !65, discriminator: 3)
!216 = !DILocation(line: 69, column: 10, scope: !208)
!217 = !DILocation(line: 69, column: 4, scope: !208)
!218 = !DILocation(line: 70, column: 4, scope: !208)
!219 = !DILocation(line: 73, column: 12, scope: !220)
!220 = distinct !DILexicalBlock(scope: !199, file: !65, line: 73, column: 7)
!221 = !DILocation(line: 73, column: 16, scope: !220)
!222 = !DILocation(line: 73, column: 7, scope: !220)
!223 = !DILocation(line: 73, column: 42, scope: !220)
!224 = !DILocation(line: 73, column: 7, scope: !199)
!225 = !DILocation(line: 75, column: 14, scope: !226)
!226 = distinct !DILexicalBlock(scope: !220, file: !65, line: 74, column: 3)
!227 = !DILocation(line: 75, column: 68, scope: !228)
!228 = !DILexicalBlockFile(scope: !226, file: !65, discriminator: 1)
!229 = !DILocation(line: 75, column: 67, scope: !226)
!230 = !DILocation(line: 75, column: 58, scope: !231)
!231 = !DILexicalBlockFile(scope: !226, file: !65, discriminator: 2)
!232 = !DILocation(line: 75, column: 4, scope: !233)
!233 = !DILexicalBlockFile(scope: !226, file: !65, discriminator: 3)
!234 = !DILocation(line: 76, column: 10, scope: !226)
!235 = !DILocation(line: 76, column: 4, scope: !226)
!236 = !DILocation(line: 77, column: 4, scope: !226)
!237 = !DILocation(line: 79, column: 2, scope: !199)
!238 = !DILocation(line: 81, column: 6, scope: !239)
!239 = distinct !DILexicalBlock(scope: !125, file: !65, line: 81, column: 6)
!240 = !DILocation(line: 81, column: 14, scope: !239)
!241 = !DILocation(line: 81, column: 6, scope: !125)
!242 = !DILocation(line: 83, column: 18, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !65, line: 83, column: 7)
!244 = distinct !DILexicalBlock(scope: !239, file: !65, line: 82, column: 2)
!245 = !DILocation(line: 83, column: 46, scope: !243)
!246 = !DILocation(line: 83, column: 7, scope: !243)
!247 = !DILocation(line: 83, column: 72, scope: !243)
!248 = !DILocation(line: 83, column: 7, scope: !244)
!249 = !DILocation(line: 85, column: 14, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !65, line: 84, column: 3)
!251 = !DILocation(line: 85, column: 64, scope: !252)
!252 = !DILexicalBlockFile(scope: !250, file: !65, discriminator: 1)
!253 = !DILocation(line: 85, column: 63, scope: !250)
!254 = !DILocation(line: 85, column: 54, scope: !255)
!255 = !DILexicalBlockFile(scope: !250, file: !65, discriminator: 2)
!256 = !DILocation(line: 85, column: 4, scope: !257)
!257 = !DILexicalBlockFile(scope: !250, file: !65, discriminator: 3)
!258 = !DILocation(line: 86, column: 10, scope: !250)
!259 = !DILocation(line: 86, column: 4, scope: !250)
!260 = !DILocation(line: 87, column: 4, scope: !250)
!261 = !DILocation(line: 89, column: 2, scope: !244)
!262 = !DILocation(line: 91, column: 6, scope: !263)
!263 = distinct !DILexicalBlock(scope: !125, file: !65, line: 91, column: 6)
!264 = !DILocation(line: 91, column: 6, scope: !125)
!265 = !DILocalVariable(name: "rc", scope: !266, file: !65, line: 93, type: !60)
!266 = distinct !DILexicalBlock(scope: !263, file: !65, line: 92, column: 2)
!267 = !DILocation(line: 93, column: 7, scope: !266)
!268 = !DILocation(line: 95, column: 26, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !65, line: 95, column: 7)
!270 = !DILocation(line: 95, column: 13, scope: !269)
!271 = !DILocation(line: 95, column: 11, scope: !269)
!272 = !DILocation(line: 95, column: 31, scope: !269)
!273 = !DILocation(line: 95, column: 7, scope: !266)
!274 = !DILocation(line: 96, column: 11, scope: !269)
!275 = !DILocation(line: 96, column: 4, scope: !269)
!276 = !DILocation(line: 97, column: 2, scope: !266)
!277 = !DILocation(line: 99, column: 6, scope: !278)
!278 = distinct !DILexicalBlock(scope: !125, file: !65, line: 99, column: 6)
!279 = !DILocation(line: 99, column: 21, scope: !278)
!280 = !DILocation(line: 99, column: 6, scope: !125)
!281 = !DILocation(line: 101, column: 18, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !65, line: 101, column: 7)
!283 = distinct !DILexicalBlock(scope: !278, file: !65, line: 100, column: 9)
!284 = !DILocation(line: 101, column: 44, scope: !282)
!285 = !DILocation(line: 101, column: 7, scope: !282)
!286 = !DILocation(line: 101, column: 92, scope: !282)
!287 = !DILocation(line: 101, column: 7, scope: !283)
!288 = !DILocation(line: 103, column: 14, scope: !289)
!289 = distinct !DILexicalBlock(scope: !282, file: !65, line: 102, column: 3)
!290 = !DILocation(line: 103, column: 76, scope: !291)
!291 = !DILexicalBlockFile(scope: !289, file: !65, discriminator: 1)
!292 = !DILocation(line: 103, column: 75, scope: !289)
!293 = !DILocation(line: 103, column: 66, scope: !294)
!294 = !DILexicalBlockFile(scope: !289, file: !65, discriminator: 2)
!295 = !DILocation(line: 103, column: 4, scope: !296)
!296 = !DILexicalBlockFile(scope: !289, file: !65, discriminator: 3)
!297 = !DILocation(line: 104, column: 10, scope: !289)
!298 = !DILocation(line: 104, column: 4, scope: !289)
!299 = !DILocation(line: 105, column: 4, scope: !289)
!300 = !DILocation(line: 107, column: 2, scope: !283)
!301 = !DILocation(line: 109, column: 6, scope: !302)
!302 = distinct !DILexicalBlock(scope: !125, file: !65, line: 109, column: 6)
!303 = !DILocation(line: 109, column: 23, scope: !302)
!304 = !DILocation(line: 109, column: 6, scope: !125)
!305 = !DILocation(line: 111, column: 18, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !65, line: 111, column: 7)
!307 = distinct !DILexicalBlock(scope: !302, file: !65, line: 110, column: 9)
!308 = !DILocation(line: 111, column: 44, scope: !306)
!309 = !DILocation(line: 111, column: 7, scope: !306)
!310 = !DILocation(line: 111, column: 96, scope: !306)
!311 = !DILocation(line: 111, column: 7, scope: !307)
!312 = !DILocation(line: 113, column: 14, scope: !313)
!313 = distinct !DILexicalBlock(scope: !306, file: !65, line: 112, column: 3)
!314 = !DILocation(line: 113, column: 75, scope: !315)
!315 = !DILexicalBlockFile(scope: !313, file: !65, discriminator: 1)
!316 = !DILocation(line: 113, column: 74, scope: !313)
!317 = !DILocation(line: 113, column: 65, scope: !318)
!318 = !DILexicalBlockFile(scope: !313, file: !65, discriminator: 2)
!319 = !DILocation(line: 113, column: 4, scope: !320)
!320 = !DILexicalBlockFile(scope: !313, file: !65, discriminator: 3)
!321 = !DILocation(line: 114, column: 10, scope: !313)
!322 = !DILocation(line: 114, column: 4, scope: !313)
!323 = !DILocation(line: 115, column: 4, scope: !313)
!324 = !DILocation(line: 117, column: 2, scope: !307)
!325 = !DILocation(line: 120, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !125, file: !65, line: 120, column: 6)
!327 = !DILocation(line: 120, column: 15, scope: !326)
!328 = !DILocation(line: 120, column: 6, scope: !125)
!329 = !DILocation(line: 122, column: 18, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !65, line: 122, column: 7)
!331 = distinct !DILexicalBlock(scope: !326, file: !65, line: 121, column: 2)
!332 = !DILocation(line: 122, column: 46, scope: !330)
!333 = !DILocation(line: 122, column: 7, scope: !330)
!334 = !DILocation(line: 122, column: 82, scope: !330)
!335 = !DILocation(line: 122, column: 7, scope: !331)
!336 = !DILocation(line: 124, column: 14, scope: !337)
!337 = distinct !DILexicalBlock(scope: !330, file: !65, line: 123, column: 3)
!338 = !DILocation(line: 124, column: 64, scope: !339)
!339 = !DILexicalBlockFile(scope: !337, file: !65, discriminator: 1)
!340 = !DILocation(line: 124, column: 63, scope: !337)
!341 = !DILocation(line: 124, column: 54, scope: !342)
!342 = !DILexicalBlockFile(scope: !337, file: !65, discriminator: 2)
!343 = !DILocation(line: 124, column: 4, scope: !344)
!344 = !DILexicalBlockFile(scope: !337, file: !65, discriminator: 3)
!345 = !DILocation(line: 125, column: 10, scope: !337)
!346 = !DILocation(line: 125, column: 4, scope: !337)
!347 = !DILocation(line: 126, column: 4, scope: !337)
!348 = !DILocation(line: 128, column: 2, scope: !331)
!349 = !DILocation(line: 131, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !125, file: !65, line: 131, column: 6)
!351 = !DILocation(line: 131, column: 10, scope: !350)
!352 = !DILocation(line: 131, column: 6, scope: !125)
!353 = !DILocation(line: 133, column: 18, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !65, line: 133, column: 7)
!355 = distinct !DILexicalBlock(scope: !350, file: !65, line: 132, column: 2)
!356 = !DILocation(line: 133, column: 41, scope: !354)
!357 = !DILocation(line: 133, column: 7, scope: !354)
!358 = !DILocation(line: 133, column: 67, scope: !354)
!359 = !DILocation(line: 133, column: 7, scope: !355)
!360 = !DILocation(line: 135, column: 14, scope: !361)
!361 = distinct !DILexicalBlock(scope: !354, file: !65, line: 134, column: 3)
!362 = !DILocation(line: 135, column: 4, scope: !363)
!363 = !DILexicalBlockFile(scope: !361, file: !65, discriminator: 1)
!364 = !DILocation(line: 136, column: 10, scope: !361)
!365 = !DILocation(line: 136, column: 4, scope: !361)
!366 = !DILocation(line: 137, column: 4, scope: !361)
!367 = !DILocation(line: 139, column: 2, scope: !355)
!368 = !DILocation(line: 141, column: 9, scope: !125)
!369 = !DILocation(line: 141, column: 2, scope: !125)
!370 = !DILocation(line: 142, column: 1, scope: !125)
!371 = distinct !DISubprogram(name: "connect_to", scope: !65, file: !65, line: 144, type: !372, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !68)
!372 = !DISubroutineType(types: !373)
!373 = !{!60, !60, !139, !374, !55, !55, !60, !55}
!374 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!375 = !DILocalVariable(name: "fd", arg: 1, scope: !371, file: !65, line: 144, type: !60)
!376 = !DILocation(line: 144, column: 20, scope: !371)
!377 = !DILocalVariable(name: "ai", arg: 2, scope: !371, file: !65, line: 144, type: !139)
!378 = !DILocation(line: 144, column: 41, scope: !371)
!379 = !DILocalVariable(name: "timeout", arg: 3, scope: !371, file: !65, line: 144, type: !374)
!380 = !DILocation(line: 144, column: 52, scope: !371)
!381 = !DILocalVariable(name: "tfo", arg: 4, scope: !371, file: !65, line: 144, type: !55)
!382 = !DILocation(line: 144, column: 67, scope: !371)
!383 = !DILocalVariable(name: "msg", arg: 5, scope: !371, file: !65, line: 144, type: !55)
!384 = !DILocation(line: 144, column: 78, scope: !371)
!385 = !DILocalVariable(name: "msg_len", arg: 6, scope: !371, file: !65, line: 144, type: !60)
!386 = !DILocation(line: 144, column: 87, scope: !371)
!387 = !DILocalVariable(name: "msg_accepted", arg: 7, scope: !371, file: !65, line: 144, type: !55)
!388 = !DILocation(line: 144, column: 102, scope: !371)
!389 = !DILocalVariable(name: "rc", scope: !371, file: !65, line: 146, type: !60)
!390 = !DILocation(line: 146, column: 6, scope: !371)
!391 = !DILocalVariable(name: "to", scope: !371, file: !65, line: 147, type: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !393, line: 30, size: 128, align: 64, elements: !394)
!393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/httping/task1")
!394 = !{!395, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !392, file: !393, line: 32, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !150, line: 139, baseType: !59)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !392, file: !393, line: 33, baseType: !398, size: 64, align: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !150, line: 141, baseType: !59)
!399 = !DILocation(line: 147, column: 17, scope: !371)
!400 = !DILocalVariable(name: "wfds", scope: !371, file: !65, line: 148, type: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !58, line: 75, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 64, size: 1024, align: 64, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !402, file: !58, line: 72, baseType: !405, size: 1024, align: 64)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 1024, align: 64, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 16)
!408 = !DILocation(line: 148, column: 9, scope: !371)
!409 = !DILocation(line: 151, column: 25, scope: !410)
!410 = distinct !DILexicalBlock(scope: !371, file: !65, line: 151, column: 6)
!411 = !DILocation(line: 151, column: 6, scope: !410)
!412 = !DILocation(line: 151, column: 29, scope: !410)
!413 = !DILocation(line: 151, column: 6, scope: !371)
!414 = !DILocation(line: 152, column: 3, scope: !410)
!415 = !DILocation(line: 155, column: 1, scope: !371)
!416 = distinct !{!416, !415}
!417 = !DILocalVariable(name: "__d0", scope: !418, file: !65, line: 155, type: !60)
!418 = distinct !DILexicalBlock(scope: !371, file: !65, line: 155, column: 4)
!419 = !DILocation(line: 155, column: 10, scope: !418)
!420 = !DILocalVariable(name: "__d1", scope: !418, file: !65, line: 155, type: !60)
!421 = !DILocation(line: 155, column: 16, scope: !418)
!422 = !DILocation(line: 155, column: 4, scope: !423)
!423 = !DILexicalBlockFile(scope: !418, file: !65, discriminator: 1)
!424 = !DILocation(line: 155, column: 153, scope: !423)
!425 = !DILocation(line: 155, column: 22, scope: !423)
!426 = !{i32 94336}
!427 = !DILocation(line: 155, column: 33, scope: !423)
!428 = !DILocation(line: 156, column: 1, scope: !371)
!429 = !DILocation(line: 156, column: 3, scope: !371)
!430 = !DILocation(line: 156, column: 59, scope: !371)
!431 = !DILocation(line: 156, column: 10, scope: !371)
!432 = !DILocation(line: 156, column: 4, scope: !371)
!433 = !DILocation(line: 156, column: 38, scope: !371)
!434 = !DILocation(line: 158, column: 21, scope: !371)
!435 = !DILocation(line: 158, column: 29, scope: !371)
!436 = !DILocation(line: 158, column: 14, scope: !371)
!437 = !DILocation(line: 158, column: 5, scope: !371)
!438 = !DILocation(line: 158, column: 12, scope: !371)
!439 = !DILocation(line: 159, column: 22, scope: !371)
!440 = !DILocation(line: 159, column: 30, scope: !371)
!441 = !DILocation(line: 159, column: 15, scope: !371)
!442 = !DILocation(line: 159, column: 40, scope: !371)
!443 = !DILocation(line: 159, column: 5, scope: !371)
!444 = !DILocation(line: 159, column: 13, scope: !371)
!445 = !DILocation(line: 163, column: 6, scope: !446)
!446 = distinct !DILexicalBlock(scope: !371, file: !65, line: 163, column: 6)
!447 = !DILocation(line: 163, column: 10, scope: !446)
!448 = !DILocation(line: 163, column: 14, scope: !449)
!449 = !DILexicalBlockFile(scope: !446, file: !65, discriminator: 1)
!450 = !DILocation(line: 163, column: 13, scope: !449)
!451 = !DILocation(line: 163, column: 6, scope: !449)
!452 = !DILocation(line: 165, column: 15, scope: !453)
!453 = distinct !DILexicalBlock(scope: !446, file: !65, line: 164, column: 2)
!454 = !DILocation(line: 165, column: 19, scope: !453)
!455 = !DILocation(line: 165, column: 24, scope: !453)
!456 = !DILocation(line: 165, column: 46, scope: !453)
!457 = !DILocation(line: 165, column: 52, scope: !453)
!458 = !DILocation(line: 165, column: 61, scope: !453)
!459 = !DILocation(line: 165, column: 67, scope: !453)
!460 = !DILocation(line: 165, column: 8, scope: !453)
!461 = !DILocation(line: 165, column: 6, scope: !453)
!462 = !DILocation(line: 167, column: 6, scope: !463)
!463 = distinct !DILexicalBlock(scope: !453, file: !65, line: 167, column: 6)
!464 = !DILocation(line: 167, column: 12, scope: !463)
!465 = !DILocation(line: 167, column: 9, scope: !463)
!466 = !DILocation(line: 167, column: 6, scope: !453)
!467 = !DILocation(line: 168, column: 5, scope: !463)
!468 = !DILocation(line: 168, column: 18, scope: !463)
!469 = !DILocation(line: 168, column: 4, scope: !463)
!470 = !DILocation(line: 169, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !453, file: !65, line: 169, column: 5)
!472 = !DILocation(line: 169, column: 6, scope: !471)
!473 = !DILocation(line: 169, column: 11, scope: !471)
!474 = !DILocation(line: 169, column: 5, scope: !453)
!475 = !DILocation(line: 170, column: 4, scope: !471)
!476 = !DILocation(line: 171, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !453, file: !65, line: 171, column: 5)
!478 = !DILocation(line: 171, column: 6, scope: !477)
!479 = !DILocation(line: 171, column: 11, scope: !477)
!480 = !DILocation(line: 171, column: 5, scope: !453)
!481 = !DILocation(line: 173, column: 11, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !65, line: 172, column: 3)
!483 = !DILocation(line: 173, column: 4, scope: !484)
!484 = !DILexicalBlockFile(scope: !482, file: !65, discriminator: 1)
!485 = !DILocation(line: 174, column: 5, scope: !482)
!486 = !DILocation(line: 174, column: 9, scope: !482)
!487 = !DILocation(line: 175, column: 4, scope: !482)
!488 = !DILocation(line: 177, column: 2, scope: !453)
!489 = !DILocalVariable(name: "rc", scope: !490, file: !65, line: 187, type: !60)
!490 = distinct !DILexicalBlock(scope: !446, file: !65, line: 186, column: 2)
!491 = !DILocation(line: 187, column: 7, scope: !490)
!492 = !DILocation(line: 187, column: 3, scope: !490)
!493 = !DILocation(line: 190, column: 16, scope: !490)
!494 = !DILocation(line: 190, column: 20, scope: !490)
!495 = !DILocation(line: 190, column: 26, scope: !490)
!496 = !DILocation(line: 190, column: 35, scope: !490)
!497 = !DILocation(line: 190, column: 41, scope: !490)
!498 = !DILocation(line: 190, column: 8, scope: !490)
!499 = !DILocation(line: 190, column: 6, scope: !490)
!500 = !DILocation(line: 192, column: 7, scope: !501)
!501 = distinct !DILexicalBlock(scope: !490, file: !65, line: 192, column: 7)
!502 = !DILocation(line: 192, column: 10, scope: !501)
!503 = !DILocation(line: 192, column: 7, scope: !490)
!504 = !DILocation(line: 195, column: 4, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !65, line: 193, column: 3)
!506 = !DILocation(line: 198, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !490, file: !65, line: 198, column: 7)
!508 = !DILocation(line: 198, column: 10, scope: !507)
!509 = !DILocation(line: 198, column: 7, scope: !490)
!510 = !DILocation(line: 201, column: 9, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !65, line: 201, column: 7)
!512 = distinct !DILexicalBlock(scope: !507, file: !65, line: 199, column: 3)
!513 = !DILocation(line: 201, column: 8, scope: !511)
!514 = !DILocation(line: 201, column: 13, scope: !511)
!515 = !DILocation(line: 201, column: 7, scope: !512)
!516 = !DILocation(line: 203, column: 15, scope: !517)
!517 = distinct !DILexicalBlock(scope: !511, file: !65, line: 202, column: 4)
!518 = !DILocation(line: 203, column: 68, scope: !519)
!519 = !DILexicalBlockFile(scope: !517, file: !65, discriminator: 1)
!520 = !DILocation(line: 203, column: 67, scope: !517)
!521 = !DILocation(line: 203, column: 58, scope: !522)
!522 = !DILexicalBlockFile(scope: !517, file: !65, discriminator: 2)
!523 = !DILocation(line: 203, column: 5, scope: !524)
!524 = !DILexicalBlockFile(scope: !517, file: !65, discriminator: 3)
!525 = !DILocation(line: 204, column: 5, scope: !517)
!526 = !DILocation(line: 206, column: 3, scope: !512)
!527 = !DILocation(line: 209, column: 6, scope: !528)
!528 = distinct !DILexicalBlock(scope: !371, file: !65, line: 209, column: 6)
!529 = !DILocation(line: 209, column: 6, scope: !371)
!530 = !DILocation(line: 210, column: 3, scope: !528)
!531 = !DILocation(line: 213, column: 14, scope: !371)
!532 = !DILocation(line: 213, column: 17, scope: !371)
!533 = !DILocation(line: 213, column: 7, scope: !371)
!534 = !DILocation(line: 213, column: 5, scope: !371)
!535 = !DILocation(line: 214, column: 6, scope: !536)
!536 = distinct !DILexicalBlock(scope: !371, file: !65, line: 214, column: 6)
!537 = !DILocation(line: 214, column: 9, scope: !536)
!538 = !DILocation(line: 214, column: 6, scope: !371)
!539 = !DILocation(line: 216, column: 13, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !65, line: 215, column: 2)
!541 = !DILocation(line: 216, column: 3, scope: !542)
!542 = !DILexicalBlockFile(scope: !540, file: !65, discriminator: 1)
!543 = !DILocation(line: 217, column: 3, scope: !540)
!544 = !DILocation(line: 219, column: 11, scope: !545)
!545 = distinct !DILexicalBlock(scope: !536, file: !65, line: 219, column: 11)
!546 = !DILocation(line: 219, column: 14, scope: !545)
!547 = !DILocation(line: 219, column: 11, scope: !536)
!548 = !DILocation(line: 221, column: 8, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !65, line: 221, column: 6)
!550 = distinct !DILexicalBlock(scope: !545, file: !65, line: 220, column: 2)
!551 = !DILocation(line: 221, column: 7, scope: !549)
!552 = !DILocation(line: 221, column: 12, scope: !549)
!553 = !DILocation(line: 221, column: 6, scope: !550)
!554 = !DILocation(line: 222, column: 4, scope: !549)
!555 = !DILocation(line: 224, column: 13, scope: !550)
!556 = !DILocation(line: 224, column: 55, scope: !557)
!557 = !DILexicalBlockFile(scope: !550, file: !65, discriminator: 1)
!558 = !DILocation(line: 224, column: 54, scope: !550)
!559 = !DILocation(line: 224, column: 45, scope: !560)
!560 = !DILexicalBlockFile(scope: !550, file: !65, discriminator: 2)
!561 = !DILocation(line: 224, column: 3, scope: !562)
!562 = !DILexicalBlockFile(scope: !550, file: !65, discriminator: 3)
!563 = !DILocation(line: 226, column: 3, scope: !550)
!564 = !DILocalVariable(name: "optval", scope: !565, file: !65, line: 230, type: !60)
!565 = distinct !DILexicalBlock(scope: !545, file: !65, line: 229, column: 2)
!566 = !DILocation(line: 230, column: 7, scope: !565)
!567 = !DILocalVariable(name: "optvallen", scope: !565, file: !65, line: 231, type: !148)
!568 = !DILocation(line: 231, column: 13, scope: !565)
!569 = !DILocation(line: 234, column: 18, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !65, line: 234, column: 7)
!571 = !DILocation(line: 234, column: 43, scope: !570)
!572 = !DILocation(line: 234, column: 7, scope: !570)
!573 = !DILocation(line: 234, column: 64, scope: !570)
!574 = !DILocation(line: 234, column: 7, scope: !565)
!575 = !DILocation(line: 236, column: 14, scope: !576)
!576 = distinct !DILexicalBlock(scope: !570, file: !65, line: 235, column: 3)
!577 = !DILocation(line: 236, column: 59, scope: !578)
!578 = !DILexicalBlockFile(scope: !576, file: !65, discriminator: 1)
!579 = !DILocation(line: 236, column: 58, scope: !576)
!580 = !DILocation(line: 236, column: 49, scope: !581)
!581 = !DILexicalBlockFile(scope: !576, file: !65, discriminator: 2)
!582 = !DILocation(line: 236, column: 4, scope: !583)
!583 = !DILexicalBlockFile(scope: !576, file: !65, discriminator: 3)
!584 = !DILocation(line: 237, column: 4, scope: !576)
!585 = !DILocation(line: 241, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !565, file: !65, line: 241, column: 7)
!587 = !DILocation(line: 241, column: 14, scope: !586)
!588 = !DILocation(line: 241, column: 7, scope: !565)
!589 = !DILocation(line: 242, column: 4, scope: !586)
!590 = !DILocation(line: 245, column: 10, scope: !565)
!591 = !DILocation(line: 245, column: 4, scope: !565)
!592 = !DILocation(line: 245, column: 8, scope: !565)
!593 = !DILocation(line: 248, column: 12, scope: !371)
!594 = !DILocation(line: 248, column: 57, scope: !595)
!595 = !DILexicalBlockFile(scope: !371, file: !65, discriminator: 1)
!596 = !DILocation(line: 248, column: 56, scope: !371)
!597 = !DILocation(line: 248, column: 47, scope: !598)
!598 = !DILexicalBlockFile(scope: !371, file: !65, discriminator: 2)
!599 = !DILocation(line: 248, column: 2, scope: !600)
!600 = !DILexicalBlockFile(scope: !371, file: !65, discriminator: 3)
!601 = !DILocation(line: 250, column: 2, scope: !371)
!602 = !DILocation(line: 251, column: 1, scope: !371)
