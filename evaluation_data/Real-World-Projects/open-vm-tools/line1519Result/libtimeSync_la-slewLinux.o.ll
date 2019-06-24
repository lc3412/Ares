; ModuleID = './libtimeSync_la-slewLinux.o.i'
source_filename = "./libtimeSync_la-slewLinux.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timex = type { i32, i64, i64, i64, i64, i32, i64, i64, i64, %struct.timeval, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"timeSync\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"adjtimex failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"time slew end\0A\00", align 1
@TimeSync_Slew.startTime = internal global i64 0, align 8
@TimeSync_Slew.tickLength = internal global i64 0, align 8
@TimeSync_Slew.deltaRequested = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"time slew start: %ld\0A\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @TimeSync_DisableTimeSlew() #0 !dbg !35 {
  %1 = alloca i8, align 1
  %2 = alloca %struct.timex, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.timex* %2, metadata !38, metadata !73), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %3, metadata !75, metadata !73), !dbg !76
  %4 = getelementptr inbounds %struct.timex, %struct.timex* %2, i32 0, i32 0, !dbg !77
  store i32 16384, i32* %4, align 8, !dbg !78
  %5 = getelementptr inbounds %struct.timex, %struct.timex* %2, i32 0, i32 10, !dbg !79
  store i64 10000, i64* %5, align 8, !dbg !80
  %6 = call i32 @adjtimex(%struct.timex* %2) #5, !dbg !81
  store i32 %6, i32* %3, align 4, !dbg !82
  %7 = load i32, i32* %3, align 4, !dbg !83
  %8 = icmp eq i32 %7, -1, !dbg !85
  br i1 %8, label %9, label %13, !dbg !86

; <label>:9:                                      ; preds = %0
  %10 = call i32* @__errno_location() #1, !dbg !87
  %11 = load i32, i32* %10, align 4, !dbg !89
  %12 = call i8* @strerror(i32 %11) #5, !dbg !90
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %12), !dbg !92
  store i8 0, i8* %1, align 1, !dbg !94
  br label %14, !dbg !94

; <label>:13:                                     ; preds = %0
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !95
  store i8 1, i8* %1, align 1, !dbg !96
  br label %14, !dbg !96

; <label>:14:                                     ; preds = %13, %9
  %15 = load i8, i8* %1, align 1, !dbg !97
  ret i8 %15, !dbg !97
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @adjtimex(%struct.timex*) #2

declare void @g_log(i8*, i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define signext i8 @TimeSync_Slew(i64, i64, i64*) #0 !dbg !17 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.timex, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !98, metadata !73), !dbg !99
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !100, metadata !73), !dbg !101
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !102, metadata !73), !dbg !103
  call void @llvm.dbg.declare(metadata %struct.timex* %8, metadata !104, metadata !73), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %9, metadata !106, metadata !73), !dbg !107
  call void @llvm.dbg.declare(metadata i64* %10, metadata !108, metadata !73), !dbg !109
  %13 = call signext i8 @TimeSync_GetCurrentTime(i64* %10), !dbg !110
  %14 = icmp ne i8 %13, 0, !dbg !110
  br i1 %14, label %16, label %15, !dbg !112

; <label>:15:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !113
  br label %65, !dbg !113

; <label>:16:                                     ; preds = %3
  %17 = load i64, i64* @TimeSync_Slew.startTime, align 8, !dbg !115
  %18 = icmp ne i64 %17, 0, !dbg !117
  br i1 %18, label %19, label %33, !dbg !118

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i64* %11, metadata !119, metadata !73), !dbg !121
  %20 = load i64, i64* %10, align 8, !dbg !122
  %21 = load i64, i64* @TimeSync_Slew.startTime, align 8, !dbg !123
  %22 = sub nsw i64 %20, %21, !dbg !124
  %23 = load i64, i64* @TimeSync_Slew.tickLength, align 8, !dbg !125
  %24 = sdiv i64 %22, %23, !dbg !126
  store i64 %24, i64* %11, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i64* %12, metadata !127, metadata !73), !dbg !128
  %25 = load i64, i64* %11, align 8, !dbg !129
  %26 = load i64, i64* @TimeSync_Slew.tickLength, align 8, !dbg !130
  %27 = sub nsw i64 %26, 10000, !dbg !131
  %28 = mul nsw i64 %25, %27, !dbg !132
  store i64 %28, i64* %12, align 8, !dbg !128
  %29 = load i64, i64* @TimeSync_Slew.deltaRequested, align 8, !dbg !133
  %30 = load i64, i64* %12, align 8, !dbg !134
  %31 = sub nsw i64 %29, %30, !dbg !135
  %32 = load i64*, i64** %7, align 8, !dbg !136
  store i64 %31, i64* %32, align 8, !dbg !137
  br label %33, !dbg !138

