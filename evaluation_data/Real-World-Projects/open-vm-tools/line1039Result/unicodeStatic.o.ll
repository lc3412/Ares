; ModuleID = './unicodeStatic.o.i'
source_filename = "./unicodeStatic.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Atomic_uint64 = type { i64 }
%struct.HashTable = type opaque

@UnicodeUnescapedStringTable = internal global %struct.Atomic_uint64 zeroinitializer, align 8
@UnicodeStringTable = internal global %struct.Atomic_uint64 zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define i8* @Unicode_GetStatic(i8*, i8 signext) #0 !dbg !25 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.HashTable*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !32, metadata !33), !dbg !34
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !35, metadata !33), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %5, metadata !37, metadata !33), !dbg !39
  store i8* null, i8** %5, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata %struct.HashTable** %6, metadata !40, metadata !33), !dbg !45
  %8 = load i8, i8* %4, align 1, !dbg !46
  %9 = icmp ne i8 %8, 0, !dbg !46
  br i1 %9, label %10, label %12, !dbg !48

; <label>:10:                                     ; preds = %2
  %11 = call %struct.HashTable* @HashTable_AllocOnce(%struct.Atomic_uint64* @UnicodeUnescapedStringTable, i32 4096, i32 8, void (i8*)* @UnicodeHashFree), !dbg !49
  store %struct.HashTable* %11, %struct.HashTable** %6, align 8, !dbg !51
  br label %14, !dbg !52

; <label>:12:                                     ; preds = %2
  %13 = call %struct.HashTable* @HashTable_AllocOnce(%struct.Atomic_uint64* @UnicodeStringTable, i32 4096, i32 8, void (i8*)* @UnicodeHashFree), !dbg !53
  store %struct.HashTable* %13, %struct.HashTable** %6, align 8, !dbg !55
  br label %14

; <label>:14:                                     ; preds = %12, %10
  %15 = load %struct.HashTable*, %struct.HashTable** %6, align 8, !dbg !56
  %16 = load i8*, i8** %3, align 8, !dbg !58
  %17 = call signext i8 @HashTable_Lookup(%struct.HashTable* %15, i8* %16, i8** %5), !dbg !59
  %18 = icmp ne i8 %17, 0, !dbg !59
  br i1 %18, label %37, label %19, !dbg !60

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata i8** %7, metadata !61, metadata !33), !dbg !63
  %20 = load i8*, i8** %3, align 8, !dbg !64
  %21 = load i8, i8* %4, align 1, !dbg !65
  %22 = call i8* @UnicodeAllocStatic(i8* %20, i8 signext %21), !dbg !66
  store i8* %22, i8** %7, align 8, !dbg !63
  %23 = load i8*, i8** %7, align 8, !dbg !67
  %24 = icmp ne i8* %23, null, !dbg !67
  br i1 %24, label %25, label %36, !dbg !69

; <label>:25:                                     ; preds = %19
  %26 = load %struct.HashTable*, %struct.HashTable** %6, align 8, !dbg !70
  %27 = load i8*, i8** %3, align 8, !dbg !72
  %28 = load i8*, i8** %7, align 8, !dbg !73
  %29 = call i8* @HashTable_LookupOrInsert(%struct.HashTable* %26, i8* %27, i8* %28), !dbg !74
  store i8* %29, i8** %5, align 8, !dbg !75
  %30 = load i8*, i8** %5, align 8, !dbg !76
  %31 = load i8*, i8** %7, align 8, !dbg !78
  %32 = icmp ne i8* %30, %31, !dbg !79
  br i1 %32, label %33, label %35, !dbg !80

; <label>:33:                                     ; preds = %25
  %34 = load i8*, i8** %7, align 8, !dbg !81
  call void @free(i8* %34) #4, !dbg !83
  br label %35, !dbg !84

; <label>:35:                                     ; preds = %33, %25
  br label %36, !dbg !85

; <label>:36:                                     ; preds = %35, %19
  br label %37, !dbg !86

; <label>:37:                                     ; preds = %36, %14
  %38 = load i8*, i8** %5, align 8, !dbg !87
  ret i8* %38, !dbg !88
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.HashTable* @HashTable_AllocOnce(%struct.Atomic_uint64*, i32, i32, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @UnicodeHashFree(i8*) #0 !dbg !89 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !92, metadata !33), !dbg !93
  %3 = load i8*, i8** %2, align 8, !dbg !94
  call void @free(i8* %3) #4, !dbg !95
  ret void, !dbg !96
}

declare signext i8 @HashTable_Lookup(%struct.HashTable*, i8*, i8**) #2

declare i8* @UnicodeAllocStatic(i8*, i8 signext) #2

