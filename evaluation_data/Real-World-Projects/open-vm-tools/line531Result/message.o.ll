; ModuleID = './message.o.i'
source_filename = "./message.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Message_Channel = type { i16, i8*, i64, i8, i32, i32 }
%union.Backdoor_proto = type { %struct.anon }
%struct.anon = type { %union.anon, i64, %union.anon.2, %union.anon.5, %union.anon.8, %union.anon.11 }
%union.anon = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.11 = type { i64 }
%struct.anon.3 = type { i16, i16 }
%struct.anon.6 = type { i16, i16 }
%struct.anon.14 = type { %union.anon.15, %union.anon.18, %union.anon.21, %union.anon.24, %union.anon.27, %union.anon.30 }
%union.anon.15 = type { i64 }
%union.anon.18 = type { i64 }
%union.anon.21 = type { i64 }
%union.anon.24 = type { i64 }
%union.anon.27 = type { i64 }
%union.anon.30 = type { i64 }
%union.Backdoor_proto_hb = type { %struct.anon.33 }
%struct.anon.33 = type { %union.anon.34, %union.anon.37, i64, %union.anon.40, i64, i64, %union.anon.43 }
%union.anon.34 = type { i64 }
%union.anon.37 = type { i64 }
%union.anon.40 = type { i64 }
%union.anon.43 = type { i64 }
%struct.anon.38 = type { i16, i16 }
%struct.anon.41 = type { i16, i16 }

; Function Attrs: nounwind uwtable
define signext i8 @Message_OpenAllocated(i32, %struct.Message_Channel*, i8*, i64) #0 !dbg !30 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.Message_Channel*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.Backdoor_proto, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !54, metadata !55), !dbg !56
  store %struct.Message_Channel* %1, %struct.Message_Channel** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.Message_Channel** %7, metadata !57, metadata !55), !dbg !58
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !59, metadata !55), !dbg !60
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !61, metadata !55), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %10, metadata !63, metadata !55), !dbg !64
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %11, metadata !65, metadata !55), !dbg !244
  store i32 -2147483648, i32* %10, align 4, !dbg !245
  br label %12, !dbg !246

; <label>:12:                                     ; preds = %38, %4
  %13 = bitcast %union.Backdoor_proto* %11 to %struct.anon*, !dbg !247
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 2, !dbg !248
  %15 = bitcast %union.anon.2* %14 to %struct.anon.3*, !dbg !249
  %16 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %15, i32 0, i32 1, !dbg !250
  store i16 0, i16* %16, align 2, !dbg !251
  %17 = load i32, i32* %6, align 4, !dbg !252
  %18 = load i32, i32* %10, align 4, !dbg !253
  %19 = or i32 %17, %18, !dbg !254
  %20 = zext i32 %19 to i64, !dbg !252
  %21 = bitcast %union.Backdoor_proto* %11 to %struct.anon*, !dbg !255
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1, !dbg !256
  store i64 %20, i64* %22, align 8, !dbg !257
  %23 = bitcast %union.Backdoor_proto* %11 to %struct.anon*, !dbg !258
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 2, !dbg !259
  %25 = bitcast %union.anon.2* %24 to %struct.anon.3*, !dbg !260
  %26 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %25, i32 0, i32 0, !dbg !261
  store i16 30, i16* %26, align 8, !dbg !262
  call void @Backdoor(%union.Backdoor_proto* %11), !dbg !263
  %27 = bitcast %union.Backdoor_proto* %11 to %struct.anon*, !dbg !264
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 2, !dbg !266
  %29 = bitcast %union.anon.2* %28 to %struct.anon.3*, !dbg !267
  %30 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %29, i32 0, i32 1, !dbg !268
  %31 = load i16, i16* %30, align 2, !dbg !268
  %32 = zext i16 %31 to i32, !dbg !269
  %33 = and i32 %32, 1, !dbg !270
  %34 = icmp eq i32 %33, 0, !dbg !271
  br i1 %34, label %35, label %40, !dbg !272

; <label>:35:                                     ; preds = %12
  %36 = load i32, i32* %10, align 4, !dbg !273
  %37 = icmp ne i32 %36, 0, !dbg !273
  br i1 %37, label %38, label %39, !dbg !276

; <label>:38:                                     ; preds = %35
  store i32 0, i32* %10, align 4, !dbg !277
  br label %12, !dbg !279

; <label>:39:                                     ; preds = %35
  store i8 0, i8* %5, align 1, !dbg !280
  br label %72, !dbg !280

; <label>:40:                                     ; preds = %12
  %41 = bitcast %union.Backdoor_proto* %11 to %struct.anon*, !dbg !281
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 3, !dbg !282
  %43 = bitcast %union.anon.5* %42 to %struct.anon.6*, !dbg !283
  %44 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %43, i32 0, i32 1, !dbg !284
  %45 = load i16, i16* %44, align 2, !dbg !284
  %46 = load %struct.Message_Channel*, %struct.Message_Channel** %7, align 8, !dbg !285
  %47 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %46, i32 0, i32 0, !dbg !286
  store i16 %45, i16* %47, align 8, !dbg !287
  %48 = bitcast %union.Backdoor_proto* %11 to %struct.anon.14*, !dbg !288
  %49 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %48, i32 0, i32 4, !dbg !289
  %50 = bitcast %union.anon.27* %49 to i32*, !dbg !290
  %51 = load i32, i32* %50, align 8, !dbg !290
  %52 = load %struct.Message_Channel*, %struct.Message_Channel** %7, align 8, !dbg !291
  %53 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %52, i32 0, i32 4, !dbg !292
  store i32 %51, i32* %53, align 4, !dbg !293
  %54 = bitcast %union.Backdoor_proto* %11 to %struct.anon.14*, !dbg !294
  %55 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %54, i32 0, i32 5, !dbg !295
  %56 = bitcast %union.anon.30* %55 to i32*, !dbg !296
  %57 = load i32, i32* %56, align 8, !dbg !296
  %58 = load %struct.Message_Channel*, %struct.Message_Channel** %7, align 8, !dbg !297
  %59 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %58, i32 0, i32 5, !dbg !298
  store i32 %57, i32* %59, align 8, !dbg !299
  %60 = load i8*, i8** %8, align 8, !dbg !300
  %61 = load %struct.Message_Channel*, %struct.Message_Channel** %7, align 8, !dbg !301
  %62 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %61, i32 0, i32 1, !dbg !302
  store i8* %60, i8** %62, align 8, !dbg !303
  %63 = load i64, i64* %9, align 8, !dbg !304
  %64 = load %struct.Message_Channel*, %struct.Message_Channel** %7, align 8, !dbg !305
  %65 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %64, i32 0, i32 2, !dbg !306
  store i64 %63, i64* %65, align 8, !dbg !307
  %66 = load i8*, i8** %8, align 8, !dbg !308
  %67 = icmp ne i8* %66, null, !dbg !309
  %68 = zext i1 %67 to i32, !dbg !309
  %69 = trunc i32 %68 to i8, !dbg !308
  %70 = load %struct.Message_Channel*, %struct.Message_Channel** %7, align 8, !dbg !310
  %71 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %70, i32 0, i32 3, !dbg !311
  store i8 %69, i8* %71, align 8, !dbg !312
  store i8 1, i8* %5, align 1, !dbg !313
  br label %72, !dbg !313

; <label>:72:                                     ; preds = %40, %39
  %73 = load i8, i8* %5, align 1, !dbg !314
  ret i8 %73, !dbg !314
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @Backdoor(%union.Backdoor_proto*) #2

; Function Attrs: nounwind uwtable
define %struct.Message_Channel* @Message_Open(i32) #0 !dbg !315 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Message_Channel*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !318, metadata !55), !dbg !319
  call void @llvm.dbg.declare(metadata %struct.Message_Channel** %3, metadata !320, metadata !55), !dbg !321
  %4 = call noalias i8* @malloc(i64 40) #4, !dbg !322
  %5 = bitcast i8* %4 to %struct.Message_Channel*, !dbg !322
  store %struct.Message_Channel* %5, %struct.Message_Channel** %3, align 8, !dbg !321
  %6 = load %struct.Message_Channel*, %struct.Message_Channel** %3, align 8, !dbg !323
  %7 = icmp ne %struct.Message_Channel* %6, null, !dbg !325
  br i1 %7, label %8, label %16, !dbg !326

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %2, align 4, !dbg !327
  %10 = load %struct.Message_Channel*, %struct.Message_Channel** %3, align 8, !dbg !329
  %11 = call signext i8 @Message_OpenAllocated(i32 %9, %struct.Message_Channel* %10, i8* null, i64 0), !dbg !330
  %12 = icmp ne i8 %11, 0, !dbg !330
  br i1 %12, label %16, label %13, !dbg !331

; <label>:13:                                     ; preds = %8
  %14 = load %struct.Message_Channel*, %struct.Message_Channel** %3, align 8, !dbg !332
  %15 = bitcast %struct.Message_Channel* %14 to i8*, !dbg !332
  call void @free(i8* %15) #4, !dbg !334
  store %struct.Message_Channel* null, %struct.Message_Channel** %3, align 8, !dbg !335
  br label %16, !dbg !336

; <label>:16:                                     ; preds = %13, %8, %1
  %17 = load %struct.Message_Channel*, %struct.Message_Channel** %3, align 8, !dbg !337
  ret %struct.Message_Channel* %17, !dbg !338
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define signext i8 @Message_Send(%struct.Message_Channel*, i8*, i64) #0 !dbg !339 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.Message_Channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.Backdoor_proto, align 8
  %11 = alloca %union.Backdoor_proto_hb, align 8
  store %struct.Message_Channel* %0, %struct.Message_Channel** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.Message_Channel** %5, metadata !344, metadata !55), !dbg !345
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !346, metadata !55), !dbg !347
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !348, metadata !55), !dbg !349
  call void @llvm.dbg.declare(metadata i8** %8, metadata !350, metadata !55), !dbg !351
  call void @llvm.dbg.declare(metadata i64* %9, metadata !352, metadata !55), !dbg !353
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %10, metadata !354, metadata !55), !dbg !355
  br label %12, !dbg !356

; <label>:12:                                     ; preds = %230, %118, %3
  %13 = load i8*, i8** %6, align 8, !dbg !357
  store i8* %13, i8** %8, align 8, !dbg !358
  %14 = load i64, i64* %7, align 8, !dbg !359
  store i64 %14, i64* %9, align 8, !dbg !360
  %15 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !361
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 2, !dbg !362
  %17 = bitcast %union.anon.2* %16 to %struct.anon.3*, !dbg !363
  %18 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %17, i32 0, i32 1, !dbg !364
  store i16 1, i16* %18, align 2, !dbg !365
  %19 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !366
  %20 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %19, i32 0, i32 0, !dbg !367
  %21 = load i16, i16* %20, align 8, !dbg !367
  %22 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !368
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 3, !dbg !369
  %24 = bitcast %union.anon.5* %23 to %struct.anon.6*, !dbg !370
  %25 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %24, i32 0, i32 1, !dbg !371
  store i16 %21, i16* %25, align 2, !dbg !372
  %26 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !373
  %27 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %26, i32 0, i32 4, !dbg !374
  %28 = load i32, i32* %27, align 4, !dbg !374
  %29 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !375
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 4, !dbg !376
  %31 = bitcast %union.anon.8* %30 to i32*, !dbg !377
  store i32 %28, i32* %31, align 8, !dbg !378
  %32 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !379
  %33 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %32, i32 0, i32 5, !dbg !380
  %34 = load i32, i32* %33, align 8, !dbg !380
  %35 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !381
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 5, !dbg !382
  %37 = bitcast %union.anon.11* %36 to i32*, !dbg !383
  store i32 %34, i32* %37, align 8, !dbg !384
  %38 = load i64, i64* %9, align 8, !dbg !385
  %39 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !386
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 1, !dbg !387
  store i64 %38, i64* %40, align 8, !dbg !388
  %41 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !389
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 2, !dbg !390
  %43 = bitcast %union.anon.2* %42 to %struct.anon.3*, !dbg !391
  %44 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %43, i32 0, i32 0, !dbg !392
  store i16 30, i16* %44, align 8, !dbg !393
  call void @Backdoor(%union.Backdoor_proto* %10), !dbg !394
  %45 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !395
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 2, !dbg !397
  %47 = bitcast %union.anon.2* %46 to %struct.anon.3*, !dbg !398
  %48 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %47, i32 0, i32 1, !dbg !399
  %49 = load i16, i16* %48, align 2, !dbg !399
  %50 = zext i16 %49 to i32, !dbg !400
  %51 = and i32 %50, 1, !dbg !401
  %52 = icmp eq i32 %51, 0, !dbg !402
  br i1 %52, label %53, label %54, !dbg !403

; <label>:53:                                     ; preds = %12
  store i8 0, i8* %4, align 1, !dbg !404
  br label %237, !dbg !404

; <label>:54:                                     ; preds = %12
  %55 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !406
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 2, !dbg !408
  %57 = bitcast %union.anon.2* %56 to %struct.anon.3*, !dbg !409
  %58 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %57, i32 0, i32 1, !dbg !410
  %59 = load i16, i16* %58, align 2, !dbg !410
  %60 = zext i16 %59 to i32, !dbg !411
  %61 = and i32 %60, 128, !dbg !412
  %62 = icmp ne i32 %61, 0, !dbg !412
  br i1 %62, label %63, label %122, !dbg !413

; <label>:63:                                     ; preds = %54
  %64 = load i64, i64* %9, align 8, !dbg !414
  %65 = icmp ne i64 %64, 0, !dbg !414
  br i1 %65, label %66, label %121, !dbg !417

; <label>:66:                                     ; preds = %63
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto_hb* %11, metadata !418, metadata !55), !dbg !597
  %67 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !598
  %68 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %67, i32 0, i32 1, !dbg !599
  %69 = bitcast %union.anon.37* %68 to %struct.anon.38*, !dbg !600
  %70 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %69, i32 0, i32 0, !dbg !601
  store i16 0, i16* %70, align 8, !dbg !602
  %71 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !603
  %72 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %71, i32 0, i32 1, !dbg !604
  %73 = bitcast %union.anon.37* %72 to %struct.anon.38*, !dbg !605
  %74 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %73, i32 0, i32 1, !dbg !606
  store i16 1, i16* %74, align 2, !dbg !607
  %75 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !608
  %76 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %75, i32 0, i32 0, !dbg !609
  %77 = load i16, i16* %76, align 8, !dbg !609
  %78 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !610
  %79 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %78, i32 0, i32 3, !dbg !611
  %80 = bitcast %union.anon.40* %79 to %struct.anon.41*, !dbg !612
  %81 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %80, i32 0, i32 1, !dbg !613
  store i16 %77, i16* %81, align 2, !dbg !614
  %82 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !615
  %83 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %82, i32 0, i32 4, !dbg !616
  %84 = load i32, i32* %83, align 4, !dbg !616
  %85 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !617
  %86 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %85, i32 0, i32 6, !dbg !618
  %87 = bitcast %union.anon.43* %86 to i32*, !dbg !619
  store i32 %84, i32* %87, align 8, !dbg !620
  %88 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !621
  %89 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %88, i32 0, i32 5, !dbg !622
  %90 = load i32, i32* %89, align 8, !dbg !622
  %91 = zext i32 %90 to i64, !dbg !621
  %92 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !623
  %93 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %92, i32 0, i32 5, !dbg !624
  store i64 %91, i64* %93, align 8, !dbg !625
  %94 = load i64, i64* %9, align 8, !dbg !626
  %95 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !627
  %96 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %95, i32 0, i32 2, !dbg !628
  store i64 %94, i64* %96, align 8, !dbg !629
  %97 = load i8*, i8** %8, align 8, !dbg !630
  %98 = ptrtoint i8* %97 to i64, !dbg !631
  %99 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !632
  %100 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %99, i32 0, i32 4, !dbg !633
  store i64 %98, i64* %100, align 8, !dbg !634
  call void @Backdoor_HbOut(%union.Backdoor_proto_hb* %11), !dbg !635
  %101 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !636
  %102 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %101, i32 0, i32 1, !dbg !638
  %103 = bitcast %union.anon.37* %102 to %struct.anon.38*, !dbg !639
  %104 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %103, i32 0, i32 1, !dbg !640
  %105 = load i16, i16* %104, align 2, !dbg !640
  %106 = zext i16 %105 to i32, !dbg !641
  %107 = and i32 %106, 1, !dbg !642
  %108 = icmp eq i32 %107, 0, !dbg !643
  br i1 %108, label %109, label %120, !dbg !644

; <label>:109:                                    ; preds = %66
  %110 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !645
  %111 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %110, i32 0, i32 1, !dbg !648
  %112 = bitcast %union.anon.37* %111 to %struct.anon.38*, !dbg !649
  %113 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %112, i32 0, i32 1, !dbg !650
  %114 = load i16, i16* %113, align 2, !dbg !650
  %115 = zext i16 %114 to i32, !dbg !651
  %116 = and i32 %115, 16, !dbg !652
  %117 = icmp ne i32 %116, 0, !dbg !653
  br i1 %117, label %118, label %119, !dbg !654

; <label>:118:                                    ; preds = %109
  br label %12, !dbg !655

; <label>:119:                                    ; preds = %109
  store i8 0, i8* %4, align 1, !dbg !657
  br label %237, !dbg !657

; <label>:120:                                    ; preds = %66
  br label %121, !dbg !658

; <label>:121:                                    ; preds = %120, %63
  br label %236, !dbg !659

; <label>:122:                                    ; preds = %54
  br label %123, !dbg !660

; <label>:123:                                    ; preds = %232, %122
  %124 = load i64, i64* %9, align 8, !dbg !662
  %125 = icmp eq i64 %124, 0, !dbg !667
  br i1 %125, label %126, label %127, !dbg !668

; <label>:126:                                    ; preds = %123
  br label %235, !dbg !669

; <label>:127:                                    ; preds = %123
  %128 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !671
  %129 = getelementptr inbounds %struct.anon, %struct.anon* %128, i32 0, i32 2, !dbg !672
  %130 = bitcast %union.anon.2* %129 to %struct.anon.3*, !dbg !673
  %131 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %130, i32 0, i32 1, !dbg !674
  store i16 2, i16* %131, align 2, !dbg !675
  %132 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !676
  %133 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %132, i32 0, i32 0, !dbg !677
  %134 = load i16, i16* %133, align 8, !dbg !677
  %135 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !678
  %136 = getelementptr inbounds %struct.anon, %struct.anon* %135, i32 0, i32 3, !dbg !679
  %137 = bitcast %union.anon.5* %136 to %struct.anon.6*, !dbg !680
  %138 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %137, i32 0, i32 1, !dbg !681
  store i16 %134, i16* %138, align 2, !dbg !682
  %139 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !683
  %140 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %139, i32 0, i32 4, !dbg !684
  %141 = load i32, i32* %140, align 4, !dbg !684
  %142 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !685
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 4, !dbg !686
  %144 = bitcast %union.anon.8* %143 to i32*, !dbg !687
  store i32 %141, i32* %144, align 8, !dbg !688
  %145 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !689
  %146 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %145, i32 0, i32 5, !dbg !690
  %147 = load i32, i32* %146, align 8, !dbg !690
  %148 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !691
  %149 = getelementptr inbounds %struct.anon, %struct.anon* %148, i32 0, i32 5, !dbg !692
  %150 = bitcast %union.anon.11* %149 to i32*, !dbg !693
  store i32 %147, i32* %150, align 8, !dbg !694
  %151 = load i64, i64* %9, align 8, !dbg !695
  switch i64 %151, label %199 [
    i64 1, label %152
    i64 2, label %161
    i64 3, label %177
  ], !dbg !696

