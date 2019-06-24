; ModuleID = './[inter]lib--dpkg--pkg-spec.o.i'
source_filename = "./[inter]lib--dpkg--pkg-spec.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pkg_spec = type { i8*, %struct.dpkg_arch*, i32, i8, i8, %struct.pkg_hash_iter*, %struct.pkginfo* }
%struct.dpkg_arch = type { %struct.dpkg_arch*, i8*, i32 }
%struct.pkg_hash_iter = type opaque
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.1, i32 }
%struct.anon.1 = type { %struct.deppossi*, %struct.deppossi* }
%struct.deppossi = type { %struct.dependency*, %struct.pkgset*, %struct.deppossi*, %struct.deppossi*, %struct.deppossi*, %struct.dpkg_arch*, %struct.dpkg_version, i32, i8, i8 }
%struct.dependency = type { %struct.pkginfo*, %struct.dependency*, %struct.deppossi*, i32 }
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
%struct.dpkg_error = type { i32, i32, i8* }

@pkg_spec_is_illegal.msg = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"illegal package name in specifier '%s%s%s': %s\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"illegal architecture name in specifier '%s:%s': %s\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"ambiguous package name '%s' with more than one installed instance\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"*[?\5C\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"pkg-spec.c\00", align 1
@__func__.pkg_spec_match_arch = private unnamed_addr constant [20 x i8] c"pkg_spec_match_arch\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"unknown PKG_SPEC_ARCH_* flags %d in pkg_spec\00", align 1

; Function Attrs: nounwind uwtable
define void @pkg_spec_init(%struct.pkg_spec*, i32) #0 !dbg !254 {
  %3 = alloca %struct.pkg_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.pkg_spec* %0, %struct.pkg_spec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %3, metadata !257, metadata !258), !dbg !259
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !260, metadata !258), !dbg !261
  %5 = load i32, i32* %4, align 4, !dbg !262
  %6 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !263
  %7 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %6, i32 0, i32 2, !dbg !264
  store i32 %5, i32* %7, align 8, !dbg !265
  %8 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !266
  call void @pkg_spec_blank(%struct.pkg_spec* %8), !dbg !267
  %9 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !268
  call void @pkg_spec_iter_blank(%struct.pkg_spec* %9), !dbg !269
  ret void, !dbg !270
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @pkg_spec_blank(%struct.pkg_spec*) #0 !dbg !271 {
  %2 = alloca %struct.pkg_spec*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %2, metadata !274, metadata !258), !dbg !275
  %3 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !276
  %4 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %3, i32 0, i32 0, !dbg !277
  store i8* null, i8** %4, align 8, !dbg !278
  %5 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !279
  %6 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %5, i32 0, i32 1, !dbg !280
  store %struct.dpkg_arch* null, %struct.dpkg_arch** %6, align 8, !dbg !281
  %7 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !282
  %8 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %7, i32 0, i32 3, !dbg !283
  store i8 0, i8* %8, align 4, !dbg !284
  %9 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !285
  %10 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %9, i32 0, i32 4, !dbg !286
  store i8 0, i8* %10, align 1, !dbg !287
  ret void, !dbg !288
}

; Function Attrs: nounwind uwtable
define internal void @pkg_spec_iter_blank(%struct.pkg_spec*) #0 !dbg !289 {
  %2 = alloca %struct.pkg_spec*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %2, metadata !290, metadata !258), !dbg !291
  %3 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !292
  %4 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %3, i32 0, i32 5, !dbg !293
  store %struct.pkg_hash_iter* null, %struct.pkg_hash_iter** %4, align 8, !dbg !294
  %5 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !295
  %6 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %5, i32 0, i32 6, !dbg !296
  store %struct.pkginfo* null, %struct.pkginfo** %6, align 8, !dbg !297
  ret void, !dbg !298
}

; Function Attrs: nounwind uwtable
define i8* @pkg_spec_is_illegal(%struct.pkg_spec*) #0 !dbg !90 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pkg_spec*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pkgset*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %3, metadata !299, metadata !258), !dbg !300
  call void @llvm.dbg.declare(metadata i8** %4, metadata !301, metadata !258), !dbg !302
  %7 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !303
  %8 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %7, i32 0, i32 3, !dbg !305
  %9 = load i8, i8* %8, align 4, !dbg !305
  %10 = trunc i8 %9 to i1, !dbg !305
  br i1 %10, label %39, label %11, !dbg !306

; <label>:11:                                     ; preds = %1
  %12 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !307
  %13 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %12, i32 0, i32 0, !dbg !308
  %14 = load i8*, i8** %13, align 8, !dbg !308
  %15 = call i8* @pkg_name_is_illegal(i8* %14), !dbg !309
  store i8* %15, i8** %4, align 8, !dbg !310
  %16 = icmp ne i8* %15, null, !dbg !310
  br i1 %16, label %17, label %39, !dbg !311

; <label>:17:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i8** %5, metadata !313, metadata !258), !dbg !315
  %18 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !316
  %19 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %18, i32 0, i32 1, !dbg !318
  %20 = load %struct.dpkg_arch*, %struct.dpkg_arch** %19, align 8, !dbg !318
  %21 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %20, i32 0, i32 2, !dbg !319
  %22 = load i32, i32* %21, align 8, !dbg !319
  %23 = icmp eq i32 %22, 0, !dbg !320
  br i1 %23, label %24, label %25, !dbg !321

; <label>:24:                                     ; preds = %17
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %5, align 8, !dbg !322
  br label %26, !dbg !323

; <label>:25:                                     ; preds = %17
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %5, align 8, !dbg !324
  br label %26

; <label>:26:                                     ; preds = %25, %24
  %27 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !325
  %28 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !326
  %29 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %28, i32 0, i32 0, !dbg !327
  %30 = load i8*, i8** %29, align 8, !dbg !327
  %31 = load i8*, i8** %5, align 8, !dbg !328
  %32 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !329
  %33 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %32, i32 0, i32 1, !dbg !330
  %34 = load %struct.dpkg_arch*, %struct.dpkg_arch** %33, align 8, !dbg !330
  %35 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %34, i32 0, i32 1, !dbg !331
  %36 = load i8*, i8** %35, align 8, !dbg !331
  %37 = load i8*, i8** %4, align 8, !dbg !332
  %38 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @pkg_spec_is_illegal.msg, i32 0, i32 0), i64 1024, i8* %27, i8* %30, i8* %31, i8* %36, i8* %37) #6, !dbg !333
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @pkg_spec_is_illegal.msg, i32 0, i32 0), i8** %2, align 8, !dbg !334
  br label %110, !dbg !334

; <label>:39:                                     ; preds = %11, %1
  %40 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !335
  %41 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %40, i32 0, i32 4, !dbg !337
  %42 = load i8, i8* %41, align 1, !dbg !337
  %43 = trunc i8 %42 to i1, !dbg !337
  br i1 %43, label %51, label %44, !dbg !338

; <label>:44:                                     ; preds = %39
  %45 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !339
  %46 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %45, i32 0, i32 1, !dbg !341
  %47 = load %struct.dpkg_arch*, %struct.dpkg_arch** %46, align 8, !dbg !341
  %48 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %47, i32 0, i32 2, !dbg !342
  %49 = load i32, i32* %48, align 8, !dbg !342
  %50 = icmp eq i32 %49, 2, !dbg !343
  br i1 %50, label %58, label %51, !dbg !344

; <label>:51:                                     ; preds = %44, %39
  %52 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !345
  %53 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %52, i32 0, i32 1, !dbg !346
  %54 = load %struct.dpkg_arch*, %struct.dpkg_arch** %53, align 8, !dbg !346
  %55 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %54, i32 0, i32 2, !dbg !347
  %56 = load i32, i32* %55, align 8, !dbg !347
  %57 = icmp eq i32 %56, 1, !dbg !348
  br i1 %57, label %58, label %76, !dbg !349

; <label>:58:                                     ; preds = %51, %44
  %59 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !351
  %60 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %59, i32 0, i32 1, !dbg !353
  %61 = load %struct.dpkg_arch*, %struct.dpkg_arch** %60, align 8, !dbg !353
  %62 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %61, i32 0, i32 1, !dbg !354
  %63 = load i8*, i8** %62, align 8, !dbg !354
  %64 = call i8* @dpkg_arch_name_is_illegal(i8* %63), !dbg !355
  store i8* %64, i8** %4, align 8, !dbg !356
  %65 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !357
  %66 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !358
  %67 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %66, i32 0, i32 0, !dbg !359
  %68 = load i8*, i8** %67, align 8, !dbg !359
  %69 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !360
  %70 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %69, i32 0, i32 1, !dbg !361
  %71 = load %struct.dpkg_arch*, %struct.dpkg_arch** %70, align 8, !dbg !361
  %72 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %71, i32 0, i32 1, !dbg !362
  %73 = load i8*, i8** %72, align 8, !dbg !362
  %74 = load i8*, i8** %4, align 8, !dbg !363
  %75 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @pkg_spec_is_illegal.msg, i32 0, i32 0), i64 1024, i8* %65, i8* %68, i8* %73, i8* %74) #6, !dbg !364
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @pkg_spec_is_illegal.msg, i32 0, i32 0), i8** %2, align 8, !dbg !365
  br label %110, !dbg !365

; <label>:76:                                     ; preds = %51
  %77 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !366
  %78 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %77, i32 0, i32 4, !dbg !368
  %79 = load i8, i8* %78, align 1, !dbg !368
  %80 = trunc i8 %79 to i1, !dbg !368
  br i1 %80, label %109, label %81, !dbg !369

; <label>:81:                                     ; preds = %76
  %82 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !370
  %83 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %82, i32 0, i32 2, !dbg !372
  %84 = load i32, i32* %83, align 8, !dbg !372
  %85 = and i32 %84, 256, !dbg !373
  %86 = icmp ne i32 %85, 0, !dbg !373
  br i1 %86, label %87, label %109, !dbg !374

; <label>:87:                                     ; preds = %81
  call void @llvm.dbg.declare(metadata %struct.pkgset** %6, metadata !375, metadata !258), !dbg !377
  %88 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !378
  %89 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %88, i32 0, i32 0, !dbg !379
  %90 = load i8*, i8** %89, align 8, !dbg !379
  %91 = call %struct.pkgset* @pkg_hash_find_set(i8* %90), !dbg !380
  store %struct.pkgset* %91, %struct.pkgset** %6, align 8, !dbg !381
  %92 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !382
  %93 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %92, i32 0, i32 1, !dbg !384
  %94 = load %struct.dpkg_arch*, %struct.dpkg_arch** %93, align 8, !dbg !384
  %95 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %94, i32 0, i32 2, !dbg !385
  %96 = load i32, i32* %95, align 8, !dbg !385
  %97 = icmp eq i32 %96, 0, !dbg !386
  br i1 %97, label %98, label %108, !dbg !387

; <label>:98:                                     ; preds = %87
  %99 = load %struct.pkgset*, %struct.pkgset** %6, align 8, !dbg !388
  %100 = call i32 @pkgset_installed_instances(%struct.pkgset* %99), !dbg !389
  %101 = icmp sgt i32 %100, 1, !dbg !390
  br i1 %101, label %102, label %108, !dbg !391

; <label>:102:                                    ; preds = %98
  %103 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !393
  %104 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !395
  %105 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %104, i32 0, i32 0, !dbg !396
  %106 = load i8*, i8** %105, align 8, !dbg !396
  %107 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @pkg_spec_is_illegal.msg, i32 0, i32 0), i64 1024, i8* %103, i8* %106) #6, !dbg !397
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @pkg_spec_is_illegal.msg, i32 0, i32 0), i8** %2, align 8, !dbg !398
  br label %110, !dbg !398

