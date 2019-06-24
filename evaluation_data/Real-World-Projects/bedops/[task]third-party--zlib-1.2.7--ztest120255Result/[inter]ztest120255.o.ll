; ModuleID = './[inter]ztest120255.o.i'
source_filename = "./[inter]ztest120255.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 !dbg !6 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !12), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !12), !dbg !16
  call void @llvm.dbg.declare(metadata i64* %4, metadata !17, metadata !12), !dbg !19
  call void @llvm.dbg.declare(metadata i16* %5, metadata !20, metadata !12), !dbg !22
  store i32 1, i32* %3, align 4, !dbg !23
  store i32 0, i32* %2, align 4, !dbg !25
  br label %6, !dbg !26

; <label>:6:                                      ; preds = %10, %0
  %7 = load i32, i32* %3, align 4, !dbg !27
  %8 = icmp ne i32 %7, 0, !dbg !30
  br i1 %8, label %9, label %15, !dbg !30

; <label>:9:                                      ; preds = %6
  br label %10, !dbg !31

; <label>:10:                                     ; preds = %9
  %11 = load i32, i32* %3, align 4, !dbg !33
  %12 = shl i32 %11, 1, !dbg !33
  store i32 %12, i32* %3, align 4, !dbg !33
  %13 = load i32, i32* %2, align 4, !dbg !35
  %14 = add nsw i32 %13, 1, !dbg !35
  store i32 %14, i32* %2, align 4, !dbg !35
  br label %6, !dbg !36, !llvm.loop !37

; <label>:15:                                     ; preds = %6
  %16 = load i32, i32* %2, align 4, !dbg !39
  %17 = icmp eq i32 %16, 32, !dbg !42
  br i1 %17, label %18, label %20, !dbg !39

; <label>:18:                                     ; preds = %15
  %19 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)), !dbg !43
  store i32 0, i32* %1, align 4, !dbg !46
  br label %53, !dbg !46

; <label>:20:                                     ; preds = %15
  store i64 1, i64* %4, align 8, !dbg !47
  store i32 0, i32* %2, align 4, !dbg !49
  br label %21, !dbg !50

; <label>:21:                                     ; preds = %25, %20
  %22 = load i64, i64* %4, align 8, !dbg !51
  %23 = icmp ne i64 %22, 0, !dbg !54
  br i1 %23, label %24, label %30, !dbg !54

; <label>:24:                                     ; preds = %21
  br label %25, !dbg !55

; <label>:25:                                     ; preds = %24
  %26 = load i64, i64* %4, align 8, !dbg !57
  %27 = shl i64 %26, 1, !dbg !57
  store i64 %27, i64* %4, align 8, !dbg !57
  %28 = load i32, i32* %2, align 4, !dbg !59
  %29 = add nsw i32 %28, 1, !dbg !59
  store i32 %29, i32* %2, align 4, !dbg !59
  br label %21, !dbg !60, !llvm.loop !61

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* %2, align 4, !dbg !63
  %32 = icmp eq i32 %31, 32, !dbg !66
  br i1 %32, label %33, label %35, !dbg !63

; <label>:33:                                     ; preds = %30
  %34 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)), !dbg !67
  store i32 0, i32* %1, align 4, !dbg !70
  br label %53, !dbg !70

; <label>:35:                                     ; preds = %30
  store i16 1, i16* %5, align 2, !dbg !71
  store i32 0, i32* %2, align 4, !dbg !73
  br label %36, !dbg !74

; <label>:36:                                     ; preds = %40, %35
  %37 = load i16, i16* %5, align 2, !dbg !75
  %38 = icmp ne i16 %37, 0, !dbg !78
  br i1 %38, label %39, label %47, !dbg !78

; <label>:39:                                     ; preds = %36
  br label %40, !dbg !79

; <label>:40:                                     ; preds = %39
  %41 = load i16, i16* %5, align 2, !dbg !81
  %42 = zext i16 %41 to i32, !dbg !81
  %43 = shl i32 %42, 1, !dbg !81
  %44 = trunc i32 %43 to i16, !dbg !81
  store i16 %44, i16* %5, align 2, !dbg !81
  %45 = load i32, i32* %2, align 4, !dbg !83
  %46 = add nsw i32 %45, 1, !dbg !83
  store i32 %46, i32* %2, align 4, !dbg !83
  br label %36, !dbg !84, !llvm.loop !85

; <label>:47:                                     ; preds = %36
  %48 = load i32, i32* %2, align 4, !dbg !87
  %49 = icmp eq i32 %48, 32, !dbg !90
  br i1 %49, label %50, label %52, !dbg !87

; <label>:50:                                     ; preds = %47
  %51 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !91
  store i32 0, i32* %1, align 4, !dbg !94
  br label %53, !dbg !94

; <label>:52:                                     ; preds = %47
  store i32 1, i32* %1, align 4, !dbg !95
  br label %53, !dbg !95