; <label>:152:                                    ; preds = %127
  %153 = load i8*, i8** %8, align 8, !dbg !697
  %154 = getelementptr inbounds i8, i8* %153, i64 0, !dbg !697
  %155 = load i8, i8* %154, align 1, !dbg !697
  %156 = zext i8 %155 to i64, !dbg !697
  %157 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !699
  %158 = getelementptr inbounds %struct.anon, %struct.anon* %157, i32 0, i32 1, !dbg !700
  store i64 %156, i64* %158, align 8, !dbg !701
  %159 = load i64, i64* %9, align 8, !dbg !702
  %160 = sub i64 %159, 1, !dbg !702
  store i64 %160, i64* %9, align 8, !dbg !702
  br label %208, !dbg !703

; <label>:161:                                    ; preds = %127
  %162 = load i8*, i8** %8, align 8, !dbg !704
  %163 = getelementptr inbounds i8, i8* %162, i64 0, !dbg !704
  %164 = load i8, i8* %163, align 1, !dbg !704
  %165 = zext i8 %164 to i32, !dbg !704
  %166 = load i8*, i8** %8, align 8, !dbg !705
  %167 = getelementptr inbounds i8, i8* %166, i64 1, !dbg !705
  %168 = load i8, i8* %167, align 1, !dbg !705
  %169 = zext i8 %168 to i32, !dbg !705
  %170 = shl i32 %169, 8, !dbg !706
  %171 = or i32 %165, %170, !dbg !707
  %172 = sext i32 %171 to i64, !dbg !704
  %173 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !708
  %174 = getelementptr inbounds %struct.anon, %struct.anon* %173, i32 0, i32 1, !dbg !709
  store i64 %172, i64* %174, align 8, !dbg !710
  %175 = load i64, i64* %9, align 8, !dbg !711
  %176 = sub i64 %175, 2, !dbg !711
  store i64 %176, i64* %9, align 8, !dbg !711
  br label %208, !dbg !712

; <label>:177:                                    ; preds = %127
  %178 = load i8*, i8** %8, align 8, !dbg !713
  %179 = getelementptr inbounds i8, i8* %178, i64 0, !dbg !713
  %180 = load i8, i8* %179, align 1, !dbg !713
  %181 = zext i8 %180 to i32, !dbg !713
  %182 = load i8*, i8** %8, align 8, !dbg !714
  %183 = getelementptr inbounds i8, i8* %182, i64 1, !dbg !714
  %184 = load i8, i8* %183, align 1, !dbg !714
  %185 = zext i8 %184 to i32, !dbg !714
  %186 = shl i32 %185, 8, !dbg !715
  %187 = or i32 %181, %186, !dbg !716
  %188 = load i8*, i8** %8, align 8, !dbg !717
  %189 = getelementptr inbounds i8, i8* %188, i64 2, !dbg !717
  %190 = load i8, i8* %189, align 1, !dbg !717
  %191 = zext i8 %190 to i32, !dbg !717
  %192 = shl i32 %191, 16, !dbg !718
  %193 = or i32 %187, %192, !dbg !719
  %194 = sext i32 %193 to i64, !dbg !713
  %195 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !720
  %196 = getelementptr inbounds %struct.anon, %struct.anon* %195, i32 0, i32 1, !dbg !721
  store i64 %194, i64* %196, align 8, !dbg !722
  %197 = load i64, i64* %9, align 8, !dbg !723
  %198 = sub i64 %197, 3, !dbg !723
  store i64 %198, i64* %9, align 8, !dbg !723
  br label %208, !dbg !724

; <label>:199:                                    ; preds = %127
  %200 = load i8*, i8** %8, align 8, !dbg !725
  %201 = bitcast i8* %200 to i32*, !dbg !726
  %202 = load i32, i32* %201, align 4, !dbg !726
  %203 = zext i32 %202 to i64, !dbg !726
  %204 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !727
  %205 = getelementptr inbounds %struct.anon, %struct.anon* %204, i32 0, i32 1, !dbg !728
  store i64 %203, i64* %205, align 8, !dbg !729
  %206 = load i64, i64* %9, align 8, !dbg !730
  %207 = sub i64 %206, 4, !dbg !730
  store i64 %207, i64* %9, align 8, !dbg !730
  br label %208, !dbg !731

; <label>:208:                                    ; preds = %199, %177, %161, %152
  %209 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !732
  %210 = getelementptr inbounds %struct.anon, %struct.anon* %209, i32 0, i32 2, !dbg !733
  %211 = bitcast %union.anon.2* %210 to %struct.anon.3*, !dbg !734
  %212 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %211, i32 0, i32 0, !dbg !735
  store i16 30, i16* %212, align 8, !dbg !736
  call void @Backdoor(%union.Backdoor_proto* %10), !dbg !737
  %213 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !738
  %214 = getelementptr inbounds %struct.anon, %struct.anon* %213, i32 0, i32 2, !dbg !740
  %215 = bitcast %union.anon.2* %214 to %struct.anon.3*, !dbg !741
  %216 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %215, i32 0, i32 1, !dbg !742
  %217 = load i16, i16* %216, align 2, !dbg !742
  %218 = zext i16 %217 to i32, !dbg !743
  %219 = and i32 %218, 1, !dbg !744
  %220 = icmp eq i32 %219, 0, !dbg !745
  br i1 %220, label %221, label %232, !dbg !746

; <label>:221:                                    ; preds = %208
  %222 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !747
  %223 = getelementptr inbounds %struct.anon, %struct.anon* %222, i32 0, i32 2, !dbg !750
  %224 = bitcast %union.anon.2* %223 to %struct.anon.3*, !dbg !751
  %225 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %224, i32 0, i32 1, !dbg !752
  %226 = load i16, i16* %225, align 2, !dbg !752
  %227 = zext i16 %226 to i32, !dbg !753
  %228 = and i32 %227, 16, !dbg !754
  %229 = icmp ne i32 %228, 0, !dbg !755
  br i1 %229, label %230, label %231, !dbg !756

; <label>:230:                                    ; preds = %221
  br label %12, !dbg !757

; <label>:231:                                    ; preds = %221
  store i8 0, i8* %4, align 1, !dbg !759
  br label %237, !dbg !759

; <label>:232:                                    ; preds = %208
  %233 = load i8*, i8** %8, align 8, !dbg !760
  %234 = getelementptr inbounds i8, i8* %233, i64 4, !dbg !760
  store i8* %234, i8** %8, align 8, !dbg !760
  br label %123, !dbg !761, !llvm.loop !763

; <label>:235:                                    ; preds = %126
  br label %236

; <label>:236:                                    ; preds = %235, %121
  store i8 1, i8* %4, align 1, !dbg !764
  br label %237, !dbg !764

; <label>:237:                                    ; preds = %236, %231, %119, %53
  %238 = load i8, i8* %4, align 1, !dbg !765
  ret i8 %238, !dbg !765
}

declare void @Backdoor_HbOut(%union.Backdoor_proto_hb*) #2

; Function Attrs: nounwind uwtable
define signext i8 @Message_Receive(%struct.Message_Channel*, i8**, i64*) #0 !dbg !766 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.Message_Channel*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %union.Backdoor_proto, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %union.Backdoor_proto_hb, align 8
  store %struct.Message_Channel* %0, %struct.Message_Channel** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.Message_Channel** %5, metadata !771, metadata !55), !dbg !772
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !773, metadata !55), !dbg !774
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !775, metadata !55), !dbg !776
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %8, metadata !777, metadata !55), !dbg !778
  call void @llvm.dbg.declare(metadata i64* %9, metadata !779, metadata !55), !dbg !780
  call void @llvm.dbg.declare(metadata i8** %10, metadata !781, metadata !55), !dbg !782
  br label %12, !dbg !783

; <label>:12:                                     ; preds = %376, %235, %178, %3
  %13 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !784
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 2, !dbg !785
  %15 = bitcast %union.anon.2* %14 to %struct.anon.3*, !dbg !786
  %16 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %15, i32 0, i32 1, !dbg !787
  store i16 3, i16* %16, align 2, !dbg !788
  %17 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !789
  %18 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %17, i32 0, i32 0, !dbg !790
  %19 = load i16, i16* %18, align 8, !dbg !790
  %20 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !791
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 3, !dbg !792
  %22 = bitcast %union.anon.5* %21 to %struct.anon.6*, !dbg !793
  %23 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %22, i32 0, i32 1, !dbg !794
  store i16 %19, i16* %23, align 2, !dbg !795
  %24 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !796
  %25 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %24, i32 0, i32 4, !dbg !797
  %26 = load i32, i32* %25, align 4, !dbg !797
  %27 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !798
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 4, !dbg !799
  %29 = bitcast %union.anon.8* %28 to i32*, !dbg !800
  store i32 %26, i32* %29, align 8, !dbg !801
  %30 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !802
  %31 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %30, i32 0, i32 5, !dbg !803
  %32 = load i32, i32* %31, align 8, !dbg !803
  %33 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !804
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 5, !dbg !805
  %35 = bitcast %union.anon.11* %34 to i32*, !dbg !806
  store i32 %32, i32* %35, align 8, !dbg !807
  %36 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !808
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 2, !dbg !809
  %38 = bitcast %union.anon.2* %37 to %struct.anon.3*, !dbg !810
  %39 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %38, i32 0, i32 0, !dbg !811
  store i16 30, i16* %39, align 8, !dbg !812
  call void @Backdoor(%union.Backdoor_proto* %8), !dbg !813
  %40 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !814
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 2, !dbg !816
  %42 = bitcast %union.anon.2* %41 to %struct.anon.3*, !dbg !817
  %43 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %42, i32 0, i32 1, !dbg !818
  %44 = load i16, i16* %43, align 2, !dbg !818
  %45 = zext i16 %44 to i32, !dbg !819
  %46 = and i32 %45, 1, !dbg !820
  %47 = icmp eq i32 %46, 0, !dbg !821
  br i1 %47, label %48, label %49, !dbg !822

; <label>:48:                                     ; preds = %12
  store i8 0, i8* %4, align 1, !dbg !823
  br label %429, !dbg !823

; <label>:49:                                     ; preds = %12
  %50 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !825
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 2, !dbg !827
  %52 = bitcast %union.anon.2* %51 to %struct.anon.3*, !dbg !828
  %53 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %52, i32 0, i32 1, !dbg !829
  %54 = load i16, i16* %53, align 2, !dbg !829
  %55 = zext i16 %54 to i32, !dbg !830
  %56 = and i32 %55, 2, !dbg !831
  %57 = icmp eq i32 %56, 0, !dbg !832
  br i1 %57, label %58, label %60, !dbg !833

; <label>:58:                                     ; preds = %49
  %59 = load i64*, i64** %7, align 8, !dbg !834
  store i64 0, i64* %59, align 8, !dbg !836
  store i8 1, i8* %4, align 1, !dbg !837
  br label %429, !dbg !837

; <label>:60:                                     ; preds = %49
  %61 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !838
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 3, !dbg !840
  %63 = bitcast %union.anon.5* %62 to %struct.anon.6*, !dbg !841
  %64 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %63, i32 0, i32 1, !dbg !842
  %65 = load i16, i16* %64, align 2, !dbg !842
  %66 = zext i16 %65 to i32, !dbg !843
  %67 = icmp ne i32 %66, 1, !dbg !844
  br i1 %67, label %68, label %69, !dbg !845

; <label>:68:                                     ; preds = %60
  store i8 0, i8* %4, align 1, !dbg !846
  br label %429, !dbg !846

; <label>:69:                                     ; preds = %60
  %70 = bitcast %union.Backdoor_proto* %8 to %struct.anon.14*, !dbg !848
  %71 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %70, i32 0, i32 1, !dbg !849
  %72 = bitcast %union.anon.18* %71 to i32*, !dbg !850
  %73 = load i32, i32* %72, align 8, !dbg !850
  %74 = zext i32 %73 to i64, !dbg !851
  store i64 %74, i64* %9, align 8, !dbg !852
  %75 = load i64, i64* %9, align 8, !dbg !853
  %76 = add i64 %75, 1, !dbg !855
  %77 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !856
  %78 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %77, i32 0, i32 2, !dbg !857
  %79 = load i64, i64* %78, align 8, !dbg !857
  %80 = icmp ugt i64 %76, %79, !dbg !858
  br i1 %80, label %81, label %108, !dbg !859

; <label>:81:                                     ; preds = %69
  %82 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !860
  %83 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %82, i32 0, i32 3, !dbg !863
  %84 = load i8, i8* %83, align 8, !dbg !863
  %85 = icmp ne i8 %84, 0, !dbg !860
  br i1 %85, label %86, label %88, !dbg !864

; <label>:86:                                     ; preds = %81
  %87 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !865
  br label %380, !dbg !867

; <label>:88:                                     ; preds = %81
  %89 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !868
  %90 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %89, i32 0, i32 1, !dbg !870
  %91 = load i8*, i8** %90, align 8, !dbg !870
  %92 = load i64, i64* %9, align 8, !dbg !871
  %93 = add i64 %92, 1, !dbg !872
  %94 = call i8* @realloc(i8* %91, i64 %93) #4, !dbg !873
  store i8* %94, i8** %10, align 8, !dbg !874
  %95 = load i8*, i8** %10, align 8, !dbg !875
  %96 = icmp eq i8* %95, null, !dbg !877
  br i1 %96, label %97, label %99, !dbg !878

; <label>:97:                                     ; preds = %88
  %98 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !879
  br label %380, !dbg !881

; <label>:99:                                     ; preds = %88
  %100 = load i8*, i8** %10, align 8, !dbg !882
  %101 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !883
  %102 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %101, i32 0, i32 1, !dbg !884
  store i8* %100, i8** %102, align 8, !dbg !885
  %103 = load i64, i64* %9, align 8, !dbg !886
  %104 = add i64 %103, 1, !dbg !887
  %105 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !888
  %106 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %105, i32 0, i32 2, !dbg !889
  store i64 %104, i64* %106, align 8, !dbg !890
  br label %107

; <label>:107:                                    ; preds = %99
  br label %108, !dbg !891

; <label>:108:                                    ; preds = %107, %69
  %109 = load i64, i64* %9, align 8, !dbg !892
  %110 = load i64*, i64** %7, align 8, !dbg !893
  store i64 %109, i64* %110, align 8, !dbg !894
  %111 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !895
  %112 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %111, i32 0, i32 1, !dbg !896
  %113 = load i8*, i8** %112, align 8, !dbg !896
  %114 = load i8**, i8*** %6, align 8, !dbg !897
  store i8* %113, i8** %114, align 8, !dbg !898
  store i8* %113, i8** %10, align 8, !dbg !899
  %115 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !900
  %116 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 2, !dbg !902
  %117 = bitcast %union.anon.2* %116 to %struct.anon.3*, !dbg !903
  %118 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %117, i32 0, i32 1, !dbg !904
  %119 = load i16, i16* %118, align 2, !dbg !904
  %120 = zext i16 %119 to i32, !dbg !905
  %121 = and i32 %120, 128, !dbg !906
  %122 = icmp ne i32 %121, 0, !dbg !906
  br i1 %122, label %123, label %183, !dbg !907

; <label>:123:                                    ; preds = %108
  %124 = load i64, i64* %9, align 8, !dbg !908
  %125 = icmp ne i64 %124, 0, !dbg !908
  br i1 %125, label %126, label %182, !dbg !911

; <label>:126:                                    ; preds = %123
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto_hb* %11, metadata !912, metadata !55), !dbg !914
  %127 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !915
  %128 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %127, i32 0, i32 1, !dbg !916
  %129 = bitcast %union.anon.37* %128 to %struct.anon.38*, !dbg !917
  %130 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %129, i32 0, i32 0, !dbg !918
  store i16 0, i16* %130, align 8, !dbg !919
  %131 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !920
  %132 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %131, i32 0, i32 1, !dbg !921
  %133 = bitcast %union.anon.37* %132 to %struct.anon.38*, !dbg !922
  %134 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %133, i32 0, i32 1, !dbg !923
  store i16 1, i16* %134, align 2, !dbg !924
  %135 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !925
  %136 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %135, i32 0, i32 0, !dbg !926
  %137 = load i16, i16* %136, align 8, !dbg !926
  %138 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !927
  %139 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %138, i32 0, i32 3, !dbg !928
  %140 = bitcast %union.anon.40* %139 to %struct.anon.41*, !dbg !929
  %141 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %140, i32 0, i32 1, !dbg !930
  store i16 %137, i16* %141, align 2, !dbg !931
  %142 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !932
  %143 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %142, i32 0, i32 4, !dbg !933
  %144 = load i32, i32* %143, align 4, !dbg !933
  %145 = zext i32 %144 to i64, !dbg !932
  %146 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !934
  %147 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %146, i32 0, i32 4, !dbg !935
  store i64 %145, i64* %147, align 8, !dbg !936
  %148 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !937
  %149 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %148, i32 0, i32 5, !dbg !938
  %150 = load i32, i32* %149, align 8, !dbg !938
  %151 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !939
  %152 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %151, i32 0, i32 6, !dbg !940
  %153 = bitcast %union.anon.43* %152 to i32*, !dbg !941
  store i32 %150, i32* %153, align 8, !dbg !942
  %154 = load i64, i64* %9, align 8, !dbg !943
  %155 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !944
  %156 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %155, i32 0, i32 2, !dbg !945
  store i64 %154, i64* %156, align 8, !dbg !946
  %157 = load i8*, i8** %10, align 8, !dbg !947
  %158 = ptrtoint i8* %157 to i64, !dbg !948
  %159 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !949
  %160 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %159, i32 0, i32 5, !dbg !950
  store i64 %158, i64* %160, align 8, !dbg !951
  call void @Backdoor_HbIn(%union.Backdoor_proto_hb* %11), !dbg !952
  %161 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !953
  %162 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %161, i32 0, i32 1, !dbg !955
  %163 = bitcast %union.anon.37* %162 to %struct.anon.38*, !dbg !956
  %164 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %163, i32 0, i32 1, !dbg !957
  %165 = load i16, i16* %164, align 2, !dbg !957
  %166 = zext i16 %165 to i32, !dbg !958
  %167 = and i32 %166, 1, !dbg !959
  %168 = icmp eq i32 %167, 0, !dbg !960
  br i1 %168, label %169, label %181, !dbg !961

