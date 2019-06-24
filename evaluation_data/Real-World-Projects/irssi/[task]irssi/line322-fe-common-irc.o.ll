; ModuleID = './line322-fe-common-irc.o.i'
source_filename = "./line322-fe-common-irc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._FORMAT_REC = type { i8*, i8*, i32, [10 x i32] }
%struct.MODULE_FILE_REC = type { %struct._MODULE_REC*, i8*, i8*, void ()*, %struct._GModule*, i8 }
%struct._MODULE_REC = type { i8*, %struct._GSList* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GModule = type opaque

@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"show_away_once\00", align 1
@fecommon_irc_formats = external global [0 x %struct._FORMAT_REC], align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"fe-irc\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_common_irc_init() #0 !dbg !6 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !10
  call void @theme_register_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._FORMAT_REC* getelementptr inbounds ([0 x %struct._FORMAT_REC], [0 x %struct._FORMAT_REC]* @fecommon_irc_formats, i32 0, i32 0)), !dbg !11
  call void @fe_irc_channels_init(), !dbg !12
  call void @fe_irc_queries_init(), !dbg !13
  call void @fe_irc_messages_init(), !dbg !14
  call void @fe_irc_commands_init(), !dbg !15
  call void @fe_ircnet_init(), !dbg !16
  call void @fe_irc_server_init(), !dbg !17
  call void @fe_ctcp_init(), !dbg !18
  call void @fe_events_init(), !dbg !19
  call void @fe_events_numeric_init(), !dbg !20
  call void @fe_modes_init(), !dbg !21
  call void @fe_netsplit_init(), !dbg !22
  call void @fe_netjoin_init(), !dbg !23
  call void @fe_whois_init(), !dbg !24
  call void @fe_sasl_init(), !dbg !25
  call void @fe_cap_init(), !dbg !26
  call void @irc_completion_init(), !dbg !27
  call void @settings_check_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !28
  %1 = call %struct.MODULE_FILE_REC* @module_register_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !29
  call void @fe_irc_modules_init(), !dbg !30
  ret void, !dbg !31
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @theme_register_module(i8*, %struct._FORMAT_REC*) #1

declare void @fe_irc_channels_init() #1

declare void @fe_irc_queries_init() #1

declare void @fe_irc_messages_init() #1

declare void @fe_irc_commands_init() #1

declare void @fe_ircnet_init() #1

declare void @fe_irc_server_init() #1

declare void @fe_ctcp_init() #1

declare void @fe_events_init() #1

declare void @fe_events_numeric_init() #1

declare void @fe_modes_init() #1

declare void @fe_netsplit_init() #1

declare void @fe_netjoin_init() #1

declare void @fe_whois_init() #1

declare void @fe_sasl_init() #1

declare void @fe_cap_init() #1

declare void @irc_completion_init() #1

declare void @settings_check_module(i8*) #1

declare %struct.MODULE_FILE_REC* @module_register_full(i8*, i8*, i8*) #1

declare void @fe_irc_modules_init() #1

; Function Attrs: nounwind uwtable
define void @fe_common_irc_deinit() #0 !dbg !32 {
  call void @fe_irc_modules_deinit(), !dbg !33
  call void @fe_irc_channels_deinit(), !dbg !34
  call void @fe_irc_queries_deinit(), !dbg !35
  call void @fe_irc_messages_deinit(), !dbg !36
  call void @fe_irc_commands_deinit(), !dbg !37
  call void @fe_ircnet_deinit(), !dbg !38
  call void @fe_irc_server_deinit(), !dbg !39
  call void @fe_ctcp_deinit(), !dbg !40
  call void @fe_events_deinit(), !dbg !41
  call void @fe_events_numeric_deinit(), !dbg !42
  call void @fe_modes_deinit(), !dbg !43
  call void @fe_netsplit_deinit(), !dbg !44
  call void @fe_netjoin_deinit(), !dbg !45
  call void @fe_whois_deinit(), !dbg !46
  call void @fe_sasl_deinit(), !dbg !47
  call void @fe_cap_deinit(), !dbg !48
  call void @irc_completion_deinit(), !dbg !49
  call void @theme_unregister_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !50
  ret void, !dbg !51
}

