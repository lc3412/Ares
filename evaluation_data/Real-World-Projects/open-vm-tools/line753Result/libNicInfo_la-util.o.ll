; ModuleID = './libNicInfo_la-util.o.i'
source_filename = "./libNicInfo_la-util.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GuestNicV3 = type { i8*, %struct.anon, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*, %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo* }
%struct.anon = type { i32, %struct.IpAddressEntry* }
%struct.IpAddressEntry = type { %struct.TypedIpAddress, i32, i32*, i32* }
%struct.TypedIpAddress = type { i32, %struct.InetAddress }
%struct.InetAddress = type { i32, i8* }
%struct.DnsConfigInfo = type { i8**, i8**, %struct.anon.0, %struct.anon.1 }
%struct.anon.0 = type { i32, %struct.TypedIpAddress* }
%struct.anon.1 = type { i32, i8** }
%struct.WinsConfigInfo = type { %struct.TypedIpAddress, %struct.TypedIpAddress }
%struct.DhcpConfigInfo = type { i32, i8* }
%struct.NicInfoV3 = type { %struct.anon.2, %struct.anon.3, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*, %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo* }
%struct.anon.2 = type { i32, %struct.GuestNicV3* }
%struct.anon.3 = type { i32, %struct.InetCidrRouteEntry* }
%struct.InetCidrRouteEntry = type { %struct.TypedIpAddress, i32, %struct.TypedIpAddress*, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define %struct.GuestNicV3* @GuestInfoUtilFindNicByMac(%struct.NicInfoV3*, i8*) #0 !dbg !38 {
  %3 = alloca %struct.GuestNicV3*, align 8
  %4 = alloca %struct.NicInfoV3*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.GuestNicV3*, align 8
  store %struct.NicInfoV3* %0, %struct.NicInfoV3** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %4, metadata !158, metadata !159), !dbg !160
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !161, metadata !159), !dbg !162
  call void @llvm.dbg.declare(metadata i32* %6, metadata !163, metadata !159), !dbg !164
  store i32 0, i32* %6, align 4, !dbg !165
  br label %8, !dbg !167

; <label>:8:                                      ; preds = %32, %2
  %9 = load i32, i32* %6, align 4, !dbg !168
  %10 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !171
  %11 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %10, i32 0, i32 0, !dbg !172
  %12 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %11, i32 0, i32 0, !dbg !173
  %13 = load i32, i32* %12, align 8, !dbg !173
  %14 = icmp ult i32 %9, %13, !dbg !174
  br i1 %14, label %15, label %35, !dbg !175

; <label>:15:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %7, metadata !176, metadata !159), !dbg !178
  %16 = load i32, i32* %6, align 4, !dbg !179
  %17 = zext i32 %16 to i64, !dbg !180
  %18 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !181
  %19 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %18, i32 0, i32 0, !dbg !182
  %20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %19, i32 0, i32 1, !dbg !183
  %21 = load %struct.GuestNicV3*, %struct.GuestNicV3** %20, align 8, !dbg !183
  %22 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %21, i64 %17, !dbg !180
  store %struct.GuestNicV3* %22, %struct.GuestNicV3** %7, align 8, !dbg !184
  %23 = load %struct.GuestNicV3*, %struct.GuestNicV3** %7, align 8, !dbg !185
  %24 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %23, i32 0, i32 0, !dbg !187
  %25 = load i8*, i8** %24, align 8, !dbg !187
  %26 = load i8*, i8** %5, align 8, !dbg !188
  %27 = call i32 @strcasecmp(i8* %25, i8* %26) #3, !dbg !189
  %28 = icmp eq i32 %27, 0, !dbg !190
  br i1 %28, label %29, label %31, !dbg !191

; <label>:29:                                     ; preds = %15
  %30 = load %struct.GuestNicV3*, %struct.GuestNicV3** %7, align 8, !dbg !192
  store %struct.GuestNicV3* %30, %struct.GuestNicV3** %3, align 8, !dbg !194
  br label %36, !dbg !194

; <label>:31:                                     ; preds = %15
  br label %32, !dbg !195

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %6, align 4, !dbg !196
  %34 = add i32 %33, 1, !dbg !196
  store i32 %34, i32* %6, align 4, !dbg !196
  br label %8, !dbg !198, !llvm.loop !199

