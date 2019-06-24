; ModuleID = './line39-line-split.o.i'
source_filename = "./line39-line-split.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._LINEBUF_REC = type { i32, i32, i32, i8* }

@__func__.line_split = private unnamed_addr constant [11 x i8] c"line_split\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"output != NULL\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"buffer != NULL\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @line_split(i8*, i32, i8**, %struct._LINEBUF_REC**) #0 !dbg !26 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct._LINEBUF_REC**, align 8
  %10 = alloca %struct._LINEBUF_REC*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !31, metadata !32), !dbg !33
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !34, metadata !32), !dbg !35
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !36, metadata !32), !dbg !37
  store %struct._LINEBUF_REC** %3, %struct._LINEBUF_REC*** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._LINEBUF_REC*** %9, metadata !38, metadata !32), !dbg !39
  call void @llvm.dbg.declare(metadata %struct._LINEBUF_REC** %10, metadata !40, metadata !32), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %11, metadata !42, metadata !32), !dbg !43
  br label %12, !dbg !44, !llvm.loop !45

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %6, align 8, !dbg !46
  %14 = icmp ne i8* %13, null, !dbg !50
  br i1 %14, label %15, label %16, !dbg !46

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !51

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.line_split, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !54
  store i32 -1, i32* %5, align 4, !dbg !57
  br label %106, !dbg !57

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !58

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !60, !llvm.loop !61

; <label>:19:                                     ; preds = %18
  %20 = load i8**, i8*** %8, align 8, !dbg !62
  %21 = icmp ne i8** %20, null, !dbg !66
  br i1 %21, label %22, label %23, !dbg !62

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !67

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.line_split, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !70
  store i32 -1, i32* %5, align 4, !dbg !73
  br label %106, !dbg !73

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !74

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !76, !llvm.loop !77

; <label>:26:                                     ; preds = %25
  %27 = load %struct._LINEBUF_REC**, %struct._LINEBUF_REC*** %9, align 8, !dbg !78
  %28 = icmp ne %struct._LINEBUF_REC** %27, null, !dbg !82
  br i1 %28, label %29, label %30, !dbg !78

; <label>:29:                                     ; preds = %26
  br label %31, !dbg !83

; <label>:30:                                     ; preds = %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.line_split, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !86
  store i32 -1, i32* %5, align 4, !dbg !89
  br label %106, !dbg !89

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !90

; <label>:32:                                     ; preds = %31
  %33 = load %struct._LINEBUF_REC**, %struct._LINEBUF_REC*** %9, align 8, !dbg !92
  %34 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %33, align 8, !dbg !94
  %35 = icmp eq %struct._LINEBUF_REC* %34, null, !dbg !95
  br i1 %35, label %36, label %40, !dbg !96

; <label>:36:                                     ; preds = %32
  %37 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !97
  %38 = bitcast i8* %37 to %struct._LINEBUF_REC*, !dbg !98
  %39 = load %struct._LINEBUF_REC**, %struct._LINEBUF_REC*** %9, align 8, !dbg !99
  store %struct._LINEBUF_REC* %38, %struct._LINEBUF_REC** %39, align 8, !dbg !100
  br label %40, !dbg !101

; <label>:40:                                     ; preds = %36, %32
  %41 = load %struct._LINEBUF_REC**, %struct._LINEBUF_REC*** %9, align 8, !dbg !102
  %42 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %41, align 8, !dbg !103
  store %struct._LINEBUF_REC* %42, %struct._LINEBUF_REC** %10, align 8, !dbg !104
  %43 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !105
  %44 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %43, i32 0, i32 2, !dbg !107
  %45 = load i32, i32* %44, align 8, !dbg !107
  %46 = icmp sgt i32 %45, 0, !dbg !108
  br i1 %46, label %47, label %74, !dbg !109

; <label>:47:                                     ; preds = %40
  %48 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !110
  %49 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %48, i32 0, i32 2, !dbg !112
  %50 = load i32, i32* %49, align 8, !dbg !112
  %51 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !113
  %52 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %51, i32 0, i32 0, !dbg !114
  %53 = load i32, i32* %52, align 8, !dbg !115
  %54 = sub nsw i32 %53, %50, !dbg !115
  store i32 %54, i32* %52, align 8, !dbg !115
  br label %55, !dbg !116, !llvm.loop !117

; <label>:55:                                     ; preds = %47
  %56 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !118
  %57 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %56, i32 0, i32 3, !dbg !121
  %58 = load i8*, i8** %57, align 8, !dbg !121
  %59 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !122
  %60 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %59, i32 0, i32 3, !dbg !123
  %61 = load i8*, i8** %60, align 8, !dbg !123
  %62 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !124
  %63 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %62, i32 0, i32 2, !dbg !125
  %64 = load i32, i32* %63, align 8, !dbg !125
  %65 = sext i32 %64 to i64, !dbg !126
  %66 = getelementptr inbounds i8, i8* %61, i64 %65, !dbg !126
  %67 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !127
  %68 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %67, i32 0, i32 0, !dbg !128
  %69 = load i32, i32* %68, align 8, !dbg !128
  %70 = sext i32 %69 to i64, !dbg !129
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %58, i8* %66, i64 %70, i32 1, i1 false), !dbg !130
  br label %71, !dbg !131