; <label>:169:                                    ; preds = %126
  %170 = bitcast %union.Backdoor_proto_hb* %11 to %struct.anon.33*, !dbg !962
  %171 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %170, i32 0, i32 1, !dbg !965
  %172 = bitcast %union.anon.37* %171 to %struct.anon.38*, !dbg !966
  %173 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %172, i32 0, i32 1, !dbg !967
  %174 = load i16, i16* %173, align 2, !dbg !967
  %175 = zext i16 %174 to i32, !dbg !968
  %176 = and i32 %175, 16, !dbg !969
  %177 = icmp ne i32 %176, 0, !dbg !970
  br i1 %177, label %178, label %179, !dbg !971

; <label>:178:                                    ; preds = %169
  br label %12, !dbg !972

; <label>:179:                                    ; preds = %169
  %180 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !974
  br label %380, !dbg !975

; <label>:181:                                    ; preds = %126
  br label %182, !dbg !976

; <label>:182:                                    ; preds = %181, %123
  br label %323, !dbg !977

; <label>:183:                                    ; preds = %108
  br label %184, !dbg !978

; <label>:184:                                    ; preds = %319, %183
  %185 = load i64, i64* %9, align 8, !dbg !980
  %186 = icmp eq i64 %185, 0, !dbg !985
  br i1 %186, label %187, label %188, !dbg !986

; <label>:187:                                    ; preds = %184
  br label %322, !dbg !987

; <label>:188:                                    ; preds = %184
  %189 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !989
  %190 = getelementptr inbounds %struct.anon, %struct.anon* %189, i32 0, i32 2, !dbg !990
  %191 = bitcast %union.anon.2* %190 to %struct.anon.3*, !dbg !991
  %192 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %191, i32 0, i32 1, !dbg !992
  store i16 4, i16* %192, align 2, !dbg !993
  %193 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !994
  %194 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %193, i32 0, i32 0, !dbg !995
  %195 = load i16, i16* %194, align 8, !dbg !995
  %196 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !996
  %197 = getelementptr inbounds %struct.anon, %struct.anon* %196, i32 0, i32 3, !dbg !997
  %198 = bitcast %union.anon.5* %197 to %struct.anon.6*, !dbg !998
  %199 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %198, i32 0, i32 1, !dbg !999
  store i16 %195, i16* %199, align 2, !dbg !1000
  %200 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !1001
  %201 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %200, i32 0, i32 4, !dbg !1002
  %202 = load i32, i32* %201, align 4, !dbg !1002
  %203 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1003
  %204 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 4, !dbg !1004
  %205 = bitcast %union.anon.8* %204 to i32*, !dbg !1005
  store i32 %202, i32* %205, align 8, !dbg !1006
  %206 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !1007
  %207 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %206, i32 0, i32 5, !dbg !1008
  %208 = load i32, i32* %207, align 8, !dbg !1008
  %209 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1009
  %210 = getelementptr inbounds %struct.anon, %struct.anon* %209, i32 0, i32 5, !dbg !1010
  %211 = bitcast %union.anon.11* %210 to i32*, !dbg !1011
  store i32 %208, i32* %211, align 8, !dbg !1012
  %212 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1013
  %213 = getelementptr inbounds %struct.anon, %struct.anon* %212, i32 0, i32 1, !dbg !1014
  store i64 1, i64* %213, align 8, !dbg !1015
  %214 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1016
  %215 = getelementptr inbounds %struct.anon, %struct.anon* %214, i32 0, i32 2, !dbg !1017
  %216 = bitcast %union.anon.2* %215 to %struct.anon.3*, !dbg !1018
  %217 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %216, i32 0, i32 0, !dbg !1019
  store i16 30, i16* %217, align 8, !dbg !1020
  call void @Backdoor(%union.Backdoor_proto* %8), !dbg !1021
  %218 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1022
  %219 = getelementptr inbounds %struct.anon, %struct.anon* %218, i32 0, i32 2, !dbg !1024
  %220 = bitcast %union.anon.2* %219 to %struct.anon.3*, !dbg !1025
  %221 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %220, i32 0, i32 1, !dbg !1026
  %222 = load i16, i16* %221, align 2, !dbg !1026
  %223 = zext i16 %222 to i32, !dbg !1027
  %224 = and i32 %223, 1, !dbg !1028
  %225 = icmp eq i32 %224, 0, !dbg !1029
  br i1 %225, label %226, label %238, !dbg !1030

; <label>:226:                                    ; preds = %188
  %227 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1031
  %228 = getelementptr inbounds %struct.anon, %struct.anon* %227, i32 0, i32 2, !dbg !1034
  %229 = bitcast %union.anon.2* %228 to %struct.anon.3*, !dbg !1035
  %230 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %229, i32 0, i32 1, !dbg !1036
  %231 = load i16, i16* %230, align 2, !dbg !1036
  %232 = zext i16 %231 to i32, !dbg !1037
  %233 = and i32 %232, 16, !dbg !1038
  %234 = icmp ne i32 %233, 0, !dbg !1039
  br i1 %234, label %235, label %236, !dbg !1040

; <label>:235:                                    ; preds = %226
  br label %12, !dbg !1041

; <label>:236:                                    ; preds = %226
  %237 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1043
  br label %380, !dbg !1044

; <label>:238:                                    ; preds = %188
  %239 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1045
  %240 = getelementptr inbounds %struct.anon, %struct.anon* %239, i32 0, i32 3, !dbg !1047
  %241 = bitcast %union.anon.5* %240 to %struct.anon.6*, !dbg !1048
  %242 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %241, i32 0, i32 1, !dbg !1049
  %243 = load i16, i16* %242, align 2, !dbg !1049
  %244 = zext i16 %243 to i32, !dbg !1050
  %245 = icmp ne i32 %244, 2, !dbg !1051
  br i1 %245, label %246, label %248, !dbg !1052

; <label>:246:                                    ; preds = %238
  %247 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1053
  br label %380, !dbg !1055

; <label>:248:                                    ; preds = %238
  %249 = load i64, i64* %9, align 8, !dbg !1056
  switch i64 %249, label %310 [
    i64 1, label %250
    i64 2, label %261
    i64 3, label %281
  ], !dbg !1057

; <label>:250:                                    ; preds = %248
  %251 = bitcast %union.Backdoor_proto* %8 to %struct.anon.14*, !dbg !1058
  %252 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %251, i32 0, i32 1, !dbg !1060
  %253 = bitcast %union.anon.18* %252 to i32*, !dbg !1061
  %254 = load i32, i32* %253, align 8, !dbg !1061
  %255 = and i32 %254, 255, !dbg !1062
  %256 = trunc i32 %255 to i8, !dbg !1063
  %257 = load i8*, i8** %10, align 8, !dbg !1064
  %258 = getelementptr inbounds i8, i8* %257, i64 0, !dbg !1064
  store i8 %256, i8* %258, align 1, !dbg !1065
  %259 = load i64, i64* %9, align 8, !dbg !1066
  %260 = sub i64 %259, 1, !dbg !1066
  store i64 %260, i64* %9, align 8, !dbg !1066
  br label %319, !dbg !1067

; <label>:261:                                    ; preds = %248
  %262 = bitcast %union.Backdoor_proto* %8 to %struct.anon.14*, !dbg !1068
  %263 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %262, i32 0, i32 1, !dbg !1069
  %264 = bitcast %union.anon.18* %263 to i32*, !dbg !1070
  %265 = load i32, i32* %264, align 8, !dbg !1070
  %266 = and i32 %265, 255, !dbg !1071
  %267 = trunc i32 %266 to i8, !dbg !1072
  %268 = load i8*, i8** %10, align 8, !dbg !1073
  %269 = getelementptr inbounds i8, i8* %268, i64 0, !dbg !1073
  store i8 %267, i8* %269, align 1, !dbg !1074
  %270 = bitcast %union.Backdoor_proto* %8 to %struct.anon.14*, !dbg !1075
  %271 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %270, i32 0, i32 1, !dbg !1076
  %272 = bitcast %union.anon.18* %271 to i32*, !dbg !1077
  %273 = load i32, i32* %272, align 8, !dbg !1077
  %274 = lshr i32 %273, 8, !dbg !1078
  %275 = and i32 %274, 255, !dbg !1079
  %276 = trunc i32 %275 to i8, !dbg !1080
  %277 = load i8*, i8** %10, align 8, !dbg !1081
  %278 = getelementptr inbounds i8, i8* %277, i64 1, !dbg !1081
  store i8 %276, i8* %278, align 1, !dbg !1082
  %279 = load i64, i64* %9, align 8, !dbg !1083
  %280 = sub i64 %279, 2, !dbg !1083
  store i64 %280, i64* %9, align 8, !dbg !1083
  br label %319, !dbg !1084

; <label>:281:                                    ; preds = %248
  %282 = bitcast %union.Backdoor_proto* %8 to %struct.anon.14*, !dbg !1085
  %283 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %282, i32 0, i32 1, !dbg !1086
  %284 = bitcast %union.anon.18* %283 to i32*, !dbg !1087
  %285 = load i32, i32* %284, align 8, !dbg !1087
  %286 = and i32 %285, 255, !dbg !1088
  %287 = trunc i32 %286 to i8, !dbg !1089
  %288 = load i8*, i8** %10, align 8, !dbg !1090
  %289 = getelementptr inbounds i8, i8* %288, i64 0, !dbg !1090
  store i8 %287, i8* %289, align 1, !dbg !1091
  %290 = bitcast %union.Backdoor_proto* %8 to %struct.anon.14*, !dbg !1092
  %291 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %290, i32 0, i32 1, !dbg !1093
  %292 = bitcast %union.anon.18* %291 to i32*, !dbg !1094
  %293 = load i32, i32* %292, align 8, !dbg !1094
  %294 = lshr i32 %293, 8, !dbg !1095
  %295 = and i32 %294, 255, !dbg !1096
  %296 = trunc i32 %295 to i8, !dbg !1097
  %297 = load i8*, i8** %10, align 8, !dbg !1098
  %298 = getelementptr inbounds i8, i8* %297, i64 1, !dbg !1098
  store i8 %296, i8* %298, align 1, !dbg !1099
  %299 = bitcast %union.Backdoor_proto* %8 to %struct.anon.14*, !dbg !1100
  %300 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %299, i32 0, i32 1, !dbg !1101
  %301 = bitcast %union.anon.18* %300 to i32*, !dbg !1102
  %302 = load i32, i32* %301, align 8, !dbg !1102
  %303 = lshr i32 %302, 16, !dbg !1103
  %304 = and i32 %303, 255, !dbg !1104
  %305 = trunc i32 %304 to i8, !dbg !1105
  %306 = load i8*, i8** %10, align 8, !dbg !1106
  %307 = getelementptr inbounds i8, i8* %306, i64 2, !dbg !1106
  store i8 %305, i8* %307, align 1, !dbg !1107
  %308 = load i64, i64* %9, align 8, !dbg !1108
  %309 = sub i64 %308, 3, !dbg !1108
  store i64 %309, i64* %9, align 8, !dbg !1108
  br label %319, !dbg !1109

; <label>:310:                                    ; preds = %248
  %311 = bitcast %union.Backdoor_proto* %8 to %struct.anon.14*, !dbg !1110
  %312 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %311, i32 0, i32 1, !dbg !1111
  %313 = bitcast %union.anon.18* %312 to i32*, !dbg !1112
  %314 = load i32, i32* %313, align 8, !dbg !1112
  %315 = load i8*, i8** %10, align 8, !dbg !1113
  %316 = bitcast i8* %315 to i32*, !dbg !1114
  store i32 %314, i32* %316, align 4, !dbg !1115
  %317 = load i64, i64* %9, align 8, !dbg !1116
  %318 = sub i64 %317, 4, !dbg !1116
  store i64 %318, i64* %9, align 8, !dbg !1116
  br label %319, !dbg !1117

; <label>:319:                                    ; preds = %310, %281, %261, %250
  %320 = load i8*, i8** %10, align 8, !dbg !1118
  %321 = getelementptr inbounds i8, i8* %320, i64 4, !dbg !1118
  store i8* %321, i8** %10, align 8, !dbg !1118
  br label %184, !dbg !1119, !llvm.loop !1121

; <label>:322:                                    ; preds = %187
  br label %323

; <label>:323:                                    ; preds = %322, %182
  %324 = load i64*, i64** %7, align 8, !dbg !1122
  %325 = load i64, i64* %324, align 8, !dbg !1123
  %326 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !1124
  %327 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %326, i32 0, i32 1, !dbg !1125
  %328 = load i8*, i8** %327, align 8, !dbg !1125
  %329 = getelementptr inbounds i8, i8* %328, i64 %325, !dbg !1124
  store i8 0, i8* %329, align 1, !dbg !1126
  %330 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1127
  %331 = getelementptr inbounds %struct.anon, %struct.anon* %330, i32 0, i32 2, !dbg !1128
  %332 = bitcast %union.anon.2* %331 to %struct.anon.3*, !dbg !1129
  %333 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %332, i32 0, i32 1, !dbg !1130
  store i16 5, i16* %333, align 2, !dbg !1131
  %334 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !1132
  %335 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %334, i32 0, i32 0, !dbg !1133
  %336 = load i16, i16* %335, align 8, !dbg !1133
  %337 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1134
  %338 = getelementptr inbounds %struct.anon, %struct.anon* %337, i32 0, i32 3, !dbg !1135
  %339 = bitcast %union.anon.5* %338 to %struct.anon.6*, !dbg !1136
  %340 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %339, i32 0, i32 1, !dbg !1137
  store i16 %336, i16* %340, align 2, !dbg !1138
  %341 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !1139
  %342 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %341, i32 0, i32 4, !dbg !1140
  %343 = load i32, i32* %342, align 4, !dbg !1140
  %344 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1141
  %345 = getelementptr inbounds %struct.anon, %struct.anon* %344, i32 0, i32 4, !dbg !1142
  %346 = bitcast %union.anon.8* %345 to i32*, !dbg !1143
  store i32 %343, i32* %346, align 8, !dbg !1144
  %347 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !1145
  %348 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %347, i32 0, i32 5, !dbg !1146
  %349 = load i32, i32* %348, align 8, !dbg !1146
  %350 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1147
  %351 = getelementptr inbounds %struct.anon, %struct.anon* %350, i32 0, i32 5, !dbg !1148
  %352 = bitcast %union.anon.11* %351 to i32*, !dbg !1149
  store i32 %349, i32* %352, align 8, !dbg !1150
  %353 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1151
  %354 = getelementptr inbounds %struct.anon, %struct.anon* %353, i32 0, i32 1, !dbg !1152
  store i64 1, i64* %354, align 8, !dbg !1153
  %355 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1154
  %356 = getelementptr inbounds %struct.anon, %struct.anon* %355, i32 0, i32 2, !dbg !1155
  %357 = bitcast %union.anon.2* %356 to %struct.anon.3*, !dbg !1156
  %358 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %357, i32 0, i32 0, !dbg !1157
  store i16 30, i16* %358, align 8, !dbg !1158
  call void @Backdoor(%union.Backdoor_proto* %8), !dbg !1159
  %359 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1160
  %360 = getelementptr inbounds %struct.anon, %struct.anon* %359, i32 0, i32 2, !dbg !1162
  %361 = bitcast %union.anon.2* %360 to %struct.anon.3*, !dbg !1163
  %362 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %361, i32 0, i32 1, !dbg !1164
  %363 = load i16, i16* %362, align 2, !dbg !1164
  %364 = zext i16 %363 to i32, !dbg !1165
  %365 = and i32 %364, 1, !dbg !1166
  %366 = icmp eq i32 %365, 0, !dbg !1167
  br i1 %366, label %367, label %379, !dbg !1168

; <label>:367:                                    ; preds = %323
  %368 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1169
  %369 = getelementptr inbounds %struct.anon, %struct.anon* %368, i32 0, i32 2, !dbg !1172
  %370 = bitcast %union.anon.2* %369 to %struct.anon.3*, !dbg !1173
  %371 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %370, i32 0, i32 1, !dbg !1174
  %372 = load i16, i16* %371, align 2, !dbg !1174
  %373 = zext i16 %372 to i32, !dbg !1175
  %374 = and i32 %373, 16, !dbg !1176
  %375 = icmp ne i32 %374, 0, !dbg !1177
  br i1 %375, label %376, label %377, !dbg !1178

; <label>:376:                                    ; preds = %367
  br label %12, !dbg !1179

; <label>:377:                                    ; preds = %367
  %378 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1181
  br label %380, !dbg !1182

; <label>:379:                                    ; preds = %323
  store i8 1, i8* %4, align 1, !dbg !1183
  br label %429, !dbg !1183

; <label>:380:                                    ; preds = %377, %246, %236, %179, %97, %86
  %381 = load i64, i64* %9, align 8, !dbg !1184
  %382 = icmp eq i64 %381, 0, !dbg !1186
  br i1 %382, label %383, label %388, !dbg !1187

; <label>:383:                                    ; preds = %380
  %384 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1188
  %385 = getelementptr inbounds %struct.anon, %struct.anon* %384, i32 0, i32 2, !dbg !1190
  %386 = bitcast %union.anon.2* %385 to %struct.anon.3*, !dbg !1191
  %387 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %386, i32 0, i32 1, !dbg !1192
  store i16 5, i16* %387, align 2, !dbg !1193
  br label %393, !dbg !1194

; <label>:388:                                    ; preds = %380
  %389 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1195
  %390 = getelementptr inbounds %struct.anon, %struct.anon* %389, i32 0, i32 2, !dbg !1197
  %391 = bitcast %union.anon.2* %390 to %struct.anon.3*, !dbg !1198
  %392 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %391, i32 0, i32 1, !dbg !1199
  store i16 4, i16* %392, align 2, !dbg !1200
  br label %393

