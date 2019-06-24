; ModuleID = './[inter]lib--dpkg--pkg-list.o.i'
source_filename = "./[inter]lib--dpkg--pkg-list.o.i"
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
%struct.fsys_namenode_list = type opaque
%struct.pkg_list = type { %struct.pkg_list*, %struct.pkginfo* }

; Function Attrs: nounwind uwtable
define %struct.pkg_list* @pkg_list_new(%struct.pkginfo*, %struct.pkg_list*) #0 !dbg !76 {
  %3 = alloca %struct.pkginfo*, align 8
  %4 = alloca %struct.pkg_list*, align 8
  %5 = alloca %struct.pkg_list*, align 8
  store %struct.pkginfo* %0, %struct.pkginfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %3, metadata !227, metadata !228), !dbg !229
  store %struct.pkg_list* %1, %struct.pkg_list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %4, metadata !230, metadata !228), !dbg !231
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %5, metadata !232, metadata !228), !dbg !233
  %6 = call i8* @m_malloc(i64 16), !dbg !234
  %7 = bitcast i8* %6 to %struct.pkg_list*, !dbg !234
  store %struct.pkg_list* %7, %struct.pkg_list** %5, align 8, !dbg !235
  %8 = load %struct.pkginfo*, %struct.pkginfo** %3, align 8, !dbg !236
  %9 = load %struct.pkg_list*, %struct.pkg_list** %5, align 8, !dbg !237
  %10 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %9, i32 0, i32 1, !dbg !238
  store %struct.pkginfo* %8, %struct.pkginfo** %10, align 8, !dbg !239
  %11 = load %struct.pkg_list*, %struct.pkg_list** %4, align 8, !dbg !240
  %12 = load %struct.pkg_list*, %struct.pkg_list** %5, align 8, !dbg !241
  %13 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %12, i32 0, i32 0, !dbg !242
  store %struct.pkg_list* %11, %struct.pkg_list** %13, align 8, !dbg !243
  %14 = load %struct.pkg_list*, %struct.pkg_list** %5, align 8, !dbg !244
  ret %struct.pkg_list* %14, !dbg !245
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @m_malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @pkg_list_free(%struct.pkg_list*) #0 !dbg !246 {
  %2 = alloca %struct.pkg_list*, align 8
  %3 = alloca %struct.pkg_list*, align 8
  store %struct.pkg_list* %0, %struct.pkg_list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %2, metadata !249, metadata !228), !dbg !250
  br label %4, !dbg !251

; <label>:4:                                      ; preds = %7, %1
  %5 = load %struct.pkg_list*, %struct.pkg_list** %2, align 8, !dbg !252
  %6 = icmp ne %struct.pkg_list* %5, null, !dbg !254
  br i1 %6, label %7, label %14, !dbg !254

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %3, metadata !255, metadata !228), !dbg !257
  %8 = load %struct.pkg_list*, %struct.pkg_list** %2, align 8, !dbg !258
  store %struct.pkg_list* %8, %struct.pkg_list** %3, align 8, !dbg !259
  %9 = load %struct.pkg_list*, %struct.pkg_list** %2, align 8, !dbg !260
  %10 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %9, i32 0, i32 0, !dbg !261
  %11 = load %struct.pkg_list*, %struct.pkg_list** %10, align 8, !dbg !261
  store %struct.pkg_list* %11, %struct.pkg_list** %2, align 8, !dbg !262
  %12 = load %struct.pkg_list*, %struct.pkg_list** %3, align 8, !dbg !263
  %13 = bitcast %struct.pkg_list* %12 to i8*, !dbg !263
  call void @free(i8* %13) #4, !dbg !264
  br label %4, !dbg !265, !llvm.loop !267

