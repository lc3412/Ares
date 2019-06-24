; ModuleID = './[inter]lib--dpkg--progress.o.i'
source_filename = "./[inter]lib--dpkg--progress.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.progress = type { i8*, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0D\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s%d%%\0D\00", align 1

; Function Attrs: nounwind uwtable
define void @progress_init(%struct.progress*, i8*, i32) #0 !dbg !6 {
  %4 = alloca %struct.progress*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.progress* %0, %struct.progress** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.progress** %4, metadata !24, metadata !25), !dbg !26
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !27, metadata !25), !dbg !28
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !29, metadata !25), !dbg !30
  %7 = load i8*, i8** %5, align 8, !dbg !31
  %8 = load %struct.progress*, %struct.progress** %4, align 8, !dbg !32
  %9 = getelementptr inbounds %struct.progress, %struct.progress* %8, i32 0, i32 0, !dbg !33
  store i8* %7, i8** %9, align 8, !dbg !34
  %10 = load i32, i32* %6, align 4, !dbg !35
  %11 = load %struct.progress*, %struct.progress** %4, align 8, !dbg !36
  %12 = getelementptr inbounds %struct.progress, %struct.progress* %11, i32 0, i32 1, !dbg !37
  store i32 %10, i32* %12, align 8, !dbg !38
  %13 = load %struct.progress*, %struct.progress** %4, align 8, !dbg !39
  %14 = getelementptr inbounds %struct.progress, %struct.progress* %13, i32 0, i32 2, !dbg !40
  store i32 0, i32* %14, align 4, !dbg !41
  %15 = load %struct.progress*, %struct.progress** %4, align 8, !dbg !42
  %16 = getelementptr inbounds %struct.progress, %struct.progress* %15, i32 0, i32 3, !dbg !43
  store i32 0, i32* %16, align 8, !dbg !44
  %17 = call i32 @isatty(i32 1) #4, !dbg !45
  %18 = icmp ne i32 %17, 0, !dbg !45
  %19 = load %struct.progress*, %struct.progress** %4, align 8, !dbg !46
  %20 = getelementptr inbounds %struct.progress, %struct.progress* %19, i32 0, i32 4, !dbg !47
  %21 = zext i1 %18 to i8, !dbg !48
  store i8 %21, i8* %20, align 4, !dbg !48
  %22 = load %struct.progress*, %struct.progress** %4, align 8, !dbg !49
  %23 = getelementptr inbounds %struct.progress, %struct.progress* %22, i32 0, i32 4, !dbg !51
  %24 = load i8, i8* %23, align 4, !dbg !51
  %25 = trunc i8 %24 to i1, !dbg !51
  br i1 %25, label %26, label %29, !dbg !52

; <label>:26:                                     ; preds = %3
  %27 = load i8*, i8** %5, align 8, !dbg !53
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %27), !dbg !54
  br label %32, !dbg !54

; <label>:29:                                     ; preds = %3
  %30 = load i8*, i8** %5, align 8, !dbg !55
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %30), !dbg !56
  br label %32

; <label>:32:                                     ; preds = %29, %26
  ret void, !dbg !57
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @progress_step(%struct.progress*) #0 !dbg !58 {
  %2 = alloca %struct.progress*, align 8
  %3 = alloca i32, align 4
  store %struct.progress* %0, %struct.progress** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.progress** %2, metadata !61, metadata !25), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %3, metadata !63, metadata !25), !dbg !64
  %4 = load %struct.progress*, %struct.progress** %2, align 8, !dbg !65
  %5 = getelementptr inbounds %struct.progress, %struct.progress* %4, i32 0, i32 4, !dbg !67
  %6 = load i8, i8* %5, align 4, !dbg !67
  %7 = trunc i8 %6 to i1, !dbg !67
  br i1 %7, label %9, label %8, !dbg !68

; <label>:8:                                      ; preds = %1
  br label %42, !dbg !69

; <label>:9:                                      ; preds = %1
  %10 = load %struct.progress*, %struct.progress** %2, align 8, !dbg !70
  %11 = getelementptr inbounds %struct.progress, %struct.progress* %10, i32 0, i32 2, !dbg !71
  %12 = load i32, i32* %11, align 4, !dbg !72
  %13 = add nsw i32 %12, 1, !dbg !72
  store i32 %13, i32* %11, align 4, !dbg !72
  %14 = load %struct.progress*, %struct.progress** %2, align 8, !dbg !73
  %15 = getelementptr inbounds %struct.progress, %struct.progress* %14, i32 0, i32 2, !dbg !74
  %16 = load i32, i32* %15, align 4, !dbg !74
  %17 = mul nsw i32 %16, 100, !dbg !75
  %18 = load %struct.progress*, %struct.progress** %2, align 8, !dbg !76
  %19 = getelementptr inbounds %struct.progress, %struct.progress* %18, i32 0, i32 1, !dbg !77
  %20 = load i32, i32* %19, align 8, !dbg !77
  %21 = sdiv i32 %17, %20, !dbg !78
  store i32 %21, i32* %3, align 4, !dbg !79
  %22 = load i32, i32* %3, align 4, !dbg !80
  %23 = load %struct.progress*, %struct.progress** %2, align 8, !dbg !82
  %24 = getelementptr inbounds %struct.progress, %struct.progress* %23, i32 0, i32 3, !dbg !83
  %25 = load i32, i32* %24, align 8, !dbg !83
  %26 = icmp sle i32 %22, %25, !dbg !84
  br i1 %26, label %27, label %28, !dbg !85

