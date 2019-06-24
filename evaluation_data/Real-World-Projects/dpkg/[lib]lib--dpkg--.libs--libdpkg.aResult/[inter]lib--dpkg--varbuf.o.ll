; ModuleID = './[inter]lib--dpkg--varbuf.o.i'
source_filename = "./[inter]lib--dpkg--varbuf.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.varbuf = type { i64, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.varbuf_state = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"error formatting string into varbuf variable\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"varbuf.c\00", align 1
@__func__.varbuf_grow = private unnamed_addr constant [12 x i8] c"varbuf_grow\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"varbuf used(%zu) > size(%zu)\00", align 1
@__func__.varbuf_trunc = private unnamed_addr constant [13 x i8] c"varbuf_trunc\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"varbuf new_used(%zu) > size(%zu)\00", align 1

; Function Attrs: nounwind uwtable
define void @varbuf_add_char(%struct.varbuf*, i32) #0 !dbg !6 {
  %3 = alloca %struct.varbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.varbuf* %0, %struct.varbuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %3, metadata !23, metadata !24), !dbg !25
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !26, metadata !24), !dbg !27
  %5 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !28
  call void @varbuf_grow(%struct.varbuf* %5, i64 1), !dbg !29
  %6 = load i32, i32* %4, align 4, !dbg !30
  %7 = trunc i32 %6 to i8, !dbg !30
  %8 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !31
  %9 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 0, !dbg !32
  %10 = load i64, i64* %9, align 8, !dbg !33
  %11 = add i64 %10, 1, !dbg !33
  store i64 %11, i64* %9, align 8, !dbg !33
  %12 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !34
  %13 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 2, !dbg !35
  %14 = load i8*, i8** %13, align 8, !dbg !35
  %15 = getelementptr inbounds i8, i8* %14, i64 %10, !dbg !34
  store i8 %7, i8* %15, align 1, !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @varbuf_grow(%struct.varbuf*, i64) #0 !dbg !38 {
  %3 = alloca %struct.varbuf*, align 8
  %4 = alloca i64, align 8
  store %struct.varbuf* %0, %struct.varbuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %3, metadata !41, metadata !24), !dbg !42
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !43, metadata !24), !dbg !44
  %5 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !45
  %6 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %5, i32 0, i32 1, !dbg !47
  %7 = load i64, i64* %6, align 8, !dbg !47
  %8 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !48
  %9 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 0, !dbg !49
  %10 = load i64, i64* %9, align 8, !dbg !49
  %11 = icmp ult i64 %7, %10, !dbg !50
  br i1 %11, label %12, label %19, !dbg !51

; <label>:12:                                     ; preds = %2
  %13 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !52
  %14 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %13, i32 0, i32 0, !dbg !53
  %15 = load i64, i64* %14, align 8, !dbg !53
  %16 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !54
  %17 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %16, i32 0, i32 1, !dbg !55
  %18 = load i64, i64* %17, align 8, !dbg !55
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.varbuf_grow, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i64 %15, i64 %18) #7, !dbg !56
  unreachable, !dbg !56

; <label>:19:                                     ; preds = %2
  %20 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !57
  %21 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %20, i32 0, i32 1, !dbg !59
  %22 = load i64, i64* %21, align 8, !dbg !59
  %23 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !60
  %24 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %23, i32 0, i32 0, !dbg !61
  %25 = load i64, i64* %24, align 8, !dbg !61
  %26 = sub i64 %22, %25, !dbg !62
  %27 = load i64, i64* %4, align 8, !dbg !63
  %28 = icmp uge i64 %26, %27, !dbg !64
  br i1 %28, label %29, label %30, !dbg !65

; <label>:29:                                     ; preds = %19
  br label %48, !dbg !66

; <label>:30:                                     ; preds = %19
  %31 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !67
  %32 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %31, i32 0, i32 1, !dbg !68
  %33 = load i64, i64* %32, align 8, !dbg !68
  %34 = load i64, i64* %4, align 8, !dbg !69
  %35 = add i64 %33, %34, !dbg !70
  %36 = mul i64 %35, 2, !dbg !71
  %37 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !72
  %38 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %37, i32 0, i32 1, !dbg !73
  store i64 %36, i64* %38, align 8, !dbg !74
  %39 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !75
  %40 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %39, i32 0, i32 2, !dbg !76
  %41 = load i8*, i8** %40, align 8, !dbg !76
  %42 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !77
  %43 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %42, i32 0, i32 1, !dbg !78
  %44 = load i64, i64* %43, align 8, !dbg !78
  %45 = call i8* @m_realloc(i8* %41, i64 %44), !dbg !79
  %46 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !80
  %47 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %46, i32 0, i32 2, !dbg !81
  store i8* %45, i8** %47, align 8, !dbg !82
  br label %48, !dbg !83

; <label>:48:                                     ; preds = %30, %29
  ret void, !dbg !84
}

; Function Attrs: nounwind uwtable
define void @varbuf_dup_char(%struct.varbuf*, i32, i64) #0 !dbg !86 {
  %4 = alloca %struct.varbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.varbuf* %0, %struct.varbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %4, metadata !89, metadata !24), !dbg !90
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !91, metadata !24), !dbg !92
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !93, metadata !24), !dbg !94
  %7 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !95
  %8 = load i64, i64* %6, align 8, !dbg !96
  call void @varbuf_grow(%struct.varbuf* %7, i64 %8), !dbg !97
  %9 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !98
  %10 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !99
  %11 = load i8*, i8** %10, align 8, !dbg !99
  %12 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !100
  %13 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 0, !dbg !101
  %14 = load i64, i64* %13, align 8, !dbg !101
  %15 = getelementptr inbounds i8, i8* %11, i64 %14, !dbg !102
  %16 = load i32, i32* %5, align 4, !dbg !103
  %17 = trunc i32 %16 to i8, !dbg !104
  %18 = load i64, i64* %6, align 8, !dbg !105
  call void @llvm.memset.p0i8.i64(i8* %15, i8 %17, i64 %18, i32 1, i1 false), !dbg !104
  %19 = load i64, i64* %6, align 8, !dbg !106
  %20 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !107
  %21 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %20, i32 0, i32 0, !dbg !108
  %22 = load i64, i64* %21, align 8, !dbg !109
  %23 = add i64 %22, %19, !dbg !109
  store i64 %23, i64* %21, align 8, !dbg !109
  ret void, !dbg !110
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @varbuf_map_char(%struct.varbuf*, i32, i32) #0 !dbg !111 {
  %4 = alloca %struct.varbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.varbuf* %0, %struct.varbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %4, metadata !114, metadata !24), !dbg !115
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !116, metadata !24), !dbg !117
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !118, metadata !24), !dbg !119
  call void @llvm.dbg.declare(metadata i64* %7, metadata !120, metadata !24), !dbg !121
  store i64 0, i64* %7, align 8, !dbg !122
  br label %8, !dbg !124

