; ModuleID = './[inter]lib--dpkg--glob.o.i'
source_filename = "./[inter]lib--dpkg--glob.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.glob_node = type { %struct.glob_node*, i8* }

; Function Attrs: nounwind uwtable
define void @glob_list_prepend(%struct.glob_node**, i8*) #0 !dbg !6 {
  %3 = alloca %struct.glob_node**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.glob_node*, align 8
  store %struct.glob_node** %0, %struct.glob_node*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.glob_node*** %3, metadata !19, metadata !20), !dbg !21
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !22, metadata !20), !dbg !23
  call void @llvm.dbg.declare(metadata %struct.glob_node** %5, metadata !24, metadata !20), !dbg !25
  %6 = call i8* @m_malloc(i64 16), !dbg !26
  %7 = bitcast i8* %6 to %struct.glob_node*, !dbg !26
  store %struct.glob_node* %7, %struct.glob_node** %5, align 8, !dbg !27
  %8 = load i8*, i8** %4, align 8, !dbg !28
  %9 = load %struct.glob_node*, %struct.glob_node** %5, align 8, !dbg !29
  %10 = getelementptr inbounds %struct.glob_node, %struct.glob_node* %9, i32 0, i32 1, !dbg !30
  store i8* %8, i8** %10, align 8, !dbg !31
  %11 = load %struct.glob_node**, %struct.glob_node*** %3, align 8, !dbg !32
  %12 = load %struct.glob_node*, %struct.glob_node** %11, align 8, !dbg !33
  %13 = load %struct.glob_node*, %struct.glob_node** %5, align 8, !dbg !34
  %14 = getelementptr inbounds %struct.glob_node, %struct.glob_node* %13, i32 0, i32 0, !dbg !35
  store %struct.glob_node* %12, %struct.glob_node** %14, align 8, !dbg !36
  %15 = load %struct.glob_node*, %struct.glob_node** %5, align 8, !dbg !37
  %16 = load %struct.glob_node**, %struct.glob_node*** %3, align 8, !dbg !38
  store %struct.glob_node* %15, %struct.glob_node** %16, align 8, !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @m_malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @glob_list_free(%struct.glob_node*) #0 !dbg !41 {
  %2 = alloca %struct.glob_node*, align 8
  %3 = alloca %struct.glob_node*, align 8
  store %struct.glob_node* %0, %struct.glob_node** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.glob_node** %2, metadata !44, metadata !20), !dbg !45
  br label %4, !dbg !46

; <label>:4:                                      ; preds = %7, %1
  %5 = load %struct.glob_node*, %struct.glob_node** %2, align 8, !dbg !47
  %6 = icmp ne %struct.glob_node* %5, null, !dbg !49
  br i1 %6, label %7, label %17, !dbg !49

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.glob_node** %3, metadata !50, metadata !20), !dbg !52
  %8 = load %struct.glob_node*, %struct.glob_node** %2, align 8, !dbg !53
  store %struct.glob_node* %8, %struct.glob_node** %3, align 8, !dbg !52
  %9 = load %struct.glob_node*, %struct.glob_node** %2, align 8, !dbg !54
  %10 = getelementptr inbounds %struct.glob_node, %struct.glob_node* %9, i32 0, i32 0, !dbg !55
  %11 = load %struct.glob_node*, %struct.glob_node** %10, align 8, !dbg !55
  store %struct.glob_node* %11, %struct.glob_node** %2, align 8, !dbg !56
  %12 = load %struct.glob_node*, %struct.glob_node** %3, align 8, !dbg !57
  %13 = getelementptr inbounds %struct.glob_node, %struct.glob_node* %12, i32 0, i32 1, !dbg !58
  %14 = load i8*, i8** %13, align 8, !dbg !58
  call void @free(i8* %14) #4, !dbg !59
  %15 = load %struct.glob_node*, %struct.glob_node** %3, align 8, !dbg !60
  %16 = bitcast %struct.glob_node* %15 to i8*, !dbg !60
  call void @free(i8* %16) #4, !dbg !61
  br label %4, !dbg !62, !llvm.loop !64

