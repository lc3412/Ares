; ModuleID = './hgfsDirNotifyStub.o.i'
source_filename = "./hgfsDirNotifyStub.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HgfsServerNotifyCallbacks = type { void (%struct.HgfsSessionInfo*)*, void (%struct.HgfsSessionInfo*)*, void (i32, i64, i8*, i32, %struct.HgfsSessionInfo*)* }
%struct.HgfsSessionInfo = type opaque

; Function Attrs: nounwind uwtable
define i32 @HgfsNotify_Init(%struct.HgfsServerNotifyCallbacks*) #0 !dbg !24 {
  %2 = alloca %struct.HgfsServerNotifyCallbacks*, align 8
  store %struct.HgfsServerNotifyCallbacks* %0, %struct.HgfsServerNotifyCallbacks** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerNotifyCallbacks** %2, metadata !53, metadata !54), !dbg !55
  ret i32 95, !dbg !56
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @HgfsNotify_Exit() #0 !dbg !57 {
  ret void, !dbg !60
}

; Function Attrs: nounwind uwtable
define void @HgfsNotify_Activate(i32, %struct.HgfsSessionInfo*) #0 !dbg !61 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.HgfsSessionInfo*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !65, metadata !54), !dbg !66
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %4, metadata !67, metadata !54), !dbg !68
  ret void, !dbg !69
}

; Function Attrs: nounwind uwtable
define void @HgfsNotify_Deactivate(i32, %struct.HgfsSessionInfo*) #0 !dbg !70 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.HgfsSessionInfo*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !71, metadata !54), !dbg !72
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %4, metadata !73, metadata !54), !dbg !74
  ret void, !dbg !75
}

; Function Attrs: nounwind uwtable
define i32 @HgfsNotify_AddSharedFolder(i8*, i8*) #0 !dbg !76 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !81, metadata !54), !dbg !82
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !83, metadata !54), !dbg !84
  ret i32 -1, !dbg !85
}

; Function Attrs: nounwind uwtable
define i64 @HgfsNotify_AddSubscriber(i32, i8*, i32, i32, %struct.HgfsSessionInfo*) #0 !dbg !86 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.HgfsSessionInfo*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !89, metadata !54), !dbg !90
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !91, metadata !54), !dbg !92
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !93, metadata !54), !dbg !94
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !95, metadata !54), !dbg !96
  store %struct.HgfsSessionInfo* %4, %struct.HgfsSessionInfo** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %10, metadata !97, metadata !54), !dbg !98
  ret i64 -1, !dbg !99
}

; Function Attrs: nounwind uwtable
define signext i8 @HgfsNotify_RemoveSharedFolder(i32) #0 !dbg !100 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !104, metadata !54), !dbg !105
  ret i8 0, !dbg !106
}

; Function Attrs: nounwind uwtable
define signext i8 @HgfsNotify_RemoveSubscriber(i64) #0 !dbg !107 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !110, metadata !54), !dbg !111
  ret i8 0, !dbg !112
}

