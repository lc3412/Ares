; ModuleID = './fileTemp.o.i'
source_filename = "./fileTemp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"safeDir\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vmware\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"FILE: Failed to create temporary %s \22%s\22, errno: %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"FILE: Failed to create temporary %s \22%s\22: The name space is full.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1

; Function Attrs: nounwind uwtable
define i32 @File_MakeTempEx2(i8*, i8 signext, i8* (i32, i8*)*, i8*, i8**) #0 !dbg !15 {
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8* (i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !32, metadata !33), !dbg !34
  store i8 %1, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !35, metadata !33), !dbg !36
  store i8* (i32, i8*)* %2, i8* (i32, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata i8* (i32, i8*)** %8, metadata !37, metadata !33), !dbg !38
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !39, metadata !33), !dbg !40
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !41, metadata !33), !dbg !42
  %11 = load i8*, i8** %6, align 8, !dbg !43
  %12 = load i8, i8* %7, align 1, !dbg !44
  %13 = load i8* (i32, i8*)*, i8* (i32, i8*)** %8, align 8, !dbg !45
  %14 = load i8*, i8** %9, align 8, !dbg !46
  %15 = load i8**, i8*** %10, align 8, !dbg !47
  %16 = call i32 @FileMakeTempEx2Work(i8* %11, i8 signext %12, i8 signext 0, i8* (i32, i8*)* %13, i8* %14, i8** %15), !dbg !48
  ret i32 %16, !dbg !49
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @FileMakeTempEx2Work(i8*, i8 signext, i8 signext, i8* (i32, i8*)*, i8*, i8**) #0 !dbg !50 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8* (i32, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !53, metadata !33), !dbg !54
  store i8 %1, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !55, metadata !33), !dbg !56
  store i8 %2, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !57, metadata !33), !dbg !58
  store i8* (i32, i8*)* %3, i8* (i32, i8*)** %11, align 8
  call void @llvm.dbg.declare(metadata i8* (i32, i8*)** %11, metadata !59, metadata !33), !dbg !60
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !61, metadata !33), !dbg !62
  store i8** %5, i8*** %13, align 8
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !63, metadata !33), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %14, metadata !65, metadata !33), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %15, metadata !67, metadata !33), !dbg !68
  store i32 -1, i32* %15, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %16, metadata !69, metadata !33), !dbg !70
  store i32 0, i32* %16, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i8** %17, metadata !71, metadata !33), !dbg !72
  store i8* null, i8** %17, align 8, !dbg !72
  %19 = load i8*, i8** %8, align 8, !dbg !73
  %20 = icmp eq i8* %19, null, !dbg !75
  br i1 %20, label %24, label %21, !dbg !76

; <label>:21:                                     ; preds = %6
  %22 = load i8* (i32, i8*)*, i8* (i32, i8*)** %11, align 8, !dbg !77
  %23 = icmp eq i8* (i32, i8*)* %22, null, !dbg !79
  br i1 %23, label %24, label %26, !dbg !80

; <label>:24:                                     ; preds = %21, %6
  %25 = call i32* @__errno_location() #1, !dbg !81
  store i32 14, i32* %25, align 4, !dbg !83
  store i32 -1, i32* %7, align 4, !dbg !84
  br label %101, !dbg !84

; <label>:26:                                     ; preds = %21
  %27 = load i8**, i8*** %13, align 8, !dbg !85
  store i8* null, i8** %27, align 8, !dbg !86
  store i32 0, i32* %14, align 4, !dbg !87
  br label %28, !dbg !89

; <label>:28:                                     ; preds = %84, %26
  %29 = load i32, i32* %14, align 4, !dbg !90
  %30 = icmp ult i32 %29, 1073741823, !dbg !93
  br i1 %30, label %31, label %87, !dbg !94

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata i8** %18, metadata !95, metadata !33), !dbg !97
  %32 = load i8*, i8** %17, align 8, !dbg !98
  call void @Posix_Free(i8* %32), !dbg !99
  store i8* null, i8** %17, align 8, !dbg !100
  %33 = load i8, i8* %9, align 1, !dbg !101
  call void @FileTempNum(i8 signext %33, i32* %16), !dbg !102
  %34 = load i8* (i32, i8*)*, i8* (i32, i8*)** %11, align 8, !dbg !103
  %35 = load i32, i32* %16, align 4, !dbg !104
  %36 = load i8*, i8** %12, align 8, !dbg !105
  %37 = call i8* %34(i32 %35, i8* %36), !dbg !106
  store i8* %37, i8** %18, align 8, !dbg !107
  %38 = load i8, i8* %9, align 1, !dbg !108
  %39 = icmp ne i8 %38, 0, !dbg !108
  br i1 %39, label %40, label %46, !dbg !110

; <label>:40:                                     ; preds = %31
  %41 = load i8*, i8** %8, align 8, !dbg !111
  %42 = load i8*, i8** %18, align 8, !dbg !113
  %43 = call i8* @File_PathJoin(i8* %41, i8* %42), !dbg !114
  store i8* %43, i8** %17, align 8, !dbg !115
  %44 = load i8*, i8** %17, align 8, !dbg !116
  %45 = call i32 (i8*, i32, ...) @Posix_Open(i8* %44, i32 194, i32 384), !dbg !117
  store i32 %45, i32* %15, align 4, !dbg !118
  br label %64, !dbg !119