; <label>:8:                                      ; preds = %33, %3
  %9 = load i64, i64* %7, align 8, !dbg !125
  %10 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !128
  %11 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 0, !dbg !129
  %12 = load i64, i64* %11, align 8, !dbg !129
  %13 = icmp ult i64 %9, %12, !dbg !130
  br i1 %13, label %14, label %36, !dbg !131

; <label>:14:                                     ; preds = %8
  %15 = load i64, i64* %7, align 8, !dbg !132
  %16 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !134
  %17 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %16, i32 0, i32 2, !dbg !135
  %18 = load i8*, i8** %17, align 8, !dbg !135
  %19 = getelementptr inbounds i8, i8* %18, i64 %15, !dbg !134
  %20 = load i8, i8* %19, align 1, !dbg !134
  %21 = sext i8 %20 to i32, !dbg !134
  %22 = load i32, i32* %5, align 4, !dbg !136
  %23 = icmp eq i32 %21, %22, !dbg !137
  br i1 %23, label %24, label %32, !dbg !138

; <label>:24:                                     ; preds = %14
  %25 = load i32, i32* %6, align 4, !dbg !139
  %26 = trunc i32 %25 to i8, !dbg !139
  %27 = load i64, i64* %7, align 8, !dbg !140
  %28 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !141
  %29 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %28, i32 0, i32 2, !dbg !142
  %30 = load i8*, i8** %29, align 8, !dbg !142
  %31 = getelementptr inbounds i8, i8* %30, i64 %27, !dbg !141
  store i8 %26, i8* %31, align 1, !dbg !143
  br label %32, !dbg !141

; <label>:32:                                     ; preds = %24, %14
  br label %33, !dbg !144

; <label>:33:                                     ; preds = %32
  %34 = load i64, i64* %7, align 8, !dbg !146
  %35 = add i64 %34, 1, !dbg !146
  store i64 %35, i64* %7, align 8, !dbg !146
  br label %8, !dbg !148, !llvm.loop !149

; <label>:36:                                     ; preds = %8
  ret void, !dbg !151
}

; Function Attrs: nounwind uwtable
define i32 @varbuf_printf(%struct.varbuf*, i8*, ...) #0 !dbg !152 {
  %3 = alloca %struct.varbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.varbuf* %0, %struct.varbuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %3, metadata !157, metadata !24), !dbg !158
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !159, metadata !24), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %5, metadata !161, metadata !24), !dbg !162
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !163, metadata !24), !dbg !180
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !181
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !181
  call void @llvm.va_start(i8* %8), !dbg !181
  %9 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !182
  %10 = load i8*, i8** %4, align 8, !dbg !183
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !184
  %12 = call i32 @varbuf_vprintf(%struct.varbuf* %9, i8* %10, %struct.__va_list_tag* %11), !dbg !185
  store i32 %12, i32* %5, align 4, !dbg !186
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !187
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !187
  call void @llvm.va_end(i8* %14), !dbg !187
  %15 = load i32, i32* %5, align 4, !dbg !188
  ret i32 %15, !dbg !189
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @varbuf_vprintf(%struct.varbuf*, i8*, %struct.__va_list_tag*) #0 !dbg !190 {
  %4 = alloca %struct.varbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.varbuf* %0, %struct.varbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %4, metadata !194, metadata !24), !dbg !195
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !196, metadata !24), !dbg !197
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !198, metadata !24), !dbg !199
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !200, metadata !24), !dbg !201
  call void @llvm.dbg.declare(metadata i32* %8, metadata !202, metadata !24), !dbg !203
  call void @llvm.dbg.declare(metadata i32* %9, metadata !204, metadata !24), !dbg !205
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !206
  %11 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !206
  %12 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !206
  %13 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !206
  call void @llvm.va_copy(i8* %12, i8* %13), !dbg !206
  %14 = load i8*, i8** %5, align 8, !dbg !207
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !208
  %16 = call i32 @vsnprintf(i8* null, i64 0, i8* %14, %struct.__va_list_tag* %15) #3, !dbg !209
  store i32 %16, i32* %8, align 4, !dbg !210
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !211
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !211
  call void @llvm.va_end(i8* %18), !dbg !211
  %19 = load i32, i32* %8, align 4, !dbg !212
  %20 = icmp slt i32 %19, 0, !dbg !214
  br i1 %20, label %21, label %23, !dbg !215

; <label>:21:                                     ; preds = %3
  %22 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0)) #3, !dbg !216
  call void (i8*, ...) @ohshite(i8* %22) #7, !dbg !217
  unreachable, !dbg !219

; <label>:23:                                     ; preds = %3
  %24 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !220
  %25 = load i32, i32* %8, align 4, !dbg !221
  %26 = add nsw i32 %25, 1, !dbg !222
  %27 = sext i32 %26 to i64, !dbg !221
  call void @varbuf_grow(%struct.varbuf* %24, i64 %27), !dbg !223
  %28 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !224
  %29 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %28, i32 0, i32 2, !dbg !225
  %30 = load i8*, i8** %29, align 8, !dbg !225
  %31 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !226
  %32 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %31, i32 0, i32 0, !dbg !227
  %33 = load i64, i64* %32, align 8, !dbg !227
  %34 = getelementptr inbounds i8, i8* %30, i64 %33, !dbg !228
  %35 = load i32, i32* %8, align 4, !dbg !229
  %36 = add nsw i32 %35, 1, !dbg !230
  %37 = sext i32 %36 to i64, !dbg !229
  %38 = load i8*, i8** %5, align 8, !dbg !231
  %39 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !232
  %40 = call i32 @vsnprintf(i8* %34, i64 %37, i8* %38, %struct.__va_list_tag* %39) #3, !dbg !233
  store i32 %40, i32* %9, align 4, !dbg !234
  %41 = load i32, i32* %9, align 4, !dbg !235
  %42 = icmp slt i32 %41, 0, !dbg !237
  br i1 %42, label %43, label %45, !dbg !238

; <label>:43:                                     ; preds = %23
  %44 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0)) #3, !dbg !239
  call void (i8*, ...) @ohshite(i8* %44) #7, !dbg !240
  unreachable, !dbg !242

