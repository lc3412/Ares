; ModuleID = './line7-dns.o.i'
source_filename = "./line7-dns.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mx_hostentry = type { [1025 x i8], [46 x i8], i32, %struct.addrinfo, %struct.sockaddr_storage }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.__ns_msg = type { i8*, i8*, i16, i16, [4 x i16], [4 x i8*], i32, i32, i8* }
%struct.__ns_rr = type { [1025 x i8], i16, i16, i32, i16, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dns_get_mx_list(i8*, i32, %struct.mx_hostentry**, i32) #0 !dbg !151 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mx_hostentry**, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1025 x i8], align 16
  %11 = alloca %struct.__ns_msg, align 8
  %12 = alloca %struct.__ns_rr, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.mx_hostentry*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !201, metadata !202), !dbg !203
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !204, metadata !202), !dbg !205
  store %struct.mx_hostentry** %2, %struct.mx_hostentry*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.mx_hostentry*** %8, metadata !206, metadata !202), !dbg !207
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !208, metadata !202), !dbg !209
  call void @llvm.dbg.declare(metadata [1025 x i8]* %10, metadata !210, metadata !202), !dbg !211
  call void @llvm.dbg.declare(metadata %struct.__ns_msg* %11, metadata !212, metadata !202), !dbg !237
  call void @llvm.dbg.declare(metadata %struct.__ns_rr* %12, metadata !238, metadata !202), !dbg !249
  call void @llvm.dbg.declare(metadata i8** %13, metadata !250, metadata !202), !dbg !251
  call void @llvm.dbg.declare(metadata i8** %14, metadata !252, metadata !202), !dbg !255
  call void @llvm.dbg.declare(metadata i8** %15, metadata !256, metadata !202), !dbg !258
  call void @llvm.dbg.declare(metadata %struct.mx_hostentry** %16, metadata !259, metadata !202), !dbg !260
  store %struct.mx_hostentry* null, %struct.mx_hostentry** %16, align 8, !dbg !260
  call void @llvm.dbg.declare(metadata i64* %17, metadata !261, metadata !202), !dbg !264
  store i64 0, i64* %17, align 8, !dbg !264
  call void @llvm.dbg.declare(metadata i64* %18, metadata !265, metadata !202), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %19, metadata !267, metadata !202), !dbg !268
  call void @llvm.dbg.declare(metadata i32* %20, metadata !269, metadata !202), !dbg !270
  call void @llvm.dbg.declare(metadata i32* %21, metadata !271, metadata !202), !dbg !272
  store i32 0, i32* %21, align 4, !dbg !272
  call void @llvm.dbg.declare(metadata i32* %22, metadata !273, metadata !202), !dbg !274
  call void @llvm.dbg.declare(metadata i32* %23, metadata !275, metadata !202), !dbg !276
  %24 = call i32 @__res_init() #6, !dbg !277
  %25 = load i8*, i8** %6, align 8, !dbg !278
  store i8* %25, i8** %13, align 8, !dbg !279
  store i32 0, i32* %20, align 4, !dbg !280
  store i64 65536, i64* %18, align 8, !dbg !281
  %26 = load i64, i64* %18, align 8, !dbg !282
  %27 = call noalias i8* @malloc(i64 %26) #6, !dbg !283
  store i8* %27, i8** %15, align 8, !dbg !284
  %28 = load i8*, i8** %15, align 8, !dbg !285
  %29 = icmp eq i8* %28, null, !dbg !287
  br i1 %29, label %30, label %31, !dbg !288

; <label>:30:                                     ; preds = %4
  store i32 1, i32* %5, align 4, !dbg !289
  br label %192, !dbg !289

; <label>:31:                                     ; preds = %4
  %32 = load i32, i32* %9, align 4, !dbg !290
  %33 = icmp ne i32 %32, 0, !dbg !290
  br i1 %33, label %34, label %35, !dbg !292

; <label>:34:                                     ; preds = %31
  br label %142, !dbg !293

; <label>:35:                                     ; preds = %31
  br label %36, !dbg !294

; <label>:36:                                     ; preds = %134, %35
  %37 = load i8*, i8** %13, align 8, !dbg !296
  %38 = load i8*, i8** %15, align 8, !dbg !297
  %39 = load i64, i64* %18, align 8, !dbg !298
  %40 = trunc i64 %39 to i32, !dbg !298
  %41 = call i32 @__res_search(i8* %37, i32 1, i32 15, i8* %38, i32 %40) #6, !dbg !299
  store i32 %41, i32* %22, align 4, !dbg !300
  %42 = load i32, i32* %22, align 4, !dbg !301
  %43 = icmp slt i32 %42, 0, !dbg !303
  br i1 %43, label %44, label %53, !dbg !304

; <label>:44:                                     ; preds = %36
  %45 = call i32* @__h_errno_location() #1, !dbg !305
  %46 = load i32, i32* %45, align 4, !dbg !307
  switch i32 %46, label %50 [
    i32 4, label %47
    i32 2, label %48
    i32 3, label %49
    i32 1, label %49
  ], !dbg !308

; <label>:47:                                     ; preds = %44
  br label %142, !dbg !309

; <label>:48:                                     ; preds = %44
  br label %144, !dbg !311

; <label>:49:                                     ; preds = %44, %44
  br label %50, !dbg !312

; <label>:50:                                     ; preds = %44, %49
  %51 = call i32* @__errno_location() #1, !dbg !314
  store i32 2, i32* %51, align 4, !dbg !315
  %52 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !316
  br label %151, !dbg !317

; <label>:53:                                     ; preds = %36
  %54 = load i8*, i8** %15, align 8, !dbg !318
  %55 = load i64, i64* %18, align 8, !dbg !320
  %56 = trunc i64 %55 to i32, !dbg !320
  %57 = call i32 @ns_initparse(i8* %54, i32 %56, %struct.__ns_msg* %11) #6, !dbg !321
  %58 = icmp ne i32 %57, 0, !dbg !321
  br i1 %58, label %60, label %59, !dbg !322

; <label>:59:                                     ; preds = %53
  br label %144, !dbg !323

; <label>:60:                                     ; preds = %53
  %61 = call i32 @ns_msg_getflag(%struct.__ns_msg* byval align 8 %11, i32 9) #6, !dbg !324
  switch i32 %61, label %65 [
    i32 0, label %62
    i32 3, label %63
  ], !dbg !325

; <label>:62:                                     ; preds = %60
  br label %66, !dbg !326

; <label>:63:                                     ; preds = %60
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !328
  br label %151, !dbg !329

; <label>:65:                                     ; preds = %60
  br label %144, !dbg !330

; <label>:66:                                     ; preds = %62
  store i32 0, i32* %23, align 4, !dbg !331
  br label %67, !dbg !333

; <label>:67:                                     ; preds = %138, %66
  %68 = load i32, i32* %23, align 4, !dbg !334
  %69 = getelementptr inbounds %struct.__ns_msg, %struct.__ns_msg* %11, i32 0, i32 4, !dbg !337
  %70 = getelementptr inbounds [4 x i16], [4 x i16]* %69, i64 0, i64 1, !dbg !338
  %71 = load i16, i16* %70, align 2, !dbg !338
  %72 = zext i16 %71 to i32, !dbg !338
  %73 = add nsw i32 %72, 0, !dbg !337
  %74 = icmp slt i32 %68, %73, !dbg !339
  br i1 %74, label %75, label %141, !dbg !340

; <label>:75:                                     ; preds = %67
  %76 = load i32, i32* %23, align 4, !dbg !341
  %77 = call i32 @ns_parserr(%struct.__ns_msg* %11, i32 1, i32 %76, %struct.__ns_rr* %12) #6, !dbg !344
  %78 = icmp ne i32 %77, 0, !dbg !344
  br i1 %78, label %79, label %80, !dbg !345

; <label>:79:                                     ; preds = %75
  br label %144, !dbg !346

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds %struct.__ns_rr, %struct.__ns_rr* %12, i32 0, i32 5, !dbg !348
  %82 = load i8*, i8** %81, align 8, !dbg !348
  %83 = getelementptr inbounds i8, i8* %82, i64 0, !dbg !349
  store i8* %83, i8** %14, align 8, !dbg !350
  %84 = getelementptr inbounds %struct.__ns_rr, %struct.__ns_rr* %12, i32 0, i32 1, !dbg !351
  %85 = load i16, i16* %84, align 2, !dbg !351
  %86 = zext i16 %85 to i32, !dbg !352
  %87 = add nsw i32 %86, 0, !dbg !353
  switch i32 %87, label %136 [
    i32 15, label %88
    i32 5, label %115
  ], !dbg !354

; <label>:88:                                     ; preds = %80
  store i32 1, i32* %21, align 4, !dbg !355
  %89 = load i8*, i8** %14, align 8, !dbg !357
  %90 = call i32 @ns_get16(i8* %89) #6, !dbg !358
  store i32 %90, i32* %19, align 4, !dbg !359
  %91 = load i8*, i8** %14, align 8, !dbg !360
  %92 = getelementptr inbounds i8, i8* %91, i64 2, !dbg !360
  store i8* %92, i8** %14, align 8, !dbg !360
  %93 = getelementptr inbounds %struct.__ns_msg, %struct.__ns_msg* %11, i32 0, i32 0, !dbg !361
  %94 = load i8*, i8** %93, align 8, !dbg !361
  %95 = getelementptr inbounds i8, i8* %94, i64 0, !dbg !362
  %96 = getelementptr inbounds %struct.__ns_msg, %struct.__ns_msg* %11, i32 0, i32 1, !dbg !363
  %97 = load i8*, i8** %96, align 8, !dbg !363
  %98 = getelementptr inbounds i8, i8* %97, i64 0, !dbg !364
  %99 = load i8*, i8** %14, align 8, !dbg !365
  %100 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i32 0, i32 0, !dbg !366
  %101 = call i32 @ns_name_uncompress(i8* %95, i8* %98, i8* %99, i8* %100, i64 1025) #6, !dbg !367
  store i32 %101, i32* %22, align 4, !dbg !368
  %102 = load i32, i32* %22, align 4, !dbg !369
  %103 = icmp slt i32 %102, 0, !dbg !371
  br i1 %103, label %104, label %105, !dbg !372

