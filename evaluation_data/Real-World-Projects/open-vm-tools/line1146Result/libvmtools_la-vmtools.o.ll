; ModuleID = './libvmtools_la-vmtools.o.i'
source_filename = "./libvmtools_la-vmtools.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GArray = type { i8*, i32 }
%struct.WiperInitData = type {}

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@.str = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"vmtools.c\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @VMToolsDllInit to void ()*), i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @VMToolsDllFini, i8* null }]

; Function Attrs: nounwind uwtable
define %struct._GArray* @VMTools_WrapArray(i8*, i32, i32) #0 !dbg !14 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._GArray*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !32, metadata !33), !dbg !34
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !35, metadata !33), !dbg !36
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !37, metadata !33), !dbg !38
  call void @llvm.dbg.declare(metadata %struct._GArray** %7, metadata !39, metadata !33), !dbg !40
  %8 = load i32, i32* %5, align 4, !dbg !41
  %9 = load i32, i32* %6, align 4, !dbg !42
  %10 = call %struct._GArray* @g_array_sized_new(i32 0, i32 1, i32 %8, i32 %9), !dbg !43
  store %struct._GArray* %10, %struct._GArray** %7, align 8, !dbg !44
  %11 = load %struct._GArray*, %struct._GArray** %7, align 8, !dbg !45
  %12 = getelementptr inbounds %struct._GArray, %struct._GArray* %11, i32 0, i32 0, !dbg !46
  %13 = load i8*, i8** %12, align 8, !dbg !46
  %14 = load i8*, i8** %4, align 8, !dbg !47
  %15 = load i32, i32* %5, align 4, !dbg !48
  %16 = load i32, i32* %6, align 4, !dbg !49
  %17 = mul i32 %15, %16, !dbg !50
  %18 = zext i32 %17 to i64, !dbg !48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %18, i32 1, i1 false), !dbg !51
  %19 = load i32, i32* %6, align 4, !dbg !52
  %20 = load %struct._GArray*, %struct._GArray** %7, align 8, !dbg !53
  %21 = getelementptr inbounds %struct._GArray, %struct._GArray* %20, i32 0, i32 1, !dbg !54
  store i32 %19, i32* %21, align 8, !dbg !55
  %22 = load %struct._GArray*, %struct._GArray** %7, align 8, !dbg !56
  ret %struct._GArray* %22, !dbg !57
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._GArray* @g_array_sized_new(i32, i32, i32, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @VMToolsDllInit(i8*) #0 !dbg !58 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.WiperInitData, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !62, metadata !33), !dbg !63
  call void @llvm.dbg.declare(metadata i8* %3, metadata !64, metadata !33), !dbg !67
  call void @llvm.dbg.declare(metadata %struct.WiperInitData* %4, metadata !68, metadata !33), !dbg !72
  %5 = call signext i8 @Wiper_Init(%struct.WiperInitData* null), !dbg !73
  store i8 %5, i8* %3, align 1, !dbg !74
  %6 = load i8, i8* %3, align 1, !dbg !75
  %7 = icmp ne i8 %6, 0, !dbg !78
  %8 = xor i1 %7, true, !dbg !78
  %9 = zext i1 %8 to i32, !dbg !78
  %10 = sext i32 %9 to i64, !dbg !79
  %11 = icmp ne i64 %10, 0, !dbg !80
  br i1 %11, label %12, label %13, !dbg !81

; <label>:12:                                     ; preds = %1
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 97) #6, !dbg !82
  unreachable, !dbg !82

; <label>:13:                                     ; preds = %1
  ret void, !dbg !85
}

declare signext i8 @Wiper_Init(%struct.WiperInitData*) #2

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal void @VMToolsDllFini() #0 !dbg !86 {
  call void @VMToolsMsgCleanup(), !dbg !89
  ret void, !dbg !90
}

declare void @VMToolsMsgCleanup() #2

; Function Attrs: nounwind uwtable
define void @vm_free(i8*) #0 !dbg !91 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !92, metadata !33), !dbg !93
  %3 = load i8*, i8** %2, align 8, !dbg !94
  call void @free(i8* %3) #7, !dbg !95
  ret void, !dbg !96
}

