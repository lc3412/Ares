; ModuleID = './[inter]lib--dpkg--strhash.o.i'
source_filename = "./[inter]lib--dpkg--strhash.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @str_fnv_hash(i8*) #0 !dbg !6 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !14, metadata !15), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !15), !dbg !18
  store i32 -2128831035, i32* %3, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !15), !dbg !20
  store i32 16777619, i32* %4, align 4, !dbg !20
  br label %5, !dbg !21

; <label>:5:                                      ; preds = %9, %1
  %6 = load i8*, i8** %2, align 8, !dbg !22
  %7 = load i8, i8* %6, align 1, !dbg !24
  %8 = icmp ne i8 %7, 0, !dbg !25
  br i1 %8, label %9, label %19, !dbg !25

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %2, align 8, !dbg !26
  %11 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !26
  store i8* %11, i8** %2, align 8, !dbg !26
  %12 = load i8, i8* %10, align 1, !dbg !28
  %13 = sext i8 %12 to i32, !dbg !28
  %14 = load i32, i32* %3, align 4, !dbg !29
  %15 = xor i32 %14, %13, !dbg !29
  store i32 %15, i32* %3, align 4, !dbg !29
  %16 = load i32, i32* %4, align 4, !dbg !30
  %17 = load i32, i32* %3, align 4, !dbg !31
  %18 = mul i32 %17, %16, !dbg !31
  store i32 %18, i32* %3, align 4, !dbg !31
  br label %5, !dbg !32, !llvm.loop !34

; <label>:19:                                     ; preds = %5
  %20 = load i32, i32* %3, align 4, !dbg !35
  ret i32 %20, !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--strhash.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "str_fnv_hash", scope: !7, file: !7, line: 39, type: !8, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "strhash.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "str", arg: 1, scope: !6, file: !7, line: 39, type: !11)
!15 = !DIExpression()
!16 = !DILocation(line: 39, column: 26, scope: !6)
!17 = !DILocalVariable(name: "h", scope: !6, file: !7, line: 41, type: !10)
!18 = !DILocation(line: 41, column: 24, scope: !6)
!19 = !DILocalVariable(name: "p", scope: !6, file: !7, line: 42, type: !10)
!20 = !DILocation(line: 42, column: 24, scope: !6)
!21 = !DILocation(line: 44, column: 2, scope: !6)
!22 = !DILocation(line: 44, column: 10, scope: !23)
!23 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 1)
!24 = !DILocation(line: 44, column: 9, scope: !23)
!25 = !DILocation(line: 44, column: 2, scope: !23)
!26 = !DILocation(line: 45, column: 12, scope: !27)
!27 = distinct !DILexicalBlock(scope: !6, file: !7, line: 44, column: 15)
!28 = !DILocation(line: 45, column: 8, scope: !27)
!29 = !DILocation(line: 45, column: 5, scope: !27)
!30 = !DILocation(line: 46, column: 8, scope: !27)
!31 = !DILocation(line: 46, column: 5, scope: !27)
!32 = !DILocation(line: 44, column: 2, scope: !33)
!33 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 2)
!34 = distinct !{!34, !21}
!35 = !DILocation(line: 49, column: 9, scope: !6)
!36 = !DILocation(line: 49, column: 2, scope: !6)
