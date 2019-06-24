; ModuleID = './[inter]third-party--zlib-1.2.7--zutil.o.i'
source_filename = "./[inter]third-party--zlib-1.2.7--zutil.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"need dictionary\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"stream end\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"file error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"stream error\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"data error\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"insufficient memory\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"buffer error\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"incompatible version\00", align 1
@z_errmsg = constant [10 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1

; Function Attrs: nounwind uwtable
define i8* @zlibVersion() #0 !dbg !20 {
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), !dbg !23
}

; Function Attrs: nounwind uwtable
define i64 @zlibCompileFlags() #0 !dbg !24 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !29, metadata !30), !dbg !31
  store i64 0, i64* %1, align 8, !dbg !32
  %2 = load i64, i64* %1, align 8, !dbg !33
  %3 = add i64 %2, 1, !dbg !33
  store i64 %3, i64* %1, align 8, !dbg !33
  %4 = load i64, i64* %1, align 8, !dbg !34
  %5 = add i64 %4, 8, !dbg !34
  store i64 %5, i64* %1, align 8, !dbg !34
  %6 = load i64, i64* %1, align 8, !dbg !35
  %7 = add i64 %6, 32, !dbg !35
  store i64 %7, i64* %1, align 8, !dbg !35
  %8 = load i64, i64* %1, align 8, !dbg !36
  %9 = add i64 %8, 128, !dbg !36
  store i64 %9, i64* %1, align 8, !dbg !36
  %10 = load i64, i64* %1, align 8, !dbg !37
  ret i64 %10, !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i8* @zError(i32) #0 !dbg !39 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !43, metadata !30), !dbg !44
  %3 = load i32, i32* %2, align 4, !dbg !45
  %4 = sub nsw i32 2, %3, !dbg !46
  %5 = sext i32 %4 to i64, !dbg !47
  %6 = getelementptr inbounds [10 x i8*], [10 x i8*]* @z_errmsg, i64 0, i64 %5, !dbg !47
  %7 = load i8*, i8** %6, align 8, !dbg !47
  ret i8* %7, !dbg !48
}

; Function Attrs: nounwind uwtable
define i8* @zcalloc(i8*, i32, i32) #0 !dbg !49 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !53, metadata !30), !dbg !54
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !55, metadata !30), !dbg !56
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !57, metadata !30), !dbg !58
  %7 = load i8*, i8** %4, align 8, !dbg !59
  %8 = icmp ne i8* %7, null, !dbg !59
  br i1 %8, label %9, label %15, !dbg !61

; <label>:9:                                      ; preds = %3
  %10 = load i32, i32* %6, align 4, !dbg !62
  %11 = load i32, i32* %6, align 4, !dbg !64
  %12 = sub i32 %10, %11, !dbg !65
  %13 = load i32, i32* %5, align 4, !dbg !66
  %14 = add i32 %13, %12, !dbg !66
  store i32 %14, i32* %5, align 4, !dbg !66
  br label %15, !dbg !67

; <label>:15:                                     ; preds = %9, %3
  %16 = load i32, i32* %5, align 4, !dbg !68
  %17 = load i32, i32* %6, align 4, !dbg !69
  %18 = mul i32 %16, %17, !dbg !70
  %19 = zext i32 %18 to i64, !dbg !68
  %20 = call noalias i8* @malloc(i64 %19) #3, !dbg !71
  ret i8* %20, !dbg !72
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @zcfree(i8*, i8*) #0 !dbg !73 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !76, metadata !30), !dbg !77
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !78, metadata !30), !dbg !79
  %5 = load i8*, i8** %4, align 8, !dbg !80
  call void @free(i8* %5) #3, !dbg !81
  %6 = load i8*, i8** %3, align 8, !dbg !82
  %7 = icmp ne i8* %6, null, !dbg !82
  br i1 %7, label %8, label %9, !dbg !84

; <label>:8:                                      ; preds = %2
  br label %9, !dbg !85

