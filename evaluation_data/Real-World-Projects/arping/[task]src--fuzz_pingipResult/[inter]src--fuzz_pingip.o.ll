; ModuleID = './[inter]src--fuzz_pingip.o.i'
source_filename = "./[inter]src--fuzz_pingip.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [12 x i8] c"read(): %s\0A\00", align 1
@dstip = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @main() #0 !dbg !6 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pcap_pkthdr, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i64* %2, metadata !11, metadata !16), !dbg !17
  store i64 1500, i64* %2, align 8, !dbg !17
  call void @llvm.dbg.declare(metadata i8** %3, metadata !18, metadata !16), !dbg !22
  %9 = call noalias i8* @calloc(i64 1, i64 1500) #5, !dbg !23
  store i8* %9, i8** %3, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata i64* %4, metadata !24, metadata !16), !dbg !25
  store i64 0, i64* %4, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata i8** %5, metadata !26, metadata !16), !dbg !28
  %10 = load i8*, i8** %3, align 8, !dbg !29
  store i8* %10, i8** %5, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %6, metadata !30, metadata !16), !dbg !31
  store i64 1500, i64* %6, align 8, !dbg !31
  br label %11, !dbg !32

; <label>:11:                                     ; preds = %30, %0
  %12 = load i64, i64* %6, align 8, !dbg !33
  %13 = icmp ugt i64 %12, 0, !dbg !35
  br i1 %13, label %14, label %37, !dbg !36

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %7, metadata !37, metadata !16), !dbg !45
  %15 = load i8*, i8** %5, align 8, !dbg !46
  %16 = load i64, i64* %6, align 8, !dbg !47
  %17 = call i64 @read(i32 0, i8* %15, i64 %16), !dbg !48
  store i64 %17, i64* %7, align 8, !dbg !45
  %18 = load i64, i64* %7, align 8, !dbg !49
  %19 = icmp eq i64 %18, 0, !dbg !51
  br i1 %19, label %20, label %21, !dbg !52

; <label>:20:                                     ; preds = %14
  br label %37, !dbg !53

; <label>:21:                                     ; preds = %14
  %22 = load i64, i64* %7, align 8, !dbg !55
  %23 = icmp slt i64 %22, 0, !dbg !57
  br i1 %23, label %24, label %30, !dbg !58

; <label>:24:                                     ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !59
  %26 = call i32* @__errno_location() #1, !dbg !61
  %27 = load i32, i32* %26, align 4, !dbg !62
  %28 = call i8* @strerror(i32 %27) #5, !dbg !63
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* %28), !dbg !65
  store i32 1, i32* %1, align 4, !dbg !67
  br label %57, !dbg !67

; <label>:30:                                     ; preds = %21
  %31 = load i64, i64* %7, align 8, !dbg !68
  %32 = load i64, i64* %6, align 8, !dbg !69
  %33 = sub i64 %32, %31, !dbg !69
  store i64 %33, i64* %6, align 8, !dbg !69
  %34 = load i64, i64* %7, align 8, !dbg !70
  %35 = load i8*, i8** %5, align 8, !dbg !71
  %36 = getelementptr inbounds i8, i8* %35, i64 %34, !dbg !71
  store i8* %36, i8** %5, align 8, !dbg !71
  br label %11, !dbg !72, !llvm.loop !74

