; ModuleID = './libtimeSync_la-timeSyncPosix.o.i'
source_filename = "./libtimeSync_la-timeSyncPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

; Function Attrs: nounwind uwtable
define signext i8 @TimeSync_AddToCurrentTime(i64) #0 !dbg !12 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !18, metadata !19), !dbg !20
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !21, metadata !19), !dbg !30
  call void @llvm.dbg.declare(metadata i64* %5, metadata !31, metadata !19), !dbg !32
  call void @llvm.dbg.declare(metadata i64* %6, metadata !33, metadata !19), !dbg !34
  %7 = call signext i8 @TimeSync_GetCurrentTime(i64* %6), !dbg !35
  %8 = icmp ne i8 %7, 0, !dbg !35
  br i1 %8, label %10, label %9, !dbg !37

; <label>:9:                                      ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !38
  br label %19, !dbg !38

; <label>:10:                                     ; preds = %1
  %11 = load i64, i64* %6, align 8, !dbg !40
  %12 = load i64, i64* %3, align 8, !dbg !41
  %13 = add nsw i64 %11, %12, !dbg !42
  store i64 %13, i64* %5, align 8, !dbg !43
  %14 = load i64, i64* %5, align 8, !dbg !44
  call void @TimeSyncWriteTimeVal(i64 %14, %struct.timeval* %4), !dbg !45
  %15 = call i32 @settimeofday(%struct.timeval* %4, %struct.timezone* null) #4, !dbg !46
  %16 = icmp slt i32 %15, 0, !dbg !48
  br i1 %16, label %17, label %18, !dbg !49

; <label>:17:                                     ; preds = %10
  store i8 0, i8* %2, align 1, !dbg !50
  br label %19, !dbg !50

; <label>:18:                                     ; preds = %10
  store i8 1, i8* %2, align 1, !dbg !52
  br label %19, !dbg !52

; <label>:19:                                     ; preds = %18, %17, %9
  %20 = load i8, i8* %2, align 1, !dbg !53
  ret i8 %20, !dbg !53
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define signext i8 @TimeSync_GetCurrentTime(i64*) #0 !dbg !54 {
  %2 = alloca i8, align 1
  %3 = alloca i64*, align 8
  %4 = alloca %struct.timeval, align 8
  store i64* %0, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !58, metadata !19), !dbg !59
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !60, metadata !19), !dbg !61
  %5 = call i32 @gettimeofday(%struct.timeval* %4, %struct.timezone* null) #4, !dbg !62
  %6 = icmp slt i32 %5, 0, !dbg !64
  br i1 %6, label %7, label %8, !dbg !65

; <label>:7:                                      ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !66
  br label %16, !dbg !66

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !68
  %10 = load i64, i64* %9, align 8, !dbg !68
  %11 = mul nsw i64 %10, 1000000, !dbg !69
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !70
  %13 = load i64, i64* %12, align 8, !dbg !70
  %14 = add nsw i64 %11, %13, !dbg !71
  %15 = load i64*, i64** %3, align 8, !dbg !72
  store i64 %14, i64* %15, align 8, !dbg !73
  store i8 1, i8* %2, align 1, !dbg !74
  br label %16, !dbg !74

; <label>:16:                                     ; preds = %8, %7
  %17 = load i8, i8* %2, align 1, !dbg !75
  ret i8 %17, !dbg !75
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @TimeSyncWriteTimeVal(i64, %struct.timeval*) #2 !dbg !76 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !81, metadata !19), !dbg !82
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval** %4, metadata !83, metadata !19), !dbg !84
  call void @llvm.dbg.declare(metadata i64* %5, metadata !85, metadata !19), !dbg !86
  %7 = load i64, i64* %3, align 8, !dbg !87
  %8 = sdiv i64 %7, 1000000, !dbg !88
  store i64 %8, i64* %5, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i64* %6, metadata !89, metadata !19), !dbg !90
  %9 = load i64, i64* %3, align 8, !dbg !91
  %10 = load i64, i64* %5, align 8, !dbg !92
  %11 = mul nsw i64 %10, 1000000, !dbg !93
  %12 = sub nsw i64 %9, %11, !dbg !94
  store i64 %12, i64* %6, align 8, !dbg !90
  %13 = load i64, i64* %6, align 8, !dbg !95
  %14 = icmp slt i64 %13, 0, !dbg !97
  br i1 %14, label %15, label %20, !dbg !98

