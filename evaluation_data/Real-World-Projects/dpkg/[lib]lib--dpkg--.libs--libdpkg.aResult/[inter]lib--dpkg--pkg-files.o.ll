; ModuleID = './[inter]lib--dpkg--pkg-files.o.i'
source_filename = "./[inter]lib--dpkg--pkg-files.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.fsys_namenode_list = type { %struct.fsys_namenode_list*, %struct.fsys_namenode* }
%struct.fsys_namenode = type { %struct.fsys_namenode*, i8*, %struct.pkg_list*, %struct.fsys_diversion*, %struct.file_stat*, %struct.trigfileint*, i32, i8*, i8*, %struct.file_ondisk_id* }
%struct.pkg_list = type { %struct.pkg_list*, %struct.pkginfo* }
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }

; Function Attrs: nounwind uwtable
define void @pkg_files_blank(%struct.pkginfo*) #0 !dbg !91 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.fsys_namenode_list*, align 8
  %4 = alloca %struct.pkg_list**, align 8
  %5 = alloca %struct.pkg_list*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %2, metadata !293, metadata !294), !dbg !295
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %3, metadata !296, metadata !294), !dbg !297
  %6 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !298
  %7 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %6, i32 0, i32 16, !dbg !300
  %8 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !300
  store %struct.fsys_namenode_list* %8, %struct.fsys_namenode_list** %3, align 8, !dbg !301
  br label %9, !dbg !302

; <label>:9:                                      ; preds = %44, %1
  %10 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %3, align 8, !dbg !303
  %11 = icmp ne %struct.fsys_namenode_list* %10, null, !dbg !305
  br i1 %11, label %12, label %48, !dbg !305

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.pkg_list*** %4, metadata !307, metadata !294), !dbg !310
  %13 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %3, align 8, !dbg !311
  %14 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %13, i32 0, i32 1, !dbg !312
  %15 = load %struct.fsys_namenode*, %struct.fsys_namenode** %14, align 8, !dbg !312
  %16 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %15, i32 0, i32 2, !dbg !313
  store %struct.pkg_list** %16, %struct.pkg_list*** %4, align 8, !dbg !310
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %5, metadata !314, metadata !294), !dbg !315
  %17 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %3, align 8, !dbg !316
  %18 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %17, i32 0, i32 1, !dbg !318
  %19 = load %struct.fsys_namenode*, %struct.fsys_namenode** %18, align 8, !dbg !318
  %20 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %19, i32 0, i32 2, !dbg !319
  %21 = load %struct.pkg_list*, %struct.pkg_list** %20, align 8, !dbg !319
  store %struct.pkg_list* %21, %struct.pkg_list** %5, align 8, !dbg !320
  br label %22, !dbg !321

; <label>:22:                                     ; preds = %39, %12
  %23 = load %struct.pkg_list*, %struct.pkg_list** %5, align 8, !dbg !322
  %24 = icmp ne %struct.pkg_list* %23, null, !dbg !324
  br i1 %24, label %25, label %43, !dbg !324

; <label>:25:                                     ; preds = %22
  %26 = load %struct.pkg_list*, %struct.pkg_list** %5, align 8, !dbg !326
  %27 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %26, i32 0, i32 1, !dbg !329
  %28 = load %struct.pkginfo*, %struct.pkginfo** %27, align 8, !dbg !329
  %29 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !330
  %30 = icmp eq %struct.pkginfo* %28, %29, !dbg !331
  br i1 %30, label %31, label %36, !dbg !332

; <label>:31:                                     ; preds = %25
  %32 = load %struct.pkg_list*, %struct.pkg_list** %5, align 8, !dbg !333
  %33 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %32, i32 0, i32 0, !dbg !335
  %34 = load %struct.pkg_list*, %struct.pkg_list** %33, align 8, !dbg !335
  %35 = load %struct.pkg_list**, %struct.pkg_list*** %4, align 8, !dbg !336
  store %struct.pkg_list* %34, %struct.pkg_list** %35, align 8, !dbg !337
  br label %43, !dbg !338

; <label>:36:                                     ; preds = %25
  %37 = load %struct.pkg_list*, %struct.pkg_list** %5, align 8, !dbg !339
  %38 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %37, i32 0, i32 0, !dbg !340
  store %struct.pkg_list** %38, %struct.pkg_list*** %4, align 8, !dbg !341
  br label %39, !dbg !342