; <label>:9:                                      ; preds = %8, %2
  ret void, !dbg !87
}

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7)
!1 = !DIFile(filename: "[inter]third-party--zlib-1.2.7--zutil.o.i", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !5, line: 383, baseType: !6)
!5 = !DIFile(filename: "zconf.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !{!8}
!8 = distinct !DIGlobalVariable(name: "z_errmsg", scope: !0, file: !9, line: 17, type: !10, isLocal: false, isDefinition: true, variable: [10 x i8*]* @z_errmsg)
!9 = !DIFile(filename: "zutil.c", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 640, align: 64, elements: !15)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!20 = distinct !DISubprogram(name: "zlibVersion", scope: !9, file: !9, line: 30, type: !21, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{!12}
!23 = !DILocation(line: 32, column: 5, scope: !20)
!24 = distinct !DISubprogram(name: "zlibCompileFlags", scope: !9, file: !9, line: 35, type: !25, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !5, line: 368, baseType: !28)
!28 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!29 = !DILocalVariable(name: "flags", scope: !24, file: !9, line: 37, type: !27)
!30 = !DIExpression()
!31 = !DILocation(line: 37, column: 11, scope: !24)
!32 = !DILocation(line: 39, column: 11, scope: !24)
!33 = !DILocation(line: 42, column: 19, scope: !24)
!34 = !DILocation(line: 49, column: 19, scope: !24)
!35 = !DILocation(line: 55, column: 19, scope: !24)
!36 = !DILocation(line: 61, column: 19, scope: !24)
!37 = !DILocation(line: 115, column: 12, scope: !24)
!38 = !DILocation(line: 115, column: 5, scope: !24)
!39 = distinct !DISubprogram(name: "zError", scope: !9, file: !9, line: 136, type: !40, isLocal: false, isDefinition: true, scopeLine: 138, isOptimized: false, unit: !0, variables: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{!12, !42}
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !DILocalVariable(name: "err", arg: 1, scope: !39, file: !9, line: 137, type: !42)
!44 = !DILocation(line: 137, column: 9, scope: !39)
!45 = !DILocation(line: 139, column: 25, scope: !39)
!46 = !DILocation(line: 139, column: 23, scope: !39)
!47 = !DILocation(line: 139, column: 12, scope: !39)
!48 = !DILocation(line: 139, column: 5, scope: !39)
!49 = distinct !DISubprogram(name: "zcalloc", scope: !9, file: !9, line: 304, type: !50, isLocal: false, isDefinition: true, scopeLine: 308, isOptimized: false, unit: !0, variables: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{!4, !4, !52, !52}
!52 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!53 = !DILocalVariable(name: "opaque", arg: 1, scope: !49, file: !9, line: 305, type: !4)
!54 = !DILocation(line: 305, column: 12, scope: !49)
!55 = !DILocalVariable(name: "items", arg: 2, scope: !49, file: !9, line: 306, type: !52)
!56 = !DILocation(line: 306, column: 14, scope: !49)
!57 = !DILocalVariable(name: "size", arg: 3, scope: !49, file: !9, line: 307, type: !52)
!58 = !DILocation(line: 307, column: 14, scope: !49)
!59 = !DILocation(line: 309, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !49, file: !9, line: 309, column: 9)
!61 = !DILocation(line: 309, column: 9, scope: !49)
!62 = !DILocation(line: 309, column: 26, scope: !63)
!63 = !DILexicalBlockFile(scope: !60, file: !9, discriminator: 1)
!64 = !DILocation(line: 309, column: 33, scope: !63)
!65 = !DILocation(line: 309, column: 31, scope: !63)
!66 = !DILocation(line: 309, column: 23, scope: !63)
!67 = !DILocation(line: 309, column: 17, scope: !63)
!68 = !DILocation(line: 310, column: 46, scope: !49)
!69 = !DILocation(line: 310, column: 54, scope: !49)
!70 = !DILocation(line: 310, column: 52, scope: !49)
!71 = !DILocation(line: 310, column: 39, scope: !49)
!72 = !DILocation(line: 310, column: 5, scope: !49)
!73 = distinct !DISubprogram(name: "zcfree", scope: !9, file: !9, line: 314, type: !74, isLocal: false, isDefinition: true, scopeLine: 317, isOptimized: false, unit: !0, variables: !2)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !4, !4}
!76 = !DILocalVariable(name: "opaque", arg: 1, scope: !73, file: !9, line: 315, type: !4)
!77 = !DILocation(line: 315, column: 12, scope: !73)
!78 = !DILocalVariable(name: "ptr", arg: 2, scope: !73, file: !9, line: 316, type: !4)
!79 = !DILocation(line: 316, column: 12, scope: !73)
!80 = !DILocation(line: 318, column: 10, scope: !73)
!81 = !DILocation(line: 318, column: 5, scope: !73)
!82 = !DILocation(line: 319, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !73, file: !9, line: 319, column: 9)
!84 = !DILocation(line: 319, column: 9, scope: !73)
!85 = !DILocation(line: 319, column: 17, scope: !86)
!86 = !DILexicalBlockFile(scope: !83, file: !9, discriminator: 1)
!87 = !DILocation(line: 320, column: 1, scope: !73)
