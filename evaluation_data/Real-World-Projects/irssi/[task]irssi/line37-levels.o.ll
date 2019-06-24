; ModuleID = './line37-levels.o.i'
source_filename = "./line37-levels.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GString = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"NEVER\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"NO_ACT\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"HIDDEN\00", align 1
@levels = internal global [23 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* null], align 16
@__func__.level2bits = private unnamed_addr constant [11 x i8] c"level2bits\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"level != NULL\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"NEVER \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"NO_ACT \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ALL \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"HIDDEN \00", align 1
@__func__.combine_level = private unnamed_addr constant [14 x i8] c"combine_level\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"src != NULL\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"CRAP\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"MSGS\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"PUBLICS\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"NOTICES\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"SNOTES\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"CTCPS\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"ACTIONS\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"JOINS\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"PARTS\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"QUITS\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"KICKS\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"MODES\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"TOPICS\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"WALLOPS\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"INVITES\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"NICKS\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"DCCMSGS\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"CLIENTNOTICES\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"CLIENTCRAP\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"CLIENTERRORS\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"HILIGHTS\00", align 1

; Function Attrs: nounwind uwtable
define i32 @level_get(i8*) #0 !dbg !52 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !56, metadata !57), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %4, metadata !59, metadata !57), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %5, metadata !61, metadata !57), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %6, metadata !63, metadata !57), !dbg !64
  %7 = load i8*, i8** %3, align 8, !dbg !65
  %8 = call i32 @g_ascii_strcasecmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)), !dbg !67
  %9 = icmp eq i32 %8, 0, !dbg !68
  br i1 %9, label %14, label %10, !dbg !69

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8, !dbg !70
  %12 = call i32 @g_strcmp0(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !72
  %13 = icmp eq i32 %12, 0, !dbg !73
  br i1 %13, label %14, label %15, !dbg !74

; <label>:14:                                     ; preds = %10, %1
  store i32 4194303, i32* %2, align 4, !dbg !75
  br label %83, !dbg !75

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %3, align 8, !dbg !76
  %17 = call i32 @g_ascii_strcasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)), !dbg !78
  %18 = icmp eq i32 %17, 0, !dbg !79
  br i1 %18, label %19, label %20, !dbg !80

; <label>:19:                                     ; preds = %15
  store i32 67108864, i32* %2, align 4, !dbg !81
  br label %83, !dbg !81

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %3, align 8, !dbg !82
  %22 = call i32 @g_ascii_strcasecmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)), !dbg !84
  %23 = icmp eq i32 %22, 0, !dbg !85
  br i1 %23, label %24, label %25, !dbg !86

; <label>:24:                                     ; preds = %20
  store i32 33554432, i32* %2, align 4, !dbg !87
  br label %83, !dbg !87

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %3, align 8, !dbg !88
  %27 = call i32 @g_ascii_strcasecmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)), !dbg !90
  %28 = icmp eq i32 %27, 0, !dbg !91
  br i1 %28, label %29, label %30, !dbg !92

; <label>:29:                                     ; preds = %25
  store i32 268435456, i32* %2, align 4, !dbg !93
  br label %83, !dbg !93

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %3, align 8, !dbg !94
  %32 = call i64 @strlen(i8* %31) #4, !dbg !95
  %33 = trunc i64 %32 to i32, !dbg !95
  store i32 %33, i32* %5, align 4, !dbg !96
  %34 = load i32, i32* %5, align 4, !dbg !97
  %35 = icmp eq i32 %34, 0, !dbg !99
  br i1 %35, label %36, label %37, !dbg !100

; <label>:36:                                     ; preds = %30
  store i32 0, i32* %2, align 4, !dbg !101
  br label %83, !dbg !101

; <label>:37:                                     ; preds = %30
  store i32 0, i32* %6, align 4, !dbg !103
  store i32 0, i32* %4, align 4, !dbg !104
  br label %38, !dbg !106

; <label>:38:                                     ; preds = %78, %37
  %39 = load i32, i32* %4, align 4, !dbg !107
  %40 = sext i32 %39 to i64, !dbg !110
  %41 = getelementptr inbounds [23 x i8*], [23 x i8*]* @levels, i64 0, i64 %40, !dbg !110
  %42 = load i8*, i8** %41, align 8, !dbg !110
  %43 = icmp ne i8* %42, null, !dbg !111
  br i1 %43, label %44, label %81, !dbg !112

; <label>:44:                                     ; preds = %38
  %45 = load i32, i32* %4, align 4, !dbg !113
  %46 = sext i32 %45 to i64, !dbg !116
  %47 = getelementptr inbounds [23 x i8*], [23 x i8*]* @levels, i64 0, i64 %46, !dbg !116
  %48 = load i8*, i8** %47, align 8, !dbg !116
  %49 = load i8*, i8** %3, align 8, !dbg !117
  %50 = load i32, i32* %5, align 4, !dbg !118
  %51 = sext i32 %50 to i64, !dbg !118
  %52 = call i32 @g_ascii_strncasecmp(i8* %48, i8* %49, i64 %51), !dbg !119
  %53 = icmp eq i32 %52, 0, !dbg !120
  br i1 %53, label %54, label %77, !dbg !121

; <label>:54:                                     ; preds = %44
  %55 = load i32, i32* %4, align 4, !dbg !122
  %56 = sext i32 %55 to i64, !dbg !125
  %57 = getelementptr inbounds [23 x i8*], [23 x i8*]* @levels, i64 0, i64 %56, !dbg !125
  %58 = load i8*, i8** %57, align 8, !dbg !125
  %59 = call i64 @strlen(i8* %58) #4, !dbg !126
  %60 = trunc i64 %59 to i32, !dbg !127
  %61 = load i32, i32* %5, align 4, !dbg !128
  %62 = icmp eq i32 %60, %61, !dbg !129
  br i1 %62, label %63, label %68, !dbg !130

; <label>:63:                                     ; preds = %54
  %64 = load i32, i32* %4, align 4, !dbg !131
  %65 = zext i32 %64 to i64, !dbg !133
  %66 = shl i64 1, %65, !dbg !133
  %67 = trunc i64 %66 to i32, !dbg !134
  store i32 %67, i32* %2, align 4, !dbg !135
  br label %83, !dbg !135

; <label>:68:                                     ; preds = %54
  %69 = load i32, i32* %6, align 4, !dbg !136
  %70 = icmp sgt i32 %69, 0, !dbg !138
  br i1 %70, label %71, label %72, !dbg !139

; <label>:71:                                     ; preds = %68
  store i32 0, i32* %2, align 4, !dbg !140
  br label %83, !dbg !140

; <label>:72:                                     ; preds = %68
  %73 = load i32, i32* %4, align 4, !dbg !142
  %74 = zext i32 %73 to i64, !dbg !143
  %75 = shl i64 1, %74, !dbg !143
  %76 = trunc i64 %75 to i32, !dbg !144
  store i32 %76, i32* %6, align 4, !dbg !145
  br label %77, !dbg !146

; <label>:77:                                     ; preds = %72, %44
  br label %78, !dbg !147

; <label>:78:                                     ; preds = %77
  %79 = load i32, i32* %4, align 4, !dbg !148
  %80 = add nsw i32 %79, 1, !dbg !148
  store i32 %80, i32* %4, align 4, !dbg !148
  br label %38, !dbg !150, !llvm.loop !151

; <label>:81:                                     ; preds = %38
  %82 = load i32, i32* %6, align 4, !dbg !153
  store i32 %82, i32* %2, align 4, !dbg !154
  br label %83, !dbg !154

