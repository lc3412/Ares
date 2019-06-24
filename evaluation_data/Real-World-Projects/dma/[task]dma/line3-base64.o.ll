; ModuleID = './line3-base64.o.i'
source_filename = "./line3-base64.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@base64_chars = internal global [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16

; Function Attrs: nounwind uwtable
define i32 @base64_encode(i8*, i32, i8**) #0 !dbg !20 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !27, metadata !28), !dbg !29
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !30, metadata !28), !dbg !31
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !32, metadata !28), !dbg !33
  call void @llvm.dbg.declare(metadata i8** %8, metadata !34, metadata !28), !dbg !35
  call void @llvm.dbg.declare(metadata i8** %9, metadata !36, metadata !28), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %10, metadata !38, metadata !28), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %11, metadata !40, metadata !28), !dbg !41
  call void @llvm.dbg.declare(metadata i8** %12, metadata !42, metadata !28), !dbg !43
  %13 = load i32, i32* %6, align 4, !dbg !44
  %14 = mul nsw i32 %13, 4, !dbg !45
  %15 = sdiv i32 %14, 3, !dbg !46
  %16 = add nsw i32 %15, 4, !dbg !47
  %17 = sext i32 %16 to i64, !dbg !44
  %18 = call noalias i8* @malloc(i64 %17) #4, !dbg !48
  store i8* %18, i8** %8, align 8, !dbg !49
  store i8* %18, i8** %9, align 8, !dbg !50
  %19 = load i8*, i8** %9, align 8, !dbg !51
  %20 = icmp eq i8* %19, null, !dbg !53
  br i1 %20, label %21, label %22, !dbg !54

; <label>:21:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !55
  br label %126, !dbg !55

; <label>:22:                                     ; preds = %3
  %23 = load i8*, i8** %5, align 8, !dbg !56
  store i8* %23, i8** %12, align 8, !dbg !57
  store i32 0, i32* %10, align 4, !dbg !58
  store i32 0, i32* %10, align 4, !dbg !59
  br label %24, !dbg !61

; <label>:24:                                     ; preds = %116, %22
  %25 = load i32, i32* %10, align 4, !dbg !62
  %26 = load i32, i32* %6, align 4, !dbg !65
  %27 = icmp slt i32 %25, %26, !dbg !66
  br i1 %27, label %28, label %119, !dbg !67

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %10, align 4, !dbg !68
  %30 = add nsw i32 %29, 1, !dbg !68
  store i32 %30, i32* %10, align 4, !dbg !68
  %31 = sext i32 %29 to i64, !dbg !70
  %32 = load i8*, i8** %12, align 8, !dbg !70
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !70
  %34 = load i8, i8* %33, align 1, !dbg !70
  %35 = zext i8 %34 to i32, !dbg !70
  store i32 %35, i32* %11, align 4, !dbg !71
  %36 = load i32, i32* %11, align 4, !dbg !72
  %37 = mul nsw i32 %36, 256, !dbg !72
  store i32 %37, i32* %11, align 4, !dbg !72
  %38 = load i32, i32* %10, align 4, !dbg !73
  %39 = load i32, i32* %6, align 4, !dbg !75
  %40 = icmp slt i32 %38, %39, !dbg !76
  br i1 %40, label %41, label %50, !dbg !77

; <label>:41:                                     ; preds = %28
  %42 = load i32, i32* %10, align 4, !dbg !78
  %43 = sext i32 %42 to i64, !dbg !79
  %44 = load i8*, i8** %12, align 8, !dbg !79
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !79
  %46 = load i8, i8* %45, align 1, !dbg !79
  %47 = zext i8 %46 to i32, !dbg !79
  %48 = load i32, i32* %11, align 4, !dbg !80
  %49 = add nsw i32 %48, %47, !dbg !80
  store i32 %49, i32* %11, align 4, !dbg !80
  br label %50, !dbg !81

; <label>:50:                                     ; preds = %41, %28
  %51 = load i32, i32* %10, align 4, !dbg !82
  %52 = add nsw i32 %51, 1, !dbg !82
  store i32 %52, i32* %10, align 4, !dbg !82
  %53 = load i32, i32* %11, align 4, !dbg !83
  %54 = mul nsw i32 %53, 256, !dbg !83
  store i32 %54, i32* %11, align 4, !dbg !83
  %55 = load i32, i32* %10, align 4, !dbg !84
  %56 = load i32, i32* %6, align 4, !dbg !86
  %57 = icmp slt i32 %55, %56, !dbg !87
  br i1 %57, label %58, label %67, !dbg !88

; <label>:58:                                     ; preds = %50
  %59 = load i32, i32* %10, align 4, !dbg !89
  %60 = sext i32 %59 to i64, !dbg !90
  %61 = load i8*, i8** %12, align 8, !dbg !90
  %62 = getelementptr inbounds i8, i8* %61, i64 %60, !dbg !90
  %63 = load i8, i8* %62, align 1, !dbg !90
  %64 = zext i8 %63 to i32, !dbg !90
  %65 = load i32, i32* %11, align 4, !dbg !91
  %66 = add nsw i32 %65, %64, !dbg !91
  store i32 %66, i32* %11, align 4, !dbg !91
  br label %67, !dbg !92

