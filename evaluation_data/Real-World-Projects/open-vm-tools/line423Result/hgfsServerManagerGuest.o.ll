; ModuleID = './hgfsServerManagerGuest.o.i'
source_filename = "./hgfsServerManagerGuest.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HgfsServerMgrCallbacks = type { %struct.HgfsServerResEnumCallbacks }
%struct.HgfsServerResEnumCallbacks = type { i8* ()*, i8 (i8*, i8**, i64*, i8*)*, i8 (i8*)* }
%struct.HgfsServerMgrData = type { i8*, i8*, i8*, i8* }
%struct.DblLnkLst_Links = type { %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links* }

@.str = private unnamed_addr constant [31 x i8] c"%s: Processing Packet for %s.\0A\00", align 1
@__FUNCTION__.HgfsServerManager_ProcessPacket = private unnamed_addr constant [32 x i8] c"HgfsServerManager_ProcessPacket\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: Register %s.\0A\00", align 1
@__FUNCTION__.HgfsServerManager_Register = private unnamed_addr constant [27 x i8] c"HgfsServerManager_Register\00", align 1
@gHgfsServerManagerGuestData = internal global %struct.HgfsServerMgrCallbacks zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: Invalidate Inactive Sessions for %s.\0A\00", align 1
@__FUNCTION__.HgfsServerManager_InvalidateInactiveSessions = private unnamed_addr constant [45 x i8] c"HgfsServerManager_InvalidateInactiveSessions\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s: Unregister %s.\0A\00", align 1
@__FUNCTION__.HgfsServerManager_Unregister = private unnamed_addr constant [29 x i8] c"HgfsServerManager_Unregister\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @HgfsServerManager_ProcessPacket(%struct.HgfsServerMgrData*, i8*, i64, i8*, i64*) #0 !dbg !44 {
  %6 = alloca %struct.HgfsServerMgrData*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  store %struct.HgfsServerMgrData* %0, %struct.HgfsServerMgrData** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrData** %6, metadata !57, metadata !58), !dbg !59
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !60, metadata !58), !dbg !61
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !62, metadata !58), !dbg !63
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !64, metadata !58), !dbg !65
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !66, metadata !58), !dbg !67
  %11 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %6, align 8, !dbg !68
  %12 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %11, i32 0, i32 0, !dbg !69
  %13 = load i8*, i8** %12, align 8, !dbg !69
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.HgfsServerManager_ProcessPacket, i32 0, i32 0), i8* %13), !dbg !70
  %14 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %6, align 8, !dbg !71
  %15 = load i8*, i8** %7, align 8, !dbg !72
  %16 = load i64, i64* %8, align 8, !dbg !73
  %17 = load i8*, i8** %9, align 8, !dbg !74
  %18 = load i64*, i64** %10, align 8, !dbg !75
  %19 = call signext i8 @HgfsChannelGuest_Receive(%struct.HgfsServerMgrData* %14, i8* %15, i64 %16, i8* %17, i64* %18), !dbg !76
  ret i8 %19, !dbg !77
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @Debug(i8*, ...) #2

declare signext i8 @HgfsChannelGuest_Receive(%struct.HgfsServerMgrData*, i8*, i64, i8*, i64*) #2

; Function Attrs: nounwind uwtable
define signext i8 @HgfsServerManager_Register(%struct.HgfsServerMgrData*) #0 !dbg !78 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.HgfsServerMgrData*, align 8
  store %struct.HgfsServerMgrData* %0, %struct.HgfsServerMgrData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrData** %3, metadata !81, metadata !58), !dbg !82
  %4 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %3, align 8, !dbg !83
  %5 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %4, i32 0, i32 0, !dbg !84
  %6 = load i8*, i8** %5, align 8, !dbg !84
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.HgfsServerManager_Register, i32 0, i32 0), i8* %6), !dbg !85
  %7 = call signext i8 @HgfsServerPolicy_Init(void (%struct.DblLnkLst_Links*)* null, %struct.HgfsServerResEnumCallbacks* getelementptr inbounds (%struct.HgfsServerMgrCallbacks, %struct.HgfsServerMgrCallbacks* @gHgfsServerManagerGuestData, i32 0, i32 0)), !dbg !86
  %8 = icmp ne i8 %7, 0, !dbg !86
  br i1 %8, label %10, label %9, !dbg !88

; <label>:9:                                      ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !89
  br label %17, !dbg !89

; <label>:10:                                     ; preds = %1
  %11 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %3, align 8, !dbg !91
  %12 = call signext i8 @HgfsChannelGuest_Init(%struct.HgfsServerMgrData* %11, %struct.HgfsServerMgrCallbacks* @gHgfsServerManagerGuestData), !dbg !93
  %13 = icmp ne i8 %12, 0, !dbg !93
  br i1 %13, label %16, label %14, !dbg !94

; <label>:14:                                     ; preds = %10
  %15 = call signext i8 @HgfsServerPolicy_Cleanup(), !dbg !95
  store i8 0, i8* %2, align 1, !dbg !97
  br label %17, !dbg !97

