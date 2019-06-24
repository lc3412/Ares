; ModuleID = './hgfsServerOplock.o.i'
source_filename = "./hgfsServerOplock.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HgfsSessionInfo = type { %struct.DblLnkLst_Links, i8, i32, i64, i32, %struct.HgfsTransportSessionInfo*, i32, %struct.MXUserExclLock*, i32, %struct.Atomic_uint32, %struct.MXUserExclLock*, %struct.HgfsFileNode*, i32, %struct.DblLnkLst_Links, %struct.DblLnkLst_Links, i32, i32, %struct.MXUserExclLock*, %struct.HgfsSearch*, i32, %struct.DblLnkLst_Links, [65 x %struct.HgfsOpCapability], i32, %struct.HgfsAsyncRequestInfo }
%struct.HgfsTransportSessionInfo = type opaque
%struct.Atomic_uint32 = type { i32 }
%struct.HgfsFileNode = type { %struct.DblLnkLst_Links, i32, i8*, i64, i8*, i64, %struct.HgfsLocalId, i32, i32, i32, i32, i32, i32, i8*, %struct.HgfsShareInfo }
%struct.HgfsLocalId = type { i64, i64 }
%struct.HgfsShareInfo = type { i8*, i64, i8, i8, i32 }
%struct.MXUserExclLock = type opaque
%struct.HgfsSearch = type { %struct.DblLnkLst_Links, i32, i32, i8*, i64, i8*, i64, %struct.DirectoryEntry**, i32, i32, %struct.HgfsShareInfo }
%struct.DirectoryEntry = type opaque
%struct.DblLnkLst_Links = type { %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links* }
%struct.HgfsOpCapability = type { i32, i32 }
%struct.HgfsAsyncRequestInfo = type { %struct.Atomic_uint32, %struct.MXUserExclLock*, %struct.MXUserCondVar* }
%struct.MXUserCondVar = type opaque

; Function Attrs: nounwind uwtable
define signext i8 @HgfsServerOplockInit() #0 !dbg !99 {
  %1 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !107, metadata !108), !dbg !109
  store i8 0, i8* %1, align 1, !dbg !109
  %2 = load i8, i8* %1, align 1, !dbg !110
  ret i8 %2, !dbg !111
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @HgfsServerOplockDestroy() #0 !dbg !112 {
  ret void, !dbg !115
}

; Function Attrs: nounwind uwtable
define signext i8 @HgfsHandle2ServerLock(i32, %struct.HgfsSessionInfo*, i32*) #0 !dbg !116 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.HgfsSessionInfo*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !260, metadata !108), !dbg !261
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %5, metadata !262, metadata !108), !dbg !263
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !264, metadata !108), !dbg !265
  %7 = load i32*, i32** %6, align 8, !dbg !266
  store i32 0, i32* %7, align 4, !dbg !267
  ret i8 1, !dbg !268
}

