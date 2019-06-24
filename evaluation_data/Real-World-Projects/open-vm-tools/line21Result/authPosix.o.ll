; ModuleID = './authPosix.o.i'
source_filename = "./authPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.AuthTokenInternal = type { %struct.passwd, i64, [0 x i8] }
%struct.spwd = type { i8*, i8*, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"User not in UTF-8\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Password not in UTF-8\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"glurp\00", align 1

; Function Attrs: nounwind uwtable
define %struct.passwd* @Auth_GetPwnam(i8*) #0 !dbg !265 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.AuthTokenInternal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !271, metadata !272), !dbg !273
  call void @llvm.dbg.declare(metadata %struct.AuthTokenInternal** %4, metadata !274, metadata !272), !dbg !275
  call void @llvm.dbg.declare(metadata i32* %5, metadata !276, metadata !272), !dbg !278
  call void @llvm.dbg.declare(metadata %struct.passwd** %6, metadata !279, metadata !272), !dbg !281
  %7 = call %struct.AuthTokenInternal* @AuthAllocateToken(), !dbg !282
  store %struct.AuthTokenInternal* %7, %struct.AuthTokenInternal** %4, align 8, !dbg !283
  %8 = load i8*, i8** %3, align 8, !dbg !284
  %9 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %4, align 8, !dbg !285
  %10 = getelementptr inbounds %struct.AuthTokenInternal, %struct.AuthTokenInternal* %9, i32 0, i32 0, !dbg !286
  %11 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %4, align 8, !dbg !287
  %12 = getelementptr inbounds %struct.AuthTokenInternal, %struct.AuthTokenInternal* %11, i32 0, i32 2, !dbg !288
  %13 = getelementptr inbounds [0 x i8], [0 x i8]* %12, i32 0, i32 0, !dbg !287
  %14 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %4, align 8, !dbg !289
  %15 = getelementptr inbounds %struct.AuthTokenInternal, %struct.AuthTokenInternal* %14, i32 0, i32 1, !dbg !290
  %16 = load i64, i64* %15, align 8, !dbg !290
  %17 = call i32 @Posix_Getpwnam_r(i8* %8, %struct.passwd* %10, i8* %13, i64 %16, %struct.passwd** %6), !dbg !291
  store i32 %17, i32* %5, align 4, !dbg !292
  %18 = load i32, i32* %5, align 4, !dbg !293
  %19 = icmp ne i32 0, %18, !dbg !295
  br i1 %19, label %23, label %20, !dbg !296

; <label>:20:                                     ; preds = %1
  %21 = load %struct.passwd*, %struct.passwd** %6, align 8, !dbg !297
  %22 = icmp eq %struct.passwd* %21, null, !dbg !299
  br i1 %22, label %23, label %26, !dbg !300

; <label>:23:                                     ; preds = %20, %1
  %24 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %4, align 8, !dbg !301
  %25 = bitcast %struct.AuthTokenInternal* %24 to %struct.passwd*, !dbg !303
  call void @Auth_CloseToken(%struct.passwd* %25), !dbg !304
  store %struct.passwd* null, %struct.passwd** %2, align 8, !dbg !305
  br label %29, !dbg !305

; <label>:26:                                     ; preds = %20
  %27 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %4, align 8, !dbg !306
  %28 = bitcast %struct.AuthTokenInternal* %27 to %struct.passwd*, !dbg !307
  store %struct.passwd* %28, %struct.passwd** %2, align 8, !dbg !308
  br label %29, !dbg !308

; <label>:29:                                     ; preds = %26, %23
  %30 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !309
  ret %struct.passwd* %30, !dbg !309
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal %struct.AuthTokenInternal* @AuthAllocateToken() #0 !dbg !310 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.AuthTokenInternal*, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !313, metadata !272), !dbg !315
  call void @llvm.dbg.declare(metadata %struct.AuthTokenInternal** %2, metadata !316, metadata !272), !dbg !317
  %3 = call i32* @__errno_location() #1, !dbg !318
  store i32 0, i32* %3, align 4, !dbg !319
  %4 = call i64 @sysconf(i32 70) #6, !dbg !320
  store i64 %4, i64* %1, align 8, !dbg !321
  %5 = call i32* @__errno_location() #1, !dbg !322
  %6 = load i32, i32* %5, align 4, !dbg !324
  %7 = icmp ne i32 %6, 0, !dbg !325
  br i1 %7, label %11, label %8, !dbg !326

; <label>:8:                                      ; preds = %0
  %9 = load i64, i64* %1, align 8, !dbg !327
  %10 = icmp sle i64 %9, 0, !dbg !329
  br i1 %10, label %11, label %12, !dbg !330

; <label>:11:                                     ; preds = %8, %0
  store i64 16384, i64* %1, align 8, !dbg !331
  br label %12, !dbg !333

; <label>:12:                                     ; preds = %11, %8
  %13 = load i64, i64* %1, align 8, !dbg !334
  %14 = mul nsw i64 %13, 4, !dbg !334
  store i64 %14, i64* %1, align 8, !dbg !334
  %15 = load i64, i64* %1, align 8, !dbg !335
  %16 = add i64 56, %15, !dbg !336
  %17 = call i8* @UtilSafeMalloc0(i64 %16), !dbg !337
  %18 = bitcast i8* %17 to %struct.AuthTokenInternal*, !dbg !337
  store %struct.AuthTokenInternal* %18, %struct.AuthTokenInternal** %2, align 8, !dbg !338
  %19 = load i64, i64* %1, align 8, !dbg !339
  %20 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %2, align 8, !dbg !340
  %21 = getelementptr inbounds %struct.AuthTokenInternal, %struct.AuthTokenInternal* %20, i32 0, i32 1, !dbg !341
  store i64 %19, i64* %21, align 8, !dbg !342
  %22 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %2, align 8, !dbg !343
  ret %struct.AuthTokenInternal* %22, !dbg !344
}

