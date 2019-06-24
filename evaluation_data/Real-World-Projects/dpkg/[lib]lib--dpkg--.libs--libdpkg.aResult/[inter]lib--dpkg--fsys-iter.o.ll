; ModuleID = './[inter]lib--dpkg--fsys-iter.o.i'
source_filename = "./[inter]lib--dpkg--fsys-iter.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fsys_hash_rev_iter = type { %struct.fsys_namenode_list* }
%struct.fsys_namenode_list = type { %struct.fsys_namenode_list*, %struct.fsys_namenode* }
%struct.fsys_namenode = type { %struct.fsys_namenode*, i8*, %struct.pkg_list*, %struct.fsys_diversion*, %struct.file_stat*, %struct.trigfileint*, i32, i8*, i8*, %struct.file_ondisk_id* }
%struct.pkg_list = type { %struct.pkg_list*, %struct.pkginfo* }
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
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }
%struct.fsys_node_pkgs_iter = type { %struct.pkg_list* }

; Function Attrs: nounwind uwtable
define void @fsys_hash_rev_iter_init(%struct.fsys_hash_rev_iter*, %struct.fsys_namenode_list*) #0 !dbg !91 {
  %3 = alloca %struct.fsys_hash_rev_iter*, align 8
  %4 = alloca %struct.fsys_namenode_list*, align 8
  %5 = alloca %struct.fsys_namenode_list*, align 8
  store %struct.fsys_hash_rev_iter* %0, %struct.fsys_hash_rev_iter** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_rev_iter** %3, metadata !297, metadata !298), !dbg !299
  store %struct.fsys_namenode_list* %1, %struct.fsys_namenode_list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %4, metadata !300, metadata !298), !dbg !301
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %5, metadata !302, metadata !298), !dbg !303
  %6 = load %struct.fsys_hash_rev_iter*, %struct.fsys_hash_rev_iter** %3, align 8, !dbg !304
  %7 = getelementptr inbounds %struct.fsys_hash_rev_iter, %struct.fsys_hash_rev_iter* %6, i32 0, i32 0, !dbg !305
  store %struct.fsys_namenode_list* null, %struct.fsys_namenode_list** %7, align 8, !dbg !306
  br label %8, !dbg !307

; <label>:8:                                      ; preds = %11, %2
  %9 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !308
  %10 = icmp ne %struct.fsys_namenode_list* %9, null, !dbg !310
  br i1 %10, label %11, label %30, !dbg !310

; <label>:11:                                     ; preds = %8
  %12 = call i8* @m_malloc(i64 16), !dbg !311
  %13 = bitcast i8* %12 to %struct.fsys_namenode_list*, !dbg !311
  store %struct.fsys_namenode_list* %13, %struct.fsys_namenode_list** %5, align 8, !dbg !313
  %14 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !314
  %15 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %14, i32 0, i32 1, !dbg !315
  %16 = load %struct.fsys_namenode*, %struct.fsys_namenode** %15, align 8, !dbg !315
  %17 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !316
  %18 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %17, i32 0, i32 1, !dbg !317
  store %struct.fsys_namenode* %16, %struct.fsys_namenode** %18, align 8, !dbg !318
  %19 = load %struct.fsys_hash_rev_iter*, %struct.fsys_hash_rev_iter** %3, align 8, !dbg !319
  %20 = getelementptr inbounds %struct.fsys_hash_rev_iter, %struct.fsys_hash_rev_iter* %19, i32 0, i32 0, !dbg !320
  %21 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %20, align 8, !dbg !320
  %22 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !321
  %23 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %22, i32 0, i32 0, !dbg !322
  store %struct.fsys_namenode_list* %21, %struct.fsys_namenode_list** %23, align 8, !dbg !323
  %24 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !324
  %25 = load %struct.fsys_hash_rev_iter*, %struct.fsys_hash_rev_iter** %3, align 8, !dbg !325
  %26 = getelementptr inbounds %struct.fsys_hash_rev_iter, %struct.fsys_hash_rev_iter* %25, i32 0, i32 0, !dbg !326
  store %struct.fsys_namenode_list* %24, %struct.fsys_namenode_list** %26, align 8, !dbg !327
  %27 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %4, align 8, !dbg !328
  %28 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %27, i32 0, i32 0, !dbg !329
  %29 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %28, align 8, !dbg !329
  store %struct.fsys_namenode_list* %29, %struct.fsys_namenode_list** %4, align 8, !dbg !330
  br label %8, !dbg !331, !llvm.loop !333