; <label>:33:                                     ; preds = %19, %16
  %34 = load i64, i64* %6, align 8, !dbg !139
  %35 = load i64, i64* %5, align 8, !dbg !140
  %36 = add nsw i64 %34, %35, !dbg !141
  %37 = load i64, i64* %6, align 8, !dbg !142
  %38 = sdiv i64 %37, 1000000, !dbg !143
  %39 = mul nsw i64 %38, 100, !dbg !144
  %40 = sdiv i64 %36, %39, !dbg !145
  store i64 %40, i64* @TimeSync_Slew.tickLength, align 8, !dbg !146
  %41 = load i64, i64* @TimeSync_Slew.tickLength, align 8, !dbg !147
  %42 = icmp sgt i64 %41, 11000, !dbg !149
  br i1 %42, label %43, label %44, !dbg !150

; <label>:43:                                     ; preds = %33
  store i64 11000, i64* @TimeSync_Slew.tickLength, align 8, !dbg !151
  br label %49, !dbg !153

; <label>:44:                                     ; preds = %33
  %45 = load i64, i64* @TimeSync_Slew.tickLength, align 8, !dbg !154
  %46 = icmp slt i64 %45, 9000, !dbg !157
  br i1 %46, label %47, label %48, !dbg !154

; <label>:47:                                     ; preds = %44
  store i64 9000, i64* @TimeSync_Slew.tickLength, align 8, !dbg !158
  br label %48, !dbg !160

; <label>:48:                                     ; preds = %47, %44
  br label %49

; <label>:49:                                     ; preds = %48, %43
  %50 = load i64, i64* @TimeSync_Slew.tickLength, align 8, !dbg !161
  %51 = getelementptr inbounds %struct.timex, %struct.timex* %8, i32 0, i32 10, !dbg !162
  store i64 %50, i64* %51, align 8, !dbg !163
  %52 = getelementptr inbounds %struct.timex, %struct.timex* %8, i32 0, i32 0, !dbg !164
  store i32 16384, i32* %52, align 8, !dbg !165
  %53 = load i64, i64* %10, align 8, !dbg !166
  store i64 %53, i64* @TimeSync_Slew.startTime, align 8, !dbg !167
  %54 = load i64, i64* %5, align 8, !dbg !168
  store i64 %54, i64* @TimeSync_Slew.deltaRequested, align 8, !dbg !169
  %55 = call i32 @adjtimex(%struct.timex* %8) #5, !dbg !170
  store i32 %55, i32* %9, align 4, !dbg !171
  %56 = load i32, i32* %9, align 4, !dbg !172
  %57 = icmp eq i32 %56, -1, !dbg !174
  br i1 %57, label %58, label %62, !dbg !175

; <label>:58:                                     ; preds = %49
  store i64 0, i64* @TimeSync_Slew.startTime, align 8, !dbg !176
  %59 = call i32* @__errno_location() #1, !dbg !178
  %60 = load i32, i32* %59, align 4, !dbg !179
  %61 = call i8* @strerror(i32 %60) #5, !dbg !180
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %61), !dbg !182
  store i8 0, i8* %4, align 1, !dbg !184
  br label %65, !dbg !184

; <label>:62:                                     ; preds = %49
  %63 = getelementptr inbounds %struct.timex, %struct.timex* %8, i32 0, i32 10, !dbg !185
  %64 = load i64, i64* %63, align 8, !dbg !185
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i64 %64), !dbg !186
  store i8 1, i8* %4, align 1, !dbg !187
  br label %65, !dbg !187

