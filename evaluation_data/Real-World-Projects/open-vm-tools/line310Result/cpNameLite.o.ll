; ModuleID = './cpNameLite.o.i'
source_filename = "./cpNameLite.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @CPNameLite_ConvertTo(i8*, i64, i8 signext) #0 !dbg !6 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !15, metadata !16), !dbg !17
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !18, metadata !16), !dbg !19
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !20, metadata !16), !dbg !21
  call void @llvm.dbg.declare(metadata i64* %7, metadata !22, metadata !16), !dbg !23
  store i64 0, i64* %7, align 8, !dbg !24
  br label %8, !dbg !26

; <label>:8:                                      ; preds = %26, %3
  %9 = load i64, i64* %7, align 8, !dbg !27
  %10 = load i64, i64* %5, align 8, !dbg !30
  %11 = icmp ult i64 %9, %10, !dbg !31
  br i1 %11, label %12, label %29, !dbg !32

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* %7, align 8, !dbg !33
  %14 = load i8*, i8** %4, align 8, !dbg !36
  %15 = getelementptr inbounds i8, i8* %14, i64 %13, !dbg !36
  %16 = load i8, i8* %15, align 1, !dbg !36
  %17 = sext i8 %16 to i32, !dbg !36
  %18 = load i8, i8* %6, align 1, !dbg !37
  %19 = sext i8 %18 to i32, !dbg !37
  %20 = icmp eq i32 %17, %19, !dbg !38
  br i1 %20, label %21, label %25, !dbg !39

; <label>:21:                                     ; preds = %12
  %22 = load i64, i64* %7, align 8, !dbg !40
  %23 = load i8*, i8** %4, align 8, !dbg !42
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !42
  store i8 0, i8* %24, align 1, !dbg !43
  br label %25, !dbg !44

; <label>:25:                                     ; preds = %21, %12
  br label %26, !dbg !45

; <label>:26:                                     ; preds = %25
  %27 = load i64, i64* %7, align 8, !dbg !46
  %28 = add i64 %27, 1, !dbg !46
  store i64 %28, i64* %7, align 8, !dbg !46
  br label %8, !dbg !48, !llvm.loop !49

; <label>:29:                                     ; preds = %8
  ret void, !dbg !51
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @CPNameLite_ConvertFrom(i8*, i64, i8 signext) #0 !dbg !52 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !53, metadata !16), !dbg !54
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !55, metadata !16), !dbg !56
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !57, metadata !16), !dbg !58
  call void @llvm.dbg.declare(metadata i64* %7, metadata !59, metadata !16), !dbg !60
  store i64 0, i64* %7, align 8, !dbg !61
  br label %8, !dbg !63

; <label>:8:                                      ; preds = %25, %3
  %9 = load i64, i64* %7, align 8, !dbg !64
  %10 = load i64, i64* %5, align 8, !dbg !67
  %11 = icmp ult i64 %9, %10, !dbg !68
  br i1 %11, label %12, label %28, !dbg !69

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* %7, align 8, !dbg !70
  %14 = load i8*, i8** %4, align 8, !dbg !73
  %15 = getelementptr inbounds i8, i8* %14, i64 %13, !dbg !73
  %16 = load i8, i8* %15, align 1, !dbg !73
  %17 = sext i8 %16 to i32, !dbg !73
  %18 = icmp eq i32 %17, 0, !dbg !74
  br i1 %18, label %19, label %24, !dbg !75

; <label>:19:                                     ; preds = %12
  %20 = load i8, i8* %6, align 1, !dbg !76
  %21 = load i64, i64* %7, align 8, !dbg !78
  %22 = load i8*, i8** %4, align 8, !dbg !79
  %23 = getelementptr inbounds i8, i8* %22, i64 %21, !dbg !79
  store i8 %20, i8* %23, align 1, !dbg !80
  br label %24, !dbg !81

; <label>:24:                                     ; preds = %19, %12
  br label %25, !dbg !82

; <label>:25:                                     ; preds = %24
  %26 = load i64, i64* %7, align 8, !dbg !83
  %27 = add i64 %26, 1, !dbg !83
  store i64 %27, i64* %7, align 8, !dbg !83
  br label %8, !dbg !85, !llvm.loop !86