; <label>:39:                                     ; preds = %36
  %40 = load %struct.pkg_list*, %struct.pkg_list** %5, align 8, !dbg !343
  %41 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %40, i32 0, i32 0, !dbg !344
  %42 = load %struct.pkg_list*, %struct.pkg_list** %41, align 8, !dbg !344
  store %struct.pkg_list* %42, %struct.pkg_list** %5, align 8, !dbg !345
  br label %22, !dbg !346, !llvm.loop !348

; <label>:43:                                     ; preds = %31, %22
  br label %44, !dbg !350

; <label>:44:                                     ; preds = %43
  %45 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %3, align 8, !dbg !351
  %46 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %45, i32 0, i32 0, !dbg !352
  %47 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %46, align 8, !dbg !352
  store %struct.fsys_namenode_list* %47, %struct.fsys_namenode_list** %3, align 8, !dbg !353
  br label %9, !dbg !354, !llvm.loop !356

; <label>:48:                                     ; preds = %9
  %49 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !358
  %50 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %49, i32 0, i32 16, !dbg !359
  store %struct.fsys_namenode_list* null, %struct.fsys_namenode_list** %50, align 8, !dbg !360
  ret void, !dbg !361
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define %struct.fsys_namenode_list** @pkg_files_add_file(%struct.pkginfo*, %struct.fsys_namenode*, %struct.fsys_namenode_list**) #0 !dbg !362 {
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.fsys_namenode*, align 8
  %6 = alloca %struct.fsys_namenode_list**, align 8
  %7 = alloca %struct.fsys_namenode_list*, align 8
  %8 = alloca %struct.pkg_list*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !366, metadata !294), !dbg !367
  store %struct.fsys_namenode* %1, %struct.fsys_namenode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %5, metadata !368, metadata !294), !dbg !369
  store %struct.fsys_namenode_list** %2, %struct.fsys_namenode_list*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list*** %6, metadata !370, metadata !294), !dbg !371
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %7, metadata !372, metadata !294), !dbg !373
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %8, metadata !374, metadata !294), !dbg !375
  %9 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %6, align 8, !dbg !376
  %10 = icmp eq %struct.fsys_namenode_list** %9, null, !dbg !378
  br i1 %10, label %11, label %14, !dbg !379

; <label>:11:                                     ; preds = %3
  %12 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !380
  %13 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %12, i32 0, i32 16, !dbg !381
  store %struct.fsys_namenode_list** %13, %struct.fsys_namenode_list*** %6, align 8, !dbg !382
  br label %14, !dbg !383

; <label>:14:                                     ; preds = %11, %3
  br label %15, !dbg !384

; <label>:15:                                     ; preds = %19, %14
  %16 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %6, align 8, !dbg !385
  %17 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %16, align 8, !dbg !387
  %18 = icmp ne %struct.fsys_namenode_list* %17, null, !dbg !388
  br i1 %18, label %19, label %23, !dbg !389

; <label>:19:                                     ; preds = %15
  %20 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %6, align 8, !dbg !390
  %21 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %20, align 8, !dbg !391
  %22 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %21, i32 0, i32 0, !dbg !392
  store %struct.fsys_namenode_list** %22, %struct.fsys_namenode_list*** %6, align 8, !dbg !393
  br label %15, !dbg !394, !llvm.loop !396

