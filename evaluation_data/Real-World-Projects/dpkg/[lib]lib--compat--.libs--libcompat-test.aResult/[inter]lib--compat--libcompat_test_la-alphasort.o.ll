; ModuleID = './[inter]lib--compat--libcompat_test_la-alphasort.o.i'
source_filename = "./[inter]lib--compat--libcompat_test_la-alphasort.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

; Function Attrs: nounwind uwtable
define i32 @test_alphasort(i8*, i8*) #0 !dbg !29 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !36, metadata !37), !dbg !38
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !39, metadata !37), !dbg !40
  %5 = load i8*, i8** %3, align 8, !dbg !41
  %6 = bitcast i8* %5 to %struct.dirent**, !dbg !42
  %7 = load %struct.dirent*, %struct.dirent** %6, align 8, !dbg !43
  %8 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4, !dbg !44
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !45
  %10 = load i8*, i8** %4, align 8, !dbg !46
  %11 = bitcast i8* %10 to %struct.dirent**, !dbg !47
  %12 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !48
  %13 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 4, !dbg !49
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i32 0, i32 0, !dbg !50
  %15 = call i32 @strcmp(i8* %9, i8* %14) #3, !dbg !51
  ret i32 %15, !dbg !52
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--compat--libcompat_test_la-alphasort.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !8, line: 22, size: 2240, align: 64, elements: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!9 = !{!10, !14, !17, !19, !21}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !7, file: !8, line: 25, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !12, line: 127, baseType: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!13 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !7, file: !8, line: 26, baseType: !15, size: 64, align: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !12, line: 131, baseType: !16)
!16 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !7, file: !8, line: 31, baseType: !18, size: 16, align: 16, offset: 128)
!18 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !7, file: !8, line: 32, baseType: !20, size: 8, align: 8, offset: 144)
!20 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !7, file: !8, line: 33, baseType: !22, size: 2048, align: 8, offset: 152)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, align: 8, elements: !24)
!23 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!24 = !{!25}
!25 = !DISubrange(count: 256)
!26 = !{i32 2, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!29 = distinct !DISubprogram(name: "test_alphasort", scope: !30, file: !30, line: 28, type: !31, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!30 = !DIFile(filename: "alphasort.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !34, !34}
!33 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!36 = !DILocalVariable(name: "a", arg: 1, scope: !29, file: !30, line: 28, type: !34)
!37 = !DIExpression()
!38 = !DILocation(line: 28, column: 28, scope: !29)
!39 = !DILocalVariable(name: "b", arg: 2, scope: !29, file: !30, line: 28, type: !34)
!40 = !DILocation(line: 28, column: 43, scope: !29)
!41 = !DILocation(line: 30, column: 42, scope: !29)
!42 = !DILocation(line: 30, column: 18, scope: !29)
!43 = !DILocation(line: 30, column: 17, scope: !29)
!44 = !DILocation(line: 30, column: 46, scope: !29)
!45 = !DILocation(line: 30, column: 16, scope: !29)
!46 = !DILocation(line: 31, column: 42, scope: !29)
!47 = !DILocation(line: 31, column: 18, scope: !29)
!48 = !DILocation(line: 31, column: 17, scope: !29)
!49 = !DILocation(line: 31, column: 46, scope: !29)
!50 = !DILocation(line: 31, column: 16, scope: !29)
!51 = !DILocation(line: 30, column: 9, scope: !29)
!52 = !DILocation(line: 30, column: 2, scope: !29)
