; ModuleID = './libSyncDriver_la-nullDriver.o.i'
source_filename = "./libSyncDriver_la-nullDriver.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.SyncHandle = type { i32 (%struct.SyncHandle*)*, void (%struct.SyncHandle*)*, void (%struct.SyncHandle*, i8**, i8*)* }

@.str = private unnamed_addr constant [34 x i8] c"SyncDriver: Using null driver...\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @NullDriver_Freeze(%struct._GSList*, %struct.SyncHandle**) #0 !dbg !14 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.SyncHandle**, align 8
  %6 = alloca %struct.SyncHandle*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !57, metadata !58), !dbg !59
  store %struct.SyncHandle** %1, %struct.SyncHandle*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle*** %5, metadata !60, metadata !58), !dbg !61
  call void @llvm.dbg.declare(metadata %struct.SyncHandle** %6, metadata !62, metadata !58), !dbg !65
  %7 = call noalias i8* @calloc(i64 1, i64 24) #4, !dbg !66
  %8 = bitcast i8* %7 to %struct.SyncHandle*, !dbg !66
  store %struct.SyncHandle* %8, %struct.SyncHandle** %6, align 8, !dbg !65
  %9 = load %struct.SyncHandle*, %struct.SyncHandle** %6, align 8, !dbg !67
  %10 = icmp eq %struct.SyncHandle* %9, null, !dbg !69
  br i1 %10, label %11, label %12, !dbg !70

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !71
  br label %17, !dbg !71

; <label>:12:                                     ; preds = %2
  %13 = load %struct.SyncHandle*, %struct.SyncHandle** %6, align 8, !dbg !73
  %14 = getelementptr inbounds %struct.SyncHandle, %struct.SyncHandle* %13, i32 0, i32 1, !dbg !74
  store void (%struct.SyncHandle*)* @NullDriverClose, void (%struct.SyncHandle*)** %14, align 8, !dbg !75
  %15 = load %struct.SyncHandle*, %struct.SyncHandle** %6, align 8, !dbg !76
  %16 = load %struct.SyncHandle**, %struct.SyncHandle*** %5, align 8, !dbg !77
  store %struct.SyncHandle* %15, %struct.SyncHandle** %16, align 8, !dbg !78
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0)), !dbg !79
  call void @sync() #4, !dbg !80
  store i32 0, i32* %3, align 4, !dbg !81
  br label %17, !dbg !81

; <label>:17:                                     ; preds = %12, %11
  %18 = load i32, i32* %3, align 4, !dbg !82
  ret i32 %18, !dbg !82
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @NullDriverClose(%struct.SyncHandle*) #0 !dbg !83 {
  %2 = alloca %struct.SyncHandle*, align 8
  store %struct.SyncHandle* %0, %struct.SyncHandle** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle** %2, metadata !84, metadata !58), !dbg !85
  %3 = load %struct.SyncHandle*, %struct.SyncHandle** %2, align 8, !dbg !86
  %4 = bitcast %struct.SyncHandle* %3 to i8*, !dbg !86
  call void @free(i8* %4) #4, !dbg !87
  ret void, !dbg !88
}

declare void @Debug(i8*, ...) #3

; Function Attrs: nounwind
declare void @sync() #2

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "libSyncDriver_la-nullDriver.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line967")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 37, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "syncDriverInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line967")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "SD_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "SD_ERROR", value: 1)
!8 = !DIEnumerator(name: "SD_UNAVAILABLE", value: 2)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "NullDriver_Freeze", scope: !15, file: !15, line: 66, type: !16, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!15 = !DIFile(filename: "nullDriver.c", directory: "/home/lichi/Desktop/open-vm-tools/line967")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !30}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverErr", file: !4, line: 41, baseType: !3)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !22, line: 37, baseType: !23)
!22 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line967")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !22, line: 39, size: 128, align: 64, elements: !24)
!24 = !{!25, !28}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !23, file: !22, line: 41, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !27, line: 77, baseType: !10)
!27 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line967")
!28 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !23, file: !22, line: 42, baseType: !29, size: 64, align: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverHandle", file: !32, line: 41, baseType: !33)
!32 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/syncDriver.h", directory: "/home/lichi/Desktop/open-vm-tools/line967")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SyncHandle", file: !4, line: 46, size: 192, align: 64, elements: !35)
!35 = !{!36, !41, !45}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !34, file: !4, line: 47, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!18, !40}
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !34, file: !4, line: 48, baseType: !42, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !31}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !34, file: !4, line: 50, baseType: !46, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !40, !49, !53}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !55, line: 230, baseType: !52)
!55 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line967")
!56 = !{}
!57 = !DILocalVariable(name: "paths", arg: 1, scope: !14, file: !15, line: 66, type: !19)
!58 = !DIExpression()
!59 = !DILocation(line: 66, column: 33, scope: !14)
!60 = !DILocalVariable(name: "handle", arg: 2, scope: !14, file: !15, line: 67, type: !30)
!61 = !DILocation(line: 67, column: 37, scope: !14)
!62 = !DILocalVariable(name: "h", scope: !14, file: !15, line: 74, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncHandle", file: !4, line: 53, baseType: !34)
!65 = !DILocation(line: 74, column: 16, scope: !14)
!66 = !DILocation(line: 74, column: 20, scope: !14)
!67 = !DILocation(line: 75, column: 8, scope: !68)
!68 = distinct !DILexicalBlock(scope: !14, file: !15, line: 75, column: 8)
!69 = !DILocation(line: 75, column: 10, scope: !68)
!70 = !DILocation(line: 75, column: 8, scope: !14)
!71 = !DILocation(line: 76, column: 7, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !15, line: 75, column: 18)
!73 = !DILocation(line: 79, column: 4, scope: !14)
!74 = !DILocation(line: 79, column: 7, scope: !14)
!75 = !DILocation(line: 79, column: 13, scope: !14)
!76 = !DILocation(line: 80, column: 14, scope: !14)
!77 = !DILocation(line: 80, column: 5, scope: !14)
!78 = !DILocation(line: 80, column: 12, scope: !14)
!79 = !DILocation(line: 82, column: 4, scope: !14)
!80 = !DILocation(line: 83, column: 4, scope: !14)
!81 = !DILocation(line: 84, column: 4, scope: !14)
!82 = !DILocation(line: 85, column: 1, scope: !14)
!83 = distinct !DISubprogram(name: "NullDriverClose", scope: !15, file: !15, line: 45, type: !43, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!84 = !DILocalVariable(name: "handle", arg: 1, scope: !83, file: !15, line: 45, type: !31)
!85 = !DILocation(line: 45, column: 34, scope: !83)
!86 = !DILocation(line: 47, column: 9, scope: !83)
!87 = !DILocation(line: 47, column: 4, scope: !83)
!88 = !DILocation(line: 48, column: 1, scope: !83)
