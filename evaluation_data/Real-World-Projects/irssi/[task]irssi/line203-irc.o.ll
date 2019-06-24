; ModuleID = './line203-irc.o.i'
source_filename = "./line203-irc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @irc_init() #0 !dbg !6 {
  call void @irc_core_init(), !dbg !10
  call void @irc_dcc_init(), !dbg !11
  call void @irc_flood_init(), !dbg !13
  call void @irc_notifylist_init(), !dbg !15
  ret void, !dbg !17
}

declare void @irc_core_init() #1

declare void @irc_dcc_init() #1

declare void @irc_flood_init() #1

declare void @irc_notifylist_init() #1

; Function Attrs: nounwind uwtable
define void @irc_deinit() #0 !dbg !18 {
  call void @irc_notifylist_deinit(), !dbg !19
  call void @irc_flood_deinit(), !dbg !20
  call void @irc_dcc_deinit(), !dbg !22
  call void @irc_core_deinit(), !dbg !24
  ret void, !dbg !26
}

declare void @irc_notifylist_deinit() #1

declare void @irc_flood_deinit() #1

declare void @irc_dcc_deinit() #1

declare void @irc_core_deinit() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "line203-irc.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "irc_init", scope: !7, file: !7, line: 5, type: !8, isLocal: false, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "irc.c", directory: "/home/lichi/Desktop/irssi/task1")
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocation(line: 5, column: 23, scope: !6)
!11 = !DILocation(line: 5, column: 40, scope: !12)
!12 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 1)
!13 = !DILocation(line: 5, column: 56, scope: !14)
!14 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 2)
!15 = !DILocation(line: 5, column: 74, scope: !16)
!16 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 3)
!17 = !DILocation(line: 5, column: 97, scope: !6)
!18 = distinct !DISubprogram(name: "irc_deinit", scope: !7, file: !7, line: 6, type: !8, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!19 = !DILocation(line: 6, column: 25, scope: !18)
!20 = !DILocation(line: 6, column: 50, scope: !21)
!21 = !DILexicalBlockFile(scope: !18, file: !7, discriminator: 1)
!22 = !DILocation(line: 6, column: 70, scope: !23)
!23 = !DILexicalBlockFile(scope: !18, file: !7, discriminator: 2)
!24 = !DILocation(line: 6, column: 88, scope: !25)
!25 = !DILexicalBlockFile(scope: !18, file: !7, discriminator: 3)
!26 = !DILocation(line: 6, column: 107, scope: !18)
