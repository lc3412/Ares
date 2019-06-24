; ModuleID = './[inter]src--unix.o.i'
source_filename = "./[inter]src--unix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @arping_lookupdev_default(i32, i32, i8*) #0 !dbg !6 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !17, metadata !18), !dbg !19
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !20, metadata !18), !dbg !21
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !22, metadata !18), !dbg !23
  %7 = load i32, i32* %4, align 4, !dbg !24
  %8 = load i32, i32* %5, align 4, !dbg !25
  %9 = load i8*, i8** %6, align 8, !dbg !26
  %10 = call i8* @pcap_lookupdev(i8* %9), !dbg !27
  ret i8* %10, !dbg !28
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @pcap_lookupdev(i8*) #2

; Function Attrs: nounwind uwtable
define void @do_signal_init() #0 !dbg !29 {
  %1 = call void (i32)* @signal(i32 2, void (i32)* @sigint) #4, !dbg !32
  ret void, !dbg !33
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

declare void @sigint(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]src--unix.o.i", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "arping_lookupdev_default", scope: !7, file: !7, line: 35, type: !8, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "unix.c", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !13, !16}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 51, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!15 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!17 = !DILocalVariable(name: "srcip", arg: 1, scope: !6, file: !7, line: 35, type: !13)
!18 = !DIExpression()
!19 = !DILocation(line: 35, column: 35, scope: !6)
!20 = !DILocalVariable(name: "dstip", arg: 2, scope: !6, file: !7, line: 35, type: !13)
!21 = !DILocation(line: 35, column: 51, scope: !6)
!22 = !DILocalVariable(name: "ebuf", arg: 3, scope: !6, file: !7, line: 35, type: !16)
!23 = !DILocation(line: 35, column: 64, scope: !6)
!24 = !DILocation(line: 37, column: 16, scope: !6)
!25 = !DILocation(line: 38, column: 16, scope: !6)
!26 = !DILocation(line: 39, column: 31, scope: !6)
!27 = !DILocation(line: 39, column: 16, scope: !6)
!28 = !DILocation(line: 39, column: 9, scope: !6)
!29 = distinct !DISubprogram(name: "do_signal_init", scope: !7, file: !7, line: 46, type: !30, isLocal: false, isDefinition: true, scopeLine: 47, isOptimized: false, unit: !0, variables: !2)
!30 = !DISubroutineType(types: !31)
!31 = !{null}
!32 = !DILocation(line: 48, column: 9, scope: !29)
!33 = !DILocation(line: 49, column: 1, scope: !29)
