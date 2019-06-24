; ModuleID = './hostname.o.i'
source_filename = "./hostname.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }

; Function Attrs: nounwind uwtable
define i8* @Hostinfo_HostName() #0 !dbg !8 {
  %1 = alloca %struct.utsname, align 1
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostent, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct.hostent*, align 8
  call void @llvm.dbg.declare(metadata %struct.utsname* %1, metadata !14, metadata !27), !dbg !28
  call void @llvm.dbg.declare(metadata i8** %2, metadata !29, metadata !27), !dbg !30
  store i8* null, i8** %2, align 8, !dbg !30
  %8 = call i32 @uname(%struct.utsname* %1) #4, !dbg !31
  %9 = icmp eq i32 %8, 0, !dbg !33
  br i1 %9, label %10, label %38, !dbg !34

; <label>:10:                                     ; preds = %0
  %11 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 1, !dbg !35
  %12 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i32 0, i32 0, !dbg !37
  %13 = load i8, i8* %12, align 1, !dbg !37
  %14 = sext i8 %13 to i32, !dbg !37
  %15 = icmp ne i32 %14, 0, !dbg !38
  br i1 %15, label %16, label %38, !dbg !39

; <label>:16:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata i8** %3, metadata !40, metadata !27), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %4, metadata !43, metadata !27), !dbg !45
  call void @llvm.dbg.declare(metadata %struct.hostent* %5, metadata !46, metadata !27), !dbg !56
  call void @llvm.dbg.declare(metadata [1024 x i8]* %6, metadata !57, metadata !27), !dbg !61
  call void @llvm.dbg.declare(metadata %struct.hostent** %7, metadata !62, metadata !27), !dbg !64
  store %struct.hostent* %5, %struct.hostent** %7, align 8, !dbg !64
  %17 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 1, !dbg !65
  %18 = getelementptr inbounds [65 x i8], [65 x i8]* %17, i32 0, i32 0, !dbg !66
  store i8* %18, i8** %3, align 8, !dbg !67
  %19 = load i8*, i8** %3, align 8, !dbg !68
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !70
  %21 = call i32 @gethostbyname_r(i8* %19, %struct.hostent* %5, i8* %20, i64 1024, %struct.hostent** %7, i32* %4), !dbg !71
  %22 = icmp eq i32 %21, 0, !dbg !72
  br i1 %22, label %23, label %30, !dbg !73

; <label>:23:                                     ; preds = %16
  %24 = load %struct.hostent*, %struct.hostent** %7, align 8, !dbg !74
  %25 = icmp ne %struct.hostent* %24, null, !dbg !76
  br i1 %25, label %26, label %30, !dbg !77

; <label>:26:                                     ; preds = %23
  %27 = load %struct.hostent*, %struct.hostent** %7, align 8, !dbg !79
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 0, !dbg !81
  %29 = load i8*, i8** %28, align 8, !dbg !81
  store i8* %29, i8** %3, align 8, !dbg !82
  br label %30, !dbg !83

; <label>:30:                                     ; preds = %26, %23, %16
  %31 = load i8*, i8** %3, align 8, !dbg !84
  %32 = call signext i8 @Unicode_IsStringValidUTF8(i8* %31), !dbg !86
  %33 = icmp ne i8 %32, 0, !dbg !86
  br i1 %33, label %34, label %37, !dbg !87

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %3, align 8, !dbg !88
  %36 = call i8* @Unicode_Duplicate(i8* %35), !dbg !90
  store i8* %36, i8** %2, align 8, !dbg !91
  br label %37, !dbg !92

; <label>:37:                                     ; preds = %34, %30
  br label %38, !dbg !93

; <label>:38:                                     ; preds = %37, %10, %0
  %39 = load i8*, i8** %2, align 8, !dbg !94
  ret i8* %39, !dbg !95
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname*) #2

declare i32 @gethostbyname_r(i8*, %struct.hostent*, i8*, i64, %struct.hostent**, i32*) #3

declare signext i8 @Unicode_IsStringValidUTF8(i8*) #3

