; ModuleID = './[inter]lib--memory.o.i'
source_filename = "./[inter]lib--memory.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@debug = external global i64, align 8
@.str = private unnamed_addr constant [11 x i8] c"Keepalived\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Keepalived xalloc() error - %s\00", align 1

; Function Attrs: nounwind uwtable
define i8* @zalloc(i64) #0 !dbg !23 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !29, metadata !30), !dbg !31
  call void @llvm.dbg.declare(metadata i8** %3, metadata !32, metadata !30), !dbg !33
  %4 = load i64, i64* %2, align 8, !dbg !34
  %5 = call i8* @xalloc(i64 %4), !dbg !35
  store i8* %5, i8** %3, align 8, !dbg !33
  %6 = load i8*, i8** %3, align 8, !dbg !36
  %7 = icmp ne i8* %6, null, !dbg !36
  br i1 %7, label %8, label %11, !dbg !38

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !39
  %10 = load i64, i64* %2, align 8, !dbg !40
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %10, i32 1, i1 false), !dbg !41
  br label %11, !dbg !41

; <label>:11:                                     ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !42
  ret i8* %12, !dbg !43
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i8* @xalloc(i64) #0 !dbg !44 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !45, metadata !30), !dbg !46
  call void @llvm.dbg.declare(metadata i8** %3, metadata !47, metadata !30), !dbg !48
  %4 = load i64, i64* %2, align 8, !dbg !49
  %5 = call noalias i8* @malloc(i64 %4) #8, !dbg !50
  store i8* %5, i8** %3, align 8, !dbg !48
  %6 = load i8*, i8** %3, align 8, !dbg !51
  %7 = icmp eq i8* %6, null, !dbg !53
  br i1 %7, label %8, label %16, !dbg !54

; <label>:8:                                      ; preds = %1
  %9 = call zeroext i1 @__test_bit(i32 2, i64* @debug), !dbg !55
  br i1 %9, label %10, label %11, !dbg !58

; <label>:10:                                     ; preds = %8
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)), !dbg !59
  br label %15, !dbg !59

; <label>:11:                                     ; preds = %8
  %12 = call i32* @__errno_location() #1, !dbg !60
  %13 = load i32, i32* %12, align 4, !dbg !61
  %14 = call i8* @strerror(i32 %13) #8, !dbg !62
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i8* %14), !dbg !64
  br label %15

; <label>:15:                                     ; preds = %11, %10
  call void @exit(i32 1) #9, !dbg !66
  unreachable, !dbg !66

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %3, align 8, !dbg !67
  ret i8* %17, !dbg !68
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #4 !dbg !69 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !76, metadata !30), !dbg !77
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !78, metadata !30), !dbg !79
  %5 = load i32, i32* %3, align 4, !dbg !80
  %6 = zext i32 %5 to i64, !dbg !81
  %7 = udiv i64 %6, 64, !dbg !82
  %8 = load i64*, i64** %4, align 8, !dbg !83
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !83
  %10 = load i64, i64* %9, align 8, !dbg !83
  %11 = load i32, i32* %3, align 4, !dbg !84
  %12 = zext i32 %11 to i64, !dbg !85
  %13 = urem i64 %12, 64, !dbg !86
  %14 = shl i64 1, %13, !dbg !87
  %15 = and i64 %10, %14, !dbg !88
  %16 = icmp ne i64 %15, 0, !dbg !89
  %17 = xor i1 %16, true, !dbg !89
  %18 = xor i1 %17, true, !dbg !90
  ret i1 %18, !dbg !91
}

declare void @perror(i8*) #5