; <label>:14:                                     ; preds = %4
  ret void, !dbg !268
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @pkg_list_prepend(%struct.pkg_list**, %struct.pkginfo*) #0 !dbg !269 {
  %3 = alloca %struct.pkg_list**, align 8
  %4 = alloca %struct.pkginfo*, align 8
  store %struct.pkg_list** %0, %struct.pkg_list*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_list*** %3, metadata !273, metadata !228), !dbg !274
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !275, metadata !228), !dbg !276
  %5 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !277
  %6 = load %struct.pkg_list**, %struct.pkg_list*** %3, align 8, !dbg !278
  %7 = load %struct.pkg_list*, %struct.pkg_list** %6, align 8, !dbg !279
  %8 = call %struct.pkg_list* @pkg_list_new(%struct.pkginfo* %5, %struct.pkg_list* %7), !dbg !280
  %9 = load %struct.pkg_list**, %struct.pkg_list*** %3, align 8, !dbg !281
  store %struct.pkg_list* %8, %struct.pkg_list** %9, align 8, !dbg !282
  ret void, !dbg !283
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!73, !74}
!llvm.ident = !{!75}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--pkg-list.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
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
!73 = !{i32 2, !"Dwarf Version", i32 4}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!76 = distinct !DISubprogram(name: "pkg_list_new", scope: !77, file: !77, line: 39, type: !78, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !226)
!77 = !DIFile(filename: "pkg-list.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !86, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !82, line: 34, size: 128, align: 64, elements: !83)
!82 = !DIFile(filename: "../../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !82, line: 35, baseType: !80, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !81, file: !82, line: 36, baseType: !86, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !88)
!88 = !{!89, !141, !142, !143, !144, !145, !146, !147, !148, !149, !179, !180, !183, !192, !208, !209, !215, !218, !224, !225}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !87, file: !4, line: 196, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !92)
!92 = !{!93, !94, !98, !99, !139}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !4, line: 243, baseType: !90, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !4, line: 244, baseType: !95, size: 64, align: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !91, file: !4, line: 245, baseType: !87, size: 3072, align: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !91, file: !4, line: 249, baseType: !100, size: 128, align: 64, offset: 3200)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !91, file: !4, line: 246, size: 128, align: 64, elements: !101)
!101 = !{!102, !138}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !100, file: !4, line: 247, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !105)
!105 = !{!106, !114, !115, !116, !117, !118, !127, !134, !135, !137}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !104, file: !4, line: 64, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !109)
!109 = !{!110, !111, !112, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !108, file: !4, line: 57, baseType: !86, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !108, file: !4, line: 58, baseType: !107, size: 64, align: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !108, file: !4, line: 59, baseType: !103, size: 64, align: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !104, file: !4, line: 65, baseType: !90, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !4, line: 66, baseType: !103, size: 64, align: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !104, file: !4, line: 66, baseType: !103, size: 64, align: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !104, file: !4, line: 66, baseType: !103, size: 64, align: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !104, file: !4, line: 67, baseType: !119, size: 64, align: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !122)
!122 = !{!123, !125, !126}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !121, file: !16, line: 49, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !121, file: !16, line: 50, baseType: !95, size: 64, align: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !121, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !104, file: !4, line: 68, baseType: !128, size: 192, align: 64, offset: 384)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !129)
!129 = !{!130, !132, !133}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !128, file: !27, line: 44, baseType: !131, size: 32, align: 32)
!131 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !128, file: !27, line: 46, baseType: !95, size: 64, align: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !128, file: !27, line: 48, baseType: !95, size: 64, align: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !104, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !104, file: !4, line: 70, baseType: !136, size: 8, align: 8, offset: 608)
!136 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !104, file: !4, line: 71, baseType: !136, size: 8, align: 8, offset: 616)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !100, file: !4, line: 248, baseType: !103, size: 64, align: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !91, file: !4, line: 250, baseType: !140, size: 32, align: 32, offset: 3328)
!140 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !87, file: !4, line: 197, baseType: !86, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !87, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !87, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !87, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !87, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !87, file: !4, line: 204, baseType: !95, size: 64, align: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !87, file: !4, line: 205, baseType: !95, size: 64, align: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !87, file: !4, line: 206, baseType: !128, size: 192, align: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !87, file: !4, line: 207, baseType: !150, size: 960, align: 64, offset: 576)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !172}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !150, file: !4, line: 108, baseType: !107, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !150, file: !4, line: 110, baseType: !136, size: 8, align: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !150, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !150, file: !4, line: 112, baseType: !119, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !150, file: !4, line: 115, baseType: !95, size: 64, align: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !150, file: !4, line: 116, baseType: !95, size: 64, align: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !150, file: !4, line: 117, baseType: !95, size: 64, align: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !150, file: !4, line: 118, baseType: !95, size: 64, align: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !150, file: !4, line: 119, baseType: !95, size: 64, align: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !150, file: !4, line: 120, baseType: !95, size: 64, align: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !150, file: !4, line: 121, baseType: !95, size: 64, align: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !150, file: !4, line: 122, baseType: !128, size: 192, align: 64, offset: 640)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !150, file: !4, line: 123, baseType: !165, size: 64, align: 64, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !167)
!167 = !{!168, !169, !170, !171}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !4, line: 81, baseType: !165, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !4, line: 82, baseType: !95, size: 64, align: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !166, file: !4, line: 83, baseType: !95, size: 64, align: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !166, file: !4, line: 84, baseType: !136, size: 8, align: 8, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !150, file: !4, line: 124, baseType: !173, size: 64, align: 64, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !4, line: 75, baseType: !173, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !4, line: 76, baseType: !95, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !174, file: !4, line: 77, baseType: !95, size: 64, align: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !87, file: !4, line: 208, baseType: !150, size: 960, align: 64, offset: 1536)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !87, file: !4, line: 209, baseType: !181, size: 64, align: 64, offset: 2496)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !87, file: !4, line: 211, baseType: !184, size: 64, align: 64, offset: 2560)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !186)
!186 = !{!187, !188, !189, !190, !191}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !4, line: 88, baseType: !184, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !4, line: 89, baseType: !95, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !185, file: !4, line: 90, baseType: !95, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !185, file: !4, line: 91, baseType: !95, size: 64, align: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !185, file: !4, line: 92, baseType: !95, size: 64, align: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !87, file: !4, line: 216, baseType: !193, size: 128, align: 64, offset: 2624)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !87, file: !4, line: 213, size: 128, align: 64, elements: !194)
!194 = !{!195, !207}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !193, file: !4, line: 215, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !198)
!198 = !{!199, !200, !201, !202}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !197, file: !4, line: 143, baseType: !86, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !197, file: !4, line: 143, baseType: !86, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !197, file: !4, line: 144, baseType: !196, size: 64, align: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !197, file: !4, line: 147, baseType: !203, size: 128, align: 64, offset: 192)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !4, line: 145, size: 128, align: 64, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !4, line: 146, baseType: !196, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !203, file: !4, line: 146, baseType: !196, size: 64, align: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !193, file: !4, line: 215, baseType: !196, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !87, file: !4, line: 219, baseType: !196, size: 64, align: 64, offset: 2752)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !87, file: !4, line: 220, baseType: !210, size: 64, align: 64, offset: 2816)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !4, line: 135, baseType: !210, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !4, line: 136, baseType: !95, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !87, file: !4, line: 231, baseType: !216, size: 64, align: 64, offset: 2880)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !4, line: 231, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !87, file: !4, line: 232, baseType: !219, size: 64, align: 64, offset: 2944)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !220, line: 86, baseType: !221)
!220 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !222, line: 131, baseType: !223)
!222 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!223 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !87, file: !4, line: 233, baseType: !136, size: 8, align: 8, offset: 3008)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !87, file: !4, line: 236, baseType: !136, size: 8, align: 8, offset: 3016)
!226 = !{}
!227 = !DILocalVariable(name: "pkg", arg: 1, scope: !76, file: !77, line: 39, type: !86)
!228 = !DIExpression()
!229 = !DILocation(line: 39, column: 30, scope: !76)
!230 = !DILocalVariable(name: "next", arg: 2, scope: !76, file: !77, line: 39, type: !80)
!231 = !DILocation(line: 39, column: 52, scope: !76)
!232 = !DILocalVariable(name: "node", scope: !76, file: !77, line: 41, type: !80)
!233 = !DILocation(line: 41, column: 19, scope: !76)
!234 = !DILocation(line: 43, column: 9, scope: !76)
!235 = !DILocation(line: 43, column: 7, scope: !76)
!236 = !DILocation(line: 44, column: 14, scope: !76)
!237 = !DILocation(line: 44, column: 2, scope: !76)
!238 = !DILocation(line: 44, column: 8, scope: !76)
!239 = !DILocation(line: 44, column: 12, scope: !76)
!240 = !DILocation(line: 45, column: 15, scope: !76)
!241 = !DILocation(line: 45, column: 2, scope: !76)
!242 = !DILocation(line: 45, column: 8, scope: !76)
!243 = !DILocation(line: 45, column: 13, scope: !76)
!244 = !DILocation(line: 47, column: 9, scope: !76)
!245 = !DILocation(line: 47, column: 2, scope: !76)
!246 = distinct !DISubprogram(name: "pkg_list_free", scope: !77, file: !77, line: 56, type: !247, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !226)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !80}
!249 = !DILocalVariable(name: "head", arg: 1, scope: !246, file: !77, line: 56, type: !80)
!250 = !DILocation(line: 56, column: 32, scope: !246)
!251 = !DILocation(line: 58, column: 2, scope: !246)
!252 = !DILocation(line: 58, column: 9, scope: !253)
!253 = !DILexicalBlockFile(scope: !246, file: !77, discriminator: 1)
!254 = !DILocation(line: 58, column: 2, scope: !253)
!255 = !DILocalVariable(name: "node", scope: !256, file: !77, line: 59, type: !80)
!256 = distinct !DILexicalBlock(scope: !246, file: !77, line: 58, column: 15)
!257 = !DILocation(line: 59, column: 20, scope: !256)
!258 = !DILocation(line: 61, column: 10, scope: !256)
!259 = !DILocation(line: 61, column: 8, scope: !256)
!260 = !DILocation(line: 62, column: 10, scope: !256)
!261 = !DILocation(line: 62, column: 16, scope: !256)
!262 = !DILocation(line: 62, column: 8, scope: !256)
!263 = !DILocation(line: 64, column: 8, scope: !256)
!264 = !DILocation(line: 64, column: 3, scope: !256)
!265 = !DILocation(line: 58, column: 2, scope: !266)
!266 = !DILexicalBlockFile(scope: !246, file: !77, discriminator: 2)
!267 = distinct !{!267, !251}
!268 = !DILocation(line: 66, column: 1, scope: !246)
!269 = distinct !DISubprogram(name: "pkg_list_prepend", scope: !77, file: !77, line: 75, type: !270, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !226)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !272, !86}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!273 = !DILocalVariable(name: "head", arg: 1, scope: !269, file: !77, line: 75, type: !272)
!274 = !DILocation(line: 75, column: 36, scope: !269)
!275 = !DILocalVariable(name: "pkg", arg: 2, scope: !269, file: !77, line: 75, type: !86)
!276 = !DILocation(line: 75, column: 58, scope: !269)
!277 = !DILocation(line: 77, column: 23, scope: !269)
!278 = !DILocation(line: 77, column: 29, scope: !269)
!279 = !DILocation(line: 77, column: 28, scope: !269)
!280 = !DILocation(line: 77, column: 10, scope: !269)
!281 = !DILocation(line: 77, column: 3, scope: !269)
!282 = !DILocation(line: 77, column: 8, scope: !269)
!283 = !DILocation(line: 78, column: 1, scope: !269)
