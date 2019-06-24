; ModuleID = './[inter]lib--dpkg--depcon.o.i'
source_filename = "./[inter]lib--dpkg--depcon.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pkgbin = type { %struct.dependency*, i8, i32, %struct.dpkg_arch*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.dpkg_version, %struct.conffile*, %struct.arbitraryfield* }
%struct.dependency = type { %struct.pkginfo*, %struct.dependency*, %struct.deppossi*, i32 }
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.1, i32 }
%struct.anon.1 = type { %struct.deppossi*, %struct.deppossi* }
%struct.perpackagestate = type opaque
%struct.archivedetails = type { %struct.archivedetails*, i8*, i8*, i8*, i8* }
%struct.anon = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigaw = type { %struct.pkginfo*, %struct.pkginfo*, %struct.trigaw*, %struct.anon.0 }
%struct.anon.0 = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigpend = type { %struct.trigpend*, i8* }
%struct.fsys_namenode_list = type opaque
%struct.dpkg_arch = type { %struct.dpkg_arch*, i8*, i32 }
%struct.dpkg_version = type { i32, i8*, i8* }
%struct.conffile = type { %struct.conffile*, i8*, i8*, i8 }
%struct.arbitraryfield = type { %struct.arbitraryfield*, i8*, i8* }
%struct.deppossi = type { %struct.dependency*, %struct.pkgset*, %struct.deppossi*, %struct.deppossi*, %struct.deppossi*, %struct.dpkg_arch*, %struct.dpkg_version, i32, i8, i8 }

; Function Attrs: nounwind uwtable
define zeroext i1 @versionsatisfied(%struct.pkgbin*, %struct.deppossi*) #0 !dbg !76 {
  %3 = alloca %struct.pkgbin*, align 8
  %4 = alloca %struct.deppossi*, align 8
  store %struct.pkgbin* %0, %struct.pkgbin** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %3, metadata !222, metadata !223), !dbg !224
  store %struct.deppossi* %1, %struct.deppossi** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %4, metadata !225, metadata !223), !dbg !226
  %5 = load %struct.pkgbin*, %struct.pkgbin** %3, align 8, !dbg !227
  %6 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %5, i32 0, i32 11, !dbg !228
  %7 = load %struct.deppossi*, %struct.deppossi** %4, align 8, !dbg !229
  %8 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %7, i32 0, i32 7, !dbg !230
  %9 = load i32, i32* %8, align 8, !dbg !230
  %10 = load %struct.deppossi*, %struct.deppossi** %4, align 8, !dbg !231
  %11 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %10, i32 0, i32 6, !dbg !232
  %12 = call zeroext i1 @dpkg_version_relate(%struct.dpkg_version* %6, i32 %9, %struct.dpkg_version* %11), !dbg !233
  ret i1 %12, !dbg !234
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare zeroext i1 @dpkg_version_relate(%struct.dpkg_version*, i32, %struct.dpkg_version*) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @deparchsatisfied(%struct.pkgbin*, %struct.dpkg_arch*, %struct.deppossi*) #0 !dbg !235 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.pkgbin*, align 8
  %6 = alloca %struct.dpkg_arch*, align 8
  %7 = alloca %struct.deppossi*, align 8
  %8 = alloca %struct.dpkg_arch*, align 8
  %9 = alloca %struct.dpkg_arch*, align 8
  store %struct.pkgbin* %0, %struct.pkgbin** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %5, metadata !238, metadata !223), !dbg !239
  store %struct.dpkg_arch* %1, %struct.dpkg_arch** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %6, metadata !240, metadata !223), !dbg !241
  store %struct.deppossi* %2, %struct.deppossi** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %7, metadata !242, metadata !223), !dbg !243
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %8, metadata !244, metadata !223), !dbg !245
  call void @llvm.dbg.declare(metadata %struct.dpkg_arch** %9, metadata !246, metadata !223), !dbg !247
  %10 = load %struct.deppossi*, %struct.deppossi** %7, align 8, !dbg !248
  %11 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %10, i32 0, i32 8, !dbg !250
  %12 = load i8, i8* %11, align 4, !dbg !250
  %13 = trunc i8 %12 to i1, !dbg !250
  br i1 %13, label %14, label %20, !dbg !251

; <label>:14:                                     ; preds = %3
  %15 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !252
  %16 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %15, i32 0, i32 2, !dbg !253
  %17 = load i32, i32* %16, align 4, !dbg !253
  %18 = icmp eq i32 %17, 3, !dbg !254
  br i1 %18, label %19, label %20, !dbg !255

