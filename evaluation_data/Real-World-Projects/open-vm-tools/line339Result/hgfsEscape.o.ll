; ModuleID = './hgfsEscape.o.i'
source_filename = "./hgfsEscape.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HgfsEscapeContext = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@HGFS_ILLEGAL_CHARS = global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@HGFS_SUBSTITUTE_CHARS = global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"%s: failed to calculate escaped name size - name is invalid\0A\00", align 1
@__FUNCTION__.HgfsEscape_GetSize = private unnamed_addr constant [19 x i8] c"HgfsEscape_GetSize\00", align 1

; Function Attrs: nounwind uwtable
define i32 @HgfsEscape_Do(i8*, i32, i32, i8*) #0 !dbg !38 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !42, metadata !43), !dbg !44
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !45, metadata !43), !dbg !46
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !47, metadata !43), !dbg !48
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !49, metadata !43), !dbg !50
  call void @llvm.dbg.declare(metadata i8** %10, metadata !51, metadata !43), !dbg !52
  %17 = load i8*, i8** %6, align 8, !dbg !53
  store i8* %17, i8** %10, align 8, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %11, metadata !54, metadata !43), !dbg !55
  %18 = load i32, i32* %8, align 4, !dbg !56
  store i32 %18, i32* %11, align 4, !dbg !55
  call void @llvm.dbg.declare(metadata i8** %12, metadata !57, metadata !43), !dbg !58
  %19 = load i8*, i8** %9, align 8, !dbg !59
  store i8* %19, i8** %12, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata i8** %13, metadata !60, metadata !43), !dbg !61
  %20 = load i8*, i8** %6, align 8, !dbg !62
  %21 = load i32, i32* %7, align 4, !dbg !63
  %22 = zext i32 %21 to i64, !dbg !64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22, !dbg !64
  store i8* %23, i8** %13, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i8** %14, metadata !65, metadata !43), !dbg !66
  %24 = load i32, i32* %7, align 4, !dbg !67
  %25 = sub i32 %24, 1, !dbg !69
  %26 = zext i32 %25 to i64, !dbg !70
  %27 = load i8*, i8** %6, align 8, !dbg !70
  %28 = getelementptr inbounds i8, i8* %27, i64 %26, !dbg !70
  %29 = load i8, i8* %28, align 1, !dbg !70
  %30 = sext i8 %29 to i32, !dbg !70
  %31 = icmp eq i32 %30, 0, !dbg !71
  br i1 %31, label %32, label %37, !dbg !72

; <label>:32:                                     ; preds = %4
  %33 = load i8*, i8** %13, align 8, !dbg !73
  %34 = getelementptr inbounds i8, i8* %33, i32 -1, !dbg !73
  store i8* %34, i8** %13, align 8, !dbg !73
  %35 = load i32, i32* %7, align 4, !dbg !75
  %36 = add i32 %35, -1, !dbg !75
  store i32 %36, i32* %7, align 4, !dbg !75
  br label %37, !dbg !76

; <label>:37:                                     ; preds = %32, %4
  br label %38, !dbg !77

; <label>:38:                                     ; preds = %54, %37
  %39 = load i8*, i8** %10, align 8, !dbg !78
  %40 = load i8, i8* %39, align 1, !dbg !80
  %41 = sext i8 %40 to i32, !dbg !80
  %42 = icmp eq i32 %41, 0, !dbg !81
  br i1 %42, label %43, label %52, !dbg !82

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %10, align 8, !dbg !83
  %45 = load i8*, i8** %6, align 8, !dbg !85
  %46 = ptrtoint i8* %44 to i64, !dbg !86
  %47 = ptrtoint i8* %45 to i64, !dbg !86
  %48 = sub i64 %46, %47, !dbg !86
  %49 = load i32, i32* %7, align 4, !dbg !87
  %50 = zext i32 %49 to i64, !dbg !87
  %51 = icmp slt i64 %48, %50, !dbg !88
  br label %52

; <label>:52:                                     ; preds = %43, %38
  %53 = phi i1 [ false, %38 ], [ %51, %43 ]
  br i1 %53, label %54, label %61, !dbg !89

; <label>:54:                                     ; preds = %52
  %55 = load i8*, i8** %10, align 8, !dbg !91
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !91
  store i8* %56, i8** %10, align 8, !dbg !91
  %57 = load i32, i32* %11, align 4, !dbg !93
  %58 = add i32 %57, -1, !dbg !93
  store i32 %58, i32* %11, align 4, !dbg !93
  %59 = load i8*, i8** %12, align 8, !dbg !94
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !94
  store i8* %60, i8** %12, align 8, !dbg !94
  store i8 0, i8* %59, align 1, !dbg !95
  br label %38, !dbg !96, !llvm.loop !98

; <label>:61:                                     ; preds = %52
  br label %62, !dbg !99

; <label>:62:                                     ; preds = %89, %61
  %63 = load i8*, i8** %10, align 8, !dbg !100
  %64 = load i8*, i8** %6, align 8, !dbg !101
  %65 = ptrtoint i8* %63 to i64, !dbg !102
  %66 = ptrtoint i8* %64 to i64, !dbg !102
  %67 = sub i64 %65, %66, !dbg !102
  %68 = load i32, i32* %7, align 4, !dbg !103
  %69 = zext i32 %68 to i64, !dbg !103
  %70 = icmp slt i64 %67, %69, !dbg !104
  br i1 %70, label %71, label %100, !dbg !105

; <label>:71:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata i32* %15, metadata !106, metadata !43), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %16, metadata !109, metadata !43), !dbg !110
  %72 = load i8*, i8** %10, align 8, !dbg !111
  %73 = load i8*, i8** %13, align 8, !dbg !112
  %74 = call i32 @CPName_GetComponent(i8* %72, i8* %73, i8** %14), !dbg !113
  store i32 %74, i32* %16, align 4, !dbg !110
  %75 = load i32, i32* %16, align 4, !dbg !114
  %76 = icmp slt i32 %75, 0, !dbg !116
  br i1 %76, label %77, label %79, !dbg !117

; <label>:77:                                     ; preds = %71
  %78 = load i32, i32* %16, align 4, !dbg !118
  store i32 %78, i32* %5, align 4, !dbg !120
  br label %108, !dbg !120

; <label>:79:                                     ; preds = %71
  %80 = load i8*, i8** %10, align 8, !dbg !121
  %81 = load i32, i32* %16, align 4, !dbg !122
  %82 = load i32, i32* %11, align 4, !dbg !123
  %83 = load i8*, i8** %12, align 8, !dbg !124
  %84 = call i32 @HgfsEscapeDoComponent(i8* %80, i32 %81, i32 %82, i8* %83), !dbg !125
  store i32 %84, i32* %15, align 4, !dbg !126
  %85 = load i32, i32* %15, align 4, !dbg !127
  %86 = icmp slt i32 %85, 0, !dbg !129
  br i1 %86, label %87, label %89, !dbg !130

; <label>:87:                                     ; preds = %79
  %88 = load i32, i32* %15, align 4, !dbg !131
  store i32 %88, i32* %5, align 4, !dbg !133
  br label %108, !dbg !133

; <label>:89:                                     ; preds = %79
  %90 = load i8*, i8** %14, align 8, !dbg !134
  store i8* %90, i8** %10, align 8, !dbg !135
  %91 = load i32, i32* %15, align 4, !dbg !136
  %92 = add nsw i32 %91, 1, !dbg !137
  %93 = load i32, i32* %11, align 4, !dbg !138
  %94 = sub i32 %93, %92, !dbg !138
  store i32 %94, i32* %11, align 4, !dbg !138
  %95 = load i32, i32* %15, align 4, !dbg !139
  %96 = add nsw i32 %95, 1, !dbg !140
  %97 = load i8*, i8** %12, align 8, !dbg !141
  %98 = sext i32 %96 to i64, !dbg !141
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !141
  store i8* %99, i8** %12, align 8, !dbg !141
  br label %62, !dbg !142, !llvm.loop !143

; <label>:100:                                    ; preds = %62
  %101 = load i8*, i8** %12, align 8, !dbg !144
  %102 = load i8*, i8** %9, align 8, !dbg !145
  %103 = ptrtoint i8* %101 to i64, !dbg !146
  %104 = ptrtoint i8* %102 to i64, !dbg !146
  %105 = sub i64 %103, %104, !dbg !146
  %106 = trunc i64 %105 to i32, !dbg !147
  %107 = sub nsw i32 %106, 1, !dbg !148
  store i32 %107, i32* %5, align 4, !dbg !149
  br label %108, !dbg !149

; <label>:108:                                    ; preds = %100, %87, %77
  %109 = load i32, i32* %5, align 4, !dbg !150
  ret i32 %109, !dbg !150
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @CPName_GetComponent(i8*, i8*, i8**) #2

; Function Attrs: nounwind uwtable
define internal i32 @HgfsEscapeDoComponent(i8*, i32, i32, i8*) #0 !dbg !151 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.HgfsEscapeContext, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !152, metadata !43), !dbg !153
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !154, metadata !43), !dbg !155
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !156, metadata !43), !dbg !157
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !158, metadata !43), !dbg !159
  call void @llvm.dbg.declare(metadata %struct.HgfsEscapeContext* %10, metadata !160, metadata !43), !dbg !161
  %11 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %10, i32 0, i32 0, !dbg !162
  store i32 0, i32* %11, align 8, !dbg !163
  %12 = load i32, i32* %8, align 4, !dbg !164
  %13 = zext i32 %12 to i64, !dbg !164
  %14 = udiv i64 %13, 1, !dbg !165
  %15 = trunc i64 %14 to i32, !dbg !164
  %16 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %10, i32 0, i32 1, !dbg !166
  store i32 %15, i32* %16, align 4, !dbg !167
  %17 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %10, i32 0, i32 2, !dbg !168
  store i32 0, i32* %17, align 8, !dbg !169
  %18 = load i8*, i8** %9, align 8, !dbg !170
  %19 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %10, i32 0, i32 3, !dbg !171
  store i8* %18, i8** %19, align 8, !dbg !172
  %20 = load i8*, i8** %6, align 8, !dbg !173
  %21 = load i32, i32* %7, align 4, !dbg !175
  %22 = bitcast %struct.HgfsEscapeContext* %10 to i8*, !dbg !176
  %23 = call signext i8 @HgfsEscapeEnumerate(i8* %20, i32 %21, i8 (i8*, i32, i32, i8*)* @HgfsAddEscapeCharacter, i8* %22), !dbg !177
  %24 = icmp ne i8 %23, 0, !dbg !177
  br i1 %24, label %26, label %25, !dbg !178

; <label>:25:                                     ; preds = %4
  store i32 -1, i32* %5, align 4, !dbg !179
  br label %32, !dbg !179

; <label>:26:                                     ; preds = %4
  %27 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %10, i32 0, i32 2, !dbg !181
  %28 = load i32, i32* %27, align 8, !dbg !181
  %29 = zext i32 %28 to i64, !dbg !182
  %30 = mul i64 %29, 1, !dbg !183
  %31 = trunc i64 %30 to i32, !dbg !182
  store i32 %31, i32* %5, align 4, !dbg !184
  br label %32, !dbg !184

; <label>:32:                                     ; preds = %26, %25
  %33 = load i32, i32* %5, align 4, !dbg !185
  ret i32 %33, !dbg !185
}

; Function Attrs: nounwind uwtable
define i32 @HgfsEscape_GetSize(i8*, i32) #0 !dbg !186 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !189, metadata !43), !dbg !190
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !191, metadata !43), !dbg !192
  call void @llvm.dbg.declare(metadata i32* %6, metadata !193, metadata !43), !dbg !194
  store i32 0, i32* %6, align 4, !dbg !194
  call void @llvm.dbg.declare(metadata i8** %7, metadata !195, metadata !43), !dbg !196
  %11 = load i8*, i8** %4, align 8, !dbg !197
  store i8* %11, i8** %7, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata i8** %8, metadata !198, metadata !43), !dbg !199
  %12 = load i8*, i8** %4, align 8, !dbg !200
  %13 = load i32, i32* %5, align 4, !dbg !201
  %14 = zext i32 %13 to i64, !dbg !202
  %15 = getelementptr inbounds i8, i8* %12, i64 %14, !dbg !202
  store i8* %15, i8** %8, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata i8** %9, metadata !203, metadata !43), !dbg !204
  %16 = load i32, i32* %5, align 4, !dbg !205
  %17 = icmp eq i32 %16, 0, !dbg !207
  br i1 %17, label %18, label %19, !dbg !208

; <label>:18:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !209
  br label %87, !dbg !209

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %5, align 4, !dbg !211
  %21 = sub i32 %20, 1, !dbg !213
  %22 = zext i32 %21 to i64, !dbg !214
  %23 = load i8*, i8** %4, align 8, !dbg !214
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !214
  %25 = load i8, i8* %24, align 1, !dbg !214
  %26 = sext i8 %25 to i32, !dbg !214
  %27 = icmp eq i32 %26, 0, !dbg !215
  br i1 %27, label %28, label %33, !dbg !216

; <label>:28:                                     ; preds = %19
  %29 = load i8*, i8** %8, align 8, !dbg !217
  %30 = getelementptr inbounds i8, i8* %29, i32 -1, !dbg !217
  store i8* %30, i8** %8, align 8, !dbg !217
  %31 = load i32, i32* %5, align 4, !dbg !219
  %32 = add i32 %31, -1, !dbg !219
  store i32 %32, i32* %5, align 4, !dbg !219
  br label %33, !dbg !220

; <label>:33:                                     ; preds = %28, %19
  br label %34, !dbg !221

; <label>:34:                                     ; preds = %50, %33
  %35 = load i8*, i8** %7, align 8, !dbg !222
  %36 = load i8, i8* %35, align 1, !dbg !224
  %37 = sext i8 %36 to i32, !dbg !224
  %38 = icmp eq i32 %37, 0, !dbg !225
  br i1 %38, label %39, label %48, !dbg !226

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %7, align 8, !dbg !227
  %41 = load i8*, i8** %4, align 8, !dbg !229
  %42 = ptrtoint i8* %40 to i64, !dbg !230
  %43 = ptrtoint i8* %41 to i64, !dbg !230
  %44 = sub i64 %42, %43, !dbg !230
  %45 = load i32, i32* %5, align 4, !dbg !231
  %46 = zext i32 %45 to i64, !dbg !231
  %47 = icmp slt i64 %44, %46, !dbg !232
  br label %48