; <label>:53:                                     ; preds = %52, %50, %33, %18
  %54 = load i32, i32* %1, align 4, !dbg !96
  ret i32 %54, !dbg !96
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @puts(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]ztest120255.o.i", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--ztest120255")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "ztest120255.c", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--ztest120255")
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "k", scope: !6, file: !7, line: 4, type: !10)
!12 = !DIExpression()
!13 = !DILocation(line: 4, column: 9, scope: !6)
!14 = !DILocalVariable(name: "i", scope: !6, file: !7, line: 5, type: !15)
!15 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!16 = !DILocation(line: 5, column: 14, scope: !6)
!17 = !DILocalVariable(name: "l", scope: !6, file: !7, line: 6, type: !18)
!18 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!19 = !DILocation(line: 6, column: 19, scope: !6)
!20 = !DILocalVariable(name: "s", scope: !6, file: !7, line: 7, type: !21)
!21 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!22 = !DILocation(line: 7, column: 20, scope: !6)
!23 = !DILocation(line: 8, column: 10, scope: !24)
!24 = distinct !DILexicalBlock(scope: !6, file: !7, line: 8, column: 5)
!25 = !DILocation(line: 8, column: 14, scope: !24)
!26 = !DILocation(line: 8, column: 9, scope: !24)
!27 = !DILocation(line: 8, column: 17, scope: !28)
!28 = !DILexicalBlockFile(scope: !29, file: !7, discriminator: 1)
!29 = distinct !DILexicalBlock(scope: !24, file: !7, line: 8, column: 5)
!30 = !DILocation(line: 8, column: 5, scope: !28)
!31 = !DILocation(line: 8, column: 5, scope: !32)
!32 = !DILexicalBlockFile(scope: !24, file: !7, discriminator: 2)
!33 = !DILocation(line: 8, column: 20, scope: !34)
!34 = !DILexicalBlockFile(scope: !29, file: !7, discriminator: 3)
!35 = !DILocation(line: 8, column: 26, scope: !34)
!36 = !DILocation(line: 8, column: 5, scope: !34)
!37 = distinct !{!37, !38}
!38 = !DILocation(line: 8, column: 5, scope: !6)
!39 = !DILocation(line: 8, column: 33, scope: !40)
!40 = !DILexicalBlockFile(scope: !41, file: !7, discriminator: 4)
!41 = distinct !DILexicalBlock(scope: !6, file: !7, line: 8, column: 33)
!42 = !DILocation(line: 8, column: 34, scope: !40)
!43 = !DILocation(line: 8, column: 40, scope: !44)
!44 = !DILexicalBlockFile(scope: !45, file: !7, discriminator: 5)
!45 = distinct !DILexicalBlock(scope: !41, file: !7, line: 8, column: 39)
!46 = !DILocation(line: 8, column: 57, scope: !44)
!47 = !DILocation(line: 9, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !6, file: !7, line: 9, column: 5)
!49 = !DILocation(line: 9, column: 14, scope: !48)
!50 = !DILocation(line: 9, column: 9, scope: !48)
!51 = !DILocation(line: 9, column: 17, scope: !52)
!52 = !DILexicalBlockFile(scope: !53, file: !7, discriminator: 1)
!53 = distinct !DILexicalBlock(scope: !48, file: !7, line: 9, column: 5)
!54 = !DILocation(line: 9, column: 5, scope: !52)
!55 = !DILocation(line: 9, column: 5, scope: !56)
!56 = !DILexicalBlockFile(scope: !48, file: !7, discriminator: 2)
!57 = !DILocation(line: 9, column: 20, scope: !58)
!58 = !DILexicalBlockFile(scope: !53, file: !7, discriminator: 3)
!59 = !DILocation(line: 9, column: 26, scope: !58)
!60 = !DILocation(line: 9, column: 5, scope: !58)
!61 = distinct !{!61, !62}
!62 = !DILocation(line: 9, column: 5, scope: !6)
!63 = !DILocation(line: 9, column: 33, scope: !64)
!64 = !DILexicalBlockFile(scope: !65, file: !7, discriminator: 4)
!65 = distinct !DILexicalBlock(scope: !6, file: !7, line: 9, column: 33)
!66 = !DILocation(line: 9, column: 34, scope: !64)
!67 = !DILocation(line: 9, column: 40, scope: !68)
!68 = !DILexicalBlockFile(scope: !69, file: !7, discriminator: 5)
!69 = distinct !DILexicalBlock(scope: !65, file: !7, line: 9, column: 39)
!70 = !DILocation(line: 9, column: 62, scope: !68)
!71 = !DILocation(line: 10, column: 10, scope: !72)
!72 = distinct !DILexicalBlock(scope: !6, file: !7, line: 10, column: 5)
!73 = !DILocation(line: 10, column: 14, scope: !72)
!74 = !DILocation(line: 10, column: 9, scope: !72)
!75 = !DILocation(line: 10, column: 17, scope: !76)
!76 = !DILexicalBlockFile(scope: !77, file: !7, discriminator: 1)
!77 = distinct !DILexicalBlock(scope: !72, file: !7, line: 10, column: 5)
!78 = !DILocation(line: 10, column: 5, scope: !76)
!79 = !DILocation(line: 10, column: 5, scope: !80)
!80 = !DILexicalBlockFile(scope: !72, file: !7, discriminator: 2)
!81 = !DILocation(line: 10, column: 20, scope: !82)
!82 = !DILexicalBlockFile(scope: !77, file: !7, discriminator: 3)
!83 = !DILocation(line: 10, column: 26, scope: !82)
!84 = !DILocation(line: 10, column: 5, scope: !82)
!85 = distinct !{!85, !86}
!86 = !DILocation(line: 10, column: 5, scope: !6)
!87 = !DILocation(line: 10, column: 33, scope: !88)
!88 = !DILexicalBlockFile(scope: !89, file: !7, discriminator: 4)
!89 = distinct !DILexicalBlock(scope: !6, file: !7, line: 10, column: 33)
!90 = !DILocation(line: 10, column: 34, scope: !88)
!91 = !DILocation(line: 10, column: 40, scope: !92)
!92 = !DILexicalBlockFile(scope: !93, file: !7, discriminator: 5)
!93 = distinct !DILexicalBlock(scope: !89, file: !7, line: 10, column: 39)
!94 = !DILocation(line: 10, column: 63, scope: !92)
!95 = !DILocation(line: 11, column: 5, scope: !6)
!96 = !DILocation(line: 12, column: 1, scope: !6)