; Function Attrs: nounwind
declare void @free(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "libvmtools_la-vmtools.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1146")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !5, line: 44, type: !6, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!5 = !DIFile(filename: "vmtools.c", directory: "/home/lichi/Desktop/open-vm-tools/line1146")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, align: 8, elements: !9)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 20)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "VMTools_WrapArray", scope: !5, file: !5, line: 60, type: !15, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !29, !27, !27}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !19, line: 37, baseType: !20)
!19 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1146")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !19, line: 41, size: 128, align: 64, elements: !21)
!21 = !{!22, !26}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !20, file: !19, line: 43, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !25, line: 46, baseType: !8)
!25 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1146")
!26 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !20, file: !19, line: 44, baseType: !27, size: 32, align: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !25, line: 55, baseType: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !25, line: 78, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!32 = !DILocalVariable(name: "data", arg: 1, scope: !14, file: !5, line: 60, type: !29)
!33 = !DIExpression()
!34 = !DILocation(line: 60, column: 33, scope: !14)
!35 = !DILocalVariable(name: "elemSize", arg: 2, scope: !14, file: !5, line: 61, type: !27)
!36 = !DILocation(line: 61, column: 25, scope: !14)
!37 = !DILocalVariable(name: "count", arg: 3, scope: !14, file: !5, line: 62, type: !27)
!38 = !DILocation(line: 62, column: 25, scope: !14)
!39 = !DILocalVariable(name: "array", scope: !14, file: !5, line: 64, type: !17)
!40 = !DILocation(line: 64, column: 12, scope: !14)
!41 = !DILocation(line: 66, column: 43, scope: !14)
!42 = !DILocation(line: 66, column: 53, scope: !14)
!43 = !DILocation(line: 66, column: 12, scope: !14)
!44 = !DILocation(line: 66, column: 10, scope: !14)
!45 = !DILocation(line: 67, column: 11, scope: !14)
!46 = !DILocation(line: 67, column: 18, scope: !14)
!47 = !DILocation(line: 67, column: 24, scope: !14)
!48 = !DILocation(line: 67, column: 30, scope: !14)
!49 = !DILocation(line: 67, column: 41, scope: !14)
!50 = !DILocation(line: 67, column: 39, scope: !14)
!51 = !DILocation(line: 67, column: 4, scope: !14)
!52 = !DILocation(line: 68, column: 17, scope: !14)
!53 = !DILocation(line: 68, column: 4, scope: !14)
!54 = !DILocation(line: 68, column: 11, scope: !14)
!55 = !DILocation(line: 68, column: 15, scope: !14)
!56 = !DILocation(line: 70, column: 11, scope: !14)
!57 = !DILocation(line: 70, column: 4, scope: !14)
!58 = distinct !DISubprogram(name: "VMToolsDllInit", scope: !5, file: !5, line: 84, type: !59, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!62 = !DILocalVariable(name: "lib", arg: 1, scope: !58, file: !5, line: 84, type: !61)
!63 = !DILocation(line: 84, column: 22, scope: !58)
!64 = !DILocalVariable(name: "success", scope: !58, file: !5, line: 86, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !66, line: 230, baseType: !8)
!66 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1146")
!67 = !DILocation(line: 86, column: 9, scope: !58)
!68 = !DILocalVariable(name: "wiperData", scope: !58, file: !5, line: 87, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperInitData", file: !70, line: 96, baseType: !71)
!70 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/wiper.h", directory: "/home/lichi/Desktop/open-vm-tools/line1146")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WiperInitData", file: !70, line: 92, align: 8, elements: !2)
!72 = !DILocation(line: 87, column: 18, scope: !58)
!73 = !DILocation(line: 96, column: 14, scope: !58)
!74 = !DILocation(line: 96, column: 12, scope: !58)
!75 = !DILocation(line: 97, column: 30, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !5, line: 97, column: 10)
!77 = distinct !DILexicalBlock(scope: !58, file: !5, line: 97, column: 5)
!78 = !DILocation(line: 97, column: 28, scope: !76)
!79 = !DILocation(line: 97, column: 27, scope: !76)
!80 = !DILocation(line: 97, column: 10, scope: !76)
!81 = !DILocation(line: 97, column: 10, scope: !77)
!82 = !DILocation(line: 97, column: 47, scope: !83)
!83 = !DILexicalBlockFile(scope: !84, file: !5, discriminator: 1)
!84 = distinct !DILexicalBlock(scope: !76, file: !5, line: 97, column: 45)
!85 = !DILocation(line: 99, column: 1, scope: !58)
!86 = distinct !DISubprogram(name: "VMToolsDllFini", scope: !5, file: !5, line: 110, type: !87, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!87 = !DISubroutineType(types: !88)
!88 = !{null}
!89 = !DILocation(line: 115, column: 4, scope: !86)
!90 = !DILocation(line: 116, column: 1, scope: !86)
!91 = distinct !DISubprogram(name: "vm_free", scope: !5, file: !5, line: 126, type: !59, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!92 = !DILocalVariable(name: "ptr", arg: 1, scope: !91, file: !5, line: 126, type: !61)
!93 = !DILocation(line: 126, column: 15, scope: !91)
!94 = !DILocation(line: 128, column: 9, scope: !91)
!95 = !DILocation(line: 128, column: 4, scope: !91)
!96 = !DILocation(line: 129, column: 1, scope: !91)
