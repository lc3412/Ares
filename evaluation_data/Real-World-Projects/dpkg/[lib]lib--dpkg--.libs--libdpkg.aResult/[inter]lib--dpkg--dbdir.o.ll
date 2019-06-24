; ModuleID = './[inter]lib--dpkg--dbdir.o.i'
source_filename = "./[inter]lib--dpkg--dbdir.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"DPKG_ADMINDIR\00", align 1
@db_dir = internal global i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"/usr/local/var/lib/dpkg\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define i8* @dpkg_db_set_dir(i8*) #0 !dbg !14 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !17, metadata !18), !dbg !19
  %4 = load i8*, i8** %2, align 8, !dbg !20
  %5 = icmp eq i8* %4, null, !dbg !22
  br i1 %5, label %6, label %14, !dbg !23

; <label>:6:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %3, metadata !24, metadata !18), !dbg !26
  %7 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #4, !dbg !27
  store i8* %7, i8** %3, align 8, !dbg !28
  %8 = load i8*, i8** %3, align 8, !dbg !29
  %9 = icmp ne i8* %8, null, !dbg !29
  br i1 %9, label %10, label %12, !dbg !31

; <label>:10:                                     ; preds = %6
  %11 = load i8*, i8** %3, align 8, !dbg !32
  store i8* %11, i8** @db_dir, align 8, !dbg !33
  br label %13, !dbg !34

; <label>:12:                                     ; preds = %6
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8** @db_dir, align 8, !dbg !35
  br label %13

; <label>:13:                                     ; preds = %12, %10
  br label %16, !dbg !36

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %2, align 8, !dbg !37
  store i8* %15, i8** @db_dir, align 8, !dbg !39
  br label %16

; <label>:16:                                     ; preds = %14, %13
  %17 = load i8*, i8** @db_dir, align 8, !dbg !40
  ret i8* %17, !dbg !41
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @dpkg_db_get_dir() #0 !dbg !42 {
  %1 = load i8*, i8** @db_dir, align 8, !dbg !45
  ret i8* %1, !dbg !46
}

; Function Attrs: nounwind uwtable
define i8* @dpkg_db_get_path(i8*) #0 !dbg !47 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !51, metadata !18), !dbg !52
  %3 = load i8*, i8** @db_dir, align 8, !dbg !53
  %4 = load i8*, i8** %2, align 8, !dbg !54
  %5 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %3, i8* %4), !dbg !55
  ret i8* %5, !dbg !56
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
!1 = !DIFile(filename: "[inter]lib--dpkg--dbdir.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = distinct !DIGlobalVariable(name: "db_dir", scope: !0, file: !7, line: 31, type: !8, isLocal: true, isDefinition: true, variable: i8** @db_dir)
!7 = !DIFile(filename: "dbdir.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "dpkg_db_set_dir", scope: !7, file: !7, line: 46, type: !15, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!15 = !DISubroutineType(types: !16)
!16 = !{!8, !8}
!17 = !DILocalVariable(name: "dir", arg: 1, scope: !14, file: !7, line: 46, type: !8)
!18 = !DIExpression()
!19 = !DILocation(line: 46, column: 29, scope: !14)
!20 = !DILocation(line: 48, column: 6, scope: !21)
!21 = distinct !DILexicalBlock(scope: !14, file: !7, line: 48, column: 6)
!22 = !DILocation(line: 48, column: 10, scope: !21)
!23 = !DILocation(line: 48, column: 6, scope: !14)
!24 = !DILocalVariable(name: "env", scope: !25, file: !7, line: 49, type: !8)
!25 = distinct !DILexicalBlock(scope: !21, file: !7, line: 48, column: 18)
!26 = !DILocation(line: 49, column: 15, scope: !25)
!27 = !DILocation(line: 51, column: 9, scope: !25)
!28 = !DILocation(line: 51, column: 7, scope: !25)
!29 = !DILocation(line: 52, column: 7, scope: !30)
!30 = distinct !DILexicalBlock(scope: !25, file: !7, line: 52, column: 7)
!31 = !DILocation(line: 52, column: 7, scope: !25)
!32 = !DILocation(line: 53, column: 13, scope: !30)
!33 = !DILocation(line: 53, column: 11, scope: !30)
!34 = !DILocation(line: 53, column: 4, scope: !30)
!35 = !DILocation(line: 55, column: 11, scope: !30)
!36 = !DILocation(line: 56, column: 2, scope: !25)
!37 = !DILocation(line: 57, column: 12, scope: !38)
!38 = distinct !DILexicalBlock(scope: !21, file: !7, line: 56, column: 9)
!39 = !DILocation(line: 57, column: 10, scope: !38)
!40 = !DILocation(line: 60, column: 9, scope: !14)
!41 = !DILocation(line: 60, column: 2, scope: !14)
!42 = distinct !DISubprogram(name: "dpkg_db_get_dir", scope: !7, file: !7, line: 69, type: !43, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!43 = !DISubroutineType(types: !44)
!44 = !{!8}
!45 = !DILocation(line: 71, column: 9, scope: !42)
!46 = !DILocation(line: 71, column: 2, scope: !42)
!47 = distinct !DISubprogram(name: "dpkg_db_get_path", scope: !7, file: !7, line: 85, type: !48, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !8}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!51 = !DILocalVariable(name: "pathpart", arg: 1, scope: !47, file: !7, line: 85, type: !8)
!52 = !DILocation(line: 85, column: 30, scope: !47)
!53 = !DILocation(line: 87, column: 26, scope: !47)
!54 = !DILocation(line: 87, column: 34, scope: !47)
!55 = !DILocation(line: 87, column: 9, scope: !47)
!56 = !DILocation(line: 87, column: 2, scope: !47)