; <label>:45:                                     ; preds = %23
  %46 = load i32, i32* %9, align 4, !dbg !243
  %47 = sext i32 %46 to i64, !dbg !243
  %48 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !244
  %49 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %48, i32 0, i32 0, !dbg !245
  %50 = load i64, i64* %49, align 8, !dbg !246
  %51 = add i64 %50, %47, !dbg !246
  store i64 %51, i64* %49, align 8, !dbg !246
  %52 = load i32, i32* %9, align 4, !dbg !247
  ret i32 %52, !dbg !248
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #4

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #0 !dbg !249 {
  %4 = alloca %struct.varbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.varbuf* %0, %struct.varbuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %4, metadata !254, metadata !24), !dbg !255
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !256, metadata !24), !dbg !257
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !258, metadata !24), !dbg !259
  %7 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !260
  %8 = load i64, i64* %6, align 8, !dbg !261
  call void @varbuf_grow(%struct.varbuf* %7, i64 %8), !dbg !262
  %9 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !263
  %10 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 2, !dbg !264
  %11 = load i8*, i8** %10, align 8, !dbg !264
  %12 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !265
  %13 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 0, !dbg !266
  %14 = load i64, i64* %13, align 8, !dbg !266
  %15 = getelementptr inbounds i8, i8* %11, i64 %14, !dbg !267
  %16 = load i8*, i8** %5, align 8, !dbg !268
  %17 = load i64, i64* %6, align 8, !dbg !269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 %17, i32 1, i1 false), !dbg !270
  %18 = load i64, i64* %6, align 8, !dbg !271
  %19 = load %struct.varbuf*, %struct.varbuf** %4, align 8, !dbg !272
  %20 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %19, i32 0, i32 0, !dbg !273
  %21 = load i64, i64* %20, align 8, !dbg !274
  %22 = add i64 %21, %18, !dbg !274
  store i64 %22, i64* %20, align 8, !dbg !274
  ret void, !dbg !275
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @varbuf_end_str(%struct.varbuf*) #0 !dbg !276 {
  %2 = alloca %struct.varbuf*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %2, metadata !279, metadata !24), !dbg !280
  %3 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !281
  call void @varbuf_grow(%struct.varbuf* %3, i64 1), !dbg !282
  %4 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !283
  %5 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %4, i32 0, i32 0, !dbg !284
  %6 = load i64, i64* %5, align 8, !dbg !284
  %7 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !285
  %8 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %7, i32 0, i32 2, !dbg !286
  %9 = load i8*, i8** %8, align 8, !dbg !286
  %10 = getelementptr inbounds i8, i8* %9, i64 %6, !dbg !285
  store i8 0, i8* %10, align 1, !dbg !287
  ret void, !dbg !288
}

; Function Attrs: nounwind uwtable
define i8* @varbuf_get_str(%struct.varbuf*) #0 !dbg !289 {
  %2 = alloca %struct.varbuf*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %2, metadata !292, metadata !24), !dbg !293
  %3 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !294
  call void @varbuf_end_str(%struct.varbuf* %3), !dbg !295
  %4 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !296
  %5 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %4, i32 0, i32 2, !dbg !297
  %6 = load i8*, i8** %5, align 8, !dbg !297
  ret i8* %6, !dbg !298
}

; Function Attrs: nounwind uwtable
define %struct.varbuf* @varbuf_new(i64) #0 !dbg !299 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.varbuf*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !302, metadata !24), !dbg !303
  call void @llvm.dbg.declare(metadata %struct.varbuf** %3, metadata !304, metadata !24), !dbg !305
  %4 = call i8* @m_malloc(i64 24), !dbg !306
  %5 = bitcast i8* %4 to %struct.varbuf*, !dbg !306
  store %struct.varbuf* %5, %struct.varbuf** %3, align 8, !dbg !307
  %6 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !308
  %7 = load i64, i64* %2, align 8, !dbg !309
  call void @varbuf_init(%struct.varbuf* %6, i64 %7), !dbg !310
  %8 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !311
  ret %struct.varbuf* %8, !dbg !312
}

declare i8* @m_malloc(i64) #6

; Function Attrs: nounwind uwtable
define void @varbuf_init(%struct.varbuf*, i64) #0 !dbg !313 {
  %3 = alloca %struct.varbuf*, align 8
  %4 = alloca i64, align 8
  store %struct.varbuf* %0, %struct.varbuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %3, metadata !314, metadata !24), !dbg !315
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !316, metadata !24), !dbg !317
  %5 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !318
  %6 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %5, i32 0, i32 0, !dbg !319
  store i64 0, i64* %6, align 8, !dbg !320
  %7 = load i64, i64* %4, align 8, !dbg !321
  %8 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !322
  %9 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 1, !dbg !323
  store i64 %7, i64* %9, align 8, !dbg !324
  %10 = load i64, i64* %4, align 8, !dbg !325
  %11 = icmp ne i64 %10, 0, !dbg !325
  br i1 %11, label %12, label %17, !dbg !327

; <label>:12:                                     ; preds = %2
  %13 = load i64, i64* %4, align 8, !dbg !328
  %14 = call i8* @m_malloc(i64 %13), !dbg !329
  %15 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !330
  %16 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %15, i32 0, i32 2, !dbg !331
  store i8* %14, i8** %16, align 8, !dbg !332
  br label %20, !dbg !330

; <label>:17:                                     ; preds = %2
  %18 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !333
  %19 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %18, i32 0, i32 2, !dbg !334
  store i8* null, i8** %19, align 8, !dbg !335
  br label %20

; <label>:20:                                     ; preds = %17, %12
  ret void, !dbg !336
}

; Function Attrs: nounwind uwtable
define void @varbuf_reset(%struct.varbuf*) #0 !dbg !337 {
  %2 = alloca %struct.varbuf*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %2, metadata !338, metadata !24), !dbg !339
  %3 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !340
  %4 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 0, !dbg !341
  store i64 0, i64* %4, align 8, !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #5

declare i8* @m_realloc(i8*, i64) #6

; Function Attrs: nounwind uwtable
define void @varbuf_trunc(%struct.varbuf*, i64) #0 !dbg !344 {
  %3 = alloca %struct.varbuf*, align 8
  %4 = alloca i64, align 8
  store %struct.varbuf* %0, %struct.varbuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %3, metadata !345, metadata !24), !dbg !346
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !347, metadata !24), !dbg !348
  %5 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !349
  %6 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %5, i32 0, i32 1, !dbg !351
  %7 = load i64, i64* %6, align 8, !dbg !351
  %8 = load i64, i64* %4, align 8, !dbg !352
  %9 = icmp ult i64 %7, %8, !dbg !353
  br i1 %9, label %10, label %15, !dbg !354

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %4, align 8, !dbg !355
  %12 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !356
  %13 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %12, i32 0, i32 1, !dbg !357
  %14 = load i64, i64* %13, align 8, !dbg !357
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 166, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.varbuf_trunc, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i64 %11, i64 %14) #7, !dbg !358
  unreachable, !dbg !358

; <label>:15:                                     ; preds = %2
  %16 = load i64, i64* %4, align 8, !dbg !359
  %17 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !360
  %18 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %17, i32 0, i32 0, !dbg !361
  store i64 %16, i64* %18, align 8, !dbg !362
  ret void, !dbg !363
}

