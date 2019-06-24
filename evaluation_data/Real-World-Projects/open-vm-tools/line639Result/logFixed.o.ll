; ModuleID = './logFixed.o.i'
source_filename = "./logFixed.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@log2Table = internal constant [256 x i16] [i16 0, i16 368, i16 735, i16 1101, i16 1465, i16 1828, i16 2190, i16 2550, i16 2909, i16 3266, i16 3622, i16 3977, i16 4331, i16 4683, i16 5034, i16 5383, i16 5731, i16 6078, i16 6424, i16 6769, i16 7112, i16 7454, i16 7794, i16 8134, i16 8472, i16 8809, i16 9145, i16 9480, i16 9813, i16 10146, i16 10477, i16 10807, i16 11136, i16 11463, i16 11790, i16 12115, i16 12440, i16 12763, i16 13085, i16 13406, i16 13726, i16 14045, i16 14363, i16 14680, i16 14995, i16 15310, i16 15624, i16 15936, i16 16248, i16 16558, i16 16868, i16 17176, i16 17484, i16 17790, i16 18096, i16 18400, i16 18704, i16 19006, i16 19308, i16 19608, i16 19908, i16 20207, i16 20505, i16 20801, i16 21097, i16 21392, i16 21686, i16 21980, i16 22272, i16 22563, i16 22854, i16 23143, i16 23432, i16 23720, i16 24007, i16 24293, i16 24578, i16 24862, i16 25146, i16 25429, i16 25710, i16 25991, i16 26272, i16 26551, i16 26829, i16 27107, i16 27384, i16 27660, i16 27935, i16 28210, i16 28483, i16 28756, i16 29028, i16 29300, i16 29570, i16 29840, i16 30109, i16 30377, i16 30644, i16 30911, i16 31177, i16 31442, i16 31707, i16 31971, i16 32234, i16 32496, i16 32757, i16 -32518, i16 -32258, i16 -31998, i16 -31740, i16 -31482, i16 -31224, i16 -30968, i16 -30712, i16 -30457, i16 -30202, i16 -29948, i16 -29695, i16 -29443, i16 -29191, i16 -28940, i16 -28689, i16 -28440, i16 -28190, i16 -27942, i16 -27694, i16 -27447, i16 -27200, i16 -26954, i16 -26709, i16 -26465, i16 -26221, i16 -25977, i16 -25735, i16 -25492, i16 -25251, i16 -25010, i16 -24770, i16 -24530, i16 -24291, i16 -24053, i16 -23815, i16 -23577, i16 -23341, i16 -23105, i16 -22869, i16 -22634, i16 -22400, i16 -22166, i16 -21933, i16 -21700, i16 -21468, i16 -21237, i16 -21006, i16 -20776, i16 -20546, i16 -20317, i16 -20088, i16 -19860, i16 -19632, i16 -19405, i16 -19179, i16 -18953, i16 -18728, i16 -18503, i16 -18279, i16 -18055, i16 -17832, i16 -17609, i16 -17387, i16 -17165, i16 -16944, i16 -16723, i16 -16503, i16 -16283, i16 -16064, i16 -15846, i16 -15627, i16 -15410, i16 -15193, i16 -14976, i16 -14760, i16 -14544, i16 -14329, i16 -14115, i16 -13901, i16 -13687, i16 -13474, i16 -13261, i16 -13049, i16 -12837, i16 -12626, i16 -12415, i16 -12205, i16 -11995, i16 -11785, i16 -11576, i16 -11368, i16 -11160, i16 -10952, i16 -10745, i16 -10538, i16 -10332, i16 -10126, i16 -9921, i16 -9716, i16 -9512, i16 -9308, i16 -9104, i16 -8901, i16 -8699, i16 -8496, i16 -8294, i16 -8093, i16 -7892, i16 -7692, i16 -7492, i16 -7292, i16 -7093, i16 -6894, i16 -6695, i16 -6497, i16 -6300, i16 -6103, i16 -5906, i16 -5709, i16 -5513, i16 -5318, i16 -5123, i16 -4928, i16 -4734, i16 -4540, i16 -4346, i16 -4153, i16 -3960, i16 -3768, i16 -3576, i16 -3384, i16 -3193, i16 -3002, i16 -2812, i16 -2622, i16 -2432, i16 -2243, i16 -2054, i16 -1865, i16 -1677, i16 -1489, i16 -1302, i16 -1115, i16 -928, i16 -742, i16 -556, i16 -371, i16 -185], align 16