; <label>:108:                                    ; preds = %98, %87
  br label %109, !dbg !399

; <label>:109:                                    ; preds = %108, %81, %76
  store i8* null, i8** %2, align 8, !dbg !400
  br label %110, !dbg !400

; <label>:110:                                    ; preds = %109, %102, %58, %26
  %111 = load i8*, i8** %2, align 8, !dbg !401
  ret i8* %111, !dbg !401
}

declare i8* @pkg_name_is_illegal(i8*) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

declare i8* @dpkg_arch_name_is_illegal(i8*) #2

declare %struct.pkgset* @pkg_hash_find_set(i8*) #2

declare i32 @pkgset_installed_instances(%struct.pkgset*) #2

; Function Attrs: nounwind uwtable
define i8* @pkg_spec_set(%struct.pkg_spec*, i8*, i8*) #0 !dbg !402 {
  %4 = alloca %struct.pkg_spec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %4, metadata !405, metadata !258), !dbg !406
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !407, metadata !258), !dbg !408
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !409, metadata !258), !dbg !410
  %7 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !411
  %8 = load i8*, i8** %5, align 8, !dbg !412
  %9 = call i8* @m_strdup(i8* %8), !dbg !413
  %10 = load i8*, i8** %6, align 8, !dbg !414
  %11 = call i8* @pkg_spec_prep(%struct.pkg_spec* %7, i8* %9, i8* %10), !dbg !415
  ret i8* %11, !dbg !417
}

; Function Attrs: nounwind uwtable
define internal i8* @pkg_spec_prep(%struct.pkg_spec*, i8*, i8*) #0 !dbg !418 {
  %4 = alloca %struct.pkg_spec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %4, metadata !421, metadata !258), !dbg !422
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !423, metadata !258), !dbg !424
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !425, metadata !258), !dbg !426
  %7 = load i8*, i8** %5, align 8, !dbg !427
  %8 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !428
  %9 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %8, i32 0, i32 0, !dbg !429
  store i8* %7, i8** %9, align 8, !dbg !430
  %10 = load i8*, i8** %6, align 8, !dbg !431
  %11 = call %struct.dpkg_arch* @dpkg_arch_find(i8* %10), !dbg !432
  %12 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !433
  %13 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %12, i32 0, i32 1, !dbg !434
  store %struct.dpkg_arch* %11, %struct.dpkg_arch** %13, align 8, !dbg !435
  %14 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !436
  %15 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %14, i32 0, i32 3, !dbg !437
  store i8 0, i8* %15, align 4, !dbg !438
  %16 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !439
  %17 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %16, i32 0, i32 4, !dbg !440
  store i8 0, i8* %17, align 1, !dbg !441
  %18 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !442
  %19 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %18, i32 0, i32 2, !dbg !444
  %20 = load i32, i32* %19, align 8, !dbg !444
  %21 = and i32 %20, 1, !dbg !445
  %22 = icmp ne i32 %21, 0, !dbg !445
  br i1 %22, label %23, label %32, !dbg !446

; <label>:23:                                     ; preds = %3
  %24 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !447
  %25 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %24, i32 0, i32 0, !dbg !449
  %26 = load i8*, i8** %25, align 8, !dbg !449
  %27 = call i8* @strpbrk(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !450
  %28 = icmp ne i8* %27, null, !dbg !450
  br i1 %28, label %29, label %32, !dbg !451

; <label>:29:                                     ; preds = %23
  %30 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !452
  %31 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %30, i32 0, i32 3, !dbg !453
  store i8 1, i8* %31, align 4, !dbg !454
  br label %32, !dbg !452

; <label>:32:                                     ; preds = %29, %23, %3
  %33 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !455
  %34 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %33, i32 0, i32 2, !dbg !457
  %35 = load i32, i32* %34, align 8, !dbg !457
  %36 = and i32 %35, 1, !dbg !458
  %37 = icmp ne i32 %36, 0, !dbg !458
  br i1 %37, label %38, label %49, !dbg !459

; <label>:38:                                     ; preds = %32
  %39 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !460
  %40 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %39, i32 0, i32 1, !dbg !462
  %41 = load %struct.dpkg_arch*, %struct.dpkg_arch** %40, align 8, !dbg !462
  %42 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %41, i32 0, i32 1, !dbg !463
  %43 = load i8*, i8** %42, align 8, !dbg !463
  %44 = call i8* @strpbrk(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !464
  %45 = icmp ne i8* %44, null, !dbg !464
  br i1 %45, label %46, label %49, !dbg !465

; <label>:46:                                     ; preds = %38
  %47 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !466
  %48 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %47, i32 0, i32 4, !dbg !467
  store i8 1, i8* %48, align 1, !dbg !468
  br label %49, !dbg !466

; <label>:49:                                     ; preds = %46, %38, %32
  %50 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !469
  %51 = call i8* @pkg_spec_is_illegal(%struct.pkg_spec* %50), !dbg !470
  ret i8* %51, !dbg !471
}

declare i8* @m_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @pkg_spec_parse(%struct.pkg_spec*, i8*) #0 !dbg !472 {
  %3 = alloca %struct.pkg_spec*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %3, metadata !475, metadata !258), !dbg !476
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !477, metadata !258), !dbg !478
  call void @llvm.dbg.declare(metadata i8** %5, metadata !479, metadata !258), !dbg !480
  call void @llvm.dbg.declare(metadata i8** %6, metadata !481, metadata !258), !dbg !482
  %7 = load i8*, i8** %4, align 8, !dbg !483
  %8 = call i8* @strchr(i8* %7, i32 58) #7, !dbg !484
  store i8* %8, i8** %6, align 8, !dbg !485
  %9 = load i8*, i8** %6, align 8, !dbg !486
  %10 = icmp eq i8* %9, null, !dbg !488
  br i1 %10, label %11, label %14, !dbg !489

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !490
  %13 = call i8* @m_strdup(i8* %12), !dbg !492
  store i8* %13, i8** %5, align 8, !dbg !493
  br label %24, !dbg !494

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %4, align 8, !dbg !495
  %16 = load i8*, i8** %6, align 8, !dbg !497
  %17 = load i8*, i8** %4, align 8, !dbg !498
  %18 = ptrtoint i8* %16 to i64, !dbg !499
  %19 = ptrtoint i8* %17 to i64, !dbg !499
  %20 = sub i64 %18, %19, !dbg !499
  %21 = call i8* @m_strndup(i8* %15, i64 %20), !dbg !500
  store i8* %21, i8** %5, align 8, !dbg !501
  %22 = load i8*, i8** %6, align 8, !dbg !502
  %23 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !502
  store i8* %23, i8** %6, align 8, !dbg !502
  br label %24

; <label>:24:                                     ; preds = %14, %11
  %25 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !503
  %26 = load i8*, i8** %5, align 8, !dbg !504
  %27 = load i8*, i8** %6, align 8, !dbg !505
  %28 = call i8* @pkg_spec_prep(%struct.pkg_spec* %25, i8* %26, i8* %27), !dbg !506
  ret i8* %28, !dbg !507
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i8* @m_strndup(i8*, i64) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @pkg_spec_match_pkg(%struct.pkg_spec*, %struct.pkginfo*, %struct.pkgbin*) #0 !dbg !508 {
  %4 = alloca %struct.pkg_spec*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.pkgbin*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %4, metadata !512, metadata !258), !dbg !513
  store %struct.pkginfo* %1, %struct.pkginfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !514, metadata !258), !dbg !515
  store %struct.pkgbin* %2, %struct.pkgbin** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %6, metadata !516, metadata !258), !dbg !517
  %7 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !518
  %8 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !519
  %9 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %8, i32 0, i32 0, !dbg !520
  %10 = load %struct.pkgset*, %struct.pkgset** %9, align 8, !dbg !520
  %11 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %10, i32 0, i32 1, !dbg !521
  %12 = load i8*, i8** %11, align 8, !dbg !521
  %13 = call zeroext i1 @pkg_spec_match_name(%struct.pkg_spec* %7, i8* %12), !dbg !522
  br i1 %13, label %14, label %21, !dbg !523

; <label>:14:                                     ; preds = %3
  %15 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !524
  %16 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !525
  %17 = load %struct.pkgbin*, %struct.pkgbin** %6, align 8, !dbg !526
  %18 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %17, i32 0, i32 3, !dbg !527
  %19 = load %struct.dpkg_arch*, %struct.dpkg_arch** %18, align 8, !dbg !527
  %20 = call zeroext i1 @pkg_spec_match_arch(%struct.pkg_spec* %15, %struct.pkginfo* %16, %struct.dpkg_arch* %19), !dbg !528
  br label %21

; <label>:21:                                     ; preds = %14, %3
  %22 = phi i1 [ false, %3 ], [ %20, %14 ]
  ret i1 %22, !dbg !529
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @pkg_spec_match_name(%struct.pkg_spec*, i8*) #0 !dbg !531 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.pkg_spec*, align 8
  %5 = alloca i8*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %4, metadata !534, metadata !258), !dbg !535
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !536, metadata !258), !dbg !537
  %6 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !538
  %7 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %6, i32 0, i32 3, !dbg !540
  %8 = load i8, i8* %7, align 4, !dbg !540
  %9 = trunc i8 %8 to i1, !dbg !540
  br i1 %9, label %10, label %17, !dbg !541

; <label>:10:                                     ; preds = %2
  %11 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !542
  %12 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %11, i32 0, i32 0, !dbg !543
  %13 = load i8*, i8** %12, align 8, !dbg !543
  %14 = load i8*, i8** %5, align 8, !dbg !544
  %15 = call i32 @fnmatch(i8* %13, i8* %14, i32 0), !dbg !545
  %16 = icmp eq i32 %15, 0, !dbg !546
  store i1 %16, i1* %3, align 1, !dbg !547
  br label %24, !dbg !547

; <label>:17:                                     ; preds = %2
  %18 = load %struct.pkg_spec*, %struct.pkg_spec** %4, align 8, !dbg !548
  %19 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %18, i32 0, i32 0, !dbg !549
  %20 = load i8*, i8** %19, align 8, !dbg !549
  %21 = load i8*, i8** %5, align 8, !dbg !550
  %22 = call i32 @strcmp(i8* %20, i8* %21) #7, !dbg !551
  %23 = icmp eq i32 %22, 0, !dbg !552
  store i1 %23, i1* %3, align 1, !dbg !553
  br label %24, !dbg !553

; <label>:24:                                     ; preds = %17, %10
  %25 = load i1, i1* %3, align 1, !dbg !554
  ret i1 %25, !dbg !554
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @pkg_spec_match_arch(%struct.pkg_spec*, %struct.pkginfo*, %struct.dpkg_arch*) #0 !dbg !555 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.pkg_spec*, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca %struct.dpkg_arch*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %5, metadata !558, metadata !258), !dbg !559
  store %struct.pkginfo* %1, %struct.pkginfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !560, metadata !258), !dbg !561
  store %struct.dpkg_arch* %2, %struct.dpkg_arch** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %7, metadata !562, metadata !258), !dbg !563
  %8 = load %struct.pkg_spec*, %struct.pkg_spec** %5, align 8, !dbg !564
  %9 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %8, i32 0, i32 4, !dbg !566
  %10 = load i8, i8* %9, align 1, !dbg !566
  %11 = trunc i8 %10 to i1, !dbg !566
  br i1 %11, label %12, label %23, !dbg !567