; <label>:71:                                     ; preds = %55
  %72 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !132
  %73 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %72, i32 0, i32 2, !dbg !133
  store i32 0, i32* %73, align 8, !dbg !134
  br label %74, !dbg !135

; <label>:74:                                     ; preds = %71, %40
  %75 = load i32, i32* %7, align 4, !dbg !136
  %76 = icmp sgt i32 %75, 0, !dbg !138
  br i1 %76, label %77, label %81, !dbg !139

; <label>:77:                                     ; preds = %74
  %78 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !140
  %79 = load i8*, i8** %6, align 8, !dbg !141
  %80 = load i32, i32* %7, align 4, !dbg !142
  call void @linebuf_append(%struct._LINEBUF_REC* %78, i8* %79, i32 %80), !dbg !143
  br label %98, !dbg !143

; <label>:81:                                     ; preds = %74
  %82 = load i32, i32* %7, align 4, !dbg !144
  %83 = icmp slt i32 %82, 0, !dbg !146
  br i1 %83, label %84, label %97, !dbg !147

; <label>:84:                                     ; preds = %81
  %85 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !148
  %86 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %85, i32 0, i32 0, !dbg !151
  %87 = load i32, i32* %86, align 8, !dbg !151
  %88 = icmp eq i32 %87, 0, !dbg !152
  br i1 %88, label %89, label %90, !dbg !153

; <label>:89:                                     ; preds = %84
  store i32 -1, i32* %5, align 4, !dbg !154
  br label %106, !dbg !154

; <label>:90:                                     ; preds = %84
  %91 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !155
  %92 = call i8* @linebuf_find(%struct._LINEBUF_REC* %91, i8 signext 10), !dbg !157
  %93 = icmp eq i8* %92, null, !dbg !158
  br i1 %93, label %94, label %96, !dbg !159

; <label>:94:                                     ; preds = %90
  %95 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !160
  call void @linebuf_append(%struct._LINEBUF_REC* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i32 1), !dbg !162
  br label %96, !dbg !163

; <label>:96:                                     ; preds = %94, %90
  br label %97, !dbg !164

; <label>:97:                                     ; preds = %96, %81
  br label %98

; <label>:98:                                     ; preds = %97, %77
  %99 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !165
  %100 = call i32 @remove_newline(%struct._LINEBUF_REC* %99), !dbg !166
  store i32 %100, i32* %11, align 4, !dbg !167
  %101 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %10, align 8, !dbg !168
  %102 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %101, i32 0, i32 3, !dbg !169
  %103 = load i8*, i8** %102, align 8, !dbg !169
  %104 = load i8**, i8*** %8, align 8, !dbg !170
  store i8* %103, i8** %104, align 8, !dbg !171
  %105 = load i32, i32* %11, align 4, !dbg !172
  store i32 %105, i32* %5, align 4, !dbg !173
  br label %106, !dbg !173

; <label>:106:                                    ; preds = %98, %89, %30, %23, %16
  %107 = load i32, i32* %5, align 4, !dbg !174
  ret i32 %107, !dbg !174
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @linebuf_append(%struct._LINEBUF_REC*, i8*, i32) #0 !dbg !175 {
  %4 = alloca %struct._LINEBUF_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._LINEBUF_REC* %0, %struct._LINEBUF_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LINEBUF_REC** %4, metadata !178, metadata !32), !dbg !179
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !180, metadata !32), !dbg !181
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !182, metadata !32), !dbg !183
  %7 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %4, align 8, !dbg !184
  %8 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %7, i32 0, i32 0, !dbg !186
  %9 = load i32, i32* %8, align 8, !dbg !186
  %10 = load i32, i32* %6, align 4, !dbg !187
  %11 = add nsw i32 %9, %10, !dbg !188
  %12 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %4, align 8, !dbg !189
  %13 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %12, i32 0, i32 1, !dbg !190
  %14 = load i32, i32* %13, align 4, !dbg !190
  %15 = icmp sgt i32 %11, %14, !dbg !191
  br i1 %15, label %16, label %35, !dbg !192

; <label>:16:                                     ; preds = %3
  %17 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %4, align 8, !dbg !193
  %18 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %17, i32 0, i32 0, !dbg !195
  %19 = load i32, i32* %18, align 8, !dbg !195
  %20 = load i32, i32* %6, align 4, !dbg !196
  %21 = add nsw i32 %19, %20, !dbg !197
  %22 = call i32 @nearest_power(i32 %21), !dbg !198
  %23 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %4, align 8, !dbg !199
  %24 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %23, i32 0, i32 1, !dbg !200
  store i32 %22, i32* %24, align 4, !dbg !201
  %25 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %4, align 8, !dbg !202
  %26 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %25, i32 0, i32 3, !dbg !203
  %27 = load i8*, i8** %26, align 8, !dbg !203
  %28 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %4, align 8, !dbg !204
  %29 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %28, i32 0, i32 1, !dbg !205
  %30 = load i32, i32* %29, align 4, !dbg !205
  %31 = sext i32 %30 to i64, !dbg !204
  %32 = call i8* @g_realloc(i8* %27, i64 %31), !dbg !206
  %33 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %4, align 8, !dbg !207
  %34 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %33, i32 0, i32 3, !dbg !208
  store i8* %32, i8** %34, align 8, !dbg !209
  br label %35, !dbg !210

