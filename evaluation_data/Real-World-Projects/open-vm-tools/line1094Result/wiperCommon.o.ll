; ModuleID = './wiperCommon.o.i'
source_filename = "./wiperCommon.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.WiperPartition = type { [256 x i8], i32, i8, i8*, %struct.DblLnkLst_Links }
%struct.DblLnkLst_Links = type { %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links* }
%struct.WiperPartition_List = type { %struct.DblLnkLst_Links }

; Function Attrs: nounwind uwtable
define %struct.WiperPartition* @WiperSinglePartition_Allocate() #0 !dbg !54 {
  %1 = alloca %struct.WiperPartition*, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %1, metadata !59, metadata !60), !dbg !61
  %2 = call noalias i8* @malloc(i64 288) #5, !dbg !62
  %3 = bitcast i8* %2 to %struct.WiperPartition*, !dbg !63
  store %struct.WiperPartition* %3, %struct.WiperPartition** %1, align 8, !dbg !61
  %4 = load %struct.WiperPartition*, %struct.WiperPartition** %1, align 8, !dbg !64
  %5 = icmp ne %struct.WiperPartition* %4, null, !dbg !66
  br i1 %5, label %6, label %18, !dbg !67

; <label>:6:                                      ; preds = %0
  %7 = load %struct.WiperPartition*, %struct.WiperPartition** %1, align 8, !dbg !68
  %8 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %7, i32 0, i32 0, !dbg !70
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !71
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 256, i32 8, i1 false), !dbg !71
  %10 = load %struct.WiperPartition*, %struct.WiperPartition** %1, align 8, !dbg !72
  %11 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %10, i32 0, i32 1, !dbg !73
  store i32 0, i32* %11, align 8, !dbg !74
  %12 = load %struct.WiperPartition*, %struct.WiperPartition** %1, align 8, !dbg !75
  %13 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %12, i32 0, i32 3, !dbg !76
  store i8* null, i8** %13, align 8, !dbg !77
  %14 = load %struct.WiperPartition*, %struct.WiperPartition** %1, align 8, !dbg !78
  %15 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %14, i32 0, i32 2, !dbg !79
  store i8 1, i8* %15, align 4, !dbg !80
  %16 = load %struct.WiperPartition*, %struct.WiperPartition** %1, align 8, !dbg !81
  %17 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %16, i32 0, i32 4, !dbg !82
  call void @DblLnkLst_Init(%struct.DblLnkLst_Links* %17), !dbg !83
  br label %18, !dbg !84

; <label>:18:                                     ; preds = %6, %0
  %19 = load %struct.WiperPartition*, %struct.WiperPartition** %1, align 8, !dbg !85
  ret %struct.WiperPartition* %19, !dbg !86
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_Init(%struct.DblLnkLst_Links*) #4 !dbg !87 {
  %2 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %2, metadata !91, metadata !60), !dbg !92
  %3 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !93
  %4 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !94
  %5 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %4, i32 0, i32 1, !dbg !95
  store %struct.DblLnkLst_Links* %3, %struct.DblLnkLst_Links** %5, align 8, !dbg !96
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !97
  %7 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %6, i32 0, i32 0, !dbg !98
  store %struct.DblLnkLst_Links* %3, %struct.DblLnkLst_Links** %7, align 8, !dbg !99
  ret void, !dbg !100
}

; Function Attrs: nounwind uwtable
define void @WiperSinglePartition_Close(%struct.WiperPartition*) #0 !dbg !101 {
  %2 = alloca %struct.WiperPartition*, align 8
  store %struct.WiperPartition* %0, %struct.WiperPartition** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %2, metadata !104, metadata !60), !dbg !105
  %3 = load %struct.WiperPartition*, %struct.WiperPartition** %2, align 8, !dbg !106
  %4 = icmp ne %struct.WiperPartition* %3, null, !dbg !106
  br i1 %4, label %5, label %11, !dbg !108

