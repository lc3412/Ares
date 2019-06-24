; ModuleID = './libvmtools_la-vmxLogger.o.i'
source_filename = "./libvmtools_la-vmxLogger.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GlibLogger = type { i32, i32, void (i8*, i32, i8*, i8*)*, void (i8*)* }
%struct.VMXLoggerData = type { %struct.GlibLogger, %struct._RpcChannel* }
%struct._RpcChannel = type opaque

@.str = private unnamed_addr constant [7 x i8] c"log %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct.GlibLogger* @VMToolsCreateVMXLogger() #0 !dbg !57 {
  %1 = alloca %struct.VMXLoggerData*, align 8
  call void @llvm.dbg.declare(metadata %struct.VMXLoggerData** %1, metadata !62, metadata !63), !dbg !64
  %2 = call noalias i8* @g_malloc0_n(i64 1, i64 32), !dbg !65
  %3 = bitcast i8* %2 to %struct.VMXLoggerData*, !dbg !66
  store %struct.VMXLoggerData* %3, %struct.VMXLoggerData** %1, align 8, !dbg !64
  %4 = load %struct.VMXLoggerData*, %struct.VMXLoggerData** %1, align 8, !dbg !67
  %5 = getelementptr inbounds %struct.VMXLoggerData, %struct.VMXLoggerData* %4, i32 0, i32 0, !dbg !68
  %6 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %5, i32 0, i32 2, !dbg !69
  store void (i8*, i32, i8*, i8*)* @VMXLoggerLog, void (i8*, i32, i8*, i8*)** %6, align 8, !dbg !70
  %7 = load %struct.VMXLoggerData*, %struct.VMXLoggerData** %1, align 8, !dbg !71
  %8 = getelementptr inbounds %struct.VMXLoggerData, %struct.VMXLoggerData* %7, i32 0, i32 0, !dbg !72
  %9 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %8, i32 0, i32 1, !dbg !73
  store i32 1, i32* %9, align 4, !dbg !74
  %10 = load %struct.VMXLoggerData*, %struct.VMXLoggerData** %1, align 8, !dbg !75
  %11 = getelementptr inbounds %struct.VMXLoggerData, %struct.VMXLoggerData* %10, i32 0, i32 0, !dbg !76
  %12 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %11, i32 0, i32 0, !dbg !77
  store i32 1, i32* %12, align 8, !dbg !78
  %13 = load %struct.VMXLoggerData*, %struct.VMXLoggerData** %1, align 8, !dbg !79
  %14 = getelementptr inbounds %struct.VMXLoggerData, %struct.VMXLoggerData* %13, i32 0, i32 0, !dbg !80
  %15 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %14, i32 0, i32 3, !dbg !81
  store void (i8*)* @VMXLoggerDestroy, void (i8*)** %15, align 8, !dbg !82
  %16 = call %struct._RpcChannel* @RpcChannel_New(), !dbg !83
  %17 = load %struct.VMXLoggerData*, %struct.VMXLoggerData** %1, align 8, !dbg !84
  %18 = getelementptr inbounds %struct.VMXLoggerData, %struct.VMXLoggerData* %17, i32 0, i32 1, !dbg !85
  store %struct._RpcChannel* %16, %struct._RpcChannel** %18, align 8, !dbg !86
  %19 = load %struct.VMXLoggerData*, %struct.VMXLoggerData** %1, align 8, !dbg !87
  %20 = getelementptr inbounds %struct.VMXLoggerData, %struct.VMXLoggerData* %19, i32 0, i32 0, !dbg !88
  ret %struct.GlibLogger* %20, !dbg !89
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @VMXLoggerLog(i8*, i32, i8*, i8*) #0 !dbg !90 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.VMXLoggerData*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !91, metadata !63), !dbg !92
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !93, metadata !63), !dbg !94
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !95, metadata !63), !dbg !96
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !97, metadata !63), !dbg !98
  call void @llvm.dbg.declare(metadata %struct.VMXLoggerData** %9, metadata !99, metadata !63), !dbg !100
  %12 = load i8*, i8** %8, align 8, !dbg !101
  %13 = bitcast i8* %12 to %struct.VMXLoggerData*, !dbg !101
  store %struct.VMXLoggerData* %13, %struct.VMXLoggerData** %9, align 8, !dbg !100
  call void @VMTools_AcquireLogStateLock(), !dbg !102
  call void @VMTools_StopLogging(), !dbg !103
  %14 = load %struct.VMXLoggerData*, %struct.VMXLoggerData** %9, align 8, !dbg !104
  %15 = getelementptr inbounds %struct.VMXLoggerData, %struct.VMXLoggerData* %14, i32 0, i32 1, !dbg !106
  %16 = load %struct._RpcChannel*, %struct._RpcChannel** %15, align 8, !dbg !106
  %17 = call i32 @RpcChannel_Start(%struct._RpcChannel* %16), !dbg !107
  %18 = icmp ne i32 %17, 0, !dbg !107
  br i1 %18, label %19, label %33, !dbg !108