; <label>:48:                                     ; preds = %39, %34
  %49 = phi i1 [ false, %34 ], [ %47, %39 ]
  br i1 %49, label %50, label %53, !dbg !233

; <label>:50:                                     ; preds = %48
  %51 = load i8*, i8** %7, align 8, !dbg !235
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !235
  store i8* %52, i8** %7, align 8, !dbg !235
  br label %34, !dbg !237, !llvm.loop !239

; <label>:53:                                     ; preds = %48
  br label %54, !dbg !240

; <label>:54:                                     ; preds = %70, %53
  %55 = load i8*, i8** %7, align 8, !dbg !241
  %56 = load i8*, i8** %4, align 8, !dbg !242
  %57 = ptrtoint i8* %55 to i64, !dbg !243
  %58 = ptrtoint i8* %56 to i64, !dbg !243
  %59 = sub i64 %57, %58, !dbg !243
  %60 = load i32, i32* %5, align 4, !dbg !244
  %61 = zext i32 %60 to i64, !dbg !244
  %62 = icmp slt i64 %59, %61, !dbg !245
  br i1 %62, label %63, label %77, !dbg !246

; <label>:63:                                     ; preds = %54
  call void @llvm.dbg.declare(metadata i32* %10, metadata !247, metadata !43), !dbg !249
  %64 = load i8*, i8** %7, align 8, !dbg !250
  %65 = load i8*, i8** %8, align 8, !dbg !251
  %66 = call i32 @CPName_GetComponent(i8* %64, i8* %65, i8** %9), !dbg !252
  store i32 %66, i32* %10, align 4, !dbg !249
  %67 = load i32, i32* %10, align 4, !dbg !253
  %68 = icmp slt i32 %67, 0, !dbg !255
  br i1 %68, label %69, label %70, !dbg !256

; <label>:69:                                     ; preds = %63
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.HgfsEscape_GetSize, i32 0, i32 0)), !dbg !257
  store i32 -1, i32* %3, align 4, !dbg !259
  br label %87, !dbg !259

; <label>:70:                                     ; preds = %63
  %71 = load i8*, i8** %7, align 8, !dbg !260
  %72 = load i32, i32* %10, align 4, !dbg !261
  %73 = call i32 @HgfsEscapeGetComponentSize(i8* %71, i32 %72), !dbg !262
  %74 = load i32, i32* %6, align 4, !dbg !263
  %75 = add i32 %74, %73, !dbg !263
  store i32 %75, i32* %6, align 4, !dbg !263
  %76 = load i8*, i8** %9, align 8, !dbg !264
  store i8* %76, i8** %7, align 8, !dbg !265
  br label %54, !dbg !266, !llvm.loop !267

; <label>:77:                                     ; preds = %54
  %78 = load i32, i32* %6, align 4, !dbg !268
  %79 = icmp eq i32 %78, 0, !dbg !269
  br i1 %79, label %80, label %81, !dbg !270

; <label>:80:                                     ; preds = %77
  br label %85, !dbg !271

; <label>:81:                                     ; preds = %77
  %82 = load i32, i32* %6, align 4, !dbg !272
  %83 = load i32, i32* %5, align 4, !dbg !273
  %84 = add i32 %82, %83, !dbg !274
  br label %85, !dbg !275

; <label>:85:                                     ; preds = %81, %80
  %86 = phi i32 [ 0, %80 ], [ %84, %81 ], !dbg !276
  store i32 %86, i32* %3, align 4, !dbg !277
  br label %87, !dbg !277

; <label>:87:                                     ; preds = %85, %69, %18
  %88 = load i32, i32* %3, align 4, !dbg !278
  ret i32 %88, !dbg !278
}

declare void @Log(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @HgfsEscapeGetComponentSize(i8*, i32) #0 !dbg !279 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !280, metadata !43), !dbg !281
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !282, metadata !43), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %5, metadata !284, metadata !43), !dbg !285
  store i32 0, i32* %5, align 4, !dbg !285
  %6 = load i8*, i8** %3, align 8, !dbg !286
  %7 = load i32, i32* %4, align 4, !dbg !287
  %8 = bitcast i32* %5 to i8*, !dbg !288
  %9 = call signext i8 @HgfsEscapeEnumerate(i8* %6, i32 %7, i8 (i8*, i32, i32, i8*)* @HgfsCountEscapeChars, i8* %8), !dbg !289
  %10 = load i32, i32* %5, align 4, !dbg !290
  ret i32 %10, !dbg !291
}

; Function Attrs: nounwind uwtable
define i32 @HgfsEscape_Undo(i8*, i32) #0 !dbg !292 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !295, metadata !43), !dbg !296
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !297, metadata !43), !dbg !298
  call void @llvm.dbg.declare(metadata i32* %5, metadata !299, metadata !43), !dbg !300
  call void @llvm.dbg.declare(metadata i32* %6, metadata !301, metadata !43), !dbg !302
  %9 = load i32, i32* %4, align 4, !dbg !303
  %10 = add i32 %9, 1, !dbg !304
  store i32 %10, i32* %6, align 4, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %7, metadata !305, metadata !43), !dbg !306
  store i32 0, i32* %7, align 4, !dbg !306
  call void @llvm.dbg.declare(metadata i8** %8, metadata !307, metadata !43), !dbg !308
  %11 = load i8*, i8** %3, align 8, !dbg !309
  store i8* %11, i8** %8, align 8, !dbg !308
  br label %12, !dbg !310

; <label>:12:                                     ; preds = %36, %2
  %13 = load i8*, i8** %8, align 8, !dbg !311
  %14 = icmp ne i8* %13, null, !dbg !313
  br i1 %14, label %15, label %37, !dbg !314

; <label>:15:                                     ; preds = %12
  %16 = load i8*, i8** %8, align 8, !dbg !315
  call void @HgfsEscapeUndoComponent(i8* %16, i32* %6), !dbg !317
  %17 = load i8*, i8** %8, align 8, !dbg !318
  %18 = call i64 @strlen(i8* %17) #5, !dbg !319
  %19 = add i64 %18, 1, !dbg !320
  %20 = trunc i64 %19 to i32, !dbg !319
  store i32 %20, i32* %5, align 4, !dbg !321
  %21 = load i32, i32* %5, align 4, !dbg !322
  %22 = load i32, i32* %7, align 4, !dbg !323
  %23 = add i32 %22, %21, !dbg !323
  store i32 %23, i32* %7, align 4, !dbg !323
  %24 = load i32, i32* %6, align 4, !dbg !324
  %25 = icmp ugt i32 %24, 1, !dbg !326
  br i1 %25, label %26, label %35, !dbg !327

; <label>:26:                                     ; preds = %15
  %27 = load i8*, i8** %8, align 8, !dbg !328
  %28 = load i32, i32* %5, align 4, !dbg !330
  %29 = zext i32 %28 to i64, !dbg !331
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !331
  store i8* %30, i8** %8, align 8, !dbg !332
  %31 = load i8*, i8** %8, align 8, !dbg !333
  %32 = call i64 @strlen(i8* %31) #5, !dbg !334
  %33 = add i64 %32, 1, !dbg !335
  %34 = trunc i64 %33 to i32, !dbg !334
  store i32 %34, i32* %5, align 4, !dbg !336
  br label %36, !dbg !337

; <label>:35:                                     ; preds = %15
  store i8* null, i8** %8, align 8, !dbg !338
  br label %36

; <label>:36:                                     ; preds = %35, %26
  br label %12, !dbg !340, !llvm.loop !342

; <label>:37:                                     ; preds = %12
  %38 = load i32, i32* %7, align 4, !dbg !343
  %39 = sub i32 %38, 1, !dbg !344
  ret i32 %39, !dbg !345
}

; Function Attrs: nounwind uwtable
define internal void @HgfsEscapeUndoComponent(i8*, i32*) #0 !dbg !346 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !349, metadata !43), !dbg !350
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !351, metadata !43), !dbg !352
  call void @llvm.dbg.declare(metadata i64* %5, metadata !353, metadata !43), !dbg !357
  call void @llvm.dbg.declare(metadata i64* %6, metadata !358, metadata !43), !dbg !359
  call void @llvm.dbg.declare(metadata i8** %7, metadata !360, metadata !43), !dbg !361
  call void @llvm.dbg.declare(metadata i8** %8, metadata !362, metadata !43), !dbg !363
  %10 = load i8*, i8** %3, align 8, !dbg !364
  store i8* %10, i8** %7, align 8, !dbg !365
  %11 = load i8*, i8** %7, align 8, !dbg !366
  %12 = call i64 @strlen(i8* %11) #5, !dbg !367
  store i64 %12, i64* %6, align 8, !dbg !368
  %13 = load i8*, i8** %7, align 8, !dbg !369
  %14 = call i8* @strchr(i8* %13, i32 37) #5, !dbg !370
  store i8* %14, i8** %8, align 8, !dbg !371
  br label %15, !dbg !372

; <label>:15:                                     ; preds = %95, %2
  %16 = load i8*, i8** %8, align 8, !dbg !373
  %17 = icmp ne i8* %16, null, !dbg !375
  br i1 %17, label %18, label %96, !dbg !376

; <label>:18:                                     ; preds = %15
  %19 = load i8*, i8** %8, align 8, !dbg !377
  %20 = load i8*, i8** %3, align 8, !dbg !379
  %21 = ptrtoint i8* %19 to i64, !dbg !380
  %22 = ptrtoint i8* %20 to i64, !dbg !380
  %23 = sub i64 %21, %22, !dbg !380
  store i64 %23, i64* %5, align 8, !dbg !381
  %24 = load i8*, i8** %3, align 8, !dbg !382
  %25 = load i64, i64* %5, align 8, !dbg !384
  %26 = trunc i64 %25 to i32, !dbg !384
  %27 = load i64, i64* %6, align 8, !dbg !385
  %28 = trunc i64 %27 to i32, !dbg !385
  %29 = call signext i8 @HgfsIsEscapeSequence(i8* %24, i32 %26, i32 %28), !dbg !386
  %30 = icmp ne i8 %29, 0, !dbg !386
  br i1 %30, label %31, label %91, !dbg !387

; <label>:31:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i8** %9, metadata !388, metadata !43), !dbg !390
  %32 = load i8*, i8** @HGFS_SUBSTITUTE_CHARS, align 8, !dbg !391
  %33 = load i64, i64* %5, align 8, !dbg !392
  %34 = sub i64 %33, 1, !dbg !393
  %35 = load i8*, i8** %3, align 8, !dbg !394
  %36 = getelementptr inbounds i8, i8* %35, i64 %34, !dbg !394
  %37 = load i8, i8* %36, align 1, !dbg !394
  %38 = sext i8 %37 to i32, !dbg !394
  %39 = call i8* @strchr(i8* %32, i32 %38) #5, !dbg !395
  store i8* %39, i8** %9, align 8, !dbg !390
  %40 = load i8*, i8** %9, align 8, !dbg !396
  %41 = icmp ne i8* %40, null, !dbg !398
  br i1 %41, label %42, label %55, !dbg !399

; <label>:42:                                     ; preds = %31
  %43 = load i8*, i8** %9, align 8, !dbg !400
  %44 = load i8*, i8** @HGFS_SUBSTITUTE_CHARS, align 8, !dbg !402
  %45 = ptrtoint i8* %43 to i64, !dbg !403
  %46 = ptrtoint i8* %44 to i64, !dbg !403
  %47 = sub i64 %45, %46, !dbg !403
  %48 = load i8*, i8** @HGFS_ILLEGAL_CHARS, align 8, !dbg !404
  %49 = getelementptr inbounds i8, i8* %48, i64 %47, !dbg !404
  %50 = load i8, i8* %49, align 1, !dbg !404
  %51 = load i64, i64* %5, align 8, !dbg !405
  %52 = sub i64 %51, 1, !dbg !406
  %53 = load i8*, i8** %3, align 8, !dbg !407
  %54 = getelementptr inbounds i8, i8* %53, i64 %52, !dbg !407
  store i8 %50, i8* %54, align 1, !dbg !408
  br label %69, !dbg !409

; <label>:55:                                     ; preds = %31
  %56 = load i64, i64* %5, align 8, !dbg !410
  %57 = sub i64 %56, 1, !dbg !413
  %58 = load i8*, i8** %3, align 8, !dbg !414
  %59 = getelementptr inbounds i8, i8* %58, i64 %57, !dbg !414
  %60 = load i8, i8* %59, align 1, !dbg !414
  %61 = sext i8 %60 to i32, !dbg !414
  %62 = icmp eq i32 %61, 93, !dbg !415
  br i1 %62, label %63, label %68, !dbg !414

; <label>:63:                                     ; preds = %55
  %64 = load i64, i64* %5, align 8, !dbg !416
  %65 = sub i64 %64, 1, !dbg !418
  %66 = load i8*, i8** %3, align 8, !dbg !419
  %67 = getelementptr inbounds i8, i8* %66, i64 %65, !dbg !419
  store i8 37, i8* %67, align 1, !dbg !420
  br label %68, !dbg !421

; <label>:68:                                     ; preds = %63, %55
  br label %69

; <label>:69:                                     ; preds = %68, %42
  %70 = load i8*, i8** %8, align 8, !dbg !422
  %71 = load i8*, i8** %8, align 8, !dbg !423
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !424
  %73 = load i32*, i32** %4, align 8, !dbg !425
  %74 = load i32, i32* %73, align 4, !dbg !426
  %75 = zext i32 %74 to i64, !dbg !427
  %76 = load i64, i64* %5, align 8, !dbg !428
  %77 = sub i64 %75, %76, !dbg !429
  %78 = sub i64 %77, 1, !dbg !430
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %70, i8* %72, i64 %78, i32 1, i1 false), !dbg !431
  %79 = load i32*, i32** %4, align 8, !dbg !432
  %80 = load i32, i32* %79, align 4, !dbg !433
  %81 = add i32 %80, -1, !dbg !433
  store i32 %81, i32* %79, align 4, !dbg !433
  %82 = load i64, i64* %6, align 8, !dbg !434
  %83 = add i64 %82, -1, !dbg !434
  store i64 %83, i64* %6, align 8, !dbg !434
  %84 = load i64, i64* %6, align 8, !dbg !435
  %85 = icmp ugt i64 %84, 0, !dbg !437
  br i1 %85, label %86, label %89, !dbg !438