; <label>:67:                                     ; preds = %58, %50
  %68 = load i32, i32* %10, align 4, !dbg !93
  %69 = add nsw i32 %68, 1, !dbg !93
  store i32 %69, i32* %10, align 4, !dbg !93
  %70 = load i32, i32* %11, align 4, !dbg !94
  %71 = and i32 %70, 16515072, !dbg !95
  %72 = ashr i32 %71, 18, !dbg !96
  %73 = sext i32 %72 to i64, !dbg !97
  %74 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_chars, i64 0, i64 %73, !dbg !97
  %75 = load i8, i8* %74, align 1, !dbg !97
  %76 = load i8*, i8** %9, align 8, !dbg !98
  %77 = getelementptr inbounds i8, i8* %76, i64 0, !dbg !98
  store i8 %75, i8* %77, align 1, !dbg !99
  %78 = load i32, i32* %11, align 4, !dbg !100
  %79 = and i32 %78, 258048, !dbg !101
  %80 = ashr i32 %79, 12, !dbg !102
  %81 = sext i32 %80 to i64, !dbg !103
  %82 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_chars, i64 0, i64 %81, !dbg !103
  %83 = load i8, i8* %82, align 1, !dbg !103
  %84 = load i8*, i8** %9, align 8, !dbg !104
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !104
  store i8 %83, i8* %85, align 1, !dbg !105
  %86 = load i32, i32* %11, align 4, !dbg !106
  %87 = and i32 %86, 4032, !dbg !107
  %88 = ashr i32 %87, 6, !dbg !108
  %89 = sext i32 %88 to i64, !dbg !109
  %90 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_chars, i64 0, i64 %89, !dbg !109
  %91 = load i8, i8* %90, align 1, !dbg !109
  %92 = load i8*, i8** %9, align 8, !dbg !110
  %93 = getelementptr inbounds i8, i8* %92, i64 2, !dbg !110
  store i8 %91, i8* %93, align 1, !dbg !111
  %94 = load i32, i32* %11, align 4, !dbg !112
  %95 = and i32 %94, 63, !dbg !113
  %96 = ashr i32 %95, 0, !dbg !114
  %97 = sext i32 %96 to i64, !dbg !115
  %98 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_chars, i64 0, i64 %97, !dbg !115
  %99 = load i8, i8* %98, align 1, !dbg !115
  %100 = load i8*, i8** %9, align 8, !dbg !116
  %101 = getelementptr inbounds i8, i8* %100, i64 3, !dbg !116
  store i8 %99, i8* %101, align 1, !dbg !117
  %102 = load i32, i32* %10, align 4, !dbg !118
  %103 = load i32, i32* %6, align 4, !dbg !120
  %104 = icmp sgt i32 %102, %103, !dbg !121
  br i1 %104, label %105, label %108, !dbg !122

; <label>:105:                                    ; preds = %67
  %106 = load i8*, i8** %9, align 8, !dbg !123
  %107 = getelementptr inbounds i8, i8* %106, i64 3, !dbg !123
  store i8 61, i8* %107, align 1, !dbg !124
  br label %108, !dbg !123

; <label>:108:                                    ; preds = %105, %67
  %109 = load i32, i32* %10, align 4, !dbg !125
  %110 = load i32, i32* %6, align 4, !dbg !127
  %111 = add nsw i32 %110, 1, !dbg !128
  %112 = icmp sgt i32 %109, %111, !dbg !129
  br i1 %112, label %113, label %116, !dbg !130

; <label>:113:                                    ; preds = %108
  %114 = load i8*, i8** %9, align 8, !dbg !131
  %115 = getelementptr inbounds i8, i8* %114, i64 2, !dbg !131
  store i8 61, i8* %115, align 1, !dbg !132
  br label %116, !dbg !131

; <label>:116:                                    ; preds = %113, %108
  %117 = load i8*, i8** %9, align 8, !dbg !133
  %118 = getelementptr inbounds i8, i8* %117, i64 4, !dbg !133
  store i8* %118, i8** %9, align 8, !dbg !133
  br label %24, !dbg !134, !llvm.loop !136

; <label>:119:                                    ; preds = %24
  %120 = load i8*, i8** %9, align 8, !dbg !138
  store i8 0, i8* %120, align 1, !dbg !139
  %121 = load i8*, i8** %8, align 8, !dbg !140
  %122 = load i8**, i8*** %7, align 8, !dbg !141
  store i8* %121, i8** %122, align 8, !dbg !142
  %123 = load i8*, i8** %8, align 8, !dbg !143
  %124 = call i64 @strlen(i8* %123) #5, !dbg !144
  %125 = trunc i64 %124 to i32, !dbg !144
  store i32 %125, i32* %4, align 4, !dbg !145
  br label %126, !dbg !145

; <label>:126:                                    ; preds = %119, %21
  %127 = load i32, i32* %4, align 4, !dbg !146
  ret i32 %127, !dbg !146
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @base64_decode(i8*, i8*) #0 !dbg !147 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !152, metadata !28), !dbg !153
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !154, metadata !28), !dbg !155
  call void @llvm.dbg.declare(metadata i8** %6, metadata !156, metadata !28), !dbg !157
  call void @llvm.dbg.declare(metadata i8** %7, metadata !158, metadata !28), !dbg !159
  %10 = load i8*, i8** %5, align 8, !dbg !160
  store i8* %10, i8** %7, align 8, !dbg !161
  %11 = load i8*, i8** %4, align 8, !dbg !162
  store i8* %11, i8** %6, align 8, !dbg !164
  br label %12, !dbg !165