; <label>:5:                                      ; preds = %1
  %6 = load %struct.WiperPartition*, %struct.WiperPartition** %2, align 8, !dbg !109
  %7 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %6, i32 0, i32 3, !dbg !111
  %8 = load i8*, i8** %7, align 8, !dbg !111
  call void @free(i8* %8) #5, !dbg !112
  %9 = load %struct.WiperPartition*, %struct.WiperPartition** %2, align 8, !dbg !113
  %10 = bitcast %struct.WiperPartition* %9 to i8*, !dbg !113
  call void @free(i8* %10) #5, !dbg !114
  br label %11, !dbg !115

; <label>:11:                                     ; preds = %5, %1
  ret void, !dbg !116
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @WiperPartition_Close(%struct.WiperPartition_List*) #0 !dbg !117 {
  %2 = alloca %struct.WiperPartition_List*, align 8
  %3 = alloca %struct.DblLnkLst_Links*, align 8
  %4 = alloca %struct.DblLnkLst_Links*, align 8
  %5 = alloca %struct.WiperPartition*, align 8
  store %struct.WiperPartition_List* %0, %struct.WiperPartition_List** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperPartition_List** %2, metadata !125, metadata !60), !dbg !126
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %3, metadata !127, metadata !60), !dbg !128
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %4, metadata !129, metadata !60), !dbg !130
  %6 = load %struct.WiperPartition_List*, %struct.WiperPartition_List** %2, align 8, !dbg !131
  %7 = getelementptr inbounds %struct.WiperPartition_List, %struct.WiperPartition_List* %6, i32 0, i32 0, !dbg !133
  %8 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %7, i32 0, i32 1, !dbg !134
  %9 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %8, align 8, !dbg !134
  store %struct.DblLnkLst_Links* %9, %struct.DblLnkLst_Links** %3, align 8, !dbg !135
  %10 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !136
  %11 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %10, i32 0, i32 1, !dbg !137
  %12 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %11, align 8, !dbg !137
  store %struct.DblLnkLst_Links* %12, %struct.DblLnkLst_Links** %4, align 8, !dbg !138
  br label %13, !dbg !139

; <label>:13:                                     ; preds = %25, %1
  %14 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !140
  %15 = load %struct.WiperPartition_List*, %struct.WiperPartition_List** %2, align 8, !dbg !143
  %16 = getelementptr inbounds %struct.WiperPartition_List, %struct.WiperPartition_List* %15, i32 0, i32 0, !dbg !144
  %17 = icmp ne %struct.DblLnkLst_Links* %14, %16, !dbg !145
  br i1 %17, label %18, label %30, !dbg !146

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %5, metadata !147, metadata !60), !dbg !149
  %19 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !150
  %20 = bitcast %struct.DblLnkLst_Links* %19 to i8*, !dbg !151
  %21 = getelementptr inbounds i8, i8* %20, i64 sub (i64 0, i64 ptrtoint (%struct.DblLnkLst_Links* getelementptr inbounds (%struct.WiperPartition, %struct.WiperPartition* null, i32 0, i32 4) to i64)), !dbg !152
  %22 = bitcast i8* %21 to %struct.WiperPartition*, !dbg !153
  store %struct.WiperPartition* %22, %struct.WiperPartition** %5, align 8, !dbg !149
  %23 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !154
  call void @DblLnkLst_Unlink1(%struct.DblLnkLst_Links* %23), !dbg !155
  %24 = load %struct.WiperPartition*, %struct.WiperPartition** %5, align 8, !dbg !156
  call void @WiperSinglePartition_Close(%struct.WiperPartition* %24), !dbg !157
  br label %25, !dbg !158

; <label>:25:                                     ; preds = %18
  %26 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !159
  store %struct.DblLnkLst_Links* %26, %struct.DblLnkLst_Links** %3, align 8, !dbg !161
  %27 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !162
  %28 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %27, i32 0, i32 1, !dbg !163
  %29 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %28, align 8, !dbg !163
  store %struct.DblLnkLst_Links* %29, %struct.DblLnkLst_Links** %4, align 8, !dbg !164
  br label %13, !dbg !165, !llvm.loop !166