; <label>:30:                                     ; preds = %8
  ret void, !dbg !334
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @m_malloc(i64) #2

; Function Attrs: nounwind uwtable
define %struct.fsys_namenode* @fsys_hash_rev_iter_next(%struct.fsys_hash_rev_iter*) #0 !dbg !335 {
  %2 = alloca %struct.fsys_namenode*, align 8
  %3 = alloca %struct.fsys_hash_rev_iter*, align 8
  %4 = alloca %struct.fsys_namenode*, align 8
  %5 = alloca %struct.fsys_namenode_list*, align 8
  store %struct.fsys_hash_rev_iter* %0, %struct.fsys_hash_rev_iter** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_rev_iter** %3, metadata !338, metadata !298), !dbg !339
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %4, metadata !340, metadata !298), !dbg !341
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode_list** %5, metadata !342, metadata !298), !dbg !343
  %6 = load %struct.fsys_hash_rev_iter*, %struct.fsys_hash_rev_iter** %3, align 8, !dbg !344
  %7 = getelementptr inbounds %struct.fsys_hash_rev_iter, %struct.fsys_hash_rev_iter* %6, i32 0, i32 0, !dbg !345
  %8 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %7, align 8, !dbg !345
  store %struct.fsys_namenode_list* %8, %struct.fsys_namenode_list** %5, align 8, !dbg !346
  %9 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !347
  %10 = icmp ne %struct.fsys_namenode_list* %9, null, !dbg !347
  br i1 %10, label %12, label %11, !dbg !349

; <label>:11:                                     ; preds = %1
  store %struct.fsys_namenode* null, %struct.fsys_namenode** %2, align 8, !dbg !350
  br label %24, !dbg !350

; <label>:12:                                     ; preds = %1
  %13 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !351
  %14 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %13, i32 0, i32 1, !dbg !352
  %15 = load %struct.fsys_namenode*, %struct.fsys_namenode** %14, align 8, !dbg !352
  store %struct.fsys_namenode* %15, %struct.fsys_namenode** %4, align 8, !dbg !353
  %16 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !354
  %17 = getelementptr inbounds %struct.fsys_namenode_list, %struct.fsys_namenode_list* %16, i32 0, i32 0, !dbg !355
  %18 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %17, align 8, !dbg !355
  %19 = load %struct.fsys_hash_rev_iter*, %struct.fsys_hash_rev_iter** %3, align 8, !dbg !356
  %20 = getelementptr inbounds %struct.fsys_hash_rev_iter, %struct.fsys_hash_rev_iter* %19, i32 0, i32 0, !dbg !357
  store %struct.fsys_namenode_list* %18, %struct.fsys_namenode_list** %20, align 8, !dbg !358
  %21 = load %struct.fsys_namenode_list*, %struct.fsys_namenode_list** %5, align 8, !dbg !359
  %22 = bitcast %struct.fsys_namenode_list* %21 to i8*, !dbg !359
  call void @free(i8* %22) #4, !dbg !360
  %23 = load %struct.fsys_namenode*, %struct.fsys_namenode** %4, align 8, !dbg !361
  store %struct.fsys_namenode* %23, %struct.fsys_namenode** %2, align 8, !dbg !362
  br label %24, !dbg !362

; <label>:24:                                     ; preds = %12, %11
  %25 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !363
  ret %struct.fsys_namenode* %25, !dbg !363
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @fsys_hash_rev_iter_abort(%struct.fsys_hash_rev_iter*) #0 !dbg !364 {
  %2 = alloca %struct.fsys_hash_rev_iter*, align 8
  store %struct.fsys_hash_rev_iter* %0, %struct.fsys_hash_rev_iter** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_hash_rev_iter** %2, metadata !367, metadata !298), !dbg !368
  br label %3, !dbg !369