; <label>:12:                                     ; preds = %67, %2
  %13 = load i8*, i8** %6, align 8, !dbg !166
  %14 = load i8, i8* %13, align 1, !dbg !169
  %15 = sext i8 %14 to i32, !dbg !169
  %16 = icmp ne i32 %15, 0, !dbg !169
  br i1 %16, label %17, label %30, !dbg !170

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %6, align 8, !dbg !171
  %19 = load i8, i8* %18, align 1, !dbg !173
  %20 = sext i8 %19 to i32, !dbg !173
  %21 = icmp eq i32 %20, 61, !dbg !174
  br i1 %21, label %28, label %22, !dbg !175

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %6, align 8, !dbg !176
  %24 = load i8, i8* %23, align 1, !dbg !178
  %25 = sext i8 %24 to i32, !dbg !178
  %26 = call i8* @strchr(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @base64_chars, i32 0, i32 0), i32 %25) #5, !dbg !179
  %27 = icmp ne i8* %26, null, !dbg !180
  br label %28, !dbg !180

; <label>:28:                                     ; preds = %22, %17
  %29 = phi i1 [ true, %17 ], [ %27, %22 ]
  br label %30

; <label>:30:                                     ; preds = %28, %12
  %31 = phi i1 [ false, %12 ], [ %29, %28 ]
  br i1 %31, label %32, label %70, !dbg !181

; <label>:32:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata i32* %8, metadata !183, metadata !28), !dbg !186
  %33 = load i8*, i8** %6, align 8, !dbg !187
  %34 = call i32 @token_decode(i8* %33), !dbg !188
  store i32 %34, i32* %8, align 4, !dbg !186
  call void @llvm.dbg.declare(metadata i32* %9, metadata !189, metadata !28), !dbg !190
  %35 = load i32, i32* %8, align 4, !dbg !191
  %36 = lshr i32 %35, 24, !dbg !192
  %37 = and i32 %36, 255, !dbg !193
  store i32 %37, i32* %9, align 4, !dbg !190
  %38 = load i32, i32* %8, align 4, !dbg !194
  %39 = icmp eq i32 %38, -1, !dbg !196
  br i1 %39, label %40, label %41, !dbg !197

; <label>:40:                                     ; preds = %32
  store i32 -1, i32* %3, align 4, !dbg !198
  br label %77, !dbg !198

; <label>:41:                                     ; preds = %32
  %42 = load i32, i32* %8, align 4, !dbg !199
  %43 = lshr i32 %42, 16, !dbg !200
  %44 = and i32 %43, 255, !dbg !201
  %45 = trunc i32 %44 to i8, !dbg !202
  %46 = load i8*, i8** %7, align 8, !dbg !203
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !203
  store i8* %47, i8** %7, align 8, !dbg !203
  store i8 %45, i8* %46, align 1, !dbg !204
  %48 = load i32, i32* %9, align 4, !dbg !205
  %49 = icmp ult i32 %48, 2, !dbg !207
  br i1 %49, label %50, label %57, !dbg !208

; <label>:50:                                     ; preds = %41
  %51 = load i32, i32* %8, align 4, !dbg !209
  %52 = lshr i32 %51, 8, !dbg !210
  %53 = and i32 %52, 255, !dbg !211
  %54 = trunc i32 %53 to i8, !dbg !212
  %55 = load i8*, i8** %7, align 8, !dbg !213
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !213
  store i8* %56, i8** %7, align 8, !dbg !213
  store i8 %54, i8* %55, align 1, !dbg !214
  br label %57, !dbg !215

; <label>:57:                                     ; preds = %50, %41
  %58 = load i32, i32* %9, align 4, !dbg !216
  %59 = icmp ult i32 %58, 1, !dbg !218
  br i1 %59, label %60, label %66, !dbg !219

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %8, align 4, !dbg !220
  %62 = and i32 %61, 255, !dbg !221
  %63 = trunc i32 %62 to i8, !dbg !220
  %64 = load i8*, i8** %7, align 8, !dbg !222
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !222
  store i8* %65, i8** %7, align 8, !dbg !222
  store i8 %63, i8* %64, align 1, !dbg !223
  br label %66, !dbg !224

; <label>:66:                                     ; preds = %60, %57
  br label %67, !dbg !225

; <label>:67:                                     ; preds = %66
  %68 = load i8*, i8** %6, align 8, !dbg !226
  %69 = getelementptr inbounds i8, i8* %68, i64 4, !dbg !226
  store i8* %69, i8** %6, align 8, !dbg !226
  br label %12, !dbg !228, !llvm.loop !229

; <label>:70:                                     ; preds = %30
  %71 = load i8*, i8** %7, align 8, !dbg !231
  %72 = load i8*, i8** %5, align 8, !dbg !232
  %73 = ptrtoint i8* %71 to i64, !dbg !233
  %74 = ptrtoint i8* %72 to i64, !dbg !233
  %75 = sub i64 %73, %74, !dbg !233
  %76 = trunc i64 %75 to i32, !dbg !231
  store i32 %76, i32* %3, align 4, !dbg !234
  br label %77, !dbg !234

; <label>:77:                                     ; preds = %70, %40
  %78 = load i32, i32* %3, align 4, !dbg !235
  ret i32 %78, !dbg !235
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @token_decode(i8*) #0 !dbg !236 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !239, metadata !28), !dbg !240
  call void @llvm.dbg.declare(metadata i32* %4, metadata !241, metadata !28), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %5, metadata !243, metadata !28), !dbg !244
  store i32 0, i32* %5, align 4, !dbg !244
  call void @llvm.dbg.declare(metadata i32* %6, metadata !245, metadata !28), !dbg !246
  store i32 0, i32* %6, align 4, !dbg !246
  %7 = load i8*, i8** %3, align 8, !dbg !247
  %8 = call i64 @strlen(i8* %7) #5, !dbg !249
  %9 = icmp ult i64 %8, 4, !dbg !250
  br i1 %9, label %10, label %11, !dbg !251