; Function Attrs: nounwind uwtable
define void @LogFixed_Base2(i64, i32*, i32*) #0 !dbg !18 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !28, metadata !29), !dbg !30
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !31, metadata !29), !dbg !32
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !33, metadata !29), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %7, metadata !35, metadata !29), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %8, metadata !37, metadata !29), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %9, metadata !39, metadata !29), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %10, metadata !41, metadata !29), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %11, metadata !43, metadata !29), !dbg !44
  br label %14, !dbg !45, !llvm.loop !46

; <label>:14:                                     ; preds = %3
  br label %15, !dbg !47

; <label>:15:                                     ; preds = %14
  %16 = load i64, i64* %4, align 8, !dbg !50
  %17 = call i32 @mssb64_0(i64 %16), !dbg !51
  store i32 %17, i32* %10, align 4, !dbg !52
  %18 = load i32, i32* %10, align 4, !dbg !53
  %19 = icmp ule i32 %18, 8, !dbg !55
  br i1 %19, label %20, label %38, !dbg !56

; <label>:20:                                     ; preds = %15
  %21 = load i64, i64* %4, align 8, !dbg !57
  %22 = load i32, i32* %10, align 4, !dbg !59
  %23 = sub i32 8, %22, !dbg !60
  %24 = zext i32 %23 to i64, !dbg !61
  %25 = shl i64 %21, %24, !dbg !61
  %26 = and i64 %25, 255, !dbg !62
  %27 = trunc i64 %26 to i32, !dbg !63
  store i32 %27, i32* %7, align 4, !dbg !64
  %28 = load i32, i32* %10, align 4, !dbg !65
  %29 = mul i32 65536, %28, !dbg !66
  %30 = load i32, i32* %7, align 4, !dbg !67
  %31 = zext i32 %30 to i64, !dbg !68
  %32 = getelementptr inbounds [256 x i16], [256 x i16]* @log2Table, i64 0, i64 %31, !dbg !68
  %33 = load i16, i16* %32, align 2, !dbg !68
  %34 = zext i16 %33 to i32, !dbg !68
  %35 = add i32 %29, %34, !dbg !69
  %36 = load i32*, i32** %5, align 8, !dbg !70
  store i32 %35, i32* %36, align 4, !dbg !71
  %37 = load i32*, i32** %6, align 8, !dbg !72
  store i32 65536, i32* %37, align 4, !dbg !73
  br label %104, !dbg !74

; <label>:38:                                     ; preds = %15
  %39 = load i32, i32* %10, align 4, !dbg !75
  %40 = sub i32 %39, 8, !dbg !76
  store i32 %40, i32* %11, align 4, !dbg !77
  %41 = load i32, i32* %11, align 4, !dbg !78
  %42 = icmp ugt i32 %41, 16, !dbg !80
  br i1 %42, label %43, label %44, !dbg !81

; <label>:43:                                     ; preds = %38
  store i32 16, i32* %11, align 4, !dbg !82
  br label %44, !dbg !84

; <label>:44:                                     ; preds = %43, %38
  %45 = load i32, i32* %11, align 4, !dbg !85
  %46 = add i32 8, %45, !dbg !86
  store i32 %46, i32* %9, align 4, !dbg !87
  %47 = load i64, i64* %4, align 8, !dbg !88
  %48 = load i32, i32* %10, align 4, !dbg !89
  %49 = load i32, i32* %9, align 4, !dbg !90
  %50 = sub i32 %48, %49, !dbg !91
  %51 = zext i32 %50 to i64, !dbg !92
  %52 = lshr i64 %47, %51, !dbg !92
  %53 = load i32, i32* %9, align 4, !dbg !93
  %54 = shl i32 1, %53, !dbg !94
  %55 = sub nsw i32 %54, 1, !dbg !95
  %56 = sext i32 %55 to i64, !dbg !96
  %57 = and i64 %52, %56, !dbg !97
  %58 = trunc i64 %57 to i32, !dbg !98
  store i32 %58, i32* %8, align 4, !dbg !99
  %59 = load i32, i32* %8, align 4, !dbg !100
  %60 = load i32, i32* %11, align 4, !dbg !101
  %61 = lshr i32 %59, %60, !dbg !102
  store i32 %61, i32* %7, align 4, !dbg !103
  %62 = load i32, i32* %10, align 4, !dbg !104
  %63 = mul i32 65536, %62, !dbg !105
  %64 = load i32, i32* %7, align 4, !dbg !106
  %65 = zext i32 %64 to i64, !dbg !107
  %66 = getelementptr inbounds [256 x i16], [256 x i16]* @log2Table, i64 0, i64 %65, !dbg !107
  %67 = load i16, i16* %66, align 2, !dbg !107
  %68 = zext i16 %67 to i32, !dbg !107
  %69 = add i32 %63, %68, !dbg !108
  %70 = load i32*, i32** %5, align 8, !dbg !109
  store i32 %69, i32* %70, align 4, !dbg !110
  %71 = load i32, i32* %7, align 4, !dbg !111
  %72 = icmp ult i32 %71, 255, !dbg !113
  br i1 %72, label %73, label %102, !dbg !114