; <label>:46:                                     ; preds = %31
  %47 = load i8, i8* %10, align 1, !dbg !120
  %48 = icmp ne i8 %47, 0, !dbg !120
  br i1 %48, label %49, label %57, !dbg !123

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %8, align 8, !dbg !124
  %51 = load i8*, i8** %18, align 8, !dbg !126
  %52 = call i8* @File_MakeSafeTempSubdir(i8* %50, i8* %51), !dbg !127
  store i8* %52, i8** %17, align 8, !dbg !128
  %53 = load i8*, i8** %17, align 8, !dbg !129
  %54 = icmp ne i8* %53, null, !dbg !131
  br i1 %54, label %55, label %56, !dbg !132

; <label>:55:                                     ; preds = %49
  store i32 0, i32* %15, align 4, !dbg !133
  br label %56, !dbg !135

; <label>:56:                                     ; preds = %55, %49
  br label %63, !dbg !136

; <label>:57:                                     ; preds = %46
  %58 = load i8*, i8** %8, align 8, !dbg !137
  %59 = load i8*, i8** %18, align 8, !dbg !139
  %60 = call i8* @File_PathJoin(i8* %58, i8* %59), !dbg !140
  store i8* %60, i8** %17, align 8, !dbg !141
  %61 = load i8*, i8** %17, align 8, !dbg !142
  %62 = call i32 @Posix_Mkdir(i8* %61, i32 448), !dbg !143
  store i32 %62, i32* %15, align 4, !dbg !144
  br label %63

; <label>:63:                                     ; preds = %57, %56
  br label %64

; <label>:64:                                     ; preds = %63, %40
  %65 = load i8*, i8** %18, align 8, !dbg !145
  call void @Posix_Free(i8* %65), !dbg !146
  %66 = load i32, i32* %15, align 4, !dbg !147
  %67 = icmp ne i32 %66, -1, !dbg !149
  br i1 %67, label %68, label %71, !dbg !150

; <label>:68:                                     ; preds = %64
  %69 = load i8*, i8** %17, align 8, !dbg !151
  %70 = load i8**, i8*** %13, align 8, !dbg !153
  store i8* %69, i8** %70, align 8, !dbg !154
  store i8* null, i8** %17, align 8, !dbg !155
  br label %87, !dbg !156

; <label>:71:                                     ; preds = %64
  %72 = call i32* @__errno_location() #1, !dbg !157
  %73 = load i32, i32* %72, align 4, !dbg !159
  %74 = icmp ne i32 %73, 17, !dbg !160
  br i1 %74, label %75, label %83, !dbg !161

; <label>:75:                                     ; preds = %71
  %76 = load i8, i8* %9, align 1, !dbg !162
  %77 = sext i8 %76 to i32, !dbg !162
  %78 = icmp ne i32 %77, 0, !dbg !162
  %79 = select i1 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), !dbg !162
  %80 = load i8*, i8** %17, align 8, !dbg !164
  %81 = call i32* @__errno_location() #1, !dbg !165
  %82 = load i32, i32* %81, align 4, !dbg !166
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* %79, i8* %80, i32 %82), !dbg !167
  br label %98, !dbg !168

; <label>:83:                                     ; preds = %71
  br label %84, !dbg !169

; <label>:84:                                     ; preds = %83
  %85 = load i32, i32* %14, align 4, !dbg !170
  %86 = add i32 %85, 1, !dbg !170
  store i32 %86, i32* %14, align 4, !dbg !170
  br label %28, !dbg !172, !llvm.loop !173

; <label>:87:                                     ; preds = %68, %28
  %88 = load i32, i32* %15, align 4, !dbg !175
  %89 = icmp eq i32 %88, -1, !dbg !177
  br i1 %89, label %90, label %97, !dbg !178

; <label>:90:                                     ; preds = %87
  %91 = load i8, i8* %9, align 1, !dbg !179
  %92 = sext i8 %91 to i32, !dbg !179
  %93 = icmp ne i32 %92, 0, !dbg !179
  %94 = select i1 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), !dbg !179
  %95 = load i8*, i8** %17, align 8, !dbg !181
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i32 0, i32 0), i8* %94, i8* %95), !dbg !182
  %96 = call i32* @__errno_location() #1, !dbg !183
  store i32 11, i32* %96, align 4, !dbg !184
  br label %97, !dbg !185

; <label>:97:                                     ; preds = %90, %87
  br label %98, !dbg !186

; <label>:98:                                     ; preds = %97, %75
  %99 = load i8*, i8** %17, align 8, !dbg !188
  call void @Posix_Free(i8* %99), !dbg !189
  %100 = load i32, i32* %15, align 4, !dbg !190
  store i32 %100, i32* %7, align 4, !dbg !191
  br label %101, !dbg !191

; <label>:101:                                    ; preds = %98, %24
  %102 = load i32, i32* %7, align 4, !dbg !192
  ret i32 %102, !dbg !192
}

; Function Attrs: nounwind uwtable
define i32 @File_MakeTempEx(i8*, i8*, i8**) #0 !dbg !193 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !196, metadata !33), !dbg !197
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !198, metadata !33), !dbg !199
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !200, metadata !33), !dbg !201
  %7 = load i8*, i8** %4, align 8, !dbg !202
  %8 = load i8*, i8** %5, align 8, !dbg !203
  %9 = load i8**, i8*** %6, align 8, !dbg !204
  %10 = call i32 @File_MakeTempEx2(i8* %7, i8 signext 1, i8* (i32, i8*)* @FileMakeTempExCreateNameFunc, i8* %8, i8** %9), !dbg !205
  ret i32 %10, !dbg !206
}

; Function Attrs: nounwind uwtable
define internal i8* @FileMakeTempExCreateNameFunc(i32, i8*) #0 !dbg !207 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !208, metadata !33), !dbg !209
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !210, metadata !33), !dbg !211
  %6 = load i8*, i8** %5, align 8, !dbg !212
  %7 = icmp eq i8* %6, null, !dbg !214
  br i1 %7, label %8, label %9, !dbg !215