; <label>:37:                                     ; preds = %20, %11
  %38 = load i8*, i8** %5, align 8, !dbg !75
  %39 = load i8*, i8** %3, align 8, !dbg !76
  %40 = ptrtoint i8* %38 to i64, !dbg !77
  %41 = ptrtoint i8* %39 to i64, !dbg !77
  %42 = sub i64 %40, %41, !dbg !77
  store i64 %42, i64* %4, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata %struct.pcap_pkthdr* %8, metadata !79, metadata !16), !dbg !98
  %43 = call i64 @time(i64* null) #5, !dbg !99
  %44 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %8, i32 0, i32 0, !dbg !100
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %44, i32 0, i32 0, !dbg !101
  store i64 %43, i64* %45, align 8, !dbg !102
  %46 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %8, i32 0, i32 0, !dbg !103
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %46, i32 0, i32 1, !dbg !104
  store i64 0, i64* %47, align 8, !dbg !105
  %48 = load i64, i64* %4, align 8, !dbg !106
  %49 = trunc i64 %48 to i32, !dbg !106
  %50 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %8, i32 0, i32 2, !dbg !107
  store i32 %49, i32* %50, align 4, !dbg !108
  %51 = load i64, i64* %4, align 8, !dbg !109
  %52 = trunc i64 %51 to i32, !dbg !109
  %53 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %8, i32 0, i32 1, !dbg !110
  store i32 %52, i32* %53, align 8, !dbg !111
  %54 = call i32 @htonl(i32 305419896) #1, !dbg !112
  store i32 %54, i32* @dstip, align 4, !dbg !113
  %55 = load i8*, i8** %3, align 8, !dbg !114
  call void @pingip_recv(i8* null, %struct.pcap_pkthdr* %8, i8* %55), !dbg !115
  %56 = load i8*, i8** %3, align 8, !dbg !116
  call void @free(i8* %56) #5, !dbg !117
  store i32 0, i32* %1, align 4, !dbg !118
  br label %57, !dbg !118

; <label>:57:                                     ; preds = %37, %24
  %58 = load i32, i32* %1, align 4, !dbg !119
  ret i32 %58, !dbg !119
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i64 @read(i32, i8*, i64) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #4

