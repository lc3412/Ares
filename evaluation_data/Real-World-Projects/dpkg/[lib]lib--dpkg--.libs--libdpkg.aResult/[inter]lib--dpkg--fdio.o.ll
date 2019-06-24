; ModuleID = './[inter]lib--dpkg--fdio.o.i'
source_filename = "./[inter]lib--dpkg--fdio.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @fd_read(i32, i8*, i64) #0 !dbg !6 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !20, metadata !21), !dbg !22
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !23, metadata !21), !dbg !24
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !25, metadata !21), !dbg !26
  call void @llvm.dbg.declare(metadata i64* %8, metadata !27, metadata !21), !dbg !28
  store i64 0, i64* %8, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8** %9, metadata !29, metadata !21), !dbg !32
  %11 = load i8*, i8** %6, align 8, !dbg !33
  store i8* %11, i8** %9, align 8, !dbg !32
  br label %12, !dbg !34

; <label>:12:                                     ; preds = %47, %32, %3
  %13 = load i64, i64* %7, align 8, !dbg !35
  %14 = icmp ugt i64 %13, 0, !dbg !37
  br i1 %14, label %15, label %54, !dbg !38

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i64* %10, metadata !39, metadata !21), !dbg !41
  %16 = load i32, i32* %5, align 4, !dbg !42
  %17 = load i8*, i8** %9, align 8, !dbg !43
  %18 = load i64, i64* %8, align 8, !dbg !44
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !45
  %20 = load i64, i64* %7, align 8, !dbg !46
  %21 = call i64 @read(i32 %16, i8* %19, i64 %20), !dbg !47
  store i64 %21, i64* %10, align 8, !dbg !48
  %22 = load i64, i64* %10, align 8, !dbg !49
  %23 = icmp eq i64 %22, -1, !dbg !51
  br i1 %23, label %24, label %43, !dbg !52

; <label>:24:                                     ; preds = %15
  %25 = call i32* @__errno_location() #1, !dbg !53
  %26 = load i32, i32* %25, align 4, !dbg !56
  %27 = icmp eq i32 %26, 4, !dbg !57
  br i1 %27, label %32, label %28, !dbg !58

; <label>:28:                                     ; preds = %24
  %29 = call i32* @__errno_location() #1, !dbg !59
  %30 = load i32, i32* %29, align 4, !dbg !61
  %31 = icmp eq i32 %30, 11, !dbg !62
  br i1 %31, label %32, label %33, !dbg !63

; <label>:32:                                     ; preds = %28, %24
  br label %12, !dbg !64, !llvm.loop !65

; <label>:33:                                     ; preds = %28
  %34 = load i64, i64* %8, align 8, !dbg !66
  %35 = icmp ne i64 %34, 0, !dbg !66
  br i1 %35, label %36, label %39, !dbg !66

; <label>:36:                                     ; preds = %33
  %37 = load i64, i64* %8, align 8, !dbg !67
  %38 = sub nsw i64 0, %37, !dbg !69
  br label %41, !dbg !70

; <label>:39:                                     ; preds = %33
  %40 = load i64, i64* %10, align 8, !dbg !71
  br label %41, !dbg !73

; <label>:41:                                     ; preds = %39, %36
  %42 = phi i64 [ %38, %36 ], [ %40, %39 ], !dbg !74
  store i64 %42, i64* %4, align 8, !dbg !76
  br label %56, !dbg !76

; <label>:43:                                     ; preds = %15
  %44 = load i64, i64* %10, align 8, !dbg !77
  %45 = icmp eq i64 %44, 0, !dbg !79
  br i1 %45, label %46, label %47, !dbg !80

; <label>:46:                                     ; preds = %43
  br label %54, !dbg !81

; <label>:47:                                     ; preds = %43
  %48 = load i64, i64* %10, align 8, !dbg !82
  %49 = load i64, i64* %8, align 8, !dbg !83
  %50 = add nsw i64 %49, %48, !dbg !83
  store i64 %50, i64* %8, align 8, !dbg !83
  %51 = load i64, i64* %10, align 8, !dbg !84
  %52 = load i64, i64* %7, align 8, !dbg !85
  %53 = sub i64 %52, %51, !dbg !85
  store i64 %53, i64* %7, align 8, !dbg !85
  br label %12, !dbg !86, !llvm.loop !65

