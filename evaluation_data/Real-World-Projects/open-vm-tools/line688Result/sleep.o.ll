; ModuleID = './sleep.o.i'
source_filename = "./sleep.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @Util_Usleep(i64) #0 !dbg !8 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !12, metadata !13), !dbg !14
  call void @llvm.dbg.declare(metadata i64* %3, metadata !15, metadata !13), !dbg !21
  call void @llvm.dbg.declare(metadata i64* %4, metadata !22, metadata !13), !dbg !23
  %5 = call i64 @Hostinfo_SystemTimerUS(), !dbg !24
  %6 = load i64, i64* %2, align 8, !dbg !25
  %7 = add nsw i64 %5, %6, !dbg !26
  store i64 %7, i64* %3, align 8, !dbg !27
  br label %8, !dbg !28, !llvm.loop !29

; <label>:8:                                      ; preds = %16, %1
  %9 = load i64, i64* %2, align 8, !dbg !30
  %10 = trunc i64 %9 to i32, !dbg !30
  %11 = call i32 @usleep(i32 %10), !dbg !32
  %12 = call i64 @Hostinfo_SystemTimerUS(), !dbg !33
  store i64 %12, i64* %4, align 8, !dbg !34
  %13 = load i64, i64* %3, align 8, !dbg !35
  %14 = load i64, i64* %4, align 8, !dbg !36
  %15 = sub nsw i64 %13, %14, !dbg !37
  store i64 %15, i64* %2, align 8, !dbg !38
  br label %16, !dbg !39

; <label>:16:                                     ; preds = %8
  %17 = load i64, i64* %4, align 8, !dbg !40
  %18 = load i64, i64* %3, align 8, !dbg !42
  %19 = icmp slt i64 %17, %18, !dbg !43
  br i1 %19, label %8, label %20, !dbg !44, !llvm.loop !29

; <label>:20:                                     ; preds = %16
  ret void, !dbg !45
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Hostinfo_SystemTimerUS() #2 !dbg !46 {
  %1 = call i64 @Hostinfo_SystemTimerNS(), !dbg !50
  %2 = udiv i64 %1, 1000, !dbg !51
  ret i64 %2, !dbg !52
}

declare i32 @usleep(i32) #3

; Function Attrs: nounwind uwtable
define void @Util_Sleep(i32) #0 !dbg !53 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !57, metadata !13), !dbg !58
  %3 = load i32, i32* %2, align 4, !dbg !59
  %4 = zext i32 %3 to i64, !dbg !60
  %5 = mul nsw i64 %4, 1000, !dbg !61
  %6 = mul nsw i64 %5, 1000, !dbg !62
  call void @Util_Usleep(i64 %6), !dbg !63
  ret void, !dbg !64
}

declare i64 @Hostinfo_SystemTimerNS() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "sleep.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line688")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "Util_Usleep", scope: !9, file: !9, line: 54, type: !10, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "sleep.c", directory: "/home/lichi/Desktop/open-vm-tools/line688")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !4}
!12 = !DILocalVariable(name: "usec", arg: 1, scope: !8, file: !9, line: 54, type: !4)
!13 = !DIExpression()
!14 = !DILocation(line: 54, column: 18, scope: !8)
!15 = !DILocalVariable(name: "t_end", scope: !8, file: !9, line: 56, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmTimeType", file: !17, line: 354, baseType: !18)
!17 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line688")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !17, line: 172, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !20, line: 40, baseType: !4)
!20 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line688")
!21 = !DILocation(line: 56, column: 15, scope: !8)
!22 = !DILocalVariable(name: "t", scope: !8, file: !9, line: 56, type: !16)
!23 = !DILocation(line: 56, column: 22, scope: !8)
!24 = !DILocation(line: 58, column: 12, scope: !8)
!25 = !DILocation(line: 58, column: 39, scope: !8)
!26 = !DILocation(line: 58, column: 37, scope: !8)
!27 = !DILocation(line: 58, column: 10, scope: !8)
!28 = !DILocation(line: 60, column: 4, scope: !8)
!29 = distinct !{!29, !28}
!30 = !DILocation(line: 61, column: 14, scope: !31)
!31 = distinct !DILexicalBlock(scope: !8, file: !9, line: 60, column: 7)
!32 = !DILocation(line: 61, column: 7, scope: !31)
!33 = !DILocation(line: 62, column: 11, scope: !31)
!34 = !DILocation(line: 62, column: 9, scope: !31)
!35 = !DILocation(line: 63, column: 14, scope: !31)
!36 = !DILocation(line: 63, column: 22, scope: !31)
!37 = !DILocation(line: 63, column: 20, scope: !31)
!38 = !DILocation(line: 63, column: 12, scope: !31)
!39 = !DILocation(line: 64, column: 4, scope: !31)
!40 = !DILocation(line: 64, column: 13, scope: !41)
!41 = !DILexicalBlockFile(scope: !8, file: !9, discriminator: 1)
!42 = !DILocation(line: 64, column: 17, scope: !41)
!43 = !DILocation(line: 64, column: 15, scope: !41)
!44 = !DILocation(line: 64, column: 4, scope: !41)
!45 = !DILocation(line: 65, column: 1, scope: !8)
!46 = distinct !DISubprogram(name: "Hostinfo_SystemTimerUS", scope: !47, file: !47, line: 73, type: !48, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!47 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hostinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line688")
!48 = !DISubroutineType(types: !49)
!49 = !{!16}
!50 = !DILocation(line: 75, column: 11, scope: !46)
!51 = !DILocation(line: 75, column: 36, scope: !46)
!52 = !DILocation(line: 75, column: 4, scope: !46)
!53 = distinct !DISubprogram(name: "Util_Sleep", scope: !9, file: !9, line: 89, type: !54, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56}
!56 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!57 = !DILocalVariable(name: "sec", arg: 1, scope: !53, file: !9, line: 89, type: !56)
!58 = !DILocation(line: 89, column: 25, scope: !53)
!59 = !DILocation(line: 91, column: 22, scope: !53)
!60 = !DILocation(line: 91, column: 16, scope: !53)
!61 = !DILocation(line: 91, column: 26, scope: !53)
!62 = !DILocation(line: 91, column: 33, scope: !53)
!63 = !DILocation(line: 91, column: 4, scope: !53)
!64 = !DILocation(line: 92, column: 1, scope: !53)
