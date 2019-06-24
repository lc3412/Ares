; ModuleID = './[inter]lib--dpkg--command.o.i'
source_filename = "./[inter]lib--dpkg--command.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.command = type { i8*, i8*, i32, i32, i8** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to execute %s (%s)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"sh\00", align 1

; Function Attrs: nounwind uwtable
define void @command_init(%struct.command*, i8*, i8*) #0 !dbg !12 {
  %4 = alloca %struct.command*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.command* %0, %struct.command** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.command** %4, metadata !29, metadata !30), !dbg !31
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !32, metadata !30), !dbg !33
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !34, metadata !30), !dbg !35
  %7 = load i8*, i8** %5, align 8, !dbg !36
  %8 = load %struct.command*, %struct.command** %4, align 8, !dbg !37
  %9 = getelementptr inbounds %struct.command, %struct.command* %8, i32 0, i32 1, !dbg !38
  store i8* %7, i8** %9, align 8, !dbg !39
  %10 = load i8*, i8** %6, align 8, !dbg !40
  %11 = icmp eq i8* %10, null, !dbg !42
  br i1 %11, label %12, label %17, !dbg !43

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8, !dbg !44
  %14 = call i8* @path_basename(i8* %13), !dbg !45
  %15 = load %struct.command*, %struct.command** %4, align 8, !dbg !46
  %16 = getelementptr inbounds %struct.command, %struct.command* %15, i32 0, i32 0, !dbg !47
  store i8* %14, i8** %16, align 8, !dbg !48
  br label %21, !dbg !46

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !49
  %19 = load %struct.command*, %struct.command** %4, align 8, !dbg !50
  %20 = getelementptr inbounds %struct.command, %struct.command* %19, i32 0, i32 0, !dbg !51
  store i8* %18, i8** %20, align 8, !dbg !52
  br label %21

; <label>:21:                                     ; preds = %17, %12
  %22 = load %struct.command*, %struct.command** %4, align 8, !dbg !53
  %23 = getelementptr inbounds %struct.command, %struct.command* %22, i32 0, i32 2, !dbg !54
  store i32 0, i32* %23, align 8, !dbg !55
  %24 = load %struct.command*, %struct.command** %4, align 8, !dbg !56
  %25 = getelementptr inbounds %struct.command, %struct.command* %24, i32 0, i32 3, !dbg !57
  store i32 10, i32* %25, align 4, !dbg !58
  %26 = load %struct.command*, %struct.command** %4, align 8, !dbg !59
  %27 = getelementptr inbounds %struct.command, %struct.command* %26, i32 0, i32 3, !dbg !60
  %28 = load i32, i32* %27, align 4, !dbg !60
  %29 = sext i32 %28 to i64, !dbg !59
  %30 = mul i64 %29, 8, !dbg !61
  %31 = call i8* @m_malloc(i64 %30), !dbg !62
  %32 = bitcast i8* %31 to i8**, !dbg !62
  %33 = load %struct.command*, %struct.command** %4, align 8, !dbg !63
  %34 = getelementptr inbounds %struct.command, %struct.command* %33, i32 0, i32 4, !dbg !64
  store i8** %32, i8*** %34, align 8, !dbg !65
  %35 = load %struct.command*, %struct.command** %4, align 8, !dbg !66
  %36 = getelementptr inbounds %struct.command, %struct.command* %35, i32 0, i32 4, !dbg !67
  %37 = load i8**, i8*** %36, align 8, !dbg !67
  %38 = getelementptr inbounds i8*, i8** %37, i64 0, !dbg !66
  store i8* null, i8** %38, align 8, !dbg !68
  ret void, !dbg !69
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @path_basename(i8*) #2

declare i8* @m_malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @command_destroy(%struct.command*) #0 !dbg !70 {
  %2 = alloca %struct.command*, align 8
  store %struct.command* %0, %struct.command** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.command** %2, metadata !73, metadata !30), !dbg !74
  %3 = load %struct.command*, %struct.command** %2, align 8, !dbg !75
  %4 = getelementptr inbounds %struct.command, %struct.command* %3, i32 0, i32 1, !dbg !76
  store i8* null, i8** %4, align 8, !dbg !77
  %5 = load %struct.command*, %struct.command** %2, align 8, !dbg !78
  %6 = getelementptr inbounds %struct.command, %struct.command* %5, i32 0, i32 0, !dbg !79
  store i8* null, i8** %6, align 8, !dbg !80
  %7 = load %struct.command*, %struct.command** %2, align 8, !dbg !81
  %8 = getelementptr inbounds %struct.command, %struct.command* %7, i32 0, i32 2, !dbg !82
  store i32 0, i32* %8, align 8, !dbg !83
  %9 = load %struct.command*, %struct.command** %2, align 8, !dbg !84
  %10 = getelementptr inbounds %struct.command, %struct.command* %9, i32 0, i32 3, !dbg !85
  store i32 0, i32* %10, align 4, !dbg !86
  %11 = load %struct.command*, %struct.command** %2, align 8, !dbg !87
  %12 = getelementptr inbounds %struct.command, %struct.command* %11, i32 0, i32 4, !dbg !88
  %13 = load i8**, i8*** %12, align 8, !dbg !88
  %14 = bitcast i8** %13 to i8*, !dbg !87
  call void @free(i8* %14) #4, !dbg !89
  %15 = load %struct.command*, %struct.command** %2, align 8, !dbg !90
  %16 = getelementptr inbounds %struct.command, %struct.command* %15, i32 0, i32 4, !dbg !91
  store i8** null, i8*** %16, align 8, !dbg !92
  ret void, !dbg !93
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @command_add_arg(%struct.command*, i8*) #0 !dbg !94 {
  %3 = alloca %struct.command*, align 8
  %4 = alloca i8*, align 8
  store %struct.command* %0, %struct.command** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.command** %3, metadata !97, metadata !30), !dbg !98
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !99, metadata !30), !dbg !100
  %5 = load %struct.command*, %struct.command** %3, align 8, !dbg !101
  call void @command_grow_argv(%struct.command* %5, i32 1), !dbg !102
  %6 = load i8*, i8** %4, align 8, !dbg !103
  %7 = load %struct.command*, %struct.command** %3, align 8, !dbg !104
  %8 = getelementptr inbounds %struct.command, %struct.command* %7, i32 0, i32 2, !dbg !105
  %9 = load i32, i32* %8, align 8, !dbg !106
  %10 = add nsw i32 %9, 1, !dbg !106
  store i32 %10, i32* %8, align 8, !dbg !106
  %11 = sext i32 %9 to i64, !dbg !107
  %12 = load %struct.command*, %struct.command** %3, align 8, !dbg !107
  %13 = getelementptr inbounds %struct.command, %struct.command* %12, i32 0, i32 4, !dbg !108
  %14 = load i8**, i8*** %13, align 8, !dbg !108
  %15 = getelementptr inbounds i8*, i8** %14, i64 %11, !dbg !107
  store i8* %6, i8** %15, align 8, !dbg !109
  %16 = load %struct.command*, %struct.command** %3, align 8, !dbg !110
  %17 = getelementptr inbounds %struct.command, %struct.command* %16, i32 0, i32 2, !dbg !111
  %18 = load i32, i32* %17, align 8, !dbg !111
  %19 = sext i32 %18 to i64, !dbg !112
  %20 = load %struct.command*, %struct.command** %3, align 8, !dbg !112
  %21 = getelementptr inbounds %struct.command, %struct.command* %20, i32 0, i32 4, !dbg !113
  %22 = load i8**, i8*** %21, align 8, !dbg !113
  %23 = getelementptr inbounds i8*, i8** %22, i64 %19, !dbg !112
  store i8* null, i8** %23, align 8, !dbg !114
  ret void, !dbg !115
}

