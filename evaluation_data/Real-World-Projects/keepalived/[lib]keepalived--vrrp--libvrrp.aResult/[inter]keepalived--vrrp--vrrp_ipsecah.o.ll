; ModuleID = './[inter]keepalived--vrrp--vrrp_ipsecah.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_ipsecah.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MD5state_st = type { i32, i32, i32, i32, i32, i32, [16 x i32], i32 }

; Function Attrs: nounwind uwtable
define void @hmac_md5(i8*, i64, i8*, i64, i8*) #0 !dbg !6 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.MD5state_st, align 4
  %12 = alloca [65 x i8], align 16
  %13 = alloca [65 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.MD5state_st, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !15, metadata !16), !dbg !17
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !18, metadata !16), !dbg !19
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !20, metadata !16), !dbg !21
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !22, metadata !16), !dbg !23
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !24, metadata !16), !dbg !25
  call void @llvm.dbg.declare(metadata %struct.MD5state_st* %11, metadata !26, metadata !16), !dbg !43
  call void @llvm.dbg.declare(metadata [65 x i8]* %12, metadata !44, metadata !16), !dbg !48
  call void @llvm.dbg.declare(metadata [65 x i8]* %13, metadata !49, metadata !16), !dbg !50
  call void @llvm.dbg.declare(metadata [16 x i8]* %14, metadata !51, metadata !16), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %15, metadata !54, metadata !16), !dbg !56
  %17 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i32 0, i32 0, !dbg !57
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 65, i32 16, i1 false), !dbg !57
  %18 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i32 0, i32 0, !dbg !58
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 65, i32 16, i1 false), !dbg !58
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0, !dbg !59
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 16, i32 16, i1 false), !dbg !59
  %20 = load i64, i64* %9, align 8, !dbg !60
  %21 = icmp ugt i64 %20, 64, !dbg !62
  br i1 %21, label %22, label %30, !dbg !63

; <label>:22:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata %struct.MD5state_st* %16, metadata !64, metadata !16), !dbg !66
  %23 = call i32 @MD5_Init(%struct.MD5state_st* %16), !dbg !67
  %24 = load i8*, i8** %8, align 8, !dbg !68
  %25 = load i64, i64* %9, align 8, !dbg !69
  %26 = call i32 @MD5_Update(%struct.MD5state_st* %16, i8* %24, i64 %25), !dbg !70
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0, !dbg !71
  %28 = call i32 @MD5_Final(i8* %27, %struct.MD5state_st* %16), !dbg !72
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0, !dbg !73
  store i8* %29, i8** %8, align 8, !dbg !74
  store i64 16, i64* %9, align 8, !dbg !75
  br label %30, !dbg !76

; <label>:30:                                     ; preds = %22, %5
  %31 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i32 0, i32 0, !dbg !77
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 65, i32 16, i1 false), !dbg !77
  %32 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i32 0, i32 0, !dbg !78
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 65, i32 16, i1 false), !dbg !78
  %33 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i32 0, i32 0, !dbg !79
  %34 = load i8*, i8** %8, align 8, !dbg !80
  %35 = load i64, i64* %9, align 8, !dbg !81
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 %35, i32 1, i1 false), !dbg !79
  %36 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i32 0, i32 0, !dbg !82
  %37 = load i8*, i8** %8, align 8, !dbg !83
  %38 = load i64, i64* %9, align 8, !dbg !84
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 %38, i32 1, i1 false), !dbg !82
  store i32 0, i32* %15, align 4, !dbg !85
  br label %39, !dbg !87

; <label>:39:                                     ; preds = %57, %30
  %40 = load i32, i32* %15, align 4, !dbg !88
  %41 = icmp slt i32 %40, 64, !dbg !91
  br i1 %41, label %42, label %60, !dbg !92

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %15, align 4, !dbg !93
  %44 = sext i32 %43 to i64, !dbg !95
  %45 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i64 0, i64 %44, !dbg !95
  %46 = load i8, i8* %45, align 1, !dbg !96
  %47 = zext i8 %46 to i32, !dbg !96
  %48 = xor i32 %47, 54, !dbg !96
  %49 = trunc i32 %48 to i8, !dbg !96
  store i8 %49, i8* %45, align 1, !dbg !96
  %50 = load i32, i32* %15, align 4, !dbg !97
  %51 = sext i32 %50 to i64, !dbg !98
  %52 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i64 0, i64 %51, !dbg !98
  %53 = load i8, i8* %52, align 1, !dbg !99
  %54 = zext i8 %53 to i32, !dbg !99
  %55 = xor i32 %54, 92, !dbg !99
  %56 = trunc i32 %55 to i8, !dbg !99
  store i8 %56, i8* %52, align 1, !dbg !99
  br label %57, !dbg !100