; <label>:104:                                    ; preds = %88
  br label %144, !dbg !373

; <label>:105:                                    ; preds = %88
  %106 = load i32, i32* %19, align 4, !dbg !374
  %107 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i32 0, i32 0, !dbg !375
  %108 = load i32, i32* %7, align 4, !dbg !376
  %109 = call i32 @add_host(i32 %106, i8* %107, i32 %108, %struct.mx_hostentry** %16, i64* %17), !dbg !377
  store i32 %109, i32* %22, align 4, !dbg !378
  %110 = load i32, i32* %22, align 4, !dbg !379
  %111 = icmp eq i32 %110, -1, !dbg !381
  br i1 %111, label %112, label %114, !dbg !382

; <label>:112:                                    ; preds = %105
  %113 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !383
  br label %151, !dbg !385

; <label>:114:                                    ; preds = %105
  br label %137, !dbg !386

; <label>:115:                                    ; preds = %80
  %116 = getelementptr inbounds %struct.__ns_msg, %struct.__ns_msg* %11, i32 0, i32 0, !dbg !387
  %117 = load i8*, i8** %116, align 8, !dbg !387
  %118 = getelementptr inbounds i8, i8* %117, i64 0, !dbg !388
  %119 = getelementptr inbounds %struct.__ns_msg, %struct.__ns_msg* %11, i32 0, i32 1, !dbg !389
  %120 = load i8*, i8** %119, align 8, !dbg !389
  %121 = getelementptr inbounds i8, i8* %120, i64 0, !dbg !390
  %122 = load i8*, i8** %14, align 8, !dbg !391
  %123 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i32 0, i32 0, !dbg !392
  %124 = call i32 @ns_name_uncompress(i8* %118, i8* %121, i8* %122, i8* %123, i64 1025) #6, !dbg !393
  store i32 %124, i32* %22, align 4, !dbg !394
  %125 = load i32, i32* %22, align 4, !dbg !395
  %126 = icmp slt i32 %125, 0, !dbg !397
  br i1 %126, label %127, label %128, !dbg !398

; <label>:127:                                    ; preds = %115
  br label %144, !dbg !399

; <label>:128:                                    ; preds = %115
  %129 = load i32, i32* %20, align 4, !dbg !400
  %130 = add nsw i32 %129, 1, !dbg !400
  store i32 %130, i32* %20, align 4, !dbg !400
  %131 = icmp sgt i32 %129, 10, !dbg !402
  br i1 %131, label %132, label %134, !dbg !403

; <label>:132:                                    ; preds = %128
  %133 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !404
  br label %151, !dbg !406

; <label>:134:                                    ; preds = %128
  %135 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i32 0, i32 0, !dbg !407
  store i8* %135, i8** %13, align 8, !dbg !408
  br label %36, !dbg !409

; <label>:136:                                    ; preds = %80
  br label %137, !dbg !410

; <label>:137:                                    ; preds = %136, %114
  br label %138, !dbg !411

; <label>:138:                                    ; preds = %137
  %139 = load i32, i32* %23, align 4, !dbg !412
  %140 = add nsw i32 %139, 1, !dbg !412
  store i32 %140, i32* %23, align 4, !dbg !412
  br label %67, !dbg !413, !llvm.loop !415

; <label>:141:                                    ; preds = %67
  br label %142, !dbg !417

; <label>:142:                                    ; preds = %141, %47, %34
  store i32 0, i32* %22, align 4, !dbg !419
  br i1 false, label %143, label %149, !dbg !420

; <label>:143:                                    ; preds = %142
  br label %144, !dbg !421

; <label>:144:                                    ; preds = %143, %127, %104, %79, %65, %59, %48
  %145 = load i64, i64* %17, align 8, !dbg !424
  %146 = icmp eq i64 %145, 0, !dbg !427
  br i1 %146, label %147, label %148, !dbg !428

; <label>:147:                                    ; preds = %144
  store i32 1, i32* %22, align 4, !dbg !429
  br label %148, !dbg !430

; <label>:148:                                    ; preds = %147, %144
  br label %149, !dbg !431

; <label>:149:                                    ; preds = %148, %142
  br i1 false, label %150, label %152, !dbg !432

; <label>:150:                                    ; preds = %149
  br label %151, !dbg !433

; <label>:151:                                    ; preds = %150, %132, %112, %63, %50
  store i32 -1, i32* %22, align 4, !dbg !436
  br label %152, !dbg !438

; <label>:152:                                    ; preds = %151, %149
  %153 = load i8*, i8** %15, align 8, !dbg !439
  call void @free(i8* %153) #6, !dbg !440
  %154 = load i32, i32* %22, align 4, !dbg !441
  %155 = icmp eq i32 %154, 0, !dbg !443
  br i1 %155, label %156, label %169, !dbg !444

; <label>:156:                                    ; preds = %152
  %157 = load i32, i32* %21, align 4, !dbg !445
  %158 = icmp ne i32 %157, 0, !dbg !445
  br i1 %158, label %163, label %159, !dbg !448

; <label>:159:                                    ; preds = %156
  %160 = load i8*, i8** %6, align 8, !dbg !449
  %161 = load i32, i32* %7, align 4, !dbg !451
  %162 = call i32 @add_host(i32 0, i8* %160, i32 %161, %struct.mx_hostentry** %16, i64* %17), !dbg !452
  store i32 %162, i32* %22, align 4, !dbg !453
  br label %168, !dbg !454

; <label>:163:                                    ; preds = %156
  %164 = load i64, i64* %17, align 8, !dbg !455
  %165 = icmp eq i64 %164, 0, !dbg !458
  br i1 %165, label %166, label %167, !dbg !455

; <label>:166:                                    ; preds = %163
  store i32 1, i32* %22, align 4, !dbg !459
  br label %167, !dbg !461

; <label>:167:                                    ; preds = %166, %163
  br label %168

; <label>:168:                                    ; preds = %167, %159
  br label %169, !dbg !462

; <label>:169:                                    ; preds = %168, %152
  %170 = load i64, i64* %17, align 8, !dbg !463
  %171 = icmp ugt i64 %170, 0, !dbg !465
  br i1 %171, label %172, label %181, !dbg !466

; <label>:172:                                    ; preds = %169
  %173 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !467
  %174 = bitcast %struct.mx_hostentry* %173 to i8*, !dbg !467
  %175 = load i64, i64* %17, align 8, !dbg !469
  call void @qsort(i8* %174, i64 %175, i64 1256, i32 (i8*, i8*)* @sort_pref), !dbg !470
  %176 = load i64, i64* %17, align 8, !dbg !471
  %177 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !472
  %178 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %177, i64 %176, !dbg !472
  %179 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %178, i32 0, i32 0, !dbg !473
  %180 = getelementptr inbounds [1025 x i8], [1025 x i8]* %179, i32 0, i32 0, !dbg !474
  store i8 0, i8* %180, align 8, !dbg !475
  br label %188, !dbg !476

; <label>:181:                                    ; preds = %169
  %182 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !477
  %183 = icmp ne %struct.mx_hostentry* %182, null, !dbg !480
  br i1 %183, label %184, label %187, !dbg !481

; <label>:184:                                    ; preds = %181
  %185 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !482
  %186 = bitcast %struct.mx_hostentry* %185 to i8*, !dbg !482
  call void @free(i8* %186) #6, !dbg !483
  br label %187, !dbg !483

; <label>:187:                                    ; preds = %184, %181
  store %struct.mx_hostentry* null, %struct.mx_hostentry** %16, align 8, !dbg !484
  br label %188

; <label>:188:                                    ; preds = %187, %172
  %189 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !485
  %190 = load %struct.mx_hostentry**, %struct.mx_hostentry*** %8, align 8, !dbg !486
  store %struct.mx_hostentry* %189, %struct.mx_hostentry** %190, align 8, !dbg !487
  %191 = load i32, i32* %22, align 4, !dbg !488
  store i32 %191, i32* %5, align 4, !dbg !489
  br label %192, !dbg !489

; <label>:192:                                    ; preds = %188, %30
  %193 = load i32, i32* %5, align 4, !dbg !490
  ret i32 %193, !dbg !490
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @__res_init() #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i32 @__res_search(i8*, i32, i32, i8*, i32) #2

; Function Attrs: nounwind readnone
declare i32* @__h_errno_location() #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i32 @assert(...) #4

; Function Attrs: nounwind
declare i32 @ns_initparse(i8*, i32, %struct.__ns_msg*) #2

; Function Attrs: nounwind
declare i32 @ns_msg_getflag(%struct.__ns_msg* byval align 8, i32) #2

; Function Attrs: nounwind
declare i32 @ns_parserr(%struct.__ns_msg*, i32, i32, %struct.__ns_rr*) #2

; Function Attrs: nounwind
declare i32 @ns_get16(i8*) #2