; Function Attrs: nounwind uwtable
define internal void @command_grow_argv(%struct.command*, i32) #0 !dbg !116 {
  %3 = alloca %struct.command*, align 8
  %4 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.command** %3, metadata !119, metadata !30), !dbg !120
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !121, metadata !30), !dbg !122
  %5 = load i32, i32* %4, align 4, !dbg !123
  %6 = add nsw i32 %5, 1, !dbg !123
  store i32 %6, i32* %4, align 4, !dbg !123
  %7 = load %struct.command*, %struct.command** %3, align 8, !dbg !124
  %8 = getelementptr inbounds %struct.command, %struct.command* %7, i32 0, i32 3, !dbg !126
  %9 = load i32, i32* %8, align 4, !dbg !126
  %10 = load %struct.command*, %struct.command** %3, align 8, !dbg !127
  %11 = getelementptr inbounds %struct.command, %struct.command* %10, i32 0, i32 2, !dbg !128
  %12 = load i32, i32* %11, align 8, !dbg !128
  %13 = sub nsw i32 %9, %12, !dbg !129
  %14 = load i32, i32* %4, align 4, !dbg !130
  %15 = icmp sge i32 %13, %14, !dbg !131
  br i1 %15, label %16, label %17, !dbg !132

; <label>:16:                                     ; preds = %2
  br label %39, !dbg !133

; <label>:17:                                     ; preds = %2
  %18 = load %struct.command*, %struct.command** %3, align 8, !dbg !134
  %19 = getelementptr inbounds %struct.command, %struct.command* %18, i32 0, i32 3, !dbg !135
  %20 = load i32, i32* %19, align 4, !dbg !135
  %21 = load i32, i32* %4, align 4, !dbg !136
  %22 = add nsw i32 %20, %21, !dbg !137
  %23 = mul nsw i32 %22, 2, !dbg !138
  %24 = load %struct.command*, %struct.command** %3, align 8, !dbg !139
  %25 = getelementptr inbounds %struct.command, %struct.command* %24, i32 0, i32 3, !dbg !140
  store i32 %23, i32* %25, align 4, !dbg !141
  %26 = load %struct.command*, %struct.command** %3, align 8, !dbg !142
  %27 = getelementptr inbounds %struct.command, %struct.command* %26, i32 0, i32 4, !dbg !143
  %28 = load i8**, i8*** %27, align 8, !dbg !143
  %29 = bitcast i8** %28 to i8*, !dbg !142
  %30 = load %struct.command*, %struct.command** %3, align 8, !dbg !144
  %31 = getelementptr inbounds %struct.command, %struct.command* %30, i32 0, i32 3, !dbg !145
  %32 = load i32, i32* %31, align 4, !dbg !145
  %33 = sext i32 %32 to i64, !dbg !144
  %34 = mul i64 %33, 8, !dbg !146
  %35 = call i8* @m_realloc(i8* %29, i64 %34), !dbg !147
  %36 = bitcast i8* %35 to i8**, !dbg !147
  %37 = load %struct.command*, %struct.command** %3, align 8, !dbg !148
  %38 = getelementptr inbounds %struct.command, %struct.command* %37, i32 0, i32 4, !dbg !149
  store i8** %36, i8*** %38, align 8, !dbg !150
  br label %39, !dbg !151

; <label>:39:                                     ; preds = %17, %16
  ret void, !dbg !152
}

; Function Attrs: nounwind uwtable
define void @command_add_argl(%struct.command*, i8**) #0 !dbg !154 {
  %3 = alloca %struct.command*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.command** %3, metadata !157, metadata !30), !dbg !158
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !159, metadata !30), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %5, metadata !161, metadata !30), !dbg !162
  call void @llvm.dbg.declare(metadata i32* %6, metadata !163, metadata !30), !dbg !164
  store i32 0, i32* %6, align 4, !dbg !164
  br label %7, !dbg !165

; <label>:7:                                      ; preds = %14, %2
  %8 = load i32, i32* %6, align 4, !dbg !166
  %9 = sext i32 %8 to i64, !dbg !168
  %10 = load i8**, i8*** %4, align 8, !dbg !168
  %11 = getelementptr inbounds i8*, i8** %10, i64 %9, !dbg !168
  %12 = load i8*, i8** %11, align 8, !dbg !168
  %13 = icmp ne i8* %12, null, !dbg !169
  br i1 %13, label %14, label %17, !dbg !170

; <label>:14:                                     ; preds = %7
  %15 = load i32, i32* %6, align 4, !dbg !171
  %16 = add nsw i32 %15, 1, !dbg !171
  store i32 %16, i32* %6, align 4, !dbg !171
  br label %7, !dbg !172, !llvm.loop !174

; <label>:17:                                     ; preds = %7
  %18 = load %struct.command*, %struct.command** %3, align 8, !dbg !175
  %19 = load i32, i32* %6, align 4, !dbg !176
  call void @command_grow_argv(%struct.command* %18, i32 %19), !dbg !177
  store i32 0, i32* %5, align 4, !dbg !178
  br label %20, !dbg !180

