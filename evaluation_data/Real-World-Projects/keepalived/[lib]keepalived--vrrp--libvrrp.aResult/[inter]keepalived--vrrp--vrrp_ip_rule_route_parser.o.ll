; ModuleID = './[inter]keepalived--vrrp--vrrp_ip_rule_route_parser.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_ip_rule_route_parser.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.anon = type { i64 }
%struct._encap_mpls = type { [2 x %struct.mpls_label], i64 }
%struct.mpls_label = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"Ee\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@WHITE_SPACE = external global i8*, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"secs\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"msec\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"msecs\00", align 1
@garp_delay = common global %struct._list* null, align 8

; Function Attrs: nounwind uwtable
define zeroext i1 @get_realms(i32*, i8*) #0 !dbg !134 {
  %3 = alloca i1, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !141, metadata !142), !dbg !143
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !144, metadata !142), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %6, metadata !146, metadata !142), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %7, metadata !148, metadata !142), !dbg !149
  call void @llvm.dbg.declare(metadata i8** %8, metadata !150, metadata !142), !dbg !151
  %9 = load i8*, i8** %5, align 8, !dbg !152
  %10 = call i8* @strchr(i8* %9, i32 47) #6, !dbg !154
  store i8* %10, i8** %8, align 8, !dbg !155
  %11 = icmp ne i8* %10, null, !dbg !155
  br i1 %11, label %12, label %14, !dbg !156

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %8, align 8, !dbg !157
  store i8 0, i8* %13, align 1, !dbg !158
  br label %14, !dbg !159

; <label>:14:                                     ; preds = %12, %2
  %15 = load i8*, i8** %5, align 8, !dbg !160
  %16 = call zeroext i1 @find_rttables_realms(i8* %15, i32* %6), !dbg !162
  br i1 %16, label %18, label %17, !dbg !163

; <label>:17:                                     ; preds = %14
  br label %36, !dbg !164

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %8, align 8, !dbg !165
  %20 = icmp ne i8* %19, null, !dbg !165
  br i1 %20, label %21, label %33, !dbg !167

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %8, align 8, !dbg !168
  %23 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !171
  %24 = call zeroext i1 @find_rttables_realms(i8* %23, i32* %7), !dbg !172
  br i1 %24, label %26, label %25, !dbg !173

; <label>:25:                                     ; preds = %21
  br label %36, !dbg !174

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %6, align 4, !dbg !175
  %28 = shl i32 %27, 16, !dbg !175
  store i32 %28, i32* %6, align 4, !dbg !175
  %29 = load i32, i32* %7, align 4, !dbg !176
  %30 = load i32, i32* %6, align 4, !dbg !177
  %31 = or i32 %30, %29, !dbg !177
  store i32 %31, i32* %6, align 4, !dbg !177
  %32 = load i8*, i8** %8, align 8, !dbg !178
  store i8 47, i8* %32, align 1, !dbg !179
  br label %33, !dbg !180

; <label>:33:                                     ; preds = %26, %18
  %34 = load i32, i32* %6, align 4, !dbg !181
  %35 = load i32*, i32** %4, align 8, !dbg !182
  store i32 %34, i32* %35, align 4, !dbg !183
  store i1 false, i1* %3, align 1, !dbg !184
  br label %42, !dbg !184

; <label>:36:                                     ; preds = %25, %17
  %37 = load i8*, i8** %8, align 8, !dbg !185
  %38 = icmp ne i8* %37, null, !dbg !185
  br i1 %38, label %39, label %41, !dbg !187

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** %8, align 8, !dbg !188
  store i8 47, i8* %40, align 1, !dbg !189
  br label %41, !dbg !190

; <label>:41:                                     ; preds = %39, %36
  store i1 true, i1* %3, align 1, !dbg !191
  br label %42, !dbg !191

; <label>:42:                                     ; preds = %41, %33
  %43 = load i1, i1* %3, align 1, !dbg !192
  ret i1 %43, !dbg !192
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare zeroext i1 @find_rttables_realms(i8*, i32*) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @get_u8(i8*, i8*, i8 zeroext, i8*) #0 !dbg !193 {
  %5 = alloca i1, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !199, metadata !142), !dbg !200
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !201, metadata !142), !dbg !202
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !203, metadata !142), !dbg !204
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !205, metadata !142), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %10, metadata !207, metadata !142), !dbg !208
  %11 = load i8*, i8** %7, align 8, !dbg !209
  %12 = load i8, i8* %8, align 1, !dbg !211
  %13 = zext i8 %12 to i32, !dbg !211
  %14 = call zeroext i1 @read_unsigned(i8* %11, i32* %10, i32 0, i32 %13, i1 zeroext false), !dbg !212
  br i1 %14, label %15, label %19, !dbg !213

; <label>:15:                                     ; preds = %4
  %16 = load i32, i32* %10, align 4, !dbg !214
  %17 = trunc i32 %16 to i8, !dbg !216
  %18 = load i8*, i8** %6, align 8, !dbg !217
  store i8 %17, i8* %18, align 1, !dbg !218
  store i1 false, i1* %5, align 1, !dbg !219
  br label %22, !dbg !219

; <label>:19:                                     ; preds = %4
  %20 = load i8*, i8** %9, align 8, !dbg !220
  %21 = load i8*, i8** %7, align 8, !dbg !221
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* %20, i8* %21), !dbg !222
  store i1 true, i1* %5, align 1, !dbg !223
  br label %22, !dbg !223

; <label>:22:                                     ; preds = %19, %15
  %23 = load i1, i1* %5, align 1, !dbg !224
  ret i1 %23, !dbg !224
}

declare zeroext i1 @read_unsigned(i8*, i32*, i32, i32, i1 zeroext) #3

declare void @report_config_error(i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @get_u16(i16*, i8*, i16 zeroext, i8*) #0 !dbg !225 {
  %5 = alloca i1, align 1
  %6 = alloca i16*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i16* %0, i16** %6, align 8
  call void @llvm.dbg.declare(metadata i16** %6, metadata !229, metadata !142), !dbg !230
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !231, metadata !142), !dbg !232
  store i16 %2, i16* %8, align 2
  call void @llvm.dbg.declare(metadata i16* %8, metadata !233, metadata !142), !dbg !234
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !235, metadata !142), !dbg !236
  call void @llvm.dbg.declare(metadata i32* %10, metadata !237, metadata !142), !dbg !238
  %11 = load i8*, i8** %7, align 8, !dbg !239
  %12 = load i16, i16* %8, align 2, !dbg !241
  %13 = zext i16 %12 to i32, !dbg !241
  %14 = call zeroext i1 @read_unsigned(i8* %11, i32* %10, i32 0, i32 %13, i1 zeroext false), !dbg !242
  br i1 %14, label %15, label %19, !dbg !243

; <label>:15:                                     ; preds = %4
  %16 = load i32, i32* %10, align 4, !dbg !244
  %17 = trunc i32 %16 to i16, !dbg !246
  %18 = load i16*, i16** %6, align 8, !dbg !247
  store i16 %17, i16* %18, align 2, !dbg !248
  store i1 false, i1* %5, align 1, !dbg !249
  br label %22, !dbg !249

; <label>:19:                                     ; preds = %4
  %20 = load i8*, i8** %9, align 8, !dbg !250
  %21 = load i8*, i8** %7, align 8, !dbg !251
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* %20, i8* %21), !dbg !252
  store i1 true, i1* %5, align 1, !dbg !253
  br label %22, !dbg !253

; <label>:22:                                     ; preds = %19, %15
  %23 = load i1, i1* %5, align 1, !dbg !254
  ret i1 %23, !dbg !254
}

; Function Attrs: nounwind uwtable
define zeroext i1 @get_u32(i32*, i8*, i32, i8*) #0 !dbg !255 {
  %5 = alloca i1, align 1
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !258, metadata !142), !dbg !259
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !260, metadata !142), !dbg !261
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !262, metadata !142), !dbg !263
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !264, metadata !142), !dbg !265
  call void @llvm.dbg.declare(metadata i32* %10, metadata !266, metadata !142), !dbg !267
  %11 = load i8*, i8** %7, align 8, !dbg !268
  %12 = load i32, i32* %8, align 4, !dbg !270
  %13 = call zeroext i1 @read_unsigned(i8* %11, i32* %10, i32 0, i32 %12, i1 zeroext false), !dbg !271
  br i1 %13, label %14, label %17, !dbg !272

; <label>:14:                                     ; preds = %4
  %15 = load i32, i32* %10, align 4, !dbg !273
  %16 = load i32*, i32** %6, align 8, !dbg !275
  store i32 %15, i32* %16, align 4, !dbg !276
  store i1 false, i1* %5, align 1, !dbg !277
  br label %20, !dbg !277

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %9, align 8, !dbg !278
  %19 = load i8*, i8** %7, align 8, !dbg !279
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* %18, i8* %19), !dbg !280
  store i1 true, i1* %5, align 1, !dbg !281
  br label %20, !dbg !281

; <label>:20:                                     ; preds = %17, %14
  %21 = load i1, i1* %5, align 1, !dbg !282
  ret i1 %21, !dbg !282
}

; Function Attrs: nounwind uwtable
define zeroext i1 @get_u64(i64*, i8*, i64, i8*) #0 !dbg !283 {
  %5 = alloca i1, align 1
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !287, metadata !142), !dbg !288
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !289, metadata !142), !dbg !290
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !291, metadata !142), !dbg !292
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !293, metadata !142), !dbg !294
  call void @llvm.dbg.declare(metadata i64* %10, metadata !295, metadata !142), !dbg !296
  %11 = load i8*, i8** %7, align 8, !dbg !297
  %12 = load i64, i64* %8, align 8, !dbg !299
  %13 = call zeroext i1 @read_unsigned64(i8* %11, i64* %10, i64 0, i64 %12, i1 zeroext false), !dbg !300
  br i1 %13, label %14, label %17, !dbg !301