; <label>:27:                                     ; preds = %9
  br label %42, !dbg !86

; <label>:28:                                     ; preds = %9
  %29 = load i32, i32* %3, align 4, !dbg !87
  %30 = srem i32 %29, 5, !dbg !89
  %31 = icmp ne i32 %30, 0, !dbg !89
  br i1 %31, label %32, label %33, !dbg !90

; <label>:32:                                     ; preds = %28
  br label %42, !dbg !91

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %3, align 4, !dbg !92
  %35 = load %struct.progress*, %struct.progress** %2, align 8, !dbg !93
  %36 = getelementptr inbounds %struct.progress, %struct.progress* %35, i32 0, i32 3, !dbg !94
  store i32 %34, i32* %36, align 8, !dbg !95
  %37 = load %struct.progress*, %struct.progress** %2, align 8, !dbg !96
  %38 = getelementptr inbounds %struct.progress, %struct.progress* %37, i32 0, i32 0, !dbg !97
  %39 = load i8*, i8** %38, align 8, !dbg !97
  %40 = load i32, i32* %3, align 4, !dbg !98
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %39, i32 %40), !dbg !99
  br label %42, !dbg !100

; <label>:42:                                     ; preds = %33, %32, %27, %8
  ret void, !dbg !101
}

; Function Attrs: nounwind uwtable
define void @progress_done(%struct.progress*) #0 !dbg !103 {
  %2 = alloca %struct.progress*, align 8
  store %struct.progress* %0, %struct.progress** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.progress** %2, metadata !104, metadata !25), !dbg !105
  %3 = load %struct.progress*, %struct.progress** %2, align 8, !dbg !106
  %4 = getelementptr inbounds %struct.progress, %struct.progress* %3, i32 0, i32 4, !dbg !108
  %5 = load i8, i8* %4, align 4, !dbg !108
  %6 = trunc i8 %5 to i1, !dbg !108
  br i1 %6, label %7, label %12, !dbg !109

; <label>:7:                                      ; preds = %1
  %8 = load %struct.progress*, %struct.progress** %2, align 8, !dbg !110
  %9 = getelementptr inbounds %struct.progress, %struct.progress* %8, i32 0, i32 0, !dbg !111
  %10 = load i8*, i8** %9, align 8, !dbg !111
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %10), !dbg !112
  br label %12, !dbg !112

