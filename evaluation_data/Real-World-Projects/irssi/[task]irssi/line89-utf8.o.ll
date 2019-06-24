; ModuleID = './line89-utf8.o.i'
source_filename = "./line89-utf8.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_utf8_skip = external constant i8*, align 8
@__func__.string_length = private unnamed_addr constant [14 x i8] c"string_length\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@__func__.string_width = private unnamed_addr constant [13 x i8] c"string_width\00", align 1
@__func__.string_chars_for_width = private unnamed_addr constant [23 x i8] c"string_chars_for_width\00", align 1

; Function Attrs: nounwind uwtable
define i32 @string_advance(i8**, i32) #0 !dbg !24 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !31, metadata !32), !dbg !33
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !34, metadata !32), !dbg !35
  %7 = load i32, i32* %5, align 4, !dbg !36
  %8 = icmp eq i32 %7, 1, !dbg !38
  br i1 %8, label %9, label %35, !dbg !39

; <label>:9:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !40, metadata !32), !dbg !47
  %10 = load i8**, i8*** %4, align 8, !dbg !48
  %11 = load i8*, i8** %10, align 8, !dbg !49
  %12 = call i32 @g_utf8_get_char(i8* %11) #4, !dbg !50
  store i32 %12, i32* %6, align 4, !dbg !51
  %13 = load i8**, i8*** %4, align 8, !dbg !52
  %14 = load i8*, i8** %13, align 8, !dbg !53
  %15 = load i8**, i8*** %4, align 8, !dbg !54
  %16 = load i8*, i8** %15, align 8, !dbg !55
  %17 = load i8, i8* %16, align 1, !dbg !56
  %18 = zext i8 %17 to i64, !dbg !57
  %19 = load i8*, i8** @g_utf8_skip, align 8, !dbg !57
  %20 = getelementptr inbounds i8, i8* %19, i64 %18, !dbg !57
  %21 = load i8, i8* %20, align 1, !dbg !57
  %22 = sext i8 %21 to i32, !dbg !57
  %23 = sext i32 %22 to i64, !dbg !58
  %24 = getelementptr inbounds i8, i8* %14, i64 %23, !dbg !58
  %25 = load i8**, i8*** %4, align 8, !dbg !59
  store i8* %24, i8** %25, align 8, !dbg !60
  %26 = load i32, i32* %6, align 4, !dbg !61
  %27 = and i32 %26, -129, !dbg !62
  %28 = icmp uge i32 %27, 32, !dbg !63
  br i1 %28, label %29, label %32, !dbg !64

; <label>:29:                                     ; preds = %9
  %30 = load i32, i32* %6, align 4, !dbg !65
  %31 = call i32 @i_wcwidth(i32 %30), !dbg !67
  br label %33, !dbg !68

; <label>:32:                                     ; preds = %9
  br label %33, !dbg !69

; <label>:33:                                     ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ 1, %32 ], !dbg !71
  store i32 %34, i32* %3, align 4, !dbg !73
  br label %39, !dbg !73

; <label>:35:                                     ; preds = %2
  %36 = load i8**, i8*** %4, align 8, !dbg !74
  %37 = load i8*, i8** %36, align 8, !dbg !76
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !76
  store i8* %38, i8** %36, align 8, !dbg !76
  store i32 1, i32* %3, align 4, !dbg !77
  br label %39, !dbg !77

; <label>:39:                                     ; preds = %35, %33
  %40 = load i32, i32* %3, align 4, !dbg !78
  ret i32 %40, !dbg !78
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #2

declare i32 @i_wcwidth(i32) #3

; Function Attrs: nounwind uwtable
define i32 @string_policy(i8*) #0 !dbg !79 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !82, metadata !32), !dbg !83
  %4 = call i32 @is_utf8(), !dbg !84
  %5 = icmp ne i32 %4, 0, !dbg !84
  br i1 %5, label %6, label %15, !dbg !86

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !87
  %8 = icmp eq i8* %7, null, !dbg !90
  br i1 %8, label %13, label %9, !dbg !91

; <label>:9:                                      ; preds = %6
  %10 = load i8*, i8** %3, align 8, !dbg !92
  %11 = call i32 @g_utf8_validate(i8* %10, i64 -1, i8** null), !dbg !94
  %12 = icmp ne i32 %11, 0, !dbg !94
  br i1 %12, label %13, label %14, !dbg !95