; <label>:83:                                     ; preds = %81, %71, %63, %36, %29, %24, %19, %14
  %84 = load i32, i32* %2, align 4, !dbg !155
  ret i32 %84, !dbg !155
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @level2bits(i8*, i32*) #0 !dbg !156 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !160, metadata !57), !dbg !161
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !162, metadata !57), !dbg !163
  call void @llvm.dbg.declare(metadata i8** %6, metadata !164, metadata !57), !dbg !166
  call void @llvm.dbg.declare(metadata i8** %7, metadata !167, metadata !57), !dbg !168
  call void @llvm.dbg.declare(metadata i8** %8, metadata !169, metadata !57), !dbg !170
  call void @llvm.dbg.declare(metadata i32* %9, metadata !171, metadata !57), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %10, metadata !173, metadata !57), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %11, metadata !175, metadata !57), !dbg !176
  %12 = load i32*, i32** %5, align 8, !dbg !177
  %13 = icmp ne i32* %12, null, !dbg !179
  br i1 %13, label %14, label %16, !dbg !180

; <label>:14:                                     ; preds = %2
  %15 = load i32*, i32** %5, align 8, !dbg !181
  store i32 0, i32* %15, align 4, !dbg !182
  br label %16, !dbg !183

; <label>:16:                                     ; preds = %14, %2
  br label %17, !dbg !184, !llvm.loop !185

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !186
  %19 = icmp ne i8* %18, null, !dbg !190
  br i1 %19, label %20, label %21, !dbg !186

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !191

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.level2bits, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)), !dbg !194
  store i32 0, i32* %3, align 4, !dbg !197
  br label %114, !dbg !197

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !198

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %4, align 8, !dbg !200
  %25 = load i8, i8* %24, align 1, !dbg !202
  %26 = sext i8 %25 to i32, !dbg !202
  %27 = icmp eq i32 %26, 0, !dbg !203
  br i1 %27, label %28, label %29, !dbg !204

; <label>:28:                                     ; preds = %23
  store i32 0, i32* %3, align 4, !dbg !205
  br label %114, !dbg !205

; <label>:29:                                     ; preds = %23
  %30 = load i8*, i8** %4, align 8, !dbg !206
  %31 = call noalias i8* @g_strdup(i8* %30), !dbg !207
  store i8* %31, i8** %7, align 8, !dbg !208
  store i8* %31, i8** %6, align 8, !dbg !209
  store i32 0, i32* %9, align 4, !dbg !210
  %32 = load i8*, i8** %7, align 8, !dbg !211
  store i8* %32, i8** %8, align 8, !dbg !213
  br label %33, !dbg !214

; <label>:33:                                     ; preds = %108, %29
  %34 = load i8*, i8** %7, align 8, !dbg !215
  %35 = load i8, i8* %34, align 1, !dbg !219
  %36 = sext i8 %35 to i32, !dbg !219
  %37 = icmp eq i32 %36, 32, !dbg !220
  br i1 %37, label %38, label %41, !dbg !221

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %7, align 8, !dbg !222
  %40 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !222
  store i8* %40, i8** %7, align 8, !dbg !222
  store i8 0, i8* %39, align 1, !dbg !223
  br label %48, !dbg !224

; <label>:41:                                     ; preds = %33
  %42 = load i8*, i8** %7, align 8, !dbg !225
  %43 = load i8, i8* %42, align 1, !dbg !227
  %44 = sext i8 %43 to i32, !dbg !227
  %45 = icmp ne i32 %44, 0, !dbg !228
  br i1 %45, label %46, label %47, !dbg !229

; <label>:46:                                     ; preds = %41
  br label %108, !dbg !230

; <label>:47:                                     ; preds = %41
  br label %48

; <label>:48:                                     ; preds = %47, %38
  %49 = load i8*, i8** %8, align 8, !dbg !231
  %50 = load i8, i8* %49, align 1, !dbg !232
  %51 = sext i8 %50 to i32, !dbg !232
  %52 = icmp eq i32 %51, 45, !dbg !233
  %53 = zext i1 %52 to i32, !dbg !233
  store i32 %53, i32* %11, align 4, !dbg !234
  %54 = load i8*, i8** %8, align 8, !dbg !235
  %55 = load i8, i8* %54, align 1, !dbg !237
  %56 = sext i8 %55 to i32, !dbg !237
  %57 = icmp eq i32 %56, 45, !dbg !238
  br i1 %57, label %63, label %58, !dbg !239

; <label>:58:                                     ; preds = %48
  %59 = load i8*, i8** %8, align 8, !dbg !240
  %60 = load i8, i8* %59, align 1, !dbg !242
  %61 = sext i8 %60 to i32, !dbg !242
  %62 = icmp eq i32 %61, 43, !dbg !243
  br i1 %62, label %63, label %66, !dbg !244

; <label>:63:                                     ; preds = %58, %48
  %64 = load i8*, i8** %8, align 8, !dbg !245
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !245
  store i8* %65, i8** %8, align 8, !dbg !245
  br label %66, !dbg !247

; <label>:66:                                     ; preds = %63, %58
  %67 = load i8*, i8** %8, align 8, !dbg !248
  %68 = call i32 @level_get(i8* %67), !dbg !249
  store i32 %68, i32* %10, align 4, !dbg !250
  %69 = load i32, i32* %10, align 4, !dbg !251
  %70 = icmp ne i32 %69, 0, !dbg !253
  br i1 %70, label %71, label %85, !dbg !254

; <label>:71:                                     ; preds = %66
  %72 = load i32, i32* %11, align 4, !dbg !255
  %73 = icmp ne i32 %72, 0, !dbg !255
  br i1 %73, label %78, label %74, !dbg !257

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %9, align 4, !dbg !258
  %76 = load i32, i32* %10, align 4, !dbg !260
  %77 = or i32 %75, %76, !dbg !261
  br label %83, !dbg !262

; <label>:78:                                     ; preds = %71
  %79 = load i32, i32* %9, align 4, !dbg !263
  %80 = load i32, i32* %10, align 4, !dbg !264
  %81 = xor i32 %80, -1, !dbg !265
  %82 = and i32 %79, %81, !dbg !266
  br label %83, !dbg !267

; <label>:83:                                     ; preds = %78, %74
  %84 = phi i32 [ %77, %74 ], [ %82, %78 ], !dbg !269
  store i32 %84, i32* %9, align 4, !dbg !271
  br label %91, !dbg !272

; <label>:85:                                     ; preds = %66
  %86 = load i32*, i32** %5, align 8, !dbg !273
  %87 = icmp ne i32* %86, null, !dbg !276
  br i1 %87, label %88, label %90, !dbg !273

; <label>:88:                                     ; preds = %85
  %89 = load i32*, i32** %5, align 8, !dbg !277
  store i32 1, i32* %89, align 4, !dbg !278
  br label %90, !dbg !279

; <label>:90:                                     ; preds = %88, %85
  br label %91

; <label>:91:                                     ; preds = %90, %83
  br label %92, !dbg !280

; <label>:92:                                     ; preds = %97, %91
  %93 = load i8*, i8** %7, align 8, !dbg !281
  %94 = load i8, i8* %93, align 1, !dbg !283
  %95 = sext i8 %94 to i32, !dbg !283
  %96 = icmp eq i32 %95, 32, !dbg !284
  br i1 %96, label %97, label %100, !dbg !285

; <label>:97:                                     ; preds = %92
  %98 = load i8*, i8** %7, align 8, !dbg !286
  %99 = getelementptr inbounds i8, i8* %98, i32 1, !dbg !286
  store i8* %99, i8** %7, align 8, !dbg !286
  br label %92, !dbg !288, !llvm.loop !289

