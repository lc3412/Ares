; ModuleID = './[inter]lib--dpkg--pkg-queue.o.i'
source_filename = "./[inter]lib--dpkg--pkg-queue.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pkg_queue = type { %struct.pkg_list*, %struct.pkg_list*, i32 }
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
%struct.fsys_namenode_list = type opaque

; Function Attrs: nounwind uwtable
define void @pkg_queue_init(%struct.pkg_queue*) #0 !dbg !78 {
  %2 = alloca %struct.pkg_queue*, align 8
  store %struct.pkg_queue* %0, %struct.pkg_queue** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_queue** %2, metadata !236, metadata !237), !dbg !238
  %3 = load %struct.pkg_queue*, %struct.pkg_queue** %2, align 8, !dbg !239
  %4 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %3, i32 0, i32 0, !dbg !240
  store %struct.pkg_list* null, %struct.pkg_list** %4, align 8, !dbg !241
  %5 = load %struct.pkg_queue*, %struct.pkg_queue** %2, align 8, !dbg !242
  %6 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %5, i32 0, i32 1, !dbg !243
  store %struct.pkg_list* null, %struct.pkg_list** %6, align 8, !dbg !244
  %7 = load %struct.pkg_queue*, %struct.pkg_queue** %2, align 8, !dbg !245
  %8 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %7, i32 0, i32 2, !dbg !246
  store i32 0, i32* %8, align 8, !dbg !247
  ret void, !dbg !248
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @pkg_queue_destroy(%struct.pkg_queue*) #0 !dbg !249 {
  %2 = alloca %struct.pkg_queue*, align 8
  store %struct.pkg_queue* %0, %struct.pkg_queue** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_queue** %2, metadata !250, metadata !237), !dbg !251
  %3 = load %struct.pkg_queue*, %struct.pkg_queue** %2, align 8, !dbg !252
  %4 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %3, i32 0, i32 0, !dbg !253
  %5 = load %struct.pkg_list*, %struct.pkg_list** %4, align 8, !dbg !253
  call void @pkg_list_free(%struct.pkg_list* %5), !dbg !254
  %6 = load %struct.pkg_queue*, %struct.pkg_queue** %2, align 8, !dbg !255
  call void @pkg_queue_init(%struct.pkg_queue* %6), !dbg !256
  ret void, !dbg !257
}

declare void @pkg_list_free(%struct.pkg_list*) #2

; Function Attrs: nounwind uwtable
define i32 @pkg_queue_is_empty(%struct.pkg_queue*) #0 !dbg !258 {
  %2 = alloca %struct.pkg_queue*, align 8
  store %struct.pkg_queue* %0, %struct.pkg_queue** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_queue** %2, metadata !261, metadata !237), !dbg !262
  %3 = load %struct.pkg_queue*, %struct.pkg_queue** %2, align 8, !dbg !263
  %4 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %3, i32 0, i32 0, !dbg !264
  %5 = load %struct.pkg_list*, %struct.pkg_list** %4, align 8, !dbg !264
  %6 = icmp eq %struct.pkg_list* %5, null, !dbg !265
  %7 = zext i1 %6 to i32, !dbg !265
  ret i32 %7, !dbg !266
}

; Function Attrs: nounwind uwtable
define %struct.pkg_list* @pkg_queue_push(%struct.pkg_queue*, %struct.pkginfo*) #0 !dbg !267 {
  %3 = alloca %struct.pkg_queue*, align 8
  %4 = alloca %struct.pkginfo*, align 8
  %5 = alloca %struct.pkg_list*, align 8
  store %struct.pkg_queue* %0, %struct.pkg_queue** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_queue** %3, metadata !270, metadata !237), !dbg !271
  store %struct.pkginfo* %1, %struct.pkginfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %4, metadata !272, metadata !237), !dbg !273
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %5, metadata !274, metadata !237), !dbg !275
  %6 = load %struct.pkginfo*, %struct.pkginfo** %4, align 8, !dbg !276
  %7 = call %struct.pkg_list* @pkg_list_new(%struct.pkginfo* %6, %struct.pkg_list* null), !dbg !277
  store %struct.pkg_list* %7, %struct.pkg_list** %5, align 8, !dbg !278
  %8 = load %struct.pkg_queue*, %struct.pkg_queue** %3, align 8, !dbg !279
  %9 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %8, i32 0, i32 1, !dbg !281
  %10 = load %struct.pkg_list*, %struct.pkg_list** %9, align 8, !dbg !281
  %11 = icmp eq %struct.pkg_list* %10, null, !dbg !282
  br i1 %11, label %12, label %16, !dbg !283

