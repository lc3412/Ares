; ModuleID = './[inter]lib--dpkg--namevalue.o.i'
source_filename = "./[inter]lib--dpkg--namevalue.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.namevalue = type { i8*, i32, i32 }

; Function Attrs: nounwind uwtable
define %struct.namevalue* @namevalue_find_by_name(%struct.namevalue*, i8*) #0 !dbg !6 {
  %3 = alloca %struct.namevalue*, align 8
  %4 = alloca %struct.namevalue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.namevalue*, align 8
  store %struct.namevalue* %0, %struct.namevalue** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.namevalue** %4, metadata !22, metadata !23), !dbg !24
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !25, metadata !23), !dbg !26
  call void @llvm.dbg.declare(metadata %struct.namevalue** %6, metadata !27, metadata !23), !dbg !28
  %7 = load %struct.namevalue*, %struct.namevalue** %4, align 8, !dbg !29
  store %struct.namevalue* %7, %struct.namevalue** %6, align 8, !dbg !31
  br label %8, !dbg !32

; <label>:8:                                      ; preds = %27, %2
  %9 = load %struct.namevalue*, %struct.namevalue** %6, align 8, !dbg !33
  %10 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %9, i32 0, i32 0, !dbg !36
  %11 = load i8*, i8** %10, align 8, !dbg !36
  %12 = icmp ne i8* %11, null, !dbg !37
  br i1 %12, label %13, label %30, !dbg !37

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %5, align 8, !dbg !38
  %15 = load %struct.namevalue*, %struct.namevalue** %6, align 8, !dbg !41
  %16 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %15, i32 0, i32 0, !dbg !42
  %17 = load i8*, i8** %16, align 8, !dbg !42
  %18 = load %struct.namevalue*, %struct.namevalue** %6, align 8, !dbg !43
  %19 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %18, i32 0, i32 2, !dbg !44
  %20 = load i32, i32* %19, align 4, !dbg !44
  %21 = sext i32 %20 to i64, !dbg !43
  %22 = call i32 @strncasecmp(i8* %14, i8* %17, i64 %21) #3, !dbg !45
  %23 = icmp eq i32 %22, 0, !dbg !46
  br i1 %23, label %24, label %26, !dbg !47

; <label>:24:                                     ; preds = %13
  %25 = load %struct.namevalue*, %struct.namevalue** %6, align 8, !dbg !48
  store %struct.namevalue* %25, %struct.namevalue** %3, align 8, !dbg !49
  br label %31, !dbg !49

; <label>:26:                                     ; preds = %13
  br label %27, !dbg !50

; <label>:27:                                     ; preds = %26
  %28 = load %struct.namevalue*, %struct.namevalue** %6, align 8, !dbg !51
  %29 = getelementptr inbounds %struct.namevalue, %struct.namevalue* %28, i32 1, !dbg !51
  store %struct.namevalue* %29, %struct.namevalue** %6, align 8, !dbg !51
  br label %8, !dbg !53, !llvm.loop !54

; <label>:30:                                     ; preds = %8
  store %struct.namevalue* null, %struct.namevalue** %3, align 8, !dbg !56
  br label %31, !dbg !56

; <label>:31:                                     ; preds = %30, %24
  %32 = load %struct.namevalue*, %struct.namevalue** %3, align 8, !dbg !57
  ret %struct.namevalue* %32, !dbg !57
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--namevalue.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "namevalue_find_by_name", scope: !7, file: !7, line: 30, type: !8, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "namevalue.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !16}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "namevalue", file: !13, line: 35, size: 128, align: 64, elements: !14)
!13 = !DIFile(filename: "../../lib/dpkg/namevalue.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!14 = !{!15, !19, !21}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !13, line: 36, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !12, file: !13, line: 37, baseType: !20, size: 32, align: 32, offset: 64)
!20 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !12, file: !13, line: 38, baseType: !20, size: 32, align: 32, offset: 96)
!22 = !DILocalVariable(name: "head", arg: 1, scope: !6, file: !7, line: 30, type: !10)
!23 = !DIExpression()
!24 = !DILocation(line: 30, column: 48, scope: !6)
!25 = !DILocalVariable(name: "str", arg: 2, scope: !6, file: !7, line: 30, type: !16)
!26 = !DILocation(line: 30, column: 66, scope: !6)
!27 = !DILocalVariable(name: "nv", scope: !6, file: !7, line: 32, type: !10)
!28 = !DILocation(line: 32, column: 26, scope: !6)
!29 = !DILocation(line: 34, column: 12, scope: !30)
!30 = distinct !DILexicalBlock(scope: !6, file: !7, line: 34, column: 2)
!31 = !DILocation(line: 34, column: 10, scope: !30)
!32 = !DILocation(line: 34, column: 7, scope: !30)
!33 = !DILocation(line: 34, column: 18, scope: !34)
!34 = !DILexicalBlockFile(scope: !35, file: !7, discriminator: 1)
!35 = distinct !DILexicalBlock(scope: !30, file: !7, line: 34, column: 2)
!36 = !DILocation(line: 34, column: 22, scope: !34)
!37 = !DILocation(line: 34, column: 2, scope: !34)
!38 = !DILocation(line: 35, column: 19, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !7, line: 35, column: 7)
!40 = distinct !DILexicalBlock(scope: !35, file: !7, line: 34, column: 34)
!41 = !DILocation(line: 35, column: 24, scope: !39)
!42 = !DILocation(line: 35, column: 28, scope: !39)
!43 = !DILocation(line: 35, column: 34, scope: !39)
!44 = !DILocation(line: 35, column: 38, scope: !39)
!45 = !DILocation(line: 35, column: 7, scope: !39)
!46 = !DILocation(line: 35, column: 46, scope: !39)
!47 = !DILocation(line: 35, column: 7, scope: !40)
!48 = !DILocation(line: 36, column: 11, scope: !39)
!49 = !DILocation(line: 36, column: 4, scope: !39)
!50 = !DILocation(line: 37, column: 2, scope: !40)
!51 = !DILocation(line: 34, column: 30, scope: !52)
!52 = !DILexicalBlockFile(scope: !35, file: !7, discriminator: 2)
!53 = !DILocation(line: 34, column: 2, scope: !52)
!54 = distinct !{!54, !55}
!55 = !DILocation(line: 34, column: 2, scope: !6)
!56 = !DILocation(line: 39, column: 2, scope: !6)
!57 = !DILocation(line: 40, column: 1, scope: !6)