; <label>:13:                                     ; preds = %9, %6
  store i32 1, i32* %2, align 4, !dbg !96
  br label %16, !dbg !96

; <label>:14:                                     ; preds = %9
  br label %15, !dbg !98

; <label>:15:                                     ; preds = %14, %1
  store i32 0, i32* %2, align 4, !dbg !99
  br label %16, !dbg !99

; <label>:16:                                     ; preds = %15, %13
  %17 = load i32, i32* %2, align 4, !dbg !100
  ret i32 %17, !dbg !100
}

declare i32 @is_utf8() #3

declare i32 @g_utf8_validate(i8*, i64, i8**) #3

; Function Attrs: nounwind uwtable
define i32 @string_length(i8*, i32) #0 !dbg !101 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !104, metadata !32), !dbg !105
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !106, metadata !32), !dbg !107
  br label %6, !dbg !108, !llvm.loop !109

; <label>:6:                                      ; preds = %2
  %7 = load i8*, i8** %4, align 8, !dbg !110
  %8 = icmp ne i8* %7, null, !dbg !114
  br i1 %8, label %9, label %10, !dbg !110

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !115

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.string_length, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !118
  store i32 0, i32* %3, align 4, !dbg !121
  br label %29, !dbg !121

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !122

; <label>:12:                                     ; preds = %11
  %13 = load i32, i32* %5, align 4, !dbg !124
  %14 = icmp eq i32 %13, -1, !dbg !126
  br i1 %14, label %15, label %18, !dbg !127

; <label>:15:                                     ; preds = %12
  %16 = load i8*, i8** %4, align 8, !dbg !128
  %17 = call i32 @string_policy(i8* %16), !dbg !130
  store i32 %17, i32* %5, align 4, !dbg !131
  br label %18, !dbg !132

; <label>:18:                                     ; preds = %15, %12
  %19 = load i32, i32* %5, align 4, !dbg !133
  %20 = icmp eq i32 %19, 1, !dbg !135
  br i1 %20, label %21, label %25, !dbg !136

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %4, align 8, !dbg !137
  %23 = call i64 @g_utf8_strlen(i8* %22, i64 -1) #4, !dbg !139
  %24 = trunc i64 %23 to i32, !dbg !139
  store i32 %24, i32* %3, align 4, !dbg !140
  br label %29, !dbg !140

; <label>:25:                                     ; preds = %18
  %26 = load i8*, i8** %4, align 8, !dbg !141
  %27 = call i64 @strlen(i8* %26) #4, !dbg !143
  %28 = trunc i64 %27 to i32, !dbg !143
  store i32 %28, i32* %3, align 4, !dbg !144
  br label %29, !dbg !144

; <label>:29:                                     ; preds = %25, %21, %10
  %30 = load i32, i32* %3, align 4, !dbg !145
  ret i32 %30, !dbg !145
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @g_utf8_strlen(i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @string_width(i8*, i32) #0 !dbg !146 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !147, metadata !32), !dbg !148
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !149, metadata !32), !dbg !150
  call void @llvm.dbg.declare(metadata i32* %6, metadata !151, metadata !32), !dbg !152
  br label %7, !dbg !153, !llvm.loop !154

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !155
  %9 = icmp ne i8* %8, null, !dbg !159
  br i1 %9, label %10, label %11, !dbg !155

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !160

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.string_width, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !163
  store i32 0, i32* %3, align 4, !dbg !166
  br label %32, !dbg !166

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !167

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !169
  %15 = icmp eq i32 %14, -1, !dbg !171
  br i1 %15, label %16, label %19, !dbg !172

; <label>:16:                                     ; preds = %13
  %17 = load i8*, i8** %4, align 8, !dbg !173
  %18 = call i32 @string_policy(i8* %17), !dbg !175
  store i32 %18, i32* %5, align 4, !dbg !176
  br label %19, !dbg !177

; <label>:19:                                     ; preds = %16, %13
  store i32 0, i32* %6, align 4, !dbg !178
  br label %20, !dbg !179