; <label>:100:                                    ; preds = %92
  %101 = load i8*, i8** %7, align 8, !dbg !290
  %102 = load i8, i8* %101, align 1, !dbg !292
  %103 = sext i8 %102 to i32, !dbg !292
  %104 = icmp eq i32 %103, 0, !dbg !293
  br i1 %104, label %105, label %106, !dbg !294

; <label>:105:                                    ; preds = %100
  br label %111, !dbg !295

; <label>:106:                                    ; preds = %100
  %107 = load i8*, i8** %7, align 8, !dbg !297
  store i8* %107, i8** %8, align 8, !dbg !298
  br label %108, !dbg !299

; <label>:108:                                    ; preds = %106, %46
  %109 = load i8*, i8** %7, align 8, !dbg !300
  %110 = getelementptr inbounds i8, i8* %109, i32 1, !dbg !300
  store i8* %110, i8** %7, align 8, !dbg !300
  br label %33, !dbg !302, !llvm.loop !303

; <label>:111:                                    ; preds = %105
  %112 = load i8*, i8** %6, align 8, !dbg !305
  call void @g_free(i8* %112), !dbg !306
  %113 = load i32, i32* %9, align 4, !dbg !307
  store i32 %113, i32* %3, align 4, !dbg !308
  br label %114, !dbg !308

; <label>:114:                                    ; preds = %111, %28, %21
  %115 = load i32, i32* %3, align 4, !dbg !309
  ret i32 %115, !dbg !309
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @bits2level(i32) #0 !dbg !310 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._GString*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !313, metadata !57), !dbg !314
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !315, metadata !57), !dbg !327
  call void @llvm.dbg.declare(metadata i8** %5, metadata !328, metadata !57), !dbg !329
  call void @llvm.dbg.declare(metadata i32* %6, metadata !330, metadata !57), !dbg !331
  %7 = load i32, i32* %3, align 4, !dbg !332
  %8 = icmp eq i32 %7, 0, !dbg !334
  br i1 %8, label %9, label %11, !dbg !335

; <label>:9:                                      ; preds = %1
  %10 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)), !dbg !336
  store i8* %10, i8** %2, align 8, !dbg !337
  br label %85, !dbg !337

; <label>:11:                                     ; preds = %1
  %12 = call %struct._GString* @g_string_new(i8* null), !dbg !338
  store %struct._GString* %12, %struct._GString** %4, align 8, !dbg !339
  %13 = load i32, i32* %3, align 4, !dbg !340
  %14 = and i32 %13, 67108864, !dbg !342
  %15 = icmp ne i32 %14, 0, !dbg !342
  br i1 %15, label %16, label %19, !dbg !343

; <label>:16:                                     ; preds = %11
  %17 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !344
  %18 = call %struct._GString* @g_string_append(%struct._GString* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !345
  br label %19, !dbg !345

; <label>:19:                                     ; preds = %16, %11
  %20 = load i32, i32* %3, align 4, !dbg !346
  %21 = and i32 %20, 33554432, !dbg !348
  %22 = icmp ne i32 %21, 0, !dbg !348
  br i1 %22, label %23, label %26, !dbg !349

; <label>:23:                                     ; preds = %19
  %24 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !350
  %25 = call %struct._GString* @g_string_append(%struct._GString* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)), !dbg !351
  br label %26, !dbg !351

; <label>:26:                                     ; preds = %23, %19
  %27 = load i32, i32* %3, align 4, !dbg !352
  %28 = and i32 %27, 4194303, !dbg !354
  %29 = icmp eq i32 %28, 4194303, !dbg !355
  br i1 %29, label %30, label %33, !dbg !356

; <label>:30:                                     ; preds = %26
  %31 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !357
  %32 = call %struct._GString* @g_string_append(%struct._GString* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)), !dbg !359
  br label %59, !dbg !360

; <label>:33:                                     ; preds = %26
  store i32 0, i32* %6, align 4, !dbg !361
  br label %34, !dbg !364

; <label>:34:                                     ; preds = %55, %33
  %35 = load i32, i32* %6, align 4, !dbg !365
  %36 = sext i32 %35 to i64, !dbg !368
  %37 = getelementptr inbounds [23 x i8*], [23 x i8*]* @levels, i64 0, i64 %36, !dbg !368
  %38 = load i8*, i8** %37, align 8, !dbg !368
  %39 = icmp ne i8* %38, null, !dbg !369
  br i1 %39, label %40, label %58, !dbg !370

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %3, align 4, !dbg !371
  %42 = sext i32 %41 to i64, !dbg !371
  %43 = load i32, i32* %6, align 4, !dbg !374
  %44 = zext i32 %43 to i64, !dbg !375
  %45 = shl i64 1, %44, !dbg !375
  %46 = and i64 %42, %45, !dbg !376
  %47 = icmp ne i64 %46, 0, !dbg !376
  br i1 %47, label %48, label %54, !dbg !377

; <label>:48:                                     ; preds = %40
  %49 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !378
  %50 = load i32, i32* %6, align 4, !dbg !379
  %51 = sext i32 %50 to i64, !dbg !380
  %52 = getelementptr inbounds [23 x i8*], [23 x i8*]* @levels, i64 0, i64 %51, !dbg !380
  %53 = load i8*, i8** %52, align 8, !dbg !380
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %53), !dbg !381
  br label %54, !dbg !381

; <label>:54:                                     ; preds = %48, %40
  br label %55, !dbg !382

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %6, align 4, !dbg !383
  %57 = add nsw i32 %56, 1, !dbg !383
  store i32 %57, i32* %6, align 4, !dbg !383
  br label %34, !dbg !385, !llvm.loop !386

; <label>:58:                                     ; preds = %34
  br label %59

; <label>:59:                                     ; preds = %58, %30
  %60 = load i32, i32* %3, align 4, !dbg !388
  %61 = and i32 %60, 268435456, !dbg !390
  %62 = icmp ne i32 %61, 0, !dbg !390
  br i1 %62, label %63, label %66, !dbg !391

; <label>:63:                                     ; preds = %59
  %64 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !392
  %65 = call %struct._GString* @g_string_append(%struct._GString* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)), !dbg !393
  br label %66, !dbg !393

; <label>:66:                                     ; preds = %63, %59
  %67 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !394
  %68 = getelementptr inbounds %struct._GString, %struct._GString* %67, i32 0, i32 1, !dbg !396
  %69 = load i64, i64* %68, align 8, !dbg !396
  %70 = icmp ugt i64 %69, 0, !dbg !397
  br i1 %70, label %71, label %78, !dbg !398

; <label>:71:                                     ; preds = %66
  %72 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !399
  %73 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !400
  %74 = getelementptr inbounds %struct._GString, %struct._GString* %73, i32 0, i32 1, !dbg !401
  %75 = load i64, i64* %74, align 8, !dbg !401
  %76 = sub i64 %75, 1, !dbg !402
  %77 = call %struct._GString* @g_string_truncate(%struct._GString* %72, i64 %76), !dbg !403
  br label %78, !dbg !403

; <label>:78:                                     ; preds = %71, %66
  %79 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !404
  %80 = getelementptr inbounds %struct._GString, %struct._GString* %79, i32 0, i32 0, !dbg !405
  %81 = load i8*, i8** %80, align 8, !dbg !405
  store i8* %81, i8** %5, align 8, !dbg !406
  %82 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !407
  %83 = call i8* @g_string_free(%struct._GString* %82, i32 0), !dbg !408
  %84 = load i8*, i8** %5, align 8, !dbg !409
  store i8* %84, i8** %2, align 8, !dbg !410
  br label %85, !dbg !410

; <label>:85:                                     ; preds = %78, %9
  %86 = load i8*, i8** %2, align 8, !dbg !411
  ret i8* %86, !dbg !411
}