; <label>:393:                                    ; preds = %388, %383
  %394 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !1201
  %395 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %394, i32 0, i32 0, !dbg !1202
  %396 = load i16, i16* %395, align 8, !dbg !1202
  %397 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1203
  %398 = getelementptr inbounds %struct.anon, %struct.anon* %397, i32 0, i32 3, !dbg !1204
  %399 = bitcast %union.anon.5* %398 to %struct.anon.6*, !dbg !1205
  %400 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %399, i32 0, i32 1, !dbg !1206
  store i16 %396, i16* %400, align 2, !dbg !1207
  %401 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !1208
  %402 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %401, i32 0, i32 4, !dbg !1209
  %403 = load i32, i32* %402, align 4, !dbg !1209
  %404 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1210
  %405 = getelementptr inbounds %struct.anon, %struct.anon* %404, i32 0, i32 4, !dbg !1211
  %406 = bitcast %union.anon.8* %405 to i32*, !dbg !1212
  store i32 %403, i32* %406, align 8, !dbg !1213
  %407 = load %struct.Message_Channel*, %struct.Message_Channel** %5, align 8, !dbg !1214
  %408 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %407, i32 0, i32 5, !dbg !1215
  %409 = load i32, i32* %408, align 8, !dbg !1215
  %410 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1216
  %411 = getelementptr inbounds %struct.anon, %struct.anon* %410, i32 0, i32 5, !dbg !1217
  %412 = bitcast %union.anon.11* %411 to i32*, !dbg !1218
  store i32 %409, i32* %412, align 8, !dbg !1219
  %413 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1220
  %414 = getelementptr inbounds %struct.anon, %struct.anon* %413, i32 0, i32 1, !dbg !1221
  store i64 0, i64* %414, align 8, !dbg !1222
  %415 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1223
  %416 = getelementptr inbounds %struct.anon, %struct.anon* %415, i32 0, i32 2, !dbg !1224
  %417 = bitcast %union.anon.2* %416 to %struct.anon.3*, !dbg !1225
  %418 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %417, i32 0, i32 0, !dbg !1226
  store i16 30, i16* %418, align 8, !dbg !1227
  call void @Backdoor(%union.Backdoor_proto* %8), !dbg !1228
  %419 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !1229
  %420 = getelementptr inbounds %struct.anon, %struct.anon* %419, i32 0, i32 2, !dbg !1231
  %421 = bitcast %union.anon.2* %420 to %struct.anon.3*, !dbg !1232
  %422 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %421, i32 0, i32 1, !dbg !1233
  %423 = load i16, i16* %422, align 2, !dbg !1233
  %424 = zext i16 %423 to i32, !dbg !1234
  %425 = and i32 %424, 1, !dbg !1235
  %426 = icmp eq i32 %425, 0, !dbg !1236
  br i1 %426, label %427, label %428, !dbg !1237

; <label>:427:                                    ; preds = %393
  store i8 0, i8* %4, align 1, !dbg !1238
  br label %429, !dbg !1238

; <label>:428:                                    ; preds = %393
  store i8 0, i8* %4, align 1, !dbg !1240
  br label %429, !dbg !1240

; <label>:429:                                    ; preds = %428, %427, %379, %68, %58, %48
  %430 = load i8, i8* %4, align 1, !dbg !1241
  ret i8 %430, !dbg !1241
}

declare i32 @assert(...) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

declare void @Backdoor_HbIn(%union.Backdoor_proto_hb*) #2

; Function Attrs: nounwind uwtable
define signext i8 @Message_CloseAllocated(%struct.Message_Channel*) #0 !dbg !1242 {
  %2 = alloca %struct.Message_Channel*, align 8
  %3 = alloca %union.Backdoor_proto, align 8
  %4 = alloca i8, align 1
  store %struct.Message_Channel* %0, %struct.Message_Channel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Message_Channel** %2, metadata !1245, metadata !55), !dbg !1246
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %3, metadata !1247, metadata !55), !dbg !1248
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1249, metadata !55), !dbg !1250
  store i8 1, i8* %4, align 1, !dbg !1250
  %5 = bitcast %union.Backdoor_proto* %3 to %struct.anon*, !dbg !1251
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 2, !dbg !1252
  %7 = bitcast %union.anon.2* %6 to %struct.anon.3*, !dbg !1253
  %8 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %7, i32 0, i32 1, !dbg !1254
  store i16 6, i16* %8, align 2, !dbg !1255
  %9 = load %struct.Message_Channel*, %struct.Message_Channel** %2, align 8, !dbg !1256
  %10 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %9, i32 0, i32 0, !dbg !1257
  %11 = load i16, i16* %10, align 8, !dbg !1257
  %12 = bitcast %union.Backdoor_proto* %3 to %struct.anon*, !dbg !1258
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 3, !dbg !1259
  %14 = bitcast %union.anon.5* %13 to %struct.anon.6*, !dbg !1260
  %15 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %14, i32 0, i32 1, !dbg !1261
  store i16 %11, i16* %15, align 2, !dbg !1262
  %16 = load %struct.Message_Channel*, %struct.Message_Channel** %2, align 8, !dbg !1263
  %17 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %16, i32 0, i32 4, !dbg !1264
  %18 = load i32, i32* %17, align 4, !dbg !1264
  %19 = bitcast %union.Backdoor_proto* %3 to %struct.anon*, !dbg !1265
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 4, !dbg !1266
  %21 = bitcast %union.anon.8* %20 to i32*, !dbg !1267
  store i32 %18, i32* %21, align 8, !dbg !1268
  %22 = load %struct.Message_Channel*, %struct.Message_Channel** %2, align 8, !dbg !1269
  %23 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %22, i32 0, i32 5, !dbg !1270
  %24 = load i32, i32* %23, align 8, !dbg !1270
  %25 = bitcast %union.Backdoor_proto* %3 to %struct.anon*, !dbg !1271
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 5, !dbg !1272
  %27 = bitcast %union.anon.11* %26 to i32*, !dbg !1273
  store i32 %24, i32* %27, align 8, !dbg !1274
  %28 = bitcast %union.Backdoor_proto* %3 to %struct.anon*, !dbg !1275
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 2, !dbg !1276
  %30 = bitcast %union.anon.2* %29 to %struct.anon.3*, !dbg !1277
  %31 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %30, i32 0, i32 0, !dbg !1278
  store i16 30, i16* %31, align 8, !dbg !1279
  call void @Backdoor(%union.Backdoor_proto* %3), !dbg !1280
  %32 = bitcast %union.Backdoor_proto* %3 to %struct.anon*, !dbg !1281
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 2, !dbg !1283
  %34 = bitcast %union.anon.2* %33 to %struct.anon.3*, !dbg !1284
  %35 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %34, i32 0, i32 1, !dbg !1285
  %36 = load i16, i16* %35, align 2, !dbg !1285
  %37 = zext i16 %36 to i32, !dbg !1286
  %38 = and i32 %37, 1, !dbg !1287
  %39 = icmp eq i32 %38, 0, !dbg !1288
  br i1 %39, label %40, label %41, !dbg !1289

; <label>:40:                                     ; preds = %1
  store i8 0, i8* %4, align 1, !dbg !1290
  br label %41, !dbg !1292

; <label>:41:                                     ; preds = %40, %1
  %42 = load %struct.Message_Channel*, %struct.Message_Channel** %2, align 8, !dbg !1293
  %43 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %42, i32 0, i32 3, !dbg !1295
  %44 = load i8, i8* %43, align 8, !dbg !1295
  %45 = icmp ne i8 %44, 0, !dbg !1293
  br i1 %45, label %50, label %46, !dbg !1296

; <label>:46:                                     ; preds = %41
  %47 = load %struct.Message_Channel*, %struct.Message_Channel** %2, align 8, !dbg !1297
  %48 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %47, i32 0, i32 1, !dbg !1299
  %49 = load i8*, i8** %48, align 8, !dbg !1299
  call void @free(i8* %49) #4, !dbg !1300
  br label %50, !dbg !1301

; <label>:50:                                     ; preds = %46, %41
  %51 = load %struct.Message_Channel*, %struct.Message_Channel** %2, align 8, !dbg !1302
  %52 = getelementptr inbounds %struct.Message_Channel, %struct.Message_Channel* %51, i32 0, i32 1, !dbg !1303
  store i8* null, i8** %52, align 8, !dbg !1304
  %53 = load i8, i8* %4, align 1, !dbg !1305
  ret i8 %53, !dbg !1306
}