; <label>:8:                                      ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !216
  br label %13, !dbg !216

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %5, align 8, !dbg !218
  %11 = load i32, i32* %4, align 4, !dbg !219
  %12 = call i8* (i8*, ...) @Unicode_Format(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %10, i32 %11), !dbg !220
  store i8* %12, i8** %3, align 8, !dbg !221
  br label %13, !dbg !221

; <label>:13:                                     ; preds = %9, %8
  %14 = load i8*, i8** %3, align 8, !dbg !222
  ret i8* %14, !dbg !222
}

; Function Attrs: nounwind uwtable
define i8* @File_MakeSafeTempDir(i8*) #0 !dbg !223 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !226, metadata !33), !dbg !227
  call void @llvm.dbg.declare(metadata i8** %3, metadata !228, metadata !33), !dbg !229
  store i8* null, i8** %3, align 8, !dbg !229
  call void @llvm.dbg.declare(metadata i8** %4, metadata !230, metadata !33), !dbg !231
  %6 = call i8* @File_GetSafeTmpDir(i8 signext 1), !dbg !232
  store i8* %6, i8** %4, align 8, !dbg !231
  %7 = load i8*, i8** %4, align 8, !dbg !233
  %8 = icmp ne i8* %7, null, !dbg !235
  br i1 %8, label %9, label %21, !dbg !236

; <label>:9:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %5, metadata !237, metadata !33), !dbg !239
  %10 = load i8*, i8** %2, align 8, !dbg !240
  %11 = icmp eq i8* %10, null, !dbg !241
  br i1 %11, label %12, label %13, !dbg !242

; <label>:12:                                     ; preds = %9
  br label %15, !dbg !243

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %2, align 8, !dbg !245
  br label %15, !dbg !247

; <label>:15:                                     ; preds = %13, %12
  %16 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %12 ], [ %14, %13 ], !dbg !248
  store i8* %16, i8** %5, align 8, !dbg !250
  %17 = load i8*, i8** %4, align 8, !dbg !251
  %18 = load i8*, i8** %5, align 8, !dbg !252
  %19 = call i32 @FileMakeTempEx2Work(i8* %17, i8 signext 0, i8 signext 1, i8* (i32, i8*)* @FileMakeTempExCreateNameFunc, i8* %18, i8** %3), !dbg !253
  %20 = load i8*, i8** %4, align 8, !dbg !254
  call void @Posix_Free(i8* %20), !dbg !255
  br label %21, !dbg !256

; <label>:21:                                     ; preds = %15, %1
  %22 = load i8*, i8** %3, align 8, !dbg !257
  ret i8* %22, !dbg !258
}

declare i8* @File_GetSafeTmpDir(i8 signext) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @Posix_Free(i8*) #3 !dbg !259 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !263, metadata !33), !dbg !264
  call void @llvm.dbg.declare(metadata i32* %3, metadata !265, metadata !33), !dbg !266
  %4 = call i32* @__errno_location() #1, !dbg !267
  %5 = load i32, i32* %4, align 4, !dbg !268
  store i32 %5, i32* %3, align 4, !dbg !266
  %6 = load i8*, i8** %2, align 8, !dbg !269
  call void @free(i8* %6) #6, !dbg !270
  %7 = load i32, i32* %3, align 4, !dbg !271
  %8 = call i32* @__errno_location() #1, !dbg !272
  store i32 %7, i32* %8, align 4, !dbg !273
  ret void, !dbg !274
}

; Function Attrs: nounwind uwtable
define i32 @File_MakeSafeTemp(i8*, i8**) #0 !dbg !275 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !278, metadata !33), !dbg !279
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !280, metadata !33), !dbg !281
  call void @llvm.dbg.declare(metadata i32* %5, metadata !282, metadata !33), !dbg !283
  call void @llvm.dbg.declare(metadata i8** %6, metadata !284, metadata !33), !dbg !285
  store i8* null, i8** %6, align 8, !dbg !285
  call void @llvm.dbg.declare(metadata i8** %7, metadata !286, metadata !33), !dbg !287
  store i8* null, i8** %7, align 8, !dbg !287
  %8 = load i8**, i8*** %4, align 8, !dbg !288
  store i8* null, i8** %8, align 8, !dbg !289
  %9 = load i8*, i8** %3, align 8, !dbg !290
  %10 = icmp ne i8* %9, null, !dbg !290
  br i1 %10, label %11, label %18, !dbg !292

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !293
  %13 = call signext i8 @File_IsFullPath(i8* %12), !dbg !295
  %14 = sext i8 %13 to i32, !dbg !295
  %15 = icmp ne i32 %14, 0, !dbg !295
  br i1 %15, label %16, label %18, !dbg !296

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %3, align 8, !dbg !297
  call void @File_GetPathName(i8* %17, i8** %6, i8** %7), !dbg !299
  br label %28, !dbg !300

; <label>:18:                                     ; preds = %11, %2
  %19 = call i8* @File_GetSafeTmpDir(i8 signext 1), !dbg !301
  store i8* %19, i8** %6, align 8, !dbg !303
  %20 = load i8*, i8** %3, align 8, !dbg !304
  %21 = icmp ne i8* %20, null, !dbg !304
  br i1 %21, label %22, label %24, !dbg !304

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %3, align 8, !dbg !305
  br label %25, !dbg !307

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !308

