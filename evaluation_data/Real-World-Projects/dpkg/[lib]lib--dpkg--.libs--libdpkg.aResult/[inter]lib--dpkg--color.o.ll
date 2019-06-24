; ModuleID = './[inter]lib--dpkg--color.o.i'
source_filename = "./[inter]lib--dpkg--color.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@color_mode = internal global i32 -1, align 4
@use_color = internal global i8 0, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"DPKG_COLORS\00", align 1

; Function Attrs: nounwind uwtable
define zeroext i1 @color_set_mode(i8*) #0 !dbg !20 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !27, metadata !28), !dbg !29
  %3 = load i8*, i8** %2, align 8, !dbg !30
  %4 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #4, !dbg !32
  %5 = icmp eq i32 %4, 0, !dbg !33
  br i1 %5, label %6, label %10, !dbg !34

; <label>:6:                                      ; preds = %1
  store i32 2, i32* @color_mode, align 4, !dbg !35
  %7 = call i32 @isatty(i32 1) #5, !dbg !37
  %8 = icmp ne i32 %7, 0, !dbg !37
  %9 = zext i1 %8 to i8, !dbg !38
  store i8 %9, i8* @use_color, align 1, !dbg !38
  br label %17, !dbg !39

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !40
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !43
  %13 = icmp eq i32 %12, 0, !dbg !44
  br i1 %13, label %14, label %15, !dbg !43

; <label>:14:                                     ; preds = %10
  store i32 1, i32* @color_mode, align 4, !dbg !45
  store i8 1, i8* @use_color, align 1, !dbg !47
  br label %16, !dbg !48

; <label>:15:                                     ; preds = %10
  store i32 0, i32* @color_mode, align 4, !dbg !49
  store i8 0, i8* @use_color, align 1, !dbg !51
  br label %16

; <label>:16:                                     ; preds = %15, %14
  br label %17

; <label>:17:                                     ; preds = %16, %6
  %18 = load i8, i8* @use_color, align 1, !dbg !52
  %19 = trunc i8 %18 to i1, !dbg !52
  ret i1 %19, !dbg !53
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @isatty(i32) #3

; Function Attrs: nounwind uwtable
define i8* @color_get(i8*) #0 !dbg !54 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !57, metadata !28), !dbg !58
  %4 = call zeroext i1 @color_enabled(), !dbg !59
  br i1 %4, label %6, label %5, !dbg !61

; <label>:5:                                      ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %2, align 8, !dbg !62
  br label %8, !dbg !62

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !63
  store i8* %7, i8** %2, align 8, !dbg !64
  br label %8, !dbg !64

; <label>:8:                                      ; preds = %6, %5
  %9 = load i8*, i8** %2, align 8, !dbg !65
  ret i8* %9, !dbg !65
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color_enabled() #0 !dbg !66 {
  %1 = alloca i1, align 1
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !69, metadata !28), !dbg !70
  %3 = load i32, i32* @color_mode, align 4, !dbg !71
  %4 = icmp ne i32 %3, -1, !dbg !73
  br i1 %4, label %5, label %8, !dbg !74

; <label>:5:                                      ; preds = %0
  %6 = load i8, i8* @use_color, align 1, !dbg !75
  %7 = trunc i8 %6 to i1, !dbg !75
  store i1 %7, i1* %1, align 1, !dbg !76
  br label %16, !dbg !76

; <label>:8:                                      ; preds = %0
  %9 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)) #5, !dbg !77
  store i8* %9, i8** %2, align 8, !dbg !78
  %10 = load i8*, i8** %2, align 8, !dbg !79
  %11 = icmp eq i8* %10, null, !dbg !81
  br i1 %11, label %12, label %13, !dbg !82

; <label>:12:                                     ; preds = %8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %2, align 8, !dbg !83
  br label %13, !dbg !84

; <label>:13:                                     ; preds = %12, %8
  %14 = load i8*, i8** %2, align 8, !dbg !85
  %15 = call zeroext i1 @color_set_mode(i8* %14), !dbg !86
  store i1 %15, i1* %1, align 1, !dbg !87
  br label %16, !dbg !87