; <label>:10:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !252
  br label %55, !dbg !252

; <label>:11:                                     ; preds = %1
  store i32 0, i32* %4, align 4, !dbg !253
  br label %12, !dbg !255

; <label>:12:                                     ; preds = %43, %11
  %13 = load i32, i32* %4, align 4, !dbg !256
  %14 = icmp slt i32 %13, 4, !dbg !259
  br i1 %14, label %15, label %46, !dbg !260

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %5, align 4, !dbg !261
  %17 = mul i32 %16, 64, !dbg !261
  store i32 %17, i32* %5, align 4, !dbg !261
  %18 = load i32, i32* %4, align 4, !dbg !263
  %19 = sext i32 %18 to i64, !dbg !265
  %20 = load i8*, i8** %3, align 8, !dbg !265
  %21 = getelementptr inbounds i8, i8* %20, i64 %19, !dbg !265
  %22 = load i8, i8* %21, align 1, !dbg !265
  %23 = sext i8 %22 to i32, !dbg !265
  %24 = icmp eq i32 %23, 61, !dbg !266
  br i1 %24, label %25, label %28, !dbg !267

; <label>:25:                                     ; preds = %15
  %26 = load i32, i32* %6, align 4, !dbg !268
  %27 = add nsw i32 %26, 1, !dbg !268
  store i32 %27, i32* %6, align 4, !dbg !268
  br label %42, !dbg !269

; <label>:28:                                     ; preds = %15
  %29 = load i32, i32* %6, align 4, !dbg !270
  %30 = icmp sgt i32 %29, 0, !dbg !272
  br i1 %30, label %31, label %32, !dbg !273

; <label>:31:                                     ; preds = %28
  store i32 -1, i32* %2, align 4, !dbg !274
  br label %55, !dbg !274

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %4, align 4, !dbg !275
  %34 = sext i32 %33 to i64, !dbg !276
  %35 = load i8*, i8** %3, align 8, !dbg !276
  %36 = getelementptr inbounds i8, i8* %35, i64 %34, !dbg !276
  %37 = load i8, i8* %36, align 1, !dbg !276
  %38 = call i32 @pos(i8 signext %37), !dbg !277
  %39 = load i32, i32* %5, align 4, !dbg !278
  %40 = add i32 %39, %38, !dbg !278
  store i32 %40, i32* %5, align 4, !dbg !278
  br label %41

; <label>:41:                                     ; preds = %32
  br label %42

; <label>:42:                                     ; preds = %41, %25
  br label %43, !dbg !279

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %4, align 4, !dbg !280
  %45 = add nsw i32 %44, 1, !dbg !280
  store i32 %45, i32* %4, align 4, !dbg !280
  br label %12, !dbg !282, !llvm.loop !283

; <label>:46:                                     ; preds = %12
  %47 = load i32, i32* %6, align 4, !dbg !285
  %48 = icmp sgt i32 %47, 2, !dbg !287
  br i1 %48, label %49, label %50, !dbg !288

; <label>:49:                                     ; preds = %46
  store i32 -1, i32* %2, align 4, !dbg !289
  br label %55, !dbg !289

; <label>:50:                                     ; preds = %46
  %51 = load i32, i32* %6, align 4, !dbg !290
  %52 = shl i32 %51, 24, !dbg !291
  %53 = load i32, i32* %5, align 4, !dbg !292
  %54 = or i32 %52, %53, !dbg !293
  store i32 %54, i32* %2, align 4, !dbg !294
  br label %55, !dbg !294

; <label>:55:                                     ; preds = %50, %49, %31, %10
  %56 = load i32, i32* %2, align 4, !dbg !295
  ret i32 %56, !dbg !295
}

; Function Attrs: nounwind uwtable
define internal i32 @pos(i8 signext) #0 !dbg !296 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !299, metadata !28), !dbg !300
  call void @llvm.dbg.declare(metadata i8** %4, metadata !301, metadata !28), !dbg !302
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @base64_chars, i32 0, i32 0), i8** %4, align 8, !dbg !303
  br label %5, !dbg !305

; <label>:5:                                      ; preds = %22, %1
  %6 = load i8*, i8** %4, align 8, !dbg !306
  %7 = load i8, i8* %6, align 1, !dbg !309
  %8 = icmp ne i8 %7, 0, !dbg !310
  br i1 %8, label %9, label %25, !dbg !310

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %4, align 8, !dbg !311
  %11 = load i8, i8* %10, align 1, !dbg !313
  %12 = sext i8 %11 to i32, !dbg !313
  %13 = load i8, i8* %3, align 1, !dbg !314
  %14 = sext i8 %13 to i32, !dbg !314
  %15 = icmp eq i32 %12, %14, !dbg !315
  br i1 %15, label %16, label %21, !dbg !316

; <label>:16:                                     ; preds = %9
  %17 = load i8*, i8** %4, align 8, !dbg !317
  %18 = ptrtoint i8* %17 to i64, !dbg !318
  %19 = sub i64 %18, ptrtoint ([65 x i8]* @base64_chars to i64), !dbg !318
  %20 = trunc i64 %19 to i32, !dbg !317
  store i32 %20, i32* %2, align 4, !dbg !319
  br label %26, !dbg !319