; Function Attrs: nounwind uwtable
define void @varbuf_snapshot(%struct.varbuf*, %struct.varbuf_state*) #0 !dbg !364 {
  %3 = alloca %struct.varbuf*, align 8
  %4 = alloca %struct.varbuf_state*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %3, metadata !371, metadata !24), !dbg !372
  store %struct.varbuf_state* %1, %struct.varbuf_state** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf_state** %4, metadata !373, metadata !24), !dbg !374
  %5 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !375
  %6 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %5, i32 0, i32 0, !dbg !376
  %7 = load i64, i64* %6, align 8, !dbg !376
  %8 = load %struct.varbuf_state*, %struct.varbuf_state** %4, align 8, !dbg !377
  %9 = getelementptr inbounds %struct.varbuf_state, %struct.varbuf_state* %8, i32 0, i32 0, !dbg !378
  store i64 %7, i64* %9, align 8, !dbg !379
  ret void, !dbg !380
}

; Function Attrs: nounwind uwtable
define void @varbuf_rollback(%struct.varbuf*, %struct.varbuf_state*) #0 !dbg !381 {
  %3 = alloca %struct.varbuf*, align 8
  %4 = alloca %struct.varbuf_state*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %3, metadata !382, metadata !24), !dbg !383
  store %struct.varbuf_state* %1, %struct.varbuf_state** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf_state** %4, metadata !384, metadata !24), !dbg !385
  %5 = load %struct.varbuf*, %struct.varbuf** %3, align 8, !dbg !386
  %6 = load %struct.varbuf_state*, %struct.varbuf_state** %4, align 8, !dbg !387
  %7 = getelementptr inbounds %struct.varbuf_state, %struct.varbuf_state* %6, i32 0, i32 0, !dbg !388
  %8 = load i64, i64* %7, align 8, !dbg !388
  call void @varbuf_trunc(%struct.varbuf* %5, i64 %8), !dbg !389
  ret void, !dbg !390
}

; Function Attrs: nounwind uwtable
define i8* @varbuf_detach(%struct.varbuf*) #0 !dbg !391 {
  %2 = alloca %struct.varbuf*, align 8
  %3 = alloca i8*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %2, metadata !394, metadata !24), !dbg !395
  call void @llvm.dbg.declare(metadata i8** %3, metadata !396, metadata !24), !dbg !397
  %4 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !398
  %5 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %4, i32 0, i32 2, !dbg !399
  %6 = load i8*, i8** %5, align 8, !dbg !399
  store i8* %6, i8** %3, align 8, !dbg !397
  %7 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !400
  %8 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %7, i32 0, i32 2, !dbg !401
  store i8* null, i8** %8, align 8, !dbg !402
  %9 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !403
  %10 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %9, i32 0, i32 1, !dbg !404
  store i64 0, i64* %10, align 8, !dbg !405
  %11 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !406
  %12 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %11, i32 0, i32 0, !dbg !407
  store i64 0, i64* %12, align 8, !dbg !408
  %13 = load i8*, i8** %3, align 8, !dbg !409
  ret i8* %13, !dbg !410
}

