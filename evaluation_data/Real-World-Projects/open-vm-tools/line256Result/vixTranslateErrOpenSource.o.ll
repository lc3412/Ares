; ModuleID = './vixTranslateErrOpenSource.o.i'
source_filename = "./vixTranslateErrOpenSource.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"%s: crypto error = %d\0A\00", align 1
@__FUNCTION__.Vix_TranslateCryptoError = private unnamed_addr constant [25 x i8] c"Vix_TranslateCryptoError\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: errno = %d\0A\00", align 1
@__FUNCTION__.Vix_TranslateErrno = private unnamed_addr constant [19 x i8] c"Vix_TranslateErrno\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"Foundry operation failed with system error: %s (%d), translated to %ld\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @Vix_TranslateGuestRegistryError(i32) #0 !dbg !295 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !306, metadata !307), !dbg !308
  call void @llvm.dbg.declare(metadata i64* %3, metadata !309, metadata !307), !dbg !310
  store i64 1, i64* %3, align 8, !dbg !310
  %4 = load i64, i64* %3, align 8, !dbg !311
  ret i64 %4, !dbg !312
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i64 @Vix_TranslateSystemError(i32) #0 !dbg !313 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !314, metadata !307), !dbg !315
  call void @llvm.dbg.declare(metadata i64* %3, metadata !316, metadata !307), !dbg !317
  store i64 1, i64* %3, align 8, !dbg !317
  %4 = load i32, i32* %2, align 4, !dbg !318
  %5 = call i64 @Vix_TranslateErrno(i32 %4), !dbg !319
  store i64 %5, i64* %3, align 8, !dbg !320
  %6 = load i64, i64* %3, align 8, !dbg !321
  ret i64 %6, !dbg !322
}

; Function Attrs: nounwind uwtable
define i64 @Vix_TranslateErrno(i32) #0 !dbg !323 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !324, metadata !307), !dbg !325
  call void @llvm.dbg.declare(metadata i64* %3, metadata !326, metadata !307), !dbg !327
  store i64 1, i64* %3, align 8, !dbg !327
  %4 = load i32, i32* %2, align 4, !dbg !328
  switch i32 %4, label %20 [
    i32 1, label %5
    i32 13, label %5
    i32 11, label %6
    i32 16, label %6
    i32 17, label %7
    i32 27, label %8
    i32 39, label %9
    i32 20, label %10
    i32 110, label %11
    i32 105, label %11
    i32 5, label %11
    i32 24, label %11
    i32 23, label %11
    i32 31, label %11
    i32 30, label %11
    i32 19, label %13
    i32 2, label %13
    i32 28, label %14
    i32 21, label %15
    i32 3, label %16
    i32 36, label %17
    i32 90, label %18
    i32 22, label %18
    i32 40, label %19
    i32 12, label %19
  ], !dbg !329

; <label>:5:                                      ; preds = %1, %1
  store i64 13, i64* %3, align 8, !dbg !330
  br label %21, !dbg !332

; <label>:6:                                      ; preds = %1, %1
  store i64 5, i64* %3, align 8, !dbg !333
  br label %21, !dbg !334

; <label>:7:                                      ; preds = %1
  store i64 12, i64* %3, align 8, !dbg !335
  br label %21, !dbg !336

; <label>:8:                                      ; preds = %1
  store i64 21, i64* %3, align 8, !dbg !337
  br label %21, !dbg !338

; <label>:9:                                      ; preds = %1
  store i64 20006, i64* %3, align 8, !dbg !339
  br label %21, !dbg !340

; <label>:10:                                     ; preds = %1
  store i64 20002, i64* %3, align 8, !dbg !341
  br label %21, !dbg !342

; <label>:11:                                     ; preds = %1, %1, %1, %1, %1, %1, %1
  %12 = load i32, i32* %2, align 4, !dbg !343
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.Vix_TranslateErrno, i32 0, i32 0), i32 %12), !dbg !344
  store i64 7, i64* %3, align 8, !dbg !345
  br label %21, !dbg !346

; <label>:13:                                     ; preds = %1, %1
  store i64 4, i64* %3, align 8, !dbg !347
  br label %21, !dbg !348

; <label>:14:                                     ; preds = %1
  store i64 8, i64* %3, align 8, !dbg !349
  br label %21, !dbg !350

; <label>:15:                                     ; preds = %1
  store i64 20001, i64* %3, align 8, !dbg !351
  br label %21, !dbg !352

; <label>:16:                                     ; preds = %1
  store i64 20003, i64* %3, align 8, !dbg !353
  br label %21, !dbg !354

; <label>:17:                                     ; preds = %1
  store i64 20004, i64* %3, align 8, !dbg !355
  br label %21, !dbg !356

; <label>:18:                                     ; preds = %1, %1
  store i64 3, i64* %3, align 8, !dbg !357
  br label %21, !dbg !358

; <label>:19:                                     ; preds = %1, %1
  store i64 2, i64* %3, align 8, !dbg !359
  br label %21, !dbg !360

; <label>:20:                                     ; preds = %1
  store i64 1, i64* %3, align 8, !dbg !361
  br label %21, !dbg !362

; <label>:21:                                     ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %11, %10, %9, %8, %7, %6, %5
  %22 = load i32, i32* %2, align 4, !dbg !363
  %23 = call i8* @strerror(i32 %22) #4, !dbg !364
  %24 = load i32, i32* %2, align 4, !dbg !365
  %25 = load i64, i64* %3, align 8, !dbg !366
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i32 0, i32 0), i8* %23, i32 %24, i64 %25), !dbg !367
  %26 = load i64, i64* %3, align 8, !dbg !368
  ret i64 %26, !dbg !369
}

; Function Attrs: nounwind uwtable
define i64 @Vix_TranslateCryptoError(i32) #0 !dbg !370 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !373, metadata !307), !dbg !374
  %4 = load i32, i32* %3, align 4, !dbg !375
  %5 = icmp eq i32 0, %4, !dbg !377
  br i1 %5, label %6, label %7, !dbg !378

; <label>:6:                                      ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !379
  br label %64, !dbg !379

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !381
  %9 = icmp eq i32 1, %8, !dbg !383
  br i1 %9, label %10, label %11, !dbg !384

