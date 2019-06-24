; ModuleID = './codeset.o.i'
source_filename = "./codeset.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DynBuf = type { i8*, i64, i64 }

@dontUseIcu = internal global i8 1, align 1
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"codeset.c\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i8* @CodeSet_GetCurrentCodeSet() #0 !dbg !12 {
  %1 = call i8* @CodeSetOld_GetCurrentCodeSet(), !dbg !17
  ret i8* %1, !dbg !18
}

declare i8* @CodeSetOld_GetCurrentCodeSet() #1

; Function Attrs: nounwind uwtable
define i8* @CodeSet_GetAltPathName(i16*) #0 !dbg !19 {
  %2 = alloca i16*, align 8
  %3 = alloca i8*, align 8
  store i16* %0, i16** %2, align 8
  call void @llvm.dbg.declare(metadata i16** %2, metadata !30, metadata !31), !dbg !32
  call void @llvm.dbg.declare(metadata i8** %3, metadata !33, metadata !31), !dbg !34
  store i8* null, i8** %3, align 8, !dbg !34
  %4 = load i8*, i8** %3, align 8, !dbg !35
  ret i8* %4, !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define void @CodeSet_DontUseIcu() #0 !dbg !37 {
  store i8 1, i8* @dontUseIcu, align 1, !dbg !40
  ret void, !dbg !41
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_Init(i8*) #0 !dbg !42 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !45, metadata !31), !dbg !46
  ret i8 1, !dbg !47
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_GenericToGenericDb(i8*, i8*, i64, i8*, i32, %struct.DynBuf*) #0 !dbg !48 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.DynBuf*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !63, metadata !31), !dbg !64
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !65, metadata !31), !dbg !66
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !67, metadata !31), !dbg !68
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !69, metadata !31), !dbg !70
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !71, metadata !31), !dbg !72
  store %struct.DynBuf* %5, %struct.DynBuf** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %12, metadata !73, metadata !31), !dbg !74
  %13 = load i8*, i8** %7, align 8, !dbg !75
  %14 = load i8*, i8** %8, align 8, !dbg !76
  %15 = load i64, i64* %9, align 8, !dbg !77
  %16 = load i8*, i8** %10, align 8, !dbg !78
  %17 = load i32, i32* %11, align 4, !dbg !79
  %18 = load %struct.DynBuf*, %struct.DynBuf** %12, align 8, !dbg !80
  %19 = call signext i8 @CodeSetOld_GenericToGenericDb(i8* %13, i8* %14, i64 %15, i8* %16, i32 %17, %struct.DynBuf* %18), !dbg !81
  ret i8 %19, !dbg !82
}

declare signext i8 @CodeSetOld_GenericToGenericDb(i8*, i8*, i64, i8*, i32, %struct.DynBuf*) #1

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_GenericToGeneric(i8*, i8*, i64, i8*, i32, i8**, i64*) #0 !dbg !83 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.DynBuf, align 8
  %16 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !88, metadata !31), !dbg !89
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !90, metadata !31), !dbg !91
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !92, metadata !31), !dbg !93
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !94, metadata !31), !dbg !95
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !96, metadata !31), !dbg !97
  store i8** %5, i8*** %13, align 8
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !98, metadata !31), !dbg !99
  store i64* %6, i64** %14, align 8
  call void @llvm.dbg.declare(metadata i64** %14, metadata !100, metadata !31), !dbg !101
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %15, metadata !102, metadata !31), !dbg !103
  call void @llvm.dbg.declare(metadata i8* %16, metadata !104, metadata !31), !dbg !105
  call void @DynBuf_Init(%struct.DynBuf* %15), !dbg !106
  %17 = load i8*, i8** %8, align 8, !dbg !107
  %18 = load i8*, i8** %9, align 8, !dbg !108
  %19 = load i64, i64* %10, align 8, !dbg !109
  %20 = load i8*, i8** %11, align 8, !dbg !110
  %21 = load i32, i32* %12, align 4, !dbg !111
  %22 = call signext i8 @CodeSet_GenericToGenericDb(i8* %17, i8* %18, i64 %19, i8* %20, i32 %21, %struct.DynBuf* %15), !dbg !112
  store i8 %22, i8* %16, align 1, !dbg !113
  %23 = load i8, i8* %16, align 1, !dbg !114
  %24 = load i8**, i8*** %13, align 8, !dbg !115
  %25 = load i64*, i64** %14, align 8, !dbg !116
  %26 = call signext i8 @CodeSetDynBufFinalize(i8 signext %23, %struct.DynBuf* %15, i8** %24, i64* %25), !dbg !117
  ret i8 %26, !dbg !118
}

declare void @DynBuf_Init(%struct.DynBuf*) #1

; Function Attrs: nounwind uwtable
define internal signext i8 @CodeSetDynBufFinalize(i8 signext, %struct.DynBuf*, i8**, i64*) #0 !dbg !119 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.DynBuf*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  store i8 %0, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !122, metadata !31), !dbg !123
  store %struct.DynBuf* %1, %struct.DynBuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %7, metadata !124, metadata !31), !dbg !125
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !126, metadata !31), !dbg !127
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !128, metadata !31), !dbg !129
  %10 = load i8, i8* %6, align 1, !dbg !130
  %11 = icmp ne i8 %10, 0, !dbg !130
  br i1 %11, label %12, label %20, !dbg !132

; <label>:12:                                     ; preds = %4
  %13 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !133
  %14 = call signext i8 @DynBuf_Append(%struct.DynBuf* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 4), !dbg !135
  %15 = icmp ne i8 %14, 0, !dbg !135
  br i1 %15, label %16, label %20, !dbg !136

; <label>:16:                                     ; preds = %12
  %17 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !137
  %18 = call signext i8 @DynBuf_Trim(%struct.DynBuf* %17), !dbg !139
  %19 = icmp ne i8 %18, 0, !dbg !139
  br i1 %19, label %22, label %20, !dbg !140

; <label>:20:                                     ; preds = %16, %12, %4
  %21 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !141
  call void @DynBuf_Destroy(%struct.DynBuf* %21), !dbg !143
  store i8 0, i8* %5, align 1, !dbg !144
  br label %34, !dbg !144

; <label>:22:                                     ; preds = %16
  %23 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !145
  %24 = call i8* @DynBuf_Get(%struct.DynBuf* %23), !dbg !146
  %25 = load i8**, i8*** %8, align 8, !dbg !147
  store i8* %24, i8** %25, align 8, !dbg !148
  %26 = load i64*, i64** %9, align 8, !dbg !149
  %27 = icmp ne i64* %26, null, !dbg !149
  br i1 %27, label %28, label %33, !dbg !151

; <label>:28:                                     ; preds = %22
  %29 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !152
  %30 = call i64 @DynBuf_GetSize(%struct.DynBuf* %29), !dbg !154
  %31 = sub i64 %30, 4, !dbg !155
  %32 = load i64*, i64** %9, align 8, !dbg !156
  store i64 %31, i64* %32, align 8, !dbg !157
  br label %33, !dbg !158

; <label>:33:                                     ; preds = %28, %22
  store i8 1, i8* %5, align 1, !dbg !159
  br label %34, !dbg !159

; <label>:34:                                     ; preds = %33, %20
  %35 = load i8, i8* %5, align 1, !dbg !160
  ret i8 %35, !dbg !160
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_Utf8ToCurrent(i8*, i64, i8**, i64*) #0 !dbg !161 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.DynBuf, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !164, metadata !31), !dbg !165
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !166, metadata !31), !dbg !167
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !168, metadata !31), !dbg !169
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !170, metadata !31), !dbg !171
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %10, metadata !172, metadata !31), !dbg !173
  call void @llvm.dbg.declare(metadata i8* %11, metadata !174, metadata !31), !dbg !175
  %12 = load i8, i8* @dontUseIcu, align 1, !dbg !176
  %13 = icmp ne i8 %12, 0, !dbg !176
  br i1 %13, label %14, label %20, !dbg !178

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !179
  %16 = load i64, i64* %7, align 8, !dbg !181
  %17 = load i8**, i8*** %8, align 8, !dbg !182
  %18 = load i64*, i64** %9, align 8, !dbg !183
  %19 = call signext i8 @CodeSetOld_Utf8ToCurrent(i8* %15, i64 %16, i8** %17, i64* %18), !dbg !184
  store i8 %19, i8* %5, align 1, !dbg !185
  br label %29, !dbg !185

