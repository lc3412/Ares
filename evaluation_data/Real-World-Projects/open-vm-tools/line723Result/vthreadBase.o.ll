; ModuleID = './vthreadBase.o.i'
source_filename = "./vthreadBase.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32 }

@vthreadName = internal thread_local global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"%s-%lu\00", align 1
@sigNestCount = internal thread_local global i32 0, align 4
@vmw_pthread_getthreadid_np.cache = internal thread_local global %struct.anon zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"host-%lu\00", align 1

; Function Attrs: nounwind uwtable
define i64 @VThreadBase_CurID() #0 !dbg !32 {
  %1 = call i64 @VThreadBaseGetStableID(), !dbg !37
  ret i64 %1, !dbg !38
}

; Function Attrs: nounwind uwtable
define internal i64 @VThreadBaseGetStableID() #0 !dbg !39 {
  %1 = call i64 @pthread_self() #1, !dbg !42
  %2 = inttoptr i64 %1 to i8*, !dbg !43
  %3 = ptrtoint i8* %2 to i64, !dbg !44
  ret i64 %3, !dbg !45
}

; Function Attrs: nounwind uwtable
define i64 @VThreadBase_GetKernelID() #0 !dbg !46 {
  %1 = call i32 @vmw_pthread_getthreadid_np(), !dbg !52
  %2 = sext i32 %1 to i64, !dbg !52
  ret i64 %2, !dbg !53
}

; Function Attrs: nounwind uwtable
define internal i32 @vmw_pthread_getthreadid_np() #0 !dbg !18 {
  %1 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @vmw_pthread_getthreadid_np.cache, i32 0, i32 0), align 4, !dbg !54
  %2 = call i32 @getpid() #5, !dbg !56
  %3 = icmp ne i32 %1, %2, !dbg !57
  %4 = zext i1 %3 to i32, !dbg !57
  %5 = sext i32 %4 to i64, !dbg !58
  %6 = icmp ne i64 %5, 0, !dbg !59
  br i1 %6, label %7, label %11, !dbg !60

; <label>:7:                                      ; preds = %0
  %8 = call i32 @getpid() #5, !dbg !61
  store i32 %8, i32* getelementptr inbounds (%struct.anon, %struct.anon* @vmw_pthread_getthreadid_np.cache, i32 0, i32 0), align 4, !dbg !63
  %9 = call i64 (i64, ...) @syscall(i64 186) #5, !dbg !64
  %10 = trunc i64 %9 to i32, !dbg !64
  store i32 %10, i32* getelementptr inbounds (%struct.anon, %struct.anon* @vmw_pthread_getthreadid_np.cache, i32 0, i32 1), align 4, !dbg !65
  br label %11, !dbg !66

; <label>:11:                                     ; preds = %7, %0
  %12 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @vmw_pthread_getthreadid_np.cache, i32 0, i32 1), align 4, !dbg !67
  ret i32 %12, !dbg !68
}

; Function Attrs: nounwind uwtable
define i8* @VThreadBase_CurName() #0 !dbg !69 {
  %1 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @vthreadName, i64 0, i64 0), align 16, !dbg !74
  %2 = sext i8 %1 to i32, !dbg !74
  %3 = icmp eq i32 %2, 0, !dbg !76
  %4 = zext i1 %3 to i32, !dbg !76
  %5 = sext i32 %4 to i64, !dbg !77
  %6 = icmp ne i64 %5, 0, !dbg !78
  br i1 %6, label %7, label %8, !dbg !79

; <label>:7:                                      ; preds = %0
  call void @VThreadBaseSafeName(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @vthreadName, i32 0, i32 0), i64 32), !dbg !80
  br label %8, !dbg !82

; <label>:8:                                      ; preds = %7, %0
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @vthreadName, i32 0, i32 0), !dbg !83
}