; <label>:35:                                     ; preds = %16, %3
  %36 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %4, align 8, !dbg !211
  %37 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %36, i32 0, i32 3, !dbg !212
  %38 = load i8*, i8** %37, align 8, !dbg !212
  %39 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %4, align 8, !dbg !213
  %40 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %39, i32 0, i32 0, !dbg !214
  %41 = load i32, i32* %40, align 8, !dbg !214
  %42 = sext i32 %41 to i64, !dbg !215
  %43 = getelementptr inbounds i8, i8* %38, i64 %42, !dbg !215
  %44 = load i8*, i8** %5, align 8, !dbg !216
  %45 = load i32, i32* %6, align 4, !dbg !217
  %46 = sext i32 %45 to i64, !dbg !217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 %46, i32 1, i1 false), !dbg !218
  %47 = load i32, i32* %6, align 4, !dbg !219
  %48 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %4, align 8, !dbg !220
  %49 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %48, i32 0, i32 0, !dbg !221
  %50 = load i32, i32* %49, align 8, !dbg !222
  %51 = add nsw i32 %50, %47, !dbg !222
  store i32 %51, i32* %49, align 8, !dbg !222
  ret void, !dbg !223
}

; Function Attrs: nounwind uwtable
define internal i8* @linebuf_find(%struct._LINEBUF_REC*, i8 signext) #0 !dbg !224 {
  %3 = alloca %struct._LINEBUF_REC*, align 8
  %4 = alloca i8, align 1
  store %struct._LINEBUF_REC* %0, %struct._LINEBUF_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._LINEBUF_REC** %3, metadata !227, metadata !32), !dbg !228
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !229, metadata !32), !dbg !230
  %5 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %3, align 8, !dbg !231
  %6 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %5, i32 0, i32 3, !dbg !232
  %7 = load i8*, i8** %6, align 8, !dbg !232
  %8 = load i8, i8* %4, align 1, !dbg !233
  %9 = sext i8 %8 to i32, !dbg !233
  %10 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %3, align 8, !dbg !234
  %11 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %10, i32 0, i32 0, !dbg !235
  %12 = load i32, i32* %11, align 8, !dbg !235
  %13 = sext i32 %12 to i64, !dbg !234
  %14 = call i8* @memchr(i8* %7, i32 %9, i64 %13) #5, !dbg !236
  ret i8* %14, !dbg !237
}

; Function Attrs: nounwind uwtable
define internal i32 @remove_newline(%struct._LINEBUF_REC*) #0 !dbg !238 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._LINEBUF_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._LINEBUF_REC* %0, %struct._LINEBUF_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._LINEBUF_REC** %3, metadata !241, metadata !32), !dbg !242
  call void @llvm.dbg.declare(metadata i8** %4, metadata !243, metadata !32), !dbg !244
  %5 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %3, align 8, !dbg !245
  %6 = call i8* @linebuf_find(%struct._LINEBUF_REC* %5, i8 signext 10), !dbg !246
  store i8* %6, i8** %4, align 8, !dbg !247
  %7 = load i8*, i8** %4, align 8, !dbg !248
  %8 = icmp eq i8* %7, null, !dbg !250
  br i1 %8, label %9, label %26, !dbg !251

; <label>:9:                                      ; preds = %1
  %10 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %3, align 8, !dbg !252
  %11 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %10, i32 0, i32 0, !dbg !255
  %12 = load i32, i32* %11, align 8, !dbg !255
  %13 = icmp slt i32 %12, 65536, !dbg !256
  br i1 %13, label %14, label %15, !dbg !257

; <label>:14:                                     ; preds = %9
  store i32 0, i32* %2, align 4, !dbg !258
  br label %54, !dbg !258

; <label>:15:                                     ; preds = %9
  %16 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %3, align 8, !dbg !259
  call void @linebuf_append(%struct._LINEBUF_REC* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i32 1), !dbg !260
  %17 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %3, align 8, !dbg !261
  %18 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %17, i32 0, i32 3, !dbg !262
  %19 = load i8*, i8** %18, align 8, !dbg !262
  %20 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %3, align 8, !dbg !263
  %21 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %20, i32 0, i32 0, !dbg !264
  %22 = load i32, i32* %21, align 8, !dbg !264
  %23 = sext i32 %22 to i64, !dbg !265
  %24 = getelementptr inbounds i8, i8* %19, i64 %23, !dbg !265
  %25 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !266
  store i8* %25, i8** %4, align 8, !dbg !267
  br label %26, !dbg !268