; <label>:25:                                     ; preds = %24, %22
  %26 = phi i8* [ %23, %22 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %24 ], !dbg !310
  %27 = call i8* @Unicode_Duplicate(i8* %26), !dbg !312
  store i8* %27, i8** %7, align 8, !dbg !313
  br label %28

; <label>:28:                                     ; preds = %25, %16
  %29 = load i8*, i8** %6, align 8, !dbg !314
  %30 = load i8*, i8** %7, align 8, !dbg !315
  %31 = load i8**, i8*** %4, align 8, !dbg !316
  %32 = call i32 @File_MakeTempEx(i8* %29, i8* %30, i8** %31), !dbg !317
  store i32 %32, i32* %5, align 4, !dbg !318
  %33 = load i8*, i8** %6, align 8, !dbg !319
  call void @Posix_Free(i8* %33), !dbg !320
  %34 = load i8*, i8** %7, align 8, !dbg !321
  call void @Posix_Free(i8* %34), !dbg !322
  %35 = load i32, i32* %5, align 4, !dbg !323
  ret i32 %35, !dbg !324
}

declare signext i8 @File_IsFullPath(i8*) #2

declare void @File_GetPathName(i8*, i8**, i8**) #2

declare i8* @Unicode_Duplicate(i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @File_DoesVolumeSupportAcls(i8*) #0 !dbg !325 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !328, metadata !33), !dbg !329
  call void @llvm.dbg.declare(metadata i8* %3, metadata !330, metadata !33), !dbg !331
  store i8 0, i8* %3, align 1, !dbg !331
  %4 = load i8, i8* %3, align 1, !dbg !332
  ret i8 %4, !dbg !333
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define internal void @FileTempNum(i8 signext, i32*) #0 !dbg !334 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !338, metadata !33), !dbg !339
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !340, metadata !33), !dbg !341
  %5 = call i32 @FileSimpleRandom(), !dbg !342
  %6 = lshr i32 %5, 8, !dbg !343
  %7 = and i32 %6, 255, !dbg !344
  %8 = load i32*, i32** %4, align 8, !dbg !345
  %9 = load i32, i32* %8, align 4, !dbg !346
  %10 = add i32 %9, %7, !dbg !346
  store i32 %10, i32* %8, align 4, !dbg !346
  %11 = load i32*, i32** %4, align 8, !dbg !347
  %12 = load i32, i32* %11, align 4, !dbg !348
  %13 = and i32 %12, -2, !dbg !349
  %14 = load i8, i8* %3, align 1, !dbg !350
  %15 = sext i8 %14 to i32, !dbg !350
  %16 = icmp ne i32 %15, 0, !dbg !350
  %17 = select i1 %16, i32 1, i32 0, !dbg !350
  %18 = or i32 %13, %17, !dbg !351
  %19 = load i32*, i32** %4, align 8, !dbg !352
  store i32 %18, i32* %19, align 4, !dbg !353
  ret void, !dbg !354
}

declare i8* @File_PathJoin(i8*, i8*) #2

declare i32 @Posix_Open(i8*, i32, ...) #2

declare i8* @File_MakeSafeTempSubdir(i8*, i8*) #2

declare i32 @Posix_Mkdir(i8*, i32) #2

declare void @Log(i8*, ...) #2

declare void @Warning(i8*, ...) #2

declare i32 @FileSimpleRandom() #2