; Function Attrs: nounwind
declare i32 @ns_name_uncompress(i8*, i8*, i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @add_host(i32, i8*, i32, %struct.mx_hostentry**, i64*) #0 !dbg !491 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mx_hostentry**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca [10 x i8], align 1
  %16 = alloca %struct.mx_hostentry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !495, metadata !202), !dbg !496
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !497, metadata !202), !dbg !498
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !499, metadata !202), !dbg !500
  store %struct.mx_hostentry** %3, %struct.mx_hostentry*** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.mx_hostentry*** %10, metadata !501, metadata !202), !dbg !502
  store i64* %4, i64** %11, align 8
  call void @llvm.dbg.declare(metadata i64** %11, metadata !503, metadata !202), !dbg !504
  call void @llvm.dbg.declare(metadata %struct.addrinfo* %12, metadata !505, metadata !202), !dbg !506
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %13, metadata !507, metadata !202), !dbg !508
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %14, metadata !509, metadata !202), !dbg !510
  store %struct.addrinfo* null, %struct.addrinfo** %14, align 8, !dbg !510
  call void @llvm.dbg.declare(metadata [10 x i8]* %15, metadata !511, metadata !202), !dbg !515
  call void @llvm.dbg.declare(metadata %struct.mx_hostentry** %16, metadata !516, metadata !202), !dbg !517
  call void @llvm.dbg.declare(metadata i32* %17, metadata !518, metadata !202), !dbg !520
  store i32 10, i32* %17, align 4, !dbg !520
  call void @llvm.dbg.declare(metadata i32* %18, metadata !521, metadata !202), !dbg !522
  %20 = bitcast %struct.addrinfo* %12 to i8*, !dbg !523
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 48, i32 8, i1 false), !dbg !523
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 1, !dbg !524
  store i32 0, i32* %21, align 4, !dbg !525
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 2, !dbg !526
  store i32 1, i32* %22, align 8, !dbg !527
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3, !dbg !528
  store i32 6, i32* %23, align 4, !dbg !529
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i32 0, i32 0, !dbg !530
  %25 = load i32, i32* %9, align 4, !dbg !531
  %26 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %24, i64 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %25) #6, !dbg !532
  %27 = load i8*, i8** %8, align 8, !dbg !533
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i32 0, i32 0, !dbg !534
  %29 = call i32 @getaddrinfo(i8* %27, i8* %28, %struct.addrinfo* %12, %struct.addrinfo** %14), !dbg !535
  store i32 %29, i32* %18, align 4, !dbg !536
  %30 = load i32, i32* %18, align 4, !dbg !537
  %31 = icmp ne i32 %30, 0, !dbg !537
  br i1 %31, label %32, label %36, !dbg !539

; <label>:32:                                     ; preds = %5
  %33 = load i32, i32* %18, align 4, !dbg !540
  %34 = icmp eq i32 %33, -3, !dbg !541
  %35 = select i1 %34, i32 1, i32 -1, !dbg !540
  store i32 %35, i32* %6, align 4, !dbg !542
  br label %131, !dbg !542

; <label>:36:                                     ; preds = %5
  %37 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8, !dbg !543
  store %struct.addrinfo* %37, %struct.addrinfo** %13, align 8, !dbg !545
  br label %38, !dbg !546

; <label>:38:                                     ; preds = %119, %36
  %39 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8, !dbg !547
  %40 = icmp ne %struct.addrinfo* %39, null, !dbg !550
  br i1 %40, label %41, label %123, !dbg !551

; <label>:41:                                     ; preds = %38
  %42 = load i64*, i64** %11, align 8, !dbg !552
  %43 = load i64, i64* %42, align 8, !dbg !555
  %44 = add i64 %43, 1, !dbg !556
  %45 = load i64*, i64** %11, align 8, !dbg !557
  %46 = load i64, i64* %45, align 8, !dbg !558
  %47 = add i64 %46, 9, !dbg !559
  %48 = udiv i64 %47, 10, !dbg !560
  %49 = mul i64 %48, 10, !dbg !561
  %50 = icmp uge i64 %44, %49, !dbg !562
  br i1 %50, label %51, label %71, !dbg !563

; <label>:51:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata i64* %19, metadata !564, metadata !202), !dbg !566
  %52 = load i64*, i64** %11, align 8, !dbg !567
  %53 = load i64, i64* %52, align 8, !dbg !568
  %54 = add i64 %53, 2, !dbg !569
  %55 = add i64 %54, 9, !dbg !570
  %56 = udiv i64 %55, 10, !dbg !571
  %57 = mul i64 %56, 10, !dbg !572
  store i64 %57, i64* %19, align 8, !dbg !566
  %58 = load %struct.mx_hostentry**, %struct.mx_hostentry*** %10, align 8, !dbg !573
  %59 = load %struct.mx_hostentry*, %struct.mx_hostentry** %58, align 8, !dbg !574
  %60 = bitcast %struct.mx_hostentry* %59 to i8*, !dbg !574
  %61 = load i64, i64* %19, align 8, !dbg !575
  %62 = mul i64 %61, 1256, !dbg !576
  %63 = call i8* @reallocf(i8* %60, i64 %62), !dbg !577
  %64 = bitcast i8* %63 to %struct.mx_hostentry*, !dbg !577
  %65 = load %struct.mx_hostentry**, %struct.mx_hostentry*** %10, align 8, !dbg !578
  store %struct.mx_hostentry* %64, %struct.mx_hostentry** %65, align 8, !dbg !579
  %66 = load %struct.mx_hostentry**, %struct.mx_hostentry*** %10, align 8, !dbg !580
  %67 = load %struct.mx_hostentry*, %struct.mx_hostentry** %66, align 8, !dbg !582
  %68 = icmp eq %struct.mx_hostentry* %67, null, !dbg !583
  br i1 %68, label %69, label %70, !dbg !584

; <label>:69:                                     ; preds = %51
  br label %125, !dbg !585

; <label>:70:                                     ; preds = %51
  br label %71, !dbg !586

; <label>:71:                                     ; preds = %70, %41
  %72 = load i64*, i64** %11, align 8, !dbg !587
  %73 = load i64, i64* %72, align 8, !dbg !588
  %74 = load %struct.mx_hostentry**, %struct.mx_hostentry*** %10, align 8, !dbg !589
  %75 = load %struct.mx_hostentry*, %struct.mx_hostentry** %74, align 8, !dbg !590
  %76 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %75, i64 %73, !dbg !591
  store %struct.mx_hostentry* %76, %struct.mx_hostentry** %16, align 8, !dbg !592
  %77 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !593
  %78 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %77, i32 0, i32 0, !dbg !594
  %79 = getelementptr inbounds [1025 x i8], [1025 x i8]* %78, i32 0, i32 0, !dbg !593
  %80 = load i8*, i8** %8, align 8, !dbg !595
  %81 = call i64 @strlcpy(i8* %79, i8* %80, i64 1025), !dbg !596
  %82 = load i32, i32* %7, align 4, !dbg !597
  %83 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !598
  %84 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %83, i32 0, i32 2, !dbg !599
  store i32 %82, i32* %84, align 8, !dbg !600
  %85 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !601
  %86 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %85, i32 0, i32 3, !dbg !602
  %87 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8, !dbg !603
  %88 = bitcast %struct.addrinfo* %86 to i8*, !dbg !604
  %89 = bitcast %struct.addrinfo* %87 to i8*, !dbg !604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 48, i32 8, i1 false), !dbg !604
  %90 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !605
  %91 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %90, i32 0, i32 3, !dbg !606
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 5, !dbg !607
  store %struct.sockaddr* null, %struct.sockaddr** %92, align 8, !dbg !608
  %93 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8, !dbg !609
  %94 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %93, i32 0, i32 5, !dbg !610
  %95 = load %struct.sockaddr*, %struct.sockaddr** %94, align 8, !dbg !610
  %96 = bitcast %struct.sockaddr* %95 to i8*, !dbg !609
  %97 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !611
  %98 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %97, i32 0, i32 4, !dbg !612
  %99 = bitcast %struct.sockaddr_storage* %98 to i8*, !dbg !613
  %100 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !614
  %101 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %100, i32 0, i32 3, !dbg !615
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 4, !dbg !616
  %103 = load i32, i32* %102, align 8, !dbg !616
  %104 = zext i32 %103 to i64, !dbg !614
  call void @bcopy(i8* %96, i8* %99, i64 %104) #6, !dbg !617
  %105 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !618
  %106 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %105, i32 0, i32 4, !dbg !619
  %107 = bitcast %struct.sockaddr_storage* %106 to %struct.sockaddr*, !dbg !620
  %108 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !621
  %109 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %108, i32 0, i32 3, !dbg !622
  %110 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %109, i32 0, i32 4, !dbg !623
  %111 = load i32, i32* %110, align 8, !dbg !623
  %112 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8, !dbg !624
  %113 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %112, i32 0, i32 1, !dbg !625
  %114 = getelementptr inbounds [46 x i8], [46 x i8]* %113, i32 0, i32 0, !dbg !624
  %115 = call i32 @getnameinfo(%struct.sockaddr* %107, i32 %111, i8* %114, i32 46, i8* null, i32 0, i32 1), !dbg !626
  %116 = load i64*, i64** %11, align 8, !dbg !627
  %117 = load i64, i64* %116, align 8, !dbg !628
  %118 = add i64 %117, 1, !dbg !628
  store i64 %118, i64* %116, align 8, !dbg !628
  br label %119, !dbg !629

; <label>:119:                                    ; preds = %71
  %120 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8, !dbg !630
  %121 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %120, i32 0, i32 7, !dbg !632
  %122 = load %struct.addrinfo*, %struct.addrinfo** %121, align 8, !dbg !632
  store %struct.addrinfo* %122, %struct.addrinfo** %13, align 8, !dbg !633
  br label %38, !dbg !634, !llvm.loop !635