; <label>:14:                                     ; preds = %4
  %15 = load i64, i64* %10, align 8, !dbg !302
  %16 = load i64*, i64** %6, align 8, !dbg !304
  store i64 %15, i64* %16, align 8, !dbg !305
  store i1 false, i1* %5, align 1, !dbg !306
  br label %20, !dbg !306

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %9, align 8, !dbg !307
  %19 = load i8*, i8** %7, align 8, !dbg !308
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* %18, i8* %19), !dbg !309
  store i1 true, i1* %5, align 1, !dbg !310
  br label %20, !dbg !310

; <label>:20:                                     ; preds = %17, %14
  %21 = load i1, i1* %5, align 1, !dbg !311
  ret i1 %21, !dbg !311
}

declare zeroext i1 @read_unsigned64(i8*, i64*, i64, i64, i1 zeroext) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @get_time_rtt(i32*, i8*, i8*) #0 !dbg !312 {
  %4 = alloca i1, align 1
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !316, metadata !142), !dbg !317
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !318, metadata !142), !dbg !319
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !320, metadata !142), !dbg !321
  call void @llvm.dbg.declare(metadata double* %8, metadata !322, metadata !142), !dbg !323
  call void @llvm.dbg.declare(metadata i64* %9, metadata !324, metadata !142), !dbg !325
  call void @llvm.dbg.declare(metadata i8** %10, metadata !326, metadata !142), !dbg !327
  call void @llvm.dbg.declare(metadata i64* %11, metadata !328, metadata !142), !dbg !329
  %12 = call i32* @__errno_location() #1, !dbg !330
  store i32 0, i32* %12, align 4, !dbg !331
  %13 = load i8*, i8** %6, align 8, !dbg !332
  %14 = call i8* @strchr(i8* %13, i32 46) #6, !dbg !334
  %15 = icmp ne i8* %14, null, !dbg !334
  br i1 %15, label %24, label %16, !dbg !335

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %6, align 8, !dbg !336
  %18 = call i8* @strpbrk(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #6, !dbg !337
  %19 = icmp ne i8* %18, null, !dbg !337
  br i1 %19, label %20, label %48, !dbg !338

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %6, align 8, !dbg !339
  %22 = call i8* @strpbrk(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !341
  %23 = icmp ne i8* %22, null, !dbg !341
  br i1 %23, label %48, label %24, !dbg !342

; <label>:24:                                     ; preds = %20, %3
  %25 = load i8*, i8** %6, align 8, !dbg !344
  %26 = call double @strtod(i8* %25, i8** %10) #7, !dbg !346
  store double %26, double* %8, align 8, !dbg !347
  %27 = load double, double* %8, align 8, !dbg !348
  %28 = fcmp ole double %27, 0.000000e+00, !dbg !350
  br i1 %28, label %29, label %30, !dbg !351

; <label>:29:                                     ; preds = %24
  store i1 true, i1* %4, align 1, !dbg !352
  br label %136, !dbg !352

; <label>:30:                                     ; preds = %24
  %31 = load i8*, i8** %10, align 8, !dbg !353
  %32 = load i8*, i8** %6, align 8, !dbg !355
  %33 = icmp eq i8* %31, %32, !dbg !356
  br i1 %33, label %34, label %35, !dbg !357

; <label>:34:                                     ; preds = %30
  store i1 true, i1* %4, align 1, !dbg !358
  br label %136, !dbg !358

; <label>:35:                                     ; preds = %30
  %36 = load double, double* %8, align 8, !dbg !359
  %37 = fcmp oeq double %36, 0x7FF0000000000000, !dbg !361
  br i1 %37, label %38, label %43, !dbg !362

; <label>:38:                                     ; preds = %35
  %39 = call i32* @__errno_location() #1, !dbg !363
  %40 = load i32, i32* %39, align 4, !dbg !365
  %41 = icmp eq i32 %40, 34, !dbg !366
  br i1 %41, label %42, label %43, !dbg !367

; <label>:42:                                     ; preds = %38
  store i1 true, i1* %4, align 1, !dbg !368
  br label %136, !dbg !368

; <label>:43:                                     ; preds = %38, %35
  %44 = load double, double* %8, align 8, !dbg !369
  %45 = fcmp oge double %44, 0x41EFFFFFFFE00000, !dbg !371
  br i1 %45, label %46, label %47, !dbg !372

; <label>:46:                                     ; preds = %43
  store i1 true, i1* %4, align 1, !dbg !373
  br label %136, !dbg !373

; <label>:47:                                     ; preds = %43
  br label %81, !dbg !374

; <label>:48:                                     ; preds = %20, %16
  %49 = load i8*, i8** %6, align 8, !dbg !375
  %50 = load i8*, i8** @WHITE_SPACE, align 8, !dbg !377
  %51 = call i64 @strspn(i8* %49, i8* %50) #6, !dbg !378
  store i64 %51, i64* %11, align 8, !dbg !379
  %52 = load i64, i64* %11, align 8, !dbg !380
  %53 = load i8*, i8** %6, align 8, !dbg !382
  %54 = getelementptr inbounds i8, i8* %53, i64 %52, !dbg !382
  %55 = load i8, i8* %54, align 1, !dbg !382
  %56 = sext i8 %55 to i32, !dbg !382
  %57 = icmp eq i32 %56, 45, !dbg !383
  br i1 %57, label %58, label %59, !dbg !384

; <label>:58:                                     ; preds = %48
  store i1 true, i1* %4, align 1, !dbg !385
  br label %136, !dbg !385

; <label>:59:                                     ; preds = %48
  %60 = load i8*, i8** %6, align 8, !dbg !386
  %61 = call i64 @strtoul(i8* %60, i8** %10, i32 0) #7, !dbg !387
  store i64 %61, i64* %9, align 8, !dbg !388
  %62 = load i8*, i8** %10, align 8, !dbg !389
  %63 = load i8*, i8** %6, align 8, !dbg !391
  %64 = icmp eq i8* %62, %63, !dbg !392
  br i1 %64, label %65, label %66, !dbg !393

; <label>:65:                                     ; preds = %59
  store i1 true, i1* %4, align 1, !dbg !394
  br label %136, !dbg !394

; <label>:66:                                     ; preds = %59
  %67 = load i64, i64* %9, align 8, !dbg !395
  %68 = icmp eq i64 %67, -1, !dbg !397
  br i1 %68, label %69, label %74, !dbg !398

; <label>:69:                                     ; preds = %66
  %70 = call i32* @__errno_location() #1, !dbg !399
  %71 = load i32, i32* %70, align 4, !dbg !401
  %72 = icmp eq i32 %71, 34, !dbg !402
  br i1 %72, label %73, label %74, !dbg !403

; <label>:73:                                     ; preds = %69
  store i1 true, i1* %4, align 1, !dbg !404
  br label %136, !dbg !404

; <label>:74:                                     ; preds = %69, %66
  %75 = load i64, i64* %9, align 8, !dbg !405
  %76 = icmp ugt i64 %75, 4294967295, !dbg !407
  br i1 %76, label %77, label %78, !dbg !408

; <label>:77:                                     ; preds = %74
  store i1 true, i1* %4, align 1, !dbg !409
  br label %136, !dbg !409

; <label>:78:                                     ; preds = %74
  %79 = load i64, i64* %9, align 8, !dbg !410
  %80 = uitofp i64 %79 to double, !dbg !411
  store double %80, double* %8, align 8, !dbg !412
  br label %81

; <label>:81:                                     ; preds = %78, %47
  %82 = load i8*, i8** %10, align 8, !dbg !413
  %83 = load i8, i8* %82, align 1, !dbg !415
  %84 = icmp ne i8 %83, 0, !dbg !415
  br i1 %84, label %85, label %120, !dbg !416

; <label>:85:                                     ; preds = %81
  %86 = load i8*, i8** %7, align 8, !dbg !417
  store i8 0, i8* %86, align 1, !dbg !419
  %87 = load i8*, i8** %10, align 8, !dbg !420
  %88 = call i32 @strcasecmp(i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !422
  %89 = icmp ne i32 %88, 0, !dbg !422
  br i1 %89, label %90, label %98, !dbg !423

; <label>:90:                                     ; preds = %85
  %91 = load i8*, i8** %10, align 8, !dbg !424
  %92 = call i32 @strcasecmp(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !425
  %93 = icmp ne i32 %92, 0, !dbg !425
  br i1 %93, label %94, label %98, !dbg !426

; <label>:94:                                     ; preds = %90
  %95 = load i8*, i8** %10, align 8, !dbg !427
  %96 = call i32 @strcasecmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !428
  %97 = icmp ne i32 %96, 0, !dbg !428
  br i1 %97, label %105, label %98, !dbg !429

; <label>:98:                                     ; preds = %94, %90, %85
  %99 = load double, double* %8, align 8, !dbg !431
  %100 = fcmp oge double %99, 4.294967e+06, !dbg !434
  br i1 %100, label %101, label %102, !dbg !435

; <label>:101:                                    ; preds = %98
  store i1 true, i1* %4, align 1, !dbg !436
  br label %136, !dbg !436

; <label>:102:                                    ; preds = %98
  %103 = load double, double* %8, align 8, !dbg !437
  %104 = fmul double %103, 1.000000e+03, !dbg !437
  store double %104, double* %8, align 8, !dbg !437
  br label %119, !dbg !438

; <label>:105:                                    ; preds = %94
  %106 = load i8*, i8** %10, align 8, !dbg !439
  %107 = call i32 @strcasecmp(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !441
  %108 = icmp ne i32 %107, 0, !dbg !441
  br i1 %108, label %109, label %118, !dbg !442

; <label>:109:                                    ; preds = %105
  %110 = load i8*, i8** %10, align 8, !dbg !443
  %111 = call i32 @strcasecmp(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !444
  %112 = icmp ne i32 %111, 0, !dbg !444
  br i1 %112, label %113, label %118, !dbg !445

; <label>:113:                                    ; preds = %109
  %114 = load i8*, i8** %10, align 8, !dbg !446
  %115 = call i32 @strcasecmp(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !447
  %116 = icmp ne i32 %115, 0, !dbg !447
  br i1 %116, label %117, label %118, !dbg !448

; <label>:117:                                    ; preds = %113
  store i1 true, i1* %4, align 1, !dbg !450
  br label %136, !dbg !450

; <label>:118:                                    ; preds = %113, %109, %105
  br label %119

; <label>:119:                                    ; preds = %118, %102
  br label %122, !dbg !451

; <label>:120:                                    ; preds = %81
  %121 = load i8*, i8** %7, align 8, !dbg !452
  store i8 1, i8* %121, align 1, !dbg !453
  br label %122

; <label>:122:                                    ; preds = %120, %119
  %123 = load double, double* %8, align 8, !dbg !454
  %124 = fptoui double %123 to i32, !dbg !455
  %125 = load i32*, i32** %5, align 8, !dbg !456
  store i32 %124, i32* %125, align 4, !dbg !457
  %126 = load i32*, i32** %5, align 8, !dbg !458
  %127 = load i32, i32* %126, align 4, !dbg !460
  %128 = uitofp i32 %127 to double, !dbg !460
  %129 = load double, double* %8, align 8, !dbg !461
  %130 = fcmp olt double %128, %129, !dbg !462
  br i1 %130, label %131, label %135, !dbg !463

; <label>:131:                                    ; preds = %122
  %132 = load i32*, i32** %5, align 8, !dbg !464
  %133 = load i32, i32* %132, align 4, !dbg !465
  %134 = add i32 %133, 1, !dbg !465
  store i32 %134, i32* %132, align 4, !dbg !465
  br label %135, !dbg !466

; <label>:135:                                    ; preds = %131, %122
  store i1 false, i1* %4, align 1, !dbg !467
  br label %136, !dbg !467

; <label>:136:                                    ; preds = %135, %117, %101, %77, %73, %65, %58, %46, %42, %34, %29
  %137 = load i1, i1* %4, align 1, !dbg !468
  ret i1 %137, !dbg !468
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #2

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #5

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #2

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #5

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @get_addr64(i64*, i8*) #0 !dbg !469 {
  %3 = alloca i1, align 1
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !472, metadata !142), !dbg !473
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !474, metadata !142), !dbg !475
  call void @llvm.dbg.declare(metadata i32* %6, metadata !476, metadata !142), !dbg !477
  call void @llvm.dbg.declare(metadata %union.anon* %7, metadata !478, metadata !142), !dbg !486
  %10 = load i8*, i8** %5, align 8, !dbg !487
  %11 = load i8*, i8** @WHITE_SPACE, align 8, !dbg !488
  %12 = call i64 @strspn(i8* %10, i8* %11) #6, !dbg !489
  %13 = load i8*, i8** %5, align 8, !dbg !490
  %14 = getelementptr inbounds i8, i8* %13, i64 %12, !dbg !490
  store i8* %14, i8** %5, align 8, !dbg !490
  %15 = bitcast %union.anon* %7 to i64*, !dbg !491
  store i64 0, i64* %15, align 8, !dbg !492
  store i32 0, i32* %6, align 4, !dbg !493
  br label %16, !dbg !495

; <label>:16:                                     ; preds = %72, %2
  %17 = load i32, i32* %6, align 4, !dbg !496
  %18 = icmp slt i32 %17, 4, !dbg !499
  br i1 %18, label %19, label %75, !dbg !500

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i64* %8, metadata !501, metadata !142), !dbg !503
  call void @llvm.dbg.declare(metadata i8** %9, metadata !504, metadata !142), !dbg !505
  %20 = load i8*, i8** %5, align 8, !dbg !506
  %21 = load i8, i8* %20, align 1, !dbg !508
  %22 = sext i8 %21 to i32, !dbg !509
  %23 = sext i32 %22 to i64, !dbg !506
  %24 = call i16** @__ctype_b_loc() #1, !dbg !510
  %25 = load i16*, i16** %24, align 8, !dbg !511
  %26 = getelementptr inbounds i16, i16* %25, i64 %23, !dbg !506
  %27 = load i16, i16* %26, align 2, !dbg !506
  %28 = zext i16 %27 to i32, !dbg !506
  %29 = and i32 %28, 4096, !dbg !512
  %30 = icmp ne i32 %29, 0, !dbg !512
  br i1 %30, label %32, label %31, !dbg !513

; <label>:31:                                     ; preds = %19
  store i1 true, i1* %3, align 1, !dbg !514
  br label %79, !dbg !514

; <label>:32:                                     ; preds = %19
  %33 = load i8*, i8** %5, align 8, !dbg !515
  %34 = call i64 @strtoul(i8* %33, i8** %9, i32 16) #7, !dbg !516
  store i64 %34, i64* %8, align 8, !dbg !517
  %35 = load i64, i64* %8, align 8, !dbg !518
  %36 = icmp ugt i64 %35, 65535, !dbg !520
  br i1 %36, label %37, label %38, !dbg !521

; <label>:37:                                     ; preds = %32
  store i1 true, i1* %3, align 1, !dbg !522
  br label %79, !dbg !522

; <label>:38:                                     ; preds = %32
  %39 = load i8*, i8** %9, align 8, !dbg !523
  %40 = load i8*, i8** %5, align 8, !dbg !525
  %41 = icmp eq i8* %39, %40, !dbg !526
  br i1 %41, label %42, label %43, !dbg !527

; <label>:42:                                     ; preds = %38
  store i1 true, i1* %3, align 1, !dbg !528
  br label %79, !dbg !528

; <label>:43:                                     ; preds = %38
  %44 = load i64, i64* %8, align 8, !dbg !529
  %45 = trunc i64 %44 to i16, !dbg !529
  %46 = call zeroext i16 @htons(i16 zeroext %45) #1, !dbg !530
  %47 = load i32, i32* %6, align 4, !dbg !531
  %48 = sext i32 %47 to i64, !dbg !532
  %49 = bitcast %union.anon* %7 to [4 x i16]*, !dbg !533
  %50 = getelementptr inbounds [4 x i16], [4 x i16]* %49, i64 0, i64 %48, !dbg !532
  store i16 %46, i16* %50, align 2, !dbg !534
  %51 = load i8*, i8** %9, align 8, !dbg !535
  %52 = load i8, i8* %51, align 1, !dbg !537
  %53 = sext i8 %52 to i32, !dbg !537
  %54 = icmp eq i32 %53, 0, !dbg !538
  br i1 %54, label %55, label %60, !dbg !539

; <label>:55:                                     ; preds = %43
  %56 = load i32, i32* %6, align 4, !dbg !540
  %57 = icmp ne i32 %56, 3, !dbg !543
  br i1 %57, label %58, label %59, !dbg !544

; <label>:58:                                     ; preds = %55
  store i1 true, i1* %3, align 1, !dbg !545
  br label %79, !dbg !545

; <label>:59:                                     ; preds = %55
  br label %75, !dbg !546

; <label>:60:                                     ; preds = %43
  %61 = load i32, i32* %6, align 4, !dbg !547
  %62 = icmp eq i32 %61, 3, !dbg !549
  br i1 %62, label %68, label %63, !dbg !550

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %9, align 8, !dbg !551
  %65 = load i8, i8* %64, align 1, !dbg !553
  %66 = sext i8 %65 to i32, !dbg !553
  %67 = icmp ne i32 %66, 58, !dbg !554
  br i1 %67, label %68, label %69, !dbg !555

; <label>:68:                                     ; preds = %63, %60
  store i1 true, i1* %3, align 1, !dbg !556
  br label %79, !dbg !556

; <label>:69:                                     ; preds = %63
  %70 = load i8*, i8** %9, align 8, !dbg !557
  %71 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !558
  store i8* %71, i8** %5, align 8, !dbg !559
  br label %72, !dbg !560

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %6, align 4, !dbg !561
  %74 = add nsw i32 %73, 1, !dbg !561
  store i32 %74, i32* %6, align 4, !dbg !561
  br label %16, !dbg !563, !llvm.loop !564

; <label>:75:                                     ; preds = %59, %16
  %76 = bitcast %union.anon* %7 to i64*, !dbg !566
  %77 = load i64, i64* %76, align 8, !dbg !566
  %78 = load i64*, i64** %4, align 8, !dbg !567
  store i64 %77, i64* %78, align 8, !dbg !568
  store i1 false, i1* %3, align 1, !dbg !569
  br label %79, !dbg !569

; <label>:79:                                     ; preds = %75, %68, %58, %42, %37, %31
  %80 = load i1, i1* %3, align 1, !dbg !570
  ret i1 %80, !dbg !570
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind uwtable
define zeroext i1 @parse_mpls_address(i8*, %struct._encap_mpls*) #0 !dbg !571 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct._encap_mpls*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !593, metadata !142), !dbg !594
  store %struct._encap_mpls* %1, %struct._encap_mpls** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._encap_mpls** %5, metadata !595, metadata !142), !dbg !596
  call void @llvm.dbg.declare(metadata i8** %6, metadata !597, metadata !142), !dbg !598
  call void @llvm.dbg.declare(metadata i32* %7, metadata !599, metadata !142), !dbg !600
  call void @llvm.dbg.declare(metadata i64* %8, metadata !601, metadata !142), !dbg !602
  %9 = load %struct._encap_mpls*, %struct._encap_mpls** %5, align 8, !dbg !603
  %10 = getelementptr inbounds %struct._encap_mpls, %struct._encap_mpls* %9, i32 0, i32 1, !dbg !604
  store i64 0, i64* %10, align 8, !dbg !605
  %11 = load i8*, i8** %4, align 8, !dbg !606
  %12 = load i8*, i8** @WHITE_SPACE, align 8, !dbg !607
  %13 = call i64 @strspn(i8* %11, i8* %12) #6, !dbg !608
  %14 = load i8*, i8** %4, align 8, !dbg !609
  %15 = getelementptr inbounds i8, i8* %14, i64 %13, !dbg !609
  store i8* %15, i8** %4, align 8, !dbg !609
  store i32 0, i32* %7, align 4, !dbg !610
  br label %16, !dbg !612

; <label>:16:                                     ; preds = %87, %2
  %17 = load i32, i32* %7, align 4, !dbg !613
  %18 = icmp ult i32 %17, 2, !dbg !616
  br i1 %18, label %19, label %90, !dbg !617

; <label>:19:                                     ; preds = %16
  %20 = load i8*, i8** %4, align 8, !dbg !618
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !618
  %22 = load i8, i8* %21, align 1, !dbg !618
  %23 = sext i8 %22 to i32, !dbg !618
  %24 = icmp eq i32 %23, 45, !dbg !621
  br i1 %24, label %25, label %26, !dbg !622

; <label>:25:                                     ; preds = %19
  store i1 true, i1* %3, align 1, !dbg !623
  br label %91, !dbg !623

; <label>:26:                                     ; preds = %19
  %27 = load i8*, i8** %4, align 8, !dbg !624
  %28 = load i8*, i8** @WHITE_SPACE, align 8, !dbg !626
  %29 = call i64 @strspn(i8* %27, i8* %28) #6, !dbg !627
  %30 = icmp ne i64 %29, 0, !dbg !627
  br i1 %30, label %31, label %32, !dbg !628

; <label>:31:                                     ; preds = %26
  store i1 true, i1* %3, align 1, !dbg !629
  br label %91, !dbg !629

; <label>:32:                                     ; preds = %26
  %33 = load i8*, i8** %4, align 8, !dbg !630
  %34 = call i64 @strtoul(i8* %33, i8** %6, i32 0) #7, !dbg !631
  store i64 %34, i64* %8, align 8, !dbg !632
  %35 = load i8*, i8** %6, align 8, !dbg !633
  %36 = load i8*, i8** %4, align 8, !dbg !635
  %37 = icmp eq i8* %35, %36, !dbg !636
  br i1 %37, label %38, label %39, !dbg !637

; <label>:38:                                     ; preds = %32
  store i1 true, i1* %3, align 1, !dbg !638
  br label %91, !dbg !638

; <label>:39:                                     ; preds = %32
  %40 = load i64, i64* %8, align 8, !dbg !639
  %41 = icmp ugt i64 %40, 4294967295, !dbg !641
  br i1 %41, label %42, label %43, !dbg !642

; <label>:42:                                     ; preds = %39
  store i1 true, i1* %3, align 1, !dbg !643
  br label %91, !dbg !643

; <label>:43:                                     ; preds = %39
  %44 = load i64, i64* %8, align 8, !dbg !644
  %45 = and i64 %44, 4293918720, !dbg !646
  %46 = icmp ne i64 %45, 0, !dbg !646
  br i1 %46, label %47, label %48, !dbg !647

; <label>:47:                                     ; preds = %43
  store i1 true, i1* %3, align 1, !dbg !648
  br label %91, !dbg !648

; <label>:48:                                     ; preds = %43
  %49 = load i64, i64* %8, align 8, !dbg !649
  %50 = trunc i64 %49 to i32, !dbg !650
  %51 = shl i32 %50, 12, !dbg !651
  %52 = call i32 @htonl(i32 %51) #1, !dbg !652
  %53 = load i32, i32* %7, align 4, !dbg !653
  %54 = zext i32 %53 to i64, !dbg !654
  %55 = load %struct._encap_mpls*, %struct._encap_mpls** %5, align 8, !dbg !654
  %56 = getelementptr inbounds %struct._encap_mpls, %struct._encap_mpls* %55, i32 0, i32 0, !dbg !655
  %57 = getelementptr inbounds [2 x %struct.mpls_label], [2 x %struct.mpls_label]* %56, i64 0, i64 %54, !dbg !654
  %58 = getelementptr inbounds %struct.mpls_label, %struct.mpls_label* %57, i32 0, i32 0, !dbg !656
  store i32 %52, i32* %58, align 4, !dbg !657
  %59 = load i8*, i8** %6, align 8, !dbg !658
  %60 = load i8, i8* %59, align 1, !dbg !660
  %61 = sext i8 %60 to i32, !dbg !660
  %62 = icmp eq i32 %61, 0, !dbg !661
  br i1 %62, label %63, label %78, !dbg !662

; <label>:63:                                     ; preds = %48
  %64 = call i32 @htonl(i32 256) #1, !dbg !663
  %65 = load i32, i32* %7, align 4, !dbg !665
  %66 = zext i32 %65 to i64, !dbg !666
  %67 = load %struct._encap_mpls*, %struct._encap_mpls** %5, align 8, !dbg !666
  %68 = getelementptr inbounds %struct._encap_mpls, %struct._encap_mpls* %67, i32 0, i32 0, !dbg !667
  %69 = getelementptr inbounds [2 x %struct.mpls_label], [2 x %struct.mpls_label]* %68, i64 0, i64 %66, !dbg !666
  %70 = getelementptr inbounds %struct.mpls_label, %struct.mpls_label* %69, i32 0, i32 0, !dbg !668
  %71 = load i32, i32* %70, align 4, !dbg !669
  %72 = or i32 %71, %64, !dbg !669
  store i32 %72, i32* %70, align 4, !dbg !669
  %73 = load i32, i32* %7, align 4, !dbg !670
  %74 = add i32 %73, 1, !dbg !671
  %75 = zext i32 %74 to i64, !dbg !670
  %76 = load %struct._encap_mpls*, %struct._encap_mpls** %5, align 8, !dbg !672
  %77 = getelementptr inbounds %struct._encap_mpls, %struct._encap_mpls* %76, i32 0, i32 1, !dbg !673
  store i64 %75, i64* %77, align 8, !dbg !674
  store i1 false, i1* %3, align 1, !dbg !675
  br label %91, !dbg !675

; <label>:78:                                     ; preds = %48
  %79 = load i8*, i8** %6, align 8, !dbg !676
  %80 = load i8, i8* %79, align 1, !dbg !678
  %81 = sext i8 %80 to i32, !dbg !678
  %82 = icmp ne i32 %81, 47, !dbg !679
  br i1 %82, label %83, label %84, !dbg !680

; <label>:83:                                     ; preds = %78
  store i1 true, i1* %3, align 1, !dbg !681
  br label %91, !dbg !681

; <label>:84:                                     ; preds = %78
  %85 = load i8*, i8** %6, align 8, !dbg !682
  %86 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !683
  store i8* %86, i8** %4, align 8, !dbg !684
  br label %87, !dbg !685

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %7, align 4, !dbg !686
  %89 = add i32 %88, 1, !dbg !686
  store i32 %89, i32* %7, align 4, !dbg !686
  br label %16, !dbg !688, !llvm.loop !689

; <label>:90:                                     ; preds = %16
  store i1 true, i1* %3, align 1, !dbg !691
  br label %91, !dbg !691

; <label>:91:                                     ; preds = %90, %83, %63, %47, %42, %38, %31, %25
  %92 = load i1, i1* %3, align 1, !dbg !692
  ret i1 %92, !dbg !692
}

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!131, !132}
!llvm.ident = !{!133}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !34, globals: !46)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_ip_rule_route_parser.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !19}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!7 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!8 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!9 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!10 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!11 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!12 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!13 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!14 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!15 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!16 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!17 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!18 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 46, size: 32, align: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!22 = !DIEnumerator(name: "_ISupper", value: 256)
!23 = !DIEnumerator(name: "_ISlower", value: 512)
!24 = !DIEnumerator(name: "_ISalpha", value: 1024)
!25 = !DIEnumerator(name: "_ISdigit", value: 2048)
!26 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!27 = !DIEnumerator(name: "_ISspace", value: 8192)
!28 = !DIEnumerator(name: "_ISprint", value: 16384)
!29 = !DIEnumerator(name: "_ISgraph", value: 32768)
!30 = !DIEnumerator(name: "_ISblank", value: 1)
!31 = !DIEnumerator(name: "_IScntrl", value: 2)
!32 = !DIEnumerator(name: "_ISpunct", value: 4)
!33 = !DIEnumerator(name: "_ISalnum", value: 8)
!34 = !{!35, !38, !40, !42, !44, !45, !39}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !36, line: 48, baseType: !37)
!36 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!37 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !36, line: 49, baseType: !39)
!39 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !36, line: 51, baseType: !41)
!41 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !36, line: 55, baseType: !43)
!43 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!44 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!45 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!46 = !{!47}
!47 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !48, line: 150, type: !49, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!48 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !50, line: 31, baseType: !51)
!50 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !50, line: 39, size: 320, align: 64, elements: !53)
!53 = !{!54, !62, !63, !64, !68}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !52, file: !50, line: 40, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !50, line: 33, size: 192, align: 64, elements: !57)
!57 = !{!58, !59, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !56, file: !50, line: 34, baseType: !55, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !56, file: !50, line: 35, baseType: !55, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !56, file: !50, line: 36, baseType: !61, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !52, file: !50, line: 41, baseType: !55, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !52, file: !50, line: 42, baseType: !41, size: 32, align: 32, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !52, file: !50, line: 43, baseType: !65, size: 64, align: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !61}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !52, file: !50, line: 44, baseType: !69, size: 64, align: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72, !61}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !74, line: 48, baseType: !75)
!74 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !76, line: 241, size: 1728, align: 64, elements: !77)
!76 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!77 = !{!78, !79, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !100, !101, !102, !103, !107, !108, !110, !114, !117, !119, !120, !121, !122, !123, !126, !127}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !75, file: !76, line: 242, baseType: !45, size: 32, align: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !75, file: !76, line: 247, baseType: !80, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !75, file: !76, line: 248, baseType: !80, size: 64, align: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !75, file: !76, line: 249, baseType: !80, size: 64, align: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !75, file: !76, line: 250, baseType: !80, size: 64, align: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !75, file: !76, line: 251, baseType: !80, size: 64, align: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !75, file: !76, line: 252, baseType: !80, size: 64, align: 64, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !75, file: !76, line: 253, baseType: !80, size: 64, align: 64, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !75, file: !76, line: 254, baseType: !80, size: 64, align: 64, offset: 512)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !75, file: !76, line: 256, baseType: !80, size: 64, align: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !75, file: !76, line: 257, baseType: !80, size: 64, align: 64, offset: 640)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !75, file: !76, line: 258, baseType: !80, size: 64, align: 64, offset: 704)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !75, file: !76, line: 260, baseType: !93, size: 64, align: 64, offset: 768)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !76, line: 156, size: 192, align: 64, elements: !95)
!95 = !{!96, !97, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !94, file: !76, line: 157, baseType: !93, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !94, file: !76, line: 158, baseType: !98, size: 64, align: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !94, file: !76, line: 162, baseType: !45, size: 32, align: 32, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !75, file: !76, line: 262, baseType: !98, size: 64, align: 64, offset: 832)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !75, file: !76, line: 264, baseType: !45, size: 32, align: 32, offset: 896)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !75, file: !76, line: 268, baseType: !45, size: 32, align: 32, offset: 928)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !75, file: !76, line: 270, baseType: !104, size: 64, align: 64, offset: 960)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !105, line: 131, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!106 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !75, file: !76, line: 274, baseType: !39, size: 16, align: 16, offset: 1024)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !75, file: !76, line: 275, baseType: !109, size: 8, align: 8, offset: 1040)
!109 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !75, file: !76, line: 276, baseType: !111, size: 8, align: 8, offset: 1048)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 8, align: 8, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 1)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !75, file: !76, line: 280, baseType: !115, size: 64, align: 64, offset: 1088)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !76, line: 150, baseType: null)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !75, file: !76, line: 289, baseType: !118, size: 64, align: 64, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !105, line: 132, baseType: !106)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !75, file: !76, line: 297, baseType: !61, size: 64, align: 64, offset: 1216)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !75, file: !76, line: 298, baseType: !61, size: 64, align: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !75, file: !76, line: 299, baseType: !61, size: 64, align: 64, offset: 1344)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !75, file: !76, line: 300, baseType: !61, size: 64, align: 64, offset: 1408)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !75, file: !76, line: 302, baseType: !124, size: 64, align: 64, offset: 1472)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 216, baseType: !43)
!125 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !75, file: !76, line: 303, baseType: !45, size: 32, align: 32, offset: 1536)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !75, file: !76, line: 305, baseType: !128, size: 160, align: 8, offset: 1568)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 160, align: 8, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 20)
!131 = !{i32 2, !"Dwarf Version", i32 4}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!134 = distinct !DISubprogram(name: "get_realms", scope: !135, file: !135, line: 44, type: !136, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!135 = !DIFile(filename: "vrrp_ip_rule_route_parser.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!136 = !DISubroutineType(types: !137)
!137 = !{!138, !139, !80}
!138 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!140 = !{}
!141 = !DILocalVariable(name: "realms", arg: 1, scope: !134, file: !135, line: 44, type: !139)
!142 = !DIExpression()
!143 = !DILocation(line: 44, column: 22, scope: !134)
!144 = !DILocalVariable(name: "str", arg: 2, scope: !134, file: !135, line: 44, type: !80)
!145 = !DILocation(line: 44, column: 36, scope: !134)
!146 = !DILocalVariable(name: "val", scope: !134, file: !135, line: 46, type: !40)
!147 = !DILocation(line: 46, column: 11, scope: !134)
!148 = !DILocalVariable(name: "val1", scope: !134, file: !135, line: 46, type: !40)
!149 = !DILocation(line: 46, column: 16, scope: !134)
!150 = !DILocalVariable(name: "end", scope: !134, file: !135, line: 47, type: !80)
!151 = !DILocation(line: 47, column: 8, scope: !134)
!152 = !DILocation(line: 49, column: 20, scope: !153)
!153 = distinct !DILexicalBlock(scope: !134, file: !135, line: 49, column: 6)
!154 = !DILocation(line: 49, column: 13, scope: !153)
!155 = !DILocation(line: 49, column: 11, scope: !153)
!156 = !DILocation(line: 49, column: 6, scope: !134)
!157 = !DILocation(line: 50, column: 4, scope: !153)
!158 = !DILocation(line: 50, column: 8, scope: !153)
!159 = !DILocation(line: 50, column: 3, scope: !153)
!160 = !DILocation(line: 52, column: 28, scope: !161)
!161 = distinct !DILexicalBlock(scope: !134, file: !135, line: 52, column: 6)
!162 = !DILocation(line: 52, column: 7, scope: !161)
!163 = !DILocation(line: 52, column: 6, scope: !134)
!164 = !DILocation(line: 53, column: 3, scope: !161)
!165 = !DILocation(line: 55, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !134, file: !135, line: 55, column: 6)
!167 = !DILocation(line: 55, column: 6, scope: !134)
!168 = !DILocation(line: 56, column: 29, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !135, line: 56, column: 7)
!170 = distinct !DILexicalBlock(scope: !166, file: !135, line: 55, column: 11)
!171 = !DILocation(line: 56, column: 33, scope: !169)
!172 = !DILocation(line: 56, column: 8, scope: !169)
!173 = !DILocation(line: 56, column: 7, scope: !170)
!174 = !DILocation(line: 57, column: 4, scope: !169)
!175 = !DILocation(line: 59, column: 7, scope: !170)
!176 = !DILocation(line: 60, column: 10, scope: !170)
!177 = !DILocation(line: 60, column: 7, scope: !170)
!178 = !DILocation(line: 62, column: 4, scope: !170)
!179 = !DILocation(line: 62, column: 8, scope: !170)
!180 = !DILocation(line: 63, column: 2, scope: !170)
!181 = !DILocation(line: 65, column: 12, scope: !134)
!182 = !DILocation(line: 65, column: 3, scope: !134)
!183 = !DILocation(line: 65, column: 10, scope: !134)
!184 = !DILocation(line: 67, column: 2, scope: !134)
!185 = !DILocation(line: 70, column: 6, scope: !186)
!186 = distinct !DILexicalBlock(scope: !134, file: !135, line: 70, column: 6)
!187 = !DILocation(line: 70, column: 6, scope: !134)
!188 = !DILocation(line: 71, column: 4, scope: !186)
!189 = !DILocation(line: 71, column: 8, scope: !186)
!190 = !DILocation(line: 71, column: 3, scope: !186)
!191 = !DILocation(line: 72, column: 2, scope: !134)
!192 = !DILocation(line: 73, column: 1, scope: !134)
!193 = distinct !DISubprogram(name: "get_u8", scope: !135, file: !135, line: 77, type: !194, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!194 = !DISubroutineType(types: !195)
!195 = !{!138, !196, !197, !35, !197}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!199 = !DILocalVariable(name: "val", arg: 1, scope: !193, file: !135, line: 77, type: !196)
!200 = !DILocation(line: 77, column: 17, scope: !193)
!201 = !DILocalVariable(name: "str", arg: 2, scope: !193, file: !135, line: 77, type: !197)
!202 = !DILocation(line: 77, column: 34, scope: !193)
!203 = !DILocalVariable(name: "max", arg: 3, scope: !193, file: !135, line: 77, type: !35)
!204 = !DILocation(line: 77, column: 47, scope: !193)
!205 = !DILocalVariable(name: "errmsg", arg: 4, scope: !193, file: !135, line: 77, type: !197)
!206 = !DILocation(line: 77, column: 64, scope: !193)
!207 = !DILocalVariable(name: "t_val", scope: !193, file: !135, line: 79, type: !41)
!208 = !DILocation(line: 79, column: 11, scope: !193)
!209 = !DILocation(line: 81, column: 20, scope: !210)
!210 = distinct !DILexicalBlock(scope: !193, file: !135, line: 81, column: 6)
!211 = !DILocation(line: 81, column: 36, scope: !210)
!212 = !DILocation(line: 81, column: 6, scope: !210)
!213 = !DILocation(line: 81, column: 6, scope: !193)
!214 = !DILocation(line: 82, column: 19, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !135, line: 81, column: 48)
!216 = !DILocation(line: 82, column: 10, scope: !215)
!217 = !DILocation(line: 82, column: 4, scope: !215)
!218 = !DILocation(line: 82, column: 8, scope: !215)
!219 = !DILocation(line: 83, column: 3, scope: !215)
!220 = !DILocation(line: 86, column: 44, scope: !193)
!221 = !DILocation(line: 86, column: 52, scope: !193)
!222 = !DILocation(line: 86, column: 2, scope: !193)
!223 = !DILocation(line: 87, column: 2, scope: !193)
!224 = !DILocation(line: 88, column: 1, scope: !193)
!225 = distinct !DISubprogram(name: "get_u16", scope: !135, file: !135, line: 91, type: !226, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!226 = !DISubroutineType(types: !227)
!227 = !{!138, !228, !197, !38, !197}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!229 = !DILocalVariable(name: "val", arg: 1, scope: !225, file: !135, line: 91, type: !228)
!230 = !DILocation(line: 91, column: 19, scope: !225)
!231 = !DILocalVariable(name: "str", arg: 2, scope: !225, file: !135, line: 91, type: !197)
!232 = !DILocation(line: 91, column: 36, scope: !225)
!233 = !DILocalVariable(name: "max", arg: 3, scope: !225, file: !135, line: 91, type: !38)
!234 = !DILocation(line: 91, column: 50, scope: !225)
!235 = !DILocalVariable(name: "errmsg", arg: 4, scope: !225, file: !135, line: 91, type: !197)
!236 = !DILocation(line: 91, column: 67, scope: !225)
!237 = !DILocalVariable(name: "t_val", scope: !225, file: !135, line: 93, type: !41)
!238 = !DILocation(line: 93, column: 11, scope: !225)
!239 = !DILocation(line: 95, column: 20, scope: !240)
!240 = distinct !DILexicalBlock(scope: !225, file: !135, line: 95, column: 6)
!241 = !DILocation(line: 95, column: 36, scope: !240)
!242 = !DILocation(line: 95, column: 6, scope: !240)
!243 = !DILocation(line: 95, column: 6, scope: !225)
!244 = !DILocation(line: 96, column: 20, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !135, line: 95, column: 48)
!246 = !DILocation(line: 96, column: 10, scope: !245)
!247 = !DILocation(line: 96, column: 4, scope: !245)
!248 = !DILocation(line: 96, column: 8, scope: !245)
!249 = !DILocation(line: 97, column: 3, scope: !245)
!250 = !DILocation(line: 100, column: 44, scope: !225)
!251 = !DILocation(line: 100, column: 52, scope: !225)
!252 = !DILocation(line: 100, column: 2, scope: !225)
!253 = !DILocation(line: 101, column: 2, scope: !225)
!254 = !DILocation(line: 102, column: 1, scope: !225)
!255 = distinct !DISubprogram(name: "get_u32", scope: !135, file: !135, line: 105, type: !256, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!256 = !DISubroutineType(types: !257)
!257 = !{!138, !139, !197, !40, !197}
!258 = !DILocalVariable(name: "val", arg: 1, scope: !255, file: !135, line: 105, type: !139)
!259 = !DILocation(line: 105, column: 19, scope: !255)
!260 = !DILocalVariable(name: "str", arg: 2, scope: !255, file: !135, line: 105, type: !197)
!261 = !DILocation(line: 105, column: 36, scope: !255)
!262 = !DILocalVariable(name: "max", arg: 3, scope: !255, file: !135, line: 105, type: !40)
!263 = !DILocation(line: 105, column: 50, scope: !255)
!264 = !DILocalVariable(name: "errmsg", arg: 4, scope: !255, file: !135, line: 105, type: !197)
!265 = !DILocation(line: 105, column: 67, scope: !255)
!266 = !DILocalVariable(name: "t_val", scope: !255, file: !135, line: 107, type: !41)
!267 = !DILocation(line: 107, column: 11, scope: !255)
!268 = !DILocation(line: 109, column: 20, scope: !269)
!269 = distinct !DILexicalBlock(scope: !255, file: !135, line: 109, column: 6)
!270 = !DILocation(line: 109, column: 36, scope: !269)
!271 = !DILocation(line: 109, column: 6, scope: !269)
!272 = !DILocation(line: 109, column: 6, scope: !255)
!273 = !DILocation(line: 110, column: 20, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !135, line: 109, column: 48)
!275 = !DILocation(line: 110, column: 4, scope: !274)
!276 = !DILocation(line: 110, column: 8, scope: !274)
!277 = !DILocation(line: 111, column: 3, scope: !274)
!278 = !DILocation(line: 114, column: 44, scope: !255)
!279 = !DILocation(line: 114, column: 52, scope: !255)
!280 = !DILocation(line: 114, column: 2, scope: !255)
!281 = !DILocation(line: 115, column: 2, scope: !255)
!282 = !DILocation(line: 116, column: 1, scope: !255)
!283 = distinct !DISubprogram(name: "get_u64", scope: !135, file: !135, line: 119, type: !284, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!284 = !DISubroutineType(types: !285)
!285 = !{!138, !286, !197, !42, !197}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!287 = !DILocalVariable(name: "val", arg: 1, scope: !283, file: !135, line: 119, type: !286)
!288 = !DILocation(line: 119, column: 19, scope: !283)
!289 = !DILocalVariable(name: "str", arg: 2, scope: !283, file: !135, line: 119, type: !197)
!290 = !DILocation(line: 119, column: 36, scope: !283)
!291 = !DILocalVariable(name: "max", arg: 3, scope: !283, file: !135, line: 119, type: !42)
!292 = !DILocation(line: 119, column: 50, scope: !283)
!293 = !DILocalVariable(name: "errmsg", arg: 4, scope: !283, file: !135, line: 119, type: !197)
!294 = !DILocation(line: 119, column: 67, scope: !283)
!295 = !DILocalVariable(name: "t_val", scope: !283, file: !135, line: 121, type: !42)
!296 = !DILocation(line: 121, column: 11, scope: !283)
!297 = !DILocation(line: 123, column: 22, scope: !298)
!298 = distinct !DILexicalBlock(scope: !283, file: !135, line: 123, column: 6)
!299 = !DILocation(line: 123, column: 38, scope: !298)
!300 = !DILocation(line: 123, column: 6, scope: !298)
!301 = !DILocation(line: 123, column: 6, scope: !283)
!302 = !DILocation(line: 124, column: 20, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !135, line: 123, column: 50)
!304 = !DILocation(line: 124, column: 4, scope: !303)
!305 = !DILocation(line: 124, column: 8, scope: !303)
!306 = !DILocation(line: 125, column: 3, scope: !303)
!307 = !DILocation(line: 128, column: 44, scope: !283)
!308 = !DILocation(line: 128, column: 52, scope: !283)
!309 = !DILocation(line: 128, column: 2, scope: !283)
!310 = !DILocation(line: 129, column: 2, scope: !283)
!311 = !DILocation(line: 130, column: 1, scope: !283)
!312 = distinct !DISubprogram(name: "get_time_rtt", scope: !135, file: !135, line: 133, type: !313, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!313 = !DISubroutineType(types: !314)
!314 = !{!138, !139, !197, !315}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!316 = !DILocalVariable(name: "val", arg: 1, scope: !312, file: !135, line: 133, type: !139)
!317 = !DILocation(line: 133, column: 24, scope: !312)
!318 = !DILocalVariable(name: "str", arg: 2, scope: !312, file: !135, line: 133, type: !197)
!319 = !DILocation(line: 133, column: 41, scope: !312)
!320 = !DILocalVariable(name: "raw", arg: 3, scope: !312, file: !135, line: 133, type: !315)
!321 = !DILocation(line: 133, column: 51, scope: !312)
!322 = !DILocalVariable(name: "t", scope: !312, file: !135, line: 135, type: !44)
!323 = !DILocation(line: 135, column: 9, scope: !312)
!324 = !DILocalVariable(name: "res", scope: !312, file: !135, line: 136, type: !43)
!325 = !DILocation(line: 136, column: 16, scope: !312)
!326 = !DILocalVariable(name: "end", scope: !312, file: !135, line: 137, type: !80)
!327 = !DILocation(line: 137, column: 8, scope: !312)
!328 = !DILocalVariable(name: "offset", scope: !312, file: !135, line: 138, type: !124)
!329 = !DILocation(line: 138, column: 9, scope: !312)
!330 = !DILocation(line: 140, column: 3, scope: !312)
!331 = !DILocation(line: 140, column: 7, scope: !312)
!332 = !DILocation(line: 141, column: 13, scope: !333)
!333 = distinct !DILexicalBlock(scope: !312, file: !135, line: 141, column: 6)
!334 = !DILocation(line: 141, column: 6, scope: !333)
!335 = !DILocation(line: 141, column: 23, scope: !333)
!336 = !DILocation(line: 142, column: 15, scope: !333)
!337 = !DILocation(line: 142, column: 7, scope: !333)
!338 = !DILocation(line: 142, column: 26, scope: !333)
!339 = !DILocation(line: 142, column: 38, scope: !340)
!340 = !DILexicalBlockFile(scope: !333, file: !135, discriminator: 1)
!341 = !DILocation(line: 142, column: 30, scope: !340)
!342 = !DILocation(line: 141, column: 6, scope: !343)
!343 = !DILexicalBlockFile(scope: !312, file: !135, discriminator: 1)
!344 = !DILocation(line: 143, column: 14, scope: !345)
!345 = distinct !DILexicalBlock(scope: !333, file: !135, line: 142, column: 51)
!346 = !DILocation(line: 143, column: 7, scope: !345)
!347 = !DILocation(line: 143, column: 5, scope: !345)
!348 = !DILocation(line: 144, column: 7, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !135, line: 144, column: 7)
!350 = !DILocation(line: 144, column: 9, scope: !349)
!351 = !DILocation(line: 144, column: 7, scope: !345)
!352 = !DILocation(line: 145, column: 4, scope: !349)
!353 = !DILocation(line: 148, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !345, file: !135, line: 148, column: 7)
!355 = !DILocation(line: 148, column: 14, scope: !354)
!356 = !DILocation(line: 148, column: 11, scope: !354)
!357 = !DILocation(line: 148, column: 7, scope: !345)
!358 = !DILocation(line: 149, column: 4, scope: !354)
!359 = !DILocation(line: 152, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !345, file: !135, line: 152, column: 7)
!361 = !DILocation(line: 152, column: 9, scope: !360)
!362 = !DILocation(line: 152, column: 20, scope: !360)
!363 = !DILocation(line: 152, column: 25, scope: !364)
!364 = !DILexicalBlockFile(scope: !360, file: !135, discriminator: 1)
!365 = !DILocation(line: 152, column: 24, scope: !364)
!366 = !DILocation(line: 152, column: 29, scope: !364)
!367 = !DILocation(line: 152, column: 7, scope: !364)
!368 = !DILocation(line: 153, column: 4, scope: !360)
!369 = !DILocation(line: 155, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !345, file: !135, line: 155, column: 7)
!371 = !DILocation(line: 155, column: 9, scope: !370)
!372 = !DILocation(line: 155, column: 7, scope: !345)
!373 = !DILocation(line: 156, column: 4, scope: !370)
!374 = !DILocation(line: 157, column: 2, scope: !345)
!375 = !DILocation(line: 159, column: 19, scope: !376)
!376 = distinct !DILexicalBlock(scope: !333, file: !135, line: 157, column: 9)
!377 = !DILocation(line: 159, column: 24, scope: !376)
!378 = !DILocation(line: 159, column: 12, scope: !376)
!379 = !DILocation(line: 159, column: 10, scope: !376)
!380 = !DILocation(line: 162, column: 11, scope: !381)
!381 = distinct !DILexicalBlock(scope: !376, file: !135, line: 162, column: 7)
!382 = !DILocation(line: 162, column: 7, scope: !381)
!383 = !DILocation(line: 162, column: 19, scope: !381)
!384 = !DILocation(line: 162, column: 7, scope: !376)
!385 = !DILocation(line: 163, column: 4, scope: !381)
!386 = !DILocation(line: 165, column: 17, scope: !376)
!387 = !DILocation(line: 165, column: 9, scope: !376)
!388 = !DILocation(line: 165, column: 7, scope: !376)
!389 = !DILocation(line: 168, column: 7, scope: !390)
!390 = distinct !DILexicalBlock(scope: !376, file: !135, line: 168, column: 7)
!391 = !DILocation(line: 168, column: 14, scope: !390)
!392 = !DILocation(line: 168, column: 11, scope: !390)
!393 = !DILocation(line: 168, column: 7, scope: !376)
!394 = !DILocation(line: 169, column: 4, scope: !390)
!395 = !DILocation(line: 172, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !376, file: !135, line: 172, column: 7)
!397 = !DILocation(line: 172, column: 11, scope: !396)
!398 = !DILocation(line: 172, column: 23, scope: !396)
!399 = !DILocation(line: 172, column: 28, scope: !400)
!400 = !DILexicalBlockFile(scope: !396, file: !135, discriminator: 1)
!401 = !DILocation(line: 172, column: 27, scope: !400)
!402 = !DILocation(line: 172, column: 32, scope: !400)
!403 = !DILocation(line: 172, column: 7, scope: !400)
!404 = !DILocation(line: 173, column: 4, scope: !396)
!405 = !DILocation(line: 175, column: 7, scope: !406)
!406 = distinct !DILexicalBlock(scope: !376, file: !135, line: 175, column: 7)
!407 = !DILocation(line: 175, column: 11, scope: !406)
!408 = !DILocation(line: 175, column: 7, scope: !376)
!409 = !DILocation(line: 176, column: 4, scope: !406)
!410 = !DILocation(line: 178, column: 15, scope: !376)
!411 = !DILocation(line: 178, column: 7, scope: !376)
!412 = !DILocation(line: 178, column: 5, scope: !376)
!413 = !DILocation(line: 181, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !312, file: !135, line: 181, column: 6)
!415 = !DILocation(line: 181, column: 6, scope: !414)
!416 = !DILocation(line: 181, column: 6, scope: !312)
!417 = !DILocation(line: 182, column: 4, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !135, line: 181, column: 12)
!419 = !DILocation(line: 182, column: 8, scope: !418)
!420 = !DILocation(line: 183, column: 19, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !135, line: 183, column: 7)
!422 = !DILocation(line: 183, column: 8, scope: !421)
!423 = !DILocation(line: 183, column: 29, scope: !421)
!424 = !DILocation(line: 184, column: 19, scope: !421)
!425 = !DILocation(line: 184, column: 8, scope: !421)
!426 = !DILocation(line: 184, column: 31, scope: !421)
!427 = !DILocation(line: 185, column: 19, scope: !421)
!428 = !DILocation(line: 185, column: 8, scope: !421)
!429 = !DILocation(line: 183, column: 7, scope: !430)
!430 = !DILexicalBlockFile(scope: !418, file: !135, discriminator: 1)
!431 = !DILocation(line: 186, column: 8, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !135, line: 186, column: 8)
!433 = distinct !DILexicalBlock(scope: !421, file: !135, line: 185, column: 33)
!434 = !DILocation(line: 186, column: 10, scope: !432)
!435 = !DILocation(line: 186, column: 8, scope: !433)
!436 = !DILocation(line: 187, column: 5, scope: !432)
!437 = !DILocation(line: 188, column: 6, scope: !433)
!438 = !DILocation(line: 189, column: 3, scope: !433)
!439 = !DILocation(line: 190, column: 23, scope: !440)
!440 = distinct !DILexicalBlock(scope: !421, file: !135, line: 190, column: 12)
!441 = !DILocation(line: 190, column: 12, scope: !440)
!442 = !DILocation(line: 190, column: 34, scope: !440)
!443 = !DILocation(line: 191, column: 16, scope: !440)
!444 = !DILocation(line: 191, column: 5, scope: !440)
!445 = !DILocation(line: 191, column: 29, scope: !440)
!446 = !DILocation(line: 192, column: 16, scope: !440)
!447 = !DILocation(line: 192, column: 5, scope: !440)
!448 = !DILocation(line: 190, column: 12, scope: !449)
!449 = !DILexicalBlockFile(scope: !421, file: !135, discriminator: 1)
!450 = !DILocation(line: 193, column: 4, scope: !440)
!451 = !DILocation(line: 194, column: 2, scope: !418)
!452 = !DILocation(line: 196, column: 4, scope: !414)
!453 = !DILocation(line: 196, column: 8, scope: !414)
!454 = !DILocation(line: 198, column: 19, scope: !312)
!455 = !DILocation(line: 198, column: 9, scope: !312)
!456 = !DILocation(line: 198, column: 3, scope: !312)
!457 = !DILocation(line: 198, column: 7, scope: !312)
!458 = !DILocation(line: 199, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !312, file: !135, line: 199, column: 6)
!460 = !DILocation(line: 199, column: 6, scope: !459)
!461 = !DILocation(line: 199, column: 13, scope: !459)
!462 = !DILocation(line: 199, column: 11, scope: !459)
!463 = !DILocation(line: 199, column: 6, scope: !312)
!464 = !DILocation(line: 200, column: 5, scope: !459)
!465 = !DILocation(line: 200, column: 9, scope: !459)
!466 = !DILocation(line: 200, column: 3, scope: !459)
!467 = !DILocation(line: 202, column: 2, scope: !312)
!468 = !DILocation(line: 203, column: 1, scope: !312)
!469 = distinct !DISubprogram(name: "get_addr64", scope: !135, file: !135, line: 206, type: !470, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!470 = !DISubroutineType(types: !471)
!471 = !{!138, !286, !197}
!472 = !DILocalVariable(name: "ap", arg: 1, scope: !469, file: !135, line: 206, type: !286)
!473 = !DILocation(line: 206, column: 22, scope: !469)
!474 = !DILocalVariable(name: "cp", arg: 2, scope: !469, file: !135, line: 206, type: !197)
!475 = !DILocation(line: 206, column: 38, scope: !469)
!476 = !DILocalVariable(name: "i", scope: !469, file: !135, line: 208, type: !45)
!477 = !DILocation(line: 208, column: 6, scope: !469)
!478 = !DILocalVariable(name: "val", scope: !469, file: !135, line: 213, type: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !135, line: 210, size: 64, align: 64, elements: !480)
!480 = !{!481, !485}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "v16", scope: !479, file: !135, line: 211, baseType: !482, size: 64, align: 16)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, align: 16, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 4)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "v64", scope: !479, file: !135, line: 212, baseType: !42, size: 64, align: 64)
!486 = !DILocation(line: 213, column: 4, scope: !469)
!487 = !DILocation(line: 216, column: 15, scope: !469)
!488 = !DILocation(line: 216, column: 19, scope: !469)
!489 = !DILocation(line: 216, column: 8, scope: !469)
!490 = !DILocation(line: 216, column: 5, scope: !469)
!491 = !DILocation(line: 218, column: 6, scope: !469)
!492 = !DILocation(line: 218, column: 10, scope: !469)
!493 = !DILocation(line: 219, column: 9, scope: !494)
!494 = distinct !DILexicalBlock(scope: !469, file: !135, line: 219, column: 2)
!495 = !DILocation(line: 219, column: 7, scope: !494)
!496 = !DILocation(line: 219, column: 14, scope: !497)
!497 = !DILexicalBlockFile(scope: !498, file: !135, discriminator: 1)
!498 = distinct !DILexicalBlock(scope: !494, file: !135, line: 219, column: 2)
!499 = !DILocation(line: 219, column: 16, scope: !497)
!500 = !DILocation(line: 219, column: 2, scope: !497)
!501 = !DILocalVariable(name: "n", scope: !502, file: !135, line: 220, type: !43)
!502 = distinct !DILexicalBlock(scope: !498, file: !135, line: 219, column: 26)
!503 = !DILocation(line: 220, column: 17, scope: !502)
!504 = !DILocalVariable(name: "endp", scope: !502, file: !135, line: 221, type: !80)
!505 = !DILocation(line: 221, column: 9, scope: !502)
!506 = !DILocation(line: 223, column: 8, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !135, line: 223, column: 7)
!508 = !DILocation(line: 223, column: 7, scope: !507)
!509 = !DILocation(line: 223, column: 28, scope: !507)
!510 = !DILocation(line: 223, column: 10, scope: !507)
!511 = !DILocation(line: 223, column: 9, scope: !507)
!512 = !DILocation(line: 223, column: 11, scope: !507)
!513 = !DILocation(line: 223, column: 7, scope: !502)
!514 = !DILocation(line: 224, column: 4, scope: !507)
!515 = !DILocation(line: 226, column: 15, scope: !502)
!516 = !DILocation(line: 226, column: 7, scope: !502)
!517 = !DILocation(line: 226, column: 5, scope: !502)
!518 = !DILocation(line: 227, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !502, file: !135, line: 227, column: 7)
!520 = !DILocation(line: 227, column: 9, scope: !519)
!521 = !DILocation(line: 227, column: 7, scope: !502)
!522 = !DILocation(line: 228, column: 4, scope: !519)
!523 = !DILocation(line: 230, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !502, file: !135, line: 230, column: 7)
!525 = !DILocation(line: 230, column: 15, scope: !524)
!526 = !DILocation(line: 230, column: 12, scope: !524)
!527 = !DILocation(line: 230, column: 7, scope: !502)
!528 = !DILocation(line: 231, column: 4, scope: !524)
!529 = !DILocation(line: 233, column: 22, scope: !502)
!530 = !DILocation(line: 233, column: 16, scope: !502)
!531 = !DILocation(line: 233, column: 11, scope: !502)
!532 = !DILocation(line: 233, column: 3, scope: !502)
!533 = !DILocation(line: 233, column: 7, scope: !502)
!534 = !DILocation(line: 233, column: 14, scope: !502)
!535 = !DILocation(line: 235, column: 8, scope: !536)
!536 = distinct !DILexicalBlock(scope: !502, file: !135, line: 235, column: 7)
!537 = !DILocation(line: 235, column: 7, scope: !536)
!538 = !DILocation(line: 235, column: 13, scope: !536)
!539 = !DILocation(line: 235, column: 7, scope: !502)
!540 = !DILocation(line: 236, column: 8, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !135, line: 236, column: 8)
!542 = distinct !DILexicalBlock(scope: !536, file: !135, line: 235, column: 22)
!543 = !DILocation(line: 236, column: 10, scope: !541)
!544 = !DILocation(line: 236, column: 8, scope: !542)
!545 = !DILocation(line: 237, column: 5, scope: !541)
!546 = !DILocation(line: 238, column: 4, scope: !542)
!547 = !DILocation(line: 241, column: 7, scope: !548)
!548 = distinct !DILexicalBlock(scope: !502, file: !135, line: 241, column: 7)
!549 = !DILocation(line: 241, column: 9, scope: !548)
!550 = !DILocation(line: 241, column: 14, scope: !548)
!551 = !DILocation(line: 241, column: 18, scope: !552)
!552 = !DILexicalBlockFile(scope: !548, file: !135, discriminator: 1)
!553 = !DILocation(line: 241, column: 17, scope: !552)
!554 = !DILocation(line: 241, column: 23, scope: !552)
!555 = !DILocation(line: 241, column: 7, scope: !552)
!556 = !DILocation(line: 242, column: 4, scope: !548)
!557 = !DILocation(line: 243, column: 8, scope: !502)
!558 = !DILocation(line: 243, column: 13, scope: !502)
!559 = !DILocation(line: 243, column: 6, scope: !502)
!560 = !DILocation(line: 244, column: 2, scope: !502)
!561 = !DILocation(line: 219, column: 22, scope: !562)
!562 = !DILexicalBlockFile(scope: !498, file: !135, discriminator: 2)
!563 = !DILocation(line: 219, column: 2, scope: !562)
!564 = distinct !{!564, !565}
!565 = !DILocation(line: 219, column: 2, scope: !469)
!566 = !DILocation(line: 246, column: 12, scope: !469)
!567 = !DILocation(line: 246, column: 3, scope: !469)
!568 = !DILocation(line: 246, column: 6, scope: !469)
!569 = !DILocation(line: 248, column: 2, scope: !469)
!570 = !DILocation(line: 249, column: 1, scope: !469)
!571 = distinct !DISubprogram(name: "parse_mpls_address", scope: !135, file: !135, line: 253, type: !572, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !140)
!572 = !DISubroutineType(types: !573)
!573 = !{!138, !197, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_mpls_t", file: !576, line: 76, baseType: !577)
!576 = !DIFile(filename: "./../include/vrrp_iproute.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_mpls", file: !576, line: 73, size: 128, align: 64, elements: !578)
!578 = !{!579, !592}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !577, file: !576, line: 74, baseType: !580, size: 64, align: 32)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpls_labels", file: !576, line: 71, baseType: !581)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 64, align: 32, elements: !590)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpls_label", file: !583, line: 21, size: 32, align: 32, elements: !584)
!583 = !DIFile(filename: "/usr/include/linux/mpls.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !582, file: !583, line: 22, baseType: !586, size: 32, align: 32)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !587, line: 30, baseType: !588)
!587 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !589, line: 26, baseType: !41)
!589 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!590 = !{!591}
!591 = !DISubrange(count: 2)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "num_labels", scope: !577, file: !576, line: 75, baseType: !124, size: 64, align: 64, offset: 64)
!593 = !DILocalVariable(name: "str", arg: 1, scope: !571, file: !135, line: 253, type: !197)
!594 = !DILocation(line: 253, column: 32, scope: !571)
!595 = !DILocalVariable(name: "mpls", arg: 2, scope: !571, file: !135, line: 253, type: !574)
!596 = !DILocation(line: 253, column: 51, scope: !571)
!597 = !DILocalVariable(name: "endp", scope: !571, file: !135, line: 255, type: !80)
!598 = !DILocation(line: 255, column: 8, scope: !571)
!599 = !DILocalVariable(name: "count", scope: !571, file: !135, line: 256, type: !41)
!600 = !DILocation(line: 256, column: 11, scope: !571)
!601 = !DILocalVariable(name: "label", scope: !571, file: !135, line: 257, type: !43)
!602 = !DILocation(line: 257, column: 16, scope: !571)
!603 = !DILocation(line: 259, column: 2, scope: !571)
!604 = !DILocation(line: 259, column: 8, scope: !571)
!605 = !DILocation(line: 259, column: 19, scope: !571)
!606 = !DILocation(line: 262, column: 16, scope: !571)
!607 = !DILocation(line: 262, column: 21, scope: !571)
!608 = !DILocation(line: 262, column: 9, scope: !571)
!609 = !DILocation(line: 262, column: 6, scope: !571)
!610 = !DILocation(line: 264, column: 13, scope: !611)
!611 = distinct !DILexicalBlock(scope: !571, file: !135, line: 264, column: 2)
!612 = !DILocation(line: 264, column: 7, scope: !611)
!613 = !DILocation(line: 264, column: 18, scope: !614)
!614 = !DILexicalBlockFile(scope: !615, file: !135, discriminator: 1)
!615 = distinct !DILexicalBlock(scope: !611, file: !135, line: 264, column: 2)
!616 = !DILocation(line: 264, column: 24, scope: !614)
!617 = !DILocation(line: 264, column: 2, scope: !614)
!618 = !DILocation(line: 265, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !135, line: 265, column: 7)
!620 = distinct !DILexicalBlock(scope: !615, file: !135, line: 264, column: 38)
!621 = !DILocation(line: 265, column: 14, scope: !619)
!622 = !DILocation(line: 265, column: 7, scope: !620)
!623 = !DILocation(line: 266, column: 4, scope: !619)
!624 = !DILocation(line: 268, column: 14, scope: !625)
!625 = distinct !DILexicalBlock(scope: !620, file: !135, line: 268, column: 7)
!626 = !DILocation(line: 268, column: 19, scope: !625)
!627 = !DILocation(line: 268, column: 7, scope: !625)
!628 = !DILocation(line: 268, column: 7, scope: !620)
!629 = !DILocation(line: 269, column: 4, scope: !625)
!630 = !DILocation(line: 271, column: 19, scope: !620)
!631 = !DILocation(line: 271, column: 11, scope: !620)
!632 = !DILocation(line: 271, column: 9, scope: !620)
!633 = !DILocation(line: 273, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !620, file: !135, line: 273, column: 7)
!635 = !DILocation(line: 273, column: 15, scope: !634)
!636 = !DILocation(line: 273, column: 12, scope: !634)
!637 = !DILocation(line: 273, column: 7, scope: !620)
!638 = !DILocation(line: 274, column: 4, scope: !634)
!639 = !DILocation(line: 277, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !620, file: !135, line: 277, column: 7)
!641 = !DILocation(line: 277, column: 13, scope: !640)
!642 = !DILocation(line: 277, column: 7, scope: !620)
!643 = !DILocation(line: 278, column: 4, scope: !640)
!644 = !DILocation(line: 279, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !620, file: !135, line: 279, column: 7)
!646 = !DILocation(line: 279, column: 13, scope: !645)
!647 = !DILocation(line: 279, column: 7, scope: !620)
!648 = !DILocation(line: 280, column: 4, scope: !645)
!649 = !DILocation(line: 282, column: 45, scope: !620)
!650 = !DILocation(line: 282, column: 35, scope: !620)
!651 = !DILocation(line: 282, column: 51, scope: !620)
!652 = !DILocation(line: 282, column: 29, scope: !620)
!653 = !DILocation(line: 282, column: 14, scope: !620)
!654 = !DILocation(line: 282, column: 3, scope: !620)
!655 = !DILocation(line: 282, column: 9, scope: !620)
!656 = !DILocation(line: 282, column: 21, scope: !620)
!657 = !DILocation(line: 282, column: 27, scope: !620)
!658 = !DILocation(line: 283, column: 8, scope: !659)
!659 = distinct !DILexicalBlock(scope: !620, file: !135, line: 283, column: 7)
!660 = !DILocation(line: 283, column: 7, scope: !659)
!661 = !DILocation(line: 283, column: 13, scope: !659)
!662 = !DILocation(line: 283, column: 7, scope: !620)
!663 = !DILocation(line: 284, column: 31, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !135, line: 283, column: 22)
!665 = !DILocation(line: 284, column: 15, scope: !664)
!666 = !DILocation(line: 284, column: 4, scope: !664)
!667 = !DILocation(line: 284, column: 10, scope: !664)
!668 = !DILocation(line: 284, column: 22, scope: !664)
!669 = !DILocation(line: 284, column: 28, scope: !664)
!670 = !DILocation(line: 285, column: 23, scope: !664)
!671 = !DILocation(line: 285, column: 29, scope: !664)
!672 = !DILocation(line: 285, column: 4, scope: !664)
!673 = !DILocation(line: 285, column: 10, scope: !664)
!674 = !DILocation(line: 285, column: 21, scope: !664)
!675 = !DILocation(line: 286, column: 4, scope: !664)
!676 = !DILocation(line: 290, column: 8, scope: !677)
!677 = distinct !DILexicalBlock(scope: !620, file: !135, line: 290, column: 7)
!678 = !DILocation(line: 290, column: 7, scope: !677)
!679 = !DILocation(line: 290, column: 13, scope: !677)
!680 = !DILocation(line: 290, column: 7, scope: !620)
!681 = !DILocation(line: 291, column: 4, scope: !677)
!682 = !DILocation(line: 293, column: 9, scope: !620)
!683 = !DILocation(line: 293, column: 14, scope: !620)
!684 = !DILocation(line: 293, column: 7, scope: !620)
!685 = !DILocation(line: 294, column: 2, scope: !620)
!686 = !DILocation(line: 264, column: 34, scope: !687)
!687 = !DILexicalBlockFile(scope: !615, file: !135, discriminator: 2)
!688 = !DILocation(line: 264, column: 2, scope: !687)
!689 = distinct !{!689, !690}
!690 = !DILocation(line: 264, column: 2, scope: !571)
!691 = !DILocation(line: 297, column: 2, scope: !571)
!692 = !DILocation(line: 298, column: 1, scope: !571)
