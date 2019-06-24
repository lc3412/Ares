; ModuleID = './[inter]lib--utils.o.i'
source_filename = "./[inter]lib--utils.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }

@debug = global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%*s%.4zu \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%3.2x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@inet_ntop2.buf = internal global [16 x i8] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"WARNING - \00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"%sVirtual server group range '%s' has extra characters at end '%s'\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"Virtual server group range '%s' end '%s' too large\00", align 1
@inet_sockaddrtos.addr_str = internal global [46 x i8] zeroinitializer, align 16
@inet_sockaddrtopair.ret = internal global [54 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [8 x i8] c"[%s]:%d\00", align 1
@inet_sockaddrtotrio.ret = internal global [59 x i8] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"sctp\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"[%s]:%s:%d\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1

; Function Attrs: nounwind uwtable
define void @dump_buffer(i8*, i64, %struct._IO_FILE*, i32) #0 !dbg !167 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !225, metadata !226), !dbg !227
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !228, metadata !226), !dbg !229
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !230, metadata !226), !dbg !231
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !232, metadata !226), !dbg !233
  call void @llvm.dbg.declare(metadata i64* %9, metadata !234, metadata !226), !dbg !235
  call void @llvm.dbg.declare(metadata i64* %10, metadata !236, metadata !226), !dbg !237
  call void @llvm.dbg.declare(metadata i64* %11, metadata !238, metadata !226), !dbg !239
  call void @llvm.dbg.declare(metadata i8* %12, metadata !240, metadata !226), !dbg !242
  store i8 1, i8* %12, align 1, !dbg !242
  %13 = load i64, i64* %6, align 8, !dbg !243
  %14 = urem i64 %13, 16, !dbg !245
  %15 = icmp ne i64 %14, 0, !dbg !245
  br i1 %15, label %16, label %22, !dbg !246

; <label>:16:                                     ; preds = %4
  %17 = load i64, i64* %6, align 8, !dbg !247
  %18 = load i64, i64* %6, align 8, !dbg !248
  %19 = urem i64 %18, 16, !dbg !249
  %20 = sub i64 16, %19, !dbg !250
  %21 = add i64 %17, %20, !dbg !251
  store i64 %21, i64* %11, align 8, !dbg !252
  br label %24, !dbg !253

; <label>:22:                                     ; preds = %4
  %23 = load i64, i64* %6, align 8, !dbg !254
  store i64 %23, i64* %11, align 8, !dbg !255
  br label %24

; <label>:24:                                     ; preds = %22, %16
  store i64 0, i64* %9, align 8, !dbg !256
  br label %25, !dbg !258

; <label>:25:                                     ; preds = %121, %24
  %26 = load i64, i64* %9, align 8, !dbg !259
  %27 = load i64, i64* %11, align 8, !dbg !262
  %28 = icmp ult i64 %26, %27, !dbg !263
  br i1 %28, label %29, label %124, !dbg !264

; <label>:29:                                     ; preds = %25
  %30 = load i8, i8* %12, align 1, !dbg !265
  %31 = trunc i8 %30 to i1, !dbg !265
  br i1 %31, label %32, label %38, !dbg !268

; <label>:32:                                     ; preds = %29
  store i8 0, i8* %12, align 1, !dbg !269
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !271
  %34 = load i32, i32* %8, align 4, !dbg !272
  %35 = load i64, i64* %9, align 8, !dbg !273
  %36 = and i64 %35, 65535, !dbg !274
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i64 %36), !dbg !275
  br label %38, !dbg !276

; <label>:38:                                     ; preds = %32, %29
  %39 = load i64, i64* %9, align 8, !dbg !277
  %40 = load i64, i64* %6, align 8, !dbg !279
  %41 = icmp ult i64 %39, %40, !dbg !280
  br i1 %41, label %42, label %51, !dbg !281

; <label>:42:                                     ; preds = %38
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !282
  %44 = load i64, i64* %9, align 8, !dbg !283
  %45 = load i8*, i8** %5, align 8, !dbg !284
  %46 = getelementptr inbounds i8, i8* %45, i64 %44, !dbg !284
  %47 = load i8, i8* %46, align 1, !dbg !284
  %48 = sext i8 %47 to i32, !dbg !284
  %49 = and i32 %48, 255, !dbg !285
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 %49), !dbg !286
  br label %54, !dbg !286

; <label>:51:                                     ; preds = %38
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !287
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)), !dbg !288
  br label %54

; <label>:54:                                     ; preds = %51, %42
  %55 = load i64, i64* %9, align 8, !dbg !289
  %56 = add i64 %55, 1, !dbg !291
  %57 = urem i64 %56, 8, !dbg !292
  %58 = icmp ne i64 %57, 0, !dbg !292
  br i1 %58, label %120, label %59, !dbg !293

; <label>:59:                                     ; preds = %54
  %60 = load i64, i64* %9, align 8, !dbg !294
  %61 = add i64 %60, 1, !dbg !297
  %62 = urem i64 %61, 16, !dbg !298
  %63 = icmp ne i64 %62, 0, !dbg !298
  br i1 %63, label %64, label %67, !dbg !299

; <label>:64:                                     ; preds = %59
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !300
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)), !dbg !301
  br label %119, !dbg !301

; <label>:67:                                     ; preds = %59
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !302
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)), !dbg !304
  %70 = load i64, i64* %9, align 8, !dbg !305
  %71 = sub i64 %70, 15, !dbg !307
  store i64 %71, i64* %10, align 8, !dbg !308
  br label %72, !dbg !309

; <label>:72:                                     ; preds = %113, %67
  %73 = load i64, i64* %10, align 8, !dbg !310
  %74 = load i64, i64* %9, align 8, !dbg !313
  %75 = icmp ule i64 %73, %74, !dbg !314
  br i1 %75, label %76, label %116, !dbg !315

; <label>:76:                                     ; preds = %72
  %77 = load i64, i64* %10, align 8, !dbg !316
  %78 = load i64, i64* %6, align 8, !dbg !318
  %79 = icmp ult i64 %77, %78, !dbg !319
  br i1 %79, label %80, label %109, !dbg !320

; <label>:80:                                     ; preds = %76
  %81 = load i64, i64* %10, align 8, !dbg !321
  %82 = load i8*, i8** %5, align 8, !dbg !324
  %83 = getelementptr inbounds i8, i8* %82, i64 %81, !dbg !324
  %84 = load i8, i8* %83, align 1, !dbg !324
  %85 = sext i8 %84 to i32, !dbg !324
  %86 = and i32 %85, 255, !dbg !325
  %87 = icmp sge i32 %86, 32, !dbg !326
  br i1 %87, label %88, label %105, !dbg !327

; <label>:88:                                     ; preds = %80
  %89 = load i64, i64* %10, align 8, !dbg !328
  %90 = load i8*, i8** %5, align 8, !dbg !330
  %91 = getelementptr inbounds i8, i8* %90, i64 %89, !dbg !330
  %92 = load i8, i8* %91, align 1, !dbg !330
  %93 = sext i8 %92 to i32, !dbg !330
  %94 = and i32 %93, 255, !dbg !331
  %95 = icmp sle i32 %94, 126, !dbg !332
  br i1 %95, label %96, label %105, !dbg !333

; <label>:96:                                     ; preds = %88
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !335
  %98 = load i64, i64* %10, align 8, !dbg !336
  %99 = load i8*, i8** %5, align 8, !dbg !337
  %100 = getelementptr inbounds i8, i8* %99, i64 %98, !dbg !337
  %101 = load i8, i8* %100, align 1, !dbg !337
  %102 = sext i8 %101 to i32, !dbg !337
  %103 = and i32 %102, 255, !dbg !338
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 %103), !dbg !339
  br label %108, !dbg !339

; <label>:105:                                    ; preds = %88, %80
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !340
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !dbg !341
  br label %108

; <label>:108:                                    ; preds = %105, %96
  br label %112, !dbg !342

; <label>:109:                                    ; preds = %76
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !343
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !dbg !344
  br label %112

; <label>:112:                                    ; preds = %109, %108
  br label %113, !dbg !345

; <label>:113:                                    ; preds = %112
  %114 = load i64, i64* %10, align 8, !dbg !347
  %115 = add i64 %114, 1, !dbg !347
  store i64 %115, i64* %10, align 8, !dbg !347
  br label %72, !dbg !349, !llvm.loop !350

; <label>:116:                                    ; preds = %72
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !352
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !dbg !353
  store i8 1, i8* %12, align 1, !dbg !354
  br label %119

; <label>:119:                                    ; preds = %116, %64
  br label %120, !dbg !355

; <label>:120:                                    ; preds = %119, %54
  br label %121, !dbg !356

; <label>:121:                                    ; preds = %120
  %122 = load i64, i64* %9, align 8, !dbg !357
  %123 = add i64 %122, 1, !dbg !357
  store i64 %123, i64* %9, align 8, !dbg !357
  br label %25, !dbg !359, !llvm.loop !360

; <label>:124:                                    ; preds = %25
  ret void, !dbg !362
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @make_file_name(i8*, i8*, i8*, i8*) #0 !dbg !363 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !368, metadata !226), !dbg !369
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !370, metadata !226), !dbg !371
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !372, metadata !226), !dbg !373
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !374, metadata !226), !dbg !375
  call void @llvm.dbg.declare(metadata i8** %10, metadata !376, metadata !226), !dbg !377
  call void @llvm.dbg.declare(metadata i8** %11, metadata !378, metadata !226), !dbg !379
  call void @llvm.dbg.declare(metadata i64* %12, metadata !380, metadata !226), !dbg !381
  call void @llvm.dbg.declare(metadata i8** %13, metadata !382, metadata !226), !dbg !383
  %14 = load i8*, i8** %6, align 8, !dbg !384
  %15 = icmp ne i8* %14, null, !dbg !384
  br i1 %15, label %17, label %16, !dbg !386

; <label>:16:                                     ; preds = %4
  store i8* null, i8** %5, align 8, !dbg !387
  br label %111, !dbg !387

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %6, align 8, !dbg !388
  %19 = call i64 @strlen(i8* %18) #8, !dbg !389
  store i64 %19, i64* %12, align 8, !dbg !390
  %20 = load i8*, i8** %7, align 8, !dbg !391
  %21 = icmp ne i8* %20, null, !dbg !391
  br i1 %21, label %22, label %28, !dbg !393

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %7, align 8, !dbg !394
  %24 = call i64 @strlen(i8* %23) #8, !dbg !395
  %25 = add i64 %24, 1, !dbg !396
  %26 = load i64, i64* %12, align 8, !dbg !397
  %27 = add i64 %26, %25, !dbg !397
  store i64 %27, i64* %12, align 8, !dbg !397
  br label %28, !dbg !398

; <label>:28:                                     ; preds = %22, %17
  %29 = load i8*, i8** %8, align 8, !dbg !399
  %30 = icmp ne i8* %29, null, !dbg !399
  br i1 %30, label %31, label %37, !dbg !401

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %8, align 8, !dbg !402
  %33 = call i64 @strlen(i8* %32) #8, !dbg !403
  %34 = add i64 %33, 1, !dbg !404
  %35 = load i64, i64* %12, align 8, !dbg !405
  %36 = add i64 %35, %34, !dbg !405
  store i64 %36, i64* %12, align 8, !dbg !405
  br label %37, !dbg !406

; <label>:37:                                     ; preds = %31, %28
  %38 = load i8*, i8** %9, align 8, !dbg !407
  %39 = icmp ne i8* %38, null, !dbg !407
  br i1 %39, label %40, label %46, !dbg !409

; <label>:40:                                     ; preds = %37
  %41 = load i8*, i8** %9, align 8, !dbg !410
  %42 = call i64 @strlen(i8* %41) #8, !dbg !411
  %43 = add i64 %42, 1, !dbg !412
  %44 = load i64, i64* %12, align 8, !dbg !413
  %45 = add i64 %44, %43, !dbg !413
  store i64 %45, i64* %12, align 8, !dbg !413
  br label %46, !dbg !414

; <label>:46:                                     ; preds = %40, %37
  %47 = load i64, i64* %12, align 8, !dbg !415
  %48 = add i64 %47, 1, !dbg !416
  %49 = call i8* @zalloc(i64 %48), !dbg !417
  store i8* %49, i8** %13, align 8, !dbg !418
  %50 = load i8*, i8** %6, align 8, !dbg !419
  %51 = call i8* @strrchr(i8* %50, i32 47) #8, !dbg !420
  store i8* %51, i8** %11, align 8, !dbg !421
  %52 = load i8*, i8** %11, align 8, !dbg !422
  %53 = icmp ne i8* %52, null, !dbg !422
  br i1 %53, label %54, label %56, !dbg !422

; <label>:54:                                     ; preds = %46
  %55 = load i8*, i8** %11, align 8, !dbg !423
  br label %58, !dbg !425

; <label>:56:                                     ; preds = %46
  %57 = load i8*, i8** %6, align 8, !dbg !426
  br label %58, !dbg !428

; <label>:58:                                     ; preds = %56, %54
  %59 = phi i8* [ %55, %54 ], [ %57, %56 ], !dbg !429
  %60 = call i8* @strrchr(i8* %59, i32 46) #8, !dbg !431
  store i8* %60, i8** %10, align 8, !dbg !432
  %61 = load i8*, i8** %13, align 8, !dbg !433
  %62 = load i8*, i8** %6, align 8, !dbg !434
  %63 = load i8*, i8** %10, align 8, !dbg !435
  %64 = icmp ne i8* %63, null, !dbg !435
  br i1 %64, label %65, label %71, !dbg !435

; <label>:65:                                     ; preds = %58
  %66 = load i8*, i8** %10, align 8, !dbg !436
  %67 = load i8*, i8** %6, align 8, !dbg !437
  %68 = ptrtoint i8* %66 to i64, !dbg !438
  %69 = ptrtoint i8* %67 to i64, !dbg !438
  %70 = sub i64 %68, %69, !dbg !438
  br label %73, !dbg !439

; <label>:71:                                     ; preds = %58
  %72 = load i64, i64* %12, align 8, !dbg !440
  br label %73, !dbg !441

; <label>:73:                                     ; preds = %71, %65
  %74 = phi i64 [ %70, %65 ], [ %72, %71 ], !dbg !442
  %75 = call i8* @strncpy(i8* %61, i8* %62, i64 %74) #9, !dbg !443
  %76 = load i8*, i8** %7, align 8, !dbg !444
  %77 = icmp ne i8* %76, null, !dbg !444
  br i1 %77, label %78, label %84, !dbg !446

; <label>:78:                                     ; preds = %73
  %79 = load i8*, i8** %13, align 8, !dbg !447
  %80 = call i8* @strcat(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !449
  %81 = load i8*, i8** %13, align 8, !dbg !450
  %82 = load i8*, i8** %7, align 8, !dbg !451
  %83 = call i8* @strcat(i8* %81, i8* %82) #9, !dbg !452
  br label %84, !dbg !453

; <label>:84:                                     ; preds = %78, %73
  %85 = load i8*, i8** %8, align 8, !dbg !454
  %86 = icmp ne i8* %85, null, !dbg !454
  br i1 %86, label %87, label %93, !dbg !456

; <label>:87:                                     ; preds = %84
  %88 = load i8*, i8** %13, align 8, !dbg !457
  %89 = call i8* @strcat(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !459
  %90 = load i8*, i8** %13, align 8, !dbg !460
  %91 = load i8*, i8** %8, align 8, !dbg !461
  %92 = call i8* @strcat(i8* %90, i8* %91) #9, !dbg !462
  br label %93, !dbg !463

; <label>:93:                                     ; preds = %87, %84
  %94 = load i8*, i8** %9, align 8, !dbg !464
  %95 = icmp ne i8* %94, null, !dbg !464
  br i1 %95, label %96, label %102, !dbg !466

; <label>:96:                                     ; preds = %93
  %97 = load i8*, i8** %13, align 8, !dbg !467
  %98 = call i8* @strcat(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !469
  %99 = load i8*, i8** %13, align 8, !dbg !470
  %100 = load i8*, i8** %9, align 8, !dbg !471
  %101 = call i8* @strcat(i8* %99, i8* %100) #9, !dbg !472
  br label %102, !dbg !473

; <label>:102:                                    ; preds = %96, %93
  %103 = load i8*, i8** %10, align 8, !dbg !474
  %104 = icmp ne i8* %103, null, !dbg !474
  br i1 %104, label %105, label %109, !dbg !476

; <label>:105:                                    ; preds = %102
  %106 = load i8*, i8** %13, align 8, !dbg !477
  %107 = load i8*, i8** %10, align 8, !dbg !478
  %108 = call i8* @strcat(i8* %106, i8* %107) #9, !dbg !479
  br label %109, !dbg !479

; <label>:109:                                    ; preds = %105, %102
  %110 = load i8*, i8** %13, align 8, !dbg !480
  store i8* %110, i8** %5, align 8, !dbg !481
  br label %111, !dbg !481

; <label>:111:                                    ; preds = %109, %16
  %112 = load i8*, i8** %5, align 8, !dbg !482
  ret i8* %112, !dbg !482
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @zalloc(i64) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define zeroext i16 @in_csum(i16*, i64, i32, i32*) #0 !dbg !483 {
  %5 = alloca i16*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store i16* %0, i16** %5, align 8
  call void @llvm.dbg.declare(metadata i16** %5, metadata !489, metadata !226), !dbg !490
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !491, metadata !226), !dbg !492
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !493, metadata !226), !dbg !494
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !495, metadata !226), !dbg !496
  call void @llvm.dbg.declare(metadata i64* %9, metadata !497, metadata !226), !dbg !498
  %13 = load i64, i64* %6, align 8, !dbg !499
  store i64 %13, i64* %9, align 8, !dbg !498
  call void @llvm.dbg.declare(metadata i16** %10, metadata !500, metadata !226), !dbg !501
  %14 = load i16*, i16** %5, align 8, !dbg !502
  store i16* %14, i16** %10, align 8, !dbg !501
  call void @llvm.dbg.declare(metadata i16* %11, metadata !503, metadata !226), !dbg !504
  call void @llvm.dbg.declare(metadata i32* %12, metadata !505, metadata !226), !dbg !506
  %15 = load i32, i32* %7, align 4, !dbg !507
  store i32 %15, i32* %12, align 4, !dbg !506
  br label %16, !dbg !508

; <label>:16:                                     ; preds = %19, %4
  %17 = load i64, i64* %9, align 8, !dbg !509
  %18 = icmp ugt i64 %17, 1, !dbg !511
  br i1 %18, label %19, label %28, !dbg !512

; <label>:19:                                     ; preds = %16
  %20 = load i16*, i16** %10, align 8, !dbg !513
  %21 = getelementptr inbounds i16, i16* %20, i32 1, !dbg !513
  store i16* %21, i16** %10, align 8, !dbg !513
  %22 = load i16, i16* %20, align 2, !dbg !515
  %23 = zext i16 %22 to i32, !dbg !515
  %24 = load i32, i32* %12, align 4, !dbg !516
  %25 = add i32 %24, %23, !dbg !516
  store i32 %25, i32* %12, align 4, !dbg !516
  %26 = load i64, i64* %9, align 8, !dbg !517
  %27 = sub i64 %26, 2, !dbg !517
  store i64 %27, i64* %9, align 8, !dbg !517
  br label %16, !dbg !518, !llvm.loop !520

; <label>:28:                                     ; preds = %16
  %29 = load i64, i64* %9, align 8, !dbg !521
  %30 = icmp eq i64 %29, 1, !dbg !523
  br i1 %30, label %31, label %42, !dbg !524

; <label>:31:                                     ; preds = %28
  %32 = load i16*, i16** %10, align 8, !dbg !525
  %33 = bitcast i16* %32 to i8*, !dbg !526
  %34 = load i8, i8* %33, align 1, !dbg !526
  %35 = zext i8 %34 to i32, !dbg !526
  %36 = shl i32 %35, 8, !dbg !527
  %37 = trunc i32 %36 to i16, !dbg !526
  %38 = call zeroext i16 @htons(i16 zeroext %37) #1, !dbg !528
  %39 = zext i16 %38 to i32, !dbg !528
  %40 = load i32, i32* %12, align 4, !dbg !529
  %41 = add i32 %40, %39, !dbg !529
  store i32 %41, i32* %12, align 4, !dbg !529
  br label %42, !dbg !530

; <label>:42:                                     ; preds = %31, %28
  %43 = load i32*, i32** %8, align 8, !dbg !531
  %44 = icmp ne i32* %43, null, !dbg !531
  br i1 %44, label %45, label %48, !dbg !533

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %12, align 4, !dbg !534
  %47 = load i32*, i32** %8, align 8, !dbg !535
  store i32 %46, i32* %47, align 4, !dbg !536
  br label %48, !dbg !537

