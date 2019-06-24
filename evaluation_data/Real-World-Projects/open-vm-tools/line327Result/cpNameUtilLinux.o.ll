; ModuleID = './cpNameUtilLinux.o.i'
source_filename = "./cpNameUtilLinux.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @CPNameUtil_ConvertToRoot(i8*, i64, i8*) #0 !dbg !6 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !18, metadata !19), !dbg !20
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !21, metadata !19), !dbg !22
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !23, metadata !19), !dbg !24
  %7 = load i8*, i8** %4, align 8, !dbg !25
  %8 = load i64, i64* %5, align 8, !dbg !26
  %9 = load i8*, i8** %6, align 8, !dbg !27
  %10 = call i32 @CPNameUtil_LinuxConvertToRoot(i8* %7, i64 %8, i8* %9), !dbg !28
  ret i32 %10, !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @CPNameUtil_LinuxConvertToRoot(i8*, i64, i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @CPNameUtilConvertUtf8FormCAndD(i8*, i64, i8 signext, i8**, i64*) #0 !dbg !30 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !37, metadata !19), !dbg !38
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !39, metadata !19), !dbg !40
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !41, metadata !19), !dbg !42
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !43, metadata !19), !dbg !44
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !45, metadata !19), !dbg !46
  call void @llvm.dbg.declare(metadata i8* %11, metadata !47, metadata !19), !dbg !48
  store i8 1, i8* %11, align 1, !dbg !48
  %12 = load i64, i64* %7, align 8, !dbg !49
  %13 = call i8* @UtilSafeCalloc0(i64 1, i64 %12), !dbg !50
  %14 = load i8**, i8*** %9, align 8, !dbg !51
  store i8* %13, i8** %14, align 8, !dbg !52
  %15 = load i8**, i8*** %9, align 8, !dbg !53
  %16 = load i8*, i8** %15, align 8, !dbg !54
  %17 = load i8*, i8** %6, align 8, !dbg !55
  %18 = load i64, i64* %7, align 8, !dbg !56
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 %18, i32 1, i1 false), !dbg !57
  %19 = load i64, i64* %7, align 8, !dbg !58
  %20 = load i64*, i64** %10, align 8, !dbg !59
  store i64 %19, i64* %20, align 8, !dbg !60
  %21 = load i8, i8* %11, align 1, !dbg !61
  ret i8 %21, !dbg !62
}

declare i8* @UtilSafeCalloc0(i64, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "cpNameUtilLinux.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line327")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "CPNameUtil_ConvertToRoot", scope: !7, file: !7, line: 74, type: !8, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "cpNameUtilLinux.c", directory: "/home/lichi/Desktop/open-vm-tools/line327")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !14, !17}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 216, baseType: !16)
!15 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line327")
!16 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!18 = !DILocalVariable(name: "nameIn", arg: 1, scope: !6, file: !7, line: 74, type: !11)
!19 = !DIExpression()
!20 = !DILocation(line: 74, column: 38, scope: !6)
!21 = !DILocalVariable(name: "bufOutSize", arg: 2, scope: !6, file: !7, line: 75, type: !14)
!22 = !DILocation(line: 75, column: 33, scope: !6)
!23 = !DILocalVariable(name: "bufOut", arg: 3, scope: !6, file: !7, line: 76, type: !17)
!24 = !DILocation(line: 76, column: 32, scope: !6)
!25 = !DILocation(line: 78, column: 41, scope: !6)
!26 = !DILocation(line: 78, column: 49, scope: !6)
!27 = !DILocation(line: 78, column: 61, scope: !6)
!28 = !DILocation(line: 78, column: 11, scope: !6)
!29 = !DILocation(line: 78, column: 4, scope: !6)
!30 = distinct !DISubprogram(name: "CPNameUtilConvertUtf8FormCAndD", scope: !7, file: !7, line: 102, type: !31, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !11, !14, !33, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !34, line: 230, baseType: !13)
!34 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line327")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!37 = !DILocalVariable(name: "cpNameToConvert", arg: 1, scope: !30, file: !7, line: 102, type: !11)
!38 = !DILocation(line: 102, column: 44, scope: !30)
!39 = !DILocalVariable(name: "cpNameToConvertLen", arg: 2, scope: !30, file: !7, line: 103, type: !14)
!40 = !DILocation(line: 103, column: 39, scope: !30)
!41 = !DILocalVariable(name: "convertToFormC", arg: 3, scope: !30, file: !7, line: 104, type: !33)
!42 = !DILocation(line: 104, column: 37, scope: !30)
!43 = !DILocalVariable(name: "cpConvertedName", arg: 4, scope: !30, file: !7, line: 105, type: !35)
!44 = !DILocation(line: 105, column: 39, scope: !30)
!45 = !DILocalVariable(name: "cpConvertedNameLen", arg: 5, scope: !30, file: !7, line: 106, type: !36)
!46 = !DILocation(line: 106, column: 40, scope: !30)
!47 = !DILocalVariable(name: "status", scope: !30, file: !7, line: 108, type: !33)
!48 = !DILocation(line: 108, column: 9, scope: !30)
!49 = !DILocation(line: 179, column: 45, scope: !30)
!50 = !DILocation(line: 179, column: 23, scope: !30)
!51 = !DILocation(line: 179, column: 5, scope: !30)
!52 = !DILocation(line: 179, column: 21, scope: !30)
!53 = !DILocation(line: 180, column: 12, scope: !30)
!54 = !DILocation(line: 180, column: 11, scope: !30)
!55 = !DILocation(line: 180, column: 29, scope: !30)
!56 = !DILocation(line: 180, column: 46, scope: !30)
!57 = !DILocation(line: 180, column: 4, scope: !30)
!58 = !DILocation(line: 181, column: 26, scope: !30)
!59 = !DILocation(line: 181, column: 5, scope: !30)
!60 = !DILocation(line: 181, column: 24, scope: !30)
!61 = !DILocation(line: 183, column: 11, scope: !30)
!62 = !DILocation(line: 183, column: 4, scope: !30)