; Function Attrs: nounwind uwtable
define signext i8 @Message_Close(%struct.Message_Channel*) #0 !dbg !1307 {
  %2 = alloca %struct.Message_Channel*, align 8
  %3 = alloca i8, align 1
  store %struct.Message_Channel* %0, %struct.Message_Channel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Message_Channel** %2, metadata !1308, metadata !55), !dbg !1309
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1310, metadata !55), !dbg !1311
  %4 = load %struct.Message_Channel*, %struct.Message_Channel** %2, align 8, !dbg !1312
  %5 = call signext i8 @Message_CloseAllocated(%struct.Message_Channel* %4), !dbg !1313
  store i8 %5, i8* %3, align 1, !dbg !1311
  %6 = load %struct.Message_Channel*, %struct.Message_Channel** %2, align 8, !dbg !1314
  %7 = bitcast %struct.Message_Channel* %6 to i8*, !dbg !1314
  call void @free(i8* %7) #4, !dbg !1315
  %8 = load i8, i8* %3, align 1, !dbg !1316
  ret i8 %8, !dbg !1317
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13)
!1 = !DIFile(filename: "message.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line531")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guest_msg_def.h", directory: "/home/lichi/Desktop/open-vm-tools/line531")
!5 = !{!6, !7, !8, !9, !10, !11, !12}
!6 = !DIEnumerator(name: "MESSAGE_TYPE_OPEN", value: 0)
!7 = !DIEnumerator(name: "MESSAGE_TYPE_SENDSIZE", value: 1)
!8 = !DIEnumerator(name: "MESSAGE_TYPE_SENDPAYLOAD", value: 2)
!9 = !DIEnumerator(name: "MESSAGE_TYPE_RECVSIZE", value: 3)
!10 = !DIEnumerator(name: "MESSAGE_TYPE_RECVPAYLOAD", value: 4)
!11 = !DIEnumerator(name: "MESSAGE_TYPE_RECVSTATUS", value: 5)
!12 = !DIEnumerator(name: "MESSAGE_TYPE_CLOSE", value: 6)
!13 = !{!14, !16, !17, !20, !26}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !18, line: 122, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line531")
!19 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !23, line: 173, baseType: !24)
!23 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line531")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 51, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!27 = !{i32 2, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!30 = distinct !DISubprogram(name: "Message_OpenAllocated", scope: !31, file: !31, line: 102, type: !32, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !53)
!31 = !DIFile(filename: "message.c", directory: "/home/lichi/Desktop/open-vm-tools/line531")
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !22, !36, !52, !47}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !23, line: 230, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "Message_Channel", file: !38, line: 65, baseType: !39)
!38 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/message.h", directory: "/home/lichi/Desktop/open-vm-tools/line531")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Message_Channel", file: !38, line: 51, size: 320, align: 64, elements: !40)
!40 = !{!41, !45, !46, !49, !50, !51}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !39, file: !38, line: 53, baseType: !42, size: 16, align: 16)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !23, line: 175, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !18, line: 49, baseType: !44)
!44 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !39, file: !38, line: 57, baseType: !14, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "inAlloc", scope: !39, file: !38, line: 59, baseType: !47, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 216, baseType: !19)
!48 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line531")
!49 = !DIDerivedType(tag: DW_TAG_member, name: "inPreallocated", scope: !39, file: !38, line: 60, baseType: !34, size: 8, align: 8, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "cookieHigh", scope: !39, file: !38, line: 63, baseType: !22, size: 32, align: 32, offset: 224)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "cookieLow", scope: !39, file: !38, line: 64, baseType: !22, size: 32, align: 32, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!53 = !{}
!54 = !DILocalVariable(name: "proto", arg: 1, scope: !30, file: !31, line: 102, type: !22)
!55 = !DIExpression()
!56 = !DILocation(line: 102, column: 30, scope: !30)
!57 = !DILocalVariable(name: "chan", arg: 2, scope: !30, file: !31, line: 102, type: !36)
!58 = !DILocation(line: 102, column: 54, scope: !30)
!59 = !DILocalVariable(name: "receiveBuffer", arg: 3, scope: !30, file: !31, line: 103, type: !52)
!60 = !DILocation(line: 103, column: 29, scope: !30)
!61 = !DILocalVariable(name: "receiveBufferSize", arg: 4, scope: !30, file: !31, line: 103, type: !47)
!62 = !DILocation(line: 103, column: 51, scope: !30)
!63 = !DILocalVariable(name: "flags", scope: !30, file: !31, line: 105, type: !22)
!64 = !DILocation(line: 105, column: 11, scope: !30)
!65 = !DILocalVariable(name: "bp", scope: !30, file: !31, line: 106, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "Backdoor_proto", file: !67, line: 102, baseType: !68)
!67 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/backdoor_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line531")
!68 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !67, line: 85, size: 384, align: 64, elements: !69)
!69 = !{!70, !151}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !68, file: !67, line: 93, baseType: !71, size: 384, align: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !68, file: !67, line: 86, size: 384, align: 64, elements: !72)
!72 = !{!73, !90, !91, !106, !121, !136}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !71, file: !67, line: 87, baseType: !74, size: 64, align: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !71, file: !67, line: 87, size: 64, align: 64, elements: !75)
!75 = !{!76, !81, !82, !87}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !74, file: !67, line: 87, baseType: !77, size: 32, align: 16)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !74, file: !67, line: 87, size: 32, align: 16, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !77, file: !67, line: 87, baseType: !42, size: 16, align: 16)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !77, file: !67, line: 87, baseType: !42, size: 16, align: 16, offset: 16)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !74, file: !67, line: 87, baseType: !22, size: 32, align: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !74, file: !67, line: 87, baseType: !83, size: 64, align: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !74, file: !67, line: 87, size: 64, align: 32, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !83, file: !67, line: 87, baseType: !22, size: 32, align: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !83, file: !67, line: 87, baseType: !22, size: 32, align: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !74, file: !67, line: 87, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !23, line: 171, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 55, baseType: !19)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !71, file: !67, line: 88, baseType: !47, size: 64, align: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !71, file: !67, line: 89, baseType: !92, size: 64, align: 64, offset: 128)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !71, file: !67, line: 89, size: 64, align: 64, elements: !93)
!93 = !{!94, !99, !100, !105}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !92, file: !67, line: 89, baseType: !95, size: 32, align: 16)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !67, line: 89, size: 32, align: 16, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !95, file: !67, line: 89, baseType: !42, size: 16, align: 16)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !95, file: !67, line: 89, baseType: !42, size: 16, align: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !92, file: !67, line: 89, baseType: !22, size: 32, align: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !92, file: !67, line: 89, baseType: !101, size: 64, align: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !67, line: 89, size: 64, align: 32, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !101, file: !67, line: 89, baseType: !22, size: 32, align: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !101, file: !67, line: 89, baseType: !22, size: 32, align: 32, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !92, file: !67, line: 89, baseType: !88, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !71, file: !67, line: 90, baseType: !107, size: 64, align: 64, offset: 192)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !71, file: !67, line: 90, size: 64, align: 64, elements: !108)
!108 = !{!109, !114, !115, !120}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !107, file: !67, line: 90, baseType: !110, size: 32, align: 16)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !107, file: !67, line: 90, size: 32, align: 16, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !110, file: !67, line: 90, baseType: !42, size: 16, align: 16)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !110, file: !67, line: 90, baseType: !42, size: 16, align: 16, offset: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !107, file: !67, line: 90, baseType: !22, size: 32, align: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !107, file: !67, line: 90, baseType: !116, size: 64, align: 32)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !107, file: !67, line: 90, size: 64, align: 32, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !116, file: !67, line: 90, baseType: !22, size: 32, align: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !116, file: !67, line: 90, baseType: !22, size: 32, align: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !107, file: !67, line: 90, baseType: !88, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !71, file: !67, line: 91, baseType: !122, size: 64, align: 64, offset: 256)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !71, file: !67, line: 91, size: 64, align: 64, elements: !123)
!123 = !{!124, !129, !130, !135}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !122, file: !67, line: 91, baseType: !125, size: 32, align: 16)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !122, file: !67, line: 91, size: 32, align: 16, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !125, file: !67, line: 91, baseType: !42, size: 16, align: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !125, file: !67, line: 91, baseType: !42, size: 16, align: 16, offset: 16)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !122, file: !67, line: 91, baseType: !22, size: 32, align: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !122, file: !67, line: 91, baseType: !131, size: 64, align: 32)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !122, file: !67, line: 91, size: 64, align: 32, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !131, file: !67, line: 91, baseType: !22, size: 32, align: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !131, file: !67, line: 91, baseType: !22, size: 32, align: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !122, file: !67, line: 91, baseType: !88, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !71, file: !67, line: 92, baseType: !137, size: 64, align: 64, offset: 320)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !71, file: !67, line: 92, size: 64, align: 64, elements: !138)
!138 = !{!139, !144, !145, !150}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !137, file: !67, line: 92, baseType: !140, size: 32, align: 16)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !67, line: 92, size: 32, align: 16, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !140, file: !67, line: 92, baseType: !42, size: 16, align: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !140, file: !67, line: 92, baseType: !42, size: 16, align: 16, offset: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !137, file: !67, line: 92, baseType: !22, size: 32, align: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !137, file: !67, line: 92, baseType: !146, size: 64, align: 32)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !67, line: 92, size: 64, align: 32, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !146, file: !67, line: 92, baseType: !22, size: 32, align: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !146, file: !67, line: 92, baseType: !22, size: 32, align: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !137, file: !67, line: 92, baseType: !88, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !68, file: !67, line: 101, baseType: !152, size: 384, align: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !68, file: !67, line: 94, size: 384, align: 64, elements: !153)
!153 = !{!154, !169, !184, !199, !214, !229}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !152, file: !67, line: 95, baseType: !155, size: 64, align: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !67, line: 95, size: 64, align: 64, elements: !156)
!156 = !{!157, !162, !163, !168}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !155, file: !67, line: 95, baseType: !158, size: 32, align: 16)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !67, line: 95, size: 32, align: 16, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !158, file: !67, line: 95, baseType: !42, size: 16, align: 16)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !158, file: !67, line: 95, baseType: !42, size: 16, align: 16, offset: 16)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !155, file: !67, line: 95, baseType: !22, size: 32, align: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !155, file: !67, line: 95, baseType: !164, size: 64, align: 32)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !67, line: 95, size: 64, align: 32, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !164, file: !67, line: 95, baseType: !22, size: 32, align: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !164, file: !67, line: 95, baseType: !22, size: 32, align: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !155, file: !67, line: 95, baseType: !88, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !152, file: !67, line: 96, baseType: !170, size: 64, align: 64, offset: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !67, line: 96, size: 64, align: 64, elements: !171)
!171 = !{!172, !177, !178, !183}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !170, file: !67, line: 96, baseType: !173, size: 32, align: 16)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !170, file: !67, line: 96, size: 32, align: 16, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !173, file: !67, line: 96, baseType: !42, size: 16, align: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !173, file: !67, line: 96, baseType: !42, size: 16, align: 16, offset: 16)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !170, file: !67, line: 96, baseType: !22, size: 32, align: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !170, file: !67, line: 96, baseType: !179, size: 64, align: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !170, file: !67, line: 96, size: 64, align: 32, elements: !180)
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !179, file: !67, line: 96, baseType: !22, size: 32, align: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !179, file: !67, line: 96, baseType: !22, size: 32, align: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !170, file: !67, line: 96, baseType: !88, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !152, file: !67, line: 97, baseType: !185, size: 64, align: 64, offset: 128)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !67, line: 97, size: 64, align: 64, elements: !186)
!186 = !{!187, !192, !193, !198}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !185, file: !67, line: 97, baseType: !188, size: 32, align: 16)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !67, line: 97, size: 32, align: 16, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !188, file: !67, line: 97, baseType: !42, size: 16, align: 16)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !188, file: !67, line: 97, baseType: !42, size: 16, align: 16, offset: 16)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !185, file: !67, line: 97, baseType: !22, size: 32, align: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !185, file: !67, line: 97, baseType: !194, size: 64, align: 32)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !67, line: 97, size: 64, align: 32, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !194, file: !67, line: 97, baseType: !22, size: 32, align: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !194, file: !67, line: 97, baseType: !22, size: 32, align: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !185, file: !67, line: 97, baseType: !88, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !152, file: !67, line: 98, baseType: !200, size: 64, align: 64, offset: 192)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !67, line: 98, size: 64, align: 64, elements: !201)
!201 = !{!202, !207, !208, !213}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !200, file: !67, line: 98, baseType: !203, size: 32, align: 16)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !67, line: 98, size: 32, align: 16, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !203, file: !67, line: 98, baseType: !42, size: 16, align: 16)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !203, file: !67, line: 98, baseType: !42, size: 16, align: 16, offset: 16)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !200, file: !67, line: 98, baseType: !22, size: 32, align: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !200, file: !67, line: 98, baseType: !209, size: 64, align: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !67, line: 98, size: 64, align: 32, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !209, file: !67, line: 98, baseType: !22, size: 32, align: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !209, file: !67, line: 98, baseType: !22, size: 32, align: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !200, file: !67, line: 98, baseType: !88, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !152, file: !67, line: 99, baseType: !215, size: 64, align: 64, offset: 256)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !67, line: 99, size: 64, align: 64, elements: !216)
!216 = !{!217, !222, !223, !228}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !215, file: !67, line: 99, baseType: !218, size: 32, align: 16)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !67, line: 99, size: 32, align: 16, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !218, file: !67, line: 99, baseType: !42, size: 16, align: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !218, file: !67, line: 99, baseType: !42, size: 16, align: 16, offset: 16)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !215, file: !67, line: 99, baseType: !22, size: 32, align: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !215, file: !67, line: 99, baseType: !224, size: 64, align: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !67, line: 99, size: 64, align: 32, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !224, file: !67, line: 99, baseType: !22, size: 32, align: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !224, file: !67, line: 99, baseType: !22, size: 32, align: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !215, file: !67, line: 99, baseType: !88, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !152, file: !67, line: 100, baseType: !230, size: 64, align: 64, offset: 320)
!230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !67, line: 100, size: 64, align: 64, elements: !231)
!231 = !{!232, !237, !238, !243}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !230, file: !67, line: 100, baseType: !233, size: 32, align: 16)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !230, file: !67, line: 100, size: 32, align: 16, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !233, file: !67, line: 100, baseType: !42, size: 16, align: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !233, file: !67, line: 100, baseType: !42, size: 16, align: 16, offset: 16)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !230, file: !67, line: 100, baseType: !22, size: 32, align: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !230, file: !67, line: 100, baseType: !239, size: 64, align: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !230, file: !67, line: 100, size: 64, align: 32, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !239, file: !67, line: 100, baseType: !22, size: 32, align: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !239, file: !67, line: 100, baseType: !22, size: 32, align: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !230, file: !67, line: 100, baseType: !88, size: 64, align: 64)
!244 = !DILocation(line: 106, column: 19, scope: !30)
!245 = !DILocation(line: 108, column: 10, scope: !30)
!246 = !DILocation(line: 108, column: 4, scope: !30)
!247 = !DILocation(line: 111, column: 7, scope: !30)
!248 = !DILocation(line: 111, column: 10, scope: !30)
!249 = !DILocation(line: 111, column: 13, scope: !30)
!250 = !DILocation(line: 111, column: 19, scope: !30)
!251 = !DILocation(line: 111, column: 24, scope: !30)
!252 = !DILocation(line: 113, column: 17, scope: !30)
!253 = !DILocation(line: 113, column: 25, scope: !30)
!254 = !DILocation(line: 113, column: 23, scope: !30)
!255 = !DILocation(line: 113, column: 7, scope: !30)
!256 = !DILocation(line: 113, column: 10, scope: !30)
!257 = !DILocation(line: 113, column: 15, scope: !30)
!258 = !DILocation(line: 115, column: 7, scope: !30)
!259 = !DILocation(line: 115, column: 10, scope: !30)
!260 = !DILocation(line: 115, column: 13, scope: !30)
!261 = !DILocation(line: 115, column: 19, scope: !30)
!262 = !DILocation(line: 115, column: 23, scope: !30)
!263 = !DILocation(line: 116, column: 4, scope: !30)
!264 = !DILocation(line: 119, column: 12, scope: !265)
!265 = distinct !DILexicalBlock(scope: !30, file: !31, line: 119, column: 8)
!266 = !DILocation(line: 119, column: 15, scope: !265)
!267 = !DILocation(line: 119, column: 18, scope: !265)
!268 = !DILocation(line: 119, column: 24, scope: !265)
!269 = !DILocation(line: 119, column: 9, scope: !265)
!270 = !DILocation(line: 119, column: 29, scope: !265)
!271 = !DILocation(line: 119, column: 39, scope: !265)
!272 = !DILocation(line: 119, column: 8, scope: !30)
!273 = !DILocation(line: 120, column: 11, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !31, line: 120, column: 11)
!275 = distinct !DILexicalBlock(scope: !265, file: !31, line: 119, column: 45)
!276 = !DILocation(line: 120, column: 11, scope: !275)
!277 = !DILocation(line: 122, column: 16, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !31, line: 120, column: 18)
!279 = !DILocation(line: 123, column: 10, scope: !278)
!280 = !DILocation(line: 127, column: 7, scope: !275)
!281 = !DILocation(line: 131, column: 18, scope: !30)
!282 = !DILocation(line: 131, column: 21, scope: !30)
!283 = !DILocation(line: 131, column: 24, scope: !30)
!284 = !DILocation(line: 131, column: 30, scope: !30)
!285 = !DILocation(line: 131, column: 4, scope: !30)
!286 = !DILocation(line: 131, column: 10, scope: !30)
!287 = !DILocation(line: 131, column: 13, scope: !30)
!288 = !DILocation(line: 132, column: 26, scope: !30)
!289 = !DILocation(line: 132, column: 30, scope: !30)
!290 = !DILocation(line: 132, column: 33, scope: !30)
!291 = !DILocation(line: 132, column: 4, scope: !30)
!292 = !DILocation(line: 132, column: 10, scope: !30)
!293 = !DILocation(line: 132, column: 21, scope: !30)
!294 = !DILocation(line: 133, column: 25, scope: !30)
!295 = !DILocation(line: 133, column: 29, scope: !30)
!296 = !DILocation(line: 133, column: 32, scope: !30)
!297 = !DILocation(line: 133, column: 4, scope: !30)
!298 = !DILocation(line: 133, column: 10, scope: !30)
!299 = !DILocation(line: 133, column: 20, scope: !30)
!300 = !DILocation(line: 136, column: 32, scope: !30)
!301 = !DILocation(line: 136, column: 4, scope: !30)
!302 = !DILocation(line: 136, column: 10, scope: !30)
!303 = !DILocation(line: 136, column: 13, scope: !30)
!304 = !DILocation(line: 137, column: 20, scope: !30)
!305 = !DILocation(line: 137, column: 4, scope: !30)
!306 = !DILocation(line: 137, column: 10, scope: !30)
!307 = !DILocation(line: 137, column: 18, scope: !30)
!308 = !DILocation(line: 140, column: 27, scope: !30)
!309 = !DILocation(line: 140, column: 41, scope: !30)
!310 = !DILocation(line: 140, column: 4, scope: !30)
!311 = !DILocation(line: 140, column: 10, scope: !30)
!312 = !DILocation(line: 140, column: 25, scope: !30)
!313 = !DILocation(line: 142, column: 4, scope: !30)
!314 = !DILocation(line: 143, column: 1, scope: !30)
!315 = distinct !DISubprogram(name: "Message_Open", scope: !31, file: !31, line: 164, type: !316, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !53)
!316 = !DISubroutineType(types: !317)
!317 = !{!36, !22}
!318 = !DILocalVariable(name: "proto", arg: 1, scope: !315, file: !31, line: 164, type: !22)
!319 = !DILocation(line: 164, column: 21, scope: !315)
!320 = !DILocalVariable(name: "chan", scope: !315, file: !31, line: 166, type: !36)
!321 = !DILocation(line: 166, column: 21, scope: !315)
!322 = !DILocation(line: 166, column: 28, scope: !315)
!323 = !DILocation(line: 168, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !315, file: !31, line: 168, column: 8)
!325 = !DILocation(line: 168, column: 13, scope: !324)
!326 = !DILocation(line: 168, column: 20, scope: !324)
!327 = !DILocation(line: 168, column: 46, scope: !328)
!328 = !DILexicalBlockFile(scope: !324, file: !31, discriminator: 1)
!329 = !DILocation(line: 168, column: 53, scope: !328)
!330 = !DILocation(line: 168, column: 24, scope: !328)
!331 = !DILocation(line: 168, column: 8, scope: !328)
!332 = !DILocation(line: 169, column: 12, scope: !333)
!333 = distinct !DILexicalBlock(scope: !324, file: !31, line: 168, column: 69)
!334 = !DILocation(line: 169, column: 7, scope: !333)
!335 = !DILocation(line: 170, column: 12, scope: !333)
!336 = !DILocation(line: 171, column: 4, scope: !333)
!337 = !DILocation(line: 172, column: 11, scope: !315)
!338 = !DILocation(line: 172, column: 4, scope: !315)
!339 = distinct !DISubprogram(name: "Message_Send", scope: !31, file: !31, line: 194, type: !340, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !53)
!340 = !DISubroutineType(types: !341)
!341 = !{!34, !36, !342, !47}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!344 = !DILocalVariable(name: "chan", arg: 1, scope: !339, file: !31, line: 194, type: !36)
!345 = !DILocation(line: 194, column: 31, scope: !339)
!346 = !DILocalVariable(name: "buf", arg: 2, scope: !339, file: !31, line: 195, type: !342)
!347 = !DILocation(line: 195, column: 35, scope: !339)
!348 = !DILocalVariable(name: "bufSize", arg: 3, scope: !339, file: !31, line: 196, type: !47)
!349 = !DILocation(line: 196, column: 21, scope: !339)
!350 = !DILocalVariable(name: "myBuf", scope: !339, file: !31, line: 198, type: !342)
!351 = !DILocation(line: 198, column: 25, scope: !339)
!352 = !DILocalVariable(name: "myBufSize", scope: !339, file: !31, line: 199, type: !47)
!353 = !DILocation(line: 199, column: 11, scope: !339)
!354 = !DILocalVariable(name: "bp", scope: !339, file: !31, line: 200, type: !66)
!355 = !DILocation(line: 200, column: 19, scope: !339)
!356 = !DILocation(line: 200, column: 4, scope: !339)
!357 = !DILocation(line: 203, column: 12, scope: !339)
!358 = !DILocation(line: 203, column: 10, scope: !339)
!359 = !DILocation(line: 204, column: 16, scope: !339)
!360 = !DILocation(line: 204, column: 14, scope: !339)
!361 = !DILocation(line: 211, column: 7, scope: !339)
!362 = !DILocation(line: 211, column: 10, scope: !339)
!363 = !DILocation(line: 211, column: 13, scope: !339)
!364 = !DILocation(line: 211, column: 19, scope: !339)
!365 = !DILocation(line: 211, column: 24, scope: !339)
!366 = !DILocation(line: 213, column: 26, scope: !339)
!367 = !DILocation(line: 213, column: 32, scope: !339)
!368 = !DILocation(line: 213, column: 7, scope: !339)
!369 = !DILocation(line: 213, column: 10, scope: !339)
!370 = !DILocation(line: 213, column: 13, scope: !339)
!371 = !DILocation(line: 213, column: 19, scope: !339)
!372 = !DILocation(line: 213, column: 24, scope: !339)
!373 = !DILocation(line: 214, column: 20, scope: !339)
!374 = !DILocation(line: 214, column: 26, scope: !339)
!375 = !DILocation(line: 214, column: 7, scope: !339)
!376 = !DILocation(line: 214, column: 10, scope: !339)
!377 = !DILocation(line: 214, column: 13, scope: !339)
!378 = !DILocation(line: 214, column: 18, scope: !339)
!379 = !DILocation(line: 215, column: 20, scope: !339)
!380 = !DILocation(line: 215, column: 26, scope: !339)
!381 = !DILocation(line: 215, column: 7, scope: !339)
!382 = !DILocation(line: 215, column: 10, scope: !339)
!383 = !DILocation(line: 215, column: 13, scope: !339)
!384 = !DILocation(line: 215, column: 18, scope: !339)
!385 = !DILocation(line: 217, column: 17, scope: !339)
!386 = !DILocation(line: 217, column: 7, scope: !339)
!387 = !DILocation(line: 217, column: 10, scope: !339)
!388 = !DILocation(line: 217, column: 15, scope: !339)
!389 = !DILocation(line: 219, column: 7, scope: !339)
!390 = !DILocation(line: 219, column: 10, scope: !339)
!391 = !DILocation(line: 219, column: 13, scope: !339)
!392 = !DILocation(line: 219, column: 19, scope: !339)
!393 = !DILocation(line: 219, column: 23, scope: !339)
!394 = !DILocation(line: 220, column: 4, scope: !339)
!395 = !DILocation(line: 223, column: 12, scope: !396)
!396 = distinct !DILexicalBlock(scope: !339, file: !31, line: 223, column: 8)
!397 = !DILocation(line: 223, column: 15, scope: !396)
!398 = !DILocation(line: 223, column: 18, scope: !396)
!399 = !DILocation(line: 223, column: 24, scope: !396)
!400 = !DILocation(line: 223, column: 9, scope: !396)
!401 = !DILocation(line: 223, column: 29, scope: !396)
!402 = !DILocation(line: 223, column: 39, scope: !396)
!403 = !DILocation(line: 223, column: 8, scope: !339)
!404 = !DILocation(line: 226, column: 7, scope: !405)
!405 = distinct !DILexicalBlock(scope: !396, file: !31, line: 223, column: 45)
!406 = !DILocation(line: 229, column: 11, scope: !407)
!407 = distinct !DILexicalBlock(scope: !339, file: !31, line: 229, column: 8)
!408 = !DILocation(line: 229, column: 14, scope: !407)
!409 = !DILocation(line: 229, column: 17, scope: !407)
!410 = !DILocation(line: 229, column: 23, scope: !407)
!411 = !DILocation(line: 229, column: 8, scope: !407)
!412 = !DILocation(line: 229, column: 28, scope: !407)
!413 = !DILocation(line: 229, column: 8, scope: !339)
!414 = !DILocation(line: 235, column: 11, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !31, line: 235, column: 11)
!416 = distinct !DILexicalBlock(scope: !407, file: !31, line: 229, column: 38)
!417 = !DILocation(line: 235, column: 11, scope: !416)
!418 = !DILocalVariable(name: "bphb", scope: !419, file: !31, line: 236, type: !420)
!419 = distinct !DILexicalBlock(scope: !415, file: !31, line: 235, column: 22)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "Backdoor_proto_hb", file: !67, line: 123, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !67, line: 104, size: 448, align: 64, elements: !422)
!422 = !{!423, !489}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !421, file: !67, line: 113, baseType: !424, size: 448, align: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !67, line: 105, size: 448, align: 64, elements: !425)
!425 = !{!426, !441, !456, !457, !472, !473, !474}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !424, file: !67, line: 106, baseType: !427, size: 64, align: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !67, line: 106, size: 64, align: 64, elements: !428)
!428 = !{!429, !434, !435, !440}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !427, file: !67, line: 106, baseType: !430, size: 32, align: 16)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !67, line: 106, size: 32, align: 16, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !430, file: !67, line: 106, baseType: !42, size: 16, align: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !430, file: !67, line: 106, baseType: !42, size: 16, align: 16, offset: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !427, file: !67, line: 106, baseType: !22, size: 32, align: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !427, file: !67, line: 106, baseType: !436, size: 64, align: 32)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !67, line: 106, size: 64, align: 32, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !436, file: !67, line: 106, baseType: !22, size: 32, align: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !436, file: !67, line: 106, baseType: !22, size: 32, align: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !427, file: !67, line: 106, baseType: !88, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !424, file: !67, line: 107, baseType: !442, size: 64, align: 64, offset: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !67, line: 107, size: 64, align: 64, elements: !443)
!443 = !{!444, !449, !450, !455}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !442, file: !67, line: 107, baseType: !445, size: 32, align: 16)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !442, file: !67, line: 107, size: 32, align: 16, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !445, file: !67, line: 107, baseType: !42, size: 16, align: 16)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !445, file: !67, line: 107, baseType: !42, size: 16, align: 16, offset: 16)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !442, file: !67, line: 107, baseType: !22, size: 32, align: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !442, file: !67, line: 107, baseType: !451, size: 64, align: 32)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !442, file: !67, line: 107, size: 64, align: 32, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !451, file: !67, line: 107, baseType: !22, size: 32, align: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !451, file: !67, line: 107, baseType: !22, size: 32, align: 32, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !442, file: !67, line: 107, baseType: !88, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !424, file: !67, line: 108, baseType: !47, size: 64, align: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !424, file: !67, line: 109, baseType: !458, size: 64, align: 64, offset: 192)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !67, line: 109, size: 64, align: 64, elements: !459)
!459 = !{!460, !465, !466, !471}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !458, file: !67, line: 109, baseType: !461, size: 32, align: 16)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !67, line: 109, size: 32, align: 16, elements: !462)
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !461, file: !67, line: 109, baseType: !42, size: 16, align: 16)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !461, file: !67, line: 109, baseType: !42, size: 16, align: 16, offset: 16)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !458, file: !67, line: 109, baseType: !22, size: 32, align: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !458, file: !67, line: 109, baseType: !467, size: 64, align: 32)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !67, line: 109, size: 64, align: 32, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !467, file: !67, line: 109, baseType: !22, size: 32, align: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !467, file: !67, line: 109, baseType: !22, size: 32, align: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !458, file: !67, line: 109, baseType: !88, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "srcAddr", scope: !424, file: !67, line: 110, baseType: !17, size: 64, align: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dstAddr", scope: !424, file: !67, line: 111, baseType: !17, size: 64, align: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !424, file: !67, line: 112, baseType: !475, size: 64, align: 64, offset: 384)
!475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !67, line: 112, size: 64, align: 64, elements: !476)
!476 = !{!477, !482, !483, !488}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !475, file: !67, line: 112, baseType: !478, size: 32, align: 16)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !475, file: !67, line: 112, size: 32, align: 16, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !478, file: !67, line: 112, baseType: !42, size: 16, align: 16)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !478, file: !67, line: 112, baseType: !42, size: 16, align: 16, offset: 16)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !475, file: !67, line: 112, baseType: !22, size: 32, align: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !475, file: !67, line: 112, baseType: !484, size: 64, align: 32)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !475, file: !67, line: 112, size: 64, align: 32, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !484, file: !67, line: 112, baseType: !22, size: 32, align: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !484, file: !67, line: 112, baseType: !22, size: 32, align: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !475, file: !67, line: 112, baseType: !88, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !421, file: !67, line: 122, baseType: !490, size: 448, align: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !67, line: 114, size: 448, align: 64, elements: !491)
!491 = !{!492, !507, !522, !537, !552, !567, !582}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !490, file: !67, line: 115, baseType: !493, size: 64, align: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !67, line: 115, size: 64, align: 64, elements: !494)
!494 = !{!495, !500, !501, !506}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !493, file: !67, line: 115, baseType: !496, size: 32, align: 16)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !493, file: !67, line: 115, size: 32, align: 16, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !496, file: !67, line: 115, baseType: !42, size: 16, align: 16)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !496, file: !67, line: 115, baseType: !42, size: 16, align: 16, offset: 16)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !493, file: !67, line: 115, baseType: !22, size: 32, align: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !493, file: !67, line: 115, baseType: !502, size: 64, align: 32)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !493, file: !67, line: 115, size: 64, align: 32, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !502, file: !67, line: 115, baseType: !22, size: 32, align: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !502, file: !67, line: 115, baseType: !22, size: 32, align: 32, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !493, file: !67, line: 115, baseType: !88, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !490, file: !67, line: 116, baseType: !508, size: 64, align: 64, offset: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !67, line: 116, size: 64, align: 64, elements: !509)
!509 = !{!510, !515, !516, !521}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !508, file: !67, line: 116, baseType: !511, size: 32, align: 16)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !508, file: !67, line: 116, size: 32, align: 16, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !511, file: !67, line: 116, baseType: !42, size: 16, align: 16)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !511, file: !67, line: 116, baseType: !42, size: 16, align: 16, offset: 16)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !508, file: !67, line: 116, baseType: !22, size: 32, align: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !508, file: !67, line: 116, baseType: !517, size: 64, align: 32)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !508, file: !67, line: 116, size: 64, align: 32, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !517, file: !67, line: 116, baseType: !22, size: 32, align: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !517, file: !67, line: 116, baseType: !22, size: 32, align: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !508, file: !67, line: 116, baseType: !88, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !490, file: !67, line: 117, baseType: !523, size: 64, align: 64, offset: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !67, line: 117, size: 64, align: 64, elements: !524)
!524 = !{!525, !530, !531, !536}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !523, file: !67, line: 117, baseType: !526, size: 32, align: 16)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !67, line: 117, size: 32, align: 16, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !526, file: !67, line: 117, baseType: !42, size: 16, align: 16)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !526, file: !67, line: 117, baseType: !42, size: 16, align: 16, offset: 16)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !523, file: !67, line: 117, baseType: !22, size: 32, align: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !523, file: !67, line: 117, baseType: !532, size: 64, align: 32)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !67, line: 117, size: 64, align: 32, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !532, file: !67, line: 117, baseType: !22, size: 32, align: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !532, file: !67, line: 117, baseType: !22, size: 32, align: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !523, file: !67, line: 117, baseType: !88, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !490, file: !67, line: 118, baseType: !538, size: 64, align: 64, offset: 192)
!538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !67, line: 118, size: 64, align: 64, elements: !539)
!539 = !{!540, !545, !546, !551}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !538, file: !67, line: 118, baseType: !541, size: 32, align: 16)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !538, file: !67, line: 118, size: 32, align: 16, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !541, file: !67, line: 118, baseType: !42, size: 16, align: 16)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !541, file: !67, line: 118, baseType: !42, size: 16, align: 16, offset: 16)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !538, file: !67, line: 118, baseType: !22, size: 32, align: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !538, file: !67, line: 118, baseType: !547, size: 64, align: 32)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !538, file: !67, line: 118, size: 64, align: 32, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !547, file: !67, line: 118, baseType: !22, size: 32, align: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !547, file: !67, line: 118, baseType: !22, size: 32, align: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !538, file: !67, line: 118, baseType: !88, size: 64, align: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !490, file: !67, line: 119, baseType: !553, size: 64, align: 64, offset: 256)
!553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !67, line: 119, size: 64, align: 64, elements: !554)
!554 = !{!555, !560, !561, !566}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !553, file: !67, line: 119, baseType: !556, size: 32, align: 16)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !553, file: !67, line: 119, size: 32, align: 16, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !556, file: !67, line: 119, baseType: !42, size: 16, align: 16)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !556, file: !67, line: 119, baseType: !42, size: 16, align: 16, offset: 16)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !553, file: !67, line: 119, baseType: !22, size: 32, align: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !553, file: !67, line: 119, baseType: !562, size: 64, align: 32)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !553, file: !67, line: 119, size: 64, align: 32, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !562, file: !67, line: 119, baseType: !22, size: 32, align: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !562, file: !67, line: 119, baseType: !22, size: 32, align: 32, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !553, file: !67, line: 119, baseType: !88, size: 64, align: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !490, file: !67, line: 120, baseType: !568, size: 64, align: 64, offset: 320)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !67, line: 120, size: 64, align: 64, elements: !569)
!569 = !{!570, !575, !576, !581}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !568, file: !67, line: 120, baseType: !571, size: 32, align: 16)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !568, file: !67, line: 120, size: 32, align: 16, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !571, file: !67, line: 120, baseType: !42, size: 16, align: 16)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !571, file: !67, line: 120, baseType: !42, size: 16, align: 16, offset: 16)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !568, file: !67, line: 120, baseType: !22, size: 32, align: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !568, file: !67, line: 120, baseType: !577, size: 64, align: 32)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !568, file: !67, line: 120, size: 64, align: 32, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !577, file: !67, line: 120, baseType: !22, size: 32, align: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !577, file: !67, line: 120, baseType: !22, size: 32, align: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !568, file: !67, line: 120, baseType: !88, size: 64, align: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !490, file: !67, line: 121, baseType: !583, size: 64, align: 64, offset: 384)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !67, line: 121, size: 64, align: 64, elements: !584)
!584 = !{!585, !590, !591, !596}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !583, file: !67, line: 121, baseType: !586, size: 32, align: 16)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !67, line: 121, size: 32, align: 16, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !586, file: !67, line: 121, baseType: !42, size: 16, align: 16)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !586, file: !67, line: 121, baseType: !42, size: 16, align: 16, offset: 16)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !583, file: !67, line: 121, baseType: !22, size: 32, align: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !583, file: !67, line: 121, baseType: !592, size: 64, align: 32)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !67, line: 121, size: 64, align: 32, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !592, file: !67, line: 121, baseType: !22, size: 32, align: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !592, file: !67, line: 121, baseType: !22, size: 32, align: 32, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !583, file: !67, line: 121, baseType: !88, size: 64, align: 64)
!597 = !DILocation(line: 236, column: 28, scope: !419)
!598 = !DILocation(line: 238, column: 15, scope: !419)
!599 = !DILocation(line: 238, column: 18, scope: !419)
!600 = !DILocation(line: 238, column: 21, scope: !419)
!601 = !DILocation(line: 238, column: 27, scope: !419)
!602 = !DILocation(line: 238, column: 31, scope: !419)
!603 = !DILocation(line: 239, column: 15, scope: !419)
!604 = !DILocation(line: 239, column: 18, scope: !419)
!605 = !DILocation(line: 239, column: 21, scope: !419)
!606 = !DILocation(line: 239, column: 27, scope: !419)
!607 = !DILocation(line: 239, column: 32, scope: !419)
!608 = !DILocation(line: 240, column: 34, scope: !419)
!609 = !DILocation(line: 240, column: 40, scope: !419)
!610 = !DILocation(line: 240, column: 15, scope: !419)
!611 = !DILocation(line: 240, column: 18, scope: !419)
!612 = !DILocation(line: 240, column: 21, scope: !419)
!613 = !DILocation(line: 240, column: 27, scope: !419)
!614 = !DILocation(line: 240, column: 32, scope: !419)
!615 = !DILocation(line: 241, column: 28, scope: !419)
!616 = !DILocation(line: 241, column: 34, scope: !419)
!617 = !DILocation(line: 241, column: 15, scope: !419)
!618 = !DILocation(line: 241, column: 18, scope: !419)
!619 = !DILocation(line: 241, column: 21, scope: !419)
!620 = !DILocation(line: 241, column: 26, scope: !419)
!621 = !DILocation(line: 242, column: 28, scope: !419)
!622 = !DILocation(line: 242, column: 34, scope: !419)
!623 = !DILocation(line: 242, column: 15, scope: !419)
!624 = !DILocation(line: 242, column: 18, scope: !419)
!625 = !DILocation(line: 242, column: 26, scope: !419)
!626 = !DILocation(line: 243, column: 25, scope: !419)
!627 = !DILocation(line: 243, column: 15, scope: !419)
!628 = !DILocation(line: 243, column: 18, scope: !419)
!629 = !DILocation(line: 243, column: 23, scope: !419)
!630 = !DILocation(line: 244, column: 40, scope: !419)
!631 = !DILocation(line: 244, column: 28, scope: !419)
!632 = !DILocation(line: 244, column: 15, scope: !419)
!633 = !DILocation(line: 244, column: 18, scope: !419)
!634 = !DILocation(line: 244, column: 26, scope: !419)
!635 = !DILocation(line: 245, column: 10, scope: !419)
!636 = !DILocation(line: 246, column: 20, scope: !637)
!637 = distinct !DILexicalBlock(scope: !419, file: !31, line: 246, column: 14)
!638 = !DILocation(line: 246, column: 23, scope: !637)
!639 = !DILocation(line: 246, column: 26, scope: !637)
!640 = !DILocation(line: 246, column: 32, scope: !637)
!641 = !DILocation(line: 246, column: 15, scope: !637)
!642 = !DILocation(line: 246, column: 37, scope: !637)
!643 = !DILocation(line: 246, column: 47, scope: !637)
!644 = !DILocation(line: 246, column: 14, scope: !419)
!645 = !DILocation(line: 247, column: 23, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !31, line: 247, column: 17)
!647 = distinct !DILexicalBlock(scope: !637, file: !31, line: 246, column: 53)
!648 = !DILocation(line: 247, column: 26, scope: !646)
!649 = !DILocation(line: 247, column: 29, scope: !646)
!650 = !DILocation(line: 247, column: 35, scope: !646)
!651 = !DILocation(line: 247, column: 18, scope: !646)
!652 = !DILocation(line: 247, column: 40, scope: !646)
!653 = !DILocation(line: 247, column: 50, scope: !646)
!654 = !DILocation(line: 247, column: 17, scope: !647)
!655 = !DILocation(line: 249, column: 16, scope: !656)
!656 = distinct !DILexicalBlock(scope: !646, file: !31, line: 247, column: 56)
!657 = !DILocation(line: 254, column: 13, scope: !647)
!658 = !DILocation(line: 256, column: 7, scope: !419)
!659 = !DILocation(line: 257, column: 4, scope: !416)
!660 = !DILocation(line: 263, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !407, file: !31, line: 257, column: 11)
!662 = !DILocation(line: 264, column: 14, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !31, line: 264, column: 14)
!664 = distinct !DILexicalBlock(scope: !665, file: !31, line: 263, column: 16)
!665 = distinct !DILexicalBlock(scope: !666, file: !31, line: 263, column: 7)
!666 = distinct !DILexicalBlock(scope: !661, file: !31, line: 263, column: 7)
!667 = !DILocation(line: 264, column: 24, scope: !663)
!668 = !DILocation(line: 264, column: 14, scope: !664)
!669 = !DILocation(line: 266, column: 6, scope: !670)
!670 = distinct !DILexicalBlock(scope: !663, file: !31, line: 264, column: 30)
!671 = !DILocation(line: 270, column: 13, scope: !664)
!672 = !DILocation(line: 270, column: 16, scope: !664)
!673 = !DILocation(line: 270, column: 19, scope: !664)
!674 = !DILocation(line: 270, column: 25, scope: !664)
!675 = !DILocation(line: 270, column: 30, scope: !664)
!676 = !DILocation(line: 272, column: 32, scope: !664)
!677 = !DILocation(line: 272, column: 38, scope: !664)
!678 = !DILocation(line: 272, column: 13, scope: !664)
!679 = !DILocation(line: 272, column: 16, scope: !664)
!680 = !DILocation(line: 272, column: 19, scope: !664)
!681 = !DILocation(line: 272, column: 25, scope: !664)
!682 = !DILocation(line: 272, column: 30, scope: !664)
!683 = !DILocation(line: 273, column: 26, scope: !664)
!684 = !DILocation(line: 273, column: 32, scope: !664)
!685 = !DILocation(line: 273, column: 13, scope: !664)
!686 = !DILocation(line: 273, column: 16, scope: !664)
!687 = !DILocation(line: 273, column: 19, scope: !664)
!688 = !DILocation(line: 273, column: 24, scope: !664)
!689 = !DILocation(line: 274, column: 26, scope: !664)
!690 = !DILocation(line: 274, column: 32, scope: !664)
!691 = !DILocation(line: 274, column: 13, scope: !664)
!692 = !DILocation(line: 274, column: 16, scope: !664)
!693 = !DILocation(line: 274, column: 19, scope: !664)
!694 = !DILocation(line: 274, column: 24, scope: !664)
!695 = !DILocation(line: 280, column: 18, scope: !664)
!696 = !DILocation(line: 280, column: 10, scope: !664)
!697 = !DILocation(line: 282, column: 26, scope: !698)
!698 = distinct !DILexicalBlock(scope: !664, file: !31, line: 280, column: 29)
!699 = !DILocation(line: 282, column: 16, scope: !698)
!700 = !DILocation(line: 282, column: 19, scope: !698)
!701 = !DILocation(line: 282, column: 24, scope: !698)
!702 = !DILocation(line: 283, column: 23, scope: !698)
!703 = !DILocation(line: 284, column: 13, scope: !698)
!704 = !DILocation(line: 286, column: 26, scope: !698)
!705 = !DILocation(line: 286, column: 37, scope: !698)
!706 = !DILocation(line: 286, column: 46, scope: !698)
!707 = !DILocation(line: 286, column: 35, scope: !698)
!708 = !DILocation(line: 286, column: 16, scope: !698)
!709 = !DILocation(line: 286, column: 19, scope: !698)
!710 = !DILocation(line: 286, column: 24, scope: !698)
!711 = !DILocation(line: 287, column: 23, scope: !698)
!712 = !DILocation(line: 288, column: 13, scope: !698)
!713 = !DILocation(line: 290, column: 26, scope: !698)
!714 = !DILocation(line: 290, column: 37, scope: !698)
!715 = !DILocation(line: 290, column: 46, scope: !698)
!716 = !DILocation(line: 290, column: 35, scope: !698)
!717 = !DILocation(line: 290, column: 53, scope: !698)
!718 = !DILocation(line: 290, column: 62, scope: !698)
!719 = !DILocation(line: 290, column: 51, scope: !698)
!720 = !DILocation(line: 290, column: 16, scope: !698)
!721 = !DILocation(line: 290, column: 19, scope: !698)
!722 = !DILocation(line: 290, column: 24, scope: !698)
!723 = !DILocation(line: 291, column: 23, scope: !698)
!724 = !DILocation(line: 292, column: 13, scope: !698)
!725 = !DILocation(line: 294, column: 43, scope: !698)
!726 = !DILocation(line: 294, column: 26, scope: !698)
!727 = !DILocation(line: 294, column: 16, scope: !698)
!728 = !DILocation(line: 294, column: 19, scope: !698)
!729 = !DILocation(line: 294, column: 24, scope: !698)
!730 = !DILocation(line: 295, column: 23, scope: !698)
!731 = !DILocation(line: 296, column: 13, scope: !698)
!732 = !DILocation(line: 299, column: 13, scope: !664)
!733 = !DILocation(line: 299, column: 16, scope: !664)
!734 = !DILocation(line: 299, column: 19, scope: !664)
!735 = !DILocation(line: 299, column: 25, scope: !664)
!736 = !DILocation(line: 299, column: 29, scope: !664)
!737 = !DILocation(line: 300, column: 10, scope: !664)
!738 = !DILocation(line: 303, column: 18, scope: !739)
!739 = distinct !DILexicalBlock(scope: !664, file: !31, line: 303, column: 14)
!740 = !DILocation(line: 303, column: 21, scope: !739)
!741 = !DILocation(line: 303, column: 24, scope: !739)
!742 = !DILocation(line: 303, column: 30, scope: !739)
!743 = !DILocation(line: 303, column: 15, scope: !739)
!744 = !DILocation(line: 303, column: 35, scope: !739)
!745 = !DILocation(line: 303, column: 45, scope: !739)
!746 = !DILocation(line: 303, column: 14, scope: !664)
!747 = !DILocation(line: 304, column: 21, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !31, line: 304, column: 17)
!749 = distinct !DILexicalBlock(scope: !739, file: !31, line: 303, column: 51)
!750 = !DILocation(line: 304, column: 24, scope: !748)
!751 = !DILocation(line: 304, column: 27, scope: !748)
!752 = !DILocation(line: 304, column: 33, scope: !748)
!753 = !DILocation(line: 304, column: 18, scope: !748)
!754 = !DILocation(line: 304, column: 38, scope: !748)
!755 = !DILocation(line: 304, column: 48, scope: !748)
!756 = !DILocation(line: 304, column: 17, scope: !749)
!757 = !DILocation(line: 306, column: 16, scope: !758)
!758 = distinct !DILexicalBlock(scope: !748, file: !31, line: 304, column: 54)
!759 = !DILocation(line: 311, column: 13, scope: !749)
!760 = !DILocation(line: 314, column: 16, scope: !664)
!761 = !DILocation(line: 263, column: 7, scope: !762)
!762 = !DILexicalBlockFile(scope: !665, file: !31, discriminator: 1)
!763 = distinct !{!763, !660}
!764 = !DILocation(line: 318, column: 4, scope: !339)
!765 = !DILocation(line: 319, column: 1, scope: !339)
!766 = distinct !DISubprogram(name: "Message_Receive", scope: !31, file: !31, line: 340, type: !767, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !53)
!767 = !DISubroutineType(types: !768)
!768 = !{!34, !36, !769, !770}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!771 = !DILocalVariable(name: "chan", arg: 1, scope: !766, file: !31, line: 340, type: !36)
!772 = !DILocation(line: 340, column: 34, scope: !766)
!773 = !DILocalVariable(name: "buf", arg: 2, scope: !766, file: !31, line: 341, type: !769)
!774 = !DILocation(line: 341, column: 33, scope: !766)
!775 = !DILocalVariable(name: "bufSize", arg: 3, scope: !766, file: !31, line: 342, type: !770)
!776 = !DILocation(line: 342, column: 25, scope: !766)
!777 = !DILocalVariable(name: "bp", scope: !766, file: !31, line: 344, type: !66)
!778 = !DILocation(line: 344, column: 19, scope: !766)
!779 = !DILocalVariable(name: "myBufSize", scope: !766, file: !31, line: 345, type: !47)
!780 = !DILocation(line: 345, column: 11, scope: !766)
!781 = !DILocalVariable(name: "myBuf", scope: !766, file: !31, line: 346, type: !14)
!782 = !DILocation(line: 346, column: 19, scope: !766)
!783 = !DILocation(line: 346, column: 4, scope: !766)
!784 = !DILocation(line: 354, column: 7, scope: !766)
!785 = !DILocation(line: 354, column: 10, scope: !766)
!786 = !DILocation(line: 354, column: 13, scope: !766)
!787 = !DILocation(line: 354, column: 19, scope: !766)
!788 = !DILocation(line: 354, column: 24, scope: !766)
!789 = !DILocation(line: 356, column: 26, scope: !766)
!790 = !DILocation(line: 356, column: 32, scope: !766)
!791 = !DILocation(line: 356, column: 7, scope: !766)
!792 = !DILocation(line: 356, column: 10, scope: !766)
!793 = !DILocation(line: 356, column: 13, scope: !766)
!794 = !DILocation(line: 356, column: 19, scope: !766)
!795 = !DILocation(line: 356, column: 24, scope: !766)
!796 = !DILocation(line: 357, column: 20, scope: !766)
!797 = !DILocation(line: 357, column: 26, scope: !766)
!798 = !DILocation(line: 357, column: 7, scope: !766)
!799 = !DILocation(line: 357, column: 10, scope: !766)
!800 = !DILocation(line: 357, column: 13, scope: !766)
!801 = !DILocation(line: 357, column: 18, scope: !766)
!802 = !DILocation(line: 358, column: 20, scope: !766)
!803 = !DILocation(line: 358, column: 26, scope: !766)
!804 = !DILocation(line: 358, column: 7, scope: !766)
!805 = !DILocation(line: 358, column: 10, scope: !766)
!806 = !DILocation(line: 358, column: 13, scope: !766)
!807 = !DILocation(line: 358, column: 18, scope: !766)
!808 = !DILocation(line: 360, column: 7, scope: !766)
!809 = !DILocation(line: 360, column: 10, scope: !766)
!810 = !DILocation(line: 360, column: 13, scope: !766)
!811 = !DILocation(line: 360, column: 19, scope: !766)
!812 = !DILocation(line: 360, column: 23, scope: !766)
!813 = !DILocation(line: 361, column: 4, scope: !766)
!814 = !DILocation(line: 364, column: 12, scope: !815)
!815 = distinct !DILexicalBlock(scope: !766, file: !31, line: 364, column: 8)
!816 = !DILocation(line: 364, column: 15, scope: !815)
!817 = !DILocation(line: 364, column: 18, scope: !815)
!818 = !DILocation(line: 364, column: 24, scope: !815)
!819 = !DILocation(line: 364, column: 9, scope: !815)
!820 = !DILocation(line: 364, column: 29, scope: !815)
!821 = !DILocation(line: 364, column: 39, scope: !815)
!822 = !DILocation(line: 364, column: 8, scope: !766)
!823 = !DILocation(line: 367, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !815, file: !31, line: 364, column: 45)
!825 = !DILocation(line: 370, column: 12, scope: !826)
!826 = distinct !DILexicalBlock(scope: !766, file: !31, line: 370, column: 8)
!827 = !DILocation(line: 370, column: 15, scope: !826)
!828 = !DILocation(line: 370, column: 18, scope: !826)
!829 = !DILocation(line: 370, column: 24, scope: !826)
!830 = !DILocation(line: 370, column: 9, scope: !826)
!831 = !DILocation(line: 370, column: 29, scope: !826)
!832 = !DILocation(line: 370, column: 39, scope: !826)
!833 = !DILocation(line: 370, column: 8, scope: !766)
!834 = !DILocation(line: 372, column: 8, scope: !835)
!835 = distinct !DILexicalBlock(scope: !826, file: !31, line: 370, column: 45)
!836 = !DILocation(line: 372, column: 16, scope: !835)
!837 = !DILocation(line: 373, column: 7, scope: !835)
!838 = !DILocation(line: 381, column: 11, scope: !839)
!839 = distinct !DILexicalBlock(scope: !766, file: !31, line: 381, column: 8)
!840 = !DILocation(line: 381, column: 14, scope: !839)
!841 = !DILocation(line: 381, column: 17, scope: !839)
!842 = !DILocation(line: 381, column: 23, scope: !839)
!843 = !DILocation(line: 381, column: 8, scope: !839)
!844 = !DILocation(line: 381, column: 28, scope: !839)
!845 = !DILocation(line: 381, column: 8, scope: !766)
!846 = !DILocation(line: 384, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !839, file: !31, line: 381, column: 54)
!848 = !DILocation(line: 388, column: 19, scope: !766)
!849 = !DILocation(line: 388, column: 23, scope: !766)
!850 = !DILocation(line: 388, column: 26, scope: !766)
!851 = !DILocation(line: 388, column: 16, scope: !766)
!852 = !DILocation(line: 388, column: 14, scope: !766)
!853 = !DILocation(line: 395, column: 8, scope: !854)
!854 = distinct !DILexicalBlock(scope: !766, file: !31, line: 395, column: 8)
!855 = !DILocation(line: 395, column: 18, scope: !854)
!856 = !DILocation(line: 395, column: 24, scope: !854)
!857 = !DILocation(line: 395, column: 30, scope: !854)
!858 = !DILocation(line: 395, column: 22, scope: !854)
!859 = !DILocation(line: 395, column: 8, scope: !766)
!860 = !DILocation(line: 396, column: 11, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !31, line: 396, column: 11)
!862 = distinct !DILexicalBlock(scope: !854, file: !31, line: 395, column: 39)
!863 = !DILocation(line: 396, column: 17, scope: !861)
!864 = !DILocation(line: 396, column: 11, scope: !862)
!865 = !DILocation(line: 399, column: 1, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !31, line: 396, column: 33)
!867 = !DILocation(line: 400, column: 10, scope: !866)
!868 = !DILocation(line: 402, column: 43, scope: !869)
!869 = distinct !DILexicalBlock(scope: !861, file: !31, line: 401, column: 14)
!870 = !DILocation(line: 402, column: 49, scope: !869)
!871 = !DILocation(line: 402, column: 53, scope: !869)
!872 = !DILocation(line: 402, column: 63, scope: !869)
!873 = !DILocation(line: 402, column: 35, scope: !869)
!874 = !DILocation(line: 402, column: 16, scope: !869)
!875 = !DILocation(line: 403, column: 14, scope: !876)
!876 = distinct !DILexicalBlock(scope: !869, file: !31, line: 403, column: 14)
!877 = !DILocation(line: 403, column: 20, scope: !876)
!878 = !DILocation(line: 403, column: 14, scope: !869)
!879 = !DILocation(line: 405, column: 1, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !31, line: 402, column: 28)
!881 = !DILocation(line: 406, column: 13, scope: !880)
!882 = !DILocation(line: 408, column: 21, scope: !869)
!883 = !DILocation(line: 408, column: 10, scope: !869)
!884 = !DILocation(line: 408, column: 16, scope: !869)
!885 = !DILocation(line: 408, column: 19, scope: !869)
!886 = !DILocation(line: 409, column: 26, scope: !869)
!887 = !DILocation(line: 409, column: 36, scope: !869)
!888 = !DILocation(line: 409, column: 10, scope: !869)
!889 = !DILocation(line: 409, column: 16, scope: !869)
!890 = !DILocation(line: 409, column: 24, scope: !869)
!891 = !DILocation(line: 411, column: 4, scope: !862)
!892 = !DILocation(line: 412, column: 15, scope: !766)
!893 = !DILocation(line: 412, column: 5, scope: !766)
!894 = !DILocation(line: 412, column: 13, scope: !766)
!895 = !DILocation(line: 413, column: 19, scope: !766)
!896 = !DILocation(line: 413, column: 25, scope: !766)
!897 = !DILocation(line: 413, column: 13, scope: !766)
!898 = !DILocation(line: 413, column: 17, scope: !766)
!899 = !DILocation(line: 413, column: 10, scope: !766)
!900 = !DILocation(line: 415, column: 11, scope: !901)
!901 = distinct !DILexicalBlock(scope: !766, file: !31, line: 415, column: 8)
!902 = !DILocation(line: 415, column: 14, scope: !901)
!903 = !DILocation(line: 415, column: 17, scope: !901)
!904 = !DILocation(line: 415, column: 23, scope: !901)
!905 = !DILocation(line: 415, column: 8, scope: !901)
!906 = !DILocation(line: 415, column: 28, scope: !901)
!907 = !DILocation(line: 415, column: 8, scope: !766)
!908 = !DILocation(line: 421, column: 11, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !31, line: 421, column: 11)
!910 = distinct !DILexicalBlock(scope: !901, file: !31, line: 415, column: 38)
!911 = !DILocation(line: 421, column: 11, scope: !910)
!912 = !DILocalVariable(name: "bphb", scope: !913, file: !31, line: 422, type: !420)
!913 = distinct !DILexicalBlock(scope: !909, file: !31, line: 421, column: 22)
!914 = !DILocation(line: 422, column: 28, scope: !913)
!915 = !DILocation(line: 424, column: 15, scope: !913)
!916 = !DILocation(line: 424, column: 18, scope: !913)
!917 = !DILocation(line: 424, column: 21, scope: !913)
!918 = !DILocation(line: 424, column: 27, scope: !913)
!919 = !DILocation(line: 424, column: 31, scope: !913)
!920 = !DILocation(line: 425, column: 15, scope: !913)
!921 = !DILocation(line: 425, column: 18, scope: !913)
!922 = !DILocation(line: 425, column: 21, scope: !913)
!923 = !DILocation(line: 425, column: 27, scope: !913)
!924 = !DILocation(line: 425, column: 32, scope: !913)
!925 = !DILocation(line: 426, column: 34, scope: !913)
!926 = !DILocation(line: 426, column: 40, scope: !913)
!927 = !DILocation(line: 426, column: 15, scope: !913)
!928 = !DILocation(line: 426, column: 18, scope: !913)
!929 = !DILocation(line: 426, column: 21, scope: !913)
!930 = !DILocation(line: 426, column: 27, scope: !913)
!931 = !DILocation(line: 426, column: 32, scope: !913)
!932 = !DILocation(line: 427, column: 28, scope: !913)
!933 = !DILocation(line: 427, column: 34, scope: !913)
!934 = !DILocation(line: 427, column: 15, scope: !913)
!935 = !DILocation(line: 427, column: 18, scope: !913)
!936 = !DILocation(line: 427, column: 26, scope: !913)
!937 = !DILocation(line: 428, column: 28, scope: !913)
!938 = !DILocation(line: 428, column: 34, scope: !913)
!939 = !DILocation(line: 428, column: 15, scope: !913)
!940 = !DILocation(line: 428, column: 18, scope: !913)
!941 = !DILocation(line: 428, column: 21, scope: !913)
!942 = !DILocation(line: 428, column: 26, scope: !913)
!943 = !DILocation(line: 429, column: 25, scope: !913)
!944 = !DILocation(line: 429, column: 15, scope: !913)
!945 = !DILocation(line: 429, column: 18, scope: !913)
!946 = !DILocation(line: 429, column: 23, scope: !913)
!947 = !DILocation(line: 430, column: 40, scope: !913)
!948 = !DILocation(line: 430, column: 28, scope: !913)
!949 = !DILocation(line: 430, column: 15, scope: !913)
!950 = !DILocation(line: 430, column: 18, scope: !913)
!951 = !DILocation(line: 430, column: 26, scope: !913)
!952 = !DILocation(line: 431, column: 10, scope: !913)
!953 = !DILocation(line: 432, column: 20, scope: !954)
!954 = distinct !DILexicalBlock(scope: !913, file: !31, line: 432, column: 14)
!955 = !DILocation(line: 432, column: 23, scope: !954)
!956 = !DILocation(line: 432, column: 26, scope: !954)
!957 = !DILocation(line: 432, column: 32, scope: !954)
!958 = !DILocation(line: 432, column: 15, scope: !954)
!959 = !DILocation(line: 432, column: 37, scope: !954)
!960 = !DILocation(line: 432, column: 47, scope: !954)
!961 = !DILocation(line: 432, column: 14, scope: !913)
!962 = !DILocation(line: 433, column: 23, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !31, line: 433, column: 17)
!964 = distinct !DILexicalBlock(scope: !954, file: !31, line: 432, column: 53)
!965 = !DILocation(line: 433, column: 26, scope: !963)
!966 = !DILocation(line: 433, column: 29, scope: !963)
!967 = !DILocation(line: 433, column: 35, scope: !963)
!968 = !DILocation(line: 433, column: 18, scope: !963)
!969 = !DILocation(line: 433, column: 40, scope: !963)
!970 = !DILocation(line: 433, column: 50, scope: !963)
!971 = !DILocation(line: 433, column: 17, scope: !964)
!972 = !DILocation(line: 435, column: 16, scope: !973)
!973 = distinct !DILexicalBlock(scope: !963, file: !31, line: 433, column: 56)
!974 = !DILocation(line: 440, column: 1, scope: !964)
!975 = !DILocation(line: 441, column: 13, scope: !964)
!976 = !DILocation(line: 443, column: 7, scope: !913)
!977 = !DILocation(line: 444, column: 4, scope: !910)
!978 = !DILocation(line: 450, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !901, file: !31, line: 444, column: 11)
!980 = !DILocation(line: 451, column: 14, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !31, line: 451, column: 14)
!982 = distinct !DILexicalBlock(scope: !983, file: !31, line: 450, column: 16)
!983 = distinct !DILexicalBlock(scope: !984, file: !31, line: 450, column: 7)
!984 = distinct !DILexicalBlock(scope: !979, file: !31, line: 450, column: 7)
!985 = !DILocation(line: 451, column: 24, scope: !981)
!986 = !DILocation(line: 451, column: 14, scope: !982)
!987 = !DILocation(line: 453, column: 13, scope: !988)
!988 = distinct !DILexicalBlock(scope: !981, file: !31, line: 451, column: 30)
!989 = !DILocation(line: 457, column: 13, scope: !982)
!990 = !DILocation(line: 457, column: 16, scope: !982)
!991 = !DILocation(line: 457, column: 19, scope: !982)
!992 = !DILocation(line: 457, column: 25, scope: !982)
!993 = !DILocation(line: 457, column: 30, scope: !982)
!994 = !DILocation(line: 459, column: 32, scope: !982)
!995 = !DILocation(line: 459, column: 38, scope: !982)
!996 = !DILocation(line: 459, column: 13, scope: !982)
!997 = !DILocation(line: 459, column: 16, scope: !982)
!998 = !DILocation(line: 459, column: 19, scope: !982)
!999 = !DILocation(line: 459, column: 25, scope: !982)
!1000 = !DILocation(line: 459, column: 30, scope: !982)
!1001 = !DILocation(line: 460, column: 26, scope: !982)
!1002 = !DILocation(line: 460, column: 32, scope: !982)
!1003 = !DILocation(line: 460, column: 13, scope: !982)
!1004 = !DILocation(line: 460, column: 16, scope: !982)
!1005 = !DILocation(line: 460, column: 19, scope: !982)
!1006 = !DILocation(line: 460, column: 24, scope: !982)
!1007 = !DILocation(line: 461, column: 26, scope: !982)
!1008 = !DILocation(line: 461, column: 32, scope: !982)
!1009 = !DILocation(line: 461, column: 13, scope: !982)
!1010 = !DILocation(line: 461, column: 16, scope: !982)
!1011 = !DILocation(line: 461, column: 19, scope: !982)
!1012 = !DILocation(line: 461, column: 24, scope: !982)
!1013 = !DILocation(line: 463, column: 13, scope: !982)
!1014 = !DILocation(line: 463, column: 16, scope: !982)
!1015 = !DILocation(line: 463, column: 21, scope: !982)
!1016 = !DILocation(line: 465, column: 13, scope: !982)
!1017 = !DILocation(line: 465, column: 16, scope: !982)
!1018 = !DILocation(line: 465, column: 19, scope: !982)
!1019 = !DILocation(line: 465, column: 25, scope: !982)
!1020 = !DILocation(line: 465, column: 29, scope: !982)
!1021 = !DILocation(line: 466, column: 10, scope: !982)
!1022 = !DILocation(line: 469, column: 18, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !982, file: !31, line: 469, column: 14)
!1024 = !DILocation(line: 469, column: 21, scope: !1023)
!1025 = !DILocation(line: 469, column: 24, scope: !1023)
!1026 = !DILocation(line: 469, column: 30, scope: !1023)
!1027 = !DILocation(line: 469, column: 15, scope: !1023)
!1028 = !DILocation(line: 469, column: 35, scope: !1023)
!1029 = !DILocation(line: 469, column: 45, scope: !1023)
!1030 = !DILocation(line: 469, column: 14, scope: !982)
!1031 = !DILocation(line: 470, column: 21, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !31, line: 470, column: 17)
!1033 = distinct !DILexicalBlock(scope: !1023, file: !31, line: 469, column: 51)
!1034 = !DILocation(line: 470, column: 24, scope: !1032)
!1035 = !DILocation(line: 470, column: 27, scope: !1032)
!1036 = !DILocation(line: 470, column: 33, scope: !1032)
!1037 = !DILocation(line: 470, column: 18, scope: !1032)
!1038 = !DILocation(line: 470, column: 38, scope: !1032)
!1039 = !DILocation(line: 470, column: 48, scope: !1032)
!1040 = !DILocation(line: 470, column: 17, scope: !1033)
!1041 = !DILocation(line: 472, column: 16, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1032, file: !31, line: 470, column: 54)
!1043 = !DILocation(line: 477, column: 1, scope: !1033)
!1044 = !DILocation(line: 478, column: 13, scope: !1033)
!1045 = !DILocation(line: 482, column: 17, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !982, file: !31, line: 482, column: 14)
!1047 = !DILocation(line: 482, column: 20, scope: !1046)
!1048 = !DILocation(line: 482, column: 23, scope: !1046)
!1049 = !DILocation(line: 482, column: 29, scope: !1046)
!1050 = !DILocation(line: 482, column: 14, scope: !1046)
!1051 = !DILocation(line: 482, column: 34, scope: !1046)
!1052 = !DILocation(line: 482, column: 14, scope: !982)
!1053 = !DILocation(line: 485, column: 1, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1046, file: !31, line: 482, column: 63)
!1055 = !DILocation(line: 486, column: 13, scope: !1054)
!1056 = !DILocation(line: 494, column: 18, scope: !982)
!1057 = !DILocation(line: 494, column: 10, scope: !982)
!1058 = !DILocation(line: 496, column: 27, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !982, file: !31, line: 494, column: 29)
!1060 = !DILocation(line: 496, column: 31, scope: !1059)
!1061 = !DILocation(line: 496, column: 34, scope: !1059)
!1062 = !DILocation(line: 496, column: 39, scope: !1059)
!1063 = !DILocation(line: 496, column: 24, scope: !1059)
!1064 = !DILocation(line: 496, column: 13, scope: !1059)
!1065 = !DILocation(line: 496, column: 22, scope: !1059)
!1066 = !DILocation(line: 497, column: 23, scope: !1059)
!1067 = !DILocation(line: 498, column: 13, scope: !1059)
!1068 = !DILocation(line: 500, column: 27, scope: !1059)
!1069 = !DILocation(line: 500, column: 31, scope: !1059)
!1070 = !DILocation(line: 500, column: 34, scope: !1059)
!1071 = !DILocation(line: 500, column: 39, scope: !1059)
!1072 = !DILocation(line: 500, column: 24, scope: !1059)
!1073 = !DILocation(line: 500, column: 13, scope: !1059)
!1074 = !DILocation(line: 500, column: 22, scope: !1059)
!1075 = !DILocation(line: 501, column: 28, scope: !1059)
!1076 = !DILocation(line: 501, column: 32, scope: !1059)
!1077 = !DILocation(line: 501, column: 35, scope: !1059)
!1078 = !DILocation(line: 501, column: 40, scope: !1059)
!1079 = !DILocation(line: 501, column: 46, scope: !1059)
!1080 = !DILocation(line: 501, column: 24, scope: !1059)
!1081 = !DILocation(line: 501, column: 13, scope: !1059)
!1082 = !DILocation(line: 501, column: 22, scope: !1059)
!1083 = !DILocation(line: 502, column: 23, scope: !1059)
!1084 = !DILocation(line: 503, column: 13, scope: !1059)
!1085 = !DILocation(line: 505, column: 27, scope: !1059)
!1086 = !DILocation(line: 505, column: 31, scope: !1059)
!1087 = !DILocation(line: 505, column: 34, scope: !1059)
!1088 = !DILocation(line: 505, column: 39, scope: !1059)
!1089 = !DILocation(line: 505, column: 24, scope: !1059)
!1090 = !DILocation(line: 505, column: 13, scope: !1059)
!1091 = !DILocation(line: 505, column: 22, scope: !1059)
!1092 = !DILocation(line: 506, column: 28, scope: !1059)
!1093 = !DILocation(line: 506, column: 32, scope: !1059)
!1094 = !DILocation(line: 506, column: 35, scope: !1059)
!1095 = !DILocation(line: 506, column: 40, scope: !1059)
!1096 = !DILocation(line: 506, column: 46, scope: !1059)
!1097 = !DILocation(line: 506, column: 24, scope: !1059)
!1098 = !DILocation(line: 506, column: 13, scope: !1059)
!1099 = !DILocation(line: 506, column: 22, scope: !1059)
!1100 = !DILocation(line: 507, column: 28, scope: !1059)
!1101 = !DILocation(line: 507, column: 32, scope: !1059)
!1102 = !DILocation(line: 507, column: 35, scope: !1059)
!1103 = !DILocation(line: 507, column: 40, scope: !1059)
!1104 = !DILocation(line: 507, column: 47, scope: !1059)
!1105 = !DILocation(line: 507, column: 24, scope: !1059)
!1106 = !DILocation(line: 507, column: 13, scope: !1059)
!1107 = !DILocation(line: 507, column: 22, scope: !1059)
!1108 = !DILocation(line: 508, column: 23, scope: !1059)
!1109 = !DILocation(line: 509, column: 13, scope: !1059)
!1110 = !DILocation(line: 511, column: 35, scope: !1059)
!1111 = !DILocation(line: 511, column: 39, scope: !1059)
!1112 = !DILocation(line: 511, column: 42, scope: !1059)
!1113 = !DILocation(line: 511, column: 24, scope: !1059)
!1114 = !DILocation(line: 511, column: 13, scope: !1059)
!1115 = !DILocation(line: 511, column: 30, scope: !1059)
!1116 = !DILocation(line: 512, column: 23, scope: !1059)
!1117 = !DILocation(line: 513, column: 13, scope: !1059)
!1118 = !DILocation(line: 516, column: 16, scope: !982)
!1119 = !DILocation(line: 450, column: 7, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !983, file: !31, discriminator: 1)
!1121 = distinct !{!1121, !978}
!1122 = !DILocation(line: 521, column: 14, scope: !766)
!1123 = !DILocation(line: 521, column: 13, scope: !766)
!1124 = !DILocation(line: 521, column: 4, scope: !766)
!1125 = !DILocation(line: 521, column: 10, scope: !766)
!1126 = !DILocation(line: 521, column: 23, scope: !766)
!1127 = !DILocation(line: 524, column: 7, scope: !766)
!1128 = !DILocation(line: 524, column: 10, scope: !766)
!1129 = !DILocation(line: 524, column: 13, scope: !766)
!1130 = !DILocation(line: 524, column: 19, scope: !766)
!1131 = !DILocation(line: 524, column: 24, scope: !766)
!1132 = !DILocation(line: 526, column: 26, scope: !766)
!1133 = !DILocation(line: 526, column: 32, scope: !766)
!1134 = !DILocation(line: 526, column: 7, scope: !766)
!1135 = !DILocation(line: 526, column: 10, scope: !766)
!1136 = !DILocation(line: 526, column: 13, scope: !766)
!1137 = !DILocation(line: 526, column: 19, scope: !766)
!1138 = !DILocation(line: 526, column: 24, scope: !766)
!1139 = !DILocation(line: 527, column: 20, scope: !766)
!1140 = !DILocation(line: 527, column: 26, scope: !766)
!1141 = !DILocation(line: 527, column: 7, scope: !766)
!1142 = !DILocation(line: 527, column: 10, scope: !766)
!1143 = !DILocation(line: 527, column: 13, scope: !766)
!1144 = !DILocation(line: 527, column: 18, scope: !766)
!1145 = !DILocation(line: 528, column: 20, scope: !766)
!1146 = !DILocation(line: 528, column: 26, scope: !766)
!1147 = !DILocation(line: 528, column: 7, scope: !766)
!1148 = !DILocation(line: 528, column: 10, scope: !766)
!1149 = !DILocation(line: 528, column: 13, scope: !766)
!1150 = !DILocation(line: 528, column: 18, scope: !766)
!1151 = !DILocation(line: 530, column: 7, scope: !766)
!1152 = !DILocation(line: 530, column: 10, scope: !766)
!1153 = !DILocation(line: 530, column: 15, scope: !766)
!1154 = !DILocation(line: 532, column: 7, scope: !766)
!1155 = !DILocation(line: 532, column: 10, scope: !766)
!1156 = !DILocation(line: 532, column: 13, scope: !766)
!1157 = !DILocation(line: 532, column: 19, scope: !766)
!1158 = !DILocation(line: 532, column: 23, scope: !766)
!1159 = !DILocation(line: 533, column: 4, scope: !766)
!1160 = !DILocation(line: 536, column: 12, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !766, file: !31, line: 536, column: 8)
!1162 = !DILocation(line: 536, column: 15, scope: !1161)
!1163 = !DILocation(line: 536, column: 18, scope: !1161)
!1164 = !DILocation(line: 536, column: 24, scope: !1161)
!1165 = !DILocation(line: 536, column: 9, scope: !1161)
!1166 = !DILocation(line: 536, column: 29, scope: !1161)
!1167 = !DILocation(line: 536, column: 39, scope: !1161)
!1168 = !DILocation(line: 536, column: 8, scope: !766)
!1169 = !DILocation(line: 537, column: 15, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !31, line: 537, column: 11)
!1171 = distinct !DILexicalBlock(scope: !1161, file: !31, line: 536, column: 45)
!1172 = !DILocation(line: 537, column: 18, scope: !1170)
!1173 = !DILocation(line: 537, column: 21, scope: !1170)
!1174 = !DILocation(line: 537, column: 27, scope: !1170)
!1175 = !DILocation(line: 537, column: 12, scope: !1170)
!1176 = !DILocation(line: 537, column: 32, scope: !1170)
!1177 = !DILocation(line: 537, column: 42, scope: !1170)
!1178 = !DILocation(line: 537, column: 11, scope: !1171)
!1179 = !DILocation(line: 539, column: 3, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1170, file: !31, line: 537, column: 48)
!1181 = !DILocation(line: 544, column: 1, scope: !1171)
!1182 = !DILocation(line: 545, column: 7, scope: !1171)
!1183 = !DILocation(line: 548, column: 4, scope: !766)
!1184 = !DILocation(line: 552, column: 8, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !766, file: !31, line: 552, column: 8)
!1186 = !DILocation(line: 552, column: 18, scope: !1185)
!1187 = !DILocation(line: 552, column: 8, scope: !766)
!1188 = !DILocation(line: 553, column: 10, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !31, line: 552, column: 24)
!1190 = !DILocation(line: 553, column: 13, scope: !1189)
!1191 = !DILocation(line: 553, column: 16, scope: !1189)
!1192 = !DILocation(line: 553, column: 22, scope: !1189)
!1193 = !DILocation(line: 553, column: 27, scope: !1189)
!1194 = !DILocation(line: 554, column: 4, scope: !1189)
!1195 = !DILocation(line: 555, column: 10, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1185, file: !31, line: 554, column: 11)
!1197 = !DILocation(line: 555, column: 13, scope: !1196)
!1198 = !DILocation(line: 555, column: 16, scope: !1196)
!1199 = !DILocation(line: 555, column: 22, scope: !1196)
!1200 = !DILocation(line: 555, column: 27, scope: !1196)
!1201 = !DILocation(line: 558, column: 26, scope: !766)
!1202 = !DILocation(line: 558, column: 32, scope: !766)
!1203 = !DILocation(line: 558, column: 7, scope: !766)
!1204 = !DILocation(line: 558, column: 10, scope: !766)
!1205 = !DILocation(line: 558, column: 13, scope: !766)
!1206 = !DILocation(line: 558, column: 19, scope: !766)
!1207 = !DILocation(line: 558, column: 24, scope: !766)
!1208 = !DILocation(line: 559, column: 20, scope: !766)
!1209 = !DILocation(line: 559, column: 26, scope: !766)
!1210 = !DILocation(line: 559, column: 7, scope: !766)
!1211 = !DILocation(line: 559, column: 10, scope: !766)
!1212 = !DILocation(line: 559, column: 13, scope: !766)
!1213 = !DILocation(line: 559, column: 18, scope: !766)
!1214 = !DILocation(line: 560, column: 20, scope: !766)
!1215 = !DILocation(line: 560, column: 26, scope: !766)
!1216 = !DILocation(line: 560, column: 7, scope: !766)
!1217 = !DILocation(line: 560, column: 10, scope: !766)
!1218 = !DILocation(line: 560, column: 13, scope: !766)
!1219 = !DILocation(line: 560, column: 18, scope: !766)
!1220 = !DILocation(line: 562, column: 7, scope: !766)
!1221 = !DILocation(line: 562, column: 10, scope: !766)
!1222 = !DILocation(line: 562, column: 15, scope: !766)
!1223 = !DILocation(line: 564, column: 7, scope: !766)
!1224 = !DILocation(line: 564, column: 10, scope: !766)
!1225 = !DILocation(line: 564, column: 13, scope: !766)
!1226 = !DILocation(line: 564, column: 19, scope: !766)
!1227 = !DILocation(line: 564, column: 23, scope: !766)
!1228 = !DILocation(line: 565, column: 4, scope: !766)
!1229 = !DILocation(line: 568, column: 12, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !766, file: !31, line: 568, column: 8)
!1231 = !DILocation(line: 568, column: 15, scope: !1230)
!1232 = !DILocation(line: 568, column: 18, scope: !1230)
!1233 = !DILocation(line: 568, column: 24, scope: !1230)
!1234 = !DILocation(line: 568, column: 9, scope: !1230)
!1235 = !DILocation(line: 568, column: 29, scope: !1230)
!1236 = !DILocation(line: 568, column: 39, scope: !1230)
!1237 = !DILocation(line: 568, column: 8, scope: !766)
!1238 = !DILocation(line: 571, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1230, file: !31, line: 568, column: 45)
!1240 = !DILocation(line: 574, column: 4, scope: !766)
!1241 = !DILocation(line: 575, column: 1, scope: !766)
!1242 = distinct !DISubprogram(name: "Message_CloseAllocated", scope: !31, file: !31, line: 592, type: !1243, isLocal: false, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !53)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!34, !36}
!1245 = !DILocalVariable(name: "chan", arg: 1, scope: !1242, file: !31, line: 592, type: !36)
!1246 = !DILocation(line: 592, column: 41, scope: !1242)
!1247 = !DILocalVariable(name: "bp", scope: !1242, file: !31, line: 594, type: !66)
!1248 = !DILocation(line: 594, column: 19, scope: !1242)
!1249 = !DILocalVariable(name: "ret", scope: !1242, file: !31, line: 595, type: !34)
!1250 = !DILocation(line: 595, column: 9, scope: !1242)
!1251 = !DILocation(line: 598, column: 7, scope: !1242)
!1252 = !DILocation(line: 598, column: 10, scope: !1242)
!1253 = !DILocation(line: 598, column: 13, scope: !1242)
!1254 = !DILocation(line: 598, column: 19, scope: !1242)
!1255 = !DILocation(line: 598, column: 24, scope: !1242)
!1256 = !DILocation(line: 600, column: 26, scope: !1242)
!1257 = !DILocation(line: 600, column: 32, scope: !1242)
!1258 = !DILocation(line: 600, column: 7, scope: !1242)
!1259 = !DILocation(line: 600, column: 10, scope: !1242)
!1260 = !DILocation(line: 600, column: 13, scope: !1242)
!1261 = !DILocation(line: 600, column: 19, scope: !1242)
!1262 = !DILocation(line: 600, column: 24, scope: !1242)
!1263 = !DILocation(line: 601, column: 20, scope: !1242)
!1264 = !DILocation(line: 601, column: 26, scope: !1242)
!1265 = !DILocation(line: 601, column: 7, scope: !1242)
!1266 = !DILocation(line: 601, column: 10, scope: !1242)
!1267 = !DILocation(line: 601, column: 13, scope: !1242)
!1268 = !DILocation(line: 601, column: 18, scope: !1242)
!1269 = !DILocation(line: 602, column: 20, scope: !1242)
!1270 = !DILocation(line: 602, column: 26, scope: !1242)
!1271 = !DILocation(line: 602, column: 7, scope: !1242)
!1272 = !DILocation(line: 602, column: 10, scope: !1242)
!1273 = !DILocation(line: 602, column: 13, scope: !1242)
!1274 = !DILocation(line: 602, column: 18, scope: !1242)
!1275 = !DILocation(line: 604, column: 7, scope: !1242)
!1276 = !DILocation(line: 604, column: 10, scope: !1242)
!1277 = !DILocation(line: 604, column: 13, scope: !1242)
!1278 = !DILocation(line: 604, column: 19, scope: !1242)
!1279 = !DILocation(line: 604, column: 23, scope: !1242)
!1280 = !DILocation(line: 605, column: 4, scope: !1242)
!1281 = !DILocation(line: 608, column: 12, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1242, file: !31, line: 608, column: 8)
!1283 = !DILocation(line: 608, column: 15, scope: !1282)
!1284 = !DILocation(line: 608, column: 18, scope: !1282)
!1285 = !DILocation(line: 608, column: 24, scope: !1282)
!1286 = !DILocation(line: 608, column: 9, scope: !1282)
!1287 = !DILocation(line: 608, column: 29, scope: !1282)
!1288 = !DILocation(line: 608, column: 39, scope: !1282)
!1289 = !DILocation(line: 608, column: 8, scope: !1242)
!1290 = !DILocation(line: 611, column: 11, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1282, file: !31, line: 608, column: 45)
!1292 = !DILocation(line: 612, column: 4, scope: !1291)
!1293 = !DILocation(line: 614, column: 9, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1242, file: !31, line: 614, column: 8)
!1295 = !DILocation(line: 614, column: 15, scope: !1294)
!1296 = !DILocation(line: 614, column: 8, scope: !1242)
!1297 = !DILocation(line: 615, column: 12, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !31, line: 614, column: 31)
!1299 = !DILocation(line: 615, column: 18, scope: !1298)
!1300 = !DILocation(line: 615, column: 7, scope: !1298)
!1301 = !DILocation(line: 616, column: 4, scope: !1298)
!1302 = !DILocation(line: 617, column: 4, scope: !1242)
!1303 = !DILocation(line: 617, column: 10, scope: !1242)
!1304 = !DILocation(line: 617, column: 13, scope: !1242)
!1305 = !DILocation(line: 619, column: 11, scope: !1242)
!1306 = !DILocation(line: 619, column: 4, scope: !1242)
!1307 = distinct !DISubprogram(name: "Message_Close", scope: !31, file: !31, line: 641, type: !1243, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !53)
!1308 = !DILocalVariable(name: "chan", arg: 1, scope: !1307, file: !31, line: 641, type: !36)
!1309 = !DILocation(line: 641, column: 32, scope: !1307)
!1310 = !DILocalVariable(name: "ret", scope: !1307, file: !31, line: 643, type: !34)
!1311 = !DILocation(line: 643, column: 9, scope: !1307)
!1312 = !DILocation(line: 643, column: 38, scope: !1307)
!1313 = !DILocation(line: 643, column: 15, scope: !1307)
!1314 = !DILocation(line: 645, column: 9, scope: !1307)
!1315 = !DILocation(line: 645, column: 4, scope: !1307)
!1316 = !DILocation(line: 646, column: 11, scope: !1307)
!1317 = !DILocation(line: 646, column: 4, scope: !1307)