declare void @log_message(i32, i8*, ...) #5

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18)
!1 = !DIFile(filename: "[inter]lib--memory.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !4, line: 53, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!7 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!8 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!9 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!10 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!11 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!12 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!13 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!14 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!15 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!16 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!17 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!23 = distinct !DISubprogram(name: "zalloc", scope: !24, file: !24, line: 78, type: !25, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!24 = !DIFile(filename: "memory.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!25 = !DISubroutineType(types: !26)
!26 = !{!19, !27}
!27 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!28 = !{}
!29 = !DILocalVariable(name: "size", arg: 1, scope: !23, file: !24, line: 78, type: !27)
!30 = !DIExpression()
!31 = !DILocation(line: 78, column: 22, scope: !23)
!32 = !DILocalVariable(name: "mem", scope: !23, file: !24, line: 80, type: !19)
!33 = !DILocation(line: 80, column: 8, scope: !23)
!34 = !DILocation(line: 80, column: 21, scope: !23)
!35 = !DILocation(line: 80, column: 14, scope: !23)
!36 = !DILocation(line: 82, column: 6, scope: !37)
!37 = distinct !DILexicalBlock(scope: !23, file: !24, line: 82, column: 6)
!38 = !DILocation(line: 82, column: 6, scope: !23)
!39 = !DILocation(line: 83, column: 10, scope: !37)
!40 = !DILocation(line: 83, column: 18, scope: !37)
!41 = !DILocation(line: 83, column: 3, scope: !37)
!42 = !DILocation(line: 85, column: 9, scope: !23)
!43 = !DILocation(line: 85, column: 2, scope: !23)
!44 = distinct !DISubprogram(name: "xalloc", scope: !24, file: !24, line: 56, type: !25, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!45 = !DILocalVariable(name: "size", arg: 1, scope: !44, file: !24, line: 56, type: !27)
!46 = !DILocation(line: 56, column: 22, scope: !44)
!47 = !DILocalVariable(name: "mem", scope: !44, file: !24, line: 58, type: !19)
!48 = !DILocation(line: 58, column: 8, scope: !44)
!49 = !DILocation(line: 58, column: 21, scope: !44)
!50 = !DILocation(line: 58, column: 14, scope: !44)
!51 = !DILocation(line: 60, column: 6, scope: !52)
!52 = distinct !DILexicalBlock(scope: !44, file: !24, line: 60, column: 6)
!53 = !DILocation(line: 60, column: 10, scope: !52)
!54 = !DILocation(line: 60, column: 6, scope: !44)
!55 = !DILocation(line: 61, column: 7, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !24, line: 61, column: 7)
!57 = distinct !DILexicalBlock(scope: !52, file: !24, line: 60, column: 18)
!58 = !DILocation(line: 61, column: 7, scope: !57)
!59 = !DILocation(line: 62, column: 4, scope: !56)
!60 = !DILocation(line: 64, column: 70, scope: !56)
!61 = !DILocation(line: 64, column: 69, scope: !56)
!62 = !DILocation(line: 64, column: 59, scope: !63)
!63 = !DILexicalBlockFile(scope: !56, file: !24, discriminator: 1)
!64 = !DILocation(line: 64, column: 4, scope: !65)
!65 = !DILexicalBlockFile(scope: !56, file: !24, discriminator: 2)
!66 = !DILocation(line: 65, column: 3, scope: !57)
!67 = !DILocation(line: 74, column: 9, scope: !44)
!68 = !DILocation(line: 74, column: 2, scope: !44)
!69 = distinct !DISubprogram(name: "__test_bit", scope: !4, file: !4, line: 47, type: !70, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !28)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !73, !74}
!72 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!73 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!76 = !DILocalVariable(name: "idx", arg: 1, scope: !69, file: !4, line: 47, type: !73)
!77 = !DILocation(line: 47, column: 39, scope: !69)
!78 = !DILocalVariable(name: "bmap", arg: 2, scope: !69, file: !4, line: 47, type: !74)
!79 = !DILocation(line: 47, column: 65, scope: !69)
!80 = !DILocation(line: 49, column: 19, scope: !69)
!81 = !DILocation(line: 49, column: 18, scope: !69)
!82 = !DILocation(line: 49, column: 24, scope: !69)
!83 = !DILocation(line: 49, column: 12, scope: !69)
!84 = !DILocation(line: 49, column: 68, scope: !69)
!85 = !DILocation(line: 49, column: 67, scope: !69)
!86 = !DILocation(line: 49, column: 73, scope: !69)
!87 = !DILocation(line: 49, column: 63, scope: !69)
!88 = !DILocation(line: 49, column: 56, scope: !69)
!89 = !DILocation(line: 49, column: 10, scope: !69)
!90 = !DILocation(line: 49, column: 9, scope: !69)
!91 = !DILocation(line: 49, column: 2, scope: !69)