; <label>:19:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i8** %10, metadata !109, metadata !63), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %11, metadata !113, metadata !63), !dbg !114
  %20 = load i8*, i8** %7, align 8, !dbg !115
  %21 = call i32 (i8**, i8*, ...) @VMToolsAsprintf(i8** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %20), !dbg !116
  store i32 %21, i32* %11, align 4, !dbg !114
  %22 = load %struct.VMXLoggerData*, %struct.VMXLoggerData** %9, align 8, !dbg !117
  %23 = getelementptr inbounds %struct.VMXLoggerData, %struct.VMXLoggerData* %22, i32 0, i32 1, !dbg !118
  %24 = load %struct._RpcChannel*, %struct._RpcChannel** %23, align 8, !dbg !118
  %25 = load i8*, i8** %10, align 8, !dbg !119
  %26 = load i32, i32* %11, align 4, !dbg !120
  %27 = sext i32 %26 to i64, !dbg !120
  %28 = call i32 @RpcChannel_Send(%struct._RpcChannel* %24, i8* %25, i64 %27, i8** null, i64* null), !dbg !121
  %29 = load i8*, i8** %10, align 8, !dbg !122
  call void @g_free(i8* %29), !dbg !123
  %30 = load %struct.VMXLoggerData*, %struct.VMXLoggerData** %9, align 8, !dbg !124
  %31 = getelementptr inbounds %struct.VMXLoggerData, %struct.VMXLoggerData* %30, i32 0, i32 1, !dbg !125
  %32 = load %struct._RpcChannel*, %struct._RpcChannel** %31, align 8, !dbg !125
  call void @RpcChannel_Stop(%struct._RpcChannel* %32), !dbg !126
  br label %33, !dbg !127

; <label>:33:                                     ; preds = %19, %4
  call void @VMTools_RestartLogging(), !dbg !128
  call void @VMTools_ReleaseLogStateLock(), !dbg !129
  ret void, !dbg !130
}

; Function Attrs: nounwind uwtable
define internal void @VMXLoggerDestroy(i8*) #0 !dbg !131 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.VMXLoggerData*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !132, metadata !63), !dbg !133
  call void @llvm.dbg.declare(metadata %struct.VMXLoggerData** %3, metadata !134, metadata !63), !dbg !135
  %4 = load i8*, i8** %2, align 8, !dbg !136
  %5 = bitcast i8* %4 to %struct.VMXLoggerData*, !dbg !136
  store %struct.VMXLoggerData* %5, %struct.VMXLoggerData** %3, align 8, !dbg !135
  %6 = load %struct.VMXLoggerData*, %struct.VMXLoggerData** %3, align 8, !dbg !137
  %7 = getelementptr inbounds %struct.VMXLoggerData, %struct.VMXLoggerData* %6, i32 0, i32 1, !dbg !138
  %8 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !138
  %9 = call i32 @RpcChannel_Destroy(%struct._RpcChannel* %8), !dbg !139
  %10 = load %struct.VMXLoggerData*, %struct.VMXLoggerData** %3, align 8, !dbg !140
  %11 = bitcast %struct.VMXLoggerData* %10 to i8*, !dbg !140
  call void @g_free(i8* %11), !dbg !141
  ret void, !dbg !142
}

declare %struct._RpcChannel* @RpcChannel_New() #2

declare void @VMTools_AcquireLogStateLock() #2

declare void @VMTools_StopLogging() #2

declare i32 @RpcChannel_Start(%struct._RpcChannel*) #2