declare void @pingip_recv(i8*, %struct.pcap_pkthdr*, i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]src--fuzz_pingip.o.i", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 33, type: !8, isLocal: false, isDefinition: true, scopeLine: 34, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "fuzz_pingip.c", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "maxpacket", scope: !6, file: !7, line: 35, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 216, baseType: !15)
!14 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!15 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!16 = !DIExpression()
!17 = !DILocation(line: 35, column: 22, scope: !6)
!18 = !DILocalVariable(name: "packet", scope: !6, file: !7, line: 36, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !DILocation(line: 36, column: 21, scope: !6)
!23 = !DILocation(line: 36, column: 30, scope: !6)
!24 = !DILocalVariable(name: "packet_size", scope: !6, file: !7, line: 37, type: !13)
!25 = !DILocation(line: 37, column: 16, scope: !6)
!26 = !DILocalVariable(name: "p", scope: !27, file: !7, line: 41, type: !20)
!27 = distinct !DILexicalBlock(scope: !6, file: !7, line: 40, column: 9)
!28 = !DILocation(line: 41, column: 23, scope: !27)
!29 = !DILocation(line: 41, column: 27, scope: !27)
!30 = !DILocalVariable(name: "size", scope: !27, file: !7, line: 42, type: !13)
!31 = !DILocation(line: 42, column: 24, scope: !27)
!32 = !DILocation(line: 43, column: 17, scope: !27)
!33 = !DILocation(line: 43, column: 24, scope: !34)
!34 = !DILexicalBlockFile(scope: !27, file: !7, discriminator: 1)
!35 = !DILocation(line: 43, column: 29, scope: !34)
!36 = !DILocation(line: 43, column: 17, scope: !34)
!37 = !DILocalVariable(name: "n", scope: !38, file: !7, line: 44, type: !39)
!38 = distinct !DILexicalBlock(scope: !27, file: !7, line: 43, column: 34)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 109, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !43, line: 172, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!44 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!45 = !DILocation(line: 44, column: 39, scope: !38)
!46 = !DILocation(line: 44, column: 61, scope: !38)
!47 = !DILocation(line: 44, column: 64, scope: !38)
!48 = !DILocation(line: 44, column: 43, scope: !38)
!49 = !DILocation(line: 45, column: 29, scope: !50)
!50 = distinct !DILexicalBlock(scope: !38, file: !7, line: 45, column: 29)
!51 = !DILocation(line: 45, column: 31, scope: !50)
!52 = !DILocation(line: 45, column: 29, scope: !38)
!53 = !DILocation(line: 46, column: 33, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !7, line: 45, column: 37)
!55 = !DILocation(line: 48, column: 29, scope: !56)
!56 = distinct !DILexicalBlock(scope: !38, file: !7, line: 48, column: 29)
!57 = !DILocation(line: 48, column: 31, scope: !56)
!58 = !DILocation(line: 48, column: 29, scope: !38)
!59 = !DILocation(line: 49, column: 40, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !7, line: 48, column: 36)
!61 = !DILocation(line: 49, column: 75, scope: !60)
!62 = !DILocation(line: 49, column: 74, scope: !60)
!63 = !DILocation(line: 49, column: 64, scope: !64)
!64 = !DILexicalBlockFile(scope: !60, file: !7, discriminator: 1)
!65 = !DILocation(line: 49, column: 33, scope: !66)
!66 = !DILexicalBlockFile(scope: !60, file: !7, discriminator: 2)
!67 = !DILocation(line: 50, column: 33, scope: !60)
!68 = !DILocation(line: 52, column: 33, scope: !38)
!69 = !DILocation(line: 52, column: 30, scope: !38)
!70 = !DILocation(line: 53, column: 30, scope: !38)
!71 = !DILocation(line: 53, column: 27, scope: !38)
!72 = !DILocation(line: 43, column: 17, scope: !73)
!73 = !DILexicalBlockFile(scope: !27, file: !7, discriminator: 2)
!74 = distinct !{!74, !32}
!75 = !DILocation(line: 55, column: 31, scope: !27)
!76 = !DILocation(line: 55, column: 35, scope: !27)
!77 = !DILocation(line: 55, column: 33, scope: !27)
!78 = !DILocation(line: 55, column: 29, scope: !27)
!79 = !DILocalVariable(name: "pkthdr", scope: !6, file: !7, line: 58, type: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !81, line: 160, size: 192, align: 64, elements: !82)
!81 = !DIFile(filename: "/usr/include/pcap/pcap.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!82 = !{!83, !91, !97}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !80, file: !81, line: 161, baseType: !84, size: 128, align: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !85, line: 30, size: 128, align: 64, elements: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!86 = !{!87, !89}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !84, file: !85, line: 32, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !43, line: 139, baseType: !44)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !84, file: !85, line: 33, baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !43, line: 141, baseType: !44)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !80, file: !81, line: 162, baseType: !92, size: 32, align: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !93, line: 87, baseType: !94)
!93 = !DIFile(filename: "/usr/include/pcap/bpf.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !41, line: 35, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !43, line: 32, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !80, file: !81, line: 163, baseType: !92, size: 32, align: 32, offset: 160)
!98 = !DILocation(line: 58, column: 28, scope: !6)
!99 = !DILocation(line: 59, column: 28, scope: !6)
!100 = !DILocation(line: 59, column: 16, scope: !6)
!101 = !DILocation(line: 59, column: 19, scope: !6)
!102 = !DILocation(line: 59, column: 26, scope: !6)
!103 = !DILocation(line: 60, column: 16, scope: !6)
!104 = !DILocation(line: 60, column: 19, scope: !6)
!105 = !DILocation(line: 60, column: 27, scope: !6)
!106 = !DILocation(line: 61, column: 22, scope: !6)
!107 = !DILocation(line: 61, column: 16, scope: !6)
!108 = !DILocation(line: 61, column: 20, scope: !6)
!109 = !DILocation(line: 62, column: 25, scope: !6)
!110 = !DILocation(line: 62, column: 16, scope: !6)
!111 = !DILocation(line: 62, column: 23, scope: !6)
!112 = !DILocation(line: 64, column: 17, scope: !6)
!113 = !DILocation(line: 64, column: 15, scope: !6)
!114 = !DILocation(line: 65, column: 35, scope: !6)
!115 = !DILocation(line: 65, column: 9, scope: !6)
!116 = !DILocation(line: 67, column: 14, scope: !6)
!117 = !DILocation(line: 67, column: 9, scope: !6)
!118 = !DILocation(line: 68, column: 9, scope: !6)
!119 = !DILocation(line: 69, column: 1, scope: !6)
