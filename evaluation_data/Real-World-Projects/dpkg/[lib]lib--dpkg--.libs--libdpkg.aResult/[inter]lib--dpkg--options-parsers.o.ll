; ModuleID = './[inter]lib--dpkg--options-parsers.o.i'
source_filename = "./[inter]lib--dpkg--options-parsers.o.i"
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
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, void (%struct.cmdinfo*, i8*)*, i32, i8*, i32 (i8**)* }
%struct.dpkg_error = type { i32, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"--%s needs a valid package name but '%.250s' is not: %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pkginfo* @dpkg_options_parse_pkgname(%struct.cmdinfo*, i8*) #0 !dbg !84 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  %6 = alloca %struct.dpkg_error, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !254, metadata !255), !dbg !256
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !257, metadata !255), !dbg !258
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !259, metadata !255), !dbg !260
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %6, metadata !261, metadata !255), !dbg !268
  %7 = load i8*, i8** %4, align 8, !dbg !269
  %8 = call %struct.pkginfo* @pkg_spec_parse_pkg(i8* %7, %struct.dpkg_error* %6), !dbg !270
  store %struct.pkginfo* %8, %struct.pkginfo** %5, align 8, !dbg !271
  %9 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !272
  %10 = icmp eq %struct.pkginfo* %9, null, !dbg !274
  br i1 %10, label %11, label %19, !dbg !275

; <label>:11:                                     ; preds = %2
  %12 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !276
  %13 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !277
  %14 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %13, i32 0, i32 0, !dbg !278
  %15 = load i8*, i8** %14, align 8, !dbg !278
  %16 = load i8*, i8** %4, align 8, !dbg !279
  %17 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %6, i32 0, i32 2, !dbg !280
  %18 = load i8*, i8** %17, align 8, !dbg !280
  call void (i8*, ...) @badusage(i8* %12, i8* %15, i8* %16, i8* %18) #6, !dbg !281
  unreachable, !dbg !283