; <label>:73:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata i32* %12, metadata !115, metadata !29), !dbg !117
  %74 = load i32, i32* %8, align 4, !dbg !118
  %75 = load i32, i32* %11, align 4, !dbg !119
  %76 = shl i32 1, %75, !dbg !120
  %77 = sub nsw i32 %76, 1, !dbg !121
  %78 = and i32 %74, %77, !dbg !122
  store i32 %78, i32* %12, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i16* %13, metadata !123, metadata !29), !dbg !124
  %79 = load i32, i32* %7, align 4, !dbg !125
  %80 = add i32 %79, 1, !dbg !126
  %81 = zext i32 %80 to i64, !dbg !127
  %82 = getelementptr inbounds [256 x i16], [256 x i16]* @log2Table, i64 0, i64 %81, !dbg !127
  %83 = load i16, i16* %82, align 2, !dbg !127
  %84 = zext i16 %83 to i32, !dbg !127
  %85 = load i32, i32* %7, align 4, !dbg !128
  %86 = zext i32 %85 to i64, !dbg !129
  %87 = getelementptr inbounds [256 x i16], [256 x i16]* @log2Table, i64 0, i64 %86, !dbg !129
  %88 = load i16, i16* %87, align 2, !dbg !129
  %89 = zext i16 %88 to i32, !dbg !129
  %90 = sub nsw i32 %84, %89, !dbg !130
  %91 = trunc i32 %90 to i16, !dbg !127
  store i16 %91, i16* %13, align 2, !dbg !124
  %92 = load i32, i32* %12, align 4, !dbg !131
  %93 = load i16, i16* %13, align 2, !dbg !132
  %94 = zext i16 %93 to i32, !dbg !132
  %95 = mul i32 %92, %94, !dbg !133
  %96 = load i32, i32* %11, align 4, !dbg !134
  %97 = shl i32 1, %96, !dbg !135
  %98 = udiv i32 %95, %97, !dbg !136
  %99 = load i32*, i32** %5, align 8, !dbg !137
  %100 = load i32, i32* %99, align 4, !dbg !138
  %101 = add i32 %100, %98, !dbg !138
  store i32 %101, i32* %99, align 4, !dbg !138
  br label %102, !dbg !139

; <label>:102:                                    ; preds = %73, %44
  %103 = load i32*, i32** %6, align 8, !dbg !140
  store i32 65536, i32* %103, align 4, !dbg !141
  br label %104, !dbg !142

; <label>:104:                                    ; preds = %102, %20
  ret void, !dbg !143
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @mssb64_0(i64) #2 !dbg !145 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !151, metadata !29), !dbg !152
  %5 = load i64, i64* %3, align 8, !dbg !153
  %6 = icmp eq i64 %5, 0, !dbg !155
  %7 = zext i1 %6 to i32, !dbg !155
  %8 = sext i32 %7 to i64, !dbg !156
  %9 = icmp ne i64 %8, 0, !dbg !157
  br i1 %9, label %10, label %11, !dbg !158

; <label>:10:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !159
  br label %16, !dbg !159

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !161, metadata !29), !dbg !165
  %12 = load i64, i64* %3, align 8, !dbg !166
  %13 = call i64 asm "bsr $1, $0\0A", "=r,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %12) #3, !dbg !167, !srcloc !168
  store i64 %13, i64* %4, align 8, !dbg !167
  %14 = load i64, i64* %4, align 8, !dbg !169
  %15 = trunc i64 %14 to i32, !dbg !169
  store i32 %15, i32* %2, align 4, !dbg !170
  br label %16, !dbg !170

; <label>:16:                                     ; preds = %11, %10
  %17 = load i32, i32* %2, align 4, !dbg !171
  ret i32 %17, !dbg !171
}

