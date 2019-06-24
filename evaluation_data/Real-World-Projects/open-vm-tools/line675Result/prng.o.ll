; ModuleID = './prng.o.i'
source_filename = "./prng.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RandomFastContext = type { i64, i64 }

; Function Attrs: nounwind uwtable
define i32 @Random_Fast(i64*) #0 !dbg !17 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  call void @llvm.dbg.declare(metadata i64** %2, metadata !22, metadata !23), !dbg !24
  call void @llvm.dbg.declare(metadata i64* %3, metadata !25, metadata !23), !dbg !26
  %4 = load i64*, i64** %2, align 8, !dbg !27
  %5 = bitcast i64* %4 to i8*, !dbg !28
  %6 = ptrtoint i8* %5 to i64, !dbg !29
  %7 = or i64 %6, 1, !dbg !30
  store i64 %7, i64* %3, align 8, !dbg !26
  %8 = load i64*, i64** %2, align 8, !dbg !31
  %9 = load i64, i64* %3, align 8, !dbg !32
  %10 = call i32 @RandomFastImpl(i64* %8, i64 %9), !dbg !33
  ret i32 %10, !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @RandomFastImpl(i64*, i64) #2 !dbg !35 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !38, metadata !23), !dbg !39
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !40, metadata !23), !dbg !41
  call void @llvm.dbg.declare(metadata i64* %5, metadata !42, metadata !23), !dbg !43
  %8 = load i64*, i64** %3, align 8, !dbg !44
  %9 = load i64, i64* %8, align 8, !dbg !45
  store i64 %9, i64* %5, align 8, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %6, metadata !46, metadata !23), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %7, metadata !48, metadata !23), !dbg !49
  %10 = load i64, i64* %5, align 8, !dbg !50
  %11 = mul i64 %10, 6364136223846793005, !dbg !51
  %12 = load i64, i64* %4, align 8, !dbg !52
  %13 = add i64 %11, %12, !dbg !53
  %14 = load i64*, i64** %3, align 8, !dbg !54
  store i64 %13, i64* %14, align 8, !dbg !55
  %15 = load i64, i64* %5, align 8, !dbg !56
  %16 = lshr i64 %15, 18, !dbg !57
  %17 = load i64, i64* %5, align 8, !dbg !58
  %18 = xor i64 %16, %17, !dbg !59
  %19 = lshr i64 %18, 27, !dbg !60
  %20 = trunc i64 %19 to i32, !dbg !61
  store i32 %20, i32* %6, align 4, !dbg !62
  %21 = load i64, i64* %5, align 8, !dbg !63
  %22 = lshr i64 %21, 59, !dbg !64
  %23 = trunc i64 %22 to i32, !dbg !63
  store i32 %23, i32* %7, align 4, !dbg !65
  %24 = load i32, i32* %6, align 4, !dbg !66
  %25 = load i32, i32* %7, align 4, !dbg !67
  %26 = call i32 @RandomRor(i32 %24, i32 %25), !dbg !68
  ret i32 %26, !dbg !69
}

; Function Attrs: nounwind uwtable
define i32 @Random_FastStream(%struct.RandomFastContext*) #0 !dbg !70 {
  %2 = alloca %struct.RandomFastContext*, align 8
  store %struct.RandomFastContext* %0, %struct.RandomFastContext** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RandomFastContext** %2, metadata !80, metadata !23), !dbg !81
  %3 = load %struct.RandomFastContext*, %struct.RandomFastContext** %2, align 8, !dbg !82
  %4 = getelementptr inbounds %struct.RandomFastContext, %struct.RandomFastContext* %3, i32 0, i32 0, !dbg !83
  %5 = load %struct.RandomFastContext*, %struct.RandomFastContext** %2, align 8, !dbg !84
  %6 = getelementptr inbounds %struct.RandomFastContext, %struct.RandomFastContext* %5, i32 0, i32 1, !dbg !85
  %7 = load i64, i64* %6, align 8, !dbg !85
  %8 = call i32 @RandomFastImpl(i64* %4, i64 %7), !dbg !86
  ret i32 %8, !dbg !87
}