; <label>:15:                                     ; preds = %2
  %16 = load i64, i64* %6, align 8, !dbg !99
  %17 = add nsw i64 %16, 1000000, !dbg !99
  store i64 %17, i64* %6, align 8, !dbg !99
  %18 = load i64, i64* %5, align 8, !dbg !101
  %19 = add nsw i64 %18, -1, !dbg !101
  store i64 %19, i64* %5, align 8, !dbg !101
  br label %20, !dbg !102

; <label>:20:                                     ; preds = %15, %2
  %21 = load i64, i64* %5, align 8, !dbg !103
  %22 = load %struct.timeval*, %struct.timeval** %4, align 8, !dbg !104
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0, !dbg !105
  store i64 %21, i64* %23, align 8, !dbg !106
  %24 = load i64, i64* %6, align 8, !dbg !107
  %25 = load %struct.timeval*, %struct.timeval** %4, align 8, !dbg !108
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1, !dbg !109
  store i64 %24, i64* %26, align 8, !dbg !110
  ret void, !dbg !111
}

; Function Attrs: nounwind
declare i32 @settimeofday(%struct.timeval*, %struct.timezone*) #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

; Function Attrs: nounwind uwtable
define signext i8 @TimeSync_IsGuestSyncServiceRunning() #0 !dbg !112 {
  ret i8 0, !dbg !115
}