; <label>:19:                                     ; preds = %14
  store i1 true, i1* %4, align 1, !dbg !257
  br label %84, !dbg !257

; <label>:20:                                     ; preds = %14, %3
  %21 = load %struct.deppossi*, %struct.deppossi** %7, align 8, !dbg !258
  %22 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %21, i32 0, i32 5, !dbg !259
  %23 = load %struct.dpkg_arch*, %struct.dpkg_arch** %22, align 8, !dbg !259
  store %struct.dpkg_arch* %23, %struct.dpkg_arch** %8, align 8, !dbg !260
  %24 = load %struct.dpkg_arch*, %struct.dpkg_arch** %8, align 8, !dbg !261
  %25 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %24, i32 0, i32 2, !dbg !263
  %26 = load i32, i32* %25, align 8, !dbg !263
  %27 = icmp eq i32 %26, 3, !dbg !264
  br i1 %27, label %28, label %55, !dbg !265

; <label>:28:                                     ; preds = %20
  %29 = load %struct.pkgbin*, %struct.pkgbin** %5, align 8, !dbg !266
  %30 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %29, i32 0, i32 2, !dbg !267
  %31 = load i32, i32* %30, align 4, !dbg !267
  %32 = icmp eq i32 %31, 2, !dbg !268
  br i1 %32, label %54, label %33, !dbg !269

; <label>:33:                                     ; preds = %28
  %34 = load %struct.deppossi*, %struct.deppossi** %7, align 8, !dbg !270
  %35 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %34, i32 0, i32 0, !dbg !271
  %36 = load %struct.dependency*, %struct.dependency** %35, align 8, !dbg !271
  %37 = getelementptr inbounds %struct.dependency, %struct.dependency* %36, i32 0, i32 3, !dbg !272
  %38 = load i32, i32* %37, align 8, !dbg !272
  %39 = icmp eq i32 %38, 5, !dbg !273
  br i1 %39, label %54, label %40, !dbg !274

; <label>:40:                                     ; preds = %33
  %41 = load %struct.deppossi*, %struct.deppossi** %7, align 8, !dbg !275
  %42 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %41, i32 0, i32 0, !dbg !276
  %43 = load %struct.dependency*, %struct.dependency** %42, align 8, !dbg !276
  %44 = getelementptr inbounds %struct.dependency, %struct.dependency* %43, i32 0, i32 3, !dbg !277
  %45 = load i32, i32* %44, align 8, !dbg !277
  %46 = icmp eq i32 %45, 7, !dbg !278
  br i1 %46, label %54, label %47, !dbg !279

; <label>:47:                                     ; preds = %40
  %48 = load %struct.deppossi*, %struct.deppossi** %7, align 8, !dbg !280
  %49 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %48, i32 0, i32 0, !dbg !281
  %50 = load %struct.dependency*, %struct.dependency** %49, align 8, !dbg !281
  %51 = getelementptr inbounds %struct.dependency, %struct.dependency* %50, i32 0, i32 3, !dbg !282
  %52 = load i32, i32* %51, align 8, !dbg !282
  %53 = icmp eq i32 %52, 4, !dbg !283
  br i1 %53, label %54, label %55, !dbg !284

; <label>:54:                                     ; preds = %47, %40, %33, %28
  store i1 true, i1* %4, align 1, !dbg !285
  br label %84, !dbg !285

; <label>:55:                                     ; preds = %47, %20
  %56 = load %struct.dpkg_arch*, %struct.dpkg_arch** %6, align 8, !dbg !286
  store %struct.dpkg_arch* %56, %struct.dpkg_arch** %9, align 8, !dbg !287
  %57 = load %struct.dpkg_arch*, %struct.dpkg_arch** %8, align 8, !dbg !288
  %58 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %57, i32 0, i32 2, !dbg !290
  %59 = load i32, i32* %58, align 8, !dbg !290
  %60 = icmp eq i32 %59, 0, !dbg !291
  br i1 %60, label %66, label %61, !dbg !292

; <label>:61:                                     ; preds = %55
  %62 = load %struct.dpkg_arch*, %struct.dpkg_arch** %8, align 8, !dbg !293
  %63 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %62, i32 0, i32 2, !dbg !295
  %64 = load i32, i32* %63, align 8, !dbg !295
  %65 = icmp eq i32 %64, 4, !dbg !296
  br i1 %65, label %66, label %68, !dbg !297