; <label>:35:                                     ; preds = %8
  store %struct.GuestNicV3* null, %struct.GuestNicV3** %3, align 8, !dbg !201
  br label %36, !dbg !201

; <label>:36:                                     ; preds = %35, %29
  %37 = load %struct.GuestNicV3*, %struct.GuestNicV3** %3, align 8, !dbg !202
  ret %struct.GuestNicV3* %37, !dbg !202
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!35, !36}
!llvm.ident = !{!37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "libNicInfo_la-util.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line753")
!2 = !{!3, !12, !19, !29}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetAddressType", file: !4, line: 65, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guestrpc/nicinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line753")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "IAT_UNKNOWN", value: 0)
!7 = !DIEnumerator(name: "IAT_IPV4", value: 1)
!8 = !DIEnumerator(name: "IAT_IPV6", value: 2)
!9 = !DIEnumerator(name: "IAT_IPV4Z", value: 3)
!10 = !DIEnumerator(name: "IAT_IPV6Z", value: 4)
!11 = !DIEnumerator(name: "IAT_DNS", value: 16)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressOrigin", file: !4, line: 77, size: 32, align: 32, elements: !13)
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "IAO_OTHER", value: 1)
!15 = !DIEnumerator(name: "IAO_MANUAL", value: 2)
!16 = !DIEnumerator(name: "IAO_DHCP", value: 4)
!17 = !DIEnumerator(name: "IAO_LINKLAYER", value: 5)
!18 = !DIEnumerator(name: "IAO_RANDOM", value: 6)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressStatus", file: !4, line: 86, size: 32, align: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28}
!21 = !DIEnumerator(name: "IAS_PREFERRED", value: 1)
!22 = !DIEnumerator(name: "IAS_DEPRECATED", value: 2)
!23 = !DIEnumerator(name: "IAS_INVALID", value: 3)
!24 = !DIEnumerator(name: "IAS_INACCESSIBLE", value: 4)
!25 = !DIEnumerator(name: "IAS_UNKNOWN", value: 5)
!26 = !DIEnumerator(name: "IAS_TENTATIVE", value: 6)
!27 = !DIEnumerator(name: "IAS_DUPLICATE", value: 7)
!28 = !DIEnumerator(name: "IAS_OPTIMISTIC", value: 8)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetCidrRouteType", file: !4, line: 138, size: 32, align: 32, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "ICRT_OTHER", value: 1)
!32 = !DIEnumerator(name: "ICRT_REJECT", value: 2)
!33 = !DIEnumerator(name: "ICRT_LOCAL", value: 3)
!34 = !DIEnumerator(name: "ICRT_REMOTE", value: 4)
!35 = !{i32 2, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!38 = distinct !DISubprogram(name: "GuestInfoUtilFindNicByMac", scope: !39, file: !39, line: 48, type: !40, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !157)
!39 = !DIFile(filename: "util.c", directory: "/home/lichi/Desktop/open-vm-tools/line753")
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !121, !155}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicV3", file: !4, line: 174, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicV3", file: !4, line: 163, size: 448, align: 64, elements: !45)
!45 = !{!46, !49, !83, !103, !110, !120}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "macAddress", scope: !44, file: !4, line: 164, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !44, file: !4, line: 168, baseType: !50, size: 128, align: 64, offset: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !4, line: 165, size: 128, align: 64, elements: !51)
!51 = !{!52, !58}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ips_len", scope: !50, file: !4, line: 166, baseType: !53, size: 32, align: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !54, line: 35, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line753")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !56, line: 32, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line753")
!57 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ips_val", scope: !50, file: !4, line: 167, baseType: !59, size: 64, align: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressEntry", file: !4, line: 110, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IpAddressEntry", file: !4, line: 104, size: 384, align: 64, elements: !62)
!62 = !{!63, !75, !77, !80}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !61, file: !4, line: 105, baseType: !64, size: 192, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "TypedIpAddress", file: !4, line: 102, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TypedIpAddress", file: !4, line: 98, size: 192, align: 64, elements: !66)
!66 = !{!67, !69}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddrType", scope: !65, file: !4, line: 99, baseType: !68, size: 32, align: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressType", file: !4, line: 73, baseType: !3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !65, file: !4, line: 100, baseType: !70, size: 128, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddress", file: !4, line: 63, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 60, size: 128, align: 64, elements: !72)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_len", scope: !71, file: !4, line: 61, baseType: !53, size: 32, align: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_val", scope: !71, file: !4, line: 62, baseType: !47, size: 64, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressPrefixLength", scope: !61, file: !4, line: 106, baseType: !76, size: 32, align: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressPrefixLength", file: !4, line: 75, baseType: !53)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressOrigin", scope: !61, file: !4, line: 107, baseType: !78, size: 64, align: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressOrigin", file: !4, line: 84, baseType: !12)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressStatus", scope: !61, file: !4, line: 108, baseType: !81, size: 64, align: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressStatus", file: !4, line: 96, baseType: !19)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !44, file: !4, line: 169, baseType: !84, size: 64, align: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsConfigInfo", file: !4, line: 129, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DnsConfigInfo", file: !4, line: 117, size: 384, align: 64, elements: !87)
!87 = !{!88, !91, !92, !98}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "hostName", scope: !86, file: !4, line: 118, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsHostname", file: !4, line: 113, baseType: !47)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "domainName", scope: !86, file: !4, line: 119, baseType: !89, size: 64, align: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "serverList", scope: !86, file: !4, line: 123, baseType: !93, size: 128, align: 64, offset: 128)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !86, file: !4, line: 120, size: 128, align: 64, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_len", scope: !93, file: !4, line: 121, baseType: !53, size: 32, align: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_val", scope: !93, file: !4, line: 122, baseType: !97, size: 64, align: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes", scope: !86, file: !4, line: 127, baseType: !99, size: 128, align: 64, offset: 256)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !86, file: !4, line: 124, size: 128, align: 64, elements: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_len", scope: !99, file: !4, line: 125, baseType: !53, size: 32, align: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_val", scope: !99, file: !4, line: 126, baseType: !89, size: 64, align: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !44, file: !4, line: 170, baseType: !104, size: 64, align: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "WinsConfigInfo", file: !4, line: 135, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WinsConfigInfo", file: !4, line: 131, size: 384, align: 64, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !106, file: !4, line: 132, baseType: !64, size: 192, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !106, file: !4, line: 133, baseType: !64, size: 192, align: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !44, file: !4, line: 171, baseType: !111, size: 64, align: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "DhcpConfigInfo", file: !4, line: 161, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DhcpConfigInfo", file: !4, line: 157, size: 128, align: 64, elements: !114)
!114 = !{!115, !119}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !113, file: !4, line: 158, baseType: !116, size: 32, align: 32)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !117, line: 37, baseType: !118)
!117 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line753")
!118 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpSettings", scope: !113, file: !4, line: 159, baseType: !47, size: 64, align: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !44, file: !4, line: 172, baseType: !111, size: 64, align: 64, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoV3", file: !4, line: 190, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NicInfoV3", file: !4, line: 176, size: 512, align: 64, elements: !125)
!125 = !{!126, !131, !151, !152, !153, !154}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "nics", scope: !124, file: !4, line: 180, baseType: !127, size: 128, align: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !124, file: !4, line: 177, size: 128, align: 64, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nics_len", scope: !127, file: !4, line: 178, baseType: !53, size: 32, align: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nics_val", scope: !127, file: !4, line: 179, baseType: !42, size: 64, align: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "routes", scope: !124, file: !4, line: 184, baseType: !132, size: 128, align: 64, offset: 128)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !124, file: !4, line: 181, size: 128, align: 64, elements: !133)
!133 = !{!134, !135}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "routes_len", scope: !132, file: !4, line: 182, baseType: !53, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "routes_val", scope: !132, file: !4, line: 183, baseType: !136, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteEntry", file: !4, line: 154, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InetCidrRouteEntry", file: !4, line: 146, size: 448, align: 64, elements: !139)
!139 = !{!140, !141, !142, !143, !148, !150}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteDest", scope: !138, file: !4, line: 147, baseType: !64, size: 192, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRoutePfxLen", scope: !138, file: !4, line: 148, baseType: !76, size: 32, align: 32, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteNextHop", scope: !138, file: !4, line: 149, baseType: !97, size: 64, align: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteIfIndex", scope: !138, file: !4, line: 150, baseType: !144, size: 32, align: 32, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !145, line: 173, baseType: !146)
!145 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line753")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !147, line: 51, baseType: !57)
!147 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line753")
!148 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteType", scope: !138, file: !4, line: 151, baseType: !149, size: 32, align: 32, offset: 352)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteType", file: !4, line: 144, baseType: !29)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteMetric", scope: !138, file: !4, line: 152, baseType: !144, size: 32, align: 32, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !124, file: !4, line: 185, baseType: !84, size: 64, align: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !124, file: !4, line: 186, baseType: !104, size: 64, align: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !124, file: !4, line: 187, baseType: !111, size: 64, align: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !124, file: !4, line: 188, baseType: !111, size: 64, align: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!157 = !{}
!158 = !DILocalVariable(name: "nicInfo", arg: 1, scope: !38, file: !39, line: 48, type: !121)
!159 = !DIExpression()
!160 = !DILocation(line: 48, column: 44, scope: !38)
!161 = !DILocalVariable(name: "macAddress", arg: 2, scope: !38, file: !39, line: 49, type: !155)
!162 = !DILocation(line: 49, column: 39, scope: !38)
!163 = !DILocalVariable(name: "i", scope: !38, file: !39, line: 51, type: !53)
!164 = !DILocation(line: 51, column: 10, scope: !38)
!165 = !DILocation(line: 56, column: 13, scope: !166)
!166 = distinct !DILexicalBlock(scope: !38, file: !39, line: 56, column: 4)
!167 = !DILocation(line: 56, column: 9, scope: !166)
!168 = !DILocation(line: 56, column: 19, scope: !169)
!169 = !DILexicalBlockFile(scope: !170, file: !39, discriminator: 1)
!170 = distinct !DILexicalBlock(scope: !166, file: !39, line: 56, column: 4)
!171 = !DILocation(line: 56, column: 26, scope: !169)
!172 = !DILocation(line: 56, column: 36, scope: !169)
!173 = !DILocation(line: 56, column: 41, scope: !169)
!174 = !DILocation(line: 56, column: 22, scope: !169)
!175 = !DILocation(line: 56, column: 4, scope: !169)
!176 = !DILocalVariable(name: "nic", scope: !177, file: !39, line: 57, type: !42)
!177 = distinct !DILexicalBlock(scope: !170, file: !39, line: 56, column: 59)
!178 = !DILocation(line: 57, column: 19, scope: !177)
!179 = !DILocation(line: 58, column: 40, scope: !177)
!180 = !DILocation(line: 58, column: 15, scope: !177)
!181 = !DILocation(line: 58, column: 16, scope: !177)
!182 = !DILocation(line: 58, column: 26, scope: !177)
!183 = !DILocation(line: 58, column: 31, scope: !177)
!184 = !DILocation(line: 58, column: 11, scope: !177)
!185 = !DILocation(line: 59, column: 22, scope: !186)
!186 = distinct !DILexicalBlock(scope: !177, file: !39, line: 59, column: 11)
!187 = !DILocation(line: 59, column: 27, scope: !186)
!188 = !DILocation(line: 59, column: 39, scope: !186)
!189 = !DILocation(line: 59, column: 11, scope: !186)
!190 = !DILocation(line: 59, column: 51, scope: !186)
!191 = !DILocation(line: 59, column: 11, scope: !177)
!192 = !DILocation(line: 60, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !186, file: !39, line: 59, column: 57)
!194 = !DILocation(line: 60, column: 10, scope: !193)
!195 = !DILocation(line: 62, column: 4, scope: !177)
!196 = !DILocation(line: 56, column: 55, scope: !197)
!197 = !DILexicalBlockFile(scope: !170, file: !39, discriminator: 2)
!198 = !DILocation(line: 56, column: 4, scope: !197)
!199 = distinct !{!199, !200}
!200 = !DILocation(line: 56, column: 4, scope: !38)
!201 = !DILocation(line: 64, column: 4, scope: !38)
!202 = !DILocation(line: 65, column: 1, scope: !38)