declare i8* @Unicode_Duplicate(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "hostname.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line616")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "Hostinfo_HostName", scope: !9, file: !9, line: 198, type: !10, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "hostname.c", directory: "/home/lichi/Desktop/open-vm-tools/line616")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "un", scope: !8, file: !9, line: 200, type: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !16, line: 48, size: 3120, align: 8, elements: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/utsname.h", directory: "/home/lichi/Desktop/open-vm-tools/line616")
!17 = !{!18, !22, !23, !24, !25, !26}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !15, file: !16, line: 51, baseType: !19, size: 520, align: 8)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 520, align: 8, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 65)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !15, file: !16, line: 54, baseType: !19, size: 520, align: 8, offset: 520)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !15, file: !16, line: 57, baseType: !19, size: 520, align: 8, offset: 1040)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !15, file: !16, line: 59, baseType: !19, size: 520, align: 8, offset: 1560)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !15, file: !16, line: 62, baseType: !19, size: 520, align: 8, offset: 2080)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__domainname", scope: !15, file: !16, line: 69, baseType: !19, size: 520, align: 8, offset: 2600)
!27 = !DIExpression()
!28 = !DILocation(line: 200, column: 19, scope: !8)
!29 = !DILocalVariable(name: "result", scope: !8, file: !9, line: 202, type: !12)
!30 = !DILocation(line: 202, column: 10, scope: !8)
!31 = !DILocation(line: 204, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !8, file: !9, line: 204, column: 8)
!33 = !DILocation(line: 204, column: 20, scope: !32)
!34 = !DILocation(line: 204, column: 26, scope: !32)
!35 = !DILocation(line: 204, column: 34, scope: !36)
!36 = !DILexicalBlockFile(scope: !32, file: !9, discriminator: 1)
!37 = !DILocation(line: 204, column: 30, scope: !36)
!38 = !DILocation(line: 204, column: 43, scope: !36)
!39 = !DILocation(line: 204, column: 8, scope: !36)
!40 = !DILocalVariable(name: "p", scope: !41, file: !9, line: 205, type: !12)
!41 = distinct !DILexicalBlock(scope: !32, file: !9, line: 204, column: 53)
!42 = !DILocation(line: 205, column: 13, scope: !41)
!43 = !DILocalVariable(name: "error", scope: !41, file: !9, line: 206, type: !44)
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DILocation(line: 206, column: 11, scope: !41)
!46 = !DILocalVariable(name: "he", scope: !41, file: !9, line: 207, type: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !48, line: 100, size: 256, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/lichi/Desktop/open-vm-tools/line616")
!49 = !{!50, !51, !53, !54, !55}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "h_name", scope: !47, file: !48, line: 102, baseType: !12, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "h_aliases", scope: !47, file: !48, line: 103, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "h_addrtype", scope: !47, file: !48, line: 104, baseType: !44, size: 32, align: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "h_length", scope: !47, file: !48, line: 105, baseType: !44, size: 32, align: 32, offset: 160)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "h_addr_list", scope: !47, file: !48, line: 106, baseType: !52, size: 64, align: 64, offset: 192)
!56 = !DILocation(line: 207, column: 22, scope: !41)
!57 = !DILocalVariable(name: "buffer", scope: !41, file: !9, line: 208, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8192, align: 8, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 1024)
!61 = !DILocation(line: 208, column: 12, scope: !41)
!62 = !DILocalVariable(name: "phe", scope: !41, file: !9, line: 210, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!64 = !DILocation(line: 210, column: 23, scope: !41)
!65 = !DILocation(line: 218, column: 14, scope: !41)
!66 = !DILocation(line: 218, column: 11, scope: !41)
!67 = !DILocation(line: 218, column: 9, scope: !41)
!68 = !DILocation(line: 220, column: 28, scope: !69)
!69 = distinct !DILexicalBlock(scope: !41, file: !9, line: 220, column: 11)
!70 = !DILocation(line: 220, column: 36, scope: !69)
!71 = !DILocation(line: 220, column: 12, scope: !69)
!72 = !DILocation(line: 221, column: 36, scope: !69)
!73 = !DILocation(line: 221, column: 42, scope: !69)
!74 = !DILocation(line: 221, column: 46, scope: !75)
!75 = !DILexicalBlockFile(scope: !69, file: !9, discriminator: 1)
!76 = !DILocation(line: 221, column: 50, scope: !75)
!77 = !DILocation(line: 220, column: 11, scope: !78)
!78 = !DILexicalBlockFile(scope: !41, file: !9, discriminator: 1)
!79 = !DILocation(line: 222, column: 14, scope: !80)
!80 = distinct !DILexicalBlock(scope: !69, file: !9, line: 221, column: 59)
!81 = !DILocation(line: 222, column: 19, scope: !80)
!82 = !DILocation(line: 222, column: 12, scope: !80)
!83 = !DILocation(line: 223, column: 7, scope: !80)
!84 = !DILocation(line: 225, column: 37, scope: !85)
!85 = distinct !DILexicalBlock(scope: !41, file: !9, line: 225, column: 11)
!86 = !DILocation(line: 225, column: 11, scope: !85)
!87 = !DILocation(line: 225, column: 11, scope: !41)
!88 = !DILocation(line: 226, column: 37, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !9, line: 225, column: 41)
!90 = !DILocation(line: 226, column: 19, scope: !89)
!91 = !DILocation(line: 226, column: 17, scope: !89)
!92 = !DILocation(line: 227, column: 7, scope: !89)
!93 = !DILocation(line: 228, column: 4, scope: !41)
!94 = !DILocation(line: 230, column: 11, scope: !8)
!95 = !DILocation(line: 230, column: 4, scope: !8)