; <label>:3:                                      ; preds = %7, %1
  %4 = load %struct.fsys_hash_rev_iter*, %struct.fsys_hash_rev_iter** %2, align 8, !dbg !370
  %5 = call %struct.fsys_namenode* @fsys_hash_rev_iter_next(%struct.fsys_hash_rev_iter* %4), !dbg !372
  %6 = icmp ne %struct.fsys_namenode* %5, null, !dbg !373
  br i1 %6, label %7, label %8, !dbg !373

; <label>:7:                                      ; preds = %3
  br label %3, !dbg !374, !llvm.loop !376

; <label>:8:                                      ; preds = %3
  ret void, !dbg !377
}

; Function Attrs: nounwind uwtable
define %struct.fsys_node_pkgs_iter* @fsys_node_pkgs_iter_new(%struct.fsys_namenode*) #0 !dbg !378 {
  %2 = alloca %struct.fsys_namenode*, align 8
  %3 = alloca %struct.fsys_node_pkgs_iter*, align 8
  store %struct.fsys_namenode* %0, %struct.fsys_namenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_namenode** %2, metadata !385, metadata !298), !dbg !386
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %3, metadata !387, metadata !298), !dbg !388
  %4 = call i8* @m_malloc(i64 8), !dbg !389
  %5 = bitcast i8* %4 to %struct.fsys_node_pkgs_iter*, !dbg !389
  store %struct.fsys_node_pkgs_iter* %5, %struct.fsys_node_pkgs_iter** %3, align 8, !dbg !390
  %6 = load %struct.fsys_namenode*, %struct.fsys_namenode** %2, align 8, !dbg !391
  %7 = getelementptr inbounds %struct.fsys_namenode, %struct.fsys_namenode* %6, i32 0, i32 2, !dbg !392
  %8 = load %struct.pkg_list*, %struct.pkg_list** %7, align 8, !dbg !392
  %9 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %3, align 8, !dbg !393
  %10 = getelementptr inbounds %struct.fsys_node_pkgs_iter, %struct.fsys_node_pkgs_iter* %9, i32 0, i32 0, !dbg !394
  store %struct.pkg_list* %8, %struct.pkg_list** %10, align 8, !dbg !395
  %11 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %3, align 8, !dbg !396
  ret %struct.fsys_node_pkgs_iter* %11, !dbg !397
}

; Function Attrs: nounwind uwtable
define %struct.pkginfo* @fsys_node_pkgs_iter_next(%struct.fsys_node_pkgs_iter*) #0 !dbg !398 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.fsys_node_pkgs_iter*, align 8
  %4 = alloca %struct.pkg_list*, align 8
  store %struct.fsys_node_pkgs_iter* %0, %struct.fsys_node_pkgs_iter** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %3, metadata !401, metadata !298), !dbg !402
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %4, metadata !403, metadata !298), !dbg !404
  %5 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %3, align 8, !dbg !405
  %6 = getelementptr inbounds %struct.fsys_node_pkgs_iter, %struct.fsys_node_pkgs_iter* %5, i32 0, i32 0, !dbg !407
  %7 = load %struct.pkg_list*, %struct.pkg_list** %6, align 8, !dbg !407
  %8 = icmp eq %struct.pkg_list* %7, null, !dbg !408
  br i1 %8, label %9, label %10, !dbg !409

; <label>:9:                                      ; preds = %1
  store %struct.pkginfo* null, %struct.pkginfo** %2, align 8, !dbg !410
  br label %22, !dbg !410

