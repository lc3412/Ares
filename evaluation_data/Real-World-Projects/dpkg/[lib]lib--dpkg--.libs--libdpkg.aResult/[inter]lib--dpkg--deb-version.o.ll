; ModuleID = './[inter]lib--dpkg--deb-version.o.i'
source_filename = "./[inter]lib--dpkg--deb-version.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.deb_version = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"format version with too big major component\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"format version with empty major component\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"format version has no dot\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"format version with too big minor component\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"format version with empty minor component\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"format version followed by junk\00", align 1

; Function Attrs: nounwind uwtable
define i8* @deb_version_parse(%struct.deb_version*, i8*) #0 !dbg !17 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.deb_version*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.deb_version* %0, %struct.deb_version** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.deb_version** %4, metadata !32, metadata !33), !dbg !34
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !35, metadata !33), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %6, metadata !37, metadata !33), !dbg !38
  call void @llvm.dbg.declare(metadata i8** %7, metadata !39, metadata !33), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %8, metadata !41, metadata !33), !dbg !43
  store i32 0, i32* %8, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %9, metadata !44, metadata !33), !dbg !45
  store i32 0, i32* %9, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %10, metadata !46, metadata !33), !dbg !47
  store i32 214748364, i32* %10, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %11, metadata !48, metadata !33), !dbg !49
  store i32 7, i32* %11, align 4, !dbg !49
  %14 = load i8*, i8** %5, align 8, !dbg !50
  store i8* %14, i8** %7, align 8, !dbg !52
  br label %15, !dbg !53

; <label>:15:                                     ; preds = %50, %2
  %16 = load i8*, i8** %7, align 8, !dbg !54
  %17 = load i8, i8* %16, align 1, !dbg !57
  %18 = sext i8 %17 to i32, !dbg !57
  %19 = icmp ne i32 %18, 0, !dbg !57
  br i1 %19, label %20, label %25, !dbg !58

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %7, align 8, !dbg !59
  %22 = load i8, i8* %21, align 1, !dbg !61
  %23 = sext i8 %22 to i32, !dbg !61
  %24 = call zeroext i1 @c_isdigit(i32 %23), !dbg !62
  br label %25

; <label>:25:                                     ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  br i1 %26, label %27, label %53, !dbg !63

; <label>:27:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i32* %12, metadata !65, metadata !33), !dbg !67
  %28 = load i8*, i8** %7, align 8, !dbg !68
  %29 = load i8, i8* %28, align 1, !dbg !69
  %30 = sext i8 %29 to i32, !dbg !69
  %31 = sub nsw i32 %30, 48, !dbg !70
  store i32 %31, i32* %12, align 4, !dbg !67
  %32 = load i32, i32* %8, align 4, !dbg !71
  %33 = load i32, i32* %10, align 4, !dbg !73
  %34 = icmp ugt i32 %32, %33, !dbg !74
  br i1 %34, label %43, label %35, !dbg !75

; <label>:35:                                     ; preds = %27
  %36 = load i32, i32* %8, align 4, !dbg !76
  %37 = load i32, i32* %10, align 4, !dbg !78
  %38 = icmp eq i32 %36, %37, !dbg !79
  br i1 %38, label %39, label %45, !dbg !80

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %12, align 4, !dbg !81
  %41 = load i32, i32* %11, align 4, !dbg !83
  %42 = icmp sgt i32 %40, %41, !dbg !84
  br i1 %42, label %43, label %45, !dbg !85

; <label>:43:                                     ; preds = %39, %27
  %44 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !86
  store i8* %44, i8** %3, align 8, !dbg !87
  br label %132, !dbg !87

; <label>:45:                                     ; preds = %39, %35
  %46 = load i32, i32* %8, align 4, !dbg !88
  %47 = mul i32 %46, 10, !dbg !89
  %48 = load i32, i32* %12, align 4, !dbg !90
  %49 = add i32 %47, %48, !dbg !91
  store i32 %49, i32* %8, align 4, !dbg !92
  br label %50, !dbg !93

; <label>:50:                                     ; preds = %45
  %51 = load i8*, i8** %7, align 8, !dbg !94
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !94
  store i8* %52, i8** %7, align 8, !dbg !94
  br label %15, !dbg !96, !llvm.loop !97