; <label>:86:                                     ; preds = %69
  %87 = load i8*, i8** %8, align 8, !dbg !439
  %88 = call i8* @strchr(i8* %87, i32 37) #5, !dbg !441
  store i8* %88, i8** %8, align 8, !dbg !442
  br label %90, !dbg !443

; <label>:89:                                     ; preds = %69
  store i8* null, i8** %8, align 8, !dbg !444
  br label %90

; <label>:90:                                     ; preds = %89, %86
  br label %95, !dbg !446

; <label>:91:                                     ; preds = %18
  %92 = load i8*, i8** %8, align 8, !dbg !447
  %93 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !449
  %94 = call i8* @strchr(i8* %93, i32 37) #5, !dbg !450
  store i8* %94, i8** %8, align 8, !dbg !451
  br label %95

; <label>:95:                                     ; preds = %91, %90
  br label %15, !dbg !452, !llvm.loop !454

; <label>:96:                                     ; preds = %15
  %97 = load i64, i64* %6, align 8, !dbg !455
  %98 = add i64 %97, 1, !dbg !456
  %99 = load i32*, i32** %4, align 8, !dbg !457
  %100 = load i32, i32* %99, align 4, !dbg !458
  %101 = zext i32 %100 to i64, !dbg !458
  %102 = sub i64 %101, %98, !dbg !458
  %103 = trunc i64 %102 to i32, !dbg !458
  store i32 %103, i32* %99, align 4, !dbg !458
  ret void, !dbg !459
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsIsEscapeSequence(i8*, i32, i32) #0 !dbg !460 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !464, metadata !43), !dbg !465
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !466, metadata !43), !dbg !467
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !468, metadata !43), !dbg !469
  %9 = load i32, i32* %6, align 4, !dbg !470
  %10 = zext i32 %9 to i64, !dbg !472
  %11 = load i8*, i8** %5, align 8, !dbg !472
  %12 = getelementptr inbounds i8, i8* %11, i64 %10, !dbg !472
  %13 = load i8, i8* %12, align 1, !dbg !472
  %14 = sext i8 %13 to i32, !dbg !472
  %15 = icmp eq i32 %14, 37, !dbg !473
  br i1 %15, label %16, label %69, !dbg !474

; <label>:16:                                     ; preds = %3
  %17 = load i32, i32* %6, align 4, !dbg !475
  %18 = icmp ugt i32 %17, 0, !dbg !477
  br i1 %18, label %19, label %69, !dbg !478

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i8** %8, metadata !479, metadata !43), !dbg !481
  %20 = load i32, i32* %6, align 4, !dbg !482
  %21 = sub i32 %20, 1, !dbg !484
  %22 = zext i32 %21 to i64, !dbg !485
  %23 = load i8*, i8** %5, align 8, !dbg !485
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !485
  %25 = load i8, i8* %24, align 1, !dbg !485
  %26 = sext i8 %25 to i32, !dbg !485
  %27 = icmp eq i32 %26, 93, !dbg !486
  br i1 %27, label %28, label %55, !dbg !487

; <label>:28:                                     ; preds = %19
  %29 = load i32, i32* %6, align 4, !dbg !488
  %30 = icmp ugt i32 %29, 1, !dbg !490
  br i1 %30, label %31, label %55, !dbg !491

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %6, align 4, !dbg !492
  %33 = sub i32 %32, 2, !dbg !495
  %34 = zext i32 %33 to i64, !dbg !496
  %35 = load i8*, i8** %5, align 8, !dbg !496
  %36 = getelementptr inbounds i8, i8* %35, i64 %34, !dbg !496
  %37 = load i8, i8* %36, align 1, !dbg !496
  %38 = sext i8 %37 to i32, !dbg !496
  %39 = icmp eq i32 %38, 93, !dbg !497
  br i1 %39, label %40, label %41, !dbg !498

; <label>:40:                                     ; preds = %31
  store i8 1, i8* %4, align 1, !dbg !499
  br label %70, !dbg !499

; <label>:41:                                     ; preds = %31
  %42 = load i8*, i8** @HGFS_SUBSTITUTE_CHARS, align 8, !dbg !501
  %43 = load i32, i32* %6, align 4, !dbg !502
  %44 = sub i32 %43, 2, !dbg !503
  %45 = zext i32 %44 to i64, !dbg !504
  %46 = load i8*, i8** %5, align 8, !dbg !504
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !504
  %48 = load i8, i8* %47, align 1, !dbg !504
  %49 = sext i8 %48 to i32, !dbg !504
  %50 = call i8* @strchr(i8* %42, i32 %49) #5, !dbg !505
  store i8* %50, i8** %8, align 8, !dbg !506
  %51 = load i8*, i8** %8, align 8, !dbg !507
  %52 = icmp ne i8* %51, null, !dbg !509
  br i1 %52, label %53, label %54, !dbg !510

; <label>:53:                                     ; preds = %41
  store i8 1, i8* %4, align 1, !dbg !511
  br label %70, !dbg !511

; <label>:54:                                     ; preds = %41
  br label %55, !dbg !513

; <label>:55:                                     ; preds = %54, %28, %19
  %56 = load i8*, i8** @HGFS_SUBSTITUTE_CHARS, align 8, !dbg !514
  %57 = load i32, i32* %6, align 4, !dbg !515
  %58 = sub i32 %57, 1, !dbg !516
  %59 = zext i32 %58 to i64, !dbg !517
  %60 = load i8*, i8** %5, align 8, !dbg !517
  %61 = getelementptr inbounds i8, i8* %60, i64 %59, !dbg !517
  %62 = load i8, i8* %61, align 1, !dbg !517
  %63 = sext i8 %62 to i32, !dbg !517
  %64 = call i8* @strchr(i8* %56, i32 %63) #5, !dbg !518
  store i8* %64, i8** %8, align 8, !dbg !519
  %65 = load i8*, i8** %8, align 8, !dbg !520
  %66 = icmp ne i8* %65, null, !dbg !522
  br i1 %66, label %67, label %68, !dbg !523

; <label>:67:                                     ; preds = %55
  store i8 1, i8* %4, align 1, !dbg !524
  br label %70, !dbg !524

; <label>:68:                                     ; preds = %55
  store i8 0, i8* %4, align 1, !dbg !526
  br label %70, !dbg !526

; <label>:69:                                     ; preds = %16, %3
  store i8 0, i8* %4, align 1, !dbg !527
  br label %70, !dbg !527

; <label>:70:                                     ; preds = %69, %68, %67, %53, %40
  %71 = load i8, i8* %4, align 1, !dbg !528
  ret i8 %71, !dbg !528
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsEscapeEnumerate(i8*, i32, i8 (i8*, i32, i32, i8*)*, i8*) #0 !dbg !529 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8 (i8*, i32, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !537, metadata !43), !dbg !538
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !539, metadata !43), !dbg !540
  store i8 (i8*, i32, i32, i8*)* %2, i8 (i8*, i32, i32, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata i8 (i8*, i32, i32, i8*)** %8, metadata !541, metadata !43), !dbg !542
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !543, metadata !43), !dbg !544
  call void @llvm.dbg.declare(metadata i32* %10, metadata !545, metadata !43), !dbg !546
  call void @llvm.dbg.declare(metadata i32* %11, metadata !547, metadata !43), !dbg !548
  store i32 0, i32* %11, align 4, !dbg !548
  %12 = load i32, i32* %7, align 4, !dbg !549
  %13 = icmp eq i32 %12, 0, !dbg !551
  br i1 %13, label %14, label %15, !dbg !552

; <label>:14:                                     ; preds = %4
  store i8 1, i8* %5, align 1, !dbg !553
  br label %69, !dbg !553

; <label>:15:                                     ; preds = %4
  %16 = load i32, i32* %11, align 4, !dbg !555
  store i32 %16, i32* %10, align 4, !dbg !557
  br label %17, !dbg !558

; <label>:17:                                     ; preds = %57, %15
  %18 = load i32, i32* %10, align 4, !dbg !559
  %19 = load i32, i32* %7, align 4, !dbg !562
  %20 = icmp ult i32 %18, %19, !dbg !563
  br i1 %20, label %21, label %60, !dbg !564

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** @HGFS_ILLEGAL_CHARS, align 8, !dbg !565
  %23 = load i32, i32* %10, align 4, !dbg !568
  %24 = zext i32 %23 to i64, !dbg !569
  %25 = load i8*, i8** %6, align 8, !dbg !569
  %26 = getelementptr inbounds i8, i8* %25, i64 %24, !dbg !569
  %27 = load i8, i8* %26, align 1, !dbg !569
  %28 = sext i8 %27 to i32, !dbg !569
  %29 = call i8* @strchr(i8* %22, i32 %28) #5, !dbg !570
  %30 = icmp ne i8* %29, null, !dbg !571
  br i1 %30, label %31, label %40, !dbg !572

; <label>:31:                                     ; preds = %21
  %32 = load i8 (i8*, i32, i32, i8*)*, i8 (i8*, i32, i32, i8*)** %8, align 8, !dbg !573
  %33 = load i8*, i8** %6, align 8, !dbg !576
  %34 = load i32, i32* %10, align 4, !dbg !577
  %35 = load i8*, i8** %9, align 8, !dbg !578
  %36 = call signext i8 %32(i8* %33, i32 %34, i32 0, i8* %35), !dbg !573
  %37 = icmp ne i8 %36, 0, !dbg !573
  br i1 %37, label %39, label %38, !dbg !579

; <label>:38:                                     ; preds = %31
  store i8 0, i8* %5, align 1, !dbg !580
  br label %69, !dbg !580

; <label>:39:                                     ; preds = %31
  br label %56, !dbg !582

; <label>:40:                                     ; preds = %21
  %41 = load i8*, i8** %6, align 8, !dbg !583
  %42 = load i32, i32* %10, align 4, !dbg !586
  %43 = load i32, i32* %7, align 4, !dbg !587
  %44 = call signext i8 @HgfsIsEscapeSequence(i8* %41, i32 %42, i32 %43), !dbg !588
  %45 = icmp ne i8 %44, 0, !dbg !588
  br i1 %45, label %46, label %55, !dbg !588

; <label>:46:                                     ; preds = %40
  %47 = load i8 (i8*, i32, i32, i8*)*, i8 (i8*, i32, i32, i8*)** %8, align 8, !dbg !589
  %48 = load i8*, i8** %6, align 8, !dbg !592
  %49 = load i32, i32* %10, align 4, !dbg !593
  %50 = load i8*, i8** %9, align 8, !dbg !594
  %51 = call signext i8 %47(i8* %48, i32 %49, i32 3, i8* %50), !dbg !589
  %52 = icmp ne i8 %51, 0, !dbg !589
  br i1 %52, label %54, label %53, !dbg !595

; <label>:53:                                     ; preds = %46
  store i8 0, i8* %5, align 1, !dbg !596
  br label %69, !dbg !596

; <label>:54:                                     ; preds = %46
  br label %55, !dbg !598

; <label>:55:                                     ; preds = %54, %40
  br label %56

; <label>:56:                                     ; preds = %55, %39
  br label %57, !dbg !599

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %10, align 4, !dbg !600
  %59 = add i32 %58, 1, !dbg !600
  store i32 %59, i32* %10, align 4, !dbg !600
  br label %17, !dbg !602, !llvm.loop !603

; <label>:60:                                     ; preds = %17
  %61 = load i8 (i8*, i32, i32, i8*)*, i8 (i8*, i32, i32, i8*)** %8, align 8, !dbg !605
  %62 = load i8*, i8** %6, align 8, !dbg !607
  %63 = load i32, i32* %7, align 4, !dbg !608
  %64 = load i8*, i8** %9, align 8, !dbg !609
  %65 = call signext i8 %61(i8* %62, i32 %63, i32 4, i8* %64), !dbg !605
  %66 = icmp ne i8 %65, 0, !dbg !605
  br i1 %66, label %68, label %67, !dbg !610

; <label>:67:                                     ; preds = %60
  store i8 0, i8* %5, align 1, !dbg !611
  br label %69, !dbg !611

; <label>:68:                                     ; preds = %60
  store i8 1, i8* %5, align 1, !dbg !613
  br label %69, !dbg !613

; <label>:69:                                     ; preds = %68, %67, %53, %38, %14
  %70 = load i8, i8* %5, align 1, !dbg !614
  ret i8 %70, !dbg !614
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsAddEscapeCharacter(i8*, i32, i32, i8*) #0 !dbg !615 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.HgfsEscapeContext*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !616, metadata !43), !dbg !617
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !618, metadata !43), !dbg !619
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !620, metadata !43), !dbg !621
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !622, metadata !43), !dbg !623
  call void @llvm.dbg.declare(metadata %struct.HgfsEscapeContext** %10, metadata !624, metadata !43), !dbg !625
  %15 = load i8*, i8** %9, align 8, !dbg !626
  %16 = bitcast i8* %15 to %struct.HgfsEscapeContext*, !dbg !627
  store %struct.HgfsEscapeContext* %16, %struct.HgfsEscapeContext** %10, align 8, !dbg !625
  call void @llvm.dbg.declare(metadata i32* %11, metadata !628, metadata !43), !dbg !629
  call void @llvm.dbg.declare(metadata i32* %12, metadata !630, metadata !43), !dbg !631
  call void @llvm.dbg.declare(metadata i8** %13, metadata !632, metadata !43), !dbg !633
  call void @llvm.dbg.declare(metadata i8* %14, metadata !634, metadata !43), !dbg !635
  store i8 1, i8* %14, align 1, !dbg !635
  %17 = load i32, i32* %7, align 4, !dbg !636
  %18 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !637
  %19 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %18, i32 0, i32 0, !dbg !638
  %20 = load i32, i32* %19, align 8, !dbg !638
  %21 = sub i32 %17, %20, !dbg !639
  store i32 %21, i32* %11, align 4, !dbg !640
  %22 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !641
  %23 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %22, i32 0, i32 2, !dbg !643
  %24 = load i32, i32* %23, align 8, !dbg !643
  %25 = load i32, i32* %11, align 4, !dbg !644
  %26 = add i32 %24, %25, !dbg !645
  %27 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !646
  %28 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %27, i32 0, i32 1, !dbg !647
  %29 = load i32, i32* %28, align 4, !dbg !647
  %30 = icmp ugt i32 %26, %29, !dbg !648
  br i1 %30, label %31, label %32, !dbg !649

