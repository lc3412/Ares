; ModuleID = './libNetUtil_la-netUtilLinux.o.i'
source_filename = "./libNetUtil_la-netUtilLinux.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ifconf = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ifreq = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { [16 x i8] }
%union.anon.1 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.GuestNic = type { [18 x i8], %struct.anon }
%struct.anon = type { i32, %struct.VmIpAddress* }
%struct.VmIpAddress = type { i32, i8, [64 x i8], [64 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1

; Function Attrs: nounwind uwtable
define i8* @NetUtil_GetPrimaryIP() #0 !dbg !54 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifconf, align 8
  %5 = alloca [64 x %struct.ifreq], align 16
  %6 = alloca [16 x i8], align 16
  call void @llvm.dbg.declare(metadata i32* %2, metadata !61, metadata !63), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %3, metadata !65, metadata !63), !dbg !66
  call void @llvm.dbg.declare(metadata %struct.ifconf* %4, metadata !67, metadata !63), !dbg !122
  call void @llvm.dbg.declare(metadata [64 x %struct.ifreq]* %5, metadata !123, metadata !63), !dbg !127
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !128, metadata !63), !dbg !129
  %7 = bitcast [16 x i8]* %6 to i8*, !dbg !129
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 16, i32 16, i1 false), !dbg !129
  %8 = call i32 @socket(i32 2, i32 1, i32 0) #6, !dbg !130
  store i32 %8, i32* %2, align 4, !dbg !131
  %9 = load i32, i32* %2, align 4, !dbg !132
  %10 = icmp slt i32 %9, 0, !dbg !134
  br i1 %10, label %11, label %12, !dbg !135

; <label>:11:                                     ; preds = %0
  store i8* null, i8** %1, align 8, !dbg !136
  br label %57, !dbg !136

; <label>:12:                                     ; preds = %0
  %13 = bitcast %struct.ifconf* %4 to i8*, !dbg !138
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 16, i32 8, i1 false), !dbg !138
  %14 = getelementptr inbounds [64 x %struct.ifreq], [64 x %struct.ifreq]* %5, i32 0, i32 0, !dbg !139
  %15 = bitcast %struct.ifreq* %14 to i8*, !dbg !139
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 2560, i32 16, i1 false), !dbg !139
  %16 = getelementptr inbounds [64 x %struct.ifreq], [64 x %struct.ifreq]* %5, i32 0, i32 0, !dbg !140
  %17 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %4, i32 0, i32 1, !dbg !141
  %18 = bitcast %union.anon* %17 to %struct.ifreq**, !dbg !142
  store %struct.ifreq* %16, %struct.ifreq** %18, align 8, !dbg !143
  %19 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %4, i32 0, i32 0, !dbg !144
  store i32 2560, i32* %19, align 8, !dbg !145
  %20 = load i32, i32* %2, align 4, !dbg !146
  %21 = call i32 (i32, i64, ...) @ioctl(i32 %20, i64 35090, %struct.ifconf* %4) #6, !dbg !148
  %22 = icmp slt i32 %21, 0, !dbg !149
  br i1 %22, label %23, label %26, !dbg !150

; <label>:23:                                     ; preds = %12
  %24 = load i32, i32* %2, align 4, !dbg !151
  %25 = call i32 @close(i32 %24), !dbg !153
  store i8* null, i8** %1, align 8, !dbg !154
  br label %57, !dbg !154

; <label>:26:                                     ; preds = %12
  %27 = load i32, i32* %2, align 4, !dbg !155
  %28 = call i32 @close(i32 %27), !dbg !156
  store i32 0, i32* %3, align 4, !dbg !157
  br label %29, !dbg !159

; <label>:29:                                     ; preds = %51, %26
  %30 = load i32, i32* %3, align 4, !dbg !160
  %31 = sext i32 %30 to i64, !dbg !160
  %32 = icmp ult i64 %31, 64, !dbg !163
  br i1 %32, label %33, label %54, !dbg !164

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %3, align 4, !dbg !165
  %35 = sext i32 %34 to i64, !dbg !168
  %36 = getelementptr inbounds [64 x %struct.ifreq], [64 x %struct.ifreq]* %5, i64 0, i64 %35, !dbg !168
  %37 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %36, i32 0, i32 0, !dbg !169
  %38 = bitcast %union.anon.0* %37 to [16 x i8]*, !dbg !170
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %38, i32 0, i32 0, !dbg !168
  %40 = load i32, i32* %3, align 4, !dbg !171
  %41 = sext i32 %40 to i64, !dbg !172
  %42 = getelementptr inbounds [64 x %struct.ifreq], [64 x %struct.ifreq]* %5, i64 0, i64 %41, !dbg !172
  %43 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %42, i32 0, i32 1, !dbg !173
  %44 = bitcast %union.anon.1* %43 to %struct.sockaddr*, !dbg !174
  %45 = bitcast %struct.sockaddr* %44 to %struct.sockaddr_in*, !dbg !175
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !176
  %47 = call signext i8 @ValidateConvertAddress(i8* %39, %struct.sockaddr_in* %45, i8* %46), !dbg !177
  %48 = icmp ne i8 %47, 0, !dbg !177
  br i1 %48, label %49, label %50, !dbg !178