; Function Attrs: nounwind uwtable
define void @Random_FastStreamSeed(%struct.RandomFastContext*, i64, i64) #0 !dbg !88 {
  %4 = alloca %struct.RandomFastContext*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.RandomFastContext* %0, %struct.RandomFastContext** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.RandomFastContext** %4, metadata !91, metadata !23), !dbg !92
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !93, metadata !23), !dbg !94
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !95, metadata !23), !dbg !96
  %7 = load %struct.RandomFastContext*, %struct.RandomFastContext** %4, align 8, !dbg !97
  %8 = getelementptr inbounds %struct.RandomFastContext, %struct.RandomFastContext* %7, i32 0, i32 0, !dbg !98
  store i64 0, i64* %8, align 8, !dbg !99
  %9 = load i64, i64* %6, align 8, !dbg !100
  %10 = shl i64 %9, 1, !dbg !101
  %11 = or i64 %10, 1, !dbg !102
  %12 = load %struct.RandomFastContext*, %struct.RandomFastContext** %4, align 8, !dbg !103
  %13 = getelementptr inbounds %struct.RandomFastContext, %struct.RandomFastContext* %12, i32 0, i32 1, !dbg !104
  store i64 %11, i64* %13, align 8, !dbg !105
  %14 = load %struct.RandomFastContext*, %struct.RandomFastContext** %4, align 8, !dbg !106
  %15 = call i32 @Random_FastStream(%struct.RandomFastContext* %14), !dbg !107
  %16 = load i64, i64* %5, align 8, !dbg !108
  %17 = load %struct.RandomFastContext*, %struct.RandomFastContext** %4, align 8, !dbg !109
  %18 = getelementptr inbounds %struct.RandomFastContext, %struct.RandomFastContext* %17, i32 0, i32 0, !dbg !110
  %19 = load i64, i64* %18, align 8, !dbg !111
  %20 = add i64 %19, %16, !dbg !111
  store i64 %20, i64* %18, align 8, !dbg !111
  %21 = load %struct.RandomFastContext*, %struct.RandomFastContext** %4, align 8, !dbg !112
  %22 = call i32 @Random_FastStream(%struct.RandomFastContext* %21), !dbg !113
  ret void, !dbg !114
}

; Function Attrs: nounwind uwtable
define i32 @Random_Simple(i32) #0 !dbg !115 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !119, metadata !23), !dbg !120
  call void @llvm.dbg.declare(metadata i64* %3, metadata !121, metadata !23), !dbg !122
  %7 = load i32, i32* %2, align 4, !dbg !123
  %8 = sext i32 %7 to i64, !dbg !124
  %9 = mul i64 33614, %8, !dbg !125
  store i64 %9, i64* %3, align 8, !dbg !122
  call void @llvm.dbg.declare(metadata i32* %4, metadata !126, metadata !23), !dbg !127
  %10 = load i64, i64* %3, align 8, !dbg !128
  %11 = and i64 %10, 4294967295, !dbg !129
  %12 = trunc i64 %11 to i32, !dbg !130
  %13 = lshr i32 %12, 1, !dbg !131
  store i32 %13, i32* %4, align 4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %5, metadata !132, metadata !23), !dbg !133
  %14 = load i64, i64* %3, align 8, !dbg !134
  %15 = lshr i64 %14, 32, !dbg !135
  %16 = trunc i64 %15 to i32, !dbg !134
  store i32 %16, i32* %5, align 4, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %6, metadata !136, metadata !23), !dbg !139
  %17 = load i32, i32* %4, align 4, !dbg !140
  %18 = load i32, i32* %5, align 4, !dbg !141
  %19 = add i32 %17, %18, !dbg !142
  store i32 %19, i32* %6, align 4, !dbg !139
  %20 = load i32, i32* %6, align 4, !dbg !143
  %21 = icmp sgt i32 %20, 0, !dbg !144
  br i1 %21, label %22, label %24, !dbg !143

