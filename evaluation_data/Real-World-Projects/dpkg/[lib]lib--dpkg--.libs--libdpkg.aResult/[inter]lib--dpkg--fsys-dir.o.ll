; ModuleID = './[inter]lib--dpkg--fsys-dir.o.i'
source_filename = "./[inter]lib--dpkg--fsys-dir.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"DPKG_ROOT\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fsys_dir = internal global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define i8* @dpkg_fsys_set_dir(i8*) #0 !dbg !14 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !17, metadata !18), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %3, metadata !20, metadata !18), !dbg !22
  %5 = load i8*, i8** %2, align 8, !dbg !23
  %6 = icmp eq i8* %5, null, !dbg !25
  br i1 %6, label %7, label %15, !dbg !26

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !18), !dbg !29
  %8 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)) #4, !dbg !30
  store i8* %8, i8** %4, align 8, !dbg !31
  %9 = load i8*, i8** %4, align 8, !dbg !32
  %10 = icmp ne i8* %9, null, !dbg !32
  br i1 %10, label %11, label %13, !dbg !34

; <label>:11:                                     ; preds = %7
  %12 = load i8*, i8** %4, align 8, !dbg !35
  store i8* %12, i8** %2, align 8, !dbg !36
  br label %14, !dbg !37

; <label>:13:                                     ; preds = %7
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %2, align 8, !dbg !38
  br label %14

; <label>:14:                                     ; preds = %13, %11
  br label %15, !dbg !39

; <label>:15:                                     ; preds = %14, %1
  %16 = load i8*, i8** %2, align 8, !dbg !40
  %17 = call i8* @m_strdup(i8* %16), !dbg !41
  store i8* %17, i8** %3, align 8, !dbg !42
  %18 = load i8*, i8** %3, align 8, !dbg !43
  %19 = call i64 @path_trim_slash_slashdot(i8* %18), !dbg !44
  %20 = load i8*, i8** %3, align 8, !dbg !45
  store i8* %20, i8** @fsys_dir, align 8, !dbg !46
  %21 = load i8*, i8** @fsys_dir, align 8, !dbg !47
  ret i8* %21, !dbg !48
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare i8* @m_strdup(i8*) #3

declare i64 @path_trim_slash_slashdot(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @dpkg_fsys_get_dir() #0 !dbg !49 {
  %1 = load i8*, i8** @fsys_dir, align 8, !dbg !52
  ret i8* %1, !dbg !53
}

; Function Attrs: nounwind uwtable
define i8* @dpkg_fsys_get_path(i8*) #0 !dbg !54 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !57, metadata !18), !dbg !58
  %3 = load i8*, i8** @fsys_dir, align 8, !dbg !59
  %4 = load i8*, i8** %2, align 8, !dbg !60
  %5 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %3, i8* %4), !dbg !61
  ret i8* %5, !dbg !62
}

declare i8* @str_fmt(i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "[inter]lib--dpkg--fsys-dir.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = distinct !DIGlobalVariable(name: "fsys_dir", scope: !0, file: !7, line: 31, type: !8, isLocal: true, isDefinition: true, variable: i8** @fsys_dir)
!7 = !DIFile(filename: "fsys-dir.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "dpkg_fsys_set_dir", scope: !7, file: !7, line: 46, type: !15, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!15 = !DISubroutineType(types: !16)
!16 = !{!8, !8}
!17 = !DILocalVariable(name: "dir", arg: 1, scope: !14, file: !7, line: 46, type: !8)
!18 = !DIExpression()
!19 = !DILocation(line: 46, column: 31, scope: !14)
!20 = !DILocalVariable(name: "new_dir", scope: !14, file: !7, line: 48, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!22 = !DILocation(line: 48, column: 8, scope: !14)
!23 = !DILocation(line: 50, column: 6, scope: !24)
!24 = distinct !DILexicalBlock(scope: !14, file: !7, line: 50, column: 6)
!25 = !DILocation(line: 50, column: 10, scope: !24)
!26 = !DILocation(line: 50, column: 6, scope: !14)
!27 = !DILocalVariable(name: "env", scope: !28, file: !7, line: 51, type: !8)
!28 = distinct !DILexicalBlock(scope: !24, file: !7, line: 50, column: 18)
!29 = !DILocation(line: 51, column: 15, scope: !28)
!30 = !DILocation(line: 53, column: 9, scope: !28)
!31 = !DILocation(line: 53, column: 7, scope: !28)
!32 = !DILocation(line: 54, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !28, file: !7, line: 54, column: 7)
!34 = !DILocation(line: 54, column: 7, scope: !28)
!35 = !DILocation(line: 55, column: 10, scope: !33)
!36 = !DILocation(line: 55, column: 8, scope: !33)
!37 = !DILocation(line: 55, column: 4, scope: !33)
!38 = !DILocation(line: 57, column: 8, scope: !33)
!39 = !DILocation(line: 58, column: 2, scope: !28)
!40 = !DILocation(line: 60, column: 21, scope: !14)
!41 = !DILocation(line: 60, column: 12, scope: !14)
!42 = !DILocation(line: 60, column: 10, scope: !14)
!43 = !DILocation(line: 61, column: 27, scope: !14)
!44 = !DILocation(line: 61, column: 2, scope: !14)
!45 = !DILocation(line: 63, column: 13, scope: !14)
!46 = !DILocation(line: 63, column: 11, scope: !14)
!47 = !DILocation(line: 65, column: 9, scope: !14)
!48 = !DILocation(line: 65, column: 2, scope: !14)
!49 = distinct !DISubprogram(name: "dpkg_fsys_get_dir", scope: !7, file: !7, line: 74, type: !50, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{!8}
!52 = !DILocation(line: 76, column: 9, scope: !49)
!53 = !DILocation(line: 76, column: 2, scope: !49)
!54 = distinct !DISubprogram(name: "dpkg_fsys_get_path", scope: !7, file: !7, line: 90, type: !55, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{!21, !8}
!57 = !DILocalVariable(name: "pathpart", arg: 1, scope: !54, file: !7, line: 90, type: !8)
!58 = !DILocation(line: 90, column: 32, scope: !54)
!59 = !DILocation(line: 92, column: 26, scope: !54)
!60 = !DILocation(line: 92, column: 36, scope: !54)
!61 = !DILocation(line: 92, column: 9, scope: !54)
!62 = !DILocation(line: 92, column: 2, scope: !54)