; <label>:17:                                     ; preds = %4
  ret void, !dbg !65
}

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--glob.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "glob_list_prepend", scope: !7, file: !7, line: 30, type: !8, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "glob.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !17}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "glob_node", file: !13, line: 34, size: 128, align: 64, elements: !14)
!13 = !DIFile(filename: "../../lib/dpkg/glob.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!14 = !{!15, !16}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !13, line: 35, baseType: !11, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !12, file: !13, line: 36, baseType: !17, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DILocalVariable(name: "list", arg: 1, scope: !6, file: !7, line: 30, type: !10)
!20 = !DIExpression()
!21 = !DILocation(line: 30, column: 38, scope: !6)
!22 = !DILocalVariable(name: "pattern", arg: 2, scope: !6, file: !7, line: 30, type: !17)
!23 = !DILocation(line: 30, column: 50, scope: !6)
!24 = !DILocalVariable(name: "node", scope: !6, file: !7, line: 32, type: !11)
!25 = !DILocation(line: 32, column: 20, scope: !6)
!26 = !DILocation(line: 34, column: 9, scope: !6)
!27 = !DILocation(line: 34, column: 7, scope: !6)
!28 = !DILocation(line: 35, column: 18, scope: !6)
!29 = !DILocation(line: 35, column: 2, scope: !6)
!30 = !DILocation(line: 35, column: 8, scope: !6)
!31 = !DILocation(line: 35, column: 16, scope: !6)
!32 = !DILocation(line: 36, column: 16, scope: !6)
!33 = !DILocation(line: 36, column: 15, scope: !6)
!34 = !DILocation(line: 36, column: 2, scope: !6)
!35 = !DILocation(line: 36, column: 8, scope: !6)
!36 = !DILocation(line: 36, column: 13, scope: !6)
!37 = !DILocation(line: 37, column: 10, scope: !6)
!38 = !DILocation(line: 37, column: 3, scope: !6)
!39 = !DILocation(line: 37, column: 8, scope: !6)
!40 = !DILocation(line: 38, column: 1, scope: !6)
!41 = distinct !DISubprogram(name: "glob_list_free", scope: !7, file: !7, line: 41, type: !42, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !11}
!44 = !DILocalVariable(name: "head", arg: 1, scope: !41, file: !7, line: 41, type: !11)
!45 = !DILocation(line: 41, column: 34, scope: !41)
!46 = !DILocation(line: 43, column: 2, scope: !41)
!47 = !DILocation(line: 43, column: 9, scope: !48)
!48 = !DILexicalBlockFile(scope: !41, file: !7, discriminator: 1)
!49 = !DILocation(line: 43, column: 2, scope: !48)
!50 = !DILocalVariable(name: "node", scope: !51, file: !7, line: 44, type: !11)
!51 = distinct !DILexicalBlock(scope: !41, file: !7, line: 43, column: 15)
!52 = !DILocation(line: 44, column: 21, scope: !51)
!53 = !DILocation(line: 44, column: 28, scope: !51)
!54 = !DILocation(line: 46, column: 10, scope: !51)
!55 = !DILocation(line: 46, column: 16, scope: !51)
!56 = !DILocation(line: 46, column: 8, scope: !51)
!57 = !DILocation(line: 47, column: 8, scope: !51)
!58 = !DILocation(line: 47, column: 14, scope: !51)
!59 = !DILocation(line: 47, column: 3, scope: !51)
!60 = !DILocation(line: 48, column: 8, scope: !51)
!61 = !DILocation(line: 48, column: 3, scope: !51)
!62 = !DILocation(line: 43, column: 2, scope: !63)
!63 = !DILexicalBlockFile(scope: !41, file: !7, discriminator: 2)
!64 = distinct !{!64, !46}
!65 = !DILocation(line: 50, column: 1, scope: !41)
