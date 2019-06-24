; ModuleID = './line129-irc-masks.o.i'
source_filename = "./line129-irc-masks.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s!%s@%s\00", align 1

; Function Attrs: nounwind uwtable
define i8* @irc_get_mask(i8*, i8*, i32) #0 !dbg !26 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !35, metadata !36), !dbg !37
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !38, metadata !36), !dbg !39
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !40, metadata !36), !dbg !41
  call void @llvm.dbg.declare(metadata i8** %8, metadata !42, metadata !36), !dbg !43
  call void @llvm.dbg.declare(metadata i8** %9, metadata !44, metadata !36), !dbg !45
  call void @llvm.dbg.declare(metadata i8** %10, metadata !46, metadata !36), !dbg !47
  %11 = load i8*, i8** %6, align 8, !dbg !48
  %12 = load i8, i8* %11, align 1, !dbg !49
  %13 = sext i8 %12 to i32, !dbg !50
  %14 = icmp eq i32 %13, 94, !dbg !51
  br i1 %14, label %35, label %15, !dbg !52

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %6, align 8, !dbg !53
  %17 = load i8, i8* %16, align 1, !dbg !55
  %18 = sext i8 %17 to i32, !dbg !56
  %19 = icmp eq i32 %18, 126, !dbg !57
  br i1 %19, label %35, label %20, !dbg !58

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %6, align 8, !dbg !59
  %22 = load i8, i8* %21, align 1, !dbg !61
  %23 = sext i8 %22 to i32, !dbg !62
  %24 = icmp eq i32 %23, 43, !dbg !63
  br i1 %24, label %35, label %25, !dbg !64

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %6, align 8, !dbg !65
  %27 = load i8, i8* %26, align 1, !dbg !67
  %28 = sext i8 %27 to i32, !dbg !68
  %29 = icmp eq i32 %28, 61, !dbg !69
  br i1 %29, label %35, label %30, !dbg !70

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %6, align 8, !dbg !71
  %32 = load i8, i8* %31, align 1, !dbg !73
  %33 = sext i8 %32 to i32, !dbg !74
  %34 = icmp eq i32 %33, 45, !dbg !75
  br i1 %34, label %35, label %38, !dbg !76

; <label>:35:                                     ; preds = %30, %25, %20, %15, %3
  %36 = load i8*, i8** %6, align 8, !dbg !77
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !78
  br label %40, !dbg !79

; <label>:38:                                     ; preds = %30
  %39 = load i8*, i8** %6, align 8, !dbg !81
  br label %40, !dbg !82

; <label>:40:                                     ; preds = %38, %35
  %41 = phi i8* [ %37, %35 ], [ %39, %38 ], !dbg !84
  %42 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* %41, i8* null), !dbg !86
  store i8* %42, i8** %9, align 8, !dbg !87
  %43 = load i8*, i8** %9, align 8, !dbg !88
  %44 = call i8* @strchr(i8* %43, i32 64) #6, !dbg !89
  store i8* %44, i8** %10, align 8, !dbg !90
  %45 = load i8*, i8** %10, align 8, !dbg !91
  %46 = icmp eq i8* %45, null, !dbg !93
  br i1 %46, label %47, label %49, !dbg !94

; <label>:47:                                     ; preds = %40
  %48 = load i8*, i8** %9, align 8, !dbg !95
  call void @g_free(i8* %48), !dbg !97
  store i8* null, i8** %4, align 8, !dbg !98
  br label %86, !dbg !98

; <label>:49:                                     ; preds = %40
  %50 = load i8*, i8** %10, align 8, !dbg !99
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !99
  store i8* %51, i8** %10, align 8, !dbg !99
  store i8 0, i8* %50, align 1, !dbg !100
  %52 = load i32, i32* %7, align 4, !dbg !101
  %53 = and i32 %52, 4, !dbg !103
  %54 = icmp ne i32 %53, 0, !dbg !103
  br i1 %54, label %55, label %56, !dbg !104

; <label>:55:                                     ; preds = %49
  br label %65, !dbg !105

; <label>:56:                                     ; preds = %49
  %57 = load i32, i32* %7, align 4, !dbg !107
  %58 = and i32 %57, 8, !dbg !110
  %59 = icmp ne i32 %58, 0, !dbg !110
  br i1 %59, label %60, label %63, !dbg !107