; <label>:16:                                     ; preds = %13, %5
  %17 = load i1, i1* %1, align 1, !dbg !88
  ret i1 %17, !dbg !88
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10, globals: !12)
!1 = !DIFile(filename: "[inter]lib--dpkg--color.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "color_mode", file: !4, line: 64, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/color.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "COLOR_MODE_UNKNOWN", value: -1)
!7 = !DIEnumerator(name: "COLOR_MODE_NEVER", value: 0)
!8 = !DIEnumerator(name: "COLOR_MODE_ALWAYS", value: 1)
!9 = !DIEnumerator(name: "COLOR_MODE_AUTO", value: 2)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !{!13, !15}
!13 = distinct !DIGlobalVariable(name: "color_mode", scope: !0, file: !14, line: 32, type: !3, isLocal: true, isDefinition: true, variable: i32* @color_mode)
!14 = !DIFile(filename: "color.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!15 = distinct !DIGlobalVariable(name: "use_color", scope: !0, file: !14, line: 33, type: !16, isLocal: true, isDefinition: true, variable: i8* @use_color)
!16 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!20 = distinct !DISubprogram(name: "color_set_mode", scope: !14, file: !14, line: 36, type: !21, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !26)
!21 = !DISubroutineType(types: !22)
!22 = !{!16, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!26 = !{}
!27 = !DILocalVariable(name: "mode", arg: 1, scope: !20, file: !14, line: 36, type: !23)
!28 = !DIExpression()
!29 = !DILocation(line: 36, column: 28, scope: !20)
!30 = !DILocation(line: 38, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !20, file: !14, line: 38, column: 6)
!32 = !DILocation(line: 38, column: 6, scope: !31)
!33 = !DILocation(line: 38, column: 27, scope: !31)
!34 = !DILocation(line: 38, column: 6, scope: !20)
!35 = !DILocation(line: 39, column: 14, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !14, line: 38, column: 33)
!37 = !DILocation(line: 40, column: 15, scope: !36)
!38 = !DILocation(line: 40, column: 13, scope: !36)
!39 = !DILocation(line: 41, column: 2, scope: !36)
!40 = !DILocation(line: 41, column: 20, scope: !41)
!41 = !DILexicalBlockFile(scope: !42, file: !14, discriminator: 1)
!42 = distinct !DILexicalBlock(scope: !31, file: !14, line: 41, column: 13)
!43 = !DILocation(line: 41, column: 13, scope: !41)
!44 = !DILocation(line: 41, column: 36, scope: !41)
!45 = !DILocation(line: 42, column: 14, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !14, line: 41, column: 42)
!47 = !DILocation(line: 43, column: 13, scope: !46)
!48 = !DILocation(line: 44, column: 2, scope: !46)
!49 = !DILocation(line: 45, column: 14, scope: !50)
!50 = distinct !DILexicalBlock(scope: !42, file: !14, line: 44, column: 9)
!51 = !DILocation(line: 46, column: 13, scope: !50)
!52 = !DILocation(line: 49, column: 9, scope: !20)
!53 = !DILocation(line: 49, column: 2, scope: !20)
!54 = distinct !DISubprogram(name: "color_get", scope: !14, file: !14, line: 68, type: !55, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !26)
!55 = !DISubroutineType(types: !56)
!56 = !{!23, !23}
!57 = !DILocalVariable(name: "color", arg: 1, scope: !54, file: !14, line: 68, type: !23)
!58 = !DILocation(line: 68, column: 23, scope: !54)
!59 = !DILocation(line: 70, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !54, file: !14, line: 70, column: 6)
!61 = !DILocation(line: 70, column: 6, scope: !54)
!62 = !DILocation(line: 71, column: 3, scope: !60)
!63 = !DILocation(line: 73, column: 9, scope: !54)
!64 = !DILocation(line: 73, column: 2, scope: !54)
!65 = !DILocation(line: 74, column: 1, scope: !54)
!66 = distinct !DISubprogram(name: "color_enabled", scope: !14, file: !14, line: 53, type: !67, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !26)
!67 = !DISubroutineType(types: !68)
!68 = !{!16}
!69 = !DILocalVariable(name: "mode", scope: !66, file: !14, line: 55, type: !23)
!70 = !DILocation(line: 55, column: 14, scope: !66)
!71 = !DILocation(line: 57, column: 6, scope: !72)
!72 = distinct !DILexicalBlock(scope: !66, file: !14, line: 57, column: 6)
!73 = !DILocation(line: 57, column: 17, scope: !72)
!74 = !DILocation(line: 57, column: 6, scope: !66)
!75 = !DILocation(line: 58, column: 10, scope: !72)
!76 = !DILocation(line: 58, column: 3, scope: !72)
!77 = !DILocation(line: 60, column: 9, scope: !66)
!78 = !DILocation(line: 60, column: 7, scope: !66)
!79 = !DILocation(line: 61, column: 6, scope: !80)
!80 = distinct !DILexicalBlock(scope: !66, file: !14, line: 61, column: 6)
!81 = !DILocation(line: 61, column: 11, scope: !80)
!82 = !DILocation(line: 61, column: 6, scope: !66)
!83 = !DILocation(line: 62, column: 8, scope: !80)
!84 = !DILocation(line: 62, column: 3, scope: !80)
!85 = !DILocation(line: 64, column: 24, scope: !66)
!86 = !DILocation(line: 64, column: 9, scope: !66)
!87 = !DILocation(line: 64, column: 2, scope: !66)
!88 = !DILocation(line: 65, column: 1, scope: !66)
