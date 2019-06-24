; ModuleID = './line121-irc-channels-setup.o.i'
source_filename = "./line121-irc-channels-setup.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._SERVER_REC = type opaque
%struct._WI_ITEM_REC = type opaque
%struct._GHashTable = type opaque
%struct._NICK_REC = type opaque

@.str = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"channel wholist\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"channel joined\00", align 1

; Function Attrs: nounwind uwtable
define void @irc_channels_setup_init() #0 !dbg !15 {
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @channel_send_botcommands to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !19
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @channel_send_autocommands to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !20
  ret void, !dbg !21
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @channel_send_botcommands(%struct._CHANNEL_REC*) #1

declare void @channel_send_autocommands(%struct._CHANNEL_REC*) #1

; Function Attrs: nounwind uwtable
define void @irc_channels_setup_deinit() #0 !dbg !22 {
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @channel_send_botcommands to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !23
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @channel_send_autocommands to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !24
  ret void, !dbg !25
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line121-irc-channels-setup.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !11}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !5, line: 9, baseType: !6)
!5 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !9, !9, !9, !9, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!15 = distinct !DISubprogram(name: "irc_channels_setup_init", scope: !16, file: !16, line: 25, type: !17, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!16 = !DIFile(filename: "irc-channels-setup.c", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !DILocation(line: 27, column: 2, scope: !15)
!20 = !DILocation(line: 28, column: 2, scope: !15)
!21 = !DILocation(line: 29, column: 1, scope: !15)
!22 = distinct !DISubprogram(name: "irc_channels_setup_deinit", scope: !16, file: !16, line: 31, type: !17, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!23 = !DILocation(line: 33, column: 2, scope: !22)
!24 = !DILocation(line: 34, column: 2, scope: !22)
!25 = !DILocation(line: 35, column: 1, scope: !22)