; <label>:20:                                     ; preds = %39, %17
  %21 = load i32, i32* %5, align 4, !dbg !181
  %22 = load i32, i32* %6, align 4, !dbg !184
  %23 = icmp slt i32 %21, %22, !dbg !185
  br i1 %23, label %24, label %42, !dbg !186

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %5, align 4, !dbg !187
  %26 = sext i32 %25 to i64, !dbg !188
  %27 = load i8**, i8*** %4, align 8, !dbg !188
  %28 = getelementptr inbounds i8*, i8** %27, i64 %26, !dbg !188
  %29 = load i8*, i8** %28, align 8, !dbg !188
  %30 = load %struct.command*, %struct.command** %3, align 8, !dbg !189
  %31 = getelementptr inbounds %struct.command, %struct.command* %30, i32 0, i32 2, !dbg !190
  %32 = load i32, i32* %31, align 8, !dbg !191
  %33 = add nsw i32 %32, 1, !dbg !191
  store i32 %33, i32* %31, align 8, !dbg !191
  %34 = sext i32 %32 to i64, !dbg !192
  %35 = load %struct.command*, %struct.command** %3, align 8, !dbg !192
  %36 = getelementptr inbounds %struct.command, %struct.command* %35, i32 0, i32 4, !dbg !193
  %37 = load i8**, i8*** %36, align 8, !dbg !193
  %38 = getelementptr inbounds i8*, i8** %37, i64 %34, !dbg !192
  store i8* %29, i8** %38, align 8, !dbg !194
  br label %39, !dbg !192

; <label>:39:                                     ; preds = %24
  %40 = load i32, i32* %5, align 4, !dbg !195
  %41 = add nsw i32 %40, 1, !dbg !195
  store i32 %41, i32* %5, align 4, !dbg !195
  br label %20, !dbg !197, !llvm.loop !198

; <label>:42:                                     ; preds = %20
  %43 = load %struct.command*, %struct.command** %3, align 8, !dbg !200
  %44 = getelementptr inbounds %struct.command, %struct.command* %43, i32 0, i32 2, !dbg !201
  %45 = load i32, i32* %44, align 8, !dbg !201
  %46 = sext i32 %45 to i64, !dbg !202
  %47 = load %struct.command*, %struct.command** %3, align 8, !dbg !202
  %48 = getelementptr inbounds %struct.command, %struct.command* %47, i32 0, i32 4, !dbg !203
  %49 = load i8**, i8*** %48, align 8, !dbg !203
  %50 = getelementptr inbounds i8*, i8** %49, i64 %46, !dbg !202
  store i8* null, i8** %50, align 8, !dbg !204
  ret void, !dbg !205
}

; Function Attrs: nounwind uwtable
define void @command_add_argv(%struct.command*, %struct.__va_list_tag*) #0 !dbg !206 {
  %3 = alloca %struct.command*, align 8
  %4 = alloca %struct.__va_list_tag*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.command** %3, metadata !217, metadata !30), !dbg !218
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %4, metadata !219, metadata !30), !dbg !220
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !221, metadata !30), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %6, metadata !230, metadata !30), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %7, metadata !232, metadata !30), !dbg !233
  store i32 0, i32* %7, align 4, !dbg !233
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !234
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8, !dbg !234
  %10 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !234
  %11 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !234
  call void @llvm.va_copy(i8* %10, i8* %11), !dbg !234
  br label %12, !dbg !235

; <label>:12:                                     ; preds = %32, %2
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !236
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 0, !dbg !236
  %15 = load i32, i32* %14, align 16, !dbg !236
  %16 = icmp ule i32 %15, 40, !dbg !236
  br i1 %16, label %17, label %23, !dbg !236

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 3, !dbg !238
  %19 = load i8*, i8** %18, align 16, !dbg !238
  %20 = getelementptr i8, i8* %19, i32 %15, !dbg !238
  %21 = bitcast i8* %20 to i8**, !dbg !238
  %22 = add i32 %15, 8, !dbg !238
  store i32 %22, i32* %14, align 16, !dbg !238
  br label %28, !dbg !238

; <label>:23:                                     ; preds = %12
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 2, !dbg !240
  %25 = load i8*, i8** %24, align 8, !dbg !240
  %26 = bitcast i8* %25 to i8**, !dbg !240
  %27 = getelementptr i8, i8* %25, i32 8, !dbg !240
  store i8* %27, i8** %24, align 8, !dbg !240
  br label %28, !dbg !240

; <label>:28:                                     ; preds = %23, %17
  %29 = phi i8** [ %21, %17 ], [ %26, %23 ], !dbg !242
  %30 = load i8*, i8** %29, align 8, !dbg !242
  %31 = icmp ne i8* %30, null, !dbg !244
  br i1 %31, label %32, label %35, !dbg !245

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %7, align 4, !dbg !246
  %34 = add nsw i32 %33, 1, !dbg !246
  store i32 %34, i32* %7, align 4, !dbg !246
  br label %12, !dbg !247, !llvm.loop !249

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !250
  %37 = bitcast %struct.__va_list_tag* %36 to i8*, !dbg !250
  call void @llvm.va_end(i8* %37), !dbg !250
  %38 = load %struct.command*, %struct.command** %3, align 8, !dbg !251
  %39 = load i32, i32* %7, align 4, !dbg !252
  call void @command_grow_argv(%struct.command* %38, i32 %39), !dbg !253
  store i32 0, i32* %6, align 4, !dbg !254
  br label %40, !dbg !256

; <label>:40:                                     ; preds = %72, %35
  %41 = load i32, i32* %6, align 4, !dbg !257
  %42 = load i32, i32* %7, align 4, !dbg !260
  %43 = icmp slt i32 %41, %42, !dbg !261
  br i1 %43, label %44, label %75, !dbg !262

; <label>:44:                                     ; preds = %40
  %45 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8, !dbg !263
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 0, !dbg !263
  %47 = load i32, i32* %46, align 8, !dbg !263
  %48 = icmp ule i32 %47, 40, !dbg !263
  br i1 %48, label %49, label %55, !dbg !263

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 3, !dbg !264
  %51 = load i8*, i8** %50, align 8, !dbg !264
  %52 = getelementptr i8, i8* %51, i32 %47, !dbg !264
  %53 = bitcast i8* %52 to i8**, !dbg !264
  %54 = add i32 %47, 8, !dbg !264
  store i32 %54, i32* %46, align 8, !dbg !264
  br label %60, !dbg !264