; <label>:123:                                    ; preds = %38
  %124 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8, !dbg !637
  call void @freeaddrinfo(%struct.addrinfo* %124) #6, !dbg !638
  store i32 0, i32* %6, align 4, !dbg !639
  br label %131, !dbg !639

; <label>:125:                                    ; preds = %69
  %126 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8, !dbg !640
  %127 = icmp ne %struct.addrinfo* %126, null, !dbg !642
  br i1 %127, label %128, label %130, !dbg !643

; <label>:128:                                    ; preds = %125
  %129 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8, !dbg !644
  call void @freeaddrinfo(%struct.addrinfo* %129) #6, !dbg !645
  br label %130, !dbg !645

; <label>:130:                                    ; preds = %128, %125
  store i32 1, i32* %6, align 4, !dbg !646
  br label %131, !dbg !646

; <label>:131:                                    ; preds = %130, %123, %32
  %132 = load i32, i32* %6, align 4, !dbg !647
  ret i32 %132, !dbg !647
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #4

; Function Attrs: nounwind uwtable
define internal i32 @sort_pref(i8*, i8*) #0 !dbg !648 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mx_hostentry*, align 8
  %7 = alloca %struct.mx_hostentry*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !653, metadata !202), !dbg !654
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !655, metadata !202), !dbg !656
  call void @llvm.dbg.declare(metadata %struct.mx_hostentry** %6, metadata !657, metadata !202), !dbg !660
  %9 = load i8*, i8** %4, align 8, !dbg !661
  %10 = bitcast i8* %9 to %struct.mx_hostentry*, !dbg !661
  store %struct.mx_hostentry* %10, %struct.mx_hostentry** %6, align 8, !dbg !660
  call void @llvm.dbg.declare(metadata %struct.mx_hostentry** %7, metadata !662, metadata !202), !dbg !663
  %11 = load i8*, i8** %5, align 8, !dbg !664
  %12 = bitcast i8* %11 to %struct.mx_hostentry*, !dbg !664
  store %struct.mx_hostentry* %12, %struct.mx_hostentry** %7, align 8, !dbg !663
  call void @llvm.dbg.declare(metadata i32* %8, metadata !665, metadata !202), !dbg !666
  %13 = load %struct.mx_hostentry*, %struct.mx_hostentry** %6, align 8, !dbg !667
  %14 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %13, i32 0, i32 2, !dbg !668
  %15 = load i32, i32* %14, align 8, !dbg !668
  %16 = load %struct.mx_hostentry*, %struct.mx_hostentry** %7, align 8, !dbg !669
  %17 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %16, i32 0, i32 2, !dbg !670
  %18 = load i32, i32* %17, align 8, !dbg !670
  %19 = sub nsw i32 %15, %18, !dbg !671
  store i32 %19, i32* %8, align 4, !dbg !672
  %20 = load i32, i32* %8, align 4, !dbg !673
  %21 = icmp ne i32 %20, 0, !dbg !675
  br i1 %21, label %22, label %24, !dbg !676

; <label>:22:                                     ; preds = %2
  %23 = load i32, i32* %8, align 4, !dbg !677
  store i32 %23, i32* %3, align 4, !dbg !678
  br label %36, !dbg !678

; <label>:24:                                     ; preds = %2
  %25 = load %struct.mx_hostentry*, %struct.mx_hostentry** %6, align 8, !dbg !679
  %26 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %25, i32 0, i32 3, !dbg !680
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 1, !dbg !681
  %28 = load i32, i32* %27, align 4, !dbg !681
  %29 = load %struct.mx_hostentry*, %struct.mx_hostentry** %7, align 8, !dbg !682
  %30 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %29, i32 0, i32 3, !dbg !683
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 1, !dbg !684
  %32 = load i32, i32* %31, align 4, !dbg !684
  %33 = sub nsw i32 %28, %32, !dbg !685
  %34 = sub nsw i32 0, %33, !dbg !686
  store i32 %34, i32* %8, align 4, !dbg !687
  %35 = load i32, i32* %8, align 4, !dbg !688
  store i32 %35, i32* %3, align 4, !dbg !689
  br label %36, !dbg !689

; <label>:36:                                     ; preds = %24, %22
  %37 = load i32, i32* %3, align 4, !dbg !690
  ret i32 %37, !dbg !690
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #4

declare i8* @reallocf(i8*, i64) #4