; <label>:16:                                     ; preds = %10
  store i8 1, i8* %2, align 1, !dbg !98
  br label %17, !dbg !98

; <label>:17:                                     ; preds = %16, %14, %9
  %18 = load i8, i8* %2, align 1, !dbg !99
  ret i8 %18, !dbg !99
}

declare signext i8 @HgfsServerPolicy_Init(void (%struct.DblLnkLst_Links*)*, %struct.HgfsServerResEnumCallbacks*) #2

declare signext i8 @HgfsChannelGuest_Init(%struct.HgfsServerMgrData*, %struct.HgfsServerMgrCallbacks*) #2

declare signext i8 @HgfsServerPolicy_Cleanup() #2

; Function Attrs: nounwind uwtable
define i32 @HgfsServerManager_InvalidateInactiveSessions(%struct.HgfsServerMgrData*) #0 !dbg !100 {
  %2 = alloca %struct.HgfsServerMgrData*, align 8
  store %struct.HgfsServerMgrData* %0, %struct.HgfsServerMgrData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrData** %2, metadata !107, metadata !58), !dbg !108
  %3 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %2, align 8, !dbg !109
  %4 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %3, i32 0, i32 0, !dbg !110
  %5 = load i8*, i8** %4, align 8, !dbg !110
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__FUNCTION__.HgfsServerManager_InvalidateInactiveSessions, i32 0, i32 0), i8* %5), !dbg !111
  %6 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %2, align 8, !dbg !112
  %7 = call i32 @HgfsChannelGuest_InvalidateInactiveSessions(%struct.HgfsServerMgrData* %6), !dbg !113
  ret i32 %7, !dbg !114
}

declare i32 @HgfsChannelGuest_InvalidateInactiveSessions(%struct.HgfsServerMgrData*) #2

; Function Attrs: nounwind uwtable
define void @HgfsServerManager_Unregister(%struct.HgfsServerMgrData*) #0 !dbg !115 {
  %2 = alloca %struct.HgfsServerMgrData*, align 8
  store %struct.HgfsServerMgrData* %0, %struct.HgfsServerMgrData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrData** %2, metadata !118, metadata !58), !dbg !119
  %3 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %2, align 8, !dbg !120
  %4 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %3, i32 0, i32 0, !dbg !121
  %5 = load i8*, i8** %4, align 8, !dbg !121
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.HgfsServerManager_Unregister, i32 0, i32 0), i8* %5), !dbg !122
  %6 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %2, align 8, !dbg !123
  call void @HgfsChannelGuest_Exit(%struct.HgfsServerMgrData* %6), !dbg !124
  %7 = call signext i8 @HgfsServerPolicy_Cleanup(), !dbg !125
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.HgfsServerMgrCallbacks* @gHgfsServerManagerGuestData to i8*), i8 0, i64 24, i32 8, i1 false), !dbg !126
  ret void, !dbg !127
}