; <label>:20:                                     ; preds = %4
  call void @DynBuf_Init(%struct.DynBuf* %10), !dbg !186
  %21 = load i8*, i8** %6, align 8, !dbg !187
  %22 = load i64, i64* %7, align 8, !dbg !188
  %23 = call i8* @CodeSet_GetCurrentCodeSet(), !dbg !189
  %24 = call signext i8 @CodeSet_GenericToGenericDb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* %21, i64 %22, i8* %23, i32 0, %struct.DynBuf* %10), !dbg !190
  store i8 %24, i8* %11, align 1, !dbg !191
  %25 = load i8, i8* %11, align 1, !dbg !192
  %26 = load i8**, i8*** %8, align 8, !dbg !193
  %27 = load i64*, i64** %9, align 8, !dbg !194
  %28 = call signext i8 @CodeSetDynBufFinalize(i8 signext %25, %struct.DynBuf* %10, i8** %26, i64* %27), !dbg !195
  store i8 %28, i8* %5, align 1, !dbg !196
  br label %29, !dbg !196

; <label>:29:                                     ; preds = %20, %14
  %30 = load i8, i8* %5, align 1, !dbg !197
  ret i8 %30, !dbg !197
}

declare signext i8 @CodeSetOld_Utf8ToCurrent(i8*, i64, i8**, i64*) #1

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_CurrentToUtf8(i8*, i64, i8**, i64*) #0 !dbg !198 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.DynBuf, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !199, metadata !31), !dbg !200
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !201, metadata !31), !dbg !202
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !203, metadata !31), !dbg !204
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !205, metadata !31), !dbg !206
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %10, metadata !207, metadata !31), !dbg !208
  call void @llvm.dbg.declare(metadata i8* %11, metadata !209, metadata !31), !dbg !210
  %12 = load i8, i8* @dontUseIcu, align 1, !dbg !211
  %13 = icmp ne i8 %12, 0, !dbg !211
  br i1 %13, label %14, label %20, !dbg !213

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !214
  %16 = load i64, i64* %7, align 8, !dbg !216
  %17 = load i8**, i8*** %8, align 8, !dbg !217
  %18 = load i64*, i64** %9, align 8, !dbg !218
  %19 = call signext i8 @CodeSetOld_CurrentToUtf8(i8* %15, i64 %16, i8** %17, i64* %18), !dbg !219
  store i8 %19, i8* %5, align 1, !dbg !220
  br label %29, !dbg !220

; <label>:20:                                     ; preds = %4
  call void @DynBuf_Init(%struct.DynBuf* %10), !dbg !221
  %21 = call i8* @CodeSet_GetCurrentCodeSet(), !dbg !222
  %22 = load i8*, i8** %6, align 8, !dbg !223
  %23 = load i64, i64* %7, align 8, !dbg !224
  %24 = call signext i8 @CodeSet_GenericToGenericDb(i8* %21, i8* %22, i64 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0, %struct.DynBuf* %10), !dbg !225
  store i8 %24, i8* %11, align 1, !dbg !227
  %25 = load i8, i8* %11, align 1, !dbg !228
  %26 = load i8**, i8*** %8, align 8, !dbg !229
  %27 = load i64*, i64** %9, align 8, !dbg !230
  %28 = call signext i8 @CodeSetDynBufFinalize(i8 signext %25, %struct.DynBuf* %10, i8** %26, i64* %27), !dbg !231
  store i8 %28, i8* %5, align 1, !dbg !232
  br label %29, !dbg !232

; <label>:29:                                     ; preds = %20, %14
  %30 = load i8, i8* %5, align 1, !dbg !233
  ret i8 %30, !dbg !233
}

declare signext i8 @CodeSetOld_CurrentToUtf8(i8*, i64, i8**, i64*) #1

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_Utf16leToUtf8Db(i8*, i64, %struct.DynBuf*) #0 !dbg !234 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.DynBuf*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !237, metadata !31), !dbg !238
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !239, metadata !31), !dbg !240
  store %struct.DynBuf* %2, %struct.DynBuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %7, metadata !241, metadata !31), !dbg !242
  %8 = load i8, i8* @dontUseIcu, align 1, !dbg !243
  %9 = icmp ne i8 %8, 0, !dbg !243
  br i1 %9, label %10, label %15, !dbg !245

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !246
  %12 = load i64, i64* %6, align 8, !dbg !248
  %13 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !249
  %14 = call signext i8 @CodeSetOld_Utf16leToUtf8Db(i8* %11, i64 %12, %struct.DynBuf* %13), !dbg !250
  store i8 %14, i8* %4, align 1, !dbg !251
  br label %20, !dbg !251

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !252
  %17 = load i64, i64* %6, align 8, !dbg !253
  %18 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !254
  %19 = call signext i8 @CodeSet_GenericToGenericDb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %16, i64 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0, %struct.DynBuf* %18), !dbg !255
  store i8 %19, i8* %4, align 1, !dbg !256
  br label %20, !dbg !256

; <label>:20:                                     ; preds = %15, %10
  %21 = load i8, i8* %4, align 1, !dbg !257
  ret i8 %21, !dbg !257
}

declare signext i8 @CodeSetOld_Utf16leToUtf8Db(i8*, i64, %struct.DynBuf*) #1

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_Utf16leToUtf8(i8*, i64, i8**, i64*) #0 !dbg !258 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.DynBuf, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !259, metadata !31), !dbg !260
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !261, metadata !31), !dbg !262
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !263, metadata !31), !dbg !264
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !265, metadata !31), !dbg !266
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %10, metadata !267, metadata !31), !dbg !268
  call void @llvm.dbg.declare(metadata i8* %11, metadata !269, metadata !31), !dbg !270
  %12 = load i8, i8* @dontUseIcu, align 1, !dbg !271
  %13 = icmp ne i8 %12, 0, !dbg !271
  br i1 %13, label %14, label %20, !dbg !273

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !274
  %16 = load i64, i64* %7, align 8, !dbg !276
  %17 = load i8**, i8*** %8, align 8, !dbg !277
  %18 = load i64*, i64** %9, align 8, !dbg !278
  %19 = call signext i8 @CodeSetOld_Utf16leToUtf8(i8* %15, i64 %16, i8** %17, i64* %18), !dbg !279
  store i8 %19, i8* %5, align 1, !dbg !280
  br label %28, !dbg !280

; <label>:20:                                     ; preds = %4
  call void @DynBuf_Init(%struct.DynBuf* %10), !dbg !281
  %21 = load i8*, i8** %6, align 8, !dbg !282
  %22 = load i64, i64* %7, align 8, !dbg !283
  %23 = call signext i8 @CodeSet_Utf16leToUtf8Db(i8* %21, i64 %22, %struct.DynBuf* %10), !dbg !284
  store i8 %23, i8* %11, align 1, !dbg !285
  %24 = load i8, i8* %11, align 1, !dbg !286
  %25 = load i8**, i8*** %8, align 8, !dbg !287
  %26 = load i64*, i64** %9, align 8, !dbg !288
  %27 = call signext i8 @CodeSetDynBufFinalize(i8 signext %24, %struct.DynBuf* %10, i8** %25, i64* %26), !dbg !289
  store i8 %27, i8* %5, align 1, !dbg !290
  br label %28, !dbg !290

; <label>:28:                                     ; preds = %20, %14
  %29 = load i8, i8* %5, align 1, !dbg !291
  ret i8 %29, !dbg !291
}

declare signext i8 @CodeSetOld_Utf16leToUtf8(i8*, i64, i8**, i64*) #1

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_Utf8ToUtf16le(i8*, i64, i8**, i64*) #0 !dbg !292 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.DynBuf, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !293, metadata !31), !dbg !294
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !295, metadata !31), !dbg !296
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !297, metadata !31), !dbg !298
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !299, metadata !31), !dbg !300
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %10, metadata !301, metadata !31), !dbg !302
  call void @llvm.dbg.declare(metadata i8* %11, metadata !303, metadata !31), !dbg !304
  %12 = load i8, i8* @dontUseIcu, align 1, !dbg !305
  %13 = icmp ne i8 %12, 0, !dbg !305
  br i1 %13, label %14, label %20, !dbg !307

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !308
  %16 = load i64, i64* %7, align 8, !dbg !310
  %17 = load i8**, i8*** %8, align 8, !dbg !311
  %18 = load i64*, i64** %9, align 8, !dbg !312
  %19 = call signext i8 @CodeSetOld_Utf8ToUtf16le(i8* %15, i64 %16, i8** %17, i64* %18), !dbg !313
  store i8 %19, i8* %5, align 1, !dbg !314
  br label %28, !dbg !314