; <label>:22:                                     ; preds = %1
  %23 = load i32, i32* %6, align 4, !dbg !145
  br label %28, !dbg !147

; <label>:24:                                     ; preds = %1
  %25 = load i32, i32* %6, align 4, !dbg !148
  %26 = and i32 %25, 2147483647, !dbg !150
  %27 = add nsw i32 %26, 1, !dbg !151
  br label %28, !dbg !152

; <label>:28:                                     ; preds = %24, %22
  %29 = phi i32 [ %23, %22 ], [ %27, %24 ], !dbg !153
  ret i32 %29, !dbg !155
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @RandomRor(i32, i32) #2 !dbg !156 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !159, metadata !23), !dbg !160
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !161, metadata !23), !dbg !162
  %5 = load i32, i32* %3, align 4, !dbg !163
  %6 = load i32, i32* %4, align 4, !dbg !164
  call void asm "rorl %cl, $0", "=*rm,0,{cx},~{dirflag},~{fpsr},~{flags}"(i32* %3, i32 %5, i32 %6) #3, !dbg !165, !srcloc !166
  %7 = load i32, i32* %3, align 4, !dbg !167
  ret i32 %7, !dbg !168
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "prng.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line675")
!2 = !{}
!3 = !{!4, !7, !8, !11}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !5, line: 122, baseType: !6)
!5 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line675")
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !9, line: 171, baseType: !10)
!9 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line675")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !5, line: 55, baseType: !6)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !9, line: 173, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !5, line: 51, baseType: !13)
!13 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!17 = distinct !DISubprogram(name: "Random_Fast", scope: !18, file: !18, line: 153, type: !19, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!18 = !DIFile(filename: "prng.c", directory: "/home/lichi/Desktop/open-vm-tools/line675")
!19 = !DISubroutineType(types: !20)
!20 = !{!11, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!22 = !DILocalVariable(name: "rs", arg: 1, scope: !17, file: !18, line: 153, type: !21)
!23 = !DIExpression()
!24 = !DILocation(line: 153, column: 21, scope: !17)
!25 = !DILocalVariable(name: "inc", scope: !17, file: !18, line: 155, type: !8)
!26 = !DILocation(line: 155, column: 11, scope: !17)
!27 = !DILocation(line: 155, column: 36, scope: !17)
!28 = !DILocation(line: 155, column: 28, scope: !17)
!29 = !DILocation(line: 155, column: 17, scope: !17)
!30 = !DILocation(line: 155, column: 39, scope: !17)
!31 = !DILocation(line: 156, column: 26, scope: !17)
!32 = !DILocation(line: 156, column: 30, scope: !17)
!33 = !DILocation(line: 156, column: 11, scope: !17)
!34 = !DILocation(line: 156, column: 4, scope: !17)
!35 = distinct !DISubprogram(name: "RandomFastImpl", scope: !18, file: !18, line: 101, type: !36, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!36 = !DISubroutineType(types: !37)
!37 = !{!11, !21, !8}
!38 = !DILocalVariable(name: "rs", arg: 1, scope: !35, file: !18, line: 101, type: !21)
!39 = !DILocation(line: 101, column: 24, scope: !35)
!40 = !DILocalVariable(name: "inc", arg: 2, scope: !35, file: !18, line: 102, type: !8)
!41 = !DILocation(line: 102, column: 23, scope: !35)
!42 = !DILocalVariable(name: "state", scope: !35, file: !18, line: 104, type: !8)
!43 = !DILocation(line: 104, column: 11, scope: !35)
!44 = !DILocation(line: 104, column: 20, scope: !35)
!45 = !DILocation(line: 104, column: 19, scope: !35)
!46 = !DILocalVariable(name: "xorshift", scope: !35, file: !18, line: 105, type: !11)
!47 = !DILocation(line: 105, column: 11, scope: !35)
!48 = !DILocalVariable(name: "rot", scope: !35, file: !18, line: 105, type: !11)
!49 = !DILocation(line: 105, column: 21, scope: !35)
!50 = !DILocation(line: 107, column: 10, scope: !35)
!51 = !DILocation(line: 107, column: 16, scope: !35)
!52 = !DILocation(line: 107, column: 42, scope: !35)
!53 = !DILocation(line: 107, column: 40, scope: !35)
!54 = !DILocation(line: 107, column: 5, scope: !35)
!55 = !DILocation(line: 107, column: 8, scope: !35)
!56 = !DILocation(line: 108, column: 17, scope: !35)
!57 = !DILocation(line: 108, column: 23, scope: !35)
!58 = !DILocation(line: 108, column: 32, scope: !35)
!59 = !DILocation(line: 108, column: 30, scope: !35)
!60 = !DILocation(line: 108, column: 39, scope: !35)
!61 = !DILocation(line: 108, column: 15, scope: !35)
!62 = !DILocation(line: 108, column: 13, scope: !35)
!63 = !DILocation(line: 109, column: 10, scope: !35)
!64 = !DILocation(line: 109, column: 16, scope: !35)
!65 = !DILocation(line: 109, column: 8, scope: !35)
!66 = !DILocation(line: 110, column: 21, scope: !35)
!67 = !DILocation(line: 110, column: 31, scope: !35)
!68 = !DILocation(line: 110, column: 11, scope: !35)
!69 = !DILocation(line: 110, column: 4, scope: !35)
!70 = distinct !DISubprogram(name: "Random_FastStream", scope: !18, file: !18, line: 160, type: !71, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!71 = !DISubroutineType(types: !72)
!72 = !{!11, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "RandomFastContext", file: !75, line: 100, baseType: !76)
!75 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/random.h", directory: "/home/lichi/Desktop/open-vm-tools/line675")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 97, size: 128, align: 64, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !76, file: !75, line: 98, baseType: !8, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !76, file: !75, line: 99, baseType: !8, size: 64, align: 64, offset: 64)
!80 = !DILocalVariable(name: "rfc", arg: 1, scope: !70, file: !18, line: 160, type: !73)
!81 = !DILocation(line: 160, column: 38, scope: !70)
!82 = !DILocation(line: 162, column: 27, scope: !70)
!83 = !DILocation(line: 162, column: 32, scope: !70)
!84 = !DILocation(line: 162, column: 39, scope: !70)
!85 = !DILocation(line: 162, column: 44, scope: !70)
!86 = !DILocation(line: 162, column: 11, scope: !70)
!87 = !DILocation(line: 162, column: 4, scope: !70)
!88 = distinct !DISubprogram(name: "Random_FastStreamSeed", scope: !18, file: !18, line: 166, type: !89, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !73, !8, !8}
!91 = !DILocalVariable(name: "rfc", arg: 1, scope: !88, file: !18, line: 166, type: !73)
!92 = !DILocation(line: 166, column: 42, scope: !88)
!93 = !DILocalVariable(name: "seed", arg: 2, scope: !88, file: !18, line: 167, type: !8)
!94 = !DILocation(line: 167, column: 30, scope: !88)
!95 = !DILocalVariable(name: "seq", arg: 3, scope: !88, file: !18, line: 168, type: !8)
!96 = !DILocation(line: 168, column: 30, scope: !88)
!97 = !DILocation(line: 170, column: 4, scope: !88)
!98 = !DILocation(line: 170, column: 9, scope: !88)
!99 = !DILocation(line: 170, column: 15, scope: !88)
!100 = !DILocation(line: 171, column: 21, scope: !88)
!101 = !DILocation(line: 171, column: 25, scope: !88)
!102 = !DILocation(line: 171, column: 31, scope: !88)
!103 = !DILocation(line: 171, column: 4, scope: !88)
!104 = !DILocation(line: 171, column: 9, scope: !88)
!105 = !DILocation(line: 171, column: 18, scope: !88)
!106 = !DILocation(line: 172, column: 22, scope: !88)
!107 = !DILocation(line: 172, column: 4, scope: !88)
!108 = !DILocation(line: 173, column: 18, scope: !88)
!109 = !DILocation(line: 173, column: 4, scope: !88)
!110 = !DILocation(line: 173, column: 9, scope: !88)
!111 = !DILocation(line: 173, column: 15, scope: !88)
!112 = !DILocation(line: 174, column: 22, scope: !88)
!113 = !DILocation(line: 174, column: 4, scope: !88)
!114 = !DILocation(line: 175, column: 1, scope: !88)
!115 = distinct !DISubprogram(name: "Random_Simple", scope: !18, file: !18, line: 202, type: !116, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !118}
!118 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!119 = !DILocalVariable(name: "seed", arg: 1, scope: !115, file: !18, line: 202, type: !118)
!120 = !DILocation(line: 202, column: 19, scope: !115)
!121 = !DILocalVariable(name: "product", scope: !115, file: !18, line: 204, type: !8)
!122 = !DILocation(line: 204, column: 11, scope: !115)
!123 = !DILocation(line: 204, column: 38, scope: !115)
!124 = !DILocation(line: 204, column: 29, scope: !115)
!125 = !DILocation(line: 204, column: 27, scope: !115)
!126 = !DILocalVariable(name: "product_lo", scope: !115, file: !18, line: 205, type: !11)
!127 = !DILocation(line: 205, column: 11, scope: !115)
!128 = !DILocation(line: 205, column: 34, scope: !115)
!129 = !DILocation(line: 205, column: 42, scope: !115)
!130 = !DILocation(line: 205, column: 24, scope: !115)
!131 = !DILocation(line: 205, column: 56, scope: !115)
!132 = !DILocalVariable(name: "product_hi", scope: !115, file: !18, line: 206, type: !11)
!133 = !DILocation(line: 206, column: 11, scope: !115)
!134 = !DILocation(line: 206, column: 24, scope: !115)
!135 = !DILocation(line: 206, column: 32, scope: !115)
!136 = !DILocalVariable(name: "test", scope: !115, file: !18, line: 207, type: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !9, line: 174, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !5, line: 38, baseType: !118)
!139 = !DILocation(line: 207, column: 10, scope: !115)
!140 = !DILocation(line: 207, column: 17, scope: !115)
!141 = !DILocation(line: 207, column: 30, scope: !115)
!142 = !DILocation(line: 207, column: 28, scope: !115)
!143 = !DILocation(line: 209, column: 11, scope: !115)
!144 = !DILocation(line: 209, column: 16, scope: !115)
!145 = !DILocation(line: 209, column: 22, scope: !146)
!146 = !DILexicalBlockFile(scope: !115, file: !18, discriminator: 1)
!147 = !DILocation(line: 209, column: 11, scope: !146)
!148 = !DILocation(line: 209, column: 30, scope: !149)
!149 = !DILexicalBlockFile(scope: !115, file: !18, discriminator: 2)
!150 = !DILocation(line: 209, column: 35, scope: !149)
!151 = !DILocation(line: 209, column: 49, scope: !149)
!152 = !DILocation(line: 209, column: 11, scope: !149)
!153 = !DILocation(line: 209, column: 11, scope: !154)
!154 = !DILexicalBlockFile(scope: !115, file: !18, discriminator: 3)
!155 = !DILocation(line: 209, column: 4, scope: !154)
!156 = distinct !DISubprogram(name: "RandomRor", scope: !18, file: !18, line: 87, type: !157, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!157 = !DISubroutineType(types: !158)
!158 = !{!11, !11, !13}
!159 = !DILocalVariable(name: "val", arg: 1, scope: !156, file: !18, line: 87, type: !11)
!160 = !DILocation(line: 87, column: 18, scope: !156)
!161 = !DILocalVariable(name: "rot", arg: 2, scope: !156, file: !18, line: 88, type: !13)
!162 = !DILocation(line: 88, column: 20, scope: !156)
!163 = !DILocation(line: 92, column: 45, scope: !156)
!164 = !DILocation(line: 92, column: 55, scope: !156)
!165 = !DILocation(line: 92, column: 4, scope: !156)
!166 = !{i32 40728}
!167 = !DILocation(line: 93, column: 11, scope: !156)
!168 = !DILocation(line: 93, column: 4, scope: !156)