; <label>:54:                                     ; preds = %46, %12
  %55 = load i64, i64* %8, align 8, !dbg !88
  store i64 %55, i64* %4, align 8, !dbg !89
  br label %56, !dbg !89

; <label>:56:                                     ; preds = %54, %41
  %57 = load i64, i64* %4, align 8, !dbg !90
  ret i64 %57, !dbg !90
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind uwtable
define i64 @fd_write(i32, i8*, i64) #0 !dbg !91 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !96, metadata !21), !dbg !97
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !98, metadata !21), !dbg !99
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !100, metadata !21), !dbg !101
  call void @llvm.dbg.declare(metadata i64* %8, metadata !102, metadata !21), !dbg !103
  store i64 0, i64* %8, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata i8** %9, metadata !104, metadata !21), !dbg !107
  %11 = load i8*, i8** %6, align 8, !dbg !108
  store i8* %11, i8** %9, align 8, !dbg !107
  br label %12, !dbg !109

; <label>:12:                                     ; preds = %47, %32, %3
  %13 = load i64, i64* %7, align 8, !dbg !110
  %14 = icmp ugt i64 %13, 0, !dbg !112
  br i1 %14, label %15, label %54, !dbg !113

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i64* %10, metadata !114, metadata !21), !dbg !116
  %16 = load i32, i32* %5, align 4, !dbg !117
  %17 = load i8*, i8** %9, align 8, !dbg !118
  %18 = load i64, i64* %8, align 8, !dbg !119
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !120
  %20 = load i64, i64* %7, align 8, !dbg !121
  %21 = call i64 @write(i32 %16, i8* %19, i64 %20), !dbg !122
  store i64 %21, i64* %10, align 8, !dbg !123
  %22 = load i64, i64* %10, align 8, !dbg !124
  %23 = icmp eq i64 %22, -1, !dbg !126
  br i1 %23, label %24, label %43, !dbg !127

; <label>:24:                                     ; preds = %15
  %25 = call i32* @__errno_location() #1, !dbg !128
  %26 = load i32, i32* %25, align 4, !dbg !131
  %27 = icmp eq i32 %26, 4, !dbg !132
  br i1 %27, label %32, label %28, !dbg !133

; <label>:28:                                     ; preds = %24
  %29 = call i32* @__errno_location() #1, !dbg !134
  %30 = load i32, i32* %29, align 4, !dbg !136
  %31 = icmp eq i32 %30, 11, !dbg !137
  br i1 %31, label %32, label %33, !dbg !138

; <label>:32:                                     ; preds = %28, %24
  br label %12, !dbg !139, !llvm.loop !140

; <label>:33:                                     ; preds = %28
  %34 = load i64, i64* %8, align 8, !dbg !141
  %35 = icmp ne i64 %34, 0, !dbg !141
  br i1 %35, label %36, label %39, !dbg !141

; <label>:36:                                     ; preds = %33
  %37 = load i64, i64* %8, align 8, !dbg !142
  %38 = sub nsw i64 0, %37, !dbg !144
  br label %41, !dbg !145

; <label>:39:                                     ; preds = %33
  %40 = load i64, i64* %10, align 8, !dbg !146
  br label %41, !dbg !148

; <label>:41:                                     ; preds = %39, %36
  %42 = phi i64 [ %38, %36 ], [ %40, %39 ], !dbg !149
  store i64 %42, i64* %4, align 8, !dbg !151
  br label %56, !dbg !151

; <label>:43:                                     ; preds = %15
  %44 = load i64, i64* %10, align 8, !dbg !152
  %45 = icmp eq i64 %44, 0, !dbg !154
  br i1 %45, label %46, label %47, !dbg !155

; <label>:46:                                     ; preds = %43
  br label %54, !dbg !156