; <label>:48:                                     ; preds = %45, %42
  %49 = load i32, i32* %12, align 4, !dbg !538
  %50 = lshr i32 %49, 16, !dbg !539
  %51 = load i32, i32* %12, align 4, !dbg !540
  %52 = and i32 %51, 65535, !dbg !541
  %53 = add i32 %50, %52, !dbg !542
  store i32 %53, i32* %12, align 4, !dbg !543
  %54 = load i32, i32* %12, align 4, !dbg !544
  %55 = lshr i32 %54, 16, !dbg !545
  %56 = load i32, i32* %12, align 4, !dbg !546
  %57 = add i32 %56, %55, !dbg !546
  store i32 %57, i32* %12, align 4, !dbg !546
  %58 = load i32, i32* %12, align 4, !dbg !547
  %59 = xor i32 %58, -1, !dbg !548
  %60 = and i32 %59, 65535, !dbg !549
  %61 = trunc i32 %60 to i16, !dbg !550
  store i16 %61, i16* %11, align 2, !dbg !551
  %62 = load i16, i16* %11, align 2, !dbg !552
  ret i16 %62, !dbg !553
}

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind uwtable
define i8* @inet_ntop2(i32) #0 !dbg !128 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !554, metadata !226), !dbg !555
  call void @llvm.dbg.declare(metadata i8** %3, metadata !556, metadata !226), !dbg !557
  %4 = bitcast i32* %2 to i8*, !dbg !558
  store i8* %4, i8** %3, align 8, !dbg !559
  %5 = load i8*, i8** %3, align 8, !dbg !560
  %6 = getelementptr inbounds i8, i8* %5, i64 0, !dbg !560
  %7 = load i8, i8* %6, align 1, !dbg !560
  %8 = zext i8 %7 to i32, !dbg !560
  %9 = load i8*, i8** %3, align 8, !dbg !561
  %10 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !561
  %11 = load i8, i8* %10, align 1, !dbg !561
  %12 = zext i8 %11 to i32, !dbg !561
  %13 = load i8*, i8** %3, align 8, !dbg !562
  %14 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !562
  %15 = load i8, i8* %14, align 1, !dbg !562
  %16 = zext i8 %15 to i32, !dbg !562
  %17 = load i8*, i8** %3, align 8, !dbg !563
  %18 = getelementptr inbounds i8, i8* %17, i64 3, !dbg !563
  %19 = load i8, i8* %18, align 1, !dbg !563
  %20 = zext i8 %19 to i32, !dbg !563
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @inet_ntop2.buf, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %8, i32 %12, i32 %16, i32 %20) #9, !dbg !564
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @inet_ntop2.buf, i32 0, i32 0), !dbg !565
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define zeroext i1 @inet_stor(i8*, i32*) #0 !dbg !566 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !569, metadata !226), !dbg !570
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !571, metadata !226), !dbg !572
  call void @llvm.dbg.declare(metadata i8** %6, metadata !573, metadata !226), !dbg !574
  call void @llvm.dbg.declare(metadata i8** %7, metadata !575, metadata !226), !dbg !576
  call void @llvm.dbg.declare(metadata i64* %8, metadata !577, metadata !226), !dbg !578
  call void @llvm.dbg.declare(metadata i32* %9, metadata !579, metadata !226), !dbg !580
  %11 = load i8*, i8** %4, align 8, !dbg !581
  %12 = call i8* @strchr(i8* %11, i32 58) #8, !dbg !582
  %13 = icmp ne i8* %12, null, !dbg !582
  %14 = select i1 %13, i32 10, i32 2, !dbg !582
  store i32 %14, i32* %9, align 4, !dbg !580
  call void @llvm.dbg.declare(metadata i8** %10, metadata !583, metadata !226), !dbg !584
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 8, !dbg !584
  %15 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !585
  br i1 %15, label %17, label %16, !dbg !587

; <label>:16:                                     ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8** %10, align 8, !dbg !588
  br label %17, !dbg !589

; <label>:17:                                     ; preds = %16, %2
  %18 = load i8*, i8** %4, align 8, !dbg !590
  %19 = call i8* @strchr(i8* %18, i32 45) #8, !dbg !592
  store i8* %19, i8** %6, align 8, !dbg !593
  %20 = icmp ne i8* %19, null, !dbg !593
  br i1 %20, label %23, label %21, !dbg !594

; <label>:21:                                     ; preds = %17
  %22 = load i32*, i32** %5, align 8, !dbg !595
  store i32 -1, i32* %22, align 4, !dbg !597
  store i1 true, i1* %3, align 1, !dbg !598
  br label %65, !dbg !598

; <label>:23:                                     ; preds = %17
  %24 = call i32* @__errno_location() #1, !dbg !599
  store i32 0, i32* %24, align 4, !dbg !600
  %25 = load i8*, i8** %6, align 8, !dbg !601
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !602
  %27 = load i32, i32* %9, align 4, !dbg !603
  %28 = icmp eq i32 %27, 10, !dbg !604
  %29 = select i1 %28, i32 16, i32 10, !dbg !603
  %30 = call i64 @strtoul(i8* %26, i8** %7, i32 %29) #9, !dbg !605
  store i64 %30, i64* %8, align 8, !dbg !606
  %31 = load i64, i64* %8, align 8, !dbg !607
  %32 = trunc i64 %31 to i32, !dbg !607
  %33 = load i32*, i32** %5, align 8, !dbg !608
  store i32 %32, i32* %33, align 4, !dbg !609
  %34 = load i8*, i8** %7, align 8, !dbg !610
  %35 = load i8, i8* %34, align 1, !dbg !612
  %36 = icmp ne i8 %35, 0, !dbg !612
  br i1 %36, label %37, label %41, !dbg !613

; <label>:37:                                     ; preds = %23
  %38 = load i8*, i8** %10, align 8, !dbg !614
  %39 = load i8*, i8** %4, align 8, !dbg !615
  %40 = load i8*, i8** %7, align 8, !dbg !616
  call void (i32, i8*, ...) @report_config_error(i32 10, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i32 0, i32 0), i8* %38, i8* %39, i8* %40), !dbg !617
  br label %62, !dbg !617

; <label>:41:                                     ; preds = %23
  %42 = call i32* @__errno_location() #1, !dbg !618
  %43 = load i32, i32* %42, align 4, !dbg !620
  %44 = icmp eq i32 %43, 34, !dbg !621
  br i1 %44, label %57, label %45, !dbg !622

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %9, align 4, !dbg !623
  %47 = icmp eq i32 %46, 10, !dbg !624
  br i1 %47, label %48, label %51, !dbg !625

; <label>:48:                                     ; preds = %45
  %49 = load i64, i64* %8, align 8, !dbg !626
  %50 = icmp ugt i64 %49, 65535, !dbg !628
  br i1 %50, label %57, label %51, !dbg !629

; <label>:51:                                     ; preds = %48, %45
  %52 = load i32, i32* %9, align 4, !dbg !630
  %53 = icmp eq i32 %52, 2, !dbg !631
  br i1 %53, label %54, label %61, !dbg !632

; <label>:54:                                     ; preds = %51
  %55 = load i64, i64* %8, align 8, !dbg !633
  %56 = icmp ugt i64 %55, 255, !dbg !634
  br i1 %56, label %57, label %61, !dbg !635

; <label>:57:                                     ; preds = %54, %48, %41
  %58 = load i8*, i8** %4, align 8, !dbg !637
  %59 = load i8*, i8** %6, align 8, !dbg !639
  %60 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !640
  call void (i32, i8*, ...) @report_config_error(i32 10, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0), i8* %58, i8* %60), !dbg !641
  store i1 false, i1* %3, align 1, !dbg !642
  br label %65, !dbg !642

; <label>:61:                                     ; preds = %54, %51
  store i1 true, i1* %3, align 1, !dbg !643
  br label %65, !dbg !643

; <label>:62:                                     ; preds = %37
  %63 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !644
  %64 = xor i1 %63, true, !dbg !645
  store i1 %64, i1* %3, align 1, !dbg !646
  br label %65, !dbg !646

; <label>:65:                                     ; preds = %62, %61, %57, %21
  %66 = load i1, i1* %3, align 1, !dbg !647
  ret i1 %66, !dbg !647
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #6 !dbg !648 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !653, metadata !226), !dbg !654
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !655, metadata !226), !dbg !656
  %5 = load i32, i32* %3, align 4, !dbg !657
  %6 = zext i32 %5 to i64, !dbg !658
  %7 = udiv i64 %6, 64, !dbg !659
  %8 = load i64*, i64** %4, align 8, !dbg !660
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !660
  %10 = load i64, i64* %9, align 8, !dbg !660
  %11 = load i32, i32* %3, align 4, !dbg !661
  %12 = zext i32 %11 to i64, !dbg !662
  %13 = urem i64 %12, 64, !dbg !663
  %14 = shl i64 1, %13, !dbg !664
  %15 = and i64 %10, %14, !dbg !665
  %16 = icmp ne i64 %15, 0, !dbg !666
  %17 = xor i1 %16, true, !dbg !666
  %18 = xor i1 %17, true, !dbg !667
  ret i1 %18, !dbg !668
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #4

declare void @report_config_error(i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @domain_stosockaddr(i8*, i8*, %struct.sockaddr_storage*) #0 !dbg !669 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !672, metadata !226), !dbg !673
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !674, metadata !226), !dbg !675
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %7, metadata !676, metadata !226), !dbg !677
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %8, metadata !678, metadata !226), !dbg !702
  store %struct.addrinfo* null, %struct.addrinfo** %8, align 8, !dbg !702
  call void @llvm.dbg.declare(metadata i32* %9, metadata !703, metadata !226), !dbg !704
  %12 = load i8*, i8** %6, align 8, !dbg !705
  %13 = icmp ne i8* %12, null, !dbg !705
  br i1 %13, label %14, label %21, !dbg !707

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %6, align 8, !dbg !708
  %16 = call zeroext i1 @read_unsigned(i8* %15, i32* %9, i32 1, i32 65535, i1 zeroext true), !dbg !711
  br i1 %16, label %20, label %17, !dbg !712

; <label>:17:                                     ; preds = %14
  %18 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !713
  %19 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %18, i32 0, i32 0, !dbg !715
  store i16 0, i16* %19, align 8, !dbg !716
  store i32 -1, i32* %4, align 4, !dbg !717
  br label %83, !dbg !717

; <label>:20:                                     ; preds = %14
  br label %21, !dbg !718

; <label>:21:                                     ; preds = %20, %3
  %22 = load i8*, i8** %5, align 8, !dbg !719
  %23 = call i32 @getaddrinfo(i8* %22, i8* null, %struct.addrinfo* null, %struct.addrinfo** %8), !dbg !721
  %24 = icmp ne i32 %23, 0, !dbg !722
  br i1 %24, label %28, label %25, !dbg !723

; <label>:25:                                     ; preds = %21
  %26 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8, !dbg !724
  %27 = icmp ne %struct.addrinfo* %26, null, !dbg !724
  br i1 %27, label %31, label %28, !dbg !726

; <label>:28:                                     ; preds = %25, %21
  %29 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !727
  %30 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %29, i32 0, i32 0, !dbg !729
  store i16 0, i16* %30, align 8, !dbg !730
  store i32 -1, i32* %4, align 4, !dbg !731
  br label %83, !dbg !731

; <label>:31:                                     ; preds = %25
  %32 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8, !dbg !732
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 1, !dbg !733
  %34 = load i32, i32* %33, align 4, !dbg !733
  %35 = trunc i32 %34 to i16, !dbg !734
  %36 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !735
  %37 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %36, i32 0, i32 0, !dbg !736
  store i16 %35, i16* %37, align 8, !dbg !737
  %38 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !738
  %39 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %38, i32 0, i32 0, !dbg !740
  %40 = load i16, i16* %39, align 8, !dbg !740
  %41 = zext i16 %40 to i32, !dbg !738
  %42 = icmp eq i32 %41, 10, !dbg !741
  br i1 %42, label %43, label %62, !dbg !742

; <label>:43:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %10, metadata !743, metadata !226), !dbg !745
  %44 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !746
  %45 = bitcast %struct.sockaddr_storage* %44 to %struct.sockaddr_in6*, !dbg !747
  store %struct.sockaddr_in6* %45, %struct.sockaddr_in6** %10, align 8, !dbg !745
  %46 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8, !dbg !748
  %47 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8, !dbg !749
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 5, !dbg !750
  %49 = load %struct.sockaddr*, %struct.sockaddr** %48, align 8, !dbg !750
  %50 = bitcast %struct.sockaddr* %49 to %struct.sockaddr_in6*, !dbg !751
  %51 = bitcast %struct.sockaddr_in6* %46 to i8*, !dbg !751
  %52 = bitcast %struct.sockaddr_in6* %50 to i8*, !dbg !751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 28, i32 4, i1 false), !dbg !751
  %53 = load i8*, i8** %6, align 8, !dbg !752
  %54 = icmp ne i8* %53, null, !dbg !752
  br i1 %54, label %55, label %61, !dbg !754

; <label>:55:                                     ; preds = %43
  %56 = load i32, i32* %9, align 4, !dbg !755
  %57 = trunc i32 %56 to i16, !dbg !755
  %58 = call zeroext i16 @htons(i16 zeroext %57) #1, !dbg !756
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8, !dbg !757
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i32 0, i32 1, !dbg !758
  store i16 %58, i16* %60, align 2, !dbg !759
  br label %61, !dbg !757

; <label>:61:                                     ; preds = %55, %43
  br label %81, !dbg !760

; <label>:62:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %11, metadata !761, metadata !226), !dbg !763
  %63 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !764
  %64 = bitcast %struct.sockaddr_storage* %63 to %struct.sockaddr_in*, !dbg !765
  store %struct.sockaddr_in* %64, %struct.sockaddr_in** %11, align 8, !dbg !763
  %65 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8, !dbg !766
  %66 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8, !dbg !767
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 5, !dbg !768
  %68 = load %struct.sockaddr*, %struct.sockaddr** %67, align 8, !dbg !768
  %69 = bitcast %struct.sockaddr* %68 to %struct.sockaddr_in*, !dbg !769
  %70 = bitcast %struct.sockaddr_in* %65 to i8*, !dbg !769
  %71 = bitcast %struct.sockaddr_in* %69 to i8*, !dbg !769
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 16, i32 4, i1 false), !dbg !769
  %72 = load i8*, i8** %6, align 8, !dbg !770
  %73 = icmp ne i8* %72, null, !dbg !770
  br i1 %73, label %74, label %80, !dbg !772

; <label>:74:                                     ; preds = %62
  %75 = load i32, i32* %9, align 4, !dbg !773
  %76 = trunc i32 %75 to i16, !dbg !773
  %77 = call zeroext i16 @htons(i16 zeroext %76) #1, !dbg !774
  %78 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8, !dbg !775
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %78, i32 0, i32 1, !dbg !776
  store i16 %77, i16* %79, align 2, !dbg !777
  br label %80, !dbg !775

; <label>:80:                                     ; preds = %74, %62
  br label %81

; <label>:81:                                     ; preds = %80, %61
  %82 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8, !dbg !778
  call void @freeaddrinfo(%struct.addrinfo* %82) #9, !dbg !779
  store i32 0, i32* %4, align 4, !dbg !780
  br label %83, !dbg !780

; <label>:83:                                     ; preds = %81, %28, %17
  %84 = load i32, i32* %4, align 4, !dbg !781
  ret i32 %84, !dbg !781
}

declare zeroext i1 @read_unsigned(i8*, i32*, i32, i32, i1 zeroext) #2

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #4

; Function Attrs: nounwind uwtable
define i32 @inet_stosockaddr(i8*, i8*, %struct.sockaddr_storage*) #0 !dbg !782 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca %struct.sockaddr_in*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !785, metadata !226), !dbg !786
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !787, metadata !226), !dbg !788
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %7, metadata !789, metadata !226), !dbg !790
  call void @llvm.dbg.declare(metadata i8** %8, metadata !791, metadata !226), !dbg !792
  call void @llvm.dbg.declare(metadata i8** %9, metadata !793, metadata !226), !dbg !794
  call void @llvm.dbg.declare(metadata i8* %10, metadata !795, metadata !226), !dbg !796
  call void @llvm.dbg.declare(metadata i32* %11, metadata !797, metadata !226), !dbg !798
  call void @llvm.dbg.declare(metadata i32* %12, metadata !799, metadata !226), !dbg !800
  %15 = load i8*, i8** %5, align 8, !dbg !801
  %16 = call i8* @strchr(i8* %15, i32 58) #8, !dbg !802
  %17 = icmp ne i8* %16, null, !dbg !803
  %18 = select i1 %17, i32 10, i32 2, !dbg !803
  %19 = trunc i32 %18 to i16, !dbg !803
  %20 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !804
  %21 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %20, i32 0, i32 0, !dbg !805
  store i16 %19, i16* %21, align 8, !dbg !806
  %22 = load i8*, i8** %6, align 8, !dbg !807
  %23 = icmp ne i8* %22, null, !dbg !807
  br i1 %23, label %24, label %31, !dbg !809

; <label>:24:                                     ; preds = %3
  %25 = load i8*, i8** %6, align 8, !dbg !810
  %26 = call zeroext i1 @read_unsigned(i8* %25, i32* %11, i32 1, i32 65535, i1 zeroext true), !dbg !813
  br i1 %26, label %30, label %27, !dbg !814

; <label>:27:                                     ; preds = %24
  %28 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !815
  %29 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %28, i32 0, i32 0, !dbg !817
  store i16 0, i16* %29, align 8, !dbg !818
  store i32 -1, i32* %4, align 4, !dbg !819
  br label %99, !dbg !819

; <label>:30:                                     ; preds = %24
  br label %31, !dbg !820

; <label>:31:                                     ; preds = %30, %3
  %32 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !821
  %33 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %32, i32 0, i32 0, !dbg !823
  %34 = load i16, i16* %33, align 8, !dbg !823
  %35 = zext i16 %34 to i32, !dbg !821
  %36 = icmp eq i32 %35, 10, !dbg !824
  br i1 %36, label %37, label %52, !dbg !825

; <label>:37:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %13, metadata !826, metadata !226), !dbg !828
  %38 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !829
  %39 = bitcast %struct.sockaddr_storage* %38 to %struct.sockaddr_in6*, !dbg !830
  store %struct.sockaddr_in6* %39, %struct.sockaddr_in6** %13, align 8, !dbg !828
  %40 = load i8*, i8** %6, align 8, !dbg !831
  %41 = icmp ne i8* %40, null, !dbg !831
  br i1 %41, label %42, label %48, !dbg !833

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* %11, align 4, !dbg !834
  %44 = trunc i32 %43 to i16, !dbg !834
  %45 = call zeroext i16 @htons(i16 zeroext %44) #1, !dbg !835
  %46 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8, !dbg !836
  %47 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %46, i32 0, i32 1, !dbg !837
  store i16 %45, i16* %47, align 2, !dbg !838
  br label %48, !dbg !836

; <label>:48:                                     ; preds = %42, %37
  %49 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8, !dbg !839
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 3, !dbg !840
  %51 = bitcast %struct.in6_addr* %50 to i8*, !dbg !841
  store i8* %51, i8** %8, align 8, !dbg !842
  br label %67, !dbg !843

; <label>:52:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %14, metadata !844, metadata !226), !dbg !846
  %53 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !847
  %54 = bitcast %struct.sockaddr_storage* %53 to %struct.sockaddr_in*, !dbg !848
  store %struct.sockaddr_in* %54, %struct.sockaddr_in** %14, align 8, !dbg !846
  %55 = load i8*, i8** %6, align 8, !dbg !849
  %56 = icmp ne i8* %55, null, !dbg !849
  br i1 %56, label %57, label %63, !dbg !851

; <label>:57:                                     ; preds = %52
  %58 = load i32, i32* %11, align 4, !dbg !852
  %59 = trunc i32 %58 to i16, !dbg !852
  %60 = call zeroext i16 @htons(i16 zeroext %59) #1, !dbg !853
  %61 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8, !dbg !854
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %61, i32 0, i32 1, !dbg !855
  store i16 %60, i16* %62, align 2, !dbg !856
  br label %63, !dbg !854

; <label>:63:                                     ; preds = %57, %52
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8, !dbg !857
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 2, !dbg !858
  %66 = bitcast %struct.in_addr* %65 to i8*, !dbg !859
  store i8* %66, i8** %8, align 8, !dbg !860
  br label %67

; <label>:67:                                     ; preds = %63, %48
  %68 = load i8*, i8** %5, align 8, !dbg !861
  %69 = call i8* @strchr(i8* %68, i32 45) #8, !dbg !863
  store i8* %69, i8** %9, align 8, !dbg !864
  %70 = icmp ne i8* %69, null, !dbg !864
  br i1 %70, label %75, label %71, !dbg !865

; <label>:71:                                     ; preds = %67
  %72 = load i8*, i8** %5, align 8, !dbg !866
  %73 = call i8* @strchr(i8* %72, i32 47) #8, !dbg !867
  store i8* %73, i8** %9, align 8, !dbg !868
  %74 = icmp ne i8* %73, null, !dbg !868
  br i1 %74, label %75, label %79, !dbg !869