; <label>:53:                                     ; preds = %25
  %54 = load i8*, i8** %7, align 8, !dbg !99
  %55 = load i8*, i8** %5, align 8, !dbg !101
  %56 = icmp eq i8* %54, %55, !dbg !102
  br i1 %56, label %57, label %59, !dbg !103

; <label>:57:                                     ; preds = %53
  %58 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !104
  store i8* %58, i8** %3, align 8, !dbg !105
  br label %132, !dbg !105

; <label>:59:                                     ; preds = %53
  %60 = load i8*, i8** %7, align 8, !dbg !106
  %61 = load i8, i8* %60, align 1, !dbg !108
  %62 = sext i8 %61 to i32, !dbg !108
  %63 = icmp ne i32 %62, 46, !dbg !109
  br i1 %63, label %64, label %66, !dbg !110

; <label>:64:                                     ; preds = %59
  %65 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #5, !dbg !111
  store i8* %65, i8** %3, align 8, !dbg !112
  br label %132, !dbg !112

; <label>:66:                                     ; preds = %59
  %67 = load i8*, i8** %7, align 8, !dbg !113
  %68 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !115
  store i8* %68, i8** %6, align 8, !dbg !116
  store i8* %68, i8** %7, align 8, !dbg !117
  br label %69, !dbg !118

; <label>:69:                                     ; preds = %104, %66
  %70 = load i8*, i8** %7, align 8, !dbg !119
  %71 = load i8, i8* %70, align 1, !dbg !122
  %72 = sext i8 %71 to i32, !dbg !122
  %73 = icmp ne i32 %72, 0, !dbg !122
  br i1 %73, label %74, label %79, !dbg !123

; <label>:74:                                     ; preds = %69
  %75 = load i8*, i8** %7, align 8, !dbg !124
  %76 = load i8, i8* %75, align 1, !dbg !126
  %77 = sext i8 %76 to i32, !dbg !126
  %78 = call zeroext i1 @c_isdigit(i32 %77), !dbg !127
  br label %79

; <label>:79:                                     ; preds = %74, %69
  %80 = phi i1 [ false, %69 ], [ %78, %74 ]
  br i1 %80, label %81, label %107, !dbg !128

; <label>:81:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata i32* %13, metadata !130, metadata !33), !dbg !132
  %82 = load i8*, i8** %7, align 8, !dbg !133
  %83 = load i8, i8* %82, align 1, !dbg !134
  %84 = sext i8 %83 to i32, !dbg !134
  %85 = sub nsw i32 %84, 48, !dbg !135
  store i32 %85, i32* %13, align 4, !dbg !132
  %86 = load i32, i32* %9, align 4, !dbg !136
  %87 = load i32, i32* %10, align 4, !dbg !138
  %88 = icmp ugt i32 %86, %87, !dbg !139
  br i1 %88, label %97, label %89, !dbg !140

; <label>:89:                                     ; preds = %81
  %90 = load i32, i32* %9, align 4, !dbg !141
  %91 = load i32, i32* %10, align 4, !dbg !143
  %92 = icmp eq i32 %90, %91, !dbg !144
  br i1 %92, label %93, label %99, !dbg !145

; <label>:93:                                     ; preds = %89
  %94 = load i32, i32* %13, align 4, !dbg !146
  %95 = load i32, i32* %11, align 4, !dbg !148
  %96 = icmp sgt i32 %94, %95, !dbg !149
  br i1 %96, label %97, label %99, !dbg !150

; <label>:97:                                     ; preds = %93, %81
  %98 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0)) #5, !dbg !151
  store i8* %98, i8** %3, align 8, !dbg !152
  br label %132, !dbg !152

; <label>:99:                                     ; preds = %93, %89
  %100 = load i32, i32* %9, align 4, !dbg !153
  %101 = mul i32 %100, 10, !dbg !154
  %102 = load i32, i32* %13, align 4, !dbg !155
  %103 = add i32 %101, %102, !dbg !156
  store i32 %103, i32* %9, align 4, !dbg !157
  br label %104, !dbg !158