; <label>:10:                                     ; preds = %7
  store i64 3015, i64* %2, align 8, !dbg !385
  br label %64, !dbg !385

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %3, align 4, !dbg !387
  %13 = icmp eq i32 2, %12, !dbg !389
  br i1 %13, label %14, label %15, !dbg !390

; <label>:14:                                     ; preds = %11
  store i64 17000, i64* %2, align 8, !dbg !391
  br label %64, !dbg !391

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4, !dbg !393
  %17 = icmp eq i32 3, %16, !dbg !395
  br i1 %17, label %18, label %19, !dbg !396

; <label>:18:                                     ; preds = %15
  store i64 17001, i64* %2, align 8, !dbg !397
  br label %64, !dbg !397

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %3, align 4, !dbg !399
  %21 = icmp eq i32 4, %20, !dbg !401
  br i1 %21, label %22, label %23, !dbg !402

; <label>:22:                                     ; preds = %19
  store i64 17002, i64* %2, align 8, !dbg !403
  br label %64, !dbg !403

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %3, align 4, !dbg !405
  %25 = icmp eq i32 5, %24, !dbg !407
  br i1 %25, label %26, label %27, !dbg !408

; <label>:26:                                     ; preds = %23
  store i64 2, i64* %2, align 8, !dbg !409
  br label %64, !dbg !409

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %3, align 4, !dbg !411
  %29 = icmp eq i32 6, %28, !dbg !413
  br i1 %29, label %30, label %31, !dbg !414

; <label>:30:                                     ; preds = %27
  store i64 17004, i64* %2, align 8, !dbg !415
  br label %64, !dbg !415

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %3, align 4, !dbg !417
  %33 = icmp eq i32 7, %32, !dbg !419
  br i1 %33, label %34, label %35, !dbg !420

; <label>:34:                                     ; preds = %31
  store i64 17005, i64* %2, align 8, !dbg !421
  br label %64, !dbg !421

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %3, align 4, !dbg !423
  %37 = icmp eq i32 8, %36, !dbg !425
  br i1 %37, label %38, label %40, !dbg !426

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %3, align 4, !dbg !427
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.Vix_TranslateCryptoError, i32 0, i32 0), i32 %39), !dbg !429
  store i64 7, i64* %2, align 8, !dbg !430
  br label %64, !dbg !430

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* %3, align 4, !dbg !431
  %42 = icmp eq i32 9, %41, !dbg !433
  br i1 %42, label %43, label %44, !dbg !434

; <label>:43:                                     ; preds = %40
  store i64 1, i64* %2, align 8, !dbg !435
  br label %64, !dbg !435

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* %3, align 4, !dbg !437
  %46 = icmp eq i32 10, %45, !dbg !439
  br i1 %46, label %47, label %48, !dbg !440

; <label>:47:                                     ; preds = %44
  store i64 17006, i64* %2, align 8, !dbg !441
  br label %64, !dbg !441

; <label>:48:                                     ; preds = %44
  %49 = load i32, i32* %3, align 4, !dbg !443
  %50 = icmp eq i32 11, %49, !dbg !445
  br i1 %50, label %51, label %52, !dbg !446

; <label>:51:                                     ; preds = %48
  store i64 17007, i64* %2, align 8, !dbg !447
  br label %64, !dbg !447

; <label>:52:                                     ; preds = %48
  br label %53

; <label>:53:                                     ; preds = %52
  br label %54

; <label>:54:                                     ; preds = %53
  br label %55

; <label>:55:                                     ; preds = %54
  br label %56

; <label>:56:                                     ; preds = %55
  br label %57

; <label>:57:                                     ; preds = %56
  br label %58

; <label>:58:                                     ; preds = %57
  br label %59

; <label>:59:                                     ; preds = %58
  br label %60

; <label>:60:                                     ; preds = %59
  br label %61

; <label>:61:                                     ; preds = %60
  br label %62

; <label>:62:                                     ; preds = %61
  br label %63

; <label>:63:                                     ; preds = %62
  store i64 1, i64* %2, align 8, !dbg !449
  br label %64, !dbg !449

; <label>:64:                                     ; preds = %63, %51, %47, %43, %38, %34, %30, %26, %22, %18, %14, %10, %6
  %65 = load i64, i64* %2, align 8, !dbg !450
  ret i64 %65, !dbg !450
}

