; ModuleID = './[inter]lib--dpkg--pkg-array.o.i'
source_filename = "./[inter]lib--dpkg--pkg-array.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pkg_array = type { i32, %struct.pkginfo** }
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.1, i32 }
%struct.anon.1 = type { %struct.deppossi*, %struct.deppossi* }
%struct.deppossi = type { %struct.dependency*, %struct.pkgset*, %struct.deppossi*, %struct.deppossi*, %struct.deppossi*, %struct.dpkg_arch*, %struct.dpkg_version, i32, i8, i8 }
%struct.dependency = type { %struct.pkginfo*, %struct.dependency*, %struct.deppossi*, i32 }
%struct.dpkg_arch = type { %struct.dpkg_arch*, i8*, i32 }
%struct.dpkg_version = type { i32, i8*, i8* }
%struct.pkgbin = type { %struct.dependency*, i8, i32, %struct.dpkg_arch*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.dpkg_version, %struct.conffile*, %struct.arbitraryfield* }
%struct.conffile = type { %struct.conffile*, i8*, i8*, i8 }
%struct.arbitraryfield = type { %struct.arbitraryfield*, i8*, i8* }
%struct.perpackagestate = type opaque
%struct.archivedetails = type { %struct.archivedetails*, i8*, i8*, i8*, i8* }
%struct.anon = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigaw = type { %struct.pkginfo*, %struct.pkginfo*, %struct.trigaw*, %struct.anon.0 }
%struct.anon.0 = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigpend = type { %struct.trigpend*, i8* }
%struct.fsys_namenode_list = type opaque
%struct.pkg_hash_iter = type opaque

@.str = private unnamed_addr constant [12 x i8] c"pkg-array.c\00", align 1
@__func__.pkg_array_init_from_hash = private unnamed_addr constant [25 x i8] c"pkg_array_init_from_hash\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"inconsistent state in pkg array: i=%d != npkgs=%d\00", align 1

; Function Attrs: nounwind uwtable
define void @pkg_array_init_from_names(%struct.pkg_array*, %struct.pkginfo* (i8*)*, i8**) #0 !dbg !78 {
  %4 = alloca %struct.pkg_array*, align 8
  %5 = alloca %struct.pkginfo* (i8*)*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.pkg_array* %0, %struct.pkg_array** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_array** %4, metadata !235, metadata !236), !dbg !237
  store %struct.pkginfo* (i8*)* %1, %struct.pkginfo* (i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo* (i8*)** %5, metadata !238, metadata !236), !dbg !239
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !240, metadata !236), !dbg !241
  call void @llvm.dbg.declare(metadata i32* %7, metadata !242, metadata !236), !dbg !243
  store i32 0, i32* %7, align 4, !dbg !243
  br label %8, !dbg !244

; <label>:8:                                      ; preds = %15, %3
  %9 = load i32, i32* %7, align 4, !dbg !245
  %10 = sext i32 %9 to i64, !dbg !247
  %11 = load i8**, i8*** %6, align 8, !dbg !247
  %12 = getelementptr inbounds i8*, i8** %11, i64 %10, !dbg !247
  %13 = load i8*, i8** %12, align 8, !dbg !247
  %14 = icmp ne i8* %13, null, !dbg !248
  br i1 %14, label %15, label %18, !dbg !248

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %7, align 4, !dbg !249
  %17 = add nsw i32 %16, 1, !dbg !249
  store i32 %17, i32* %7, align 4, !dbg !249
  br label %8, !dbg !250, !llvm.loop !252

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %7, align 4, !dbg !253
  %20 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !254
  %21 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %20, i32 0, i32 0, !dbg !255
  store i32 %19, i32* %21, align 8, !dbg !256
  %22 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !257
  %23 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %22, i32 0, i32 0, !dbg !258
  %24 = load i32, i32* %23, align 8, !dbg !258
  %25 = sext i32 %24 to i64, !dbg !257
  %26 = mul i64 8, %25, !dbg !259
  %27 = call i8* @m_malloc(i64 %26), !dbg !260
  %28 = bitcast i8* %27 to %struct.pkginfo**, !dbg !260
  %29 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !261
  %30 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %29, i32 0, i32 1, !dbg !262
  store %struct.pkginfo** %28, %struct.pkginfo*** %30, align 8, !dbg !263
  store i32 0, i32* %7, align 4, !dbg !264
  br label %31, !dbg !266

; <label>:31:                                     ; preds = %52, %18
  %32 = load i32, i32* %7, align 4, !dbg !267
  %33 = sext i32 %32 to i64, !dbg !270
  %34 = load i8**, i8*** %6, align 8, !dbg !270
  %35 = getelementptr inbounds i8*, i8** %34, i64 %33, !dbg !270
  %36 = load i8*, i8** %35, align 8, !dbg !270
  %37 = icmp ne i8* %36, null, !dbg !271
  br i1 %37, label %38, label %55, !dbg !271