; <label>:20:                                     ; preds = %4
  call void @DynBuf_Init(%struct.DynBuf* %10), !dbg !315
  %21 = load i8*, i8** %6, align 8, !dbg !316
  %22 = load i64, i64* %7, align 8, !dbg !317
  %23 = call signext i8 @CodeSetUtf8ToUtf16le(i8* %21, i64 %22, %struct.DynBuf* %10), !dbg !318
  store i8 %23, i8* %11, align 1, !dbg !319
  %24 = load i8, i8* %11, align 1, !dbg !320
  %25 = load i8**, i8*** %8, align 8, !dbg !321
  %26 = load i64*, i64** %9, align 8, !dbg !322
  %27 = call signext i8 @CodeSetDynBufFinalize(i8 signext %24, %struct.DynBuf* %10, i8** %25, i64* %26), !dbg !323
  store i8 %27, i8* %5, align 1, !dbg !324
  br label %28, !dbg !324

; <label>:28:                                     ; preds = %20, %14
  %29 = load i8, i8* %5, align 1, !dbg !325
  ret i8 %29, !dbg !325
}

declare signext i8 @CodeSetOld_Utf8ToUtf16le(i8*, i64, i8**, i64*) #1

; Function Attrs: nounwind uwtable
define internal signext i8 @CodeSetUtf8ToUtf16le(i8*, i64, %struct.DynBuf*) #0 !dbg !326 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.DynBuf*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !327, metadata !31), !dbg !328
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !329, metadata !31), !dbg !330
  store %struct.DynBuf* %2, %struct.DynBuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %6, metadata !331, metadata !31), !dbg !332
  %7 = load i8*, i8** %4, align 8, !dbg !333
  %8 = load i64, i64* %5, align 8, !dbg !334
  %9 = load %struct.DynBuf*, %struct.DynBuf** %6, align 8, !dbg !335
  %10 = call signext i8 @CodeSet_GenericToGenericDb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* %7, i64 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.DynBuf* %9), !dbg !336
  ret i8 %10, !dbg !337
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_Utf8FormDToUtf8FormC(i8*, i64, i8**, i64*) #0 !dbg !338 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !339, metadata !31), !dbg !340
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !341, metadata !31), !dbg !342
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !343, metadata !31), !dbg !344
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !345, metadata !31), !dbg !346
  %9 = load i8, i8* @dontUseIcu, align 1, !dbg !347
  %10 = icmp ne i8 %9, 0, !dbg !347
  br i1 %10, label %11, label %17, !dbg !349

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %5, align 8, !dbg !350
  %13 = load i64, i64* %6, align 8, !dbg !352
  %14 = load i8**, i8*** %7, align 8, !dbg !353
  %15 = load i64*, i64** %8, align 8, !dbg !354
  %16 = call signext i8 @CodeSetOld_Utf8FormDToUtf8FormC(i8* %12, i64 %13, i8** %14, i64* %15), !dbg !355
  ret i8 %16, !dbg !356

; <label>:17:                                     ; preds = %4
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 1439) #5, !dbg !357
  unreachable, !dbg !357
}

declare signext i8 @CodeSetOld_Utf8FormDToUtf8FormC(i8*, i64, i8**, i64*) #1

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #3

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_Utf8FormCToUtf8FormD(i8*, i64, i8**, i64*) #0 !dbg !358 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !359, metadata !31), !dbg !360
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !361, metadata !31), !dbg !362
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !363, metadata !31), !dbg !364
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !365, metadata !31), !dbg !366
  %9 = load i8, i8* @dontUseIcu, align 1, !dbg !367
  %10 = icmp ne i8 %9, 0, !dbg !367
  br i1 %10, label %11, label %17, !dbg !369

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %5, align 8, !dbg !370
  %13 = load i64, i64* %6, align 8, !dbg !372
  %14 = load i8**, i8*** %7, align 8, !dbg !373
  %15 = load i64*, i64** %8, align 8, !dbg !374
  %16 = call signext i8 @CodeSetOld_Utf8FormCToUtf8FormD(i8* %12, i64 %13, i8** %14, i64* %15), !dbg !375
  ret i8 %16, !dbg !376

; <label>:17:                                     ; preds = %4
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 1488) #5, !dbg !377
  unreachable, !dbg !377
}

declare signext i8 @CodeSetOld_Utf8FormCToUtf8FormD(i8*, i64, i8**, i64*) #1

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_CurrentToUtf16le(i8*, i64, i8**, i64*) #0 !dbg !378 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.DynBuf, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !379, metadata !31), !dbg !380
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !381, metadata !31), !dbg !382
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !383, metadata !31), !dbg !384
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !385, metadata !31), !dbg !386
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %10, metadata !387, metadata !31), !dbg !388
  call void @llvm.dbg.declare(metadata i8* %11, metadata !389, metadata !31), !dbg !390
  %12 = load i8, i8* @dontUseIcu, align 1, !dbg !391
  %13 = icmp ne i8 %12, 0, !dbg !391
  br i1 %13, label %14, label %20, !dbg !393

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !394
  %16 = load i64, i64* %7, align 8, !dbg !396
  %17 = load i8**, i8*** %8, align 8, !dbg !397
  %18 = load i64*, i64** %9, align 8, !dbg !398
  %19 = call signext i8 @CodeSetOld_CurrentToUtf16le(i8* %15, i64 %16, i8** %17, i64* %18), !dbg !399
  store i8 %19, i8* %5, align 1, !dbg !400
  br label %29, !dbg !400

; <label>:20:                                     ; preds = %4
  call void @DynBuf_Init(%struct.DynBuf* %10), !dbg !401
  %21 = call i8* @CodeSet_GetCurrentCodeSet(), !dbg !402
  %22 = load i8*, i8** %6, align 8, !dbg !403
  %23 = load i64, i64* %7, align 8, !dbg !404
  %24 = call signext i8 @CodeSet_GenericToGenericDb(i8* %21, i8* %22, i64 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.DynBuf* %10), !dbg !405
  store i8 %24, i8* %11, align 1, !dbg !407
  %25 = load i8, i8* %11, align 1, !dbg !408
  %26 = load i8**, i8*** %8, align 8, !dbg !409
  %27 = load i64*, i64** %9, align 8, !dbg !410
  %28 = call signext i8 @CodeSetDynBufFinalize(i8 signext %25, %struct.DynBuf* %10, i8** %26, i64* %27), !dbg !411
  store i8 %28, i8* %5, align 1, !dbg !412
  br label %29, !dbg !412

; <label>:29:                                     ; preds = %20, %14
  %30 = load i8, i8* %5, align 1, !dbg !413
  ret i8 %30, !dbg !413
}

declare signext i8 @CodeSetOld_CurrentToUtf16le(i8*, i64, i8**, i64*) #1

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_Utf16leToCurrent(i8*, i64, i8**, i64*) #0 !dbg !414 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.DynBuf, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !415, metadata !31), !dbg !416
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !417, metadata !31), !dbg !418
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !419, metadata !31), !dbg !420
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !421, metadata !31), !dbg !422
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %10, metadata !423, metadata !31), !dbg !424
  call void @llvm.dbg.declare(metadata i8* %11, metadata !425, metadata !31), !dbg !426
  %12 = load i8, i8* @dontUseIcu, align 1, !dbg !427
  %13 = icmp ne i8 %12, 0, !dbg !427
  br i1 %13, label %14, label %20, !dbg !429

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !430
  %16 = load i64, i64* %7, align 8, !dbg !432
  %17 = load i8**, i8*** %8, align 8, !dbg !433
  %18 = load i64*, i64** %9, align 8, !dbg !434
  %19 = call signext i8 @CodeSetOld_Utf16leToCurrent(i8* %15, i64 %16, i8** %17, i64* %18), !dbg !435
  store i8 %19, i8* %5, align 1, !dbg !436
  br label %29, !dbg !436

; <label>:20:                                     ; preds = %4
  call void @DynBuf_Init(%struct.DynBuf* %10), !dbg !437
  %21 = load i8*, i8** %6, align 8, !dbg !438
  %22 = load i64, i64* %7, align 8, !dbg !439
  %23 = call i8* @CodeSet_GetCurrentCodeSet(), !dbg !440
  %24 = call signext i8 @CodeSet_GenericToGenericDb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %21, i64 %22, i8* %23, i32 0, %struct.DynBuf* %10), !dbg !441
  store i8 %24, i8* %11, align 1, !dbg !442
  %25 = load i8, i8* %11, align 1, !dbg !443
  %26 = load i8**, i8*** %8, align 8, !dbg !444
  %27 = load i64*, i64** %9, align 8, !dbg !445
  %28 = call signext i8 @CodeSetDynBufFinalize(i8 signext %25, %struct.DynBuf* %10, i8** %26, i64* %27), !dbg !446
  store i8 %28, i8* %5, align 1, !dbg !447
  br label %29, !dbg !447