; <label>:20:                                     ; preds = %25, %19
  %21 = load i8*, i8** %4, align 8, !dbg !180
  %22 = load i8, i8* %21, align 1, !dbg !182
  %23 = sext i8 %22 to i32, !dbg !182
  %24 = icmp ne i32 %23, 0, !dbg !183
  br i1 %24, label %25, label %30, !dbg !184

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %5, align 4, !dbg !185
  %27 = call i32 @string_advance(i8** %4, i32 %26), !dbg !187
  %28 = load i32, i32* %6, align 4, !dbg !188
  %29 = add nsw i32 %28, %27, !dbg !188
  store i32 %29, i32* %6, align 4, !dbg !188
  br label %20, !dbg !189, !llvm.loop !191

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %6, align 4, !dbg !192
  store i32 %31, i32* %3, align 4, !dbg !193
  br label %32, !dbg !193

; <label>:32:                                     ; preds = %30, %11
  %33 = load i32, i32* %3, align 4, !dbg !194
  ret i32 %33, !dbg !194
}

; Function Attrs: nounwind uwtable
define i32 @string_chars_for_width(i8*, i32, i32, i32*) #0 !dbg !195 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !199, metadata !32), !dbg !200
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !201, metadata !32), !dbg !202
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !203, metadata !32), !dbg !204
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !205, metadata !32), !dbg !206
  call void @llvm.dbg.declare(metadata i8** %10, metadata !207, metadata !32), !dbg !208
  call void @llvm.dbg.declare(metadata i8** %11, metadata !209, metadata !32), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %12, metadata !211, metadata !32), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %13, metadata !213, metadata !32), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %14, metadata !215, metadata !32), !dbg !216
  br label %15, !dbg !217, !llvm.loop !218

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %6, align 8, !dbg !219
  %17 = icmp ne i8* %16, null, !dbg !223
  br i1 %17, label %18, label %19, !dbg !219

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !224

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.string_chars_for_width, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !227
  store i32 -1, i32* %5, align 4, !dbg !230
  br label %73, !dbg !230

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !231

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* %8, align 4, !dbg !233
  %23 = icmp eq i32 %22, 0, !dbg !235
  br i1 %23, label %24, label %30, !dbg !236

; <label>:24:                                     ; preds = %21
  %25 = load i32*, i32** %9, align 8, !dbg !237
  %26 = icmp ne i32* %25, null, !dbg !240
  br i1 %26, label %27, label %29, !dbg !241

; <label>:27:                                     ; preds = %24
  %28 = load i32*, i32** %9, align 8, !dbg !242
  store i32 0, i32* %28, align 4, !dbg !244
  br label %29, !dbg !245

; <label>:29:                                     ; preds = %27, %24
  store i32 0, i32* %5, align 4, !dbg !246
  br label %73, !dbg !246

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* %7, align 4, !dbg !247
  %32 = icmp eq i32 %31, -1, !dbg !249
  br i1 %32, label %33, label %36, !dbg !250

; <label>:33:                                     ; preds = %30
  %34 = load i8*, i8** %6, align 8, !dbg !251
  %35 = call i32 @string_policy(i8* %34), !dbg !253
  store i32 %35, i32* %7, align 4, !dbg !254
  br label %36, !dbg !255

; <label>:36:                                     ; preds = %33, %30
  store i32 0, i32* %14, align 4, !dbg !256
  store i32 0, i32* %12, align 4, !dbg !257
  %37 = load i8*, i8** %6, align 8, !dbg !258
  store i8* %37, i8** %10, align 8, !dbg !259
  br label %38, !dbg !260

; <label>:38:                                     ; preds = %54, %36
  %39 = load i8*, i8** %10, align 8, !dbg !261
  %40 = load i8, i8* %39, align 1, !dbg !263
  %41 = sext i8 %40 to i32, !dbg !263
  %42 = icmp ne i32 %41, 0, !dbg !264
  br i1 %42, label %43, label %60, !dbg !265

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %10, align 8, !dbg !266
  store i8* %44, i8** %11, align 8, !dbg !268
  %45 = load i32, i32* %7, align 4, !dbg !269
  %46 = call i32 @string_advance(i8** %10, i32 %45), !dbg !270
  store i32 %46, i32* %13, align 4, !dbg !271
  %47 = load i32, i32* %12, align 4, !dbg !272
  %48 = load i32, i32* %13, align 4, !dbg !274
  %49 = add nsw i32 %47, %48, !dbg !275
  %50 = load i32, i32* %8, align 4, !dbg !276
  %51 = icmp ugt i32 %49, %50, !dbg !277
  br i1 %51, label %52, label %54, !dbg !278

