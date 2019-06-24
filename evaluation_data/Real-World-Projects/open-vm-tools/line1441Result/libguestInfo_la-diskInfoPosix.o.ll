; ModuleID = './libguestInfo_la-diskInfoPosix.o.i'
source_filename = "./libguestInfo_la-diskInfoPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._DiskInfo = type { i32, %struct._PartitionEntry* }
%struct._PartitionEntry = type <{ i64, i64, [100 x i8] }>
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"guestinfo\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"diskinfo-include-reserved\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Including reserved space in diskInfo stats.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Excluding reserved space from diskInfo stats.\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct._DiskInfo* @GuestInfo_GetDiskInfo(%struct.ToolsAppCtx*) #0 !dbg !22 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  %3 = alloca i32, align 4
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !92, metadata !93), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %3, metadata !95, metadata !93), !dbg !96
  %4 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !97
  %5 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %4, i32 0, i32 6, !dbg !98
  %6 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !98
  %7 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 0), !dbg !99
  store i32 %7, i32* %3, align 4, !dbg !100
  %8 = load i32, i32* %3, align 4, !dbg !101
  %9 = icmp ne i32 %8, 0, !dbg !101
  br i1 %9, label %10, label %11, !dbg !103

; <label>:10:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0)), !dbg !104
  br label %12, !dbg !106

; <label>:11:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0)), !dbg !107
  br label %12

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !109
  %14 = trunc i32 %13 to i8, !dbg !109
  %15 = call %struct._DiskInfo* @GuestInfoGetDiskInfoWiper(i8 signext %14), !dbg !110
  ret %struct._DiskInfo* %15, !dbg !111
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile*, i8*, i8*, i32) #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare %struct._DiskInfo* @GuestInfoGetDiskInfoWiper(i8 signext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "libguestInfo_la-diskInfoPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1441")
!2 = !{!3, !7}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1441")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 51, size: 32, align: 32, elements: !9)
!8 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1441")
!9 = !{!10, !11, !12, !13, !14, !15, !16, !17, !18}
!10 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!11 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!15 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!16 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!17 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!18 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!22 = distinct !DISubprogram(name: "GuestInfo_GetDiskInfo", scope: !23, file: !23, line: 44, type: !24, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !91)
!23 = !DIFile(filename: "diskInfoPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line1441")
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !50}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestDiskInfo", file: !28, line: 106, baseType: !29)
!28 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guestInfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line1441")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DiskInfo", file: !28, line: 103, size: 128, align: 64, elements: !30)
!30 = !{!31, !33}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "numEntries", scope: !29, file: !28, line: 104, baseType: !32, size: 32, align: 32)
!32 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "partitionList", scope: !29, file: !28, line: 105, baseType: !34, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPartitionEntry", file: !28, line: 101, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PartitionEntry", file: !28, line: 95, size: 928, align: 8, elements: !37)
!37 = !{!38, !44, !45}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "freeBytes", scope: !36, file: !28, line: 96, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !40, line: 171, baseType: !41)
!40 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1441")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !42, line: 55, baseType: !43)
!42 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1441")
!43 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "totalBytes", scope: !36, file: !28, line: 97, baseType: !39, size: 64, align: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !36, file: !28, line: 98, baseType: !46, size: 800, align: 8, offset: 128)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 800, align: 8, elements: !48)
!47 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!48 = !{!49}
!49 = !DISubrange(count: 100)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !54)
!54 = !{!55, !57, !62, !66, !67, !72, !77, !82, !83, !84, !88}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !53, file: !4, line: 243, baseType: !56, size: 32, align: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !4, line: 245, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !61, line: 46, baseType: !47)
!61 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1441")
!62 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !53, file: !4, line: 247, baseType: !63, size: 32, align: 32, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !61, line: 50, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !61, line: 49, baseType: !65)
!65 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !53, file: !4, line: 249, baseType: !65, size: 32, align: 32, offset: 160)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !53, file: !4, line: 251, baseType: !68, size: 64, align: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !70, line: 56, baseType: !71)
!70 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1441")
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !70, line: 56, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !53, file: !4, line: 253, baseType: !73, size: 64, align: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !75, line: 48, baseType: !76)
!75 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1441")
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !75, line: 48, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !53, file: !4, line: 255, baseType: !78, size: 64, align: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !80, line: 48, baseType: !81)
!80 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1441")
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !80, line: 48, flags: DIFlagFwdDecl)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !53, file: !4, line: 261, baseType: !65, size: 32, align: 32, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !53, file: !4, line: 263, baseType: !65, size: 32, align: 32, offset: 416)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !53, file: !4, line: 265, baseType: !85, size: 64, align: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !53, file: !4, line: 273, baseType: !89, size: 64, align: 64, offset: 512)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !61, line: 77, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!91 = !{}
!92 = !DILocalVariable(name: "ctx", arg: 1, scope: !22, file: !23, line: 44, type: !50)
!93 = !DIExpression()
!94 = !DILocation(line: 44, column: 42, scope: !22)
!95 = !DILocalVariable(name: "includeReserved", scope: !22, file: !23, line: 46, type: !63)
!96 = !DILocation(line: 46, column: 13, scope: !22)
!97 = !DILocation(line: 53, column: 47, scope: !22)
!98 = !DILocation(line: 53, column: 52, scope: !22)
!99 = !DILocation(line: 53, column: 22, scope: !22)
!100 = !DILocation(line: 53, column: 20, scope: !22)
!101 = !DILocation(line: 57, column: 8, scope: !102)
!102 = distinct !DILexicalBlock(scope: !22, file: !23, line: 57, column: 8)
!103 = !DILocation(line: 57, column: 8, scope: !22)
!104 = !DILocation(line: 58, column: 7, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !23, line: 57, column: 25)
!106 = !DILocation(line: 59, column: 4, scope: !105)
!107 = !DILocation(line: 60, column: 7, scope: !108)
!108 = distinct !DILexicalBlock(scope: !102, file: !23, line: 59, column: 11)
!109 = !DILocation(line: 63, column: 37, scope: !22)
!110 = !DILocation(line: 63, column: 11, scope: !22)
!111 = !DILocation(line: 63, column: 4, scope: !22)