; <label>:23:                                     ; preds = %15
  %24 = call i8* @nfmalloc(i64 16), !dbg !397
  %25 = bitcast i8* %24 to %struct.fsys_namenode_list*, !dbg !397
  store %struct.fsys_namenode_list* %25, %struct.fsys_namenode_list** %7, align 8, !dbg !398
  %26 = load %struct.fsys_namenode*, %struct.fsys_namenode** %5, align 8, !dbg !399
  %27 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !400
  %28 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %27, i32 0, i32 1, !dbg !401
  store %struct.fsys_namenode* %26, %struct.fsys_namenode** %28, align 8, !dbg !402
  %29 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !403
  %30 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %29, i32 0, i32 0, !dbg !404
  store %struct.fsys_namenode_list* null, %struct.fsys_namenode_list** %30, align 8, !dbg !405
  %31 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !406
  %32 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %6, align 8, !dbg !407
  store %struct.fsys_namenode_list* %31, %struct.fsys_namenode_list** %32, align 8, !dbg !408
  %33 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !409
  %34 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %33, i32 0, i32 0, !dbg !410
  store %struct.fsys_namenode_list** %34, %struct.fsys_namenode_list*** %6, align 8, !dbg !411
  %35 = call i8* @nfmalloc(i64 16), !dbg !412
  %36 = bitcast i8* %35 to %struct.pkg_list*, !dbg !412
  store %struct.pkg_list* %36, %struct.pkg_list** %8, align 8, !dbg !413
  %37 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !414
  %38 = load %struct.pkg_list*, %struct.pkg_list** %8, align 8, !dbg !415
  %39 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %38, i32 0, i32 1, !dbg !416
  store %struct.pkginfo* %37, %struct.pkginfo** %39, align 8, !dbg !417
  %40 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !418
  %41 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %40, i32 0, i32 1, !dbg !419
  %42 = load %struct.fsys_namenode*, %struct.fsys_namenode** %41, align 8, !dbg !419
  %43 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %42, i32 0, i32 2, !dbg !420
  %44 = load %struct.pkg_list*, %struct.pkg_list** %43, align 8, !dbg !420
  %45 = load %struct.pkg_list*, %struct.pkg_list** %8, align 8, !dbg !421
  %46 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %45, i32 0, i32 0, !dbg !422
  store %struct.pkg_list* %44, %struct.pkg_list** %46, align 8, !dbg !423
  %47 = load %struct.pkg_list*, %struct.pkg_list** %8, align 8, !dbg !424
  %48 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !425
  %49 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %48, i32 0, i32 1, !dbg !426
  %50 = load %struct.fsys_namenode*, %struct.fsys_namenode** %49, align 8, !dbg !426
  %51 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %50, i32 0, i32 2, !dbg !427
  store %struct.pkg_list* %47, %struct.pkg_list** %51, align 8, !dbg !428
  %52 = load %struct.fsys_namenode_list**, %struct.fsys_namenode_list*** %6, align 8, !dbg !429
  ret %struct.fsys_namenode_list** %52, !dbg !430
}

