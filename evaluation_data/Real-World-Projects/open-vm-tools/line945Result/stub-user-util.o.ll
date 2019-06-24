; ModuleID = './stub-user-util.o.i'
source_filename = "./stub-user-util.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"stub-user-util.c\00", align 1

; Function Attrs: nounwind uwtable
define void @Util_Backtrace(i32) #0 !dbg !6 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !12), !dbg !13
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 37) #5, !dbg !14
  unreachable, !dbg !14
                                                  ; No predecessors!
  ret void, !dbg !15
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #2

; Function Attrs: noreturn nounwind uwtable
define void @Util_ExitProcessAbruptly(i32) #3 !dbg !16 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !17, metadata !12), !dbg !18
  %3 = load i32, i32* %2, align 4, !dbg !19
  call void @exit(i32 %3) #6, !dbg !20
  unreachable, !dbg !20
                                                  ; No predecessors!
  ret void, !dbg !21
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define i32 @Util_HasAdminPriv() #0 !dbg !22 {
  ret i32 1, !dbg !25
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "stub-user-util.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line945")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "Util_Backtrace", scope: !7, file: !7, line: 35, type: !8, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "stub-user-util.c", directory: "/home/lichi/Desktop/open-vm-tools/line945")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "bugNr", arg: 1, scope: !6, file: !7, line: 35, type: !10)
!12 = !DIExpression()
!13 = !DILocation(line: 35, column: 20, scope: !6)
!14 = !DILocation(line: 37, column: 4, scope: !6)
!15 = !DILocation(line: 38, column: 1, scope: !6)
!16 = distinct !DISubprogram(name: "Util_ExitProcessAbruptly", scope: !7, file: !7, line: 42, type: !8, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!17 = !DILocalVariable(name: "code", arg: 1, scope: !16, file: !7, line: 42, type: !10)
!18 = !DILocation(line: 42, column: 30, scope: !16)
!19 = !DILocation(line: 47, column: 9, scope: !16)
!20 = !DILocation(line: 47, column: 4, scope: !16)
!21 = !DILocation(line: 49, column: 1, scope: !16)
!22 = distinct !DISubprogram(name: "Util_HasAdminPriv", scope: !7, file: !7, line: 52, type: !23, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{!10}
!25 = !DILocation(line: 54, column: 4, scope: !22)