; <label>:104:                                    ; preds = %99
  %105 = load i8*, i8** %7, align 8, !dbg !159
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !159
  store i8* %106, i8** %7, align 8, !dbg !159
  br label %69, !dbg !161, !llvm.loop !162

; <label>:107:                                    ; preds = %79
  %108 = load i8*, i8** %7, align 8, !dbg !164
  %109 = load i8*, i8** %6, align 8, !dbg !166
  %110 = icmp eq i8* %108, %109, !dbg !167
  br i1 %110, label %111, label %113, !dbg !168

; <label>:111:                                    ; preds = %107
  %112 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0)) #5, !dbg !169
  store i8* %112, i8** %3, align 8, !dbg !170
  br label %132, !dbg !170

; <label>:113:                                    ; preds = %107
  %114 = load i8*, i8** %7, align 8, !dbg !171
  %115 = load i8, i8* %114, align 1, !dbg !173
  %116 = sext i8 %115 to i32, !dbg !173
  %117 = icmp ne i32 %116, 10, !dbg !174
  br i1 %117, label %118, label %125, !dbg !175

; <label>:118:                                    ; preds = %113
  %119 = load i8*, i8** %7, align 8, !dbg !176
  %120 = load i8, i8* %119, align 1, !dbg !178
  %121 = sext i8 %120 to i32, !dbg !178
  %122 = icmp ne i32 %121, 0, !dbg !179
  br i1 %122, label %123, label %125, !dbg !180

; <label>:123:                                    ; preds = %118
  %124 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0)) #5, !dbg !181
  store i8* %124, i8** %3, align 8, !dbg !182
  br label %132, !dbg !182

; <label>:125:                                    ; preds = %118, %113
  %126 = load i32, i32* %8, align 4, !dbg !183
  %127 = load %struct.deb_version*, %struct.deb_version** %4, align 8, !dbg !184
  %128 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %127, i32 0, i32 0, !dbg !185
  store i32 %126, i32* %128, align 4, !dbg !186
  %129 = load i32, i32* %9, align 4, !dbg !187
  %130 = load %struct.deb_version*, %struct.deb_version** %4, align 8, !dbg !188
  %131 = getelementptr inbounds %struct.deb_version, %struct.deb_version* %130, i32 0, i32 1, !dbg !189
  store i32 %129, i32* %131, align 4, !dbg !190
  store i8* null, i8** %3, align 8, !dbg !191
  br label %132, !dbg !191

; <label>:132:                                    ; preds = %125, %123, %111, %97, %64, %57, %43
  %133 = load i8*, i8** %3, align 8, !dbg !192
  ret i8* %133, !dbg !192
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @c_isdigit(i32) #2 !dbg !193 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !197, metadata !33), !dbg !198
  %3 = load i32, i32* %2, align 4, !dbg !199
  %4 = call zeroext i1 @c_isbits(i32 %3, i32 32), !dbg !200
  ret i1 %4, !dbg !201
}

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