; <label>:66:                                     ; preds = %61, %55
  %67 = call %struct.dpkg_arch* @dpkg_arch_get(i32 5), !dbg !298
  store %struct.dpkg_arch* %67, %struct.dpkg_arch** %8, align 8, !dbg !299
  br label %68, !dbg !300

; <label>:68:                                     ; preds = %66, %61
  %69 = load %struct.dpkg_arch*, %struct.dpkg_arch** %9, align 8, !dbg !301
  %70 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %69, i32 0, i32 2, !dbg !303
  %71 = load i32, i32* %70, align 8, !dbg !303
  %72 = icmp eq i32 %71, 0, !dbg !304
  br i1 %72, label %78, label %73, !dbg !305

; <label>:73:                                     ; preds = %68
  %74 = load %struct.dpkg_arch*, %struct.dpkg_arch** %9, align 8, !dbg !306
  %75 = getelementptr inbounds %struct.dpkg_arch, %struct.dpkg_arch* %74, i32 0, i32 2, !dbg !308
  %76 = load i32, i32* %75, align 8, !dbg !308
  %77 = icmp eq i32 %76, 4, !dbg !309
  br i1 %77, label %78, label %80, !dbg !310

; <label>:78:                                     ; preds = %73, %68
  %79 = call %struct.dpkg_arch* @dpkg_arch_get(i32 5), !dbg !311
  store %struct.dpkg_arch* %79, %struct.dpkg_arch** %9, align 8, !dbg !312
  br label %80, !dbg !313

; <label>:80:                                     ; preds = %78, %73
  %81 = load %struct.dpkg_arch*, %struct.dpkg_arch** %8, align 8, !dbg !314
  %82 = load %struct.dpkg_arch*, %struct.dpkg_arch** %9, align 8, !dbg !315
  %83 = icmp eq %struct.dpkg_arch* %81, %82, !dbg !316
  store i1 %83, i1* %4, align 1, !dbg !317
  br label %84, !dbg !317

; <label>:84:                                     ; preds = %80, %54, %19
  %85 = load i1, i1* %4, align 1, !dbg !318
  ret i1 %85, !dbg !318
}

declare %struct.dpkg_arch* @dpkg_arch_get(i32) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @archsatisfied(%struct.pkgbin*, %struct.deppossi*) #0 !dbg !319 {
  %3 = alloca %struct.pkgbin*, align 8
  %4 = alloca %struct.deppossi*, align 8
  store %struct.pkgbin* %0, %struct.pkgbin** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkgbin** %3, metadata !320, metadata !223), !dbg !321
  store %struct.deppossi* %1, %struct.deppossi** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %4, metadata !322, metadata !223), !dbg !323
  %5 = load %struct.pkgbin*, %struct.pkgbin** %3, align 8, !dbg !324
  %6 = load %struct.pkgbin*, %struct.pkgbin** %3, align 8, !dbg !325
  %7 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %6, i32 0, i32 3, !dbg !326
  %8 = load %struct.dpkg_arch*, %struct.dpkg_arch** %7, align 8, !dbg !326
  %9 = load %struct.deppossi*, %struct.deppossi** %4, align 8, !dbg !327
  %10 = call zeroext i1 @deparchsatisfied(%struct.pkgbin* %5, %struct.dpkg_arch* %8, %struct.deppossi* %9), !dbg !328
  ret i1 %10, !dbg !329
}

; Function Attrs: nounwind uwtable
define zeroext i1 @pkg_virtual_deppossi_satisfied(%struct.deppossi*, %struct.deppossi*) #0 !dbg !330 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.deppossi*, align 8
  %5 = alloca %struct.deppossi*, align 8
  store %struct.deppossi* %0, %struct.deppossi** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %4, metadata !333, metadata !223), !dbg !334
  store %struct.deppossi* %1, %struct.deppossi** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.deppossi** %5, metadata !335, metadata !223), !dbg !336
  %6 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !337
  %7 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %6, i32 0, i32 7, !dbg !339
  %8 = load i32, i32* %7, align 8, !dbg !339
  %9 = icmp ne i32 %8, 0, !dbg !340
  br i1 %9, label %10, label %16, !dbg !341

; <label>:10:                                     ; preds = %2
  %11 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !342
  %12 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %11, i32 0, i32 7, !dbg !343
  %13 = load i32, i32* %12, align 8, !dbg !343
  %14 = icmp ne i32 %13, 1, !dbg !344
  br i1 %14, label %15, label %16, !dbg !345

