; ModuleID = './[inter]lib--dpkg--c-ctype.o.i'
source_filename = "./[inter]lib--dpkg--c-ctype.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c_ctype = internal global [256 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 7, i16 6, i16 4, i16 4, i16 4, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 7, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 32, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], align 16

; Function Attrs: nounwind uwtable
define zeroext i1 @c_isbits(i32, i32) #0 !dbg !26 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !32, metadata !33), !dbg !34
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !35, metadata !33), !dbg !36
  %5 = load i32, i32* %3, align 4, !dbg !37
  %6 = trunc i32 %5 to i8, !dbg !38
  %7 = zext i8 %6 to i64, !dbg !39
  %8 = getelementptr inbounds [256 x i16], [256 x i16]* @c_ctype, i64 0, i64 %7, !dbg !39
  %9 = load i16, i16* %8, align 2, !dbg !39
  %10 = zext i16 %9 to i32, !dbg !39
  %11 = load i32, i32* %4, align 4, !dbg !40
  %12 = and i32 %10, %11, !dbg !41
  %13 = icmp ne i32 %12, 0, !dbg !42
  ret i1 %13, !dbg !43
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !14, globals: !16)
!1 = !DIFile(filename: "[inter]lib--dpkg--c-ctype.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !4, line: 32, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!7 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!8 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!9 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!10 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!11 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!12 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!13 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!14 = !{!15}
!15 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!16 = !{!17}
!17 = distinct !DIGlobalVariable(name: "c_ctype", scope: !0, file: !18, line: 39, type: !19, isLocal: true, isDefinition: true, variable: [256 x i16]* @c_ctype)
!18 = !DIFile(filename: "c-ctype.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 4096, align: 16, elements: !21)
!20 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!21 = !{!22}
!22 = !DISubrange(count: 256)
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!26 = distinct !DISubprogram(name: "c_isbits", scope: !18, file: !18, line: 183, type: !27, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !31)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !30, !3}
!29 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!30 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!31 = !{}
!32 = !DILocalVariable(name: "c", arg: 1, scope: !26, file: !18, line: 183, type: !30)
!33 = !DIExpression()
!34 = !DILocation(line: 183, column: 14, scope: !26)
!35 = !DILocalVariable(name: "bits", arg: 2, scope: !26, file: !18, line: 183, type: !3)
!36 = !DILocation(line: 183, column: 34, scope: !26)
!37 = !DILocation(line: 185, column: 34, scope: !26)
!38 = !DILocation(line: 185, column: 19, scope: !26)
!39 = !DILocation(line: 185, column: 11, scope: !26)
!40 = !DILocation(line: 185, column: 39, scope: !26)
!41 = !DILocation(line: 185, column: 37, scope: !26)
!42 = !DILocation(line: 185, column: 45, scope: !26)
!43 = !DILocation(line: 185, column: 2, scope: !26)