declare i64 @strlcpy(i8*, i8*, i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #2

declare i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #4

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!148, !149}
!llvm.ident = !{!150}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !132)
!1 = !DIFile(filename: "line7-dns.o.i", directory: "/home/lichi/Desktop/dma/task1")
!2 = !{!3, !14, !24, !78, !91, !103}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__ns_sect", file: !4, line: 98, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/arpa/nameser.h", directory: "/home/lichi/Desktop/dma/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "ns_s_qd", value: 0)
!7 = !DIEnumerator(name: "ns_s_zn", value: 0)
!8 = !DIEnumerator(name: "ns_s_an", value: 1)
!9 = !DIEnumerator(name: "ns_s_pr", value: 1)
!10 = !DIEnumerator(name: "ns_s_ns", value: 2)
!11 = !DIEnumerator(name: "ns_s_ud", value: 2)
!12 = !DIEnumerator(name: "ns_s_ar", value: 3)
!13 = !DIEnumerator(name: "ns_s_max", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__ns_class", file: !4, line: 321, size: 32, align: 32, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23}
!16 = !DIEnumerator(name: "ns_c_invalid", value: 0)
!17 = !DIEnumerator(name: "ns_c_in", value: 1)
!18 = !DIEnumerator(name: "ns_c_2", value: 2)
!19 = !DIEnumerator(name: "ns_c_chaos", value: 3)
!20 = !DIEnumerator(name: "ns_c_hs", value: 4)
!21 = !DIEnumerator(name: "ns_c_none", value: 254)
!22 = !DIEnumerator(name: "ns_c_any", value: 255)
!23 = !DIEnumerator(name: "ns_c_max", value: 65536)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__ns_type", file: !4, line: 252, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!26 = !DIEnumerator(name: "ns_t_invalid", value: 0)
!27 = !DIEnumerator(name: "ns_t_a", value: 1)
!28 = !DIEnumerator(name: "ns_t_ns", value: 2)
!29 = !DIEnumerator(name: "ns_t_md", value: 3)
!30 = !DIEnumerator(name: "ns_t_mf", value: 4)
!31 = !DIEnumerator(name: "ns_t_cname", value: 5)
!32 = !DIEnumerator(name: "ns_t_soa", value: 6)
!33 = !DIEnumerator(name: "ns_t_mb", value: 7)
!34 = !DIEnumerator(name: "ns_t_mg", value: 8)
!35 = !DIEnumerator(name: "ns_t_mr", value: 9)
!36 = !DIEnumerator(name: "ns_t_null", value: 10)
!37 = !DIEnumerator(name: "ns_t_wks", value: 11)
!38 = !DIEnumerator(name: "ns_t_ptr", value: 12)
!39 = !DIEnumerator(name: "ns_t_hinfo", value: 13)
!40 = !DIEnumerator(name: "ns_t_minfo", value: 14)
!41 = !DIEnumerator(name: "ns_t_mx", value: 15)
!42 = !DIEnumerator(name: "ns_t_txt", value: 16)
!43 = !DIEnumerator(name: "ns_t_rp", value: 17)
!44 = !DIEnumerator(name: "ns_t_afsdb", value: 18)
!45 = !DIEnumerator(name: "ns_t_x25", value: 19)
!46 = !DIEnumerator(name: "ns_t_isdn", value: 20)
!47 = !DIEnumerator(name: "ns_t_rt", value: 21)
!48 = !DIEnumerator(name: "ns_t_nsap", value: 22)
!49 = !DIEnumerator(name: "ns_t_nsap_ptr", value: 23)
!50 = !DIEnumerator(name: "ns_t_sig", value: 24)
!51 = !DIEnumerator(name: "ns_t_key", value: 25)
!52 = !DIEnumerator(name: "ns_t_px", value: 26)
!53 = !DIEnumerator(name: "ns_t_gpos", value: 27)
!54 = !DIEnumerator(name: "ns_t_aaaa", value: 28)
!55 = !DIEnumerator(name: "ns_t_loc", value: 29)
!56 = !DIEnumerator(name: "ns_t_nxt", value: 30)
!57 = !DIEnumerator(name: "ns_t_eid", value: 31)
!58 = !DIEnumerator(name: "ns_t_nimloc", value: 32)
!59 = !DIEnumerator(name: "ns_t_srv", value: 33)
!60 = !DIEnumerator(name: "ns_t_atma", value: 34)
!61 = !DIEnumerator(name: "ns_t_naptr", value: 35)
!62 = !DIEnumerator(name: "ns_t_kx", value: 36)
!63 = !DIEnumerator(name: "ns_t_cert", value: 37)
!64 = !DIEnumerator(name: "ns_t_a6", value: 38)
!65 = !DIEnumerator(name: "ns_t_dname", value: 39)
!66 = !DIEnumerator(name: "ns_t_sink", value: 40)
!67 = !DIEnumerator(name: "ns_t_opt", value: 41)
!68 = !DIEnumerator(name: "ns_t_apl", value: 42)
!69 = !DIEnumerator(name: "ns_t_tkey", value: 249)
!70 = !DIEnumerator(name: "ns_t_tsig", value: 250)
!71 = !DIEnumerator(name: "ns_t_ixfr", value: 251)
!72 = !DIEnumerator(name: "ns_t_axfr", value: 252)
!73 = !DIEnumerator(name: "ns_t_mailb", value: 253)
!74 = !DIEnumerator(name: "ns_t_maila", value: 254)
!75 = !DIEnumerator(name: "ns_t_any", value: 255)
!76 = !DIEnumerator(name: "ns_t_zxfr", value: 256)
!77 = !DIEnumerator(name: "ns_t_max", value: 65536)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__ns_flag", file: !4, line: 160, size: 32, align: 32, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!80 = !DIEnumerator(name: "ns_f_qr", value: 0)
!81 = !DIEnumerator(name: "ns_f_opcode", value: 1)
!82 = !DIEnumerator(name: "ns_f_aa", value: 2)
!83 = !DIEnumerator(name: "ns_f_tc", value: 3)
!84 = !DIEnumerator(name: "ns_f_rd", value: 4)
!85 = !DIEnumerator(name: "ns_f_ra", value: 5)
!86 = !DIEnumerator(name: "ns_f_z", value: 6)
!87 = !DIEnumerator(name: "ns_f_ad", value: 7)
!88 = !DIEnumerator(name: "ns_f_cd", value: 8)
!89 = !DIEnumerator(name: "ns_f_rcode", value: 9)
!90 = !DIEnumerator(name: "ns_f_max", value: 10)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !92, line: 24, size: 32, align: 32, elements: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/dma/task1")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102}
!94 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!95 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!96 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!97 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!98 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!99 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!100 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!101 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!102 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 40, size: 32, align: 32, elements: !105)
!104 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/dma/task1")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!106 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!107 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!108 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!109 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!110 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!111 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!112 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!113 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!114 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!115 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!116 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!117 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!118 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!119 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!120 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!121 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!122 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!123 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!124 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!125 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!126 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!127 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!128 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!129 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!130 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!131 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!132 = !{!133, !134, !135}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_type", file: !4, line: 305, baseType: !24)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !137, line: 153, size: 128, align: 16, elements: !138)
!137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/dma/task1")
!138 = !{!139, !143}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !136, file: !137, line: 155, baseType: !140, size: 16, align: 16)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !141, line: 28, baseType: !142)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/dma/task1")
!142 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !136, file: !137, line: 156, baseType: !144, size: 112, align: 8, offset: 16)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 112, align: 8, elements: !146)
!145 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!146 = !{!147}
!147 = !DISubrange(count: 14)
!148 = !{i32 2, !"Dwarf Version", i32 4}
!149 = !{i32 2, !"Debug Info Version", i32 3}
!150 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!151 = distinct !DISubprogram(name: "dns_get_mx_list", scope: !152, file: !152, line: 114, type: !153, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !200)
!152 = !DIFile(filename: "dns.c", directory: "/home/lichi/Desktop/dma/task1")
!153 = !DISubroutineType(types: !154)
!154 = !{!155, !156, !155, !158, !155}
!155 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mx_hostentry", file: !161, line: 152, size: 10048, align: 64, elements: !162)
!161 = !DIFile(filename: "dma.h", directory: "/home/lichi/Desktop/dma/task1")
!162 = !{!163, !167, !171, !172, !190}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !160, file: !161, line: 153, baseType: !164, size: 8200, align: 8)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 8200, align: 8, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 1025)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !160, file: !161, line: 154, baseType: !168, size: 368, align: 8, offset: 8200)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 368, align: 8, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 46)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pref", scope: !160, file: !161, line: 155, baseType: !155, size: 32, align: 32, offset: 8576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ai", scope: !160, file: !161, line: 156, baseType: !173, size: 384, align: 64, offset: 8640)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !174, line: 567, size: 384, align: 64, elements: !175)
!174 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/lichi/Desktop/dma/task1")
!175 = !{!176, !177, !178, !179, !180, !185, !186, !188}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !173, file: !174, line: 569, baseType: !155, size: 32, align: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !173, file: !174, line: 570, baseType: !155, size: 32, align: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !173, file: !174, line: 571, baseType: !155, size: 32, align: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !173, file: !174, line: 572, baseType: !155, size: 32, align: 32, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !173, file: !174, line: 573, baseType: !181, size: 32, align: 32, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !137, line: 33, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !183, line: 189, baseType: !184)
!183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dma/task1")
!184 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !173, file: !174, line: 574, baseType: !135, size: 64, align: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !173, file: !174, line: 575, baseType: !187, size: 64, align: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !173, file: !174, line: 576, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !160, file: !161, line: 157, baseType: !191, size: 1024, align: 64, offset: 9024)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !137, line: 166, size: 1024, align: 64, elements: !192)
!192 = !{!193, !194, !198}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !191, file: !137, line: 168, baseType: !140, size: 16, align: 16)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !191, file: !137, line: 169, baseType: !195, size: 944, align: 8, offset: 16)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 944, align: 8, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 118)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !191, file: !137, line: 170, baseType: !199, size: 64, align: 64, offset: 960)
!199 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!200 = !{}
!201 = !DILocalVariable(name: "host", arg: 1, scope: !151, file: !152, line: 114, type: !156)
!202 = !DIExpression()
!203 = !DILocation(line: 114, column: 29, scope: !151)
!204 = !DILocalVariable(name: "port", arg: 2, scope: !151, file: !152, line: 114, type: !155)
!205 = !DILocation(line: 114, column: 39, scope: !151)
!206 = !DILocalVariable(name: "he", arg: 3, scope: !151, file: !152, line: 114, type: !158)
!207 = !DILocation(line: 114, column: 67, scope: !151)
!208 = !DILocalVariable(name: "no_mx", arg: 4, scope: !151, file: !152, line: 114, type: !155)
!209 = !DILocation(line: 114, column: 75, scope: !151)
!210 = !DILocalVariable(name: "outname", scope: !151, file: !152, line: 116, type: !164)
!211 = !DILocation(line: 116, column: 7, scope: !151)
!212 = !DILocalVariable(name: "msg", scope: !151, file: !152, line: 117, type: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_msg", file: !4, line: 121, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__ns_msg", file: !4, line: 114, size: 640, align: 64, elements: !215)
!215 = !{!216, !223, !224, !226, !227, !231, !233, !235, !236}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_msg", scope: !214, file: !4, line: 115, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !220, line: 33, baseType: !221)
!220 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dma/task1")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !183, line: 30, baseType: !222)
!222 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_eom", scope: !214, file: !4, line: 115, baseType: !217, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_id", scope: !214, file: !4, line: 116, baseType: !225, size: 16, align: 16, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int16_t", file: !220, line: 201, baseType: !142)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !214, file: !4, line: 116, baseType: !225, size: 16, align: 16, offset: 144)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_counts", scope: !214, file: !4, line: 116, baseType: !228, size: 64, align: 16, offset: 160)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 64, align: 16, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 4)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_sections", scope: !214, file: !4, line: 117, baseType: !232, size: 256, align: 64, offset: 256)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, align: 64, elements: !229)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_sect", scope: !214, file: !4, line: 118, baseType: !234, size: 32, align: 32, offset: 512)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_sect", file: !4, line: 107, baseType: !3)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_rrnum", scope: !214, file: !4, line: 119, baseType: !155, size: 32, align: 32, offset: 544)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_msg_ptr", scope: !214, file: !4, line: 120, baseType: !217, size: 64, align: 64, offset: 576)
!237 = !DILocation(line: 117, column: 9, scope: !151)
!238 = !DILocalVariable(name: "rr", scope: !151, file: !152, line: 118, type: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_rr", file: !4, line: 145, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__ns_rr", file: !4, line: 138, size: 8384, align: 64, elements: !241)
!241 = !{!242, !243, !244, !245, !247, !248}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !4, line: 139, baseType: !164, size: 8200, align: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !240, file: !4, line: 140, baseType: !225, size: 16, align: 16, offset: 8208)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rr_class", scope: !240, file: !4, line: 141, baseType: !225, size: 16, align: 16, offset: 8224)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !240, file: !4, line: 142, baseType: !246, size: 32, align: 32, offset: 8256)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int32_t", file: !220, line: 202, baseType: !184)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rdlength", scope: !240, file: !4, line: 143, baseType: !225, size: 16, align: 16, offset: 8288)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rdata", scope: !240, file: !4, line: 144, baseType: !217, size: 64, align: 64, offset: 8320)
!249 = !DILocation(line: 118, column: 8, scope: !151)
!250 = !DILocalVariable(name: "searchhost", scope: !151, file: !152, line: 119, type: !156)
!251 = !DILocation(line: 119, column: 14, scope: !151)
!252 = !DILocalVariable(name: "cp", scope: !151, file: !152, line: 120, type: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!255 = !DILocation(line: 120, column: 23, scope: !151)
!256 = !DILocalVariable(name: "ans", scope: !151, file: !152, line: 121, type: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!258 = !DILocation(line: 121, column: 17, scope: !151)
!259 = !DILocalVariable(name: "hosts", scope: !151, file: !152, line: 122, type: !159)
!260 = !DILocation(line: 122, column: 23, scope: !151)
!261 = !DILocalVariable(name: "nhosts", scope: !151, file: !152, line: 123, type: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !263, line: 216, baseType: !199)
!263 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dma/task1")
!264 = !DILocation(line: 123, column: 9, scope: !151)
!265 = !DILocalVariable(name: "anssz", scope: !151, file: !152, line: 124, type: !262)
!266 = !DILocation(line: 124, column: 9, scope: !151)
!267 = !DILocalVariable(name: "pref", scope: !151, file: !152, line: 125, type: !155)
!268 = !DILocation(line: 125, column: 6, scope: !151)
!269 = !DILocalVariable(name: "cname_recurse", scope: !151, file: !152, line: 126, type: !155)
!270 = !DILocation(line: 126, column: 6, scope: !151)
!271 = !DILocalVariable(name: "have_mx", scope: !151, file: !152, line: 127, type: !155)
!272 = !DILocation(line: 127, column: 6, scope: !151)
!273 = !DILocalVariable(name: "err", scope: !151, file: !152, line: 128, type: !155)
!274 = !DILocation(line: 128, column: 6, scope: !151)
!275 = !DILocalVariable(name: "i", scope: !151, file: !152, line: 129, type: !155)
!276 = !DILocation(line: 129, column: 6, scope: !151)
!277 = !DILocation(line: 131, column: 1, scope: !151)
!278 = !DILocation(line: 132, column: 15, scope: !151)
!279 = !DILocation(line: 132, column: 13, scope: !151)
!280 = !DILocation(line: 133, column: 16, scope: !151)
!281 = !DILocation(line: 135, column: 8, scope: !151)
!282 = !DILocation(line: 136, column: 15, scope: !151)
!283 = !DILocation(line: 136, column: 8, scope: !151)
!284 = !DILocation(line: 136, column: 6, scope: !151)
!285 = !DILocation(line: 137, column: 6, scope: !286)
!286 = distinct !DILexicalBlock(scope: !151, file: !152, line: 137, column: 6)
!287 = !DILocation(line: 137, column: 10, scope: !286)
!288 = !DILocation(line: 137, column: 6, scope: !151)
!289 = !DILocation(line: 138, column: 3, scope: !286)
!290 = !DILocation(line: 140, column: 6, scope: !291)
!291 = distinct !DILexicalBlock(scope: !151, file: !152, line: 140, column: 6)
!292 = !DILocation(line: 140, column: 6, scope: !151)
!293 = !DILocation(line: 141, column: 3, scope: !291)
!294 = !DILocation(line: 140, column: 6, scope: !295)
!295 = !DILexicalBlockFile(scope: !291, file: !152, discriminator: 1)
!296 = !DILocation(line: 144, column: 18, scope: !151)
!297 = !DILocation(line: 144, column: 48, scope: !151)
!298 = !DILocation(line: 144, column: 53, scope: !151)
!299 = !DILocation(line: 144, column: 7, scope: !151)
!300 = !DILocation(line: 144, column: 6, scope: !151)
!301 = !DILocation(line: 145, column: 6, scope: !302)
!302 = distinct !DILexicalBlock(scope: !151, file: !152, line: 145, column: 6)
!303 = !DILocation(line: 145, column: 10, scope: !302)
!304 = !DILocation(line: 145, column: 6, scope: !151)
!305 = !DILocation(line: 146, column: 12, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !152, line: 145, column: 15)
!307 = !DILocation(line: 146, column: 11, scope: !306)
!308 = !DILocation(line: 146, column: 3, scope: !306)
!309 = !DILocation(line: 152, column: 4, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !152, line: 146, column: 19)
!311 = !DILocation(line: 155, column: 4, scope: !310)
!312 = !DILocation(line: 155, column: 4, scope: !313)
!313 = !DILexicalBlockFile(scope: !310, file: !152, discriminator: 1)
!314 = !DILocation(line: 159, column: 5, scope: !310)
!315 = !DILocation(line: 159, column: 9, scope: !310)
!316 = !DILocation(line: 160, column: 1, scope: !310)
!317 = !DILocation(line: 161, column: 4, scope: !310)
!318 = !DILocation(line: 165, column: 20, scope: !319)
!319 = distinct !DILexicalBlock(scope: !151, file: !152, line: 165, column: 6)
!320 = !DILocation(line: 165, column: 25, scope: !319)
!321 = !DILocation(line: 165, column: 7, scope: !319)
!322 = !DILocation(line: 165, column: 6, scope: !151)
!323 = !DILocation(line: 166, column: 3, scope: !319)
!324 = !DILocation(line: 168, column: 10, scope: !151)
!325 = !DILocation(line: 168, column: 2, scope: !151)
!326 = !DILocation(line: 170, column: 3, scope: !327)
!327 = distinct !DILexicalBlock(scope: !151, file: !152, line: 168, column: 43)
!328 = !DILocation(line: 172, column: 1, scope: !327)
!329 = !DILocation(line: 173, column: 3, scope: !327)
!330 = !DILocation(line: 175, column: 3, scope: !327)
!331 = !DILocation(line: 178, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !151, file: !152, line: 178, column: 2)
!333 = !DILocation(line: 178, column: 7, scope: !332)
!334 = !DILocation(line: 178, column: 14, scope: !335)
!335 = !DILexicalBlockFile(scope: !336, file: !152, discriminator: 1)
!336 = distinct !DILexicalBlock(scope: !332, file: !152, line: 178, column: 2)
!337 = !DILocation(line: 176, column: 19, scope: !336)
!338 = !DILocation(line: 176, column: 18, scope: !336)
!339 = !DILocation(line: 178, column: 16, scope: !335)
!340 = !DILocation(line: 178, column: 2, scope: !335)
!341 = !DILocation(line: 177, column: 33, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !152, line: 177, column: 7)
!343 = distinct !DILexicalBlock(scope: !336, file: !152, line: 176, column: 50)
!344 = !DILocation(line: 177, column: 7, scope: !342)
!345 = !DILocation(line: 177, column: 7, scope: !343)
!346 = !DILocation(line: 178, column: 4, scope: !347)
!347 = !DILexicalBlockFile(scope: !342, file: !152, discriminator: 2)
!348 = !DILocation(line: 180, column: 9, scope: !343)
!349 = !DILocation(line: 180, column: 15, scope: !343)
!350 = !DILocation(line: 180, column: 6, scope: !343)
!351 = !DILocation(line: 182, column: 12, scope: !343)
!352 = !DILocation(line: 182, column: 21, scope: !343)
!353 = !DILocation(line: 182, column: 17, scope: !343)
!354 = !DILocation(line: 182, column: 3, scope: !343)
!355 = !DILocation(line: 184, column: 12, scope: !356)
!356 = distinct !DILexicalBlock(scope: !343, file: !152, line: 182, column: 26)
!357 = !DILocation(line: 185, column: 20, scope: !356)
!358 = !DILocation(line: 185, column: 11, scope: !356)
!359 = !DILocation(line: 185, column: 9, scope: !356)
!360 = !DILocation(line: 186, column: 7, scope: !356)
!361 = !DILocation(line: 187, column: 30, scope: !356)
!362 = !DILocation(line: 187, column: 35, scope: !356)
!363 = !DILocation(line: 187, column: 48, scope: !356)
!364 = !DILocation(line: 187, column: 53, scope: !356)
!365 = !DILocation(line: 188, column: 8, scope: !356)
!366 = !DILocation(line: 188, column: 12, scope: !356)
!367 = !DILocation(line: 187, column: 10, scope: !356)
!368 = !DILocation(line: 187, column: 8, scope: !356)
!369 = !DILocation(line: 189, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !356, file: !152, line: 189, column: 8)
!371 = !DILocation(line: 189, column: 12, scope: !370)
!372 = !DILocation(line: 189, column: 8, scope: !356)
!373 = !DILocation(line: 190, column: 5, scope: !370)
!374 = !DILocation(line: 192, column: 19, scope: !356)
!375 = !DILocation(line: 192, column: 25, scope: !356)
!376 = !DILocation(line: 192, column: 34, scope: !356)
!377 = !DILocation(line: 192, column: 10, scope: !356)
!378 = !DILocation(line: 192, column: 8, scope: !356)
!379 = !DILocation(line: 193, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !356, file: !152, line: 193, column: 8)
!381 = !DILocation(line: 193, column: 12, scope: !380)
!382 = !DILocation(line: 193, column: 8, scope: !356)
!383 = !DILocation(line: 194, column: 2, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !152, line: 194, column: 1)
!385 = !DILocation(line: 194, column: 13, scope: !384)
!386 = !DILocation(line: 195, column: 4, scope: !356)
!387 = !DILocation(line: 198, column: 30, scope: !356)
!388 = !DILocation(line: 198, column: 35, scope: !356)
!389 = !DILocation(line: 198, column: 48, scope: !356)
!390 = !DILocation(line: 198, column: 53, scope: !356)
!391 = !DILocation(line: 199, column: 8, scope: !356)
!392 = !DILocation(line: 199, column: 12, scope: !356)
!393 = !DILocation(line: 198, column: 10, scope: !356)
!394 = !DILocation(line: 198, column: 8, scope: !356)
!395 = !DILocation(line: 200, column: 8, scope: !396)
!396 = distinct !DILexicalBlock(scope: !356, file: !152, line: 200, column: 8)
!397 = !DILocation(line: 200, column: 12, scope: !396)
!398 = !DILocation(line: 200, column: 8, scope: !356)
!399 = !DILocation(line: 201, column: 5, scope: !396)
!400 = !DILocation(line: 204, column: 21, scope: !401)
!401 = distinct !DILexicalBlock(scope: !356, file: !152, line: 204, column: 8)
!402 = !DILocation(line: 204, column: 24, scope: !401)
!403 = !DILocation(line: 204, column: 8, scope: !356)
!404 = !DILocation(line: 205, column: 2, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !152, line: 205, column: 1)
!406 = !DILocation(line: 205, column: 13, scope: !405)
!407 = !DILocation(line: 207, column: 17, scope: !356)
!408 = !DILocation(line: 207, column: 15, scope: !356)
!409 = !DILocation(line: 208, column: 4, scope: !356)
!410 = !DILocation(line: 211, column: 4, scope: !356)
!411 = !DILocation(line: 213, column: 2, scope: !343)
!412 = !DILocation(line: 176, column: 46, scope: !335)
!413 = !DILocation(line: 178, column: 2, scope: !414)
!414 = !DILexicalBlockFile(scope: !336, file: !152, discriminator: 3)
!415 = distinct !{!415, !416}
!416 = !DILocation(line: 178, column: 2, scope: !151)
!417 = !DILocation(line: 213, column: 2, scope: !418)
!418 = !DILexicalBlockFile(scope: !332, file: !152, discriminator: 1)
!419 = !DILocation(line: 216, column: 6, scope: !151)
!420 = !DILocation(line: 217, column: 6, scope: !151)
!421 = !DILocation(line: 217, column: 9, scope: !422)
!422 = !DILexicalBlockFile(scope: !423, file: !152, discriminator: 1)
!423 = distinct !DILexicalBlock(scope: !151, file: !152, line: 217, column: 6)
!424 = !DILocation(line: 219, column: 7, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !152, line: 219, column: 7)
!426 = distinct !DILexicalBlock(scope: !423, file: !152, line: 217, column: 9)
!427 = !DILocation(line: 219, column: 14, scope: !425)
!428 = !DILocation(line: 219, column: 7, scope: !426)
!429 = !DILocation(line: 220, column: 8, scope: !425)
!430 = !DILocation(line: 220, column: 4, scope: !425)
!431 = !DILocation(line: 221, column: 2, scope: !426)
!432 = !DILocation(line: 222, column: 6, scope: !151)
!433 = !DILocation(line: 222, column: 9, scope: !434)
!434 = !DILexicalBlockFile(scope: !435, file: !152, discriminator: 1)
!435 = distinct !DILexicalBlock(scope: !151, file: !152, line: 222, column: 6)
!436 = !DILocation(line: 224, column: 7, scope: !437)
!437 = distinct !DILexicalBlock(scope: !435, file: !152, line: 222, column: 9)
!438 = !DILocation(line: 225, column: 2, scope: !437)
!439 = !DILocation(line: 227, column: 7, scope: !151)
!440 = !DILocation(line: 227, column: 2, scope: !151)
!441 = !DILocation(line: 229, column: 6, scope: !442)
!442 = distinct !DILexicalBlock(scope: !151, file: !152, line: 229, column: 6)
!443 = !DILocation(line: 229, column: 10, scope: !442)
!444 = !DILocation(line: 229, column: 6, scope: !151)
!445 = !DILocation(line: 230, column: 8, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !152, line: 230, column: 7)
!447 = distinct !DILexicalBlock(scope: !442, file: !152, line: 229, column: 16)
!448 = !DILocation(line: 230, column: 7, scope: !447)
!449 = !DILocation(line: 234, column: 22, scope: !450)
!450 = distinct !DILexicalBlock(scope: !446, file: !152, line: 230, column: 17)
!451 = !DILocation(line: 234, column: 28, scope: !450)
!452 = !DILocation(line: 234, column: 10, scope: !450)
!453 = !DILocation(line: 234, column: 8, scope: !450)
!454 = !DILocation(line: 235, column: 3, scope: !450)
!455 = !DILocation(line: 235, column: 14, scope: !456)
!456 = !DILexicalBlockFile(scope: !457, file: !152, discriminator: 1)
!457 = distinct !DILexicalBlock(scope: !446, file: !152, line: 235, column: 14)
!458 = !DILocation(line: 235, column: 21, scope: !456)
!459 = !DILocation(line: 240, column: 8, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !152, line: 235, column: 27)
!461 = !DILocation(line: 241, column: 3, scope: !460)
!462 = !DILocation(line: 242, column: 2, scope: !447)
!463 = !DILocation(line: 244, column: 6, scope: !464)
!464 = distinct !DILexicalBlock(scope: !151, file: !152, line: 244, column: 6)
!465 = !DILocation(line: 244, column: 13, scope: !464)
!466 = !DILocation(line: 244, column: 6, scope: !151)
!467 = !DILocation(line: 245, column: 9, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !152, line: 244, column: 18)
!469 = !DILocation(line: 245, column: 16, scope: !468)
!470 = !DILocation(line: 245, column: 3, scope: !468)
!471 = !DILocation(line: 247, column: 10, scope: !468)
!472 = !DILocation(line: 247, column: 4, scope: !468)
!473 = !DILocation(line: 247, column: 18, scope: !468)
!474 = !DILocation(line: 247, column: 3, scope: !468)
!475 = !DILocation(line: 247, column: 23, scope: !468)
!476 = !DILocation(line: 248, column: 2, scope: !468)
!477 = !DILocation(line: 249, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !152, line: 249, column: 7)
!479 = distinct !DILexicalBlock(scope: !464, file: !152, line: 248, column: 9)
!480 = !DILocation(line: 249, column: 13, scope: !478)
!481 = !DILocation(line: 249, column: 7, scope: !479)
!482 = !DILocation(line: 250, column: 9, scope: !478)
!483 = !DILocation(line: 250, column: 4, scope: !478)
!484 = !DILocation(line: 251, column: 9, scope: !479)
!485 = !DILocation(line: 254, column: 8, scope: !151)
!486 = !DILocation(line: 254, column: 3, scope: !151)
!487 = !DILocation(line: 254, column: 6, scope: !151)
!488 = !DILocation(line: 255, column: 10, scope: !151)
!489 = !DILocation(line: 255, column: 2, scope: !151)
!490 = !DILocation(line: 261, column: 1, scope: !151)
!491 = distinct !DISubprogram(name: "add_host", scope: !152, file: !152, line: 64, type: !492, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !200)
!492 = !DISubroutineType(types: !493)
!493 = !{!155, !155, !156, !155, !158, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!495 = !DILocalVariable(name: "pref", arg: 1, scope: !491, file: !152, line: 64, type: !155)
!496 = !DILocation(line: 64, column: 14, scope: !491)
!497 = !DILocalVariable(name: "host", arg: 2, scope: !491, file: !152, line: 64, type: !156)
!498 = !DILocation(line: 64, column: 32, scope: !491)
!499 = !DILocalVariable(name: "port", arg: 3, scope: !491, file: !152, line: 64, type: !155)
!500 = !DILocation(line: 64, column: 42, scope: !491)
!501 = !DILocalVariable(name: "he", arg: 4, scope: !491, file: !152, line: 64, type: !158)
!502 = !DILocation(line: 64, column: 70, scope: !491)
!503 = !DILocalVariable(name: "ps", arg: 5, scope: !491, file: !152, line: 64, type: !494)
!504 = !DILocation(line: 64, column: 82, scope: !491)
!505 = !DILocalVariable(name: "hints", scope: !491, file: !152, line: 66, type: !173)
!506 = !DILocation(line: 66, column: 18, scope: !491)
!507 = !DILocalVariable(name: "res", scope: !491, file: !152, line: 66, type: !189)
!508 = !DILocation(line: 66, column: 26, scope: !491)
!509 = !DILocalVariable(name: "res0", scope: !491, file: !152, line: 66, type: !189)
!510 = !DILocation(line: 66, column: 32, scope: !491)
!511 = !DILocalVariable(name: "servname", scope: !491, file: !152, line: 67, type: !512)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 80, align: 8, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 10)
!515 = !DILocation(line: 67, column: 7, scope: !491)
!516 = !DILocalVariable(name: "p", scope: !491, file: !152, line: 68, type: !159)
!517 = !DILocation(line: 68, column: 23, scope: !491)
!518 = !DILocalVariable(name: "count_inc", scope: !491, file: !152, line: 69, type: !519)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!520 = !DILocation(line: 69, column: 12, scope: !491)
!521 = !DILocalVariable(name: "err", scope: !491, file: !152, line: 70, type: !155)
!522 = !DILocation(line: 70, column: 6, scope: !491)
!523 = !DILocation(line: 72, column: 2, scope: !491)
!524 = !DILocation(line: 73, column: 8, scope: !491)
!525 = !DILocation(line: 73, column: 18, scope: !491)
!526 = !DILocation(line: 74, column: 8, scope: !491)
!527 = !DILocation(line: 74, column: 20, scope: !491)
!528 = !DILocation(line: 75, column: 8, scope: !491)
!529 = !DILocation(line: 75, column: 20, scope: !491)
!530 = !DILocation(line: 77, column: 11, scope: !491)
!531 = !DILocation(line: 77, column: 45, scope: !491)
!532 = !DILocation(line: 77, column: 2, scope: !491)
!533 = !DILocation(line: 78, column: 20, scope: !491)
!534 = !DILocation(line: 78, column: 26, scope: !491)
!535 = !DILocation(line: 78, column: 8, scope: !491)
!536 = !DILocation(line: 78, column: 6, scope: !491)
!537 = !DILocation(line: 79, column: 6, scope: !538)
!538 = distinct !DILexicalBlock(scope: !491, file: !152, line: 79, column: 6)
!539 = !DILocation(line: 79, column: 6, scope: !491)
!540 = !DILocation(line: 80, column: 11, scope: !538)
!541 = !DILocation(line: 80, column: 15, scope: !538)
!542 = !DILocation(line: 80, column: 3, scope: !538)
!543 = !DILocation(line: 82, column: 13, scope: !544)
!544 = distinct !DILexicalBlock(scope: !491, file: !152, line: 82, column: 2)
!545 = !DILocation(line: 82, column: 11, scope: !544)
!546 = !DILocation(line: 82, column: 7, scope: !544)
!547 = !DILocation(line: 82, column: 19, scope: !548)
!548 = !DILexicalBlockFile(scope: !549, file: !152, discriminator: 1)
!549 = distinct !DILexicalBlock(scope: !544, file: !152, line: 82, column: 2)
!550 = !DILocation(line: 82, column: 23, scope: !548)
!551 = !DILocation(line: 82, column: 2, scope: !548)
!552 = !DILocation(line: 83, column: 8, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !152, line: 83, column: 7)
!554 = distinct !DILexicalBlock(scope: !549, file: !152, line: 82, column: 51)
!555 = !DILocation(line: 83, column: 7, scope: !553)
!556 = !DILocation(line: 83, column: 11, scope: !553)
!557 = !DILocation(line: 83, column: 18, scope: !553)
!558 = !DILocation(line: 83, column: 17, scope: !553)
!559 = !DILocation(line: 83, column: 19, scope: !553)
!560 = !DILocation(line: 83, column: 25, scope: !553)
!561 = !DILocation(line: 83, column: 20, scope: !553)
!562 = !DILocation(line: 83, column: 15, scope: !553)
!563 = !DILocation(line: 83, column: 7, scope: !554)
!564 = !DILocalVariable(name: "newsz", scope: !565, file: !152, line: 84, type: !262)
!565 = distinct !DILexicalBlock(scope: !553, file: !152, line: 83, column: 42)
!566 = !DILocation(line: 84, column: 11, scope: !565)
!567 = !DILocation(line: 84, column: 19, scope: !565)
!568 = !DILocation(line: 84, column: 18, scope: !565)
!569 = !DILocation(line: 84, column: 22, scope: !565)
!570 = !DILocation(line: 84, column: 20, scope: !565)
!571 = !DILocation(line: 84, column: 26, scope: !565)
!572 = !DILocation(line: 84, column: 21, scope: !565)
!573 = !DILocation(line: 85, column: 20, scope: !565)
!574 = !DILocation(line: 85, column: 19, scope: !565)
!575 = !DILocation(line: 85, column: 24, scope: !565)
!576 = !DILocation(line: 85, column: 30, scope: !565)
!577 = !DILocation(line: 85, column: 10, scope: !565)
!578 = !DILocation(line: 85, column: 5, scope: !565)
!579 = !DILocation(line: 85, column: 8, scope: !565)
!580 = !DILocation(line: 86, column: 9, scope: !581)
!581 = distinct !DILexicalBlock(scope: !565, file: !152, line: 86, column: 8)
!582 = !DILocation(line: 86, column: 8, scope: !581)
!583 = !DILocation(line: 86, column: 12, scope: !581)
!584 = !DILocation(line: 86, column: 8, scope: !565)
!585 = !DILocation(line: 87, column: 5, scope: !581)
!586 = !DILocation(line: 88, column: 3, scope: !565)
!587 = !DILocation(line: 90, column: 15, scope: !554)
!588 = !DILocation(line: 90, column: 14, scope: !554)
!589 = !DILocation(line: 90, column: 10, scope: !554)
!590 = !DILocation(line: 90, column: 9, scope: !554)
!591 = !DILocation(line: 90, column: 8, scope: !554)
!592 = !DILocation(line: 90, column: 5, scope: !554)
!593 = !DILocation(line: 91, column: 11, scope: !554)
!594 = !DILocation(line: 91, column: 14, scope: !554)
!595 = !DILocation(line: 91, column: 20, scope: !554)
!596 = !DILocation(line: 91, column: 3, scope: !554)
!597 = !DILocation(line: 92, column: 13, scope: !554)
!598 = !DILocation(line: 92, column: 3, scope: !554)
!599 = !DILocation(line: 92, column: 6, scope: !554)
!600 = !DILocation(line: 92, column: 11, scope: !554)
!601 = !DILocation(line: 93, column: 3, scope: !554)
!602 = !DILocation(line: 93, column: 6, scope: !554)
!603 = !DILocation(line: 93, column: 12, scope: !554)
!604 = !DILocation(line: 93, column: 11, scope: !554)
!605 = !DILocation(line: 94, column: 3, scope: !554)
!606 = !DILocation(line: 94, column: 6, scope: !554)
!607 = !DILocation(line: 94, column: 9, scope: !554)
!608 = !DILocation(line: 94, column: 17, scope: !554)
!609 = !DILocation(line: 95, column: 9, scope: !554)
!610 = !DILocation(line: 95, column: 14, scope: !554)
!611 = !DILocation(line: 95, column: 24, scope: !554)
!612 = !DILocation(line: 95, column: 27, scope: !554)
!613 = !DILocation(line: 95, column: 23, scope: !554)
!614 = !DILocation(line: 95, column: 31, scope: !554)
!615 = !DILocation(line: 95, column: 34, scope: !554)
!616 = !DILocation(line: 95, column: 37, scope: !554)
!617 = !DILocation(line: 95, column: 3, scope: !554)
!618 = !DILocation(line: 97, column: 35, scope: !554)
!619 = !DILocation(line: 97, column: 38, scope: !554)
!620 = !DILocation(line: 97, column: 15, scope: !554)
!621 = !DILocation(line: 97, column: 42, scope: !554)
!622 = !DILocation(line: 97, column: 45, scope: !554)
!623 = !DILocation(line: 97, column: 48, scope: !554)
!624 = !DILocation(line: 98, column: 8, scope: !554)
!625 = !DILocation(line: 98, column: 11, scope: !554)
!626 = !DILocation(line: 97, column: 3, scope: !554)
!627 = !DILocation(line: 101, column: 5, scope: !554)
!628 = !DILocation(line: 101, column: 8, scope: !554)
!629 = !DILocation(line: 102, column: 2, scope: !554)
!630 = !DILocation(line: 82, column: 37, scope: !631)
!631 = !DILexicalBlockFile(scope: !549, file: !152, discriminator: 2)
!632 = !DILocation(line: 82, column: 42, scope: !631)
!633 = !DILocation(line: 82, column: 35, scope: !631)
!634 = !DILocation(line: 82, column: 2, scope: !631)
!635 = distinct !{!635, !636}
!636 = !DILocation(line: 82, column: 2, scope: !491)
!637 = !DILocation(line: 103, column: 15, scope: !491)
!638 = !DILocation(line: 103, column: 2, scope: !491)
!639 = !DILocation(line: 105, column: 2, scope: !491)
!640 = !DILocation(line: 108, column: 6, scope: !641)
!641 = distinct !DILexicalBlock(scope: !491, file: !152, line: 108, column: 6)
!642 = !DILocation(line: 108, column: 11, scope: !641)
!643 = !DILocation(line: 108, column: 6, scope: !491)
!644 = !DILocation(line: 109, column: 16, scope: !641)
!645 = !DILocation(line: 109, column: 3, scope: !641)
!646 = !DILocation(line: 110, column: 2, scope: !491)
!647 = !DILocation(line: 111, column: 1, scope: !491)
!648 = distinct !DISubprogram(name: "sort_pref", scope: !152, file: !152, line: 48, type: !649, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !200)
!649 = !DISubroutineType(types: !650)
!650 = !{!155, !651, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64, align: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!653 = !DILocalVariable(name: "a", arg: 1, scope: !648, file: !152, line: 48, type: !651)
!654 = !DILocation(line: 48, column: 23, scope: !648)
!655 = !DILocalVariable(name: "b", arg: 2, scope: !648, file: !152, line: 48, type: !651)
!656 = !DILocation(line: 48, column: 38, scope: !648)
!657 = !DILocalVariable(name: "ha", scope: !648, file: !152, line: 50, type: !658)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64, align: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!660 = !DILocation(line: 50, column: 29, scope: !648)
!661 = !DILocation(line: 50, column: 34, scope: !648)
!662 = !DILocalVariable(name: "hb", scope: !648, file: !152, line: 50, type: !658)
!663 = !DILocation(line: 50, column: 38, scope: !648)
!664 = !DILocation(line: 50, column: 43, scope: !648)
!665 = !DILocalVariable(name: "v", scope: !648, file: !152, line: 51, type: !155)
!666 = !DILocation(line: 51, column: 6, scope: !648)
!667 = !DILocation(line: 54, column: 6, scope: !648)
!668 = !DILocation(line: 54, column: 10, scope: !648)
!669 = !DILocation(line: 54, column: 17, scope: !648)
!670 = !DILocation(line: 54, column: 21, scope: !648)
!671 = !DILocation(line: 54, column: 15, scope: !648)
!672 = !DILocation(line: 54, column: 4, scope: !648)
!673 = !DILocation(line: 55, column: 6, scope: !674)
!674 = distinct !DILexicalBlock(scope: !648, file: !152, line: 55, column: 6)
!675 = !DILocation(line: 55, column: 8, scope: !674)
!676 = !DILocation(line: 55, column: 6, scope: !648)
!677 = !DILocation(line: 56, column: 11, scope: !674)
!678 = !DILocation(line: 56, column: 3, scope: !674)
!679 = !DILocation(line: 59, column: 9, scope: !648)
!680 = !DILocation(line: 59, column: 13, scope: !648)
!681 = !DILocation(line: 59, column: 16, scope: !648)
!682 = !DILocation(line: 59, column: 28, scope: !648)
!683 = !DILocation(line: 59, column: 32, scope: !648)
!684 = !DILocation(line: 59, column: 35, scope: !648)
!685 = !DILocation(line: 59, column: 26, scope: !648)
!686 = !DILocation(line: 59, column: 6, scope: !648)
!687 = !DILocation(line: 59, column: 4, scope: !648)
!688 = !DILocation(line: 60, column: 10, scope: !648)
!689 = !DILocation(line: 60, column: 2, scope: !648)
!690 = !DILocation(line: 61, column: 1, scope: !648)