; <label>:12:                                     ; preds = %3
  %13 = load %struct.pkg_spec*, %struct.pkg_spec** %5, align 8, !dbg !568
  %14 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %13, i32 0, i32 1, !dbg !569
  %15 = load %struct.dpkg_arch*, %struct.dpkg_arch** %14, align 8, !dbg !569
  %16 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %15, i32 0, i32 1, !dbg !570
  %17 = load i8*, i8** %16, align 8, !dbg !570
  %18 = load %struct.dpkg_arch*, %struct.dpkg_arch** %7, align 8, !dbg !571
  %19 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %18, i32 0, i32 1, !dbg !572
  %20 = load i8*, i8** %19, align 8, !dbg !572
  %21 = call i32 @fnmatch(i8* %17, i8* %20, i32 0), !dbg !573
  %22 = icmp eq i32 %21, 0, !dbg !574
  store i1 %22, i1* %4, align 1, !dbg !575
  br label %54, !dbg !575

; <label>:23:                                     ; preds = %3
  %24 = load %struct.pkg_spec*, %struct.pkg_spec** %5, align 8, !dbg !576
  %25 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %24, i32 0, i32 1, !dbg !578
  %26 = load %struct.dpkg_arch*, %struct.dpkg_arch** %25, align 8, !dbg !578
  %27 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %26, i32 0, i32 2, !dbg !579
  %28 = load i32, i32* %27, align 8, !dbg !579
  %29 = icmp ne i32 %28, 0, !dbg !580
  br i1 %29, label %30, label %36, !dbg !581

; <label>:30:                                     ; preds = %23
  %31 = load %struct.pkg_spec*, %struct.pkg_spec** %5, align 8, !dbg !582
  %32 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %31, i32 0, i32 1, !dbg !583
  %33 = load %struct.dpkg_arch*, %struct.dpkg_arch** %32, align 8, !dbg !583
  %34 = load %struct.dpkg_arch*, %struct.dpkg_arch** %7, align 8, !dbg !584
  %35 = icmp eq %struct.dpkg_arch* %33, %34, !dbg !585
  store i1 %35, i1* %4, align 1, !dbg !586
  br label %54, !dbg !586

; <label>:36:                                     ; preds = %23
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load %struct.pkg_spec*, %struct.pkg_spec** %5, align 8, !dbg !587
  %39 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %38, i32 0, i32 2, !dbg !588
  %40 = load i32, i32* %39, align 8, !dbg !588
  %41 = and i32 %40, 65280, !dbg !589
  switch i32 %41, label %49 [
    i32 256, label %42
    i32 512, label %48
  ], !dbg !590

; <label>:42:                                     ; preds = %37
  %43 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !591
  %44 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %43, i32 0, i32 0, !dbg !593
  %45 = load %struct.pkgset*, %struct.pkgset** %44, align 8, !dbg !593
  %46 = call i32 @pkgset_installed_instances(%struct.pkgset* %45), !dbg !594
  %47 = icmp sle i32 %46, 1, !dbg !595
  store i1 %47, i1* %4, align 1, !dbg !596
  br label %54, !dbg !596

; <label>:48:                                     ; preds = %37
  store i1 true, i1* %4, align 1, !dbg !597
  br label %54, !dbg !597

; <label>:49:                                     ; preds = %37
  %50 = load %struct.pkg_spec*, %struct.pkg_spec** %5, align 8, !dbg !598
  %51 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %50, i32 0, i32 2, !dbg !599
  %52 = load i32, i32* %51, align 8, !dbg !599
  %53 = and i32 %52, 65280, !dbg !600
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 182, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.pkg_spec_match_arch, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0), i32 %53) #8, !dbg !601
  unreachable, !dbg !601

; <label>:54:                                     ; preds = %48, %42, %30, %12
  %55 = load i1, i1* %4, align 1, !dbg !602
  ret i1 %55, !dbg !602
}

; Function Attrs: nounwind uwtable
define %struct.pkginfo* @pkg_spec_parse_pkg(i8*, %struct.dpkg_error*) #0 !dbg !603 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dpkg_error*, align 8
  %5 = alloca %struct.pkg_spec, align 8
  %6 = alloca %struct.pkginfo*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !612, metadata !258), !dbg !613
  store %struct.dpkg_error* %1, %struct.dpkg_error** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %4, metadata !614, metadata !258), !dbg !615
  call void @llvm.dbg.declare(metadata %struct.pkg_spec* %5, metadata !616, metadata !258), !dbg !617
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %6, metadata !618, metadata !258), !dbg !619
  call void @llvm.dbg.declare(metadata i8** %7, metadata !620, metadata !258), !dbg !621
  call void @pkg_spec_init(%struct.pkg_spec* %5, i32 256), !dbg !622
  %8 = load i8*, i8** %3, align 8, !dbg !623
  %9 = call i8* @pkg_spec_parse(%struct.pkg_spec* %5, i8* %8), !dbg !624
  store i8* %9, i8** %7, align 8, !dbg !625
  %10 = load i8*, i8** %7, align 8, !dbg !626
  %11 = icmp ne i8* %10, null, !dbg !626
  br i1 %11, label %12, label %16, !dbg !628

; <label>:12:                                     ; preds = %2
  %13 = load %struct.dpkg_error*, %struct.dpkg_error** %4, align 8, !dbg !629
  %14 = load i8*, i8** %7, align 8, !dbg !631
  %15 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* %14), !dbg !632
  store %struct.pkginfo* null, %struct.pkginfo** %6, align 8, !dbg !633
  br label %18, !dbg !634

; <label>:16:                                     ; preds = %2
  %17 = call %struct.pkginfo* @pkg_spec_get_pkg(%struct.pkg_spec* %5), !dbg !635
  store %struct.pkginfo* %17, %struct.pkginfo** %6, align 8, !dbg !637
  br label %18

; <label>:18:                                     ; preds = %16, %12
  call void @pkg_spec_destroy(%struct.pkg_spec* %5), !dbg !638
  %19 = load %struct.pkginfo*, %struct.pkginfo** %6, align 8, !dbg !639
  ret %struct.pkginfo* %19, !dbg !640
}

declare i32 @dpkg_put_error(%struct.dpkg_error*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.pkginfo* @pkg_spec_get_pkg(%struct.pkg_spec*) #0 !dbg !641 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.pkg_spec*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %3, metadata !644, metadata !258), !dbg !645
  %4 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !646
  %5 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %4, i32 0, i32 1, !dbg !648
  %6 = load %struct.dpkg_arch*, %struct.dpkg_arch** %5, align 8, !dbg !648
  %7 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %6, i32 0, i32 2, !dbg !649
  %8 = load i32, i32* %7, align 8, !dbg !649
  %9 = icmp eq i32 %8, 0, !dbg !650
  br i1 %9, label %10, label %15, !dbg !651

; <label>:10:                                     ; preds = %1
  %11 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !652
  %12 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %11, i32 0, i32 0, !dbg !653
  %13 = load i8*, i8** %12, align 8, !dbg !653
  %14 = call %struct.pkginfo* @pkg_hash_find_singleton(i8* %13), !dbg !654
  store %struct.pkginfo* %14, %struct.pkginfo** %2, align 8, !dbg !655
  br label %23, !dbg !655

; <label>:15:                                     ; preds = %1
  %16 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !656
  %17 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %16, i32 0, i32 0, !dbg !657
  %18 = load i8*, i8** %17, align 8, !dbg !657
  %19 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !658
  %20 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %19, i32 0, i32 1, !dbg !659
  %21 = load %struct.dpkg_arch*, %struct.dpkg_arch** %20, align 8, !dbg !659
  %22 = call %struct.pkginfo* @pkg_hash_find_pkg(i8* %18, %struct.dpkg_arch* %21), !dbg !660
  store %struct.pkginfo* %22, %struct.pkginfo** %2, align 8, !dbg !661
  br label %23, !dbg !661

; <label>:23:                                     ; preds = %15, %10
  %24 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !662
  ret %struct.pkginfo* %24, !dbg !662
}

; Function Attrs: nounwind uwtable
define void @pkg_spec_destroy(%struct.pkg_spec*) #0 !dbg !663 {
  %2 = alloca %struct.pkg_spec*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %2, metadata !664, metadata !258), !dbg !665
  %3 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !666
  %4 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %3, i32 0, i32 0, !dbg !667
  %5 = load i8*, i8** %4, align 8, !dbg !667
  call void @free(i8* %5) #6, !dbg !668
  %6 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !669
  call void @pkg_spec_blank(%struct.pkg_spec* %6), !dbg !670
  %7 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !671
  call void @pkg_spec_iter_destroy(%struct.pkg_spec* %7), !dbg !672
  ret void, !dbg !673
}

; Function Attrs: nounwind uwtable
define %struct.pkginfo* @pkg_spec_find_pkg(i8*, i8*, %struct.dpkg_error*) #0 !dbg !674 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dpkg_error*, align 8
  %7 = alloca %struct.pkg_spec, align 8
  %8 = alloca %struct.pkginfo*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !677, metadata !258), !dbg !678
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !679, metadata !258), !dbg !680
  store %struct.dpkg_error* %2, %struct.dpkg_error** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %6, metadata !681, metadata !258), !dbg !682
  call void @llvm.dbg.declare(metadata %struct.pkg_spec* %7, metadata !683, metadata !258), !dbg !684
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %8, metadata !685, metadata !258), !dbg !686
  call void @llvm.dbg.declare(metadata i8** %9, metadata !687, metadata !258), !dbg !688
  call void @pkg_spec_init(%struct.pkg_spec* %7, i32 256), !dbg !689
  %10 = load i8*, i8** %4, align 8, !dbg !690
  %11 = load i8*, i8** %5, align 8, !dbg !691
  %12 = call i8* @pkg_spec_set(%struct.pkg_spec* %7, i8* %10, i8* %11), !dbg !692
  store i8* %12, i8** %9, align 8, !dbg !693
  %13 = load i8*, i8** %9, align 8, !dbg !694
  %14 = icmp ne i8* %13, null, !dbg !694
  br i1 %14, label %15, label %19, !dbg !696

; <label>:15:                                     ; preds = %3
  %16 = load %struct.dpkg_error*, %struct.dpkg_error** %6, align 8, !dbg !697
  %17 = load i8*, i8** %9, align 8, !dbg !699
  %18 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* %17), !dbg !700
  store %struct.pkginfo* null, %struct.pkginfo** %8, align 8, !dbg !701
  br label %21, !dbg !702

; <label>:19:                                     ; preds = %3
  %20 = call %struct.pkginfo* @pkg_spec_get_pkg(%struct.pkg_spec* %7), !dbg !703
  store %struct.pkginfo* %20, %struct.pkginfo** %8, align 8, !dbg !705
  br label %21

; <label>:21:                                     ; preds = %19, %15
  call void @pkg_spec_destroy(%struct.pkg_spec* %7), !dbg !706
  %22 = load %struct.pkginfo*, %struct.pkginfo** %8, align 8, !dbg !707
  ret %struct.pkginfo* %22, !dbg !708
}

; Function Attrs: nounwind uwtable
define void @pkg_spec_iter_init(%struct.pkg_spec*) #0 !dbg !709 {
  %2 = alloca %struct.pkg_spec*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %2, metadata !710, metadata !258), !dbg !711
  %3 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !712
  %4 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %3, i32 0, i32 3, !dbg !714
  %5 = load i8, i8* %4, align 4, !dbg !714
  %6 = trunc i8 %5 to i1, !dbg !714
  br i1 %6, label %7, label %11, !dbg !715

; <label>:7:                                      ; preds = %1
  %8 = call %struct.pkg_hash_iter* @pkg_hash_iter_new(), !dbg !716
  %9 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !717
  %10 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %9, i32 0, i32 5, !dbg !718
  store %struct.pkg_hash_iter* %8, %struct.pkg_hash_iter** %10, align 8, !dbg !719
  br label %19, !dbg !717