declare %struct._GString* @g_string_new(i8*) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @combine_level(i32, i8*) #0 !dbg !412 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !415, metadata !57), !dbg !416
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !417, metadata !57), !dbg !418
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !419, metadata !57), !dbg !421
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !422, metadata !57), !dbg !423
  call void @llvm.dbg.declare(metadata i8** %8, metadata !424, metadata !57), !dbg !425
  call void @llvm.dbg.declare(metadata i32* %9, metadata !426, metadata !57), !dbg !427
  br label %10, !dbg !428, !llvm.loop !429

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %5, align 8, !dbg !430
  %12 = icmp ne i8* %11, null, !dbg !434
  br i1 %12, label %13, label %14, !dbg !430

; <label>:13:                                     ; preds = %10
  br label %16, !dbg !435

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.combine_level, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)), !dbg !438
  %15 = load i32, i32* %4, align 4, !dbg !441
  store i32 %15, i32* %3, align 4, !dbg !442
  br label %73, !dbg !442

; <label>:16:                                     ; preds = %13
  br label %17, !dbg !443

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %5, align 8, !dbg !445
  %19 = call noalias i8** @g_strsplit(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i32 -1), !dbg !446
  store i8** %19, i8*** %6, align 8, !dbg !447
  %20 = load i8**, i8*** %6, align 8, !dbg !448
  store i8** %20, i8*** %7, align 8, !dbg !450
  br label %21, !dbg !451

; <label>:21:                                     ; preds = %67, %17
  %22 = load i8**, i8*** %7, align 8, !dbg !452
  %23 = load i8*, i8** %22, align 8, !dbg !455
  %24 = icmp ne i8* %23, null, !dbg !456
  br i1 %24, label %25, label %70, !dbg !457

; <label>:25:                                     ; preds = %21
  %26 = load i8**, i8*** %7, align 8, !dbg !458
  %27 = load i8*, i8** %26, align 8, !dbg !460
  %28 = load i8**, i8*** %7, align 8, !dbg !461
  %29 = load i8*, i8** %28, align 8, !dbg !462
  %30 = load i8, i8* %29, align 1, !dbg !463
  %31 = sext i8 %30 to i32, !dbg !463
  %32 = icmp eq i32 %31, 43, !dbg !464
  br i1 %32, label %39, label %33, !dbg !465

; <label>:33:                                     ; preds = %25
  %34 = load i8**, i8*** %7, align 8, !dbg !466
  %35 = load i8*, i8** %34, align 8, !dbg !468
  %36 = load i8, i8* %35, align 1, !dbg !469
  %37 = sext i8 %36 to i32, !dbg !469
  %38 = icmp eq i32 %37, 45, !dbg !470
  br label %39, !dbg !471

; <label>:39:                                     ; preds = %33, %25
  %40 = phi i1 [ true, %25 ], [ %38, %33 ]
  %41 = select i1 %40, i32 1, i32 0, !dbg !472
  %42 = sext i32 %41 to i64, !dbg !474
  %43 = getelementptr inbounds i8, i8* %27, i64 %42, !dbg !474
  store i8* %43, i8** %8, align 8, !dbg !475
  %44 = load i8*, i8** %8, align 8, !dbg !476
  %45 = call i32 @level_get(i8* %44), !dbg !477
  store i32 %45, i32* %9, align 4, !dbg !478
  %46 = load i8*, i8** %8, align 8, !dbg !479
  %47 = call i32 @g_strcmp0(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)), !dbg !481
  %48 = icmp eq i32 %47, 0, !dbg !482
  br i1 %48, label %49, label %50, !dbg !483

; <label>:49:                                     ; preds = %39
  store i32 0, i32* %4, align 4, !dbg !484
  br label %66, !dbg !485

; <label>:50:                                     ; preds = %39
  %51 = load i8**, i8*** %7, align 8, !dbg !486
  %52 = load i8*, i8** %51, align 8, !dbg !488
  %53 = load i8, i8* %52, align 1, !dbg !489
  %54 = sext i8 %53 to i32, !dbg !489
  %55 = icmp eq i32 %54, 45, !dbg !490
  br i1 %55, label %56, label %61, !dbg !491

; <label>:56:                                     ; preds = %50
  %57 = load i32, i32* %9, align 4, !dbg !492
  %58 = xor i32 %57, -1, !dbg !493
  %59 = load i32, i32* %4, align 4, !dbg !494
  %60 = and i32 %59, %58, !dbg !494
  store i32 %60, i32* %4, align 4, !dbg !494
  br label %65, !dbg !495

; <label>:61:                                     ; preds = %50
  %62 = load i32, i32* %9, align 4, !dbg !496
  %63 = load i32, i32* %4, align 4, !dbg !497
  %64 = or i32 %63, %62, !dbg !497
  store i32 %64, i32* %4, align 4, !dbg !497
  br label %65

; <label>:65:                                     ; preds = %61, %56
  br label %66

; <label>:66:                                     ; preds = %65, %49
  br label %67, !dbg !498

; <label>:67:                                     ; preds = %66
  %68 = load i8**, i8*** %7, align 8, !dbg !499
  %69 = getelementptr inbounds i8*, i8** %68, i32 1, !dbg !499
  store i8** %69, i8*** %7, align 8, !dbg !499
  br label %21, !dbg !501, !llvm.loop !502

; <label>:70:                                     ; preds = %21
  %71 = load i8**, i8*** %6, align 8, !dbg !504
  call void @g_strfreev(i8** %71), !dbg !505
  %72 = load i32, i32* %4, align 4, !dbg !506
  store i32 %72, i32* %3, align 4, !dbg !507
  br label %73, !dbg !507