declare void @Log(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!292, !293}
!llvm.ident = !{!294}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !288)
!1 = !DIFile(filename: "vixTranslateErrOpenSource.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line256")
!2 = !{!3, !272}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 87, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vix.h", directory: "/home/lichi/Desktop/open-vm-tools/line256")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!6 = !DIEnumerator(name: "VIX_OK", value: 0)
!7 = !DIEnumerator(name: "VIX_E_FAIL", value: 1)
!8 = !DIEnumerator(name: "VIX_E_OUT_OF_MEMORY", value: 2)
!9 = !DIEnumerator(name: "VIX_E_INVALID_ARG", value: 3)
!10 = !DIEnumerator(name: "VIX_E_FILE_NOT_FOUND", value: 4)
!11 = !DIEnumerator(name: "VIX_E_OBJECT_IS_BUSY", value: 5)
!12 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED", value: 6)
!13 = !DIEnumerator(name: "VIX_E_FILE_ERROR", value: 7)
!14 = !DIEnumerator(name: "VIX_E_DISK_FULL", value: 8)
!15 = !DIEnumerator(name: "VIX_E_INCORRECT_FILE_TYPE", value: 9)
!16 = !DIEnumerator(name: "VIX_E_CANCELLED", value: 10)
!17 = !DIEnumerator(name: "VIX_E_FILE_READ_ONLY", value: 11)
!18 = !DIEnumerator(name: "VIX_E_FILE_ALREADY_EXISTS", value: 12)
!19 = !DIEnumerator(name: "VIX_E_FILE_ACCESS_ERROR", value: 13)
!20 = !DIEnumerator(name: "VIX_E_REQUIRES_LARGE_FILES", value: 14)
!21 = !DIEnumerator(name: "VIX_E_FILE_ALREADY_LOCKED", value: 15)
!22 = !DIEnumerator(name: "VIX_E_VMDB", value: 16)
!23 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_ON_REMOTE_OBJECT", value: 20)
!24 = !DIEnumerator(name: "VIX_E_FILE_TOO_BIG", value: 21)
!25 = !DIEnumerator(name: "VIX_E_FILE_NAME_INVALID", value: 22)
!26 = !DIEnumerator(name: "VIX_E_ALREADY_EXISTS", value: 23)
!27 = !DIEnumerator(name: "VIX_E_BUFFER_TOOSMALL", value: 24)
!28 = !DIEnumerator(name: "VIX_E_OBJECT_NOT_FOUND", value: 25)
!29 = !DIEnumerator(name: "VIX_E_HOST_NOT_CONNECTED", value: 26)
!30 = !DIEnumerator(name: "VIX_E_INVALID_UTF8_STRING", value: 27)
!31 = !DIEnumerator(name: "VIX_E_OPERATION_ALREADY_IN_PROGRESS", value: 31)
!32 = !DIEnumerator(name: "VIX_E_UNFINISHED_JOB", value: 29)
!33 = !DIEnumerator(name: "VIX_E_NEED_KEY", value: 30)
!34 = !DIEnumerator(name: "VIX_E_LICENSE", value: 32)
!35 = !DIEnumerator(name: "VIX_E_VM_HOST_DISCONNECTED", value: 34)
!36 = !DIEnumerator(name: "VIX_E_AUTHENTICATION_FAIL", value: 35)
!37 = !DIEnumerator(name: "VIX_E_HOST_CONNECTION_LOST", value: 36)
!38 = !DIEnumerator(name: "VIX_E_DUPLICATE_NAME", value: 41)
!39 = !DIEnumerator(name: "VIX_E_ARGUMENT_TOO_BIG", value: 44)
!40 = !DIEnumerator(name: "VIX_E_INVALID_HANDLE", value: 1000)
!41 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_ON_HANDLE_TYPE", value: 1001)
!42 = !DIEnumerator(name: "VIX_E_TOO_MANY_HANDLES", value: 1002)
!43 = !DIEnumerator(name: "VIX_E_NOT_FOUND", value: 2000)
!44 = !DIEnumerator(name: "VIX_E_TYPE_MISMATCH", value: 2001)
!45 = !DIEnumerator(name: "VIX_E_INVALID_XML", value: 2002)
!46 = !DIEnumerator(name: "VIX_E_TIMEOUT_WAITING_FOR_TOOLS", value: 3000)
!47 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_COMMAND", value: 3001)
!48 = !DIEnumerator(name: "VIX_E_OP_NOT_SUPPORTED_ON_GUEST", value: 3003)
!49 = !DIEnumerator(name: "VIX_E_PROGRAM_NOT_STARTED", value: 3004)
!50 = !DIEnumerator(name: "VIX_E_CANNOT_START_READ_ONLY_VM", value: 3005)
!51 = !DIEnumerator(name: "VIX_E_VM_NOT_RUNNING", value: 3006)
!52 = !DIEnumerator(name: "VIX_E_VM_IS_RUNNING", value: 3007)
!53 = !DIEnumerator(name: "VIX_E_CANNOT_CONNECT_TO_VM", value: 3008)
!54 = !DIEnumerator(name: "VIX_E_POWEROP_SCRIPTS_NOT_AVAILABLE", value: 3009)
!55 = !DIEnumerator(name: "VIX_E_NO_GUEST_OS_INSTALLED", value: 3010)
!56 = !DIEnumerator(name: "VIX_E_VM_INSUFFICIENT_HOST_MEMORY", value: 3011)
!57 = !DIEnumerator(name: "VIX_E_SUSPEND_ERROR", value: 3012)
!58 = !DIEnumerator(name: "VIX_E_VM_NOT_ENOUGH_CPUS", value: 3013)
!59 = !DIEnumerator(name: "VIX_E_HOST_USER_PERMISSIONS", value: 3014)
!60 = !DIEnumerator(name: "VIX_E_GUEST_USER_PERMISSIONS", value: 3015)
!61 = !DIEnumerator(name: "VIX_E_TOOLS_NOT_RUNNING", value: 3016)
!62 = !DIEnumerator(name: "VIX_E_GUEST_OPERATIONS_PROHIBITED", value: 3017)
!63 = !DIEnumerator(name: "VIX_E_ANON_GUEST_OPERATIONS_PROHIBITED", value: 3018)
!64 = !DIEnumerator(name: "VIX_E_ROOT_GUEST_OPERATIONS_PROHIBITED", value: 3019)
!65 = !DIEnumerator(name: "VIX_E_MISSING_ANON_GUEST_ACCOUNT", value: 3023)
!66 = !DIEnumerator(name: "VIX_E_CANNOT_AUTHENTICATE_WITH_GUEST", value: 3024)
!67 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_COMMAND_IN_GUEST", value: 3025)
!68 = !DIEnumerator(name: "VIX_E_CONSOLE_GUEST_OPERATIONS_PROHIBITED", value: 3026)
!69 = !DIEnumerator(name: "VIX_E_MUST_BE_CONSOLE_USER", value: 3027)
!70 = !DIEnumerator(name: "VIX_E_VMX_MSG_DIALOG_AND_NO_UI", value: 3028)
!71 = !DIEnumerator(name: "VIX_E_OPERATION_NOT_ALLOWED_FOR_LOGIN_TYPE", value: 3031)
!72 = !DIEnumerator(name: "VIX_E_LOGIN_TYPE_NOT_SUPPORTED", value: 3032)
!73 = !DIEnumerator(name: "VIX_E_EMPTY_PASSWORD_NOT_ALLOWED_IN_GUEST", value: 3033)
!74 = !DIEnumerator(name: "VIX_E_INTERACTIVE_SESSION_NOT_PRESENT", value: 3034)
!75 = !DIEnumerator(name: "VIX_E_INTERACTIVE_SESSION_USER_MISMATCH", value: 3035)
!76 = !DIEnumerator(name: "VIX_E_CANNOT_POWER_ON_VM", value: 3041)
!77 = !DIEnumerator(name: "VIX_E_NO_DISPLAY_SERVER", value: 3043)
!78 = !DIEnumerator(name: "VIX_E_TOO_MANY_LOGONS", value: 3046)
!79 = !DIEnumerator(name: "VIX_E_INVALID_AUTHENTICATION_SESSION", value: 3047)
!80 = !DIEnumerator(name: "VIX_E_VM_NOT_FOUND", value: 4000)
!81 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_FOR_VM_VERSION", value: 4001)
!82 = !DIEnumerator(name: "VIX_E_CANNOT_READ_VM_CONFIG", value: 4002)
!83 = !DIEnumerator(name: "VIX_E_TEMPLATE_VM", value: 4003)
!84 = !DIEnumerator(name: "VIX_E_VM_ALREADY_LOADED", value: 4004)
!85 = !DIEnumerator(name: "VIX_E_VM_ALREADY_UP_TO_DATE", value: 4006)
!86 = !DIEnumerator(name: "VIX_E_VM_UNSUPPORTED_GUEST", value: 4011)
!87 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_PROPERTY", value: 6000)
!88 = !DIEnumerator(name: "VIX_E_INVALID_PROPERTY_VALUE", value: 6001)
!89 = !DIEnumerator(name: "VIX_E_READ_ONLY_PROPERTY", value: 6002)
!90 = !DIEnumerator(name: "VIX_E_MISSING_REQUIRED_PROPERTY", value: 6003)
!91 = !DIEnumerator(name: "VIX_E_INVALID_SERIALIZED_DATA", value: 6004)
!92 = !DIEnumerator(name: "VIX_E_PROPERTY_TYPE_MISMATCH", value: 6005)
!93 = !DIEnumerator(name: "VIX_E_BAD_VM_INDEX", value: 8000)
!94 = !DIEnumerator(name: "VIX_E_INVALID_MESSAGE_HEADER", value: 10000)
!95 = !DIEnumerator(name: "VIX_E_INVALID_MESSAGE_BODY", value: 10001)
!96 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INVAL", value: 13000)
!97 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DUMPER", value: 13001)
!98 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DISKLIB", value: 13002)
!99 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOTFOUND", value: 13003)
!100 = !DIEnumerator(name: "VIX_E_SNAPSHOT_EXISTS", value: 13004)
!101 = !DIEnumerator(name: "VIX_E_SNAPSHOT_VERSION", value: 13005)
!102 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOPERM", value: 13006)
!103 = !DIEnumerator(name: "VIX_E_SNAPSHOT_CONFIG", value: 13007)
!104 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOCHANGE", value: 13008)
!105 = !DIEnumerator(name: "VIX_E_SNAPSHOT_CHECKPOINT", value: 13009)
!106 = !DIEnumerator(name: "VIX_E_SNAPSHOT_LOCKED", value: 13010)
!107 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INCONSISTENT", value: 13011)
!108 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NAMETOOLONG", value: 13012)
!109 = !DIEnumerator(name: "VIX_E_SNAPSHOT_VIXFILE", value: 13013)
!110 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DISKLOCKED", value: 13014)
!111 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DUPLICATEDDISK", value: 13015)
!112 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INDEPENDENTDISK", value: 13016)
!113 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NONUNIQUE_NAME", value: 13017)
!114 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MEMORY_ON_INDEPENDENT_DISK", value: 13018)
!115 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MAXSNAPSHOTS", value: 13019)
!116 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MIN_FREE_SPACE", value: 13020)
!117 = !DIEnumerator(name: "VIX_E_SNAPSHOT_HIERARCHY_TOODEEP", value: 13021)
!118 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOT_REVERTABLE", value: 13024)
!119 = !DIEnumerator(name: "VIX_E_HOST_DISK_INVALID_VALUE", value: 14003)
!120 = !DIEnumerator(name: "VIX_E_HOST_DISK_SECTORSIZE", value: 14004)
!121 = !DIEnumerator(name: "VIX_E_HOST_FILE_ERROR_EOF", value: 14005)
!122 = !DIEnumerator(name: "VIX_E_HOST_NETBLKDEV_HANDSHAKE", value: 14006)
!123 = !DIEnumerator(name: "VIX_E_HOST_SOCKET_CREATION_ERROR", value: 14007)
!124 = !DIEnumerator(name: "VIX_E_HOST_SERVER_NOT_FOUND", value: 14008)
!125 = !DIEnumerator(name: "VIX_E_HOST_NETWORK_CONN_REFUSED", value: 14009)
!126 = !DIEnumerator(name: "VIX_E_HOST_TCP_SOCKET_ERROR", value: 14010)
!127 = !DIEnumerator(name: "VIX_E_HOST_TCP_CONN_LOST", value: 14011)
!128 = !DIEnumerator(name: "VIX_E_HOST_NBD_HASHFILE_VOLUME", value: 14012)
!129 = !DIEnumerator(name: "VIX_E_HOST_NBD_HASHFILE_INIT", value: 14013)
!130 = !DIEnumerator(name: "VIX_E_DISK_INVAL", value: 16000)
!131 = !DIEnumerator(name: "VIX_E_DISK_NOINIT", value: 16001)
!132 = !DIEnumerator(name: "VIX_E_DISK_NOIO", value: 16002)
!133 = !DIEnumerator(name: "VIX_E_DISK_PARTIALCHAIN", value: 16003)
!134 = !DIEnumerator(name: "VIX_E_DISK_NEEDSREPAIR", value: 16006)
!135 = !DIEnumerator(name: "VIX_E_DISK_OUTOFRANGE", value: 16007)
!136 = !DIEnumerator(name: "VIX_E_DISK_CID_MISMATCH", value: 16008)
!137 = !DIEnumerator(name: "VIX_E_DISK_CANTSHRINK", value: 16009)
!138 = !DIEnumerator(name: "VIX_E_DISK_PARTMISMATCH", value: 16010)
!139 = !DIEnumerator(name: "VIX_E_DISK_UNSUPPORTEDDISKVERSION", value: 16011)
!140 = !DIEnumerator(name: "VIX_E_DISK_OPENPARENT", value: 16012)
!141 = !DIEnumerator(name: "VIX_E_DISK_NOTSUPPORTED", value: 16013)
!142 = !DIEnumerator(name: "VIX_E_DISK_NEEDKEY", value: 16014)
!143 = !DIEnumerator(name: "VIX_E_DISK_NOKEYOVERRIDE", value: 16015)
!144 = !DIEnumerator(name: "VIX_E_DISK_NOTENCRYPTED", value: 16016)
!145 = !DIEnumerator(name: "VIX_E_DISK_NOKEY", value: 16017)
!146 = !DIEnumerator(name: "VIX_E_DISK_INVALIDPARTITIONTABLE", value: 16018)
!147 = !DIEnumerator(name: "VIX_E_DISK_NOTNORMAL", value: 16019)
!148 = !DIEnumerator(name: "VIX_E_DISK_NOTENCDESC", value: 16020)
!149 = !DIEnumerator(name: "VIX_E_DISK_NEEDVMFS", value: 16022)
!150 = !DIEnumerator(name: "VIX_E_DISK_RAWTOOBIG", value: 16024)
!151 = !DIEnumerator(name: "VIX_E_DISK_TOOMANYOPENFILES", value: 16027)
!152 = !DIEnumerator(name: "VIX_E_DISK_TOOMANYREDO", value: 16028)
!153 = !DIEnumerator(name: "VIX_E_DISK_RAWTOOSMALL", value: 16029)
!154 = !DIEnumerator(name: "VIX_E_DISK_INVALIDCHAIN", value: 16030)
!155 = !DIEnumerator(name: "VIX_E_DISK_KEY_NOTFOUND", value: 16052)
!156 = !DIEnumerator(name: "VIX_E_DISK_SUBSYSTEM_INIT_FAIL", value: 16053)
!157 = !DIEnumerator(name: "VIX_E_DISK_INVALID_CONNECTION", value: 16054)
!158 = !DIEnumerator(name: "VIX_E_DISK_ENCODING", value: 16061)
!159 = !DIEnumerator(name: "VIX_E_DISK_CANTREPAIR", value: 16062)
!160 = !DIEnumerator(name: "VIX_E_DISK_INVALIDDISK", value: 16063)
!161 = !DIEnumerator(name: "VIX_E_DISK_NOLICENSE", value: 16064)
!162 = !DIEnumerator(name: "VIX_E_DISK_NODEVICE", value: 16065)
!163 = !DIEnumerator(name: "VIX_E_DISK_UNSUPPORTEDDEVICE", value: 16066)
!164 = !DIEnumerator(name: "VIX_E_DISK_CAPACITY_MISMATCH", value: 16067)
!165 = !DIEnumerator(name: "VIX_E_DISK_PARENT_NOTALLOWED", value: 16068)
!166 = !DIEnumerator(name: "VIX_E_DISK_ATTACH_ROOTLINK", value: 16069)
!167 = !DIEnumerator(name: "VIX_E_CRYPTO_UNKNOWN_ALGORITHM", value: 17000)
!168 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_BUFFER_SIZE", value: 17001)
!169 = !DIEnumerator(name: "VIX_E_CRYPTO_INVALID_OPERATION", value: 17002)
!170 = !DIEnumerator(name: "VIX_E_CRYPTO_RANDOM_DEVICE", value: 17003)
!171 = !DIEnumerator(name: "VIX_E_CRYPTO_NEED_PASSWORD", value: 17004)
!172 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_PASSWORD", value: 17005)
!173 = !DIEnumerator(name: "VIX_E_CRYPTO_NOT_IN_DICTIONARY", value: 17006)
!174 = !DIEnumerator(name: "VIX_E_CRYPTO_NO_CRYPTO", value: 17007)
!175 = !DIEnumerator(name: "VIX_E_CRYPTO_ERROR", value: 17008)
!176 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_FORMAT", value: 17009)
!177 = !DIEnumerator(name: "VIX_E_CRYPTO_LOCKED", value: 17010)
!178 = !DIEnumerator(name: "VIX_E_CRYPTO_EMPTY", value: 17011)
!179 = !DIEnumerator(name: "VIX_E_CRYPTO_KEYSAFE_LOCATOR", value: 17012)
!180 = !DIEnumerator(name: "VIX_E_CANNOT_CONNECT_TO_HOST", value: 18000)
!181 = !DIEnumerator(name: "VIX_E_NOT_FOR_REMOTE_HOST", value: 18001)
!182 = !DIEnumerator(name: "VIX_E_INVALID_HOSTNAME_SPECIFICATION", value: 18002)
!183 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_ERROR", value: 19000)
!184 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_BAD_FORMAT", value: 19001)
!185 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_COMPRESSION_FAIL", value: 19002)
!186 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_LARGE_DATA", value: 19003)
!187 = !DIEnumerator(name: "VIX_E_GUEST_VOLUMES_NOT_FROZEN", value: 20000)
!188 = !DIEnumerator(name: "VIX_E_NOT_A_FILE", value: 20001)
!189 = !DIEnumerator(name: "VIX_E_NOT_A_DIRECTORY", value: 20002)
!190 = !DIEnumerator(name: "VIX_E_NO_SUCH_PROCESS", value: 20003)
!191 = !DIEnumerator(name: "VIX_E_FILE_NAME_TOO_LONG", value: 20004)
!192 = !DIEnumerator(name: "VIX_E_OPERATION_DISABLED", value: 20005)
!193 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_NO_IMAGE", value: 21000)
!194 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IMAGE_INACCESIBLE", value: 21001)
!195 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_NO_DEVICE", value: 21002)
!196 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_DEVICE_NOT_CONNECTED", value: 21003)
!197 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_CANCELLED", value: 21004)
!198 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_INIT_FAILED", value: 21005)
!199 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_AUTO_NOT_SUPPORTED", value: 21006)
!200 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_GUEST_NOT_READY", value: 21007)
!201 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_SIG_CHECK_FAILED", value: 21008)
!202 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_ERROR", value: 21009)
!203 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_ALREADY_UP_TO_DATE", value: 21010)
!204 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IN_PROGRESS", value: 21011)
!205 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IMAGE_COPY_FAILED", value: 21012)
!206 = !DIEnumerator(name: "VIX_E_WRAPPER_WORKSTATION_NOT_INSTALLED", value: 22001)
!207 = !DIEnumerator(name: "VIX_E_WRAPPER_VERSION_NOT_FOUND", value: 22002)
!208 = !DIEnumerator(name: "VIX_E_WRAPPER_SERVICEPROVIDER_NOT_FOUND", value: 22003)
!209 = !DIEnumerator(name: "VIX_E_WRAPPER_PLAYER_NOT_INSTALLED", value: 22004)
!210 = !DIEnumerator(name: "VIX_E_WRAPPER_RUNTIME_NOT_INSTALLED", value: 22005)
!211 = !DIEnumerator(name: "VIX_E_WRAPPER_MULTIPLE_SERVICEPROVIDERS", value: 22006)
!212 = !DIEnumerator(name: "VIX_E_MNTAPI_MOUNTPT_NOT_FOUND", value: 24000)
!213 = !DIEnumerator(name: "VIX_E_MNTAPI_MOUNTPT_IN_USE", value: 24001)
!214 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_FOUND", value: 24002)
!215 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_MOUNTED", value: 24003)
!216 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_IS_MOUNTED", value: 24004)
!217 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_SAFE", value: 24005)
!218 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_CANT_OPEN", value: 24006)
!219 = !DIEnumerator(name: "VIX_E_MNTAPI_CANT_READ_PARTS", value: 24007)
!220 = !DIEnumerator(name: "VIX_E_MNTAPI_UMOUNT_APP_NOT_FOUND", value: 24008)
!221 = !DIEnumerator(name: "VIX_E_MNTAPI_UMOUNT", value: 24009)
!222 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_MOUNTABLE_PARTITONS", value: 24010)
!223 = !DIEnumerator(name: "VIX_E_MNTAPI_PARTITION_RANGE", value: 24011)
!224 = !DIEnumerator(name: "VIX_E_MNTAPI_PERM", value: 24012)
!225 = !DIEnumerator(name: "VIX_E_MNTAPI_DICT", value: 24013)
!226 = !DIEnumerator(name: "VIX_E_MNTAPI_DICT_LOCKED", value: 24014)
!227 = !DIEnumerator(name: "VIX_E_MNTAPI_OPEN_HANDLES", value: 24015)
!228 = !DIEnumerator(name: "VIX_E_MNTAPI_CANT_MAKE_VAR_DIR", value: 24016)
!229 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_ROOT", value: 24017)
!230 = !DIEnumerator(name: "VIX_E_MNTAPI_LOOP_FAILED", value: 24018)
!231 = !DIEnumerator(name: "VIX_E_MNTAPI_DAEMON", value: 24019)
!232 = !DIEnumerator(name: "VIX_E_MNTAPI_INTERNAL", value: 24020)
!233 = !DIEnumerator(name: "VIX_E_MNTAPI_SYSTEM", value: 24021)
!234 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_CONNECTION_DETAILS", value: 24022)
!235 = !DIEnumerator(name: "VIX_E_MNTAPI_INCOMPATIBLE_VERSION", value: 24300)
!236 = !DIEnumerator(name: "VIX_E_MNTAPI_OS_ERROR", value: 24301)
!237 = !DIEnumerator(name: "VIX_E_MNTAPI_DRIVE_LETTER_IN_USE", value: 24302)
!238 = !DIEnumerator(name: "VIX_E_MNTAPI_DRIVE_LETTER_ALREADY_ASSIGNED", value: 24303)
!239 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_NOT_MOUNTED", value: 24304)
!240 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_ALREADY_MOUNTED", value: 24305)
!241 = !DIEnumerator(name: "VIX_E_MNTAPI_FORMAT_FAILURE", value: 24306)
!242 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_DRIVER", value: 24307)
!243 = !DIEnumerator(name: "VIX_E_MNTAPI_ALREADY_OPENED", value: 24308)
!244 = !DIEnumerator(name: "VIX_E_MNTAPI_ITEM_NOT_FOUND", value: 24309)
!245 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPROTED_BOOT_LOADER", value: 24310)
!246 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPROTED_OS", value: 24311)
!247 = !DIEnumerator(name: "VIX_E_MNTAPI_CODECONVERSION", value: 24312)
!248 = !DIEnumerator(name: "VIX_E_MNTAPI_REGWRITE_ERROR", value: 24313)
!249 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPORTED_FT_VOLUME", value: 24314)
!250 = !DIEnumerator(name: "VIX_E_MNTAPI_PARTITION_NOT_FOUND", value: 24315)
!251 = !DIEnumerator(name: "VIX_E_MNTAPI_PUTFILE_ERROR", value: 24316)
!252 = !DIEnumerator(name: "VIX_E_MNTAPI_GETFILE_ERROR", value: 24317)
!253 = !DIEnumerator(name: "VIX_E_MNTAPI_REG_NOT_OPENED", value: 24318)
!254 = !DIEnumerator(name: "VIX_E_MNTAPI_REGDELKEY_ERROR", value: 24319)
!255 = !DIEnumerator(name: "VIX_E_MNTAPI_CREATE_PARTITIONTABLE_ERROR", value: 24320)
!256 = !DIEnumerator(name: "VIX_E_MNTAPI_OPEN_FAILURE", value: 24321)
!257 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_NOT_WRITABLE", value: 24322)
!258 = !DIEnumerator(name: "VIX_ASYNC", value: 25000)
!259 = !DIEnumerator(name: "VIX_E_ASYNC_MIXEDMODE_UNSUPPORTED", value: 26000)
!260 = !DIEnumerator(name: "VIX_E_NET_HTTP_UNSUPPORTED_PROTOCOL", value: 30001)
!261 = !DIEnumerator(name: "VIX_E_NET_HTTP_URL_MALFORMAT", value: 30003)
!262 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_RESOLVE_PROXY", value: 30005)
!263 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_RESOLVE_HOST", value: 30006)
!264 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_CONNECT", value: 30007)
!265 = !DIEnumerator(name: "VIX_E_NET_HTTP_HTTP_RETURNED_ERROR", value: 30022)
!266 = !DIEnumerator(name: "VIX_E_NET_HTTP_OPERATION_TIMEDOUT", value: 30028)
!267 = !DIEnumerator(name: "VIX_E_NET_HTTP_SSL_CONNECT_ERROR", value: 30035)
!268 = !DIEnumerator(name: "VIX_E_NET_HTTP_TOO_MANY_REDIRECTS", value: 30047)
!269 = !DIEnumerator(name: "VIX_E_NET_HTTP_TRANSFER", value: 30200)
!270 = !DIEnumerator(name: "VIX_E_NET_HTTP_SSL_SECURITY", value: 30201)
!271 = !DIEnumerator(name: "VIX_E_NET_HTTP_GENERIC", value: 30202)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !273, line: 191, size: 32, align: 32, elements: !274)
!273 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vixOpenSource.h", directory: "/home/lichi/Desktop/open-vm-tools/line256")
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!275 = !DIEnumerator(name: "VIX_E_OP_NOT_SUPPORTED_ON_NON_VMWARE_VM", value: 3038)
!276 = !DIEnumerator(name: "VIX_E_VI_OP_NOT_SUPPORTED_ON_GUEST", value: 3048)
!277 = !DIEnumerator(name: "VIX_E_INVALID_LOGIN_CREDENTIALS", value: 3050)
!278 = !DIEnumerator(name: "VIX_E_GUEST_AUTHTYPE_DISABLED", value: 3051)
!279 = !DIEnumerator(name: "VIX_E_DIRECTORY_NOT_EMPTY", value: 20006)
!280 = !DIEnumerator(name: "VIX_E_GUEST_AUTH_MULIPLE_MAPPINGS", value: 20007)
!281 = !DIEnumerator(name: "VIX_E_REG_KEY_INVALID", value: 20008)
!282 = !DIEnumerator(name: "VIX_E_REG_KEY_HAS_SUBKEYS", value: 20009)
!283 = !DIEnumerator(name: "VIX_E_REG_VALUE_NOT_FOUND", value: 20010)
!284 = !DIEnumerator(name: "VIX_E_REG_KEY_ALREADY_EXISTS", value: 20011)
!285 = !DIEnumerator(name: "VIX_E_REG_KEY_PARENT_VOLATILE", value: 20012)
!286 = !DIEnumerator(name: "VIX_E_HGFS_MOUNT_FAIL", value: 20050)
!287 = !DIEnumerator(name: "VIX_E_REG_INCORRECT_VALUE_TYPE", value: 25000)
!288 = !{!289, !291}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "CryptoError", file: !290, line: 34, baseType: !291)
!290 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/cryptoError.h", directory: "/home/lichi/Desktop/open-vm-tools/line256")
!291 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!292 = !{i32 2, !"Dwarf Version", i32 4}
!293 = !{i32 2, !"Debug Info Version", i32 3}
!294 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!295 = distinct !DISubprogram(name: "Vix_TranslateGuestRegistryError", scope: !296, file: !296, line: 60, type: !297, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !305)
!296 = !DIFile(filename: "vixTranslateErrOpenSource.c", directory: "/home/lichi/Desktop/open-vm-tools/line256")
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !291}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixError", file: !4, line: 79, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !301, line: 171, baseType: !302)
!301 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line256")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !303, line: 55, baseType: !304)
!303 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line256")
!304 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!305 = !{}
!306 = !DILocalVariable(name: "systemError", arg: 1, scope: !295, file: !296, line: 60, type: !291)
!307 = !DIExpression()
!308 = !DILocation(line: 60, column: 37, scope: !295)
!309 = !DILocalVariable(name: "err", scope: !295, file: !296, line: 62, type: !299)
!310 = !DILocation(line: 62, column: 13, scope: !295)
!311 = !DILocation(line: 89, column: 11, scope: !295)
!312 = !DILocation(line: 89, column: 4, scope: !295)
!313 = distinct !DISubprogram(name: "Vix_TranslateSystemError", scope: !296, file: !296, line: 109, type: !297, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !305)
!314 = !DILocalVariable(name: "systemError", arg: 1, scope: !313, file: !296, line: 109, type: !291)
!315 = !DILocation(line: 109, column: 30, scope: !313)
!316 = !DILocalVariable(name: "err", scope: !313, file: !296, line: 111, type: !299)
!317 = !DILocation(line: 111, column: 13, scope: !313)
!318 = !DILocation(line: 184, column: 29, scope: !313)
!319 = !DILocation(line: 184, column: 10, scope: !313)
!320 = !DILocation(line: 184, column: 8, scope: !313)
!321 = !DILocation(line: 187, column: 11, scope: !313)
!322 = !DILocation(line: 187, column: 4, scope: !313)
!323 = distinct !DISubprogram(name: "Vix_TranslateErrno", scope: !296, file: !296, line: 322, type: !297, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !305)
!324 = !DILocalVariable(name: "systemError", arg: 1, scope: !323, file: !296, line: 322, type: !291)
!325 = !DILocation(line: 322, column: 24, scope: !323)
!326 = !DILocalVariable(name: "err", scope: !323, file: !296, line: 324, type: !299)
!327 = !DILocation(line: 324, column: 13, scope: !323)
!328 = !DILocation(line: 334, column: 12, scope: !323)
!329 = !DILocation(line: 334, column: 4, scope: !323)
!330 = !DILocation(line: 337, column: 11, scope: !331)
!331 = distinct !DILexicalBlock(scope: !323, file: !296, line: 334, column: 25)
!332 = !DILocation(line: 338, column: 7, scope: !331)
!333 = !DILocation(line: 341, column: 11, scope: !331)
!334 = !DILocation(line: 342, column: 7, scope: !331)
!335 = !DILocation(line: 344, column: 11, scope: !331)
!336 = !DILocation(line: 345, column: 7, scope: !331)
!337 = !DILocation(line: 347, column: 11, scope: !331)
!338 = !DILocation(line: 348, column: 7, scope: !331)
!339 = !DILocation(line: 350, column: 11, scope: !331)
!340 = !DILocation(line: 351, column: 7, scope: !331)
!341 = !DILocation(line: 353, column: 11, scope: !331)
!342 = !DILocation(line: 354, column: 7, scope: !331)
!343 = !DILocation(line: 365, column: 31, scope: !331)
!344 = !DILocation(line: 364, column: 7, scope: !331)
!345 = !DILocation(line: 366, column: 11, scope: !331)
!346 = !DILocation(line: 367, column: 7, scope: !331)
!347 = !DILocation(line: 370, column: 11, scope: !331)
!348 = !DILocation(line: 371, column: 7, scope: !331)
!349 = !DILocation(line: 373, column: 11, scope: !331)
!350 = !DILocation(line: 374, column: 7, scope: !331)
!351 = !DILocation(line: 376, column: 11, scope: !331)
!352 = !DILocation(line: 377, column: 7, scope: !331)
!353 = !DILocation(line: 379, column: 11, scope: !331)
!354 = !DILocation(line: 380, column: 7, scope: !331)
!355 = !DILocation(line: 382, column: 11, scope: !331)
!356 = !DILocation(line: 383, column: 7, scope: !331)
!357 = !DILocation(line: 388, column: 11, scope: !331)
!358 = !DILocation(line: 389, column: 7, scope: !331)
!359 = !DILocation(line: 394, column: 11, scope: !331)
!360 = !DILocation(line: 395, column: 7, scope: !331)
!361 = !DILocation(line: 397, column: 11, scope: !331)
!362 = !DILocation(line: 398, column: 4, scope: !331)
!363 = !DILocation(line: 400, column: 17, scope: !323)
!364 = !DILocation(line: 400, column: 8, scope: !323)
!365 = !DILocation(line: 400, column: 31, scope: !323)
!366 = !DILocation(line: 400, column: 44, scope: !323)
!367 = !DILocation(line: 399, column: 4, scope: !323)
!368 = !DILocation(line: 402, column: 11, scope: !323)
!369 = !DILocation(line: 402, column: 4, scope: !323)
!370 = distinct !DISubprogram(name: "Vix_TranslateCryptoError", scope: !296, file: !296, line: 271, type: !371, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !305)
!371 = !DISubroutineType(types: !372)
!372 = !{!299, !289}
!373 = !DILocalVariable(name: "cryptoError", arg: 1, scope: !370, file: !296, line: 271, type: !289)
!374 = !DILocation(line: 271, column: 38, scope: !370)
!375 = !DILocation(line: 273, column: 29, scope: !376)
!376 = distinct !DILexicalBlock(scope: !370, file: !296, line: 273, column: 8)
!377 = !DILocation(line: 273, column: 26, scope: !376)
!378 = !DILocation(line: 273, column: 8, scope: !370)
!379 = !DILocation(line: 274, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !296, line: 273, column: 42)
!381 = !DILocation(line: 275, column: 36, scope: !382)
!382 = distinct !DILexicalBlock(scope: !376, file: !296, line: 275, column: 15)
!383 = !DILocation(line: 275, column: 33, scope: !382)
!384 = !DILocation(line: 275, column: 15, scope: !376)
!385 = !DILocation(line: 276, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !296, line: 275, column: 49)
!387 = !DILocation(line: 277, column: 36, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !296, line: 277, column: 15)
!389 = !DILocation(line: 277, column: 33, scope: !388)
!390 = !DILocation(line: 277, column: 15, scope: !382)
!391 = !DILocation(line: 278, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !296, line: 277, column: 49)
!393 = !DILocation(line: 279, column: 36, scope: !394)
!394 = distinct !DILexicalBlock(scope: !388, file: !296, line: 279, column: 15)
!395 = !DILocation(line: 279, column: 33, scope: !394)
!396 = !DILocation(line: 279, column: 15, scope: !388)
!397 = !DILocation(line: 280, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !296, line: 279, column: 49)
!399 = !DILocation(line: 281, column: 36, scope: !400)
!400 = distinct !DILexicalBlock(scope: !394, file: !296, line: 281, column: 15)
!401 = !DILocation(line: 281, column: 33, scope: !400)
!402 = !DILocation(line: 281, column: 15, scope: !394)
!403 = !DILocation(line: 282, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !296, line: 281, column: 49)
!405 = !DILocation(line: 283, column: 36, scope: !406)
!406 = distinct !DILexicalBlock(scope: !400, file: !296, line: 283, column: 15)
!407 = !DILocation(line: 283, column: 33, scope: !406)
!408 = !DILocation(line: 283, column: 15, scope: !400)
!409 = !DILocation(line: 284, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !296, line: 283, column: 49)
!411 = !DILocation(line: 285, column: 36, scope: !412)
!412 = distinct !DILexicalBlock(scope: !406, file: !296, line: 285, column: 15)
!413 = !DILocation(line: 285, column: 33, scope: !412)
!414 = !DILocation(line: 285, column: 15, scope: !406)
!415 = !DILocation(line: 286, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !296, line: 285, column: 49)
!417 = !DILocation(line: 287, column: 36, scope: !418)
!418 = distinct !DILexicalBlock(scope: !412, file: !296, line: 287, column: 15)
!419 = !DILocation(line: 287, column: 33, scope: !418)
!420 = !DILocation(line: 287, column: 15, scope: !412)
!421 = !DILocation(line: 288, column: 7, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !296, line: 287, column: 49)
!423 = !DILocation(line: 289, column: 36, scope: !424)
!424 = distinct !DILexicalBlock(scope: !418, file: !296, line: 289, column: 15)
!425 = !DILocation(line: 289, column: 33, scope: !424)
!426 = !DILocation(line: 289, column: 15, scope: !418)
!427 = !DILocation(line: 291, column: 16, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !296, line: 289, column: 49)
!429 = !DILocation(line: 290, column: 7, scope: !428)
!430 = !DILocation(line: 292, column: 7, scope: !428)
!431 = !DILocation(line: 293, column: 36, scope: !432)
!432 = distinct !DILexicalBlock(scope: !424, file: !296, line: 293, column: 15)
!433 = !DILocation(line: 293, column: 33, scope: !432)
!434 = !DILocation(line: 293, column: 15, scope: !424)
!435 = !DILocation(line: 294, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !296, line: 293, column: 49)
!437 = !DILocation(line: 295, column: 37, scope: !438)
!438 = distinct !DILexicalBlock(scope: !432, file: !296, line: 295, column: 15)
!439 = !DILocation(line: 295, column: 34, scope: !438)
!440 = !DILocation(line: 295, column: 15, scope: !432)
!441 = !DILocation(line: 296, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !438, file: !296, line: 295, column: 50)
!443 = !DILocation(line: 297, column: 37, scope: !444)
!444 = distinct !DILexicalBlock(scope: !438, file: !296, line: 297, column: 15)
!445 = !DILocation(line: 297, column: 34, scope: !444)
!446 = !DILocation(line: 297, column: 15, scope: !438)
!447 = !DILocation(line: 298, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !296, line: 297, column: 50)
!449 = !DILocation(line: 301, column: 4, scope: !370)
!450 = !DILocation(line: 302, column: 1, scope: !370)
