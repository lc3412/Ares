; ModuleID = './[inter]src--file-match.o.i'
source_filename = "./[inter]src--file-match.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.match_node = type { %struct.match_node*, i8*, i8* }

; Function Attrs: nounwind uwtable
define %struct.match_node* @match_node_new(i8*, i8*, %struct.match_node*) #0 !dbg !6 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.match_node*, align 8
  %7 = alloca %struct.match_node*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !21, metadata !22), !dbg !23
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !24, metadata !22), !dbg !25
  store %struct.match_node* %2, %struct.match_node** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.match_node** %6, metadata !26, metadata !22), !dbg !27
  call void @llvm.dbg.declare(metadata %struct.match_node** %7, metadata !28, metadata !22), !dbg !29
  %8 = call i8* @m_malloc(i64 24), !dbg !30
  %9 = bitcast i8* %8 to %struct.match_node*, !dbg !30
  store %struct.match_node* %9, %struct.match_node** %7, align 8, !dbg !31
  %10 = load %struct.match_node*, %struct.match_node** %6, align 8, !dbg !32
  %11 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !33
  %12 = getelementptr inbounds %struct.match_node, %struct.match_node* %11, i32 0, i32 0, !dbg !34
  store %struct.match_node* %10, %struct.match_node** %12, align 8, !dbg !35
  %13 = load i8*, i8** %4, align 8, !dbg !36
  %14 = call i8* @m_strdup(i8* %13), !dbg !37
  %15 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !38
  %16 = getelementptr inbounds %struct.match_node, %struct.match_node* %15, i32 0, i32 2, !dbg !39
  store i8* %14, i8** %16, align 8, !dbg !40
  %17 = load i8*, i8** %5, align 8, !dbg !41
  %18 = call i8* @m_strdup(i8* %17), !dbg !42
  %19 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !43
  %20 = getelementptr inbounds %struct.match_node, %struct.match_node* %19, i32 0, i32 1, !dbg !44
  store i8* %18, i8** %20, align 8, !dbg !45
  %21 = load %struct.match_node*, %struct.match_node** %7, align 8, !dbg !46
  ret %struct.match_node* %21, !dbg !47
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @m_malloc(i64) #2

declare i8* @m_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @match_node_free(%struct.match_node*) #0 !dbg !48 {
  %2 = alloca %struct.match_node*, align 8
  store %struct.match_node* %0, %struct.match_node** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.match_node** %2, metadata !51, metadata !22), !dbg !52
  %3 = load %struct.match_node*, %struct.match_node** %2, align 8, !dbg !53
  %4 = getelementptr inbounds %struct.match_node, %struct.match_node* %3, i32 0, i32 1, !dbg !54
  %5 = load i8*, i8** %4, align 8, !dbg !54
  call void @free(i8* %5) #4, !dbg !55
  %6 = load %struct.match_node*, %struct.match_node** %2, align 8, !dbg !56
  %7 = getelementptr inbounds %struct.match_node, %struct.match_node* %6, i32 0, i32 2, !dbg !57
  %8 = load i8*, i8** %7, align 8, !dbg !57
  call void @free(i8* %8) #4, !dbg !58
  %9 = load %struct.match_node*, %struct.match_node** %2, align 8, !dbg !59
  %10 = bitcast %struct.match_node* %9 to i8*, !dbg !59
  call void @free(i8* %10) #4, !dbg !60
  ret void, !dbg !61
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
!1 = !DIFile(filename: "[inter]src--file-match.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "match_node_new", scope: !7, file: !7, line: 31, type: !8, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "file-match.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !19, !19, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "match_node", file: !12, line: 24, size: 192, align: 64, elements: !13)
!12 = !DIFile(filename: "file-match.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!13 = !{!14, !15, !18}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !12, line: 25, baseType: !10, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "filetype", scope: !11, file: !12, line: 26, baseType: !16, size: 64, align: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !11, file: !12, line: 27, baseType: !16, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!21 = !DILocalVariable(name: "name", arg: 1, scope: !6, file: !7, line: 31, type: !19)
!22 = !DIExpression()
!23 = !DILocation(line: 31, column: 28, scope: !6)
!24 = !DILocalVariable(name: "type", arg: 2, scope: !6, file: !7, line: 31, type: !19)
!25 = !DILocation(line: 31, column: 46, scope: !6)
!26 = !DILocalVariable(name: "next", arg: 3, scope: !6, file: !7, line: 31, type: !10)
!27 = !DILocation(line: 31, column: 71, scope: !6)
!28 = !DILocalVariable(name: "node", scope: !6, file: !7, line: 33, type: !10)
!29 = !DILocation(line: 33, column: 21, scope: !6)
!30 = !DILocation(line: 35, column: 9, scope: !6)
!31 = !DILocation(line: 35, column: 7, scope: !6)
!32 = !DILocation(line: 36, column: 15, scope: !6)
!33 = !DILocation(line: 36, column: 2, scope: !6)
!34 = !DILocation(line: 36, column: 8, scope: !6)
!35 = !DILocation(line: 36, column: 13, scope: !6)
!36 = !DILocation(line: 37, column: 28, scope: !6)
!37 = !DILocation(line: 37, column: 19, scope: !6)
!38 = !DILocation(line: 37, column: 2, scope: !6)
!39 = !DILocation(line: 37, column: 8, scope: !6)
!40 = !DILocation(line: 37, column: 17, scope: !6)
!41 = !DILocation(line: 38, column: 28, scope: !6)
!42 = !DILocation(line: 38, column: 19, scope: !6)
!43 = !DILocation(line: 38, column: 2, scope: !6)
!44 = !DILocation(line: 38, column: 8, scope: !6)
!45 = !DILocation(line: 38, column: 17, scope: !6)
!46 = !DILocation(line: 40, column: 9, scope: !6)
!47 = !DILocation(line: 40, column: 2, scope: !6)
!48 = distinct !DISubprogram(name: "match_node_free", scope: !7, file: !7, line: 44, type: !49, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !10}
!51 = !DILocalVariable(name: "node", arg: 1, scope: !48, file: !7, line: 44, type: !10)
!52 = !DILocation(line: 44, column: 36, scope: !48)
!53 = !DILocation(line: 46, column: 7, scope: !48)
!54 = !DILocation(line: 46, column: 13, scope: !48)
!55 = !DILocation(line: 46, column: 2, scope: !48)
!56 = !DILocation(line: 47, column: 7, scope: !48)
!57 = !DILocation(line: 47, column: 13, scope: !48)
!58 = !DILocation(line: 47, column: 2, scope: !48)
!59 = !DILocation(line: 48, column: 7, scope: !48)
!60 = !DILocation(line: 48, column: 2, scope: !48)
!61 = !DILocation(line: 49, column: 1, scope: !48)