; <label>:49:                                     ; preds = %33
  br label %54, !dbg !179

; <label>:50:                                     ; preds = %33
  br label %51, !dbg !181

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %3, align 4, !dbg !182
  %53 = add nsw i32 %52, 1, !dbg !182
  store i32 %53, i32* %3, align 4, !dbg !182
  br label %29, !dbg !184, !llvm.loop !185

; <label>:54:                                     ; preds = %49, %29
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !187
  %56 = call noalias i8* @strdup(i8* %55) #6, !dbg !188
  store i8* %56, i8** %1, align 8, !dbg !189
  br label %57, !dbg !189

; <label>:57:                                     ; preds = %54, %23, %11
  %58 = load i8*, i8** %1, align 8, !dbg !190
  ret i8* %58, !dbg !190
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #3

declare i32 @close(i32) #4

; Function Attrs: nounwind uwtable
define internal signext i8 @ValidateConvertAddress(i8*, %struct.sockaddr_in*, i8*) #0 !dbg !191 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !200, metadata !63), !dbg !201
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %6, metadata !202, metadata !63), !dbg !203
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !204, metadata !63), !dbg !205
  %8 = load i8*, i8** %5, align 8, !dbg !206
  %9 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !206
  %10 = load i8, i8* %9, align 1, !dbg !206
  %11 = sext i8 %10 to i32, !dbg !206
  %12 = icmp eq i32 %11, 0, !dbg !208
  br i1 %12, label %23, label %13, !dbg !209

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %5, align 8, !dbg !210
  %15 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 2) #7, !dbg !211
  %16 = icmp eq i32 %15, 0, !dbg !212
  br i1 %16, label %23, label %17, !dbg !213

; <label>:17:                                     ; preds = %13
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8, !dbg !214
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0, !dbg !215
  %20 = load i16, i16* %19, align 4, !dbg !215
  %21 = zext i16 %20 to i32, !dbg !214
  %22 = icmp ne i32 %21, 2, !dbg !216
  br i1 %22, label %23, label %24, !dbg !217

; <label>:23:                                     ; preds = %17, %13, %3
  br label %37, !dbg !219

; <label>:24:                                     ; preds = %17
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8, !dbg !221
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 2, !dbg !223
  %27 = bitcast %struct.in_addr* %26 to i8*, !dbg !224
  %28 = load i8*, i8** %7, align 8, !dbg !225
  %29 = call i8* @inet_ntop(i32 2, i8* %27, i8* %28, i32 16) #6, !dbg !226
  %30 = icmp ne i8* %29, null, !dbg !227
  br i1 %30, label %31, label %36, !dbg !228

; <label>:31:                                     ; preds = %24
  %32 = load i8*, i8** %7, align 8, !dbg !229
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !230
  %34 = icmp ne i32 %33, 0, !dbg !231
  br i1 %34, label %35, label %36, !dbg !232

; <label>:35:                                     ; preds = %31
  store i8 1, i8* %4, align 1, !dbg !233
  br label %40, !dbg !233

; <label>:36:                                     ; preds = %31, %24
  br label %37, !dbg !235

; <label>:37:                                     ; preds = %36, %23
  %38 = load i8*, i8** %7, align 8, !dbg !237
  %39 = getelementptr inbounds i8, i8* %38, i64 0, !dbg !237
  store i8 0, i8* %39, align 1, !dbg !238
  store i8 0, i8* %4, align 1, !dbg !239
  br label %40, !dbg !239

; <label>:40:                                     ; preds = %37, %35
  %41 = load i8, i8* %4, align 1, !dbg !240
  ret i8 %41, !dbg !240
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

; Function Attrs: nounwind uwtable
define %struct.GuestNic* @NetUtil_GetPrimaryNic() #0 !dbg !241 {
  %1 = alloca %struct.GuestNic*, align 8
  %2 = alloca %struct.VmIpAddress*, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestNic** %1, metadata !269, metadata !63), !dbg !270
  store %struct.GuestNic* null, %struct.GuestNic** %1, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata %struct.VmIpAddress** %2, metadata !271, metadata !63), !dbg !274
  call void @llvm.dbg.declare(metadata i8** %3, metadata !275, metadata !63), !dbg !276
  %4 = call i8* @NetUtil_GetPrimaryIP(), !dbg !277
  store i8* %4, i8** %3, align 8, !dbg !278
  %5 = load i8*, i8** %3, align 8, !dbg !279
  %6 = icmp eq i8* null, %5, !dbg !281
  br i1 %6, label %7, label %8, !dbg !282

; <label>:7:                                      ; preds = %0
  br label %26, !dbg !283