declare i8* @HashTable_LookupOrInsert(%struct.HashTable*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6)
!1 = !DIFile(filename: "unicodeStatic.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1039")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!6 = !{!7, !21}
!7 = distinct !DIGlobalVariable(name: "UnicodeStringTable", scope: !0, file: !8, line: 55, type: !9, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @UnicodeStringTable)
!8 = !DIFile(filename: "unicodeStatic.c", directory: "/home/lichi/Desktop/open-vm-tools/line1039")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !10, line: 3829, baseType: !11)
!10 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line1039")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !10, line: 139, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !10, line: 137, size: 64, align: 64, elements: !13)
!13 = !{!14}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !12, file: !10, line: 138, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !17, line: 171, baseType: !18)
!17 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1039")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !19, line: 55, baseType: !20)
!19 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1039")
!20 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!21 = distinct !DIGlobalVariable(name: "UnicodeUnescapedStringTable", scope: !0, file: !8, line: 56, type: !9, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint64* @UnicodeUnescapedStringTable)
!22 = !{i32 2, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!25 = distinct !DISubprogram(name: "Unicode_GetStatic", scope: !8, file: !8, line: 110, type: !26, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !28, !31}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !17, line: 230, baseType: !30)
!32 = !DILocalVariable(name: "asciiBytes", arg: 1, scope: !25, file: !8, line: 110, type: !28)
!33 = !DIExpression()
!34 = !DILocation(line: 110, column: 31, scope: !25)
!35 = !DILocalVariable(name: "unescape", arg: 2, scope: !25, file: !8, line: 111, type: !31)
!36 = !DILocation(line: 111, column: 24, scope: !25)
!37 = !DILocalVariable(name: "result", scope: !25, file: !8, line: 113, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!39 = !DILocation(line: 113, column: 10, scope: !25)
!40 = !DILocalVariable(name: "stringTable", scope: !25, file: !8, line: 114, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTable", file: !43, line: 40, baseType: !44)
!43 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashTable.h", directory: "/home/lichi/Desktop/open-vm-tools/line1039")
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "HashTable", file: !43, line: 40, flags: DIFlagFwdDecl)
!45 = !DILocation(line: 114, column: 15, scope: !25)
!46 = !DILocation(line: 116, column: 8, scope: !47)
!47 = distinct !DILexicalBlock(scope: !25, file: !8, line: 116, column: 8)
!48 = !DILocation(line: 116, column: 8, scope: !25)
!49 = !DILocation(line: 117, column: 21, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !8, line: 116, column: 18)
!51 = !DILocation(line: 117, column: 19, scope: !50)
!52 = !DILocation(line: 120, column: 4, scope: !50)
!53 = !DILocation(line: 121, column: 21, scope: !54)
!54 = distinct !DILexicalBlock(scope: !47, file: !8, line: 120, column: 11)
!55 = !DILocation(line: 121, column: 19, scope: !54)
!56 = !DILocation(line: 136, column: 26, scope: !57)
!57 = distinct !DILexicalBlock(scope: !25, file: !8, line: 136, column: 8)
!58 = !DILocation(line: 136, column: 39, scope: !57)
!59 = !DILocation(line: 136, column: 9, scope: !57)
!60 = !DILocation(line: 136, column: 8, scope: !25)
!61 = !DILocalVariable(name: "newData", scope: !62, file: !8, line: 137, type: !38)
!62 = distinct !DILexicalBlock(scope: !57, file: !8, line: 136, column: 71)
!63 = !DILocation(line: 137, column: 13, scope: !62)
!64 = !DILocation(line: 137, column: 42, scope: !62)
!65 = !DILocation(line: 137, column: 54, scope: !62)
!66 = !DILocation(line: 137, column: 23, scope: !62)
!67 = !DILocation(line: 139, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !62, file: !8, line: 139, column: 11)
!69 = !DILocation(line: 139, column: 11, scope: !62)
!70 = !DILocation(line: 140, column: 44, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !8, line: 139, column: 20)
!72 = !DILocation(line: 140, column: 57, scope: !71)
!73 = !DILocation(line: 140, column: 69, scope: !71)
!74 = !DILocation(line: 140, column: 19, scope: !71)
!75 = !DILocation(line: 140, column: 17, scope: !71)
!76 = !DILocation(line: 142, column: 14, scope: !77)
!77 = distinct !DILexicalBlock(scope: !71, file: !8, line: 142, column: 14)
!78 = !DILocation(line: 142, column: 24, scope: !77)
!79 = !DILocation(line: 142, column: 21, scope: !77)
!80 = !DILocation(line: 142, column: 14, scope: !71)
!81 = !DILocation(line: 143, column: 18, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !8, line: 142, column: 33)
!83 = !DILocation(line: 143, column: 13, scope: !82)
!84 = !DILocation(line: 144, column: 10, scope: !82)
!85 = !DILocation(line: 145, column: 7, scope: !71)
!86 = !DILocation(line: 146, column: 4, scope: !62)
!87 = !DILocation(line: 148, column: 11, scope: !25)
!88 = !DILocation(line: 148, column: 4, scope: !25)
!89 = distinct !DISubprogram(name: "UnicodeHashFree", scope: !8, file: !8, line: 76, type: !90, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !5}
!92 = !DILocalVariable(name: "v", arg: 1, scope: !89, file: !8, line: 76, type: !5)
!93 = !DILocation(line: 76, column: 23, scope: !89)
!94 = !DILocation(line: 78, column: 9, scope: !89)
!95 = !DILocation(line: 78, column: 4, scope: !89)
!96 = !DILocation(line: 79, column: 1, scope: !89)