; <label>:12:                                     ; preds = %7, %1
  ret void, !dbg !113
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--progress.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "progress_init", scope: !7, file: !7, line: 33, type: !8, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "progress.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !15, !19}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "progress", file: !12, line: 36, size: 192, align: 64, elements: !13)
!12 = !DIFile(filename: "progress.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!13 = !{!14, !18, !20, !21, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !11, file: !12, line: 37, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !11, file: !12, line: 39, baseType: !19, size: 32, align: 32, offset: 64)
!19 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !11, file: !12, line: 40, baseType: !19, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "last_percent", scope: !11, file: !12, line: 41, baseType: !19, size: 32, align: 32, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "on_tty", scope: !11, file: !12, line: 43, baseType: !23, size: 8, align: 8, offset: 160)
!23 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!24 = !DILocalVariable(name: "progress", arg: 1, scope: !6, file: !7, line: 33, type: !10)
!25 = !DIExpression()
!26 = !DILocation(line: 33, column: 32, scope: !6)
!27 = !DILocalVariable(name: "text", arg: 2, scope: !6, file: !7, line: 33, type: !15)
!28 = !DILocation(line: 33, column: 54, scope: !6)
!29 = !DILocalVariable(name: "max", arg: 3, scope: !6, file: !7, line: 33, type: !19)
!30 = !DILocation(line: 33, column: 64, scope: !6)
!31 = !DILocation(line: 35, column: 19, scope: !6)
!32 = !DILocation(line: 35, column: 2, scope: !6)
!33 = !DILocation(line: 35, column: 12, scope: !6)
!34 = !DILocation(line: 35, column: 17, scope: !6)
!35 = !DILocation(line: 36, column: 18, scope: !6)
!36 = !DILocation(line: 36, column: 2, scope: !6)
!37 = !DILocation(line: 36, column: 12, scope: !6)
!38 = !DILocation(line: 36, column: 16, scope: !6)
!39 = !DILocation(line: 37, column: 2, scope: !6)
!40 = !DILocation(line: 37, column: 12, scope: !6)
!41 = !DILocation(line: 37, column: 16, scope: !6)
!42 = !DILocation(line: 38, column: 2, scope: !6)
!43 = !DILocation(line: 38, column: 12, scope: !6)
!44 = !DILocation(line: 38, column: 25, scope: !6)
!45 = !DILocation(line: 40, column: 21, scope: !6)
!46 = !DILocation(line: 40, column: 2, scope: !6)
!47 = !DILocation(line: 40, column: 12, scope: !6)
!48 = !DILocation(line: 40, column: 19, scope: !6)
!49 = !DILocation(line: 42, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !6, file: !7, line: 42, column: 6)
!51 = !DILocation(line: 42, column: 16, scope: !50)
!52 = !DILocation(line: 42, column: 6, scope: !6)
!53 = !DILocation(line: 43, column: 18, scope: !50)
!54 = !DILocation(line: 43, column: 3, scope: !50)
!55 = !DILocation(line: 45, column: 16, scope: !50)
!56 = !DILocation(line: 45, column: 3, scope: !50)
!57 = !DILocation(line: 46, column: 1, scope: !6)
!58 = distinct !DISubprogram(name: "progress_step", scope: !7, file: !7, line: 49, type: !59, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !10}
!61 = !DILocalVariable(name: "progress", arg: 1, scope: !58, file: !7, line: 49, type: !10)
!62 = !DILocation(line: 49, column: 32, scope: !58)
!63 = !DILocalVariable(name: "cur_percent", scope: !58, file: !7, line: 51, type: !19)
!64 = !DILocation(line: 51, column: 6, scope: !58)
!65 = !DILocation(line: 53, column: 7, scope: !66)
!66 = distinct !DILexicalBlock(scope: !58, file: !7, line: 53, column: 6)
!67 = !DILocation(line: 53, column: 17, scope: !66)
!68 = !DILocation(line: 53, column: 6, scope: !58)
!69 = !DILocation(line: 54, column: 3, scope: !66)
!70 = !DILocation(line: 56, column: 2, scope: !58)
!71 = !DILocation(line: 56, column: 12, scope: !58)
!72 = !DILocation(line: 56, column: 15, scope: !58)
!73 = !DILocation(line: 58, column: 17, scope: !58)
!74 = !DILocation(line: 58, column: 27, scope: !58)
!75 = !DILocation(line: 58, column: 31, scope: !58)
!76 = !DILocation(line: 58, column: 40, scope: !58)
!77 = !DILocation(line: 58, column: 50, scope: !58)
!78 = !DILocation(line: 58, column: 38, scope: !58)
!79 = !DILocation(line: 58, column: 14, scope: !58)
!80 = !DILocation(line: 59, column: 6, scope: !81)
!81 = distinct !DILexicalBlock(scope: !58, file: !7, line: 59, column: 6)
!82 = !DILocation(line: 59, column: 21, scope: !81)
!83 = !DILocation(line: 59, column: 31, scope: !81)
!84 = !DILocation(line: 59, column: 18, scope: !81)
!85 = !DILocation(line: 59, column: 6, scope: !58)
!86 = !DILocation(line: 60, column: 3, scope: !81)
!87 = !DILocation(line: 61, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !58, file: !7, line: 61, column: 6)
!89 = !DILocation(line: 61, column: 18, scope: !88)
!90 = !DILocation(line: 61, column: 6, scope: !58)
!91 = !DILocation(line: 62, column: 3, scope: !88)
!92 = !DILocation(line: 64, column: 27, scope: !58)
!93 = !DILocation(line: 64, column: 2, scope: !58)
!94 = !DILocation(line: 64, column: 12, scope: !58)
!95 = !DILocation(line: 64, column: 25, scope: !58)
!96 = !DILocation(line: 66, column: 21, scope: !58)
!97 = !DILocation(line: 66, column: 31, scope: !58)
!98 = !DILocation(line: 66, column: 37, scope: !58)
!99 = !DILocation(line: 66, column: 2, scope: !58)
!100 = !DILocation(line: 67, column: 1, scope: !58)
!101 = !DILocation(line: 67, column: 1, scope: !102)
!102 = !DILexicalBlockFile(scope: !58, file: !7, discriminator: 1)
!103 = distinct !DISubprogram(name: "progress_done", scope: !7, file: !7, line: 70, type: !59, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!104 = !DILocalVariable(name: "progress", arg: 1, scope: !103, file: !7, line: 70, type: !10)
!105 = !DILocation(line: 70, column: 32, scope: !103)
!106 = !DILocation(line: 72, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !7, line: 72, column: 6)
!108 = !DILocation(line: 72, column: 16, scope: !107)
!109 = !DILocation(line: 72, column: 6, scope: !103)
!110 = !DILocation(line: 73, column: 16, scope: !107)
!111 = !DILocation(line: 73, column: 26, scope: !107)
!112 = !DILocation(line: 73, column: 3, scope: !107)
!113 = !DILocation(line: 74, column: 1, scope: !103)