; Function Attrs: nounwind uwtable
define signext i8 @TimeSync_DoGuestResync(i8*) #0 !dbg !116 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !120, metadata !19), !dbg !121
  ret i8 0, !dbg !122
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "libtimeSync_la-timeSyncPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1514")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !5, line: 172, baseType: !6)
!5 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1514")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 40, baseType: !8)
!7 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1514")
!8 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!12 = distinct !DISubprogram(name: "TimeSync_AddToCurrentTime", scope: !13, file: !13, line: 53, type: !14, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!13 = !DIFile(filename: "timeSyncPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line1514")
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !4}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !5, line: 230, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DILocalVariable(name: "delta", arg: 1, scope: !12, file: !13, line: 53, type: !4)
!19 = !DIExpression()
!20 = !DILocation(line: 53, column: 33, scope: !12)
!21 = !DILocalVariable(name: "tv", scope: !12, file: !13, line: 55, type: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !23, line: 30, size: 128, align: 64, elements: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1514")
!24 = !{!25, !28}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !22, file: !23, line: 32, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !27, line: 139, baseType: !8)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1514")
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !22, file: !23, line: 33, baseType: !29, size: 64, align: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !27, line: 141, baseType: !8)
!30 = !DILocation(line: 55, column: 19, scope: !12)
!31 = !DILocalVariable(name: "newTime", scope: !12, file: !13, line: 56, type: !4)
!32 = !DILocation(line: 56, column: 10, scope: !12)
!33 = !DILocalVariable(name: "now", scope: !12, file: !13, line: 57, type: !4)
!34 = !DILocation(line: 57, column: 10, scope: !12)
!35 = !DILocation(line: 59, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !12, file: !13, line: 59, column: 8)
!37 = !DILocation(line: 59, column: 8, scope: !12)
!38 = !DILocation(line: 60, column: 7, scope: !39)
!39 = distinct !DILexicalBlock(scope: !36, file: !13, line: 59, column: 40)
!40 = !DILocation(line: 63, column: 14, scope: !12)
!41 = !DILocation(line: 63, column: 20, scope: !12)
!42 = !DILocation(line: 63, column: 18, scope: !12)
!43 = !DILocation(line: 63, column: 12, scope: !12)
!44 = !DILocation(line: 78, column: 25, scope: !12)
!45 = !DILocation(line: 78, column: 4, scope: !12)
!46 = !DILocation(line: 80, column: 8, scope: !47)
!47 = distinct !DILexicalBlock(scope: !12, file: !13, line: 80, column: 8)
!48 = !DILocation(line: 80, column: 31, scope: !47)
!49 = !DILocation(line: 80, column: 8, scope: !12)
!50 = !DILocation(line: 81, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !13, line: 80, column: 36)
!52 = !DILocation(line: 84, column: 4, scope: !12)
!53 = !DILocation(line: 85, column: 1, scope: !12)
!54 = distinct !DISubprogram(name: "TimeSync_GetCurrentTime", scope: !13, file: !13, line: 103, type: !55, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{!16, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!58 = !DILocalVariable(name: "now", arg: 1, scope: !54, file: !13, line: 103, type: !57)
!59 = !DILocation(line: 103, column: 32, scope: !54)
!60 = !DILocalVariable(name: "tv", scope: !54, file: !13, line: 105, type: !22)
!61 = !DILocation(line: 105, column: 19, scope: !54)
!62 = !DILocation(line: 109, column: 8, scope: !63)
!63 = distinct !DILexicalBlock(scope: !54, file: !13, line: 109, column: 8)
!64 = !DILocation(line: 109, column: 31, scope: !63)
!65 = !DILocation(line: 109, column: 8, scope: !54)
!66 = !DILocation(line: 110, column: 7, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !13, line: 109, column: 36)
!68 = !DILocation(line: 113, column: 21, scope: !54)
!69 = !DILocation(line: 113, column: 28, scope: !54)
!70 = !DILocation(line: 113, column: 50, scope: !54)
!71 = !DILocation(line: 113, column: 38, scope: !54)
!72 = !DILocation(line: 113, column: 5, scope: !54)
!73 = !DILocation(line: 113, column: 9, scope: !54)
!74 = !DILocation(line: 115, column: 4, scope: !54)
!75 = !DILocation(line: 116, column: 1, scope: !54)
!76 = distinct !DISubprogram(name: "TimeSyncWriteTimeVal", scope: !77, file: !77, line: 46, type: !78, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!77 = !DIFile(filename: "timeSyncPosix.h", directory: "/home/lichi/Desktop/open-vm-tools/line1514")
!78 = !DISubroutineType(types: !79)
!79 = !{null, !4, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!81 = !DILocalVariable(name: "time", arg: 1, scope: !76, file: !77, line: 46, type: !4)
!82 = !DILocation(line: 46, column: 28, scope: !76)
!83 = !DILocalVariable(name: "tv", arg: 2, scope: !76, file: !77, line: 46, type: !80)
!84 = !DILocation(line: 46, column: 50, scope: !76)
!85 = !DILocalVariable(name: "sec", scope: !76, file: !77, line: 48, type: !4)
!86 = !DILocation(line: 48, column: 10, scope: !76)
!87 = !DILocation(line: 48, column: 16, scope: !76)
!88 = !DILocation(line: 48, column: 21, scope: !76)
!89 = !DILocalVariable(name: "usec", scope: !76, file: !77, line: 49, type: !4)
!90 = !DILocation(line: 49, column: 10, scope: !76)
!91 = !DILocation(line: 49, column: 17, scope: !76)
!92 = !DILocation(line: 49, column: 24, scope: !76)
!93 = !DILocation(line: 49, column: 28, scope: !76)
!94 = !DILocation(line: 49, column: 22, scope: !76)
!95 = !DILocation(line: 50, column: 8, scope: !96)
!96 = distinct !DILexicalBlock(scope: !76, file: !77, line: 50, column: 8)
!97 = !DILocation(line: 50, column: 13, scope: !96)
!98 = !DILocation(line: 50, column: 8, scope: !76)
!99 = !DILocation(line: 51, column: 12, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !77, line: 50, column: 18)
!101 = !DILocation(line: 52, column: 10, scope: !100)
!102 = !DILocation(line: 53, column: 4, scope: !100)
!103 = !DILocation(line: 56, column: 17, scope: !76)
!104 = !DILocation(line: 56, column: 4, scope: !76)
!105 = !DILocation(line: 56, column: 8, scope: !76)
!106 = !DILocation(line: 56, column: 15, scope: !76)
!107 = !DILocation(line: 57, column: 18, scope: !76)
!108 = !DILocation(line: 57, column: 4, scope: !76)
!109 = !DILocation(line: 57, column: 8, scope: !76)
!110 = !DILocation(line: 57, column: 16, scope: !76)
!111 = !DILocation(line: 58, column: 1, scope: !76)
!112 = distinct !DISubprogram(name: "TimeSync_IsGuestSyncServiceRunning", scope: !13, file: !13, line: 131, type: !113, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!113 = !DISubroutineType(types: !114)
!114 = !{!16}
!115 = !DILocation(line: 134, column: 4, scope: !112)
!116 = distinct !DISubprogram(name: "TimeSync_DoGuestResync", scope: !13, file: !13, line: 150, type: !117, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!117 = !DISubroutineType(types: !118)
!118 = !{!16, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!120 = !DILocalVariable(name: "_ctx", arg: 1, scope: !116, file: !13, line: 150, type: !119)
!121 = !DILocation(line: 150, column: 30, scope: !116)
!122 = !DILocation(line: 153, column: 4, scope: !116)