; <label>:8:                                      ; preds = %0
  %9 = call i8* @UtilSafeCalloc0(i64 1, i64 40), !dbg !285
  %10 = bitcast i8* %9 to %struct.GuestNic*, !dbg !285
  store %struct.GuestNic* %10, %struct.GuestNic** %1, align 8, !dbg !286
  %11 = call i8* @UtilSafeCalloc0(i64 1, i64 136), !dbg !287
  %12 = bitcast i8* %11 to %struct.VmIpAddress*, !dbg !287
  store %struct.VmIpAddress* %12, %struct.VmIpAddress** %2, align 8, !dbg !288
  %13 = load %struct.GuestNic*, %struct.GuestNic** %1, align 8, !dbg !289
  %14 = getelementptr inbounds %struct.GuestNic, %struct.GuestNic* %13, i32 0, i32 1, !dbg !290
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0, !dbg !291
  store i32 1, i32* %15, align 8, !dbg !292
  %16 = load %struct.VmIpAddress*, %struct.VmIpAddress** %2, align 8, !dbg !293
  %17 = load %struct.GuestNic*, %struct.GuestNic** %1, align 8, !dbg !294
  %18 = getelementptr inbounds %struct.GuestNic, %struct.GuestNic* %17, i32 0, i32 1, !dbg !295
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1, !dbg !296
  store %struct.VmIpAddress* %16, %struct.VmIpAddress** %19, align 8, !dbg !297
  %20 = load %struct.VmIpAddress*, %struct.VmIpAddress** %2, align 8, !dbg !298
  %21 = getelementptr inbounds %struct.VmIpAddress, %struct.VmIpAddress* %20, i32 0, i32 2, !dbg !299
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i32 0, i32 0, !dbg !298
  %23 = load i8*, i8** %3, align 8, !dbg !300
  %24 = call i8* @Str_Strcpy(i8* %22, i8* %23, i64 64), !dbg !301
  %25 = load i8*, i8** %3, align 8, !dbg !302
  call void @free(i8* %25) #6, !dbg !303
  br label %26, !dbg !303

; <label>:26:                                     ; preds = %8, %7
  %27 = load %struct.GuestNic*, %struct.GuestNic** %1, align 8, !dbg !304
  ret %struct.GuestNic* %27, !dbg !305
}

declare i8* @UtilSafeCalloc0(i64, i64) #4

declare i8* @Str_Strcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i64 @NetUtil_GetHardwareAddress(i32, i8*, i64, i32*) #0 !dbg !306 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ifreq, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !313, metadata !63), !dbg !314
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !315, metadata !63), !dbg !316
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !317, metadata !63), !dbg !318
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !319, metadata !63), !dbg !320
  call void @llvm.dbg.declare(metadata %struct.ifreq* %10, metadata !321, metadata !63), !dbg !322
  call void @llvm.dbg.declare(metadata i32* %11, metadata !323, metadata !63), !dbg !324
  store i32 -1, i32* %11, align 4, !dbg !324
  call void @llvm.dbg.declare(metadata i64* %12, metadata !325, metadata !63), !dbg !326
  store i64 0, i64* %12, align 8, !dbg !326
  %13 = load i64, i64* %8, align 8, !dbg !327
  %14 = icmp ult i64 %13, 6, !dbg !329
  br i1 %14, label %15, label %16, !dbg !330

; <label>:15:                                     ; preds = %4
  store i64 0, i64* %5, align 8, !dbg !331
  br label %51, !dbg !331

; <label>:16:                                     ; preds = %4
  %17 = bitcast %struct.ifreq* %10 to i8*, !dbg !333
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 40, i32 8, i1 false), !dbg !333
  %18 = load i32, i32* %6, align 4, !dbg !334
  %19 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0, !dbg !336
  %20 = bitcast %union.anon.0* %19 to [16 x i8]*, !dbg !337
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i32 0, i32 0, !dbg !338
  %22 = call i8* @if_indextoname(i32 %18, i8* %21) #6, !dbg !339
  %23 = icmp eq i8* %22, null, !dbg !340
  br i1 %23, label %24, label %25, !dbg !341

; <label>:24:                                     ; preds = %16
  store i64 0, i64* %5, align 8, !dbg !342
  br label %51, !dbg !342

; <label>:25:                                     ; preds = %16
  %26 = call i32 @socket(i32 2, i32 2, i32 0) #6, !dbg !344
  store i32 %26, i32* %11, align 4, !dbg !346
  %27 = icmp eq i32 %26, -1, !dbg !347
  br i1 %27, label %28, label %29, !dbg !348