; <label>:55:                                     ; preds = %44
  %56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 2, !dbg !265
  %57 = load i8*, i8** %56, align 8, !dbg !265
  %58 = bitcast i8* %57 to i8**, !dbg !265
  %59 = getelementptr i8, i8* %57, i32 8, !dbg !265
  store i8* %59, i8** %56, align 8, !dbg !265
  br label %60, !dbg !265

; <label>:60:                                     ; preds = %55, %49
  %61 = phi i8** [ %53, %49 ], [ %58, %55 ], !dbg !267
  %62 = load i8*, i8** %61, align 8, !dbg !267
  %63 = load %struct.command*, %struct.command** %3, align 8, !dbg !269
  %64 = getelementptr inbounds %struct.command, %struct.command* %63, i32 0, i32 2, !dbg !270
  %65 = load i32, i32* %64, align 8, !dbg !271
  %66 = add nsw i32 %65, 1, !dbg !271
  store i32 %66, i32* %64, align 8, !dbg !271
  %67 = sext i32 %65 to i64, !dbg !272
  %68 = load %struct.command*, %struct.command** %3, align 8, !dbg !272
  %69 = getelementptr inbounds %struct.command, %struct.command* %68, i32 0, i32 4, !dbg !273
  %70 = load i8**, i8*** %69, align 8, !dbg !273
  %71 = getelementptr inbounds i8*, i8** %70, i64 %67, !dbg !272
  store i8* %62, i8** %71, align 8, !dbg !274
  br label %72, !dbg !272

; <label>:72:                                     ; preds = %60
  %73 = load i32, i32* %6, align 4, !dbg !275
  %74 = add nsw i32 %73, 1, !dbg !275
  store i32 %74, i32* %6, align 4, !dbg !275
  br label %40, !dbg !276, !llvm.loop !277

; <label>:75:                                     ; preds = %40
  %76 = load %struct.command*, %struct.command** %3, align 8, !dbg !279
  %77 = getelementptr inbounds %struct.command, %struct.command* %76, i32 0, i32 2, !dbg !280
  %78 = load i32, i32* %77, align 8, !dbg !280
  %79 = sext i32 %78 to i64, !dbg !281
  %80 = load %struct.command*, %struct.command** %3, align 8, !dbg !281
  %81 = getelementptr inbounds %struct.command, %struct.command* %80, i32 0, i32 4, !dbg !282
  %82 = load i8**, i8*** %81, align 8, !dbg !282
  %83 = getelementptr inbounds i8*, i8** %82, i64 %79, !dbg !281
  store i8* null, i8** %83, align 8, !dbg !283
  ret void, !dbg !284
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define void @command_add_args(%struct.command*, ...) #0 !dbg !285 {
  %2 = alloca %struct.command*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.command* %0, %struct.command** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.command** %2, metadata !288, metadata !30), !dbg !289
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !290, metadata !30), !dbg !291
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !292
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !292
  call void @llvm.va_start(i8* %5), !dbg !292
  %6 = load %struct.command*, %struct.command** %2, align 8, !dbg !293
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !294
  call void @command_add_argv(%struct.command* %6, %struct.__va_list_tag* %7), !dbg !295
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !296
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !296
  call void @llvm.va_end(i8* %9), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noreturn nounwind uwtable
define void @command_exec(%struct.command*) #5 !dbg !298 {
  %2 = alloca %struct.command*, align 8
  store %struct.command* %0, %struct.command** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.command** %2, metadata !299, metadata !30), !dbg !300
  %3 = load %struct.command*, %struct.command** %2, align 8, !dbg !301
  %4 = getelementptr inbounds %struct.command, %struct.command* %3, i32 0, i32 1, !dbg !302
  %5 = load i8*, i8** %4, align 8, !dbg !302
  %6 = load %struct.command*, %struct.command** %2, align 8, !dbg !303
  %7 = getelementptr inbounds %struct.command, %struct.command* %6, i32 0, i32 4, !dbg !304
  %8 = load i8**, i8*** %7, align 8, !dbg !304
  %9 = call i32 @execvp(i8* %5, i8** %8) #4, !dbg !305
  %10 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !306
  %11 = load %struct.command*, %struct.command** %2, align 8, !dbg !307
  %12 = getelementptr inbounds %struct.command, %struct.command* %11, i32 0, i32 0, !dbg !308
  %13 = load i8*, i8** %12, align 8, !dbg !308
  %14 = load %struct.command*, %struct.command** %2, align 8, !dbg !309
  %15 = getelementptr inbounds %struct.command, %struct.command* %14, i32 0, i32 1, !dbg !310
  %16 = load i8*, i8** %15, align 8, !dbg !310
  call void (i8*, ...) @ohshite(i8* %10, i8* %13, i8* %16) #8, !dbg !311
  unreachable, !dbg !313
                                                  ; No predecessors!
  ret void, !dbg !314
}

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #6

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: noreturn nounwind uwtable
define void @command_shell(i8*, i8*) #5 !dbg !315 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !318, metadata !30), !dbg !319
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !320, metadata !30), !dbg !321
  call void @llvm.dbg.declare(metadata i8** %5, metadata !322, metadata !30), !dbg !323
  call void @llvm.dbg.declare(metadata i8** %6, metadata !324, metadata !30), !dbg !325
  %7 = load i8*, i8** %3, align 8, !dbg !326
  %8 = icmp eq i8* %7, null, !dbg !328
  br i1 %8, label %9, label %11, !dbg !329

; <label>:9:                                      ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %6, align 8, !dbg !330
  %10 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #4, !dbg !332
  store i8* %10, i8** %5, align 8, !dbg !333
  br label %12, !dbg !334

; <label>:11:                                     ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8** %6, align 8, !dbg !335
  store i8* null, i8** %5, align 8, !dbg !337
  br label %12

; <label>:12:                                     ; preds = %11, %9
  %13 = load i8*, i8** %5, align 8, !dbg !338
  %14 = call zeroext i1 @str_is_unset(i8* %13), !dbg !340
  br i1 %14, label %15, label %16, !dbg !341

; <label>:15:                                     ; preds = %12
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8** %5, align 8, !dbg !342
  br label %16, !dbg !343