declare i32 @Posix_Getpwnam_r(i8*, %struct.passwd*, i8*, i64, %struct.passwd**) #2

; Function Attrs: nounwind uwtable
define void @Auth_CloseToken(%struct.passwd*) #0 !dbg !345 {
  %2 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.passwd** %2, metadata !348, metadata !272), !dbg !349
  %3 = load %struct.passwd*, %struct.passwd** %2, align 8, !dbg !350
  %4 = bitcast %struct.passwd* %3 to i8*, !dbg !351
  call void @free(i8* %4) #6, !dbg !352
  ret void, !dbg !353
}

; Function Attrs: nounwind uwtable
define %struct.passwd* @Auth_AuthenticateSelf() #0 !dbg !354 {
  %1 = alloca %struct.passwd*, align 8
  %2 = alloca %struct.AuthTokenInternal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.passwd*, align 8
  call void @llvm.dbg.declare(metadata %struct.AuthTokenInternal** %2, metadata !357, metadata !272), !dbg !358
  call void @llvm.dbg.declare(metadata i32* %3, metadata !359, metadata !272), !dbg !360
  call void @llvm.dbg.declare(metadata %struct.passwd** %4, metadata !361, metadata !272), !dbg !362
  %5 = call %struct.AuthTokenInternal* @AuthAllocateToken(), !dbg !363
  store %struct.AuthTokenInternal* %5, %struct.AuthTokenInternal** %2, align 8, !dbg !364
  %6 = call i32 @getuid() #6, !dbg !365
  %7 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %2, align 8, !dbg !366
  %8 = getelementptr inbounds %struct.AuthTokenInternal, %struct.AuthTokenInternal* %7, i32 0, i32 0, !dbg !367
  %9 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %2, align 8, !dbg !368
  %10 = getelementptr inbounds %struct.AuthTokenInternal, %struct.AuthTokenInternal* %9, i32 0, i32 2, !dbg !369
  %11 = getelementptr inbounds [0 x i8], [0 x i8]* %10, i32 0, i32 0, !dbg !368
  %12 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %2, align 8, !dbg !370
  %13 = getelementptr inbounds %struct.AuthTokenInternal, %struct.AuthTokenInternal* %12, i32 0, i32 1, !dbg !371
  %14 = load i64, i64* %13, align 8, !dbg !371
  %15 = call i32 @Posix_Getpwuid_r(i32 %6, %struct.passwd* %8, i8* %11, i64 %14, %struct.passwd** %4), !dbg !372
  store i32 %15, i32* %3, align 4, !dbg !374
  %16 = load i32, i32* %3, align 4, !dbg !375
  %17 = icmp ne i32 0, %16, !dbg !377
  br i1 %17, label %21, label %18, !dbg !378

; <label>:18:                                     ; preds = %0
  %19 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !379
  %20 = icmp eq %struct.passwd* %19, null, !dbg !381
  br i1 %20, label %21, label %24, !dbg !382

; <label>:21:                                     ; preds = %18, %0
  %22 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %2, align 8, !dbg !383
  %23 = bitcast %struct.AuthTokenInternal* %22 to %struct.passwd*, !dbg !385
  call void @Auth_CloseToken(%struct.passwd* %23), !dbg !386
  store %struct.passwd* null, %struct.passwd** %1, align 8, !dbg !387
  br label %27, !dbg !387

; <label>:24:                                     ; preds = %18
  %25 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %2, align 8, !dbg !388
  %26 = bitcast %struct.AuthTokenInternal* %25 to %struct.passwd*, !dbg !389
  store %struct.passwd* %26, %struct.passwd** %1, align 8, !dbg !390
  br label %27, !dbg !390

; <label>:27:                                     ; preds = %24, %21
  %28 = load %struct.passwd*, %struct.passwd** %1, align 8, !dbg !391
  ret %struct.passwd* %28, !dbg !391
}

declare i32 @Posix_Getpwuid_r(i32, %struct.passwd*, i8*, i64, %struct.passwd**) #2

; Function Attrs: nounwind
declare i32 @getuid() #3