declare i32 @VMToolsAsprintf(i8**, i8*, ...) #2

declare i32 @RpcChannel_Send(%struct._RpcChannel*, i8*, i64, i8**, i64*) #2

declare void @g_free(i8*) #2

declare void @RpcChannel_Stop(%struct._RpcChannel*) #2

declare void @VMTools_RestartLogging() #2

declare void @VMTools_ReleaseLogStateLock() #2

declare i32 @RpcChannel_Destroy(%struct._RpcChannel*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!54, !55}
!llvm.ident = !{!56}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15)
!1 = !DIFile(filename: "libvmtools_la-vmxLogger.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1164")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1164")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMXLoggerData", file: !18, line: 31, baseType: !19)
!18 = !DIFile(filename: "vmxLogger.c", directory: "/home/lichi/Desktop/open-vm-tools/line1164")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VMXLoggerData", file: !18, line: 28, size: 256, align: 64, elements: !20)
!20 = !{!21, !49}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !19, file: !18, line: 29, baseType: !22, size: 192, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "GlibLogger", file: !23, line: 57, baseType: !24)
!23 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/glibUtils.h", directory: "/home/lichi/Desktop/open-vm-tools/line1164")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GlibLogger", file: !23, line: 52, size: 192, align: 64, elements: !25)
!25 = !{!26, !31, !32, !44}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !24, file: !23, line: 53, baseType: !27, size: 32, align: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !28, line: 50, baseType: !29)
!28 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1164")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !28, line: 49, baseType: !30)
!30 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "addsTimestamp", scope: !24, file: !23, line: 54, baseType: !27, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "logfn", scope: !24, file: !23, line: 55, baseType: !33, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLogFunc", file: !4, line: 71, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !41, !37, !42}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !28, line: 46, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLogLevelFlags", file: !4, line: 66, baseType: !3)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !28, line: 77, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "dtor", scope: !24, file: !23, line: 56, baseType: !45, size: 64, align: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDestroyNotify", file: !28, line: 87, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !42}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !19, file: !18, line: 30, baseType: !50, size: 64, align: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !52, line: 48, baseType: !53)
!52 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1164")
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !52, line: 48, flags: DIFlagFwdDecl)
!54 = !{i32 2, !"Dwarf Version", i32 4}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!57 = distinct !DISubprogram(name: "VMToolsCreateVMXLogger", scope: !18, file: !18, line: 117, type: !58, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!58 = !DISubroutineType(types: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!61 = !{}
!62 = !DILocalVariable(name: "data", scope: !57, file: !18, line: 119, type: !16)
!63 = !DIExpression()
!64 = !DILocation(line: 119, column: 19, scope: !57)
!65 = !DILocation(line: 119, column: 45, scope: !57)
!66 = !DILocation(line: 119, column: 27, scope: !57)
!67 = !DILocation(line: 120, column: 4, scope: !57)
!68 = !DILocation(line: 120, column: 10, scope: !57)
!69 = !DILocation(line: 120, column: 18, scope: !57)
!70 = !DILocation(line: 120, column: 24, scope: !57)
!71 = !DILocation(line: 121, column: 4, scope: !57)
!72 = !DILocation(line: 121, column: 10, scope: !57)
!73 = !DILocation(line: 121, column: 18, scope: !57)
!74 = !DILocation(line: 121, column: 32, scope: !57)
!75 = !DILocation(line: 122, column: 4, scope: !57)
!76 = !DILocation(line: 122, column: 10, scope: !57)
!77 = !DILocation(line: 122, column: 18, scope: !57)
!78 = !DILocation(line: 122, column: 25, scope: !57)
!79 = !DILocation(line: 123, column: 4, scope: !57)
!80 = !DILocation(line: 123, column: 10, scope: !57)
!81 = !DILocation(line: 123, column: 18, scope: !57)
!82 = !DILocation(line: 123, column: 23, scope: !57)
!83 = !DILocation(line: 124, column: 17, scope: !57)
!84 = !DILocation(line: 124, column: 4, scope: !57)
!85 = !DILocation(line: 124, column: 10, scope: !57)
!86 = !DILocation(line: 124, column: 15, scope: !57)
!87 = !DILocation(line: 125, column: 12, scope: !57)
!88 = !DILocation(line: 125, column: 18, scope: !57)
!89 = !DILocation(line: 125, column: 4, scope: !57)
!90 = distinct !DISubprogram(name: "VMXLoggerLog", scope: !18, file: !18, line: 55, type: !35, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!91 = !DILocalVariable(name: "domain", arg: 1, scope: !90, file: !18, line: 55, type: !37)
!92 = !DILocation(line: 55, column: 27, scope: !90)
!93 = !DILocalVariable(name: "level", arg: 2, scope: !90, file: !18, line: 56, type: !41)
!94 = !DILocation(line: 56, column: 29, scope: !90)
!95 = !DILocalVariable(name: "message", arg: 3, scope: !90, file: !18, line: 57, type: !37)
!96 = !DILocation(line: 57, column: 27, scope: !90)
!97 = !DILocalVariable(name: "data", arg: 4, scope: !90, file: !18, line: 58, type: !42)
!98 = !DILocation(line: 58, column: 23, scope: !90)
!99 = !DILocalVariable(name: "logger", scope: !90, file: !18, line: 60, type: !16)
!100 = !DILocation(line: 60, column: 19, scope: !90)
!101 = !DILocation(line: 60, column: 28, scope: !90)
!102 = !DILocation(line: 62, column: 4, scope: !90)
!103 = !DILocation(line: 68, column: 4, scope: !90)
!104 = !DILocation(line: 70, column: 25, scope: !105)
!105 = distinct !DILexicalBlock(scope: !90, file: !18, line: 70, column: 8)
!106 = !DILocation(line: 70, column: 33, scope: !105)
!107 = !DILocation(line: 70, column: 8, scope: !105)
!108 = !DILocation(line: 70, column: 8, scope: !90)
!109 = !DILocalVariable(name: "msg", scope: !110, file: !18, line: 71, type: !111)
!110 = distinct !DILexicalBlock(scope: !105, file: !18, line: 70, column: 40)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!112 = !DILocation(line: 71, column: 14, scope: !110)
!113 = !DILocalVariable(name: "cnt", scope: !110, file: !18, line: 72, type: !29)
!114 = !DILocation(line: 72, column: 12, scope: !110)
!115 = !DILocation(line: 72, column: 50, scope: !110)
!116 = !DILocation(line: 72, column: 18, scope: !110)
!117 = !DILocation(line: 74, column: 23, scope: !110)
!118 = !DILocation(line: 74, column: 31, scope: !110)
!119 = !DILocation(line: 74, column: 37, scope: !110)
!120 = !DILocation(line: 74, column: 42, scope: !110)
!121 = !DILocation(line: 74, column: 7, scope: !110)
!122 = !DILocation(line: 76, column: 14, scope: !110)
!123 = !DILocation(line: 76, column: 7, scope: !110)
!124 = !DILocation(line: 77, column: 23, scope: !110)
!125 = !DILocation(line: 77, column: 31, scope: !110)
!126 = !DILocation(line: 77, column: 7, scope: !110)
!127 = !DILocation(line: 78, column: 4, scope: !110)
!128 = !DILocation(line: 80, column: 4, scope: !90)
!129 = !DILocation(line: 81, column: 4, scope: !90)
!130 = !DILocation(line: 82, column: 1, scope: !90)
!131 = distinct !DISubprogram(name: "VMXLoggerDestroy", scope: !18, file: !18, line: 97, type: !47, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!132 = !DILocalVariable(name: "data", arg: 1, scope: !131, file: !18, line: 97, type: !42)
!133 = !DILocation(line: 97, column: 27, scope: !131)
!134 = !DILocalVariable(name: "logger", scope: !131, file: !18, line: 99, type: !16)
!135 = !DILocation(line: 99, column: 19, scope: !131)
!136 = !DILocation(line: 99, column: 28, scope: !131)
!137 = !DILocation(line: 100, column: 23, scope: !131)
!138 = !DILocation(line: 100, column: 31, scope: !131)
!139 = !DILocation(line: 100, column: 4, scope: !131)
!140 = !DILocation(line: 101, column: 11, scope: !131)
!141 = !DILocation(line: 101, column: 4, scope: !131)
!142 = !DILocation(line: 102, column: 1, scope: !131)