; <label>:47:                                     ; preds = %43
  %48 = load i64, i64* %10, align 8, !dbg !157
  %49 = load i64, i64* %8, align 8, !dbg !158
  %50 = add nsw i64 %49, %48, !dbg !158
  store i64 %50, i64* %8, align 8, !dbg !158
  %51 = load i64, i64* %10, align 8, !dbg !159
  %52 = load i64, i64* %7, align 8, !dbg !160
  %53 = sub i64 %52, %51, !dbg !160
  store i64 %53, i64* %7, align 8, !dbg !160
  br label %12, !dbg !161, !llvm.loop !140

; <label>:54:                                     ; preds = %46, %12
  %55 = load i64, i64* %8, align 8, !dbg !163
  store i64 %55, i64* %4, align 8, !dbg !164
  br label %56, !dbg !164

; <label>:56:                                     ; preds = %54, %41
  %57 = load i64, i64* %4, align 8, !dbg !165
  ret i64 %57, !dbg !165
}

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @fd_allocate_size(i32, i64, i64) #0 !dbg !166 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !171, metadata !21), !dbg !172
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !173, metadata !21), !dbg !174
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !175, metadata !21), !dbg !176
  %7 = call i32* @__errno_location() #1, !dbg !177
  store i32 38, i32* %7, align 4, !dbg !178
  ret i32 -1, !dbg !179
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--fdio.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "fd_read", scope: !7, file: !7, line: 31, type: !8, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "fdio.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !16, !17}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !11, line: 109, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !13, line: 172, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!14 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 216, baseType: !19)
!18 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!19 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!20 = !DILocalVariable(name: "fd", arg: 1, scope: !6, file: !7, line: 31, type: !15)
!21 = !DIExpression()
!22 = !DILocation(line: 31, column: 13, scope: !6)
!23 = !DILocalVariable(name: "buf", arg: 2, scope: !6, file: !7, line: 31, type: !16)
!24 = !DILocation(line: 31, column: 23, scope: !6)
!25 = !DILocalVariable(name: "len", arg: 3, scope: !6, file: !7, line: 31, type: !17)
!26 = !DILocation(line: 31, column: 35, scope: !6)
!27 = !DILocalVariable(name: "total", scope: !6, file: !7, line: 33, type: !10)
!28 = !DILocation(line: 33, column: 10, scope: !6)
!29 = !DILocalVariable(name: "ptr", scope: !6, file: !7, line: 34, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DILocation(line: 34, column: 8, scope: !6)
!33 = !DILocation(line: 34, column: 14, scope: !6)
!34 = !DILocation(line: 36, column: 2, scope: !6)
!35 = !DILocation(line: 36, column: 9, scope: !36)
!36 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 1)
!37 = !DILocation(line: 36, column: 13, scope: !36)
!38 = !DILocation(line: 36, column: 2, scope: !36)
!39 = !DILocalVariable(name: "n", scope: !40, file: !7, line: 37, type: !10)
!40 = distinct !DILexicalBlock(scope: !6, file: !7, line: 36, column: 18)
!41 = !DILocation(line: 37, column: 11, scope: !40)
!42 = !DILocation(line: 39, column: 12, scope: !40)
!43 = !DILocation(line: 39, column: 16, scope: !40)
!44 = !DILocation(line: 39, column: 22, scope: !40)
!45 = !DILocation(line: 39, column: 20, scope: !40)
!46 = !DILocation(line: 39, column: 29, scope: !40)
!47 = !DILocation(line: 39, column: 7, scope: !40)
!48 = !DILocation(line: 39, column: 5, scope: !40)
!49 = !DILocation(line: 40, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !40, file: !7, line: 40, column: 7)
!51 = !DILocation(line: 40, column: 9, scope: !50)
!52 = !DILocation(line: 40, column: 7, scope: !40)
!53 = !DILocation(line: 41, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !7, line: 41, column: 7)
!55 = distinct !DILexicalBlock(scope: !50, file: !7, line: 40, column: 16)
!56 = !DILocation(line: 41, column: 8, scope: !54)
!57 = !DILocation(line: 41, column: 13, scope: !54)
!58 = !DILocation(line: 41, column: 22, scope: !54)
!59 = !DILocation(line: 41, column: 27, scope: !60)
!60 = !DILexicalBlockFile(scope: !54, file: !7, discriminator: 1)
!61 = !DILocation(line: 41, column: 26, scope: !60)
!62 = !DILocation(line: 41, column: 31, scope: !60)
!63 = !DILocation(line: 41, column: 7, scope: !60)
!64 = !DILocation(line: 42, column: 5, scope: !54)
!65 = distinct !{!65, !34}
!66 = !DILocation(line: 43, column: 11, scope: !55)
!67 = !DILocation(line: 43, column: 20, scope: !68)
!68 = !DILexicalBlockFile(scope: !55, file: !7, discriminator: 1)
!69 = !DILocation(line: 43, column: 19, scope: !68)
!70 = !DILocation(line: 43, column: 11, scope: !68)
!71 = !DILocation(line: 43, column: 28, scope: !72)
!72 = !DILexicalBlockFile(scope: !55, file: !7, discriminator: 2)
!73 = !DILocation(line: 43, column: 11, scope: !72)
!74 = !DILocation(line: 43, column: 11, scope: !75)
!75 = !DILexicalBlockFile(scope: !55, file: !7, discriminator: 3)
!76 = !DILocation(line: 43, column: 4, scope: !75)
!77 = !DILocation(line: 45, column: 7, scope: !78)
!78 = distinct !DILexicalBlock(scope: !40, file: !7, line: 45, column: 7)
!79 = !DILocation(line: 45, column: 9, scope: !78)
!80 = !DILocation(line: 45, column: 7, scope: !40)
!81 = !DILocation(line: 46, column: 4, scope: !78)
!82 = !DILocation(line: 48, column: 12, scope: !40)
!83 = !DILocation(line: 48, column: 9, scope: !40)
!84 = !DILocation(line: 49, column: 10, scope: !40)
!85 = !DILocation(line: 49, column: 7, scope: !40)
!86 = !DILocation(line: 36, column: 2, scope: !87)
!87 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 2)
!88 = !DILocation(line: 52, column: 9, scope: !6)
!89 = !DILocation(line: 52, column: 2, scope: !6)
!90 = !DILocation(line: 53, column: 1, scope: !6)
!91 = distinct !DISubprogram(name: "fd_write", scope: !7, file: !7, line: 56, type: !92, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!92 = !DISubroutineType(types: !93)
!93 = !{!10, !15, !94, !17}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!96 = !DILocalVariable(name: "fd", arg: 1, scope: !91, file: !7, line: 56, type: !15)
!97 = !DILocation(line: 56, column: 14, scope: !91)
!98 = !DILocalVariable(name: "buf", arg: 2, scope: !91, file: !7, line: 56, type: !94)
!99 = !DILocation(line: 56, column: 30, scope: !91)
!100 = !DILocalVariable(name: "len", arg: 3, scope: !91, file: !7, line: 56, type: !17)
!101 = !DILocation(line: 56, column: 42, scope: !91)
!102 = !DILocalVariable(name: "total", scope: !91, file: !7, line: 58, type: !10)
!103 = !DILocation(line: 58, column: 10, scope: !91)
!104 = !DILocalVariable(name: "ptr", scope: !91, file: !7, line: 59, type: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!107 = !DILocation(line: 59, column: 14, scope: !91)
!108 = !DILocation(line: 59, column: 20, scope: !91)
!109 = !DILocation(line: 61, column: 2, scope: !91)
!110 = !DILocation(line: 61, column: 9, scope: !111)
!111 = !DILexicalBlockFile(scope: !91, file: !7, discriminator: 1)
!112 = !DILocation(line: 61, column: 13, scope: !111)
!113 = !DILocation(line: 61, column: 2, scope: !111)
!114 = !DILocalVariable(name: "n", scope: !115, file: !7, line: 62, type: !10)
!115 = distinct !DILexicalBlock(scope: !91, file: !7, line: 61, column: 18)
!116 = !DILocation(line: 62, column: 11, scope: !115)
!117 = !DILocation(line: 64, column: 13, scope: !115)
!118 = !DILocation(line: 64, column: 17, scope: !115)
!119 = !DILocation(line: 64, column: 23, scope: !115)
!120 = !DILocation(line: 64, column: 21, scope: !115)
!121 = !DILocation(line: 64, column: 30, scope: !115)
!122 = !DILocation(line: 64, column: 7, scope: !115)
!123 = !DILocation(line: 64, column: 5, scope: !115)
!124 = !DILocation(line: 65, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !115, file: !7, line: 65, column: 7)
!126 = !DILocation(line: 65, column: 9, scope: !125)
!127 = !DILocation(line: 65, column: 7, scope: !115)
!128 = !DILocation(line: 66, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !7, line: 66, column: 7)
!130 = distinct !DILexicalBlock(scope: !125, file: !7, line: 65, column: 16)
!131 = !DILocation(line: 66, column: 8, scope: !129)
!132 = !DILocation(line: 66, column: 13, scope: !129)
!133 = !DILocation(line: 66, column: 22, scope: !129)
!134 = !DILocation(line: 66, column: 27, scope: !135)
!135 = !DILexicalBlockFile(scope: !129, file: !7, discriminator: 1)
!136 = !DILocation(line: 66, column: 26, scope: !135)
!137 = !DILocation(line: 66, column: 31, scope: !135)
!138 = !DILocation(line: 66, column: 7, scope: !135)
!139 = !DILocation(line: 67, column: 5, scope: !129)
!140 = distinct !{!140, !109}
!141 = !DILocation(line: 68, column: 11, scope: !130)
!142 = !DILocation(line: 68, column: 20, scope: !143)
!143 = !DILexicalBlockFile(scope: !130, file: !7, discriminator: 1)
!144 = !DILocation(line: 68, column: 19, scope: !143)
!145 = !DILocation(line: 68, column: 11, scope: !143)
!146 = !DILocation(line: 68, column: 28, scope: !147)
!147 = !DILexicalBlockFile(scope: !130, file: !7, discriminator: 2)
!148 = !DILocation(line: 68, column: 11, scope: !147)
!149 = !DILocation(line: 68, column: 11, scope: !150)
!150 = !DILexicalBlockFile(scope: !130, file: !7, discriminator: 3)
!151 = !DILocation(line: 68, column: 4, scope: !150)
!152 = !DILocation(line: 70, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !115, file: !7, line: 70, column: 7)
!154 = !DILocation(line: 70, column: 9, scope: !153)
!155 = !DILocation(line: 70, column: 7, scope: !115)
!156 = !DILocation(line: 71, column: 4, scope: !153)
!157 = !DILocation(line: 73, column: 12, scope: !115)
!158 = !DILocation(line: 73, column: 9, scope: !115)
!159 = !DILocation(line: 74, column: 10, scope: !115)
!160 = !DILocation(line: 74, column: 7, scope: !115)
!161 = !DILocation(line: 61, column: 2, scope: !162)
!162 = !DILexicalBlockFile(scope: !91, file: !7, discriminator: 2)
!163 = !DILocation(line: 77, column: 9, scope: !91)
!164 = !DILocation(line: 77, column: 2, scope: !91)
!165 = !DILocation(line: 78, column: 1, scope: !91)
!166 = distinct !DISubprogram(name: "fd_allocate_size", scope: !7, file: !7, line: 158, type: !167, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!167 = !DISubroutineType(types: !168)
!168 = !{!15, !15, !169, !169}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !11, line: 86, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !13, line: 131, baseType: !14)
!171 = !DILocalVariable(name: "fd", arg: 1, scope: !166, file: !7, line: 158, type: !15)
!172 = !DILocation(line: 158, column: 22, scope: !166)
!173 = !DILocalVariable(name: "offset", arg: 2, scope: !166, file: !7, line: 158, type: !169)
!174 = !DILocation(line: 158, column: 32, scope: !166)
!175 = !DILocalVariable(name: "len", arg: 3, scope: !166, file: !7, line: 158, type: !169)
!176 = !DILocation(line: 158, column: 46, scope: !166)
!177 = !DILocation(line: 160, column: 3, scope: !166)
!178 = !DILocation(line: 160, column: 7, scope: !166)
!179 = !DILocation(line: 161, column: 2, scope: !166)