; <label>:28:                                     ; preds = %8
  ret void, !dbg !88
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "cpNameLite.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line310")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "CPNameLite_ConvertTo", scope: !7, file: !7, line: 63, type: !8, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "cpNameLite.c", directory: "/home/lichi/Desktop/open-vm-tools/line310")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !11}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 216, baseType: !14)
!13 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line310")
!14 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!15 = !DILocalVariable(name: "bufIn", arg: 1, scope: !6, file: !7, line: 63, type: !10)
!16 = !DIExpression()
!17 = !DILocation(line: 63, column: 28, scope: !6)
!18 = !DILocalVariable(name: "inSize", arg: 2, scope: !6, file: !7, line: 64, type: !12)
!19 = !DILocation(line: 64, column: 29, scope: !6)
!20 = !DILocalVariable(name: "pathSep", arg: 3, scope: !6, file: !7, line: 65, type: !11)
!21 = !DILocation(line: 65, column: 27, scope: !6)
!22 = !DILocalVariable(name: "pos", scope: !6, file: !7, line: 67, type: !12)
!23 = !DILocation(line: 67, column: 11, scope: !6)
!24 = !DILocation(line: 70, column: 13, scope: !25)
!25 = distinct !DILexicalBlock(scope: !6, file: !7, line: 70, column: 4)
!26 = !DILocation(line: 70, column: 9, scope: !25)
!27 = !DILocation(line: 70, column: 18, scope: !28)
!28 = !DILexicalBlockFile(scope: !29, file: !7, discriminator: 1)
!29 = distinct !DILexicalBlock(scope: !25, file: !7, line: 70, column: 4)
!30 = !DILocation(line: 70, column: 24, scope: !28)
!31 = !DILocation(line: 70, column: 22, scope: !28)
!32 = !DILocation(line: 70, column: 4, scope: !28)
!33 = !DILocation(line: 71, column: 17, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !7, line: 71, column: 11)
!35 = distinct !DILexicalBlock(scope: !29, file: !7, line: 70, column: 39)
!36 = !DILocation(line: 71, column: 11, scope: !34)
!37 = !DILocation(line: 71, column: 25, scope: !34)
!38 = !DILocation(line: 71, column: 22, scope: !34)
!39 = !DILocation(line: 71, column: 11, scope: !35)
!40 = !DILocation(line: 72, column: 16, scope: !41)
!41 = distinct !DILexicalBlock(scope: !34, file: !7, line: 71, column: 34)
!42 = !DILocation(line: 72, column: 10, scope: !41)
!43 = !DILocation(line: 72, column: 21, scope: !41)
!44 = !DILocation(line: 73, column: 7, scope: !41)
!45 = !DILocation(line: 74, column: 4, scope: !35)
!46 = !DILocation(line: 70, column: 35, scope: !47)
!47 = !DILexicalBlockFile(scope: !29, file: !7, discriminator: 2)
!48 = !DILocation(line: 70, column: 4, scope: !47)
!49 = distinct !{!49, !50}
!50 = !DILocation(line: 70, column: 4, scope: !6)
!51 = !DILocation(line: 75, column: 1, scope: !6)
!52 = distinct !DISubprogram(name: "CPNameLite_ConvertFrom", scope: !7, file: !7, line: 98, type: !8, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!53 = !DILocalVariable(name: "bufIn", arg: 1, scope: !52, file: !7, line: 98, type: !10)
!54 = !DILocation(line: 98, column: 30, scope: !52)
!55 = !DILocalVariable(name: "inSize", arg: 2, scope: !52, file: !7, line: 99, type: !12)
!56 = !DILocation(line: 99, column: 31, scope: !52)
!57 = !DILocalVariable(name: "pathSep", arg: 3, scope: !52, file: !7, line: 100, type: !11)
!58 = !DILocation(line: 100, column: 29, scope: !52)
!59 = !DILocalVariable(name: "pos", scope: !52, file: !7, line: 103, type: !12)
!60 = !DILocation(line: 103, column: 11, scope: !52)
!61 = !DILocation(line: 106, column: 13, scope: !62)
!62 = distinct !DILexicalBlock(scope: !52, file: !7, line: 106, column: 4)
!63 = !DILocation(line: 106, column: 9, scope: !62)
!64 = !DILocation(line: 106, column: 18, scope: !65)
!65 = !DILexicalBlockFile(scope: !66, file: !7, discriminator: 1)
!66 = distinct !DILexicalBlock(scope: !62, file: !7, line: 106, column: 4)
!67 = !DILocation(line: 106, column: 24, scope: !65)
!68 = !DILocation(line: 106, column: 22, scope: !65)
!69 = !DILocation(line: 106, column: 4, scope: !65)
!70 = !DILocation(line: 107, column: 17, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !7, line: 107, column: 11)
!72 = distinct !DILexicalBlock(scope: !66, file: !7, line: 106, column: 39)
!73 = !DILocation(line: 107, column: 11, scope: !71)
!74 = !DILocation(line: 107, column: 22, scope: !71)
!75 = !DILocation(line: 107, column: 11, scope: !72)
!76 = !DILocation(line: 108, column: 23, scope: !77)
!77 = distinct !DILexicalBlock(scope: !71, file: !7, line: 107, column: 31)
!78 = !DILocation(line: 108, column: 16, scope: !77)
!79 = !DILocation(line: 108, column: 10, scope: !77)
!80 = !DILocation(line: 108, column: 21, scope: !77)
!81 = !DILocation(line: 109, column: 7, scope: !77)
!82 = !DILocation(line: 110, column: 4, scope: !72)
!83 = !DILocation(line: 106, column: 35, scope: !84)
!84 = !DILexicalBlockFile(scope: !66, file: !7, discriminator: 2)
!85 = !DILocation(line: 106, column: 4, scope: !84)
!86 = distinct !{!86, !87}
!87 = !DILocation(line: 106, column: 4, scope: !52)
!88 = !DILocation(line: 111, column: 1, scope: !52)