; <label>:15:                                     ; preds = %10
  store i1 false, i1* %3, align 1, !dbg !347
  br label %36, !dbg !347

; <label>:16:                                     ; preds = %10, %2
  %17 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !348
  %18 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %17, i32 0, i32 7, !dbg !350
  %19 = load i32, i32* %18, align 8, !dbg !350
  %20 = icmp eq i32 %19, 0, !dbg !351
  br i1 %20, label %21, label %27, !dbg !352

; <label>:21:                                     ; preds = %16
  %22 = load %struct.deppossi*, %struct.deppossi** %4, align 8, !dbg !353
  %23 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %22, i32 0, i32 7, !dbg !354
  %24 = load i32, i32* %23, align 8, !dbg !354
  %25 = icmp ne i32 %24, 0, !dbg !355
  br i1 %25, label %26, label %27, !dbg !356

; <label>:26:                                     ; preds = %21
  store i1 false, i1* %3, align 1, !dbg !357
  br label %36, !dbg !357

; <label>:27:                                     ; preds = %21, %16
  %28 = load %struct.deppossi*, %struct.deppossi** %5, align 8, !dbg !358
  %29 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %28, i32 0, i32 6, !dbg !359
  %30 = load %struct.deppossi*, %struct.deppossi** %4, align 8, !dbg !360
  %31 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %30, i32 0, i32 7, !dbg !361
  %32 = load i32, i32* %31, align 8, !dbg !361
  %33 = load %struct.deppossi*, %struct.deppossi** %4, align 8, !dbg !362
  %34 = getelementptr inbounds %struct.deppossi, %struct.deppossi* %33, i32 0, i32 6, !dbg !363
  %35 = call zeroext i1 @dpkg_version_relate(%struct.dpkg_version* %29, i32 %32, %struct.dpkg_version* %34), !dbg !364
  store i1 %35, i1* %3, align 1, !dbg !365
  br label %36, !dbg !365