; <label>:29:                                     ; preds = %20, %14
  %30 = load i8, i8* %5, align 1, !dbg !448
  ret i8 %30, !dbg !448
}

declare signext i8 @CodeSetOld_Utf16leToCurrent(i8*, i64, i8**, i64*) #1

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_Utf16beToCurrent(i8*, i64, i8**, i64*) #0 !dbg !449 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.DynBuf, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !450, metadata !31), !dbg !451
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !452, metadata !31), !dbg !453
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !454, metadata !31), !dbg !455
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !456, metadata !31), !dbg !457
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %10, metadata !458, metadata !31), !dbg !459
  call void @llvm.dbg.declare(metadata i8* %11, metadata !460, metadata !31), !dbg !461
  %12 = load i8, i8* @dontUseIcu, align 1, !dbg !462
  %13 = icmp ne i8 %12, 0, !dbg !462
  br i1 %13, label %14, label %20, !dbg !464

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !465
  %16 = load i64, i64* %7, align 8, !dbg !467
  %17 = load i8**, i8*** %8, align 8, !dbg !468
  %18 = load i64*, i64** %9, align 8, !dbg !469
  %19 = call signext i8 @CodeSetOld_Utf16beToCurrent(i8* %15, i64 %16, i8** %17, i64* %18), !dbg !470
  store i8 %19, i8* %5, align 1, !dbg !471
  br label %29, !dbg !471

; <label>:20:                                     ; preds = %4
  call void @DynBuf_Init(%struct.DynBuf* %10), !dbg !472
  %21 = load i8*, i8** %6, align 8, !dbg !473
  %22 = load i64, i64* %7, align 8, !dbg !474
  %23 = call i8* @CodeSet_GetCurrentCodeSet(), !dbg !475
  %24 = call signext i8 @CodeSet_GenericToGenericDb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %21, i64 %22, i8* %23, i32 0, %struct.DynBuf* %10), !dbg !476
  store i8 %24, i8* %11, align 1, !dbg !477
  %25 = load i8, i8* %11, align 1, !dbg !478
  %26 = load i8**, i8*** %8, align 8, !dbg !479
  %27 = load i64*, i64** %9, align 8, !dbg !480
  %28 = call signext i8 @CodeSetDynBufFinalize(i8 signext %25, %struct.DynBuf* %10, i8** %26, i64* %27), !dbg !481
  store i8 %28, i8* %5, align 1, !dbg !482
  br label %29, !dbg !482

; <label>:29:                                     ; preds = %20, %14
  %30 = load i8, i8* %5, align 1, !dbg !483
  ret i8 %30, !dbg !483
}

declare signext i8 @CodeSetOld_Utf16beToCurrent(i8*, i64, i8**, i64*) #1

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_IsEncodingSupported(i8*) #0 !dbg !484 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !485, metadata !31), !dbg !486
  %3 = load i8*, i8** %2, align 8, !dbg !487
  %4 = call signext i8 @CodeSetOld_IsEncodingSupported(i8* %3), !dbg !488
  ret i8 %4, !dbg !489
}

declare signext i8 @CodeSetOld_IsEncodingSupported(i8*) #1

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_Validate(i8*, i64, i8*) #0 !dbg !490 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !493, metadata !31), !dbg !494
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !495, metadata !31), !dbg !496
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !497, metadata !31), !dbg !498
  %7 = load i8*, i8** %4, align 8, !dbg !499
  %8 = load i64, i64* %5, align 8, !dbg !500
  %9 = load i8*, i8** %6, align 8, !dbg !501
  %10 = call signext i8 @CodeSetOld_Validate(i8* %7, i64 %8, i8* %9), !dbg !502
  ret i8 %10, !dbg !503
}

declare signext i8 @CodeSetOld_Validate(i8*, i64, i8*) #1

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #1

declare signext i8 @DynBuf_Trim(%struct.DynBuf*) #1

