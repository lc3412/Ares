; ModuleID = './[inter]lib--dpkg--trigname.o.i'
source_filename = "./[inter]lib--dpkg--trigname.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"empty trigger names are not permitted\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"trigger name contains invalid character\00", align 1

; Function Attrs: nounwind uwtable
define i8* @trig_name_is_illegal(i8*) #0 !dbg !6 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !13, metadata !14), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !14), !dbg !18
  %5 = load i8*, i8** %3, align 8, !dbg !19
  %6 = load i8, i8* %5, align 1, !dbg !21
  %7 = icmp ne i8 %6, 0, !dbg !21
  br i1 %7, label %10, label %8, !dbg !22

; <label>:8:                                      ; preds = %1
  %9 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)) #3, !dbg !23
  store i8* %9, i8** %2, align 8, !dbg !24
  br label %27, !dbg !24

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !25

; <label>:11:                                     ; preds = %25, %10
  %12 = load i8*, i8** %3, align 8, !dbg !26
  %13 = getelementptr inbounds i8, i8* %12, i32 1, !dbg !26
  store i8* %13, i8** %3, align 8, !dbg !26
  %14 = load i8, i8* %12, align 1, !dbg !28
  %15 = sext i8 %14 to i32, !dbg !28
  store i32 %15, i32* %4, align 4, !dbg !29
  %16 = icmp ne i32 %15, 0, !dbg !30
  br i1 %16, label %17, label %26, !dbg !30

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %4, align 4, !dbg !31
  %19 = icmp sle i32 %18, 32, !dbg !34
  br i1 %19, label %23, label %20, !dbg !35

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %4, align 4, !dbg !36
  %22 = icmp sge i32 %21, 127, !dbg !38
  br i1 %22, label %23, label %25, !dbg !39

; <label>:23:                                     ; preds = %20, %17
  %24 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0)) #3, !dbg !40
  store i8* %24, i8** %2, align 8, !dbg !41
  br label %27, !dbg !41

; <label>:25:                                     ; preds = %20
  br label %11, !dbg !42, !llvm.loop !44

; <label>:26:                                     ; preds = %11
  store i8* null, i8** %2, align 8, !dbg !45
  br label %27, !dbg !45

; <label>:27:                                     ; preds = %26, %23, %8
  %28 = load i8*, i8** %2, align 8, !dbg !46
  ret i8* %28, !dbg !46
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--trigname.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "trig_name_is_illegal", scope: !7, file: !7, line: 29, type: !8, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "trigname.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DILocalVariable(name: "p", arg: 1, scope: !6, file: !7, line: 29, type: !10)
!14 = !DIExpression()
!15 = !DILocation(line: 29, column: 34, scope: !6)
!16 = !DILocalVariable(name: "c", scope: !6, file: !7, line: 31, type: !17)
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !DILocation(line: 31, column: 6, scope: !6)
!19 = !DILocation(line: 33, column: 8, scope: !20)
!20 = distinct !DILexicalBlock(scope: !6, file: !7, line: 33, column: 6)
!21 = !DILocation(line: 33, column: 7, scope: !20)
!22 = !DILocation(line: 33, column: 6, scope: !6)
!23 = !DILocation(line: 34, column: 9, scope: !20)
!24 = !DILocation(line: 34, column: 3, scope: !20)
!25 = !DILocation(line: 36, column: 2, scope: !6)
!26 = !DILocation(line: 36, column: 16, scope: !27)
!27 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 1)
!28 = !DILocation(line: 36, column: 14, scope: !27)
!29 = !DILocation(line: 36, column: 12, scope: !27)
!30 = !DILocation(line: 36, column: 2, scope: !27)
!31 = !DILocation(line: 37, column: 7, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !7, line: 37, column: 7)
!33 = distinct !DILexicalBlock(scope: !6, file: !7, line: 36, column: 21)
!34 = !DILocation(line: 37, column: 9, scope: !32)
!35 = !DILocation(line: 37, column: 16, scope: !32)
!36 = !DILocation(line: 37, column: 19, scope: !37)
!37 = !DILexicalBlockFile(scope: !32, file: !7, discriminator: 1)
!38 = !DILocation(line: 37, column: 21, scope: !37)
!39 = !DILocation(line: 37, column: 7, scope: !37)
!40 = !DILocation(line: 38, column: 10, scope: !32)
!41 = !DILocation(line: 38, column: 4, scope: !32)
!42 = !DILocation(line: 36, column: 2, scope: !43)
!43 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 2)
!44 = distinct !{!44, !25}
!45 = !DILocation(line: 41, column: 2, scope: !6)
!46 = !DILocation(line: 42, column: 1, scope: !6)