; Function Attrs: nounwind uwtable
define internal void @VThreadBaseSafeName(i8*, i64) #0 !dbg !84 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !90, metadata !91), !dbg !92
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !93, metadata !91), !dbg !94
  %5 = load i8*, i8** %3, align 8, !dbg !95
  %6 = load i64, i64* %4, align 8, !dbg !96
  %7 = sub i64 %6, 1, !dbg !97
  %8 = call i64 @VThreadBase_GetKernelID(), !dbg !98
  %9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %5, i64 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %8) #5, !dbg !99
  ret void, !dbg !100
}

; Function Attrs: nounwind uwtable
define void @VThreadBase_SetName(i8*) #0 !dbg !101 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !104, metadata !91), !dbg !105
  %3 = load i8*, i8** %2, align 8, !dbg !106
  %4 = call i8* @strncpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @vthreadName, i32 0, i32 0), i8* %3, i64 31) #5, !dbg !107
  ret void, !dbg !108
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @VThreadBase_SetNamePrefix(i8*) #0 !dbg !109 {
  %2 = alloca i8*, align 8
  %3 = alloca [32 x i8], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !110, metadata !91), !dbg !111
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !112, metadata !91), !dbg !113
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0, !dbg !114
  %5 = load i8*, i8** %2, align 8, !dbg !115
  %6 = call i64 @VThreadBase_GetKernelID(), !dbg !116
  %7 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %4, i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %5, i64 %6) #5, !dbg !117
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 31, !dbg !118
  store i8 0, i8* %8, align 1, !dbg !119
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0, !dbg !120
  call void @VThreadBase_SetName(i8* %9), !dbg !121
  ret void, !dbg !122
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @VThreadBase_ForgetSelf() #0 !dbg !123 {
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @vthreadName, i32 0, i32 0), i8 0, i64 32, i32 16, i1 false), !dbg !126
  ret void, !dbg !127
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define signext i8 @VThreadBase_IsInSignal() #0 !dbg !128 {
  %1 = load i32, i32* @sigNestCount, align 4, !dbg !132
  %2 = icmp sgt i32 %1, 0, !dbg !133
  %3 = zext i1 %2 to i32, !dbg !133
  %4 = trunc i32 %3 to i8, !dbg !132
  ret i8 %4, !dbg !134
}

