; ModuleID = './line334-irc-modules.o.i'
source_filename = "./line334-irc-modules.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @fe_irc_modules_init() #0 !dbg !6 {
  call void @fe_irc_dcc_init(), !dbg !10
  call void @fe_irc_notifylist_init(), !dbg !11
  ret void, !dbg !13
}

declare void @fe_irc_dcc_init() #1

declare void @fe_irc_notifylist_init() #1

; Function Attrs: nounwind uwtable
define void @fe_irc_modules_deinit() #0 !dbg !14 {
  call void @fe_irc_notifylist_deinit(), !dbg !15
  call void @fe_irc_dcc_deinit(), !dbg !16
  ret void, !dbg !18
}

declare void @fe_irc_notifylist_deinit() #1

declare void @fe_irc_dcc_deinit() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "line334-irc-modules.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "fe_irc_modules_init", scope: !7, file: !7, line: 4, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "irc-modules.c", directory: "/home/lichi/Desktop/irssi/task1")
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocation(line: 4, column: 34, scope: !6)
!11 = !DILocation(line: 4, column: 53, scope: !12)
!12 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 1)
!13 = !DILocation(line: 4, column: 79, scope: !6)
!14 = distinct !DISubprogram(name: "fe_irc_modules_deinit", scope: !7, file: !7, line: 5, type: !8, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!15 = !DILocation(line: 5, column: 36, scope: !14)
!16 = !DILocation(line: 5, column: 64, scope: !17)
!17 = !DILexicalBlockFile(scope: !14, file: !7, discriminator: 1)
!18 = !DILocation(line: 5, column: 85, scope: !14)