; <label>:75:                                     ; preds = %71, %67
  %76 = load i8*, i8** %9, align 8, !dbg !871
  %77 = load i8, i8* %76, align 1, !dbg !873
  store i8 %77, i8* %10, align 1, !dbg !874
  %78 = load i8*, i8** %9, align 8, !dbg !875
  store i8 0, i8* %78, align 1, !dbg !876
  br label %79, !dbg !877

; <label>:79:                                     ; preds = %75, %71
  %80 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !878
  %81 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %80, i32 0, i32 0, !dbg !879
  %82 = load i16, i16* %81, align 8, !dbg !879
  %83 = zext i16 %82 to i32, !dbg !878
  %84 = load i8*, i8** %5, align 8, !dbg !880
  %85 = load i8*, i8** %8, align 8, !dbg !881
  %86 = call i32 @inet_pton(i32 %83, i8* %84, i8* %85) #9, !dbg !882
  store i32 %86, i32* %12, align 4, !dbg !883
  %87 = load i8*, i8** %9, align 8, !dbg !884
  %88 = icmp ne i8* %87, null, !dbg !884
  br i1 %88, label %89, label %92, !dbg !886

; <label>:89:                                     ; preds = %79
  %90 = load i8, i8* %10, align 1, !dbg !887
  %91 = load i8*, i8** %9, align 8, !dbg !888
  store i8 %90, i8* %91, align 1, !dbg !889
  br label %92, !dbg !890

; <label>:92:                                     ; preds = %89, %79
  %93 = load i32, i32* %12, align 4, !dbg !891
  %94 = icmp ne i32 %93, 0, !dbg !891
  br i1 %94, label %98, label %95, !dbg !893

; <label>:95:                                     ; preds = %92
  %96 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8, !dbg !894
  %97 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %96, i32 0, i32 0, !dbg !896
  store i16 0, i16* %97, align 8, !dbg !897
  store i32 -1, i32* %4, align 4, !dbg !898
  br label %99, !dbg !898

; <label>:98:                                     ; preds = %92
  store i32 0, i32* %4, align 4, !dbg !899
  br label %99, !dbg !899

; <label>:99:                                     ; preds = %98, %95, %27
  %100 = load i32, i32* %4, align 4, !dbg !900
  ret i32 %100, !dbg !900
}

; Function Attrs: nounwind
declare i32 @inet_pton(i32, i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @inet_ip4tosockaddr(%struct.in_addr*, %struct.sockaddr_storage*) #0 !dbg !901 {
  %3 = alloca %struct.in_addr*, align 8
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  store %struct.in_addr* %0, %struct.in_addr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.in_addr** %3, metadata !905, metadata !226), !dbg !906
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %4, metadata !907, metadata !226), !dbg !908
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %5, metadata !909, metadata !226), !dbg !910
  %6 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !911
  %7 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_in*, !dbg !912
  store %struct.sockaddr_in* %7, %struct.sockaddr_in** %5, align 8, !dbg !910
  %8 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8, !dbg !913
  %9 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0, !dbg !914
  store i16 2, i16* %9, align 4, !dbg !915
  %10 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8, !dbg !916
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2, !dbg !917
  %12 = load %struct.in_addr*, %struct.in_addr** %3, align 8, !dbg !918
  %13 = bitcast %struct.in_addr* %11 to i8*, !dbg !919
  %14 = bitcast %struct.in_addr* %12 to i8*, !dbg !919
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 4, i32 4, i1 false), !dbg !919
  ret void, !dbg !920
}

; Function Attrs: nounwind uwtable
define void @inet_ip6tosockaddr(%struct.in6_addr*, %struct.sockaddr_storage*) #0 !dbg !921 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %3, metadata !925, metadata !226), !dbg !926
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %4, metadata !927, metadata !226), !dbg !928
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %5, metadata !929, metadata !226), !dbg !930
  %6 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !931
  %7 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_in6*, !dbg !932
  store %struct.sockaddr_in6* %7, %struct.sockaddr_in6** %5, align 8, !dbg !930
  %8 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8, !dbg !933
  %9 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 0, !dbg !934
  store i16 10, i16* %9, align 4, !dbg !935
  %10 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8, !dbg !936
  %11 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 3, !dbg !937
  %12 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !938
  %13 = bitcast %struct.in6_addr* %11 to i8*, !dbg !939
  %14 = bitcast %struct.in6_addr* %12 to i8*, !dbg !939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 4, i1 false), !dbg !939
  ret void, !dbg !940
}

; Function Attrs: nounwind uwtable
define i8* @inet_sockaddrtos(%struct.sockaddr_storage*) #0 !dbg !136 {
  %2 = alloca %struct.sockaddr_storage*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %2, metadata !941, metadata !226), !dbg !942
  %3 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %2, align 8, !dbg !943
  %4 = call i8* @inet_sockaddrtos2(%struct.sockaddr_storage* %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @inet_sockaddrtos.addr_str, i32 0, i32 0)), !dbg !944
  ret i8* getelementptr inbounds ([46 x i8], [46 x i8]* @inet_sockaddrtos.addr_str, i32 0, i32 0), !dbg !945
}

; Function Attrs: nounwind uwtable
define internal i8* @inet_sockaddrtos2(%struct.sockaddr_storage*, i8*) #0 !dbg !946 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %4, metadata !949, metadata !226), !dbg !950
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !951, metadata !226), !dbg !952
  call void @llvm.dbg.declare(metadata i8** %6, metadata !953, metadata !226), !dbg !954
  %9 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !955
  %10 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0, !dbg !957
  %11 = load i16, i16* %10, align 8, !dbg !957
  %12 = zext i16 %11 to i32, !dbg !955
  %13 = icmp eq i32 %12, 10, !dbg !958
  br i1 %13, label %14, label %20, !dbg !959

; <label>:14:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %7, metadata !960, metadata !226), !dbg !962
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !963
  %16 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr_in6*, !dbg !964
  store %struct.sockaddr_in6* %16, %struct.sockaddr_in6** %7, align 8, !dbg !962
  %17 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8, !dbg !965
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 3, !dbg !966
  %19 = bitcast %struct.in6_addr* %18 to i8*, !dbg !967
  store i8* %19, i8** %6, align 8, !dbg !968
  br label %26, !dbg !969

; <label>:20:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %8, metadata !970, metadata !226), !dbg !972
  %21 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !973
  %22 = bitcast %struct.sockaddr_storage* %21 to %struct.sockaddr_in*, !dbg !974
  store %struct.sockaddr_in* %22, %struct.sockaddr_in** %8, align 8, !dbg !972
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8, !dbg !975
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 2, !dbg !976
  %25 = bitcast %struct.in_addr* %24 to i8*, !dbg !977
  store i8* %25, i8** %6, align 8, !dbg !978
  br label %26

; <label>:26:                                     ; preds = %20, %14
  %27 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !979
  %28 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %27, i32 0, i32 0, !dbg !981
  %29 = load i16, i16* %28, align 8, !dbg !981
  %30 = zext i16 %29 to i32, !dbg !979
  %31 = load i8*, i8** %6, align 8, !dbg !982
  %32 = load i8*, i8** %5, align 8, !dbg !983
  %33 = call i8* @inet_ntop(i32 %30, i8* %31, i8* %32, i32 46) #9, !dbg !984
  %34 = icmp ne i8* %33, null, !dbg !984
  br i1 %34, label %36, label %35, !dbg !985

; <label>:35:                                     ; preds = %26
  store i8* null, i8** %3, align 8, !dbg !986
  br label %38, !dbg !986

; <label>:36:                                     ; preds = %26
  %37 = load i8*, i8** %5, align 8, !dbg !987
  store i8* %37, i8** %3, align 8, !dbg !988
  br label %38, !dbg !988

; <label>:38:                                     ; preds = %36, %35
  %39 = load i8*, i8** %3, align 8, !dbg !989
  ret i8* %39, !dbg !989
}

; Function Attrs: nounwind uwtable
define zeroext i16 @inet_sockaddrport(%struct.sockaddr_storage*) #0 !dbg !990 {
  %2 = alloca %struct.sockaddr_storage*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %2, metadata !993, metadata !226), !dbg !994
  call void @llvm.dbg.declare(metadata i16* %3, metadata !995, metadata !226), !dbg !996
  %6 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %2, align 8, !dbg !997
  %7 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0, !dbg !999
  %8 = load i16, i16* %7, align 8, !dbg !999
  %9 = zext i16 %8 to i32, !dbg !997
  %10 = icmp eq i32 %9, 10, !dbg !1000
  br i1 %10, label %11, label %17, !dbg !1001

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %4, metadata !1002, metadata !226), !dbg !1004
  %12 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %2, align 8, !dbg !1005
  %13 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr_in6*, !dbg !1006
  store %struct.sockaddr_in6* %13, %struct.sockaddr_in6** %4, align 8, !dbg !1004
  %14 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8, !dbg !1007
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 1, !dbg !1008
  %16 = load i16, i16* %15, align 2, !dbg !1008
  store i16 %16, i16* %3, align 2, !dbg !1009
  br label %23, !dbg !1010

; <label>:17:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %5, metadata !1011, metadata !226), !dbg !1013
  %18 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %2, align 8, !dbg !1014
  %19 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in*, !dbg !1015
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %5, align 8, !dbg !1013
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8, !dbg !1016
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 1, !dbg !1017
  %22 = load i16, i16* %21, align 2, !dbg !1017
  store i16 %22, i16* %3, align 2, !dbg !1018
  br label %23

; <label>:23:                                     ; preds = %17, %11
  %24 = load i16, i16* %3, align 2, !dbg !1019
  ret i16 %24, !dbg !1020
}

; Function Attrs: nounwind uwtable
define i8* @inet_sockaddrtopair(%struct.sockaddr_storage*) #0 !dbg !153 {
  %2 = alloca %struct.sockaddr_storage*, align 8
  %3 = alloca [46 x i8], align 16
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %2, metadata !1021, metadata !226), !dbg !1022
  call void @llvm.dbg.declare(metadata [46 x i8]* %3, metadata !1023, metadata !226), !dbg !1024
  %4 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %2, align 8, !dbg !1025
  %5 = getelementptr inbounds [46 x i8], [46 x i8]* %3, i32 0, i32 0, !dbg !1026
  %6 = call i8* @inet_sockaddrtos2(%struct.sockaddr_storage* %4, i8* %5), !dbg !1027
  %7 = getelementptr inbounds [46 x i8], [46 x i8]* %3, i32 0, i32 0, !dbg !1028
  %8 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %2, align 8, !dbg !1029
  %9 = call zeroext i16 @inet_sockaddrport(%struct.sockaddr_storage* %8), !dbg !1030
  %10 = call zeroext i16 @ntohs(i16 zeroext %9) #1, !dbg !1031
  %11 = zext i16 %10 to i32, !dbg !1033
  %12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @inet_sockaddrtopair.ret, i32 0, i32 0), i64 54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* %7, i32 %11) #9, !dbg !1034
  ret i8* getelementptr inbounds ([54 x i8], [54 x i8]* @inet_sockaddrtopair.ret, i32 0, i32 0), !dbg !1035
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #5

; Function Attrs: nounwind uwtable
define i8* @inet_sockaddrtotrio(%struct.sockaddr_storage*, i16 zeroext) #0 !dbg !158 {
  %3 = alloca %struct.sockaddr_storage*, align 8
  %4 = alloca i16, align 2
  %5 = alloca [46 x i8], align 16
  %6 = alloca i8*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %3, metadata !1036, metadata !226), !dbg !1037
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !1038, metadata !226), !dbg !1039
  call void @llvm.dbg.declare(metadata [46 x i8]* %5, metadata !1040, metadata !226), !dbg !1041
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1042, metadata !226), !dbg !1043
  %7 = load i16, i16* %4, align 2, !dbg !1044
  %8 = zext i16 %7 to i32, !dbg !1044
  %9 = icmp eq i32 %8, 6, !dbg !1045
  br i1 %9, label %10, label %11, !dbg !1044

; <label>:10:                                     ; preds = %2
  br label %30, !dbg !1046

; <label>:11:                                     ; preds = %2
  %12 = load i16, i16* %4, align 2, !dbg !1048
  %13 = zext i16 %12 to i32, !dbg !1048
  %14 = icmp eq i32 %13, 17, !dbg !1050
  br i1 %14, label %15, label %16, !dbg !1048

; <label>:15:                                     ; preds = %11
  br label %28, !dbg !1051

; <label>:16:                                     ; preds = %11
  %17 = load i16, i16* %4, align 2, !dbg !1053
  %18 = zext i16 %17 to i32, !dbg !1053
  %19 = icmp eq i32 %18, 132, !dbg !1055
  br i1 %19, label %20, label %21, !dbg !1053

; <label>:20:                                     ; preds = %16
  br label %26, !dbg !1056

; <label>:21:                                     ; preds = %16
  %22 = load i16, i16* %4, align 2, !dbg !1058
  %23 = zext i16 %22 to i32, !dbg !1058
  %24 = icmp eq i32 %23, 0, !dbg !1060
  %25 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), !dbg !1058
  br label %26, !dbg !1061

; <label>:26:                                     ; preds = %21, %20
  %27 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %20 ], [ %25, %21 ], !dbg !1062
  br label %28, !dbg !1064

; <label>:28:                                     ; preds = %26, %15
  %29 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), %15 ], [ %27, %26 ], !dbg !1065
  br label %30, !dbg !1067

; <label>:30:                                     ; preds = %28, %10
  %31 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), %10 ], [ %29, %28 ], !dbg !1068
  store i8* %31, i8** %6, align 8, !dbg !1070
  %32 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8, !dbg !1071
  %33 = getelementptr inbounds [46 x i8], [46 x i8]* %5, i32 0, i32 0, !dbg !1072
  %34 = call i8* @inet_sockaddrtos2(%struct.sockaddr_storage* %32, i8* %33), !dbg !1073
  %35 = getelementptr inbounds [46 x i8], [46 x i8]* %5, i32 0, i32 0, !dbg !1074
  %36 = load i8*, i8** %6, align 8, !dbg !1075
  %37 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8, !dbg !1076
  %38 = call zeroext i16 @inet_sockaddrport(%struct.sockaddr_storage* %37), !dbg !1077
  %39 = call zeroext i16 @ntohs(i16 zeroext %38) #1, !dbg !1078
  %40 = zext i16 %39 to i32, !dbg !1079
  %41 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @inet_sockaddrtotrio.ret, i32 0, i32 0), i64 59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* %35, i8* %36, i32 %40) #9, !dbg !1080
  ret i8* getelementptr inbounds ([59 x i8], [59 x i8]* @inet_sockaddrtotrio.ret, i32 0, i32 0), !dbg !1081
}

; Function Attrs: nounwind uwtable
define i32 @inet_sockaddrip4(%struct.sockaddr_storage*) #0 !dbg !1082 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_storage*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %3, metadata !1085, metadata !226), !dbg !1086
  %4 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8, !dbg !1087
  %5 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0, !dbg !1089
  %6 = load i16, i16* %5, align 8, !dbg !1089
  %7 = zext i16 %6 to i32, !dbg !1087
  %8 = icmp ne i32 %7, 2, !dbg !1090
  br i1 %8, label %9, label %10, !dbg !1091

; <label>:9:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1092
  br label %16, !dbg !1092

; <label>:10:                                     ; preds = %1
  %11 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8, !dbg !1093
  %12 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr_in*, !dbg !1094
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 2, !dbg !1094
  %14 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0, !dbg !1095
  %15 = load i32, i32* %14, align 4, !dbg !1095
  store i32 %15, i32* %2, align 4, !dbg !1096
  br label %16, !dbg !1096

; <label>:16:                                     ; preds = %10, %9
  %17 = load i32, i32* %2, align 4, !dbg !1097
  ret i32 %17, !dbg !1097
}

; Function Attrs: nounwind uwtable
define i32 @inet_sockaddrip6(%struct.sockaddr_storage*, %struct.in6_addr*) #0 !dbg !1098 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %4, metadata !1101, metadata !226), !dbg !1102
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %5, metadata !1103, metadata !226), !dbg !1104
  %6 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !1105
  %7 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0, !dbg !1107
  %8 = load i16, i16* %7, align 8, !dbg !1107
  %9 = zext i16 %8 to i32, !dbg !1105
  %10 = icmp ne i32 %9, 10, !dbg !1108
  br i1 %10, label %11, label %12, !dbg !1109

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1110
  br label %19, !dbg !1110

; <label>:12:                                     ; preds = %2
  %13 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8, !dbg !1111
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !1112
  %15 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in6*, !dbg !1113
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 3, !dbg !1113
  %17 = bitcast %struct.in6_addr* %13 to i8*, !dbg !1113
  %18 = bitcast %struct.in6_addr* %16 to i8*, !dbg !1113
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 4, i1 false), !dbg !1113
  store i32 0, i32* %3, align 4, !dbg !1114
  br label %19, !dbg !1114

; <label>:19:                                     ; preds = %12, %11
  %20 = load i32, i32* %3, align 4, !dbg !1115
  ret i32 %20, !dbg !1115
}

; Function Attrs: nounwind uwtable
define i32 @inet_inaddrcmp(i32, i8*, i8*) #0 !dbg !1116 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1122, metadata !226), !dbg !1123
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1124, metadata !226), !dbg !1125
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1126, metadata !226), !dbg !1127
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1128, metadata !226), !dbg !1129
  %10 = load i32, i32* %5, align 4, !dbg !1130
  %11 = icmp eq i32 %10, 2, !dbg !1132
  br i1 %11, label %12, label %32, !dbg !1133

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %6, align 8, !dbg !1134
  %14 = bitcast i8* %13 to i32*, !dbg !1136
  %15 = load i32, i32* %14, align 4, !dbg !1137
  %16 = call i32 @ntohl(i32 %15) #1, !dbg !1138
  %17 = zext i32 %16 to i64, !dbg !1139
  %18 = load i8*, i8** %7, align 8, !dbg !1140
  %19 = bitcast i8* %18 to i32*, !dbg !1141
  %20 = load i32, i32* %19, align 4, !dbg !1142
  %21 = call i32 @ntohl(i32 %20) #1, !dbg !1143
  %22 = zext i32 %21 to i64, !dbg !1145
  %23 = sub nsw i64 %17, %22, !dbg !1146
  store i64 %23, i64* %8, align 8, !dbg !1147
  %24 = load i64, i64* %8, align 8, !dbg !1148
  %25 = icmp sgt i64 %24, 0, !dbg !1150
  br i1 %25, label %26, label %27, !dbg !1151

; <label>:26:                                     ; preds = %12
  store i32 1, i32* %4, align 4, !dbg !1152
  br label %70, !dbg !1152

; <label>:27:                                     ; preds = %12
  %28 = load i64, i64* %8, align 8, !dbg !1153
  %29 = icmp slt i64 %28, 0, !dbg !1155
  br i1 %29, label %30, label %31, !dbg !1156

; <label>:30:                                     ; preds = %27
  store i32 -1, i32* %4, align 4, !dbg !1157
  br label %70, !dbg !1157

; <label>:31:                                     ; preds = %27
  store i32 0, i32* %4, align 4, !dbg !1158
  br label %70, !dbg !1158

; <label>:32:                                     ; preds = %3
  %33 = load i32, i32* %5, align 4, !dbg !1159
  %34 = icmp eq i32 %33, 10, !dbg !1161
  br i1 %34, label %35, label %69, !dbg !1162

; <label>:35:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1163, metadata !226), !dbg !1165
  store i32 0, i32* %9, align 4, !dbg !1166
  br label %36, !dbg !1168

; <label>:36:                                     ; preds = %65, %35
  %37 = load i32, i32* %9, align 4, !dbg !1169
  %38 = icmp slt i32 %37, 4, !dbg !1172
  br i1 %38, label %39, label %68, !dbg !1173

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %9, align 4, !dbg !1174
  %41 = sext i32 %40 to i64, !dbg !1176
  %42 = load i8*, i8** %6, align 8, !dbg !1177
  %43 = bitcast i8* %42 to i32*, !dbg !1178
  %44 = getelementptr inbounds i32, i32* %43, i64 %41, !dbg !1176
  %45 = load i32, i32* %44, align 4, !dbg !1176
  %46 = call i32 @ntohl(i32 %45) #1, !dbg !1179
  %47 = zext i32 %46 to i64, !dbg !1180
  %48 = load i32, i32* %9, align 4, !dbg !1181
  %49 = sext i32 %48 to i64, !dbg !1182
  %50 = load i8*, i8** %7, align 8, !dbg !1183
  %51 = bitcast i8* %50 to i32*, !dbg !1184
  %52 = getelementptr inbounds i32, i32* %51, i64 %49, !dbg !1182
  %53 = load i32, i32* %52, align 4, !dbg !1182
  %54 = call i32 @ntohl(i32 %53) #1, !dbg !1185
  %55 = zext i32 %54 to i64, !dbg !1187
  %56 = sub nsw i64 %47, %55, !dbg !1188
  store i64 %56, i64* %8, align 8, !dbg !1189
  %57 = load i64, i64* %8, align 8, !dbg !1190
  %58 = icmp sgt i64 %57, 0, !dbg !1192
  br i1 %58, label %59, label %60, !dbg !1193