; Function Attrs: nounwind uwtable
define %struct.passwd* @Auth_AuthenticateUser(i8*, i8*) #0 !dbg !392 {
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.AuthTokenInternal*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.spwd*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !395, metadata !272), !dbg !396
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !397, metadata !272), !dbg !398
  call void @llvm.dbg.declare(metadata i8* %6, metadata !399, metadata !272), !dbg !401
  store i8 0, i8* %6, align 1, !dbg !401
  call void @llvm.dbg.declare(metadata %struct.AuthTokenInternal** %7, metadata !402, metadata !272), !dbg !403
  store %struct.AuthTokenInternal* null, %struct.AuthTokenInternal** %7, align 8, !dbg !403
  %11 = load i8*, i8** %4, align 8, !dbg !404
  %12 = load i8*, i8** %4, align 8, !dbg !406
  %13 = call i64 @strlen(i8* %12) #7, !dbg !407
  %14 = call signext i8 @CodeSet_Validate(i8* %11, i64 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)), !dbg !408
  %15 = icmp ne i8 %14, 0, !dbg !410
  br i1 %15, label %17, label %16, !dbg !411

; <label>:16:                                     ; preds = %2
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)), !dbg !412
  br label %73, !dbg !414

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %5, align 8, !dbg !415
  %19 = load i8*, i8** %5, align 8, !dbg !417
  %20 = call i64 @strlen(i8* %19) #7, !dbg !418
  %21 = call signext i8 @CodeSet_Validate(i8* %18, i64 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)), !dbg !419
  %22 = icmp ne i8 %21, 0, !dbg !421
  br i1 %22, label %24, label %23, !dbg !422

; <label>:23:                                     ; preds = %17
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0)), !dbg !423
  br label %73, !dbg !425

; <label>:24:                                     ; preds = %17
  %25 = load i8*, i8** %4, align 8, !dbg !426
  %26 = call %struct.passwd* @Auth_GetPwnam(i8* %25), !dbg !427
  %27 = bitcast %struct.passwd* %26 to %struct.AuthTokenInternal*, !dbg !428
  store %struct.AuthTokenInternal* %27, %struct.AuthTokenInternal** %7, align 8, !dbg !429
  %28 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %7, align 8, !dbg !430
  %29 = icmp eq %struct.AuthTokenInternal* %28, null, !dbg !432
  br i1 %29, label %30, label %31, !dbg !433

; <label>:30:                                     ; preds = %24
  br label %73, !dbg !434

; <label>:31:                                     ; preds = %24
  %32 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %7, align 8, !dbg !436
  %33 = getelementptr inbounds %struct.AuthTokenInternal, %struct.AuthTokenInternal* %32, i32 0, i32 0, !dbg !438
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 1, !dbg !439
  %35 = load i8*, i8** %34, align 8, !dbg !439
  %36 = load i8, i8* %35, align 1, !dbg !440
  %37 = sext i8 %36 to i32, !dbg !440
  %38 = icmp ne i32 %37, 0, !dbg !441
  br i1 %38, label %39, label %72, !dbg !442

; <label>:39:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i8** %8, metadata !443, metadata !272), !dbg !445
  %40 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %7, align 8, !dbg !446
  %41 = getelementptr inbounds %struct.AuthTokenInternal, %struct.AuthTokenInternal* %40, i32 0, i32 0, !dbg !447
  %42 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 1, !dbg !448
  %43 = load i8*, i8** %42, align 8, !dbg !448
  store i8* %43, i8** %8, align 8, !dbg !445
  call void @llvm.dbg.declare(metadata i8** %9, metadata !449, metadata !272), !dbg !450
  %44 = load i8*, i8** %8, align 8, !dbg !451
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !453
  %46 = icmp eq i32 %45, 0, !dbg !454
  br i1 %46, label %47, label %57, !dbg !455

; <label>:47:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata %struct.spwd** %10, metadata !456, metadata !272), !dbg !471
  %48 = load i8*, i8** %4, align 8, !dbg !472
  %49 = call %struct.spwd* @getspnam(i8* %48), !dbg !473
  store %struct.spwd* %49, %struct.spwd** %10, align 8, !dbg !471
  %50 = load %struct.spwd*, %struct.spwd** %10, align 8, !dbg !474
  %51 = icmp ne %struct.spwd* %50, null, !dbg !474
  br i1 %51, label %52, label %56, !dbg !476

; <label>:52:                                     ; preds = %47
  %53 = load %struct.spwd*, %struct.spwd** %10, align 8, !dbg !477
  %54 = getelementptr inbounds %struct.spwd, %struct.spwd* %53, i32 0, i32 1, !dbg !479
  %55 = load i8*, i8** %54, align 8, !dbg !479
  store i8* %55, i8** %8, align 8, !dbg !480
  br label %56, !dbg !481

; <label>:56:                                     ; preds = %52, %47
  br label %57, !dbg !482