; Function Attrs: nounwind uwtable
define void @VThreadBase_SetIsInSignal(i8 signext) #0 !dbg !135 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !138, metadata !91), !dbg !139
  %3 = load i8, i8* %2, align 1, !dbg !140
  %4 = sext i8 %3 to i32, !dbg !140
  %5 = icmp ne i32 %4, 0, !dbg !140
  %6 = select i1 %5, i32 1, i32 -1, !dbg !140
  %7 = load i32, i32* @sigNestCount, align 4, !dbg !141
  %8 = add nsw i32 %7, %6, !dbg !141
  store i32 %8, i32* @sigNestCount, align 4, !dbg !141
  ret void, !dbg !142
}

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #4

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !8)
!1 = !DIFile(filename: "vthreadBase.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line723")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !5, line: 122, baseType: !6)
!5 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line723")
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !{!9, !12, !17}
!9 = distinct !DIGlobalVariable(name: "sigNestCount", scope: !0, file: !10, line: 126, type: !11, isLocal: true, isDefinition: true, variable: i32* @sigNestCount)
!10 = !DIFile(filename: "vthreadBase.c", directory: "/home/lichi/Desktop/open-vm-tools/line723")
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = distinct !DIGlobalVariable(name: "vthreadName", scope: !0, file: !10, line: 176, type: !13, isLocal: true, isDefinition: true, variable: [32 x i8]* @vthreadName)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, align: 8, elements: !15)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 32)
!17 = distinct !DIGlobalVariable(name: "cache", scope: !18, file: !10, line: 311, type: !25, isLocal: true, isDefinition: true, variable: %struct.anon* @vmw_pthread_getthreadid_np.cache)
!18 = distinct !DISubprogram(name: "vmw_pthread_getthreadid_np", scope: !10, file: !10, line: 306, type: !19, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !22, line: 37, baseType: !23)
!22 = !DIFile(filename: "/usr/include/sched.h", directory: "/home/lichi/Desktop/open-vm-tools/line723")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !24, line: 133, baseType: !11)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line723")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !18, file: !10, line: 308, size: 64, align: 32, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !25, file: !10, line: 309, baseType: !21, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !25, file: !10, line: 310, baseType: !21, size: 32, align: 32, offset: 32)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!32 = distinct !DISubprogram(name: "VThreadBase_CurID", scope: !10, file: !10, line: 251, type: !33, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!33 = !DISubroutineType(types: !34)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "VThreadID", file: !36, line: 85, baseType: !4)
!36 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vthreadBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line723")
!37 = !DILocation(line: 253, column: 11, scope: !32)
!38 = !DILocation(line: 253, column: 4, scope: !32)
!39 = distinct !DISubprogram(name: "VThreadBaseGetStableID", scope: !10, file: !10, line: 220, type: !40, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{!4}
!42 = !DILocation(line: 229, column: 30, scope: !39)
!43 = !DILocation(line: 229, column: 22, scope: !39)
!44 = !DILocation(line: 229, column: 11, scope: !39)
!45 = !DILocation(line: 229, column: 4, scope: !39)
!46 = distinct !DISubprogram(name: "VThreadBase_GetKernelID", scope: !10, file: !10, line: 333, type: !47, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!47 = !DISubroutineType(types: !48)
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !50, line: 171, baseType: !51)
!50 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line723")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !5, line: 55, baseType: !6)
!52 = !DILocation(line: 345, column: 11, scope: !46)
!53 = !DILocation(line: 345, column: 4, scope: !46)
!54 = !DILocation(line: 324, column: 32, scope: !55)
!55 = distinct !DILexicalBlock(scope: !18, file: !10, line: 324, column: 8)
!56 = !DILocation(line: 324, column: 39, scope: !55)
!57 = !DILocation(line: 324, column: 36, scope: !55)
!58 = !DILocation(line: 324, column: 25, scope: !55)
!59 = !DILocation(line: 324, column: 8, scope: !55)
!60 = !DILocation(line: 324, column: 8, scope: !18)
!61 = !DILocation(line: 325, column: 19, scope: !62)
!62 = distinct !DILexicalBlock(scope: !55, file: !10, line: 324, column: 54)
!63 = !DILocation(line: 325, column: 17, scope: !62)
!64 = !DILocation(line: 326, column: 19, scope: !62)
!65 = !DILocation(line: 326, column: 17, scope: !62)
!66 = !DILocation(line: 327, column: 4, scope: !62)
!67 = !DILocation(line: 328, column: 17, scope: !18)
!68 = !DILocation(line: 328, column: 4, scope: !18)
!69 = distinct !DISubprogram(name: "VThreadBase_CurName", scope: !10, file: !10, line: 412, type: !70, isLocal: false, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!70 = !DISubroutineType(types: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!74 = !DILocation(line: 415, column: 26, scope: !75)
!75 = distinct !DILexicalBlock(scope: !69, file: !10, line: 415, column: 8)
!76 = !DILocation(line: 415, column: 41, scope: !75)
!77 = !DILocation(line: 415, column: 25, scope: !75)
!78 = !DILocation(line: 415, column: 8, scope: !75)
!79 = !DILocation(line: 415, column: 8, scope: !69)
!80 = !DILocation(line: 423, column: 7, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !10, line: 415, column: 55)
!82 = !DILocation(line: 424, column: 4, scope: !81)
!83 = !DILocation(line: 425, column: 4, scope: !69)
!84 = distinct !DISubprogram(name: "VThreadBaseSafeName", scope: !10, file: !10, line: 380, type: !85, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87, !88}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !89, line: 216, baseType: !6)
!89 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line723")
!90 = !DILocalVariable(name: "buf", arg: 1, scope: !84, file: !10, line: 380, type: !87)
!91 = !DIExpression()
!92 = !DILocation(line: 380, column: 27, scope: !84)
!93 = !DILocalVariable(name: "len", arg: 2, scope: !84, file: !10, line: 381, type: !88)
!94 = !DILocation(line: 381, column: 28, scope: !84)
!95 = !DILocation(line: 388, column: 13, scope: !84)
!96 = !DILocation(line: 388, column: 18, scope: !84)
!97 = !DILocation(line: 388, column: 22, scope: !84)
!98 = !DILocation(line: 389, column: 29, scope: !84)
!99 = !DILocation(line: 388, column: 4, scope: !84)
!100 = !DILocation(line: 390, column: 1, scope: !84)
!101 = distinct !DISubprogram(name: "VThreadBase_SetName", scope: !10, file: !10, line: 474, type: !102, isLocal: false, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !72}
!104 = !DILocalVariable(name: "name", arg: 1, scope: !101, file: !10, line: 474, type: !72)
!105 = !DILocation(line: 474, column: 33, scope: !101)
!106 = !DILocation(line: 485, column: 25, scope: !101)
!107 = !DILocation(line: 485, column: 4, scope: !101)
!108 = !DILocation(line: 509, column: 1, scope: !101)
!109 = distinct !DISubprogram(name: "VThreadBase_SetNamePrefix", scope: !10, file: !10, line: 530, type: !102, isLocal: false, isDefinition: true, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!110 = !DILocalVariable(name: "prefix", arg: 1, scope: !109, file: !10, line: 530, type: !72)
!111 = !DILocation(line: 530, column: 39, scope: !109)
!112 = !DILocalVariable(name: "buf", scope: !109, file: !10, line: 532, type: !13)
!113 = !DILocation(line: 532, column: 9, scope: !109)
!114 = !DILocation(line: 536, column: 13, scope: !109)
!115 = !DILocation(line: 537, column: 13, scope: !109)
!116 = !DILocation(line: 537, column: 21, scope: !109)
!117 = !DILocation(line: 536, column: 4, scope: !109)
!118 = !DILocation(line: 538, column: 4, scope: !109)
!119 = !DILocation(line: 538, column: 24, scope: !109)
!120 = !DILocation(line: 539, column: 24, scope: !109)
!121 = !DILocation(line: 539, column: 4, scope: !109)
!122 = !DILocation(line: 540, column: 1, scope: !109)
!123 = distinct !DISubprogram(name: "VThreadBase_ForgetSelf", scope: !10, file: !10, line: 563, type: !124, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!124 = !DISubroutineType(types: !125)
!125 = !{null}
!126 = !DILocation(line: 579, column: 4, scope: !123)
!127 = !DILocation(line: 588, column: 1, scope: !123)
!128 = distinct !DISubprogram(name: "VThreadBase_IsInSignal", scope: !10, file: !10, line: 610, type: !129, isLocal: false, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!129 = !DISubroutineType(types: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !50, line: 230, baseType: !14)
!132 = !DILocation(line: 613, column: 11, scope: !128)
!133 = !DILocation(line: 613, column: 24, scope: !128)
!134 = !DILocation(line: 613, column: 4, scope: !128)
!135 = distinct !DISubprogram(name: "VThreadBase_SetIsInSignal", scope: !10, file: !10, line: 637, type: !136, isLocal: false, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !131}
!138 = !DILocalVariable(name: "isInSignal", arg: 1, scope: !135, file: !10, line: 637, type: !131)
!139 = !DILocation(line: 637, column: 32, scope: !135)
!140 = !DILocation(line: 640, column: 21, scope: !135)
!141 = !DILocation(line: 640, column: 17, scope: !135)
!142 = !DILocation(line: 648, column: 1, scope: !135)