; <label>:65:                                     ; preds = %62, %58, %15
  %66 = load i8, i8* %4, align 1, !dbg !188
  ret i8 %66, !dbg !188
}

declare signext i8 @TimeSync_GetCurrentTime(i64*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !15)
!1 = !DIFile(filename: "libtimeSync_la-slewLinux.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1519")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1519")
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
!15 = !{!16, !30, !31}
!16 = distinct !DIGlobalVariable(name: "startTime", scope: !17, file: !18, line: 112, type: !24, isLocal: true, isDefinition: true, variable: i64* @TimeSync_Slew.startTime)
!17 = distinct !DISubprogram(name: "TimeSync_Slew", scope: !18, file: !18, line: 108, type: !19, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !29)
!18 = !DIFile(filename: "slewLinux.c", directory: "/home/lichi/Desktop/open-vm-tools/line1519")
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !24, !24, !28}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !22, line: 230, baseType: !23)
!22 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1519")
!23 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !22, line: 172, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !26, line: 40, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1519")
!27 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!29 = !{}
!30 = distinct !DIGlobalVariable(name: "tickLength", scope: !17, file: !18, line: 113, type: !24, isLocal: true, isDefinition: true, variable: i64* @TimeSync_Slew.tickLength)
!31 = distinct !DIGlobalVariable(name: "deltaRequested", scope: !17, file: !18, line: 114, type: !24, isLocal: true, isDefinition: true, variable: i64* @TimeSync_Slew.deltaRequested)
!32 = !{i32 2, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!35 = distinct !DISubprogram(name: "TimeSync_DisableTimeSlew", scope: !18, file: !18, line: 65, type: !36, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !29)
!36 = !DISubroutineType(types: !37)
!37 = !{!21}
!38 = !DILocalVariable(name: "tx", scope: !35, file: !18, line: 67, type: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timex", file: !40, line: 25, size: 1664, align: 64, elements: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/timex.h", directory: "/home/lichi/Desktop/open-vm-tools/line1519")
!41 = !{!42, !44, !47, !48, !49, !50, !52, !53, !54, !55, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !39, file: !40, line: 27, baseType: !43, size: 32, align: 32)
!43 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !39, file: !40, line: 28, baseType: !45, size: 64, align: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !46, line: 175, baseType: !27)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1519")
!47 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !39, file: !40, line: 29, baseType: !45, size: 64, align: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "maxerror", scope: !39, file: !40, line: 30, baseType: !45, size: 64, align: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "esterror", scope: !39, file: !40, line: 31, baseType: !45, size: 64, align: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !39, file: !40, line: 32, baseType: !51, size: 32, align: 32, offset: 320)
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !39, file: !40, line: 33, baseType: !45, size: 64, align: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !39, file: !40, line: 34, baseType: !45, size: 64, align: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tolerance", scope: !39, file: !40, line: 35, baseType: !45, size: 64, align: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !39, file: !40, line: 36, baseType: !56, size: 128, align: 64, offset: 576)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !57, line: 30, size: 128, align: 64, elements: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1519")
!58 = !{!59, !61}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !56, file: !57, line: 32, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !46, line: 139, baseType: !27)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !56, file: !57, line: 33, baseType: !62, size: 64, align: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !46, line: 141, baseType: !27)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !39, file: !40, line: 37, baseType: !45, size: 64, align: 64, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ppsfreq", scope: !39, file: !40, line: 38, baseType: !45, size: 64, align: 64, offset: 768)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "jitter", scope: !39, file: !40, line: 39, baseType: !45, size: 64, align: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !39, file: !40, line: 40, baseType: !51, size: 32, align: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "stabil", scope: !39, file: !40, line: 41, baseType: !45, size: 64, align: 64, offset: 960)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "jitcnt", scope: !39, file: !40, line: 42, baseType: !45, size: 64, align: 64, offset: 1024)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "calcnt", scope: !39, file: !40, line: 43, baseType: !45, size: 64, align: 64, offset: 1088)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "errcnt", scope: !39, file: !40, line: 44, baseType: !45, size: 64, align: 64, offset: 1152)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "stbcnt", scope: !39, file: !40, line: 45, baseType: !45, size: 64, align: 64, offset: 1216)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tai", scope: !39, file: !40, line: 47, baseType: !51, size: 32, align: 32, offset: 1280)
!73 = !DIExpression()
!74 = !DILocation(line: 67, column: 17, scope: !35)
!75 = !DILocalVariable(name: "error", scope: !35, file: !18, line: 68, type: !51)
!76 = !DILocation(line: 68, column: 8, scope: !35)
!77 = !DILocation(line: 70, column: 7, scope: !35)
!78 = !DILocation(line: 70, column: 13, scope: !35)
!79 = !DILocation(line: 71, column: 7, scope: !35)
!80 = !DILocation(line: 71, column: 12, scope: !35)
!81 = !DILocation(line: 73, column: 12, scope: !35)
!82 = !DILocation(line: 73, column: 10, scope: !35)
!83 = !DILocation(line: 74, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !35, file: !18, line: 74, column: 8)
!85 = !DILocation(line: 74, column: 14, scope: !84)
!86 = !DILocation(line: 74, column: 8, scope: !35)
!87 = !DILocation(line: 75, column: 8, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !18, line: 74, column: 21)
!89 = !DILocation(line: 75, column: 7, scope: !88)
!90 = !DILocation(line: 75, column: 70, scope: !91)
!91 = !DILexicalBlockFile(scope: !88, file: !18, discriminator: 1)
!92 = !DILocation(line: 75, column: 7, scope: !93)
!93 = !DILexicalBlockFile(scope: !88, file: !18, discriminator: 2)
!94 = !DILocation(line: 76, column: 7, scope: !88)
!95 = !DILocation(line: 78, column: 4, scope: !35)
!96 = !DILocation(line: 79, column: 4, scope: !35)
!97 = !DILocation(line: 80, column: 1, scope: !35)
!98 = !DILocalVariable(name: "delta", arg: 1, scope: !17, file: !18, line: 108, type: !24)
!99 = !DILocation(line: 108, column: 21, scope: !17)
!100 = !DILocalVariable(name: "timeSyncPeriod", arg: 2, scope: !17, file: !18, line: 109, type: !24)
!101 = !DILocation(line: 109, column: 21, scope: !17)
!102 = !DILocalVariable(name: "remaining", arg: 3, scope: !17, file: !18, line: 110, type: !28)
!103 = !DILocation(line: 110, column: 22, scope: !17)
!104 = !DILocalVariable(name: "tx", scope: !17, file: !18, line: 116, type: !39)
!105 = !DILocation(line: 116, column: 17, scope: !17)
!106 = !DILocalVariable(name: "error", scope: !17, file: !18, line: 117, type: !51)
!107 = !DILocation(line: 117, column: 8, scope: !17)
!108 = !DILocalVariable(name: "now", scope: !17, file: !18, line: 118, type: !24)
!109 = !DILocation(line: 118, column: 10, scope: !17)
!110 = !DILocation(line: 122, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !17, file: !18, line: 122, column: 8)
!112 = !DILocation(line: 122, column: 8, scope: !17)
!113 = !DILocation(line: 123, column: 7, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !18, line: 122, column: 40)
!115 = !DILocation(line: 126, column: 8, scope: !116)
!116 = distinct !DILexicalBlock(scope: !17, file: !18, line: 126, column: 8)
!117 = !DILocation(line: 126, column: 18, scope: !116)
!118 = !DILocation(line: 126, column: 8, scope: !17)
!119 = !DILocalVariable(name: "ticksElapsed", scope: !120, file: !18, line: 127, type: !24)
!120 = distinct !DILexicalBlock(scope: !116, file: !18, line: 126, column: 24)
!121 = !DILocation(line: 127, column: 13, scope: !120)
!122 = !DILocation(line: 127, column: 29, scope: !120)
!123 = !DILocation(line: 127, column: 35, scope: !120)
!124 = !DILocation(line: 127, column: 33, scope: !120)
!125 = !DILocation(line: 127, column: 48, scope: !120)
!126 = !DILocation(line: 127, column: 46, scope: !120)
!127 = !DILocalVariable(name: "deltaApplied", scope: !120, file: !18, line: 128, type: !24)
!128 = !DILocation(line: 128, column: 13, scope: !120)
!129 = !DILocation(line: 128, column: 28, scope: !120)
!130 = !DILocation(line: 128, column: 44, scope: !120)
!131 = !DILocation(line: 128, column: 55, scope: !120)
!132 = !DILocation(line: 128, column: 41, scope: !120)
!133 = !DILocation(line: 129, column: 20, scope: !120)
!134 = !DILocation(line: 129, column: 37, scope: !120)
!135 = !DILocation(line: 129, column: 35, scope: !120)
!136 = !DILocation(line: 129, column: 8, scope: !120)
!137 = !DILocation(line: 129, column: 18, scope: !120)
!138 = !DILocation(line: 130, column: 4, scope: !120)
!139 = !DILocation(line: 139, column: 8, scope: !17)
!140 = !DILocation(line: 139, column: 25, scope: !17)
!141 = !DILocation(line: 139, column: 23, scope: !17)
!142 = !DILocation(line: 139, column: 36, scope: !17)
!143 = !DILocation(line: 139, column: 51, scope: !17)
!144 = !DILocation(line: 139, column: 62, scope: !17)
!145 = !DILocation(line: 139, column: 32, scope: !17)
!146 = !DILocation(line: 138, column: 15, scope: !17)
!147 = !DILocation(line: 140, column: 8, scope: !148)
!148 = distinct !DILexicalBlock(scope: !17, file: !18, line: 140, column: 8)
!149 = !DILocation(line: 140, column: 19, scope: !148)
!150 = !DILocation(line: 140, column: 8, scope: !17)
!151 = !DILocation(line: 141, column: 18, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !18, line: 140, column: 39)
!153 = !DILocation(line: 142, column: 4, scope: !152)
!154 = !DILocation(line: 142, column: 15, scope: !155)
!155 = !DILexicalBlockFile(scope: !156, file: !18, discriminator: 1)
!156 = distinct !DILexicalBlock(scope: !148, file: !18, line: 142, column: 15)
!157 = !DILocation(line: 142, column: 26, scope: !155)
!158 = !DILocation(line: 143, column: 18, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !18, line: 142, column: 45)
!160 = !DILocation(line: 144, column: 4, scope: !159)
!161 = !DILocation(line: 145, column: 14, scope: !17)
!162 = !DILocation(line: 145, column: 7, scope: !17)
!163 = !DILocation(line: 145, column: 12, scope: !17)
!164 = !DILocation(line: 146, column: 7, scope: !17)
!165 = !DILocation(line: 146, column: 13, scope: !17)
!166 = !DILocation(line: 150, column: 16, scope: !17)
!167 = !DILocation(line: 150, column: 14, scope: !17)
!168 = !DILocation(line: 151, column: 21, scope: !17)
!169 = !DILocation(line: 151, column: 19, scope: !17)
!170 = !DILocation(line: 153, column: 12, scope: !17)
!171 = !DILocation(line: 153, column: 10, scope: !17)
!172 = !DILocation(line: 154, column: 8, scope: !173)
!173 = distinct !DILexicalBlock(scope: !17, file: !18, line: 154, column: 8)
!174 = !DILocation(line: 154, column: 14, scope: !173)
!175 = !DILocation(line: 154, column: 8, scope: !17)
!176 = !DILocation(line: 155, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !18, line: 154, column: 21)
!178 = !DILocation(line: 156, column: 8, scope: !177)
!179 = !DILocation(line: 156, column: 7, scope: !177)
!180 = !DILocation(line: 156, column: 70, scope: !181)
!181 = !DILexicalBlockFile(scope: !177, file: !18, discriminator: 1)
!182 = !DILocation(line: 156, column: 7, scope: !183)
!183 = !DILexicalBlockFile(scope: !177, file: !18, discriminator: 2)
!184 = !DILocation(line: 157, column: 7, scope: !177)
!185 = !DILocation(line: 159, column: 71, scope: !17)
!186 = !DILocation(line: 159, column: 4, scope: !17)
!187 = !DILocation(line: 160, column: 4, scope: !17)
!188 = !DILocation(line: 161, column: 1, scope: !17)