; <label>:52:                                     ; preds = %43
  %53 = load i8*, i8** %11, align 8, !dbg !279
  store i8* %53, i8** %10, align 8, !dbg !281
  br label %60, !dbg !282

; <label>:54:                                     ; preds = %43
  %55 = load i32, i32* %14, align 4, !dbg !283
  %56 = add nsw i32 %55, 1, !dbg !283
  store i32 %56, i32* %14, align 4, !dbg !283
  %57 = load i32, i32* %13, align 4, !dbg !284
  %58 = load i32, i32* %12, align 4, !dbg !285
  %59 = add nsw i32 %58, %57, !dbg !285
  store i32 %59, i32* %12, align 4, !dbg !285
  br label %38, !dbg !286, !llvm.loop !288

; <label>:60:                                     ; preds = %52, %38
  %61 = load i32*, i32** %9, align 8, !dbg !289
  %62 = icmp ne i32* %61, null, !dbg !291
  br i1 %62, label %63, label %71, !dbg !292

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %10, align 8, !dbg !293
  %65 = load i8*, i8** %6, align 8, !dbg !295
  %66 = ptrtoint i8* %64 to i64, !dbg !296
  %67 = ptrtoint i8* %65 to i64, !dbg !296
  %68 = sub i64 %66, %67, !dbg !296
  %69 = trunc i64 %68 to i32, !dbg !293
  %70 = load i32*, i32** %9, align 8, !dbg !297
  store i32 %69, i32* %70, align 4, !dbg !298
  br label %71, !dbg !299

; <label>:71:                                     ; preds = %63, %60
  %72 = load i32, i32* %14, align 4, !dbg !300
  store i32 %72, i32* %5, align 4, !dbg !301
  br label %73, !dbg !301