; <label>:57:                                     ; preds = %42
  %58 = load i32, i32* %15, align 4, !dbg !101
  %59 = add nsw i32 %58, 1, !dbg !101
  store i32 %59, i32* %15, align 4, !dbg !101
  br label %39, !dbg !103, !llvm.loop !104

; <label>:60:                                     ; preds = %39
  %61 = call i32 @MD5_Init(%struct.MD5state_st* %11), !dbg !106
  %62 = getelementptr inbounds [65 x i8], [65 x i8]* %12, i32 0, i32 0, !dbg !107
  %63 = call i32 @MD5_Update(%struct.MD5state_st* %11, i8* %62, i64 64), !dbg !108
  %64 = load i8*, i8** %6, align 8, !dbg !109
  %65 = load i64, i64* %7, align 8, !dbg !110
  %66 = call i32 @MD5_Update(%struct.MD5state_st* %11, i8* %64, i64 %65), !dbg !111
  %67 = load i8*, i8** %10, align 8, !dbg !112
  %68 = call i32 @MD5_Final(i8* %67, %struct.MD5state_st* %11), !dbg !113
  %69 = call i32 @MD5_Init(%struct.MD5state_st* %11), !dbg !114
  %70 = getelementptr inbounds [65 x i8], [65 x i8]* %13, i32 0, i32 0, !dbg !115
  %71 = call i32 @MD5_Update(%struct.MD5state_st* %11, i8* %70, i64 64), !dbg !116
  %72 = load i8*, i8** %10, align 8, !dbg !117
  %73 = call i32 @MD5_Update(%struct.MD5state_st* %11, i8* %72, i64 16), !dbg !118
  %74 = load i8*, i8** %10, align 8, !dbg !119
  %75 = call i32 @MD5_Final(i8* %74, %struct.MD5state_st* %11), !dbg !120
  ret void, !dbg !121
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare i32 @MD5_Init(%struct.MD5state_st*) #3

declare i32 @MD5_Update(%struct.MD5state_st*, i8*, i64) #3