; <label>:59:                                     ; preds = %39
  store i32 1, i32* %4, align 4, !dbg !1194
  br label %70, !dbg !1194

; <label>:60:                                     ; preds = %39
  %61 = load i64, i64* %8, align 8, !dbg !1195
  %62 = icmp slt i64 %61, 0, !dbg !1197
  br i1 %62, label %63, label %64, !dbg !1198

; <label>:63:                                     ; preds = %60
  store i32 -1, i32* %4, align 4, !dbg !1199
  br label %70, !dbg !1199

; <label>:64:                                     ; preds = %60
  br label %65, !dbg !1200

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %9, align 4, !dbg !1201
  %67 = add nsw i32 %66, 1, !dbg !1201
  store i32 %67, i32* %9, align 4, !dbg !1201
  br label %36, !dbg !1203, !llvm.loop !1204

; <label>:68:                                     ; preds = %36
  store i32 0, i32* %4, align 4, !dbg !1206
  br label %70, !dbg !1206

; <label>:69:                                     ; preds = %32
  store i32 -2, i32* %4, align 4, !dbg !1207
  br label %70, !dbg !1207

; <label>:70:                                     ; preds = %69, %68, %63, %59, %31, %30, %26
  %71 = load i32, i32* %4, align 4, !dbg !1208
  ret i32 %71, !dbg !1208
}

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #5

; Function Attrs: nounwind uwtable
define i32 @inet_sockaddrcmp(%struct.sockaddr_storage*, %struct.sockaddr_storage*) #0 !dbg !1209 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %4, metadata !1214, metadata !226), !dbg !1215
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %5, metadata !1216, metadata !226), !dbg !1217
  %6 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !1218
  %7 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0, !dbg !1220
  %8 = load i16, i16* %7, align 8, !dbg !1220
  %9 = zext i16 %8 to i32, !dbg !1218
  %10 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8, !dbg !1221
  %11 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %10, i32 0, i32 0, !dbg !1222
  %12 = load i16, i16* %11, align 8, !dbg !1222
  %13 = zext i16 %12 to i32, !dbg !1221
  %14 = icmp ne i32 %9, %13, !dbg !1223
  br i1 %14, label %15, label %16, !dbg !1224

; <label>:15:                                     ; preds = %2
  store i32 -2, i32* %3, align 4, !dbg !1225
  br label %57, !dbg !1225

; <label>:16:                                     ; preds = %2
  %17 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !1226
  %18 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %17, i32 0, i32 0, !dbg !1228
  %19 = load i16, i16* %18, align 8, !dbg !1228
  %20 = zext i16 %19 to i32, !dbg !1226
  %21 = icmp eq i32 %20, 2, !dbg !1229
  br i1 %21, label %22, label %36, !dbg !1230

; <label>:22:                                     ; preds = %16
  %23 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !1231
  %24 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %23, i32 0, i32 0, !dbg !1232
  %25 = load i16, i16* %24, align 8, !dbg !1232
  %26 = zext i16 %25 to i32, !dbg !1231
  %27 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !1233
  %28 = bitcast %struct.sockaddr_storage* %27 to %struct.sockaddr_in*, !dbg !1234
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 2, !dbg !1234
  %30 = bitcast %struct.in_addr* %29 to i8*, !dbg !1235
  %31 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8, !dbg !1236
  %32 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr_in*, !dbg !1237
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 2, !dbg !1237
  %34 = bitcast %struct.in_addr* %33 to i8*, !dbg !1238
  %35 = call i32 @inet_inaddrcmp(i32 %26, i8* %30, i8* %34), !dbg !1239
  store i32 %35, i32* %3, align 4, !dbg !1240
  br label %57, !dbg !1240

; <label>:36:                                     ; preds = %16
  %37 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !1241
  %38 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %37, i32 0, i32 0, !dbg !1243
  %39 = load i16, i16* %38, align 8, !dbg !1243
  %40 = zext i16 %39 to i32, !dbg !1241
  %41 = icmp eq i32 %40, 10, !dbg !1244
  br i1 %41, label %42, label %56, !dbg !1245

; <label>:42:                                     ; preds = %36
  %43 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !1246
  %44 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %43, i32 0, i32 0, !dbg !1247
  %45 = load i16, i16* %44, align 8, !dbg !1247
  %46 = zext i16 %45 to i32, !dbg !1246
  %47 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !1248
  %48 = bitcast %struct.sockaddr_storage* %47 to %struct.sockaddr_in6*, !dbg !1249
  %49 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %48, i32 0, i32 3, !dbg !1249
  %50 = bitcast %struct.in6_addr* %49 to i8*, !dbg !1250
  %51 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8, !dbg !1251
  %52 = bitcast %struct.sockaddr_storage* %51 to %struct.sockaddr_in6*, !dbg !1252
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 3, !dbg !1252
  %54 = bitcast %struct.in6_addr* %53 to i8*, !dbg !1253
  %55 = call i32 @inet_inaddrcmp(i32 %46, i8* %50, i8* %54), !dbg !1254
  store i32 %55, i32* %3, align 4, !dbg !1255
  br label %57, !dbg !1255

; <label>:56:                                     ; preds = %36
  store i32 0, i32* %3, align 4, !dbg !1256
  br label %57, !dbg !1256

; <label>:57:                                     ; preds = %56, %42, %22, %15
  %58 = load i32, i32* %3, align 4, !dbg !1257
  ret i32 %58, !dbg !1257
}

; Function Attrs: nounwind uwtable
define i8* @get_local_name() #0 !dbg !1258 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.utsname, align 1
  %3 = alloca %struct.addrinfo, align 8
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata %struct.utsname* %2, metadata !1261, metadata !226), !dbg !1274
  call void @llvm.dbg.declare(metadata %struct.addrinfo* %3, metadata !1275, metadata !226), !dbg !1276
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %4, metadata !1277, metadata !226), !dbg !1278
  store %struct.addrinfo* null, %struct.addrinfo** %4, align 8, !dbg !1278
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1279, metadata !226), !dbg !1280
  store i8* null, i8** %5, align 8, !dbg !1280
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1281, metadata !226), !dbg !1282
  store i64 0, i64* %6, align 8, !dbg !1282
  %7 = bitcast %struct.addrinfo* %3 to i8*, !dbg !1283
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 48, i32 8, i1 false), !dbg !1283
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %3, i32 0, i32 0, !dbg !1284
  store i32 2, i32* %8, align 8, !dbg !1285
  %9 = call i32 @uname(%struct.utsname* %2) #9, !dbg !1286
  %10 = icmp slt i32 %9, 0, !dbg !1288
  br i1 %10, label %11, label %12, !dbg !1289

; <label>:11:                                     ; preds = %0
  store i8* null, i8** %1, align 8, !dbg !1290
  br label %46, !dbg !1290

; <label>:12:                                     ; preds = %0
  %13 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 1, !dbg !1291
  %14 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i32 0, i32 0, !dbg !1293
  %15 = call i32 @getaddrinfo(i8* %14, i8* null, %struct.addrinfo* %3, %struct.addrinfo** %4), !dbg !1294
  %16 = icmp ne i32 %15, 0, !dbg !1295
  br i1 %16, label %17, label %18, !dbg !1296

; <label>:17:                                     ; preds = %12
  store i8* null, i8** %1, align 8, !dbg !1297
  br label %46, !dbg !1297

; <label>:18:                                     ; preds = %12
  %19 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8, !dbg !1298
  %20 = icmp ne %struct.addrinfo* %19, null, !dbg !1298
  br i1 %20, label %21, label %43, !dbg !1300

; <label>:21:                                     ; preds = %18
  %22 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8, !dbg !1301
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i32 0, i32 6, !dbg !1303
  %24 = load i8*, i8** %23, align 8, !dbg !1303
  %25 = icmp ne i8* %24, null, !dbg !1301
  br i1 %25, label %26, label %43, !dbg !1304

; <label>:26:                                     ; preds = %21
  %27 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8, !dbg !1305
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 6, !dbg !1307
  %29 = load i8*, i8** %28, align 8, !dbg !1307
  %30 = call i64 @strlen(i8* %29) #8, !dbg !1308
  store i64 %30, i64* %6, align 8, !dbg !1309
  %31 = load i64, i64* %6, align 8, !dbg !1310
  %32 = add i64 %31, 1, !dbg !1311
  %33 = call i8* @zalloc(i64 %32), !dbg !1312
  store i8* %33, i8** %5, align 8, !dbg !1313
  %34 = load i8*, i8** %5, align 8, !dbg !1314
  %35 = icmp ne i8* %34, null, !dbg !1314
  br i1 %35, label %36, label %42, !dbg !1316

; <label>:36:                                     ; preds = %26
  %37 = load i8*, i8** %5, align 8, !dbg !1317
  %38 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8, !dbg !1319
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %38, i32 0, i32 6, !dbg !1320
  %40 = load i8*, i8** %39, align 8, !dbg !1320
  %41 = load i64, i64* %6, align 8, !dbg !1321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %40, i64 %41, i32 1, i1 false), !dbg !1322
  br label %42, !dbg !1323

; <label>:42:                                     ; preds = %36, %26
  br label %43, !dbg !1324

; <label>:43:                                     ; preds = %42, %21, %18
  %44 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8, !dbg !1325
  call void @freeaddrinfo(%struct.addrinfo* %44) #9, !dbg !1326
  %45 = load i8*, i8** %5, align 8, !dbg !1327
  store i8* %45, i8** %1, align 8, !dbg !1328
  br label %46, !dbg !1328

; <label>:46:                                     ; preds = %43, %17, %11
  %47 = load i8*, i8** %1, align 8, !dbg !1329
  ret i8* %47, !dbg !1329
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname*) #4

; Function Attrs: nounwind uwtable
define zeroext i1 @string_equal(i8*, i8*) #0 !dbg !1330 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1333, metadata !226), !dbg !1334
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1335, metadata !226), !dbg !1336
  %6 = load i8*, i8** %4, align 8, !dbg !1337
  %7 = icmp ne i8* %6, null, !dbg !1337
  br i1 %7, label %12, label %8, !dbg !1339

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %5, align 8, !dbg !1340
  %10 = icmp ne i8* %9, null, !dbg !1340
  br i1 %10, label %12, label %11, !dbg !1342

; <label>:11:                                     ; preds = %8
  store i1 true, i1* %3, align 1, !dbg !1343
  br label %29, !dbg !1343

; <label>:12:                                     ; preds = %8, %2
  %13 = load i8*, i8** %4, align 8, !dbg !1344
  %14 = icmp ne i8* %13, null, !dbg !1346
  %15 = xor i1 %14, true, !dbg !1346
  %16 = zext i1 %15 to i32, !dbg !1346
  %17 = load i8*, i8** %5, align 8, !dbg !1347
  %18 = icmp ne i8* %17, null, !dbg !1348
  %19 = xor i1 %18, true, !dbg !1348
  %20 = zext i1 %19 to i32, !dbg !1348
  %21 = icmp ne i32 %16, %20, !dbg !1349
  br i1 %21, label %22, label %23, !dbg !1350

; <label>:22:                                     ; preds = %12
  store i1 false, i1* %3, align 1, !dbg !1351
  br label %29, !dbg !1351

; <label>:23:                                     ; preds = %12
  %24 = load i8*, i8** %4, align 8, !dbg !1352
  %25 = load i8*, i8** %5, align 8, !dbg !1353
  %26 = call i32 @strcmp(i8* %24, i8* %25) #8, !dbg !1354
  %27 = icmp ne i32 %26, 0, !dbg !1355
  %28 = xor i1 %27, true, !dbg !1355
  store i1 %28, i1* %3, align 1, !dbg !1356
  br label %29, !dbg !1356

; <label>:29:                                     ; preds = %23, %22, %11
  %30 = load i1, i1* %3, align 1, !dbg !1357
  ret i1 %30, !dbg !1357
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @set_std_fd(i1 zeroext) #0 !dbg !1358 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = zext i1 %0 to i8
  store i8 %4, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1361, metadata !226), !dbg !1362
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1363, metadata !226), !dbg !1364
  %5 = load i8, i8* %2, align 1, !dbg !1365
  %6 = trunc i8 %5 to i1, !dbg !1365
  br i1 %6, label %9, label %7, !dbg !1367

; <label>:7:                                      ; preds = %1
  %8 = call zeroext i1 @__test_bit(i32 2, i64* @debug), !dbg !1368
  br i1 %8, label %9, label %27, !dbg !1370

; <label>:9:                                      ; preds = %7, %1
  %10 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 2), !dbg !1371
  store i32 %10, i32* %3, align 4, !dbg !1373
  %11 = load i32, i32* %3, align 4, !dbg !1374
  %12 = icmp ne i32 %11, -1, !dbg !1376
  br i1 %12, label %13, label %26, !dbg !1377

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %3, align 4, !dbg !1378
  %15 = call i32 @dup2(i32 %14, i32 0) #9, !dbg !1380
  %16 = load i32, i32* %3, align 4, !dbg !1381
  %17 = call i32 @dup2(i32 %16, i32 1) #9, !dbg !1382
  %18 = load i32, i32* %3, align 4, !dbg !1383
  %19 = call i32 @dup2(i32 %18, i32 2) #9, !dbg !1384
  %20 = load i32, i32* %3, align 4, !dbg !1385
  %21 = icmp sgt i32 %20, 2, !dbg !1387
  br i1 %21, label %22, label %25, !dbg !1388

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %3, align 4, !dbg !1389
  %24 = call i32 @close(i32 %23), !dbg !1390
  br label %25, !dbg !1390

; <label>:25:                                     ; preds = %22, %13
  br label %26, !dbg !1391

; <label>:26:                                     ; preds = %25, %9
  br label %27, !dbg !1392

; <label>:27:                                     ; preds = %26, %7
  call void @signal_fd_close(i32 3), !dbg !1393
  ret void, !dbg !1394
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #4

declare i32 @close(i32) #2

declare void @signal_fd_close(i32) #2

; Function Attrs: nounwind uwtable
define void @close_std_fd() #0 !dbg !1395 {
  %1 = call i32 @close(i32 0), !dbg !1398
  %2 = call i32 @close(i32 1), !dbg !1399
  %3 = call i32 @close(i32 2), !dbg !1400
  ret void, !dbg !1401
}

; Function Attrs: nounwind uwtable
define i32 @open_pipe(i32*) #0 !dbg !1402 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !1406, metadata !226), !dbg !1407
  %4 = load i32*, i32** %3, align 8, !dbg !1408
  %5 = call i32 @pipe2(i32* %4, i32 526336) #9, !dbg !1410
  %6 = icmp eq i32 %5, -1, !dbg !1411
  br i1 %6, label %7, label %8, !dbg !1412

; <label>:7:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1413
  br label %9, !dbg !1413

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1414
  br label %9, !dbg !1414

; <label>:9:                                      ; preds = %8, %7
  %10 = load i32, i32* %2, align 4, !dbg !1415
  ret i32 %10, !dbg !1415
}