; <label>:73:                                     ; preds = %71, %29, %19
  %74 = load i32, i32* %5, align 4, !dbg !302
  ret i32 %74, !dbg !302
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !8)
!1 = !DIFile(filename: "line89-utf8.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "str_policy", file: !4, line: 33, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "utf8.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "TREAT_STRING_AS_BYTES", value: 0)
!7 = !DIEnumerator(name: "TREAT_STRING_AS_UTF8", value: 1)
!8 = !{!9, !11, !16, !17, !19}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !14, line: 52, baseType: !15)
!14 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!15 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !14, line: 46, baseType: !10)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!24 = distinct !DISubprogram(name: "string_advance", scope: !25, file: !25, line: 31, type: !26, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !30)
!25 = !DIFile(filename: "utf8.c", directory: "/home/lichi/Desktop/irssi/task1")
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !29, !28}
!28 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!30 = !{}
!31 = !DILocalVariable(name: "str", arg: 1, scope: !24, file: !25, line: 31, type: !29)
!32 = !DIExpression()
!33 = !DILocation(line: 31, column: 33, scope: !24)
!34 = !DILocalVariable(name: "policy", arg: 2, scope: !24, file: !25, line: 31, type: !28)
!35 = !DILocation(line: 31, column: 42, scope: !24)
!36 = !DILocation(line: 33, column: 6, scope: !37)
!37 = distinct !DILexicalBlock(scope: !24, file: !25, line: 33, column: 6)
!38 = !DILocation(line: 33, column: 13, scope: !37)
!39 = !DILocation(line: 33, column: 6, scope: !24)
!40 = !DILocalVariable(name: "c", scope: !41, file: !25, line: 34, type: !42)
!41 = distinct !DILexicalBlock(scope: !37, file: !25, line: 33, column: 38)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "gunichar", file: !43, line: 60, baseType: !44)
!43 = !DIFile(filename: "/usr/include/glib-2.0/glib/gunicode.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !45, line: 45, baseType: !46)
!45 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!46 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!47 = !DILocation(line: 34, column: 12, scope: !41)
!48 = !DILocation(line: 36, column: 24, scope: !41)
!49 = !DILocation(line: 36, column: 23, scope: !41)
!50 = !DILocation(line: 36, column: 7, scope: !41)
!51 = !DILocation(line: 36, column: 5, scope: !41)
!52 = !DILocation(line: 37, column: 21, scope: !41)
!53 = !DILocation(line: 37, column: 20, scope: !41)
!54 = !DILocation(line: 37, column: 59, scope: !41)
!55 = !DILocation(line: 37, column: 58, scope: !41)
!56 = !DILocation(line: 37, column: 40, scope: !41)
!57 = !DILocation(line: 37, column: 28, scope: !41)
!58 = !DILocation(line: 37, column: 26, scope: !41)
!59 = !DILocation(line: 37, column: 4, scope: !41)
!60 = !DILocation(line: 37, column: 8, scope: !41)
!61 = !DILocation(line: 39, column: 13, scope: !41)
!62 = !DILocation(line: 39, column: 16, scope: !41)
!63 = !DILocation(line: 39, column: 25, scope: !41)
!64 = !DILocation(line: 39, column: 10, scope: !41)
!65 = !DILocation(line: 39, column: 44, scope: !66)
!66 = !DILexicalBlockFile(scope: !41, file: !25, discriminator: 1)
!67 = !DILocation(line: 39, column: 34, scope: !66)
!68 = !DILocation(line: 39, column: 10, scope: !66)
!69 = !DILocation(line: 39, column: 10, scope: !70)
!70 = !DILexicalBlockFile(scope: !41, file: !25, discriminator: 2)
!71 = !DILocation(line: 39, column: 10, scope: !72)
!72 = !DILexicalBlockFile(scope: !41, file: !25, discriminator: 3)
!73 = !DILocation(line: 39, column: 3, scope: !72)
!74 = !DILocation(line: 42, column: 4, scope: !75)
!75 = distinct !DILexicalBlock(scope: !37, file: !25, line: 40, column: 9)
!76 = !DILocation(line: 42, column: 8, scope: !75)
!77 = !DILocation(line: 44, column: 3, scope: !75)
!78 = !DILocation(line: 46, column: 1, scope: !24)
!79 = distinct !DISubprogram(name: "string_policy", scope: !25, file: !25, line: 48, type: !80, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !30)
!80 = !DISubroutineType(types: !81)
!81 = !{!28, !19}
!82 = !DILocalVariable(name: "str", arg: 1, scope: !79, file: !25, line: 48, type: !19)
!83 = !DILocation(line: 48, column: 31, scope: !79)
!84 = !DILocation(line: 50, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !79, file: !25, line: 50, column: 6)
!86 = !DILocation(line: 50, column: 6, scope: !79)
!87 = !DILocation(line: 51, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !25, line: 51, column: 7)
!89 = distinct !DILexicalBlock(scope: !85, file: !25, line: 50, column: 17)
!90 = !DILocation(line: 51, column: 11, scope: !88)
!91 = !DILocation(line: 51, column: 18, scope: !88)
!92 = !DILocation(line: 51, column: 37, scope: !93)
!93 = !DILexicalBlockFile(scope: !88, file: !25, discriminator: 1)
!94 = !DILocation(line: 51, column: 21, scope: !93)
!95 = !DILocation(line: 51, column: 7, scope: !93)
!96 = !DILocation(line: 53, column: 4, scope: !97)
!97 = distinct !DILexicalBlock(scope: !88, file: !25, line: 51, column: 53)
!98 = !DILocation(line: 55, column: 2, scope: !89)
!99 = !DILocation(line: 56, column: 2, scope: !79)
!100 = !DILocation(line: 57, column: 1, scope: !79)
!101 = distinct !DISubprogram(name: "string_length", scope: !25, file: !25, line: 59, type: !102, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !30)
!102 = !DISubroutineType(types: !103)
!103 = !{!28, !19, !28}
!104 = !DILocalVariable(name: "str", arg: 1, scope: !101, file: !25, line: 59, type: !19)
!105 = !DILocation(line: 59, column: 31, scope: !101)
!106 = !DILocalVariable(name: "policy", arg: 2, scope: !101, file: !25, line: 59, type: !28)
!107 = !DILocation(line: 59, column: 40, scope: !101)
!108 = !DILocation(line: 61, column: 2, scope: !101)
!109 = distinct !{!109, !108}
!110 = !DILocation(line: 61, column: 10, scope: !111)
!111 = !DILexicalBlockFile(scope: !112, file: !25, discriminator: 1)
!112 = distinct !DILexicalBlock(scope: !113, file: !25, line: 61, column: 10)
!113 = distinct !DILexicalBlock(scope: !101, file: !25, line: 61, column: 4)
!114 = !DILocation(line: 61, column: 14, scope: !111)
!115 = !DILocation(line: 61, column: 5, scope: !116)
!116 = !DILexicalBlockFile(scope: !117, file: !25, discriminator: 2)
!117 = distinct !DILexicalBlock(scope: !112, file: !25, line: 61, column: 3)
!118 = !DILocation(line: 61, column: 14, scope: !119)
!119 = !DILexicalBlockFile(scope: !120, file: !25, discriminator: 3)
!120 = distinct !DILexicalBlock(scope: !112, file: !25, line: 61, column: 12)
!121 = !DILocation(line: 61, column: 98, scope: !119)
!122 = !DILocation(line: 61, column: 113, scope: !123)
!123 = !DILexicalBlockFile(scope: !113, file: !25, discriminator: 4)
!124 = !DILocation(line: 63, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !101, file: !25, line: 63, column: 6)
!126 = !DILocation(line: 63, column: 13, scope: !125)
!127 = !DILocation(line: 63, column: 6, scope: !101)
!128 = !DILocation(line: 64, column: 26, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !25, line: 63, column: 20)
!130 = !DILocation(line: 64, column: 12, scope: !129)
!131 = !DILocation(line: 64, column: 10, scope: !129)
!132 = !DILocation(line: 65, column: 2, scope: !129)
!133 = !DILocation(line: 67, column: 6, scope: !134)
!134 = distinct !DILexicalBlock(scope: !101, file: !25, line: 67, column: 6)
!135 = !DILocation(line: 67, column: 13, scope: !134)
!136 = !DILocation(line: 67, column: 6, scope: !101)
!137 = !DILocation(line: 68, column: 24, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !25, line: 67, column: 38)
!139 = !DILocation(line: 68, column: 10, scope: !138)
!140 = !DILocation(line: 68, column: 3, scope: !138)
!141 = !DILocation(line: 72, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !134, file: !25, line: 70, column: 7)
!143 = !DILocation(line: 72, column: 10, scope: !142)
!144 = !DILocation(line: 72, column: 3, scope: !142)
!145 = !DILocation(line: 74, column: 1, scope: !101)
!146 = distinct !DISubprogram(name: "string_width", scope: !25, file: !25, line: 76, type: !102, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !30)
!147 = !DILocalVariable(name: "str", arg: 1, scope: !146, file: !25, line: 76, type: !19)
!148 = !DILocation(line: 76, column: 30, scope: !146)
!149 = !DILocalVariable(name: "policy", arg: 2, scope: !146, file: !25, line: 76, type: !28)
!150 = !DILocation(line: 76, column: 39, scope: !146)
!151 = !DILocalVariable(name: "len", scope: !146, file: !25, line: 78, type: !28)
!152 = !DILocation(line: 78, column: 6, scope: !146)
!153 = !DILocation(line: 80, column: 2, scope: !146)
!154 = distinct !{!154, !153}
!155 = !DILocation(line: 80, column: 10, scope: !156)
!156 = !DILexicalBlockFile(scope: !157, file: !25, discriminator: 1)
!157 = distinct !DILexicalBlock(scope: !158, file: !25, line: 80, column: 10)
!158 = distinct !DILexicalBlock(scope: !146, file: !25, line: 80, column: 4)
!159 = !DILocation(line: 80, column: 14, scope: !156)
!160 = !DILocation(line: 80, column: 5, scope: !161)
!161 = !DILexicalBlockFile(scope: !162, file: !25, discriminator: 2)
!162 = distinct !DILexicalBlock(scope: !157, file: !25, line: 80, column: 3)
!163 = !DILocation(line: 80, column: 14, scope: !164)
!164 = !DILexicalBlockFile(scope: !165, file: !25, discriminator: 3)
!165 = distinct !DILexicalBlock(scope: !157, file: !25, line: 80, column: 12)
!166 = !DILocation(line: 80, column: 98, scope: !164)
!167 = !DILocation(line: 80, column: 113, scope: !168)
!168 = !DILexicalBlockFile(scope: !158, file: !25, discriminator: 4)
!169 = !DILocation(line: 82, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !146, file: !25, line: 82, column: 6)
!171 = !DILocation(line: 82, column: 13, scope: !170)
!172 = !DILocation(line: 82, column: 6, scope: !146)
!173 = !DILocation(line: 83, column: 26, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !25, line: 82, column: 20)
!175 = !DILocation(line: 83, column: 12, scope: !174)
!176 = !DILocation(line: 83, column: 10, scope: !174)
!177 = !DILocation(line: 84, column: 2, scope: !174)
!178 = !DILocation(line: 86, column: 6, scope: !146)
!179 = !DILocation(line: 87, column: 2, scope: !146)
!180 = !DILocation(line: 87, column: 10, scope: !181)
!181 = !DILexicalBlockFile(scope: !146, file: !25, discriminator: 1)
!182 = !DILocation(line: 87, column: 9, scope: !181)
!183 = !DILocation(line: 87, column: 14, scope: !181)
!184 = !DILocation(line: 87, column: 2, scope: !181)
!185 = !DILocation(line: 88, column: 31, scope: !186)
!186 = distinct !DILexicalBlock(scope: !146, file: !25, line: 87, column: 23)
!187 = !DILocation(line: 88, column: 10, scope: !186)
!188 = !DILocation(line: 88, column: 7, scope: !186)
!189 = !DILocation(line: 87, column: 2, scope: !190)
!190 = !DILexicalBlockFile(scope: !146, file: !25, discriminator: 2)
!191 = distinct !{!191, !179}
!192 = !DILocation(line: 90, column: 9, scope: !146)
!193 = !DILocation(line: 90, column: 2, scope: !146)
!194 = !DILocation(line: 91, column: 1, scope: !146)
!195 = distinct !DISubprogram(name: "string_chars_for_width", scope: !25, file: !25, line: 93, type: !196, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !30)
!196 = !DISubroutineType(types: !197)
!197 = !{!28, !19, !28, !46, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!199 = !DILocalVariable(name: "str", arg: 1, scope: !195, file: !25, line: 93, type: !19)
!200 = !DILocation(line: 93, column: 40, scope: !195)
!201 = !DILocalVariable(name: "policy", arg: 2, scope: !195, file: !25, line: 93, type: !28)
!202 = !DILocation(line: 93, column: 49, scope: !195)
!203 = !DILocalVariable(name: "n", arg: 3, scope: !195, file: !25, line: 93, type: !46)
!204 = !DILocation(line: 93, column: 70, scope: !195)
!205 = !DILocalVariable(name: "bytes", arg: 4, scope: !195, file: !25, line: 93, type: !198)
!206 = !DILocation(line: 93, column: 87, scope: !195)
!207 = !DILocalVariable(name: "c", scope: !195, file: !25, line: 95, type: !19)
!208 = !DILocation(line: 95, column: 14, scope: !195)
!209 = !DILocalVariable(name: "previous_c", scope: !195, file: !25, line: 95, type: !19)
!210 = !DILocation(line: 95, column: 18, scope: !195)
!211 = !DILocalVariable(name: "str_width", scope: !195, file: !25, line: 96, type: !28)
!212 = !DILocation(line: 96, column: 6, scope: !195)
!213 = !DILocalVariable(name: "char_width", scope: !195, file: !25, line: 96, type: !28)
!214 = !DILocation(line: 96, column: 17, scope: !195)
!215 = !DILocalVariable(name: "char_count", scope: !195, file: !25, line: 96, type: !28)
!216 = !DILocation(line: 96, column: 29, scope: !195)
!217 = !DILocation(line: 98, column: 2, scope: !195)
!218 = distinct !{!218, !217}
!219 = !DILocation(line: 98, column: 10, scope: !220)
!220 = !DILexicalBlockFile(scope: !221, file: !25, discriminator: 1)
!221 = distinct !DILexicalBlock(scope: !222, file: !25, line: 98, column: 10)
!222 = distinct !DILexicalBlock(scope: !195, file: !25, line: 98, column: 4)
!223 = !DILocation(line: 98, column: 14, scope: !220)
!224 = !DILocation(line: 98, column: 5, scope: !225)
!225 = !DILexicalBlockFile(scope: !226, file: !25, discriminator: 2)
!226 = distinct !DILexicalBlock(scope: !221, file: !25, line: 98, column: 3)
!227 = !DILocation(line: 98, column: 14, scope: !228)
!228 = !DILexicalBlockFile(scope: !229, file: !25, discriminator: 3)
!229 = distinct !DILexicalBlock(scope: !221, file: !25, line: 98, column: 12)
!230 = !DILocation(line: 98, column: 98, scope: !228)
!231 = !DILocation(line: 98, column: 114, scope: !232)
!232 = !DILexicalBlockFile(scope: !222, file: !25, discriminator: 4)
!233 = !DILocation(line: 101, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !195, file: !25, line: 101, column: 6)
!235 = !DILocation(line: 101, column: 8, scope: !234)
!236 = !DILocation(line: 101, column: 6, scope: !195)
!237 = !DILocation(line: 102, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !25, line: 102, column: 7)
!239 = distinct !DILexicalBlock(scope: !234, file: !25, line: 101, column: 14)
!240 = !DILocation(line: 102, column: 13, scope: !238)
!241 = !DILocation(line: 102, column: 7, scope: !239)
!242 = !DILocation(line: 103, column: 5, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !25, line: 102, column: 21)
!244 = !DILocation(line: 103, column: 11, scope: !243)
!245 = !DILocation(line: 104, column: 3, scope: !243)
!246 = !DILocation(line: 105, column: 3, scope: !239)
!247 = !DILocation(line: 108, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !195, file: !25, line: 108, column: 6)
!249 = !DILocation(line: 108, column: 13, scope: !248)
!250 = !DILocation(line: 108, column: 6, scope: !195)
!251 = !DILocation(line: 109, column: 26, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !25, line: 108, column: 20)
!253 = !DILocation(line: 109, column: 12, scope: !252)
!254 = !DILocation(line: 109, column: 10, scope: !252)
!255 = !DILocation(line: 110, column: 2, scope: !252)
!256 = !DILocation(line: 113, column: 13, scope: !195)
!257 = !DILocation(line: 114, column: 12, scope: !195)
!258 = !DILocation(line: 115, column: 6, scope: !195)
!259 = !DILocation(line: 115, column: 4, scope: !195)
!260 = !DILocation(line: 116, column: 2, scope: !195)
!261 = !DILocation(line: 116, column: 10, scope: !262)
!262 = !DILexicalBlockFile(scope: !195, file: !25, discriminator: 1)
!263 = !DILocation(line: 116, column: 9, scope: !262)
!264 = !DILocation(line: 116, column: 12, scope: !262)
!265 = !DILocation(line: 116, column: 2, scope: !262)
!266 = !DILocation(line: 117, column: 16, scope: !267)
!267 = distinct !DILexicalBlock(scope: !195, file: !25, line: 116, column: 21)
!268 = !DILocation(line: 117, column: 14, scope: !267)
!269 = !DILocation(line: 118, column: 35, scope: !267)
!270 = !DILocation(line: 118, column: 16, scope: !267)
!271 = !DILocation(line: 118, column: 14, scope: !267)
!272 = !DILocation(line: 119, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !267, file: !25, line: 119, column: 7)
!274 = !DILocation(line: 119, column: 19, scope: !273)
!275 = !DILocation(line: 119, column: 17, scope: !273)
!276 = !DILocation(line: 119, column: 32, scope: !273)
!277 = !DILocation(line: 119, column: 30, scope: !273)
!278 = !DILocation(line: 119, column: 7, scope: !267)
!279 = !DILocation(line: 121, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !273, file: !25, line: 119, column: 35)
!281 = !DILocation(line: 121, column: 6, scope: !280)
!282 = !DILocation(line: 122, column: 4, scope: !280)
!283 = !DILocation(line: 124, column: 3, scope: !267)
!284 = !DILocation(line: 125, column: 16, scope: !267)
!285 = !DILocation(line: 125, column: 13, scope: !267)
!286 = !DILocation(line: 116, column: 2, scope: !287)
!287 = !DILexicalBlockFile(scope: !195, file: !25, discriminator: 2)
!288 = distinct !{!288, !260}
!289 = !DILocation(line: 131, column: 6, scope: !290)
!290 = distinct !DILexicalBlock(scope: !195, file: !25, line: 131, column: 6)
!291 = !DILocation(line: 131, column: 12, scope: !290)
!292 = !DILocation(line: 131, column: 6, scope: !195)
!293 = !DILocation(line: 132, column: 12, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !25, line: 131, column: 20)
!295 = !DILocation(line: 132, column: 16, scope: !294)
!296 = !DILocation(line: 132, column: 14, scope: !294)
!297 = !DILocation(line: 132, column: 4, scope: !294)
!298 = !DILocation(line: 132, column: 10, scope: !294)
!299 = !DILocation(line: 133, column: 2, scope: !294)
!300 = !DILocation(line: 134, column: 9, scope: !195)
!301 = !DILocation(line: 134, column: 2, scope: !195)
!302 = !DILocation(line: 135, column: 1, scope: !195)