; <label>:12:                                     ; preds = %2
  %13 = load %struct.pkg_list*, %struct.pkg_list** %5, align 8, !dbg !284
  %14 = load %struct.pkg_queue*, %struct.pkg_queue** %3, align 8, !dbg !285
  %15 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %14, i32 0, i32 0, !dbg !286
  store %struct.pkg_list* %13, %struct.pkg_list** %15, align 8, !dbg !287
  br label %22, !dbg !285

; <label>:16:                                     ; preds = %2
  %17 = load %struct.pkg_list*, %struct.pkg_list** %5, align 8, !dbg !288
  %18 = load %struct.pkg_queue*, %struct.pkg_queue** %3, align 8, !dbg !289
  %19 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %18, i32 0, i32 1, !dbg !290
  %20 = load %struct.pkg_list*, %struct.pkg_list** %19, align 8, !dbg !290
  %21 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %20, i32 0, i32 0, !dbg !291
  store %struct.pkg_list* %17, %struct.pkg_list** %21, align 8, !dbg !292
  br label %22

; <label>:22:                                     ; preds = %16, %12
  %23 = load %struct.pkg_list*, %struct.pkg_list** %5, align 8, !dbg !293
  %24 = load %struct.pkg_queue*, %struct.pkg_queue** %3, align 8, !dbg !294
  %25 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %24, i32 0, i32 1, !dbg !295
  store %struct.pkg_list* %23, %struct.pkg_list** %25, align 8, !dbg !296
  %26 = load %struct.pkg_queue*, %struct.pkg_queue** %3, align 8, !dbg !297
  %27 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %26, i32 0, i32 2, !dbg !298
  %28 = load i32, i32* %27, align 8, !dbg !299
  %29 = add nsw i32 %28, 1, !dbg !299
  store i32 %29, i32* %27, align 8, !dbg !299
  %30 = load %struct.pkg_list*, %struct.pkg_list** %5, align 8, !dbg !300
  ret %struct.pkg_list* %30, !dbg !301
}

declare %struct.pkg_list* @pkg_list_new(%struct.pkginfo*, %struct.pkg_list*) #2

; Function Attrs: nounwind uwtable
define %struct.pkginfo* @pkg_queue_pop(%struct.pkg_queue*) #0 !dbg !302 {
  %2 = alloca %struct.pkginfo*, align 8
  %3 = alloca %struct.pkg_queue*, align 8
  %4 = alloca %struct.pkg_list*, align 8
  %5 = alloca %struct.pkginfo*, align 8
  store %struct.pkg_queue* %0, %struct.pkg_queue** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pkg_queue** %3, metadata !305, metadata !237), !dbg !306
  call void @llvm.dbg.declare(metadata %struct.pkg_list** %4, metadata !307, metadata !237), !dbg !308
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %5, metadata !309, metadata !237), !dbg !310
  %6 = load %struct.pkg_queue*, %struct.pkg_queue** %3, align 8, !dbg !311
  %7 = call i32 @pkg_queue_is_empty(%struct.pkg_queue* %6), !dbg !313
  %8 = icmp ne i32 %7, 0, !dbg !313
  br i1 %8, label %9, label %10, !dbg !314

; <label>:9:                                      ; preds = %1
  store %struct.pkginfo* null, %struct.pkginfo** %2, align 8, !dbg !315
  br label %37, !dbg !315