; Function Attrs: nounwind
declare i32 @pipe2(i32*, i32) #4

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!164, !165}
!llvm.ident = !{!166}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !63, globals: !124)
!1 = !DIFile(filename: "[inter]lib--utils.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{!3, !18, !34}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !4, line: 53, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!7 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!8 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!9 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!10 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!11 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!12 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!13 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!14 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!15 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!16 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!17 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 44, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!21 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!22 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!23 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!24 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!25 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!26 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!27 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!28 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!29 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!30 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!31 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!32 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!33 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 40, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!37 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!38 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!39 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!40 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!41 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!42 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!43 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!44 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!45 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!46 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!47 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!48 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!49 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!50 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!51 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!52 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!53 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!54 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!55 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!56 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!57 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!58 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!59 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!60 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!61 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!62 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!63 = !{!64, !67, !73, !74, !77, !108, !120, !122}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 216, baseType: !66)
!65 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!66 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !69, line: 33, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !71, line: 30, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!72 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !75, line: 28, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!76 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !35, line: 254, size: 224, align: 32, elements: !79)
!79 = !{!80, !81, !85, !88, !107}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !78, file: !35, line: 256, baseType: !74, size: 16, align: 16)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !78, file: !35, line: 257, baseType: !82, size: 16, align: 16, offset: 16)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !35, line: 119, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !84, line: 49, baseType: !76)
!84 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !78, file: !35, line: 258, baseType: !86, size: 32, align: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !84, line: 51, baseType: !87)
!87 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !78, file: !35, line: 259, baseType: !89, size: 128, align: 32, offset: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !35, line: 211, size: 128, align: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !89, file: !35, line: 220, baseType: !92, size: 128, align: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !35, line: 213, size: 128, align: 32, elements: !93)
!93 = !{!94, !99, !103}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !92, file: !35, line: 215, baseType: !95, size: 128, align: 8)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, align: 8, elements: !97)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !84, line: 48, baseType: !72)
!97 = !{!98}
!98 = !DISubrange(count: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !92, file: !35, line: 217, baseType: !100, size: 128, align: 16)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, align: 16, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 8)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !92, file: !35, line: 218, baseType: !104, size: 128, align: 32)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, align: 32, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !78, file: !35, line: 260, baseType: !86, size: 32, align: 32, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !35, line: 239, size: 128, align: 32, elements: !110)
!110 = !{!111, !112, !113, !118}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !109, file: !35, line: 241, baseType: !74, size: 16, align: 16)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !109, file: !35, line: 242, baseType: !82, size: 16, align: 16, offset: 16)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !109, file: !35, line: 243, baseType: !114, size: 32, align: 32, offset: 32)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !35, line: 31, size: 32, align: 32, elements: !115)
!115 = !{!116}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !114, file: !35, line: 33, baseType: !117, size: 32, align: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !35, line: 30, baseType: !86)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !109, file: !35, line: 246, baseType: !119, size: 64, align: 8, offset: 64)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 64, align: 8, elements: !101)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !69, line: 197, baseType: !121)
!121 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!124 = !{!125, !127, !135, !152, !157}
!125 = distinct !DIGlobalVariable(name: "debug", scope: !0, file: !126, line: 69, type: !66, isLocal: false, isDefinition: true, variable: i64* @debug)
!126 = !DIFile(filename: "utils.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!127 = distinct !DIGlobalVariable(name: "buf", scope: !128, file: !126, line: 363, type: !134, isLocal: true, isDefinition: true, variable: [16 x i8]* @inet_ntop2.buf)
!128 = distinct !DISubprogram(name: "inet_ntop2", scope: !126, file: !126, line: 361, type: !129, isLocal: false, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !86}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!133 = !{}
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 128, align: 8, elements: !97)
!135 = distinct !DIGlobalVariable(name: "addr_str", scope: !136, file: !126, line: 563, type: !149, isLocal: true, isDefinition: true, variable: [46 x i8]* @inet_sockaddrtos.addr_str)
!136 = distinct !DISubprogram(name: "inet_sockaddrtos", scope: !126, file: !126, line: 561, type: !137, isLocal: false, isDefinition: true, scopeLine: 562, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!137 = !DISubroutineType(types: !138)
!138 = !{!131, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !141, line: 166, size: 1024, align: 64, elements: !142)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!142 = !{!143, !144, !148}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !140, file: !141, line: 168, baseType: !74, size: 16, align: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !140, file: !141, line: 169, baseType: !145, size: 944, align: 8, offset: 16)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 944, align: 8, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 118)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !140, file: !141, line: 170, baseType: !66, size: 64, align: 64, offset: 960)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 368, align: 8, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 46)
!152 = distinct !DIGlobalVariable(name: "ret", scope: !153, file: !126, line: 590, type: !154, isLocal: true, isDefinition: true, variable: [54 x i8]* @inet_sockaddrtopair.ret)
!153 = distinct !DISubprogram(name: "inet_sockaddrtopair", scope: !126, file: !126, line: 587, type: !137, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 432, align: 8, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 54)
!157 = distinct !DIGlobalVariable(name: "ret", scope: !158, file: !126, line: 603, type: !161, isLocal: true, isDefinition: true, variable: [59 x i8]* @inet_sockaddrtotrio.ret)
!158 = distinct !DISubprogram(name: "inet_sockaddrtotrio", scope: !126, file: !126, line: 600, type: !159, isLocal: false, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!159 = !DISubroutineType(types: !160)
!160 = !{!131, !139, !83}
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 472, align: 8, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 59)
!164 = !{i32 2, !"Dwarf Version", i32 4}
!165 = !{i32 2, !"Debug Info Version", i32 3}
!166 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!167 = distinct !DISubprogram(name: "dump_buffer", scope: !126, file: !126, line: 73, type: !168, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !131, !64, !170, !177}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !172, line: 48, baseType: !173)
!172 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !174, line: 241, size: 1728, align: 64, elements: !175)
!174 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!175 = !{!176, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !197, !198, !199, !200, !202, !203, !205, !209, !212, !214, !216, !217, !218, !219, !220, !221}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !173, file: !174, line: 242, baseType: !177, size: 32, align: 32)
!177 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !173, file: !174, line: 247, baseType: !131, size: 64, align: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !173, file: !174, line: 248, baseType: !131, size: 64, align: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !173, file: !174, line: 249, baseType: !131, size: 64, align: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !173, file: !174, line: 250, baseType: !131, size: 64, align: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !173, file: !174, line: 251, baseType: !131, size: 64, align: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !173, file: !174, line: 252, baseType: !131, size: 64, align: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !173, file: !174, line: 253, baseType: !131, size: 64, align: 64, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !173, file: !174, line: 254, baseType: !131, size: 64, align: 64, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !173, file: !174, line: 256, baseType: !131, size: 64, align: 64, offset: 576)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !173, file: !174, line: 257, baseType: !131, size: 64, align: 64, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !173, file: !174, line: 258, baseType: !131, size: 64, align: 64, offset: 704)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !173, file: !174, line: 260, baseType: !190, size: 64, align: 64, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !174, line: 156, size: 192, align: 64, elements: !192)
!192 = !{!193, !194, !196}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !191, file: !174, line: 157, baseType: !190, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !191, file: !174, line: 158, baseType: !195, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !191, file: !174, line: 162, baseType: !177, size: 32, align: 32, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !173, file: !174, line: 262, baseType: !195, size: 64, align: 64, offset: 832)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !173, file: !174, line: 264, baseType: !177, size: 32, align: 32, offset: 896)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !173, file: !174, line: 268, baseType: !177, size: 32, align: 32, offset: 928)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !173, file: !174, line: 270, baseType: !201, size: 64, align: 64, offset: 960)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !71, line: 131, baseType: !121)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !173, file: !174, line: 274, baseType: !76, size: 16, align: 16, offset: 1024)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !173, file: !174, line: 275, baseType: !204, size: 8, align: 8, offset: 1040)
!204 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !173, file: !174, line: 276, baseType: !206, size: 8, align: 8, offset: 1048)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 8, align: 8, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 1)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !173, file: !174, line: 280, baseType: !210, size: 64, align: 64, offset: 1088)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !174, line: 150, baseType: null)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !173, file: !174, line: 289, baseType: !213, size: 64, align: 64, offset: 1152)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !71, line: 132, baseType: !121)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !173, file: !174, line: 297, baseType: !215, size: 64, align: 64, offset: 1216)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !173, file: !174, line: 298, baseType: !215, size: 64, align: 64, offset: 1280)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !173, file: !174, line: 299, baseType: !215, size: 64, align: 64, offset: 1344)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !173, file: !174, line: 300, baseType: !215, size: 64, align: 64, offset: 1408)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !173, file: !174, line: 302, baseType: !64, size: 64, align: 64, offset: 1472)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !173, file: !174, line: 303, baseType: !177, size: 32, align: 32, offset: 1536)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !173, file: !174, line: 305, baseType: !222, size: 160, align: 8, offset: 1568)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 160, align: 8, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 20)
!225 = !DILocalVariable(name: "buff", arg: 1, scope: !167, file: !126, line: 73, type: !131)
!226 = !DIExpression()
!227 = !DILocation(line: 73, column: 19, scope: !167)
!228 = !DILocalVariable(name: "count", arg: 2, scope: !167, file: !126, line: 73, type: !64)
!229 = !DILocation(line: 73, column: 32, scope: !167)
!230 = !DILocalVariable(name: "fp", arg: 3, scope: !167, file: !126, line: 73, type: !170)
!231 = !DILocation(line: 73, column: 45, scope: !167)
!232 = !DILocalVariable(name: "indent", arg: 4, scope: !167, file: !126, line: 73, type: !177)
!233 = !DILocation(line: 73, column: 53, scope: !167)
!234 = !DILocalVariable(name: "i", scope: !167, file: !126, line: 75, type: !64)
!235 = !DILocation(line: 75, column: 9, scope: !167)
!236 = !DILocalVariable(name: "j", scope: !167, file: !126, line: 75, type: !64)
!237 = !DILocation(line: 75, column: 12, scope: !167)
!238 = !DILocalVariable(name: "c", scope: !167, file: !126, line: 75, type: !64)
!239 = !DILocation(line: 75, column: 15, scope: !167)
!240 = !DILocalVariable(name: "printnext", scope: !167, file: !126, line: 76, type: !241)
!241 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!242 = !DILocation(line: 76, column: 6, scope: !167)
!243 = !DILocation(line: 78, column: 6, scope: !244)
!244 = distinct !DILexicalBlock(scope: !167, file: !126, line: 78, column: 6)
!245 = !DILocation(line: 78, column: 12, scope: !244)
!246 = !DILocation(line: 78, column: 6, scope: !167)
!247 = !DILocation(line: 79, column: 7, scope: !244)
!248 = !DILocation(line: 79, column: 21, scope: !244)
!249 = !DILocation(line: 79, column: 27, scope: !244)
!250 = !DILocation(line: 79, column: 19, scope: !244)
!251 = !DILocation(line: 79, column: 13, scope: !244)
!252 = !DILocation(line: 79, column: 5, scope: !244)
!253 = !DILocation(line: 79, column: 3, scope: !244)
!254 = !DILocation(line: 81, column: 7, scope: !244)
!255 = !DILocation(line: 81, column: 5, scope: !244)
!256 = !DILocation(line: 83, column: 9, scope: !257)
!257 = distinct !DILexicalBlock(scope: !167, file: !126, line: 83, column: 2)
!258 = !DILocation(line: 83, column: 7, scope: !257)
!259 = !DILocation(line: 83, column: 14, scope: !260)
!260 = !DILexicalBlockFile(scope: !261, file: !126, discriminator: 1)
!261 = distinct !DILexicalBlock(scope: !257, file: !126, line: 83, column: 2)
!262 = !DILocation(line: 83, column: 18, scope: !260)
!263 = !DILocation(line: 83, column: 16, scope: !260)
!264 = !DILocation(line: 83, column: 2, scope: !260)
!265 = !DILocation(line: 84, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !126, line: 84, column: 7)
!267 = distinct !DILexicalBlock(scope: !261, file: !126, line: 83, column: 26)
!268 = !DILocation(line: 84, column: 7, scope: !267)
!269 = !DILocation(line: 85, column: 14, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !126, line: 84, column: 18)
!271 = !DILocation(line: 86, column: 12, scope: !270)
!272 = !DILocation(line: 86, column: 29, scope: !270)
!273 = !DILocation(line: 86, column: 41, scope: !270)
!274 = !DILocation(line: 86, column: 43, scope: !270)
!275 = !DILocation(line: 86, column: 4, scope: !270)
!276 = !DILocation(line: 87, column: 3, scope: !270)
!277 = !DILocation(line: 88, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !267, file: !126, line: 88, column: 7)
!279 = !DILocation(line: 88, column: 11, scope: !278)
!280 = !DILocation(line: 88, column: 9, scope: !278)
!281 = !DILocation(line: 88, column: 7, scope: !267)
!282 = !DILocation(line: 89, column: 12, scope: !278)
!283 = !DILocation(line: 89, column: 30, scope: !278)
!284 = !DILocation(line: 89, column: 25, scope: !278)
!285 = !DILocation(line: 89, column: 33, scope: !278)
!286 = !DILocation(line: 89, column: 4, scope: !278)
!287 = !DILocation(line: 91, column: 12, scope: !278)
!288 = !DILocation(line: 91, column: 4, scope: !278)
!289 = !DILocation(line: 92, column: 10, scope: !290)
!290 = distinct !DILexicalBlock(scope: !267, file: !126, line: 92, column: 7)
!291 = !DILocation(line: 92, column: 12, scope: !290)
!292 = !DILocation(line: 92, column: 17, scope: !290)
!293 = !DILocation(line: 92, column: 7, scope: !267)
!294 = !DILocation(line: 93, column: 9, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !126, line: 93, column: 8)
!296 = distinct !DILexicalBlock(scope: !290, file: !126, line: 92, column: 23)
!297 = !DILocation(line: 93, column: 11, scope: !295)
!298 = !DILocation(line: 93, column: 16, scope: !295)
!299 = !DILocation(line: 93, column: 8, scope: !296)
!300 = !DILocation(line: 94, column: 13, scope: !295)
!301 = !DILocation(line: 94, column: 5, scope: !295)
!302 = !DILocation(line: 96, column: 13, scope: !303)
!303 = distinct !DILexicalBlock(scope: !295, file: !126, line: 95, column: 9)
!304 = !DILocation(line: 96, column: 5, scope: !303)
!305 = !DILocation(line: 97, column: 14, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !126, line: 97, column: 5)
!307 = !DILocation(line: 97, column: 16, scope: !306)
!308 = !DILocation(line: 97, column: 12, scope: !306)
!309 = !DILocation(line: 97, column: 10, scope: !306)
!310 = !DILocation(line: 97, column: 22, scope: !311)
!311 = !DILexicalBlockFile(scope: !312, file: !126, discriminator: 1)
!312 = distinct !DILexicalBlock(scope: !306, file: !126, line: 97, column: 5)
!313 = !DILocation(line: 97, column: 27, scope: !311)
!314 = !DILocation(line: 97, column: 24, scope: !311)
!315 = !DILocation(line: 97, column: 5, scope: !311)
!316 = !DILocation(line: 98, column: 10, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !126, line: 98, column: 10)
!318 = !DILocation(line: 98, column: 14, scope: !317)
!319 = !DILocation(line: 98, column: 12, scope: !317)
!320 = !DILocation(line: 98, column: 10, scope: !312)
!321 = !DILocation(line: 99, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !126, line: 99, column: 11)
!323 = distinct !DILexicalBlock(scope: !317, file: !126, line: 98, column: 21)
!324 = !DILocation(line: 99, column: 12, scope: !322)
!325 = !DILocation(line: 99, column: 20, scope: !322)
!326 = !DILocation(line: 99, column: 28, scope: !322)
!327 = !DILocation(line: 100, column: 11, scope: !322)
!328 = !DILocation(line: 100, column: 20, scope: !329)
!329 = !DILexicalBlockFile(scope: !322, file: !126, discriminator: 1)
!330 = !DILocation(line: 100, column: 15, scope: !329)
!331 = !DILocation(line: 100, column: 23, scope: !329)
!332 = !DILocation(line: 100, column: 31, scope: !329)
!333 = !DILocation(line: 99, column: 11, scope: !334)
!334 = !DILexicalBlockFile(scope: !323, file: !126, discriminator: 1)
!335 = !DILocation(line: 101, column: 16, scope: !322)
!336 = !DILocation(line: 102, column: 20, scope: !322)
!337 = !DILocation(line: 102, column: 15, scope: !322)
!338 = !DILocation(line: 102, column: 23, scope: !322)
!339 = !DILocation(line: 101, column: 8, scope: !322)
!340 = !DILocation(line: 104, column: 16, scope: !322)
!341 = !DILocation(line: 104, column: 8, scope: !322)
!342 = !DILocation(line: 105, column: 6, scope: !323)
!343 = !DILocation(line: 106, column: 15, scope: !317)
!344 = !DILocation(line: 106, column: 7, scope: !317)
!345 = !DILocation(line: 98, column: 14, scope: !346)
!346 = !DILexicalBlockFile(scope: !317, file: !126, discriminator: 1)
!347 = !DILocation(line: 97, column: 31, scope: !348)
!348 = !DILexicalBlockFile(scope: !312, file: !126, discriminator: 2)
!349 = !DILocation(line: 97, column: 5, scope: !348)
!350 = distinct !{!350, !351}
!351 = !DILocation(line: 97, column: 5, scope: !303)
!352 = !DILocation(line: 107, column: 13, scope: !303)
!353 = !DILocation(line: 107, column: 5, scope: !303)
!354 = !DILocation(line: 108, column: 15, scope: !303)
!355 = !DILocation(line: 110, column: 3, scope: !296)
!356 = !DILocation(line: 111, column: 2, scope: !267)
!357 = !DILocation(line: 83, column: 22, scope: !358)
!358 = !DILexicalBlockFile(scope: !261, file: !126, discriminator: 2)
!359 = !DILocation(line: 83, column: 2, scope: !358)
!360 = distinct !{!360, !361}
!361 = !DILocation(line: 83, column: 2, scope: !167)
!362 = !DILocation(line: 112, column: 1, scope: !167)
!363 = distinct !DISubprogram(name: "make_file_name", scope: !126, file: !126, line: 152, type: !364, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!364 = !DISubroutineType(types: !365)
!365 = !{!131, !366, !366, !366, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!368 = !DILocalVariable(name: "name", arg: 1, scope: !363, file: !126, line: 152, type: !366)
!369 = !DILocation(line: 152, column: 28, scope: !363)
!370 = !DILocalVariable(name: "prog", arg: 2, scope: !363, file: !126, line: 152, type: !366)
!371 = !DILocation(line: 152, column: 46, scope: !363)
!372 = !DILocalVariable(name: "namespace", arg: 3, scope: !363, file: !126, line: 152, type: !366)
!373 = !DILocation(line: 152, column: 64, scope: !363)
!374 = !DILocalVariable(name: "instance", arg: 4, scope: !363, file: !126, line: 152, type: !366)
!375 = !DILocation(line: 152, column: 87, scope: !363)
!376 = !DILocalVariable(name: "extn_start", scope: !363, file: !126, line: 154, type: !366)
!377 = !DILocation(line: 154, column: 14, scope: !363)
!378 = !DILocalVariable(name: "dir_end", scope: !363, file: !126, line: 155, type: !366)
!379 = !DILocation(line: 155, column: 14, scope: !363)
!380 = !DILocalVariable(name: "len", scope: !363, file: !126, line: 156, type: !64)
!381 = !DILocation(line: 156, column: 9, scope: !363)
!382 = !DILocalVariable(name: "file_name", scope: !363, file: !126, line: 157, type: !131)
!383 = !DILocation(line: 157, column: 8, scope: !363)
!384 = !DILocation(line: 159, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !363, file: !126, line: 159, column: 6)
!386 = !DILocation(line: 159, column: 6, scope: !363)
!387 = !DILocation(line: 160, column: 3, scope: !385)
!388 = !DILocation(line: 162, column: 15, scope: !363)
!389 = !DILocation(line: 162, column: 8, scope: !363)
!390 = !DILocation(line: 162, column: 6, scope: !363)
!391 = !DILocation(line: 163, column: 6, scope: !392)
!392 = distinct !DILexicalBlock(scope: !363, file: !126, line: 163, column: 6)
!393 = !DILocation(line: 163, column: 6, scope: !363)
!394 = !DILocation(line: 164, column: 17, scope: !392)
!395 = !DILocation(line: 164, column: 10, scope: !392)
!396 = !DILocation(line: 164, column: 23, scope: !392)
!397 = !DILocation(line: 164, column: 7, scope: !392)
!398 = !DILocation(line: 164, column: 3, scope: !392)
!399 = !DILocation(line: 165, column: 6, scope: !400)
!400 = distinct !DILexicalBlock(scope: !363, file: !126, line: 165, column: 6)
!401 = !DILocation(line: 165, column: 6, scope: !363)
!402 = !DILocation(line: 166, column: 17, scope: !400)
!403 = !DILocation(line: 166, column: 10, scope: !400)
!404 = !DILocation(line: 166, column: 28, scope: !400)
!405 = !DILocation(line: 166, column: 7, scope: !400)
!406 = !DILocation(line: 166, column: 3, scope: !400)
!407 = !DILocation(line: 167, column: 6, scope: !408)
!408 = distinct !DILexicalBlock(scope: !363, file: !126, line: 167, column: 6)
!409 = !DILocation(line: 167, column: 6, scope: !363)
!410 = !DILocation(line: 168, column: 17, scope: !408)
!411 = !DILocation(line: 168, column: 10, scope: !408)
!412 = !DILocation(line: 168, column: 27, scope: !408)
!413 = !DILocation(line: 168, column: 7, scope: !408)
!414 = !DILocation(line: 168, column: 3, scope: !408)
!415 = !DILocation(line: 170, column: 22, scope: !363)
!416 = !DILocation(line: 170, column: 26, scope: !363)
!417 = !DILocation(line: 170, column: 15, scope: !363)
!418 = !DILocation(line: 170, column: 12, scope: !363)
!419 = !DILocation(line: 171, column: 20, scope: !363)
!420 = !DILocation(line: 171, column: 12, scope: !363)
!421 = !DILocation(line: 171, column: 10, scope: !363)
!422 = !DILocation(line: 172, column: 23, scope: !363)
!423 = !DILocation(line: 172, column: 33, scope: !424)
!424 = !DILexicalBlockFile(scope: !363, file: !126, discriminator: 1)
!425 = !DILocation(line: 172, column: 23, scope: !424)
!426 = !DILocation(line: 172, column: 43, scope: !427)
!427 = !DILexicalBlockFile(scope: !363, file: !126, discriminator: 2)
!428 = !DILocation(line: 172, column: 23, scope: !427)
!429 = !DILocation(line: 172, column: 23, scope: !430)
!430 = !DILexicalBlockFile(scope: !363, file: !126, discriminator: 3)
!431 = !DILocation(line: 172, column: 15, scope: !430)
!432 = !DILocation(line: 172, column: 13, scope: !430)
!433 = !DILocation(line: 173, column: 10, scope: !363)
!434 = !DILocation(line: 173, column: 21, scope: !363)
!435 = !DILocation(line: 173, column: 27, scope: !363)
!436 = !DILocation(line: 173, column: 49, scope: !424)
!437 = !DILocation(line: 173, column: 62, scope: !424)
!438 = !DILocation(line: 173, column: 60, scope: !424)
!439 = !DILocation(line: 173, column: 27, scope: !424)
!440 = !DILocation(line: 173, column: 70, scope: !427)
!441 = !DILocation(line: 173, column: 27, scope: !427)
!442 = !DILocation(line: 173, column: 27, scope: !430)
!443 = !DILocation(line: 173, column: 2, scope: !430)
!444 = !DILocation(line: 175, column: 6, scope: !445)
!445 = distinct !DILexicalBlock(scope: !363, file: !126, line: 175, column: 6)
!446 = !DILocation(line: 175, column: 6, scope: !363)
!447 = !DILocation(line: 176, column: 10, scope: !448)
!448 = distinct !DILexicalBlock(scope: !445, file: !126, line: 175, column: 12)
!449 = !DILocation(line: 176, column: 3, scope: !448)
!450 = !DILocation(line: 177, column: 10, scope: !448)
!451 = !DILocation(line: 177, column: 21, scope: !448)
!452 = !DILocation(line: 177, column: 3, scope: !448)
!453 = !DILocation(line: 178, column: 2, scope: !448)
!454 = !DILocation(line: 179, column: 6, scope: !455)
!455 = distinct !DILexicalBlock(scope: !363, file: !126, line: 179, column: 6)
!456 = !DILocation(line: 179, column: 6, scope: !363)
!457 = !DILocation(line: 180, column: 10, scope: !458)
!458 = distinct !DILexicalBlock(scope: !455, file: !126, line: 179, column: 17)
!459 = !DILocation(line: 180, column: 3, scope: !458)
!460 = !DILocation(line: 181, column: 10, scope: !458)
!461 = !DILocation(line: 181, column: 21, scope: !458)
!462 = !DILocation(line: 181, column: 3, scope: !458)
!463 = !DILocation(line: 182, column: 2, scope: !458)
!464 = !DILocation(line: 183, column: 6, scope: !465)
!465 = distinct !DILexicalBlock(scope: !363, file: !126, line: 183, column: 6)
!466 = !DILocation(line: 183, column: 6, scope: !363)
!467 = !DILocation(line: 184, column: 10, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !126, line: 183, column: 16)
!469 = !DILocation(line: 184, column: 3, scope: !468)
!470 = !DILocation(line: 185, column: 10, scope: !468)
!471 = !DILocation(line: 185, column: 21, scope: !468)
!472 = !DILocation(line: 185, column: 3, scope: !468)
!473 = !DILocation(line: 186, column: 2, scope: !468)
!474 = !DILocation(line: 187, column: 6, scope: !475)
!475 = distinct !DILexicalBlock(scope: !363, file: !126, line: 187, column: 6)
!476 = !DILocation(line: 187, column: 6, scope: !363)
!477 = !DILocation(line: 188, column: 10, scope: !475)
!478 = !DILocation(line: 188, column: 21, scope: !475)
!479 = !DILocation(line: 188, column: 3, scope: !475)
!480 = !DILocation(line: 190, column: 9, scope: !363)
!481 = !DILocation(line: 190, column: 2, scope: !363)
!482 = !DILocation(line: 191, column: 1, scope: !363)
!483 = distinct !DISubprogram(name: "in_csum", scope: !126, file: !126, line: 325, type: !484, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!484 = !DISubroutineType(types: !485)
!485 = !{!83, !486, !64, !86, !488}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!489 = !DILocalVariable(name: "addr", arg: 1, scope: !483, file: !126, line: 325, type: !486)
!490 = !DILocation(line: 325, column: 25, scope: !483)
!491 = !DILocalVariable(name: "len", arg: 2, scope: !483, file: !126, line: 325, type: !64)
!492 = !DILocation(line: 325, column: 38, scope: !483)
!493 = !DILocalVariable(name: "csum", arg: 3, scope: !483, file: !126, line: 325, type: !86)
!494 = !DILocation(line: 325, column: 52, scope: !483)
!495 = !DILocalVariable(name: "acc", arg: 4, scope: !483, file: !126, line: 325, type: !488)
!496 = !DILocation(line: 325, column: 68, scope: !483)
!497 = !DILocalVariable(name: "nleft", scope: !483, file: !126, line: 327, type: !64)
!498 = !DILocation(line: 327, column: 18, scope: !483)
!499 = !DILocation(line: 327, column: 26, scope: !483)
!500 = !DILocalVariable(name: "w", scope: !483, file: !126, line: 328, type: !486)
!501 = !DILocation(line: 328, column: 18, scope: !483)
!502 = !DILocation(line: 328, column: 22, scope: !483)
!503 = !DILocalVariable(name: "answer", scope: !483, file: !126, line: 329, type: !83)
!504 = !DILocation(line: 329, column: 20, scope: !483)
!505 = !DILocalVariable(name: "sum", scope: !483, file: !126, line: 330, type: !86)
!506 = !DILocation(line: 330, column: 20, scope: !483)
!507 = !DILocation(line: 330, column: 26, scope: !483)
!508 = !DILocation(line: 338, column: 2, scope: !483)
!509 = !DILocation(line: 338, column: 9, scope: !510)
!510 = !DILexicalBlockFile(scope: !483, file: !126, discriminator: 1)
!511 = !DILocation(line: 338, column: 15, scope: !510)
!512 = !DILocation(line: 338, column: 2, scope: !510)
!513 = !DILocation(line: 339, column: 12, scope: !514)
!514 = distinct !DILexicalBlock(scope: !483, file: !126, line: 338, column: 20)
!515 = !DILocation(line: 339, column: 10, scope: !514)
!516 = !DILocation(line: 339, column: 7, scope: !514)
!517 = !DILocation(line: 340, column: 9, scope: !514)
!518 = !DILocation(line: 338, column: 2, scope: !519)
!519 = !DILexicalBlockFile(scope: !483, file: !126, discriminator: 2)
!520 = distinct !{!520, !508}
!521 = !DILocation(line: 344, column: 6, scope: !522)
!522 = distinct !DILexicalBlock(scope: !483, file: !126, line: 344, column: 6)
!523 = !DILocation(line: 344, column: 12, scope: !522)
!524 = !DILocation(line: 344, column: 6, scope: !483)
!525 = !DILocation(line: 345, column: 28, scope: !522)
!526 = !DILocation(line: 345, column: 16, scope: !522)
!527 = !DILocation(line: 345, column: 30, scope: !522)
!528 = !DILocation(line: 345, column: 10, scope: !522)
!529 = !DILocation(line: 345, column: 7, scope: !522)
!530 = !DILocation(line: 345, column: 3, scope: !522)
!531 = !DILocation(line: 347, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !483, file: !126, line: 347, column: 6)
!533 = !DILocation(line: 347, column: 6, scope: !483)
!534 = !DILocation(line: 348, column: 10, scope: !532)
!535 = !DILocation(line: 348, column: 4, scope: !532)
!536 = !DILocation(line: 348, column: 8, scope: !532)
!537 = !DILocation(line: 348, column: 3, scope: !532)
!538 = !DILocation(line: 353, column: 9, scope: !483)
!539 = !DILocation(line: 353, column: 13, scope: !483)
!540 = !DILocation(line: 353, column: 23, scope: !483)
!541 = !DILocation(line: 353, column: 27, scope: !483)
!542 = !DILocation(line: 353, column: 20, scope: !483)
!543 = !DILocation(line: 353, column: 6, scope: !483)
!544 = !DILocation(line: 354, column: 10, scope: !483)
!545 = !DILocation(line: 354, column: 14, scope: !483)
!546 = !DILocation(line: 354, column: 6, scope: !483)
!547 = !DILocation(line: 355, column: 13, scope: !483)
!548 = !DILocation(line: 355, column: 12, scope: !483)
!549 = !DILocation(line: 355, column: 17, scope: !483)
!550 = !DILocation(line: 355, column: 11, scope: !483)
!551 = !DILocation(line: 355, column: 9, scope: !483)
!552 = !DILocation(line: 356, column: 10, scope: !483)
!553 = !DILocation(line: 356, column: 2, scope: !483)
!554 = !DILocalVariable(name: "ip", arg: 1, scope: !128, file: !126, line: 361, type: !86)
!555 = !DILocation(line: 361, column: 21, scope: !128)
!556 = !DILocalVariable(name: "bytep", scope: !128, file: !126, line: 364, type: !73)
!557 = !DILocation(line: 364, column: 17, scope: !128)
!558 = !DILocation(line: 366, column: 10, scope: !128)
!559 = !DILocation(line: 366, column: 8, scope: !128)
!560 = !DILocation(line: 367, column: 30, scope: !128)
!561 = !DILocation(line: 367, column: 40, scope: !128)
!562 = !DILocation(line: 367, column: 50, scope: !128)
!563 = !DILocation(line: 367, column: 60, scope: !128)
!564 = !DILocation(line: 367, column: 2, scope: !128)
!565 = !DILocation(line: 368, column: 2, scope: !128)
!566 = distinct !DISubprogram(name: "inet_stor", scope: !126, file: !126, line: 389, type: !567, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!567 = !DISubroutineType(types: !568)
!568 = !{!241, !366, !488}
!569 = !DILocalVariable(name: "addr", arg: 1, scope: !566, file: !126, line: 389, type: !366)
!570 = !DILocation(line: 389, column: 23, scope: !566)
!571 = !DILocalVariable(name: "range_end", arg: 2, scope: !566, file: !126, line: 389, type: !488)
!572 = !DILocation(line: 389, column: 39, scope: !566)
!573 = !DILocalVariable(name: "cp", scope: !566, file: !126, line: 391, type: !366)
!574 = !DILocation(line: 391, column: 14, scope: !566)
!575 = !DILocalVariable(name: "endptr", scope: !566, file: !126, line: 392, type: !131)
!576 = !DILocation(line: 392, column: 8, scope: !566)
!577 = !DILocalVariable(name: "range", scope: !566, file: !126, line: 393, type: !66)
!578 = !DILocation(line: 393, column: 16, scope: !566)
!579 = !DILocalVariable(name: "family", scope: !566, file: !126, line: 394, type: !177)
!580 = !DILocation(line: 394, column: 6, scope: !566)
!581 = !DILocation(line: 394, column: 22, scope: !566)
!582 = !DILocation(line: 394, column: 15, scope: !566)
!583 = !DILocalVariable(name: "warn", scope: !566, file: !126, line: 395, type: !131)
!584 = !DILocation(line: 395, column: 8, scope: !566)
!585 = !DILocation(line: 398, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !566, file: !126, line: 398, column: 6)
!587 = !DILocation(line: 398, column: 6, scope: !566)
!588 = !DILocation(line: 399, column: 8, scope: !586)
!589 = !DILocation(line: 399, column: 3, scope: !586)
!590 = !DILocation(line: 403, column: 20, scope: !591)
!591 = distinct !DILexicalBlock(scope: !566, file: !126, line: 403, column: 6)
!592 = !DILocation(line: 403, column: 13, scope: !591)
!593 = !DILocation(line: 403, column: 11, scope: !591)
!594 = !DILocation(line: 403, column: 6, scope: !566)
!595 = !DILocation(line: 404, column: 4, scope: !596)
!596 = distinct !DILexicalBlock(scope: !591, file: !126, line: 403, column: 33)
!597 = !DILocation(line: 404, column: 14, scope: !596)
!598 = !DILocation(line: 405, column: 3, scope: !596)
!599 = !DILocation(line: 408, column: 3, scope: !566)
!600 = !DILocation(line: 408, column: 7, scope: !566)
!601 = !DILocation(line: 409, column: 18, scope: !566)
!602 = !DILocation(line: 409, column: 21, scope: !566)
!603 = !DILocation(line: 409, column: 35, scope: !566)
!604 = !DILocation(line: 409, column: 42, scope: !566)
!605 = !DILocation(line: 409, column: 10, scope: !566)
!606 = !DILocation(line: 409, column: 8, scope: !566)
!607 = !DILocation(line: 410, column: 15, scope: !566)
!608 = !DILocation(line: 410, column: 3, scope: !566)
!609 = !DILocation(line: 410, column: 13, scope: !566)
!610 = !DILocation(line: 412, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !566, file: !126, line: 412, column: 6)
!612 = !DILocation(line: 412, column: 6, scope: !611)
!613 = !DILocation(line: 412, column: 6, scope: !566)
!614 = !DILocation(line: 413, column: 116, scope: !611)
!615 = !DILocation(line: 413, column: 122, scope: !611)
!616 = !DILocation(line: 413, column: 128, scope: !611)
!617 = !DILocation(line: 413, column: 3, scope: !611)
!618 = !DILocation(line: 414, column: 12, scope: !619)
!619 = distinct !DILexicalBlock(scope: !611, file: !126, line: 414, column: 10)
!620 = !DILocation(line: 414, column: 11, scope: !619)
!621 = !DILocation(line: 414, column: 16, scope: !619)
!622 = !DILocation(line: 414, column: 26, scope: !619)
!623 = !DILocation(line: 415, column: 5, scope: !619)
!624 = !DILocation(line: 415, column: 12, scope: !619)
!625 = !DILocation(line: 415, column: 23, scope: !619)
!626 = !DILocation(line: 415, column: 26, scope: !627)
!627 = !DILexicalBlockFile(scope: !619, file: !126, discriminator: 1)
!628 = !DILocation(line: 415, column: 32, scope: !627)
!629 = !DILocation(line: 415, column: 42, scope: !627)
!630 = !DILocation(line: 416, column: 5, scope: !619)
!631 = !DILocation(line: 416, column: 12, scope: !619)
!632 = !DILocation(line: 416, column: 22, scope: !619)
!633 = !DILocation(line: 416, column: 25, scope: !627)
!634 = !DILocation(line: 416, column: 31, scope: !627)
!635 = !DILocation(line: 414, column: 10, scope: !636)
!636 = !DILexicalBlockFile(scope: !611, file: !126, discriminator: 1)
!637 = !DILocation(line: 417, column: 100, scope: !638)
!638 = distinct !DILexicalBlock(scope: !619, file: !126, line: 416, column: 39)
!639 = !DILocation(line: 417, column: 106, scope: !638)
!640 = !DILocation(line: 417, column: 109, scope: !638)
!641 = !DILocation(line: 417, column: 3, scope: !638)
!642 = !DILocation(line: 420, column: 3, scope: !638)
!643 = !DILocation(line: 423, column: 3, scope: !619)
!644 = !DILocation(line: 428, column: 17, scope: !566)
!645 = !DILocation(line: 428, column: 16, scope: !566)
!646 = !DILocation(line: 428, column: 9, scope: !566)
!647 = !DILocation(line: 430, column: 1, scope: !566)
!648 = distinct !DISubprogram(name: "__test_bit", scope: !4, file: !4, line: 47, type: !649, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!649 = !DISubroutineType(types: !650)
!650 = !{!241, !87, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64, align: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!653 = !DILocalVariable(name: "idx", arg: 1, scope: !648, file: !4, line: 47, type: !87)
!654 = !DILocation(line: 47, column: 39, scope: !648)
!655 = !DILocalVariable(name: "bmap", arg: 2, scope: !648, file: !4, line: 47, type: !651)
!656 = !DILocation(line: 47, column: 65, scope: !648)
!657 = !DILocation(line: 49, column: 19, scope: !648)
!658 = !DILocation(line: 49, column: 18, scope: !648)
!659 = !DILocation(line: 49, column: 24, scope: !648)
!660 = !DILocation(line: 49, column: 12, scope: !648)
!661 = !DILocation(line: 49, column: 68, scope: !648)
!662 = !DILocation(line: 49, column: 67, scope: !648)
!663 = !DILocation(line: 49, column: 73, scope: !648)
!664 = !DILocation(line: 49, column: 63, scope: !648)
!665 = !DILocation(line: 49, column: 56, scope: !648)
!666 = !DILocation(line: 49, column: 10, scope: !648)
!667 = !DILocation(line: 49, column: 9, scope: !648)
!668 = !DILocation(line: 49, column: 2, scope: !648)
!669 = distinct !DISubprogram(name: "domain_stosockaddr", scope: !126, file: !126, line: 434, type: !670, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!670 = !DISubroutineType(types: !671)
!671 = !{!177, !366, !366, !139}
!672 = !DILocalVariable(name: "domain", arg: 1, scope: !669, file: !126, line: 434, type: !366)
!673 = !DILocation(line: 434, column: 32, scope: !669)
!674 = !DILocalVariable(name: "port", arg: 2, scope: !669, file: !126, line: 434, type: !366)
!675 = !DILocation(line: 434, column: 52, scope: !669)
!676 = !DILocalVariable(name: "addr", arg: 3, scope: !669, file: !126, line: 434, type: !139)
!677 = !DILocation(line: 434, column: 83, scope: !669)
!678 = !DILocalVariable(name: "res", scope: !669, file: !126, line: 436, type: !679)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64, align: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !681, line: 567, size: 384, align: 64, elements: !682)
!681 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!682 = !{!683, !684, !685, !686, !687, !691, !700, !701}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !680, file: !681, line: 569, baseType: !177, size: 32, align: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !680, file: !681, line: 570, baseType: !177, size: 32, align: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !680, file: !681, line: 571, baseType: !177, size: 32, align: 32, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !680, file: !681, line: 572, baseType: !177, size: 32, align: 32, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !680, file: !681, line: 573, baseType: !688, size: 32, align: 32, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !689, line: 277, baseType: !690)
!689 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !71, line: 189, baseType: !87)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !680, file: !681, line: 574, baseType: !692, size: 64, align: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64, align: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !141, line: 153, size: 128, align: 16, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !693, file: !141, line: 155, baseType: !74, size: 16, align: 16)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !693, file: !141, line: 156, baseType: !697, size: 112, align: 8, offset: 16)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 112, align: 8, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 14)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !680, file: !681, line: 575, baseType: !131, size: 64, align: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !680, file: !681, line: 576, baseType: !679, size: 64, align: 64, offset: 320)
!702 = !DILocation(line: 436, column: 19, scope: !669)
!703 = !DILocalVariable(name: "port_num", scope: !669, file: !126, line: 437, type: !87)
!704 = !DILocation(line: 437, column: 11, scope: !669)
!705 = !DILocation(line: 439, column: 6, scope: !706)
!706 = distinct !DILexicalBlock(scope: !669, file: !126, line: 439, column: 6)
!707 = !DILocation(line: 439, column: 6, scope: !669)
!708 = !DILocation(line: 440, column: 22, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !126, line: 440, column: 7)
!710 = distinct !DILexicalBlock(scope: !706, file: !126, line: 439, column: 12)
!711 = !DILocation(line: 440, column: 8, scope: !709)
!712 = !DILocation(line: 440, column: 7, scope: !710)
!713 = !DILocation(line: 441, column: 4, scope: !714)
!714 = distinct !DILexicalBlock(scope: !709, file: !126, line: 440, column: 55)
!715 = !DILocation(line: 441, column: 10, scope: !714)
!716 = !DILocation(line: 441, column: 20, scope: !714)
!717 = !DILocation(line: 442, column: 4, scope: !714)
!718 = !DILocation(line: 444, column: 2, scope: !710)
!719 = !DILocation(line: 446, column: 18, scope: !720)
!720 = distinct !DILexicalBlock(scope: !669, file: !126, line: 446, column: 6)
!721 = !DILocation(line: 446, column: 6, scope: !720)
!722 = !DILocation(line: 446, column: 43, scope: !720)
!723 = !DILocation(line: 446, column: 48, scope: !720)
!724 = !DILocation(line: 446, column: 52, scope: !725)
!725 = !DILexicalBlockFile(scope: !720, file: !126, discriminator: 1)
!726 = !DILocation(line: 446, column: 6, scope: !725)
!727 = !DILocation(line: 447, column: 3, scope: !728)
!728 = distinct !DILexicalBlock(scope: !720, file: !126, line: 446, column: 57)
!729 = !DILocation(line: 447, column: 9, scope: !728)
!730 = !DILocation(line: 447, column: 19, scope: !728)
!731 = !DILocation(line: 448, column: 3, scope: !728)
!732 = !DILocation(line: 451, column: 33, scope: !669)
!733 = !DILocation(line: 451, column: 38, scope: !669)
!734 = !DILocation(line: 451, column: 20, scope: !669)
!735 = !DILocation(line: 451, column: 2, scope: !669)
!736 = !DILocation(line: 451, column: 8, scope: !669)
!737 = !DILocation(line: 451, column: 18, scope: !669)
!738 = !DILocation(line: 453, column: 6, scope: !739)
!739 = distinct !DILexicalBlock(scope: !669, file: !126, line: 453, column: 6)
!740 = !DILocation(line: 453, column: 12, scope: !739)
!741 = !DILocation(line: 453, column: 22, scope: !739)
!742 = !DILocation(line: 453, column: 6, scope: !669)
!743 = !DILocalVariable(name: "addr6", scope: !744, file: !126, line: 454, type: !77)
!744 = distinct !DILexicalBlock(scope: !739, file: !126, line: 453, column: 34)
!745 = !DILocation(line: 454, column: 24, scope: !744)
!746 = !DILocation(line: 454, column: 55, scope: !744)
!747 = !DILocation(line: 454, column: 32, scope: !744)
!748 = !DILocation(line: 455, column: 4, scope: !744)
!749 = !DILocation(line: 455, column: 36, scope: !744)
!750 = !DILocation(line: 455, column: 41, scope: !744)
!751 = !DILocation(line: 455, column: 12, scope: !744)
!752 = !DILocation(line: 456, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !744, file: !126, line: 456, column: 7)
!754 = !DILocation(line: 456, column: 7, scope: !744)
!755 = !DILocation(line: 457, column: 29, scope: !753)
!756 = !DILocation(line: 457, column: 23, scope: !753)
!757 = !DILocation(line: 457, column: 4, scope: !753)
!758 = !DILocation(line: 457, column: 11, scope: !753)
!759 = !DILocation(line: 457, column: 21, scope: !753)
!760 = !DILocation(line: 458, column: 2, scope: !744)
!761 = !DILocalVariable(name: "addr4", scope: !762, file: !126, line: 459, type: !108)
!762 = distinct !DILexicalBlock(scope: !739, file: !126, line: 458, column: 9)
!763 = !DILocation(line: 459, column: 23, scope: !762)
!764 = !DILocation(line: 459, column: 53, scope: !762)
!765 = !DILocation(line: 459, column: 31, scope: !762)
!766 = !DILocation(line: 460, column: 4, scope: !762)
!767 = !DILocation(line: 460, column: 35, scope: !762)
!768 = !DILocation(line: 460, column: 40, scope: !762)
!769 = !DILocation(line: 460, column: 12, scope: !762)
!770 = !DILocation(line: 461, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !762, file: !126, line: 461, column: 7)
!772 = !DILocation(line: 461, column: 7, scope: !762)
!773 = !DILocation(line: 462, column: 28, scope: !771)
!774 = !DILocation(line: 462, column: 22, scope: !771)
!775 = !DILocation(line: 462, column: 4, scope: !771)
!776 = !DILocation(line: 462, column: 11, scope: !771)
!777 = !DILocation(line: 462, column: 20, scope: !771)
!778 = !DILocation(line: 465, column: 15, scope: !669)
!779 = !DILocation(line: 465, column: 2, scope: !669)
!780 = !DILocation(line: 467, column: 2, scope: !669)
!781 = !DILocation(line: 468, column: 1, scope: !669)
!782 = distinct !DISubprogram(name: "inet_stosockaddr", scope: !126, file: !126, line: 472, type: !783, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!783 = !DISubroutineType(types: !784)
!784 = !{!177, !131, !366, !139}
!785 = !DILocalVariable(name: "ip", arg: 1, scope: !782, file: !126, line: 472, type: !131)
!786 = !DILocation(line: 472, column: 24, scope: !782)
!787 = !DILocalVariable(name: "port", arg: 2, scope: !782, file: !126, line: 472, type: !366)
!788 = !DILocation(line: 472, column: 40, scope: !782)
!789 = !DILocalVariable(name: "addr", arg: 3, scope: !782, file: !126, line: 472, type: !139)
!790 = !DILocation(line: 472, column: 71, scope: !782)
!791 = !DILocalVariable(name: "addr_ip", scope: !782, file: !126, line: 474, type: !215)
!792 = !DILocation(line: 474, column: 8, scope: !782)
!793 = !DILocalVariable(name: "cp", scope: !782, file: !126, line: 475, type: !131)
!794 = !DILocation(line: 475, column: 8, scope: !782)
!795 = !DILocalVariable(name: "sav_cp", scope: !782, file: !126, line: 476, type: !132)
!796 = !DILocation(line: 476, column: 7, scope: !782)
!797 = !DILocalVariable(name: "port_num", scope: !782, file: !126, line: 477, type: !87)
!798 = !DILocation(line: 477, column: 11, scope: !782)
!799 = !DILocalVariable(name: "res", scope: !782, file: !126, line: 478, type: !177)
!800 = !DILocation(line: 478, column: 6, scope: !782)
!801 = !DILocation(line: 480, column: 28, scope: !782)
!802 = !DILocation(line: 480, column: 21, scope: !782)
!803 = !DILocation(line: 480, column: 20, scope: !782)
!804 = !DILocation(line: 480, column: 2, scope: !782)
!805 = !DILocation(line: 480, column: 8, scope: !782)
!806 = !DILocation(line: 480, column: 18, scope: !782)
!807 = !DILocation(line: 482, column: 6, scope: !808)
!808 = distinct !DILexicalBlock(scope: !782, file: !126, line: 482, column: 6)
!809 = !DILocation(line: 482, column: 6, scope: !782)
!810 = !DILocation(line: 483, column: 22, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !126, line: 483, column: 7)
!812 = distinct !DILexicalBlock(scope: !808, file: !126, line: 482, column: 12)
!813 = !DILocation(line: 483, column: 8, scope: !811)
!814 = !DILocation(line: 483, column: 7, scope: !812)
!815 = !DILocation(line: 484, column: 4, scope: !816)
!816 = distinct !DILexicalBlock(scope: !811, file: !126, line: 483, column: 55)
!817 = !DILocation(line: 484, column: 10, scope: !816)
!818 = !DILocation(line: 484, column: 20, scope: !816)
!819 = !DILocation(line: 485, column: 4, scope: !816)
!820 = !DILocation(line: 487, column: 2, scope: !812)
!821 = !DILocation(line: 489, column: 6, scope: !822)
!822 = distinct !DILexicalBlock(scope: !782, file: !126, line: 489, column: 6)
!823 = !DILocation(line: 489, column: 12, scope: !822)
!824 = !DILocation(line: 489, column: 22, scope: !822)
!825 = !DILocation(line: 489, column: 6, scope: !782)
!826 = !DILocalVariable(name: "addr6", scope: !827, file: !126, line: 490, type: !77)
!827 = distinct !DILexicalBlock(scope: !822, file: !126, line: 489, column: 34)
!828 = !DILocation(line: 490, column: 24, scope: !827)
!829 = !DILocation(line: 490, column: 56, scope: !827)
!830 = !DILocation(line: 490, column: 32, scope: !827)
!831 = !DILocation(line: 491, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !827, file: !126, line: 491, column: 7)
!833 = !DILocation(line: 491, column: 7, scope: !827)
!834 = !DILocation(line: 492, column: 29, scope: !832)
!835 = !DILocation(line: 492, column: 23, scope: !832)
!836 = !DILocation(line: 492, column: 4, scope: !832)
!837 = !DILocation(line: 492, column: 11, scope: !832)
!838 = !DILocation(line: 492, column: 21, scope: !832)
!839 = !DILocation(line: 493, column: 14, scope: !827)
!840 = !DILocation(line: 493, column: 21, scope: !827)
!841 = !DILocation(line: 493, column: 13, scope: !827)
!842 = !DILocation(line: 493, column: 11, scope: !827)
!843 = !DILocation(line: 494, column: 2, scope: !827)
!844 = !DILocalVariable(name: "addr4", scope: !845, file: !126, line: 495, type: !108)
!845 = distinct !DILexicalBlock(scope: !822, file: !126, line: 494, column: 9)
!846 = !DILocation(line: 495, column: 23, scope: !845)
!847 = !DILocation(line: 495, column: 54, scope: !845)
!848 = !DILocation(line: 495, column: 31, scope: !845)
!849 = !DILocation(line: 496, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !845, file: !126, line: 496, column: 7)
!851 = !DILocation(line: 496, column: 7, scope: !845)
!852 = !DILocation(line: 497, column: 28, scope: !850)
!853 = !DILocation(line: 497, column: 22, scope: !850)
!854 = !DILocation(line: 497, column: 4, scope: !850)
!855 = !DILocation(line: 497, column: 11, scope: !850)
!856 = !DILocation(line: 497, column: 20, scope: !850)
!857 = !DILocation(line: 498, column: 14, scope: !845)
!858 = !DILocation(line: 498, column: 21, scope: !845)
!859 = !DILocation(line: 498, column: 13, scope: !845)
!860 = !DILocation(line: 498, column: 11, scope: !845)
!861 = !DILocation(line: 502, column: 19, scope: !862)
!862 = distinct !DILexicalBlock(scope: !782, file: !126, line: 502, column: 6)
!863 = !DILocation(line: 502, column: 12, scope: !862)
!864 = !DILocation(line: 502, column: 10, scope: !862)
!865 = !DILocation(line: 502, column: 29, scope: !862)
!866 = !DILocation(line: 503, column: 19, scope: !862)
!867 = !DILocation(line: 503, column: 12, scope: !862)
!868 = !DILocation(line: 503, column: 10, scope: !862)
!869 = !DILocation(line: 502, column: 6, scope: !870)
!870 = !DILexicalBlockFile(scope: !782, file: !126, discriminator: 1)
!871 = !DILocation(line: 504, column: 13, scope: !872)
!872 = distinct !DILexicalBlock(scope: !862, file: !126, line: 503, column: 30)
!873 = !DILocation(line: 504, column: 12, scope: !872)
!874 = !DILocation(line: 504, column: 10, scope: !872)
!875 = !DILocation(line: 505, column: 4, scope: !872)
!876 = !DILocation(line: 505, column: 7, scope: !872)
!877 = !DILocation(line: 506, column: 2, scope: !872)
!878 = !DILocation(line: 508, column: 18, scope: !782)
!879 = !DILocation(line: 508, column: 24, scope: !782)
!880 = !DILocation(line: 508, column: 35, scope: !782)
!881 = !DILocation(line: 508, column: 39, scope: !782)
!882 = !DILocation(line: 508, column: 8, scope: !782)
!883 = !DILocation(line: 508, column: 6, scope: !782)
!884 = !DILocation(line: 511, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !782, file: !126, line: 511, column: 6)
!886 = !DILocation(line: 511, column: 6, scope: !782)
!887 = !DILocation(line: 512, column: 9, scope: !885)
!888 = !DILocation(line: 512, column: 4, scope: !885)
!889 = !DILocation(line: 512, column: 7, scope: !885)
!890 = !DILocation(line: 512, column: 3, scope: !885)
!891 = !DILocation(line: 514, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !782, file: !126, line: 514, column: 6)
!893 = !DILocation(line: 514, column: 6, scope: !782)
!894 = !DILocation(line: 515, column: 3, scope: !895)
!895 = distinct !DILexicalBlock(scope: !892, file: !126, line: 514, column: 12)
!896 = !DILocation(line: 515, column: 9, scope: !895)
!897 = !DILocation(line: 515, column: 19, scope: !895)
!898 = !DILocation(line: 516, column: 3, scope: !895)
!899 = !DILocation(line: 519, column: 2, scope: !782)
!900 = !DILocation(line: 520, column: 1, scope: !782)
!901 = distinct !DISubprogram(name: "inet_ip4tosockaddr", scope: !126, file: !126, line: 524, type: !902, isLocal: false, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !904, !139}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!905 = !DILocalVariable(name: "sin_addr", arg: 1, scope: !901, file: !126, line: 524, type: !904)
!906 = !DILocation(line: 524, column: 36, scope: !901)
!907 = !DILocalVariable(name: "addr", arg: 2, scope: !901, file: !126, line: 524, type: !139)
!908 = !DILocation(line: 524, column: 71, scope: !901)
!909 = !DILocalVariable(name: "addr4", scope: !901, file: !126, line: 526, type: !108)
!910 = !DILocation(line: 526, column: 22, scope: !901)
!911 = !DILocation(line: 526, column: 53, scope: !901)
!912 = !DILocation(line: 526, column: 30, scope: !901)
!913 = !DILocation(line: 527, column: 2, scope: !901)
!914 = !DILocation(line: 527, column: 9, scope: !901)
!915 = !DILocation(line: 527, column: 20, scope: !901)
!916 = !DILocation(line: 528, column: 2, scope: !901)
!917 = !DILocation(line: 528, column: 9, scope: !901)
!918 = !DILocation(line: 528, column: 21, scope: !901)
!919 = !DILocation(line: 528, column: 20, scope: !901)
!920 = !DILocation(line: 529, column: 1, scope: !901)
!921 = distinct !DISubprogram(name: "inet_ip6tosockaddr", scope: !126, file: !126, line: 533, type: !922, isLocal: false, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !924, !139}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!925 = !DILocalVariable(name: "sin_addr", arg: 1, scope: !921, file: !126, line: 533, type: !924)
!926 = !DILocation(line: 533, column: 37, scope: !921)
!927 = !DILocalVariable(name: "addr", arg: 2, scope: !921, file: !126, line: 533, type: !139)
!928 = !DILocation(line: 533, column: 72, scope: !921)
!929 = !DILocalVariable(name: "addr6", scope: !921, file: !126, line: 535, type: !77)
!930 = !DILocation(line: 535, column: 23, scope: !921)
!931 = !DILocation(line: 535, column: 55, scope: !921)
!932 = !DILocation(line: 535, column: 31, scope: !921)
!933 = !DILocation(line: 536, column: 2, scope: !921)
!934 = !DILocation(line: 536, column: 9, scope: !921)
!935 = !DILocation(line: 536, column: 21, scope: !921)
!936 = !DILocation(line: 537, column: 2, scope: !921)
!937 = !DILocation(line: 537, column: 9, scope: !921)
!938 = !DILocation(line: 537, column: 22, scope: !921)
!939 = !DILocation(line: 537, column: 21, scope: !921)
!940 = !DILocation(line: 538, column: 1, scope: !921)
!941 = !DILocalVariable(name: "addr", arg: 1, scope: !136, file: !126, line: 561, type: !139)
!942 = !DILocation(line: 561, column: 43, scope: !136)
!943 = !DILocation(line: 564, column: 20, scope: !136)
!944 = !DILocation(line: 564, column: 2, scope: !136)
!945 = !DILocation(line: 565, column: 2, scope: !136)
!946 = distinct !DISubprogram(name: "inet_sockaddrtos2", scope: !126, file: !126, line: 542, type: !947, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!947 = !DISubroutineType(types: !948)
!948 = !{!131, !139, !131}
!949 = !DILocalVariable(name: "addr", arg: 1, scope: !946, file: !126, line: 542, type: !139)
!950 = !DILocation(line: 542, column: 44, scope: !946)
!951 = !DILocalVariable(name: "addr_str", arg: 2, scope: !946, file: !126, line: 542, type: !131)
!952 = !DILocation(line: 542, column: 56, scope: !946)
!953 = !DILocalVariable(name: "addr_ip", scope: !946, file: !126, line: 544, type: !215)
!954 = !DILocation(line: 544, column: 8, scope: !946)
!955 = !DILocation(line: 546, column: 6, scope: !956)
!956 = distinct !DILexicalBlock(scope: !946, file: !126, line: 546, column: 6)
!957 = !DILocation(line: 546, column: 12, scope: !956)
!958 = !DILocation(line: 546, column: 22, scope: !956)
!959 = !DILocation(line: 546, column: 6, scope: !946)
!960 = !DILocalVariable(name: "addr6", scope: !961, file: !126, line: 547, type: !77)
!961 = distinct !DILexicalBlock(scope: !956, file: !126, line: 546, column: 34)
!962 = !DILocation(line: 547, column: 24, scope: !961)
!963 = !DILocation(line: 547, column: 56, scope: !961)
!964 = !DILocation(line: 547, column: 32, scope: !961)
!965 = !DILocation(line: 548, column: 14, scope: !961)
!966 = !DILocation(line: 548, column: 21, scope: !961)
!967 = !DILocation(line: 548, column: 13, scope: !961)
!968 = !DILocation(line: 548, column: 11, scope: !961)
!969 = !DILocation(line: 549, column: 2, scope: !961)
!970 = !DILocalVariable(name: "addr4", scope: !971, file: !126, line: 550, type: !108)
!971 = distinct !DILexicalBlock(scope: !956, file: !126, line: 549, column: 9)
!972 = !DILocation(line: 550, column: 23, scope: !971)
!973 = !DILocation(line: 550, column: 54, scope: !971)
!974 = !DILocation(line: 550, column: 31, scope: !971)
!975 = !DILocation(line: 551, column: 14, scope: !971)
!976 = !DILocation(line: 551, column: 21, scope: !971)
!977 = !DILocation(line: 551, column: 13, scope: !971)
!978 = !DILocation(line: 551, column: 11, scope: !971)
!979 = !DILocation(line: 554, column: 17, scope: !980)
!980 = distinct !DILexicalBlock(scope: !946, file: !126, line: 554, column: 6)
!981 = !DILocation(line: 554, column: 23, scope: !980)
!982 = !DILocation(line: 554, column: 34, scope: !980)
!983 = !DILocation(line: 554, column: 43, scope: !980)
!984 = !DILocation(line: 554, column: 7, scope: !980)
!985 = !DILocation(line: 554, column: 6, scope: !946)
!986 = !DILocation(line: 555, column: 3, scope: !980)
!987 = !DILocation(line: 557, column: 9, scope: !946)
!988 = !DILocation(line: 557, column: 2, scope: !946)
!989 = !DILocation(line: 558, column: 1, scope: !946)
!990 = distinct !DISubprogram(name: "inet_sockaddrport", scope: !126, file: !126, line: 569, type: !991, isLocal: false, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!991 = !DISubroutineType(types: !992)
!992 = !{!83, !139}
!993 = !DILocalVariable(name: "addr", arg: 1, scope: !990, file: !126, line: 569, type: !139)
!994 = !DILocation(line: 569, column: 44, scope: !990)
!995 = !DILocalVariable(name: "port", scope: !990, file: !126, line: 571, type: !83)
!996 = !DILocation(line: 571, column: 11, scope: !990)
!997 = !DILocation(line: 573, column: 6, scope: !998)
!998 = distinct !DILexicalBlock(scope: !990, file: !126, line: 573, column: 6)
!999 = !DILocation(line: 573, column: 12, scope: !998)
!1000 = !DILocation(line: 573, column: 22, scope: !998)
!1001 = !DILocation(line: 573, column: 6, scope: !990)
!1002 = !DILocalVariable(name: "addr6", scope: !1003, file: !126, line: 574, type: !77)
!1003 = distinct !DILexicalBlock(scope: !998, file: !126, line: 573, column: 34)
!1004 = !DILocation(line: 574, column: 24, scope: !1003)
!1005 = !DILocation(line: 574, column: 56, scope: !1003)
!1006 = !DILocation(line: 574, column: 32, scope: !1003)
!1007 = !DILocation(line: 575, column: 10, scope: !1003)
!1008 = !DILocation(line: 575, column: 17, scope: !1003)
!1009 = !DILocation(line: 575, column: 8, scope: !1003)
!1010 = !DILocation(line: 576, column: 2, scope: !1003)
!1011 = !DILocalVariable(name: "addr4", scope: !1012, file: !126, line: 579, type: !108)
!1012 = distinct !DILexicalBlock(scope: !998, file: !126, line: 576, column: 9)
!1013 = !DILocation(line: 579, column: 23, scope: !1012)
!1014 = !DILocation(line: 579, column: 54, scope: !1012)
!1015 = !DILocation(line: 579, column: 31, scope: !1012)
!1016 = !DILocation(line: 580, column: 10, scope: !1012)
!1017 = !DILocation(line: 580, column: 17, scope: !1012)
!1018 = !DILocation(line: 580, column: 8, scope: !1012)
!1019 = !DILocation(line: 583, column: 9, scope: !990)
!1020 = !DILocation(line: 583, column: 2, scope: !990)
!1021 = !DILocalVariable(name: "addr", arg: 1, scope: !153, file: !126, line: 587, type: !139)
!1022 = !DILocation(line: 587, column: 46, scope: !153)
!1023 = !DILocalVariable(name: "addr_str", scope: !153, file: !126, line: 589, type: !149)
!1024 = !DILocation(line: 589, column: 7, scope: !153)
!1025 = !DILocation(line: 592, column: 20, scope: !153)
!1026 = !DILocation(line: 592, column: 26, scope: !153)
!1027 = !DILocation(line: 592, column: 2, scope: !153)
!1028 = !DILocation(line: 594, column: 5, scope: !153)
!1029 = !DILocation(line: 595, column: 29, scope: !153)
!1030 = !DILocation(line: 595, column: 11, scope: !153)
!1031 = !DILocation(line: 595, column: 5, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !153, file: !126, discriminator: 1)
!1033 = !DILocation(line: 595, column: 5, scope: !153)
!1034 = !DILocation(line: 593, column: 2, scope: !153)
!1035 = !DILocation(line: 596, column: 2, scope: !153)
!1036 = !DILocalVariable(name: "addr", arg: 1, scope: !158, file: !126, line: 600, type: !139)
!1037 = !DILocation(line: 600, column: 46, scope: !158)
!1038 = !DILocalVariable(name: "proto", arg: 2, scope: !158, file: !126, line: 600, type: !83)
!1039 = !DILocation(line: 600, column: 61, scope: !158)
!1040 = !DILocalVariable(name: "addr_str", scope: !158, file: !126, line: 602, type: !149)
!1041 = !DILocation(line: 602, column: 7, scope: !158)
!1042 = !DILocalVariable(name: "proto_str", scope: !158, file: !126, line: 604, type: !131)
!1043 = !DILocation(line: 604, column: 8, scope: !158)
!1044 = !DILocation(line: 604, column: 20, scope: !158)
!1045 = !DILocation(line: 604, column: 26, scope: !158)
!1046 = !DILocation(line: 604, column: 20, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !158, file: !126, discriminator: 1)
!1048 = !DILocation(line: 604, column: 50, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !158, file: !126, discriminator: 2)
!1050 = !DILocation(line: 604, column: 56, scope: !1049)
!1051 = !DILocation(line: 604, column: 50, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !158, file: !126, discriminator: 3)
!1053 = !DILocation(line: 604, column: 81, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !158, file: !126, discriminator: 4)
!1055 = !DILocation(line: 604, column: 87, scope: !1054)
!1056 = !DILocation(line: 604, column: 81, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !158, file: !126, discriminator: 5)
!1058 = !DILocation(line: 604, column: 114, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !158, file: !126, discriminator: 6)
!1060 = !DILocation(line: 604, column: 120, scope: !1059)
!1061 = !DILocation(line: 604, column: 81, scope: !1059)
!1062 = !DILocation(line: 604, column: 81, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !158, file: !126, discriminator: 7)
!1064 = !DILocation(line: 604, column: 50, scope: !1063)
!1065 = !DILocation(line: 604, column: 50, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !158, file: !126, discriminator: 8)
!1067 = !DILocation(line: 604, column: 20, scope: !1066)
!1068 = !DILocation(line: 604, column: 20, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !158, file: !126, discriminator: 9)
!1070 = !DILocation(line: 604, column: 8, scope: !1069)
!1071 = !DILocation(line: 606, column: 20, scope: !158)
!1072 = !DILocation(line: 606, column: 26, scope: !158)
!1073 = !DILocation(line: 606, column: 2, scope: !158)
!1074 = !DILocation(line: 607, column: 43, scope: !158)
!1075 = !DILocation(line: 607, column: 53, scope: !158)
!1076 = !DILocation(line: 608, column: 28, scope: !158)
!1077 = !DILocation(line: 608, column: 10, scope: !158)
!1078 = !DILocation(line: 608, column: 4, scope: !1047)
!1079 = !DILocation(line: 608, column: 4, scope: !158)
!1080 = !DILocation(line: 607, column: 2, scope: !158)
!1081 = !DILocation(line: 609, column: 2, scope: !158)
!1082 = distinct !DISubprogram(name: "inet_sockaddrip4", scope: !126, file: !126, line: 613, type: !1083, isLocal: false, isDefinition: true, scopeLine: 614, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!86, !139}
!1085 = !DILocalVariable(name: "addr", arg: 1, scope: !1082, file: !126, line: 613, type: !139)
!1086 = !DILocation(line: 613, column: 43, scope: !1082)
!1087 = !DILocation(line: 615, column: 6, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1082, file: !126, line: 615, column: 6)
!1089 = !DILocation(line: 615, column: 12, scope: !1088)
!1090 = !DILocation(line: 615, column: 22, scope: !1088)
!1091 = !DILocation(line: 615, column: 6, scope: !1082)
!1092 = !DILocation(line: 616, column: 3, scope: !1088)
!1093 = !DILocation(line: 618, column: 33, scope: !1082)
!1094 = !DILocation(line: 618, column: 40, scope: !1082)
!1095 = !DILocation(line: 618, column: 49, scope: !1082)
!1096 = !DILocation(line: 618, column: 2, scope: !1082)
!1097 = !DILocation(line: 619, column: 1, scope: !1082)
!1098 = distinct !DISubprogram(name: "inet_sockaddrip6", scope: !126, file: !126, line: 622, type: !1099, isLocal: false, isDefinition: true, scopeLine: 623, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!177, !139, !924}
!1101 = !DILocalVariable(name: "addr", arg: 1, scope: !1098, file: !126, line: 622, type: !139)
!1102 = !DILocation(line: 622, column: 43, scope: !1098)
!1103 = !DILocalVariable(name: "ip6", arg: 2, scope: !1098, file: !126, line: 622, type: !924)
!1104 = !DILocation(line: 622, column: 66, scope: !1098)
!1105 = !DILocation(line: 624, column: 6, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1098, file: !126, line: 624, column: 6)
!1107 = !DILocation(line: 624, column: 12, scope: !1106)
!1108 = !DILocation(line: 624, column: 22, scope: !1106)
!1109 = !DILocation(line: 624, column: 6, scope: !1098)
!1110 = !DILocation(line: 625, column: 3, scope: !1106)
!1111 = !DILocation(line: 627, column: 3, scope: !1098)
!1112 = !DILocation(line: 627, column: 34, scope: !1098)
!1113 = !DILocation(line: 627, column: 41, scope: !1098)
!1114 = !DILocation(line: 628, column: 2, scope: !1098)
!1115 = !DILocation(line: 629, column: 1, scope: !1098)
!1116 = distinct !DISubprogram(name: "inet_inaddrcmp", scope: !126, file: !126, line: 633, type: !1117, isLocal: false, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!177, !1119, !1120, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64, align: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1122 = !DILocalVariable(name: "family", arg: 1, scope: !1116, file: !126, line: 633, type: !1119)
!1123 = !DILocation(line: 633, column: 26, scope: !1116)
!1124 = !DILocalVariable(name: "a", arg: 2, scope: !1116, file: !126, line: 633, type: !1120)
!1125 = !DILocation(line: 633, column: 46, scope: !1116)
!1126 = !DILocalVariable(name: "b", arg: 3, scope: !1116, file: !126, line: 633, type: !1120)
!1127 = !DILocation(line: 633, column: 61, scope: !1116)
!1128 = !DILocalVariable(name: "addr_diff", scope: !1116, file: !126, line: 635, type: !120)
!1129 = !DILocation(line: 635, column: 10, scope: !1116)
!1130 = !DILocation(line: 637, column: 6, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1116, file: !126, line: 637, column: 6)
!1132 = !DILocation(line: 637, column: 13, scope: !1131)
!1133 = !DILocation(line: 637, column: 6, scope: !1116)
!1134 = !DILocation(line: 638, column: 51, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !126, line: 637, column: 24)
!1136 = !DILocation(line: 638, column: 32, scope: !1135)
!1137 = !DILocation(line: 638, column: 30, scope: !1135)
!1138 = !DILocation(line: 638, column: 24, scope: !1135)
!1139 = !DILocation(line: 638, column: 15, scope: !1135)
!1140 = !DILocation(line: 638, column: 93, scope: !1135)
!1141 = !DILocation(line: 638, column: 74, scope: !1135)
!1142 = !DILocation(line: 638, column: 72, scope: !1135)
!1143 = !DILocation(line: 638, column: 66, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1135, file: !126, discriminator: 1)
!1145 = !DILocation(line: 638, column: 57, scope: !1135)
!1146 = !DILocation(line: 638, column: 55, scope: !1135)
!1147 = !DILocation(line: 638, column: 13, scope: !1135)
!1148 = !DILocation(line: 639, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1135, file: !126, line: 639, column: 7)
!1150 = !DILocation(line: 639, column: 17, scope: !1149)
!1151 = !DILocation(line: 639, column: 7, scope: !1135)
!1152 = !DILocation(line: 640, column: 4, scope: !1149)
!1153 = !DILocation(line: 641, column: 7, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1135, file: !126, line: 641, column: 7)
!1155 = !DILocation(line: 641, column: 17, scope: !1154)
!1156 = !DILocation(line: 641, column: 7, scope: !1135)
!1157 = !DILocation(line: 642, column: 4, scope: !1154)
!1158 = !DILocation(line: 643, column: 3, scope: !1135)
!1159 = !DILocation(line: 646, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1116, file: !126, line: 646, column: 6)
!1161 = !DILocation(line: 646, column: 13, scope: !1160)
!1162 = !DILocation(line: 646, column: 6, scope: !1116)
!1163 = !DILocalVariable(name: "i", scope: !1164, file: !126, line: 647, type: !177)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !126, line: 646, column: 25)
!1165 = !DILocation(line: 647, column: 7, scope: !1164)
!1166 = !DILocation(line: 649, column: 10, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !126, line: 649, column: 3)
!1168 = !DILocation(line: 649, column: 8, scope: !1167)
!1169 = !DILocation(line: 649, column: 15, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1171, file: !126, discriminator: 1)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !126, line: 649, column: 3)
!1172 = !DILocation(line: 649, column: 17, scope: !1170)
!1173 = !DILocation(line: 649, column: 3, scope: !1170)
!1174 = !DILocation(line: 650, column: 56, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !126, line: 649, column: 28)
!1176 = !DILocation(line: 650, column: 31, scope: !1175)
!1177 = !DILocation(line: 650, column: 52, scope: !1175)
!1178 = !DILocation(line: 650, column: 32, scope: !1175)
!1179 = !DILocation(line: 650, column: 25, scope: !1175)
!1180 = !DILocation(line: 650, column: 16, scope: !1175)
!1181 = !DILocation(line: 650, column: 102, scope: !1175)
!1182 = !DILocation(line: 650, column: 77, scope: !1175)
!1183 = !DILocation(line: 650, column: 98, scope: !1175)
!1184 = !DILocation(line: 650, column: 78, scope: !1175)
!1185 = !DILocation(line: 650, column: 71, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1175, file: !126, discriminator: 1)
!1187 = !DILocation(line: 650, column: 62, scope: !1175)
!1188 = !DILocation(line: 650, column: 60, scope: !1175)
!1189 = !DILocation(line: 650, column: 14, scope: !1175)
!1190 = !DILocation(line: 651, column: 8, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1175, file: !126, line: 651, column: 8)
!1192 = !DILocation(line: 651, column: 18, scope: !1191)
!1193 = !DILocation(line: 651, column: 8, scope: !1175)
!1194 = !DILocation(line: 652, column: 5, scope: !1191)
!1195 = !DILocation(line: 653, column: 8, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1175, file: !126, line: 653, column: 8)
!1197 = !DILocation(line: 653, column: 18, scope: !1196)
!1198 = !DILocation(line: 653, column: 8, scope: !1175)
!1199 = !DILocation(line: 654, column: 5, scope: !1196)
!1200 = !DILocation(line: 655, column: 3, scope: !1175)
!1201 = !DILocation(line: 649, column: 23, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1171, file: !126, discriminator: 2)
!1203 = !DILocation(line: 649, column: 3, scope: !1202)
!1204 = distinct !{!1204, !1205}
!1205 = !DILocation(line: 649, column: 3, scope: !1164)
!1206 = !DILocation(line: 656, column: 3, scope: !1164)
!1207 = !DILocation(line: 659, column: 2, scope: !1116)
!1208 = !DILocation(line: 660, column: 1, scope: !1116)
!1209 = distinct !DISubprogram(name: "inet_sockaddrcmp", scope: !126, file: !126, line: 663, type: !1210, isLocal: false, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!177, !1212, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64, align: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!1214 = !DILocalVariable(name: "a", arg: 1, scope: !1209, file: !126, line: 663, type: !1212)
!1215 = !DILocation(line: 663, column: 49, scope: !1209)
!1216 = !DILocalVariable(name: "b", arg: 2, scope: !1209, file: !126, line: 663, type: !1212)
!1217 = !DILocation(line: 663, column: 83, scope: !1209)
!1218 = !DILocation(line: 665, column: 6, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1209, file: !126, line: 665, column: 6)
!1220 = !DILocation(line: 665, column: 9, scope: !1219)
!1221 = !DILocation(line: 665, column: 22, scope: !1219)
!1222 = !DILocation(line: 665, column: 25, scope: !1219)
!1223 = !DILocation(line: 665, column: 19, scope: !1219)
!1224 = !DILocation(line: 665, column: 6, scope: !1209)
!1225 = !DILocation(line: 666, column: 3, scope: !1219)
!1226 = !DILocation(line: 668, column: 6, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1209, file: !126, line: 668, column: 6)
!1228 = !DILocation(line: 668, column: 9, scope: !1227)
!1229 = !DILocation(line: 668, column: 19, scope: !1227)
!1230 = !DILocation(line: 668, column: 6, scope: !1209)
!1231 = !DILocation(line: 669, column: 25, scope: !1227)
!1232 = !DILocation(line: 669, column: 28, scope: !1227)
!1233 = !DILocation(line: 670, column: 36, scope: !1227)
!1234 = !DILocation(line: 670, column: 40, scope: !1227)
!1235 = !DILocation(line: 670, column: 11, scope: !1227)
!1236 = !DILocation(line: 671, column: 36, scope: !1227)
!1237 = !DILocation(line: 671, column: 40, scope: !1227)
!1238 = !DILocation(line: 671, column: 11, scope: !1227)
!1239 = !DILocation(line: 669, column: 10, scope: !1227)
!1240 = !DILocation(line: 669, column: 3, scope: !1227)
!1241 = !DILocation(line: 672, column: 6, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1209, file: !126, line: 672, column: 6)
!1243 = !DILocation(line: 672, column: 9, scope: !1242)
!1244 = !DILocation(line: 672, column: 19, scope: !1242)
!1245 = !DILocation(line: 672, column: 6, scope: !1209)
!1246 = !DILocation(line: 673, column: 25, scope: !1242)
!1247 = !DILocation(line: 673, column: 28, scope: !1242)
!1248 = !DILocation(line: 674, column: 37, scope: !1242)
!1249 = !DILocation(line: 674, column: 41, scope: !1242)
!1250 = !DILocation(line: 674, column: 11, scope: !1242)
!1251 = !DILocation(line: 675, column: 37, scope: !1242)
!1252 = !DILocation(line: 675, column: 41, scope: !1242)
!1253 = !DILocation(line: 675, column: 11, scope: !1242)
!1254 = !DILocation(line: 673, column: 10, scope: !1242)
!1255 = !DILocation(line: 673, column: 3, scope: !1242)
!1256 = !DILocation(line: 676, column: 2, scope: !1209)
!1257 = !DILocation(line: 677, column: 1, scope: !1209)
!1258 = distinct !DISubprogram(name: "get_local_name", scope: !126, file: !126, line: 750, type: !1259, isLocal: false, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!131}
!1261 = !DILocalVariable(name: "name", scope: !1258, file: !126, line: 752, type: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !1263, line: 48, size: 3120, align: 8, elements: !1264)
!1263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/utsname.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!1264 = !{!1265, !1269, !1270, !1271, !1272, !1273}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !1262, file: !1263, line: 51, baseType: !1266, size: 520, align: 8)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 520, align: 8, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 65)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !1262, file: !1263, line: 54, baseType: !1266, size: 520, align: 8, offset: 520)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1262, file: !1263, line: 57, baseType: !1266, size: 520, align: 8, offset: 1040)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1262, file: !1263, line: 59, baseType: !1266, size: 520, align: 8, offset: 1560)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1262, file: !1263, line: 62, baseType: !1266, size: 520, align: 8, offset: 2080)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !1262, file: !1263, line: 67, baseType: !1266, size: 520, align: 8, offset: 2600)
!1274 = !DILocation(line: 752, column: 17, scope: !1258)
!1275 = !DILocalVariable(name: "hints", scope: !1258, file: !126, line: 753, type: !680)
!1276 = !DILocation(line: 753, column: 18, scope: !1258)
!1277 = !DILocalVariable(name: "res", scope: !1258, file: !126, line: 753, type: !679)
!1278 = !DILocation(line: 753, column: 26, scope: !1258)
!1279 = !DILocalVariable(name: "canonname", scope: !1258, file: !126, line: 754, type: !131)
!1280 = !DILocation(line: 754, column: 8, scope: !1258)
!1281 = !DILocalVariable(name: "len", scope: !1258, file: !126, line: 755, type: !64)
!1282 = !DILocation(line: 755, column: 9, scope: !1258)
!1283 = !DILocation(line: 757, column: 2, scope: !1258)
!1284 = !DILocation(line: 758, column: 8, scope: !1258)
!1285 = !DILocation(line: 758, column: 17, scope: !1258)
!1286 = !DILocation(line: 760, column: 6, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1258, file: !126, line: 760, column: 6)
!1288 = !DILocation(line: 760, column: 19, scope: !1287)
!1289 = !DILocation(line: 760, column: 6, scope: !1258)
!1290 = !DILocation(line: 761, column: 3, scope: !1287)
!1291 = !DILocation(line: 763, column: 23, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1258, file: !126, line: 763, column: 6)
!1293 = !DILocation(line: 763, column: 18, scope: !1292)
!1294 = !DILocation(line: 763, column: 6, scope: !1292)
!1295 = !DILocation(line: 763, column: 52, scope: !1292)
!1296 = !DILocation(line: 763, column: 6, scope: !1258)
!1297 = !DILocation(line: 764, column: 3, scope: !1292)
!1298 = !DILocation(line: 766, column: 6, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1258, file: !126, line: 766, column: 6)
!1300 = !DILocation(line: 766, column: 10, scope: !1299)
!1301 = !DILocation(line: 766, column: 13, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1299, file: !126, discriminator: 1)
!1303 = !DILocation(line: 766, column: 18, scope: !1302)
!1304 = !DILocation(line: 766, column: 6, scope: !1302)
!1305 = !DILocation(line: 767, column: 16, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1299, file: !126, line: 766, column: 32)
!1307 = !DILocation(line: 767, column: 21, scope: !1306)
!1308 = !DILocation(line: 767, column: 9, scope: !1306)
!1309 = !DILocation(line: 767, column: 7, scope: !1306)
!1310 = !DILocation(line: 768, column: 23, scope: !1306)
!1311 = !DILocation(line: 768, column: 27, scope: !1306)
!1312 = !DILocation(line: 768, column: 16, scope: !1306)
!1313 = !DILocation(line: 768, column: 13, scope: !1306)
!1314 = !DILocation(line: 769, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1306, file: !126, line: 769, column: 7)
!1316 = !DILocation(line: 769, column: 7, scope: !1306)
!1317 = !DILocation(line: 770, column: 11, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !126, line: 769, column: 18)
!1319 = !DILocation(line: 770, column: 22, scope: !1318)
!1320 = !DILocation(line: 770, column: 27, scope: !1318)
!1321 = !DILocation(line: 770, column: 41, scope: !1318)
!1322 = !DILocation(line: 770, column: 4, scope: !1318)
!1323 = !DILocation(line: 771, column: 3, scope: !1318)
!1324 = !DILocation(line: 772, column: 2, scope: !1306)
!1325 = !DILocation(line: 774, column: 15, scope: !1258)
!1326 = !DILocation(line: 774, column: 2, scope: !1258)
!1327 = !DILocation(line: 776, column: 9, scope: !1258)
!1328 = !DILocation(line: 776, column: 2, scope: !1258)
!1329 = !DILocation(line: 777, column: 1, scope: !1258)
!1330 = distinct !DISubprogram(name: "string_equal", scope: !126, file: !126, line: 781, type: !1331, isLocal: false, isDefinition: true, scopeLine: 782, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!241, !366, !366}
!1333 = !DILocalVariable(name: "str1", arg: 1, scope: !1330, file: !126, line: 781, type: !366)
!1334 = !DILocation(line: 781, column: 26, scope: !1330)
!1335 = !DILocalVariable(name: "str2", arg: 2, scope: !1330, file: !126, line: 781, type: !366)
!1336 = !DILocation(line: 781, column: 44, scope: !1330)
!1337 = !DILocation(line: 783, column: 7, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1330, file: !126, line: 783, column: 6)
!1339 = !DILocation(line: 783, column: 12, scope: !1338)
!1340 = !DILocation(line: 783, column: 16, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1338, file: !126, discriminator: 1)
!1342 = !DILocation(line: 783, column: 6, scope: !1341)
!1343 = !DILocation(line: 784, column: 3, scope: !1338)
!1344 = !DILocation(line: 785, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1330, file: !126, line: 785, column: 6)
!1346 = !DILocation(line: 785, column: 6, scope: !1345)
!1347 = !DILocation(line: 785, column: 16, scope: !1345)
!1348 = !DILocation(line: 785, column: 15, scope: !1345)
!1349 = !DILocation(line: 785, column: 12, scope: !1345)
!1350 = !DILocation(line: 785, column: 6, scope: !1330)
!1351 = !DILocation(line: 786, column: 3, scope: !1345)
!1352 = !DILocation(line: 788, column: 17, scope: !1330)
!1353 = !DILocation(line: 788, column: 23, scope: !1330)
!1354 = !DILocation(line: 788, column: 10, scope: !1330)
!1355 = !DILocation(line: 788, column: 9, scope: !1330)
!1356 = !DILocation(line: 788, column: 2, scope: !1330)
!1357 = !DILocation(line: 789, column: 1, scope: !1330)
!1358 = distinct !DISubprogram(name: "set_std_fd", scope: !126, file: !126, line: 792, type: !1359, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null, !241}
!1361 = !DILocalVariable(name: "force", arg: 1, scope: !1358, file: !126, line: 792, type: !241)
!1362 = !DILocation(line: 792, column: 16, scope: !1358)
!1363 = !DILocalVariable(name: "fd", scope: !1358, file: !126, line: 794, type: !177)
!1364 = !DILocation(line: 794, column: 6, scope: !1358)
!1365 = !DILocation(line: 796, column: 6, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1358, file: !126, line: 796, column: 6)
!1367 = !DILocation(line: 796, column: 12, scope: !1366)
!1368 = !DILocation(line: 796, column: 15, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1366, file: !126, discriminator: 1)
!1370 = !DILocation(line: 796, column: 6, scope: !1369)
!1371 = !DILocation(line: 797, column: 8, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1366, file: !126, line: 796, column: 50)
!1373 = !DILocation(line: 797, column: 6, scope: !1372)
!1374 = !DILocation(line: 798, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !126, line: 798, column: 7)
!1376 = !DILocation(line: 798, column: 10, scope: !1375)
!1377 = !DILocation(line: 798, column: 7, scope: !1372)
!1378 = !DILocation(line: 799, column: 9, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !126, line: 798, column: 17)
!1380 = !DILocation(line: 799, column: 4, scope: !1379)
!1381 = !DILocation(line: 800, column: 9, scope: !1379)
!1382 = !DILocation(line: 800, column: 4, scope: !1379)
!1383 = !DILocation(line: 801, column: 9, scope: !1379)
!1384 = !DILocation(line: 801, column: 4, scope: !1379)
!1385 = !DILocation(line: 802, column: 8, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1379, file: !126, line: 802, column: 8)
!1387 = !DILocation(line: 802, column: 11, scope: !1386)
!1388 = !DILocation(line: 802, column: 8, scope: !1379)
!1389 = !DILocation(line: 803, column: 11, scope: !1386)
!1390 = !DILocation(line: 803, column: 5, scope: !1386)
!1391 = !DILocation(line: 804, column: 3, scope: !1379)
!1392 = !DILocation(line: 805, column: 2, scope: !1372)
!1393 = !DILocation(line: 807, column: 2, scope: !1358)
!1394 = !DILocation(line: 808, column: 1, scope: !1358)
!1395 = distinct !DISubprogram(name: "close_std_fd", scope: !126, file: !126, line: 811, type: !1396, isLocal: false, isDefinition: true, scopeLine: 812, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null}
!1398 = !DILocation(line: 813, column: 2, scope: !1395)
!1399 = !DILocation(line: 814, column: 2, scope: !1395)
!1400 = !DILocation(line: 815, column: 2, scope: !1395)
!1401 = !DILocation(line: 816, column: 1, scope: !1395)
!1402 = distinct !DISubprogram(name: "open_pipe", scope: !126, file: !126, line: 863, type: !1403, isLocal: false, isDefinition: true, scopeLine: 864, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !133)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!177, !1405}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!1406 = !DILocalVariable(name: "pipe_arr", arg: 1, scope: !1402, file: !126, line: 863, type: !1405)
!1407 = !DILocation(line: 863, column: 15, scope: !1402)
!1408 = !DILocation(line: 867, column: 12, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1402, file: !126, line: 867, column: 6)
!1410 = !DILocation(line: 867, column: 6, scope: !1409)
!1411 = !DILocation(line: 867, column: 45, scope: !1409)
!1412 = !DILocation(line: 867, column: 6, scope: !1402)
!1413 = !DILocation(line: 871, column: 3, scope: !1409)
!1414 = !DILocation(line: 881, column: 2, scope: !1402)
!1415 = !DILocation(line: 882, column: 1, scope: !1402)