; <label>:38:                                     ; preds = %31
  %39 = load %struct.pkginfo* (i8*)*, %struct.pkginfo* (i8*)** %5, align 8, !dbg !272
  %40 = load i32, i32* %7, align 4, !dbg !273
  %41 = sext i32 %40 to i64, !dbg !274
  %42 = load i8**, i8*** %6, align 8, !dbg !274
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41, !dbg !274
  %44 = load i8*, i8** %43, align 8, !dbg !274
  %45 = call %struct.pkginfo* %39(i8* %44), !dbg !272
  %46 = load i32, i32* %7, align 4, !dbg !275
  %47 = sext i32 %46 to i64, !dbg !276
  %48 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !276
  %49 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %48, i32 0, i32 1, !dbg !277
  %50 = load %struct.pkginfo**, %struct.pkginfo*** %49, align 8, !dbg !277
  %51 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %50, i64 %47, !dbg !276
  store %struct.pkginfo* %45, %struct.pkginfo** %51, align 8, !dbg !278
  br label %52, !dbg !276

; <label>:52:                                     ; preds = %38
  %53 = load i32, i32* %7, align 4, !dbg !279
  %54 = add nsw i32 %53, 1, !dbg !279
  store i32 %54, i32* %7, align 4, !dbg !279
  br label %31, !dbg !281, !llvm.loop !282

; <label>:55:                                     ; preds = %31
  ret void, !dbg !284
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @m_malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @pkg_array_init_from_hash(%struct.pkg_array*) #0 !dbg !285 {
  %2 = alloca %struct.pkg_array*, align 8
  %3 = alloca %struct.pkg_hash_iter*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca i32, align 4
  store %struct.pkg_array* %0, %struct.pkg_array** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_array** %2, metadata !288, metadata !236), !dbg !289
  call void @llvm.dbg.declare(metadata %struct.pkg_hash_iter** %3, metadata !290, metadata !236), !dbg !293
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !294, metadata !236), !dbg !295
  call void @llvm.dbg.declare(metadata i32* %5, metadata !296, metadata !236), !dbg !297
  %6 = call i32 @pkg_hash_count_pkg(), !dbg !298
  %7 = load %struct.pkg_array*, %struct.pkg_array** %2, align 8, !dbg !299
  %8 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %7, i32 0, i32 0, !dbg !300
  store i32 %6, i32* %8, align 8, !dbg !301
  %9 = load %struct.pkg_array*, %struct.pkg_array** %2, align 8, !dbg !302
  %10 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %9, i32 0, i32 0, !dbg !303
  %11 = load i32, i32* %10, align 8, !dbg !303
  %12 = sext i32 %11 to i64, !dbg !302
  %13 = mul i64 8, %12, !dbg !304
  %14 = call i8* @m_malloc(i64 %13), !dbg !305
  %15 = bitcast i8* %14 to %struct.pkginfo**, !dbg !305
  %16 = load %struct.pkg_array*, %struct.pkg_array** %2, align 8, !dbg !306
  %17 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %16, i32 0, i32 1, !dbg !307
  store %struct.pkginfo** %15, %struct.pkginfo*** %17, align 8, !dbg !308
  %18 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !309
  store %struct.pkg_hash_iter* %18, %struct.pkg_hash_iter** %3, align 8, !dbg !310
  store i32 0, i32* %5, align 4, !dbg !311
  br label %19, !dbg !313

; <label>:19:                                     ; preds = %31, %1
  %20 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !314
  %21 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %20), !dbg !317
  store %struct.pkginfo* %21, %struct.pkginfo** %4, align 8, !dbg !318
  %22 = icmp ne %struct.pkginfo* %21, null, !dbg !319
  br i1 %22, label %23, label %34, !dbg !319

; <label>:23:                                     ; preds = %19
  %24 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !320
  %25 = load i32, i32* %5, align 4, !dbg !321
  %26 = sext i32 %25 to i64, !dbg !322
  %27 = load %struct.pkg_array*, %struct.pkg_array** %2, align 8, !dbg !322
  %28 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %27, i32 0, i32 1, !dbg !323
  %29 = load %struct.pkginfo**, %struct.pkginfo*** %28, align 8, !dbg !323
  %30 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %29, i64 %26, !dbg !322
  store %struct.pkginfo* %24, %struct.pkginfo** %30, align 8, !dbg !324
  br label %31, !dbg !322

; <label>:31:                                     ; preds = %23
  %32 = load i32, i32* %5, align 4, !dbg !325
  %33 = add nsw i32 %32, 1, !dbg !325
  store i32 %33, i32* %5, align 4, !dbg !325
  br label %19, !dbg !327, !llvm.loop !328