; Function Attrs: nounwind uwtable
define void @HgfsNotify_RemoveSessionSubscribers(%struct.HgfsSessionInfo*) #0 !dbg !113 {
  %2 = alloca %struct.HgfsSessionInfo*, align 8
  store %struct.HgfsSessionInfo* %0, %struct.HgfsSessionInfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %2, metadata !114, metadata !54), !dbg !115
  ret void, !dbg !116
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !8)
!1 = !DIFile(filename: "hgfsDirNotifyStub.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line394")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 47, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "hgfsDirNotify.h", directory: "/home/lichi/Desktop/open-vm-tools/line394")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "HGFS_NOTIFY_REASON_SERVER_SYNC", value: 0)
!7 = !DIEnumerator(name: "HGFS_NOTIFY_REASON_SUBSCRIBERS", value: 1)
!8 = !{!9, !16}
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSharedFolderHandle", file: !10, line: 134, baseType: !11)
!10 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServer.h", directory: "/home/lichi/Desktop/open-vm-tools/line394")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !12, line: 173, baseType: !13)
!12 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line394")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 51, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line394")
!15 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSubscriberHandle", file: !17, line: 1953, baseType: !18)
!17 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsProto.h", directory: "/home/lichi/Desktop/open-vm-tools/line394")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !12, line: 171, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 55, baseType: !20)
!20 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!24 = distinct !DISubprogram(name: "HgfsNotify_Init", scope: !25, file: !25, line: 53, type: !26, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!25 = !DIFile(filename: "hgfsDirNotifyStub.c", directory: "/home/lichi/Desktop/open-vm-tools/line394")
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !31}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsInternalStatus", file: !29, line: 82, baseType: !30)
!29 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsUtil.h", directory: "/home/lichi/Desktop/open-vm-tools/line394")
!30 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerNotifyCallbacks", file: !4, line: 65, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerNotifyCallbacks", file: !4, line: 61, size: 192, align: 64, elements: !35)
!35 = !{!36, !43, !45}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "registerThread", scope: !34, file: !4, line: 62, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsNotifyRegisterThreadCb", file: !4, line: 53, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsSessionInfo", file: !4, line: 32, flags: DIFlagFwdDecl)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "unregisterThread", scope: !34, file: !4, line: 63, baseType: !44, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsNotifyUnregisterThreadCb", file: !4, line: 54, baseType: !38)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "eventReceive", scope: !34, file: !4, line: 64, baseType: !46, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsNotifyEventReceiveCb", file: !4, line: 55, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !9, !16, !50, !11, !41}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!52 = !{}
!53 = !DILocalVariable(name: "serverCbData", arg: 1, scope: !24, file: !25, line: 53, type: !31)
!54 = !DIExpression()
!55 = !DILocation(line: 53, column: 50, scope: !24)
!56 = !DILocation(line: 55, column: 4, scope: !24)
!57 = distinct !DISubprogram(name: "HgfsNotify_Exit", scope: !25, file: !25, line: 76, type: !58, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!58 = !DISubroutineType(types: !59)
!59 = !{null}
!60 = !DILocation(line: 78, column: 1, scope: !57)
!61 = distinct !DISubprogram(name: "HgfsNotify_Activate", scope: !25, file: !25, line: 98, type: !62, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64, !41}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsNotifyActivateReason", file: !4, line: 50, baseType: !3)
!65 = !DILocalVariable(name: "reason", arg: 1, scope: !61, file: !25, line: 98, type: !64)
!66 = !DILocation(line: 98, column: 46, scope: !61)
!67 = !DILocalVariable(name: "session", arg: 2, scope: !61, file: !25, line: 99, type: !41)
!68 = !DILocation(line: 99, column: 45, scope: !61)
!69 = !DILocation(line: 101, column: 1, scope: !61)
!70 = distinct !DISubprogram(name: "HgfsNotify_Deactivate", scope: !25, file: !25, line: 121, type: !62, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!71 = !DILocalVariable(name: "reason", arg: 1, scope: !70, file: !25, line: 121, type: !64)
!72 = !DILocation(line: 121, column: 48, scope: !70)
!73 = !DILocalVariable(name: "session", arg: 2, scope: !70, file: !25, line: 122, type: !41)
!74 = !DILocation(line: 122, column: 47, scope: !70)
!75 = !DILocation(line: 124, column: 1, scope: !70)
!76 = distinct !DISubprogram(name: "HgfsNotify_AddSharedFolder", scope: !25, file: !25, line: 145, type: !77, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!77 = !DISubroutineType(types: !78)
!78 = !{!9, !79, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!81 = !DILocalVariable(name: "path", arg: 1, scope: !76, file: !25, line: 145, type: !79)
!82 = !DILocation(line: 145, column: 40, scope: !76)
!83 = !DILocalVariable(name: "shareName", arg: 2, scope: !76, file: !25, line: 146, type: !79)
!84 = !DILocation(line: 146, column: 40, scope: !76)
!85 = !DILocation(line: 148, column: 4, scope: !76)
!86 = distinct !DISubprogram(name: "HgfsNotify_AddSubscriber", scope: !25, file: !25, line: 171, type: !87, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!87 = !DISubroutineType(types: !88)
!88 = !{!16, !9, !79, !11, !11, !41}
!89 = !DILocalVariable(name: "sharedFolder", arg: 1, scope: !86, file: !25, line: 171, type: !9)
!90 = !DILocation(line: 171, column: 49, scope: !86)
!91 = !DILocalVariable(name: "path", arg: 2, scope: !86, file: !25, line: 172, type: !79)
!92 = !DILocation(line: 172, column: 38, scope: !86)
!93 = !DILocalVariable(name: "eventFilter", arg: 3, scope: !86, file: !25, line: 173, type: !11)
!94 = !DILocation(line: 173, column: 33, scope: !86)
!95 = !DILocalVariable(name: "recursive", arg: 4, scope: !86, file: !25, line: 174, type: !11)
!96 = !DILocation(line: 174, column: 33, scope: !86)
!97 = !DILocalVariable(name: "session", arg: 5, scope: !86, file: !25, line: 175, type: !41)
!98 = !DILocation(line: 175, column: 50, scope: !86)
!99 = !DILocation(line: 177, column: 4, scope: !86)
!100 = distinct !DISubprogram(name: "HgfsNotify_RemoveSharedFolder", scope: !25, file: !25, line: 199, type: !101, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !9}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !12, line: 230, baseType: !51)
!104 = !DILocalVariable(name: "sharedFolder", arg: 1, scope: !100, file: !25, line: 199, type: !9)
!105 = !DILocation(line: 199, column: 54, scope: !100)
!106 = !DILocation(line: 201, column: 4, scope: !100)
!107 = distinct !DISubprogram(name: "HgfsNotify_RemoveSubscriber", scope: !25, file: !25, line: 222, type: !108, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!108 = !DISubroutineType(types: !109)
!109 = !{!103, !16}
!110 = !DILocalVariable(name: "subscriber", arg: 1, scope: !107, file: !25, line: 222, type: !16)
!111 = !DILocation(line: 222, column: 50, scope: !107)
!112 = !DILocation(line: 224, column: 4, scope: !107)
!113 = distinct !DISubprogram(name: "HgfsNotify_RemoveSessionSubscribers", scope: !25, file: !25, line: 245, type: !39, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!114 = !DILocalVariable(name: "session", arg: 1, scope: !113, file: !25, line: 245, type: !41)
!115 = !DILocation(line: 245, column: 61, scope: !113)
!116 = !DILocation(line: 247, column: 1, scope: !113)