; Function Attrs: nounwind uwtable
define signext i8 @HgfsFileHasServerLock(i8*, %struct.HgfsSessionInfo*, i32*, i32*) #0 !dbg !269 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.HgfsSessionInfo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !273, metadata !108), !dbg !274
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %6, metadata !275, metadata !108), !dbg !276
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !277, metadata !108), !dbg !278
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !279, metadata !108), !dbg !280
  ret i8 0, !dbg !281
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!96, !97}
!llvm.ident = !{!98}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "hgfsServerOplock.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line406")
!2 = !{!3, !8, !17, !22, !27}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 297, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "hgfsServerInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line406")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "HGFS_SESSION_STATE_OPEN", value: 0)
!7 = !DIEnumerator(name: "HGFS_SESSION_STATE_CLOSED", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 294, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsProto.h", directory: "/home/lichi/Desktop/open-vm-tools/line406")
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DIEnumerator(name: "HGFS_LOCK_NONE", value: 0)
!12 = !DIEnumerator(name: "HGFS_LOCK_OPPORTUNISTIC", value: 1)
!13 = !DIEnumerator(name: "HGFS_LOCK_EXCLUSIVE", value: 2)
!14 = !DIEnumerator(name: "HGFS_LOCK_SHARED", value: 3)
!15 = !DIEnumerator(name: "HGFS_LOCK_BATCH", value: 4)
!16 = !DIEnumerator(name: "HGFS_LOCK_LEASE", value: 5)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 111, size: 32, align: 32, elements: !18)
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "FILENODE_STATE_UNUSED", value: 0)
!20 = !DIEnumerator(name: "FILENODE_STATE_IN_USE_CACHED", value: 1)
!21 = !DIEnumerator(name: "FILENODE_STATE_IN_USE_NOT_CACHED", value: 2)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 118, size: 32, align: 32, elements: !23)
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "DIRECTORY_SEARCH_TYPE_DIR", value: 0)
!25 = !DIEnumerator(name: "DIRECTORY_SEARCH_TYPE_BASE", value: 1)
!26 = !DIEnumerator(name: "DIRECTORY_SEARCH_TYPE_OTHER", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 68, size: 32, align: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!29 = !DIEnumerator(name: "HGFS_OP_OPEN", value: 0)
!30 = !DIEnumerator(name: "HGFS_OP_READ", value: 1)
!31 = !DIEnumerator(name: "HGFS_OP_WRITE", value: 2)
!32 = !DIEnumerator(name: "HGFS_OP_CLOSE", value: 3)
!33 = !DIEnumerator(name: "HGFS_OP_SEARCH_OPEN", value: 4)
!34 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ", value: 5)
!35 = !DIEnumerator(name: "HGFS_OP_SEARCH_CLOSE", value: 6)
!36 = !DIEnumerator(name: "HGFS_OP_GETATTR", value: 7)
!37 = !DIEnumerator(name: "HGFS_OP_SETATTR", value: 8)
!38 = !DIEnumerator(name: "HGFS_OP_CREATE_DIR", value: 9)
!39 = !DIEnumerator(name: "HGFS_OP_DELETE_FILE", value: 10)
!40 = !DIEnumerator(name: "HGFS_OP_DELETE_DIR", value: 11)
!41 = !DIEnumerator(name: "HGFS_OP_RENAME", value: 12)
!42 = !DIEnumerator(name: "HGFS_OP_QUERY_VOLUME_INFO", value: 13)
!43 = !DIEnumerator(name: "HGFS_OP_OPEN_V2", value: 14)
!44 = !DIEnumerator(name: "HGFS_OP_GETATTR_V2", value: 15)
!45 = !DIEnumerator(name: "HGFS_OP_SETATTR_V2", value: 16)
!46 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ_V2", value: 17)
!47 = !DIEnumerator(name: "HGFS_OP_CREATE_SYMLINK", value: 18)
!48 = !DIEnumerator(name: "HGFS_OP_SERVER_LOCK_CHANGE", value: 19)
!49 = !DIEnumerator(name: "HGFS_OP_CREATE_DIR_V2", value: 20)
!50 = !DIEnumerator(name: "HGFS_OP_DELETE_FILE_V2", value: 21)
!51 = !DIEnumerator(name: "HGFS_OP_DELETE_DIR_V2", value: 22)
!52 = !DIEnumerator(name: "HGFS_OP_RENAME_V2", value: 23)
!53 = !DIEnumerator(name: "HGFS_OP_OPEN_V3", value: 24)
!54 = !DIEnumerator(name: "HGFS_OP_READ_V3", value: 25)
!55 = !DIEnumerator(name: "HGFS_OP_WRITE_V3", value: 26)
!56 = !DIEnumerator(name: "HGFS_OP_CLOSE_V3", value: 27)
!57 = !DIEnumerator(name: "HGFS_OP_SEARCH_OPEN_V3", value: 28)
!58 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ_V3", value: 29)
!59 = !DIEnumerator(name: "HGFS_OP_SEARCH_CLOSE_V3", value: 30)
!60 = !DIEnumerator(name: "HGFS_OP_GETATTR_V3", value: 31)
!61 = !DIEnumerator(name: "HGFS_OP_SETATTR_V3", value: 32)
!62 = !DIEnumerator(name: "HGFS_OP_CREATE_DIR_V3", value: 33)
!63 = !DIEnumerator(name: "HGFS_OP_DELETE_FILE_V3", value: 34)
!64 = !DIEnumerator(name: "HGFS_OP_DELETE_DIR_V3", value: 35)
!65 = !DIEnumerator(name: "HGFS_OP_RENAME_V3", value: 36)
!66 = !DIEnumerator(name: "HGFS_OP_QUERY_VOLUME_INFO_V3", value: 37)
!67 = !DIEnumerator(name: "HGFS_OP_CREATE_SYMLINK_V3", value: 38)
!68 = !DIEnumerator(name: "HGFS_OP_SERVER_LOCK_CHANGE_V3", value: 39)
!69 = !DIEnumerator(name: "HGFS_OP_WRITE_WIN32_STREAM_V3", value: 40)
!70 = !DIEnumerator(name: "HGFS_OP_CREATE_SESSION_V4", value: 41)
!71 = !DIEnumerator(name: "HGFS_OP_DESTROY_SESSION_V4", value: 42)
!72 = !DIEnumerator(name: "HGFS_OP_READ_FAST_V4", value: 43)
!73 = !DIEnumerator(name: "HGFS_OP_WRITE_FAST_V4", value: 44)
!74 = !DIEnumerator(name: "HGFS_OP_SET_WATCH_V4", value: 45)
!75 = !DIEnumerator(name: "HGFS_OP_REMOVE_WATCH_V4", value: 46)
!76 = !DIEnumerator(name: "HGFS_OP_NOTIFY_V4", value: 47)
!77 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ_V4", value: 48)
!78 = !DIEnumerator(name: "HGFS_OP_OPEN_V4", value: 49)
!79 = !DIEnumerator(name: "HGFS_OP_ENUMERATE_STREAMS_V4", value: 50)
!80 = !DIEnumerator(name: "HGFS_OP_GETATTR_V4", value: 51)
!81 = !DIEnumerator(name: "HGFS_OP_SETATTR_V4", value: 52)
!82 = !DIEnumerator(name: "HGFS_OP_DELETE_V4", value: 53)
!83 = !DIEnumerator(name: "HGFS_OP_LINKMOVE_V4", value: 54)
!84 = !DIEnumerator(name: "HGFS_OP_FSCTL_V4", value: 55)
!85 = !DIEnumerator(name: "HGFS_OP_ACCESS_CHECK_V4", value: 56)
!86 = !DIEnumerator(name: "HGFS_OP_FSYNC_V4", value: 57)
!87 = !DIEnumerator(name: "HGFS_OP_QUERY_VOLUME_INFO_V4", value: 58)
!88 = !DIEnumerator(name: "HGFS_OP_OPLOCK_ACQUIRE_V4", value: 59)
!89 = !DIEnumerator(name: "HGFS_OP_OPLOCK_BREAK_V4", value: 60)
!90 = !DIEnumerator(name: "HGFS_OP_LOCK_BYTE_RANGE_V4", value: 61)
!91 = !DIEnumerator(name: "HGFS_OP_UNLOCK_BYTE_RANGE_V4", value: 62)
!92 = !DIEnumerator(name: "HGFS_OP_QUERY_EAS_V4", value: 63)
!93 = !DIEnumerator(name: "HGFS_OP_SET_EAS_V4", value: 64)
!94 = !DIEnumerator(name: "HGFS_OP_MAX", value: 65)
!95 = !DIEnumerator(name: "HGFS_OP_NEW_HEADER", value: 255)
!96 = !{i32 2, !"Dwarf Version", i32 4}
!97 = !{i32 2, !"Debug Info Version", i32 3}
!98 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!99 = distinct !DISubprogram(name: "HgfsServerOplockInit", scope: !100, file: !100, line: 74, type: !101, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!100 = !DIFile(filename: "hgfsServerOplock.c", directory: "/home/lichi/Desktop/open-vm-tools/line406")
!101 = !DISubroutineType(types: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !104, line: 230, baseType: !105)
!104 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line406")
!105 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!106 = !{}
!107 = !DILocalVariable(name: "result", scope: !99, file: !100, line: 76, type: !103)
!108 = !DIExpression()
!109 = !DILocation(line: 76, column: 9, scope: !99)
!110 = !DILocation(line: 80, column: 11, scope: !99)
!111 = !DILocation(line: 80, column: 4, scope: !99)
!112 = distinct !DISubprogram(name: "HgfsServerOplockDestroy", scope: !100, file: !100, line: 101, type: !113, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DILocation(line: 107, column: 1, scope: !112)
!116 = distinct !DISubprogram(name: "HgfsHandle2ServerLock", scope: !100, file: !100, line: 130, type: !117, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!117 = !DISubroutineType(types: !118)
!118 = !{!103, !119, !124, !259}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsHandle", file: !9, line: 58, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !104, line: 173, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !122, line: 51, baseType: !123)
!122 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line406")
!123 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSessionInfo", file: !4, line: 389, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsSessionInfo", file: !4, line: 309, size: 5824, align: 64, elements: !127)
!127 = !{!128, !136, !137, !139, !143, !144, !148, !150, !155, !157, !164, !165, !209, !210, !211, !212, !213, !214, !215, !235, !236, !237, !248, !249}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !126, file: !4, line: 311, baseType: !129, size: 128, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "DblLnkLst_Links", file: !130, line: 94, baseType: !131)
!130 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dbllnklst.h", directory: "/home/lichi/Desktop/open-vm-tools/line406")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DblLnkLst_Links", file: !130, line: 91, size: 128, align: 64, elements: !132)
!132 = !{!133, !135}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !131, file: !130, line: 92, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !131, file: !130, line: 93, baseType: !134, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "isInactive", scope: !126, file: !4, line: 313, baseType: !103, size: 8, align: 8, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !4, line: 316, baseType: !138, size: 32, align: 32, offset: 160)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSessionFlags", file: !9, line: 1834, baseType: !120)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sessionId", scope: !126, file: !4, line: 319, baseType: !140, size: 64, align: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !104, line: 171, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !122, line: 55, baseType: !142)
!142 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "maxPacketSize", scope: !126, file: !4, line: 322, baseType: !120, size: 32, align: 32, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "transportSession", scope: !126, file: !4, line: 325, baseType: !145, size: 64, align: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsTransportSessionInfo", file: !4, line: 96, baseType: !147)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsTransportSessionInfo", file: !4, line: 96, flags: DIFlagFwdDecl)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !126, file: !4, line: 328, baseType: !149, size: 32, align: 32, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSessionInfoState", file: !4, line: 300, baseType: !3)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fileIOLock", scope: !126, file: !4, line: 331, baseType: !151, size: 64, align: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserExclLock", file: !153, line: 38, baseType: !154)
!153 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line406")
!154 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserExclLock", file: !153, line: 38, flags: DIFlagFwdDecl)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "numInvalidationAttempts", scope: !126, file: !4, line: 333, baseType: !156, size: 32, align: 32, offset: 512)
!156 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "refCount", scope: !126, file: !4, line: 335, baseType: !158, size: 32, align: 32, offset: 544)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !159, line: 135, baseType: !160)
!159 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line406")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !159, line: 133, size: 32, align: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !160, file: !159, line: 134, baseType: !163, size: 32, align: 32)
!163 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nodeArrayLock", scope: !126, file: !4, line: 343, baseType: !151, size: 64, align: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nodeArray", scope: !126, file: !4, line: 346, baseType: !166, size: 64, align: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsFileNode", file: !4, line: 227, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsFileNode", file: !4, line: 177, size: 1024, align: 64, elements: !169)
!169 = !{!170, !171, !172, !174, !177, !178, !179, !185, !187, !188, !189, !191, !193, !194, !196}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !168, file: !4, line: 179, baseType: !129, size: 128, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !168, file: !4, line: 182, baseType: !119, size: 32, align: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "utf8Name", scope: !168, file: !4, line: 185, baseType: !173, size: 64, align: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "utf8NameLen", scope: !168, file: !4, line: 188, baseType: !175, size: 64, align: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !176, line: 216, baseType: !142)
!176 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line406")
!177 = !DIDerivedType(tag: DW_TAG_member, name: "shareName", scope: !168, file: !4, line: 191, baseType: !173, size: 64, align: 64, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "shareNameLen", scope: !168, file: !4, line: 194, baseType: !175, size: 64, align: 64, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "localId", scope: !168, file: !4, line: 197, baseType: !180, size: 128, align: 64, offset: 448)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsLocalId", file: !4, line: 102, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsLocalId", file: !4, line: 99, size: 128, align: 64, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "volumeId", scope: !181, file: !4, line: 100, baseType: !140, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "fileId", scope: !181, file: !4, line: 101, baseType: !140, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "fileDesc", scope: !168, file: !4, line: 200, baseType: !186, size: 32, align: 32, offset: 576)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "fileDesc", file: !4, line: 28, baseType: !156)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !168, file: !4, line: 203, baseType: !120, size: 32, align: 32, offset: 608)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "shareAccess", scope: !168, file: !4, line: 206, baseType: !120, size: 32, align: 32, offset: 640)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "serverLock", scope: !168, file: !4, line: 209, baseType: !190, size: 32, align: 32, offset: 672)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsLockType", file: !9, line: 301, baseType: !8)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !168, file: !4, line: 212, baseType: !192, size: 32, align: 32, offset: 704)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileNodeState", file: !4, line: 115, baseType: !17)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !4, line: 215, baseType: !120, size: 32, align: 32, offset: 736)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "fileCtx", scope: !168, file: !4, line: 223, baseType: !195, size: 64, align: 64, offset: 768)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "shareInfo", scope: !168, file: !4, line: 226, baseType: !197, size: 192, align: 64, offset: 832)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsShareInfo", file: !4, line: 163, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsShareInfo", file: !4, line: 145, size: 192, align: 64, elements: !199)
!199 = !{!200, !203, !204, !205, !206}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rootDir", scope: !198, file: !4, line: 147, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "rootDirLen", scope: !198, file: !4, line: 150, baseType: !175, size: 64, align: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "readPermissions", scope: !198, file: !4, line: 153, baseType: !103, size: 8, align: 8, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "writePermissions", scope: !198, file: !4, line: 156, baseType: !103, size: 8, align: 8, offset: 136)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !198, file: !4, line: 162, baseType: !207, size: 32, align: 32, offset: 160)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSharedFolderHandle", file: !208, line: 134, baseType: !120)
!208 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServer.h", directory: "/home/lichi/Desktop/open-vm-tools/line406")
!209 = !DIDerivedType(tag: DW_TAG_member, name: "numNodes", scope: !126, file: !4, line: 349, baseType: !120, size: 32, align: 32, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "nodeFreeList", scope: !126, file: !4, line: 352, baseType: !129, size: 128, align: 64, offset: 768)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "nodeCachedList", scope: !126, file: !4, line: 355, baseType: !129, size: 128, align: 64, offset: 896)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "numCachedOpenNodes", scope: !126, file: !4, line: 358, baseType: !123, size: 32, align: 32, offset: 1024)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "numCachedLockedNodes", scope: !126, file: !4, line: 361, baseType: !123, size: 32, align: 32, offset: 1056)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "searchArrayLock", scope: !126, file: !4, line: 370, baseType: !151, size: 64, align: 64, offset: 1088)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "searchArray", scope: !126, file: !4, line: 373, baseType: !216, size: 64, align: 64, offset: 1152)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSearch", file: !4, line: 283, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsSearch", file: !4, line: 246, size: 768, align: 64, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !231, !232, !234}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !218, file: !4, line: 248, baseType: !129, size: 128, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !4, line: 251, baseType: !120, size: 32, align: 32, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !218, file: !4, line: 254, baseType: !119, size: 32, align: 32, offset: 160)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "utf8Dir", scope: !218, file: !4, line: 257, baseType: !173, size: 64, align: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "utf8DirLen", scope: !218, file: !4, line: 260, baseType: !175, size: 64, align: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "utf8ShareName", scope: !218, file: !4, line: 263, baseType: !173, size: 64, align: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "utf8ShareNameLen", scope: !218, file: !4, line: 266, baseType: !175, size: 64, align: 64, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "dents", scope: !218, file: !4, line: 269, baseType: !228, size: 64, align: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "DirectoryEntry", file: !4, line: 25, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "numDents", scope: !218, file: !4, line: 272, baseType: !120, size: 32, align: 32, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !218, file: !4, line: 279, baseType: !233, size: 32, align: 32, offset: 544)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "DirectorySearchType", file: !4, line: 123, baseType: !22)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "shareInfo", scope: !218, file: !4, line: 282, baseType: !197, size: 192, align: 64, offset: 576)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "numSearches", scope: !126, file: !4, line: 376, baseType: !120, size: 32, align: 32, offset: 1216)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "searchFreeList", scope: !126, file: !4, line: 379, baseType: !129, size: 128, align: 64, offset: 1280)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "hgfsSessionCapabilities", scope: !126, file: !4, line: 383, baseType: !238, size: 4160, align: 8, offset: 1408)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 4160, align: 8, elements: !246)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOpCapability", file: !9, line: 1808, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsOpCapability", file: !9, line: 1803, size: 64, align: 8, elements: !241)
!241 = !{!242, !244}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !240, file: !9, line: 1804, baseType: !243, size: 32, align: 32)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOp", file: !9, line: 152, baseType: !27)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !240, file: !9, line: 1805, baseType: !245, size: 32, align: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOpCapFlags", file: !9, line: 1702, baseType: !120)
!246 = !{!247}
!247 = !DISubrange(count: 65)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "numberOfCapabilities", scope: !126, file: !4, line: 385, baseType: !120, size: 32, align: 32, offset: 5568)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "asyncRequestsInfo", scope: !126, file: !4, line: 388, baseType: !250, size: 192, align: 64, offset: 5632)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsAsyncRequestInfo", file: !4, line: 307, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsAsyncRequestInfo", file: !4, line: 302, size: 192, align: 64, elements: !252)
!252 = !{!253, !254, !255}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "requestCount", scope: !251, file: !4, line: 304, baseType: !158, size: 32, align: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !251, file: !4, line: 305, baseType: !151, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "requestCountIsZero", scope: !251, file: !4, line: 306, baseType: !256, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserCondVar", file: !153, line: 42, baseType: !258)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserCondVar", file: !153, line: 42, flags: DIFlagFwdDecl)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!260 = !DILocalVariable(name: "handle", arg: 1, scope: !116, file: !100, line: 130, type: !119)
!261 = !DILocation(line: 130, column: 34, scope: !116)
!262 = !DILocalVariable(name: "session", arg: 2, scope: !116, file: !100, line: 131, type: !124)
!263 = !DILocation(line: 131, column: 40, scope: !116)
!264 = !DILocalVariable(name: "lock", arg: 3, scope: !116, file: !100, line: 132, type: !259)
!265 = !DILocation(line: 132, column: 37, scope: !116)
!266 = !DILocation(line: 154, column: 5, scope: !116)
!267 = !DILocation(line: 154, column: 10, scope: !116)
!268 = !DILocation(line: 155, column: 4, scope: !116)
!269 = distinct !DISubprogram(name: "HgfsFileHasServerLock", scope: !100, file: !100, line: 182, type: !270, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!270 = !DISubroutineType(types: !271)
!271 = !{!103, !201, !124, !259, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!273 = !DILocalVariable(name: "utf8Name", arg: 1, scope: !269, file: !100, line: 182, type: !201)
!274 = !DILocation(line: 182, column: 35, scope: !269)
!275 = !DILocalVariable(name: "session", arg: 2, scope: !269, file: !100, line: 183, type: !124)
!276 = !DILocation(line: 183, column: 40, scope: !269)
!277 = !DILocalVariable(name: "serverLock", arg: 3, scope: !269, file: !100, line: 184, type: !259)
!278 = !DILocation(line: 184, column: 37, scope: !269)
!279 = !DILocalVariable(name: "fileDesc", arg: 4, scope: !269, file: !100, line: 185, type: !272)
!280 = !DILocation(line: 185, column: 33, scope: !269)
!281 = !DILocation(line: 215, column: 4, scope: !269)