; <label>:57:                                     ; preds = %56, %39
  %58 = load i8*, i8** %5, align 8, !dbg !483
  %59 = load i8*, i8** %8, align 8, !dbg !484
  %60 = call i8* @crypt(i8* %58, i8* %59) #6, !dbg !485
  store i8* %60, i8** %9, align 8, !dbg !486
  %61 = load i8*, i8** %9, align 8, !dbg !487
  %62 = icmp eq i8* %61, null, !dbg !489
  br i1 %62, label %68, label %63, !dbg !490

; <label>:63:                                     ; preds = %57
  %64 = load i8*, i8** %9, align 8, !dbg !491
  %65 = load i8*, i8** %8, align 8, !dbg !493
  %66 = call i32 @strcmp(i8* %64, i8* %65) #7, !dbg !494
  %67 = icmp ne i32 %66, 0, !dbg !495
  br i1 %67, label %68, label %69, !dbg !496

; <label>:68:                                     ; preds = %63, %57
  br label %73, !dbg !497

; <label>:69:                                     ; preds = %63
  %70 = load i8*, i8** %8, align 8, !dbg !499
  %71 = call i8* @crypt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %70) #6, !dbg !500
  br label %72, !dbg !501

; <label>:72:                                     ; preds = %69, %31
  store i8 1, i8* %6, align 1, !dbg !502
  br label %73, !dbg !503

; <label>:73:                                     ; preds = %72, %68, %30, %23, %16
  %74 = load i8, i8* %6, align 1, !dbg !504
  %75 = icmp ne i8 %74, 0, !dbg !504
  br i1 %75, label %76, label %79, !dbg !506

; <label>:76:                                     ; preds = %73
  %77 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %7, align 8, !dbg !507
  %78 = bitcast %struct.AuthTokenInternal* %77 to %struct.passwd*, !dbg !509
  store %struct.passwd* %78, %struct.passwd** %3, align 8, !dbg !510
  br label %82, !dbg !510

; <label>:79:                                     ; preds = %73
  %80 = load %struct.AuthTokenInternal*, %struct.AuthTokenInternal** %7, align 8, !dbg !511
  %81 = bitcast %struct.AuthTokenInternal* %80 to %struct.passwd*, !dbg !513
  call void @Auth_CloseToken(%struct.passwd* %81), !dbg !514
  store %struct.passwd* null, %struct.passwd** %3, align 8, !dbg !515
  br label %82, !dbg !515

; <label>:82:                                     ; preds = %79, %76
  %83 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !516
  ret %struct.passwd* %83, !dbg !516
}