; <label>:16:                                     ; preds = %15, %12
  %17 = load i8*, i8** %5, align 8, !dbg !344
  %18 = load i8*, i8** %5, align 8, !dbg !345
  %19 = load i8*, i8** %6, align 8, !dbg !346
  %20 = load i8*, i8** %3, align 8, !dbg !347
  %21 = call i32 (i8*, i8*, ...) @execlp(i8* %17, i8* %18, i8* %19, i8* %20, i8* null) #4, !dbg !348
  %22 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !349
  %23 = load i8*, i8** %4, align 8, !dbg !350
  %24 = load i8*, i8** %3, align 8, !dbg !351
  call void (i8*, ...) @ohshite(i8* %22, i8* %23, i8* %24) #8, !dbg !352
  unreachable, !dbg !354
                                                  ; No predecessors!
  ret void, !dbg !355
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @str_is_unset(i8*) #7 !dbg !356 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !361, metadata !30), !dbg !362
  %3 = load i8*, i8** %2, align 8, !dbg !363
  %4 = icmp eq i8* %3, null, !dbg !364
  br i1 %4, label %11, label %5, !dbg !365

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !366
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !366
  %8 = load i8, i8* %7, align 1, !dbg !366
  %9 = sext i8 %8 to i32, !dbg !366
  %10 = icmp eq i32 %9, 0, !dbg !368
  br label %11, !dbg !369

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ true, %1 ], [ %10, %5 ]
  ret i1 %12, !dbg !370
}

; Function Attrs: nounwind
declare i32 @execlp(i8*, i8*, ...) #3