; <label>:60:                                     ; preds = %56
  %61 = load i8*, i8** %10, align 8, !dbg !111
  %62 = call i8* @get_domain_mask(i8* %61), !dbg !113
  store i8* %62, i8** %10, align 8, !dbg !114
  br label %64, !dbg !115

; <label>:63:                                     ; preds = %56
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %10, align 8, !dbg !116
  br label %64

; <label>:64:                                     ; preds = %63, %60
  br label %65

; <label>:65:                                     ; preds = %64, %55
  %66 = load i32, i32* %7, align 4, !dbg !118
  %67 = and i32 %66, 1, !dbg !119
  %68 = icmp ne i32 %67, 0, !dbg !119
  br i1 %68, label %69, label %71, !dbg !120

; <label>:69:                                     ; preds = %65
  %70 = load i8*, i8** %5, align 8, !dbg !121
  br label %72, !dbg !122

; <label>:71:                                     ; preds = %65
  br label %72, !dbg !123

; <label>:72:                                     ; preds = %71, %69
  %73 = phi i8* [ %70, %69 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), %71 ], !dbg !124
  %74 = load i32, i32* %7, align 4, !dbg !125
  %75 = and i32 %74, 2, !dbg !126
  %76 = icmp ne i32 %75, 0, !dbg !126
  br i1 %76, label %77, label %79, !dbg !127

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %9, align 8, !dbg !128
  br label %80, !dbg !129

; <label>:79:                                     ; preds = %72
  br label %80, !dbg !130

; <label>:80:                                     ; preds = %79, %77
  %81 = phi i8* [ %78, %77 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), %79 ], !dbg !131
  %82 = load i8*, i8** %10, align 8, !dbg !132
  %83 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %73, i8* %81, i8* %82), !dbg !133
  store i8* %83, i8** %8, align 8, !dbg !134
  %84 = load i8*, i8** %9, align 8, !dbg !135
  call void @g_free(i8* %84), !dbg !136
  %85 = load i8*, i8** %8, align 8, !dbg !137
  store i8* %85, i8** %4, align 8, !dbg !138
  br label %86, !dbg !138