; <label>:26:                                     ; preds = %15, %1
  %27 = load i8*, i8** %4, align 8, !dbg !269
  %28 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %3, align 8, !dbg !270
  %29 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %28, i32 0, i32 3, !dbg !271
  %30 = load i8*, i8** %29, align 8, !dbg !271
  %31 = ptrtoint i8* %27 to i64, !dbg !272
  %32 = ptrtoint i8* %30 to i64, !dbg !272
  %33 = sub i64 %31, %32, !dbg !272
  %34 = trunc i64 %33 to i32, !dbg !273
  %35 = add nsw i32 %34, 1, !dbg !274
  %36 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %3, align 8, !dbg !275
  %37 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %36, i32 0, i32 2, !dbg !276
  store i32 %35, i32* %37, align 8, !dbg !277
  %38 = load i8*, i8** %4, align 8, !dbg !278
  %39 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %3, align 8, !dbg !280
  %40 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %39, i32 0, i32 3, !dbg !281
  %41 = load i8*, i8** %40, align 8, !dbg !281
  %42 = icmp ne i8* %38, %41, !dbg !282
  br i1 %42, label %43, label %52, !dbg !283

; <label>:43:                                     ; preds = %26
  %44 = load i8*, i8** %4, align 8, !dbg !284
  %45 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !284
  %46 = load i8, i8* %45, align 1, !dbg !284
  %47 = sext i8 %46 to i32, !dbg !284
  %48 = icmp eq i32 %47, 13, !dbg !286
  br i1 %48, label %49, label %52, !dbg !287

; <label>:49:                                     ; preds = %43
  %50 = load i8*, i8** %4, align 8, !dbg !288
  %51 = getelementptr inbounds i8, i8* %50, i32 -1, !dbg !288
  store i8* %51, i8** %4, align 8, !dbg !288
  br label %52, !dbg !290

; <label>:52:                                     ; preds = %49, %43, %26
  %53 = load i8*, i8** %4, align 8, !dbg !291
  store i8 0, i8* %53, align 1, !dbg !292
  store i32 1, i32* %2, align 4, !dbg !293
  br label %54, !dbg !293

; <label>:54:                                     ; preds = %52, %14
  %55 = load i32, i32* %2, align 4, !dbg !294
  ret i32 %55, !dbg !294
}

; Function Attrs: nounwind uwtable
define void @line_split_free(%struct._LINEBUF_REC*) #0 !dbg !295 {
  %2 = alloca %struct._LINEBUF_REC*, align 8
  store %struct._LINEBUF_REC* %0, %struct._LINEBUF_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LINEBUF_REC** %2, metadata !298, metadata !32), !dbg !299
  %3 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %2, align 8, !dbg !300
  %4 = icmp ne %struct._LINEBUF_REC* %3, null, !dbg !302
  br i1 %4, label %5, label %17, !dbg !303

; <label>:5:                                      ; preds = %1
  %6 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %2, align 8, !dbg !304
  %7 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %6, i32 0, i32 3, !dbg !307
  %8 = load i8*, i8** %7, align 8, !dbg !307
  %9 = icmp ne i8* %8, null, !dbg !308
  br i1 %9, label %10, label %14, !dbg !309

; <label>:10:                                     ; preds = %5
  %11 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %2, align 8, !dbg !310
  %12 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %11, i32 0, i32 3, !dbg !312
  %13 = load i8*, i8** %12, align 8, !dbg !312
  call void @g_free(i8* %13), !dbg !313
  br label %14, !dbg !313

; <label>:14:                                     ; preds = %10, %5
  %15 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %2, align 8, !dbg !314
  %16 = bitcast %struct._LINEBUF_REC* %15 to i8*, !dbg !314
  call void @g_free(i8* %16), !dbg !315
  br label %17, !dbg !316

; <label>:17:                                     ; preds = %14, %1
  ret void, !dbg !317
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @line_split_is_empty(%struct._LINEBUF_REC*) #0 !dbg !318 {
  %2 = alloca %struct._LINEBUF_REC*, align 8
  store %struct._LINEBUF_REC* %0, %struct._LINEBUF_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LINEBUF_REC** %2, metadata !319, metadata !32), !dbg !320
  %3 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %2, align 8, !dbg !321
  %4 = getelementptr inbounds %struct._LINEBUF_REC, %struct._LINEBUF_REC* %3, i32 0, i32 0, !dbg !322
  %5 = load i32, i32* %4, align 8, !dbg !322
  %6 = icmp eq i32 %5, 0, !dbg !323
  %7 = zext i1 %6 to i32, !dbg !323
  ret i32 %7, !dbg !324
}

declare i32 @nearest_power(i32) #2