; <label>:10:                                     ; preds = %1
  %11 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %3, align 8, !dbg !411
  %12 = getelementptr inbounds %struct.fsys_node_pkgs_iter, %struct.fsys_node_pkgs_iter* %11, i32 0, i32 0, !dbg !412
  %13 = load %struct.pkg_list*, %struct.pkg_list** %12, align 8, !dbg !412
  store %struct.pkg_list* %13, %struct.pkg_list** %4, align 8, !dbg !413
  %14 = load %struct.pkg_list*, %struct.pkg_list** %4, align 8, !dbg !414
  %15 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %14, i32 0, i32 0, !dbg !415
  %16 = load %struct.pkg_list*, %struct.pkg_list** %15, align 8, !dbg !415
  %17 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %3, align 8, !dbg !416
  %18 = getelementptr inbounds %struct.fsys_node_pkgs_iter, %struct.fsys_node_pkgs_iter* %17, i32 0, i32 0, !dbg !417
  store %struct.pkg_list* %16, %struct.pkg_list** %18, align 8, !dbg !418
  %19 = load %struct.pkg_list*, %struct.pkg_list** %4, align 8, !dbg !419
  %20 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %19, i32 0, i32 1, !dbg !420
  %21 = load %struct.pkginfo*, %struct.pkginfo** %20, align 8, !dbg !420
  store %struct.pkginfo* %21, %struct.pkginfo** %2, align 8, !dbg !421
  br label %22, !dbg !421

; <label>:22:                                     ; preds = %10, %9
  %23 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !422
  ret %struct.pkginfo* %23, !dbg !422
}