declare i8* @nfmalloc(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!88, !89}
!llvm.ident = !{!90}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86)
!1 = !DIFile(filename: "[inter]lib--dpkg--pkg-files.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !15, !26, !35, !43, !47, !57, !67, !73}
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
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !74, line: 61, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "../../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!76 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!77 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!78 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!79 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!80 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!81 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!82 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!83 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!84 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!85 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!88 = !{i32 2, !"Dwarf Version", i32 4}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!91 = distinct !DISubprogram(name: "pkg_files_blank", scope: !92, file: !92, line: 36, type: !93, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !292)
!92 = !DIFile(filename: "pkg-files.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!93 = !DISubroutineType(types: !94)
!94 = !{null, !95}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !97)
!97 = !{!98, !150, !151, !152, !153, !154, !155, !156, !157, !158, !188, !189, !192, !201, !217, !218, !224, !286, !290, !291}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !96, file: !4, line: 196, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !101)
!101 = !{!102, !103, !107, !108, !148}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !4, line: 243, baseType: !99, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !4, line: 244, baseType: !104, size: 64, align: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !100, file: !4, line: 245, baseType: !96, size: 3072, align: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !100, file: !4, line: 249, baseType: !109, size: 128, align: 64, offset: 3200)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !4, line: 246, size: 128, align: 64, elements: !110)
!110 = !{!111, !147}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !109, file: !4, line: 247, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !114)
!114 = !{!115, !123, !124, !125, !126, !127, !136, !143, !144, !146}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !113, file: !4, line: 64, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !118)
!118 = !{!119, !120, !121, !122}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !117, file: !4, line: 57, baseType: !95, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !4, line: 58, baseType: !116, size: 64, align: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !117, file: !4, line: 59, baseType: !112, size: 64, align: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !113, file: !4, line: 65, baseType: !99, size: 64, align: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !4, line: 66, baseType: !112, size: 64, align: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !113, file: !4, line: 66, baseType: !112, size: 64, align: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !113, file: !4, line: 66, baseType: !112, size: 64, align: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !113, file: !4, line: 67, baseType: !128, size: 64, align: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !131)
!131 = !{!132, !134, !135}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !130, file: !16, line: 49, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !16, line: 50, baseType: !104, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !113, file: !4, line: 68, baseType: !137, size: 192, align: 64, offset: 384)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !138)
!138 = !{!139, !141, !142}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !137, file: !27, line: 44, baseType: !140, size: 32, align: 32)
!140 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !137, file: !27, line: 46, baseType: !104, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !137, file: !27, line: 48, baseType: !104, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !113, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !113, file: !4, line: 70, baseType: !145, size: 8, align: 8, offset: 608)
!145 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !113, file: !4, line: 71, baseType: !145, size: 8, align: 8, offset: 616)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !109, file: !4, line: 248, baseType: !112, size: 64, align: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !100, file: !4, line: 250, baseType: !149, size: 32, align: 32, offset: 3328)
!149 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !96, file: !4, line: 197, baseType: !95, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !96, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !96, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !96, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !96, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !96, file: !4, line: 204, baseType: !104, size: 64, align: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !96, file: !4, line: 205, baseType: !104, size: 64, align: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !96, file: !4, line: 206, baseType: !137, size: 192, align: 64, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !96, file: !4, line: 207, baseType: !159, size: 960, align: 64, offset: 576)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !181}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !159, file: !4, line: 108, baseType: !116, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !159, file: !4, line: 110, baseType: !145, size: 8, align: 8, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !159, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !159, file: !4, line: 112, baseType: !128, size: 64, align: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !159, file: !4, line: 115, baseType: !104, size: 64, align: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !159, file: !4, line: 116, baseType: !104, size: 64, align: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !159, file: !4, line: 117, baseType: !104, size: 64, align: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !159, file: !4, line: 118, baseType: !104, size: 64, align: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !159, file: !4, line: 119, baseType: !104, size: 64, align: 64, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !159, file: !4, line: 120, baseType: !104, size: 64, align: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !159, file: !4, line: 121, baseType: !104, size: 64, align: 64, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !159, file: !4, line: 122, baseType: !137, size: 192, align: 64, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !159, file: !4, line: 123, baseType: !174, size: 64, align: 64, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !176)
!176 = !{!177, !178, !179, !180}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !4, line: 81, baseType: !174, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !4, line: 82, baseType: !104, size: 64, align: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !175, file: !4, line: 83, baseType: !104, size: 64, align: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !175, file: !4, line: 84, baseType: !145, size: 8, align: 8, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !159, file: !4, line: 124, baseType: !182, size: 64, align: 64, offset: 896)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !184)
!184 = !{!185, !186, !187}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !4, line: 75, baseType: !182, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !4, line: 76, baseType: !104, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !183, file: !4, line: 77, baseType: !104, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !96, file: !4, line: 208, baseType: !159, size: 960, align: 64, offset: 1536)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !96, file: !4, line: 209, baseType: !190, size: 64, align: 64, offset: 2496)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !96, file: !4, line: 211, baseType: !193, size: 64, align: 64, offset: 2560)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !195)
!195 = !{!196, !197, !198, !199, !200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !4, line: 88, baseType: !193, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !4, line: 89, baseType: !104, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !194, file: !4, line: 90, baseType: !104, size: 64, align: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !194, file: !4, line: 91, baseType: !104, size: 64, align: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !194, file: !4, line: 92, baseType: !104, size: 64, align: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !96, file: !4, line: 216, baseType: !202, size: 128, align: 64, offset: 2624)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !4, line: 213, size: 128, align: 64, elements: !203)
!203 = !{!204, !216}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !202, file: !4, line: 215, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !207)
!207 = !{!208, !209, !210, !211}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !206, file: !4, line: 143, baseType: !95, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !206, file: !4, line: 143, baseType: !95, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !206, file: !4, line: 144, baseType: !205, size: 64, align: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !206, file: !4, line: 147, baseType: !212, size: 128, align: 64, offset: 192)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !206, file: !4, line: 145, size: 128, align: 64, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !4, line: 146, baseType: !205, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !212, file: !4, line: 146, baseType: !205, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !202, file: !4, line: 215, baseType: !205, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !96, file: !4, line: 219, baseType: !205, size: 64, align: 64, offset: 2752)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !96, file: !4, line: 220, baseType: !219, size: 64, align: 64, offset: 2816)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !4, line: 135, baseType: !219, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !4, line: 136, baseType: !104, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !96, file: !4, line: 231, baseType: !225, size: 64, align: 64, offset: 2880)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !74, line: 122, size: 128, align: 64, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !74, line: 123, baseType: !225, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !226, file: !74, line: 124, baseType: !230, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !74, line: 90, size: 640, align: 64, elements: !232)
!232 = !{!233, !234, !235, !242, !250, !269, !272, !273, !274, !275}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !74, line: 91, baseType: !230, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !74, line: 92, baseType: !104, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !231, file: !74, line: 93, baseType: !236, size: 64, align: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !238, line: 34, size: 128, align: 64, elements: !239)
!238 = !DIFile(filename: "../../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !237, file: !238, line: 35, baseType: !236, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !237, file: !238, line: 36, baseType: !95, size: 64, align: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !231, file: !74, line: 94, baseType: !243, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !74, line: 151, size: 256, align: 64, elements: !245)
!245 = !{!246, !247, !248, !249}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !244, file: !74, line: 152, baseType: !230, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !244, file: !74, line: 153, baseType: !230, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !244, file: !74, line: 154, baseType: !99, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !74, line: 157, baseType: !243, size: 64, align: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !231, file: !74, line: 101, baseType: !251, size: 64, align: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !253, line: 40, size: 256, align: 64, elements: !254)
!253 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!254 = !{!255, !260, !263, !266, !268}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !252, file: !253, line: 41, baseType: !256, size: 32, align: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !257, line: 80, baseType: !258)
!257 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !259, line: 125, baseType: !140)
!259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!260 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !252, file: !253, line: 42, baseType: !261, size: 32, align: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !257, line: 65, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !259, line: 126, baseType: !140)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !252, file: !253, line: 43, baseType: !264, size: 32, align: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !257, line: 70, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !259, line: 129, baseType: !140)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !252, file: !253, line: 47, baseType: !267, size: 64, align: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !252, file: !253, line: 48, baseType: !267, size: 64, align: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !231, file: !74, line: 103, baseType: !270, size: 64, align: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !74, line: 103, flags: DIFlagFwdDecl)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !231, file: !74, line: 111, baseType: !73, size: 32, align: 32, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !231, file: !74, line: 114, baseType: !104, size: 64, align: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !231, file: !74, line: 117, baseType: !104, size: 64, align: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !231, file: !74, line: 119, baseType: !276, size: 64, align: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !74, line: 85, size: 128, align: 64, elements: !278)
!278 = !{!279, !283}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !277, file: !74, line: 86, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !257, line: 60, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !259, line: 124, baseType: !282)
!282 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !277, file: !74, line: 87, baseType: !284, size: 64, align: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !257, line: 48, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !259, line: 127, baseType: !282)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !96, file: !4, line: 232, baseType: !287, size: 64, align: 64, offset: 2944)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !257, line: 86, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !259, line: 131, baseType: !289)
!289 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !96, file: !4, line: 233, baseType: !145, size: 8, align: 8, offset: 3008)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !96, file: !4, line: 236, baseType: !145, size: 8, align: 8, offset: 3016)
!292 = !{}
!293 = !DILocalVariable(name: "pkg", arg: 1, scope: !91, file: !92, line: 36, type: !95)
!294 = !DIExpression()
!295 = !DILocation(line: 36, column: 33, scope: !91)
!296 = !DILocalVariable(name: "current", scope: !91, file: !92, line: 38, type: !225)
!297 = !DILocation(line: 38, column: 29, scope: !91)
!298 = !DILocation(line: 40, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !91, file: !92, line: 40, column: 2)
!300 = !DILocation(line: 40, column: 22, scope: !299)
!301 = !DILocation(line: 40, column: 15, scope: !299)
!302 = !DILocation(line: 40, column: 7, scope: !299)
!303 = !DILocation(line: 41, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !92, line: 40, column: 2)
!305 = !DILocation(line: 40, column: 2, scope: !306)
!306 = !DILexicalBlockFile(scope: !299, file: !92, discriminator: 1)
!307 = !DILocalVariable(name: "pkg_prev", scope: !308, file: !92, line: 43, type: !309)
!308 = distinct !DILexicalBlock(scope: !304, file: !92, line: 42, column: 32)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!310 = !DILocation(line: 43, column: 21, scope: !308)
!311 = !DILocation(line: 43, column: 33, scope: !308)
!312 = !DILocation(line: 43, column: 42, scope: !308)
!313 = !DILocation(line: 43, column: 52, scope: !308)
!314 = !DILocalVariable(name: "pkg_node", scope: !308, file: !92, line: 44, type: !236)
!315 = !DILocation(line: 44, column: 20, scope: !308)
!316 = !DILocation(line: 49, column: 19, scope: !317)
!317 = distinct !DILexicalBlock(scope: !308, file: !92, line: 49, column: 3)
!318 = !DILocation(line: 49, column: 28, scope: !317)
!319 = !DILocation(line: 49, column: 38, scope: !317)
!320 = !DILocation(line: 49, column: 17, scope: !317)
!321 = !DILocation(line: 49, column: 8, scope: !317)
!322 = !DILocation(line: 50, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !317, file: !92, line: 49, column: 3)
!324 = !DILocation(line: 49, column: 3, scope: !325)
!325 = !DILexicalBlockFile(scope: !317, file: !92, discriminator: 1)
!326 = !DILocation(line: 52, column: 8, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !92, line: 52, column: 8)
!328 = distinct !DILexicalBlock(scope: !323, file: !92, line: 51, column: 35)
!329 = !DILocation(line: 52, column: 18, scope: !327)
!330 = !DILocation(line: 52, column: 25, scope: !327)
!331 = !DILocation(line: 52, column: 22, scope: !327)
!332 = !DILocation(line: 52, column: 8, scope: !328)
!333 = !DILocation(line: 53, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !327, file: !92, line: 52, column: 30)
!335 = !DILocation(line: 53, column: 27, scope: !334)
!336 = !DILocation(line: 53, column: 6, scope: !334)
!337 = !DILocation(line: 53, column: 15, scope: !334)
!338 = !DILocation(line: 57, column: 5, scope: !334)
!339 = !DILocation(line: 60, column: 16, scope: !328)
!340 = !DILocation(line: 60, column: 26, scope: !328)
!341 = !DILocation(line: 60, column: 13, scope: !328)
!342 = !DILocation(line: 61, column: 3, scope: !328)
!343 = !DILocation(line: 51, column: 19, scope: !323)
!344 = !DILocation(line: 51, column: 29, scope: !323)
!345 = !DILocation(line: 51, column: 17, scope: !323)
!346 = !DILocation(line: 49, column: 3, scope: !347)
!347 = !DILexicalBlockFile(scope: !323, file: !92, discriminator: 2)
!348 = distinct !{!348, !349}
!349 = !DILocation(line: 49, column: 3, scope: !308)
!350 = !DILocation(line: 62, column: 2, scope: !308)
!351 = !DILocation(line: 42, column: 17, scope: !304)
!352 = !DILocation(line: 42, column: 26, scope: !304)
!353 = !DILocation(line: 42, column: 15, scope: !304)
!354 = !DILocation(line: 40, column: 2, scope: !355)
!355 = !DILexicalBlockFile(scope: !304, file: !92, discriminator: 2)
!356 = distinct !{!356, !357}
!357 = !DILocation(line: 40, column: 2, scope: !91)
!358 = !DILocation(line: 63, column: 2, scope: !91)
!359 = !DILocation(line: 63, column: 7, scope: !91)
!360 = !DILocation(line: 63, column: 13, scope: !91)
!361 = !DILocation(line: 64, column: 1, scope: !91)
!362 = distinct !DISubprogram(name: "pkg_files_add_file", scope: !92, file: !92, line: 67, type: !363, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !292)
!363 = !DISubroutineType(types: !364)
!364 = !{!365, !95, !230, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!366 = !DILocalVariable(name: "pkg", arg: 1, scope: !362, file: !92, line: 67, type: !95)
!367 = !DILocation(line: 67, column: 36, scope: !362)
!368 = !DILocalVariable(name: "namenode", arg: 2, scope: !362, file: !92, line: 67, type: !230)
!369 = !DILocation(line: 67, column: 63, scope: !362)
!370 = !DILocalVariable(name: "file_tail", arg: 3, scope: !362, file: !92, line: 68, type: !365)
!371 = !DILocation(line: 68, column: 48, scope: !362)
!372 = !DILocalVariable(name: "newent", scope: !362, file: !92, line: 70, type: !225)
!373 = !DILocation(line: 70, column: 29, scope: !362)
!374 = !DILocalVariable(name: "pkg_node", scope: !362, file: !92, line: 71, type: !236)
!375 = !DILocation(line: 71, column: 19, scope: !362)
!376 = !DILocation(line: 73, column: 6, scope: !377)
!377 = distinct !DILexicalBlock(scope: !362, file: !92, line: 73, column: 6)
!378 = !DILocation(line: 73, column: 16, scope: !377)
!379 = !DILocation(line: 73, column: 6, scope: !362)
!380 = !DILocation(line: 74, column: 16, scope: !377)
!381 = !DILocation(line: 74, column: 21, scope: !377)
!382 = !DILocation(line: 74, column: 13, scope: !377)
!383 = !DILocation(line: 74, column: 3, scope: !377)
!384 = !DILocation(line: 77, column: 2, scope: !362)
!385 = !DILocation(line: 77, column: 11, scope: !386)
!386 = !DILexicalBlockFile(scope: !362, file: !92, discriminator: 1)
!387 = !DILocation(line: 77, column: 10, scope: !386)
!388 = !DILocation(line: 77, column: 22, scope: !386)
!389 = !DILocation(line: 77, column: 2, scope: !386)
!390 = !DILocation(line: 78, column: 19, scope: !362)
!391 = !DILocation(line: 78, column: 18, scope: !362)
!392 = !DILocation(line: 78, column: 31, scope: !362)
!393 = !DILocation(line: 78, column: 13, scope: !362)
!394 = !DILocation(line: 77, column: 2, scope: !395)
!395 = !DILexicalBlockFile(scope: !362, file: !92, discriminator: 2)
!396 = distinct !{!396, !384}
!397 = !DILocation(line: 81, column: 11, scope: !362)
!398 = !DILocation(line: 81, column: 9, scope: !362)
!399 = !DILocation(line: 82, column: 21, scope: !362)
!400 = !DILocation(line: 82, column: 2, scope: !362)
!401 = !DILocation(line: 82, column: 10, scope: !362)
!402 = !DILocation(line: 82, column: 19, scope: !362)
!403 = !DILocation(line: 83, column: 2, scope: !362)
!404 = !DILocation(line: 83, column: 10, scope: !362)
!405 = !DILocation(line: 83, column: 15, scope: !362)
!406 = !DILocation(line: 84, column: 15, scope: !362)
!407 = !DILocation(line: 84, column: 3, scope: !362)
!408 = !DILocation(line: 84, column: 13, scope: !362)
!409 = !DILocation(line: 85, column: 15, scope: !362)
!410 = !DILocation(line: 85, column: 23, scope: !362)
!411 = !DILocation(line: 85, column: 12, scope: !362)
!412 = !DILocation(line: 88, column: 13, scope: !362)
!413 = !DILocation(line: 88, column: 11, scope: !362)
!414 = !DILocation(line: 89, column: 18, scope: !362)
!415 = !DILocation(line: 89, column: 2, scope: !362)
!416 = !DILocation(line: 89, column: 12, scope: !362)
!417 = !DILocation(line: 89, column: 16, scope: !362)
!418 = !DILocation(line: 90, column: 19, scope: !362)
!419 = !DILocation(line: 90, column: 27, scope: !362)
!420 = !DILocation(line: 90, column: 37, scope: !362)
!421 = !DILocation(line: 90, column: 2, scope: !362)
!422 = !DILocation(line: 90, column: 12, scope: !362)
!423 = !DILocation(line: 90, column: 17, scope: !362)
!424 = !DILocation(line: 91, column: 31, scope: !362)
!425 = !DILocation(line: 91, column: 2, scope: !362)
!426 = !DILocation(line: 91, column: 10, scope: !362)
!427 = !DILocation(line: 91, column: 20, scope: !362)
!428 = !DILocation(line: 91, column: 29, scope: !362)
!429 = !DILocation(line: 94, column: 9, scope: !362)
!430 = !DILocation(line: 94, column: 2, scope: !362)
