; ModuleID = './[inter]conftest.o.i'
source_filename = "./[inter]conftest.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 !dbg !6 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !13), !dbg !14
  call void @llvm.dbg.declare(metadata i64* %3, metadata !15, metadata !13), !dbg !17
  %6 = atomicrmw xchg i8* %2, i8 1 monotonic, !dbg !18
  %7 = icmp ne i8 %6, 0, !dbg !18
  store i64 1, i64* %4, align 8, !dbg !19
  %8 = load atomic i64, i64* %3 acquire, align 8, !dbg !20
  store i64 %8, i64* %5, align 8, !dbg !20
  %9 = load i64, i64* %5, align 8, !dbg !20
  ret i32 0, !dbg !21
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]conftest.o.i", directory: "/home/lichi/Desktop/bedops/[task]third-party--jansson-2.6--conftest")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 44, type: !8, isLocal: false, isDefinition: true, scopeLine: 45, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "conftest.c", directory: "/home/lichi/Desktop/bedops/[task]third-party--jansson-2.6--conftest")
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "l", scope: !6, file: !7, line: 46, type: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIExpression()
!14 = !DILocation(line: 46, column: 6, scope: !6)
!15 = !DILocalVariable(name: "v", scope: !6, file: !7, line: 46, type: !16)
!16 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!17 = !DILocation(line: 46, column: 23, scope: !6)
!18 = !DILocation(line: 46, column: 26, scope: !6)
!19 = !DILocation(line: 46, column: 56, scope: !6)
!20 = !DILocation(line: 46, column: 84, scope: !6)
!21 = !DILocation(line: 48, column: 3, scope: !6)