; <label>:11:                                     ; preds = %1
  %12 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !720
  %13 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %12, i32 0, i32 0, !dbg !721
  %14 = load i8*, i8** %13, align 8, !dbg !721
  %15 = call %struct.pkgset* @pkg_hash_find_set(i8* %14), !dbg !722
  %16 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %15, i32 0, i32 2, !dbg !723
  %17 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !724
  %18 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %17, i32 0, i32 6, !dbg !725
  store %struct.pkginfo* %16, %struct.pkginfo** %18, align 8, !dbg !726
  br label %19

; <label>:19:                                     ; preds = %11, %7
  ret void, !dbg !727
}

declare %struct.pkg_hash_iter* @pkg_hash_iter_new() #2

; Function Attrs: nounwind uwtable
define %struct.pkginfo* @pkg_spec_iter_next_pkg(%struct.pkg_spec*) #0 !dbg !728 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.pkg_spec*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %3, metadata !729, metadata !258), !dbg !730
  %4 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !731
  %5 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %4, i32 0, i32 3, !dbg !733
  %6 = load i8, i8* %5, align 4, !dbg !733
  %7 = trunc i8 %6 to i1, !dbg !733
  br i1 %7, label %8, label %11, !dbg !734

; <label>:8:                                      ; preds = %1
  %9 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !735
  %10 = call %struct.pkginfo* @pkg_spec_iter_next_pkgname(%struct.pkg_spec* %9), !dbg !736
  store %struct.pkginfo* %10, %struct.pkginfo** %2, align 8, !dbg !737
  br label %14, !dbg !737

; <label>:11:                                     ; preds = %1
  %12 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !738
  %13 = call %struct.pkginfo* @pkg_spec_iter_next_pkgarch(%struct.pkg_spec* %12), !dbg !739
  store %struct.pkginfo* %13, %struct.pkginfo** %2, align 8, !dbg !740
  br label %14, !dbg !740

; <label>:14:                                     ; preds = %11, %8
  %15 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !741
  ret %struct.pkginfo* %15, !dbg !741
}

; Function Attrs: nounwind uwtable
define internal %struct.pkginfo* @pkg_spec_iter_next_pkgname(%struct.pkg_spec*) #0 !dbg !742 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.pkg_spec*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %3, metadata !743, metadata !258), !dbg !744
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !745, metadata !258), !dbg !746
  br label %5, !dbg !747

; <label>:5:                                      ; preds = %19, %1
  %6 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !748
  %7 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %6, i32 0, i32 5, !dbg !750
  %8 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %7, align 8, !dbg !750
  %9 = call %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter* %8), !dbg !751
  store %struct.pkginfo* %9, %struct.pkginfo** %4, align 8, !dbg !752
  %10 = icmp ne %struct.pkginfo* %9, null, !dbg !753
  br i1 %10, label %11, label %20, !dbg !753

; <label>:11:                                     ; preds = %5
  %12 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !754
  %13 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !757
  %14 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !758
  %15 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %14, i32 0, i32 9, !dbg !759
  %16 = call zeroext i1 @pkg_spec_match_pkg(%struct.pkg_spec* %12, %struct.pkginfo* %13, %struct.pkgbin* %15), !dbg !760
  br i1 %16, label %17, label %19, !dbg !761

; <label>:17:                                     ; preds = %11
  %18 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !762
  store %struct.pkginfo* %18, %struct.pkginfo** %2, align 8, !dbg !763
  br label %21, !dbg !763

; <label>:19:                                     ; preds = %11
  br label %5, !dbg !764, !llvm.loop !766

; <label>:20:                                     ; preds = %5
  store %struct.pkginfo* null, %struct.pkginfo** %2, align 8, !dbg !767
  br label %21, !dbg !767

; <label>:21:                                     ; preds = %20, %17
  %22 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !768
  ret %struct.pkginfo* %22, !dbg !768
}

; Function Attrs: nounwind uwtable
define internal %struct.pkginfo* @pkg_spec_iter_next_pkgarch(%struct.pkg_spec*) #0 !dbg !769 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.pkg_spec*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %3, metadata !770, metadata !258), !dbg !771
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !772, metadata !258), !dbg !773
  br label %5, !dbg !774

; <label>:5:                                      ; preds = %25, %1
  %6 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !775
  %7 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %6, i32 0, i32 6, !dbg !777
  %8 = load %struct.pkginfo*, %struct.pkginfo** %7, align 8, !dbg !777
  store %struct.pkginfo* %8, %struct.pkginfo** %4, align 8, !dbg !778
  %9 = icmp ne %struct.pkginfo* %8, null, !dbg !779
  br i1 %9, label %10, label %26, !dbg !779

; <label>:10:                                     ; preds = %5
  %11 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !780
  %12 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %11, i32 0, i32 1, !dbg !782
  %13 = load %struct.pkginfo*, %struct.pkginfo** %12, align 8, !dbg !782
  %14 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !783
  %15 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %14, i32 0, i32 6, !dbg !784
  store %struct.pkginfo* %13, %struct.pkginfo** %15, align 8, !dbg !785
  %16 = load %struct.pkg_spec*, %struct.pkg_spec** %3, align 8, !dbg !786
  %17 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !788
  %18 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !789
  %19 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %18, i32 0, i32 9, !dbg !790
  %20 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %19, i32 0, i32 3, !dbg !791
  %21 = load %struct.dpkg_arch*, %struct.dpkg_arch** %20, align 8, !dbg !791
  %22 = call zeroext i1 @pkg_spec_match_arch(%struct.pkg_spec* %16, %struct.pkginfo* %17, %struct.dpkg_arch* %21), !dbg !792
  br i1 %22, label %23, label %25, !dbg !793

; <label>:23:                                     ; preds = %10
  %24 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !794
  store %struct.pkginfo* %24, %struct.pkginfo** %2, align 8, !dbg !795
  br label %27, !dbg !795

; <label>:25:                                     ; preds = %10
  br label %5, !dbg !796, !llvm.loop !798

; <label>:26:                                     ; preds = %5
  store %struct.pkginfo* null, %struct.pkginfo** %2, align 8, !dbg !799
  br label %27, !dbg !799

; <label>:27:                                     ; preds = %26, %23
  %28 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !800
  ret %struct.pkginfo* %28, !dbg !800
}

; Function Attrs: nounwind uwtable
define void @pkg_spec_iter_destroy(%struct.pkg_spec*) #0 !dbg !801 {
  %2 = alloca %struct.pkg_spec*, align 8
  store %struct.pkg_spec* %0, %struct.pkg_spec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_spec** %2, metadata !802, metadata !258), !dbg !803
  %3 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !804
  %4 = getelementptr inbounds %struct.pkg_spec, %struct.pkg_spec* %3, i32 0, i32 5, !dbg !805
  %5 = load %struct.pkg_hash_iter*, %struct.pkg_hash_iter** %4, align 8, !dbg !805
  call void @pkg_hash_iter_free(%struct.pkg_hash_iter* %5), !dbg !806
  %6 = load %struct.pkg_spec*, %struct.pkg_spec** %2, align 8, !dbg !807
  call void @pkg_spec_iter_blank(%struct.pkg_spec* %6), !dbg !808
  ret void, !dbg !809
}