declare zeroext i1 @c_isbits(i32, i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--deb-version.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_ctype_bit", file: !4, line: 32, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/c-ctype.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "C_CTYPE_BLANK", value: 1)
!7 = !DIEnumerator(name: "C_CTYPE_WHITE", value: 2)
!8 = !DIEnumerator(name: "C_CTYPE_SPACE", value: 4)
!9 = !DIEnumerator(name: "C_CTYPE_UPPER", value: 8)
!10 = !DIEnumerator(name: "C_CTYPE_LOWER", value: 16)
!11 = !DIEnumerator(name: "C_CTYPE_DIGIT", value: 32)
!12 = !DIEnumerator(name: "C_CTYPE_ALPHA", value: 24)
!13 = !DIEnumerator(name: "C_CTYPE_ALNUM", value: 56)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!17 = distinct !DISubprogram(name: "deb_version_parse", scope: !18, file: !18, line: 47, type: !19, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !31)
!18 = !DIFile(filename: "deb-version.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !24, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deb_version", file: !26, line: 37, size: 64, align: 32, elements: !27)
!26 = !DIFile(filename: "../../lib/dpkg/deb-version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !25, file: !26, line: 38, baseType: !29, size: 32, align: 32)
!29 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !25, file: !26, line: 39, baseType: !29, size: 32, align: 32, offset: 32)
!31 = !{}
!32 = !DILocalVariable(name: "version", arg: 1, scope: !17, file: !18, line: 47, type: !24)
!33 = !DIExpression()
!34 = !DILocation(line: 47, column: 39, scope: !17)
!35 = !DILocalVariable(name: "str", arg: 2, scope: !17, file: !18, line: 47, type: !21)
!36 = !DILocation(line: 47, column: 60, scope: !17)
!37 = !DILocalVariable(name: "str_minor", scope: !17, file: !18, line: 49, type: !21)
!38 = !DILocation(line: 49, column: 14, scope: !17)
!39 = !DILocalVariable(name: "end", scope: !17, file: !18, line: 49, type: !21)
!40 = !DILocation(line: 49, column: 26, scope: !17)
!41 = !DILocalVariable(name: "major", scope: !17, file: !18, line: 50, type: !42)
!42 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!43 = !DILocation(line: 50, column: 15, scope: !17)
!44 = !DILocalVariable(name: "minor", scope: !17, file: !18, line: 51, type: !42)
!45 = !DILocation(line: 51, column: 15, scope: !17)
!46 = !DILocalVariable(name: "divlimit", scope: !17, file: !18, line: 52, type: !42)
!47 = !DILocation(line: 52, column: 15, scope: !17)
!48 = !DILocalVariable(name: "modlimit", scope: !17, file: !18, line: 53, type: !29)
!49 = !DILocation(line: 53, column: 6, scope: !17)
!50 = !DILocation(line: 55, column: 13, scope: !51)
!51 = distinct !DILexicalBlock(scope: !17, file: !18, line: 55, column: 2)
!52 = !DILocation(line: 55, column: 11, scope: !51)
!53 = !DILocation(line: 55, column: 7, scope: !51)
!54 = !DILocation(line: 55, column: 19, scope: !55)
!55 = !DILexicalBlockFile(scope: !56, file: !18, discriminator: 1)
!56 = distinct !DILexicalBlock(scope: !51, file: !18, line: 55, column: 2)
!57 = !DILocation(line: 55, column: 18, scope: !55)
!58 = !DILocation(line: 55, column: 23, scope: !55)
!59 = !DILocation(line: 55, column: 37, scope: !60)
!60 = !DILexicalBlockFile(scope: !56, file: !18, discriminator: 2)
!61 = !DILocation(line: 55, column: 36, scope: !60)
!62 = !DILocation(line: 55, column: 26, scope: !60)
!63 = !DILocation(line: 55, column: 2, scope: !64)
!64 = !DILexicalBlockFile(scope: !51, file: !18, discriminator: 3)
!65 = !DILocalVariable(name: "ord", scope: !66, file: !18, line: 56, type: !29)
!66 = distinct !DILexicalBlock(scope: !56, file: !18, line: 55, column: 50)
!67 = !DILocation(line: 56, column: 7, scope: !66)
!68 = !DILocation(line: 56, column: 14, scope: !66)
!69 = !DILocation(line: 56, column: 13, scope: !66)
!70 = !DILocation(line: 56, column: 18, scope: !66)
!71 = !DILocation(line: 58, column: 7, scope: !72)
!72 = distinct !DILexicalBlock(scope: !66, file: !18, line: 58, column: 7)
!73 = !DILocation(line: 58, column: 15, scope: !72)
!74 = !DILocation(line: 58, column: 13, scope: !72)
!75 = !DILocation(line: 58, column: 24, scope: !72)
!76 = !DILocation(line: 58, column: 28, scope: !77)
!77 = !DILexicalBlockFile(scope: !72, file: !18, discriminator: 1)
!78 = !DILocation(line: 58, column: 37, scope: !77)
!79 = !DILocation(line: 58, column: 34, scope: !77)
!80 = !DILocation(line: 58, column: 46, scope: !77)
!81 = !DILocation(line: 58, column: 49, scope: !82)
!82 = !DILexicalBlockFile(scope: !72, file: !18, discriminator: 2)
!83 = !DILocation(line: 58, column: 55, scope: !82)
!84 = !DILocation(line: 58, column: 53, scope: !82)
!85 = !DILocation(line: 58, column: 7, scope: !82)
!86 = !DILocation(line: 59, column: 10, scope: !72)
!87 = !DILocation(line: 59, column: 4, scope: !72)
!88 = !DILocation(line: 61, column: 11, scope: !66)
!89 = !DILocation(line: 61, column: 17, scope: !66)
!90 = !DILocation(line: 61, column: 24, scope: !66)
!91 = !DILocation(line: 61, column: 22, scope: !66)
!92 = !DILocation(line: 61, column: 9, scope: !66)
!93 = !DILocation(line: 62, column: 2, scope: !66)
!94 = !DILocation(line: 55, column: 46, scope: !95)
!95 = !DILexicalBlockFile(scope: !56, file: !18, discriminator: 4)
!96 = !DILocation(line: 55, column: 2, scope: !95)
!97 = distinct !{!97, !98}
!98 = !DILocation(line: 55, column: 2, scope: !17)
!99 = !DILocation(line: 64, column: 6, scope: !100)
!100 = distinct !DILexicalBlock(scope: !17, file: !18, line: 64, column: 6)
!101 = !DILocation(line: 64, column: 13, scope: !100)
!102 = !DILocation(line: 64, column: 10, scope: !100)
!103 = !DILocation(line: 64, column: 6, scope: !17)
!104 = !DILocation(line: 65, column: 9, scope: !100)
!105 = !DILocation(line: 65, column: 3, scope: !100)
!106 = !DILocation(line: 66, column: 7, scope: !107)
!107 = distinct !DILexicalBlock(scope: !17, file: !18, line: 66, column: 6)
!108 = !DILocation(line: 66, column: 6, scope: !107)
!109 = !DILocation(line: 66, column: 11, scope: !107)
!110 = !DILocation(line: 66, column: 6, scope: !17)
!111 = !DILocation(line: 67, column: 9, scope: !107)
!112 = !DILocation(line: 67, column: 3, scope: !107)
!113 = !DILocation(line: 69, column: 25, scope: !114)
!114 = distinct !DILexicalBlock(scope: !17, file: !18, line: 69, column: 2)
!115 = !DILocation(line: 69, column: 29, scope: !114)
!116 = !DILocation(line: 69, column: 23, scope: !114)
!117 = !DILocation(line: 69, column: 11, scope: !114)
!118 = !DILocation(line: 69, column: 7, scope: !114)
!119 = !DILocation(line: 69, column: 35, scope: !120)
!120 = !DILexicalBlockFile(scope: !121, file: !18, discriminator: 1)
!121 = distinct !DILexicalBlock(scope: !114, file: !18, line: 69, column: 2)
!122 = !DILocation(line: 69, column: 34, scope: !120)
!123 = !DILocation(line: 69, column: 39, scope: !120)
!124 = !DILocation(line: 69, column: 53, scope: !125)
!125 = !DILexicalBlockFile(scope: !121, file: !18, discriminator: 2)
!126 = !DILocation(line: 69, column: 52, scope: !125)
!127 = !DILocation(line: 69, column: 42, scope: !125)
!128 = !DILocation(line: 69, column: 2, scope: !129)
!129 = !DILexicalBlockFile(scope: !114, file: !18, discriminator: 3)
!130 = !DILocalVariable(name: "ord", scope: !131, file: !18, line: 70, type: !29)
!131 = distinct !DILexicalBlock(scope: !121, file: !18, line: 69, column: 66)
!132 = !DILocation(line: 70, column: 7, scope: !131)
!133 = !DILocation(line: 70, column: 14, scope: !131)
!134 = !DILocation(line: 70, column: 13, scope: !131)
!135 = !DILocation(line: 70, column: 18, scope: !131)
!136 = !DILocation(line: 72, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !131, file: !18, line: 72, column: 7)
!138 = !DILocation(line: 72, column: 15, scope: !137)
!139 = !DILocation(line: 72, column: 13, scope: !137)
!140 = !DILocation(line: 72, column: 24, scope: !137)
!141 = !DILocation(line: 72, column: 28, scope: !142)
!142 = !DILexicalBlockFile(scope: !137, file: !18, discriminator: 1)
!143 = !DILocation(line: 72, column: 37, scope: !142)
!144 = !DILocation(line: 72, column: 34, scope: !142)
!145 = !DILocation(line: 72, column: 46, scope: !142)
!146 = !DILocation(line: 72, column: 49, scope: !147)
!147 = !DILexicalBlockFile(scope: !137, file: !18, discriminator: 2)
!148 = !DILocation(line: 72, column: 55, scope: !147)
!149 = !DILocation(line: 72, column: 53, scope: !147)
!150 = !DILocation(line: 72, column: 7, scope: !147)
!151 = !DILocation(line: 73, column: 10, scope: !137)
!152 = !DILocation(line: 73, column: 4, scope: !137)
!153 = !DILocation(line: 75, column: 11, scope: !131)
!154 = !DILocation(line: 75, column: 17, scope: !131)
!155 = !DILocation(line: 75, column: 24, scope: !131)
!156 = !DILocation(line: 75, column: 22, scope: !131)
!157 = !DILocation(line: 75, column: 9, scope: !131)
!158 = !DILocation(line: 76, column: 2, scope: !131)
!159 = !DILocation(line: 69, column: 62, scope: !160)
!160 = !DILexicalBlockFile(scope: !121, file: !18, discriminator: 4)
!161 = !DILocation(line: 69, column: 2, scope: !160)
!162 = distinct !{!162, !163}
!163 = !DILocation(line: 69, column: 2, scope: !17)
!164 = !DILocation(line: 78, column: 6, scope: !165)
!165 = distinct !DILexicalBlock(scope: !17, file: !18, line: 78, column: 6)
!166 = !DILocation(line: 78, column: 13, scope: !165)
!167 = !DILocation(line: 78, column: 10, scope: !165)
!168 = !DILocation(line: 78, column: 6, scope: !17)
!169 = !DILocation(line: 79, column: 9, scope: !165)
!170 = !DILocation(line: 79, column: 3, scope: !165)
!171 = !DILocation(line: 80, column: 7, scope: !172)
!172 = distinct !DILexicalBlock(scope: !17, file: !18, line: 80, column: 6)
!173 = !DILocation(line: 80, column: 6, scope: !172)
!174 = !DILocation(line: 80, column: 11, scope: !172)
!175 = !DILocation(line: 80, column: 19, scope: !172)
!176 = !DILocation(line: 80, column: 23, scope: !177)
!177 = !DILexicalBlockFile(scope: !172, file: !18, discriminator: 1)
!178 = !DILocation(line: 80, column: 22, scope: !177)
!179 = !DILocation(line: 80, column: 27, scope: !177)
!180 = !DILocation(line: 80, column: 6, scope: !177)
!181 = !DILocation(line: 81, column: 9, scope: !172)
!182 = !DILocation(line: 81, column: 3, scope: !172)
!183 = !DILocation(line: 83, column: 19, scope: !17)
!184 = !DILocation(line: 83, column: 2, scope: !17)
!185 = !DILocation(line: 83, column: 11, scope: !17)
!186 = !DILocation(line: 83, column: 17, scope: !17)
!187 = !DILocation(line: 84, column: 19, scope: !17)
!188 = !DILocation(line: 84, column: 2, scope: !17)
!189 = !DILocation(line: 84, column: 11, scope: !17)
!190 = !DILocation(line: 84, column: 17, scope: !17)
!191 = !DILocation(line: 86, column: 2, scope: !17)
!192 = !DILocation(line: 87, column: 1, scope: !17)
!193 = distinct !DISubprogram(name: "c_isdigit", scope: !4, file: !4, line: 78, type: !194, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !31)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !29}
!196 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!197 = !DILocalVariable(name: "c", arg: 1, scope: !193, file: !4, line: 78, type: !29)
!198 = !DILocation(line: 78, column: 15, scope: !193)
!199 = !DILocation(line: 80, column: 18, scope: !193)
!200 = !DILocation(line: 80, column: 9, scope: !193)
!201 = !DILocation(line: 80, column: 2, scope: !193)