; <label>:21:                                     ; preds = %9
  br label %22, !dbg !320

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %4, align 8, !dbg !322
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !322
  store i8* %24, i8** %4, align 8, !dbg !322
  br label %5, !dbg !324, !llvm.loop !325

; <label>:25:                                     ; preds = %5
  store i32 -1, i32* %2, align 4, !dbg !327
  br label %26, !dbg !327

; <label>:26:                                     ; preds = %25, %16
  %27 = load i32, i32* %2, align 4, !dbg !328
  ret i32 %27, !dbg !328
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !11)
!1 = !DIFile(filename: "line3-base64.o.i", directory: "/home/lichi/Desktop/dma/task1")
!2 = !{}
!3 = !{!4, !6, !7, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!11 = !{!12}
!12 = distinct !DIGlobalVariable(name: "base64_chars", scope: !0, file: !13, line: 39, type: !14, isLocal: true, isDefinition: true, variable: [65 x i8]* @base64_chars)
!13 = !DIFile(filename: "base64.c", directory: "/home/lichi/Desktop/dma/task1")
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 520, align: 8, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 65)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!20 = distinct !DISubprogram(name: "base64_encode", scope: !13, file: !13, line: 54, type: !21, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !24, !23, !26}
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!27 = !DILocalVariable(name: "data", arg: 1, scope: !20, file: !13, line: 54, type: !24)
!28 = !DIExpression()
!29 = !DILocation(line: 54, column: 27, scope: !20)
!30 = !DILocalVariable(name: "size", arg: 2, scope: !20, file: !13, line: 54, type: !23)
!31 = !DILocation(line: 54, column: 37, scope: !20)
!32 = !DILocalVariable(name: "str", arg: 3, scope: !20, file: !13, line: 54, type: !26)
!33 = !DILocation(line: 54, column: 50, scope: !20)
!34 = !DILocalVariable(name: "s", scope: !20, file: !13, line: 56, type: !4)
!35 = !DILocation(line: 56, column: 11, scope: !20)
!36 = !DILocalVariable(name: "p", scope: !20, file: !13, line: 56, type: !4)
!37 = !DILocation(line: 56, column: 15, scope: !20)
!38 = !DILocalVariable(name: "i", scope: !20, file: !13, line: 57, type: !23)
!39 = !DILocation(line: 57, column: 9, scope: !20)
!40 = !DILocalVariable(name: "c", scope: !20, file: !13, line: 58, type: !23)
!41 = !DILocation(line: 58, column: 9, scope: !20)
!42 = !DILocalVariable(name: "q", scope: !20, file: !13, line: 59, type: !7)
!43 = !DILocation(line: 59, column: 26, scope: !20)
!44 = !DILocation(line: 61, column: 29, scope: !20)
!45 = !DILocation(line: 61, column: 34, scope: !20)
!46 = !DILocation(line: 61, column: 38, scope: !20)
!47 = !DILocation(line: 61, column: 42, scope: !20)
!48 = !DILocation(line: 61, column: 22, scope: !20)
!49 = !DILocation(line: 61, column: 11, scope: !20)
!50 = !DILocation(line: 61, column: 7, scope: !20)
!51 = !DILocation(line: 62, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !20, file: !13, line: 62, column: 9)
!53 = !DILocation(line: 62, column: 11, scope: !52)
!54 = !DILocation(line: 62, column: 9, scope: !20)
!55 = !DILocation(line: 63, column: 2, scope: !52)
!56 = !DILocation(line: 64, column: 33, scope: !20)
!57 = !DILocation(line: 64, column: 7, scope: !20)
!58 = !DILocation(line: 65, column: 7, scope: !20)
!59 = !DILocation(line: 66, column: 12, scope: !60)
!60 = distinct !DILexicalBlock(scope: !20, file: !13, line: 66, column: 5)
!61 = !DILocation(line: 66, column: 10, scope: !60)
!62 = !DILocation(line: 66, column: 17, scope: !63)
!63 = !DILexicalBlockFile(scope: !64, file: !13, discriminator: 1)
!64 = distinct !DILexicalBlock(scope: !60, file: !13, line: 66, column: 5)
!65 = !DILocation(line: 66, column: 21, scope: !63)
!66 = !DILocation(line: 66, column: 19, scope: !63)
!67 = !DILocation(line: 66, column: 5, scope: !63)
!68 = !DILocation(line: 67, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !13, line: 66, column: 28)
!70 = !DILocation(line: 67, column: 6, scope: !69)
!71 = !DILocation(line: 67, column: 4, scope: !69)
!72 = !DILocation(line: 68, column: 4, scope: !69)
!73 = !DILocation(line: 69, column: 6, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !13, line: 69, column: 6)
!75 = !DILocation(line: 69, column: 10, scope: !74)
!76 = !DILocation(line: 69, column: 8, scope: !74)
!77 = !DILocation(line: 69, column: 6, scope: !69)
!78 = !DILocation(line: 70, column: 13, scope: !74)
!79 = !DILocation(line: 70, column: 11, scope: !74)
!80 = !DILocation(line: 70, column: 8, scope: !74)
!81 = !DILocation(line: 70, column: 6, scope: !74)
!82 = !DILocation(line: 71, column: 3, scope: !69)
!83 = !DILocation(line: 72, column: 4, scope: !69)
!84 = !DILocation(line: 73, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !69, file: !13, line: 73, column: 6)
!86 = !DILocation(line: 73, column: 10, scope: !85)
!87 = !DILocation(line: 73, column: 8, scope: !85)
!88 = !DILocation(line: 73, column: 6, scope: !69)
!89 = !DILocation(line: 74, column: 13, scope: !85)
!90 = !DILocation(line: 74, column: 11, scope: !85)
!91 = !DILocation(line: 74, column: 8, scope: !85)
!92 = !DILocation(line: 74, column: 6, scope: !85)
!93 = !DILocation(line: 75, column: 3, scope: !69)
!94 = !DILocation(line: 76, column: 23, scope: !69)
!95 = !DILocation(line: 76, column: 25, scope: !69)
!96 = !DILocation(line: 76, column: 39, scope: !69)
!97 = !DILocation(line: 76, column: 9, scope: !69)
!98 = !DILocation(line: 76, column: 2, scope: !69)
!99 = !DILocation(line: 76, column: 7, scope: !69)
!100 = !DILocation(line: 77, column: 23, scope: !69)
!101 = !DILocation(line: 77, column: 25, scope: !69)
!102 = !DILocation(line: 77, column: 39, scope: !69)
!103 = !DILocation(line: 77, column: 9, scope: !69)
!104 = !DILocation(line: 77, column: 2, scope: !69)
!105 = !DILocation(line: 77, column: 7, scope: !69)
!106 = !DILocation(line: 78, column: 23, scope: !69)
!107 = !DILocation(line: 78, column: 25, scope: !69)
!108 = !DILocation(line: 78, column: 39, scope: !69)
!109 = !DILocation(line: 78, column: 9, scope: !69)
!110 = !DILocation(line: 78, column: 2, scope: !69)
!111 = !DILocation(line: 78, column: 7, scope: !69)
!112 = !DILocation(line: 79, column: 23, scope: !69)
!113 = !DILocation(line: 79, column: 25, scope: !69)
!114 = !DILocation(line: 79, column: 39, scope: !69)
!115 = !DILocation(line: 79, column: 9, scope: !69)
!116 = !DILocation(line: 79, column: 2, scope: !69)
!117 = !DILocation(line: 79, column: 7, scope: !69)
!118 = !DILocation(line: 80, column: 6, scope: !119)
!119 = distinct !DILexicalBlock(scope: !69, file: !13, line: 80, column: 6)
!120 = !DILocation(line: 80, column: 10, scope: !119)
!121 = !DILocation(line: 80, column: 8, scope: !119)
!122 = !DILocation(line: 80, column: 6, scope: !69)
!123 = !DILocation(line: 81, column: 6, scope: !119)
!124 = !DILocation(line: 81, column: 11, scope: !119)
!125 = !DILocation(line: 82, column: 6, scope: !126)
!126 = distinct !DILexicalBlock(scope: !69, file: !13, line: 82, column: 6)
!127 = !DILocation(line: 82, column: 10, scope: !126)
!128 = !DILocation(line: 82, column: 15, scope: !126)
!129 = !DILocation(line: 82, column: 8, scope: !126)
!130 = !DILocation(line: 82, column: 6, scope: !69)
!131 = !DILocation(line: 83, column: 6, scope: !126)
!132 = !DILocation(line: 83, column: 11, scope: !126)
!133 = !DILocation(line: 84, column: 4, scope: !69)
!134 = !DILocation(line: 66, column: 5, scope: !135)
!135 = !DILexicalBlockFile(scope: !64, file: !13, discriminator: 2)
!136 = distinct !{!136, !137}
!137 = !DILocation(line: 66, column: 5, scope: !20)
!138 = !DILocation(line: 86, column: 6, scope: !20)
!139 = !DILocation(line: 86, column: 8, scope: !20)
!140 = !DILocation(line: 87, column: 12, scope: !20)
!141 = !DILocation(line: 87, column: 6, scope: !20)
!142 = !DILocation(line: 87, column: 10, scope: !20)
!143 = !DILocation(line: 88, column: 19, scope: !20)
!144 = !DILocation(line: 88, column: 12, scope: !20)
!145 = !DILocation(line: 88, column: 5, scope: !20)
!146 = !DILocation(line: 89, column: 1, scope: !20)
!147 = distinct !DISubprogram(name: "base64_decode", scope: !13, file: !13, line: 116, type: !148, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!148 = !DISubroutineType(types: !149)
!149 = !{!23, !150, !6}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!152 = !DILocalVariable(name: "str", arg: 1, scope: !147, file: !13, line: 116, type: !150)
!153 = !DILocation(line: 116, column: 27, scope: !147)
!154 = !DILocalVariable(name: "data", arg: 2, scope: !147, file: !13, line: 116, type: !6)
!155 = !DILocation(line: 116, column: 38, scope: !147)
!156 = !DILocalVariable(name: "p", scope: !147, file: !13, line: 118, type: !150)
!157 = !DILocation(line: 118, column: 14, scope: !147)
!158 = !DILocalVariable(name: "q", scope: !147, file: !13, line: 119, type: !10)
!159 = !DILocation(line: 119, column: 17, scope: !147)
!160 = !DILocation(line: 121, column: 6, scope: !147)
!161 = !DILocation(line: 121, column: 4, scope: !147)
!162 = !DILocation(line: 122, column: 11, scope: !163)
!163 = distinct !DILexicalBlock(scope: !147, file: !13, line: 122, column: 2)
!164 = !DILocation(line: 122, column: 9, scope: !163)
!165 = !DILocation(line: 122, column: 7, scope: !163)
!166 = !DILocation(line: 122, column: 17, scope: !167)
!167 = !DILexicalBlockFile(scope: !168, file: !13, discriminator: 1)
!168 = distinct !DILexicalBlock(scope: !163, file: !13, line: 122, column: 2)
!169 = !DILocation(line: 122, column: 16, scope: !167)
!170 = !DILocation(line: 122, column: 19, scope: !167)
!171 = !DILocation(line: 122, column: 24, scope: !172)
!172 = !DILexicalBlockFile(scope: !168, file: !13, discriminator: 2)
!173 = !DILocation(line: 122, column: 23, scope: !172)
!174 = !DILocation(line: 122, column: 26, scope: !172)
!175 = !DILocation(line: 122, column: 33, scope: !172)
!176 = !DILocation(line: 122, column: 58, scope: !177)
!177 = !DILexicalBlockFile(scope: !168, file: !13, discriminator: 3)
!178 = !DILocation(line: 122, column: 57, scope: !177)
!179 = !DILocation(line: 122, column: 36, scope: !177)
!180 = !DILocation(line: 122, column: 33, scope: !177)
!181 = !DILocation(line: 122, column: 2, scope: !182)
!182 = !DILexicalBlockFile(scope: !163, file: !13, discriminator: 4)
!183 = !DILocalVariable(name: "val", scope: !184, file: !13, line: 123, type: !185)
!184 = distinct !DILexicalBlock(scope: !168, file: !13, line: 122, column: 71)
!185 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!186 = !DILocation(line: 123, column: 16, scope: !184)
!187 = !DILocation(line: 123, column: 35, scope: !184)
!188 = !DILocation(line: 123, column: 22, scope: !184)
!189 = !DILocalVariable(name: "marker", scope: !184, file: !13, line: 124, type: !185)
!190 = !DILocation(line: 124, column: 16, scope: !184)
!191 = !DILocation(line: 124, column: 26, scope: !184)
!192 = !DILocation(line: 124, column: 30, scope: !184)
!193 = !DILocation(line: 124, column: 37, scope: !184)
!194 = !DILocation(line: 125, column: 7, scope: !195)
!195 = distinct !DILexicalBlock(scope: !184, file: !13, line: 125, column: 7)
!196 = !DILocation(line: 125, column: 11, scope: !195)
!197 = !DILocation(line: 125, column: 7, scope: !184)
!198 = !DILocation(line: 126, column: 4, scope: !195)
!199 = !DILocation(line: 127, column: 11, scope: !184)
!200 = !DILocation(line: 127, column: 15, scope: !184)
!201 = !DILocation(line: 127, column: 22, scope: !184)
!202 = !DILocation(line: 127, column: 10, scope: !184)
!203 = !DILocation(line: 127, column: 5, scope: !184)
!204 = !DILocation(line: 127, column: 8, scope: !184)
!205 = !DILocation(line: 128, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !184, file: !13, line: 128, column: 7)
!207 = !DILocation(line: 128, column: 14, scope: !206)
!208 = !DILocation(line: 128, column: 7, scope: !184)
!209 = !DILocation(line: 129, column: 12, scope: !206)
!210 = !DILocation(line: 129, column: 16, scope: !206)
!211 = !DILocation(line: 129, column: 22, scope: !206)
!212 = !DILocation(line: 129, column: 11, scope: !206)
!213 = !DILocation(line: 129, column: 6, scope: !206)
!214 = !DILocation(line: 129, column: 9, scope: !206)
!215 = !DILocation(line: 129, column: 4, scope: !206)
!216 = !DILocation(line: 130, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !184, file: !13, line: 130, column: 7)
!218 = !DILocation(line: 130, column: 14, scope: !217)
!219 = !DILocation(line: 130, column: 7, scope: !184)
!220 = !DILocation(line: 131, column: 11, scope: !217)
!221 = !DILocation(line: 131, column: 15, scope: !217)
!222 = !DILocation(line: 131, column: 6, scope: !217)
!223 = !DILocation(line: 131, column: 9, scope: !217)
!224 = !DILocation(line: 131, column: 4, scope: !217)
!225 = !DILocation(line: 132, column: 2, scope: !184)
!226 = !DILocation(line: 122, column: 65, scope: !227)
!227 = !DILexicalBlockFile(scope: !168, file: !13, discriminator: 5)
!228 = !DILocation(line: 122, column: 2, scope: !227)
!229 = distinct !{!229, !230}
!230 = !DILocation(line: 122, column: 2, scope: !147)
!231 = !DILocation(line: 133, column: 9, scope: !147)
!232 = !DILocation(line: 133, column: 31, scope: !147)
!233 = !DILocation(line: 133, column: 11, scope: !147)
!234 = !DILocation(line: 133, column: 2, scope: !147)
!235 = !DILocation(line: 134, column: 1, scope: !147)
!236 = distinct !DISubprogram(name: "token_decode", scope: !13, file: !13, line: 94, type: !237, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!237 = !DISubroutineType(types: !238)
!238 = !{!185, !150}
!239 = !DILocalVariable(name: "token", arg: 1, scope: !236, file: !13, line: 94, type: !150)
!240 = !DILocation(line: 94, column: 26, scope: !236)
!241 = !DILocalVariable(name: "i", scope: !236, file: !13, line: 96, type: !23)
!242 = !DILocation(line: 96, column: 6, scope: !236)
!243 = !DILocalVariable(name: "val", scope: !236, file: !13, line: 97, type: !185)
!244 = !DILocation(line: 97, column: 15, scope: !236)
!245 = !DILocalVariable(name: "marker", scope: !236, file: !13, line: 98, type: !23)
!246 = !DILocation(line: 98, column: 6, scope: !236)
!247 = !DILocation(line: 99, column: 13, scope: !248)
!248 = distinct !DILexicalBlock(scope: !236, file: !13, line: 99, column: 6)
!249 = !DILocation(line: 99, column: 6, scope: !248)
!250 = !DILocation(line: 99, column: 20, scope: !248)
!251 = !DILocation(line: 99, column: 6, scope: !236)
!252 = !DILocation(line: 100, column: 3, scope: !248)
!253 = !DILocation(line: 101, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !236, file: !13, line: 101, column: 2)
!255 = !DILocation(line: 101, column: 7, scope: !254)
!256 = !DILocation(line: 101, column: 14, scope: !257)
!257 = !DILexicalBlockFile(scope: !258, file: !13, discriminator: 1)
!258 = distinct !DILexicalBlock(scope: !254, file: !13, line: 101, column: 2)
!259 = !DILocation(line: 101, column: 16, scope: !257)
!260 = !DILocation(line: 101, column: 2, scope: !257)
!261 = !DILocation(line: 102, column: 7, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !13, line: 101, column: 26)
!263 = !DILocation(line: 103, column: 13, scope: !264)
!264 = distinct !DILexicalBlock(scope: !262, file: !13, line: 103, column: 7)
!265 = !DILocation(line: 103, column: 7, scope: !264)
!266 = !DILocation(line: 103, column: 16, scope: !264)
!267 = !DILocation(line: 103, column: 7, scope: !262)
!268 = !DILocation(line: 104, column: 10, scope: !264)
!269 = !DILocation(line: 104, column: 4, scope: !264)
!270 = !DILocation(line: 105, column: 12, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !13, line: 105, column: 12)
!272 = !DILocation(line: 105, column: 19, scope: !271)
!273 = !DILocation(line: 105, column: 12, scope: !264)
!274 = !DILocation(line: 106, column: 4, scope: !271)
!275 = !DILocation(line: 108, column: 21, scope: !271)
!276 = !DILocation(line: 108, column: 15, scope: !271)
!277 = !DILocation(line: 108, column: 11, scope: !271)
!278 = !DILocation(line: 108, column: 8, scope: !271)
!279 = !DILocation(line: 109, column: 2, scope: !262)
!280 = !DILocation(line: 101, column: 22, scope: !281)
!281 = !DILexicalBlockFile(scope: !258, file: !13, discriminator: 2)
!282 = !DILocation(line: 101, column: 2, scope: !281)
!283 = distinct !{!283, !284}
!284 = !DILocation(line: 101, column: 2, scope: !236)
!285 = !DILocation(line: 110, column: 6, scope: !286)
!286 = distinct !DILexicalBlock(scope: !236, file: !13, line: 110, column: 6)
!287 = !DILocation(line: 110, column: 13, scope: !286)
!288 = !DILocation(line: 110, column: 6, scope: !236)
!289 = !DILocation(line: 111, column: 3, scope: !286)
!290 = !DILocation(line: 112, column: 10, scope: !236)
!291 = !DILocation(line: 112, column: 17, scope: !236)
!292 = !DILocation(line: 112, column: 26, scope: !236)
!293 = !DILocation(line: 112, column: 24, scope: !236)
!294 = !DILocation(line: 112, column: 2, scope: !236)
!295 = !DILocation(line: 113, column: 1, scope: !236)
!296 = distinct !DISubprogram(name: "pos", scope: !13, file: !13, line: 43, type: !297, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!297 = !DISubroutineType(types: !298)
!298 = !{!23, !5}
!299 = !DILocalVariable(name: "c", arg: 1, scope: !296, file: !13, line: 43, type: !5)
!300 = !DILocation(line: 43, column: 10, scope: !296)
!301 = !DILocalVariable(name: "p", scope: !296, file: !13, line: 45, type: !4)
!302 = !DILocation(line: 45, column: 8, scope: !296)
!303 = !DILocation(line: 46, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !296, file: !13, line: 46, column: 2)
!305 = !DILocation(line: 46, column: 7, scope: !304)
!306 = !DILocation(line: 46, column: 26, scope: !307)
!307 = !DILexicalBlockFile(scope: !308, file: !13, discriminator: 1)
!308 = distinct !DILexicalBlock(scope: !304, file: !13, line: 46, column: 2)
!309 = !DILocation(line: 46, column: 25, scope: !307)
!310 = !DILocation(line: 46, column: 2, scope: !307)
!311 = !DILocation(line: 47, column: 8, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !13, line: 47, column: 7)
!313 = !DILocation(line: 47, column: 7, scope: !312)
!314 = !DILocation(line: 47, column: 13, scope: !312)
!315 = !DILocation(line: 47, column: 10, scope: !312)
!316 = !DILocation(line: 47, column: 7, scope: !308)
!317 = !DILocation(line: 48, column: 11, scope: !312)
!318 = !DILocation(line: 48, column: 13, scope: !312)
!319 = !DILocation(line: 48, column: 4, scope: !312)
!320 = !DILocation(line: 47, column: 13, scope: !321)
!321 = !DILexicalBlockFile(scope: !312, file: !13, discriminator: 1)
!322 = !DILocation(line: 46, column: 30, scope: !323)
!323 = !DILexicalBlockFile(scope: !308, file: !13, discriminator: 2)
!324 = !DILocation(line: 46, column: 2, scope: !323)
!325 = distinct !{!325, !326}
!326 = !DILocation(line: 46, column: 2, scope: !296)
!327 = !DILocation(line: 49, column: 2, scope: !296)
!328 = !DILocation(line: 50, column: 1, scope: !296)