; <label>:31:                                     ; preds = %4
  store i8 0, i8* %5, align 1, !dbg !650
  br label %202, !dbg !650

; <label>:32:                                     ; preds = %4
  %33 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !652
  %34 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %33, i32 0, i32 3, !dbg !653
  %35 = load i8*, i8** %34, align 8, !dbg !653
  %36 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !654
  %37 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %36, i32 0, i32 2, !dbg !655
  %38 = load i32, i32* %37, align 8, !dbg !655
  %39 = zext i32 %38 to i64, !dbg !656
  %40 = getelementptr inbounds i8, i8* %35, i64 %39, !dbg !656
  %41 = load i8*, i8** %6, align 8, !dbg !657
  %42 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !658
  %43 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %42, i32 0, i32 0, !dbg !659
  %44 = load i32, i32* %43, align 8, !dbg !659
  %45 = zext i32 %44 to i64, !dbg !660
  %46 = getelementptr inbounds i8, i8* %41, i64 %45, !dbg !660
  %47 = load i32, i32* %11, align 4, !dbg !661
  %48 = zext i32 %47 to i64, !dbg !661
  %49 = mul i64 %48, 1, !dbg !662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %46, i64 %49, i32 1, i1 false), !dbg !663
  %50 = load i32, i32* %11, align 4, !dbg !664
  %51 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !665
  %52 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %51, i32 0, i32 2, !dbg !666
  %53 = load i32, i32* %52, align 8, !dbg !667
  %54 = add i32 %53, %50, !dbg !667
  store i32 %54, i32* %52, align 8, !dbg !667
  %55 = load i32, i32* %11, align 4, !dbg !668
  %56 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !669
  %57 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %56, i32 0, i32 0, !dbg !670
  %58 = load i32, i32* %57, align 8, !dbg !671
  %59 = add i32 %58, %55, !dbg !671
  store i32 %59, i32* %57, align 8, !dbg !671
  %60 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !672
  %61 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %60, i32 0, i32 1, !dbg !673
  %62 = load i32, i32* %61, align 4, !dbg !673
  %63 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !674
  %64 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %63, i32 0, i32 2, !dbg !675
  %65 = load i32, i32* %64, align 8, !dbg !675
  %66 = sub i32 %62, %65, !dbg !676
  store i32 %66, i32* %12, align 4, !dbg !677
  %67 = load i32, i32* %8, align 4, !dbg !678
  switch i32 %67, label %199 [
    i32 0, label %68
    i32 1, label %119
    i32 2, label %136
    i32 3, label %153
    i32 4, label %186
  ], !dbg !679

; <label>:68:                                     ; preds = %32
  %69 = load i32, i32* %12, align 4, !dbg !680
  %70 = icmp ult i32 %69, 2, !dbg !683
  br i1 %70, label %71, label %72, !dbg !684

; <label>:71:                                     ; preds = %68
  store i8 0, i8* %5, align 1, !dbg !685
  br label %202, !dbg !685

; <label>:72:                                     ; preds = %68
  %73 = load i8*, i8** @HGFS_ILLEGAL_CHARS, align 8, !dbg !687
  %74 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !688
  %75 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %74, i32 0, i32 0, !dbg !689
  %76 = load i32, i32* %75, align 8, !dbg !689
  %77 = zext i32 %76 to i64, !dbg !690
  %78 = load i8*, i8** %6, align 8, !dbg !690
  %79 = getelementptr inbounds i8, i8* %78, i64 %77, !dbg !690
  %80 = load i8, i8* %79, align 1, !dbg !690
  %81 = sext i8 %80 to i32, !dbg !690
  %82 = call i8* @strchr(i8* %73, i32 %81) #5, !dbg !691
  store i8* %82, i8** %13, align 8, !dbg !692
  %83 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !693
  %84 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %83, i32 0, i32 0, !dbg !694
  %85 = load i32, i32* %84, align 8, !dbg !695
  %86 = add i32 %85, 1, !dbg !695
  store i32 %86, i32* %84, align 8, !dbg !695
  %87 = load i8*, i8** %13, align 8, !dbg !696
  %88 = load i8*, i8** @HGFS_ILLEGAL_CHARS, align 8, !dbg !697
  %89 = ptrtoint i8* %87 to i64, !dbg !698
  %90 = ptrtoint i8* %88 to i64, !dbg !698
  %91 = sub i64 %89, %90, !dbg !698
  %92 = load i8*, i8** @HGFS_SUBSTITUTE_CHARS, align 8, !dbg !699
  %93 = getelementptr inbounds i8, i8* %92, i64 %91, !dbg !699
  %94 = load i8, i8* %93, align 1, !dbg !699
  %95 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !700
  %96 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %95, i32 0, i32 2, !dbg !701
  %97 = load i32, i32* %96, align 8, !dbg !701
  %98 = zext i32 %97 to i64, !dbg !702
  %99 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !702
  %100 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %99, i32 0, i32 3, !dbg !703
  %101 = load i8*, i8** %100, align 8, !dbg !703
  %102 = getelementptr inbounds i8, i8* %101, i64 %98, !dbg !702
  store i8 %94, i8* %102, align 1, !dbg !704
  %103 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !705
  %104 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %103, i32 0, i32 2, !dbg !706
  %105 = load i32, i32* %104, align 8, !dbg !707
  %106 = add i32 %105, 1, !dbg !707
  store i32 %106, i32* %104, align 8, !dbg !707
  %107 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !708
  %108 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %107, i32 0, i32 2, !dbg !709
  %109 = load i32, i32* %108, align 8, !dbg !709
  %110 = zext i32 %109 to i64, !dbg !710
  %111 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !710
  %112 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %111, i32 0, i32 3, !dbg !711
  %113 = load i8*, i8** %112, align 8, !dbg !711
  %114 = getelementptr inbounds i8, i8* %113, i64 %110, !dbg !710
  store i8 37, i8* %114, align 1, !dbg !712
  %115 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !713
  %116 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %115, i32 0, i32 2, !dbg !714
  %117 = load i32, i32* %116, align 8, !dbg !715
  %118 = add i32 %117, 1, !dbg !715
  store i32 %118, i32* %116, align 8, !dbg !715
  br label %200, !dbg !716

; <label>:119:                                    ; preds = %32
  %120 = load i32, i32* %12, align 4, !dbg !717
  %121 = icmp ult i32 %120, 1, !dbg !719
  br i1 %121, label %122, label %123, !dbg !720

; <label>:122:                                    ; preds = %119
  store i8 0, i8* %5, align 1, !dbg !721
  br label %202, !dbg !721

; <label>:123:                                    ; preds = %119
  %124 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !723
  %125 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %124, i32 0, i32 2, !dbg !724
  %126 = load i32, i32* %125, align 8, !dbg !724
  %127 = zext i32 %126 to i64, !dbg !725
  %128 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !725
  %129 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %128, i32 0, i32 3, !dbg !726
  %130 = load i8*, i8** %129, align 8, !dbg !726
  %131 = getelementptr inbounds i8, i8* %130, i64 %127, !dbg !725
  store i8 37, i8* %131, align 1, !dbg !727
  %132 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !728
  %133 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %132, i32 0, i32 2, !dbg !729
  %134 = load i32, i32* %133, align 8, !dbg !730
  %135 = add i32 %134, 1, !dbg !730
  store i32 %135, i32* %133, align 8, !dbg !730
  br label %200, !dbg !731

; <label>:136:                                    ; preds = %32
  %137 = load i32, i32* %12, align 4, !dbg !732
  %138 = icmp ult i32 %137, 1, !dbg !734
  br i1 %138, label %139, label %140, !dbg !735

; <label>:139:                                    ; preds = %136
  store i8 0, i8* %5, align 1, !dbg !736
  br label %202, !dbg !736

; <label>:140:                                    ; preds = %136
  %141 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !738
  %142 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %141, i32 0, i32 2, !dbg !739
  %143 = load i32, i32* %142, align 8, !dbg !739
  %144 = zext i32 %143 to i64, !dbg !740
  %145 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !740
  %146 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %145, i32 0, i32 3, !dbg !741
  %147 = load i8*, i8** %146, align 8, !dbg !741
  %148 = getelementptr inbounds i8, i8* %147, i64 %144, !dbg !740
  store i8 37, i8* %148, align 1, !dbg !742
  %149 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !743
  %150 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %149, i32 0, i32 2, !dbg !744
  %151 = load i32, i32* %150, align 8, !dbg !745
  %152 = add i32 %151, 1, !dbg !745
  store i32 %152, i32* %150, align 8, !dbg !745
  br label %200, !dbg !746

; <label>:153:                                    ; preds = %32
  %154 = load i32, i32* %12, align 4, !dbg !747
  %155 = icmp ult i32 %154, 2, !dbg !749
  br i1 %155, label %156, label %157, !dbg !750

; <label>:156:                                    ; preds = %153
  store i8 0, i8* %5, align 1, !dbg !751
  br label %202, !dbg !751

; <label>:157:                                    ; preds = %153
  %158 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !753
  %159 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %158, i32 0, i32 0, !dbg !754
  %160 = load i32, i32* %159, align 8, !dbg !755
  %161 = add i32 %160, 1, !dbg !755
  store i32 %161, i32* %159, align 8, !dbg !755
  %162 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !756
  %163 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %162, i32 0, i32 2, !dbg !757
  %164 = load i32, i32* %163, align 8, !dbg !757
  %165 = zext i32 %164 to i64, !dbg !758
  %166 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !758
  %167 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %166, i32 0, i32 3, !dbg !759
  %168 = load i8*, i8** %167, align 8, !dbg !759
  %169 = getelementptr inbounds i8, i8* %168, i64 %165, !dbg !758
  store i8 93, i8* %169, align 1, !dbg !760
  %170 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !761
  %171 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %170, i32 0, i32 2, !dbg !762
  %172 = load i32, i32* %171, align 8, !dbg !763
  %173 = add i32 %172, 1, !dbg !763
  store i32 %173, i32* %171, align 8, !dbg !763
  %174 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !764
  %175 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %174, i32 0, i32 2, !dbg !765
  %176 = load i32, i32* %175, align 8, !dbg !765
  %177 = zext i32 %176 to i64, !dbg !766
  %178 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !766
  %179 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %178, i32 0, i32 3, !dbg !767
  %180 = load i8*, i8** %179, align 8, !dbg !767
  %181 = getelementptr inbounds i8, i8* %180, i64 %177, !dbg !766
  store i8 37, i8* %181, align 1, !dbg !768
  %182 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !769
  %183 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %182, i32 0, i32 2, !dbg !770
  %184 = load i32, i32* %183, align 8, !dbg !771
  %185 = add i32 %184, 1, !dbg !771
  store i32 %185, i32* %183, align 8, !dbg !771
  br label %200, !dbg !772

; <label>:186:                                    ; preds = %32
  %187 = load i32, i32* %12, align 4, !dbg !773
  %188 = icmp ult i32 %187, 1, !dbg !775
  br i1 %188, label %189, label %190, !dbg !776

; <label>:189:                                    ; preds = %186
  store i8 0, i8* %5, align 1, !dbg !777
  br label %202, !dbg !777

; <label>:190:                                    ; preds = %186
  %191 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !779
  %192 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %191, i32 0, i32 2, !dbg !780
  %193 = load i32, i32* %192, align 8, !dbg !780
  %194 = zext i32 %193 to i64, !dbg !781
  %195 = load %struct.HgfsEscapeContext*, %struct.HgfsEscapeContext** %10, align 8, !dbg !781
  %196 = getelementptr inbounds %struct.HgfsEscapeContext, %struct.HgfsEscapeContext* %195, i32 0, i32 3, !dbg !782
  %197 = load i8*, i8** %196, align 8, !dbg !782
  %198 = getelementptr inbounds i8, i8* %197, i64 %194, !dbg !781
  store i8 0, i8* %198, align 1, !dbg !783
  br label %200, !dbg !784

; <label>:199:                                    ; preds = %32
  store i8 0, i8* %14, align 1, !dbg !785
  br label %200, !dbg !786

; <label>:200:                                    ; preds = %199, %190, %157, %140, %123, %72
  %201 = load i8, i8* %14, align 1, !dbg !787
  store i8 %201, i8* %5, align 1, !dbg !788
  br label %202, !dbg !788

; <label>:202:                                    ; preds = %200, %189, %156, %139, %122, %71, %31
  %203 = load i8, i8* %5, align 1, !dbg !789
  ret i8 %203, !dbg !789
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsCountEscapeChars(i8*, i32, i32, i8*) #0 !dbg !790 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !791, metadata !43), !dbg !792
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !793, metadata !43), !dbg !794
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !795, metadata !43), !dbg !796
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !797, metadata !43), !dbg !798
  %10 = load i32, i32* %7, align 4, !dbg !799
  %11 = icmp ne i32 %10, 4, !dbg !801
  br i1 %11, label %12, label %18, !dbg !802

; <label>:12:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i32** %9, metadata !803, metadata !43), !dbg !805
  %13 = load i8*, i8** %8, align 8, !dbg !806
  %14 = bitcast i8* %13 to i32*, !dbg !807
  store i32* %14, i32** %9, align 8, !dbg !805
  %15 = load i32*, i32** %9, align 8, !dbg !808
  %16 = load i32, i32* %15, align 4, !dbg !809
  %17 = add i32 %16, 1, !dbg !809
  store i32 %17, i32* %15, align 4, !dbg !809
  br label %18, !dbg !810

