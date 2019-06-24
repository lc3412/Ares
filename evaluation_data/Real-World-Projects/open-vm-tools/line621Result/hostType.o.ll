; ModuleID = './hostType.o.i'
source_filename = "./hostType.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }

@HostType_OSIsVMK.vmkernelType = internal global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"VMkernel\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @HostType_OSIsVMK() #0 !dbg !5 {
  %1 = alloca %struct.utsname, align 1
  %2 = alloca i32, align 4
  %3 = load i32, i32* @HostType_OSIsVMK.vmkernelType, align 4, !dbg !21
  %4 = icmp eq i32 %3, 0, !dbg !23
  br i1 %4, label %5, label %17, !dbg !24

; <label>:5:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata %struct.utsname* %1, metadata !25, metadata !39), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %2, metadata !41, metadata !39), !dbg !43
  %6 = call i32 @uname(%struct.utsname* %1) #4, !dbg !44
  store i32 %6, i32* %2, align 4, !dbg !45
  %7 = load i32, i32* %2, align 4, !dbg !46
  %8 = icmp eq i32 %7, 0, !dbg !48
  br i1 %8, label %9, label %15, !dbg !49

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 0, !dbg !50
  %11 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i32 0, i32 0, !dbg !52
  %12 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %11) #5, !dbg !53
  %13 = icmp eq i32 %12, 0, !dbg !54
  br i1 %13, label %14, label %15, !dbg !55

; <label>:14:                                     ; preds = %9
  store i32 2, i32* @HostType_OSIsVMK.vmkernelType, align 4, !dbg !56
  br label %16, !dbg !58

; <label>:15:                                     ; preds = %9, %5
  store i32 1, i32* @HostType_OSIsVMK.vmkernelType, align 4, !dbg !59
  br label %16

; <label>:16:                                     ; preds = %15, %14
  br label %17, !dbg !61

; <label>:17:                                     ; preds = %16, %0
  %18 = load i32, i32* @HostType_OSIsVMK.vmkernelType, align 4, !dbg !62
  %19 = icmp eq i32 %18, 2, !dbg !63
  %20 = zext i1 %19 to i32, !dbg !63
  %21 = trunc i32 %20 to i8, !dbg !62
  ret i8 %21, !dbg !64
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define signext i8 @HostType_OSIsSimulator() #0 !dbg !65 {
  ret i8 0, !dbg !66
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !16)
!1 = !DIFile(filename: "hostType.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line621")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !5, file: !4, line: 79, size: 32, align: 32, elements: !12)
!4 = !DIFile(filename: "hostType.c", directory: "/home/lichi/Desktop/open-vm-tools/line621")
!5 = distinct !DISubprogram(name: "HostType_OSIsVMK", scope: !4, file: !4, line: 68, type: !6, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !11)
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !9, line: 230, baseType: !10)
!9 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line621")
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !{}
!12 = !{!13, !14, !15}
!13 = !DIEnumerator(name: "VMKTYPE_UNKNOWN", value: 0)
!14 = !DIEnumerator(name: "VMKTYPE_LINUX", value: 1)
!15 = !DIEnumerator(name: "VMKTYPE_VMKERNEL", value: 2)
!16 = !{!17}
!17 = distinct !DIGlobalVariable(name: "vmkernelType", scope: !5, file: !4, line: 83, type: !3, isLocal: true, isDefinition: true, variable: i32* @HostType_OSIsVMK.vmkernelType)
!18 = !{i32 2, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!21 = !DILocation(line: 85, column: 8, scope: !22)
!22 = distinct !DILexicalBlock(scope: !5, file: !4, line: 85, column: 8)
!23 = !DILocation(line: 85, column: 21, scope: !22)
!24 = !DILocation(line: 85, column: 8, scope: !5)
!25 = !DILocalVariable(name: "name", scope: !26, file: !4, line: 86, type: !27)
!26 = distinct !DILexicalBlock(scope: !22, file: !4, line: 85, column: 41)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !28, line: 48, size: 3120, align: 8, elements: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/utsname.h", directory: "/home/lichi/Desktop/open-vm-tools/line621")
!29 = !{!30, !34, !35, !36, !37, !38}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !27, file: !28, line: 51, baseType: !31, size: 520, align: 8)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 520, align: 8, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 65)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !27, file: !28, line: 54, baseType: !31, size: 520, align: 8, offset: 520)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !27, file: !28, line: 57, baseType: !31, size: 520, align: 8, offset: 1040)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !27, file: !28, line: 59, baseType: !31, size: 520, align: 8, offset: 1560)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !27, file: !28, line: 62, baseType: !31, size: 520, align: 8, offset: 2080)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__domainname", scope: !27, file: !28, line: 69, baseType: !31, size: 520, align: 8, offset: 2600)
!39 = !DIExpression()
!40 = !DILocation(line: 86, column: 22, scope: !26)
!41 = !DILocalVariable(name: "rc", scope: !26, file: !4, line: 87, type: !42)
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !DILocation(line: 87, column: 11, scope: !26)
!44 = !DILocation(line: 89, column: 12, scope: !26)
!45 = !DILocation(line: 89, column: 10, scope: !26)
!46 = !DILocation(line: 90, column: 11, scope: !47)
!47 = distinct !DILexicalBlock(scope: !26, file: !4, line: 90, column: 11)
!48 = !DILocation(line: 90, column: 14, scope: !47)
!49 = !DILocation(line: 90, column: 19, scope: !47)
!50 = !DILocation(line: 90, column: 46, scope: !51)
!51 = !DILexicalBlockFile(scope: !47, file: !4, discriminator: 1)
!52 = !DILocation(line: 90, column: 41, scope: !51)
!53 = !DILocation(line: 90, column: 22, scope: !51)
!54 = !DILocation(line: 90, column: 55, scope: !51)
!55 = !DILocation(line: 90, column: 11, scope: !51)
!56 = !DILocation(line: 91, column: 23, scope: !57)
!57 = distinct !DILexicalBlock(scope: !47, file: !4, line: 90, column: 61)
!58 = !DILocation(line: 92, column: 7, scope: !57)
!59 = !DILocation(line: 93, column: 23, scope: !60)
!60 = distinct !DILexicalBlock(scope: !47, file: !4, line: 92, column: 14)
!61 = !DILocation(line: 95, column: 4, scope: !26)
!62 = !DILocation(line: 96, column: 11, scope: !5)
!63 = !DILocation(line: 96, column: 24, scope: !5)
!64 = !DILocation(line: 96, column: 4, scope: !5)
!65 = distinct !DISubprogram(name: "HostType_OSIsSimulator", scope: !4, file: !4, line: 123, type: !6, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !11)
!66 = !DILocation(line: 137, column: 4, scope: !65)