declare void @HgfsChannelGuest_Exit(%struct.HgfsServerMgrData*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42}
!llvm.ident = !{!43}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "hgfsServerManagerGuest.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line423")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "gHgfsServerManagerGuestData", scope: !0, file: !5, line: 40, type: !6, isLocal: true, isDefinition: true, variable: %struct.HgfsServerMgrCallbacks* @gHgfsServerManagerGuestData)
!5 = !DIFile(filename: "hgfsServerManagerGuest.c", directory: "/home/lichi/Desktop/open-vm-tools/line423")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerMgrCallbacks", file: !7, line: 162, baseType: !8)
!7 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServer.h", directory: "/home/lichi/Desktop/open-vm-tools/line423")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerMgrCallbacks", file: !7, line: 160, size: 192, align: 64, elements: !9)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "enumResources", scope: !8, file: !7, line: 161, baseType: !11, size: 192, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumCallbacks", file: !7, line: 153, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerResEnumCallbacks", file: !7, line: 149, size: 192, align: 64, elements: !13)
!13 = !{!14, !20, !36}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !12, file: !7, line: 150, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumInitFunc", file: !7, line: 142, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !12, file: !7, line: 151, baseType: !21, size: 64, align: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumGetFunc", file: !7, line: 143, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !19, !28, !31, !35}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !26, line: 230, baseType: !27)
!26 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line423")
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 216, baseType: !34)
!33 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line423")
!34 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !12, file: !7, line: 152, baseType: !37, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumExitFunc", file: !7, line: 147, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!25, !19}
!41 = !{i32 2, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!44 = distinct !DISubprogram(name: "HgfsServerManager_ProcessPacket", scope: !5, file: !5, line: 63, type: !45, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{!25, !47, !29, !32, !56, !31}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerMgrData", file: !49, line: 49, baseType: !50)
!49 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServerManager.h", directory: "/home/lichi/Desktop/open-vm-tools/line423")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerMgrData", file: !49, line: 44, size: 256, align: 64, elements: !51)
!51 = !{!52, !53, !54, !55}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "appName", scope: !50, file: !49, line: 45, baseType: !29, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !50, file: !49, line: 46, baseType: !19, size: 64, align: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "rpcCallback", scope: !50, file: !49, line: 47, baseType: !19, size: 64, align: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !50, file: !49, line: 48, baseType: !19, size: 64, align: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!57 = !DILocalVariable(name: "mgrData", arg: 1, scope: !44, file: !5, line: 63, type: !47)
!58 = !DIExpression()
!59 = !DILocation(line: 63, column: 57, scope: !44)
!60 = !DILocalVariable(name: "packetIn", arg: 2, scope: !44, file: !5, line: 64, type: !29)
!61 = !DILocation(line: 64, column: 50, scope: !44)
!62 = !DILocalVariable(name: "packetInSize", arg: 3, scope: !44, file: !5, line: 65, type: !32)
!63 = !DILocation(line: 65, column: 45, scope: !44)
!64 = !DILocalVariable(name: "packetOut", arg: 4, scope: !44, file: !5, line: 66, type: !56)
!65 = !DILocation(line: 66, column: 44, scope: !44)
!66 = !DILocalVariable(name: "packetOutSize", arg: 5, scope: !44, file: !5, line: 67, type: !31)
!67 = !DILocation(line: 67, column: 46, scope: !44)
!68 = !DILocation(line: 69, column: 59, scope: !44)
!69 = !DILocation(line: 69, column: 68, scope: !44)
!70 = !DILocation(line: 69, column: 4, scope: !44)
!71 = !DILocation(line: 71, column: 36, scope: !44)
!72 = !DILocation(line: 72, column: 36, scope: !44)
!73 = !DILocation(line: 73, column: 36, scope: !44)
!74 = !DILocation(line: 74, column: 36, scope: !44)
!75 = !DILocation(line: 75, column: 36, scope: !44)
!76 = !DILocation(line: 71, column: 11, scope: !44)
!77 = !DILocation(line: 71, column: 4, scope: !44)
!78 = distinct !DISubprogram(name: "HgfsServerManager_Register", scope: !5, file: !5, line: 96, type: !79, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!79 = !DISubroutineType(types: !80)
!80 = !{!25, !47}
!81 = !DILocalVariable(name: "data", arg: 1, scope: !78, file: !5, line: 96, type: !47)
!82 = !DILocation(line: 96, column: 47, scope: !78)
!83 = !DILocation(line: 102, column: 46, scope: !78)
!84 = !DILocation(line: 102, column: 52, scope: !78)
!85 = !DILocation(line: 102, column: 4, scope: !78)
!86 = !DILocation(line: 111, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !78, file: !5, line: 111, column: 8)
!88 = !DILocation(line: 111, column: 8, scope: !78)
!89 = !DILocation(line: 113, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !5, line: 112, column: 76)
!91 = !DILocation(line: 116, column: 31, scope: !92)
!92 = distinct !DILexicalBlock(scope: !78, file: !5, line: 116, column: 8)
!93 = !DILocation(line: 116, column: 9, scope: !92)
!94 = !DILocation(line: 116, column: 8, scope: !78)
!95 = !DILocation(line: 117, column: 7, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !5, line: 116, column: 68)
!97 = !DILocation(line: 118, column: 7, scope: !96)
!98 = !DILocation(line: 121, column: 4, scope: !78)
!99 = !DILocation(line: 122, column: 1, scope: !78)
!100 = distinct !DISubprogram(name: "HgfsServerManager_InvalidateInactiveSessions", scope: !5, file: !5, line: 142, type: !101, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !47}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !26, line: 173, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !105, line: 51, baseType: !106)
!105 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line423")
!106 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!107 = !DILocalVariable(name: "mgrData", arg: 1, scope: !100, file: !5, line: 142, type: !47)
!108 = !DILocation(line: 142, column: 65, scope: !100)
!109 = !DILocation(line: 147, column: 10, scope: !100)
!110 = !DILocation(line: 147, column: 19, scope: !100)
!111 = !DILocation(line: 146, column: 4, scope: !100)
!112 = !DILocation(line: 148, column: 55, scope: !100)
!113 = !DILocation(line: 148, column: 11, scope: !100)
!114 = !DILocation(line: 148, column: 4, scope: !100)
!115 = distinct !DISubprogram(name: "HgfsServerManager_Unregister", scope: !5, file: !5, line: 169, type: !116, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !47}
!118 = !DILocalVariable(name: "data", arg: 1, scope: !115, file: !5, line: 169, type: !47)
!119 = !DILocation(line: 169, column: 49, scope: !115)
!120 = !DILocation(line: 175, column: 48, scope: !115)
!121 = !DILocation(line: 175, column: 54, scope: !115)
!122 = !DILocation(line: 175, column: 4, scope: !115)
!123 = !DILocation(line: 177, column: 26, scope: !115)
!124 = !DILocation(line: 177, column: 4, scope: !115)
!125 = !DILocation(line: 178, column: 4, scope: !115)
!126 = !DILocation(line: 179, column: 4, scope: !115)
!127 = !DILocation(line: 180, column: 1, scope: !115)