; <label>:28:                                     ; preds = %25
  store i64 0, i64* %5, align 8, !dbg !349
  br label %51, !dbg !349

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %11, align 4, !dbg !351
  %31 = call i32 (i32, i64, ...) @ioctl(i32 %30, i64 35111, %struct.ifreq* %10) #6, !dbg !353
  %32 = icmp eq i32 %31, 0, !dbg !354
  br i1 %32, label %33, label %47, !dbg !355

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 1, !dbg !356
  %35 = bitcast %union.anon.1* %34 to %struct.sockaddr*, !dbg !357
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0, !dbg !358
  %37 = load i16, i16* %36, align 8, !dbg !358
  %38 = zext i16 %37 to i32, !dbg !359
  %39 = icmp eq i32 %38, 1, !dbg !360
  br i1 %39, label %40, label %47, !dbg !361

; <label>:40:                                     ; preds = %33
  %41 = load i8*, i8** %7, align 8, !dbg !363
  %42 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 1, !dbg !365
  %43 = bitcast %union.anon.1* %42 to %struct.sockaddr*, !dbg !366
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 1, !dbg !367
  %45 = getelementptr inbounds [14 x i8], [14 x i8]* %44, i32 0, i32 0, !dbg !368
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %45, i64 6, i32 1, i1 false), !dbg !368
  %46 = load i32*, i32** %9, align 8, !dbg !369
  store i32 6, i32* %46, align 4, !dbg !370
  store i64 6, i64* %12, align 8, !dbg !371
  br label %47, !dbg !372

; <label>:47:                                     ; preds = %40, %33, %29
  %48 = load i32, i32* %11, align 4, !dbg !373
  %49 = call i32 @close(i32 %48), !dbg !374
  %50 = load i64, i64* %12, align 8, !dbg !375
  store i64 %50, i64* %5, align 8, !dbg !376
  br label %51, !dbg !376

; <label>:51:                                     ; preds = %47, %28, %24, %15
  %52 = load i64, i64* %5, align 8, !dbg !377
  ret i64 %52, !dbg !377
}