declare i8* @m_realloc(i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--dpkg--command.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!12 = distinct !DISubprogram(name: "command_init", scope: !13, file: !13, line: 45, type: !14, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!13 = !DIFile(filename: "command.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !21, !21}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command", file: !18, line: 37, size: 256, align: 64, elements: !19)
!18 = !DIFile(filename: "../../lib/dpkg/command.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!19 = !{!20, !23, !24, !26, !27}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !17, file: !18, line: 39, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !17, file: !18, line: 41, baseType: !21, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !17, file: !18, line: 42, baseType: !25, size: 32, align: 32, offset: 128)
!25 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "argv_size", scope: !17, file: !18, line: 43, baseType: !25, size: 32, align: 32, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !17, file: !18, line: 44, baseType: !28, size: 64, align: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!29 = !DILocalVariable(name: "cmd", arg: 1, scope: !12, file: !13, line: 45, type: !16)
!30 = !DIExpression()
!31 = !DILocation(line: 45, column: 30, scope: !12)
!32 = !DILocalVariable(name: "filename", arg: 2, scope: !12, file: !13, line: 45, type: !21)
!33 = !DILocation(line: 45, column: 47, scope: !12)
!34 = !DILocalVariable(name: "name", arg: 3, scope: !12, file: !13, line: 45, type: !21)
!35 = !DILocation(line: 45, column: 69, scope: !12)
!36 = !DILocation(line: 47, column: 18, scope: !12)
!37 = !DILocation(line: 47, column: 2, scope: !12)
!38 = !DILocation(line: 47, column: 7, scope: !12)
!39 = !DILocation(line: 47, column: 16, scope: !12)
!40 = !DILocation(line: 48, column: 6, scope: !41)
!41 = distinct !DILexicalBlock(scope: !12, file: !13, line: 48, column: 6)
!42 = !DILocation(line: 48, column: 11, scope: !41)
!43 = !DILocation(line: 48, column: 6, scope: !12)
!44 = !DILocation(line: 49, column: 29, scope: !41)
!45 = !DILocation(line: 49, column: 15, scope: !41)
!46 = !DILocation(line: 49, column: 3, scope: !41)
!47 = !DILocation(line: 49, column: 8, scope: !41)
!48 = !DILocation(line: 49, column: 13, scope: !41)
!49 = !DILocation(line: 51, column: 15, scope: !41)
!50 = !DILocation(line: 51, column: 3, scope: !41)
!51 = !DILocation(line: 51, column: 8, scope: !41)
!52 = !DILocation(line: 51, column: 13, scope: !41)
!53 = !DILocation(line: 52, column: 2, scope: !12)
!54 = !DILocation(line: 52, column: 7, scope: !12)
!55 = !DILocation(line: 52, column: 12, scope: !12)
!56 = !DILocation(line: 53, column: 2, scope: !12)
!57 = !DILocation(line: 53, column: 7, scope: !12)
!58 = !DILocation(line: 53, column: 17, scope: !12)
!59 = !DILocation(line: 54, column: 23, scope: !12)
!60 = !DILocation(line: 54, column: 28, scope: !12)
!61 = !DILocation(line: 54, column: 38, scope: !12)
!62 = !DILocation(line: 54, column: 14, scope: !12)
!63 = !DILocation(line: 54, column: 2, scope: !12)
!64 = !DILocation(line: 54, column: 7, scope: !12)
!65 = !DILocation(line: 54, column: 12, scope: !12)
!66 = !DILocation(line: 55, column: 2, scope: !12)
!67 = !DILocation(line: 55, column: 7, scope: !12)
!68 = !DILocation(line: 55, column: 15, scope: !12)
!69 = !DILocation(line: 56, column: 1, scope: !12)
!70 = distinct !DISubprogram(name: "command_destroy", scope: !13, file: !13, line: 67, type: !71, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !16}
!73 = !DILocalVariable(name: "cmd", arg: 1, scope: !70, file: !13, line: 67, type: !16)
!74 = !DILocation(line: 67, column: 33, scope: !70)
!75 = !DILocation(line: 69, column: 2, scope: !70)
!76 = !DILocation(line: 69, column: 7, scope: !70)
!77 = !DILocation(line: 69, column: 16, scope: !70)
!78 = !DILocation(line: 70, column: 2, scope: !70)
!79 = !DILocation(line: 70, column: 7, scope: !70)
!80 = !DILocation(line: 70, column: 12, scope: !70)
!81 = !DILocation(line: 71, column: 2, scope: !70)
!82 = !DILocation(line: 71, column: 7, scope: !70)
!83 = !DILocation(line: 71, column: 12, scope: !70)
!84 = !DILocation(line: 72, column: 2, scope: !70)
!85 = !DILocation(line: 72, column: 7, scope: !70)
!86 = !DILocation(line: 72, column: 17, scope: !70)
!87 = !DILocation(line: 73, column: 7, scope: !70)
!88 = !DILocation(line: 73, column: 12, scope: !70)
!89 = !DILocation(line: 73, column: 2, scope: !70)
!90 = !DILocation(line: 74, column: 2, scope: !70)
!91 = !DILocation(line: 74, column: 7, scope: !70)
!92 = !DILocation(line: 74, column: 12, scope: !70)
!93 = !DILocation(line: 75, column: 1, scope: !70)
!94 = distinct !DISubprogram(name: "command_add_arg", scope: !13, file: !13, line: 98, type: !95, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !16, !21}
!97 = !DILocalVariable(name: "cmd", arg: 1, scope: !94, file: !13, line: 98, type: !16)
!98 = !DILocation(line: 98, column: 33, scope: !94)
!99 = !DILocalVariable(name: "arg", arg: 2, scope: !94, file: !13, line: 98, type: !21)
!100 = !DILocation(line: 98, column: 50, scope: !94)
!101 = !DILocation(line: 100, column: 20, scope: !94)
!102 = !DILocation(line: 100, column: 2, scope: !94)
!103 = !DILocation(line: 102, column: 27, scope: !94)
!104 = !DILocation(line: 102, column: 12, scope: !94)
!105 = !DILocation(line: 102, column: 17, scope: !94)
!106 = !DILocation(line: 102, column: 21, scope: !94)
!107 = !DILocation(line: 102, column: 2, scope: !94)
!108 = !DILocation(line: 102, column: 7, scope: !94)
!109 = !DILocation(line: 102, column: 25, scope: !94)
!110 = !DILocation(line: 103, column: 12, scope: !94)
!111 = !DILocation(line: 103, column: 17, scope: !94)
!112 = !DILocation(line: 103, column: 2, scope: !94)
!113 = !DILocation(line: 103, column: 7, scope: !94)
!114 = !DILocation(line: 103, column: 23, scope: !94)
!115 = !DILocation(line: 104, column: 1, scope: !94)
!116 = distinct !DISubprogram(name: "command_grow_argv", scope: !13, file: !13, line: 78, type: !117, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !16, !25}
!119 = !DILocalVariable(name: "cmd", arg: 1, scope: !116, file: !13, line: 78, type: !16)
!120 = !DILocation(line: 78, column: 35, scope: !116)
!121 = !DILocalVariable(name: "need", arg: 2, scope: !116, file: !13, line: 78, type: !25)
!122 = !DILocation(line: 78, column: 44, scope: !116)
!123 = !DILocation(line: 81, column: 6, scope: !116)
!124 = !DILocation(line: 84, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !116, file: !13, line: 84, column: 6)
!126 = !DILocation(line: 84, column: 12, scope: !125)
!127 = !DILocation(line: 84, column: 24, scope: !125)
!128 = !DILocation(line: 84, column: 29, scope: !125)
!129 = !DILocation(line: 84, column: 22, scope: !125)
!130 = !DILocation(line: 84, column: 38, scope: !125)
!131 = !DILocation(line: 84, column: 35, scope: !125)
!132 = !DILocation(line: 84, column: 6, scope: !116)
!133 = !DILocation(line: 85, column: 3, scope: !125)
!134 = !DILocation(line: 87, column: 20, scope: !116)
!135 = !DILocation(line: 87, column: 25, scope: !116)
!136 = !DILocation(line: 87, column: 37, scope: !116)
!137 = !DILocation(line: 87, column: 35, scope: !116)
!138 = !DILocation(line: 87, column: 43, scope: !116)
!139 = !DILocation(line: 87, column: 2, scope: !116)
!140 = !DILocation(line: 87, column: 7, scope: !116)
!141 = !DILocation(line: 87, column: 17, scope: !116)
!142 = !DILocation(line: 88, column: 24, scope: !116)
!143 = !DILocation(line: 88, column: 29, scope: !116)
!144 = !DILocation(line: 88, column: 35, scope: !116)
!145 = !DILocation(line: 88, column: 40, scope: !116)
!146 = !DILocation(line: 88, column: 50, scope: !116)
!147 = !DILocation(line: 88, column: 14, scope: !116)
!148 = !DILocation(line: 88, column: 2, scope: !116)
!149 = !DILocation(line: 88, column: 7, scope: !116)
!150 = !DILocation(line: 88, column: 12, scope: !116)
!151 = !DILocation(line: 89, column: 1, scope: !116)
!152 = !DILocation(line: 89, column: 1, scope: !153)
!153 = !DILexicalBlockFile(scope: !116, file: !13, discriminator: 1)
!154 = distinct !DISubprogram(name: "command_add_argl", scope: !13, file: !13, line: 113, type: !155, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !16, !28}
!157 = !DILocalVariable(name: "cmd", arg: 1, scope: !154, file: !13, line: 113, type: !16)
!158 = !DILocation(line: 113, column: 34, scope: !154)
!159 = !DILocalVariable(name: "argv", arg: 2, scope: !154, file: !13, line: 113, type: !28)
!160 = !DILocation(line: 113, column: 52, scope: !154)
!161 = !DILocalVariable(name: "i", scope: !154, file: !13, line: 115, type: !25)
!162 = !DILocation(line: 115, column: 6, scope: !154)
!163 = !DILocalVariable(name: "add_argc", scope: !154, file: !13, line: 115, type: !25)
!164 = !DILocation(line: 115, column: 9, scope: !154)
!165 = !DILocation(line: 117, column: 2, scope: !154)
!166 = !DILocation(line: 117, column: 14, scope: !167)
!167 = !DILexicalBlockFile(scope: !154, file: !13, discriminator: 1)
!168 = !DILocation(line: 117, column: 9, scope: !167)
!169 = !DILocation(line: 117, column: 24, scope: !167)
!170 = !DILocation(line: 117, column: 2, scope: !167)
!171 = !DILocation(line: 118, column: 11, scope: !154)
!172 = !DILocation(line: 117, column: 2, scope: !173)
!173 = !DILexicalBlockFile(scope: !154, file: !13, discriminator: 2)
!174 = distinct !{!174, !165}
!175 = !DILocation(line: 120, column: 20, scope: !154)
!176 = !DILocation(line: 120, column: 25, scope: !154)
!177 = !DILocation(line: 120, column: 2, scope: !154)
!178 = !DILocation(line: 122, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !154, file: !13, line: 122, column: 2)
!180 = !DILocation(line: 122, column: 7, scope: !179)
!181 = !DILocation(line: 122, column: 14, scope: !182)
!182 = !DILexicalBlockFile(scope: !183, file: !13, discriminator: 1)
!183 = distinct !DILexicalBlock(scope: !179, file: !13, line: 122, column: 2)
!184 = !DILocation(line: 122, column: 18, scope: !182)
!185 = !DILocation(line: 122, column: 16, scope: !182)
!186 = !DILocation(line: 122, column: 2, scope: !182)
!187 = !DILocation(line: 123, column: 33, scope: !183)
!188 = !DILocation(line: 123, column: 28, scope: !183)
!189 = !DILocation(line: 123, column: 13, scope: !183)
!190 = !DILocation(line: 123, column: 18, scope: !183)
!191 = !DILocation(line: 123, column: 22, scope: !183)
!192 = !DILocation(line: 123, column: 3, scope: !183)
!193 = !DILocation(line: 123, column: 8, scope: !183)
!194 = !DILocation(line: 123, column: 26, scope: !183)
!195 = !DILocation(line: 122, column: 29, scope: !196)
!196 = !DILexicalBlockFile(scope: !183, file: !13, discriminator: 2)
!197 = !DILocation(line: 122, column: 2, scope: !196)
!198 = distinct !{!198, !199}
!199 = !DILocation(line: 122, column: 2, scope: !154)
!200 = !DILocation(line: 125, column: 12, scope: !154)
!201 = !DILocation(line: 125, column: 17, scope: !154)
!202 = !DILocation(line: 125, column: 2, scope: !154)
!203 = !DILocation(line: 125, column: 7, scope: !154)
!204 = !DILocation(line: 125, column: 23, scope: !154)
!205 = !DILocation(line: 126, column: 1, scope: !154)
!206 = distinct !DISubprogram(name: "command_add_argv", scope: !13, file: !13, line: 135, type: !207, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !16, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 126, size: 192, align: 64, elements: !211)
!211 = !{!212, !214, !215, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !210, file: !1, line: 126, baseType: !213, size: 32, align: 32)
!213 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !210, file: !1, line: 126, baseType: !213, size: 32, align: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !210, file: !1, line: 126, baseType: !4, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !210, file: !1, line: 126, baseType: !4, size: 64, align: 64, offset: 128)
!217 = !DILocalVariable(name: "cmd", arg: 1, scope: !206, file: !13, line: 135, type: !16)
!218 = !DILocation(line: 135, column: 34, scope: !206)
!219 = !DILocalVariable(name: "args", arg: 2, scope: !206, file: !13, line: 135, type: !209)
!220 = !DILocation(line: 135, column: 47, scope: !206)
!221 = !DILocalVariable(name: "args_copy", scope: !206, file: !13, line: 137, type: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !223, line: 98, baseType: !224)
!223 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !223, line: 40, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 137, baseType: !226)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 192, align: 64, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 1)
!229 = !DILocation(line: 137, column: 10, scope: !206)
!230 = !DILocalVariable(name: "i", scope: !206, file: !13, line: 138, type: !25)
!231 = !DILocation(line: 138, column: 6, scope: !206)
!232 = !DILocalVariable(name: "add_argc", scope: !206, file: !13, line: 138, type: !25)
!233 = !DILocation(line: 138, column: 9, scope: !206)
!234 = !DILocation(line: 140, column: 1, scope: !206)
!235 = !DILocation(line: 141, column: 2, scope: !206)
!236 = !DILocation(line: 141, column: 8, scope: !237)
!237 = !DILexicalBlockFile(scope: !206, file: !13, discriminator: 1)
!238 = !DILocation(line: 141, column: 8, scope: !239)
!239 = !DILexicalBlockFile(scope: !206, file: !13, discriminator: 2)
!240 = !DILocation(line: 141, column: 8, scope: !241)
!241 = !DILexicalBlockFile(scope: !206, file: !13, discriminator: 3)
!242 = !DILocation(line: 141, column: 8, scope: !243)
!243 = !DILexicalBlockFile(scope: !206, file: !13, discriminator: 4)
!244 = !DILocation(line: 141, column: 40, scope: !243)
!245 = !DILocation(line: 141, column: 2, scope: !243)
!246 = !DILocation(line: 142, column: 11, scope: !206)
!247 = !DILocation(line: 141, column: 2, scope: !248)
!248 = !DILexicalBlockFile(scope: !206, file: !13, discriminator: 5)
!249 = distinct !{!249, !235}
!250 = !DILocation(line: 143, column: 1, scope: !206)
!251 = !DILocation(line: 145, column: 20, scope: !206)
!252 = !DILocation(line: 145, column: 25, scope: !206)
!253 = !DILocation(line: 145, column: 2, scope: !206)
!254 = !DILocation(line: 147, column: 9, scope: !255)
!255 = distinct !DILexicalBlock(scope: !206, file: !13, line: 147, column: 2)
!256 = !DILocation(line: 147, column: 7, scope: !255)
!257 = !DILocation(line: 147, column: 14, scope: !258)
!258 = !DILexicalBlockFile(scope: !259, file: !13, discriminator: 1)
!259 = distinct !DILexicalBlock(scope: !255, file: !13, line: 147, column: 2)
!260 = !DILocation(line: 147, column: 18, scope: !258)
!261 = !DILocation(line: 147, column: 16, scope: !258)
!262 = !DILocation(line: 147, column: 2, scope: !258)
!263 = !DILocation(line: 148, column: 27, scope: !259)
!264 = !DILocation(line: 148, column: 27, scope: !258)
!265 = !DILocation(line: 148, column: 27, scope: !266)
!266 = !DILexicalBlockFile(scope: !259, file: !13, discriminator: 2)
!267 = !DILocation(line: 148, column: 27, scope: !268)
!268 = !DILexicalBlockFile(scope: !259, file: !13, discriminator: 3)
!269 = !DILocation(line: 148, column: 13, scope: !268)
!270 = !DILocation(line: 148, column: 18, scope: !268)
!271 = !DILocation(line: 148, column: 22, scope: !268)
!272 = !DILocation(line: 148, column: 3, scope: !268)
!273 = !DILocation(line: 148, column: 8, scope: !268)
!274 = !DILocation(line: 148, column: 26, scope: !268)
!275 = !DILocation(line: 147, column: 29, scope: !266)
!276 = !DILocation(line: 147, column: 2, scope: !266)
!277 = distinct !{!277, !278}
!278 = !DILocation(line: 147, column: 2, scope: !206)
!279 = !DILocation(line: 150, column: 12, scope: !206)
!280 = !DILocation(line: 150, column: 17, scope: !206)
!281 = !DILocation(line: 150, column: 2, scope: !206)
!282 = !DILocation(line: 150, column: 7, scope: !206)
!283 = !DILocation(line: 150, column: 23, scope: !206)
!284 = !DILocation(line: 151, column: 1, scope: !206)
!285 = distinct !DISubprogram(name: "command_add_args", scope: !13, file: !13, line: 160, type: !286, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !16, null}
!288 = !DILocalVariable(name: "cmd", arg: 1, scope: !285, file: !13, line: 160, type: !16)
!289 = !DILocation(line: 160, column: 34, scope: !285)
!290 = !DILocalVariable(name: "args", scope: !285, file: !13, line: 162, type: !222)
!291 = !DILocation(line: 162, column: 10, scope: !285)
!292 = !DILocation(line: 164, column: 1, scope: !285)
!293 = !DILocation(line: 165, column: 19, scope: !285)
!294 = !DILocation(line: 165, column: 24, scope: !285)
!295 = !DILocation(line: 165, column: 2, scope: !285)
!296 = !DILocation(line: 166, column: 1, scope: !285)
!297 = !DILocation(line: 167, column: 1, scope: !285)
!298 = distinct !DISubprogram(name: "command_exec", scope: !13, file: !13, line: 179, type: !71, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!299 = !DILocalVariable(name: "cmd", arg: 1, scope: !298, file: !13, line: 179, type: !16)
!300 = !DILocation(line: 179, column: 30, scope: !298)
!301 = !DILocation(line: 181, column: 9, scope: !298)
!302 = !DILocation(line: 181, column: 14, scope: !298)
!303 = !DILocation(line: 181, column: 40, scope: !298)
!304 = !DILocation(line: 181, column: 45, scope: !298)
!305 = !DILocation(line: 181, column: 2, scope: !298)
!306 = !DILocation(line: 182, column: 9, scope: !298)
!307 = !DILocation(line: 182, column: 41, scope: !298)
!308 = !DILocation(line: 182, column: 46, scope: !298)
!309 = !DILocation(line: 182, column: 52, scope: !298)
!310 = !DILocation(line: 182, column: 57, scope: !298)
!311 = !DILocation(line: 182, column: 2, scope: !312)
!312 = !DILexicalBlockFile(scope: !298, file: !13, discriminator: 1)
!313 = !DILocation(line: 182, column: 2, scope: !298)
!314 = !DILocation(line: 183, column: 1, scope: !298)
!315 = distinct !DISubprogram(name: "command_shell", scope: !13, file: !13, line: 193, type: !316, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !21, !21}
!318 = !DILocalVariable(name: "cmd", arg: 1, scope: !315, file: !13, line: 193, type: !21)
!319 = !DILocation(line: 193, column: 27, scope: !315)
!320 = !DILocalVariable(name: "name", arg: 2, scope: !315, file: !13, line: 193, type: !21)
!321 = !DILocation(line: 193, column: 44, scope: !315)
!322 = !DILocalVariable(name: "shell", scope: !315, file: !13, line: 195, type: !21)
!323 = !DILocation(line: 195, column: 14, scope: !315)
!324 = !DILocalVariable(name: "mode", scope: !315, file: !13, line: 196, type: !21)
!325 = !DILocation(line: 196, column: 14, scope: !315)
!326 = !DILocation(line: 198, column: 6, scope: !327)
!327 = distinct !DILexicalBlock(scope: !315, file: !13, line: 198, column: 6)
!328 = !DILocation(line: 198, column: 10, scope: !327)
!329 = !DILocation(line: 198, column: 6, scope: !315)
!330 = !DILocation(line: 199, column: 8, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !13, line: 198, column: 18)
!332 = !DILocation(line: 200, column: 11, scope: !331)
!333 = !DILocation(line: 200, column: 9, scope: !331)
!334 = !DILocation(line: 201, column: 2, scope: !331)
!335 = !DILocation(line: 202, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !327, file: !13, line: 201, column: 9)
!337 = !DILocation(line: 203, column: 9, scope: !336)
!338 = !DILocation(line: 206, column: 19, scope: !339)
!339 = distinct !DILexicalBlock(scope: !315, file: !13, line: 206, column: 6)
!340 = !DILocation(line: 206, column: 6, scope: !339)
!341 = !DILocation(line: 206, column: 6, scope: !315)
!342 = !DILocation(line: 207, column: 9, scope: !339)
!343 = !DILocation(line: 207, column: 3, scope: !339)
!344 = !DILocation(line: 209, column: 9, scope: !315)
!345 = !DILocation(line: 209, column: 16, scope: !315)
!346 = !DILocation(line: 209, column: 23, scope: !315)
!347 = !DILocation(line: 209, column: 29, scope: !315)
!348 = !DILocation(line: 209, column: 2, scope: !315)
!349 = !DILocation(line: 210, column: 9, scope: !315)
!350 = !DILocation(line: 210, column: 41, scope: !315)
!351 = !DILocation(line: 210, column: 47, scope: !315)
!352 = !DILocation(line: 210, column: 2, scope: !353)
!353 = !DILexicalBlockFile(scope: !315, file: !13, discriminator: 1)
!354 = !DILocation(line: 210, column: 2, scope: !315)
!355 = !DILocation(line: 211, column: 1, scope: !315)
!356 = distinct !DISubprogram(name: "str_is_unset", scope: !357, file: !357, line: 41, type: !358, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!357 = !DIFile(filename: "../../lib/dpkg/string.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !21}
!360 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!361 = !DILocalVariable(name: "str", arg: 1, scope: !356, file: !357, line: 41, type: !21)
!362 = !DILocation(line: 41, column: 26, scope: !356)
!363 = !DILocation(line: 43, column: 9, scope: !356)
!364 = !DILocation(line: 43, column: 13, scope: !356)
!365 = !DILocation(line: 43, column: 20, scope: !356)
!366 = !DILocation(line: 43, column: 23, scope: !367)
!367 = !DILexicalBlockFile(scope: !356, file: !357, discriminator: 1)
!368 = !DILocation(line: 43, column: 30, scope: !367)
!369 = !DILocation(line: 43, column: 20, scope: !367)
!370 = !DILocation(line: 43, column: 2, scope: !371)
!371 = !DILexicalBlockFile(scope: !356, file: !357, discriminator: 2)
