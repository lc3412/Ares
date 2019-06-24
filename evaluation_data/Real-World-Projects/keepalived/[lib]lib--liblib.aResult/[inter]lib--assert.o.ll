; ModuleID = './[inter]lib--assert.o.i'
source_filename = "./[inter]lib--assert.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"assert: %s:%d: %s: Assertion: `%s' failed.\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"assert: %s:%d: %s: Unexpected error: %s.\00", align 1

; Function Attrs: noreturn nounwind uwtable
define void @__assert_fail(i8*, i8*, i32, i8*) #0 !dbg !6 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !14, metadata !15), !dbg !16
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !17, metadata !15), !dbg !18
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !19, metadata !15), !dbg !20
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !21, metadata !15), !dbg !22
  %9 = load i8*, i8** %6, align 8, !dbg !23
  %10 = load i32, i32* %7, align 4, !dbg !24
  %11 = load i8*, i8** %8, align 8, !dbg !25
  %12 = load i8*, i8** %5, align 8, !dbg !26
  call void (i32, i8*, ...) @log_message(i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i8* %9, i32 %10, i8* %11, i8* %12), !dbg !27
  call void @abort() #5, !dbg !28
  unreachable, !dbg !28
                                                  ; No predecessors!
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @log_message(i32, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn nounwind uwtable
define void @__assert_perror_fail(i32, i8*, i32, i8*) #0 !dbg !30 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !34, metadata !15), !dbg !35
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !36, metadata !15), !dbg !37
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !38, metadata !15), !dbg !39
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !40, metadata !15), !dbg !41
  %9 = load i8*, i8** %6, align 8, !dbg !42
  %10 = load i32, i32* %7, align 4, !dbg !43
  %11 = load i8*, i8** %8, align 8, !dbg !44
  %12 = load i32, i32* %5, align 4, !dbg !45
  %13 = call i8* @strerror(i32 %12) #6, !dbg !46
  call void (i32, i8*, ...) @log_message(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i8* %9, i32 %10, i8* %11, i8* %13), !dbg !47
  call void @abort() #5, !dbg !49
  unreachable, !dbg !49
                                                  ; No predecessors!
  ret void, !dbg !50
}

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--assert.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "__assert_fail", scope: !7, file: !7, line: 33, type: !8, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "assert.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !13, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!14 = !DILocalVariable(name: "__assertion", arg: 1, scope: !6, file: !7, line: 33, type: !10)
!15 = !DIExpression()
!16 = !DILocation(line: 33, column: 33, scope: !6)
!17 = !DILocalVariable(name: "__file", arg: 2, scope: !6, file: !7, line: 33, type: !10)
!18 = !DILocation(line: 33, column: 58, scope: !6)
!19 = !DILocalVariable(name: "__line", arg: 3, scope: !6, file: !7, line: 34, type: !13)
!20 = !DILocation(line: 34, column: 20, scope: !6)
!21 = !DILocalVariable(name: "__function", arg: 4, scope: !6, file: !7, line: 34, type: !10)
!22 = !DILocation(line: 34, column: 40, scope: !6)
!23 = !DILocation(line: 36, column: 68, scope: !6)
!24 = !DILocation(line: 36, column: 76, scope: !6)
!25 = !DILocation(line: 36, column: 84, scope: !6)
!26 = !DILocation(line: 36, column: 96, scope: !6)
!27 = !DILocation(line: 36, column: 2, scope: !6)
!28 = !DILocation(line: 37, column: 2, scope: !6)
!29 = !DILocation(line: 38, column: 1, scope: !6)
!30 = distinct !DISubprogram(name: "__assert_perror_fail", scope: !7, file: !7, line: 42, type: !31, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !10, !13, !10}
!33 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!34 = !DILocalVariable(name: "__errnum", arg: 1, scope: !30, file: !7, line: 42, type: !33)
!35 = !DILocation(line: 42, column: 32, scope: !30)
!36 = !DILocalVariable(name: "__file", arg: 2, scope: !30, file: !7, line: 42, type: !10)
!37 = !DILocation(line: 42, column: 54, scope: !30)
!38 = !DILocalVariable(name: "__line", arg: 3, scope: !30, file: !7, line: 43, type: !13)
!39 = !DILocation(line: 43, column: 20, scope: !30)
!40 = !DILocalVariable(name: "__function", arg: 4, scope: !30, file: !7, line: 43, type: !10)
!41 = !DILocation(line: 43, column: 40, scope: !30)
!42 = !DILocation(line: 45, column: 66, scope: !30)
!43 = !DILocation(line: 45, column: 74, scope: !30)
!44 = !DILocation(line: 45, column: 82, scope: !30)
!45 = !DILocation(line: 45, column: 103, scope: !30)
!46 = !DILocation(line: 45, column: 94, scope: !30)
!47 = !DILocation(line: 45, column: 2, scope: !48)
!48 = !DILexicalBlockFile(scope: !30, file: !7, discriminator: 1)
!49 = !DILocation(line: 46, column: 2, scope: !30)
!50 = !DILocation(line: 47, column: 1, scope: !30)