; Function Attrs: nounwind uwtable
define void @LogFixed_Base10(i64, i32*, i32*) #0 !dbg !172 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !173, metadata !29), !dbg !174
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !175, metadata !29), !dbg !176
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !177, metadata !29), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %7, metadata !179, metadata !29), !dbg !180
  store i32 0, i32* %7, align 4, !dbg !180
  call void @llvm.dbg.declare(metadata i32* %8, metadata !181, metadata !29), !dbg !182
  store i32 0, i32* %8, align 4, !dbg !182
  %9 = load i64, i64* %4, align 8, !dbg !183
  call void @LogFixed_Base2(i64 %9, i32* %7, i32* %8), !dbg !184
  %10 = load i32, i32* %7, align 4, !dbg !185
  %11 = load i32*, i32** %5, align 8, !dbg !186
  store i32 %10, i32* %11, align 4, !dbg !187
  %12 = load i32*, i32** %6, align 8, !dbg !188
  store i32 217705, i32* %12, align 4, !dbg !189
  ret void, !dbg !190
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "logFixed.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line639")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "log2Table", scope: !0, file: !5, line: 69, type: !6, isLocal: true, isDefinition: true, variable: [256 x i16]* @log2Table)
!5 = !DIFile(filename: "logFixed.c", directory: "/home/lichi/Desktop/open-vm-tools/line639")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 4096, align: 16, elements: !13)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !9, line: 175, baseType: !10)
!9 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line639")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !11, line: 49, baseType: !12)
!11 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line639")
!12 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!13 = !{!14}
!14 = !DISubrange(count: 256)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!18 = distinct !DISubprogram(name: "LogFixed_Base2", scope: !5, file: !5, line: 100, type: !19, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !24, !24}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !9, line: 171, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 55, baseType: !23)
!23 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !9, line: 173, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 51, baseType: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DILocalVariable(name: "value", arg: 1, scope: !18, file: !5, line: 100, type: !21)
!29 = !DIExpression()
!30 = !DILocation(line: 100, column: 23, scope: !18)
!31 = !DILocalVariable(name: "numerator", arg: 2, scope: !18, file: !5, line: 101, type: !24)
!32 = !DILocation(line: 101, column: 24, scope: !18)
!33 = !DILocalVariable(name: "denominator", arg: 3, scope: !18, file: !5, line: 102, type: !24)
!34 = !DILocation(line: 102, column: 24, scope: !18)
!35 = !DILocalVariable(name: "index", scope: !18, file: !5, line: 104, type: !25)
!36 = !DILocation(line: 104, column: 11, scope: !18)
!37 = !DILocalVariable(name: "rawBits", scope: !18, file: !5, line: 105, type: !25)
!38 = !DILocation(line: 105, column: 11, scope: !18)
!39 = !DILocalVariable(name: "maxBits", scope: !18, file: !5, line: 106, type: !25)
!40 = !DILocation(line: 106, column: 11, scope: !18)
!41 = !DILocalVariable(name: "highBit", scope: !18, file: !5, line: 107, type: !25)
!42 = !DILocation(line: 107, column: 11, scope: !18)
!43 = !DILocalVariable(name: "bitsOver", scope: !18, file: !5, line: 108, type: !25)
!44 = !DILocation(line: 108, column: 11, scope: !18)
!45 = !DILocation(line: 110, column: 4, scope: !18)
!46 = distinct !{!46, !45}
!47 = !DILocation(line: 110, column: 126, scope: !48)
!48 = !DILexicalBlockFile(scope: !49, file: !5, discriminator: 1)
!49 = distinct !DILexicalBlock(scope: !18, file: !5, line: 110, column: 7)
!50 = !DILocation(line: 112, column: 23, scope: !18)
!51 = !DILocation(line: 112, column: 14, scope: !18)
!52 = !DILocation(line: 112, column: 12, scope: !18)
!53 = !DILocation(line: 115, column: 8, scope: !54)
!54 = distinct !DILexicalBlock(scope: !18, file: !5, line: 115, column: 8)
!55 = !DILocation(line: 115, column: 16, scope: !54)
!56 = !DILocation(line: 115, column: 8, scope: !18)
!57 = !DILocation(line: 116, column: 16, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !5, line: 115, column: 22)
!59 = !DILocation(line: 116, column: 30, scope: !58)
!60 = !DILocation(line: 116, column: 28, scope: !58)
!61 = !DILocation(line: 116, column: 22, scope: !58)
!62 = !DILocation(line: 116, column: 40, scope: !58)
!63 = !DILocation(line: 116, column: 15, scope: !58)
!64 = !DILocation(line: 116, column: 13, scope: !58)
!65 = !DILocation(line: 118, column: 35, scope: !58)
!66 = !DILocation(line: 118, column: 33, scope: !58)
!67 = !DILocation(line: 118, column: 56, scope: !58)
!68 = !DILocation(line: 118, column: 46, scope: !58)
!69 = !DILocation(line: 118, column: 44, scope: !58)
!70 = !DILocation(line: 118, column: 8, scope: !58)
!71 = !DILocation(line: 118, column: 18, scope: !58)
!72 = !DILocation(line: 119, column: 8, scope: !58)
!73 = !DILocation(line: 119, column: 20, scope: !58)
!74 = !DILocation(line: 121, column: 7, scope: !58)
!75 = !DILocation(line: 131, column: 15, scope: !18)
!76 = !DILocation(line: 131, column: 23, scope: !18)
!77 = !DILocation(line: 131, column: 13, scope: !18)
!78 = !DILocation(line: 132, column: 8, scope: !79)
!79 = distinct !DILexicalBlock(scope: !18, file: !5, line: 132, column: 8)
!80 = !DILocation(line: 132, column: 17, scope: !79)
!81 = !DILocation(line: 132, column: 8, scope: !18)
!82 = !DILocation(line: 133, column: 16, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !5, line: 132, column: 23)
!84 = !DILocation(line: 134, column: 4, scope: !83)
!85 = !DILocation(line: 136, column: 18, scope: !18)
!86 = !DILocation(line: 136, column: 16, scope: !18)
!87 = !DILocation(line: 136, column: 12, scope: !18)
!88 = !DILocation(line: 138, column: 15, scope: !18)
!89 = !DILocation(line: 138, column: 25, scope: !18)
!90 = !DILocation(line: 138, column: 35, scope: !18)
!91 = !DILocation(line: 138, column: 33, scope: !18)
!92 = !DILocation(line: 138, column: 21, scope: !18)
!93 = !DILocation(line: 138, column: 54, scope: !18)
!94 = !DILocation(line: 138, column: 51, scope: !18)
!95 = !DILocation(line: 138, column: 63, scope: !18)
!96 = !DILocation(line: 138, column: 47, scope: !18)
!97 = !DILocation(line: 138, column: 45, scope: !18)
!98 = !DILocation(line: 138, column: 14, scope: !18)
!99 = !DILocation(line: 138, column: 12, scope: !18)
!100 = !DILocation(line: 140, column: 12, scope: !18)
!101 = !DILocation(line: 140, column: 23, scope: !18)
!102 = !DILocation(line: 140, column: 20, scope: !18)
!103 = !DILocation(line: 140, column: 10, scope: !18)
!104 = !DILocation(line: 142, column: 32, scope: !18)
!105 = !DILocation(line: 142, column: 30, scope: !18)
!106 = !DILocation(line: 142, column: 53, scope: !18)
!107 = !DILocation(line: 142, column: 43, scope: !18)
!108 = !DILocation(line: 142, column: 41, scope: !18)
!109 = !DILocation(line: 142, column: 5, scope: !18)
!110 = !DILocation(line: 142, column: 15, scope: !18)
!111 = !DILocation(line: 144, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !18, file: !5, line: 144, column: 8)
!113 = !DILocation(line: 144, column: 14, scope: !112)
!114 = !DILocation(line: 144, column: 8, scope: !18)
!115 = !DILocalVariable(name: "extraBits", scope: !116, file: !5, line: 145, type: !25)
!116 = distinct !DILexicalBlock(scope: !112, file: !5, line: 144, column: 30)
!117 = !DILocation(line: 145, column: 14, scope: !116)
!118 = !DILocation(line: 145, column: 26, scope: !116)
!119 = !DILocation(line: 145, column: 43, scope: !116)
!120 = !DILocation(line: 145, column: 40, scope: !116)
!121 = !DILocation(line: 145, column: 53, scope: !116)
!122 = !DILocation(line: 145, column: 34, scope: !116)
!123 = !DILocalVariable(name: "delta", scope: !116, file: !5, line: 146, type: !8)
!124 = !DILocation(line: 146, column: 14, scope: !116)
!125 = !DILocation(line: 146, column: 32, scope: !116)
!126 = !DILocation(line: 146, column: 38, scope: !116)
!127 = !DILocation(line: 146, column: 22, scope: !116)
!128 = !DILocation(line: 146, column: 55, scope: !116)
!129 = !DILocation(line: 146, column: 45, scope: !116)
!130 = !DILocation(line: 146, column: 43, scope: !116)
!131 = !DILocation(line: 148, column: 22, scope: !116)
!132 = !DILocation(line: 148, column: 34, scope: !116)
!133 = !DILocation(line: 148, column: 32, scope: !116)
!134 = !DILocation(line: 148, column: 49, scope: !116)
!135 = !DILocation(line: 148, column: 46, scope: !116)
!136 = !DILocation(line: 148, column: 41, scope: !116)
!137 = !DILocation(line: 148, column: 8, scope: !116)
!138 = !DILocation(line: 148, column: 18, scope: !116)
!139 = !DILocation(line: 149, column: 4, scope: !116)
!140 = !DILocation(line: 151, column: 5, scope: !18)
!141 = !DILocation(line: 151, column: 17, scope: !18)
!142 = !DILocation(line: 152, column: 1, scope: !18)
!143 = !DILocation(line: 152, column: 1, scope: !144)
!144 = !DILexicalBlockFile(scope: !18, file: !5, discriminator: 1)
!145 = distinct !DISubprogram(name: "mssb64_0", scope: !146, file: !146, line: 348, type: !147, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!146 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_asm.h", directory: "/home/lichi/Desktop/open-vm-tools/line639")
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !150}
!149 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!151 = !DILocalVariable(name: "value", arg: 1, scope: !145, file: !146, line: 348, type: !150)
!152 = !DILocation(line: 348, column: 23, scope: !145)
!153 = !DILocation(line: 350, column: 26, scope: !154)
!154 = distinct !DILexicalBlock(scope: !145, file: !146, line: 350, column: 8)
!155 = !DILocation(line: 350, column: 32, scope: !154)
!156 = !DILocation(line: 350, column: 25, scope: !154)
!157 = !DILocation(line: 350, column: 8, scope: !154)
!158 = !DILocation(line: 350, column: 8, scope: !145)
!159 = !DILocation(line: 351, column: 7, scope: !160)
!160 = distinct !DILexicalBlock(scope: !154, file: !146, line: 350, column: 43)
!161 = !DILocalVariable(name: "pos", scope: !162, file: !146, line: 353, type: !163)
!162 = distinct !DILexicalBlock(scope: !154, file: !146, line: 352, column: 11)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !11, line: 119, baseType: !164)
!164 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!165 = !DILocation(line: 353, column: 16, scope: !162)
!166 = !DILocation(line: 357, column: 52, scope: !162)
!167 = !DILocation(line: 357, column: 7, scope: !162)
!168 = !{i32 48233}
!169 = !DILocation(line: 370, column: 14, scope: !162)
!170 = !DILocation(line: 370, column: 7, scope: !162)
!171 = !DILocation(line: 372, column: 1, scope: !145)
!172 = distinct !DISubprogram(name: "LogFixed_Base10", scope: !5, file: !5, line: 188, type: !19, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!173 = !DILocalVariable(name: "value", arg: 1, scope: !172, file: !5, line: 188, type: !21)
!174 = !DILocation(line: 188, column: 24, scope: !172)
!175 = !DILocalVariable(name: "numerator", arg: 2, scope: !172, file: !5, line: 189, type: !24)
!176 = !DILocation(line: 189, column: 25, scope: !172)
!177 = !DILocalVariable(name: "denominator", arg: 3, scope: !172, file: !5, line: 190, type: !24)
!178 = !DILocation(line: 190, column: 25, scope: !172)
!179 = !DILocalVariable(name: "log2Numerator", scope: !172, file: !5, line: 192, type: !25)
!180 = !DILocation(line: 192, column: 11, scope: !172)
!181 = !DILocalVariable(name: "log2Denominator", scope: !172, file: !5, line: 193, type: !25)
!182 = !DILocation(line: 193, column: 11, scope: !172)
!183 = !DILocation(line: 195, column: 19, scope: !172)
!184 = !DILocation(line: 195, column: 4, scope: !172)
!185 = !DILocation(line: 197, column: 17, scope: !172)
!186 = !DILocation(line: 197, column: 5, scope: !172)
!187 = !DILocation(line: 197, column: 15, scope: !172)
!188 = !DILocation(line: 198, column: 5, scope: !172)
!189 = !DILocation(line: 198, column: 17, scope: !172)
!190 = !DILocation(line: 199, column: 1, scope: !172)