; Function Attrs: nounwind uwtable
define void @fsys_node_pkgs_iter_free(%struct.fsys_node_pkgs_iter*) #0 !dbg !423 {
  %2 = alloca %struct.fsys_node_pkgs_iter*, align 8
  store %struct.fsys_node_pkgs_iter* %0, %struct.fsys_node_pkgs_iter** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fsys_node_pkgs_iter** %2, metadata !426, metadata !298), !dbg !427
  %3 = load %struct.fsys_node_pkgs_iter*, %struct.fsys_node_pkgs_iter** %2, align 8, !dbg !428
  %4 = bitcast %struct.fsys_node_pkgs_iter* %3 to i8*, !dbg !428
  call void @free(i8* %4) #4, !dbg !429
  ret void, !dbg !430
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!88, !89}
!llvm.ident = !{!90}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86)
!1 = !DIFile(filename: "[inter]lib--dpkg--fsys-iter.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
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
!74 = !DIFile(filename: "fsys.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
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
!91 = distinct !DISubprogram(name: "fsys_hash_rev_iter_init", scope: !92, file: !92, line: 45, type: !93, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!92 = !DIFile(filename: "fsys-iter.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!93 = !DISubroutineType(types: !94)
!94 = !{null, !95, !99}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_hash_rev_iter", file: !74, line: 188, size: 64, align: 64, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "todo", scope: !96, file: !74, line: 189, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !74, line: 122, size: 128, align: 64, elements: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !74, line: 123, baseType: !99, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !100, file: !74, line: 124, baseType: !104, size: 64, align: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !74, line: 90, size: 640, align: 64, elements: !106)
!106 = !{!107, !108, !112, !254, !262, !279, !282, !283, !284, !285}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !74, line: 91, baseType: !104, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !74, line: 92, baseType: !109, size: 64, align: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !105, file: !74, line: 93, baseType: !113, size: 64, align: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !115, line: 34, size: 128, align: 64, elements: !116)
!115 = !DIFile(filename: "../../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !115, line: 35, baseType: !113, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !114, file: !115, line: 36, baseType: !119, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !121)
!121 = !{!122, !171, !172, !173, !174, !175, !176, !177, !178, !179, !209, !210, !213, !222, !238, !239, !245, !246, !252, !253}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !120, file: !4, line: 196, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !125)
!125 = !{!126, !127, !128, !129, !169}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !4, line: 243, baseType: !123, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !4, line: 244, baseType: !109, size: 64, align: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !124, file: !4, line: 245, baseType: !120, size: 3072, align: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !124, file: !4, line: 249, baseType: !130, size: 128, align: 64, offset: 3200)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !124, file: !4, line: 246, size: 128, align: 64, elements: !131)
!131 = !{!132, !168}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !130, file: !4, line: 247, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !135)
!135 = !{!136, !144, !145, !146, !147, !148, !157, !164, !165, !167}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !134, file: !4, line: 64, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !139)
!139 = !{!140, !141, !142, !143}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !138, file: !4, line: 57, baseType: !119, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !138, file: !4, line: 58, baseType: !137, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !138, file: !4, line: 59, baseType: !133, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !134, file: !4, line: 65, baseType: !123, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !4, line: 66, baseType: !133, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !134, file: !4, line: 66, baseType: !133, size: 64, align: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !134, file: !4, line: 66, baseType: !133, size: 64, align: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !134, file: !4, line: 67, baseType: !149, size: 64, align: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !152)
!152 = !{!153, !155, !156}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !16, line: 49, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !16, line: 50, baseType: !109, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !134, file: !4, line: 68, baseType: !158, size: 192, align: 64, offset: 384)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !159)
!159 = !{!160, !162, !163}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !158, file: !27, line: 44, baseType: !161, size: 32, align: 32)
!161 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !158, file: !27, line: 46, baseType: !109, size: 64, align: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !158, file: !27, line: 48, baseType: !109, size: 64, align: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !134, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !134, file: !4, line: 70, baseType: !166, size: 8, align: 8, offset: 608)
!166 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !134, file: !4, line: 71, baseType: !166, size: 8, align: 8, offset: 616)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !130, file: !4, line: 248, baseType: !133, size: 64, align: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !124, file: !4, line: 250, baseType: !170, size: 32, align: 32, offset: 3328)
!170 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !120, file: !4, line: 197, baseType: !119, size: 64, align: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !120, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !120, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !120, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !120, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !120, file: !4, line: 204, baseType: !109, size: 64, align: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !120, file: !4, line: 205, baseType: !109, size: 64, align: 64, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !120, file: !4, line: 206, baseType: !158, size: 192, align: 64, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !120, file: !4, line: 207, baseType: !180, size: 960, align: 64, offset: 576)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !202}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !180, file: !4, line: 108, baseType: !137, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !180, file: !4, line: 110, baseType: !166, size: 8, align: 8, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !180, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !180, file: !4, line: 112, baseType: !149, size: 64, align: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !180, file: !4, line: 115, baseType: !109, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !180, file: !4, line: 116, baseType: !109, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !180, file: !4, line: 117, baseType: !109, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !180, file: !4, line: 118, baseType: !109, size: 64, align: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !180, file: !4, line: 119, baseType: !109, size: 64, align: 64, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !180, file: !4, line: 120, baseType: !109, size: 64, align: 64, offset: 512)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !180, file: !4, line: 121, baseType: !109, size: 64, align: 64, offset: 576)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !180, file: !4, line: 122, baseType: !158, size: 192, align: 64, offset: 640)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !180, file: !4, line: 123, baseType: !195, size: 64, align: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !197)
!197 = !{!198, !199, !200, !201}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !4, line: 81, baseType: !195, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !4, line: 82, baseType: !109, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !196, file: !4, line: 83, baseType: !109, size: 64, align: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !196, file: !4, line: 84, baseType: !166, size: 8, align: 8, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !180, file: !4, line: 124, baseType: !203, size: 64, align: 64, offset: 896)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !4, line: 75, baseType: !203, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !4, line: 76, baseType: !109, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !204, file: !4, line: 77, baseType: !109, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !120, file: !4, line: 208, baseType: !180, size: 960, align: 64, offset: 1536)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !120, file: !4, line: 209, baseType: !211, size: 64, align: 64, offset: 2496)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !120, file: !4, line: 211, baseType: !214, size: 64, align: 64, offset: 2560)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !216)
!216 = !{!217, !218, !219, !220, !221}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !4, line: 88, baseType: !214, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !4, line: 89, baseType: !109, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !215, file: !4, line: 90, baseType: !109, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !215, file: !4, line: 91, baseType: !109, size: 64, align: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !215, file: !4, line: 92, baseType: !109, size: 64, align: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !120, file: !4, line: 216, baseType: !223, size: 128, align: 64, offset: 2624)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !4, line: 213, size: 128, align: 64, elements: !224)
!224 = !{!225, !237}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !223, file: !4, line: 215, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !228)
!228 = !{!229, !230, !231, !232}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !227, file: !4, line: 143, baseType: !119, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !227, file: !4, line: 143, baseType: !119, size: 64, align: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !227, file: !4, line: 144, baseType: !226, size: 64, align: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !227, file: !4, line: 147, baseType: !233, size: 128, align: 64, offset: 192)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !227, file: !4, line: 145, size: 128, align: 64, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !4, line: 146, baseType: !226, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !233, file: !4, line: 146, baseType: !226, size: 64, align: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !223, file: !4, line: 215, baseType: !226, size: 64, align: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !120, file: !4, line: 219, baseType: !226, size: 64, align: 64, offset: 2752)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !120, file: !4, line: 220, baseType: !240, size: 64, align: 64, offset: 2816)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !4, line: 135, baseType: !240, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !4, line: 136, baseType: !109, size: 64, align: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !120, file: !4, line: 231, baseType: !99, size: 64, align: 64, offset: 2880)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !120, file: !4, line: 232, baseType: !247, size: 64, align: 64, offset: 2944)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !248, line: 86, baseType: !249)
!248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !250, line: 131, baseType: !251)
!250 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!251 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !120, file: !4, line: 233, baseType: !166, size: 8, align: 8, offset: 3008)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !120, file: !4, line: 236, baseType: !166, size: 8, align: 8, offset: 3016)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !105, file: !74, line: 94, baseType: !255, size: 64, align: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !74, line: 151, size: 256, align: 64, elements: !257)
!257 = !{!258, !259, !260, !261}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !256, file: !74, line: 152, baseType: !104, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !256, file: !74, line: 153, baseType: !104, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !256, file: !74, line: 154, baseType: !123, size: 64, align: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !74, line: 157, baseType: !255, size: 64, align: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !105, file: !74, line: 101, baseType: !263, size: 64, align: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !265, line: 40, size: 256, align: 64, elements: !266)
!265 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!266 = !{!267, !270, !273, !276, !278}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !264, file: !265, line: 41, baseType: !268, size: 32, align: 32)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !248, line: 80, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !250, line: 125, baseType: !161)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !264, file: !265, line: 42, baseType: !271, size: 32, align: 32, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !248, line: 65, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !250, line: 126, baseType: !161)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !264, file: !265, line: 43, baseType: !274, size: 32, align: 32, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !248, line: 70, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !250, line: 129, baseType: !161)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !264, file: !265, line: 47, baseType: !277, size: 64, align: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !264, file: !265, line: 48, baseType: !277, size: 64, align: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !105, file: !74, line: 103, baseType: !280, size: 64, align: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !74, line: 103, flags: DIFlagFwdDecl)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !74, line: 111, baseType: !73, size: 32, align: 32, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !105, file: !74, line: 114, baseType: !109, size: 64, align: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !105, file: !74, line: 117, baseType: !109, size: 64, align: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !105, file: !74, line: 119, baseType: !286, size: 64, align: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !74, line: 85, size: 128, align: 64, elements: !288)
!288 = !{!289, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !287, file: !74, line: 86, baseType: !290, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !248, line: 60, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !250, line: 124, baseType: !292)
!292 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !287, file: !74, line: 87, baseType: !294, size: 64, align: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !248, line: 48, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !250, line: 127, baseType: !292)
!296 = !{}
!297 = !DILocalVariable(name: "iter", arg: 1, scope: !91, file: !92, line: 45, type: !95)
!298 = !DIExpression()
!299 = !DILocation(line: 45, column: 52, scope: !91)
!300 = !DILocalVariable(name: "files", arg: 2, scope: !91, file: !92, line: 46, type: !99)
!301 = !DILocation(line: 46, column: 52, scope: !91)
!302 = !DILocalVariable(name: "newent", scope: !91, file: !92, line: 48, type: !99)
!303 = !DILocation(line: 48, column: 29, scope: !91)
!304 = !DILocation(line: 50, column: 2, scope: !91)
!305 = !DILocation(line: 50, column: 8, scope: !91)
!306 = !DILocation(line: 50, column: 13, scope: !91)
!307 = !DILocation(line: 51, column: 2, scope: !91)
!308 = !DILocation(line: 51, column: 9, scope: !309)
!309 = !DILexicalBlockFile(scope: !91, file: !92, discriminator: 1)
!310 = !DILocation(line: 51, column: 2, scope: !309)
!311 = !DILocation(line: 52, column: 12, scope: !312)
!312 = distinct !DILexicalBlock(scope: !91, file: !92, line: 51, column: 16)
!313 = !DILocation(line: 52, column: 10, scope: !312)
!314 = !DILocation(line: 53, column: 22, scope: !312)
!315 = !DILocation(line: 53, column: 29, scope: !312)
!316 = !DILocation(line: 53, column: 3, scope: !312)
!317 = !DILocation(line: 53, column: 11, scope: !312)
!318 = !DILocation(line: 53, column: 20, scope: !312)
!319 = !DILocation(line: 54, column: 18, scope: !312)
!320 = !DILocation(line: 54, column: 24, scope: !312)
!321 = !DILocation(line: 54, column: 3, scope: !312)
!322 = !DILocation(line: 54, column: 11, scope: !312)
!323 = !DILocation(line: 54, column: 16, scope: !312)
!324 = !DILocation(line: 55, column: 16, scope: !312)
!325 = !DILocation(line: 55, column: 3, scope: !312)
!326 = !DILocation(line: 55, column: 9, scope: !312)
!327 = !DILocation(line: 55, column: 14, scope: !312)
!328 = !DILocation(line: 56, column: 11, scope: !312)
!329 = !DILocation(line: 56, column: 18, scope: !312)
!330 = !DILocation(line: 56, column: 9, scope: !312)
!331 = !DILocation(line: 51, column: 2, scope: !332)
!332 = !DILexicalBlockFile(scope: !91, file: !92, discriminator: 2)
!333 = distinct !{!333, !307}
!334 = !DILocation(line: 58, column: 1, scope: !91)
!335 = distinct !DISubprogram(name: "fsys_hash_rev_iter_next", scope: !92, file: !92, line: 61, type: !336, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!336 = !DISubroutineType(types: !337)
!337 = !{!104, !95}
!338 = !DILocalVariable(name: "iter", arg: 1, scope: !335, file: !92, line: 61, type: !95)
!339 = !DILocation(line: 61, column: 52, scope: !335)
!340 = !DILocalVariable(name: "next", scope: !335, file: !92, line: 63, type: !104)
!341 = !DILocation(line: 63, column: 24, scope: !335)
!342 = !DILocalVariable(name: "todo", scope: !335, file: !92, line: 64, type: !99)
!343 = !DILocation(line: 64, column: 29, scope: !335)
!344 = !DILocation(line: 66, column: 9, scope: !335)
!345 = !DILocation(line: 66, column: 15, scope: !335)
!346 = !DILocation(line: 66, column: 7, scope: !335)
!347 = !DILocation(line: 67, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !335, file: !92, line: 67, column: 6)
!349 = !DILocation(line: 67, column: 6, scope: !335)
!350 = !DILocation(line: 68, column: 3, scope: !348)
!351 = !DILocation(line: 69, column: 9, scope: !335)
!352 = !DILocation(line: 69, column: 15, scope: !335)
!353 = !DILocation(line: 69, column: 7, scope: !335)
!354 = !DILocation(line: 70, column: 15, scope: !335)
!355 = !DILocation(line: 70, column: 21, scope: !335)
!356 = !DILocation(line: 70, column: 2, scope: !335)
!357 = !DILocation(line: 70, column: 8, scope: !335)
!358 = !DILocation(line: 70, column: 13, scope: !335)
!359 = !DILocation(line: 71, column: 7, scope: !335)
!360 = !DILocation(line: 71, column: 2, scope: !335)
!361 = !DILocation(line: 73, column: 9, scope: !335)
!362 = !DILocation(line: 73, column: 2, scope: !335)
!363 = !DILocation(line: 74, column: 1, scope: !335)
!364 = distinct !DISubprogram(name: "fsys_hash_rev_iter_abort", scope: !92, file: !92, line: 83, type: !365, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !95}
!367 = !DILocalVariable(name: "iter", arg: 1, scope: !364, file: !92, line: 83, type: !95)
!368 = !DILocation(line: 83, column: 53, scope: !364)
!369 = !DILocation(line: 85, column: 2, scope: !364)
!370 = !DILocation(line: 85, column: 33, scope: !371)
!371 = !DILexicalBlockFile(scope: !364, file: !92, discriminator: 1)
!372 = !DILocation(line: 85, column: 9, scope: !371)
!373 = !DILocation(line: 85, column: 2, scope: !371)
!374 = !DILocation(line: 85, column: 2, scope: !375)
!375 = !DILexicalBlockFile(scope: !364, file: !92, discriminator: 2)
!376 = distinct !{!376, !369}
!377 = !DILocation(line: 87, column: 1, scope: !364)
!378 = distinct !DISubprogram(name: "fsys_node_pkgs_iter_new", scope: !92, file: !92, line: 98, type: !379, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !104}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_node_pkgs_iter", file: !92, line: 93, size: 64, align: 64, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_node", scope: !382, file: !92, line: 94, baseType: !113, size: 64, align: 64)
!385 = !DILocalVariable(name: "fnn", arg: 1, scope: !378, file: !92, line: 98, type: !104)
!386 = !DILocation(line: 98, column: 47, scope: !378)
!387 = !DILocalVariable(name: "iter", scope: !378, file: !92, line: 100, type: !381)
!388 = !DILocation(line: 100, column: 30, scope: !378)
!389 = !DILocation(line: 102, column: 9, scope: !378)
!390 = !DILocation(line: 102, column: 7, scope: !378)
!391 = !DILocation(line: 103, column: 19, scope: !378)
!392 = !DILocation(line: 103, column: 24, scope: !378)
!393 = !DILocation(line: 103, column: 2, scope: !378)
!394 = !DILocation(line: 103, column: 8, scope: !378)
!395 = !DILocation(line: 103, column: 17, scope: !378)
!396 = !DILocation(line: 105, column: 9, scope: !378)
!397 = !DILocation(line: 105, column: 2, scope: !378)
!398 = distinct !DISubprogram(name: "fsys_node_pkgs_iter_next", scope: !92, file: !92, line: 109, type: !399, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!399 = !DISubroutineType(types: !400)
!400 = !{!119, !381}
!401 = !DILocalVariable(name: "iter", arg: 1, scope: !398, file: !92, line: 109, type: !381)
!402 = !DILocation(line: 109, column: 54, scope: !398)
!403 = !DILocalVariable(name: "pkg_node", scope: !398, file: !92, line: 111, type: !113)
!404 = !DILocation(line: 111, column: 19, scope: !398)
!405 = !DILocation(line: 113, column: 6, scope: !406)
!406 = distinct !DILexicalBlock(scope: !398, file: !92, line: 113, column: 6)
!407 = !DILocation(line: 113, column: 12, scope: !406)
!408 = !DILocation(line: 113, column: 21, scope: !406)
!409 = !DILocation(line: 113, column: 6, scope: !398)
!410 = !DILocation(line: 114, column: 3, scope: !406)
!411 = !DILocation(line: 116, column: 13, scope: !398)
!412 = !DILocation(line: 116, column: 19, scope: !398)
!413 = !DILocation(line: 116, column: 11, scope: !398)
!414 = !DILocation(line: 117, column: 19, scope: !398)
!415 = !DILocation(line: 117, column: 29, scope: !398)
!416 = !DILocation(line: 117, column: 2, scope: !398)
!417 = !DILocation(line: 117, column: 8, scope: !398)
!418 = !DILocation(line: 117, column: 17, scope: !398)
!419 = !DILocation(line: 119, column: 9, scope: !398)
!420 = !DILocation(line: 119, column: 19, scope: !398)
!421 = !DILocation(line: 119, column: 2, scope: !398)
!422 = !DILocation(line: 120, column: 1, scope: !398)
!423 = distinct !DISubprogram(name: "fsys_node_pkgs_iter_free", scope: !92, file: !92, line: 123, type: !424, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !381}
!426 = !DILocalVariable(name: "iter", arg: 1, scope: !423, file: !92, line: 123, type: !381)
!427 = !DILocation(line: 123, column: 54, scope: !423)
!428 = !DILocation(line: 125, column: 7, scope: !423)
!429 = !DILocation(line: 125, column: 2, scope: !423)
!430 = !DILocation(line: 126, column: 1, scope: !423)