declare void @fe_irc_modules_deinit() #1

declare void @fe_irc_channels_deinit() #1

declare void @fe_irc_queries_deinit() #1

declare void @fe_irc_messages_deinit() #1

declare void @fe_irc_commands_deinit() #1

declare void @fe_ircnet_deinit() #1

declare void @fe_irc_server_deinit() #1

declare void @fe_ctcp_deinit() #1

declare void @fe_events_deinit() #1

declare void @fe_events_numeric_deinit() #1

declare void @fe_modes_deinit() #1

declare void @fe_netsplit_deinit() #1

declare void @fe_netjoin_deinit() #1

declare void @fe_whois_deinit() #1

declare void @fe_sasl_deinit() #1

declare void @fe_cap_deinit() #1

declare void @irc_completion_deinit() #1

declare void @theme_unregister_module(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "line322-fe-common-irc.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "fe_common_irc_init", scope: !7, file: !7, line: 81, type: !8, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "fe-common-irc.c", directory: "/home/lichi/Desktop/irssi/task1")
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocation(line: 83, column: 2, scope: !6)
!11 = !DILocation(line: 85, column: 2, scope: !6)
!12 = !DILocation(line: 87, column: 2, scope: !6)
!13 = !DILocation(line: 88, column: 2, scope: !6)
!14 = !DILocation(line: 89, column: 2, scope: !6)
!15 = !DILocation(line: 90, column: 2, scope: !6)
!16 = !DILocation(line: 91, column: 2, scope: !6)
!17 = !DILocation(line: 92, column: 2, scope: !6)
!18 = !DILocation(line: 93, column: 2, scope: !6)
!19 = !DILocation(line: 94, column: 2, scope: !6)
!20 = !DILocation(line: 95, column: 2, scope: !6)
!21 = !DILocation(line: 96, column: 2, scope: !6)
!22 = !DILocation(line: 97, column: 2, scope: !6)
!23 = !DILocation(line: 98, column: 2, scope: !6)
!24 = !DILocation(line: 99, column: 9, scope: !6)
!25 = !DILocation(line: 100, column: 2, scope: !6)
!26 = !DILocation(line: 101, column: 2, scope: !6)
!27 = !DILocation(line: 102, column: 9, scope: !6)
!28 = !DILocation(line: 104, column: 2, scope: !6)
!29 = !DILocation(line: 105, column: 2, scope: !6)
!30 = !DILocation(line: 107, column: 2, scope: !6)
!31 = !DILocation(line: 108, column: 1, scope: !6)
!32 = distinct !DISubprogram(name: "fe_common_irc_deinit", scope: !7, file: !7, line: 110, type: !8, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!33 = !DILocation(line: 112, column: 2, scope: !32)
!34 = !DILocation(line: 114, column: 2, scope: !32)
!35 = !DILocation(line: 115, column: 2, scope: !32)
!36 = !DILocation(line: 116, column: 2, scope: !32)
!37 = !DILocation(line: 117, column: 2, scope: !32)
!38 = !DILocation(line: 118, column: 2, scope: !32)
!39 = !DILocation(line: 119, column: 2, scope: !32)
!40 = !DILocation(line: 120, column: 2, scope: !32)
!41 = !DILocation(line: 121, column: 2, scope: !32)
!42 = !DILocation(line: 122, column: 2, scope: !32)
!43 = !DILocation(line: 123, column: 2, scope: !32)
!44 = !DILocation(line: 124, column: 2, scope: !32)
!45 = !DILocation(line: 125, column: 2, scope: !32)
!46 = !DILocation(line: 126, column: 9, scope: !32)
!47 = !DILocation(line: 127, column: 2, scope: !32)
!48 = !DILocation(line: 128, column: 2, scope: !32)
!49 = !DILocation(line: 129, column: 9, scope: !32)
!50 = !DILocation(line: 131, column: 2, scope: !32)
!51 = !DILocation(line: 132, column: 1, scope: !32)