; <label>:19:                                     ; preds = %2
  %20 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !284
  ret %struct.pkginfo* %20, !dbg !285
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.pkginfo* @pkg_spec_parse_pkg(i8*, %struct.dpkg_error*) #2

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!81, !82}
!llvm.ident = !{!83}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !79)
!1 = !DIFile(filename: "[inter]lib--dpkg--options-parsers.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
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
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !74, line: 36, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!77 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!78 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!81 = !{i32 2, !"Dwarf Version", i32 4}
!82 = !{i32 2, !"Debug Info Version", i32 3}
!83 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!84 = distinct !DISubprogram(name: "dpkg_options_parse_pkgname", scope: !85, file: !85, line: 42, type: !86, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !253)
!85 = !DIFile(filename: "options-parsers.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !228, !97}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !90)
!90 = !{!91, !143, !144, !145, !146, !147, !148, !149, !150, !151, !181, !182, !185, !194, !210, !211, !217, !220, !226, !227}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !89, file: !4, line: 196, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !94)
!94 = !{!95, !96, !100, !101, !141}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !93, file: !4, line: 243, baseType: !92, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !93, file: !4, line: 244, baseType: !97, size: 64, align: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !93, file: !4, line: 245, baseType: !89, size: 3072, align: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !93, file: !4, line: 249, baseType: !102, size: 128, align: 64, offset: 3200)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !4, line: 246, size: 128, align: 64, elements: !103)
!103 = !{!104, !140}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !102, file: !4, line: 247, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !107)
!107 = !{!108, !116, !117, !118, !119, !120, !129, !136, !137, !139}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !106, file: !4, line: 64, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !111)
!111 = !{!112, !113, !114, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !110, file: !4, line: 57, baseType: !88, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !4, line: 58, baseType: !109, size: 64, align: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !110, file: !4, line: 59, baseType: !105, size: 64, align: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !106, file: !4, line: 65, baseType: !92, size: 64, align: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !4, line: 66, baseType: !105, size: 64, align: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !106, file: !4, line: 66, baseType: !105, size: 64, align: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !106, file: !4, line: 66, baseType: !105, size: 64, align: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !106, file: !4, line: 67, baseType: !121, size: 64, align: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !124)
!124 = !{!125, !127, !128}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !16, line: 49, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !16, line: 50, baseType: !97, size: 64, align: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !106, file: !4, line: 68, baseType: !130, size: 192, align: 64, offset: 384)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !131)
!131 = !{!132, !134, !135}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !130, file: !27, line: 44, baseType: !133, size: 32, align: 32)
!133 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !130, file: !27, line: 46, baseType: !97, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !130, file: !27, line: 48, baseType: !97, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !106, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !106, file: !4, line: 70, baseType: !138, size: 8, align: 8, offset: 608)
!138 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !106, file: !4, line: 71, baseType: !138, size: 8, align: 8, offset: 616)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !102, file: !4, line: 248, baseType: !105, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !93, file: !4, line: 250, baseType: !142, size: 32, align: 32, offset: 3328)
!142 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !89, file: !4, line: 197, baseType: !88, size: 64, align: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !89, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !89, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !89, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !89, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !89, file: !4, line: 204, baseType: !97, size: 64, align: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !89, file: !4, line: 205, baseType: !97, size: 64, align: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !89, file: !4, line: 206, baseType: !130, size: 192, align: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !89, file: !4, line: 207, baseType: !152, size: 960, align: 64, offset: 576)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !174}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !152, file: !4, line: 108, baseType: !109, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !152, file: !4, line: 110, baseType: !138, size: 8, align: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !152, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !152, file: !4, line: 112, baseType: !121, size: 64, align: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !152, file: !4, line: 115, baseType: !97, size: 64, align: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !152, file: !4, line: 116, baseType: !97, size: 64, align: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !152, file: !4, line: 117, baseType: !97, size: 64, align: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !152, file: !4, line: 118, baseType: !97, size: 64, align: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !152, file: !4, line: 119, baseType: !97, size: 64, align: 64, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !152, file: !4, line: 120, baseType: !97, size: 64, align: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !152, file: !4, line: 121, baseType: !97, size: 64, align: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !152, file: !4, line: 122, baseType: !130, size: 192, align: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !152, file: !4, line: 123, baseType: !167, size: 64, align: 64, offset: 832)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !169)
!169 = !{!170, !171, !172, !173}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !4, line: 81, baseType: !167, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !168, file: !4, line: 82, baseType: !97, size: 64, align: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !168, file: !4, line: 83, baseType: !97, size: 64, align: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !168, file: !4, line: 84, baseType: !138, size: 8, align: 8, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !152, file: !4, line: 124, baseType: !175, size: 64, align: 64, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !177)
!177 = !{!178, !179, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !4, line: 75, baseType: !175, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !176, file: !4, line: 76, baseType: !97, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !176, file: !4, line: 77, baseType: !97, size: 64, align: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !89, file: !4, line: 208, baseType: !152, size: 960, align: 64, offset: 1536)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !89, file: !4, line: 209, baseType: !183, size: 64, align: 64, offset: 2496)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !89, file: !4, line: 211, baseType: !186, size: 64, align: 64, offset: 2560)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !188)
!188 = !{!189, !190, !191, !192, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !4, line: 88, baseType: !186, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !4, line: 89, baseType: !97, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !187, file: !4, line: 90, baseType: !97, size: 64, align: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !187, file: !4, line: 91, baseType: !97, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !187, file: !4, line: 92, baseType: !97, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !89, file: !4, line: 216, baseType: !195, size: 128, align: 64, offset: 2624)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !4, line: 213, size: 128, align: 64, elements: !196)
!196 = !{!197, !209}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !195, file: !4, line: 215, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !200)
!200 = !{!201, !202, !203, !204}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !199, file: !4, line: 143, baseType: !88, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !199, file: !4, line: 143, baseType: !88, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !199, file: !4, line: 144, baseType: !198, size: 64, align: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !199, file: !4, line: 147, baseType: !205, size: 128, align: 64, offset: 192)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !199, file: !4, line: 145, size: 128, align: 64, elements: !206)
!206 = !{!207, !208}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !4, line: 146, baseType: !198, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !205, file: !4, line: 146, baseType: !198, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !195, file: !4, line: 215, baseType: !198, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !89, file: !4, line: 219, baseType: !198, size: 64, align: 64, offset: 2752)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !89, file: !4, line: 220, baseType: !212, size: 64, align: 64, offset: 2816)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !4, line: 135, baseType: !212, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !4, line: 136, baseType: !97, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !89, file: !4, line: 231, baseType: !218, size: 64, align: 64, offset: 2880)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !4, line: 231, flags: DIFlagFwdDecl)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !89, file: !4, line: 232, baseType: !221, size: 64, align: 64, offset: 2944)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !222, line: 86, baseType: !223)
!222 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !224, line: 131, baseType: !225)
!224 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!225 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !89, file: !4, line: 233, baseType: !138, size: 8, align: 8, offset: 3008)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !89, file: !4, line: 236, baseType: !138, size: 8, align: 8, offset: 3016)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdinfo", file: !231, line: 38, size: 512, align: 64, elements: !232)
!231 = !DIFile(filename: "../../lib/dpkg/options.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!232 = !{!233, !234, !235, !236, !238, !240, !244, !245, !246}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "olong", scope: !230, file: !231, line: 39, baseType: !97, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "oshort", scope: !230, file: !231, line: 40, baseType: !99, size: 8, align: 8, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "takesvalue", scope: !230, file: !231, line: 48, baseType: !142, size: 32, align: 32, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "iassignto", scope: !230, file: !231, line: 49, baseType: !237, size: 64, align: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sassignto", scope: !230, file: !231, line: 50, baseType: !239, size: 64, align: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !230, file: !231, line: 51, baseType: !241, size: 64, align: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !228, !97}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_int", scope: !230, file: !231, line: 53, baseType: !142, size: 32, align: 32, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "arg_ptr", scope: !230, file: !231, line: 54, baseType: !80, size: 64, align: 64, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !230, file: !231, line: 56, baseType: !247, size: 64, align: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "action_func", file: !231, line: 36, baseType: !249)
!249 = !DISubroutineType(types: !250)
!250 = !{!142, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!253 = !{}
!254 = !DILocalVariable(name: "cmd", arg: 1, scope: !84, file: !85, line: 42, type: !228)
!255 = !DIExpression()
!256 = !DILocation(line: 42, column: 50, scope: !84)
!257 = !DILocalVariable(name: "name", arg: 2, scope: !84, file: !85, line: 42, type: !97)
!258 = !DILocation(line: 42, column: 67, scope: !84)
!259 = !DILocalVariable(name: "pkg", scope: !84, file: !85, line: 44, type: !88)
!260 = !DILocation(line: 44, column: 18, scope: !84)
!261 = !DILocalVariable(name: "err", scope: !84, file: !85, line: 45, type: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !74, line: 42, size: 128, align: 64, elements: !263)
!263 = !{!264, !265, !266}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !262, file: !74, line: 43, baseType: !73, size: 32, align: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !262, file: !74, line: 45, baseType: !142, size: 32, align: 32, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !262, file: !74, line: 46, baseType: !267, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!268 = !DILocation(line: 45, column: 20, scope: !84)
!269 = !DILocation(line: 47, column: 27, scope: !84)
!270 = !DILocation(line: 47, column: 8, scope: !84)
!271 = !DILocation(line: 47, column: 6, scope: !84)
!272 = !DILocation(line: 48, column: 6, scope: !273)
!273 = distinct !DILexicalBlock(scope: !84, file: !85, line: 48, column: 6)
!274 = !DILocation(line: 48, column: 10, scope: !273)
!275 = !DILocation(line: 48, column: 6, scope: !84)
!276 = !DILocation(line: 49, column: 11, scope: !273)
!277 = !DILocation(line: 50, column: 12, scope: !273)
!278 = !DILocation(line: 50, column: 17, scope: !273)
!279 = !DILocation(line: 50, column: 24, scope: !273)
!280 = !DILocation(line: 50, column: 34, scope: !273)
!281 = !DILocation(line: 49, column: 3, scope: !282)
!282 = !DILexicalBlockFile(scope: !273, file: !85, discriminator: 1)
!283 = !DILocation(line: 49, column: 3, scope: !273)
!284 = !DILocation(line: 52, column: 9, scope: !84)
!285 = !DILocation(line: 52, column: 2, scope: !84)