; <label>:36:                                     ; preds = %27, %26, %15
  %37 = load i1, i1* %3, align 1, !dbg !366
  ret i1 %37, !dbg !366
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!73, !74}
!llvm.ident = !{!75}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--depcon.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !14, !23, !32, !36, !46, !56, !67}
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
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !15, line: 61, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!16 = !{!17, !18, !19, !20, !21, !22}
!17 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!18 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!19 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!20 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!21 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!22 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !24, line: 153, size: 32, align: 32, elements: !25)
!24 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!25 = !{!26, !27, !28, !29, !30, !31}
!26 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!27 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!28 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!29 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!30 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!31 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !24, line: 163, size: 32, align: 32, elements: !33)
!33 = !{!34, !35}
!34 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!35 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !24, line: 168, size: 32, align: 32, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45}
!38 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!39 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!40 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!41 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!42 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!43 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!44 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!45 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !24, line: 179, size: 32, align: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55}
!48 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!49 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!50 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!51 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!52 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!53 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!54 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!55 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !24, line: 44, size: 32, align: 32, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66}
!58 = !DIEnumerator(name: "dep_suggests", value: 0)
!59 = !DIEnumerator(name: "dep_recommends", value: 1)
!60 = !DIEnumerator(name: "dep_depends", value: 2)
!61 = !DIEnumerator(name: "dep_predepends", value: 3)
!62 = !DIEnumerator(name: "dep_breaks", value: 4)
!63 = !DIEnumerator(name: "dep_conflicts", value: 5)
!64 = !DIEnumerator(name: "dep_provides", value: 6)
!65 = !DIEnumerator(name: "dep_replaces", value: 7)
!66 = !DIEnumerator(name: "dep_enhances", value: 8)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !24, line: 95, size: 32, align: 32, elements: !68)
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!70 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!71 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!72 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!73 = !{i32 2, !"Dwarf Version", i32 4}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!76 = distinct !DISubprogram(name: "versionsatisfied", scope: !77, file: !77, line: 31, type: !78, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !221)
!77 = !DIFile(filename: "depcon.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !81, !106}
!80 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !24, line: 107, size: 960, align: 64, elements: !83)
!83 = !{!84, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !214}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !82, file: !24, line: 108, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !24, line: 56, size: 256, align: 64, elements: !87)
!87 = !{!88, !192, !193, !194}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !86, file: !24, line: 57, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !24, line: 195, size: 3072, align: 64, elements: !91)
!91 = !{!92, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !149, !158, !174, !175, !181, !184, !190, !191}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !90, file: !24, line: 196, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !24, line: 242, size: 3392, align: 64, elements: !95)
!95 = !{!96, !97, !101, !102, !134}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !94, file: !24, line: 243, baseType: !93, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !24, line: 244, baseType: !98, size: 64, align: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !94, file: !24, line: 245, baseType: !90, size: 3072, align: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !94, file: !24, line: 249, baseType: !103, size: 128, align: 64, offset: 3200)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !94, file: !24, line: 246, size: 128, align: 64, elements: !104)
!104 = !{!105, !133}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !103, file: !24, line: 247, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !24, line: 63, size: 640, align: 64, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !114, !123, !130, !131, !132}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !107, file: !24, line: 64, baseType: !85, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !107, file: !24, line: 65, baseType: !93, size: 64, align: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !24, line: 66, baseType: !106, size: 64, align: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !107, file: !24, line: 66, baseType: !106, size: 64, align: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !107, file: !24, line: 66, baseType: !106, size: 64, align: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !107, file: !24, line: 67, baseType: !115, size: 64, align: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !4, line: 48, size: 192, align: 64, elements: !118)
!118 = !{!119, !121, !122}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !4, line: 49, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !4, line: 50, baseType: !98, size: 64, align: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !4, line: 51, baseType: !3, size: 32, align: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !107, file: !24, line: 68, baseType: !124, size: 192, align: 64, offset: 384)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !15, line: 42, size: 192, align: 64, elements: !125)
!125 = !{!126, !128, !129}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !124, file: !15, line: 44, baseType: !127, size: 32, align: 32)
!127 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !124, file: !15, line: 46, baseType: !98, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !124, file: !15, line: 48, baseType: !98, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !107, file: !24, line: 69, baseType: !14, size: 32, align: 32, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !107, file: !24, line: 70, baseType: !80, size: 8, align: 8, offset: 608)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !107, file: !24, line: 71, baseType: !80, size: 8, align: 8, offset: 616)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !103, file: !24, line: 248, baseType: !106, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !94, file: !24, line: 250, baseType: !135, size: 32, align: 32, offset: 3328)
!135 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !90, file: !24, line: 197, baseType: !89, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !90, file: !24, line: 199, baseType: !23, size: 32, align: 32, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !90, file: !24, line: 201, baseType: !32, size: 32, align: 32, offset: 160)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !90, file: !24, line: 202, baseType: !36, size: 32, align: 32, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !90, file: !24, line: 203, baseType: !46, size: 32, align: 32, offset: 224)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !90, file: !24, line: 204, baseType: !98, size: 64, align: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !90, file: !24, line: 205, baseType: !98, size: 64, align: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !90, file: !24, line: 206, baseType: !124, size: 192, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !90, file: !24, line: 207, baseType: !82, size: 960, align: 64, offset: 576)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !90, file: !24, line: 208, baseType: !82, size: 960, align: 64, offset: 1536)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !90, file: !24, line: 209, baseType: !147, size: 64, align: 64, offset: 2496)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !24, line: 151, flags: DIFlagFwdDecl)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !90, file: !24, line: 211, baseType: !150, size: 64, align: 64, offset: 2560)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !24, line: 87, size: 320, align: 64, elements: !152)
!152 = !{!153, !154, !155, !156, !157}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !24, line: 88, baseType: !150, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !24, line: 89, baseType: !98, size: 64, align: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !151, file: !24, line: 90, baseType: !98, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !151, file: !24, line: 91, baseType: !98, size: 64, align: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !151, file: !24, line: 92, baseType: !98, size: 64, align: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !90, file: !24, line: 216, baseType: !159, size: 128, align: 64, offset: 2624)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !90, file: !24, line: 213, size: 128, align: 64, elements: !160)
!160 = !{!161, !173}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !159, file: !24, line: 215, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !24, line: 142, size: 320, align: 64, elements: !164)
!164 = !{!165, !166, !167, !168}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !163, file: !24, line: 143, baseType: !89, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !163, file: !24, line: 143, baseType: !89, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !163, file: !24, line: 144, baseType: !162, size: 64, align: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !163, file: !24, line: 147, baseType: !169, size: 128, align: 64, offset: 192)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !163, file: !24, line: 145, size: 128, align: 64, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !24, line: 146, baseType: !162, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !169, file: !24, line: 146, baseType: !162, size: 64, align: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !159, file: !24, line: 215, baseType: !162, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !90, file: !24, line: 219, baseType: !162, size: 64, align: 64, offset: 2752)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !90, file: !24, line: 220, baseType: !176, size: 64, align: 64, offset: 2816)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !24, line: 134, size: 128, align: 64, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !24, line: 135, baseType: !176, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !24, line: 136, baseType: !98, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !90, file: !24, line: 231, baseType: !182, size: 64, align: 64, offset: 2880)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !24, line: 231, flags: DIFlagFwdDecl)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !90, file: !24, line: 232, baseType: !185, size: 64, align: 64, offset: 2944)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !186, line: 86, baseType: !187)
!186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !188, line: 131, baseType: !189)
!188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!189 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !90, file: !24, line: 233, baseType: !80, size: 8, align: 8, offset: 3008)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !90, file: !24, line: 236, baseType: !80, size: 8, align: 8, offset: 3016)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !86, file: !24, line: 58, baseType: !85, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !86, file: !24, line: 59, baseType: !106, size: 64, align: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !24, line: 60, baseType: !56, size: 32, align: 32, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !82, file: !24, line: 110, baseType: !80, size: 8, align: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !82, file: !24, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !82, file: !24, line: 112, baseType: !115, size: 64, align: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !82, file: !24, line: 115, baseType: !98, size: 64, align: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !82, file: !24, line: 116, baseType: !98, size: 64, align: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !82, file: !24, line: 117, baseType: !98, size: 64, align: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !82, file: !24, line: 118, baseType: !98, size: 64, align: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !82, file: !24, line: 119, baseType: !98, size: 64, align: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !82, file: !24, line: 120, baseType: !98, size: 64, align: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !82, file: !24, line: 121, baseType: !98, size: 64, align: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !82, file: !24, line: 122, baseType: !124, size: 192, align: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !82, file: !24, line: 123, baseType: !207, size: 64, align: 64, offset: 832)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !24, line: 80, size: 256, align: 64, elements: !209)
!209 = !{!210, !211, !212, !213}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !24, line: 81, baseType: !207, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !24, line: 82, baseType: !98, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !208, file: !24, line: 83, baseType: !98, size: 64, align: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !208, file: !24, line: 84, baseType: !80, size: 8, align: 8, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !82, file: !24, line: 124, baseType: !215, size: 64, align: 64, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !24, line: 74, size: 192, align: 64, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !24, line: 75, baseType: !215, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !24, line: 76, baseType: !98, size: 64, align: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !24, line: 77, baseType: !98, size: 64, align: 64, offset: 128)
!221 = !{}
!222 = !DILocalVariable(name: "it", arg: 1, scope: !76, file: !77, line: 31, type: !81)
!223 = !DIExpression()
!224 = !DILocation(line: 31, column: 33, scope: !76)
!225 = !DILocalVariable(name: "against", arg: 2, scope: !76, file: !77, line: 31, type: !106)
!226 = !DILocation(line: 31, column: 54, scope: !76)
!227 = !DILocation(line: 33, column: 30, scope: !76)
!228 = !DILocation(line: 33, column: 34, scope: !76)
!229 = !DILocation(line: 34, column: 29, scope: !76)
!230 = !DILocation(line: 34, column: 38, scope: !76)
!231 = !DILocation(line: 35, column: 30, scope: !76)
!232 = !DILocation(line: 35, column: 39, scope: !76)
!233 = !DILocation(line: 33, column: 9, scope: !76)
!234 = !DILocation(line: 33, column: 2, scope: !76)
!235 = distinct !DISubprogram(name: "deparchsatisfied", scope: !77, file: !77, line: 55, type: !236, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !221)
!236 = !DISubroutineType(types: !237)
!237 = !{!80, !81, !115, !106}
!238 = !DILocalVariable(name: "it", arg: 1, scope: !235, file: !77, line: 55, type: !81)
!239 = !DILocation(line: 55, column: 33, scope: !235)
!240 = !DILocalVariable(name: "it_arch", arg: 2, scope: !235, file: !77, line: 55, type: !115)
!241 = !DILocation(line: 55, column: 61, scope: !235)
!242 = !DILocalVariable(name: "against", arg: 3, scope: !235, file: !77, line: 56, type: !106)
!243 = !DILocation(line: 56, column: 35, scope: !235)
!244 = !DILocalVariable(name: "dep_arch", scope: !235, file: !77, line: 58, type: !115)
!245 = !DILocation(line: 58, column: 26, scope: !235)
!246 = !DILocalVariable(name: "pkg_arch", scope: !235, file: !77, line: 58, type: !115)
!247 = !DILocation(line: 58, column: 37, scope: !235)
!248 = !DILocation(line: 60, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !235, file: !77, line: 60, column: 6)
!250 = !DILocation(line: 60, column: 15, scope: !249)
!251 = !DILocation(line: 60, column: 32, scope: !249)
!252 = !DILocation(line: 61, column: 6, scope: !249)
!253 = !DILocation(line: 61, column: 10, scope: !249)
!254 = !DILocation(line: 61, column: 20, scope: !249)
!255 = !DILocation(line: 60, column: 6, scope: !256)
!256 = !DILexicalBlockFile(scope: !235, file: !77, discriminator: 1)
!257 = !DILocation(line: 62, column: 3, scope: !249)
!258 = !DILocation(line: 64, column: 13, scope: !235)
!259 = !DILocation(line: 64, column: 22, scope: !235)
!260 = !DILocation(line: 64, column: 11, scope: !235)
!261 = !DILocation(line: 65, column: 6, scope: !262)
!262 = distinct !DILexicalBlock(scope: !235, file: !77, line: 65, column: 6)
!263 = !DILocation(line: 65, column: 16, scope: !262)
!264 = !DILocation(line: 65, column: 21, scope: !262)
!265 = !DILocation(line: 65, column: 43, scope: !262)
!266 = !DILocation(line: 66, column: 7, scope: !262)
!267 = !DILocation(line: 66, column: 11, scope: !262)
!268 = !DILocation(line: 66, column: 21, scope: !262)
!269 = !DILocation(line: 66, column: 46, scope: !262)
!270 = !DILocation(line: 67, column: 7, scope: !262)
!271 = !DILocation(line: 67, column: 16, scope: !262)
!272 = !DILocation(line: 67, column: 20, scope: !262)
!273 = !DILocation(line: 67, column: 25, scope: !262)
!274 = !DILocation(line: 67, column: 42, scope: !262)
!275 = !DILocation(line: 68, column: 7, scope: !262)
!276 = !DILocation(line: 68, column: 16, scope: !262)
!277 = !DILocation(line: 68, column: 20, scope: !262)
!278 = !DILocation(line: 68, column: 25, scope: !262)
!279 = !DILocation(line: 68, column: 41, scope: !262)
!280 = !DILocation(line: 69, column: 7, scope: !262)
!281 = !DILocation(line: 69, column: 16, scope: !262)
!282 = !DILocation(line: 69, column: 20, scope: !262)
!283 = !DILocation(line: 69, column: 25, scope: !262)
!284 = !DILocation(line: 65, column: 6, scope: !256)
!285 = !DILocation(line: 70, column: 3, scope: !262)
!286 = !DILocation(line: 72, column: 13, scope: !235)
!287 = !DILocation(line: 72, column: 11, scope: !235)
!288 = !DILocation(line: 73, column: 6, scope: !289)
!289 = distinct !DILexicalBlock(scope: !235, file: !77, line: 73, column: 6)
!290 = !DILocation(line: 73, column: 16, scope: !289)
!291 = !DILocation(line: 73, column: 21, scope: !289)
!292 = !DILocation(line: 73, column: 39, scope: !289)
!293 = !DILocation(line: 73, column: 42, scope: !294)
!294 = !DILexicalBlockFile(scope: !289, file: !77, discriminator: 1)
!295 = !DILocation(line: 73, column: 52, scope: !294)
!296 = !DILocation(line: 73, column: 57, scope: !294)
!297 = !DILocation(line: 73, column: 6, scope: !294)
!298 = !DILocation(line: 74, column: 14, scope: !289)
!299 = !DILocation(line: 74, column: 12, scope: !289)
!300 = !DILocation(line: 74, column: 3, scope: !289)
!301 = !DILocation(line: 75, column: 6, scope: !302)
!302 = distinct !DILexicalBlock(scope: !235, file: !77, line: 75, column: 6)
!303 = !DILocation(line: 75, column: 16, scope: !302)
!304 = !DILocation(line: 75, column: 21, scope: !302)
!305 = !DILocation(line: 75, column: 39, scope: !302)
!306 = !DILocation(line: 75, column: 42, scope: !307)
!307 = !DILexicalBlockFile(scope: !302, file: !77, discriminator: 1)
!308 = !DILocation(line: 75, column: 52, scope: !307)
!309 = !DILocation(line: 75, column: 57, scope: !307)
!310 = !DILocation(line: 75, column: 6, scope: !307)
!311 = !DILocation(line: 76, column: 14, scope: !302)
!312 = !DILocation(line: 76, column: 12, scope: !302)
!313 = !DILocation(line: 76, column: 3, scope: !302)
!314 = !DILocation(line: 78, column: 10, scope: !235)
!315 = !DILocation(line: 78, column: 22, scope: !235)
!316 = !DILocation(line: 78, column: 19, scope: !235)
!317 = !DILocation(line: 78, column: 2, scope: !235)
!318 = !DILocation(line: 79, column: 1, scope: !235)
!319 = distinct !DISubprogram(name: "archsatisfied", scope: !77, file: !77, line: 82, type: !78, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !221)
!320 = !DILocalVariable(name: "it", arg: 1, scope: !319, file: !77, line: 82, type: !81)
!321 = !DILocation(line: 82, column: 30, scope: !319)
!322 = !DILocalVariable(name: "against", arg: 2, scope: !319, file: !77, line: 82, type: !106)
!323 = !DILocation(line: 82, column: 51, scope: !319)
!324 = !DILocation(line: 84, column: 26, scope: !319)
!325 = !DILocation(line: 84, column: 30, scope: !319)
!326 = !DILocation(line: 84, column: 34, scope: !319)
!327 = !DILocation(line: 84, column: 40, scope: !319)
!328 = !DILocation(line: 84, column: 9, scope: !319)
!329 = !DILocation(line: 84, column: 2, scope: !319)
!330 = distinct !DISubprogram(name: "pkg_virtual_deppossi_satisfied", scope: !77, file: !77, line: 111, type: !331, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !221)
!331 = !DISubroutineType(types: !332)
!332 = !{!80, !106, !106}
!333 = !DILocalVariable(name: "dependee", arg: 1, scope: !330, file: !77, line: 111, type: !106)
!334 = !DILocation(line: 111, column: 49, scope: !330)
!335 = !DILocalVariable(name: "provider", arg: 2, scope: !330, file: !77, line: 112, type: !106)
!336 = !DILocation(line: 112, column: 49, scope: !330)
!337 = !DILocation(line: 114, column: 6, scope: !338)
!338 = distinct !DILexicalBlock(scope: !330, file: !77, line: 114, column: 6)
!339 = !DILocation(line: 114, column: 16, scope: !338)
!340 = !DILocation(line: 114, column: 23, scope: !338)
!341 = !DILocation(line: 114, column: 45, scope: !338)
!342 = !DILocation(line: 115, column: 6, scope: !338)
!343 = !DILocation(line: 115, column: 16, scope: !338)
!344 = !DILocation(line: 115, column: 23, scope: !338)
!345 = !DILocation(line: 114, column: 6, scope: !346)
!346 = !DILexicalBlockFile(scope: !330, file: !77, discriminator: 1)
!347 = !DILocation(line: 116, column: 3, scope: !338)
!348 = !DILocation(line: 118, column: 6, scope: !349)
!349 = distinct !DILexicalBlock(scope: !330, file: !77, line: 118, column: 6)
!350 = !DILocation(line: 118, column: 16, scope: !349)
!351 = !DILocation(line: 118, column: 23, scope: !349)
!352 = !DILocation(line: 118, column: 45, scope: !349)
!353 = !DILocation(line: 119, column: 6, scope: !349)
!354 = !DILocation(line: 119, column: 16, scope: !349)
!355 = !DILocation(line: 119, column: 23, scope: !349)
!356 = !DILocation(line: 118, column: 6, scope: !346)
!357 = !DILocation(line: 120, column: 3, scope: !349)
!358 = !DILocation(line: 122, column: 30, scope: !330)
!359 = !DILocation(line: 122, column: 40, scope: !330)
!360 = !DILocation(line: 123, column: 29, scope: !330)
!361 = !DILocation(line: 123, column: 39, scope: !330)
!362 = !DILocation(line: 124, column: 30, scope: !330)
!363 = !DILocation(line: 124, column: 40, scope: !330)
!364 = !DILocation(line: 122, column: 9, scope: !330)
!365 = !DILocation(line: 122, column: 2, scope: !330)
!366 = !DILocation(line: 125, column: 1, scope: !330)