; Function Attrs: nounwind uwtable
define void @varbuf_destroy(%struct.varbuf*) #0 !dbg !411 {
  %2 = alloca %struct.varbuf*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %2, metadata !412, metadata !24), !dbg !413
  %3 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !414
  %4 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 2, !dbg !415
  %5 = load i8*, i8** %4, align 8, !dbg !415
  call void @free(i8* %5) #3, !dbg !416
  %6 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !417
  %7 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %6, i32 0, i32 2, !dbg !418
  store i8* null, i8** %7, align 8, !dbg !419
  %8 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !420
  %9 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %8, i32 0, i32 1, !dbg !421
  store i64 0, i64* %9, align 8, !dbg !422
  %10 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !423
  %11 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 0, !dbg !424
  store i64 0, i64* %11, align 8, !dbg !425
  ret void, !dbg !426
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @varbuf_free(%struct.varbuf*) #0 !dbg !427 {
  %2 = alloca %struct.varbuf*, align 8
  store %struct.varbuf* %0, %struct.varbuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.varbuf** %2, metadata !428, metadata !24), !dbg !429
  %3 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !430
  %4 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 2, !dbg !431
  %5 = load i8*, i8** %4, align 8, !dbg !431
  call void @free(i8* %5) #3, !dbg !432
  %6 = load %struct.varbuf*, %struct.varbuf** %2, align 8, !dbg !433
  %7 = bitcast %struct.varbuf* %6 to i8*, !dbg !433
  call void @free(i8* %7) #3, !dbg !434
  ret void, !dbg !435
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--varbuf.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "varbuf_add_char", scope: !7, file: !7, line: 34, type: !8, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "varbuf.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !22}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !12, line: 55, size: 192, align: 64, elements: !13)
!12 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!13 = !{!14, !18, !19}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !11, file: !12, line: 56, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 216, baseType: !17)
!16 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!17 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !11, file: !12, line: 56, baseType: !15, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !11, file: !12, line: 57, baseType: !20, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!23 = !DILocalVariable(name: "v", arg: 1, scope: !6, file: !7, line: 34, type: !10)
!24 = !DIExpression()
!25 = !DILocation(line: 34, column: 32, scope: !6)
!26 = !DILocalVariable(name: "c", arg: 2, scope: !6, file: !7, line: 34, type: !22)
!27 = !DILocation(line: 34, column: 39, scope: !6)
!28 = !DILocation(line: 36, column: 15, scope: !6)
!29 = !DILocation(line: 36, column: 3, scope: !6)
!30 = !DILocation(line: 37, column: 22, scope: !6)
!31 = !DILocation(line: 37, column: 10, scope: !6)
!32 = !DILocation(line: 37, column: 13, scope: !6)
!33 = !DILocation(line: 37, column: 17, scope: !6)
!34 = !DILocation(line: 37, column: 3, scope: !6)
!35 = !DILocation(line: 37, column: 6, scope: !6)
!36 = !DILocation(line: 37, column: 20, scope: !6)
!37 = !DILocation(line: 38, column: 1, scope: !6)
!38 = distinct !DISubprogram(name: "varbuf_grow", scope: !7, file: !7, line: 147, type: !39, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !10, !15}
!41 = !DILocalVariable(name: "v", arg: 1, scope: !38, file: !7, line: 147, type: !10)
!42 = !DILocation(line: 147, column: 28, scope: !38)
!43 = !DILocalVariable(name: "need_size", arg: 2, scope: !38, file: !7, line: 147, type: !15)
!44 = !DILocation(line: 147, column: 38, scope: !38)
!45 = !DILocation(line: 150, column: 7, scope: !46)
!46 = distinct !DILexicalBlock(scope: !38, file: !7, line: 150, column: 7)
!47 = !DILocation(line: 150, column: 10, scope: !46)
!48 = !DILocation(line: 150, column: 17, scope: !46)
!49 = !DILocation(line: 150, column: 20, scope: !46)
!50 = !DILocation(line: 150, column: 15, scope: !46)
!51 = !DILocation(line: 150, column: 7, scope: !38)
!52 = !DILocation(line: 151, column: 77, scope: !46)
!53 = !DILocation(line: 151, column: 80, scope: !46)
!54 = !DILocation(line: 151, column: 86, scope: !46)
!55 = !DILocation(line: 151, column: 89, scope: !46)
!56 = !DILocation(line: 151, column: 5, scope: !46)
!57 = !DILocation(line: 154, column: 8, scope: !58)
!58 = distinct !DILexicalBlock(scope: !38, file: !7, line: 154, column: 7)
!59 = !DILocation(line: 154, column: 11, scope: !58)
!60 = !DILocation(line: 154, column: 18, scope: !58)
!61 = !DILocation(line: 154, column: 21, scope: !58)
!62 = !DILocation(line: 154, column: 16, scope: !58)
!63 = !DILocation(line: 154, column: 30, scope: !58)
!64 = !DILocation(line: 154, column: 27, scope: !58)
!65 = !DILocation(line: 154, column: 7, scope: !38)
!66 = !DILocation(line: 155, column: 5, scope: !58)
!67 = !DILocation(line: 157, column: 14, scope: !38)
!68 = !DILocation(line: 157, column: 17, scope: !38)
!69 = !DILocation(line: 157, column: 24, scope: !38)
!70 = !DILocation(line: 157, column: 22, scope: !38)
!71 = !DILocation(line: 157, column: 35, scope: !38)
!72 = !DILocation(line: 157, column: 3, scope: !38)
!73 = !DILocation(line: 157, column: 6, scope: !38)
!74 = !DILocation(line: 157, column: 11, scope: !38)
!75 = !DILocation(line: 158, column: 22, scope: !38)
!76 = !DILocation(line: 158, column: 25, scope: !38)
!77 = !DILocation(line: 158, column: 30, scope: !38)
!78 = !DILocation(line: 158, column: 33, scope: !38)
!79 = !DILocation(line: 158, column: 12, scope: !38)
!80 = !DILocation(line: 158, column: 3, scope: !38)
!81 = !DILocation(line: 158, column: 6, scope: !38)
!82 = !DILocation(line: 158, column: 10, scope: !38)
!83 = !DILocation(line: 159, column: 1, scope: !38)
!84 = !DILocation(line: 159, column: 1, scope: !85)
!85 = !DILexicalBlockFile(scope: !38, file: !7, discriminator: 1)
!86 = distinct !DISubprogram(name: "varbuf_dup_char", scope: !7, file: !7, line: 41, type: !87, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !10, !22, !15}
!89 = !DILocalVariable(name: "v", arg: 1, scope: !86, file: !7, line: 41, type: !10)
!90 = !DILocation(line: 41, column: 32, scope: !86)
!91 = !DILocalVariable(name: "c", arg: 2, scope: !86, file: !7, line: 41, type: !22)
!92 = !DILocation(line: 41, column: 39, scope: !86)
!93 = !DILocalVariable(name: "n", arg: 3, scope: !86, file: !7, line: 41, type: !15)
!94 = !DILocation(line: 41, column: 49, scope: !86)
!95 = !DILocation(line: 43, column: 15, scope: !86)
!96 = !DILocation(line: 43, column: 18, scope: !86)
!97 = !DILocation(line: 43, column: 3, scope: !86)
!98 = !DILocation(line: 44, column: 10, scope: !86)
!99 = !DILocation(line: 44, column: 13, scope: !86)
!100 = !DILocation(line: 44, column: 19, scope: !86)
!101 = !DILocation(line: 44, column: 22, scope: !86)
!102 = !DILocation(line: 44, column: 17, scope: !86)
!103 = !DILocation(line: 44, column: 28, scope: !86)
!104 = !DILocation(line: 44, column: 3, scope: !86)
!105 = !DILocation(line: 44, column: 31, scope: !86)
!106 = !DILocation(line: 45, column: 14, scope: !86)
!107 = !DILocation(line: 45, column: 3, scope: !86)
!108 = !DILocation(line: 45, column: 6, scope: !86)
!109 = !DILocation(line: 45, column: 11, scope: !86)
!110 = !DILocation(line: 46, column: 1, scope: !86)
!111 = distinct !DISubprogram(name: "varbuf_map_char", scope: !7, file: !7, line: 49, type: !112, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !10, !22, !22}
!114 = !DILocalVariable(name: "v", arg: 1, scope: !111, file: !7, line: 49, type: !10)
!115 = !DILocation(line: 49, column: 32, scope: !111)
!116 = !DILocalVariable(name: "c_src", arg: 2, scope: !111, file: !7, line: 49, type: !22)
!117 = !DILocation(line: 49, column: 39, scope: !111)
!118 = !DILocalVariable(name: "c_dst", arg: 3, scope: !111, file: !7, line: 49, type: !22)
!119 = !DILocation(line: 49, column: 50, scope: !111)
!120 = !DILocalVariable(name: "i", scope: !111, file: !7, line: 51, type: !15)
!121 = !DILocation(line: 51, column: 10, scope: !111)
!122 = !DILocation(line: 53, column: 10, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !7, line: 53, column: 3)
!124 = !DILocation(line: 53, column: 8, scope: !123)
!125 = !DILocation(line: 53, column: 15, scope: !126)
!126 = !DILexicalBlockFile(scope: !127, file: !7, discriminator: 1)
!127 = distinct !DILexicalBlock(scope: !123, file: !7, line: 53, column: 3)
!128 = !DILocation(line: 53, column: 19, scope: !126)
!129 = !DILocation(line: 53, column: 22, scope: !126)
!130 = !DILocation(line: 53, column: 17, scope: !126)
!131 = !DILocation(line: 53, column: 3, scope: !126)
!132 = !DILocation(line: 54, column: 16, scope: !133)
!133 = distinct !DILexicalBlock(scope: !127, file: !7, line: 54, column: 9)
!134 = !DILocation(line: 54, column: 9, scope: !133)
!135 = !DILocation(line: 54, column: 12, scope: !133)
!136 = !DILocation(line: 54, column: 22, scope: !133)
!137 = !DILocation(line: 54, column: 19, scope: !133)
!138 = !DILocation(line: 54, column: 9, scope: !127)
!139 = !DILocation(line: 55, column: 19, scope: !133)
!140 = !DILocation(line: 55, column: 14, scope: !133)
!141 = !DILocation(line: 55, column: 7, scope: !133)
!142 = !DILocation(line: 55, column: 10, scope: !133)
!143 = !DILocation(line: 55, column: 17, scope: !133)
!144 = !DILocation(line: 54, column: 22, scope: !145)
!145 = !DILexicalBlockFile(scope: !133, file: !7, discriminator: 1)
!146 = !DILocation(line: 53, column: 29, scope: !147)
!147 = !DILexicalBlockFile(scope: !127, file: !7, discriminator: 2)
!148 = !DILocation(line: 53, column: 3, scope: !147)
!149 = distinct !{!149, !150}
!150 = !DILocation(line: 53, column: 3, scope: !111)
!151 = !DILocation(line: 56, column: 1, scope: !111)
!152 = distinct !DISubprogram(name: "varbuf_printf", scope: !7, file: !7, line: 59, type: !153, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!153 = !DISubroutineType(types: !154)
!154 = !{!22, !10, !155, null}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!157 = !DILocalVariable(name: "v", arg: 1, scope: !152, file: !7, line: 59, type: !10)
!158 = !DILocation(line: 59, column: 30, scope: !152)
!159 = !DILocalVariable(name: "fmt", arg: 2, scope: !152, file: !7, line: 59, type: !155)
!160 = !DILocation(line: 59, column: 45, scope: !152)
!161 = !DILocalVariable(name: "r", scope: !152, file: !7, line: 61, type: !22)
!162 = !DILocation(line: 61, column: 7, scope: !152)
!163 = !DILocalVariable(name: "args", scope: !152, file: !7, line: 62, type: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !165, line: 79, baseType: !166)
!165 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !167, line: 40, baseType: !168)
!167 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 62, baseType: !169)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 192, align: 64, elements: !178)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 62, size: 192, align: 64, elements: !171)
!171 = !{!172, !174, !175, !177}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !170, file: !1, line: 62, baseType: !173, size: 32, align: 32)
!173 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !170, file: !1, line: 62, baseType: !173, size: 32, align: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !170, file: !1, line: 62, baseType: !176, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !170, file: !1, line: 62, baseType: !176, size: 64, align: 64, offset: 128)
!178 = !{!179}
!179 = !DISubrange(count: 1)
!180 = !DILocation(line: 62, column: 11, scope: !152)
!181 = !DILocation(line: 64, column: 2, scope: !152)
!182 = !DILocation(line: 65, column: 22, scope: !152)
!183 = !DILocation(line: 65, column: 25, scope: !152)
!184 = !DILocation(line: 65, column: 30, scope: !152)
!185 = !DILocation(line: 65, column: 7, scope: !152)
!186 = !DILocation(line: 65, column: 5, scope: !152)
!187 = !DILocation(line: 66, column: 2, scope: !152)
!188 = !DILocation(line: 68, column: 10, scope: !152)
!189 = !DILocation(line: 68, column: 3, scope: !152)
!190 = distinct !DISubprogram(name: "varbuf_vprintf", scope: !7, file: !7, line: 72, type: !191, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!191 = !DISubroutineType(types: !192)
!192 = !{!22, !10, !155, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!194 = !DILocalVariable(name: "v", arg: 1, scope: !190, file: !7, line: 72, type: !10)
!195 = !DILocation(line: 72, column: 31, scope: !190)
!196 = !DILocalVariable(name: "fmt", arg: 2, scope: !190, file: !7, line: 72, type: !155)
!197 = !DILocation(line: 72, column: 46, scope: !190)
!198 = !DILocalVariable(name: "args", arg: 3, scope: !190, file: !7, line: 72, type: !193)
!199 = !DILocation(line: 72, column: 59, scope: !190)
!200 = !DILocalVariable(name: "args_copy", scope: !190, file: !7, line: 74, type: !164)
!201 = !DILocation(line: 74, column: 11, scope: !190)
!202 = !DILocalVariable(name: "needed", scope: !190, file: !7, line: 75, type: !22)
!203 = !DILocation(line: 75, column: 7, scope: !190)
!204 = !DILocalVariable(name: "r", scope: !190, file: !7, line: 75, type: !22)
!205 = !DILocation(line: 75, column: 15, scope: !190)
!206 = !DILocation(line: 77, column: 2, scope: !190)
!207 = !DILocation(line: 78, column: 30, scope: !190)
!208 = !DILocation(line: 78, column: 35, scope: !190)
!209 = !DILocation(line: 78, column: 12, scope: !190)
!210 = !DILocation(line: 78, column: 10, scope: !190)
!211 = !DILocation(line: 79, column: 2, scope: !190)
!212 = !DILocation(line: 81, column: 7, scope: !213)
!213 = distinct !DILexicalBlock(scope: !190, file: !7, line: 81, column: 7)
!214 = !DILocation(line: 81, column: 14, scope: !213)
!215 = !DILocation(line: 81, column: 7, scope: !190)
!216 = !DILocation(line: 82, column: 12, scope: !213)
!217 = !DILocation(line: 82, column: 5, scope: !218)
!218 = !DILexicalBlockFile(scope: !213, file: !7, discriminator: 1)
!219 = !DILocation(line: 82, column: 5, scope: !213)
!220 = !DILocation(line: 84, column: 15, scope: !190)
!221 = !DILocation(line: 84, column: 18, scope: !190)
!222 = !DILocation(line: 84, column: 25, scope: !190)
!223 = !DILocation(line: 84, column: 3, scope: !190)
!224 = !DILocation(line: 86, column: 17, scope: !190)
!225 = !DILocation(line: 86, column: 20, scope: !190)
!226 = !DILocation(line: 86, column: 26, scope: !190)
!227 = !DILocation(line: 86, column: 29, scope: !190)
!228 = !DILocation(line: 86, column: 24, scope: !190)
!229 = !DILocation(line: 86, column: 35, scope: !190)
!230 = !DILocation(line: 86, column: 42, scope: !190)
!231 = !DILocation(line: 86, column: 47, scope: !190)
!232 = !DILocation(line: 86, column: 52, scope: !190)
!233 = !DILocation(line: 86, column: 7, scope: !190)
!234 = !DILocation(line: 86, column: 5, scope: !190)
!235 = !DILocation(line: 87, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !190, file: !7, line: 87, column: 7)
!237 = !DILocation(line: 87, column: 9, scope: !236)
!238 = !DILocation(line: 87, column: 7, scope: !190)
!239 = !DILocation(line: 88, column: 12, scope: !236)
!240 = !DILocation(line: 88, column: 5, scope: !241)
!241 = !DILexicalBlockFile(scope: !236, file: !7, discriminator: 1)
!242 = !DILocation(line: 88, column: 5, scope: !236)
!243 = !DILocation(line: 90, column: 14, scope: !190)
!244 = !DILocation(line: 90, column: 3, scope: !190)
!245 = !DILocation(line: 90, column: 6, scope: !190)
!246 = !DILocation(line: 90, column: 11, scope: !190)
!247 = !DILocation(line: 92, column: 10, scope: !190)
!248 = !DILocation(line: 92, column: 3, scope: !190)
!249 = distinct !DISubprogram(name: "varbuf_add_buf", scope: !7, file: !7, line: 96, type: !250, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !10, !252, !15}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!254 = !DILocalVariable(name: "v", arg: 1, scope: !249, file: !7, line: 96, type: !10)
!255 = !DILocation(line: 96, column: 31, scope: !249)
!256 = !DILocalVariable(name: "s", arg: 2, scope: !249, file: !7, line: 96, type: !252)
!257 = !DILocation(line: 96, column: 46, scope: !249)
!258 = !DILocalVariable(name: "size", arg: 3, scope: !249, file: !7, line: 96, type: !15)
!259 = !DILocation(line: 96, column: 56, scope: !249)
!260 = !DILocation(line: 98, column: 15, scope: !249)
!261 = !DILocation(line: 98, column: 18, scope: !249)
!262 = !DILocation(line: 98, column: 3, scope: !249)
!263 = !DILocation(line: 99, column: 10, scope: !249)
!264 = !DILocation(line: 99, column: 13, scope: !249)
!265 = !DILocation(line: 99, column: 19, scope: !249)
!266 = !DILocation(line: 99, column: 22, scope: !249)
!267 = !DILocation(line: 99, column: 17, scope: !249)
!268 = !DILocation(line: 99, column: 28, scope: !249)
!269 = !DILocation(line: 99, column: 31, scope: !249)
!270 = !DILocation(line: 99, column: 3, scope: !249)
!271 = !DILocation(line: 100, column: 14, scope: !249)
!272 = !DILocation(line: 100, column: 3, scope: !249)
!273 = !DILocation(line: 100, column: 6, scope: !249)
!274 = !DILocation(line: 100, column: 11, scope: !249)
!275 = !DILocation(line: 101, column: 1, scope: !249)
!276 = distinct !DISubprogram(name: "varbuf_end_str", scope: !7, file: !7, line: 104, type: !277, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !10}
!279 = !DILocalVariable(name: "v", arg: 1, scope: !276, file: !7, line: 104, type: !10)
!280 = !DILocation(line: 104, column: 31, scope: !276)
!281 = !DILocation(line: 106, column: 15, scope: !276)
!282 = !DILocation(line: 106, column: 3, scope: !276)
!283 = !DILocation(line: 107, column: 10, scope: !276)
!284 = !DILocation(line: 107, column: 13, scope: !276)
!285 = !DILocation(line: 107, column: 3, scope: !276)
!286 = !DILocation(line: 107, column: 6, scope: !276)
!287 = !DILocation(line: 107, column: 19, scope: !276)
!288 = !DILocation(line: 108, column: 1, scope: !276)
!289 = distinct !DISubprogram(name: "varbuf_get_str", scope: !7, file: !7, line: 111, type: !290, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!290 = !DISubroutineType(types: !291)
!291 = !{!155, !10}
!292 = !DILocalVariable(name: "v", arg: 1, scope: !289, file: !7, line: 111, type: !10)
!293 = !DILocation(line: 111, column: 31, scope: !289)
!294 = !DILocation(line: 113, column: 18, scope: !289)
!295 = !DILocation(line: 113, column: 3, scope: !289)
!296 = !DILocation(line: 115, column: 10, scope: !289)
!297 = !DILocation(line: 115, column: 13, scope: !289)
!298 = !DILocation(line: 115, column: 3, scope: !289)
!299 = distinct !DISubprogram(name: "varbuf_new", scope: !7, file: !7, line: 119, type: !300, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!300 = !DISubroutineType(types: !301)
!301 = !{!10, !15}
!302 = !DILocalVariable(name: "size", arg: 1, scope: !299, file: !7, line: 119, type: !15)
!303 = !DILocation(line: 119, column: 19, scope: !299)
!304 = !DILocalVariable(name: "v", scope: !299, file: !7, line: 121, type: !10)
!305 = !DILocation(line: 121, column: 18, scope: !299)
!306 = !DILocation(line: 123, column: 7, scope: !299)
!307 = !DILocation(line: 123, column: 5, scope: !299)
!308 = !DILocation(line: 124, column: 15, scope: !299)
!309 = !DILocation(line: 124, column: 18, scope: !299)
!310 = !DILocation(line: 124, column: 3, scope: !299)
!311 = !DILocation(line: 126, column: 10, scope: !299)
!312 = !DILocation(line: 126, column: 3, scope: !299)
!313 = distinct !DISubprogram(name: "varbuf_init", scope: !7, file: !7, line: 130, type: !39, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!314 = !DILocalVariable(name: "v", arg: 1, scope: !313, file: !7, line: 130, type: !10)
!315 = !DILocation(line: 130, column: 28, scope: !313)
!316 = !DILocalVariable(name: "size", arg: 2, scope: !313, file: !7, line: 130, type: !15)
!317 = !DILocation(line: 130, column: 38, scope: !313)
!318 = !DILocation(line: 132, column: 3, scope: !313)
!319 = !DILocation(line: 132, column: 6, scope: !313)
!320 = !DILocation(line: 132, column: 11, scope: !313)
!321 = !DILocation(line: 133, column: 13, scope: !313)
!322 = !DILocation(line: 133, column: 3, scope: !313)
!323 = !DILocation(line: 133, column: 6, scope: !313)
!324 = !DILocation(line: 133, column: 11, scope: !313)
!325 = !DILocation(line: 134, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !313, file: !7, line: 134, column: 7)
!327 = !DILocation(line: 134, column: 7, scope: !313)
!328 = !DILocation(line: 135, column: 23, scope: !326)
!329 = !DILocation(line: 135, column: 14, scope: !326)
!330 = !DILocation(line: 135, column: 5, scope: !326)
!331 = !DILocation(line: 135, column: 8, scope: !326)
!332 = !DILocation(line: 135, column: 12, scope: !326)
!333 = !DILocation(line: 137, column: 5, scope: !326)
!334 = !DILocation(line: 137, column: 8, scope: !326)
!335 = !DILocation(line: 137, column: 12, scope: !326)
!336 = !DILocation(line: 138, column: 1, scope: !313)
!337 = distinct !DISubprogram(name: "varbuf_reset", scope: !7, file: !7, line: 141, type: !277, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!338 = !DILocalVariable(name: "v", arg: 1, scope: !337, file: !7, line: 141, type: !10)
!339 = !DILocation(line: 141, column: 29, scope: !337)
!340 = !DILocation(line: 143, column: 3, scope: !337)
!341 = !DILocation(line: 143, column: 6, scope: !337)
!342 = !DILocation(line: 143, column: 10, scope: !337)
!343 = !DILocation(line: 144, column: 1, scope: !337)
!344 = distinct !DISubprogram(name: "varbuf_trunc", scope: !7, file: !7, line: 162, type: !39, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!345 = !DILocalVariable(name: "v", arg: 1, scope: !344, file: !7, line: 162, type: !10)
!346 = !DILocation(line: 162, column: 29, scope: !344)
!347 = !DILocalVariable(name: "used_size", arg: 2, scope: !344, file: !7, line: 162, type: !15)
!348 = !DILocation(line: 162, column: 39, scope: !344)
!349 = !DILocation(line: 165, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !344, file: !7, line: 165, column: 7)
!351 = !DILocation(line: 165, column: 10, scope: !350)
!352 = !DILocation(line: 165, column: 17, scope: !350)
!353 = !DILocation(line: 165, column: 15, scope: !350)
!354 = !DILocation(line: 165, column: 7, scope: !344)
!355 = !DILocation(line: 166, column: 81, scope: !350)
!356 = !DILocation(line: 166, column: 92, scope: !350)
!357 = !DILocation(line: 166, column: 95, scope: !350)
!358 = !DILocation(line: 166, column: 5, scope: !350)
!359 = !DILocation(line: 168, column: 13, scope: !344)
!360 = !DILocation(line: 168, column: 3, scope: !344)
!361 = !DILocation(line: 168, column: 6, scope: !344)
!362 = !DILocation(line: 168, column: 11, scope: !344)
!363 = !DILocation(line: 169, column: 1, scope: !344)
!364 = distinct !DISubprogram(name: "varbuf_snapshot", scope: !7, file: !7, line: 172, type: !365, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !10, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf_state", file: !12, line: 96, size: 64, align: 64, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !368, file: !12, line: 97, baseType: !15, size: 64, align: 64)
!371 = !DILocalVariable(name: "v", arg: 1, scope: !364, file: !7, line: 172, type: !10)
!372 = !DILocation(line: 172, column: 32, scope: !364)
!373 = !DILocalVariable(name: "vs", arg: 2, scope: !364, file: !7, line: 172, type: !367)
!374 = !DILocation(line: 172, column: 56, scope: !364)
!375 = !DILocation(line: 174, column: 14, scope: !364)
!376 = !DILocation(line: 174, column: 17, scope: !364)
!377 = !DILocation(line: 174, column: 3, scope: !364)
!378 = !DILocation(line: 174, column: 7, scope: !364)
!379 = !DILocation(line: 174, column: 12, scope: !364)
!380 = !DILocation(line: 175, column: 1, scope: !364)
!381 = distinct !DISubprogram(name: "varbuf_rollback", scope: !7, file: !7, line: 178, type: !365, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!382 = !DILocalVariable(name: "v", arg: 1, scope: !381, file: !7, line: 178, type: !10)
!383 = !DILocation(line: 178, column: 32, scope: !381)
!384 = !DILocalVariable(name: "vs", arg: 2, scope: !381, file: !7, line: 178, type: !367)
!385 = !DILocation(line: 178, column: 56, scope: !381)
!386 = !DILocation(line: 180, column: 16, scope: !381)
!387 = !DILocation(line: 180, column: 19, scope: !381)
!388 = !DILocation(line: 180, column: 23, scope: !381)
!389 = !DILocation(line: 180, column: 3, scope: !381)
!390 = !DILocation(line: 181, column: 1, scope: !381)
!391 = distinct !DISubprogram(name: "varbuf_detach", scope: !7, file: !7, line: 184, type: !392, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!392 = !DISubroutineType(types: !393)
!393 = !{!20, !10}
!394 = !DILocalVariable(name: "v", arg: 1, scope: !391, file: !7, line: 184, type: !10)
!395 = !DILocation(line: 184, column: 30, scope: !391)
!396 = !DILocalVariable(name: "buf", scope: !391, file: !7, line: 186, type: !20)
!397 = !DILocation(line: 186, column: 9, scope: !391)
!398 = !DILocation(line: 186, column: 15, scope: !391)
!399 = !DILocation(line: 186, column: 18, scope: !391)
!400 = !DILocation(line: 188, column: 3, scope: !391)
!401 = !DILocation(line: 188, column: 6, scope: !391)
!402 = !DILocation(line: 188, column: 10, scope: !391)
!403 = !DILocation(line: 189, column: 3, scope: !391)
!404 = !DILocation(line: 189, column: 6, scope: !391)
!405 = !DILocation(line: 189, column: 11, scope: !391)
!406 = !DILocation(line: 190, column: 3, scope: !391)
!407 = !DILocation(line: 190, column: 6, scope: !391)
!408 = !DILocation(line: 190, column: 11, scope: !391)
!409 = !DILocation(line: 192, column: 10, scope: !391)
!410 = !DILocation(line: 192, column: 3, scope: !391)
!411 = distinct !DISubprogram(name: "varbuf_destroy", scope: !7, file: !7, line: 196, type: !277, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!412 = !DILocalVariable(name: "v", arg: 1, scope: !411, file: !7, line: 196, type: !10)
!413 = !DILocation(line: 196, column: 31, scope: !411)
!414 = !DILocation(line: 198, column: 8, scope: !411)
!415 = !DILocation(line: 198, column: 11, scope: !411)
!416 = !DILocation(line: 198, column: 3, scope: !411)
!417 = !DILocation(line: 198, column: 17, scope: !411)
!418 = !DILocation(line: 198, column: 20, scope: !411)
!419 = !DILocation(line: 198, column: 23, scope: !411)
!420 = !DILocation(line: 198, column: 29, scope: !411)
!421 = !DILocation(line: 198, column: 32, scope: !411)
!422 = !DILocation(line: 198, column: 36, scope: !411)
!423 = !DILocation(line: 198, column: 40, scope: !411)
!424 = !DILocation(line: 198, column: 43, scope: !411)
!425 = !DILocation(line: 198, column: 47, scope: !411)
!426 = !DILocation(line: 199, column: 1, scope: !411)
!427 = distinct !DISubprogram(name: "varbuf_free", scope: !7, file: !7, line: 202, type: !277, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!428 = !DILocalVariable(name: "v", arg: 1, scope: !427, file: !7, line: 202, type: !10)
!429 = !DILocation(line: 202, column: 28, scope: !427)
!430 = !DILocation(line: 204, column: 8, scope: !427)
!431 = !DILocation(line: 204, column: 11, scope: !427)
!432 = !DILocation(line: 204, column: 3, scope: !427)
!433 = !DILocation(line: 205, column: 8, scope: !427)
!434 = !DILocation(line: 205, column: 3, scope: !427)
!435 = !DILocation(line: 206, column: 1, scope: !427)