; <label>:73:                                     ; preds = %70, %14
  %74 = load i32, i32* %3, align 4, !dbg !508
  ret i32 %74, !dbg !508
}

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare void @g_strfreev(i8**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!49, !50}
!llvm.ident = !{!51}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !34, globals: !43)
!1 = !DIFile(filename: "line37-levels.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!6 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!7 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!8 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!9 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!10 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!11 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!12 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!13 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!14 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!15 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!16 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!17 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!18 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!19 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!20 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!21 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!22 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!23 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!24 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!25 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!26 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!27 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!28 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!29 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!30 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!31 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!32 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!33 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!34 = !{!35, !36, !37, !41}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!36 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!43 = !{!44}
!44 = distinct !DIGlobalVariable(name: "levels", scope: !0, file: !45, line: 25, type: !46, isLocal: true, isDefinition: true, variable: [23 x i8*]* @levels)
!45 = !DIFile(filename: "levels.c", directory: "/home/lichi/Desktop/irssi/task1")
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 1472, align: 64, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 23)
!49 = !{i32 2, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!52 = distinct !DISubprogram(name: "level_get", scope: !45, file: !45, line: 51, type: !53, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!36, !41}
!55 = !{}
!56 = !DILocalVariable(name: "level", arg: 1, scope: !52, file: !45, line: 51, type: !41)
!57 = !DIExpression()
!58 = !DILocation(line: 51, column: 27, scope: !52)
!59 = !DILocalVariable(name: "n", scope: !52, file: !45, line: 53, type: !36)
!60 = !DILocation(line: 53, column: 6, scope: !52)
!61 = !DILocalVariable(name: "len", scope: !52, file: !45, line: 53, type: !36)
!62 = !DILocation(line: 53, column: 9, scope: !52)
!63 = !DILocalVariable(name: "match", scope: !52, file: !45, line: 53, type: !36)
!64 = !DILocation(line: 53, column: 14, scope: !52)
!65 = !DILocation(line: 55, column: 25, scope: !66)
!66 = distinct !DILexicalBlock(scope: !52, file: !45, line: 55, column: 6)
!67 = !DILocation(line: 55, column: 6, scope: !66)
!68 = !DILocation(line: 55, column: 39, scope: !66)
!69 = !DILocation(line: 55, column: 44, scope: !66)
!70 = !DILocation(line: 55, column: 57, scope: !71)
!71 = !DILexicalBlockFile(scope: !66, file: !45, discriminator: 1)
!72 = !DILocation(line: 55, column: 47, scope: !71)
!73 = !DILocation(line: 55, column: 69, scope: !71)
!74 = !DILocation(line: 55, column: 6, scope: !71)
!75 = !DILocation(line: 56, column: 3, scope: !66)
!76 = !DILocation(line: 58, column: 25, scope: !77)
!77 = distinct !DILexicalBlock(scope: !52, file: !45, line: 58, column: 6)
!78 = !DILocation(line: 58, column: 6, scope: !77)
!79 = !DILocation(line: 58, column: 41, scope: !77)
!80 = !DILocation(line: 58, column: 6, scope: !52)
!81 = !DILocation(line: 59, column: 3, scope: !77)
!82 = !DILocation(line: 61, column: 25, scope: !83)
!83 = distinct !DILexicalBlock(scope: !52, file: !45, line: 61, column: 6)
!84 = !DILocation(line: 61, column: 6, scope: !83)
!85 = !DILocation(line: 61, column: 42, scope: !83)
!86 = !DILocation(line: 61, column: 6, scope: !52)
!87 = !DILocation(line: 62, column: 3, scope: !83)
!88 = !DILocation(line: 64, column: 25, scope: !89)
!89 = distinct !DILexicalBlock(scope: !52, file: !45, line: 64, column: 6)
!90 = !DILocation(line: 64, column: 6, scope: !89)
!91 = !DILocation(line: 64, column: 42, scope: !89)
!92 = !DILocation(line: 64, column: 6, scope: !52)
!93 = !DILocation(line: 65, column: 3, scope: !89)
!94 = !DILocation(line: 67, column: 15, scope: !52)
!95 = !DILocation(line: 67, column: 8, scope: !52)
!96 = !DILocation(line: 67, column: 6, scope: !52)
!97 = !DILocation(line: 68, column: 6, scope: !98)
!98 = distinct !DILexicalBlock(scope: !52, file: !45, line: 68, column: 6)
!99 = !DILocation(line: 68, column: 10, scope: !98)
!100 = !DILocation(line: 68, column: 6, scope: !52)
!101 = !DILocation(line: 68, column: 16, scope: !102)
!102 = !DILexicalBlockFile(scope: !98, file: !45, discriminator: 1)
!103 = !DILocation(line: 71, column: 8, scope: !52)
!104 = !DILocation(line: 72, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !52, file: !45, line: 72, column: 2)
!106 = !DILocation(line: 72, column: 7, scope: !105)
!107 = !DILocation(line: 72, column: 21, scope: !108)
!108 = !DILexicalBlockFile(scope: !109, file: !45, discriminator: 1)
!109 = distinct !DILexicalBlock(scope: !105, file: !45, line: 72, column: 2)
!110 = !DILocation(line: 72, column: 14, scope: !108)
!111 = !DILocation(line: 72, column: 24, scope: !108)
!112 = !DILocation(line: 72, column: 2, scope: !108)
!113 = !DILocation(line: 73, column: 34, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !45, line: 73, column: 7)
!115 = distinct !DILexicalBlock(scope: !109, file: !45, line: 72, column: 37)
!116 = !DILocation(line: 73, column: 27, scope: !114)
!117 = !DILocation(line: 73, column: 38, scope: !114)
!118 = !DILocation(line: 73, column: 45, scope: !114)
!119 = !DILocation(line: 73, column: 7, scope: !114)
!120 = !DILocation(line: 73, column: 50, scope: !114)
!121 = !DILocation(line: 73, column: 7, scope: !115)
!122 = !DILocation(line: 74, column: 27, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !45, line: 74, column: 8)
!124 = distinct !DILexicalBlock(scope: !114, file: !45, line: 73, column: 56)
!125 = !DILocation(line: 74, column: 20, scope: !123)
!126 = !DILocation(line: 74, column: 13, scope: !123)
!127 = !DILocation(line: 74, column: 8, scope: !123)
!128 = !DILocation(line: 74, column: 34, scope: !123)
!129 = !DILocation(line: 74, column: 31, scope: !123)
!130 = !DILocation(line: 74, column: 8, scope: !124)
!131 = !DILocation(line: 76, column: 18, scope: !132)
!132 = distinct !DILexicalBlock(scope: !123, file: !45, line: 74, column: 39)
!133 = !DILocation(line: 76, column: 15, scope: !132)
!134 = !DILocation(line: 76, column: 12, scope: !132)
!135 = !DILocation(line: 76, column: 5, scope: !132)
!136 = !DILocation(line: 78, column: 8, scope: !137)
!137 = distinct !DILexicalBlock(scope: !124, file: !45, line: 78, column: 8)
!138 = !DILocation(line: 78, column: 14, scope: !137)
!139 = !DILocation(line: 78, column: 8, scope: !124)
!140 = !DILocation(line: 80, column: 5, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !45, line: 78, column: 19)
!142 = !DILocation(line: 82, column: 18, scope: !124)
!143 = !DILocation(line: 82, column: 15, scope: !124)
!144 = !DILocation(line: 82, column: 12, scope: !124)
!145 = !DILocation(line: 82, column: 10, scope: !124)
!146 = !DILocation(line: 83, column: 3, scope: !124)
!147 = !DILocation(line: 84, column: 2, scope: !115)
!148 = !DILocation(line: 72, column: 33, scope: !149)
!149 = !DILexicalBlockFile(scope: !109, file: !45, discriminator: 2)
!150 = !DILocation(line: 72, column: 2, scope: !149)
!151 = distinct !{!151, !152}
!152 = !DILocation(line: 72, column: 2, scope: !52)
!153 = !DILocation(line: 86, column: 9, scope: !52)
!154 = !DILocation(line: 86, column: 2, scope: !52)
!155 = !DILocation(line: 87, column: 1, scope: !52)
!156 = distinct !DISubprogram(name: "level2bits", scope: !45, file: !45, line: 89, type: !157, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!157 = !DISubroutineType(types: !158)
!158 = !{!36, !41, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!160 = !DILocalVariable(name: "level", arg: 1, scope: !156, file: !45, line: 89, type: !41)
!161 = !DILocation(line: 89, column: 28, scope: !156)
!162 = !DILocalVariable(name: "errorp", arg: 2, scope: !156, file: !45, line: 89, type: !159)
!163 = !DILocation(line: 89, column: 40, scope: !156)
!164 = !DILocalVariable(name: "orig", scope: !156, file: !45, line: 91, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!166 = !DILocation(line: 91, column: 8, scope: !156)
!167 = !DILocalVariable(name: "str", scope: !156, file: !45, line: 91, type: !165)
!168 = !DILocation(line: 91, column: 15, scope: !156)
!169 = !DILocalVariable(name: "ptr", scope: !156, file: !45, line: 91, type: !165)
!170 = !DILocation(line: 91, column: 21, scope: !156)
!171 = !DILocalVariable(name: "ret", scope: !156, file: !45, line: 92, type: !36)
!172 = !DILocation(line: 92, column: 6, scope: !156)
!173 = !DILocalVariable(name: "singlelevel", scope: !156, file: !45, line: 92, type: !36)
!174 = !DILocation(line: 92, column: 11, scope: !156)
!175 = !DILocalVariable(name: "negative", scope: !156, file: !45, line: 92, type: !36)
!176 = !DILocation(line: 92, column: 24, scope: !156)
!177 = !DILocation(line: 94, column: 6, scope: !178)
!178 = distinct !DILexicalBlock(scope: !156, file: !45, line: 94, column: 6)
!179 = !DILocation(line: 94, column: 13, scope: !178)
!180 = !DILocation(line: 94, column: 6, scope: !156)
!181 = !DILocation(line: 95, column: 4, scope: !178)
!182 = !DILocation(line: 95, column: 11, scope: !178)
!183 = !DILocation(line: 95, column: 3, scope: !178)
!184 = !DILocation(line: 97, column: 2, scope: !156)
!185 = distinct !{!185, !184}
!186 = !DILocation(line: 97, column: 10, scope: !187)
!187 = !DILexicalBlockFile(scope: !188, file: !45, discriminator: 1)
!188 = distinct !DILexicalBlock(scope: !189, file: !45, line: 97, column: 10)
!189 = distinct !DILexicalBlock(scope: !156, file: !45, line: 97, column: 4)
!190 = !DILocation(line: 97, column: 16, scope: !187)
!191 = !DILocation(line: 97, column: 5, scope: !192)
!192 = !DILexicalBlockFile(scope: !193, file: !45, discriminator: 2)
!193 = distinct !DILexicalBlock(scope: !188, file: !45, line: 97, column: 3)
!194 = !DILocation(line: 97, column: 14, scope: !195)
!195 = !DILexicalBlockFile(scope: !196, file: !45, discriminator: 3)
!196 = distinct !DILexicalBlock(scope: !188, file: !45, line: 97, column: 12)
!197 = !DILocation(line: 97, column: 100, scope: !195)
!198 = !DILocation(line: 97, column: 115, scope: !199)
!199 = !DILexicalBlockFile(scope: !189, file: !45, discriminator: 4)
!200 = !DILocation(line: 99, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !156, file: !45, line: 99, column: 6)
!202 = !DILocation(line: 99, column: 6, scope: !201)
!203 = !DILocation(line: 99, column: 13, scope: !201)
!204 = !DILocation(line: 99, column: 6, scope: !156)
!205 = !DILocation(line: 100, column: 3, scope: !201)
!206 = !DILocation(line: 102, column: 24, scope: !156)
!207 = !DILocation(line: 102, column: 15, scope: !156)
!208 = !DILocation(line: 102, column: 13, scope: !156)
!209 = !DILocation(line: 102, column: 7, scope: !156)
!210 = !DILocation(line: 104, column: 6, scope: !156)
!211 = !DILocation(line: 105, column: 13, scope: !212)
!212 = distinct !DILexicalBlock(scope: !156, file: !45, line: 105, column: 2)
!213 = !DILocation(line: 105, column: 11, scope: !212)
!214 = !DILocation(line: 105, column: 7, scope: !212)
!215 = !DILocation(line: 106, column: 8, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !45, line: 106, column: 7)
!217 = distinct !DILexicalBlock(scope: !218, file: !45, line: 105, column: 27)
!218 = distinct !DILexicalBlock(scope: !212, file: !45, line: 105, column: 2)
!219 = !DILocation(line: 106, column: 7, scope: !216)
!220 = !DILocation(line: 106, column: 12, scope: !216)
!221 = !DILocation(line: 106, column: 7, scope: !217)
!222 = !DILocation(line: 107, column: 8, scope: !216)
!223 = !DILocation(line: 107, column: 11, scope: !216)
!224 = !DILocation(line: 107, column: 4, scope: !216)
!225 = !DILocation(line: 108, column: 13, scope: !226)
!226 = distinct !DILexicalBlock(scope: !216, file: !45, line: 108, column: 12)
!227 = !DILocation(line: 108, column: 12, scope: !226)
!228 = !DILocation(line: 108, column: 17, scope: !226)
!229 = !DILocation(line: 108, column: 12, scope: !216)
!230 = !DILocation(line: 109, column: 4, scope: !226)
!231 = !DILocation(line: 111, column: 15, scope: !217)
!232 = !DILocation(line: 111, column: 14, scope: !217)
!233 = !DILocation(line: 111, column: 19, scope: !217)
!234 = !DILocation(line: 111, column: 12, scope: !217)
!235 = !DILocation(line: 112, column: 8, scope: !236)
!236 = distinct !DILexicalBlock(scope: !217, file: !45, line: 112, column: 7)
!237 = !DILocation(line: 112, column: 7, scope: !236)
!238 = !DILocation(line: 112, column: 12, scope: !236)
!239 = !DILocation(line: 112, column: 19, scope: !236)
!240 = !DILocation(line: 112, column: 23, scope: !241)
!241 = !DILexicalBlockFile(scope: !236, file: !45, discriminator: 1)
!242 = !DILocation(line: 112, column: 22, scope: !241)
!243 = !DILocation(line: 112, column: 27, scope: !241)
!244 = !DILocation(line: 112, column: 7, scope: !241)
!245 = !DILocation(line: 112, column: 38, scope: !246)
!246 = !DILexicalBlockFile(scope: !236, file: !45, discriminator: 2)
!247 = !DILocation(line: 112, column: 35, scope: !246)
!248 = !DILocation(line: 114, column: 27, scope: !217)
!249 = !DILocation(line: 114, column: 17, scope: !217)
!250 = !DILocation(line: 114, column: 15, scope: !217)
!251 = !DILocation(line: 115, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !217, file: !45, line: 115, column: 7)
!253 = !DILocation(line: 115, column: 19, scope: !252)
!254 = !DILocation(line: 115, column: 7, scope: !217)
!255 = !DILocation(line: 116, column: 11, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !45, line: 115, column: 25)
!257 = !DILocation(line: 116, column: 10, scope: !256)
!258 = !DILocation(line: 116, column: 23, scope: !259)
!259 = !DILexicalBlockFile(scope: !256, file: !45, discriminator: 1)
!260 = !DILocation(line: 116, column: 29, scope: !259)
!261 = !DILocation(line: 116, column: 27, scope: !259)
!262 = !DILocation(line: 116, column: 10, scope: !259)
!263 = !DILocation(line: 117, column: 6, scope: !256)
!264 = !DILocation(line: 117, column: 13, scope: !256)
!265 = !DILocation(line: 117, column: 12, scope: !256)
!266 = !DILocation(line: 117, column: 10, scope: !256)
!267 = !DILocation(line: 116, column: 10, scope: !268)
!268 = !DILexicalBlockFile(scope: !256, file: !45, discriminator: 2)
!269 = !DILocation(line: 116, column: 10, scope: !270)
!270 = !DILexicalBlockFile(scope: !256, file: !45, discriminator: 3)
!271 = !DILocation(line: 116, column: 8, scope: !270)
!272 = !DILocation(line: 118, column: 3, scope: !256)
!273 = !DILocation(line: 118, column: 14, scope: !274)
!274 = !DILexicalBlockFile(scope: !275, file: !45, discriminator: 1)
!275 = distinct !DILexicalBlock(scope: !252, file: !45, line: 118, column: 14)
!276 = !DILocation(line: 118, column: 21, scope: !274)
!277 = !DILocation(line: 119, column: 5, scope: !275)
!278 = !DILocation(line: 119, column: 12, scope: !275)
!279 = !DILocation(line: 119, column: 4, scope: !275)
!280 = !DILocation(line: 121, column: 10, scope: !217)
!281 = !DILocation(line: 121, column: 18, scope: !282)
!282 = !DILexicalBlockFile(scope: !217, file: !45, discriminator: 1)
!283 = !DILocation(line: 121, column: 17, scope: !282)
!284 = !DILocation(line: 121, column: 22, scope: !282)
!285 = !DILocation(line: 121, column: 10, scope: !282)
!286 = !DILocation(line: 121, column: 33, scope: !287)
!287 = !DILexicalBlockFile(scope: !217, file: !45, discriminator: 2)
!288 = !DILocation(line: 121, column: 10, scope: !287)
!289 = distinct !{!289, !280}
!290 = !DILocation(line: 122, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !217, file: !45, line: 122, column: 7)
!292 = !DILocation(line: 122, column: 7, scope: !291)
!293 = !DILocation(line: 122, column: 12, scope: !291)
!294 = !DILocation(line: 122, column: 7, scope: !217)
!295 = !DILocation(line: 122, column: 21, scope: !296)
!296 = !DILexicalBlockFile(scope: !291, file: !45, discriminator: 1)
!297 = !DILocation(line: 124, column: 16, scope: !217)
!298 = !DILocation(line: 124, column: 14, scope: !217)
!299 = !DILocation(line: 125, column: 2, scope: !217)
!300 = !DILocation(line: 105, column: 23, scope: !301)
!301 = !DILexicalBlockFile(scope: !218, file: !45, discriminator: 1)
!302 = !DILocation(line: 105, column: 2, scope: !301)
!303 = distinct !{!303, !304}
!304 = !DILocation(line: 105, column: 2, scope: !156)
!305 = !DILocation(line: 126, column: 9, scope: !156)
!306 = !DILocation(line: 126, column: 2, scope: !156)
!307 = !DILocation(line: 128, column: 9, scope: !156)
!308 = !DILocation(line: 128, column: 2, scope: !156)
!309 = !DILocation(line: 129, column: 1, scope: !156)
!310 = distinct !DISubprogram(name: "bits2level", scope: !45, file: !45, line: 131, type: !311, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!311 = !DISubroutineType(types: !312)
!312 = !{!165, !36}
!313 = !DILocalVariable(name: "bits", arg: 1, scope: !310, file: !45, line: 131, type: !36)
!314 = !DILocation(line: 131, column: 22, scope: !310)
!315 = !DILocalVariable(name: "str", scope: !310, file: !45, line: 133, type: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !318, line: 39, baseType: !319)
!318 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !318, line: 41, size: 192, align: 64, elements: !320)
!320 = !{!321, !322, !326}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !319, file: !318, line: 43, baseType: !37, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !319, file: !318, line: 44, baseType: !323, size: 64, align: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !324, line: 66, baseType: !325)
!324 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!325 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !319, file: !318, line: 45, baseType: !323, size: 64, align: 64, offset: 128)
!327 = !DILocation(line: 133, column: 11, scope: !310)
!328 = !DILocalVariable(name: "ret", scope: !310, file: !45, line: 134, type: !165)
!329 = !DILocation(line: 134, column: 8, scope: !310)
!330 = !DILocalVariable(name: "n", scope: !310, file: !45, line: 135, type: !36)
!331 = !DILocation(line: 135, column: 6, scope: !310)
!332 = !DILocation(line: 137, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !310, file: !45, line: 137, column: 6)
!334 = !DILocation(line: 137, column: 11, scope: !333)
!335 = !DILocation(line: 137, column: 6, scope: !310)
!336 = !DILocation(line: 138, column: 10, scope: !333)
!337 = !DILocation(line: 138, column: 3, scope: !333)
!338 = !DILocation(line: 141, column: 8, scope: !310)
!339 = !DILocation(line: 141, column: 6, scope: !310)
!340 = !DILocation(line: 142, column: 6, scope: !341)
!341 = distinct !DILexicalBlock(scope: !310, file: !45, line: 142, column: 6)
!342 = !DILocation(line: 142, column: 11, scope: !341)
!343 = !DILocation(line: 142, column: 6, scope: !310)
!344 = !DILocation(line: 143, column: 19, scope: !341)
!345 = !DILocation(line: 143, column: 3, scope: !341)
!346 = !DILocation(line: 145, column: 6, scope: !347)
!347 = distinct !DILexicalBlock(scope: !310, file: !45, line: 145, column: 6)
!348 = !DILocation(line: 145, column: 11, scope: !347)
!349 = !DILocation(line: 145, column: 6, scope: !310)
!350 = !DILocation(line: 146, column: 19, scope: !347)
!351 = !DILocation(line: 146, column: 3, scope: !347)
!352 = !DILocation(line: 148, column: 7, scope: !353)
!353 = distinct !DILexicalBlock(scope: !310, file: !45, line: 148, column: 6)
!354 = !DILocation(line: 148, column: 12, scope: !353)
!355 = !DILocation(line: 148, column: 28, scope: !353)
!356 = !DILocation(line: 148, column: 6, scope: !310)
!357 = !DILocation(line: 149, column: 19, scope: !358)
!358 = distinct !DILexicalBlock(scope: !353, file: !45, line: 148, column: 45)
!359 = !DILocation(line: 149, column: 3, scope: !358)
!360 = !DILocation(line: 150, column: 2, scope: !358)
!361 = !DILocation(line: 151, column: 10, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !45, line: 151, column: 3)
!363 = distinct !DILexicalBlock(scope: !353, file: !45, line: 150, column: 9)
!364 = !DILocation(line: 151, column: 8, scope: !362)
!365 = !DILocation(line: 151, column: 22, scope: !366)
!366 = !DILexicalBlockFile(scope: !367, file: !45, discriminator: 1)
!367 = distinct !DILexicalBlock(scope: !362, file: !45, line: 151, column: 3)
!368 = !DILocation(line: 151, column: 15, scope: !366)
!369 = !DILocation(line: 151, column: 25, scope: !366)
!370 = !DILocation(line: 151, column: 3, scope: !366)
!371 = !DILocation(line: 152, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !45, line: 152, column: 8)
!373 = distinct !DILexicalBlock(scope: !367, file: !45, line: 151, column: 38)
!374 = !DILocation(line: 152, column: 22, scope: !372)
!375 = !DILocation(line: 152, column: 19, scope: !372)
!376 = !DILocation(line: 152, column: 13, scope: !372)
!377 = !DILocation(line: 152, column: 8, scope: !373)
!378 = !DILocation(line: 153, column: 28, scope: !372)
!379 = !DILocation(line: 153, column: 47, scope: !372)
!380 = !DILocation(line: 153, column: 40, scope: !372)
!381 = !DILocation(line: 153, column: 5, scope: !372)
!382 = !DILocation(line: 154, column: 3, scope: !373)
!383 = !DILocation(line: 151, column: 34, scope: !384)
!384 = !DILexicalBlockFile(scope: !367, file: !45, discriminator: 2)
!385 = !DILocation(line: 151, column: 3, scope: !384)
!386 = distinct !{!386, !387}
!387 = !DILocation(line: 151, column: 3, scope: !363)
!388 = !DILocation(line: 157, column: 6, scope: !389)
!389 = distinct !DILexicalBlock(scope: !310, file: !45, line: 157, column: 6)
!390 = !DILocation(line: 157, column: 11, scope: !389)
!391 = !DILocation(line: 157, column: 6, scope: !310)
!392 = !DILocation(line: 158, column: 19, scope: !389)
!393 = !DILocation(line: 158, column: 3, scope: !389)
!394 = !DILocation(line: 160, column: 13, scope: !395)
!395 = distinct !DILexicalBlock(scope: !310, file: !45, line: 160, column: 13)
!396 = !DILocation(line: 160, column: 18, scope: !395)
!397 = !DILocation(line: 160, column: 22, scope: !395)
!398 = !DILocation(line: 160, column: 13, scope: !310)
!399 = !DILocation(line: 161, column: 21, scope: !395)
!400 = !DILocation(line: 161, column: 26, scope: !395)
!401 = !DILocation(line: 161, column: 31, scope: !395)
!402 = !DILocation(line: 161, column: 34, scope: !395)
!403 = !DILocation(line: 161, column: 3, scope: !395)
!404 = !DILocation(line: 163, column: 8, scope: !310)
!405 = !DILocation(line: 163, column: 13, scope: !310)
!406 = !DILocation(line: 163, column: 6, scope: !310)
!407 = !DILocation(line: 164, column: 16, scope: !310)
!408 = !DILocation(line: 164, column: 2, scope: !310)
!409 = !DILocation(line: 166, column: 9, scope: !310)
!410 = !DILocation(line: 166, column: 2, scope: !310)
!411 = !DILocation(line: 167, column: 1, scope: !310)
!412 = distinct !DISubprogram(name: "combine_level", scope: !45, file: !45, line: 169, type: !413, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!413 = !DISubroutineType(types: !414)
!414 = !{!36, !36, !41}
!415 = !DILocalVariable(name: "dest", arg: 1, scope: !412, file: !45, line: 169, type: !36)
!416 = !DILocation(line: 169, column: 23, scope: !412)
!417 = !DILocalVariable(name: "src", arg: 2, scope: !412, file: !45, line: 169, type: !41)
!418 = !DILocation(line: 169, column: 41, scope: !412)
!419 = !DILocalVariable(name: "list", scope: !412, file: !45, line: 171, type: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!421 = !DILocation(line: 171, column: 9, scope: !412)
!422 = !DILocalVariable(name: "item", scope: !412, file: !45, line: 171, type: !420)
!423 = !DILocation(line: 171, column: 17, scope: !412)
!424 = !DILocalVariable(name: "itemname", scope: !412, file: !45, line: 171, type: !165)
!425 = !DILocation(line: 171, column: 24, scope: !412)
!426 = !DILocalVariable(name: "itemlevel", scope: !412, file: !45, line: 172, type: !36)
!427 = !DILocation(line: 172, column: 6, scope: !412)
!428 = !DILocation(line: 174, column: 2, scope: !412)
!429 = distinct !{!429, !428}
!430 = !DILocation(line: 174, column: 10, scope: !431)
!431 = !DILexicalBlockFile(scope: !432, file: !45, discriminator: 1)
!432 = distinct !DILexicalBlock(scope: !433, file: !45, line: 174, column: 10)
!433 = distinct !DILexicalBlock(scope: !412, file: !45, line: 174, column: 4)
!434 = !DILocation(line: 174, column: 14, scope: !431)
!435 = !DILocation(line: 174, column: 5, scope: !436)
!436 = !DILexicalBlockFile(scope: !437, file: !45, discriminator: 2)
!437 = distinct !DILexicalBlock(scope: !432, file: !45, line: 174, column: 3)
!438 = !DILocation(line: 174, column: 14, scope: !439)
!439 = !DILexicalBlockFile(scope: !440, file: !45, discriminator: 3)
!440 = distinct !DILexicalBlock(scope: !432, file: !45, line: 174, column: 12)
!441 = !DILocation(line: 174, column: 106, scope: !439)
!442 = !DILocation(line: 174, column: 98, scope: !439)
!443 = !DILocation(line: 174, column: 116, scope: !444)
!444 = !DILexicalBlockFile(scope: !433, file: !45, discriminator: 4)
!445 = !DILocation(line: 176, column: 20, scope: !412)
!446 = !DILocation(line: 176, column: 9, scope: !412)
!447 = !DILocation(line: 176, column: 7, scope: !412)
!448 = !DILocation(line: 177, column: 14, scope: !449)
!449 = distinct !DILexicalBlock(scope: !412, file: !45, line: 177, column: 2)
!450 = !DILocation(line: 177, column: 12, scope: !449)
!451 = !DILocation(line: 177, column: 7, scope: !449)
!452 = !DILocation(line: 177, column: 21, scope: !453)
!453 = !DILexicalBlockFile(scope: !454, file: !45, discriminator: 1)
!454 = distinct !DILexicalBlock(scope: !449, file: !45, line: 177, column: 2)
!455 = !DILocation(line: 177, column: 20, scope: !453)
!456 = !DILocation(line: 177, column: 26, scope: !453)
!457 = !DILocation(line: 177, column: 2, scope: !453)
!458 = !DILocation(line: 178, column: 15, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !45, line: 177, column: 42)
!460 = !DILocation(line: 178, column: 14, scope: !459)
!461 = !DILocation(line: 178, column: 25, scope: !459)
!462 = !DILocation(line: 178, column: 24, scope: !459)
!463 = !DILocation(line: 178, column: 23, scope: !459)
!464 = !DILocation(line: 178, column: 30, scope: !459)
!465 = !DILocation(line: 178, column: 37, scope: !459)
!466 = !DILocation(line: 178, column: 42, scope: !467)
!467 = !DILexicalBlockFile(scope: !459, file: !45, discriminator: 1)
!468 = !DILocation(line: 178, column: 41, scope: !467)
!469 = !DILocation(line: 178, column: 40, scope: !467)
!470 = !DILocation(line: 178, column: 47, scope: !467)
!471 = !DILocation(line: 178, column: 37, scope: !467)
!472 = !DILocation(line: 178, column: 23, scope: !473)
!473 = !DILexicalBlockFile(scope: !459, file: !45, discriminator: 2)
!474 = !DILocation(line: 178, column: 20, scope: !473)
!475 = !DILocation(line: 178, column: 12, scope: !473)
!476 = !DILocation(line: 179, column: 25, scope: !459)
!477 = !DILocation(line: 179, column: 15, scope: !459)
!478 = !DILocation(line: 179, column: 13, scope: !459)
!479 = !DILocation(line: 181, column: 17, scope: !480)
!480 = distinct !DILexicalBlock(scope: !459, file: !45, line: 181, column: 7)
!481 = !DILocation(line: 181, column: 7, scope: !480)
!482 = !DILocation(line: 181, column: 35, scope: !480)
!483 = !DILocation(line: 181, column: 7, scope: !459)
!484 = !DILocation(line: 182, column: 30, scope: !480)
!485 = !DILocation(line: 182, column: 25, scope: !480)
!486 = !DILocation(line: 183, column: 14, scope: !487)
!487 = distinct !DILexicalBlock(scope: !480, file: !45, line: 183, column: 12)
!488 = !DILocation(line: 183, column: 13, scope: !487)
!489 = !DILocation(line: 183, column: 12, scope: !487)
!490 = !DILocation(line: 183, column: 19, scope: !487)
!491 = !DILocation(line: 183, column: 12, scope: !480)
!492 = !DILocation(line: 184, column: 14, scope: !487)
!493 = !DILocation(line: 184, column: 12, scope: !487)
!494 = !DILocation(line: 184, column: 9, scope: !487)
!495 = !DILocation(line: 184, column: 4, scope: !487)
!496 = !DILocation(line: 186, column: 12, scope: !487)
!497 = !DILocation(line: 186, column: 9, scope: !487)
!498 = !DILocation(line: 187, column: 2, scope: !459)
!499 = !DILocation(line: 177, column: 38, scope: !500)
!500 = !DILexicalBlockFile(scope: !454, file: !45, discriminator: 2)
!501 = !DILocation(line: 177, column: 2, scope: !500)
!502 = distinct !{!502, !503}
!503 = !DILocation(line: 177, column: 2, scope: !412)
!504 = !DILocation(line: 188, column: 13, scope: !412)
!505 = !DILocation(line: 188, column: 2, scope: !412)
!506 = !DILocation(line: 190, column: 9, scope: !412)
!507 = !DILocation(line: 190, column: 2, scope: !412)
!508 = !DILocation(line: 191, column: 1, scope: !412)