; <label>:10:                                     ; preds = %1
  %11 = load %struct.pkg_queue*, %struct.pkg_queue** %3, align 8, !dbg !316
  %12 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %11, i32 0, i32 0, !dbg !317
  %13 = load %struct.pkg_list*, %struct.pkg_list** %12, align 8, !dbg !317
  store %struct.pkg_list* %13, %struct.pkg_list** %4, align 8, !dbg !318
  %14 = load %struct.pkg_list*, %struct.pkg_list** %4, align 8, !dbg !319
  %15 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %14, i32 0, i32 1, !dbg !320
  %16 = load %struct.pkginfo*, %struct.pkginfo** %15, align 8, !dbg !320
  store %struct.pkginfo* %16, %struct.pkginfo** %5, align 8, !dbg !321
  %17 = load %struct.pkg_list*, %struct.pkg_list** %4, align 8, !dbg !322
  %18 = getelementptr inbounds %struct.pkg_list, %struct.pkg_list* %17, i32 0, i32 0, !dbg !323
  %19 = load %struct.pkg_list*, %struct.pkg_list** %18, align 8, !dbg !323
  %20 = load %struct.pkg_queue*, %struct.pkg_queue** %3, align 8, !dbg !324
  %21 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %20, i32 0, i32 0, !dbg !325
  store %struct.pkg_list* %19, %struct.pkg_list** %21, align 8, !dbg !326
  %22 = load %struct.pkg_queue*, %struct.pkg_queue** %3, align 8, !dbg !327
  %23 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %22, i32 0, i32 0, !dbg !329
  %24 = load %struct.pkg_list*, %struct.pkg_list** %23, align 8, !dbg !329
  %25 = icmp eq %struct.pkg_list* %24, null, !dbg !330
  br i1 %25, label %26, label %29, !dbg !331

; <label>:26:                                     ; preds = %10
  %27 = load %struct.pkg_queue*, %struct.pkg_queue** %3, align 8, !dbg !332
  %28 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %27, i32 0, i32 1, !dbg !333
  store %struct.pkg_list* null, %struct.pkg_list** %28, align 8, !dbg !334
  br label %29, !dbg !332

; <label>:29:                                     ; preds = %26, %10
  %30 = load %struct.pkg_list*, %struct.pkg_list** %4, align 8, !dbg !335
  %31 = bitcast %struct.pkg_list* %30 to i8*, !dbg !335
  call void @free(i8* %31) #4, !dbg !336
  %32 = load %struct.pkg_queue*, %struct.pkg_queue** %3, align 8, !dbg !337
  %33 = getelementptr inbounds %struct.pkg_queue, %struct.pkg_queue* %32, i32 0, i32 2, !dbg !338
  %34 = load i32, i32* %33, align 8, !dbg !339
  %35 = add nsw i32 %34, -1, !dbg !339
  store i32 %35, i32* %33, align 8, !dbg !339
  %36 = load %struct.pkginfo*, %struct.pkginfo** %5, align 8, !dbg !340
  store %struct.pkginfo* %36, %struct.pkginfo** %2, align 8, !dbg !341
  br label %37, !dbg !341