declare i8* @Unicode_Format(i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "fileTemp.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line231")
!2 = !{}
!3 = !{!4, !5, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !6, line: 174, baseType: !7)
!6 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line231")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !8, line: 196, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line231")
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!15 = distinct !DISubprogram(name: "File_MakeTempEx2", scope: !16, file: !16, line: 229, type: !17, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!16 = !DIFile(filename: "fileTemp.c", directory: "/home/lichi/Desktop/open-vm-tools/line231")
!17 = !DISubroutineType(types: !18)
!18 = !{!9, !19, !21, !22, !4, !31}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !6, line: 230, baseType: !11)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "File_MakeTempCreateNameFunc", file: !24, line: 86, baseType: !25)
!24 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/file.h", directory: "/home/lichi/Desktop/open-vm-tools/line231")
!25 = !DISubroutineType(types: !26)
!26 = !{!10, !27, !4}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !6, line: 173, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !29, line: 51, baseType: !30)
!29 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line231")
!30 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!32 = !DILocalVariable(name: "dir", arg: 1, scope: !15, file: !16, line: 229, type: !19)
!33 = !DIExpression()
!34 = !DILocation(line: 229, column: 30, scope: !15)
!35 = !DILocalVariable(name: "createTempFile", arg: 2, scope: !15, file: !16, line: 230, type: !21)
!36 = !DILocation(line: 230, column: 23, scope: !15)
!37 = !DILocalVariable(name: "createNameFunc", arg: 3, scope: !15, file: !16, line: 231, type: !22)
!38 = !DILocation(line: 231, column: 47, scope: !15)
!39 = !DILocalVariable(name: "createNameFuncData", arg: 4, scope: !15, file: !16, line: 232, type: !4)
!40 = !DILocation(line: 232, column: 24, scope: !15)
!41 = !DILocalVariable(name: "presult", arg: 5, scope: !15, file: !16, line: 233, type: !31)
!42 = !DILocation(line: 233, column: 25, scope: !15)
!43 = !DILocation(line: 235, column: 31, scope: !15)
!44 = !DILocation(line: 235, column: 36, scope: !15)
!45 = !DILocation(line: 235, column: 55, scope: !15)
!46 = !DILocation(line: 236, column: 31, scope: !15)
!47 = !DILocation(line: 236, column: 51, scope: !15)
!48 = !DILocation(line: 235, column: 11, scope: !15)
!49 = !DILocation(line: 235, column: 4, scope: !15)
!50 = distinct !DISubprogram(name: "FileMakeTempEx2Work", scope: !16, file: !16, line: 122, type: !51, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!51 = !DISubroutineType(types: !52)
!52 = !{!9, !19, !21, !21, !22, !4, !31}
!53 = !DILocalVariable(name: "dir", arg: 1, scope: !50, file: !16, line: 122, type: !19)
!54 = !DILocation(line: 122, column: 33, scope: !50)
!55 = !DILocalVariable(name: "createTempFile", arg: 2, scope: !50, file: !16, line: 123, type: !21)
!56 = !DILocation(line: 123, column: 26, scope: !50)
!57 = !DILocalVariable(name: "makeSubdirSafe", arg: 3, scope: !50, file: !16, line: 124, type: !21)
!58 = !DILocation(line: 124, column: 26, scope: !50)
!59 = !DILocalVariable(name: "createNameFunc", arg: 4, scope: !50, file: !16, line: 125, type: !22)
!60 = !DILocation(line: 125, column: 50, scope: !50)
!61 = !DILocalVariable(name: "createNameFuncData", arg: 5, scope: !50, file: !16, line: 126, type: !4)
!62 = !DILocation(line: 126, column: 27, scope: !50)
!63 = !DILocalVariable(name: "presult", arg: 6, scope: !50, file: !16, line: 127, type: !31)
!64 = !DILocation(line: 127, column: 28, scope: !50)
!65 = !DILocalVariable(name: "i", scope: !50, file: !16, line: 129, type: !27)
!66 = !DILocation(line: 129, column: 11, scope: !50)
!67 = !DILocalVariable(name: "fd", scope: !50, file: !16, line: 131, type: !9)
!68 = !DILocation(line: 131, column: 8, scope: !50)
!69 = !DILocalVariable(name: "var", scope: !50, file: !16, line: 132, type: !27)
!70 = !DILocation(line: 132, column: 11, scope: !50)
!71 = !DILocalVariable(name: "path", scope: !50, file: !16, line: 133, type: !10)
!72 = !DILocation(line: 133, column: 10, scope: !50)
!73 = !DILocation(line: 135, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !50, file: !16, line: 135, column: 8)
!75 = !DILocation(line: 135, column: 13, scope: !74)
!76 = !DILocation(line: 135, column: 21, scope: !74)
!77 = !DILocation(line: 135, column: 25, scope: !78)
!78 = !DILexicalBlockFile(scope: !74, file: !16, discriminator: 1)
!79 = !DILocation(line: 135, column: 40, scope: !78)
!80 = !DILocation(line: 135, column: 8, scope: !78)
!81 = !DILocation(line: 136, column: 8, scope: !82)
!82 = distinct !DILexicalBlock(scope: !74, file: !16, line: 135, column: 50)
!83 = !DILocation(line: 136, column: 12, scope: !82)
!84 = !DILocation(line: 138, column: 7, scope: !82)
!85 = !DILocation(line: 143, column: 5, scope: !50)
!86 = !DILocation(line: 143, column: 13, scope: !50)
!87 = !DILocation(line: 145, column: 11, scope: !88)
!88 = distinct !DILexicalBlock(scope: !50, file: !16, line: 145, column: 4)
!89 = !DILocation(line: 145, column: 9, scope: !88)
!90 = !DILocation(line: 145, column: 16, scope: !91)
!91 = !DILexicalBlockFile(scope: !92, file: !16, discriminator: 1)
!92 = distinct !DILexicalBlock(scope: !88, file: !16, line: 145, column: 4)
!93 = !DILocation(line: 145, column: 18, scope: !91)
!94 = !DILocation(line: 145, column: 4, scope: !91)
!95 = !DILocalVariable(name: "fileName", scope: !96, file: !16, line: 146, type: !10)
!96 = distinct !DILexicalBlock(scope: !92, file: !16, line: 145, column: 52)
!97 = !DILocation(line: 146, column: 13, scope: !96)
!98 = !DILocation(line: 149, column: 18, scope: !96)
!99 = !DILocation(line: 149, column: 7, scope: !96)
!100 = !DILocation(line: 150, column: 12, scope: !96)
!101 = !DILocation(line: 160, column: 19, scope: !96)
!102 = !DILocation(line: 160, column: 7, scope: !96)
!103 = !DILocation(line: 162, column: 20, scope: !96)
!104 = !DILocation(line: 162, column: 36, scope: !96)
!105 = !DILocation(line: 162, column: 41, scope: !96)
!106 = !DILocation(line: 162, column: 18, scope: !96)
!107 = !DILocation(line: 162, column: 16, scope: !96)
!108 = !DILocation(line: 166, column: 11, scope: !109)
!109 = distinct !DILexicalBlock(scope: !96, file: !16, line: 166, column: 11)
!110 = !DILocation(line: 166, column: 11, scope: !96)
!111 = !DILocation(line: 167, column: 31, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !16, line: 166, column: 27)
!113 = !DILocation(line: 167, column: 36, scope: !112)
!114 = !DILocation(line: 167, column: 17, scope: !112)
!115 = !DILocation(line: 167, column: 15, scope: !112)
!116 = !DILocation(line: 168, column: 26, scope: !112)
!117 = !DILocation(line: 168, column: 15, scope: !112)
!118 = !DILocation(line: 168, column: 13, scope: !112)
!119 = !DILocation(line: 169, column: 7, scope: !112)
!120 = !DILocation(line: 170, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !16, line: 170, column: 14)
!122 = distinct !DILexicalBlock(scope: !109, file: !16, line: 169, column: 14)
!123 = !DILocation(line: 170, column: 14, scope: !122)
!124 = !DILocation(line: 171, column: 44, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !16, line: 170, column: 30)
!126 = !DILocation(line: 171, column: 49, scope: !125)
!127 = !DILocation(line: 171, column: 20, scope: !125)
!128 = !DILocation(line: 171, column: 18, scope: !125)
!129 = !DILocation(line: 172, column: 17, scope: !130)
!130 = distinct !DILexicalBlock(scope: !125, file: !16, line: 172, column: 17)
!131 = !DILocation(line: 172, column: 22, scope: !130)
!132 = !DILocation(line: 172, column: 17, scope: !125)
!133 = !DILocation(line: 173, column: 19, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !16, line: 172, column: 30)
!135 = !DILocation(line: 174, column: 13, scope: !134)
!136 = !DILocation(line: 175, column: 10, scope: !125)
!137 = !DILocation(line: 176, column: 34, scope: !138)
!138 = distinct !DILexicalBlock(scope: !121, file: !16, line: 175, column: 17)
!139 = !DILocation(line: 176, column: 39, scope: !138)
!140 = !DILocation(line: 176, column: 20, scope: !138)
!141 = !DILocation(line: 176, column: 18, scope: !138)
!142 = !DILocation(line: 177, column: 30, scope: !138)
!143 = !DILocation(line: 177, column: 18, scope: !138)
!144 = !DILocation(line: 177, column: 16, scope: !138)
!145 = !DILocation(line: 180, column: 18, scope: !96)
!146 = !DILocation(line: 180, column: 7, scope: !96)
!147 = !DILocation(line: 182, column: 11, scope: !148)
!148 = distinct !DILexicalBlock(scope: !96, file: !16, line: 182, column: 11)
!149 = !DILocation(line: 182, column: 14, scope: !148)
!150 = !DILocation(line: 182, column: 11, scope: !96)
!151 = !DILocation(line: 183, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !16, line: 182, column: 21)
!153 = !DILocation(line: 183, column: 11, scope: !152)
!154 = !DILocation(line: 183, column: 19, scope: !152)
!155 = !DILocation(line: 184, column: 15, scope: !152)
!156 = !DILocation(line: 185, column: 10, scope: !152)
!157 = !DILocation(line: 188, column: 12, scope: !158)
!158 = distinct !DILexicalBlock(scope: !96, file: !16, line: 188, column: 10)
!159 = !DILocation(line: 188, column: 11, scope: !158)
!160 = !DILocation(line: 188, column: 16, scope: !158)
!161 = !DILocation(line: 188, column: 10, scope: !96)
!162 = !DILocation(line: 190, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !16, line: 188, column: 27)
!164 = !DILocation(line: 191, column: 14, scope: !163)
!165 = !DILocation(line: 191, column: 21, scope: !163)
!166 = !DILocation(line: 191, column: 20, scope: !163)
!167 = !DILocation(line: 189, column: 10, scope: !163)
!168 = !DILocation(line: 192, column: 10, scope: !163)
!169 = !DILocation(line: 194, column: 4, scope: !96)
!170 = !DILocation(line: 145, column: 48, scope: !171)
!171 = !DILexicalBlockFile(scope: !92, file: !16, discriminator: 2)
!172 = !DILocation(line: 145, column: 4, scope: !171)
!173 = distinct !{!173, !174}
!174 = !DILocation(line: 145, column: 4, scope: !50)
!175 = !DILocation(line: 196, column: 8, scope: !176)
!176 = distinct !DILexicalBlock(scope: !50, file: !16, line: 196, column: 8)
!177 = !DILocation(line: 196, column: 11, scope: !176)
!178 = !DILocation(line: 196, column: 8, scope: !50)
!179 = !DILocation(line: 199, column: 15, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !16, line: 196, column: 18)
!181 = !DILocation(line: 199, column: 54, scope: !180)
!182 = !DILocation(line: 197, column: 7, scope: !180)
!183 = !DILocation(line: 201, column: 8, scope: !180)
!184 = !DILocation(line: 201, column: 12, scope: !180)
!185 = !DILocation(line: 202, column: 4, scope: !180)
!186 = !DILocation(line: 196, column: 15, scope: !187)
!187 = !DILexicalBlockFile(scope: !176, file: !16, discriminator: 1)
!188 = !DILocation(line: 205, column: 15, scope: !50)
!189 = !DILocation(line: 205, column: 4, scope: !50)
!190 = !DILocation(line: 207, column: 11, scope: !50)
!191 = !DILocation(line: 207, column: 4, scope: !50)
!192 = !DILocation(line: 208, column: 1, scope: !50)
!193 = distinct !DISubprogram(name: "File_MakeTempEx", scope: !16, file: !16, line: 301, type: !194, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!194 = !DISubroutineType(types: !195)
!195 = !{!9, !19, !19, !31}
!196 = !DILocalVariable(name: "dir", arg: 1, scope: !193, file: !16, line: 301, type: !19)
!197 = !DILocation(line: 301, column: 29, scope: !193)
!198 = !DILocalVariable(name: "fileName", arg: 2, scope: !193, file: !16, line: 302, type: !19)
!199 = !DILocation(line: 302, column: 29, scope: !193)
!200 = !DILocalVariable(name: "presult", arg: 3, scope: !193, file: !16, line: 303, type: !31)
!201 = !DILocation(line: 303, column: 24, scope: !193)
!202 = !DILocation(line: 305, column: 28, scope: !193)
!203 = !DILocation(line: 306, column: 37, scope: !193)
!204 = !DILocation(line: 306, column: 47, scope: !193)
!205 = !DILocation(line: 305, column: 11, scope: !193)
!206 = !DILocation(line: 305, column: 4, scope: !193)
!207 = distinct !DISubprogram(name: "FileMakeTempExCreateNameFunc", scope: !16, file: !16, line: 265, type: !25, isLocal: true, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!208 = !DILocalVariable(name: "num", arg: 1, scope: !207, file: !16, line: 265, type: !27)
!209 = !DILocation(line: 265, column: 37, scope: !207)
!210 = !DILocalVariable(name: "data", arg: 2, scope: !207, file: !16, line: 266, type: !4)
!211 = !DILocation(line: 266, column: 36, scope: !207)
!212 = !DILocation(line: 268, column: 8, scope: !213)
!213 = distinct !DILexicalBlock(scope: !207, file: !16, line: 268, column: 8)
!214 = !DILocation(line: 268, column: 13, scope: !213)
!215 = !DILocation(line: 268, column: 8, scope: !207)
!216 = !DILocation(line: 269, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !16, line: 268, column: 21)
!218 = !DILocation(line: 272, column: 43, scope: !207)
!219 = !DILocation(line: 272, column: 49, scope: !207)
!220 = !DILocation(line: 272, column: 11, scope: !207)
!221 = !DILocation(line: 272, column: 4, scope: !207)
!222 = !DILocation(line: 273, column: 1, scope: !207)
!223 = distinct !DISubprogram(name: "File_MakeSafeTempDir", scope: !16, file: !16, line: 331, type: !224, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!224 = !DISubroutineType(types: !225)
!225 = !{!10, !19}
!226 = !DILocalVariable(name: "prefix", arg: 1, scope: !223, file: !16, line: 331, type: !19)
!227 = !DILocation(line: 331, column: 34, scope: !223)
!228 = !DILocalVariable(name: "result", scope: !223, file: !16, line: 333, type: !10)
!229 = !DILocation(line: 333, column: 10, scope: !223)
!230 = !DILocalVariable(name: "dir", scope: !223, file: !16, line: 334, type: !10)
!231 = !DILocation(line: 334, column: 10, scope: !223)
!232 = !DILocation(line: 334, column: 16, scope: !223)
!233 = !DILocation(line: 336, column: 8, scope: !234)
!234 = distinct !DILexicalBlock(scope: !223, file: !16, line: 336, column: 8)
!235 = !DILocation(line: 336, column: 12, scope: !234)
!236 = !DILocation(line: 336, column: 8, scope: !223)
!237 = !DILocalVariable(name: "effectivePrefix", scope: !238, file: !16, line: 337, type: !19)
!238 = distinct !DILexicalBlock(scope: !234, file: !16, line: 336, column: 20)
!239 = !DILocation(line: 337, column: 19, scope: !238)
!240 = !DILocation(line: 337, column: 38, scope: !238)
!241 = !DILocation(line: 337, column: 45, scope: !238)
!242 = !DILocation(line: 337, column: 37, scope: !238)
!243 = !DILocation(line: 337, column: 37, scope: !244)
!244 = !DILexicalBlockFile(scope: !238, file: !16, discriminator: 1)
!245 = !DILocation(line: 337, column: 67, scope: !246)
!246 = !DILexicalBlockFile(scope: !238, file: !16, discriminator: 2)
!247 = !DILocation(line: 337, column: 37, scope: !246)
!248 = !DILocation(line: 337, column: 37, scope: !249)
!249 = !DILexicalBlockFile(scope: !238, file: !16, discriminator: 3)
!250 = !DILocation(line: 337, column: 19, scope: !249)
!251 = !DILocation(line: 339, column: 27, scope: !238)
!252 = !DILocation(line: 340, column: 36, scope: !238)
!253 = !DILocation(line: 339, column: 7, scope: !238)
!254 = !DILocation(line: 342, column: 18, scope: !238)
!255 = !DILocation(line: 342, column: 7, scope: !238)
!256 = !DILocation(line: 343, column: 4, scope: !238)
!257 = !DILocation(line: 345, column: 11, scope: !223)
!258 = !DILocation(line: 345, column: 4, scope: !223)
!259 = distinct !DISubprogram(name: "Posix_Free", scope: !260, file: !260, line: 129, type: !261, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!260 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/posix.h", directory: "/home/lichi/Desktop/open-vm-tools/line231")
!261 = !DISubroutineType(types: !262)
!262 = !{null, !4}
!263 = !DILocalVariable(name: "p", arg: 1, scope: !259, file: !260, line: 129, type: !4)
!264 = !DILocation(line: 129, column: 18, scope: !259)
!265 = !DILocalVariable(name: "err", scope: !259, file: !260, line: 131, type: !9)
!266 = !DILocation(line: 131, column: 8, scope: !259)
!267 = !DILocation(line: 131, column: 15, scope: !259)
!268 = !DILocation(line: 131, column: 14, scope: !259)
!269 = !DILocation(line: 132, column: 9, scope: !259)
!270 = !DILocation(line: 132, column: 4, scope: !259)
!271 = !DILocation(line: 133, column: 11, scope: !259)
!272 = !DILocation(line: 133, column: 5, scope: !259)
!273 = !DILocation(line: 133, column: 9, scope: !259)
!274 = !DILocation(line: 134, column: 1, scope: !259)
!275 = distinct !DISubprogram(name: "File_MakeSafeTemp", scope: !16, file: !16, line: 367, type: !276, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!276 = !DISubroutineType(types: !277)
!277 = !{!9, !19, !31}
!278 = !DILocalVariable(name: "tag", arg: 1, scope: !275, file: !16, line: 367, type: !19)
!279 = !DILocation(line: 367, column: 31, scope: !275)
!280 = !DILocalVariable(name: "presult", arg: 2, scope: !275, file: !16, line: 368, type: !31)
!281 = !DILocation(line: 368, column: 26, scope: !275)
!282 = !DILocalVariable(name: "fd", scope: !275, file: !16, line: 370, type: !9)
!283 = !DILocation(line: 370, column: 8, scope: !275)
!284 = !DILocalVariable(name: "dir", scope: !275, file: !16, line: 371, type: !10)
!285 = !DILocation(line: 371, column: 10, scope: !275)
!286 = !DILocalVariable(name: "fileName", scope: !275, file: !16, line: 372, type: !10)
!287 = !DILocation(line: 372, column: 10, scope: !275)
!288 = !DILocation(line: 376, column: 5, scope: !275)
!289 = !DILocation(line: 376, column: 13, scope: !275)
!290 = !DILocation(line: 378, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !275, file: !16, line: 378, column: 8)
!292 = !DILocation(line: 378, column: 12, scope: !291)
!293 = !DILocation(line: 378, column: 31, scope: !294)
!294 = !DILexicalBlockFile(scope: !291, file: !16, discriminator: 1)
!295 = !DILocation(line: 378, column: 15, scope: !294)
!296 = !DILocation(line: 378, column: 8, scope: !294)
!297 = !DILocation(line: 379, column: 24, scope: !298)
!298 = distinct !DILexicalBlock(scope: !291, file: !16, line: 378, column: 37)
!299 = !DILocation(line: 379, column: 7, scope: !298)
!300 = !DILocation(line: 380, column: 4, scope: !298)
!301 = !DILocation(line: 381, column: 13, scope: !302)
!302 = distinct !DILexicalBlock(scope: !291, file: !16, line: 380, column: 11)
!303 = !DILocation(line: 381, column: 11, scope: !302)
!304 = !DILocation(line: 382, column: 36, scope: !302)
!305 = !DILocation(line: 382, column: 42, scope: !306)
!306 = !DILexicalBlockFile(scope: !302, file: !16, discriminator: 1)
!307 = !DILocation(line: 382, column: 36, scope: !306)
!308 = !DILocation(line: 382, column: 36, scope: !309)
!309 = !DILexicalBlockFile(scope: !302, file: !16, discriminator: 2)
!310 = !DILocation(line: 382, column: 36, scope: !311)
!311 = !DILexicalBlockFile(scope: !302, file: !16, discriminator: 3)
!312 = !DILocation(line: 382, column: 18, scope: !311)
!313 = !DILocation(line: 382, column: 16, scope: !311)
!314 = !DILocation(line: 385, column: 25, scope: !275)
!315 = !DILocation(line: 385, column: 30, scope: !275)
!316 = !DILocation(line: 385, column: 40, scope: !275)
!317 = !DILocation(line: 385, column: 9, scope: !275)
!318 = !DILocation(line: 385, column: 7, scope: !275)
!319 = !DILocation(line: 387, column: 15, scope: !275)
!320 = !DILocation(line: 387, column: 4, scope: !275)
!321 = !DILocation(line: 388, column: 15, scope: !275)
!322 = !DILocation(line: 388, column: 4, scope: !275)
!323 = !DILocation(line: 390, column: 11, scope: !275)
!324 = !DILocation(line: 390, column: 4, scope: !275)
!325 = distinct !DISubprogram(name: "File_DoesVolumeSupportAcls", scope: !16, file: !16, line: 413, type: !326, isLocal: false, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!326 = !DISubroutineType(types: !327)
!327 = !{!21, !19}
!328 = !DILocalVariable(name: "path", arg: 1, scope: !325, file: !16, line: 413, type: !19)
!329 = !DILocation(line: 413, column: 40, scope: !325)
!330 = !DILocalVariable(name: "succeeded", scope: !325, file: !16, line: 415, type: !21)
!331 = !DILocation(line: 415, column: 9, scope: !325)
!332 = !DILocation(line: 450, column: 11, scope: !325)
!333 = !DILocation(line: 450, column: 4, scope: !325)
!334 = distinct !DISubprogram(name: "FileTempNum", scope: !16, file: !16, line: 69, type: !335, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !21, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!338 = !DILocalVariable(name: "createTempFile", arg: 1, scope: !334, file: !16, line: 69, type: !21)
!339 = !DILocation(line: 69, column: 18, scope: !334)
!340 = !DILocalVariable(name: "var", arg: 2, scope: !334, file: !16, line: 70, type: !337)
!341 = !DILocation(line: 70, column: 21, scope: !334)
!342 = !DILocation(line: 74, column: 13, scope: !334)
!343 = !DILocation(line: 74, column: 32, scope: !334)
!344 = !DILocation(line: 74, column: 38, scope: !334)
!345 = !DILocation(line: 74, column: 5, scope: !334)
!346 = !DILocation(line: 74, column: 9, scope: !334)
!347 = !DILocation(line: 75, column: 13, scope: !334)
!348 = !DILocation(line: 75, column: 12, scope: !334)
!349 = !DILocation(line: 75, column: 17, scope: !334)
!350 = !DILocation(line: 75, column: 28, scope: !334)
!351 = !DILocation(line: 75, column: 25, scope: !334)
!352 = !DILocation(line: 75, column: 5, scope: !334)
!353 = !DILocation(line: 75, column: 9, scope: !334)
!354 = !DILocation(line: 76, column: 1, scope: !334)