declare void @pkg_hash_iter_free(%struct.pkg_hash_iter*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

declare %struct.dpkg_arch* @dpkg_arch_find(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #4

declare i32 @fnmatch(i8*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #5

declare %struct.pkginfo* @pkg_hash_find_singleton(i8*) #2

declare %struct.pkginfo* @pkg_hash_find_pkg(i8*, %struct.dpkg_arch*) #2

declare %struct.pkginfo* @pkg_hash_iter_next_pkg(%struct.pkg_hash_iter*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!251, !252}
!llvm.ident = !{!253}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, globals: !88)
!1 = !DIFile(filename: "[inter]lib--dpkg--pkg-spec.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !14, !21, !33, !42, !50, !54, !64, !74, !80}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !4, line: 37, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!7 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!8 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!9 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!10 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!11 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!12 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!13 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_spec_flags", file: !15, line: 41, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "../../lib/dpkg/pkg-spec.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "PKG_SPEC_PATTERNS", value: 1)
!18 = !DIEnumerator(name: "PKG_SPEC_ARCH_SINGLE", value: 256)
!19 = !DIEnumerator(name: "PKG_SPEC_ARCH_WILDCARD", value: 512)
!20 = !DIEnumerator(name: "PKG_SPEC_ARCH_MASK", value: 65280)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !22, line: 44, size: 32, align: 32, elements: !23)
!22 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32}
!24 = !DIEnumerator(name: "dep_suggests", value: 0)
!25 = !DIEnumerator(name: "dep_recommends", value: 1)
!26 = !DIEnumerator(name: "dep_depends", value: 2)
!27 = !DIEnumerator(name: "dep_predepends", value: 3)
!28 = !DIEnumerator(name: "dep_breaks", value: 4)
!29 = !DIEnumerator(name: "dep_conflicts", value: 5)
!30 = !DIEnumerator(name: "dep_provides", value: 6)
!31 = !DIEnumerator(name: "dep_replaces", value: 7)
!32 = !DIEnumerator(name: "dep_enhances", value: 8)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !34, line: 61, size: 32, align: 32, elements: !35)
!34 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!35 = !{!36, !37, !38, !39, !40, !41}
!36 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!37 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!38 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!39 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!40 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!41 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !22, line: 153, size: 32, align: 32, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!45 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!46 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!47 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!48 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!49 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !22, line: 163, size: 32, align: 32, elements: !51)
!51 = !{!52, !53}
!52 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!53 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !22, line: 168, size: 32, align: 32, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63}
!56 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!57 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!58 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!59 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!60 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!61 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!62 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!63 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !22, line: 179, size: 32, align: 32, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73}
!66 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!67 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!68 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!69 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!70 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!71 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!72 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!73 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !22, line: 95, size: 32, align: 32, elements: !75)
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!77 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!78 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!79 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !81, line: 36, size: 32, align: 32, elements: !82)
!81 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!84 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!85 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!88 = !{!89}
!89 = distinct !DIGlobalVariable(name: "msg", scope: !90, file: !91, line: 65, type: !248, isLocal: true, isDefinition: true, variable: [1024 x i8]* @pkg_spec_is_illegal.msg)
!90 = distinct !DISubprogram(name: "pkg_spec_is_illegal", scope: !91, file: !91, line: 63, type: !92, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!91 = !DIFile(filename: "pkg-spec.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !97}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_spec", file: !15, line: 51, size: 320, align: 64, elements: !99)
!99 = !{!100, !102, !111, !112, !114, !115, !118}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !15, line: 52, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !98, file: !15, line: 53, baseType: !103, size: 64, align: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !4, line: 48, size: 192, align: 64, elements: !106)
!106 = !{!107, !109, !110}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !4, line: 49, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !4, line: 50, baseType: !94, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !4, line: 51, baseType: !3, size: 32, align: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !15, line: 55, baseType: !14, size: 32, align: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "name_is_pattern", scope: !98, file: !15, line: 59, baseType: !113, size: 8, align: 8, offset: 160)
!113 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_pattern", scope: !98, file: !15, line: 60, baseType: !113, size: 8, align: 8, offset: 168)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_iter", scope: !98, file: !15, line: 63, baseType: !116, size: 64, align: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_hash_iter", file: !22, line: 314, flags: DIFlagFwdDecl)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_next", scope: !98, file: !15, line: 65, baseType: !119, size: 64, align: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !22, line: 195, size: 3072, align: 64, elements: !121)
!121 = !{!122, !162, !163, !164, !165, !166, !167, !168, !169, !170, !200, !201, !204, !213, !229, !230, !236, !239, !245, !246}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !120, file: !22, line: 196, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !22, line: 242, size: 3392, align: 64, elements: !125)
!125 = !{!126, !127, !128, !129, !160}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !22, line: 243, baseType: !123, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !22, line: 244, baseType: !94, size: 64, align: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !124, file: !22, line: 245, baseType: !120, size: 3072, align: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !124, file: !22, line: 249, baseType: !130, size: 128, align: 64, offset: 3200)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !124, file: !22, line: 246, size: 128, align: 64, elements: !131)
!131 = !{!132, !159}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !130, file: !22, line: 247, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !22, line: 63, size: 640, align: 64, elements: !135)
!135 = !{!136, !144, !145, !146, !147, !148, !149, !156, !157, !158}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !134, file: !22, line: 64, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !22, line: 56, size: 256, align: 64, elements: !139)
!139 = !{!140, !141, !142, !143}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !138, file: !22, line: 57, baseType: !119, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !138, file: !22, line: 58, baseType: !137, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !138, file: !22, line: 59, baseType: !133, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !22, line: 60, baseType: !21, size: 32, align: 32, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !134, file: !22, line: 65, baseType: !123, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !22, line: 66, baseType: !133, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !134, file: !22, line: 66, baseType: !133, size: 64, align: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !134, file: !22, line: 66, baseType: !133, size: 64, align: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !134, file: !22, line: 67, baseType: !103, size: 64, align: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !134, file: !22, line: 68, baseType: !150, size: 192, align: 64, offset: 384)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !34, line: 42, size: 192, align: 64, elements: !151)
!151 = !{!152, !154, !155}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !150, file: !34, line: 44, baseType: !153, size: 32, align: 32)
!153 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !150, file: !34, line: 46, baseType: !94, size: 64, align: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !150, file: !34, line: 48, baseType: !94, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !134, file: !22, line: 69, baseType: !33, size: 32, align: 32, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !134, file: !22, line: 70, baseType: !113, size: 8, align: 8, offset: 608)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !134, file: !22, line: 71, baseType: !113, size: 8, align: 8, offset: 616)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !130, file: !22, line: 248, baseType: !133, size: 64, align: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !124, file: !22, line: 250, baseType: !161, size: 32, align: 32, offset: 3328)
!161 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !120, file: !22, line: 197, baseType: !119, size: 64, align: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !120, file: !22, line: 199, baseType: !42, size: 32, align: 32, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !120, file: !22, line: 201, baseType: !50, size: 32, align: 32, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !120, file: !22, line: 202, baseType: !54, size: 32, align: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !120, file: !22, line: 203, baseType: !64, size: 32, align: 32, offset: 224)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !120, file: !22, line: 204, baseType: !94, size: 64, align: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !120, file: !22, line: 205, baseType: !94, size: 64, align: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !120, file: !22, line: 206, baseType: !150, size: 192, align: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !120, file: !22, line: 207, baseType: !171, size: 960, align: 64, offset: 576)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !22, line: 107, size: 960, align: 64, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !193}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !171, file: !22, line: 108, baseType: !137, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !171, file: !22, line: 110, baseType: !113, size: 8, align: 8, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !171, file: !22, line: 111, baseType: !74, size: 32, align: 32, offset: 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !171, file: !22, line: 112, baseType: !103, size: 64, align: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !171, file: !22, line: 115, baseType: !94, size: 64, align: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !171, file: !22, line: 116, baseType: !94, size: 64, align: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !171, file: !22, line: 117, baseType: !94, size: 64, align: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !171, file: !22, line: 118, baseType: !94, size: 64, align: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !171, file: !22, line: 119, baseType: !94, size: 64, align: 64, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !171, file: !22, line: 120, baseType: !94, size: 64, align: 64, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !171, file: !22, line: 121, baseType: !94, size: 64, align: 64, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !171, file: !22, line: 122, baseType: !150, size: 192, align: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !171, file: !22, line: 123, baseType: !186, size: 64, align: 64, offset: 832)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !22, line: 80, size: 256, align: 64, elements: !188)
!188 = !{!189, !190, !191, !192}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !22, line: 81, baseType: !186, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !22, line: 82, baseType: !94, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !187, file: !22, line: 83, baseType: !94, size: 64, align: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !187, file: !22, line: 84, baseType: !113, size: 8, align: 8, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !171, file: !22, line: 124, baseType: !194, size: 64, align: 64, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !22, line: 74, size: 192, align: 64, elements: !196)
!196 = !{!197, !198, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !22, line: 75, baseType: !194, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !22, line: 76, baseType: !94, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !195, file: !22, line: 77, baseType: !94, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !120, file: !22, line: 208, baseType: !171, size: 960, align: 64, offset: 1536)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !120, file: !22, line: 209, baseType: !202, size: 64, align: 64, offset: 2496)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !22, line: 151, flags: DIFlagFwdDecl)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !120, file: !22, line: 211, baseType: !205, size: 64, align: 64, offset: 2560)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !22, line: 87, size: 320, align: 64, elements: !207)
!207 = !{!208, !209, !210, !211, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !22, line: 88, baseType: !205, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !22, line: 89, baseType: !94, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !206, file: !22, line: 90, baseType: !94, size: 64, align: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !206, file: !22, line: 91, baseType: !94, size: 64, align: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !206, file: !22, line: 92, baseType: !94, size: 64, align: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !120, file: !22, line: 216, baseType: !214, size: 128, align: 64, offset: 2624)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !22, line: 213, size: 128, align: 64, elements: !215)
!215 = !{!216, !228}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !214, file: !22, line: 215, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !22, line: 142, size: 320, align: 64, elements: !219)
!219 = !{!220, !221, !222, !223}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !218, file: !22, line: 143, baseType: !119, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !218, file: !22, line: 143, baseType: !119, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !218, file: !22, line: 144, baseType: !217, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !218, file: !22, line: 147, baseType: !224, size: 128, align: 64, offset: 192)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !218, file: !22, line: 145, size: 128, align: 64, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !22, line: 146, baseType: !217, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !224, file: !22, line: 146, baseType: !217, size: 64, align: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !214, file: !22, line: 215, baseType: !217, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !120, file: !22, line: 219, baseType: !217, size: 64, align: 64, offset: 2752)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !120, file: !22, line: 220, baseType: !231, size: 64, align: 64, offset: 2816)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !22, line: 134, size: 128, align: 64, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !22, line: 135, baseType: !231, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !22, line: 136, baseType: !94, size: 64, align: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !120, file: !22, line: 231, baseType: !237, size: 64, align: 64, offset: 2880)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !22, line: 231, flags: DIFlagFwdDecl)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !120, file: !22, line: 232, baseType: !240, size: 64, align: 64, offset: 2944)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !241, line: 86, baseType: !242)
!241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !243, line: 131, baseType: !244)
!243 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!244 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !120, file: !22, line: 233, baseType: !113, size: 8, align: 8, offset: 3008)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !120, file: !22, line: 236, baseType: !113, size: 8, align: 8, offset: 3016)
!247 = !{}
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 8192, align: 8, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 1024)
!251 = !{i32 2, !"Dwarf Version", i32 4}
!252 = !{i32 2, !"Debug Info Version", i32 3}
!253 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!254 = distinct !DISubprogram(name: "pkg_spec_init", scope: !91, file: !91, line: 54, type: !255, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !97, !14}
!257 = !DILocalVariable(name: "ps", arg: 1, scope: !254, file: !91, line: 54, type: !97)
!258 = !DIExpression()
!259 = !DILocation(line: 54, column: 32, scope: !254)
!260 = !DILocalVariable(name: "flags", arg: 2, scope: !254, file: !91, line: 54, type: !14)
!261 = !DILocation(line: 54, column: 56, scope: !254)
!262 = !DILocation(line: 56, column: 14, scope: !254)
!263 = !DILocation(line: 56, column: 2, scope: !254)
!264 = !DILocation(line: 56, column: 6, scope: !254)
!265 = !DILocation(line: 56, column: 12, scope: !254)
!266 = !DILocation(line: 58, column: 17, scope: !254)
!267 = !DILocation(line: 58, column: 2, scope: !254)
!268 = !DILocation(line: 59, column: 22, scope: !254)
!269 = !DILocation(line: 59, column: 2, scope: !254)
!270 = !DILocation(line: 60, column: 1, scope: !254)
!271 = distinct !DISubprogram(name: "pkg_spec_blank", scope: !91, file: !91, line: 37, type: !272, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !97}
!274 = !DILocalVariable(name: "ps", arg: 1, scope: !271, file: !91, line: 37, type: !97)
!275 = !DILocation(line: 37, column: 33, scope: !271)
!276 = !DILocation(line: 39, column: 2, scope: !271)
!277 = !DILocation(line: 39, column: 6, scope: !271)
!278 = !DILocation(line: 39, column: 11, scope: !271)
!279 = !DILocation(line: 40, column: 2, scope: !271)
!280 = !DILocation(line: 40, column: 6, scope: !271)
!281 = !DILocation(line: 40, column: 11, scope: !271)
!282 = !DILocation(line: 42, column: 2, scope: !271)
!283 = !DILocation(line: 42, column: 6, scope: !271)
!284 = !DILocation(line: 42, column: 22, scope: !271)
!285 = !DILocation(line: 43, column: 2, scope: !271)
!286 = !DILocation(line: 43, column: 6, scope: !271)
!287 = !DILocation(line: 43, column: 22, scope: !271)
!288 = !DILocation(line: 44, column: 1, scope: !271)
!289 = distinct !DISubprogram(name: "pkg_spec_iter_blank", scope: !91, file: !91, line: 47, type: !272, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!290 = !DILocalVariable(name: "ps", arg: 1, scope: !289, file: !91, line: 47, type: !97)
!291 = !DILocation(line: 47, column: 38, scope: !289)
!292 = !DILocation(line: 49, column: 2, scope: !289)
!293 = !DILocation(line: 49, column: 6, scope: !289)
!294 = !DILocation(line: 49, column: 15, scope: !289)
!295 = !DILocation(line: 50, column: 2, scope: !289)
!296 = !DILocation(line: 50, column: 6, scope: !289)
!297 = !DILocation(line: 50, column: 15, scope: !289)
!298 = !DILocation(line: 51, column: 1, scope: !289)
!299 = !DILocalVariable(name: "ps", arg: 1, scope: !90, file: !91, line: 63, type: !97)
!300 = !DILocation(line: 63, column: 38, scope: !90)
!301 = !DILocalVariable(name: "emsg", scope: !90, file: !91, line: 66, type: !94)
!302 = !DILocation(line: 66, column: 14, scope: !90)
!303 = !DILocation(line: 68, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !90, file: !91, line: 68, column: 6)
!305 = !DILocation(line: 68, column: 11, scope: !304)
!306 = !DILocation(line: 68, column: 27, scope: !304)
!307 = !DILocation(line: 69, column: 34, scope: !304)
!308 = !DILocation(line: 69, column: 38, scope: !304)
!309 = !DILocation(line: 69, column: 14, scope: !304)
!310 = !DILocation(line: 69, column: 12, scope: !304)
!311 = !DILocation(line: 68, column: 6, scope: !312)
!312 = !DILexicalBlockFile(scope: !90, file: !91, discriminator: 1)
!313 = !DILocalVariable(name: "arch_sep", scope: !314, file: !91, line: 70, type: !94)
!314 = distinct !DILexicalBlock(scope: !304, file: !91, line: 69, column: 46)
!315 = !DILocation(line: 70, column: 15, scope: !314)
!316 = !DILocation(line: 75, column: 7, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !91, line: 75, column: 7)
!318 = !DILocation(line: 75, column: 11, scope: !317)
!319 = !DILocation(line: 75, column: 17, scope: !317)
!320 = !DILocation(line: 75, column: 22, scope: !317)
!321 = !DILocation(line: 75, column: 7, scope: !314)
!322 = !DILocation(line: 76, column: 13, scope: !317)
!323 = !DILocation(line: 76, column: 4, scope: !317)
!324 = !DILocation(line: 78, column: 13, scope: !317)
!325 = !DILocation(line: 81, column: 11, scope: !314)
!326 = !DILocation(line: 82, column: 12, scope: !314)
!327 = !DILocation(line: 82, column: 16, scope: !314)
!328 = !DILocation(line: 82, column: 22, scope: !314)
!329 = !DILocation(line: 82, column: 32, scope: !314)
!330 = !DILocation(line: 82, column: 36, scope: !314)
!331 = !DILocation(line: 82, column: 42, scope: !314)
!332 = !DILocation(line: 82, column: 48, scope: !314)
!333 = !DILocation(line: 80, column: 3, scope: !314)
!334 = !DILocation(line: 83, column: 3, scope: !314)
!335 = !DILocation(line: 86, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !90, file: !91, line: 86, column: 6)
!337 = !DILocation(line: 86, column: 12, scope: !336)
!338 = !DILocation(line: 86, column: 28, scope: !336)
!339 = !DILocation(line: 86, column: 31, scope: !340)
!340 = !DILexicalBlockFile(scope: !336, file: !91, discriminator: 1)
!341 = !DILocation(line: 86, column: 35, scope: !340)
!342 = !DILocation(line: 86, column: 41, scope: !340)
!343 = !DILocation(line: 86, column: 46, scope: !340)
!344 = !DILocation(line: 86, column: 68, scope: !340)
!345 = !DILocation(line: 87, column: 6, scope: !336)
!346 = !DILocation(line: 87, column: 10, scope: !336)
!347 = !DILocation(line: 87, column: 16, scope: !336)
!348 = !DILocation(line: 87, column: 21, scope: !336)
!349 = !DILocation(line: 86, column: 6, scope: !350)
!350 = !DILexicalBlockFile(scope: !90, file: !91, discriminator: 2)
!351 = !DILocation(line: 88, column: 36, scope: !352)
!352 = distinct !DILexicalBlock(scope: !336, file: !91, line: 87, column: 41)
!353 = !DILocation(line: 88, column: 40, scope: !352)
!354 = !DILocation(line: 88, column: 46, scope: !352)
!355 = !DILocation(line: 88, column: 10, scope: !352)
!356 = !DILocation(line: 88, column: 8, scope: !352)
!357 = !DILocation(line: 90, column: 11, scope: !352)
!358 = !DILocation(line: 91, column: 12, scope: !352)
!359 = !DILocation(line: 91, column: 16, scope: !352)
!360 = !DILocation(line: 91, column: 22, scope: !352)
!361 = !DILocation(line: 91, column: 26, scope: !352)
!362 = !DILocation(line: 91, column: 32, scope: !352)
!363 = !DILocation(line: 91, column: 38, scope: !352)
!364 = !DILocation(line: 89, column: 3, scope: !352)
!365 = !DILocation(line: 92, column: 3, scope: !352)
!366 = !DILocation(line: 97, column: 7, scope: !367)
!367 = distinct !DILexicalBlock(scope: !90, file: !91, line: 97, column: 6)
!368 = !DILocation(line: 97, column: 11, scope: !367)
!369 = !DILocation(line: 97, column: 27, scope: !367)
!370 = !DILocation(line: 97, column: 30, scope: !371)
!371 = !DILexicalBlockFile(scope: !367, file: !91, discriminator: 1)
!372 = !DILocation(line: 97, column: 34, scope: !371)
!373 = !DILocation(line: 97, column: 40, scope: !371)
!374 = !DILocation(line: 97, column: 6, scope: !371)
!375 = !DILocalVariable(name: "set", scope: !376, file: !91, line: 98, type: !123)
!376 = distinct !DILexicalBlock(scope: !367, file: !91, line: 97, column: 64)
!377 = !DILocation(line: 98, column: 18, scope: !376)
!378 = !DILocation(line: 100, column: 27, scope: !376)
!379 = !DILocation(line: 100, column: 31, scope: !376)
!380 = !DILocation(line: 100, column: 9, scope: !376)
!381 = !DILocation(line: 100, column: 7, scope: !376)
!382 = !DILocation(line: 103, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !376, file: !91, line: 103, column: 7)
!384 = !DILocation(line: 103, column: 11, scope: !383)
!385 = !DILocation(line: 103, column: 17, scope: !383)
!386 = !DILocation(line: 103, column: 22, scope: !383)
!387 = !DILocation(line: 103, column: 40, scope: !383)
!388 = !DILocation(line: 104, column: 34, scope: !383)
!389 = !DILocation(line: 104, column: 7, scope: !383)
!390 = !DILocation(line: 104, column: 39, scope: !383)
!391 = !DILocation(line: 103, column: 7, scope: !392)
!392 = !DILexicalBlockFile(scope: !376, file: !91, discriminator: 1)
!393 = !DILocation(line: 106, column: 12, scope: !394)
!394 = distinct !DILexicalBlock(scope: !383, file: !91, line: 104, column: 44)
!395 = !DILocation(line: 107, column: 46, scope: !394)
!396 = !DILocation(line: 107, column: 50, scope: !394)
!397 = !DILocation(line: 105, column: 4, scope: !394)
!398 = !DILocation(line: 108, column: 4, scope: !394)
!399 = !DILocation(line: 110, column: 2, scope: !376)
!400 = !DILocation(line: 112, column: 2, scope: !90)
!401 = !DILocation(line: 113, column: 1, scope: !90)
!402 = distinct !DISubprogram(name: "pkg_spec_set", scope: !91, file: !91, line: 135, type: !403, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!403 = !DISubroutineType(types: !404)
!404 = !{!94, !97, !94, !94}
!405 = !DILocalVariable(name: "ps", arg: 1, scope: !402, file: !91, line: 135, type: !97)
!406 = !DILocation(line: 135, column: 31, scope: !402)
!407 = !DILocalVariable(name: "pkgname", arg: 2, scope: !402, file: !91, line: 135, type: !94)
!408 = !DILocation(line: 135, column: 47, scope: !402)
!409 = !DILocalVariable(name: "archname", arg: 3, scope: !402, file: !91, line: 135, type: !94)
!410 = !DILocation(line: 135, column: 68, scope: !402)
!411 = !DILocation(line: 137, column: 23, scope: !402)
!412 = !DILocation(line: 137, column: 36, scope: !402)
!413 = !DILocation(line: 137, column: 27, scope: !402)
!414 = !DILocation(line: 137, column: 46, scope: !402)
!415 = !DILocation(line: 137, column: 9, scope: !416)
!416 = !DILexicalBlockFile(scope: !402, file: !91, discriminator: 1)
!417 = !DILocation(line: 137, column: 2, scope: !402)
!418 = distinct !DISubprogram(name: "pkg_spec_prep", scope: !91, file: !91, line: 116, type: !419, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!419 = !DISubroutineType(types: !420)
!420 = !{!94, !97, !101, !94}
!421 = !DILocalVariable(name: "ps", arg: 1, scope: !418, file: !91, line: 116, type: !97)
!422 = !DILocation(line: 116, column: 32, scope: !418)
!423 = !DILocalVariable(name: "pkgname", arg: 2, scope: !418, file: !91, line: 116, type: !101)
!424 = !DILocation(line: 116, column: 42, scope: !418)
!425 = !DILocalVariable(name: "archname", arg: 3, scope: !418, file: !91, line: 116, type: !94)
!426 = !DILocation(line: 116, column: 63, scope: !418)
!427 = !DILocation(line: 118, column: 13, scope: !418)
!428 = !DILocation(line: 118, column: 2, scope: !418)
!429 = !DILocation(line: 118, column: 6, scope: !418)
!430 = !DILocation(line: 118, column: 11, scope: !418)
!431 = !DILocation(line: 119, column: 28, scope: !418)
!432 = !DILocation(line: 119, column: 13, scope: !418)
!433 = !DILocation(line: 119, column: 2, scope: !418)
!434 = !DILocation(line: 119, column: 6, scope: !418)
!435 = !DILocation(line: 119, column: 11, scope: !418)
!436 = !DILocation(line: 121, column: 2, scope: !418)
!437 = !DILocation(line: 121, column: 6, scope: !418)
!438 = !DILocation(line: 121, column: 22, scope: !418)
!439 = !DILocation(line: 122, column: 2, scope: !418)
!440 = !DILocation(line: 122, column: 6, scope: !418)
!441 = !DILocation(line: 122, column: 22, scope: !418)
!442 = !DILocation(line: 125, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !418, file: !91, line: 125, column: 6)
!444 = !DILocation(line: 125, column: 11, scope: !443)
!445 = !DILocation(line: 125, column: 17, scope: !443)
!446 = !DILocation(line: 125, column: 38, scope: !443)
!447 = !DILocation(line: 125, column: 49, scope: !448)
!448 = !DILexicalBlockFile(scope: !443, file: !91, discriminator: 1)
!449 = !DILocation(line: 125, column: 53, scope: !448)
!450 = !DILocation(line: 125, column: 41, scope: !448)
!451 = !DILocation(line: 125, column: 6, scope: !448)
!452 = !DILocation(line: 126, column: 3, scope: !443)
!453 = !DILocation(line: 126, column: 7, scope: !443)
!454 = !DILocation(line: 126, column: 23, scope: !443)
!455 = !DILocation(line: 128, column: 7, scope: !456)
!456 = distinct !DILexicalBlock(scope: !418, file: !91, line: 128, column: 6)
!457 = !DILocation(line: 128, column: 11, scope: !456)
!458 = !DILocation(line: 128, column: 17, scope: !456)
!459 = !DILocation(line: 128, column: 38, scope: !456)
!460 = !DILocation(line: 128, column: 49, scope: !461)
!461 = !DILexicalBlockFile(scope: !456, file: !91, discriminator: 1)
!462 = !DILocation(line: 128, column: 53, scope: !461)
!463 = !DILocation(line: 128, column: 59, scope: !461)
!464 = !DILocation(line: 128, column: 41, scope: !461)
!465 = !DILocation(line: 128, column: 6, scope: !461)
!466 = !DILocation(line: 129, column: 3, scope: !456)
!467 = !DILocation(line: 129, column: 7, scope: !456)
!468 = !DILocation(line: 129, column: 23, scope: !456)
!469 = !DILocation(line: 131, column: 29, scope: !418)
!470 = !DILocation(line: 131, column: 9, scope: !418)
!471 = !DILocation(line: 131, column: 2, scope: !418)
!472 = distinct !DISubprogram(name: "pkg_spec_parse", scope: !91, file: !91, line: 141, type: !473, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!473 = !DISubroutineType(types: !474)
!474 = !{!94, !97, !94}
!475 = !DILocalVariable(name: "ps", arg: 1, scope: !472, file: !91, line: 141, type: !97)
!476 = !DILocation(line: 141, column: 33, scope: !472)
!477 = !DILocalVariable(name: "str", arg: 2, scope: !472, file: !91, line: 141, type: !94)
!478 = !DILocation(line: 141, column: 49, scope: !472)
!479 = !DILocalVariable(name: "pkgname", scope: !472, file: !91, line: 143, type: !101)
!480 = !DILocation(line: 143, column: 8, scope: !472)
!481 = !DILocalVariable(name: "archname", scope: !472, file: !91, line: 143, type: !101)
!482 = !DILocation(line: 143, column: 18, scope: !472)
!483 = !DILocation(line: 145, column: 20, scope: !472)
!484 = !DILocation(line: 145, column: 13, scope: !472)
!485 = !DILocation(line: 145, column: 11, scope: !472)
!486 = !DILocation(line: 146, column: 6, scope: !487)
!487 = distinct !DILexicalBlock(scope: !472, file: !91, line: 146, column: 6)
!488 = !DILocation(line: 146, column: 15, scope: !487)
!489 = !DILocation(line: 146, column: 6, scope: !472)
!490 = !DILocation(line: 147, column: 22, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !91, line: 146, column: 23)
!492 = !DILocation(line: 147, column: 13, scope: !491)
!493 = !DILocation(line: 147, column: 11, scope: !491)
!494 = !DILocation(line: 148, column: 2, scope: !491)
!495 = !DILocation(line: 149, column: 23, scope: !496)
!496 = distinct !DILexicalBlock(scope: !487, file: !91, line: 148, column: 9)
!497 = !DILocation(line: 149, column: 28, scope: !496)
!498 = !DILocation(line: 149, column: 39, scope: !496)
!499 = !DILocation(line: 149, column: 37, scope: !496)
!500 = !DILocation(line: 149, column: 13, scope: !496)
!501 = !DILocation(line: 149, column: 11, scope: !496)
!502 = !DILocation(line: 150, column: 11, scope: !496)
!503 = !DILocation(line: 153, column: 23, scope: !472)
!504 = !DILocation(line: 153, column: 27, scope: !472)
!505 = !DILocation(line: 153, column: 36, scope: !472)
!506 = !DILocation(line: 153, column: 9, scope: !472)
!507 = !DILocation(line: 153, column: 2, scope: !472)
!508 = distinct !DISubprogram(name: "pkg_spec_match_pkg", scope: !91, file: !91, line: 187, type: !509, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!509 = !DISubroutineType(types: !510)
!510 = !{!113, !97, !119, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!512 = !DILocalVariable(name: "ps", arg: 1, scope: !508, file: !91, line: 187, type: !97)
!513 = !DILocation(line: 187, column: 37, scope: !508)
!514 = !DILocalVariable(name: "pkg", arg: 2, scope: !508, file: !91, line: 187, type: !119)
!515 = !DILocation(line: 187, column: 57, scope: !508)
!516 = !DILocalVariable(name: "pkgbin", arg: 3, scope: !508, file: !91, line: 188, type: !511)
!517 = !DILocation(line: 188, column: 35, scope: !508)
!518 = !DILocation(line: 190, column: 30, scope: !508)
!519 = !DILocation(line: 190, column: 34, scope: !508)
!520 = !DILocation(line: 190, column: 39, scope: !508)
!521 = !DILocation(line: 190, column: 44, scope: !508)
!522 = !DILocation(line: 190, column: 10, scope: !508)
!523 = !DILocation(line: 190, column: 50, scope: !508)
!524 = !DILocation(line: 191, column: 30, scope: !508)
!525 = !DILocation(line: 191, column: 34, scope: !508)
!526 = !DILocation(line: 191, column: 39, scope: !508)
!527 = !DILocation(line: 191, column: 47, scope: !508)
!528 = !DILocation(line: 191, column: 10, scope: !508)
!529 = !DILocation(line: 190, column: 2, scope: !530)
!530 = !DILexicalBlockFile(scope: !508, file: !91, discriminator: 1)
!531 = distinct !DISubprogram(name: "pkg_spec_match_name", scope: !91, file: !91, line: 157, type: !532, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!532 = !DISubroutineType(types: !533)
!533 = !{!113, !97, !94}
!534 = !DILocalVariable(name: "ps", arg: 1, scope: !531, file: !91, line: 157, type: !97)
!535 = !DILocation(line: 157, column: 38, scope: !531)
!536 = !DILocalVariable(name: "name", arg: 2, scope: !531, file: !91, line: 157, type: !94)
!537 = !DILocation(line: 157, column: 54, scope: !531)
!538 = !DILocation(line: 159, column: 6, scope: !539)
!539 = distinct !DILexicalBlock(scope: !531, file: !91, line: 159, column: 6)
!540 = !DILocation(line: 159, column: 10, scope: !539)
!541 = !DILocation(line: 159, column: 6, scope: !531)
!542 = !DILocation(line: 160, column: 19, scope: !539)
!543 = !DILocation(line: 160, column: 23, scope: !539)
!544 = !DILocation(line: 160, column: 29, scope: !539)
!545 = !DILocation(line: 160, column: 11, scope: !539)
!546 = !DILocation(line: 160, column: 38, scope: !539)
!547 = !DILocation(line: 160, column: 3, scope: !539)
!548 = !DILocation(line: 162, column: 18, scope: !539)
!549 = !DILocation(line: 162, column: 22, scope: !539)
!550 = !DILocation(line: 162, column: 28, scope: !539)
!551 = !DILocation(line: 162, column: 11, scope: !539)
!552 = !DILocation(line: 162, column: 34, scope: !539)
!553 = !DILocation(line: 162, column: 3, scope: !539)
!554 = !DILocation(line: 163, column: 1, scope: !531)
!555 = distinct !DISubprogram(name: "pkg_spec_match_arch", scope: !91, file: !91, line: 166, type: !556, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!556 = !DISubroutineType(types: !557)
!557 = !{!113, !97, !119, !103}
!558 = !DILocalVariable(name: "ps", arg: 1, scope: !555, file: !91, line: 166, type: !97)
!559 = !DILocation(line: 166, column: 38, scope: !555)
!560 = !DILocalVariable(name: "pkg", arg: 2, scope: !555, file: !91, line: 166, type: !119)
!561 = !DILocation(line: 166, column: 58, scope: !555)
!562 = !DILocalVariable(name: "arch", arg: 3, scope: !555, file: !91, line: 167, type: !103)
!563 = !DILocation(line: 167, column: 45, scope: !555)
!564 = !DILocation(line: 169, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !555, file: !91, line: 169, column: 6)
!566 = !DILocation(line: 169, column: 10, scope: !565)
!567 = !DILocation(line: 169, column: 6, scope: !555)
!568 = !DILocation(line: 170, column: 19, scope: !565)
!569 = !DILocation(line: 170, column: 23, scope: !565)
!570 = !DILocation(line: 170, column: 29, scope: !565)
!571 = !DILocation(line: 170, column: 35, scope: !565)
!572 = !DILocation(line: 170, column: 41, scope: !565)
!573 = !DILocation(line: 170, column: 11, scope: !565)
!574 = !DILocation(line: 170, column: 50, scope: !565)
!575 = !DILocation(line: 170, column: 3, scope: !565)
!576 = !DILocation(line: 171, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !565, file: !91, line: 171, column: 11)
!578 = !DILocation(line: 171, column: 15, scope: !577)
!579 = !DILocation(line: 171, column: 21, scope: !577)
!580 = !DILocation(line: 171, column: 26, scope: !577)
!581 = !DILocation(line: 171, column: 11, scope: !565)
!582 = !DILocation(line: 172, column: 11, scope: !577)
!583 = !DILocation(line: 172, column: 15, scope: !577)
!584 = !DILocation(line: 172, column: 23, scope: !577)
!585 = !DILocation(line: 172, column: 20, scope: !577)
!586 = !DILocation(line: 172, column: 3, scope: !577)
!587 = !DILocation(line: 175, column: 10, scope: !555)
!588 = !DILocation(line: 175, column: 14, scope: !555)
!589 = !DILocation(line: 175, column: 20, scope: !555)
!590 = !DILocation(line: 175, column: 2, scope: !555)
!591 = !DILocation(line: 177, column: 37, scope: !592)
!592 = distinct !DILexicalBlock(scope: !555, file: !91, line: 175, column: 42)
!593 = !DILocation(line: 177, column: 42, scope: !592)
!594 = !DILocation(line: 177, column: 10, scope: !592)
!595 = !DILocation(line: 177, column: 47, scope: !592)
!596 = !DILocation(line: 177, column: 3, scope: !592)
!597 = !DILocation(line: 179, column: 3, scope: !592)
!598 = !DILocation(line: 181, column: 63, scope: !592)
!599 = !DILocation(line: 181, column: 67, scope: !592)
!600 = !DILocation(line: 181, column: 73, scope: !592)
!601 = !DILocation(line: 181, column: 3, scope: !592)
!602 = !DILocation(line: 184, column: 1, scope: !555)
!603 = distinct !DISubprogram(name: "pkg_spec_parse_pkg", scope: !91, file: !91, line: 204, type: !604, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!604 = !DISubroutineType(types: !605)
!605 = !{!119, !94, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64, align: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !81, line: 42, size: 128, align: 64, elements: !608)
!608 = !{!609, !610, !611}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !607, file: !81, line: 43, baseType: !80, size: 32, align: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !607, file: !81, line: 45, baseType: !161, size: 32, align: 32, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !607, file: !81, line: 46, baseType: !101, size: 64, align: 64, offset: 64)
!612 = !DILocalVariable(name: "str", arg: 1, scope: !603, file: !91, line: 204, type: !94)
!613 = !DILocation(line: 204, column: 32, scope: !603)
!614 = !DILocalVariable(name: "err", arg: 2, scope: !603, file: !91, line: 204, type: !606)
!615 = !DILocation(line: 204, column: 56, scope: !603)
!616 = !DILocalVariable(name: "ps", scope: !603, file: !91, line: 206, type: !98)
!617 = !DILocation(line: 206, column: 18, scope: !603)
!618 = !DILocalVariable(name: "pkg", scope: !603, file: !91, line: 207, type: !119)
!619 = !DILocation(line: 207, column: 18, scope: !603)
!620 = !DILocalVariable(name: "emsg", scope: !603, file: !91, line: 208, type: !94)
!621 = !DILocation(line: 208, column: 14, scope: !603)
!622 = !DILocation(line: 210, column: 2, scope: !603)
!623 = !DILocation(line: 211, column: 29, scope: !603)
!624 = !DILocation(line: 211, column: 9, scope: !603)
!625 = !DILocation(line: 211, column: 7, scope: !603)
!626 = !DILocation(line: 212, column: 6, scope: !627)
!627 = distinct !DILexicalBlock(scope: !603, file: !91, line: 212, column: 6)
!628 = !DILocation(line: 212, column: 6, scope: !603)
!629 = !DILocation(line: 213, column: 18, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !91, line: 212, column: 12)
!631 = !DILocation(line: 213, column: 29, scope: !630)
!632 = !DILocation(line: 213, column: 3, scope: !630)
!633 = !DILocation(line: 214, column: 7, scope: !630)
!634 = !DILocation(line: 215, column: 2, scope: !630)
!635 = !DILocation(line: 216, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !627, file: !91, line: 215, column: 9)
!637 = !DILocation(line: 216, column: 7, scope: !636)
!638 = !DILocation(line: 218, column: 2, scope: !603)
!639 = !DILocation(line: 220, column: 9, scope: !603)
!640 = !DILocation(line: 220, column: 2, scope: !603)
!641 = distinct !DISubprogram(name: "pkg_spec_get_pkg", scope: !91, file: !91, line: 195, type: !642, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!642 = !DISubroutineType(types: !643)
!643 = !{!119, !97}
!644 = !DILocalVariable(name: "ps", arg: 1, scope: !641, file: !91, line: 195, type: !97)
!645 = !DILocation(line: 195, column: 35, scope: !641)
!646 = !DILocation(line: 197, column: 6, scope: !647)
!647 = distinct !DILexicalBlock(scope: !641, file: !91, line: 197, column: 6)
!648 = !DILocation(line: 197, column: 10, scope: !647)
!649 = !DILocation(line: 197, column: 16, scope: !647)
!650 = !DILocation(line: 197, column: 21, scope: !647)
!651 = !DILocation(line: 197, column: 6, scope: !641)
!652 = !DILocation(line: 198, column: 34, scope: !647)
!653 = !DILocation(line: 198, column: 38, scope: !647)
!654 = !DILocation(line: 198, column: 10, scope: !647)
!655 = !DILocation(line: 198, column: 3, scope: !647)
!656 = !DILocation(line: 200, column: 28, scope: !647)
!657 = !DILocation(line: 200, column: 32, scope: !647)
!658 = !DILocation(line: 200, column: 38, scope: !647)
!659 = !DILocation(line: 200, column: 42, scope: !647)
!660 = !DILocation(line: 200, column: 10, scope: !647)
!661 = !DILocation(line: 200, column: 3, scope: !647)
!662 = !DILocation(line: 201, column: 1, scope: !641)
!663 = distinct !DISubprogram(name: "pkg_spec_destroy", scope: !91, file: !91, line: 298, type: !272, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!664 = !DILocalVariable(name: "ps", arg: 1, scope: !663, file: !91, line: 298, type: !97)
!665 = !DILocation(line: 298, column: 35, scope: !663)
!666 = !DILocation(line: 300, column: 7, scope: !663)
!667 = !DILocation(line: 300, column: 11, scope: !663)
!668 = !DILocation(line: 300, column: 2, scope: !663)
!669 = !DILocation(line: 301, column: 17, scope: !663)
!670 = !DILocation(line: 301, column: 2, scope: !663)
!671 = !DILocation(line: 302, column: 24, scope: !663)
!672 = !DILocation(line: 302, column: 2, scope: !663)
!673 = !DILocation(line: 303, column: 1, scope: !663)
!674 = distinct !DISubprogram(name: "pkg_spec_find_pkg", scope: !91, file: !91, line: 224, type: !675, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!675 = !DISubroutineType(types: !676)
!676 = !{!119, !94, !94, !606}
!677 = !DILocalVariable(name: "pkgname", arg: 1, scope: !674, file: !91, line: 224, type: !94)
!678 = !DILocation(line: 224, column: 31, scope: !674)
!679 = !DILocalVariable(name: "archname", arg: 2, scope: !674, file: !91, line: 224, type: !94)
!680 = !DILocation(line: 224, column: 52, scope: !674)
!681 = !DILocalVariable(name: "err", arg: 3, scope: !674, file: !91, line: 225, type: !606)
!682 = !DILocation(line: 225, column: 38, scope: !674)
!683 = !DILocalVariable(name: "ps", scope: !674, file: !91, line: 227, type: !98)
!684 = !DILocation(line: 227, column: 18, scope: !674)
!685 = !DILocalVariable(name: "pkg", scope: !674, file: !91, line: 228, type: !119)
!686 = !DILocation(line: 228, column: 18, scope: !674)
!687 = !DILocalVariable(name: "emsg", scope: !674, file: !91, line: 229, type: !94)
!688 = !DILocation(line: 229, column: 14, scope: !674)
!689 = !DILocation(line: 231, column: 2, scope: !674)
!690 = !DILocation(line: 232, column: 27, scope: !674)
!691 = !DILocation(line: 232, column: 36, scope: !674)
!692 = !DILocation(line: 232, column: 9, scope: !674)
!693 = !DILocation(line: 232, column: 7, scope: !674)
!694 = !DILocation(line: 233, column: 6, scope: !695)
!695 = distinct !DILexicalBlock(scope: !674, file: !91, line: 233, column: 6)
!696 = !DILocation(line: 233, column: 6, scope: !674)
!697 = !DILocation(line: 234, column: 18, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !91, line: 233, column: 12)
!699 = !DILocation(line: 234, column: 29, scope: !698)
!700 = !DILocation(line: 234, column: 3, scope: !698)
!701 = !DILocation(line: 235, column: 7, scope: !698)
!702 = !DILocation(line: 236, column: 2, scope: !698)
!703 = !DILocation(line: 237, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !695, file: !91, line: 236, column: 9)
!705 = !DILocation(line: 237, column: 7, scope: !704)
!706 = !DILocation(line: 239, column: 2, scope: !674)
!707 = !DILocation(line: 241, column: 9, scope: !674)
!708 = !DILocation(line: 241, column: 2, scope: !674)
!709 = distinct !DISubprogram(name: "pkg_spec_iter_init", scope: !91, file: !91, line: 245, type: !272, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!710 = !DILocalVariable(name: "ps", arg: 1, scope: !709, file: !91, line: 245, type: !97)
!711 = !DILocation(line: 245, column: 37, scope: !709)
!712 = !DILocation(line: 247, column: 6, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !91, line: 247, column: 6)
!714 = !DILocation(line: 247, column: 10, scope: !713)
!715 = !DILocation(line: 247, column: 6, scope: !709)
!716 = !DILocation(line: 248, column: 18, scope: !713)
!717 = !DILocation(line: 248, column: 3, scope: !713)
!718 = !DILocation(line: 248, column: 7, scope: !713)
!719 = !DILocation(line: 248, column: 16, scope: !713)
!720 = !DILocation(line: 250, column: 37, scope: !713)
!721 = !DILocation(line: 250, column: 41, scope: !713)
!722 = !DILocation(line: 250, column: 19, scope: !713)
!723 = !DILocation(line: 250, column: 48, scope: !713)
!724 = !DILocation(line: 250, column: 3, scope: !713)
!725 = !DILocation(line: 250, column: 7, scope: !713)
!726 = !DILocation(line: 250, column: 16, scope: !713)
!727 = !DILocation(line: 251, column: 1, scope: !709)
!728 = distinct !DISubprogram(name: "pkg_spec_iter_next_pkg", scope: !91, file: !91, line: 282, type: !642, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!729 = !DILocalVariable(name: "ps", arg: 1, scope: !728, file: !91, line: 282, type: !97)
!730 = !DILocation(line: 282, column: 41, scope: !728)
!731 = !DILocation(line: 284, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !91, line: 284, column: 6)
!733 = !DILocation(line: 284, column: 10, scope: !732)
!734 = !DILocation(line: 284, column: 6, scope: !728)
!735 = !DILocation(line: 285, column: 37, scope: !732)
!736 = !DILocation(line: 285, column: 10, scope: !732)
!737 = !DILocation(line: 285, column: 3, scope: !732)
!738 = !DILocation(line: 287, column: 37, scope: !732)
!739 = !DILocation(line: 287, column: 10, scope: !732)
!740 = !DILocation(line: 287, column: 3, scope: !732)
!741 = !DILocation(line: 288, column: 1, scope: !728)
!742 = distinct !DISubprogram(name: "pkg_spec_iter_next_pkgname", scope: !91, file: !91, line: 254, type: !642, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!743 = !DILocalVariable(name: "ps", arg: 1, scope: !742, file: !91, line: 254, type: !97)
!744 = !DILocation(line: 254, column: 45, scope: !742)
!745 = !DILocalVariable(name: "pkg", scope: !742, file: !91, line: 256, type: !119)
!746 = !DILocation(line: 256, column: 18, scope: !742)
!747 = !DILocation(line: 258, column: 2, scope: !742)
!748 = !DILocation(line: 258, column: 39, scope: !749)
!749 = !DILexicalBlockFile(scope: !742, file: !91, discriminator: 1)
!750 = !DILocation(line: 258, column: 43, scope: !749)
!751 = !DILocation(line: 258, column: 16, scope: !749)
!752 = !DILocation(line: 258, column: 14, scope: !749)
!753 = !DILocation(line: 258, column: 2, scope: !749)
!754 = !DILocation(line: 259, column: 26, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !91, line: 259, column: 7)
!756 = distinct !DILexicalBlock(scope: !742, file: !91, line: 258, column: 55)
!757 = !DILocation(line: 259, column: 30, scope: !755)
!758 = !DILocation(line: 259, column: 36, scope: !755)
!759 = !DILocation(line: 259, column: 41, scope: !755)
!760 = !DILocation(line: 259, column: 7, scope: !755)
!761 = !DILocation(line: 259, column: 7, scope: !756)
!762 = !DILocation(line: 260, column: 11, scope: !755)
!763 = !DILocation(line: 260, column: 4, scope: !755)
!764 = !DILocation(line: 258, column: 2, scope: !765)
!765 = !DILexicalBlockFile(scope: !742, file: !91, discriminator: 2)
!766 = distinct !{!766, !747}
!767 = !DILocation(line: 263, column: 2, scope: !742)
!768 = !DILocation(line: 264, column: 1, scope: !742)
!769 = distinct !DISubprogram(name: "pkg_spec_iter_next_pkgarch", scope: !91, file: !91, line: 267, type: !642, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!770 = !DILocalVariable(name: "ps", arg: 1, scope: !769, file: !91, line: 267, type: !97)
!771 = !DILocation(line: 267, column: 45, scope: !769)
!772 = !DILocalVariable(name: "pkg", scope: !769, file: !91, line: 269, type: !119)
!773 = !DILocation(line: 269, column: 18, scope: !769)
!774 = !DILocation(line: 271, column: 2, scope: !769)
!775 = !DILocation(line: 271, column: 16, scope: !776)
!776 = !DILexicalBlockFile(scope: !769, file: !91, discriminator: 1)
!777 = !DILocation(line: 271, column: 20, scope: !776)
!778 = !DILocation(line: 271, column: 14, scope: !776)
!779 = !DILocation(line: 271, column: 2, scope: !776)
!780 = !DILocation(line: 272, column: 18, scope: !781)
!781 = distinct !DILexicalBlock(scope: !769, file: !91, line: 271, column: 31)
!782 = !DILocation(line: 272, column: 23, scope: !781)
!783 = !DILocation(line: 272, column: 3, scope: !781)
!784 = !DILocation(line: 272, column: 7, scope: !781)
!785 = !DILocation(line: 272, column: 16, scope: !781)
!786 = !DILocation(line: 274, column: 27, scope: !787)
!787 = distinct !DILexicalBlock(scope: !781, file: !91, line: 274, column: 7)
!788 = !DILocation(line: 274, column: 31, scope: !787)
!789 = !DILocation(line: 274, column: 36, scope: !787)
!790 = !DILocation(line: 274, column: 41, scope: !787)
!791 = !DILocation(line: 274, column: 51, scope: !787)
!792 = !DILocation(line: 274, column: 7, scope: !787)
!793 = !DILocation(line: 274, column: 7, scope: !781)
!794 = !DILocation(line: 275, column: 11, scope: !787)
!795 = !DILocation(line: 275, column: 4, scope: !787)
!796 = !DILocation(line: 271, column: 2, scope: !797)
!797 = !DILexicalBlockFile(scope: !769, file: !91, discriminator: 2)
!798 = distinct !{!798, !774}
!799 = !DILocation(line: 278, column: 2, scope: !769)
!800 = !DILocation(line: 279, column: 1, scope: !769)
!801 = distinct !DISubprogram(name: "pkg_spec_iter_destroy", scope: !91, file: !91, line: 291, type: !272, isLocal: false, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!802 = !DILocalVariable(name: "ps", arg: 1, scope: !801, file: !91, line: 291, type: !97)
!803 = !DILocation(line: 291, column: 40, scope: !801)
!804 = !DILocation(line: 293, column: 21, scope: !801)
!805 = !DILocation(line: 293, column: 25, scope: !801)
!806 = !DILocation(line: 293, column: 2, scope: !801)
!807 = !DILocation(line: 294, column: 22, scope: !801)
!808 = !DILocation(line: 294, column: 2, scope: !801)
!809 = !DILocation(line: 295, column: 1, scope: !801)