; <label>:37:                                     ; preds = %29, %9
  %38 = load %struct.pkginfo*, %struct.pkginfo** %2, align 8, !dbg !342
  ret %struct.pkginfo* %38, !dbg !342
}

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!75, !76}
!llvm.ident = !{!77}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !73)
!1 = !DIFile(filename: "[inter]lib--dpkg--pkg-queue.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
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
!78 = distinct !DISubprogram(name: "pkg_queue_init", scope: !79, file: !79, line: 35, type: !80, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!79 = !DIFile(filename: "pkg-queue.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_queue", file: !84, line: 35, size: 192, align: 64, elements: !85)
!84 = !DIFile(filename: "../../lib/dpkg/pkg-queue.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!85 = !{!86, !233, !234}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !83, file: !84, line: 36, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !89, line: 34, size: 128, align: 64, elements: !90)
!89 = !DIFile(filename: "../../lib/dpkg/pkg-list.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !89, line: 35, baseType: !87, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !88, file: !89, line: 36, baseType: !93, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !4, line: 195, size: 3072, align: 64, elements: !95)
!95 = !{!96, !148, !149, !150, !151, !152, !153, !154, !155, !156, !186, !187, !190, !199, !215, !216, !222, !225, !231, !232}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !94, file: !4, line: 196, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !4, line: 242, size: 3392, align: 64, elements: !99)
!99 = !{!100, !101, !105, !106, !146}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !4, line: 243, baseType: !97, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !4, line: 244, baseType: !102, size: 64, align: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !98, file: !4, line: 245, baseType: !94, size: 3072, align: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !98, file: !4, line: 249, baseType: !107, size: 128, align: 64, offset: 3200)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !98, file: !4, line: 246, size: 128, align: 64, elements: !108)
!108 = !{!109, !145}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !107, file: !4, line: 247, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !4, line: 63, size: 640, align: 64, elements: !112)
!112 = !{!113, !121, !122, !123, !124, !125, !134, !141, !142, !144}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !111, file: !4, line: 64, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !4, line: 56, size: 256, align: 64, elements: !116)
!116 = !{!117, !118, !119, !120}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !115, file: !4, line: 57, baseType: !93, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !4, line: 58, baseType: !114, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !115, file: !4, line: 59, baseType: !110, size: 64, align: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !4, line: 60, baseType: !3, size: 32, align: 32, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !111, file: !4, line: 65, baseType: !97, size: 64, align: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !4, line: 66, baseType: !110, size: 64, align: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !111, file: !4, line: 66, baseType: !110, size: 64, align: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !111, file: !4, line: 66, baseType: !110, size: 64, align: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !111, file: !4, line: 67, baseType: !126, size: 64, align: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !16, line: 48, size: 192, align: 64, elements: !129)
!129 = !{!130, !132, !133}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !16, line: 49, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !16, line: 50, baseType: !102, size: 64, align: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !16, line: 51, baseType: !15, size: 32, align: 32, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !111, file: !4, line: 68, baseType: !135, size: 192, align: 64, offset: 384)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !27, line: 42, size: 192, align: 64, elements: !136)
!136 = !{!137, !139, !140}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !135, file: !27, line: 44, baseType: !138, size: 32, align: 32)
!138 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !135, file: !27, line: 46, baseType: !102, size: 64, align: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !135, file: !27, line: 48, baseType: !102, size: 64, align: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !111, file: !4, line: 69, baseType: !26, size: 32, align: 32, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !111, file: !4, line: 70, baseType: !143, size: 8, align: 8, offset: 608)
!143 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !111, file: !4, line: 71, baseType: !143, size: 8, align: 8, offset: 616)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !107, file: !4, line: 248, baseType: !110, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !98, file: !4, line: 250, baseType: !147, size: 32, align: 32, offset: 3328)
!147 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !94, file: !4, line: 197, baseType: !93, size: 64, align: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !94, file: !4, line: 199, baseType: !35, size: 32, align: 32, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !94, file: !4, line: 201, baseType: !43, size: 32, align: 32, offset: 160)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !94, file: !4, line: 202, baseType: !47, size: 32, align: 32, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !94, file: !4, line: 203, baseType: !57, size: 32, align: 32, offset: 224)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !94, file: !4, line: 204, baseType: !102, size: 64, align: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !94, file: !4, line: 205, baseType: !102, size: 64, align: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !94, file: !4, line: 206, baseType: !135, size: 192, align: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !94, file: !4, line: 207, baseType: !157, size: 960, align: 64, offset: 576)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !4, line: 107, size: 960, align: 64, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !179}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !157, file: !4, line: 108, baseType: !114, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !157, file: !4, line: 110, baseType: !143, size: 8, align: 8, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !157, file: !4, line: 111, baseType: !67, size: 32, align: 32, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !157, file: !4, line: 112, baseType: !126, size: 64, align: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !157, file: !4, line: 115, baseType: !102, size: 64, align: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !157, file: !4, line: 116, baseType: !102, size: 64, align: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !157, file: !4, line: 117, baseType: !102, size: 64, align: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !157, file: !4, line: 118, baseType: !102, size: 64, align: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !157, file: !4, line: 119, baseType: !102, size: 64, align: 64, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !157, file: !4, line: 120, baseType: !102, size: 64, align: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !157, file: !4, line: 121, baseType: !102, size: 64, align: 64, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !157, file: !4, line: 122, baseType: !135, size: 192, align: 64, offset: 640)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !157, file: !4, line: 123, baseType: !172, size: 64, align: 64, offset: 832)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !4, line: 80, size: 256, align: 64, elements: !174)
!174 = !{!175, !176, !177, !178}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !4, line: 81, baseType: !172, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !4, line: 82, baseType: !102, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !173, file: !4, line: 83, baseType: !102, size: 64, align: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !173, file: !4, line: 84, baseType: !143, size: 8, align: 8, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !157, file: !4, line: 124, baseType: !180, size: 64, align: 64, offset: 896)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !4, line: 74, size: 192, align: 64, elements: !182)
!182 = !{!183, !184, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !4, line: 75, baseType: !180, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !4, line: 76, baseType: !102, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !181, file: !4, line: 77, baseType: !102, size: 64, align: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !94, file: !4, line: 208, baseType: !157, size: 960, align: 64, offset: 1536)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !94, file: !4, line: 209, baseType: !188, size: 64, align: 64, offset: 2496)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !4, line: 151, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !94, file: !4, line: 211, baseType: !191, size: 64, align: 64, offset: 2560)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !4, line: 87, size: 320, align: 64, elements: !193)
!193 = !{!194, !195, !196, !197, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !4, line: 88, baseType: !191, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !4, line: 89, baseType: !102, size: 64, align: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !192, file: !4, line: 90, baseType: !102, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !192, file: !4, line: 91, baseType: !102, size: 64, align: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !192, file: !4, line: 92, baseType: !102, size: 64, align: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !94, file: !4, line: 216, baseType: !200, size: 128, align: 64, offset: 2624)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !94, file: !4, line: 213, size: 128, align: 64, elements: !201)
!201 = !{!202, !214}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !200, file: !4, line: 215, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !4, line: 142, size: 320, align: 64, elements: !205)
!205 = !{!206, !207, !208, !209}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !204, file: !4, line: 143, baseType: !93, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !204, file: !4, line: 143, baseType: !93, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !204, file: !4, line: 144, baseType: !203, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !204, file: !4, line: 147, baseType: !210, size: 128, align: 64, offset: 192)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !4, line: 145, size: 128, align: 64, elements: !211)
!211 = !{!212, !213}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !4, line: 146, baseType: !203, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !210, file: !4, line: 146, baseType: !203, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !200, file: !4, line: 215, baseType: !203, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !94, file: !4, line: 219, baseType: !203, size: 64, align: 64, offset: 2752)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !94, file: !4, line: 220, baseType: !217, size: 64, align: 64, offset: 2816)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !4, line: 134, size: 128, align: 64, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !4, line: 135, baseType: !217, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !4, line: 136, baseType: !102, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !94, file: !4, line: 231, baseType: !223, size: 64, align: 64, offset: 2880)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !4, line: 231, flags: DIFlagFwdDecl)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !94, file: !4, line: 232, baseType: !226, size: 64, align: 64, offset: 2944)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !227, line: 86, baseType: !228)
!227 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !229, line: 131, baseType: !230)
!229 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!230 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !94, file: !4, line: 233, baseType: !143, size: 8, align: 8, offset: 3008)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !94, file: !4, line: 236, baseType: !143, size: 8, align: 8, offset: 3016)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !83, file: !84, line: 36, baseType: !87, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !83, file: !84, line: 37, baseType: !147, size: 32, align: 32, offset: 128)
!235 = !{}
!236 = !DILocalVariable(name: "queue", arg: 1, scope: !78, file: !79, line: 35, type: !82)
!237 = !DIExpression()
!238 = !DILocation(line: 35, column: 34, scope: !78)
!239 = !DILocation(line: 37, column: 2, scope: !78)
!240 = !DILocation(line: 37, column: 9, scope: !78)
!241 = !DILocation(line: 37, column: 14, scope: !78)
!242 = !DILocation(line: 38, column: 2, scope: !78)
!243 = !DILocation(line: 38, column: 9, scope: !78)
!244 = !DILocation(line: 38, column: 14, scope: !78)
!245 = !DILocation(line: 39, column: 2, scope: !78)
!246 = !DILocation(line: 39, column: 9, scope: !78)
!247 = !DILocation(line: 39, column: 16, scope: !78)
!248 = !DILocation(line: 40, column: 1, scope: !78)
!249 = distinct !DISubprogram(name: "pkg_queue_destroy", scope: !79, file: !79, line: 50, type: !80, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!250 = !DILocalVariable(name: "queue", arg: 1, scope: !249, file: !79, line: 50, type: !82)
!251 = !DILocation(line: 50, column: 37, scope: !249)
!252 = !DILocation(line: 52, column: 16, scope: !249)
!253 = !DILocation(line: 52, column: 23, scope: !249)
!254 = !DILocation(line: 52, column: 2, scope: !249)
!255 = !DILocation(line: 53, column: 17, scope: !249)
!256 = !DILocation(line: 53, column: 2, scope: !249)
!257 = !DILocation(line: 54, column: 1, scope: !249)
!258 = distinct !DISubprogram(name: "pkg_queue_is_empty", scope: !79, file: !79, line: 64, type: !259, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!259 = !DISubroutineType(types: !260)
!260 = !{!147, !82}
!261 = !DILocalVariable(name: "queue", arg: 1, scope: !258, file: !79, line: 64, type: !82)
!262 = !DILocation(line: 64, column: 38, scope: !258)
!263 = !DILocation(line: 66, column: 10, scope: !258)
!264 = !DILocation(line: 66, column: 17, scope: !258)
!265 = !DILocation(line: 66, column: 22, scope: !258)
!266 = !DILocation(line: 66, column: 2, scope: !258)
!267 = distinct !DISubprogram(name: "pkg_queue_push", scope: !79, file: !79, line: 78, type: !268, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!268 = !DISubroutineType(types: !269)
!269 = !{!87, !82, !93}
!270 = !DILocalVariable(name: "queue", arg: 1, scope: !267, file: !79, line: 78, type: !82)
!271 = !DILocation(line: 78, column: 34, scope: !267)
!272 = !DILocalVariable(name: "pkg", arg: 2, scope: !267, file: !79, line: 78, type: !93)
!273 = !DILocation(line: 78, column: 57, scope: !267)
!274 = !DILocalVariable(name: "node", scope: !267, file: !79, line: 80, type: !87)
!275 = !DILocation(line: 80, column: 19, scope: !267)
!276 = !DILocation(line: 82, column: 22, scope: !267)
!277 = !DILocation(line: 82, column: 9, scope: !267)
!278 = !DILocation(line: 82, column: 7, scope: !267)
!279 = !DILocation(line: 84, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !267, file: !79, line: 84, column: 6)
!281 = !DILocation(line: 84, column: 13, scope: !280)
!282 = !DILocation(line: 84, column: 18, scope: !280)
!283 = !DILocation(line: 84, column: 6, scope: !267)
!284 = !DILocation(line: 85, column: 17, scope: !280)
!285 = !DILocation(line: 85, column: 3, scope: !280)
!286 = !DILocation(line: 85, column: 10, scope: !280)
!287 = !DILocation(line: 85, column: 15, scope: !280)
!288 = !DILocation(line: 87, column: 23, scope: !280)
!289 = !DILocation(line: 87, column: 3, scope: !280)
!290 = !DILocation(line: 87, column: 10, scope: !280)
!291 = !DILocation(line: 87, column: 16, scope: !280)
!292 = !DILocation(line: 87, column: 21, scope: !280)
!293 = !DILocation(line: 89, column: 16, scope: !267)
!294 = !DILocation(line: 89, column: 2, scope: !267)
!295 = !DILocation(line: 89, column: 9, scope: !267)
!296 = !DILocation(line: 89, column: 14, scope: !267)
!297 = !DILocation(line: 91, column: 2, scope: !267)
!298 = !DILocation(line: 91, column: 9, scope: !267)
!299 = !DILocation(line: 91, column: 15, scope: !267)
!300 = !DILocation(line: 93, column: 9, scope: !267)
!301 = !DILocation(line: 93, column: 2, scope: !267)
!302 = distinct !DISubprogram(name: "pkg_queue_pop", scope: !79, file: !79, line: 107, type: !303, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!303 = !DISubroutineType(types: !304)
!304 = !{!93, !82}
!305 = !DILocalVariable(name: "queue", arg: 1, scope: !302, file: !79, line: 107, type: !82)
!306 = !DILocation(line: 107, column: 33, scope: !302)
!307 = !DILocalVariable(name: "node", scope: !302, file: !79, line: 109, type: !87)
!308 = !DILocation(line: 109, column: 19, scope: !302)
!309 = !DILocalVariable(name: "pkg", scope: !302, file: !79, line: 110, type: !93)
!310 = !DILocation(line: 110, column: 18, scope: !302)
!311 = !DILocation(line: 112, column: 25, scope: !312)
!312 = distinct !DILexicalBlock(scope: !302, file: !79, line: 112, column: 6)
!313 = !DILocation(line: 112, column: 6, scope: !312)
!314 = !DILocation(line: 112, column: 6, scope: !302)
!315 = !DILocation(line: 113, column: 3, scope: !312)
!316 = !DILocation(line: 115, column: 9, scope: !302)
!317 = !DILocation(line: 115, column: 16, scope: !302)
!318 = !DILocation(line: 115, column: 7, scope: !302)
!319 = !DILocation(line: 116, column: 8, scope: !302)
!320 = !DILocation(line: 116, column: 14, scope: !302)
!321 = !DILocation(line: 116, column: 6, scope: !302)
!322 = !DILocation(line: 118, column: 16, scope: !302)
!323 = !DILocation(line: 118, column: 22, scope: !302)
!324 = !DILocation(line: 118, column: 2, scope: !302)
!325 = !DILocation(line: 118, column: 9, scope: !302)
!326 = !DILocation(line: 118, column: 14, scope: !302)
!327 = !DILocation(line: 119, column: 6, scope: !328)
!328 = distinct !DILexicalBlock(scope: !302, file: !79, line: 119, column: 6)
!329 = !DILocation(line: 119, column: 13, scope: !328)
!330 = !DILocation(line: 119, column: 18, scope: !328)
!331 = !DILocation(line: 119, column: 6, scope: !302)
!332 = !DILocation(line: 120, column: 3, scope: !328)
!333 = !DILocation(line: 120, column: 10, scope: !328)
!334 = !DILocation(line: 120, column: 15, scope: !328)
!335 = !DILocation(line: 122, column: 7, scope: !302)
!336 = !DILocation(line: 122, column: 2, scope: !302)
!337 = !DILocation(line: 123, column: 2, scope: !302)
!338 = !DILocation(line: 123, column: 9, scope: !302)
!339 = !DILocation(line: 123, column: 15, scope: !302)
!340 = !DILocation(line: 125, column: 9, scope: !302)
!341 = !DILocation(line: 125, column: 2, scope: !302)
!342 = !DILocation(line: 126, column: 1, scope: !302)