declare i32 @MD5_Final(i8*, %struct.MD5state_st*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_ipsecah.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "hmac_md5", scope: !7, file: !7, line: 36, type: !8, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "vrrp_ipsecah.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !10, !12, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 216, baseType: !14)
!13 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!14 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!15 = !DILocalVariable(name: "buffer", arg: 1, scope: !6, file: !7, line: 36, type: !10)
!16 = !DIExpression()
!17 = !DILocation(line: 36, column: 25, scope: !6)
!18 = !DILocalVariable(name: "buffer_len", arg: 2, scope: !6, file: !7, line: 36, type: !12)
!19 = !DILocation(line: 36, column: 40, scope: !6)
!20 = !DILocalVariable(name: "key", arg: 3, scope: !6, file: !7, line: 36, type: !10)
!21 = !DILocation(line: 36, column: 67, scope: !6)
!22 = !DILocalVariable(name: "key_len", arg: 4, scope: !6, file: !7, line: 36, type: !12)
!23 = !DILocation(line: 36, column: 79, scope: !6)
!24 = !DILocalVariable(name: "digest", arg: 5, scope: !6, file: !7, line: 37, type: !10)
!25 = !DILocation(line: 37, column: 18, scope: !6)
!26 = !DILocalVariable(name: "context", scope: !6, file: !7, line: 39, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "MD5_CTX", file: !28, line: 105, baseType: !29)
!28 = !DIFile(filename: "/usr/include/openssl/md5.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MD5state_st", file: !28, line: 100, size: 736, align: 32, elements: !30)
!30 = !{!31, !33, !34, !35, !36, !37, !38, !42}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !29, file: !28, line: 101, baseType: !32, size: 32, align: 32)
!32 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !29, file: !28, line: 101, baseType: !32, size: 32, align: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !29, file: !28, line: 101, baseType: !32, size: 32, align: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !29, file: !28, line: 101, baseType: !32, size: 32, align: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "Nl", scope: !29, file: !28, line: 102, baseType: !32, size: 32, align: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "Nh", scope: !29, file: !28, line: 102, baseType: !32, size: 32, align: 32, offset: 160)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !28, line: 103, baseType: !39, size: 512, align: 32, offset: 192)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 512, align: 32, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 16)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !29, file: !28, line: 104, baseType: !32, size: 32, align: 32, offset: 704)
!43 = !DILocation(line: 39, column: 10, scope: !6)
!44 = !DILocalVariable(name: "k_ipad", scope: !6, file: !7, line: 40, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 520, align: 8, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 65)
!48 = !DILocation(line: 40, column: 16, scope: !6)
!49 = !DILocalVariable(name: "k_opad", scope: !6, file: !7, line: 41, type: !45)
!50 = !DILocation(line: 41, column: 16, scope: !6)
!51 = !DILocalVariable(name: "tk", scope: !6, file: !7, line: 42, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, align: 8, elements: !40)
!53 = !DILocation(line: 42, column: 16, scope: !6)
!54 = !DILocalVariable(name: "i", scope: !6, file: !7, line: 43, type: !55)
!55 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!56 = !DILocation(line: 43, column: 6, scope: !6)
!57 = !DILocation(line: 46, column: 2, scope: !6)
!58 = !DILocation(line: 47, column: 2, scope: !6)
!59 = !DILocation(line: 48, column: 2, scope: !6)
!60 = !DILocation(line: 51, column: 6, scope: !61)
!61 = distinct !DILexicalBlock(scope: !6, file: !7, line: 51, column: 6)
!62 = !DILocation(line: 51, column: 14, scope: !61)
!63 = !DILocation(line: 51, column: 6, scope: !6)
!64 = !DILocalVariable(name: "tctx", scope: !65, file: !7, line: 52, type: !27)
!65 = distinct !DILexicalBlock(scope: !61, file: !7, line: 51, column: 20)
!66 = !DILocation(line: 52, column: 11, scope: !65)
!67 = !DILocation(line: 55, column: 3, scope: !65)
!68 = !DILocation(line: 56, column: 21, scope: !65)
!69 = !DILocation(line: 56, column: 26, scope: !65)
!70 = !DILocation(line: 56, column: 3, scope: !65)
!71 = !DILocation(line: 57, column: 13, scope: !65)
!72 = !DILocation(line: 57, column: 3, scope: !65)
!73 = !DILocation(line: 59, column: 9, scope: !65)
!74 = !DILocation(line: 59, column: 7, scope: !65)
!75 = !DILocation(line: 60, column: 11, scope: !65)
!76 = !DILocation(line: 61, column: 2, scope: !65)
!77 = !DILocation(line: 70, column: 2, scope: !6)
!78 = !DILocation(line: 71, column: 2, scope: !6)
!79 = !DILocation(line: 72, column: 2, scope: !6)
!80 = !DILocation(line: 72, column: 17, scope: !6)
!81 = !DILocation(line: 72, column: 22, scope: !6)
!82 = !DILocation(line: 73, column: 2, scope: !6)
!83 = !DILocation(line: 73, column: 17, scope: !6)
!84 = !DILocation(line: 73, column: 22, scope: !6)
!85 = !DILocation(line: 76, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !6, file: !7, line: 76, column: 2)
!87 = !DILocation(line: 76, column: 7, scope: !86)
!88 = !DILocation(line: 76, column: 14, scope: !89)
!89 = !DILexicalBlockFile(scope: !90, file: !7, discriminator: 1)
!90 = distinct !DILexicalBlock(scope: !86, file: !7, line: 76, column: 2)
!91 = !DILocation(line: 76, column: 16, scope: !89)
!92 = !DILocation(line: 76, column: 2, scope: !89)
!93 = !DILocation(line: 77, column: 10, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !7, line: 76, column: 27)
!95 = !DILocation(line: 77, column: 3, scope: !94)
!96 = !DILocation(line: 77, column: 13, scope: !94)
!97 = !DILocation(line: 78, column: 10, scope: !94)
!98 = !DILocation(line: 78, column: 3, scope: !94)
!99 = !DILocation(line: 78, column: 13, scope: !94)
!100 = !DILocation(line: 79, column: 2, scope: !94)
!101 = !DILocation(line: 76, column: 23, scope: !102)
!102 = !DILexicalBlockFile(scope: !90, file: !7, discriminator: 2)
!103 = !DILocation(line: 76, column: 2, scope: !102)
!104 = distinct !{!104, !105}
!105 = !DILocation(line: 76, column: 2, scope: !6)
!106 = !DILocation(line: 82, column: 2, scope: !6)
!107 = !DILocation(line: 83, column: 23, scope: !6)
!108 = !DILocation(line: 83, column: 2, scope: !6)
!109 = !DILocation(line: 84, column: 23, scope: !6)
!110 = !DILocation(line: 84, column: 31, scope: !6)
!111 = !DILocation(line: 84, column: 2, scope: !6)
!112 = !DILocation(line: 85, column: 12, scope: !6)
!113 = !DILocation(line: 85, column: 2, scope: !6)
!114 = !DILocation(line: 88, column: 2, scope: !6)
!115 = !DILocation(line: 89, column: 23, scope: !6)
!116 = !DILocation(line: 89, column: 2, scope: !6)
!117 = !DILocation(line: 90, column: 23, scope: !6)
!118 = !DILocation(line: 90, column: 2, scope: !6)
!119 = !DILocation(line: 91, column: 12, scope: !6)
!120 = !DILocation(line: 91, column: 2, scope: !6)
!121 = !DILocation(line: 92, column: 1, scope: !6)