declare signext i8 @CodeSet_Validate(i8*, i64, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @Log(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct.spwd* @getspnam(i8*) #2

; Function Attrs: nounwind
declare i8* @crypt(i8*, i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i64 @sysconf(i32) #3

declare i8* @UtilSafeMalloc0(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!262, !263}
!llvm.ident = !{!264}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !221)
!1 = !DIFile(filename: "authPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line21")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 71, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop/open-vm-tools/line21")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!6 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!7 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!8 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!9 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!10 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!11 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!12 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!13 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!14 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!15 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!16 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!17 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!18 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!19 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!20 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!21 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!22 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!23 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!24 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!25 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!26 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!27 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!28 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!29 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!30 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!31 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!32 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!33 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!34 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!35 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!36 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!37 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!38 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!39 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!40 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!41 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!42 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!43 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!44 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!45 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!46 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!47 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!48 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!49 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!50 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!51 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!52 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!53 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!54 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!55 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!56 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!57 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!58 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!59 = !DIEnumerator(name: "_SC_PII", value: 53)
!60 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!61 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!62 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!63 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!64 = !DIEnumerator(name: "_SC_POLL", value: 58)
!65 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!66 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!67 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!68 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!69 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!70 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!71 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!72 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!73 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!74 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!75 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!76 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!77 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!78 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!79 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!80 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!81 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!82 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!83 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!84 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!85 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!86 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!87 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!88 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!89 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!90 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!91 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!92 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!93 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!94 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!95 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!96 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!97 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!98 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!99 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!100 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!101 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!102 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!103 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!104 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!105 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!106 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!107 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!108 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!109 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!110 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!111 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!112 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!113 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!114 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!115 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!116 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!117 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!118 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!119 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!120 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!121 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!122 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!123 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!124 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!125 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!126 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!127 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!128 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!129 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!130 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!131 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!132 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!133 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!134 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!135 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!136 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!137 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!138 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!139 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!140 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!141 = !DIEnumerator(name: "_SC_BASE", value: 134)
!142 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!143 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!144 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!145 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!146 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!147 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!148 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!149 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!150 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!151 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!152 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!153 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!154 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!155 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!156 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!157 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!158 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!159 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!160 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!161 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!162 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!163 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!164 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!165 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!166 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!167 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!168 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!169 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!170 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!171 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!172 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!173 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!174 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!175 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!176 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!177 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!178 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!179 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!180 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!181 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!182 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!183 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!184 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!185 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!186 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!187 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!188 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!189 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!190 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!191 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!192 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!193 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!194 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!195 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!196 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!197 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!198 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!199 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!200 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!201 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!202 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!203 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!204 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!205 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!206 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!207 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!208 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!209 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!210 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!211 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!212 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!213 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!214 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!215 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!216 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!217 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!218 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!219 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!220 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!221 = !{!222, !223, !243, !250}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "AuthToken", file: !224, line: 42, baseType: !225)
!224 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/auth.h", directory: "/home/lichi/Desktop/open-vm-tools/line21")
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !228, line: 49, size: 384, align: 64, elements: !229)
!228 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/open-vm-tools/line21")
!229 = !{!230, !233, !234, !238, !240, !241, !242}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !227, file: !228, line: 51, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !227, file: !228, line: 52, baseType: !231, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !227, file: !228, line: 53, baseType: !235, size: 32, align: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !236, line: 125, baseType: !237)
!236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line21")
!237 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !227, file: !228, line: 54, baseType: !239, size: 32, align: 32, offset: 160)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !236, line: 126, baseType: !237)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !227, file: !228, line: 55, baseType: !231, size: 64, align: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !227, file: !228, line: 56, baseType: !231, size: 64, align: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !227, file: !228, line: 57, baseType: !231, size: 64, align: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "AuthTokenInternal", file: !245, line: 55, baseType: !246)
!245 = !DIFile(filename: "authPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line21")
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !245, line: 51, size: 448, align: 64, elements: !247)
!247 = !{!248, !249, !253}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !246, file: !245, line: 52, baseType: !227, size: 384, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "bufSize", scope: !246, file: !245, line: 53, baseType: !250, size: 64, align: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !251, line: 216, baseType: !252)
!251 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line21")
!252 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !246, file: !245, line: 54, baseType: !254, offset: 448)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, align: 8, elements: !260)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !256, line: 177, baseType: !257)
!256 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line21")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !258, line: 48, baseType: !259)
!258 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line21")
!259 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!260 = !{!261}
!261 = !DISubrange(count: -1)
!262 = !{i32 2, !"Dwarf Version", i32 4}
!263 = !{i32 2, !"Debug Info Version", i32 3}
!264 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!265 = distinct !DISubprogram(name: "Auth_GetPwnam", scope: !245, file: !245, line: 307, type: !266, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !270)
!266 = !DISubroutineType(types: !267)
!267 = !{!223, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!270 = !{}
!271 = !DILocalVariable(name: "user", arg: 1, scope: !265, file: !245, line: 307, type: !268)
!272 = !DIExpression()
!273 = !DILocation(line: 307, column: 27, scope: !265)
!274 = !DILocalVariable(name: "ati", scope: !265, file: !245, line: 309, type: !243)
!275 = !DILocation(line: 309, column: 23, scope: !265)
!276 = !DILocalVariable(name: "res", scope: !265, file: !245, line: 310, type: !277)
!277 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!278 = !DILocation(line: 310, column: 8, scope: !265)
!279 = !DILocalVariable(name: "ppwd", scope: !265, file: !245, line: 311, type: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!281 = !DILocation(line: 311, column: 19, scope: !265)
!282 = !DILocation(line: 315, column: 10, scope: !265)
!283 = !DILocation(line: 315, column: 8, scope: !265)
!284 = !DILocation(line: 316, column: 27, scope: !265)
!285 = !DILocation(line: 316, column: 34, scope: !265)
!286 = !DILocation(line: 316, column: 39, scope: !265)
!287 = !DILocation(line: 316, column: 44, scope: !265)
!288 = !DILocation(line: 316, column: 49, scope: !265)
!289 = !DILocation(line: 316, column: 54, scope: !265)
!290 = !DILocation(line: 316, column: 59, scope: !265)
!291 = !DILocation(line: 316, column: 10, scope: !265)
!292 = !DILocation(line: 316, column: 8, scope: !265)
!293 = !DILocation(line: 318, column: 14, scope: !294)
!294 = distinct !DILexicalBlock(scope: !265, file: !245, line: 318, column: 8)
!295 = !DILocation(line: 318, column: 11, scope: !294)
!296 = !DILocation(line: 318, column: 19, scope: !294)
!297 = !DILocation(line: 318, column: 23, scope: !298)
!298 = !DILexicalBlockFile(scope: !294, file: !245, discriminator: 1)
!299 = !DILocation(line: 318, column: 28, scope: !298)
!300 = !DILocation(line: 318, column: 8, scope: !298)
!301 = !DILocation(line: 319, column: 35, scope: !302)
!302 = distinct !DILexicalBlock(scope: !294, file: !245, line: 318, column: 37)
!303 = !DILocation(line: 319, column: 23, scope: !302)
!304 = !DILocation(line: 319, column: 7, scope: !302)
!305 = !DILocation(line: 320, column: 7, scope: !302)
!306 = !DILocation(line: 325, column: 23, scope: !265)
!307 = !DILocation(line: 325, column: 11, scope: !265)
!308 = !DILocation(line: 325, column: 4, scope: !265)
!309 = !DILocation(line: 326, column: 1, scope: !265)
!310 = distinct !DISubprogram(name: "AuthAllocateToken", scope: !245, file: !245, line: 264, type: !311, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !270)
!311 = !DISubroutineType(types: !312)
!312 = !{!243}
!313 = !DILocalVariable(name: "bufSize", scope: !310, file: !245, line: 266, type: !314)
!314 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!315 = !DILocation(line: 266, column: 9, scope: !310)
!316 = !DILocalVariable(name: "ati", scope: !310, file: !245, line: 267, type: !243)
!317 = !DILocation(line: 267, column: 23, scope: !310)
!318 = !DILocation(line: 275, column: 5, scope: !310)
!319 = !DILocation(line: 275, column: 9, scope: !310)
!320 = !DILocation(line: 276, column: 14, scope: !310)
!321 = !DILocation(line: 276, column: 12, scope: !310)
!322 = !DILocation(line: 277, column: 10, scope: !323)
!323 = distinct !DILexicalBlock(scope: !310, file: !245, line: 277, column: 8)
!324 = !DILocation(line: 277, column: 9, scope: !323)
!325 = !DILocation(line: 277, column: 14, scope: !323)
!326 = !DILocation(line: 277, column: 20, scope: !323)
!327 = !DILocation(line: 277, column: 24, scope: !328)
!328 = !DILexicalBlockFile(scope: !323, file: !245, discriminator: 1)
!329 = !DILocation(line: 277, column: 32, scope: !328)
!330 = !DILocation(line: 277, column: 8, scope: !328)
!331 = !DILocation(line: 278, column: 15, scope: !332)
!332 = distinct !DILexicalBlock(scope: !323, file: !245, line: 277, column: 39)
!333 = !DILocation(line: 279, column: 4, scope: !332)
!334 = !DILocation(line: 281, column: 12, scope: !310)
!335 = !DILocation(line: 283, column: 50, scope: !310)
!336 = !DILocation(line: 283, column: 39, scope: !310)
!337 = !DILocation(line: 283, column: 10, scope: !310)
!338 = !DILocation(line: 283, column: 8, scope: !310)
!339 = !DILocation(line: 284, column: 19, scope: !310)
!340 = !DILocation(line: 284, column: 4, scope: !310)
!341 = !DILocation(line: 284, column: 9, scope: !310)
!342 = !DILocation(line: 284, column: 17, scope: !310)
!343 = !DILocation(line: 286, column: 11, scope: !310)
!344 = !DILocation(line: 286, column: 4, scope: !310)
!345 = distinct !DISubprogram(name: "Auth_CloseToken", scope: !245, file: !245, line: 514, type: !346, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !270)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !223}
!348 = !DILocalVariable(name: "token", arg: 1, scope: !345, file: !245, line: 514, type: !223)
!349 = !DILocation(line: 514, column: 27, scope: !345)
!350 = !DILocation(line: 516, column: 18, scope: !345)
!351 = !DILocation(line: 516, column: 9, scope: !345)
!352 = !DILocation(line: 516, column: 4, scope: !345)
!353 = !DILocation(line: 517, column: 1, scope: !345)
!354 = distinct !DISubprogram(name: "Auth_AuthenticateSelf", scope: !245, file: !245, line: 346, type: !355, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !270)
!355 = !DISubroutineType(types: !356)
!356 = !{!223}
!357 = !DILocalVariable(name: "ati", scope: !354, file: !245, line: 348, type: !243)
!358 = !DILocation(line: 348, column: 23, scope: !354)
!359 = !DILocalVariable(name: "res", scope: !354, file: !245, line: 349, type: !277)
!360 = !DILocation(line: 349, column: 8, scope: !354)
!361 = !DILocalVariable(name: "ppwd", scope: !354, file: !245, line: 350, type: !280)
!362 = !DILocation(line: 350, column: 19, scope: !354)
!363 = !DILocation(line: 352, column: 10, scope: !354)
!364 = !DILocation(line: 352, column: 8, scope: !354)
!365 = !DILocation(line: 353, column: 27, scope: !354)
!366 = !DILocation(line: 353, column: 38, scope: !354)
!367 = !DILocation(line: 353, column: 43, scope: !354)
!368 = !DILocation(line: 353, column: 48, scope: !354)
!369 = !DILocation(line: 353, column: 53, scope: !354)
!370 = !DILocation(line: 353, column: 58, scope: !354)
!371 = !DILocation(line: 353, column: 63, scope: !354)
!372 = !DILocation(line: 353, column: 10, scope: !373)
!373 = !DILexicalBlockFile(scope: !354, file: !245, discriminator: 1)
!374 = !DILocation(line: 353, column: 8, scope: !354)
!375 = !DILocation(line: 355, column: 14, scope: !376)
!376 = distinct !DILexicalBlock(scope: !354, file: !245, line: 355, column: 8)
!377 = !DILocation(line: 355, column: 11, scope: !376)
!378 = !DILocation(line: 355, column: 19, scope: !376)
!379 = !DILocation(line: 355, column: 23, scope: !380)
!380 = !DILexicalBlockFile(scope: !376, file: !245, discriminator: 1)
!381 = !DILocation(line: 355, column: 28, scope: !380)
!382 = !DILocation(line: 355, column: 8, scope: !380)
!383 = !DILocation(line: 356, column: 35, scope: !384)
!384 = distinct !DILexicalBlock(scope: !376, file: !245, line: 355, column: 37)
!385 = !DILocation(line: 356, column: 23, scope: !384)
!386 = !DILocation(line: 356, column: 7, scope: !384)
!387 = !DILocation(line: 357, column: 7, scope: !384)
!388 = !DILocation(line: 362, column: 23, scope: !354)
!389 = !DILocation(line: 362, column: 11, scope: !354)
!390 = !DILocation(line: 362, column: 4, scope: !354)
!391 = !DILocation(line: 363, column: 1, scope: !354)
!392 = distinct !DISubprogram(name: "Auth_AuthenticateUser", scope: !245, file: !245, line: 385, type: !393, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !270)
!393 = !DISubroutineType(types: !394)
!394 = !{!223, !268, !268}
!395 = !DILocalVariable(name: "user", arg: 1, scope: !392, file: !245, line: 385, type: !268)
!396 = !DILocation(line: 385, column: 35, scope: !392)
!397 = !DILocalVariable(name: "pass", arg: 2, scope: !392, file: !245, line: 386, type: !268)
!398 = !DILocation(line: 386, column: 35, scope: !392)
!399 = !DILocalVariable(name: "success", scope: !392, file: !245, line: 393, type: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !256, line: 230, baseType: !232)
!401 = !DILocation(line: 393, column: 9, scope: !392)
!402 = !DILocalVariable(name: "ati", scope: !392, file: !245, line: 394, type: !243)
!403 = !DILocation(line: 394, column: 23, scope: !392)
!404 = !DILocation(line: 396, column: 26, scope: !405)
!405 = distinct !DILexicalBlock(scope: !392, file: !245, line: 396, column: 8)
!406 = !DILocation(line: 396, column: 39, scope: !405)
!407 = !DILocation(line: 396, column: 32, scope: !405)
!408 = !DILocation(line: 396, column: 9, scope: !409)
!409 = !DILexicalBlockFile(scope: !405, file: !245, discriminator: 1)
!410 = !DILocation(line: 396, column: 9, scope: !405)
!411 = !DILocation(line: 396, column: 8, scope: !392)
!412 = !DILocation(line: 397, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !405, file: !245, line: 396, column: 56)
!414 = !DILocation(line: 398, column: 7, scope: !413)
!415 = !DILocation(line: 400, column: 26, scope: !416)
!416 = distinct !DILexicalBlock(scope: !392, file: !245, line: 400, column: 8)
!417 = !DILocation(line: 400, column: 39, scope: !416)
!418 = !DILocation(line: 400, column: 32, scope: !416)
!419 = !DILocation(line: 400, column: 9, scope: !420)
!420 = !DILexicalBlockFile(scope: !416, file: !245, discriminator: 1)
!421 = !DILocation(line: 400, column: 9, scope: !416)
!422 = !DILocation(line: 400, column: 8, scope: !392)
!423 = !DILocation(line: 401, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !416, file: !245, line: 400, column: 56)
!425 = !DILocation(line: 402, column: 7, scope: !424)
!426 = !DILocation(line: 453, column: 46, scope: !392)
!427 = !DILocation(line: 453, column: 32, scope: !392)
!428 = !DILocation(line: 453, column: 10, scope: !392)
!429 = !DILocation(line: 453, column: 8, scope: !392)
!430 = !DILocation(line: 455, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !392, file: !245, line: 455, column: 8)
!432 = !DILocation(line: 455, column: 12, scope: !431)
!433 = !DILocation(line: 455, column: 8, scope: !392)
!434 = !DILocation(line: 456, column: 7, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !245, line: 455, column: 20)
!436 = !DILocation(line: 459, column: 9, scope: !437)
!437 = distinct !DILexicalBlock(scope: !392, file: !245, line: 459, column: 8)
!438 = !DILocation(line: 459, column: 14, scope: !437)
!439 = !DILocation(line: 459, column: 18, scope: !437)
!440 = !DILocation(line: 459, column: 8, scope: !437)
!441 = !DILocation(line: 459, column: 28, scope: !437)
!442 = !DILocation(line: 459, column: 8, scope: !392)
!443 = !DILocalVariable(name: "pw", scope: !444, file: !245, line: 460, type: !268)
!444 = distinct !DILexicalBlock(scope: !437, file: !245, line: 459, column: 37)
!445 = !DILocation(line: 460, column: 19, scope: !444)
!446 = !DILocation(line: 460, column: 24, scope: !444)
!447 = !DILocation(line: 460, column: 29, scope: !444)
!448 = !DILocation(line: 460, column: 33, scope: !444)
!449 = !DILocalVariable(name: "namep", scope: !444, file: !245, line: 461, type: !268)
!450 = !DILocation(line: 461, column: 19, scope: !444)
!451 = !DILocation(line: 465, column: 18, scope: !452)
!452 = distinct !DILexicalBlock(scope: !444, file: !245, line: 465, column: 11)
!453 = !DILocation(line: 465, column: 11, scope: !452)
!454 = !DILocation(line: 465, column: 27, scope: !452)
!455 = !DILocation(line: 465, column: 11, scope: !444)
!456 = !DILocalVariable(name: "sp", scope: !457, file: !245, line: 466, type: !458)
!457 = distinct !DILexicalBlock(scope: !452, file: !245, line: 465, column: 33)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spwd", file: !460, line: 39, size: 576, align: 64, elements: !461)
!460 = !DIFile(filename: "/usr/include/shadow.h", directory: "/home/lichi/Desktop/open-vm-tools/line21")
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sp_namp", scope: !459, file: !460, line: 41, baseType: !231, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sp_pwdp", scope: !459, file: !460, line: 42, baseType: !231, size: 64, align: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sp_lstchg", scope: !459, file: !460, line: 43, baseType: !314, size: 64, align: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sp_min", scope: !459, file: !460, line: 44, baseType: !314, size: 64, align: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sp_max", scope: !459, file: !460, line: 45, baseType: !314, size: 64, align: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sp_warn", scope: !459, file: !460, line: 46, baseType: !314, size: 64, align: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sp_inact", scope: !459, file: !460, line: 48, baseType: !314, size: 64, align: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sp_expire", scope: !459, file: !460, line: 50, baseType: !314, size: 64, align: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sp_flag", scope: !459, file: !460, line: 52, baseType: !252, size: 64, align: 64, offset: 512)
!471 = !DILocation(line: 466, column: 23, scope: !457)
!472 = !DILocation(line: 466, column: 37, scope: !457)
!473 = !DILocation(line: 466, column: 28, scope: !457)
!474 = !DILocation(line: 468, column: 14, scope: !475)
!475 = distinct !DILexicalBlock(scope: !457, file: !245, line: 468, column: 14)
!476 = !DILocation(line: 468, column: 14, scope: !457)
!477 = !DILocation(line: 469, column: 18, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !245, line: 468, column: 18)
!479 = !DILocation(line: 469, column: 22, scope: !478)
!480 = !DILocation(line: 469, column: 16, scope: !478)
!481 = !DILocation(line: 470, column: 10, scope: !478)
!482 = !DILocation(line: 471, column: 7, scope: !457)
!483 = !DILocation(line: 474, column: 21, scope: !444)
!484 = !DILocation(line: 474, column: 27, scope: !444)
!485 = !DILocation(line: 474, column: 15, scope: !444)
!486 = !DILocation(line: 474, column: 13, scope: !444)
!487 = !DILocation(line: 475, column: 11, scope: !488)
!488 = distinct !DILexicalBlock(scope: !444, file: !245, line: 475, column: 11)
!489 = !DILocation(line: 475, column: 17, scope: !488)
!490 = !DILocation(line: 475, column: 24, scope: !488)
!491 = !DILocation(line: 475, column: 34, scope: !492)
!492 = !DILexicalBlockFile(scope: !488, file: !245, discriminator: 1)
!493 = !DILocation(line: 475, column: 41, scope: !492)
!494 = !DILocation(line: 475, column: 27, scope: !492)
!495 = !DILocation(line: 475, column: 45, scope: !492)
!496 = !DILocation(line: 475, column: 11, scope: !492)
!497 = !DILocation(line: 477, column: 10, scope: !498)
!498 = distinct !DILexicalBlock(scope: !488, file: !245, line: 475, column: 51)
!499 = !DILocation(line: 481, column: 22, scope: !444)
!500 = !DILocation(line: 481, column: 7, scope: !444)
!501 = !DILocation(line: 482, column: 4, scope: !444)
!502 = !DILocation(line: 485, column: 12, scope: !392)
!503 = !DILocation(line: 485, column: 4, scope: !392)
!504 = !DILocation(line: 488, column: 8, scope: !505)
!505 = distinct !DILexicalBlock(scope: !392, file: !245, line: 488, column: 8)
!506 = !DILocation(line: 488, column: 8, scope: !392)
!507 = !DILocation(line: 489, column: 26, scope: !508)
!508 = distinct !DILexicalBlock(scope: !505, file: !245, line: 488, column: 17)
!509 = !DILocation(line: 489, column: 14, scope: !508)
!510 = !DILocation(line: 489, column: 7, scope: !508)
!511 = !DILocation(line: 491, column: 35, scope: !512)
!512 = distinct !DILexicalBlock(scope: !505, file: !245, line: 490, column: 11)
!513 = !DILocation(line: 491, column: 23, scope: !512)
!514 = !DILocation(line: 491, column: 7, scope: !512)
!515 = !DILocation(line: 492, column: 7, scope: !512)
!516 = !DILocation(line: 494, column: 1, scope: !392)