; <label>:34:                                     ; preds = %19
  %35 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %3, align 8, !dbg !330
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %35), !dbg !331
  %36 = load i32, i32* %5, align 4, !dbg !332
  %37 = load %struct.pkg_array*, %struct.pkg_array** %2, align 8, !dbg !334
  %38 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %37, i32 0, i32 0, !dbg !335
  %39 = load i32, i32* %38, align 8, !dbg !335
  %40 = icmp ne i32 %36, %39, !dbg !336
  br i1 %40, label %41, label %46, !dbg !337

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* %5, align 4, !dbg !338
  %43 = load %struct.pkg_array*, %struct.pkg_array** %2, align 8, !dbg !339
  %44 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %43, i32 0, i32 0, !dbg !340
  %45 = load i32, i32* %44, align 8, !dbg !340
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pkg_array_init_from_hash, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i32 %42, i32 %45) #5, !dbg !341
  unreachable, !dbg !341

; <label>:46:                                     ; preds = %34
  ret void, !dbg !342
}

declare i32 @pkg_hash_count_pkg() #2

declare %struct.pkg_hash_iter* @pkg_hash_iter_new() #2

declare %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #2

declare void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @pkg_array_foreach(%struct.pkg_array*, void (%struct.pkg_array*, %struct.pkginfo*, i8*)*, i8*) #0 !dbg !343 {
  %4 = alloca %struct.pkg_array*, align 8
  %5 = alloca void (%struct.pkg_array*, %struct.pkginfo*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pkginfo*, align 8
  store %struct.pkg_array* %0, %struct.pkg_array** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_array** %4, metadata !350, metadata !236), !dbg !351
  store void (%struct.pkg_array*, %struct.pkginfo*, i8*)* %1, void (%struct.pkg_array*, %struct.pkginfo*, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (%struct.pkg_array*, %struct.pkginfo*, i8*)** %5, metadata !352, metadata !236), !dbg !353
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !354, metadata !236), !dbg !355
  call void @llvm.dbg.declare(metadata i32* %7, metadata !356, metadata !236), !dbg !357
  store i32 0, i32* %7, align 4, !dbg !358
  br label %9, !dbg !360

; <label>:9:                                      ; preds = %31, %3
  %10 = load i32, i32* %7, align 4, !dbg !361
  %11 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !364
  %12 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %11, i32 0, i32 0, !dbg !365
  %13 = load i32, i32* %12, align 8, !dbg !365
  %14 = icmp slt i32 %10, %13, !dbg !366
  br i1 %14, label %15, label %34, !dbg !367

; <label>:15:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %8, metadata !368, metadata !236), !dbg !370
  %16 = load i32, i32* %7, align 4, !dbg !371
  %17 = sext i32 %16 to i64, !dbg !372
  %18 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !372
  %19 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %18, i32 0, i32 1, !dbg !373
  %20 = load %struct.pkginfo**, %struct.pkginfo*** %19, align 8, !dbg !373
  %21 = getelementptr inbounds %struct.pkginfo*, %struct.pkginfo** %20, i64 %17, !dbg !372
  %22 = load %struct.pkginfo*, %struct.pkginfo** %21, align 8, !dbg !372
  store %struct.pkginfo* %22, %struct.pkginfo** %8, align 8, !dbg !370
  %23 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !374
  %24 = icmp eq %struct.pkginfo* %23, null, !dbg !376
  br i1 %24, label %25, label %26, !dbg !377

; <label>:25:                                     ; preds = %15
  br label %31, !dbg !378

; <label>:26:                                     ; preds = %15
  %27 = load void (%struct.pkg_array*, %struct.pkginfo*, i8*)*, void (%struct.pkg_array*, %struct.pkginfo*, i8*)** %5, align 8, !dbg !379
  %28 = load %struct.pkg_array*, %struct.pkg_array** %4, align 8, !dbg !380
  %29 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !381
  %30 = load i8*, i8** %6, align 8, !dbg !382
  call void %27(%struct.pkg_array* %28, %struct.pkginfo* %29, i8* %30), !dbg !379
  br label %31, !dbg !383

; <label>:31:                                     ; preds = %26, %25
  %32 = load i32, i32* %7, align 4, !dbg !384
  %33 = add nsw i32 %32, 1, !dbg !384
  store i32 %33, i32* %7, align 4, !dbg !384
  br label %9, !dbg !386, !llvm.loop !387

; <label>:34:                                     ; preds = %9
  ret void, !dbg !389
}