declare i8* @g_realloc(i8*, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line39-line-split.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !5, !9, !11, !18}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !7, line: 46, baseType: !8)
!7 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !13, line: 101, baseType: !14)
!13 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !15, line: 35, size: 192, align: 64, elements: !16)
!15 = !DIFile(filename: "line-split.c", directory: "/home/lichi/Desktop/irssi/task1")
!16 = !{!17, !19, !20, !21}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !14, file: !15, line: 36, baseType: !18, size: 32, align: 32)
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !14, file: !15, line: 37, baseType: !18, size: 32, align: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !14, file: !15, line: 38, baseType: !18, size: 32, align: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !14, file: !15, line: 39, baseType: !22, size: 64, align: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!26 = distinct !DISubprogram(name: "line_split", scope: !15, file: !15, line: 84, type: !27, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{!18, !9, !18, !29, !30}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!31 = !DILocalVariable(name: "data", arg: 1, scope: !26, file: !15, line: 84, type: !9)
!32 = !DIExpression()
!33 = !DILocation(line: 84, column: 28, scope: !26)
!34 = !DILocalVariable(name: "len", arg: 2, scope: !26, file: !15, line: 84, type: !18)
!35 = !DILocation(line: 84, column: 38, scope: !26)
!36 = !DILocalVariable(name: "output", arg: 3, scope: !26, file: !15, line: 84, type: !29)
!37 = !DILocation(line: 84, column: 50, scope: !26)
!38 = !DILocalVariable(name: "buffer", arg: 4, scope: !26, file: !15, line: 84, type: !30)
!39 = !DILocation(line: 84, column: 72, scope: !26)
!40 = !DILocalVariable(name: "rec", scope: !26, file: !15, line: 86, type: !11)
!41 = !DILocation(line: 86, column: 15, scope: !26)
!42 = !DILocalVariable(name: "ret", scope: !26, file: !15, line: 87, type: !18)
!43 = !DILocation(line: 87, column: 6, scope: !26)
!44 = !DILocation(line: 89, column: 2, scope: !26)
!45 = distinct !{!45, !44}
!46 = !DILocation(line: 89, column: 10, scope: !47)
!47 = !DILexicalBlockFile(scope: !48, file: !15, discriminator: 1)
!48 = distinct !DILexicalBlock(scope: !49, file: !15, line: 89, column: 10)
!49 = distinct !DILexicalBlock(scope: !26, file: !15, line: 89, column: 4)
!50 = !DILocation(line: 89, column: 15, scope: !47)
!51 = !DILocation(line: 89, column: 5, scope: !52)
!52 = !DILexicalBlockFile(scope: !53, file: !15, discriminator: 2)
!53 = distinct !DILexicalBlock(scope: !48, file: !15, line: 89, column: 3)
!54 = !DILocation(line: 89, column: 14, scope: !55)
!55 = !DILexicalBlockFile(scope: !56, file: !15, discriminator: 3)
!56 = distinct !DILexicalBlock(scope: !48, file: !15, line: 89, column: 12)
!57 = !DILocation(line: 89, column: 99, scope: !55)
!58 = !DILocation(line: 89, column: 115, scope: !59)
!59 = !DILexicalBlockFile(scope: !49, file: !15, discriminator: 4)
!60 = !DILocation(line: 90, column: 2, scope: !26)
!61 = distinct !{!61, !60}
!62 = !DILocation(line: 90, column: 10, scope: !63)
!63 = !DILexicalBlockFile(scope: !64, file: !15, discriminator: 1)
!64 = distinct !DILexicalBlock(scope: !65, file: !15, line: 90, column: 10)
!65 = distinct !DILexicalBlock(scope: !26, file: !15, line: 90, column: 4)
!66 = !DILocation(line: 90, column: 17, scope: !63)
!67 = !DILocation(line: 90, column: 5, scope: !68)
!68 = !DILexicalBlockFile(scope: !69, file: !15, discriminator: 2)
!69 = distinct !DILexicalBlock(scope: !64, file: !15, line: 90, column: 3)
!70 = !DILocation(line: 90, column: 14, scope: !71)
!71 = !DILexicalBlockFile(scope: !72, file: !15, discriminator: 3)
!72 = distinct !DILexicalBlock(scope: !64, file: !15, line: 90, column: 12)
!73 = !DILocation(line: 90, column: 101, scope: !71)
!74 = !DILocation(line: 90, column: 117, scope: !75)
!75 = !DILexicalBlockFile(scope: !65, file: !15, discriminator: 4)
!76 = !DILocation(line: 91, column: 2, scope: !26)
!77 = distinct !{!77, !76}
!78 = !DILocation(line: 91, column: 10, scope: !79)
!79 = !DILexicalBlockFile(scope: !80, file: !15, discriminator: 1)
!80 = distinct !DILexicalBlock(scope: !81, file: !15, line: 91, column: 10)
!81 = distinct !DILexicalBlock(scope: !26, file: !15, line: 91, column: 4)
!82 = !DILocation(line: 91, column: 17, scope: !79)
!83 = !DILocation(line: 91, column: 5, scope: !84)
!84 = !DILexicalBlockFile(scope: !85, file: !15, discriminator: 2)
!85 = distinct !DILexicalBlock(scope: !80, file: !15, line: 91, column: 3)
!86 = !DILocation(line: 91, column: 14, scope: !87)
!87 = !DILexicalBlockFile(scope: !88, file: !15, discriminator: 3)
!88 = distinct !DILexicalBlock(scope: !80, file: !15, line: 91, column: 12)
!89 = !DILocation(line: 91, column: 101, scope: !87)
!90 = !DILocation(line: 91, column: 117, scope: !91)
!91 = !DILexicalBlockFile(scope: !81, file: !15, discriminator: 4)
!92 = !DILocation(line: 93, column: 7, scope: !93)
!93 = distinct !DILexicalBlock(scope: !26, file: !15, line: 93, column: 6)
!94 = !DILocation(line: 93, column: 6, scope: !93)
!95 = !DILocation(line: 93, column: 14, scope: !93)
!96 = !DILocation(line: 93, column: 6, scope: !26)
!97 = !DILocation(line: 94, column: 30, scope: !93)
!98 = !DILocation(line: 94, column: 14, scope: !93)
!99 = !DILocation(line: 94, column: 4, scope: !93)
!100 = !DILocation(line: 94, column: 11, scope: !93)
!101 = !DILocation(line: 94, column: 3, scope: !93)
!102 = !DILocation(line: 95, column: 9, scope: !26)
!103 = !DILocation(line: 95, column: 8, scope: !26)
!104 = !DILocation(line: 95, column: 6, scope: !26)
!105 = !DILocation(line: 97, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !26, file: !15, line: 97, column: 6)
!107 = !DILocation(line: 97, column: 11, scope: !106)
!108 = !DILocation(line: 97, column: 18, scope: !106)
!109 = !DILocation(line: 97, column: 6, scope: !26)
!110 = !DILocation(line: 98, column: 15, scope: !111)
!111 = distinct !DILexicalBlock(scope: !106, file: !15, line: 97, column: 23)
!112 = !DILocation(line: 98, column: 20, scope: !111)
!113 = !DILocation(line: 98, column: 3, scope: !111)
!114 = !DILocation(line: 98, column: 8, scope: !111)
!115 = !DILocation(line: 98, column: 12, scope: !111)
!116 = !DILocation(line: 99, column: 3, scope: !111)
!117 = distinct !{!117, !116}
!118 = !DILocation(line: 99, column: 18, scope: !119)
!119 = !DILexicalBlockFile(scope: !120, file: !15, discriminator: 1)
!120 = distinct !DILexicalBlock(scope: !111, file: !15, line: 99, column: 6)
!121 = !DILocation(line: 99, column: 23, scope: !119)
!122 = !DILocation(line: 99, column: 30, scope: !119)
!123 = !DILocation(line: 99, column: 35, scope: !119)
!124 = !DILocation(line: 99, column: 39, scope: !119)
!125 = !DILocation(line: 99, column: 44, scope: !119)
!126 = !DILocation(line: 99, column: 38, scope: !119)
!127 = !DILocation(line: 99, column: 54, scope: !119)
!128 = !DILocation(line: 99, column: 59, scope: !119)
!129 = !DILocation(line: 99, column: 53, scope: !119)
!130 = !DILocation(line: 99, column: 8, scope: !119)
!131 = !DILocation(line: 99, column: 66, scope: !119)
!132 = !DILocation(line: 100, column: 3, scope: !111)
!133 = !DILocation(line: 100, column: 8, scope: !111)
!134 = !DILocation(line: 100, column: 15, scope: !111)
!135 = !DILocation(line: 101, column: 2, scope: !111)
!136 = !DILocation(line: 103, column: 6, scope: !137)
!137 = distinct !DILexicalBlock(scope: !26, file: !15, line: 103, column: 6)
!138 = !DILocation(line: 103, column: 10, scope: !137)
!139 = !DILocation(line: 103, column: 6, scope: !26)
!140 = !DILocation(line: 104, column: 18, scope: !137)
!141 = !DILocation(line: 104, column: 23, scope: !137)
!142 = !DILocation(line: 104, column: 29, scope: !137)
!143 = !DILocation(line: 104, column: 3, scope: !137)
!144 = !DILocation(line: 105, column: 11, scope: !145)
!145 = distinct !DILexicalBlock(scope: !137, file: !15, line: 105, column: 11)
!146 = !DILocation(line: 105, column: 15, scope: !145)
!147 = !DILocation(line: 105, column: 11, scope: !137)
!148 = !DILocation(line: 107, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !15, line: 107, column: 7)
!150 = distinct !DILexicalBlock(scope: !145, file: !15, line: 105, column: 20)
!151 = !DILocation(line: 107, column: 12, scope: !149)
!152 = !DILocation(line: 107, column: 16, scope: !149)
!153 = !DILocation(line: 107, column: 7, scope: !150)
!154 = !DILocation(line: 108, column: 4, scope: !149)
!155 = !DILocation(line: 111, column: 20, scope: !156)
!156 = distinct !DILexicalBlock(scope: !150, file: !15, line: 111, column: 7)
!157 = !DILocation(line: 111, column: 7, scope: !156)
!158 = !DILocation(line: 111, column: 31, scope: !156)
!159 = !DILocation(line: 111, column: 7, scope: !150)
!160 = !DILocation(line: 115, column: 19, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !15, line: 111, column: 39)
!162 = !DILocation(line: 115, column: 4, scope: !161)
!163 = !DILocation(line: 116, column: 3, scope: !161)
!164 = !DILocation(line: 117, column: 2, scope: !150)
!165 = !DILocation(line: 119, column: 23, scope: !26)
!166 = !DILocation(line: 119, column: 8, scope: !26)
!167 = !DILocation(line: 119, column: 6, scope: !26)
!168 = !DILocation(line: 120, column: 12, scope: !26)
!169 = !DILocation(line: 120, column: 17, scope: !26)
!170 = !DILocation(line: 120, column: 3, scope: !26)
!171 = !DILocation(line: 120, column: 10, scope: !26)
!172 = !DILocation(line: 121, column: 9, scope: !26)
!173 = !DILocation(line: 121, column: 2, scope: !26)
!174 = !DILocation(line: 122, column: 1, scope: !26)
!175 = distinct !DISubprogram(name: "linebuf_append", scope: !15, file: !15, line: 42, type: !176, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !11, !9, !18}
!178 = !DILocalVariable(name: "rec", arg: 1, scope: !175, file: !15, line: 42, type: !11)
!179 = !DILocation(line: 42, column: 41, scope: !175)
!180 = !DILocalVariable(name: "data", arg: 2, scope: !175, file: !15, line: 42, type: !9)
!181 = !DILocation(line: 42, column: 58, scope: !175)
!182 = !DILocalVariable(name: "len", arg: 3, scope: !175, file: !15, line: 42, type: !18)
!183 = !DILocation(line: 42, column: 68, scope: !175)
!184 = !DILocation(line: 44, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !175, file: !15, line: 44, column: 6)
!186 = !DILocation(line: 44, column: 11, scope: !185)
!187 = !DILocation(line: 44, column: 15, scope: !185)
!188 = !DILocation(line: 44, column: 14, scope: !185)
!189 = !DILocation(line: 44, column: 21, scope: !185)
!190 = !DILocation(line: 44, column: 26, scope: !185)
!191 = !DILocation(line: 44, column: 19, scope: !185)
!192 = !DILocation(line: 44, column: 6, scope: !175)
!193 = !DILocation(line: 45, column: 30, scope: !194)
!194 = distinct !DILexicalBlock(scope: !185, file: !15, line: 44, column: 33)
!195 = !DILocation(line: 45, column: 35, scope: !194)
!196 = !DILocation(line: 45, column: 39, scope: !194)
!197 = !DILocation(line: 45, column: 38, scope: !194)
!198 = !DILocation(line: 45, column: 16, scope: !194)
!199 = !DILocation(line: 45, column: 3, scope: !194)
!200 = !DILocation(line: 45, column: 8, scope: !194)
!201 = !DILocation(line: 45, column: 14, scope: !194)
!202 = !DILocation(line: 46, column: 24, scope: !194)
!203 = !DILocation(line: 46, column: 29, scope: !194)
!204 = !DILocation(line: 46, column: 34, scope: !194)
!205 = !DILocation(line: 46, column: 39, scope: !194)
!206 = !DILocation(line: 46, column: 14, scope: !194)
!207 = !DILocation(line: 46, column: 3, scope: !194)
!208 = !DILocation(line: 46, column: 8, scope: !194)
!209 = !DILocation(line: 46, column: 12, scope: !194)
!210 = !DILocation(line: 47, column: 2, scope: !194)
!211 = !DILocation(line: 49, column: 9, scope: !175)
!212 = !DILocation(line: 49, column: 14, scope: !175)
!213 = !DILocation(line: 49, column: 20, scope: !175)
!214 = !DILocation(line: 49, column: 25, scope: !175)
!215 = !DILocation(line: 49, column: 18, scope: !175)
!216 = !DILocation(line: 49, column: 30, scope: !175)
!217 = !DILocation(line: 49, column: 36, scope: !175)
!218 = !DILocation(line: 49, column: 2, scope: !175)
!219 = !DILocation(line: 50, column: 14, scope: !175)
!220 = !DILocation(line: 50, column: 2, scope: !175)
!221 = !DILocation(line: 50, column: 7, scope: !175)
!222 = !DILocation(line: 50, column: 11, scope: !175)
!223 = !DILocation(line: 51, column: 1, scope: !175)
!224 = distinct !DISubprogram(name: "linebuf_find", scope: !15, file: !15, line: 53, type: !225, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!225 = !DISubroutineType(types: !226)
!226 = !{!22, !11, !8}
!227 = !DILocalVariable(name: "rec", arg: 1, scope: !224, file: !15, line: 53, type: !11)
!228 = !DILocation(line: 53, column: 40, scope: !224)
!229 = !DILocalVariable(name: "chr", arg: 2, scope: !224, file: !15, line: 53, type: !8)
!230 = !DILocation(line: 53, column: 50, scope: !224)
!231 = !DILocation(line: 55, column: 16, scope: !224)
!232 = !DILocation(line: 55, column: 21, scope: !224)
!233 = !DILocation(line: 55, column: 26, scope: !224)
!234 = !DILocation(line: 55, column: 31, scope: !224)
!235 = !DILocation(line: 55, column: 36, scope: !224)
!236 = !DILocation(line: 55, column: 9, scope: !224)
!237 = !DILocation(line: 55, column: 2, scope: !224)
!238 = distinct !DISubprogram(name: "remove_newline", scope: !15, file: !15, line: 58, type: !239, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!239 = !DISubroutineType(types: !240)
!240 = !{!18, !11}
!241 = !DILocalVariable(name: "rec", arg: 1, scope: !238, file: !15, line: 58, type: !11)
!242 = !DILocation(line: 58, column: 40, scope: !238)
!243 = !DILocalVariable(name: "ptr", scope: !238, file: !15, line: 60, type: !22)
!244 = !DILocation(line: 60, column: 8, scope: !238)
!245 = !DILocation(line: 62, column: 21, scope: !238)
!246 = !DILocation(line: 62, column: 8, scope: !238)
!247 = !DILocation(line: 62, column: 6, scope: !238)
!248 = !DILocation(line: 63, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !238, file: !15, line: 63, column: 6)
!250 = !DILocation(line: 63, column: 10, scope: !249)
!251 = !DILocation(line: 63, column: 6, scope: !238)
!252 = !DILocation(line: 65, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !15, line: 65, column: 7)
!254 = distinct !DILexicalBlock(scope: !249, file: !15, line: 63, column: 18)
!255 = !DILocation(line: 65, column: 12, scope: !253)
!256 = !DILocation(line: 65, column: 16, scope: !253)
!257 = !DILocation(line: 65, column: 7, scope: !254)
!258 = !DILocation(line: 66, column: 4, scope: !253)
!259 = !DILocation(line: 69, column: 32, scope: !254)
!260 = !DILocation(line: 69, column: 17, scope: !254)
!261 = !DILocation(line: 70, column: 9, scope: !254)
!262 = !DILocation(line: 70, column: 14, scope: !254)
!263 = !DILocation(line: 70, column: 18, scope: !254)
!264 = !DILocation(line: 70, column: 23, scope: !254)
!265 = !DILocation(line: 70, column: 17, scope: !254)
!266 = !DILocation(line: 70, column: 26, scope: !254)
!267 = !DILocation(line: 70, column: 7, scope: !254)
!268 = !DILocation(line: 71, column: 2, scope: !254)
!269 = !DILocation(line: 73, column: 23, scope: !238)
!270 = !DILocation(line: 73, column: 27, scope: !238)
!271 = !DILocation(line: 73, column: 32, scope: !238)
!272 = !DILocation(line: 73, column: 26, scope: !238)
!273 = !DILocation(line: 73, column: 16, scope: !238)
!274 = !DILocation(line: 73, column: 36, scope: !238)
!275 = !DILocation(line: 73, column: 2, scope: !238)
!276 = !DILocation(line: 73, column: 7, scope: !238)
!277 = !DILocation(line: 73, column: 14, scope: !238)
!278 = !DILocation(line: 74, column: 6, scope: !279)
!279 = distinct !DILexicalBlock(scope: !238, file: !15, line: 74, column: 6)
!280 = !DILocation(line: 74, column: 13, scope: !279)
!281 = !DILocation(line: 74, column: 18, scope: !279)
!282 = !DILocation(line: 74, column: 10, scope: !279)
!283 = !DILocation(line: 74, column: 22, scope: !279)
!284 = !DILocation(line: 74, column: 25, scope: !285)
!285 = !DILexicalBlockFile(scope: !279, file: !15, discriminator: 1)
!286 = !DILocation(line: 74, column: 33, scope: !285)
!287 = !DILocation(line: 74, column: 6, scope: !285)
!288 = !DILocation(line: 76, column: 6, scope: !289)
!289 = distinct !DILexicalBlock(scope: !279, file: !15, line: 74, column: 42)
!290 = !DILocation(line: 77, column: 2, scope: !289)
!291 = !DILocation(line: 79, column: 3, scope: !238)
!292 = !DILocation(line: 79, column: 7, scope: !238)
!293 = !DILocation(line: 80, column: 2, scope: !238)
!294 = !DILocation(line: 81, column: 1, scope: !238)
!295 = distinct !DISubprogram(name: "line_split_free", scope: !15, file: !15, line: 124, type: !296, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !11}
!298 = !DILocalVariable(name: "buffer", arg: 1, scope: !295, file: !15, line: 124, type: !11)
!299 = !DILocation(line: 124, column: 35, scope: !295)
!300 = !DILocation(line: 126, column: 6, scope: !301)
!301 = distinct !DILexicalBlock(scope: !295, file: !15, line: 126, column: 6)
!302 = !DILocation(line: 126, column: 13, scope: !301)
!303 = !DILocation(line: 126, column: 6, scope: !295)
!304 = !DILocation(line: 127, column: 7, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !15, line: 127, column: 7)
!306 = distinct !DILexicalBlock(scope: !301, file: !15, line: 126, column: 21)
!307 = !DILocation(line: 127, column: 15, scope: !305)
!308 = !DILocation(line: 127, column: 19, scope: !305)
!309 = !DILocation(line: 127, column: 7, scope: !306)
!310 = !DILocation(line: 127, column: 34, scope: !311)
!311 = !DILexicalBlockFile(scope: !305, file: !15, discriminator: 1)
!312 = !DILocation(line: 127, column: 42, scope: !311)
!313 = !DILocation(line: 127, column: 27, scope: !311)
!314 = !DILocation(line: 128, column: 10, scope: !306)
!315 = !DILocation(line: 128, column: 3, scope: !306)
!316 = !DILocation(line: 129, column: 2, scope: !306)
!317 = !DILocation(line: 130, column: 1, scope: !295)
!318 = distinct !DISubprogram(name: "line_split_is_empty", scope: !15, file: !15, line: 133, type: !239, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!319 = !DILocalVariable(name: "buffer", arg: 1, scope: !318, file: !15, line: 133, type: !11)
!320 = !DILocation(line: 133, column: 38, scope: !318)
!321 = !DILocation(line: 135, column: 9, scope: !318)
!322 = !DILocation(line: 135, column: 17, scope: !318)
!323 = !DILocation(line: 135, column: 21, scope: !318)
!324 = !DILocation(line: 135, column: 2, scope: !318)