; Function Attrs: nounwind
declare i8* @if_indextoname(i32, i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !25)
!1 = !DIFile(filename: "libNetUtil_la-netUtilLinux.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!2 = !{!3, !15, !20}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !4, line: 24, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!7 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!8 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!9 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!10 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!11 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!12 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!13 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!14 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "NicInfoAddrType", file: !16, line: 28, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guestrpc/nicinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!17 = !{!18, !19}
!18 = !DIEnumerator(name: "NICINFO_ADDR_IPV4", value: 0)
!19 = !DIEnumerator(name: "NICINFO_ADDR_IPV6", value: 1)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 49, size: 32, align: 32, elements: !22)
!21 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/netutil.h", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "IANA_IFTYPE_OTHER", value: 1)
!24 = !DIEnumerator(name: "IANA_IFTYPE_ETHERNETCSMACD", value: 6)
!25 = !{!26, !50}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !28, line: 239, size: 128, align: 32, elements: !29)
!28 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!29 = !{!30, !34, !38, !45}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !27, file: !28, line: 241, baseType: !31, size: 16, align: 16)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !32, line: 28, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!33 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !27, file: !28, line: 242, baseType: !35, size: 16, align: 16, offset: 16)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !28, line: 119, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !37, line: 49, baseType: !33)
!37 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !27, file: !28, line: 243, baseType: !39, size: 32, align: 32, offset: 32)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !28, line: 31, size: 32, align: 32, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !39, file: !28, line: 33, baseType: !42, size: 32, align: 32)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !28, line: 30, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 51, baseType: !44)
!44 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !27, file: !28, line: 246, baseType: !46, size: 64, align: 8, offset: 64)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, align: 8, elements: !48)
!47 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!51 = !{i32 2, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!54 = distinct !DISubprogram(name: "NetUtil_GetPrimaryIP", scope: !55, file: !55, line: 155, type: !56, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!55 = !DIFile(filename: "netUtilLinux.c", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!56 = !DISubroutineType(types: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!60 = !{}
!61 = !DILocalVariable(name: "sd", scope: !54, file: !55, line: 157, type: !62)
!62 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!63 = !DIExpression()
!64 = !DILocation(line: 157, column: 8, scope: !54)
!65 = !DILocalVariable(name: "i", scope: !54, file: !55, line: 157, type: !62)
!66 = !DILocation(line: 157, column: 12, scope: !54)
!67 = !DILocalVariable(name: "iflist", scope: !54, file: !55, line: 158, type: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifconf", file: !69, line: 176, size: 128, align: 64, elements: !70)
!69 = !DIFile(filename: "/usr/include/net/if.h", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!70 = !{!71, !72}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ifc_len", scope: !68, file: !69, line: 178, baseType: !62, size: 32, align: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ifc_ifcu", scope: !68, file: !69, line: 183, baseType: !73, size: 64, align: 64, offset: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !68, file: !69, line: 179, size: 64, align: 64, elements: !74)
!74 = !{!75, !78}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ifcu_buf", scope: !73, file: !69, line: 181, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !77, line: 183, baseType: !58)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ifcu_req", scope: !73, file: !69, line: 182, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifreq", file: !69, line: 126, size: 320, align: 64, elements: !81)
!81 = !{!82, !89}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifrn", scope: !80, file: !69, line: 133, baseType: !83, size: 128, align: 8)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !69, line: 130, size: 128, align: 8, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ifrn_name", scope: !83, file: !69, line: 132, baseType: !86, size: 128, align: 8)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifru", scope: !80, file: !69, line: 149, baseType: !90, size: 192, align: 64, offset: 128)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !69, line: 135, size: 192, align: 64, elements: !91)
!91 = !{!92, !101, !102, !103, !104, !105, !107, !108, !109, !119, !120, !121}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_addr", scope: !90, file: !69, line: 137, baseType: !93, size: 128, align: 16)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !94, line: 153, size: 128, align: 16, elements: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !93, file: !94, line: 155, baseType: !31, size: 16, align: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !93, file: !94, line: 156, baseType: !98, size: 112, align: 8, offset: 16)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 112, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 14)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_dstaddr", scope: !90, file: !69, line: 138, baseType: !93, size: 128, align: 16)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_broadaddr", scope: !90, file: !69, line: 139, baseType: !93, size: 128, align: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_netmask", scope: !90, file: !69, line: 140, baseType: !93, size: 128, align: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_hwaddr", scope: !90, file: !69, line: 141, baseType: !93, size: 128, align: 16)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_flags", scope: !90, file: !69, line: 142, baseType: !106, size: 16, align: 16)
!106 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_ivalue", scope: !90, file: !69, line: 143, baseType: !62, size: 32, align: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_mtu", scope: !90, file: !69, line: 144, baseType: !62, size: 32, align: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_map", scope: !90, file: !69, line: 145, baseType: !110, size: 192, align: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifmap", file: !69, line: 111, size: 192, align: 64, elements: !111)
!111 = !{!112, !114, !115, !116, !117, !118}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !110, file: !69, line: 113, baseType: !113, size: 64, align: 64)
!113 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "mem_end", scope: !110, file: !69, line: 114, baseType: !113, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "base_addr", scope: !110, file: !69, line: 115, baseType: !33, size: 16, align: 16, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !110, file: !69, line: 116, baseType: !47, size: 8, align: 8, offset: 144)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !110, file: !69, line: 117, baseType: !47, size: 8, align: 8, offset: 152)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !110, file: !69, line: 118, baseType: !47, size: 8, align: 8, offset: 160)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_slave", scope: !90, file: !69, line: 146, baseType: !86, size: 128, align: 8)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_newname", scope: !90, file: !69, line: 147, baseType: !86, size: 128, align: 8)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_data", scope: !90, file: !69, line: 148, baseType: !76, size: 64, align: 64)
!122 = !DILocation(line: 158, column: 18, scope: !54)
!123 = !DILocalVariable(name: "ifaces", scope: !54, file: !55, line: 159, type: !124)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 20480, align: 64, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 64)
!127 = !DILocation(line: 159, column: 17, scope: !54)
!128 = !DILocalVariable(name: "ipstr", scope: !54, file: !55, line: 160, type: !86)
!129 = !DILocation(line: 160, column: 9, scope: !54)
!130 = !DILocation(line: 163, column: 9, scope: !54)
!131 = !DILocation(line: 163, column: 7, scope: !54)
!132 = !DILocation(line: 164, column: 8, scope: !133)
!133 = distinct !DILexicalBlock(scope: !54, file: !55, line: 164, column: 8)
!134 = !DILocation(line: 164, column: 11, scope: !133)
!135 = !DILocation(line: 164, column: 8, scope: !54)
!136 = !DILocation(line: 165, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !55, line: 164, column: 16)
!138 = !DILocation(line: 168, column: 4, scope: !54)
!139 = !DILocation(line: 169, column: 4, scope: !54)
!140 = !DILocation(line: 172, column: 20, scope: !54)
!141 = !DILocation(line: 172, column: 10, scope: !54)
!142 = !DILocation(line: 172, column: 19, scope: !54)
!143 = !DILocation(line: 172, column: 18, scope: !54)
!144 = !DILocation(line: 173, column: 11, scope: !54)
!145 = !DILocation(line: 173, column: 19, scope: !54)
!146 = !DILocation(line: 175, column: 14, scope: !147)
!147 = distinct !DILexicalBlock(scope: !54, file: !55, line: 175, column: 8)
!148 = !DILocation(line: 175, column: 8, scope: !147)
!149 = !DILocation(line: 175, column: 39, scope: !147)
!150 = !DILocation(line: 175, column: 8, scope: !54)
!151 = !DILocation(line: 176, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !55, line: 175, column: 44)
!153 = !DILocation(line: 176, column: 7, scope: !152)
!154 = !DILocation(line: 177, column: 7, scope: !152)
!155 = !DILocation(line: 180, column: 10, scope: !54)
!156 = !DILocation(line: 180, column: 4, scope: !54)
!157 = !DILocation(line: 183, column: 11, scope: !158)
!158 = distinct !DILexicalBlock(scope: !54, file: !55, line: 183, column: 4)
!159 = !DILocation(line: 183, column: 9, scope: !158)
!160 = !DILocation(line: 183, column: 16, scope: !161)
!161 = !DILexicalBlockFile(scope: !162, file: !55, discriminator: 1)
!162 = distinct !DILexicalBlock(scope: !158, file: !55, line: 183, column: 4)
!163 = !DILocation(line: 183, column: 18, scope: !161)
!164 = !DILocation(line: 183, column: 4, scope: !161)
!165 = !DILocation(line: 184, column: 41, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !55, line: 184, column: 11)
!167 = distinct !DILexicalBlock(scope: !162, file: !55, line: 183, column: 57)
!168 = !DILocation(line: 184, column: 34, scope: !166)
!169 = !DILocation(line: 184, column: 43, scope: !166)
!170 = !DILocation(line: 184, column: 52, scope: !166)
!171 = !DILocation(line: 185, column: 64, scope: !166)
!172 = !DILocation(line: 185, column: 57, scope: !166)
!173 = !DILocation(line: 185, column: 66, scope: !166)
!174 = !DILocation(line: 185, column: 75, scope: !166)
!175 = !DILocation(line: 185, column: 34, scope: !166)
!176 = !DILocation(line: 186, column: 34, scope: !166)
!177 = !DILocation(line: 184, column: 11, scope: !166)
!178 = !DILocation(line: 184, column: 11, scope: !167)
!179 = !DILocation(line: 187, column: 10, scope: !180)
!180 = distinct !DILexicalBlock(scope: !166, file: !55, line: 186, column: 42)
!181 = !DILocation(line: 189, column: 4, scope: !167)
!182 = !DILocation(line: 183, column: 53, scope: !183)
!183 = !DILexicalBlockFile(scope: !162, file: !55, discriminator: 2)
!184 = !DILocation(line: 183, column: 4, scope: !183)
!185 = distinct !{!185, !186}
!186 = !DILocation(line: 183, column: 4, scope: !54)
!187 = !DILocation(line: 192, column: 18, scope: !54)
!188 = !DILocation(line: 192, column: 11, scope: !54)
!189 = !DILocation(line: 192, column: 4, scope: !54)
!190 = !DILocation(line: 193, column: 1, scope: !54)
!191 = distinct !DISubprogram(name: "ValidateConvertAddress", scope: !55, file: !55, line: 99, type: !192, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !196, !198, !58}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !195, line: 230, baseType: !59)
!195 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!200 = !DILocalVariable(name: "ifaceName", arg: 1, scope: !191, file: !55, line: 99, type: !196)
!201 = !DILocation(line: 99, column: 36, scope: !191)
!202 = !DILocalVariable(name: "addr", arg: 2, scope: !191, file: !55, line: 100, type: !198)
!203 = !DILocation(line: 100, column: 50, scope: !191)
!204 = !DILocalVariable(name: "ipstr", arg: 3, scope: !191, file: !55, line: 102, type: !58)
!205 = !DILocation(line: 102, column: 29, scope: !191)
!206 = !DILocation(line: 109, column: 8, scope: !207)
!207 = distinct !DILexicalBlock(scope: !191, file: !55, line: 109, column: 8)
!208 = !DILocation(line: 109, column: 21, scope: !207)
!209 = !DILocation(line: 109, column: 29, scope: !207)
!210 = !DILocation(line: 110, column: 16, scope: !207)
!211 = !DILocation(line: 110, column: 8, scope: !207)
!212 = !DILocation(line: 110, column: 50, scope: !207)
!213 = !DILocation(line: 110, column: 55, scope: !207)
!214 = !DILocation(line: 111, column: 8, scope: !207)
!215 = !DILocation(line: 111, column: 14, scope: !207)
!216 = !DILocation(line: 111, column: 25, scope: !207)
!217 = !DILocation(line: 109, column: 8, scope: !218)
!218 = !DILexicalBlockFile(scope: !191, file: !55, discriminator: 1)
!219 = !DILocation(line: 112, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !207, file: !55, line: 111, column: 36)
!221 = !DILocation(line: 124, column: 35, scope: !222)
!222 = distinct !DILexicalBlock(scope: !191, file: !55, line: 124, column: 8)
!223 = !DILocation(line: 124, column: 41, scope: !222)
!224 = !DILocation(line: 124, column: 26, scope: !222)
!225 = !DILocation(line: 124, column: 51, scope: !222)
!226 = !DILocation(line: 124, column: 8, scope: !222)
!227 = !DILocation(line: 124, column: 75, scope: !222)
!228 = !DILocation(line: 124, column: 83, scope: !222)
!229 = !DILocation(line: 125, column: 15, scope: !222)
!230 = !DILocation(line: 125, column: 8, scope: !222)
!231 = !DILocation(line: 125, column: 33, scope: !222)
!232 = !DILocation(line: 124, column: 8, scope: !218)
!233 = !DILocation(line: 126, column: 7, scope: !234)
!234 = distinct !DILexicalBlock(scope: !222, file: !55, line: 125, column: 39)
!235 = !DILocation(line: 125, column: 36, scope: !236)
!236 = !DILexicalBlockFile(scope: !222, file: !55, discriminator: 1)
!237 = !DILocation(line: 130, column: 4, scope: !191)
!238 = !DILocation(line: 130, column: 13, scope: !191)
!239 = !DILocation(line: 131, column: 4, scope: !191)
!240 = !DILocation(line: 132, column: 1, scope: !191)
!241 = distinct !DISubprogram(name: "NetUtil_GetPrimaryNic", scope: !55, file: !55, line: 254, type: !242, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!242 = !DISubroutineType(types: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNic", file: !16, line: 49, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNic", file: !16, line: 42, size: 320, align: 64, elements: !247)
!247 = !{!248, !252}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "macAddress", scope: !246, file: !16, line: 43, baseType: !249, size: 144, align: 8)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 144, align: 8, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 18)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !246, file: !16, line: 47, baseType: !253, size: 128, align: 64, offset: 192)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !246, file: !16, line: 44, size: 128, align: 64, elements: !254)
!254 = !{!255, !259}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ips_len", scope: !253, file: !16, line: 45, baseType: !256, size: 32, align: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !257, line: 35, baseType: !258)
!257 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !77, line: 32, baseType: !44)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ips_val", scope: !253, file: !16, line: 46, baseType: !260, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmIpAddress", file: !16, line: 34, size: 1088, align: 32, elements: !262)
!262 = !{!263, !265, !266, !268}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "addressFamily", scope: !261, file: !16, line: 35, baseType: !264, size: 32, align: 32)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoAddrType", file: !16, line: 32, baseType: !15)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpEnabled", scope: !261, file: !16, line: 36, baseType: !194, size: 8, align: 8, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddress", scope: !261, file: !16, line: 37, baseType: !267, size: 512, align: 8, offset: 40)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 512, align: 8, elements: !125)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "subnetMask", scope: !261, file: !16, line: 38, baseType: !267, size: 512, align: 8, offset: 552)
!269 = !DILocalVariable(name: "nicEntry", scope: !241, file: !55, line: 256, type: !244)
!270 = !DILocation(line: 256, column: 14, scope: !241)
!271 = !DILocalVariable(name: "ip", scope: !241, file: !55, line: 257, type: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmIpAddress", file: !16, line: 40, baseType: !261)
!274 = !DILocation(line: 257, column: 17, scope: !241)
!275 = !DILocalVariable(name: "ipstr", scope: !241, file: !55, line: 258, type: !58)
!276 = !DILocation(line: 258, column: 10, scope: !241)
!277 = !DILocation(line: 260, column: 12, scope: !241)
!278 = !DILocation(line: 260, column: 10, scope: !241)
!279 = !DILocation(line: 261, column: 15, scope: !280)
!280 = distinct !DILexicalBlock(scope: !241, file: !55, line: 261, column: 7)
!281 = !DILocation(line: 261, column: 12, scope: !280)
!282 = !DILocation(line: 261, column: 7, scope: !241)
!283 = !DILocation(line: 262, column: 7, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !55, line: 261, column: 22)
!285 = !DILocation(line: 265, column: 15, scope: !241)
!286 = !DILocation(line: 265, column: 13, scope: !241)
!287 = !DILocation(line: 266, column: 9, scope: !241)
!288 = !DILocation(line: 266, column: 7, scope: !241)
!289 = !DILocation(line: 268, column: 4, scope: !241)
!290 = !DILocation(line: 268, column: 14, scope: !241)
!291 = !DILocation(line: 268, column: 18, scope: !241)
!292 = !DILocation(line: 268, column: 26, scope: !241)
!293 = !DILocation(line: 269, column: 28, scope: !241)
!294 = !DILocation(line: 269, column: 4, scope: !241)
!295 = !DILocation(line: 269, column: 14, scope: !241)
!296 = !DILocation(line: 269, column: 18, scope: !241)
!297 = !DILocation(line: 269, column: 26, scope: !241)
!298 = !DILocation(line: 271, column: 15, scope: !241)
!299 = !DILocation(line: 271, column: 19, scope: !241)
!300 = !DILocation(line: 271, column: 30, scope: !241)
!301 = !DILocation(line: 271, column: 4, scope: !241)
!302 = !DILocation(line: 272, column: 9, scope: !241)
!303 = !DILocation(line: 272, column: 4, scope: !241)
!304 = !DILocation(line: 275, column: 11, scope: !241)
!305 = !DILocation(line: 275, column: 4, scope: !241)
!306 = distinct !DISubprogram(name: "NetUtil_GetHardwareAddress", scope: !55, file: !55, line: 372, type: !307, isLocal: false, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !62, !58, !309, !311}
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !310, line: 216, baseType: !113)
!310 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line736")
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "IanaIfType", file: !21, line: 52, baseType: !20)
!313 = !DILocalVariable(name: "ifIndex", arg: 1, scope: !306, file: !55, line: 372, type: !62)
!314 = !DILocation(line: 372, column: 32, scope: !306)
!315 = !DILocalVariable(name: "hwAddr", arg: 2, scope: !306, file: !55, line: 373, type: !58)
!316 = !DILocation(line: 373, column: 34, scope: !306)
!317 = !DILocalVariable(name: "hwAddrSize", arg: 3, scope: !306, file: !55, line: 374, type: !309)
!318 = !DILocation(line: 374, column: 35, scope: !306)
!319 = !DILocalVariable(name: "ifType", arg: 4, scope: !306, file: !55, line: 375, type: !311)
!320 = !DILocation(line: 375, column: 40, scope: !306)
!321 = !DILocalVariable(name: "ifreq", scope: !306, file: !55, line: 377, type: !80)
!322 = !DILocation(line: 377, column: 17, scope: !306)
!323 = !DILocalVariable(name: "fd", scope: !306, file: !55, line: 378, type: !62)
!324 = !DILocation(line: 378, column: 8, scope: !306)
!325 = !DILocalVariable(name: "ret", scope: !306, file: !55, line: 379, type: !309)
!326 = !DILocation(line: 379, column: 11, scope: !306)
!327 = !DILocation(line: 381, column: 8, scope: !328)
!328 = distinct !DILexicalBlock(scope: !306, file: !55, line: 381, column: 8)
!329 = !DILocation(line: 381, column: 19, scope: !328)
!330 = !DILocation(line: 381, column: 8, scope: !306)
!331 = !DILocation(line: 382, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !55, line: 381, column: 33)
!333 = !DILocation(line: 387, column: 4, scope: !306)
!334 = !DILocation(line: 388, column: 23, scope: !335)
!335 = distinct !DILexicalBlock(scope: !306, file: !55, line: 388, column: 8)
!336 = !DILocation(line: 388, column: 37, scope: !335)
!337 = !DILocation(line: 388, column: 46, scope: !335)
!338 = !DILocation(line: 388, column: 32, scope: !335)
!339 = !DILocation(line: 388, column: 8, scope: !335)
!340 = !DILocation(line: 388, column: 47, scope: !335)
!341 = !DILocation(line: 388, column: 8, scope: !306)
!342 = !DILocation(line: 389, column: 7, scope: !343)
!343 = distinct !DILexicalBlock(scope: !335, file: !55, line: 388, column: 56)
!344 = !DILocation(line: 392, column: 14, scope: !345)
!345 = distinct !DILexicalBlock(scope: !306, file: !55, line: 392, column: 8)
!346 = !DILocation(line: 392, column: 12, scope: !345)
!347 = !DILocation(line: 392, column: 45, scope: !345)
!348 = !DILocation(line: 392, column: 8, scope: !306)
!349 = !DILocation(line: 393, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !55, line: 392, column: 52)
!351 = !DILocation(line: 396, column: 14, scope: !352)
!352 = distinct !DILexicalBlock(scope: !306, file: !55, line: 396, column: 8)
!353 = !DILocation(line: 396, column: 8, scope: !352)
!354 = !DILocation(line: 396, column: 40, scope: !352)
!355 = !DILocation(line: 396, column: 45, scope: !352)
!356 = !DILocation(line: 397, column: 13, scope: !352)
!357 = !DILocation(line: 397, column: 22, scope: !352)
!358 = !DILocation(line: 397, column: 24, scope: !352)
!359 = !DILocation(line: 397, column: 8, scope: !352)
!360 = !DILocation(line: 397, column: 34, scope: !352)
!361 = !DILocation(line: 396, column: 8, scope: !362)
!362 = !DILexicalBlockFile(scope: !306, file: !55, discriminator: 1)
!363 = !DILocation(line: 398, column: 14, scope: !364)
!364 = distinct !DILexicalBlock(scope: !352, file: !55, line: 397, column: 51)
!365 = !DILocation(line: 398, column: 27, scope: !364)
!366 = !DILocation(line: 398, column: 36, scope: !364)
!367 = !DILocation(line: 398, column: 38, scope: !364)
!368 = !DILocation(line: 398, column: 7, scope: !364)
!369 = !DILocation(line: 399, column: 8, scope: !364)
!370 = !DILocation(line: 399, column: 15, scope: !364)
!371 = !DILocation(line: 400, column: 11, scope: !364)
!372 = !DILocation(line: 401, column: 4, scope: !364)
!373 = !DILocation(line: 403, column: 10, scope: !306)
!374 = !DILocation(line: 403, column: 4, scope: !306)
!375 = !DILocation(line: 405, column: 11, scope: !306)
!376 = !DILocation(line: 405, column: 4, scope: !306)
!377 = !DILocation(line: 406, column: 1, scope: !306)