; <label>:18:                                     ; preds = %12, %4
  ret i8 1, !dbg !811
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!35, !36}
!llvm.ident = !{!37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, globals: !30)
!1 = !DIFile(filename: "hgfsEscape.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line339")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 120, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "hgfsEscape.c", directory: "/home/lichi/Desktop/open-vm-tools/line339")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "HGFS_ESCAPE_ILLEGAL_CHARACTER", value: 0)
!7 = !DIEnumerator(name: "HGFS_ESCAPE_RESERVED_NAME", value: 1)
!8 = !DIEnumerator(name: "HGFS_ESCAPE_ILLEGAL_LAST_CHARACTER", value: 2)
!9 = !DIEnumerator(name: "HGFS_ESCAPE_ESCAPE_SEQUENCE", value: 3)
!10 = !DIEnumerator(name: "HGFS_ESCAPE_COMPLETE", value: 4)
!11 = !{!12, !13, !14, !29}
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsEscapeContext", file: !4, line: 144, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 139, size: 192, align: 64, elements: !17)
!17 = !{!18, !24, !25, !26}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "processedOffset", scope: !16, file: !4, line: 140, baseType: !19, size: 32, align: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !20, line: 173, baseType: !21)
!20 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line339")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 51, baseType: !23)
!22 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line339")
!23 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "outputBufferLength", scope: !16, file: !4, line: 141, baseType: !19, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "outputOffset", scope: !16, file: !4, line: 142, baseType: !19, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "outputBuffer", scope: !16, file: !4, line: 143, baseType: !27, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!30 = !{!31, !34}
!31 = distinct !DIGlobalVariable(name: "HGFS_ILLEGAL_CHARS", scope: !0, file: !4, line: 111, type: !32, isLocal: false, isDefinition: true, variable: i8** @HGFS_ILLEGAL_CHARS)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!34 = distinct !DIGlobalVariable(name: "HGFS_SUBSTITUTE_CHARS", scope: !0, file: !4, line: 112, type: !32, isLocal: false, isDefinition: true, variable: i8** @HGFS_SUBSTITUTE_CHARS)
!35 = !{i32 2, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!38 = distinct !DISubprogram(name: "HgfsEscape_Do", scope: !4, file: !4, line: 699, type: !39, isLocal: false, isDefinition: true, scopeLine: 703, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{!12, !32, !19, !19, !27}
!41 = !{}
!42 = !DILocalVariable(name: "bufIn", arg: 1, scope: !38, file: !4, line: 699, type: !32)
!43 = !DIExpression()
!44 = !DILocation(line: 699, column: 27, scope: !38)
!45 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !38, file: !4, line: 700, type: !19)
!46 = !DILocation(line: 700, column: 22, scope: !38)
!47 = !DILocalVariable(name: "sizeBufOut", arg: 3, scope: !38, file: !4, line: 701, type: !19)
!48 = !DILocation(line: 701, column: 22, scope: !38)
!49 = !DILocalVariable(name: "bufOut", arg: 4, scope: !38, file: !4, line: 702, type: !27)
!50 = !DILocation(line: 702, column: 21, scope: !38)
!51 = !DILocalVariable(name: "currentComponent", scope: !38, file: !4, line: 704, type: !32)
!52 = !DILocation(line: 704, column: 16, scope: !38)
!53 = !DILocation(line: 704, column: 35, scope: !38)
!54 = !DILocalVariable(name: "sizeLeft", scope: !38, file: !4, line: 705, type: !19)
!55 = !DILocation(line: 705, column: 11, scope: !38)
!56 = !DILocation(line: 705, column: 22, scope: !38)
!57 = !DILocalVariable(name: "outPointer", scope: !38, file: !4, line: 706, type: !27)
!58 = !DILocation(line: 706, column: 10, scope: !38)
!59 = !DILocation(line: 706, column: 23, scope: !38)
!60 = !DILocalVariable(name: "end", scope: !38, file: !4, line: 707, type: !32)
!61 = !DILocation(line: 707, column: 16, scope: !38)
!62 = !DILocation(line: 707, column: 22, scope: !38)
!63 = !DILocation(line: 707, column: 30, scope: !38)
!64 = !DILocation(line: 707, column: 28, scope: !38)
!65 = !DILocalVariable(name: "next", scope: !38, file: !4, line: 708, type: !32)
!66 = !DILocation(line: 708, column: 16, scope: !38)
!67 = !DILocation(line: 710, column: 14, scope: !68)
!68 = distinct !DILexicalBlock(scope: !38, file: !4, line: 710, column: 8)
!69 = !DILocation(line: 710, column: 21, scope: !68)
!70 = !DILocation(line: 710, column: 8, scope: !68)
!71 = !DILocation(line: 710, column: 26, scope: !68)
!72 = !DILocation(line: 710, column: 8, scope: !38)
!73 = !DILocation(line: 717, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !68, file: !4, line: 710, column: 35)
!75 = !DILocation(line: 718, column: 13, scope: !74)
!76 = !DILocation(line: 719, column: 4, scope: !74)
!77 = !DILocation(line: 725, column: 4, scope: !38)
!78 = !DILocation(line: 725, column: 12, scope: !79)
!79 = !DILexicalBlockFile(scope: !38, file: !4, discriminator: 1)
!80 = !DILocation(line: 725, column: 11, scope: !79)
!81 = !DILocation(line: 725, column: 29, scope: !79)
!82 = !DILocation(line: 725, column: 37, scope: !79)
!83 = !DILocation(line: 725, column: 40, scope: !84)
!84 = !DILexicalBlockFile(scope: !38, file: !4, discriminator: 2)
!85 = !DILocation(line: 725, column: 59, scope: !84)
!86 = !DILocation(line: 725, column: 57, scope: !84)
!87 = !DILocation(line: 725, column: 67, scope: !84)
!88 = !DILocation(line: 725, column: 65, scope: !84)
!89 = !DILocation(line: 725, column: 4, scope: !90)
!90 = !DILexicalBlockFile(scope: !38, file: !4, discriminator: 3)
!91 = !DILocation(line: 726, column: 23, scope: !92)
!92 = distinct !DILexicalBlock(scope: !38, file: !4, line: 725, column: 75)
!93 = !DILocation(line: 727, column: 15, scope: !92)
!94 = !DILocation(line: 728, column: 18, scope: !92)
!95 = !DILocation(line: 728, column: 21, scope: !92)
!96 = !DILocation(line: 725, column: 4, scope: !97)
!97 = !DILexicalBlockFile(scope: !38, file: !4, discriminator: 4)
!98 = distinct !{!98, !77}
!99 = !DILocation(line: 730, column: 4, scope: !38)
!100 = !DILocation(line: 730, column: 11, scope: !79)
!101 = !DILocation(line: 730, column: 30, scope: !79)
!102 = !DILocation(line: 730, column: 28, scope: !79)
!103 = !DILocation(line: 730, column: 38, scope: !79)
!104 = !DILocation(line: 730, column: 36, scope: !79)
!105 = !DILocation(line: 730, column: 4, scope: !79)
!106 = !DILocalVariable(name: "escapedLength", scope: !107, file: !4, line: 731, type: !12)
!107 = distinct !DILexicalBlock(scope: !38, file: !4, line: 730, column: 46)
!108 = !DILocation(line: 731, column: 11, scope: !107)
!109 = !DILocalVariable(name: "componentSize", scope: !107, file: !4, line: 732, type: !12)
!110 = !DILocation(line: 732, column: 11, scope: !107)
!111 = !DILocation(line: 732, column: 47, scope: !107)
!112 = !DILocation(line: 732, column: 65, scope: !107)
!113 = !DILocation(line: 732, column: 27, scope: !107)
!114 = !DILocation(line: 733, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !107, file: !4, line: 733, column: 11)
!116 = !DILocation(line: 733, column: 25, scope: !115)
!117 = !DILocation(line: 733, column: 11, scope: !107)
!118 = !DILocation(line: 734, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !4, line: 733, column: 30)
!120 = !DILocation(line: 734, column: 10, scope: !119)
!121 = !DILocation(line: 737, column: 45, scope: !107)
!122 = !DILocation(line: 737, column: 63, scope: !107)
!123 = !DILocation(line: 738, column: 45, scope: !107)
!124 = !DILocation(line: 738, column: 55, scope: !107)
!125 = !DILocation(line: 737, column: 23, scope: !107)
!126 = !DILocation(line: 737, column: 21, scope: !107)
!127 = !DILocation(line: 739, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !107, file: !4, line: 739, column: 11)
!129 = !DILocation(line: 739, column: 25, scope: !128)
!130 = !DILocation(line: 739, column: 11, scope: !107)
!131 = !DILocation(line: 740, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !4, line: 739, column: 30)
!133 = !DILocation(line: 740, column: 10, scope: !132)
!134 = !DILocation(line: 742, column: 26, scope: !107)
!135 = !DILocation(line: 742, column: 24, scope: !107)
!136 = !DILocation(line: 743, column: 19, scope: !107)
!137 = !DILocation(line: 743, column: 33, scope: !107)
!138 = !DILocation(line: 743, column: 16, scope: !107)
!139 = !DILocation(line: 744, column: 21, scope: !107)
!140 = !DILocation(line: 744, column: 35, scope: !107)
!141 = !DILocation(line: 744, column: 18, scope: !107)
!142 = !DILocation(line: 730, column: 4, scope: !84)
!143 = distinct !{!143, !99}
!144 = !DILocation(line: 746, column: 18, scope: !38)
!145 = !DILocation(line: 746, column: 31, scope: !38)
!146 = !DILocation(line: 746, column: 29, scope: !38)
!147 = !DILocation(line: 746, column: 11, scope: !38)
!148 = !DILocation(line: 746, column: 39, scope: !38)
!149 = !DILocation(line: 746, column: 4, scope: !38)
!150 = !DILocation(line: 747, column: 1, scope: !38)
!151 = distinct !DISubprogram(name: "HgfsEscapeDoComponent", scope: !4, file: !4, line: 938, type: !39, isLocal: true, isDefinition: true, scopeLine: 942, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!152 = !DILocalVariable(name: "bufIn", arg: 1, scope: !151, file: !4, line: 938, type: !32)
!153 = !DILocation(line: 938, column: 35, scope: !151)
!154 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !151, file: !4, line: 939, type: !19)
!155 = !DILocation(line: 939, column: 28, scope: !151)
!156 = !DILocalVariable(name: "sizeBufOut", arg: 3, scope: !151, file: !4, line: 940, type: !19)
!157 = !DILocation(line: 940, column: 28, scope: !151)
!158 = !DILocalVariable(name: "bufOut", arg: 4, scope: !151, file: !4, line: 941, type: !27)
!159 = !DILocation(line: 941, column: 27, scope: !151)
!160 = !DILocalVariable(name: "conversionContext", scope: !151, file: !4, line: 943, type: !15)
!161 = !DILocation(line: 943, column: 22, scope: !151)
!162 = !DILocation(line: 944, column: 22, scope: !151)
!163 = !DILocation(line: 944, column: 38, scope: !151)
!164 = !DILocation(line: 945, column: 43, scope: !151)
!165 = !DILocation(line: 945, column: 54, scope: !151)
!166 = !DILocation(line: 945, column: 22, scope: !151)
!167 = !DILocation(line: 945, column: 41, scope: !151)
!168 = !DILocation(line: 946, column: 22, scope: !151)
!169 = !DILocation(line: 946, column: 35, scope: !151)
!170 = !DILocation(line: 947, column: 37, scope: !151)
!171 = !DILocation(line: 947, column: 22, scope: !151)
!172 = !DILocation(line: 947, column: 35, scope: !151)
!173 = !DILocation(line: 949, column: 29, scope: !174)
!174 = distinct !DILexicalBlock(scope: !151, file: !4, line: 949, column: 8)
!175 = !DILocation(line: 949, column: 36, scope: !174)
!176 = !DILocation(line: 949, column: 68, scope: !174)
!177 = !DILocation(line: 949, column: 9, scope: !174)
!178 = !DILocation(line: 949, column: 8, scope: !151)
!179 = !DILocation(line: 950, column: 7, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !4, line: 949, column: 89)
!181 = !DILocation(line: 952, column: 29, scope: !151)
!182 = !DILocation(line: 952, column: 11, scope: !151)
!183 = !DILocation(line: 952, column: 42, scope: !151)
!184 = !DILocation(line: 952, column: 4, scope: !151)
!185 = !DILocation(line: 953, column: 1, scope: !151)
!186 = distinct !DISubprogram(name: "HgfsEscape_GetSize", scope: !4, file: !4, line: 770, type: !187, isLocal: false, isDefinition: true, scopeLine: 772, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!187 = !DISubroutineType(types: !188)
!188 = !{!12, !32, !19}
!189 = !DILocalVariable(name: "bufIn", arg: 1, scope: !186, file: !4, line: 770, type: !32)
!190 = !DILocation(line: 770, column: 32, scope: !186)
!191 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !186, file: !4, line: 771, type: !19)
!192 = !DILocation(line: 771, column: 27, scope: !186)
!193 = !DILocalVariable(name: "result", scope: !186, file: !4, line: 773, type: !19)
!194 = !DILocation(line: 773, column: 11, scope: !186)
!195 = !DILocalVariable(name: "currentComponent", scope: !186, file: !4, line: 774, type: !32)
!196 = !DILocation(line: 774, column: 16, scope: !186)
!197 = !DILocation(line: 774, column: 35, scope: !186)
!198 = !DILocalVariable(name: "end", scope: !186, file: !4, line: 775, type: !32)
!199 = !DILocation(line: 775, column: 16, scope: !186)
!200 = !DILocation(line: 775, column: 22, scope: !186)
!201 = !DILocation(line: 775, column: 30, scope: !186)
!202 = !DILocation(line: 775, column: 28, scope: !186)
!203 = !DILocalVariable(name: "next", scope: !186, file: !4, line: 776, type: !32)
!204 = !DILocation(line: 776, column: 16, scope: !186)
!205 = !DILocation(line: 778, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !186, file: !4, line: 778, column: 8)
!207 = !DILocation(line: 778, column: 15, scope: !206)
!208 = !DILocation(line: 778, column: 8, scope: !186)
!209 = !DILocation(line: 779, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !4, line: 778, column: 21)
!211 = !DILocation(line: 781, column: 14, scope: !212)
!212 = distinct !DILexicalBlock(scope: !186, file: !4, line: 781, column: 8)
!213 = !DILocation(line: 781, column: 21, scope: !212)
!214 = !DILocation(line: 781, column: 8, scope: !212)
!215 = !DILocation(line: 781, column: 26, scope: !212)
!216 = !DILocation(line: 781, column: 8, scope: !186)
!217 = !DILocation(line: 788, column: 10, scope: !218)
!218 = distinct !DILexicalBlock(scope: !212, file: !4, line: 781, column: 35)
!219 = !DILocation(line: 789, column: 13, scope: !218)
!220 = !DILocation(line: 790, column: 4, scope: !218)
!221 = !DILocation(line: 792, column: 4, scope: !186)
!222 = !DILocation(line: 792, column: 12, scope: !223)
!223 = !DILexicalBlockFile(scope: !186, file: !4, discriminator: 1)
!224 = !DILocation(line: 792, column: 11, scope: !223)
!225 = !DILocation(line: 792, column: 29, scope: !223)
!226 = !DILocation(line: 792, column: 37, scope: !223)
!227 = !DILocation(line: 792, column: 40, scope: !228)
!228 = !DILexicalBlockFile(scope: !186, file: !4, discriminator: 2)
!229 = !DILocation(line: 792, column: 59, scope: !228)
!230 = !DILocation(line: 792, column: 57, scope: !228)
!231 = !DILocation(line: 792, column: 67, scope: !228)
!232 = !DILocation(line: 792, column: 65, scope: !228)
!233 = !DILocation(line: 792, column: 4, scope: !234)
!234 = !DILexicalBlockFile(scope: !186, file: !4, discriminator: 3)
!235 = !DILocation(line: 793, column: 23, scope: !236)
!236 = distinct !DILexicalBlock(scope: !186, file: !4, line: 792, column: 75)
!237 = !DILocation(line: 792, column: 4, scope: !238)
!238 = !DILexicalBlockFile(scope: !186, file: !4, discriminator: 4)
!239 = distinct !{!239, !221}
!240 = !DILocation(line: 795, column: 4, scope: !186)
!241 = !DILocation(line: 795, column: 11, scope: !223)
!242 = !DILocation(line: 795, column: 30, scope: !223)
!243 = !DILocation(line: 795, column: 28, scope: !223)
!244 = !DILocation(line: 795, column: 38, scope: !223)
!245 = !DILocation(line: 795, column: 36, scope: !223)
!246 = !DILocation(line: 795, column: 4, scope: !223)
!247 = !DILocalVariable(name: "componentSize", scope: !248, file: !4, line: 796, type: !12)
!248 = distinct !DILexicalBlock(scope: !186, file: !4, line: 795, column: 46)
!249 = !DILocation(line: 796, column: 11, scope: !248)
!250 = !DILocation(line: 796, column: 47, scope: !248)
!251 = !DILocation(line: 796, column: 65, scope: !248)
!252 = !DILocation(line: 796, column: 27, scope: !248)
!253 = !DILocation(line: 797, column: 11, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !4, line: 797, column: 11)
!255 = !DILocation(line: 797, column: 25, scope: !254)
!256 = !DILocation(line: 797, column: 11, scope: !248)
!257 = !DILocation(line: 798, column: 10, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !4, line: 797, column: 30)
!259 = !DILocation(line: 799, column: 10, scope: !258)
!260 = !DILocation(line: 801, column: 44, scope: !248)
!261 = !DILocation(line: 801, column: 62, scope: !248)
!262 = !DILocation(line: 801, column: 17, scope: !248)
!263 = !DILocation(line: 801, column: 14, scope: !248)
!264 = !DILocation(line: 802, column: 26, scope: !248)
!265 = !DILocation(line: 802, column: 24, scope: !248)
!266 = !DILocation(line: 795, column: 4, scope: !228)
!267 = distinct !{!267, !240}
!268 = !DILocation(line: 804, column: 12, scope: !186)
!269 = !DILocation(line: 804, column: 19, scope: !186)
!270 = !DILocation(line: 804, column: 11, scope: !186)
!271 = !DILocation(line: 804, column: 11, scope: !223)
!272 = !DILocation(line: 804, column: 31, scope: !228)
!273 = !DILocation(line: 804, column: 40, scope: !228)
!274 = !DILocation(line: 804, column: 38, scope: !228)
!275 = !DILocation(line: 804, column: 11, scope: !228)
!276 = !DILocation(line: 804, column: 11, scope: !234)
!277 = !DILocation(line: 804, column: 4, scope: !234)
!278 = !DILocation(line: 805, column: 1, scope: !186)
!279 = distinct !DISubprogram(name: "HgfsEscapeGetComponentSize", scope: !4, file: !4, line: 975, type: !187, isLocal: true, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!280 = !DILocalVariable(name: "bufIn", arg: 1, scope: !279, file: !4, line: 975, type: !32)
!281 = !DILocation(line: 975, column: 40, scope: !279)
!282 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !279, file: !4, line: 976, type: !19)
!283 = !DILocation(line: 976, column: 35, scope: !279)
!284 = !DILocalVariable(name: "result", scope: !279, file: !4, line: 978, type: !12)
!285 = !DILocation(line: 978, column: 8, scope: !279)
!286 = !DILocation(line: 979, column: 24, scope: !279)
!287 = !DILocation(line: 979, column: 31, scope: !279)
!288 = !DILocation(line: 979, column: 61, scope: !279)
!289 = !DILocation(line: 979, column: 4, scope: !279)
!290 = !DILocation(line: 980, column: 11, scope: !279)
!291 = !DILocation(line: 980, column: 4, scope: !279)
!292 = distinct !DISubprogram(name: "HgfsEscape_Undo", scope: !4, file: !4, line: 829, type: !293, isLocal: false, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!293 = !DISubroutineType(types: !294)
!294 = !{!19, !27, !19}
!295 = !DILocalVariable(name: "bufIn", arg: 1, scope: !292, file: !4, line: 829, type: !27)
!296 = !DILocation(line: 829, column: 23, scope: !292)
!297 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !292, file: !4, line: 830, type: !19)
!298 = !DILocation(line: 830, column: 24, scope: !292)
!299 = !DILocalVariable(name: "componentSize", scope: !292, file: !4, line: 832, type: !19)
!300 = !DILocation(line: 832, column: 11, scope: !292)
!301 = !DILocalVariable(name: "unprocessedSize", scope: !292, file: !4, line: 833, type: !19)
!302 = !DILocation(line: 833, column: 11, scope: !292)
!303 = !DILocation(line: 833, column: 29, scope: !292)
!304 = !DILocation(line: 833, column: 36, scope: !292)
!305 = !DILocalVariable(name: "result", scope: !292, file: !4, line: 834, type: !19)
!306 = !DILocation(line: 834, column: 11, scope: !292)
!307 = !DILocalVariable(name: "currentComponent", scope: !292, file: !4, line: 835, type: !27)
!308 = !DILocation(line: 835, column: 10, scope: !292)
!309 = !DILocation(line: 835, column: 29, scope: !292)
!310 = !DILocation(line: 839, column: 4, scope: !292)
!311 = !DILocation(line: 839, column: 11, scope: !312)
!312 = !DILexicalBlockFile(scope: !292, file: !4, discriminator: 1)
!313 = !DILocation(line: 839, column: 28, scope: !312)
!314 = !DILocation(line: 839, column: 4, scope: !312)
!315 = !DILocation(line: 840, column: 31, scope: !316)
!316 = distinct !DILexicalBlock(scope: !292, file: !4, line: 839, column: 36)
!317 = !DILocation(line: 840, column: 7, scope: !316)
!318 = !DILocation(line: 841, column: 30, scope: !316)
!319 = !DILocation(line: 841, column: 23, scope: !316)
!320 = !DILocation(line: 841, column: 48, scope: !316)
!321 = !DILocation(line: 841, column: 21, scope: !316)
!322 = !DILocation(line: 842, column: 17, scope: !316)
!323 = !DILocation(line: 842, column: 14, scope: !316)
!324 = !DILocation(line: 843, column: 11, scope: !325)
!325 = distinct !DILexicalBlock(scope: !316, file: !4, line: 843, column: 11)
!326 = !DILocation(line: 843, column: 27, scope: !325)
!327 = !DILocation(line: 843, column: 11, scope: !316)
!328 = !DILocation(line: 844, column: 29, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !4, line: 843, column: 32)
!330 = !DILocation(line: 844, column: 48, scope: !329)
!331 = !DILocation(line: 844, column: 46, scope: !329)
!332 = !DILocation(line: 844, column: 27, scope: !329)
!333 = !DILocation(line: 845, column: 33, scope: !329)
!334 = !DILocation(line: 845, column: 26, scope: !329)
!335 = !DILocation(line: 845, column: 51, scope: !329)
!336 = !DILocation(line: 845, column: 24, scope: !329)
!337 = !DILocation(line: 846, column: 7, scope: !329)
!338 = !DILocation(line: 847, column: 27, scope: !339)
!339 = distinct !DILexicalBlock(scope: !325, file: !4, line: 846, column: 14)
!340 = !DILocation(line: 839, column: 4, scope: !341)
!341 = !DILexicalBlockFile(scope: !292, file: !4, discriminator: 2)
!342 = distinct !{!342, !310}
!343 = !DILocation(line: 850, column: 11, scope: !292)
!344 = !DILocation(line: 850, column: 18, scope: !292)
!345 = !DILocation(line: 850, column: 4, scope: !292)
!346 = distinct !DISubprogram(name: "HgfsEscapeUndoComponent", scope: !4, file: !4, line: 874, type: !347, isLocal: true, isDefinition: true, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !27, !29}
!349 = !DILocalVariable(name: "bufIn", arg: 1, scope: !346, file: !4, line: 874, type: !27)
!350 = !DILocation(line: 874, column: 31, scope: !346)
!351 = !DILocalVariable(name: "unprocessedLength", arg: 2, scope: !346, file: !4, line: 875, type: !29)
!352 = !DILocation(line: 875, column: 33, scope: !346)
!353 = !DILocalVariable(name: "offset", scope: !346, file: !4, line: 878, type: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !355, line: 216, baseType: !356)
!355 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line339")
!356 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!357 = !DILocation(line: 878, column: 11, scope: !346)
!358 = !DILocalVariable(name: "sizeIn", scope: !346, file: !4, line: 879, type: !354)
!359 = !DILocation(line: 879, column: 11, scope: !346)
!360 = !DILocalVariable(name: "curOutBuffer", scope: !346, file: !4, line: 880, type: !27)
!361 = !DILocation(line: 880, column: 10, scope: !346)
!362 = !DILocalVariable(name: "escapePointer", scope: !346, file: !4, line: 881, type: !27)
!363 = !DILocation(line: 881, column: 10, scope: !346)
!364 = !DILocation(line: 885, column: 19, scope: !346)
!365 = !DILocation(line: 885, column: 17, scope: !346)
!366 = !DILocation(line: 886, column: 20, scope: !346)
!367 = !DILocation(line: 886, column: 13, scope: !346)
!368 = !DILocation(line: 886, column: 11, scope: !346)
!369 = !DILocation(line: 887, column: 27, scope: !346)
!370 = !DILocation(line: 887, column: 20, scope: !346)
!371 = !DILocation(line: 887, column: 18, scope: !346)
!372 = !DILocation(line: 888, column: 4, scope: !346)
!373 = !DILocation(line: 888, column: 11, scope: !374)
!374 = !DILexicalBlockFile(scope: !346, file: !4, discriminator: 1)
!375 = !DILocation(line: 888, column: 25, scope: !374)
!376 = !DILocation(line: 888, column: 4, scope: !374)
!377 = !DILocation(line: 889, column: 16, scope: !378)
!378 = distinct !DILexicalBlock(scope: !346, file: !4, line: 888, column: 33)
!379 = !DILocation(line: 889, column: 32, scope: !378)
!380 = !DILocation(line: 889, column: 30, scope: !378)
!381 = !DILocation(line: 889, column: 14, scope: !378)
!382 = !DILocation(line: 890, column: 32, scope: !383)
!383 = distinct !DILexicalBlock(scope: !378, file: !4, line: 890, column: 11)
!384 = !DILocation(line: 890, column: 39, scope: !383)
!385 = !DILocation(line: 890, column: 47, scope: !383)
!386 = !DILocation(line: 890, column: 11, scope: !383)
!387 = !DILocation(line: 890, column: 11, scope: !378)
!388 = !DILocalVariable(name: "substitute", scope: !389, file: !4, line: 891, type: !27)
!389 = distinct !DILexicalBlock(scope: !383, file: !4, line: 890, column: 56)
!390 = !DILocation(line: 891, column: 16, scope: !389)
!391 = !DILocation(line: 891, column: 36, scope: !389)
!392 = !DILocation(line: 891, column: 65, scope: !389)
!393 = !DILocation(line: 891, column: 72, scope: !389)
!394 = !DILocation(line: 891, column: 59, scope: !389)
!395 = !DILocation(line: 891, column: 29, scope: !389)
!396 = !DILocation(line: 892, column: 14, scope: !397)
!397 = distinct !DILexicalBlock(scope: !389, file: !4, line: 892, column: 14)
!398 = !DILocation(line: 892, column: 25, scope: !397)
!399 = !DILocation(line: 892, column: 14, scope: !389)
!400 = !DILocation(line: 893, column: 52, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !4, line: 892, column: 33)
!402 = !DILocation(line: 893, column: 65, scope: !401)
!403 = !DILocation(line: 893, column: 63, scope: !401)
!404 = !DILocation(line: 893, column: 33, scope: !401)
!405 = !DILocation(line: 893, column: 19, scope: !401)
!406 = !DILocation(line: 893, column: 26, scope: !401)
!407 = !DILocation(line: 893, column: 13, scope: !401)
!408 = !DILocation(line: 893, column: 31, scope: !401)
!409 = !DILocation(line: 894, column: 10, scope: !401)
!410 = !DILocation(line: 894, column: 27, scope: !411)
!411 = !DILexicalBlockFile(scope: !412, file: !4, discriminator: 1)
!412 = distinct !DILexicalBlock(scope: !397, file: !4, line: 894, column: 21)
!413 = !DILocation(line: 894, column: 34, scope: !411)
!414 = !DILocation(line: 894, column: 21, scope: !411)
!415 = !DILocation(line: 894, column: 39, scope: !411)
!416 = !DILocation(line: 895, column: 19, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !4, line: 894, column: 47)
!418 = !DILocation(line: 895, column: 26, scope: !417)
!419 = !DILocation(line: 895, column: 13, scope: !417)
!420 = !DILocation(line: 895, column: 31, scope: !417)
!421 = !DILocation(line: 896, column: 10, scope: !417)
!422 = !DILocation(line: 897, column: 18, scope: !389)
!423 = !DILocation(line: 897, column: 33, scope: !389)
!424 = !DILocation(line: 897, column: 47, scope: !389)
!425 = !DILocation(line: 897, column: 54, scope: !389)
!426 = !DILocation(line: 897, column: 53, scope: !389)
!427 = !DILocation(line: 897, column: 52, scope: !389)
!428 = !DILocation(line: 897, column: 75, scope: !389)
!429 = !DILocation(line: 897, column: 73, scope: !389)
!430 = !DILocation(line: 897, column: 82, scope: !389)
!431 = !DILocation(line: 897, column: 10, scope: !389)
!432 = !DILocation(line: 898, column: 12, scope: !389)
!433 = !DILocation(line: 898, column: 30, scope: !389)
!434 = !DILocation(line: 899, column: 16, scope: !389)
!435 = !DILocation(line: 900, column: 14, scope: !436)
!436 = distinct !DILexicalBlock(scope: !389, file: !4, line: 900, column: 14)
!437 = !DILocation(line: 900, column: 21, scope: !436)
!438 = !DILocation(line: 900, column: 14, scope: !389)
!439 = !DILocation(line: 901, column: 36, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !4, line: 900, column: 26)
!441 = !DILocation(line: 901, column: 29, scope: !440)
!442 = !DILocation(line: 901, column: 27, scope: !440)
!443 = !DILocation(line: 902, column: 10, scope: !440)
!444 = !DILocation(line: 903, column: 27, scope: !445)
!445 = distinct !DILexicalBlock(scope: !436, file: !4, line: 902, column: 17)
!446 = !DILocation(line: 905, column: 7, scope: !389)
!447 = !DILocation(line: 906, column: 33, scope: !448)
!448 = distinct !DILexicalBlock(scope: !383, file: !4, line: 905, column: 14)
!449 = !DILocation(line: 906, column: 47, scope: !448)
!450 = !DILocation(line: 906, column: 26, scope: !448)
!451 = !DILocation(line: 906, column: 24, scope: !448)
!452 = !DILocation(line: 888, column: 4, scope: !453)
!453 = !DILexicalBlockFile(scope: !346, file: !4, discriminator: 2)
!454 = distinct !{!454, !372}
!455 = !DILocation(line: 910, column: 28, scope: !346)
!456 = !DILocation(line: 910, column: 35, scope: !346)
!457 = !DILocation(line: 910, column: 6, scope: !346)
!458 = !DILocation(line: 910, column: 25, scope: !346)
!459 = !DILocation(line: 911, column: 1, scope: !346)
!460 = distinct !DISubprogram(name: "HgfsIsEscapeSequence", scope: !4, file: !4, line: 571, type: !461, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !32, !19, !19}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !20, line: 230, baseType: !28)
!464 = !DILocalVariable(name: "bufIn", arg: 1, scope: !460, file: !4, line: 571, type: !32)
!465 = !DILocation(line: 571, column: 34, scope: !460)
!466 = !DILocalVariable(name: "offset", arg: 2, scope: !460, file: !4, line: 572, type: !19)
!467 = !DILocation(line: 572, column: 29, scope: !460)
!468 = !DILocalVariable(name: "length", arg: 3, scope: !460, file: !4, line: 573, type: !19)
!469 = !DILocation(line: 573, column: 29, scope: !460)
!470 = !DILocation(line: 575, column: 14, scope: !471)
!471 = distinct !DILexicalBlock(scope: !460, file: !4, line: 575, column: 8)
!472 = !DILocation(line: 575, column: 8, scope: !471)
!473 = !DILocation(line: 575, column: 22, scope: !471)
!474 = !DILocation(line: 575, column: 29, scope: !471)
!475 = !DILocation(line: 575, column: 32, scope: !476)
!476 = !DILexicalBlockFile(scope: !471, file: !4, discriminator: 1)
!477 = !DILocation(line: 575, column: 39, scope: !476)
!478 = !DILocation(line: 575, column: 8, scope: !476)
!479 = !DILocalVariable(name: "substitute", scope: !480, file: !4, line: 576, type: !27)
!480 = distinct !DILexicalBlock(scope: !471, file: !4, line: 575, column: 44)
!481 = !DILocation(line: 576, column: 13, scope: !480)
!482 = !DILocation(line: 577, column: 17, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !4, line: 577, column: 11)
!484 = !DILocation(line: 577, column: 24, scope: !483)
!485 = !DILocation(line: 577, column: 11, scope: !483)
!486 = !DILocation(line: 577, column: 29, scope: !483)
!487 = !DILocation(line: 577, column: 36, scope: !483)
!488 = !DILocation(line: 577, column: 39, scope: !489)
!489 = !DILexicalBlockFile(scope: !483, file: !4, discriminator: 1)
!490 = !DILocation(line: 577, column: 46, scope: !489)
!491 = !DILocation(line: 577, column: 11, scope: !489)
!492 = !DILocation(line: 583, column: 20, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !4, line: 583, column: 14)
!494 = distinct !DILexicalBlock(scope: !483, file: !4, line: 577, column: 51)
!495 = !DILocation(line: 583, column: 27, scope: !493)
!496 = !DILocation(line: 583, column: 14, scope: !493)
!497 = !DILocation(line: 583, column: 32, scope: !493)
!498 = !DILocation(line: 583, column: 14, scope: !494)
!499 = !DILocation(line: 584, column: 13, scope: !500)
!500 = distinct !DILexicalBlock(scope: !493, file: !4, line: 583, column: 40)
!501 = !DILocation(line: 586, column: 30, scope: !494)
!502 = !DILocation(line: 586, column: 59, scope: !494)
!503 = !DILocation(line: 586, column: 66, scope: !494)
!504 = !DILocation(line: 586, column: 53, scope: !494)
!505 = !DILocation(line: 586, column: 23, scope: !494)
!506 = !DILocation(line: 586, column: 21, scope: !494)
!507 = !DILocation(line: 587, column: 14, scope: !508)
!508 = distinct !DILexicalBlock(scope: !494, file: !4, line: 587, column: 14)
!509 = !DILocation(line: 587, column: 25, scope: !508)
!510 = !DILocation(line: 587, column: 14, scope: !494)
!511 = !DILocation(line: 588, column: 13, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !4, line: 587, column: 33)
!513 = !DILocation(line: 590, column: 7, scope: !494)
!514 = !DILocation(line: 591, column: 27, scope: !480)
!515 = !DILocation(line: 591, column: 56, scope: !480)
!516 = !DILocation(line: 591, column: 63, scope: !480)
!517 = !DILocation(line: 591, column: 50, scope: !480)
!518 = !DILocation(line: 591, column: 20, scope: !480)
!519 = !DILocation(line: 591, column: 18, scope: !480)
!520 = !DILocation(line: 592, column: 11, scope: !521)
!521 = distinct !DILexicalBlock(scope: !480, file: !4, line: 592, column: 11)
!522 = !DILocation(line: 592, column: 22, scope: !521)
!523 = !DILocation(line: 592, column: 11, scope: !480)
!524 = !DILocation(line: 593, column: 10, scope: !525)
!525 = distinct !DILexicalBlock(scope: !521, file: !4, line: 592, column: 30)
!526 = !DILocation(line: 595, column: 7, scope: !480)
!527 = !DILocation(line: 597, column: 4, scope: !460)
!528 = !DILocation(line: 598, column: 1, scope: !460)
!529 = distinct !DISubprogram(name: "HgfsEscapeEnumerate", scope: !4, file: !4, line: 637, type: !530, isLocal: true, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!530 = !DISubroutineType(types: !531)
!531 = !{!463, !32, !19, !532, !13}
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsEnumCallback", file: !4, line: 129, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!463, !32, !19, !536, !13}
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsEscapeReason", file: !4, line: 126, baseType: !3)
!537 = !DILocalVariable(name: "bufIn", arg: 1, scope: !529, file: !4, line: 637, type: !32)
!538 = !DILocation(line: 637, column: 33, scope: !529)
!539 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !529, file: !4, line: 638, type: !19)
!540 = !DILocation(line: 638, column: 28, scope: !529)
!541 = !DILocalVariable(name: "processEscape", arg: 3, scope: !529, file: !4, line: 639, type: !532)
!542 = !DILocation(line: 639, column: 38, scope: !529)
!543 = !DILocalVariable(name: "context", arg: 4, scope: !529, file: !4, line: 641, type: !13)
!544 = !DILocation(line: 641, column: 27, scope: !529)
!545 = !DILocalVariable(name: "i", scope: !529, file: !4, line: 644, type: !19)
!546 = !DILocation(line: 644, column: 11, scope: !529)
!547 = !DILocalVariable(name: "offset", scope: !529, file: !4, line: 644, type: !19)
!548 = !DILocation(line: 644, column: 14, scope: !529)
!549 = !DILocation(line: 645, column: 8, scope: !550)
!550 = distinct !DILexicalBlock(scope: !529, file: !4, line: 645, column: 8)
!551 = !DILocation(line: 645, column: 15, scope: !550)
!552 = !DILocation(line: 645, column: 8, scope: !529)
!553 = !DILocation(line: 646, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !4, line: 645, column: 21)
!555 = !DILocation(line: 653, column: 13, scope: !556)
!556 = distinct !DILexicalBlock(scope: !529, file: !4, line: 653, column: 4)
!557 = !DILocation(line: 653, column: 11, scope: !556)
!558 = !DILocation(line: 653, column: 9, scope: !556)
!559 = !DILocation(line: 653, column: 21, scope: !560)
!560 = !DILexicalBlockFile(scope: !561, file: !4, discriminator: 1)
!561 = distinct !DILexicalBlock(scope: !556, file: !4, line: 653, column: 4)
!562 = !DILocation(line: 653, column: 25, scope: !560)
!563 = !DILocation(line: 653, column: 23, scope: !560)
!564 = !DILocation(line: 653, column: 4, scope: !560)
!565 = !DILocation(line: 654, column: 18, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !4, line: 654, column: 11)
!567 = distinct !DILexicalBlock(scope: !561, file: !4, line: 653, column: 38)
!568 = !DILocation(line: 654, column: 44, scope: !566)
!569 = !DILocation(line: 654, column: 38, scope: !566)
!570 = !DILocation(line: 654, column: 11, scope: !566)
!571 = !DILocation(line: 654, column: 48, scope: !566)
!572 = !DILocation(line: 654, column: 11, scope: !567)
!573 = !DILocation(line: 655, column: 15, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !4, line: 655, column: 14)
!575 = distinct !DILexicalBlock(scope: !566, file: !4, line: 654, column: 56)
!576 = !DILocation(line: 655, column: 29, scope: !574)
!577 = !DILocation(line: 655, column: 36, scope: !574)
!578 = !DILocation(line: 655, column: 70, scope: !574)
!579 = !DILocation(line: 655, column: 14, scope: !575)
!580 = !DILocation(line: 656, column: 13, scope: !581)
!581 = distinct !DILexicalBlock(scope: !574, file: !4, line: 655, column: 80)
!582 = !DILocation(line: 658, column: 7, scope: !575)
!583 = !DILocation(line: 658, column: 39, scope: !584)
!584 = !DILexicalBlockFile(scope: !585, file: !4, discriminator: 1)
!585 = distinct !DILexicalBlock(scope: !566, file: !4, line: 658, column: 18)
!586 = !DILocation(line: 658, column: 46, scope: !584)
!587 = !DILocation(line: 658, column: 49, scope: !584)
!588 = !DILocation(line: 658, column: 18, scope: !584)
!589 = !DILocation(line: 659, column: 15, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !4, line: 659, column: 14)
!591 = distinct !DILexicalBlock(scope: !585, file: !4, line: 658, column: 58)
!592 = !DILocation(line: 659, column: 29, scope: !590)
!593 = !DILocation(line: 659, column: 36, scope: !590)
!594 = !DILocation(line: 659, column: 68, scope: !590)
!595 = !DILocation(line: 659, column: 14, scope: !591)
!596 = !DILocation(line: 660, column: 13, scope: !597)
!597 = distinct !DILexicalBlock(scope: !590, file: !4, line: 659, column: 78)
!598 = !DILocation(line: 662, column: 7, scope: !591)
!599 = !DILocation(line: 663, column: 4, scope: !567)
!600 = !DILocation(line: 653, column: 34, scope: !601)
!601 = !DILexicalBlockFile(scope: !561, file: !4, discriminator: 2)
!602 = !DILocation(line: 653, column: 4, scope: !601)
!603 = distinct !{!603, !604}
!604 = !DILocation(line: 653, column: 4, scope: !529)
!605 = !DILocation(line: 667, column: 9, scope: !606)
!606 = distinct !DILexicalBlock(scope: !529, file: !4, line: 667, column: 8)
!607 = !DILocation(line: 667, column: 23, scope: !606)
!608 = !DILocation(line: 667, column: 30, scope: !606)
!609 = !DILocation(line: 667, column: 60, scope: !606)
!610 = !DILocation(line: 667, column: 8, scope: !529)
!611 = !DILocation(line: 668, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !606, file: !4, line: 667, column: 70)
!613 = !DILocation(line: 671, column: 4, scope: !529)
!614 = !DILocation(line: 672, column: 1, scope: !529)
!615 = distinct !DISubprogram(name: "HgfsAddEscapeCharacter", scope: !4, file: !4, line: 170, type: !534, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!616 = !DILocalVariable(name: "bufIn", arg: 1, scope: !615, file: !4, line: 170, type: !32)
!617 = !DILocation(line: 170, column: 37, scope: !615)
!618 = !DILocalVariable(name: "offset", arg: 2, scope: !615, file: !4, line: 171, type: !19)
!619 = !DILocation(line: 171, column: 31, scope: !615)
!620 = !DILocalVariable(name: "reason", arg: 3, scope: !615, file: !4, line: 172, type: !536)
!621 = !DILocation(line: 172, column: 41, scope: !615)
!622 = !DILocalVariable(name: "context", arg: 4, scope: !615, file: !4, line: 173, type: !13)
!623 = !DILocation(line: 173, column: 30, scope: !615)
!624 = !DILocalVariable(name: "escapeContext", scope: !615, file: !4, line: 175, type: !14)
!625 = !DILocation(line: 175, column: 23, scope: !615)
!626 = !DILocation(line: 175, column: 60, scope: !615)
!627 = !DILocation(line: 175, column: 39, scope: !615)
!628 = !DILocalVariable(name: "charactersToCopy", scope: !615, file: !4, line: 176, type: !19)
!629 = !DILocation(line: 176, column: 11, scope: !615)
!630 = !DILocalVariable(name: "outputSpace", scope: !615, file: !4, line: 177, type: !19)
!631 = !DILocation(line: 177, column: 11, scope: !615)
!632 = !DILocalVariable(name: "illegal", scope: !615, file: !4, line: 178, type: !27)
!633 = !DILocation(line: 178, column: 10, scope: !615)
!634 = !DILocalVariable(name: "result", scope: !615, file: !4, line: 179, type: !463)
!635 = !DILocation(line: 179, column: 9, scope: !615)
!636 = !DILocation(line: 182, column: 23, scope: !615)
!637 = !DILocation(line: 182, column: 32, scope: !615)
!638 = !DILocation(line: 182, column: 47, scope: !615)
!639 = !DILocation(line: 182, column: 30, scope: !615)
!640 = !DILocation(line: 182, column: 21, scope: !615)
!641 = !DILocation(line: 184, column: 8, scope: !642)
!642 = distinct !DILexicalBlock(scope: !615, file: !4, line: 184, column: 8)
!643 = !DILocation(line: 184, column: 23, scope: !642)
!644 = !DILocation(line: 184, column: 38, scope: !642)
!645 = !DILocation(line: 184, column: 36, scope: !642)
!646 = !DILocation(line: 185, column: 8, scope: !642)
!647 = !DILocation(line: 185, column: 23, scope: !642)
!648 = !DILocation(line: 184, column: 55, scope: !642)
!649 = !DILocation(line: 184, column: 8, scope: !615)
!650 = !DILocation(line: 186, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !642, file: !4, line: 185, column: 43)
!652 = !DILocation(line: 189, column: 11, scope: !615)
!653 = !DILocation(line: 189, column: 26, scope: !615)
!654 = !DILocation(line: 189, column: 41, scope: !615)
!655 = !DILocation(line: 189, column: 56, scope: !615)
!656 = !DILocation(line: 189, column: 39, scope: !615)
!657 = !DILocation(line: 190, column: 11, scope: !615)
!658 = !DILocation(line: 190, column: 19, scope: !615)
!659 = !DILocation(line: 190, column: 34, scope: !615)
!660 = !DILocation(line: 190, column: 17, scope: !615)
!661 = !DILocation(line: 190, column: 51, scope: !615)
!662 = !DILocation(line: 190, column: 68, scope: !615)
!663 = !DILocation(line: 189, column: 4, scope: !615)
!664 = !DILocation(line: 191, column: 35, scope: !615)
!665 = !DILocation(line: 191, column: 4, scope: !615)
!666 = !DILocation(line: 191, column: 19, scope: !615)
!667 = !DILocation(line: 191, column: 32, scope: !615)
!668 = !DILocation(line: 192, column: 38, scope: !615)
!669 = !DILocation(line: 192, column: 4, scope: !615)
!670 = !DILocation(line: 192, column: 19, scope: !615)
!671 = !DILocation(line: 192, column: 35, scope: !615)
!672 = !DILocation(line: 194, column: 18, scope: !615)
!673 = !DILocation(line: 194, column: 33, scope: !615)
!674 = !DILocation(line: 194, column: 54, scope: !615)
!675 = !DILocation(line: 194, column: 69, scope: !615)
!676 = !DILocation(line: 194, column: 52, scope: !615)
!677 = !DILocation(line: 194, column: 16, scope: !615)
!678 = !DILocation(line: 196, column: 11, scope: !615)
!679 = !DILocation(line: 196, column: 4, scope: !615)
!680 = !DILocation(line: 198, column: 11, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !4, line: 198, column: 11)
!682 = distinct !DILexicalBlock(scope: !615, file: !4, line: 196, column: 19)
!683 = !DILocation(line: 198, column: 23, scope: !681)
!684 = !DILocation(line: 198, column: 11, scope: !682)
!685 = !DILocation(line: 199, column: 10, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !4, line: 198, column: 28)
!687 = !DILocation(line: 201, column: 24, scope: !682)
!688 = !DILocation(line: 201, column: 50, scope: !682)
!689 = !DILocation(line: 201, column: 65, scope: !682)
!690 = !DILocation(line: 201, column: 44, scope: !682)
!691 = !DILocation(line: 201, column: 17, scope: !682)
!692 = !DILocation(line: 201, column: 15, scope: !682)
!693 = !DILocation(line: 202, column: 7, scope: !682)
!694 = !DILocation(line: 202, column: 22, scope: !682)
!695 = !DILocation(line: 202, column: 37, scope: !682)
!696 = !DILocation(line: 205, column: 32, scope: !682)
!697 = !DILocation(line: 205, column: 42, scope: !682)
!698 = !DILocation(line: 205, column: 40, scope: !682)
!699 = !DILocation(line: 205, column: 10, scope: !682)
!700 = !DILocation(line: 204, column: 35, scope: !682)
!701 = !DILocation(line: 204, column: 50, scope: !682)
!702 = !DILocation(line: 204, column: 7, scope: !682)
!703 = !DILocation(line: 204, column: 22, scope: !682)
!704 = !DILocation(line: 204, column: 64, scope: !682)
!705 = !DILocation(line: 206, column: 7, scope: !682)
!706 = !DILocation(line: 206, column: 22, scope: !682)
!707 = !DILocation(line: 206, column: 34, scope: !682)
!708 = !DILocation(line: 207, column: 35, scope: !682)
!709 = !DILocation(line: 207, column: 50, scope: !682)
!710 = !DILocation(line: 207, column: 7, scope: !682)
!711 = !DILocation(line: 207, column: 22, scope: !682)
!712 = !DILocation(line: 207, column: 64, scope: !682)
!713 = !DILocation(line: 208, column: 7, scope: !682)
!714 = !DILocation(line: 208, column: 22, scope: !682)
!715 = !DILocation(line: 208, column: 34, scope: !682)
!716 = !DILocation(line: 209, column: 7, scope: !682)
!717 = !DILocation(line: 212, column: 11, scope: !718)
!718 = distinct !DILexicalBlock(scope: !682, file: !4, line: 212, column: 11)
!719 = !DILocation(line: 212, column: 23, scope: !718)
!720 = !DILocation(line: 212, column: 11, scope: !682)
!721 = !DILocation(line: 213, column: 10, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !4, line: 212, column: 28)
!723 = !DILocation(line: 215, column: 35, scope: !682)
!724 = !DILocation(line: 215, column: 50, scope: !682)
!725 = !DILocation(line: 215, column: 7, scope: !682)
!726 = !DILocation(line: 215, column: 22, scope: !682)
!727 = !DILocation(line: 215, column: 64, scope: !682)
!728 = !DILocation(line: 216, column: 7, scope: !682)
!729 = !DILocation(line: 216, column: 22, scope: !682)
!730 = !DILocation(line: 216, column: 34, scope: !682)
!731 = !DILocation(line: 217, column: 7, scope: !682)
!732 = !DILocation(line: 220, column: 11, scope: !733)
!733 = distinct !DILexicalBlock(scope: !682, file: !4, line: 220, column: 11)
!734 = !DILocation(line: 220, column: 23, scope: !733)
!735 = !DILocation(line: 220, column: 11, scope: !682)
!736 = !DILocation(line: 221, column: 10, scope: !737)
!737 = distinct !DILexicalBlock(scope: !733, file: !4, line: 220, column: 28)
!738 = !DILocation(line: 223, column: 35, scope: !682)
!739 = !DILocation(line: 223, column: 50, scope: !682)
!740 = !DILocation(line: 223, column: 7, scope: !682)
!741 = !DILocation(line: 223, column: 22, scope: !682)
!742 = !DILocation(line: 223, column: 64, scope: !682)
!743 = !DILocation(line: 224, column: 7, scope: !682)
!744 = !DILocation(line: 224, column: 22, scope: !682)
!745 = !DILocation(line: 224, column: 34, scope: !682)
!746 = !DILocation(line: 225, column: 7, scope: !682)
!747 = !DILocation(line: 228, column: 11, scope: !748)
!748 = distinct !DILexicalBlock(scope: !682, file: !4, line: 228, column: 11)
!749 = !DILocation(line: 228, column: 23, scope: !748)
!750 = !DILocation(line: 228, column: 11, scope: !682)
!751 = !DILocation(line: 229, column: 10, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !4, line: 228, column: 28)
!753 = !DILocation(line: 231, column: 7, scope: !682)
!754 = !DILocation(line: 231, column: 22, scope: !682)
!755 = !DILocation(line: 231, column: 37, scope: !682)
!756 = !DILocation(line: 232, column: 35, scope: !682)
!757 = !DILocation(line: 232, column: 50, scope: !682)
!758 = !DILocation(line: 232, column: 7, scope: !682)
!759 = !DILocation(line: 232, column: 22, scope: !682)
!760 = !DILocation(line: 232, column: 64, scope: !682)
!761 = !DILocation(line: 233, column: 7, scope: !682)
!762 = !DILocation(line: 233, column: 22, scope: !682)
!763 = !DILocation(line: 233, column: 34, scope: !682)
!764 = !DILocation(line: 234, column: 35, scope: !682)
!765 = !DILocation(line: 234, column: 50, scope: !682)
!766 = !DILocation(line: 234, column: 7, scope: !682)
!767 = !DILocation(line: 234, column: 22, scope: !682)
!768 = !DILocation(line: 234, column: 64, scope: !682)
!769 = !DILocation(line: 235, column: 7, scope: !682)
!770 = !DILocation(line: 235, column: 22, scope: !682)
!771 = !DILocation(line: 235, column: 34, scope: !682)
!772 = !DILocation(line: 236, column: 7, scope: !682)
!773 = !DILocation(line: 239, column: 11, scope: !774)
!774 = distinct !DILexicalBlock(scope: !682, file: !4, line: 239, column: 11)
!775 = !DILocation(line: 239, column: 23, scope: !774)
!776 = !DILocation(line: 239, column: 11, scope: !682)
!777 = !DILocation(line: 240, column: 10, scope: !778)
!778 = distinct !DILexicalBlock(scope: !774, file: !4, line: 239, column: 28)
!779 = !DILocation(line: 242, column: 35, scope: !682)
!780 = !DILocation(line: 242, column: 50, scope: !682)
!781 = !DILocation(line: 242, column: 7, scope: !682)
!782 = !DILocation(line: 242, column: 22, scope: !682)
!783 = !DILocation(line: 242, column: 64, scope: !682)
!784 = !DILocation(line: 243, column: 7, scope: !682)
!785 = !DILocation(line: 246, column: 14, scope: !682)
!786 = !DILocation(line: 248, column: 4, scope: !682)
!787 = !DILocation(line: 249, column: 11, scope: !615)
!788 = !DILocation(line: 249, column: 4, scope: !615)
!789 = !DILocation(line: 250, column: 1, scope: !615)
!790 = distinct !DISubprogram(name: "HgfsCountEscapeChars", scope: !4, file: !4, line: 271, type: !534, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !41)
!791 = !DILocalVariable(name: "bufIn", arg: 1, scope: !790, file: !4, line: 271, type: !32)
!792 = !DILocation(line: 271, column: 34, scope: !790)
!793 = !DILocalVariable(name: "offset", arg: 2, scope: !790, file: !4, line: 272, type: !19)
!794 = !DILocation(line: 272, column: 29, scope: !790)
!795 = !DILocalVariable(name: "reason", arg: 3, scope: !790, file: !4, line: 273, type: !536)
!796 = !DILocation(line: 273, column: 39, scope: !790)
!797 = !DILocalVariable(name: "context", arg: 4, scope: !790, file: !4, line: 274, type: !13)
!798 = !DILocation(line: 274, column: 28, scope: !790)
!799 = !DILocation(line: 278, column: 8, scope: !800)
!800 = distinct !DILexicalBlock(scope: !790, file: !4, line: 278, column: 8)
!801 = !DILocation(line: 278, column: 15, scope: !800)
!802 = !DILocation(line: 278, column: 8, scope: !790)
!803 = !DILocalVariable(name: "counter", scope: !804, file: !4, line: 279, type: !29)
!804 = distinct !DILexicalBlock(scope: !800, file: !4, line: 278, column: 40)
!805 = !DILocation(line: 279, column: 15, scope: !804)
!806 = !DILocation(line: 279, column: 34, scope: !804)
!807 = !DILocation(line: 279, column: 25, scope: !804)
!808 = !DILocation(line: 280, column: 9, scope: !804)
!809 = !DILocation(line: 280, column: 17, scope: !804)
!810 = !DILocation(line: 281, column: 4, scope: !804)
!811 = !DILocation(line: 282, column: 4, scope: !790)