; Function Attrs: nounwind uwtable
define void @pkg_array_sort(%struct.pkg_array*, i32 (i8*, i8*)*) #0 !dbg !390 {
  %3 = alloca %struct.pkg_array*, align 8
  %4 = alloca i32 (i8*, i8*)*, align 8
  store %struct.pkg_array* %0, %struct.pkg_array** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_array** %3, metadata !400, metadata !236), !dbg !401
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %4, metadata !402, metadata !236), !dbg !403
  %5 = load %struct.pkg_array*, %struct.pkg_array** %3, align 8, !dbg !404
  %6 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %5, i32 0, i32 1, !dbg !405
  %7 = load %struct.pkginfo**, %struct.pkginfo*** %6, align 8, !dbg !405
  %8 = bitcast %struct.pkginfo** %7 to i8*, !dbg !404
  %9 = load %struct.pkg_array*, %struct.pkg_array** %3, align 8, !dbg !406
  %10 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %9, i32 0, i32 0, !dbg !407
  %11 = load i32, i32* %10, align 8, !dbg !407
  %12 = sext i32 %11 to i64, !dbg !406
  %13 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %4, align 8, !dbg !408
  call void @qsort(i8* %8, i64 %12, i64 8, i32 (i8*, i8*)* %13), !dbg !409
  ret void, !dbg !410
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define void @pkg_array_destroy(%struct.pkg_array*) #0 !dbg !411 {
  %2 = alloca %struct.pkg_array*, align 8
  store %struct.pkg_array* %0, %struct.pkg_array** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_array** %2, metadata !412, metadata !236), !dbg !413
  %3 = load %struct.pkg_array*, %struct.pkg_array** %2, align 8, !dbg !414
  %4 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %3, i32 0, i32 0, !dbg !415
  store i32 0, i32* %4, align 8, !dbg !416
  %5 = load %struct.pkg_array*, %struct.pkg_array** %2, align 8, !dbg !417
  %6 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %5, i32 0, i32 1, !dbg !418
  %7 = load %struct.pkginfo**, %struct.pkginfo*** %6, align 8, !dbg !418
  %8 = bitcast %struct.pkginfo** %7 to i8*, !dbg !417
  call void @free(i8* %8) #6, !dbg !419
  %9 = load %struct.pkg_array*, %struct.pkg_array** %2, align 8, !dbg !420
  %10 = getelementptr inbounds %struct.pkg_array, %struct.pkg_array* %9, i32 0, i32 1, !dbg !421
  store %struct.pkginfo** null, %struct.pkginfo*** %10, align 8, !dbg !422
  ret void, !dbg !423
}

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!75, !76}
!llvm.ident = !{!77}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !73)
!1 = !DIFile(filename: "[inter]lib--dpkg--pkg-array.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !4, line: 44, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "dep_suggests", value: 0)
!7 = !DIEnumerator(name: "dep_recommends", value: 1)
!8 = !DIEnumerator(name: "dep_depends", value: 2)
!9 = !DIEnumerator(name: "dep_predepends", value: 3)
!10 = !DIEnumerator(name: "dep_breaks", value: 4)
!11 = !DIEnumerator(name: "dep_conflicts", value: 5)
!12 = !DIEnumerator(name: "dep_provides", value: 6)
!13 = !DIEnumerator(name: "dep_replaces", value: 7)
!14 = !DIEnumerator(name: "dep_enhances", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !16, line: 37, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!19 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!20 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!21 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!22 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!23 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!24 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!25 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !27, line: 61, size: 32, align: 32, elements: !28)
!27 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!28 = !{!29, !30, !31, !32, !33, !34}
!29 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!30 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!31 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!32 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!33 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!34 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !4, line: 153, size: 32, align: 32, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!38 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!39 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!40 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!41 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!42 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !4, line: 163, size: 32, align: 32, elements: !44)
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!46 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !4, line: 168, size: 32, align: 32, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56}
!49 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!50 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!51 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!52 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!53 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!54 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!55 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!56 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !4, line: 179, size: 32, align: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66}
!59 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!60 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!61 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!62 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!63 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!64 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!65 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!66 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !4, line: 95, size: 32, align: 32, elements: !68)
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!70 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!71 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!72 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!75 = !{i32 2, !"Dwarf Version", i32 4}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!78 = distinct !DISubprogram(name: "pkg_array_init_from_names", scope: !79, file: !79, line: 41, type: !80, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !234)
!79 = !DIFile(filename: "pkg-array.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !229, !233}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_array", file: !84, line: 38, size: 128, align: 64, elements: !85)
!84 = !DIFile(filename: "../../lib/dpkg/pkg-array.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!85 = !{!86, !88}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "n_pkgs", scope: !83, file: !84, line: 39, baseType: !87, size: 32, align: 32)
!87 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pkgs", scope: !83, file: !84, line: 40, baseType: !89, size: 64, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !92)
!92 = !{!93, !144, !145, !146, !147, !148, !149, !150, !151, !152, !182, !183, !186, !195, !211, !212, !218, !221, !227, !228}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !91, file: !4, line: 196, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !96)
!96 = !{!97, !98, !102, !103, !143}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !4, line: 243, baseType: !94, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !4, line: 244, baseType: !99, size: 64, align: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !95, file: !4, line: 245, baseType: !91, size: 3072, align: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !95, file: !4, line: 249, baseType: !104, size: 128, align: 64, offset: 3200)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !95, file: !4, line: 246, size: 128, align: 64, elements: !105)
!105 = !{!106, !142}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !104, file: !4, line: 247, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !109)
!109 = !{!110, !118, !119, !120, !121, !122, !131, !138, !139, !141}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !108, file: !4, line: 64, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !113)
!113 = !{!114, !115, !116, !117}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !112, file: !4, line: 57, baseType: !90, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !4, line: 58, baseType: !111, size: 64, align: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !112, file: !4, line: 59, baseType: !107, size: 64, align: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !108, file: !4, line: 65, baseType: !94, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !108, file: !4, line: 66, baseType: !107, size: 64, align: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !108, file: !4, line: 66, baseType: !107, size: 64, align: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !108, file: !4, line: 66, baseType: !107, size: 64, align: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !108, file: !4, line: 67, baseType: !123, size: 64, align: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !126)
!126 = !{!127, !129, !130}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !16, line: 49, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !16, line: 50, baseType: !99, size: 64, align: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !108, file: !4, line: 68, baseType: !132, size: 192, align: 64, offset: 384)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !133)
!133 = !{!134, !136, !137}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !132, file: !27, line: 44, baseType: !135, size: 32, align: 32)
!135 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !132, file: !27, line: 46, baseType: !99, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !132, file: !27, line: 48, baseType: !99, size: 64, align: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !108, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !108, file: !4, line: 70, baseType: !140, size: 8, align: 8, offset: 608)
!140 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !108, file: !4, line: 71, baseType: !140, size: 8, align: 8, offset: 616)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !104, file: !4, line: 248, baseType: !107, size: 64, align: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !95, file: !4, line: 250, baseType: !87, size: 32, align: 32, offset: 3328)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !91, file: !4, line: 197, baseType: !90, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !91, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !91, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !91, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !91, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !91, file: !4, line: 204, baseType: !99, size: 64, align: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !91, file: !4, line: 205, baseType: !99, size: 64, align: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !91, file: !4, line: 206, baseType: !132, size: 192, align: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !91, file: !4, line: 207, baseType: !153, size: 960, align: 64, offset: 576)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !175}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !153, file: !4, line: 108, baseType: !111, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !153, file: !4, line: 110, baseType: !140, size: 8, align: 8, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !153, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !153, file: !4, line: 112, baseType: !123, size: 64, align: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !153, file: !4, line: 115, baseType: !99, size: 64, align: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !153, file: !4, line: 116, baseType: !99, size: 64, align: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !153, file: !4, line: 117, baseType: !99, size: 64, align: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !153, file: !4, line: 118, baseType: !99, size: 64, align: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !153, file: !4, line: 119, baseType: !99, size: 64, align: 64, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !153, file: !4, line: 120, baseType: !99, size: 64, align: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !153, file: !4, line: 121, baseType: !99, size: 64, align: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !153, file: !4, line: 122, baseType: !132, size: 192, align: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !153, file: !4, line: 123, baseType: !168, size: 64, align: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !170)
!170 = !{!171, !172, !173, !174}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !4, line: 81, baseType: !168, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !4, line: 82, baseType: !99, size: 64, align: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !169, file: !4, line: 83, baseType: !99, size: 64, align: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !169, file: !4, line: 84, baseType: !140, size: 8, align: 8, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !153, file: !4, line: 124, baseType: !176, size: 64, align: 64, offset: 896)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !178)
!178 = !{!179, !180, !181}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !4, line: 75, baseType: !176, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !4, line: 76, baseType: !99, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !177, file: !4, line: 77, baseType: !99, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !91, file: !4, line: 208, baseType: !153, size: 960, align: 64, offset: 1536)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !91, file: !4, line: 209, baseType: !184, size: 64, align: 64, offset: 2496)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !91, file: !4, line: 211, baseType: !187, size: 64, align: 64, offset: 2560)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !189)
!189 = !{!190, !191, !192, !193, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !4, line: 88, baseType: !187, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !4, line: 89, baseType: !99, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !188, file: !4, line: 90, baseType: !99, size: 64, align: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !188, file: !4, line: 91, baseType: !99, size: 64, align: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !188, file: !4, line: 92, baseType: !99, size: 64, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !91, file: !4, line: 216, baseType: !196, size: 128, align: 64, offset: 2624)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !91, file: !4, line: 213, size: 128, align: 64, elements: !197)
!197 = !{!198, !210}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !196, file: !4, line: 215, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !201)
!201 = !{!202, !203, !204, !205}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !200, file: !4, line: 143, baseType: !90, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !200, file: !4, line: 143, baseType: !90, size: 64, align: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !200, file: !4, line: 144, baseType: !199, size: 64, align: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !200, file: !4, line: 147, baseType: !206, size: 128, align: 64, offset: 192)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !4, line: 145, size: 128, align: 64, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !4, line: 146, baseType: !199, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !206, file: !4, line: 146, baseType: !199, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !196, file: !4, line: 215, baseType: !199, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !91, file: !4, line: 219, baseType: !199, size: 64, align: 64, offset: 2752)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !91, file: !4, line: 220, baseType: !213, size: 64, align: 64, offset: 2816)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !4, line: 135, baseType: !213, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !4, line: 136, baseType: !99, size: 64, align: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !91, file: !4, line: 231, baseType: !219, size: 64, align: 64, offset: 2880)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !4, line: 231, flags: DIFlagFwdDecl)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !91, file: !4, line: 232, baseType: !222, size: 64, align: 64, offset: 2944)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !223, line: 86, baseType: !224)
!223 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !225, line: 131, baseType: !226)
!225 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!226 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !91, file: !4, line: 233, baseType: !140, size: 8, align: 8, offset: 3008)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !91, file: !4, line: 236, baseType: !140, size: 8, align: 8, offset: 3016)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "pkg_mapper_func", file: !84, line: 43, baseType: !231)
!231 = !DISubroutineType(types: !232)
!232 = !{!90, !99}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!234 = !{}
!235 = !DILocalVariable(name: "a", arg: 1, scope: !78, file: !79, line: 41, type: !82)
!236 = !DIExpression()
!237 = !DILocation(line: 41, column: 45, scope: !78)
!238 = !DILocalVariable(name: "pkg_mapper", arg: 2, scope: !78, file: !79, line: 41, type: !229)
!239 = !DILocation(line: 41, column: 64, scope: !78)
!240 = !DILocalVariable(name: "pkg_names", arg: 3, scope: !78, file: !79, line: 42, type: !233)
!241 = !DILocation(line: 42, column: 40, scope: !78)
!242 = !DILocalVariable(name: "i", scope: !78, file: !79, line: 44, type: !87)
!243 = !DILocation(line: 44, column: 6, scope: !78)
!244 = !DILocation(line: 46, column: 2, scope: !78)
!245 = !DILocation(line: 46, column: 19, scope: !246)
!246 = !DILexicalBlockFile(scope: !78, file: !79, discriminator: 1)
!247 = !DILocation(line: 46, column: 9, scope: !246)
!248 = !DILocation(line: 46, column: 2, scope: !246)
!249 = !DILocation(line: 47, column: 4, scope: !78)
!250 = !DILocation(line: 46, column: 2, scope: !251)
!251 = !DILexicalBlockFile(scope: !78, file: !79, discriminator: 2)
!252 = distinct !{!252, !244}
!253 = !DILocation(line: 49, column: 14, scope: !78)
!254 = !DILocation(line: 49, column: 2, scope: !78)
!255 = !DILocation(line: 49, column: 5, scope: !78)
!256 = !DILocation(line: 49, column: 12, scope: !78)
!257 = !DILocation(line: 50, column: 42, scope: !78)
!258 = !DILocation(line: 50, column: 45, scope: !78)
!259 = !DILocation(line: 50, column: 40, scope: !78)
!260 = !DILocation(line: 50, column: 12, scope: !78)
!261 = !DILocation(line: 50, column: 2, scope: !78)
!262 = !DILocation(line: 50, column: 5, scope: !78)
!263 = !DILocation(line: 50, column: 10, scope: !78)
!264 = !DILocation(line: 52, column: 9, scope: !265)
!265 = distinct !DILexicalBlock(scope: !78, file: !79, line: 52, column: 2)
!266 = !DILocation(line: 52, column: 7, scope: !265)
!267 = !DILocation(line: 52, column: 24, scope: !268)
!268 = !DILexicalBlockFile(scope: !269, file: !79, discriminator: 1)
!269 = distinct !DILexicalBlock(scope: !265, file: !79, line: 52, column: 2)
!270 = !DILocation(line: 52, column: 14, scope: !268)
!271 = !DILocation(line: 52, column: 2, scope: !268)
!272 = !DILocation(line: 53, column: 16, scope: !269)
!273 = !DILocation(line: 53, column: 37, scope: !269)
!274 = !DILocation(line: 53, column: 27, scope: !269)
!275 = !DILocation(line: 53, column: 11, scope: !269)
!276 = !DILocation(line: 53, column: 3, scope: !269)
!277 = !DILocation(line: 53, column: 6, scope: !269)
!278 = !DILocation(line: 53, column: 14, scope: !269)
!279 = !DILocation(line: 52, column: 29, scope: !280)
!280 = !DILexicalBlockFile(scope: !269, file: !79, discriminator: 2)
!281 = !DILocation(line: 52, column: 2, scope: !280)
!282 = distinct !{!282, !283}
!283 = !DILocation(line: 52, column: 2, scope: !78)
!284 = !DILocation(line: 54, column: 1, scope: !78)
!285 = distinct !DISubprogram(name: "pkg_array_init_from_hash", scope: !79, file: !79, line: 62, type: !286, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !234)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !82}
!288 = !DILocalVariable(name: "a", arg: 1, scope: !285, file: !79, line: 62, type: !82)
!289 = !DILocation(line: 62, column: 44, scope: !285)
!290 = !DILocalVariable(name: "iter", scope: !285, file: !79, line: 64, type: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !4, line: 314, flags: DIFlagFwdDecl)
!293 = !DILocation(line: 64, column: 24, scope: !285)
!294 = !DILocalVariable(name: "pkg", scope: !285, file: !79, line: 65, type: !90)
!295 = !DILocation(line: 65, column: 18, scope: !285)
!296 = !DILocalVariable(name: "i", scope: !285, file: !79, line: 66, type: !87)
!297 = !DILocation(line: 66, column: 6, scope: !285)
!298 = !DILocation(line: 68, column: 14, scope: !285)
!299 = !DILocation(line: 68, column: 2, scope: !285)
!300 = !DILocation(line: 68, column: 5, scope: !285)
!301 = !DILocation(line: 68, column: 12, scope: !285)
!302 = !DILocation(line: 69, column: 42, scope: !285)
!303 = !DILocation(line: 69, column: 45, scope: !285)
!304 = !DILocation(line: 69, column: 40, scope: !285)
!305 = !DILocation(line: 69, column: 12, scope: !285)
!306 = !DILocation(line: 69, column: 2, scope: !285)
!307 = !DILocation(line: 69, column: 5, scope: !285)
!308 = !DILocation(line: 69, column: 10, scope: !285)
!309 = !DILocation(line: 71, column: 9, scope: !285)
!310 = !DILocation(line: 71, column: 7, scope: !285)
!311 = !DILocation(line: 72, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !285, file: !79, line: 72, column: 2)
!313 = !DILocation(line: 72, column: 7, scope: !312)
!314 = !DILocation(line: 72, column: 44, scope: !315)
!315 = !DILexicalBlockFile(scope: !316, file: !79, discriminator: 1)
!316 = distinct !DILexicalBlock(scope: !312, file: !79, line: 72, column: 2)
!317 = !DILocation(line: 72, column: 21, scope: !315)
!318 = !DILocation(line: 72, column: 19, scope: !315)
!319 = !DILocation(line: 72, column: 2, scope: !315)
!320 = !DILocation(line: 73, column: 16, scope: !316)
!321 = !DILocation(line: 73, column: 11, scope: !316)
!322 = !DILocation(line: 73, column: 3, scope: !316)
!323 = !DILocation(line: 73, column: 6, scope: !316)
!324 = !DILocation(line: 73, column: 14, scope: !316)
!325 = !DILocation(line: 72, column: 53, scope: !326)
!326 = !DILexicalBlockFile(scope: !316, file: !79, discriminator: 2)
!327 = !DILocation(line: 72, column: 2, scope: !326)
!328 = distinct !{!328, !329}
!329 = !DILocation(line: 72, column: 2, scope: !285)
!330 = !DILocation(line: 74, column: 21, scope: !285)
!331 = !DILocation(line: 74, column: 2, scope: !285)
!332 = !DILocation(line: 76, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !285, file: !79, line: 76, column: 6)
!334 = !DILocation(line: 76, column: 11, scope: !333)
!335 = !DILocation(line: 76, column: 14, scope: !333)
!336 = !DILocation(line: 76, column: 8, scope: !333)
!337 = !DILocation(line: 76, column: 6, scope: !285)
!338 = !DILocation(line: 77, column: 68, scope: !333)
!339 = !DILocation(line: 77, column: 71, scope: !333)
!340 = !DILocation(line: 77, column: 74, scope: !333)
!341 = !DILocation(line: 77, column: 3, scope: !333)
!342 = !DILocation(line: 79, column: 1, scope: !285)
!343 = distinct !DISubprogram(name: "pkg_array_foreach", scope: !79, file: !79, line: 89, type: !344, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !234)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !82, !346, !74}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "pkg_array_visitor_func", file: !84, line: 44, baseType: !348)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !82, !90, !74}
!350 = !DILocalVariable(name: "a", arg: 1, scope: !343, file: !79, line: 89, type: !82)
!351 = !DILocation(line: 89, column: 37, scope: !343)
!352 = !DILocalVariable(name: "pkg_visitor", arg: 2, scope: !343, file: !79, line: 89, type: !346)
!353 = !DILocation(line: 89, column: 64, scope: !343)
!354 = !DILocalVariable(name: "pkg_data", arg: 3, scope: !343, file: !79, line: 90, type: !74)
!355 = !DILocation(line: 90, column: 25, scope: !343)
!356 = !DILocalVariable(name: "i", scope: !343, file: !79, line: 92, type: !87)
!357 = !DILocation(line: 92, column: 6, scope: !343)
!358 = !DILocation(line: 94, column: 9, scope: !359)
!359 = distinct !DILexicalBlock(scope: !343, file: !79, line: 94, column: 2)
!360 = !DILocation(line: 94, column: 7, scope: !359)
!361 = !DILocation(line: 94, column: 14, scope: !362)
!362 = !DILexicalBlockFile(scope: !363, file: !79, discriminator: 1)
!363 = distinct !DILexicalBlock(scope: !359, file: !79, line: 94, column: 2)
!364 = !DILocation(line: 94, column: 18, scope: !362)
!365 = !DILocation(line: 94, column: 21, scope: !362)
!366 = !DILocation(line: 94, column: 16, scope: !362)
!367 = !DILocation(line: 94, column: 2, scope: !362)
!368 = !DILocalVariable(name: "pkg", scope: !369, file: !79, line: 95, type: !90)
!369 = distinct !DILexicalBlock(scope: !363, file: !79, line: 94, column: 34)
!370 = !DILocation(line: 95, column: 19, scope: !369)
!371 = !DILocation(line: 95, column: 33, scope: !369)
!372 = !DILocation(line: 95, column: 25, scope: !369)
!373 = !DILocation(line: 95, column: 28, scope: !369)
!374 = !DILocation(line: 97, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !369, file: !79, line: 97, column: 7)
!376 = !DILocation(line: 97, column: 11, scope: !375)
!377 = !DILocation(line: 97, column: 7, scope: !369)
!378 = !DILocation(line: 98, column: 4, scope: !375)
!379 = !DILocation(line: 100, column: 3, scope: !369)
!380 = !DILocation(line: 100, column: 15, scope: !369)
!381 = !DILocation(line: 100, column: 18, scope: !369)
!382 = !DILocation(line: 100, column: 23, scope: !369)
!383 = !DILocation(line: 101, column: 2, scope: !369)
!384 = !DILocation(line: 94, column: 30, scope: !385)
!385 = !DILexicalBlockFile(scope: !363, file: !79, discriminator: 2)
!386 = !DILocation(line: 94, column: 2, scope: !385)
!387 = distinct !{!387, !388}
!388 = !DILocation(line: 94, column: 2, scope: !343)
!389 = !DILocation(line: 102, column: 1, scope: !343)
!390 = distinct !DISubprogram(name: "pkg_array_sort", scope: !79, file: !79, line: 111, type: !391, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !234)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !82, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "pkg_sorter_func", file: !395, line: 35, baseType: !396)
!395 = !DIFile(filename: "../../lib/dpkg/pkg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!396 = !DISubroutineType(types: !397)
!397 = !{!87, !398, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!400 = !DILocalVariable(name: "a", arg: 1, scope: !390, file: !79, line: 111, type: !82)
!401 = !DILocation(line: 111, column: 34, scope: !390)
!402 = !DILocalVariable(name: "pkg_sort", arg: 2, scope: !390, file: !79, line: 111, type: !393)
!403 = !DILocation(line: 111, column: 54, scope: !390)
!404 = !DILocation(line: 113, column: 8, scope: !390)
!405 = !DILocation(line: 113, column: 11, scope: !390)
!406 = !DILocation(line: 113, column: 17, scope: !390)
!407 = !DILocation(line: 113, column: 20, scope: !390)
!408 = !DILocation(line: 113, column: 48, scope: !390)
!409 = !DILocation(line: 113, column: 2, scope: !390)
!410 = !DILocation(line: 114, column: 1, scope: !390)
!411 = distinct !DISubprogram(name: "pkg_array_destroy", scope: !79, file: !79, line: 124, type: !286, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !234)
!412 = !DILocalVariable(name: "a", arg: 1, scope: !411, file: !79, line: 124, type: !82)
!413 = !DILocation(line: 124, column: 37, scope: !411)
!414 = !DILocation(line: 126, column: 2, scope: !411)
!415 = !DILocation(line: 126, column: 5, scope: !411)
!416 = !DILocation(line: 126, column: 12, scope: !411)
!417 = !DILocation(line: 127, column: 7, scope: !411)
!418 = !DILocation(line: 127, column: 10, scope: !411)
!419 = !DILocation(line: 127, column: 2, scope: !411)
!420 = !DILocation(line: 128, column: 2, scope: !411)
!421 = !DILocation(line: 128, column: 5, scope: !411)
!422 = !DILocation(line: 128, column: 10, scope: !411)
!423 = !DILocation(line: 129, column: 1, scope: !411)