; <label>:30:                                     ; preds = %13
  ret void, !dbg !168
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_Unlink1(%struct.DblLnkLst_Links*) #4 !dbg !169 {
  %2 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %2, metadata !170, metadata !60), !dbg !171
  %3 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !172
  %4 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !173
  %5 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %4, i32 0, i32 1, !dbg !174
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %5, align 8, !dbg !174
  call void @DblLnkLst_Unlink(%struct.DblLnkLst_Links* %3, %struct.DblLnkLst_Links* %6), !dbg !175
  ret void, !dbg !176
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_Unlink(%struct.DblLnkLst_Links*, %struct.DblLnkLst_Links*) #4 !dbg !177 {
  %3 = alloca %struct.DblLnkLst_Links*, align 8
  %4 = alloca %struct.DblLnkLst_Links*, align 8
  %5 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %3, metadata !180, metadata !60), !dbg !181
  store %struct.DblLnkLst_Links* %1, %struct.DblLnkLst_Links** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %4, metadata !182, metadata !60), !dbg !183
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %5, metadata !184, metadata !60), !dbg !185
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !186
  %7 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %6, i32 0, i32 0, !dbg !187
  %8 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %7, align 8, !dbg !187
  store %struct.DblLnkLst_Links* %8, %struct.DblLnkLst_Links** %5, align 8, !dbg !188
  %9 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !189
  %10 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !190
  %11 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %10, i32 0, i32 0, !dbg !191
  %12 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %11, align 8, !dbg !191
  %13 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !192
  %14 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %13, i32 0, i32 0, !dbg !193
  store %struct.DblLnkLst_Links* %12, %struct.DblLnkLst_Links** %14, align 8, !dbg !194
  %15 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %12, i32 0, i32 1, !dbg !195
  store %struct.DblLnkLst_Links* %9, %struct.DblLnkLst_Links** %15, align 8, !dbg !196
  %16 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !197
  %17 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %5, align 8, !dbg !198
  %18 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !199
  %19 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %18, i32 0, i32 0, !dbg !200
  store %struct.DblLnkLst_Links* %17, %struct.DblLnkLst_Links** %19, align 8, !dbg !201
  %20 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %17, i32 0, i32 1, !dbg !202
  store %struct.DblLnkLst_Links* %16, %struct.DblLnkLst_Links** %20, align 8, !dbg !203
  ret void, !dbg !204
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19)
!1 = !DIFile(filename: "wiperCommon.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1094")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/wiper.h", directory: "/home/lichi/Desktop/open-vm-tools/line1094")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !DIEnumerator(name: "PARTITION_UNSUPPORTED", value: 0)
!7 = !DIEnumerator(name: "PARTITION_EXT2", value: 1)
!8 = !DIEnumerator(name: "PARTITION_EXT3", value: 2)
!9 = !DIEnumerator(name: "PARTITION_REISERFS", value: 3)
!10 = !DIEnumerator(name: "PARTITION_NTFS", value: 4)
!11 = !DIEnumerator(name: "PARTITION_FAT", value: 5)
!12 = !DIEnumerator(name: "PARTITION_UFS", value: 6)
!13 = !DIEnumerator(name: "PARTITION_PCFS", value: 7)
!14 = !DIEnumerator(name: "PARTITION_EXT4", value: 8)
!15 = !DIEnumerator(name: "PARTITION_HFS", value: 9)
!16 = !DIEnumerator(name: "PARTITION_ZFS", value: 10)
!17 = !DIEnumerator(name: "PARTITION_XFS", value: 11)
!18 = !DIEnumerator(name: "PARTITION_BTRFS", value: 12)
!19 = !{!20, !46, !47, !48}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPartition", file: !4, line: 86, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WiperPartition", file: !4, line: 62, size: 2304, align: 64, elements: !23)
!23 = !{!24, !29, !31, !35, !38}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "mountPoint", scope: !22, file: !4, line: 63, baseType: !25, size: 2048, align: 8)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, align: 8, elements: !27)
!26 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!27 = !{!28}
!28 = !DISubrange(count: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !4, line: 66, baseType: !30, size: 32, align: 32, offset: 2048)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPartition_Type", file: !4, line: 56, baseType: !3)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "attemptUnmaps", scope: !22, file: !4, line: 72, baseType: !32, size: 8, align: 8, offset: 2080)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !33, line: 230, baseType: !34)
!33 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1094")
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !22, file: !4, line: 78, baseType: !36, size: 64, align: 64, offset: 2112)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !22, file: !4, line: 85, baseType: !39, size: 128, align: 64, offset: 2176)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "DblLnkLst_Links", file: !40, line: 94, baseType: !41)
!40 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dbllnklst.h", directory: "/home/lichi/Desktop/open-vm-tools/line1094")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DblLnkLst_Links", file: !40, line: 91, size: 128, align: 64, elements: !42)
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !41, file: !40, line: 92, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !41, file: !40, line: 93, baseType: !44, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !49, line: 119, baseType: !50)
!49 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1094")
!50 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!51 = !{i32 2, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!54 = distinct !DISubprogram(name: "WiperSinglePartition_Allocate", scope: !55, file: !55, line: 50, type: !56, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!55 = !DIFile(filename: "wiperCommon.c", directory: "/home/lichi/Desktop/open-vm-tools/line1094")
!56 = !DISubroutineType(types: !57)
!57 = !{!20}
!58 = !{}
!59 = !DILocalVariable(name: "p", scope: !54, file: !55, line: 52, type: !20)
!60 = !DIExpression()
!61 = !DILocation(line: 52, column: 20, scope: !54)
!62 = !DILocation(line: 52, column: 43, scope: !54)
!63 = !DILocation(line: 52, column: 24, scope: !54)
!64 = !DILocation(line: 54, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !54, file: !55, line: 54, column: 8)
!66 = !DILocation(line: 54, column: 10, scope: !65)
!67 = !DILocation(line: 54, column: 8, scope: !54)
!68 = !DILocation(line: 55, column: 14, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !55, line: 54, column: 18)
!70 = !DILocation(line: 55, column: 17, scope: !69)
!71 = !DILocation(line: 55, column: 7, scope: !69)
!72 = !DILocation(line: 56, column: 7, scope: !69)
!73 = !DILocation(line: 56, column: 10, scope: !69)
!74 = !DILocation(line: 56, column: 15, scope: !69)
!75 = !DILocation(line: 57, column: 7, scope: !69)
!76 = !DILocation(line: 57, column: 10, scope: !69)
!77 = !DILocation(line: 57, column: 18, scope: !69)
!78 = !DILocation(line: 58, column: 7, scope: !69)
!79 = !DILocation(line: 58, column: 10, scope: !69)
!80 = !DILocation(line: 58, column: 24, scope: !69)
!81 = !DILocation(line: 59, column: 23, scope: !69)
!82 = !DILocation(line: 59, column: 26, scope: !69)
!83 = !DILocation(line: 59, column: 7, scope: !69)
!84 = !DILocation(line: 60, column: 4, scope: !69)
!85 = !DILocation(line: 62, column: 11, scope: !54)
!86 = !DILocation(line: 62, column: 4, scope: !54)
!87 = distinct !DISubprogram(name: "DblLnkLst_Init", scope: !40, file: !40, line: 122, type: !88, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!91 = !DILocalVariable(name: "l", arg: 1, scope: !87, file: !40, line: 122, type: !90)
!92 = !DILocation(line: 122, column: 33, scope: !87)
!93 = !DILocation(line: 124, column: 24, scope: !87)
!94 = !DILocation(line: 124, column: 14, scope: !87)
!95 = !DILocation(line: 124, column: 17, scope: !87)
!96 = !DILocation(line: 124, column: 22, scope: !87)
!97 = !DILocation(line: 124, column: 4, scope: !87)
!98 = !DILocation(line: 124, column: 7, scope: !87)
!99 = !DILocation(line: 124, column: 12, scope: !87)
!100 = !DILocation(line: 125, column: 1, scope: !87)
!101 = distinct !DISubprogram(name: "WiperSinglePartition_Close", scope: !55, file: !55, line: 85, type: !102, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !20}
!104 = !DILocalVariable(name: "p", arg: 1, scope: !101, file: !55, line: 85, type: !20)
!105 = !DILocation(line: 85, column: 44, scope: !101)
!106 = !DILocation(line: 87, column: 8, scope: !107)
!107 = distinct !DILexicalBlock(scope: !101, file: !55, line: 87, column: 8)
!108 = !DILocation(line: 87, column: 8, scope: !101)
!109 = !DILocation(line: 88, column: 20, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !55, line: 87, column: 11)
!111 = !DILocation(line: 88, column: 23, scope: !110)
!112 = !DILocation(line: 88, column: 7, scope: !110)
!113 = !DILocation(line: 89, column: 12, scope: !110)
!114 = !DILocation(line: 89, column: 7, scope: !110)
!115 = !DILocation(line: 90, column: 4, scope: !110)
!116 = !DILocation(line: 91, column: 1, scope: !101)
!117 = distinct !DISubprogram(name: "WiperPartition_Close", scope: !55, file: !55, line: 112, type: !118, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPartition_List", file: !4, line: 90, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WiperPartition_List", file: !4, line: 88, size: 128, align: 64, elements: !123)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !122, file: !4, line: 89, baseType: !39, size: 128, align: 64)
!125 = !DILocalVariable(name: "pl", arg: 1, scope: !117, file: !55, line: 112, type: !120)
!126 = !DILocation(line: 112, column: 43, scope: !117)
!127 = !DILocalVariable(name: "curr", scope: !117, file: !55, line: 114, type: !90)
!128 = !DILocation(line: 114, column: 21, scope: !117)
!129 = !DILocalVariable(name: "next", scope: !117, file: !55, line: 114, type: !90)
!130 = !DILocation(line: 114, column: 28, scope: !117)
!131 = !DILocation(line: 116, column: 18, scope: !132)
!132 = distinct !DILexicalBlock(scope: !117, file: !55, line: 116, column: 4)
!133 = !DILocation(line: 116, column: 22, scope: !132)
!134 = !DILocation(line: 116, column: 29, scope: !132)
!135 = !DILocation(line: 116, column: 14, scope: !132)
!136 = !DILocation(line: 116, column: 43, scope: !132)
!137 = !DILocation(line: 116, column: 50, scope: !132)
!138 = !DILocation(line: 116, column: 40, scope: !132)
!139 = !DILocation(line: 116, column: 9, scope: !132)
!140 = !DILocation(line: 116, column: 56, scope: !141)
!141 = !DILexicalBlockFile(scope: !142, file: !55, discriminator: 1)
!142 = distinct !DILexicalBlock(scope: !132, file: !55, line: 116, column: 4)
!143 = !DILocation(line: 116, column: 66, scope: !141)
!144 = !DILocation(line: 116, column: 70, scope: !141)
!145 = !DILocation(line: 116, column: 61, scope: !141)
!146 = !DILocation(line: 116, column: 4, scope: !141)
!147 = !DILocalVariable(name: "part", scope: !148, file: !55, line: 117, type: !20)
!148 = distinct !DILexicalBlock(scope: !142, file: !55, line: 116, column: 111)
!149 = !DILocation(line: 117, column: 23, scope: !148)
!150 = !DILocation(line: 117, column: 59, scope: !148)
!151 = !DILocation(line: 117, column: 50, scope: !148)
!152 = !DILocation(line: 117, column: 65, scope: !148)
!153 = !DILocation(line: 117, column: 31, scope: !148)
!154 = !DILocation(line: 119, column: 25, scope: !148)
!155 = !DILocation(line: 119, column: 7, scope: !148)
!156 = !DILocation(line: 120, column: 34, scope: !148)
!157 = !DILocation(line: 120, column: 7, scope: !148)
!158 = !DILocation(line: 121, column: 4, scope: !148)
!159 = !DILocation(line: 116, column: 84, scope: !160)
!160 = !DILexicalBlockFile(scope: !142, file: !55, discriminator: 2)
!161 = !DILocation(line: 116, column: 82, scope: !160)
!162 = !DILocation(line: 116, column: 98, scope: !160)
!163 = !DILocation(line: 116, column: 105, scope: !160)
!164 = !DILocation(line: 116, column: 95, scope: !160)
!165 = !DILocation(line: 116, column: 4, scope: !160)
!166 = distinct !{!166, !167}
!167 = !DILocation(line: 116, column: 4, scope: !117)
!168 = !DILocation(line: 122, column: 1, scope: !117)
!169 = distinct !DISubprogram(name: "DblLnkLst_Unlink1", scope: !40, file: !40, line: 210, type: !88, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!170 = !DILocalVariable(name: "l", arg: 1, scope: !169, file: !40, line: 210, type: !90)
!171 = !DILocation(line: 210, column: 36, scope: !169)
!172 = !DILocation(line: 212, column: 21, scope: !169)
!173 = !DILocation(line: 212, column: 24, scope: !169)
!174 = !DILocation(line: 212, column: 27, scope: !169)
!175 = !DILocation(line: 212, column: 4, scope: !169)
!176 = !DILocation(line: 213, column: 1, scope: !169)
!177 = distinct !DISubprogram(name: "DblLnkLst_Unlink", scope: !40, file: !40, line: 182, type: !178, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !90, !90}
!180 = !DILocalVariable(name: "l1", arg: 1, scope: !177, file: !40, line: 182, type: !90)
!181 = !DILocation(line: 182, column: 35, scope: !177)
!182 = !DILocalVariable(name: "l2", arg: 2, scope: !177, file: !40, line: 183, type: !90)
!183 = !DILocation(line: 183, column: 35, scope: !177)
!184 = !DILocalVariable(name: "tmp", scope: !177, file: !40, line: 185, type: !90)
!185 = !DILocation(line: 185, column: 21, scope: !177)
!186 = !DILocation(line: 187, column: 10, scope: !177)
!187 = !DILocation(line: 187, column: 14, scope: !177)
!188 = !DILocation(line: 187, column: 8, scope: !177)
!189 = !DILocation(line: 188, column: 34, scope: !177)
!190 = !DILocation(line: 188, column: 16, scope: !177)
!191 = !DILocation(line: 188, column: 20, scope: !177)
!192 = !DILocation(line: 188, column: 5, scope: !177)
!193 = !DILocation(line: 188, column: 9, scope: !177)
!194 = !DILocation(line: 188, column: 14, scope: !177)
!195 = !DILocation(line: 188, column: 27, scope: !177)
!196 = !DILocation(line: 188, column: 32, scope: !177)
!197 = !DILocation(line: 189, column: 30, scope: !177)
!198 = !DILocation(line: 189, column: 16, scope: !177)
!199 = !DILocation(line: 189, column: 5, scope: !177)
!200 = !DILocation(line: 189, column: 9, scope: !177)
!201 = !DILocation(line: 189, column: 14, scope: !177)
!202 = !DILocation(line: 189, column: 23, scope: !177)
!203 = !DILocation(line: 189, column: 28, scope: !177)
!204 = !DILocation(line: 190, column: 1, scope: !177)