; <label>:86:                                     ; preds = %80, %47
  %87 = load i8*, i8** %4, align 8, !dbg !139
  ret i8* %87, !dbg !139
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_strconcat(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @get_domain_mask(i8*) #0 !dbg !140 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !143, metadata !36), !dbg !144
  call void @llvm.dbg.declare(metadata i8** %4, metadata !145, metadata !36), !dbg !146
  %5 = load i8*, i8** %3, align 8, !dbg !147
  %6 = call i8* @strchr(i8* %5, i32 46) #6, !dbg !149
  %7 = icmp eq i8* %6, null, !dbg !150
  br i1 %7, label %8, label %26, !dbg !151

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !152
  %10 = call i8* @strrchr(i8* %9, i32 58) #6, !dbg !154
  store i8* %10, i8** %4, align 8, !dbg !155
  %11 = load i8*, i8** %4, align 8, !dbg !156
  %12 = icmp ne i8* %11, null, !dbg !158
  br i1 %12, label %13, label %24, !dbg !159

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %4, align 8, !dbg !160
  %15 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !160
  %16 = load i8, i8* %15, align 1, !dbg !160
  %17 = sext i8 %16 to i32, !dbg !160
  %18 = icmp ne i32 %17, 0, !dbg !163
  br i1 %18, label %19, label %23, !dbg !164

; <label>:19:                                     ; preds = %13
  %20 = load i8*, i8** %4, align 8, !dbg !165
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !167
  %22 = call i8* @strcpy(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #7, !dbg !168
  br label %23, !dbg !168

; <label>:23:                                     ; preds = %19, %13
  br label %24, !dbg !169

; <label>:24:                                     ; preds = %23, %8
  %25 = load i8*, i8** %3, align 8, !dbg !170
  store i8* %25, i8** %2, align 8, !dbg !171
  br label %71, !dbg !171

; <label>:26:                                     ; preds = %1
  %27 = load i8*, i8** %3, align 8, !dbg !172
  %28 = call i32 @is_ipv4_address(i8* %27), !dbg !174
  %29 = icmp ne i32 %28, 0, !dbg !174
  br i1 %29, label %30, label %53, !dbg !175

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %3, align 8, !dbg !176
  %32 = call i8* @strrchr(i8* %31, i32 46) #6, !dbg !178
  store i8* %32, i8** %4, align 8, !dbg !179
  %33 = load i8*, i8** %4, align 8, !dbg !180
  %34 = icmp ne i8* %33, null, !dbg !182
  br i1 %34, label %35, label %52, !dbg !183

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %4, align 8, !dbg !184
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !184
  %38 = load i8, i8* %37, align 1, !dbg !184
  %39 = zext i8 %38 to i32, !dbg !186
  %40 = sext i32 %39 to i64, !dbg !187
  %41 = call i16** @__ctype_b_loc() #1, !dbg !188
  %42 = load i16*, i16** %41, align 8, !dbg !189
  %43 = getelementptr inbounds i16, i16* %42, i64 %40, !dbg !187
  %44 = load i16, i16* %43, align 2, !dbg !187
  %45 = zext i16 %44 to i32, !dbg !187
  %46 = and i32 %45, 2048, !dbg !190
  %47 = icmp ne i32 %46, 0, !dbg !190
  br i1 %47, label %48, label %52, !dbg !191

; <label>:48:                                     ; preds = %35
  %49 = load i8*, i8** %4, align 8, !dbg !192
  %50 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !193
  %51 = call i8* @strcpy(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #7, !dbg !194
  br label %52, !dbg !194

; <label>:52:                                     ; preds = %48, %35, %30
  br label %69, !dbg !195

; <label>:53:                                     ; preds = %26
  %54 = load i8*, i8** %3, align 8, !dbg !196
  %55 = call i8* @strchr(i8* %54, i32 46) #6, !dbg !198
  store i8* %55, i8** %4, align 8, !dbg !199
  %56 = load i8*, i8** %4, align 8, !dbg !200
  %57 = icmp ne i8* %56, null, !dbg !202
  br i1 %57, label %58, label %68, !dbg !203

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %4, align 8, !dbg !204
  %60 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !206
  %61 = call i8* @strchr(i8* %60, i32 46) #6, !dbg !207
  %62 = icmp ne i8* %61, null, !dbg !208
  br i1 %62, label %63, label %68, !dbg !209

; <label>:63:                                     ; preds = %58
  %64 = load i8*, i8** %4, align 8, !dbg !210
  %65 = getelementptr inbounds i8, i8* %64, i64 -1, !dbg !212
  store i8* %65, i8** %3, align 8, !dbg !213
  %66 = load i8*, i8** %3, align 8, !dbg !214
  %67 = getelementptr inbounds i8, i8* %66, i64 0, !dbg !214
  store i8 42, i8* %67, align 1, !dbg !215
  br label %68, !dbg !216

; <label>:68:                                     ; preds = %63, %58, %53
  br label %69

; <label>:69:                                     ; preds = %68, %52
  %70 = load i8*, i8** %3, align 8, !dbg !217
  store i8* %70, i8** %2, align 8, !dbg !218
  br label %71, !dbg !218

; <label>:71:                                     ; preds = %69, %24
  %72 = load i8*, i8** %2, align 8, !dbg !219
  ret i8* %72, !dbg !219
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @is_ipv4_address(i8*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18)
!1 = !DIFile(filename: "line129-irc-masks.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "_ISupper", value: 256)
!7 = !DIEnumerator(name: "_ISlower", value: 512)
!8 = !DIEnumerator(name: "_ISalpha", value: 1024)
!9 = !DIEnumerator(name: "_ISdigit", value: 2048)
!10 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!11 = !DIEnumerator(name: "_ISspace", value: 8192)
!12 = !DIEnumerator(name: "_ISprint", value: 16384)
!13 = !DIEnumerator(name: "_ISgraph", value: 32768)
!14 = !DIEnumerator(name: "_ISblank", value: 1)
!15 = !DIEnumerator(name: "_IScntrl", value: 2)
!16 = !DIEnumerator(name: "_ISpunct", value: 4)
!17 = !DIEnumerator(name: "_ISalnum", value: 8)
!18 = !{!19, !20, !21, !22}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!21 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!26 = distinct !DISubprogram(name: "irc_get_mask", scope: !27, file: !27, line: 59, type: !28, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!27 = !DIFile(filename: "irc-masks.c", directory: "/home/lichi/Desktop/irssi/task1")
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !32, !32, !20}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!34 = !{}
!35 = !DILocalVariable(name: "nick", arg: 1, scope: !26, file: !27, line: 59, type: !32)
!36 = !DIExpression()
!37 = !DILocation(line: 59, column: 32, scope: !26)
!38 = !DILocalVariable(name: "address", arg: 2, scope: !26, file: !27, line: 59, type: !32)
!39 = !DILocation(line: 59, column: 50, scope: !26)
!40 = !DILocalVariable(name: "flags", arg: 3, scope: !26, file: !27, line: 59, type: !20)
!41 = !DILocation(line: 59, column: 63, scope: !26)
!42 = !DILocalVariable(name: "ret", scope: !26, file: !27, line: 61, type: !30)
!43 = !DILocation(line: 61, column: 8, scope: !26)
!44 = !DILocalVariable(name: "user", scope: !26, file: !27, line: 61, type: !30)
!45 = !DILocation(line: 61, column: 14, scope: !26)
!46 = !DILocalVariable(name: "host", scope: !26, file: !27, line: 61, type: !30)
!47 = !DILocation(line: 61, column: 21, scope: !26)
!48 = !DILocation(line: 64, column: 29, scope: !26)
!49 = !DILocation(line: 64, column: 28, scope: !26)
!50 = !DILocation(line: 64, column: 27, scope: !26)
!51 = !DILocation(line: 64, column: 38, scope: !26)
!52 = !DILocation(line: 64, column: 45, scope: !26)
!53 = !DILocation(line: 64, column: 50, scope: !54)
!54 = !DILexicalBlockFile(scope: !26, file: !27, discriminator: 1)
!55 = !DILocation(line: 64, column: 49, scope: !54)
!56 = !DILocation(line: 64, column: 48, scope: !54)
!57 = !DILocation(line: 64, column: 59, scope: !54)
!58 = !DILocation(line: 64, column: 66, scope: !54)
!59 = !DILocation(line: 64, column: 71, scope: !60)
!60 = !DILexicalBlockFile(scope: !26, file: !27, discriminator: 2)
!61 = !DILocation(line: 64, column: 70, scope: !60)
!62 = !DILocation(line: 64, column: 69, scope: !60)
!63 = !DILocation(line: 64, column: 80, scope: !60)
!64 = !DILocation(line: 64, column: 87, scope: !60)
!65 = !DILocation(line: 64, column: 92, scope: !66)
!66 = !DILexicalBlockFile(scope: !26, file: !27, discriminator: 3)
!67 = !DILocation(line: 64, column: 91, scope: !66)
!68 = !DILocation(line: 64, column: 90, scope: !66)
!69 = !DILocation(line: 64, column: 101, scope: !66)
!70 = !DILocation(line: 64, column: 108, scope: !66)
!71 = !DILocation(line: 64, column: 113, scope: !72)
!72 = !DILexicalBlockFile(scope: !26, file: !27, discriminator: 4)
!73 = !DILocation(line: 64, column: 112, scope: !72)
!74 = !DILocation(line: 64, column: 111, scope: !72)
!75 = !DILocation(line: 64, column: 122, scope: !72)
!76 = !DILocation(line: 64, column: 26, scope: !72)
!77 = !DILocation(line: 65, column: 7, scope: !26)
!78 = !DILocation(line: 65, column: 14, scope: !26)
!79 = !DILocation(line: 64, column: 26, scope: !80)
!80 = !DILexicalBlockFile(scope: !26, file: !27, discriminator: 5)
!81 = !DILocation(line: 65, column: 19, scope: !54)
!82 = !DILocation(line: 64, column: 26, scope: !83)
!83 = !DILexicalBlockFile(scope: !26, file: !27, discriminator: 6)
!84 = !DILocation(line: 64, column: 26, scope: !85)
!85 = !DILexicalBlockFile(scope: !26, file: !27, discriminator: 7)
!86 = !DILocation(line: 64, column: 9, scope: !85)
!87 = !DILocation(line: 64, column: 7, scope: !85)
!88 = !DILocation(line: 68, column: 16, scope: !26)
!89 = !DILocation(line: 68, column: 9, scope: !26)
!90 = !DILocation(line: 68, column: 7, scope: !26)
!91 = !DILocation(line: 69, column: 6, scope: !92)
!92 = distinct !DILexicalBlock(scope: !26, file: !27, line: 69, column: 6)
!93 = !DILocation(line: 69, column: 11, scope: !92)
!94 = !DILocation(line: 69, column: 6, scope: !26)
!95 = !DILocation(line: 70, column: 10, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !27, line: 69, column: 19)
!97 = !DILocation(line: 70, column: 3, scope: !96)
!98 = !DILocation(line: 71, column: 3, scope: !96)
!99 = !DILocation(line: 73, column: 7, scope: !26)
!100 = !DILocation(line: 73, column: 10, scope: !26)
!101 = !DILocation(line: 75, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !26, file: !27, line: 75, column: 6)
!103 = !DILocation(line: 75, column: 12, scope: !102)
!104 = !DILocation(line: 75, column: 6, scope: !26)
!105 = !DILocation(line: 77, column: 2, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !27, line: 75, column: 20)
!107 = !DILocation(line: 77, column: 13, scope: !108)
!108 = !DILexicalBlockFile(scope: !109, file: !27, discriminator: 1)
!109 = distinct !DILexicalBlock(scope: !102, file: !27, line: 77, column: 13)
!110 = !DILocation(line: 77, column: 19, scope: !108)
!111 = !DILocation(line: 79, column: 26, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !27, line: 77, column: 27)
!113 = !DILocation(line: 79, column: 10, scope: !112)
!114 = !DILocation(line: 79, column: 8, scope: !112)
!115 = !DILocation(line: 80, column: 2, scope: !112)
!116 = !DILocation(line: 82, column: 8, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !27, line: 80, column: 9)
!118 = !DILocation(line: 86, column: 11, scope: !26)
!119 = !DILocation(line: 86, column: 17, scope: !26)
!120 = !DILocation(line: 86, column: 10, scope: !26)
!121 = !DILocation(line: 86, column: 27, scope: !54)
!122 = !DILocation(line: 86, column: 10, scope: !54)
!123 = !DILocation(line: 86, column: 10, scope: !60)
!124 = !DILocation(line: 86, column: 10, scope: !66)
!125 = !DILocation(line: 87, column: 11, scope: !26)
!126 = !DILocation(line: 87, column: 17, scope: !26)
!127 = !DILocation(line: 87, column: 10, scope: !26)
!128 = !DILocation(line: 87, column: 27, scope: !54)
!129 = !DILocation(line: 87, column: 10, scope: !54)
!130 = !DILocation(line: 87, column: 10, scope: !60)
!131 = !DILocation(line: 87, column: 10, scope: !66)
!132 = !DILocation(line: 88, column: 10, scope: !26)
!133 = !DILocation(line: 85, column: 8, scope: !26)
!134 = !DILocation(line: 85, column: 6, scope: !26)
!135 = !DILocation(line: 89, column: 9, scope: !26)
!136 = !DILocation(line: 89, column: 2, scope: !26)
!137 = !DILocation(line: 91, column: 9, scope: !26)
!138 = !DILocation(line: 91, column: 2, scope: !26)
!139 = !DILocation(line: 92, column: 1, scope: !26)
!140 = distinct !DISubprogram(name: "get_domain_mask", scope: !27, file: !27, line: 26, type: !141, isLocal: true, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !34)
!141 = !DISubroutineType(types: !142)
!142 = !{!30, !30}
!143 = !DILocalVariable(name: "host", arg: 1, scope: !140, file: !27, line: 26, type: !30)
!144 = !DILocation(line: 26, column: 36, scope: !140)
!145 = !DILocalVariable(name: "ptr", scope: !140, file: !27, line: 28, type: !30)
!146 = !DILocation(line: 28, column: 8, scope: !140)
!147 = !DILocation(line: 30, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !140, file: !27, line: 30, column: 6)
!149 = !DILocation(line: 30, column: 6, scope: !148)
!150 = !DILocation(line: 30, column: 24, scope: !148)
!151 = !DILocation(line: 30, column: 6, scope: !140)
!152 = !DILocation(line: 32, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !27, line: 30, column: 32)
!154 = !DILocation(line: 32, column: 9, scope: !153)
!155 = !DILocation(line: 32, column: 7, scope: !153)
!156 = !DILocation(line: 33, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !27, line: 33, column: 7)
!158 = !DILocation(line: 33, column: 11, scope: !157)
!159 = !DILocation(line: 33, column: 7, scope: !153)
!160 = !DILocation(line: 35, column: 8, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !27, line: 35, column: 8)
!162 = distinct !DILexicalBlock(scope: !157, file: !27, line: 33, column: 19)
!163 = !DILocation(line: 35, column: 15, scope: !161)
!164 = !DILocation(line: 35, column: 8, scope: !162)
!165 = !DILocation(line: 35, column: 31, scope: !166)
!166 = !DILexicalBlockFile(scope: !161, file: !27, discriminator: 1)
!167 = !DILocation(line: 35, column: 34, scope: !166)
!168 = !DILocation(line: 35, column: 24, scope: !166)
!169 = !DILocation(line: 36, column: 3, scope: !162)
!170 = !DILocation(line: 38, column: 10, scope: !153)
!171 = !DILocation(line: 38, column: 3, scope: !153)
!172 = !DILocation(line: 41, column: 29, scope: !173)
!173 = distinct !DILexicalBlock(scope: !140, file: !27, line: 41, column: 13)
!174 = !DILocation(line: 41, column: 13, scope: !173)
!175 = !DILocation(line: 41, column: 13, scope: !140)
!176 = !DILocation(line: 43, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !27, line: 41, column: 36)
!178 = !DILocation(line: 43, column: 9, scope: !177)
!179 = !DILocation(line: 43, column: 7, scope: !177)
!180 = !DILocation(line: 44, column: 7, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !27, line: 44, column: 7)
!182 = !DILocation(line: 44, column: 11, scope: !181)
!183 = !DILocation(line: 44, column: 18, scope: !181)
!184 = !DILocation(line: 44, column: 44, scope: !185)
!185 = !DILexicalBlockFile(scope: !181, file: !27, discriminator: 1)
!186 = !DILocation(line: 44, column: 21, scope: !185)
!187 = !DILocation(line: 44, column: 22, scope: !185)
!188 = !DILocation(line: 44, column: 24, scope: !185)
!189 = !DILocation(line: 44, column: 23, scope: !185)
!190 = !DILocation(line: 44, column: 25, scope: !185)
!191 = !DILocation(line: 44, column: 7, scope: !185)
!192 = !DILocation(line: 45, column: 11, scope: !181)
!193 = !DILocation(line: 45, column: 14, scope: !181)
!194 = !DILocation(line: 45, column: 4, scope: !181)
!195 = !DILocation(line: 46, column: 2, scope: !177)
!196 = !DILocation(line: 49, column: 16, scope: !197)
!197 = distinct !DILexicalBlock(scope: !173, file: !27, line: 46, column: 9)
!198 = !DILocation(line: 49, column: 9, scope: !197)
!199 = !DILocation(line: 49, column: 7, scope: !197)
!200 = !DILocation(line: 50, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !27, line: 50, column: 7)
!202 = !DILocation(line: 50, column: 11, scope: !201)
!203 = !DILocation(line: 50, column: 18, scope: !201)
!204 = !DILocation(line: 50, column: 28, scope: !205)
!205 = !DILexicalBlockFile(scope: !201, file: !27, discriminator: 1)
!206 = !DILocation(line: 50, column: 31, scope: !205)
!207 = !DILocation(line: 50, column: 21, scope: !205)
!208 = !DILocation(line: 50, column: 40, scope: !205)
!209 = !DILocation(line: 50, column: 7, scope: !205)
!210 = !DILocation(line: 51, column: 11, scope: !211)
!211 = distinct !DILexicalBlock(scope: !201, file: !27, line: 50, column: 49)
!212 = !DILocation(line: 51, column: 14, scope: !211)
!213 = !DILocation(line: 51, column: 9, scope: !211)
!214 = !DILocation(line: 52, column: 25, scope: !211)
!215 = !DILocation(line: 52, column: 33, scope: !211)
!216 = !DILocation(line: 53, column: 3, scope: !211)
!217 = !DILocation(line: 56, column: 9, scope: !140)
!218 = !DILocation(line: 56, column: 2, scope: !140)
!219 = !DILocation(line: 57, column: 1, scope: !140)