declare void @DynBuf_Destroy(%struct.DynBuf*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #4 !dbg !504 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !510, metadata !31), !dbg !511
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !512
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !513
  %5 = load i8*, i8** %4, align 8, !dbg !513
  ret i8* %5, !dbg !514
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetSize(%struct.DynBuf*) #4 !dbg !515 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !518, metadata !31), !dbg !519
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !520
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !521
  %5 = load i64, i64* %4, align 8, !dbg !521
  ret i64 %5, !dbg !522
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "codeset.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line549")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "dontUseIcu", scope: !0, file: !5, line: 135, type: !6, isLocal: true, isDefinition: true, variable: i8* @dontUseIcu)
!5 = !DIFile(filename: "codeset.c", directory: "/home/lichi/Desktop/open-vm-tools/line549")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !7, line: 230, baseType: !8)
!7 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line549")
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!12 = distinct !DISubprogram(name: "CodeSet_GetCurrentCodeSet", scope: !5, file: !5, line: 156, type: !13, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!17 = !DILocation(line: 158, column: 11, scope: !12)
!18 = !DILocation(line: 158, column: 4, scope: !12)
!19 = distinct !DISubprogram(name: "CodeSet_GetAltPathName", scope: !5, file: !5, line: 331, type: !20, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "utf16_t", file: !7, line: 1139, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !7, line: 175, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !28, line: 49, baseType: !29)
!28 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line549")
!29 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!30 = !DILocalVariable(name: "pathW", arg: 1, scope: !19, file: !5, line: 331, type: !23)
!31 = !DIExpression()
!32 = !DILocation(line: 331, column: 39, scope: !19)
!33 = !DILocalVariable(name: "path", scope: !19, file: !5, line: 333, type: !22)
!34 = !DILocation(line: 333, column: 10, scope: !19)
!35 = !DILocation(line: 355, column: 11, scope: !19)
!36 = !DILocation(line: 355, column: 4, scope: !19)
!37 = distinct !DISubprogram(name: "CodeSet_DontUseIcu", scope: !5, file: !5, line: 381, type: !38, isLocal: false, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{null}
!40 = !DILocation(line: 383, column: 15, scope: !37)
!41 = !DILocation(line: 384, column: 1, scope: !37)
!42 = distinct !DISubprogram(name: "CodeSet_Init", scope: !5, file: !5, line: 417, type: !43, isLocal: false, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!43 = !DISubroutineType(types: !44)
!44 = !{!6, !15}
!45 = !DILocalVariable(name: "icuDataDir", arg: 1, scope: !42, file: !5, line: 417, type: !15)
!46 = !DILocation(line: 417, column: 26, scope: !42)
!47 = !DILocation(line: 422, column: 4, scope: !42)
!48 = distinct !DISubprogram(name: "CodeSet_GenericToGenericDb", scope: !5, file: !5, line: 899, type: !49, isLocal: false, isDefinition: true, scopeLine: 905, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!49 = !DISubroutineType(types: !50)
!50 = !{!6, !15, !15, !51, !15, !54, !55}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 216, baseType: !53)
!52 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line549")
!53 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!54 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !57, line: 40, baseType: !58)
!57 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line549")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !57, line: 36, size: 192, align: 64, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !58, file: !57, line: 37, baseType: !22, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !58, file: !57, line: 38, baseType: !51, size: 64, align: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !58, file: !57, line: 39, baseType: !51, size: 64, align: 64, offset: 128)
!63 = !DILocalVariable(name: "codeIn", arg: 1, scope: !48, file: !5, line: 899, type: !15)
!64 = !DILocation(line: 899, column: 40, scope: !48)
!65 = !DILocalVariable(name: "bufIn", arg: 2, scope: !48, file: !5, line: 900, type: !15)
!66 = !DILocation(line: 900, column: 40, scope: !48)
!67 = !DILocalVariable(name: "sizeIn", arg: 3, scope: !48, file: !5, line: 901, type: !51)
!68 = !DILocation(line: 901, column: 35, scope: !48)
!69 = !DILocalVariable(name: "codeOut", arg: 4, scope: !48, file: !5, line: 902, type: !15)
!70 = !DILocation(line: 902, column: 40, scope: !48)
!71 = !DILocalVariable(name: "flags", arg: 5, scope: !48, file: !5, line: 903, type: !54)
!72 = !DILocation(line: 903, column: 41, scope: !48)
!73 = !DILocalVariable(name: "db", arg: 6, scope: !48, file: !5, line: 904, type: !55)
!74 = !DILocation(line: 904, column: 36, scope: !48)
!75 = !DILocation(line: 907, column: 41, scope: !48)
!76 = !DILocation(line: 907, column: 49, scope: !48)
!77 = !DILocation(line: 907, column: 56, scope: !48)
!78 = !DILocation(line: 907, column: 64, scope: !48)
!79 = !DILocation(line: 908, column: 41, scope: !48)
!80 = !DILocation(line: 908, column: 48, scope: !48)
!81 = !DILocation(line: 907, column: 11, scope: !48)
!82 = !DILocation(line: 907, column: 4, scope: !48)
!83 = distinct !DISubprogram(name: "CodeSet_GenericToGeneric", scope: !5, file: !5, line: 1114, type: !84, isLocal: false, isDefinition: true, scopeLine: 1121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!84 = !DISubroutineType(types: !85)
!85 = !{!6, !15, !15, !51, !15, !54, !86, !87}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!88 = !DILocalVariable(name: "codeIn", arg: 1, scope: !83, file: !5, line: 1114, type: !15)
!89 = !DILocation(line: 1114, column: 38, scope: !83)
!90 = !DILocalVariable(name: "bufIn", arg: 2, scope: !83, file: !5, line: 1115, type: !15)
!91 = !DILocation(line: 1115, column: 38, scope: !83)
!92 = !DILocalVariable(name: "sizeIn", arg: 3, scope: !83, file: !5, line: 1116, type: !51)
!93 = !DILocation(line: 1116, column: 33, scope: !83)
!94 = !DILocalVariable(name: "codeOut", arg: 4, scope: !83, file: !5, line: 1117, type: !15)
!95 = !DILocation(line: 1117, column: 38, scope: !83)
!96 = !DILocalVariable(name: "flags", arg: 5, scope: !83, file: !5, line: 1118, type: !54)
!97 = !DILocation(line: 1118, column: 39, scope: !83)
!98 = !DILocalVariable(name: "bufOut", arg: 6, scope: !83, file: !5, line: 1119, type: !86)
!99 = !DILocation(line: 1119, column: 33, scope: !83)
!100 = !DILocalVariable(name: "sizeOut", arg: 7, scope: !83, file: !5, line: 1120, type: !87)
!101 = !DILocation(line: 1120, column: 34, scope: !83)
!102 = !DILocalVariable(name: "db", scope: !83, file: !5, line: 1122, type: !56)
!103 = !DILocation(line: 1122, column: 11, scope: !83)
!104 = !DILocalVariable(name: "ok", scope: !83, file: !5, line: 1123, type: !6)
!105 = !DILocation(line: 1123, column: 9, scope: !83)
!106 = !DILocation(line: 1125, column: 4, scope: !83)
!107 = !DILocation(line: 1126, column: 36, scope: !83)
!108 = !DILocation(line: 1126, column: 44, scope: !83)
!109 = !DILocation(line: 1126, column: 51, scope: !83)
!110 = !DILocation(line: 1126, column: 59, scope: !83)
!111 = !DILocation(line: 1126, column: 68, scope: !83)
!112 = !DILocation(line: 1126, column: 9, scope: !83)
!113 = !DILocation(line: 1126, column: 7, scope: !83)
!114 = !DILocation(line: 1127, column: 33, scope: !83)
!115 = !DILocation(line: 1127, column: 42, scope: !83)
!116 = !DILocation(line: 1127, column: 50, scope: !83)
!117 = !DILocation(line: 1127, column: 11, scope: !83)
!118 = !DILocation(line: 1127, column: 4, scope: !83)
!119 = distinct !DISubprogram(name: "CodeSetDynBufFinalize", scope: !5, file: !5, line: 801, type: !120, isLocal: true, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!120 = !DISubroutineType(types: !121)
!121 = !{!6, !6, !55, !86, !87}
!122 = !DILocalVariable(name: "ok", arg: 1, scope: !119, file: !5, line: 801, type: !6)
!123 = !DILocation(line: 801, column: 28, scope: !119)
!124 = !DILocalVariable(name: "db", arg: 2, scope: !119, file: !5, line: 802, type: !55)
!125 = !DILocation(line: 802, column: 31, scope: !119)
!126 = !DILocalVariable(name: "bufOut", arg: 3, scope: !119, file: !5, line: 803, type: !86)
!127 = !DILocation(line: 803, column: 30, scope: !119)
!128 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !119, file: !5, line: 804, type: !87)
!129 = !DILocation(line: 804, column: 31, scope: !119)
!130 = !DILocation(line: 809, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !119, file: !5, line: 809, column: 8)
!132 = !DILocation(line: 809, column: 12, scope: !131)
!133 = !DILocation(line: 809, column: 30, scope: !134)
!134 = !DILexicalBlockFile(scope: !131, file: !5, discriminator: 1)
!135 = !DILocation(line: 809, column: 16, scope: !134)
!136 = !DILocation(line: 809, column: 49, scope: !134)
!137 = !DILocation(line: 809, column: 65, scope: !138)
!138 = !DILexicalBlockFile(scope: !131, file: !5, discriminator: 2)
!139 = !DILocation(line: 809, column: 53, scope: !138)
!140 = !DILocation(line: 809, column: 8, scope: !138)
!141 = !DILocation(line: 810, column: 22, scope: !142)
!142 = distinct !DILexicalBlock(scope: !131, file: !5, line: 809, column: 70)
!143 = !DILocation(line: 810, column: 7, scope: !142)
!144 = !DILocation(line: 811, column: 7, scope: !142)
!145 = !DILocation(line: 814, column: 25, scope: !119)
!146 = !DILocation(line: 814, column: 14, scope: !119)
!147 = !DILocation(line: 814, column: 5, scope: !119)
!148 = !DILocation(line: 814, column: 12, scope: !119)
!149 = !DILocation(line: 815, column: 8, scope: !150)
!150 = distinct !DILexicalBlock(scope: !119, file: !5, line: 815, column: 8)
!151 = !DILocation(line: 815, column: 8, scope: !119)
!152 = !DILocation(line: 816, column: 33, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !5, line: 815, column: 17)
!154 = !DILocation(line: 816, column: 18, scope: !153)
!155 = !DILocation(line: 816, column: 37, scope: !153)
!156 = !DILocation(line: 816, column: 8, scope: !153)
!157 = !DILocation(line: 816, column: 16, scope: !153)
!158 = !DILocation(line: 817, column: 4, scope: !153)
!159 = !DILocation(line: 818, column: 4, scope: !119)
!160 = !DILocation(line: 819, column: 1, scope: !119)
!161 = distinct !DISubprogram(name: "CodeSet_Utf8ToCurrent", scope: !5, file: !5, line: 1195, type: !162, isLocal: false, isDefinition: true, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!162 = !DISubroutineType(types: !163)
!163 = !{!6, !15, !51, !86, !87}
!164 = !DILocalVariable(name: "bufIn", arg: 1, scope: !161, file: !5, line: 1195, type: !15)
!165 = !DILocation(line: 1195, column: 35, scope: !161)
!166 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !161, file: !5, line: 1196, type: !51)
!167 = !DILocation(line: 1196, column: 30, scope: !161)
!168 = !DILocalVariable(name: "bufOut", arg: 3, scope: !161, file: !5, line: 1197, type: !86)
!169 = !DILocation(line: 1197, column: 30, scope: !161)
!170 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !161, file: !5, line: 1198, type: !87)
!171 = !DILocation(line: 1198, column: 31, scope: !161)
!172 = !DILocalVariable(name: "db", scope: !161, file: !5, line: 1201, type: !56)
!173 = !DILocation(line: 1201, column: 11, scope: !161)
!174 = !DILocalVariable(name: "ok", scope: !161, file: !5, line: 1202, type: !6)
!175 = !DILocation(line: 1202, column: 9, scope: !161)
!176 = !DILocation(line: 1208, column: 8, scope: !177)
!177 = distinct !DILexicalBlock(scope: !161, file: !5, line: 1208, column: 8)
!178 = !DILocation(line: 1208, column: 8, scope: !161)
!179 = !DILocation(line: 1209, column: 39, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !5, line: 1208, column: 20)
!181 = !DILocation(line: 1209, column: 46, scope: !180)
!182 = !DILocation(line: 1209, column: 54, scope: !180)
!183 = !DILocation(line: 1209, column: 62, scope: !180)
!184 = !DILocation(line: 1209, column: 14, scope: !180)
!185 = !DILocation(line: 1209, column: 7, scope: !180)
!186 = !DILocation(line: 1215, column: 4, scope: !161)
!187 = !DILocation(line: 1216, column: 45, scope: !161)
!188 = !DILocation(line: 1216, column: 52, scope: !161)
!189 = !DILocation(line: 1217, column: 36, scope: !161)
!190 = !DILocation(line: 1216, column: 9, scope: !161)
!191 = !DILocation(line: 1216, column: 7, scope: !161)
!192 = !DILocation(line: 1218, column: 33, scope: !161)
!193 = !DILocation(line: 1218, column: 42, scope: !161)
!194 = !DILocation(line: 1218, column: 50, scope: !161)
!195 = !DILocation(line: 1218, column: 11, scope: !161)
!196 = !DILocation(line: 1218, column: 4, scope: !161)
!197 = !DILocation(line: 1220, column: 1, scope: !161)
!198 = distinct !DISubprogram(name: "CodeSet_CurrentToUtf8", scope: !5, file: !5, line: 1244, type: !162, isLocal: false, isDefinition: true, scopeLine: 1248, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!199 = !DILocalVariable(name: "bufIn", arg: 1, scope: !198, file: !5, line: 1244, type: !15)
!200 = !DILocation(line: 1244, column: 35, scope: !198)
!201 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !198, file: !5, line: 1245, type: !51)
!202 = !DILocation(line: 1245, column: 30, scope: !198)
!203 = !DILocalVariable(name: "bufOut", arg: 3, scope: !198, file: !5, line: 1246, type: !86)
!204 = !DILocation(line: 1246, column: 30, scope: !198)
!205 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !198, file: !5, line: 1247, type: !87)
!206 = !DILocation(line: 1247, column: 31, scope: !198)
!207 = !DILocalVariable(name: "db", scope: !198, file: !5, line: 1250, type: !56)
!208 = !DILocation(line: 1250, column: 11, scope: !198)
!209 = !DILocalVariable(name: "ok", scope: !198, file: !5, line: 1251, type: !6)
!210 = !DILocation(line: 1251, column: 9, scope: !198)
!211 = !DILocation(line: 1257, column: 8, scope: !212)
!212 = distinct !DILexicalBlock(scope: !198, file: !5, line: 1257, column: 8)
!213 = !DILocation(line: 1257, column: 8, scope: !198)
!214 = !DILocation(line: 1258, column: 39, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !5, line: 1257, column: 20)
!216 = !DILocation(line: 1258, column: 46, scope: !215)
!217 = !DILocation(line: 1258, column: 54, scope: !215)
!218 = !DILocation(line: 1258, column: 62, scope: !215)
!219 = !DILocation(line: 1258, column: 14, scope: !215)
!220 = !DILocation(line: 1258, column: 7, scope: !215)
!221 = !DILocation(line: 1264, column: 4, scope: !198)
!222 = !DILocation(line: 1265, column: 36, scope: !198)
!223 = !DILocation(line: 1265, column: 65, scope: !198)
!224 = !DILocation(line: 1265, column: 72, scope: !198)
!225 = !DILocation(line: 1265, column: 9, scope: !226)
!226 = !DILexicalBlockFile(scope: !198, file: !5, discriminator: 1)
!227 = !DILocation(line: 1265, column: 7, scope: !198)
!228 = !DILocation(line: 1267, column: 33, scope: !198)
!229 = !DILocation(line: 1267, column: 42, scope: !198)
!230 = !DILocation(line: 1267, column: 50, scope: !198)
!231 = !DILocation(line: 1267, column: 11, scope: !198)
!232 = !DILocation(line: 1267, column: 4, scope: !198)
!233 = !DILocation(line: 1269, column: 1, scope: !198)
!234 = distinct !DISubprogram(name: "CodeSet_Utf16leToUtf8Db", scope: !5, file: !5, line: 1291, type: !235, isLocal: false, isDefinition: true, scopeLine: 1294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!235 = !DISubroutineType(types: !236)
!236 = !{!6, !15, !51, !55}
!237 = !DILocalVariable(name: "bufIn", arg: 1, scope: !234, file: !5, line: 1291, type: !15)
!238 = !DILocation(line: 1291, column: 37, scope: !234)
!239 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !234, file: !5, line: 1292, type: !51)
!240 = !DILocation(line: 1292, column: 32, scope: !234)
!241 = !DILocalVariable(name: "db", arg: 3, scope: !234, file: !5, line: 1293, type: !55)
!242 = !DILocation(line: 1293, column: 33, scope: !234)
!243 = !DILocation(line: 1298, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !234, file: !5, line: 1298, column: 8)
!245 = !DILocation(line: 1298, column: 8, scope: !234)
!246 = !DILocation(line: 1299, column: 41, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !5, line: 1298, column: 20)
!248 = !DILocation(line: 1299, column: 48, scope: !247)
!249 = !DILocation(line: 1299, column: 56, scope: !247)
!250 = !DILocation(line: 1299, column: 14, scope: !247)
!251 = !DILocation(line: 1299, column: 7, scope: !247)
!252 = !DILocation(line: 1302, column: 50, scope: !234)
!253 = !DILocation(line: 1302, column: 57, scope: !234)
!254 = !DILocation(line: 1303, column: 38, scope: !234)
!255 = !DILocation(line: 1302, column: 11, scope: !234)
!256 = !DILocation(line: 1302, column: 4, scope: !234)
!257 = !DILocation(line: 1304, column: 1, scope: !234)
!258 = distinct !DISubprogram(name: "CodeSet_Utf16leToUtf8", scope: !5, file: !5, line: 1330, type: !162, isLocal: false, isDefinition: true, scopeLine: 1334, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!259 = !DILocalVariable(name: "bufIn", arg: 1, scope: !258, file: !5, line: 1330, type: !15)
!260 = !DILocation(line: 1330, column: 35, scope: !258)
!261 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !258, file: !5, line: 1331, type: !51)
!262 = !DILocation(line: 1331, column: 30, scope: !258)
!263 = !DILocalVariable(name: "bufOut", arg: 3, scope: !258, file: !5, line: 1332, type: !86)
!264 = !DILocation(line: 1332, column: 30, scope: !258)
!265 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !258, file: !5, line: 1333, type: !87)
!266 = !DILocation(line: 1333, column: 31, scope: !258)
!267 = !DILocalVariable(name: "db", scope: !258, file: !5, line: 1335, type: !56)
!268 = !DILocation(line: 1335, column: 11, scope: !258)
!269 = !DILocalVariable(name: "ok", scope: !258, file: !5, line: 1336, type: !6)
!270 = !DILocation(line: 1336, column: 9, scope: !258)
!271 = !DILocation(line: 1341, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !258, file: !5, line: 1341, column: 8)
!273 = !DILocation(line: 1341, column: 8, scope: !258)
!274 = !DILocation(line: 1342, column: 39, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !5, line: 1341, column: 20)
!276 = !DILocation(line: 1342, column: 46, scope: !275)
!277 = !DILocation(line: 1342, column: 54, scope: !275)
!278 = !DILocation(line: 1342, column: 62, scope: !275)
!279 = !DILocation(line: 1342, column: 14, scope: !275)
!280 = !DILocation(line: 1342, column: 7, scope: !275)
!281 = !DILocation(line: 1345, column: 4, scope: !258)
!282 = !DILocation(line: 1346, column: 33, scope: !258)
!283 = !DILocation(line: 1346, column: 40, scope: !258)
!284 = !DILocation(line: 1346, column: 9, scope: !258)
!285 = !DILocation(line: 1346, column: 7, scope: !258)
!286 = !DILocation(line: 1347, column: 33, scope: !258)
!287 = !DILocation(line: 1347, column: 42, scope: !258)
!288 = !DILocation(line: 1347, column: 50, scope: !258)
!289 = !DILocation(line: 1347, column: 11, scope: !258)
!290 = !DILocation(line: 1347, column: 4, scope: !258)
!291 = !DILocation(line: 1348, column: 1, scope: !258)
!292 = distinct !DISubprogram(name: "CodeSet_Utf8ToUtf16le", scope: !5, file: !5, line: 1374, type: !162, isLocal: false, isDefinition: true, scopeLine: 1378, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!293 = !DILocalVariable(name: "bufIn", arg: 1, scope: !292, file: !5, line: 1374, type: !15)
!294 = !DILocation(line: 1374, column: 35, scope: !292)
!295 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !292, file: !5, line: 1375, type: !51)
!296 = !DILocation(line: 1375, column: 30, scope: !292)
!297 = !DILocalVariable(name: "bufOut", arg: 3, scope: !292, file: !5, line: 1376, type: !86)
!298 = !DILocation(line: 1376, column: 30, scope: !292)
!299 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !292, file: !5, line: 1377, type: !87)
!300 = !DILocation(line: 1377, column: 31, scope: !292)
!301 = !DILocalVariable(name: "db", scope: !292, file: !5, line: 1379, type: !56)
!302 = !DILocation(line: 1379, column: 11, scope: !292)
!303 = !DILocalVariable(name: "ok", scope: !292, file: !5, line: 1380, type: !6)
!304 = !DILocation(line: 1380, column: 9, scope: !292)
!305 = !DILocation(line: 1385, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !292, file: !5, line: 1385, column: 8)
!307 = !DILocation(line: 1385, column: 8, scope: !292)
!308 = !DILocation(line: 1386, column: 39, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !5, line: 1385, column: 20)
!310 = !DILocation(line: 1386, column: 46, scope: !309)
!311 = !DILocation(line: 1386, column: 54, scope: !309)
!312 = !DILocation(line: 1386, column: 62, scope: !309)
!313 = !DILocation(line: 1386, column: 14, scope: !309)
!314 = !DILocation(line: 1386, column: 7, scope: !309)
!315 = !DILocation(line: 1389, column: 4, scope: !292)
!316 = !DILocation(line: 1390, column: 30, scope: !292)
!317 = !DILocation(line: 1390, column: 37, scope: !292)
!318 = !DILocation(line: 1390, column: 9, scope: !292)
!319 = !DILocation(line: 1390, column: 7, scope: !292)
!320 = !DILocation(line: 1391, column: 33, scope: !292)
!321 = !DILocation(line: 1391, column: 42, scope: !292)
!322 = !DILocation(line: 1391, column: 50, scope: !292)
!323 = !DILocation(line: 1391, column: 11, scope: !292)
!324 = !DILocation(line: 1391, column: 4, scope: !292)
!325 = !DILocation(line: 1392, column: 1, scope: !292)
!326 = distinct !DISubprogram(name: "CodeSetUtf8ToUtf16le", scope: !5, file: !5, line: 841, type: !235, isLocal: true, isDefinition: true, scopeLine: 844, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!327 = !DILocalVariable(name: "bufIn", arg: 1, scope: !326, file: !5, line: 841, type: !15)
!328 = !DILocation(line: 841, column: 34, scope: !326)
!329 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !326, file: !5, line: 842, type: !51)
!330 = !DILocation(line: 842, column: 29, scope: !326)
!331 = !DILocalVariable(name: "db", arg: 3, scope: !326, file: !5, line: 843, type: !55)
!332 = !DILocation(line: 843, column: 30, scope: !326)
!333 = !DILocation(line: 845, column: 47, scope: !326)
!334 = !DILocation(line: 845, column: 54, scope: !326)
!335 = !DILocation(line: 846, column: 38, scope: !326)
!336 = !DILocation(line: 845, column: 11, scope: !326)
!337 = !DILocation(line: 845, column: 4, scope: !326)
!338 = distinct !DISubprogram(name: "CodeSet_Utf8FormDToUtf8FormC", scope: !5, file: !5, line: 1418, type: !162, isLocal: false, isDefinition: true, scopeLine: 1422, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!339 = !DILocalVariable(name: "bufIn", arg: 1, scope: !338, file: !5, line: 1418, type: !15)
!340 = !DILocation(line: 1418, column: 42, scope: !338)
!341 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !338, file: !5, line: 1419, type: !51)
!342 = !DILocation(line: 1419, column: 37, scope: !338)
!343 = !DILocalVariable(name: "bufOut", arg: 3, scope: !338, file: !5, line: 1420, type: !86)
!344 = !DILocation(line: 1420, column: 37, scope: !338)
!345 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !338, file: !5, line: 1421, type: !87)
!346 = !DILocation(line: 1421, column: 38, scope: !338)
!347 = !DILocation(line: 1426, column: 8, scope: !348)
!348 = distinct !DILexicalBlock(scope: !338, file: !5, line: 1426, column: 8)
!349 = !DILocation(line: 1426, column: 8, scope: !338)
!350 = !DILocation(line: 1427, column: 46, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !5, line: 1426, column: 20)
!352 = !DILocation(line: 1427, column: 53, scope: !351)
!353 = !DILocation(line: 1427, column: 61, scope: !351)
!354 = !DILocation(line: 1427, column: 69, scope: !351)
!355 = !DILocation(line: 1427, column: 14, scope: !351)
!356 = !DILocation(line: 1427, column: 7, scope: !351)
!357 = !DILocation(line: 1439, column: 4, scope: !338)
!358 = distinct !DISubprogram(name: "CodeSet_Utf8FormCToUtf8FormD", scope: !5, file: !5, line: 1467, type: !162, isLocal: false, isDefinition: true, scopeLine: 1471, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!359 = !DILocalVariable(name: "bufIn", arg: 1, scope: !358, file: !5, line: 1467, type: !15)
!360 = !DILocation(line: 1467, column: 42, scope: !358)
!361 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !358, file: !5, line: 1468, type: !51)
!362 = !DILocation(line: 1468, column: 37, scope: !358)
!363 = !DILocalVariable(name: "bufOut", arg: 3, scope: !358, file: !5, line: 1469, type: !86)
!364 = !DILocation(line: 1469, column: 37, scope: !358)
!365 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !358, file: !5, line: 1470, type: !87)
!366 = !DILocation(line: 1470, column: 38, scope: !358)
!367 = !DILocation(line: 1475, column: 8, scope: !368)
!368 = distinct !DILexicalBlock(scope: !358, file: !5, line: 1475, column: 8)
!369 = !DILocation(line: 1475, column: 8, scope: !358)
!370 = !DILocation(line: 1476, column: 46, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !5, line: 1475, column: 20)
!372 = !DILocation(line: 1476, column: 53, scope: !371)
!373 = !DILocation(line: 1476, column: 61, scope: !371)
!374 = !DILocation(line: 1476, column: 69, scope: !371)
!375 = !DILocation(line: 1476, column: 14, scope: !371)
!376 = !DILocation(line: 1476, column: 7, scope: !371)
!377 = !DILocation(line: 1488, column: 4, scope: !358)
!378 = distinct !DISubprogram(name: "CodeSet_CurrentToUtf16le", scope: !5, file: !5, line: 1514, type: !162, isLocal: false, isDefinition: true, scopeLine: 1518, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!379 = !DILocalVariable(name: "bufIn", arg: 1, scope: !378, file: !5, line: 1514, type: !15)
!380 = !DILocation(line: 1514, column: 38, scope: !378)
!381 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !378, file: !5, line: 1515, type: !51)
!382 = !DILocation(line: 1515, column: 33, scope: !378)
!383 = !DILocalVariable(name: "bufOut", arg: 3, scope: !378, file: !5, line: 1516, type: !86)
!384 = !DILocation(line: 1516, column: 33, scope: !378)
!385 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !378, file: !5, line: 1517, type: !87)
!386 = !DILocation(line: 1517, column: 34, scope: !378)
!387 = !DILocalVariable(name: "db", scope: !378, file: !5, line: 1519, type: !56)
!388 = !DILocation(line: 1519, column: 11, scope: !378)
!389 = !DILocalVariable(name: "ok", scope: !378, file: !5, line: 1520, type: !6)
!390 = !DILocation(line: 1520, column: 9, scope: !378)
!391 = !DILocation(line: 1525, column: 8, scope: !392)
!392 = distinct !DILexicalBlock(scope: !378, file: !5, line: 1525, column: 8)
!393 = !DILocation(line: 1525, column: 8, scope: !378)
!394 = !DILocation(line: 1526, column: 42, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !5, line: 1525, column: 20)
!396 = !DILocation(line: 1526, column: 49, scope: !395)
!397 = !DILocation(line: 1526, column: 57, scope: !395)
!398 = !DILocation(line: 1526, column: 65, scope: !395)
!399 = !DILocation(line: 1526, column: 14, scope: !395)
!400 = !DILocation(line: 1526, column: 7, scope: !395)
!401 = !DILocation(line: 1529, column: 4, scope: !378)
!402 = !DILocation(line: 1530, column: 36, scope: !378)
!403 = !DILocation(line: 1530, column: 65, scope: !378)
!404 = !DILocation(line: 1530, column: 72, scope: !378)
!405 = !DILocation(line: 1530, column: 9, scope: !406)
!406 = !DILexicalBlockFile(scope: !378, file: !5, discriminator: 1)
!407 = !DILocation(line: 1530, column: 7, scope: !378)
!408 = !DILocation(line: 1532, column: 33, scope: !378)
!409 = !DILocation(line: 1532, column: 42, scope: !378)
!410 = !DILocation(line: 1532, column: 50, scope: !378)
!411 = !DILocation(line: 1532, column: 11, scope: !378)
!412 = !DILocation(line: 1532, column: 4, scope: !378)
!413 = !DILocation(line: 1533, column: 1, scope: !378)
!414 = distinct !DISubprogram(name: "CodeSet_Utf16leToCurrent", scope: !5, file: !5, line: 1557, type: !162, isLocal: false, isDefinition: true, scopeLine: 1561, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!415 = !DILocalVariable(name: "bufIn", arg: 1, scope: !414, file: !5, line: 1557, type: !15)
!416 = !DILocation(line: 1557, column: 38, scope: !414)
!417 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !414, file: !5, line: 1558, type: !51)
!418 = !DILocation(line: 1558, column: 33, scope: !414)
!419 = !DILocalVariable(name: "bufOut", arg: 3, scope: !414, file: !5, line: 1559, type: !86)
!420 = !DILocation(line: 1559, column: 33, scope: !414)
!421 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !414, file: !5, line: 1560, type: !87)
!422 = !DILocation(line: 1560, column: 34, scope: !414)
!423 = !DILocalVariable(name: "db", scope: !414, file: !5, line: 1562, type: !56)
!424 = !DILocation(line: 1562, column: 11, scope: !414)
!425 = !DILocalVariable(name: "ok", scope: !414, file: !5, line: 1563, type: !6)
!426 = !DILocation(line: 1563, column: 9, scope: !414)
!427 = !DILocation(line: 1568, column: 8, scope: !428)
!428 = distinct !DILexicalBlock(scope: !414, file: !5, line: 1568, column: 8)
!429 = !DILocation(line: 1568, column: 8, scope: !414)
!430 = !DILocation(line: 1569, column: 42, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !5, line: 1568, column: 20)
!432 = !DILocation(line: 1569, column: 49, scope: !431)
!433 = !DILocation(line: 1569, column: 57, scope: !431)
!434 = !DILocation(line: 1569, column: 65, scope: !431)
!435 = !DILocation(line: 1569, column: 14, scope: !431)
!436 = !DILocation(line: 1569, column: 7, scope: !431)
!437 = !DILocation(line: 1572, column: 4, scope: !414)
!438 = !DILocation(line: 1573, column: 48, scope: !414)
!439 = !DILocation(line: 1573, column: 55, scope: !414)
!440 = !DILocation(line: 1574, column: 36, scope: !414)
!441 = !DILocation(line: 1573, column: 9, scope: !414)
!442 = !DILocation(line: 1573, column: 7, scope: !414)
!443 = !DILocation(line: 1575, column: 33, scope: !414)
!444 = !DILocation(line: 1575, column: 42, scope: !414)
!445 = !DILocation(line: 1575, column: 50, scope: !414)
!446 = !DILocation(line: 1575, column: 11, scope: !414)
!447 = !DILocation(line: 1575, column: 4, scope: !414)
!448 = !DILocation(line: 1576, column: 1, scope: !414)
!449 = distinct !DISubprogram(name: "CodeSet_Utf16beToCurrent", scope: !5, file: !5, line: 1600, type: !162, isLocal: false, isDefinition: true, scopeLine: 1604, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!450 = !DILocalVariable(name: "bufIn", arg: 1, scope: !449, file: !5, line: 1600, type: !15)
!451 = !DILocation(line: 1600, column: 38, scope: !449)
!452 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !449, file: !5, line: 1601, type: !51)
!453 = !DILocation(line: 1601, column: 33, scope: !449)
!454 = !DILocalVariable(name: "bufOut", arg: 3, scope: !449, file: !5, line: 1602, type: !86)
!455 = !DILocation(line: 1602, column: 33, scope: !449)
!456 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !449, file: !5, line: 1603, type: !87)
!457 = !DILocation(line: 1603, column: 34, scope: !449)
!458 = !DILocalVariable(name: "db", scope: !449, file: !5, line: 1605, type: !56)
!459 = !DILocation(line: 1605, column: 11, scope: !449)
!460 = !DILocalVariable(name: "ok", scope: !449, file: !5, line: 1606, type: !6)
!461 = !DILocation(line: 1606, column: 9, scope: !449)
!462 = !DILocation(line: 1611, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !449, file: !5, line: 1611, column: 8)
!464 = !DILocation(line: 1611, column: 8, scope: !449)
!465 = !DILocation(line: 1612, column: 42, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !5, line: 1611, column: 20)
!467 = !DILocation(line: 1612, column: 49, scope: !466)
!468 = !DILocation(line: 1612, column: 57, scope: !466)
!469 = !DILocation(line: 1612, column: 65, scope: !466)
!470 = !DILocation(line: 1612, column: 14, scope: !466)
!471 = !DILocation(line: 1612, column: 7, scope: !466)
!472 = !DILocation(line: 1615, column: 4, scope: !449)
!473 = !DILocation(line: 1616, column: 48, scope: !449)
!474 = !DILocation(line: 1616, column: 55, scope: !449)
!475 = !DILocation(line: 1617, column: 36, scope: !449)
!476 = !DILocation(line: 1616, column: 9, scope: !449)
!477 = !DILocation(line: 1616, column: 7, scope: !449)
!478 = !DILocation(line: 1618, column: 33, scope: !449)
!479 = !DILocation(line: 1618, column: 42, scope: !449)
!480 = !DILocation(line: 1618, column: 50, scope: !449)
!481 = !DILocation(line: 1618, column: 11, scope: !449)
!482 = !DILocation(line: 1618, column: 4, scope: !449)
!483 = !DILocation(line: 1619, column: 1, scope: !449)
!484 = distinct !DISubprogram(name: "CodeSet_IsEncodingSupported", scope: !5, file: !5, line: 1640, type: !43, isLocal: false, isDefinition: true, scopeLine: 1641, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!485 = !DILocalVariable(name: "name", arg: 1, scope: !484, file: !5, line: 1640, type: !15)
!486 = !DILocation(line: 1640, column: 41, scope: !484)
!487 = !DILocation(line: 1643, column: 42, scope: !484)
!488 = !DILocation(line: 1643, column: 11, scope: !484)
!489 = !DILocation(line: 1643, column: 4, scope: !484)
!490 = distinct !DISubprogram(name: "CodeSet_Validate", scope: !5, file: !5, line: 1689, type: !491, isLocal: false, isDefinition: true, scopeLine: 1692, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!491 = !DISubroutineType(types: !492)
!492 = !{!6, !15, !51, !15}
!493 = !DILocalVariable(name: "buf", arg: 1, scope: !490, file: !5, line: 1689, type: !15)
!494 = !DILocation(line: 1689, column: 30, scope: !490)
!495 = !DILocalVariable(name: "size", arg: 2, scope: !490, file: !5, line: 1690, type: !51)
!496 = !DILocation(line: 1690, column: 25, scope: !490)
!497 = !DILocalVariable(name: "code", arg: 3, scope: !490, file: !5, line: 1691, type: !15)
!498 = !DILocation(line: 1691, column: 30, scope: !490)
!499 = !DILocation(line: 1694, column: 31, scope: !490)
!500 = !DILocation(line: 1694, column: 36, scope: !490)
!501 = !DILocation(line: 1694, column: 42, scope: !490)
!502 = !DILocation(line: 1694, column: 11, scope: !490)
!503 = !DILocation(line: 1694, column: 4, scope: !490)
!504 = distinct !DISubprogram(name: "DynBuf_Get", scope: !57, file: !57, line: 113, type: !505, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!505 = !DISubroutineType(types: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!510 = !DILocalVariable(name: "b", arg: 1, scope: !504, file: !57, line: 113, type: !508)
!511 = !DILocation(line: 113, column: 26, scope: !504)
!512 = !DILocation(line: 117, column: 11, scope: !504)
!513 = !DILocation(line: 117, column: 14, scope: !504)
!514 = !DILocation(line: 117, column: 4, scope: !504)
!515 = distinct !DISubprogram(name: "DynBuf_GetSize", scope: !57, file: !57, line: 174, type: !516, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!516 = !DISubroutineType(types: !517)
!517 = !{!51, !508}
!518 = !DILocalVariable(name: "b", arg: 1, scope: !515, file: !57, line: 174, type: !508)
!519 = !DILocation(line: 174, column: 30, scope: !515)
!520 = !DILocation(line: 178, column: 11, scope: !515)
!521 = !DILocation(line: 178, column: 14, scope: !515)
!522 = !DILocation(line: 178, column: 4, scope: !515)
