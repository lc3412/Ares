; ModuleID = './[inter]src--io.o.i'
source_filename = "./[inter]src--io.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@verbose = internal global i32 0, align 4
@silent = internal global i32 0, align 4
@debug = internal global i32 0, align 4
@logfunc = internal global void (i32, i8*)* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@progname = internal global i8* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"-E- %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"-W- %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"-D- %s: %s\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"-E- : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"-W- : %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"-D- : %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @strdup_vprintf(i8*, %struct.__va_list_tag*) #0 !dbg !47 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.__va_list_tag*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !59, metadata !60), !dbg !61
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %5, metadata !62, metadata !60), !dbg !63
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !64, metadata !60), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %7, metadata !73, metadata !60), !dbg !74
  call void @llvm.dbg.declare(metadata i8** %8, metadata !75, metadata !60), !dbg !76
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !77
  %10 = load %struct.__va_list_tag*, %struct.__va_list_tag** %5, align 8, !dbg !77
  %11 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !77
  %12 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !77
  call void @llvm.va_copy(i8* %11, i8* %12), !dbg !77
  %13 = load i8*, i8** %4, align 8, !dbg !78
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !79
  %15 = call i32 @vsnprintf(i8* null, i64 0, i8* %13, %struct.__va_list_tag* %14) #2, !dbg !80
  %16 = add nsw i32 %15, 1, !dbg !81
  store i32 %16, i32* %7, align 4, !dbg !82
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !83
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !83
  call void @llvm.va_end(i8* %18), !dbg !83
  %19 = load i32, i32* %7, align 4, !dbg !84
  %20 = add nsw i32 %19, 1, !dbg !85
  %21 = sext i32 %20 to i64, !dbg !84
  %22 = call noalias i8* @malloc(i64 %21) #2, !dbg !86
  store i8* %22, i8** %8, align 8, !dbg !87
  %23 = load i8*, i8** %8, align 8, !dbg !88
  %24 = icmp ne i8* %23, null, !dbg !88
  br i1 %24, label %26, label %25, !dbg !90

; <label>:25:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !91
  br label %34, !dbg !91

; <label>:26:                                     ; preds = %2
  %27 = load i8*, i8** %8, align 8, !dbg !92
  %28 = load i32, i32* %7, align 4, !dbg !93
  %29 = sext i32 %28 to i64, !dbg !93
  %30 = load i8*, i8** %4, align 8, !dbg !94
  %31 = load %struct.__va_list_tag*, %struct.__va_list_tag** %5, align 8, !dbg !95
  %32 = call i32 @vsnprintf(i8* %27, i64 %29, i8* %30, %struct.__va_list_tag* %31) #2, !dbg !96
  %33 = load i8*, i8** %8, align 8, !dbg !97
  store i8* %33, i8** %3, align 8, !dbg !98
  br label %34, !dbg !98

; <label>:34:                                     ; preds = %26, %25
  %35 = load i8*, i8** %3, align 8, !dbg !99
  ret i8* %35, !dbg !99
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define i8* @strdup_printf(i8*, ...) #0 !dbg !100 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !103, metadata !60), !dbg !104
  call void @llvm.dbg.declare(metadata i8** %3, metadata !105, metadata !60), !dbg !106
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !107, metadata !60), !dbg !108
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !109
  %6 = bitcast %struct.__va_list_tag* %5 to i8*, !dbg !109
  call void @llvm.va_start(i8* %6), !dbg !109
  %7 = load i8*, i8** %2, align 8, !dbg !110
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !111
  %9 = call i8* @strdup_vprintf(i8* %7, %struct.__va_list_tag* %8), !dbg !112
  store i8* %9, i8** %3, align 8, !dbg !113
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !114
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !114
  call void @llvm.va_end(i8* %11), !dbg !114
  %12 = load i8*, i8** %3, align 8, !dbg !115
  ret i8* %12, !dbg !116
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @Mat_SetVerbose(i32, i32) #0 !dbg !117 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !120, metadata !60), !dbg !121
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !122, metadata !60), !dbg !123
  %5 = load i32, i32* %3, align 4, !dbg !124
  store i32 %5, i32* @verbose, align 4, !dbg !125
  %6 = load i32, i32* %4, align 4, !dbg !126
  store i32 %6, i32* @silent, align 4, !dbg !127
  ret i32 0, !dbg !128
}

; Function Attrs: nounwind uwtable
define i32 @Mat_SetDebug(i32) #0 !dbg !129 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !132, metadata !60), !dbg !133
  %3 = load i32, i32* %2, align 4, !dbg !134
  store i32 %3, i32* @debug, align 4, !dbg !135
  ret i32 0, !dbg !136
}

; Function Attrs: nounwind uwtable
define i32 @Mat_Message(i8*, ...) #0 !dbg !137 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !140, metadata !60), !dbg !141
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !142, metadata !60), !dbg !143
  %5 = load i32, i32* @silent, align 4, !dbg !144
  %6 = icmp ne i32 %5, 0, !dbg !144
  br i1 %6, label %7, label %8, !dbg !146

; <label>:7:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !147
  br label %19, !dbg !147

; <label>:8:                                      ; preds = %1
  %9 = load void (i32, i8*)*, void (i32, i8*)** @logfunc, align 8, !dbg !149
  %10 = icmp ne void (i32, i8*)* %9, null, !dbg !149
  br i1 %10, label %12, label %11, !dbg !151

; <label>:11:                                     ; preds = %8
  store i32 0, i32* %2, align 4, !dbg !152
  br label %19, !dbg !152

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !154
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !154
  call void @llvm.va_start(i8* %14), !dbg !154
  %15 = load i8*, i8** %3, align 8, !dbg !155
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !156
  call void @mat_log(i32 8, i8* %15, %struct.__va_list_tag* %16), !dbg !157
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !158
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !158
  call void @llvm.va_end(i8* %18), !dbg !158
  store i32 0, i32* %2, align 4, !dbg !159
  br label %19, !dbg !159

; <label>:19:                                     ; preds = %12, %11, %7
  %20 = load i32, i32* %2, align 4, !dbg !160
  ret i32 %20, !dbg !160
}

; Function Attrs: nounwind uwtable
define internal void @mat_log(i32, i8*, %struct.__va_list_tag*) #0 !dbg !161 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !164, metadata !60), !dbg !165
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !166, metadata !60), !dbg !167
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !168, metadata !60), !dbg !169
  call void @llvm.dbg.declare(metadata i8** %7, metadata !170, metadata !60), !dbg !171
  %8 = load void (i32, i8*)*, void (i32, i8*)** @logfunc, align 8, !dbg !172
  %9 = icmp ne void (i32, i8*)* %8, null, !dbg !172
  br i1 %9, label %11, label %10, !dbg !174

; <label>:10:                                     ; preds = %3
  br label %19, !dbg !175

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %5, align 8, !dbg !177
  %13 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !178
  %14 = call i8* @strdup_vprintf(i8* %12, %struct.__va_list_tag* %13), !dbg !179
  store i8* %14, i8** %7, align 8, !dbg !180
  %15 = load void (i32, i8*)*, void (i32, i8*)** @logfunc, align 8, !dbg !181
  %16 = load i32, i32* %4, align 4, !dbg !182
  %17 = load i8*, i8** %7, align 8, !dbg !183
  call void %15(i32 %16, i8* %17), !dbg !184
  %18 = load i8*, i8** %7, align 8, !dbg !185
  call void @free(i8* %18) #2, !dbg !186
  br label %19, !dbg !187

; <label>:19:                                     ; preds = %11, %10
  ret void, !dbg !188
}

; Function Attrs: nounwind uwtable
define i32 @Mat_DebugMessage(i32, i8*, ...) #0 !dbg !189 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !192, metadata !60), !dbg !193
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !194, metadata !60), !dbg !195
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !196, metadata !60), !dbg !197
  %7 = load i32, i32* @silent, align 4, !dbg !198
  %8 = icmp ne i32 %7, 0, !dbg !198
  br i1 %8, label %9, label %10, !dbg !200

; <label>:9:                                      ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !201
  br label %22, !dbg !201

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !203
  %12 = load i32, i32* @debug, align 4, !dbg !205
  %13 = icmp sgt i32 %11, %12, !dbg !206
  br i1 %13, label %14, label %15, !dbg !207

; <label>:14:                                     ; preds = %10
  store i32 0, i32* %3, align 4, !dbg !208
  br label %22, !dbg !208

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !210
  %17 = bitcast %struct.__va_list_tag* %16 to i8*, !dbg !210
  call void @llvm.va_start(i8* %17), !dbg !210
  %18 = load i8*, i8** %5, align 8, !dbg !211
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !212
  call void @mat_log(i32 16, i8* %18, %struct.__va_list_tag* %19), !dbg !213
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !214
  %21 = bitcast %struct.__va_list_tag* %20 to i8*, !dbg !214
  call void @llvm.va_end(i8* %21), !dbg !214
  store i32 0, i32* %3, align 4, !dbg !215
  br label %22, !dbg !215

; <label>:22:                                     ; preds = %15, %14, %9
  %23 = load i32, i32* %3, align 4, !dbg !216
  ret i32 %23, !dbg !216
}

; Function Attrs: nounwind uwtable
define i32 @Mat_VerbMessage(i32, i8*, ...) #0 !dbg !217 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !218, metadata !60), !dbg !219
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !220, metadata !60), !dbg !221
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !222, metadata !60), !dbg !223
  %7 = load i32, i32* @silent, align 4, !dbg !224
  %8 = icmp ne i32 %7, 0, !dbg !224
  br i1 %8, label %9, label %10, !dbg !226

; <label>:9:                                      ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !227
  br label %22, !dbg !227

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !229
  %12 = load i32, i32* @verbose, align 4, !dbg !231
  %13 = icmp sgt i32 %11, %12, !dbg !232
  br i1 %13, label %14, label %15, !dbg !233

; <label>:14:                                     ; preds = %10
  store i32 0, i32* %3, align 4, !dbg !234
  br label %22, !dbg !234

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !236
  %17 = bitcast %struct.__va_list_tag* %16 to i8*, !dbg !236
  call void @llvm.va_start(i8* %17), !dbg !236
  %18 = load i8*, i8** %5, align 8, !dbg !237
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !238
  call void @mat_log(i32 8, i8* %18, %struct.__va_list_tag* %19), !dbg !239
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !240
  %21 = bitcast %struct.__va_list_tag* %20 to i8*, !dbg !240
  call void @llvm.va_end(i8* %21), !dbg !240
  store i32 0, i32* %3, align 4, !dbg !241
  br label %22, !dbg !241

; <label>:22:                                     ; preds = %15, %14, %9
  %23 = load i32, i32* %3, align 4, !dbg !242
  ret i32 %23, !dbg !242
}

; Function Attrs: nounwind uwtable
define void @Mat_Critical(i8*, ...) #0 !dbg !243 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !246, metadata !60), !dbg !247
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !248, metadata !60), !dbg !249
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !250
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !250
  call void @llvm.va_start(i8* %5), !dbg !250
  %6 = load i8*, i8** %2, align 8, !dbg !251
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !252
  call void @mat_log(i32 2, i8* %6, %struct.__va_list_tag* %7), !dbg !253
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !254
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !254
  call void @llvm.va_end(i8* %9), !dbg !254
  ret void, !dbg !255
}

; Function Attrs: noreturn nounwind uwtable
define void @Mat_Error(i8*, ...) #4 !dbg !256 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !257, metadata !60), !dbg !258
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !259, metadata !60), !dbg !260
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !261
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !261
  call void @llvm.va_start(i8* %5), !dbg !261
  %6 = load i8*, i8** %2, align 8, !dbg !262
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !263
  call void @mat_log(i32 1, i8* %6, %struct.__va_list_tag* %7), !dbg !264
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !265
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !265
  call void @llvm.va_end(i8* %9), !dbg !265
  call void @abort() #7, !dbg !266
  unreachable, !dbg !266
                                                  ; No predecessors!
  ret void, !dbg !267
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: nounwind uwtable
define void @Mat_Help(i8**) #0 !dbg !268 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !272, metadata !60), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %3, metadata !274, metadata !60), !dbg !275
  store i32 0, i32* %3, align 4, !dbg !276
  br label %4, !dbg !278

; <label>:4:                                      ; preds = %18, %1
  %5 = load i32, i32* %3, align 4, !dbg !279
  %6 = sext i32 %5 to i64, !dbg !282
  %7 = load i8**, i8*** %2, align 8, !dbg !282
  %8 = getelementptr inbounds i8*, i8** %7, i64 %6, !dbg !282
  %9 = load i8*, i8** %8, align 8, !dbg !282
  %10 = icmp ne i8* %9, null, !dbg !283
  br i1 %10, label %11, label %21, !dbg !284

; <label>:11:                                     ; preds = %4
  %12 = load i32, i32* %3, align 4, !dbg !285
  %13 = sext i32 %12 to i64, !dbg !286
  %14 = load i8**, i8*** %2, align 8, !dbg !286
  %15 = getelementptr inbounds i8*, i8** %14, i64 %13, !dbg !286
  %16 = load i8*, i8** %15, align 8, !dbg !286
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %16), !dbg !287
  br label %18, !dbg !287

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %3, align 4, !dbg !288
  %20 = add nsw i32 %19, 1, !dbg !288
  store i32 %20, i32* %3, align 4, !dbg !288
  br label %4, !dbg !290, !llvm.loop !291

; <label>:21:                                     ; preds = %4
  call void @exit(i32 0) #7, !dbg !293
  unreachable, !dbg !293
                                                  ; No predecessors!
  ret void, !dbg !294
}

declare i32 @printf(i8*, ...) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define i32 @Mat_LogClose() #0 !dbg !295 {
  store void (i32, i8*)* null, void (i32, i8*)** @logfunc, align 8, !dbg !298
  ret i32 1, !dbg !299
}

; Function Attrs: nounwind uwtable
define i32 @Mat_LogInit(i8*) #0 !dbg !300 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !303, metadata !60), !dbg !304
  store void (i32, i8*)* @mat_logfunc, void (i32, i8*)** @logfunc, align 8, !dbg !305
  store i32 0, i32* @verbose, align 4, !dbg !306
  store i32 0, i32* @silent, align 4, !dbg !307
  ret i32 0, !dbg !308
}

; Function Attrs: nounwind uwtable
define internal void @mat_logfunc(i32, i8*) #0 !dbg !309 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !310, metadata !60), !dbg !311
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !312, metadata !60), !dbg !313
  %5 = load i8*, i8** @progname, align 8, !dbg !314
  %6 = icmp ne i8* %5, null, !dbg !314
  br i1 %6, label %7, label %66, !dbg !316

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %3, align 4, !dbg !317
  %9 = and i32 %8, 2, !dbg !320
  %10 = icmp ne i32 %9, 0, !dbg !320
  br i1 %10, label %11, label %18, !dbg !321

; <label>:11:                                     ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !322
  %13 = load i8*, i8** @progname, align 8, !dbg !324
  %14 = load i8*, i8** %4, align 8, !dbg !325
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* %13, i8* %14), !dbg !326
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !327
  %17 = call i32 @fflush(%struct._IO_FILE* %16), !dbg !328
  br label %65, !dbg !329

; <label>:18:                                     ; preds = %7
  %19 = load i32, i32* %3, align 4, !dbg !330
  %20 = and i32 %19, 1, !dbg !333
  %21 = icmp ne i32 %20, 0, !dbg !333
  br i1 %21, label %22, label %29, !dbg !330

; <label>:22:                                     ; preds = %18
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !334
  %24 = load i8*, i8** @progname, align 8, !dbg !336
  %25 = load i8*, i8** %4, align 8, !dbg !337
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* %24, i8* %25), !dbg !338
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !339
  %28 = call i32 @fflush(%struct._IO_FILE* %27), !dbg !340
  call void @abort() #7, !dbg !341
  unreachable, !dbg !341

; <label>:29:                                     ; preds = %18
  %30 = load i32, i32* %3, align 4, !dbg !342
  %31 = and i32 %30, 4, !dbg !344
  %32 = icmp ne i32 %31, 0, !dbg !344
  br i1 %32, label %33, label %40, !dbg !345

; <label>:33:                                     ; preds = %29
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !346
  %35 = load i8*, i8** @progname, align 8, !dbg !348
  %36 = load i8*, i8** %4, align 8, !dbg !349
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* %35, i8* %36), !dbg !350
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !351
  %39 = call i32 @fflush(%struct._IO_FILE* %38), !dbg !352
  br label %63, !dbg !353

; <label>:40:                                     ; preds = %29
  %41 = load i32, i32* %3, align 4, !dbg !354
  %42 = and i32 %41, 16, !dbg !357
  %43 = icmp ne i32 %42, 0, !dbg !357
  br i1 %43, label %44, label %51, !dbg !354

; <label>:44:                                     ; preds = %40
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !358
  %46 = load i8*, i8** @progname, align 8, !dbg !360
  %47 = load i8*, i8** %4, align 8, !dbg !361
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* %46, i8* %47), !dbg !362
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !363
  %50 = call i32 @fflush(%struct._IO_FILE* %49), !dbg !364
  br label %62, !dbg !365

; <label>:51:                                     ; preds = %40
  %52 = load i32, i32* %3, align 4, !dbg !366
  %53 = and i32 %52, 8, !dbg !369
  %54 = icmp ne i32 %53, 0, !dbg !369
  br i1 %54, label %55, label %61, !dbg !366

; <label>:55:                                     ; preds = %51
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !370
  %57 = load i8*, i8** %4, align 8, !dbg !372
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %57), !dbg !373
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !374
  %60 = call i32 @fflush(%struct._IO_FILE* %59), !dbg !375
  br label %61, !dbg !376

; <label>:61:                                     ; preds = %55, %51
  br label %62

; <label>:62:                                     ; preds = %61, %44
  br label %63

; <label>:63:                                     ; preds = %62, %33
  br label %64

; <label>:64:                                     ; preds = %63
  br label %65

; <label>:65:                                     ; preds = %64, %11
  br label %121, !dbg !377

; <label>:66:                                     ; preds = %2
  %67 = load i32, i32* %3, align 4, !dbg !378
  %68 = and i32 %67, 2, !dbg !381
  %69 = icmp ne i32 %68, 0, !dbg !381
  br i1 %69, label %70, label %76, !dbg !382

; <label>:70:                                     ; preds = %66
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !383
  %72 = load i8*, i8** %4, align 8, !dbg !385
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* %72), !dbg !386
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !387
  %75 = call i32 @fflush(%struct._IO_FILE* %74), !dbg !388
  br label %120, !dbg !389

; <label>:76:                                     ; preds = %66
  %77 = load i32, i32* %3, align 4, !dbg !390
  %78 = and i32 %77, 1, !dbg !393
  %79 = icmp ne i32 %78, 0, !dbg !393
  br i1 %79, label %80, label %86, !dbg !390

; <label>:80:                                     ; preds = %76
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !394
  %82 = load i8*, i8** %4, align 8, !dbg !396
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* %82), !dbg !397
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !398
  %85 = call i32 @fflush(%struct._IO_FILE* %84), !dbg !399
  call void @abort() #7, !dbg !400
  unreachable, !dbg !400

; <label>:86:                                     ; preds = %76
  %87 = load i32, i32* %3, align 4, !dbg !401
  %88 = and i32 %87, 4, !dbg !403
  %89 = icmp ne i32 %88, 0, !dbg !403
  br i1 %89, label %90, label %96, !dbg !404

; <label>:90:                                     ; preds = %86
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !405
  %92 = load i8*, i8** %4, align 8, !dbg !407
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %92), !dbg !408
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !409
  %95 = call i32 @fflush(%struct._IO_FILE* %94), !dbg !410
  br label %118, !dbg !411

; <label>:96:                                     ; preds = %86
  %97 = load i32, i32* %3, align 4, !dbg !412
  %98 = and i32 %97, 16, !dbg !415
  %99 = icmp ne i32 %98, 0, !dbg !415
  br i1 %99, label %100, label %106, !dbg !412

; <label>:100:                                    ; preds = %96
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !416
  %102 = load i8*, i8** %4, align 8, !dbg !418
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* %102), !dbg !419
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !420
  %105 = call i32 @fflush(%struct._IO_FILE* %104), !dbg !421
  br label %117, !dbg !422

; <label>:106:                                    ; preds = %96
  %107 = load i32, i32* %3, align 4, !dbg !423
  %108 = and i32 %107, 8, !dbg !426
  %109 = icmp ne i32 %108, 0, !dbg !426
  br i1 %109, label %110, label %116, !dbg !423

; <label>:110:                                    ; preds = %106
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !427
  %112 = load i8*, i8** %4, align 8, !dbg !429
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %112), !dbg !430
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !431
  %115 = call i32 @fflush(%struct._IO_FILE* %114), !dbg !432
  br label %116, !dbg !433

; <label>:116:                                    ; preds = %110, %106
  br label %117

; <label>:117:                                    ; preds = %116, %100
  br label %118

; <label>:118:                                    ; preds = %117, %90
  br label %119

; <label>:119:                                    ; preds = %118
  br label %120

; <label>:120:                                    ; preds = %119, %70
  br label %121

; <label>:121:                                    ; preds = %120, %65
  ret void, !dbg !434
}

; Function Attrs: nounwind uwtable
define i32 @Mat_LogInitFunc(i8*, void (i32, i8*)*) #0 !dbg !435 {
  %3 = alloca i8*, align 8
  %4 = alloca void (i32, i8*)*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !438, metadata !60), !dbg !439
  store void (i32, i8*)* %1, void (i32, i8*)** %4, align 8
  call void @llvm.dbg.declare(metadata void (i32, i8*)** %4, metadata !440, metadata !60), !dbg !441
  %5 = load void (i32, i8*)*, void (i32, i8*)** %4, align 8, !dbg !442
  store void (i32, i8*)* %5, void (i32, i8*)** @logfunc, align 8, !dbg !443
  %6 = load i8*, i8** %3, align 8, !dbg !444
  store i8* %6, i8** @progname, align 8, !dbg !445
  store i32 0, i32* @verbose, align 4, !dbg !446
  store i32 0, i32* @silent, align 4, !dbg !447
  ret i32 0, !dbg !448
}

; Function Attrs: nounwind uwtable
define void @Mat_Warning(i8*, ...) #0 !dbg !449 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !450, metadata !60), !dbg !451
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !452, metadata !60), !dbg !453
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !454
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !454
  call void @llvm.va_start(i8* %5), !dbg !454
  %6 = load i8*, i8** %2, align 8, !dbg !455
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !456
  call void @mat_log(i32 4, i8* %6, %struct.__va_list_tag* %7), !dbg !457
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !458
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !458
  call void @llvm.va_end(i8* %9), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: nounwind uwtable
define i64 @Mat_SizeOf(i32) #0 !dbg !460 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !466, metadata !60), !dbg !467
  %4 = load i32, i32* %3, align 4, !dbg !468
  switch i32 %4, label %18 [
    i32 9, label %5
    i32 7, label %6
    i32 12, label %7
    i32 13, label %8
    i32 5, label %9
    i32 6, label %10
    i32 3, label %11
    i32 4, label %12
    i32 1, label %13
    i32 2, label %14
    i32 16, label %15
    i32 17, label %16
    i32 18, label %17
  ], !dbg !469

; <label>:5:                                      ; preds = %1
  store i64 8, i64* %2, align 8, !dbg !470
  br label %19, !dbg !470

; <label>:6:                                      ; preds = %1
  store i64 4, i64* %2, align 8, !dbg !472
  br label %19, !dbg !472

; <label>:7:                                      ; preds = %1
  store i64 8, i64* %2, align 8, !dbg !473
  br label %19, !dbg !473

; <label>:8:                                      ; preds = %1
  store i64 8, i64* %2, align 8, !dbg !474
  br label %19, !dbg !474

; <label>:9:                                      ; preds = %1
  store i64 4, i64* %2, align 8, !dbg !475
  br label %19, !dbg !475

; <label>:10:                                     ; preds = %1
  store i64 4, i64* %2, align 8, !dbg !476
  br label %19, !dbg !476

; <label>:11:                                     ; preds = %1
  store i64 2, i64* %2, align 8, !dbg !477
  br label %19, !dbg !477

; <label>:12:                                     ; preds = %1
  store i64 2, i64* %2, align 8, !dbg !478
  br label %19, !dbg !478

; <label>:13:                                     ; preds = %1
  store i64 1, i64* %2, align 8, !dbg !479
  br label %19, !dbg !479

; <label>:14:                                     ; preds = %1
  store i64 1, i64* %2, align 8, !dbg !480
  br label %19, !dbg !480

; <label>:15:                                     ; preds = %1
  store i64 1, i64* %2, align 8, !dbg !481
  br label %19, !dbg !481

; <label>:16:                                     ; preds = %1
  store i64 2, i64* %2, align 8, !dbg !482
  br label %19, !dbg !482

; <label>:17:                                     ; preds = %1
  store i64 4, i64* %2, align 8, !dbg !483
  br label %19, !dbg !483

; <label>:18:                                     ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !484
  br label %19, !dbg !484

; <label>:19:                                     ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %20 = load i64, i64* %2, align 8, !dbg !485
  ret i64 %20, !dbg !485
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #6

declare i32 @fflush(%struct._IO_FILE*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !27, globals: !31)
!1 = !DIFile(filename: "[inter]src--io.o.i", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "matio_types", file: !4, line: 77, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "matio.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!6 = !DIEnumerator(name: "MAT_T_UNKNOWN", value: 0)
!7 = !DIEnumerator(name: "MAT_T_INT8", value: 1)
!8 = !DIEnumerator(name: "MAT_T_UINT8", value: 2)
!9 = !DIEnumerator(name: "MAT_T_INT16", value: 3)
!10 = !DIEnumerator(name: "MAT_T_UINT16", value: 4)
!11 = !DIEnumerator(name: "MAT_T_INT32", value: 5)
!12 = !DIEnumerator(name: "MAT_T_UINT32", value: 6)
!13 = !DIEnumerator(name: "MAT_T_SINGLE", value: 7)
!14 = !DIEnumerator(name: "MAT_T_DOUBLE", value: 9)
!15 = !DIEnumerator(name: "MAT_T_INT64", value: 12)
!16 = !DIEnumerator(name: "MAT_T_UINT64", value: 13)
!17 = !DIEnumerator(name: "MAT_T_MATRIX", value: 14)
!18 = !DIEnumerator(name: "MAT_T_COMPRESSED", value: 15)
!19 = !DIEnumerator(name: "MAT_T_UTF8", value: 16)
!20 = !DIEnumerator(name: "MAT_T_UTF16", value: 17)
!21 = !DIEnumerator(name: "MAT_T_UTF32", value: 18)
!22 = !DIEnumerator(name: "MAT_T_STRING", value: 20)
!23 = !DIEnumerator(name: "MAT_T_CELL", value: 21)
!24 = !DIEnumerator(name: "MAT_T_STRUCT", value: 22)
!25 = !DIEnumerator(name: "MAT_T_ARRAY", value: 23)
!26 = !DIEnumerator(name: "MAT_T_FUNCTION", value: 24)
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !{!32, !35, !36, !37, !41}
!32 = distinct !DIGlobalVariable(name: "verbose", scope: !0, file: !33, line: 225, type: !34, isLocal: true, isDefinition: true, variable: i32* @verbose)
!33 = !DIFile(filename: "io.c", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.a")
!34 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!35 = distinct !DIGlobalVariable(name: "silent", scope: !0, file: !33, line: 233, type: !34, isLocal: true, isDefinition: true, variable: i32* @silent)
!36 = distinct !DIGlobalVariable(name: "debug", scope: !0, file: !33, line: 217, type: !34, isLocal: true, isDefinition: true, variable: i32* @debug)
!37 = distinct !DIGlobalVariable(name: "logfunc", scope: !0, file: !33, line: 42, type: !38, isLocal: true, isDefinition: true, variable: void (i32, i8*)** @logfunc)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !34, !28}
!41 = distinct !DIGlobalVariable(name: "progname", scope: !0, file: !33, line: 43, type: !42, isLocal: true, isDefinition: true, variable: i8** @progname)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!44 = !{i32 2, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!47 = distinct !DISubprogram(name: "strdup_vprintf", scope: !33, file: !33, line: 53, type: !48, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!48 = !DISubroutineType(types: !49)
!49 = !{!28, !42, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, align: 64, elements: !52)
!52 = !{!53, !55, !56, !57}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !51, file: !1, baseType: !54, size: 32, align: 32)
!54 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !51, file: !1, baseType: !54, size: 32, align: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !51, file: !1, baseType: !30, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !51, file: !1, baseType: !30, size: 64, align: 64, offset: 128)
!58 = !{}
!59 = !DILocalVariable(name: "format", arg: 1, scope: !47, file: !33, line: 53, type: !42)
!60 = !DIExpression()
!61 = !DILocation(line: 53, column: 28, scope: !47)
!62 = !DILocalVariable(name: "ap", arg: 2, scope: !47, file: !33, line: 53, type: !50)
!63 = !DILocation(line: 53, column: 44, scope: !47)
!64 = !DILocalVariable(name: "ap2", scope: !47, file: !33, line: 55, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !66, line: 98, baseType: !67)
!66 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.a")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !66, line: 40, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 55, baseType: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, align: 64, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DILocation(line: 55, column: 13, scope: !47)
!73 = !DILocalVariable(name: "size", scope: !47, file: !33, line: 56, type: !34)
!74 = !DILocation(line: 56, column: 9, scope: !47)
!75 = !DILocalVariable(name: "buffer", scope: !47, file: !33, line: 57, type: !28)
!76 = !DILocation(line: 57, column: 11, scope: !47)
!77 = !DILocation(line: 59, column: 4, scope: !47)
!78 = !DILocation(line: 60, column: 34, scope: !47)
!79 = !DILocation(line: 60, column: 42, scope: !47)
!80 = !DILocation(line: 60, column: 12, scope: !47)
!81 = !DILocation(line: 60, column: 46, scope: !47)
!82 = !DILocation(line: 60, column: 10, scope: !47)
!83 = !DILocation(line: 61, column: 4, scope: !47)
!84 = !DILocation(line: 63, column: 28, scope: !47)
!85 = !DILocation(line: 63, column: 32, scope: !47)
!86 = !DILocation(line: 63, column: 21, scope: !47)
!87 = !DILocation(line: 63, column: 12, scope: !47)
!88 = !DILocation(line: 64, column: 11, scope: !89)
!89 = distinct !DILexicalBlock(scope: !47, file: !33, line: 64, column: 10)
!90 = !DILocation(line: 64, column: 10, scope: !47)
!91 = !DILocation(line: 65, column: 9, scope: !89)
!92 = !DILocation(line: 67, column: 15, scope: !47)
!93 = !DILocation(line: 67, column: 23, scope: !47)
!94 = !DILocation(line: 67, column: 29, scope: !47)
!95 = !DILocation(line: 67, column: 37, scope: !47)
!96 = !DILocation(line: 67, column: 5, scope: !47)
!97 = !DILocation(line: 68, column: 12, scope: !47)
!98 = !DILocation(line: 68, column: 5, scope: !47)
!99 = !DILocation(line: 69, column: 1, scope: !47)
!100 = distinct !DISubprogram(name: "strdup_printf", scope: !33, file: !33, line: 78, type: !101, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!101 = !DISubroutineType(types: !102)
!102 = !{!28, !42, null}
!103 = !DILocalVariable(name: "format", arg: 1, scope: !100, file: !33, line: 78, type: !42)
!104 = !DILocation(line: 78, column: 27, scope: !100)
!105 = !DILocalVariable(name: "buffer", scope: !100, file: !33, line: 80, type: !28)
!106 = !DILocation(line: 80, column: 11, scope: !100)
!107 = !DILocalVariable(name: "ap", scope: !100, file: !33, line: 81, type: !65)
!108 = !DILocation(line: 81, column: 13, scope: !100)
!109 = !DILocation(line: 82, column: 4, scope: !100)
!110 = !DILocation(line: 83, column: 29, scope: !100)
!111 = !DILocation(line: 83, column: 37, scope: !100)
!112 = !DILocation(line: 83, column: 14, scope: !100)
!113 = !DILocation(line: 83, column: 12, scope: !100)
!114 = !DILocation(line: 84, column: 4, scope: !100)
!115 = !DILocation(line: 85, column: 12, scope: !100)
!116 = !DILocation(line: 85, column: 5, scope: !100)
!117 = distinct !DISubprogram(name: "Mat_SetVerbose", scope: !33, file: !33, line: 244, type: !118, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!118 = !DISubroutineType(types: !119)
!119 = !{!34, !34, !34}
!120 = !DILocalVariable(name: "verb", arg: 1, scope: !117, file: !33, line: 244, type: !34)
!121 = !DILocation(line: 244, column: 21, scope: !117)
!122 = !DILocalVariable(name: "s", arg: 2, scope: !117, file: !33, line: 244, type: !34)
!123 = !DILocation(line: 244, column: 31, scope: !117)
!124 = !DILocation(line: 246, column: 15, scope: !117)
!125 = !DILocation(line: 246, column: 13, scope: !117)
!126 = !DILocation(line: 247, column: 14, scope: !117)
!127 = !DILocation(line: 247, column: 12, scope: !117)
!128 = !DILocation(line: 249, column: 5, scope: !117)
!129 = distinct !DISubprogram(name: "Mat_SetDebug", scope: !33, file: !33, line: 260, type: !130, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!130 = !DISubroutineType(types: !131)
!131 = !{!34, !34}
!132 = !DILocalVariable(name: "d", arg: 1, scope: !129, file: !33, line: 260, type: !34)
!133 = !DILocation(line: 260, column: 19, scope: !129)
!134 = !DILocation(line: 262, column: 13, scope: !129)
!135 = !DILocation(line: 262, column: 11, scope: !129)
!136 = !DILocation(line: 263, column: 5, scope: !129)
!137 = distinct !DISubprogram(name: "Mat_Message", scope: !33, file: !33, line: 273, type: !138, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!138 = !DISubroutineType(types: !139)
!139 = !{!34, !42, null}
!140 = !DILocalVariable(name: "format", arg: 1, scope: !137, file: !33, line: 273, type: !42)
!141 = !DILocation(line: 273, column: 30, scope: !137)
!142 = !DILocalVariable(name: "ap", scope: !137, file: !33, line: 275, type: !65)
!143 = !DILocation(line: 275, column: 13, scope: !137)
!144 = !DILocation(line: 277, column: 10, scope: !145)
!145 = distinct !DILexicalBlock(scope: !137, file: !33, line: 277, column: 10)
!146 = !DILocation(line: 277, column: 10, scope: !137)
!147 = !DILocation(line: 277, column: 19, scope: !148)
!148 = !DILexicalBlockFile(scope: !145, file: !33, discriminator: 1)
!149 = !DILocation(line: 278, column: 11, scope: !150)
!150 = distinct !DILexicalBlock(scope: !137, file: !33, line: 278, column: 10)
!151 = !DILocation(line: 278, column: 10, scope: !137)
!152 = !DILocation(line: 278, column: 21, scope: !153)
!153 = !DILexicalBlockFile(scope: !150, file: !33, discriminator: 1)
!154 = !DILocation(line: 280, column: 4, scope: !137)
!155 = !DILocation(line: 281, column: 21, scope: !137)
!156 = !DILocation(line: 281, column: 29, scope: !137)
!157 = !DILocation(line: 281, column: 5, scope: !137)
!158 = !DILocation(line: 282, column: 4, scope: !137)
!159 = !DILocation(line: 283, column: 5, scope: !137)
!160 = !DILocation(line: 284, column: 1, scope: !137)
!161 = distinct !DISubprogram(name: "mat_log", scope: !33, file: !33, line: 149, type: !162, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !34, !42, !50}
!164 = !DILocalVariable(name: "loglevel", arg: 1, scope: !161, file: !33, line: 149, type: !34)
!165 = !DILocation(line: 149, column: 13, scope: !161)
!166 = !DILocalVariable(name: "format", arg: 2, scope: !161, file: !33, line: 149, type: !42)
!167 = !DILocation(line: 149, column: 35, scope: !161)
!168 = !DILocalVariable(name: "ap", arg: 3, scope: !161, file: !33, line: 149, type: !50)
!169 = !DILocation(line: 149, column: 51, scope: !161)
!170 = !DILocalVariable(name: "buffer", scope: !161, file: !33, line: 151, type: !28)
!171 = !DILocation(line: 151, column: 11, scope: !161)
!172 = !DILocation(line: 153, column: 11, scope: !173)
!173 = distinct !DILexicalBlock(scope: !161, file: !33, line: 153, column: 10)
!174 = !DILocation(line: 153, column: 10, scope: !161)
!175 = !DILocation(line: 153, column: 21, scope: !176)
!176 = !DILexicalBlockFile(scope: !173, file: !33, discriminator: 1)
!177 = !DILocation(line: 154, column: 29, scope: !161)
!178 = !DILocation(line: 154, column: 37, scope: !161)
!179 = !DILocation(line: 154, column: 14, scope: !161)
!180 = !DILocation(line: 154, column: 12, scope: !161)
!181 = !DILocation(line: 155, column: 7, scope: !161)
!182 = !DILocation(line: 155, column: 16, scope: !161)
!183 = !DILocation(line: 155, column: 25, scope: !161)
!184 = !DILocation(line: 155, column: 5, scope: !161)
!185 = !DILocation(line: 156, column: 10, scope: !161)
!186 = !DILocation(line: 156, column: 5, scope: !161)
!187 = !DILocation(line: 157, column: 5, scope: !161)
!188 = !DILocation(line: 158, column: 1, scope: !161)
!189 = distinct !DISubprogram(name: "Mat_DebugMessage", scope: !33, file: !33, line: 295, type: !190, isLocal: false, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!190 = !DISubroutineType(types: !191)
!191 = !{!34, !34, !42, null}
!192 = !DILocalVariable(name: "level", arg: 1, scope: !189, file: !33, line: 295, type: !34)
!193 = !DILocation(line: 295, column: 27, scope: !189)
!194 = !DILocalVariable(name: "format", arg: 2, scope: !189, file: !33, line: 295, type: !42)
!195 = !DILocation(line: 295, column: 46, scope: !189)
!196 = !DILocalVariable(name: "ap", scope: !189, file: !33, line: 297, type: !65)
!197 = !DILocation(line: 297, column: 13, scope: !189)
!198 = !DILocation(line: 299, column: 10, scope: !199)
!199 = distinct !DILexicalBlock(scope: !189, file: !33, line: 299, column: 10)
!200 = !DILocation(line: 299, column: 10, scope: !189)
!201 = !DILocation(line: 299, column: 19, scope: !202)
!202 = !DILexicalBlockFile(scope: !199, file: !33, discriminator: 1)
!203 = !DILocation(line: 300, column: 10, scope: !204)
!204 = distinct !DILexicalBlock(scope: !189, file: !33, line: 300, column: 10)
!205 = !DILocation(line: 300, column: 18, scope: !204)
!206 = !DILocation(line: 300, column: 16, scope: !204)
!207 = !DILocation(line: 300, column: 10, scope: !189)
!208 = !DILocation(line: 300, column: 26, scope: !209)
!209 = !DILexicalBlockFile(scope: !204, file: !33, discriminator: 1)
!210 = !DILocation(line: 302, column: 4, scope: !189)
!211 = !DILocation(line: 303, column: 21, scope: !189)
!212 = !DILocation(line: 303, column: 29, scope: !189)
!213 = !DILocation(line: 303, column: 5, scope: !189)
!214 = !DILocation(line: 304, column: 4, scope: !189)
!215 = !DILocation(line: 305, column: 5, scope: !189)
!216 = !DILocation(line: 306, column: 1, scope: !189)
!217 = distinct !DISubprogram(name: "Mat_VerbMessage", scope: !33, file: !33, line: 317, type: !190, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!218 = !DILocalVariable(name: "level", arg: 1, scope: !217, file: !33, line: 317, type: !34)
!219 = !DILocation(line: 317, column: 26, scope: !217)
!220 = !DILocalVariable(name: "format", arg: 2, scope: !217, file: !33, line: 317, type: !42)
!221 = !DILocation(line: 317, column: 45, scope: !217)
!222 = !DILocalVariable(name: "ap", scope: !217, file: !33, line: 319, type: !65)
!223 = !DILocation(line: 319, column: 13, scope: !217)
!224 = !DILocation(line: 321, column: 10, scope: !225)
!225 = distinct !DILexicalBlock(scope: !217, file: !33, line: 321, column: 10)
!226 = !DILocation(line: 321, column: 10, scope: !217)
!227 = !DILocation(line: 321, column: 19, scope: !228)
!228 = !DILexicalBlockFile(scope: !225, file: !33, discriminator: 1)
!229 = !DILocation(line: 322, column: 10, scope: !230)
!230 = distinct !DILexicalBlock(scope: !217, file: !33, line: 322, column: 10)
!231 = !DILocation(line: 322, column: 18, scope: !230)
!232 = !DILocation(line: 322, column: 16, scope: !230)
!233 = !DILocation(line: 322, column: 10, scope: !217)
!234 = !DILocation(line: 322, column: 28, scope: !235)
!235 = !DILexicalBlockFile(scope: !230, file: !33, discriminator: 1)
!236 = !DILocation(line: 324, column: 4, scope: !217)
!237 = !DILocation(line: 325, column: 21, scope: !217)
!238 = !DILocation(line: 325, column: 29, scope: !217)
!239 = !DILocation(line: 325, column: 5, scope: !217)
!240 = !DILocation(line: 326, column: 4, scope: !217)
!241 = !DILocation(line: 327, column: 5, scope: !217)
!242 = !DILocation(line: 328, column: 1, scope: !217)
!243 = distinct !DISubprogram(name: "Mat_Critical", scope: !33, file: !33, line: 338, type: !244, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !42, null}
!246 = !DILocalVariable(name: "format", arg: 1, scope: !243, file: !33, line: 338, type: !42)
!247 = !DILocation(line: 338, column: 32, scope: !243)
!248 = !DILocalVariable(name: "ap", scope: !243, file: !33, line: 340, type: !65)
!249 = !DILocation(line: 340, column: 13, scope: !243)
!250 = !DILocation(line: 342, column: 4, scope: !243)
!251 = !DILocation(line: 343, column: 21, scope: !243)
!252 = !DILocation(line: 343, column: 29, scope: !243)
!253 = !DILocation(line: 343, column: 5, scope: !243)
!254 = !DILocation(line: 344, column: 4, scope: !243)
!255 = !DILocation(line: 345, column: 1, scope: !243)
!256 = distinct !DISubprogram(name: "Mat_Error", scope: !33, file: !33, line: 354, type: !244, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!257 = !DILocalVariable(name: "format", arg: 1, scope: !256, file: !33, line: 354, type: !42)
!258 = !DILocation(line: 354, column: 29, scope: !256)
!259 = !DILocalVariable(name: "ap", scope: !256, file: !33, line: 356, type: !65)
!260 = !DILocation(line: 356, column: 13, scope: !256)
!261 = !DILocation(line: 358, column: 4, scope: !256)
!262 = !DILocation(line: 359, column: 17, scope: !256)
!263 = !DILocation(line: 359, column: 25, scope: !256)
!264 = !DILocation(line: 359, column: 5, scope: !256)
!265 = !DILocation(line: 360, column: 4, scope: !256)
!266 = !DILocation(line: 361, column: 5, scope: !256)
!267 = !DILocation(line: 362, column: 1, scope: !256)
!268 = distinct !DISubprogram(name: "Mat_Help", scope: !33, file: !33, line: 375, type: !269, isLocal: false, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!272 = !DILocalVariable(name: "helpstr", arg: 1, scope: !268, file: !33, line: 375, type: !271)
!273 = !DILocation(line: 375, column: 28, scope: !268)
!274 = !DILocalVariable(name: "i", scope: !268, file: !33, line: 377, type: !34)
!275 = !DILocation(line: 377, column: 9, scope: !268)
!276 = !DILocation(line: 378, column: 12, scope: !277)
!277 = distinct !DILexicalBlock(scope: !268, file: !33, line: 378, column: 5)
!278 = !DILocation(line: 378, column: 10, scope: !277)
!279 = !DILocation(line: 378, column: 25, scope: !280)
!280 = !DILexicalBlockFile(scope: !281, file: !33, discriminator: 1)
!281 = distinct !DILexicalBlock(scope: !277, file: !33, line: 378, column: 5)
!282 = !DILocation(line: 378, column: 17, scope: !280)
!283 = !DILocation(line: 378, column: 28, scope: !280)
!284 = !DILocation(line: 378, column: 5, scope: !280)
!285 = !DILocation(line: 379, column: 31, scope: !281)
!286 = !DILocation(line: 379, column: 23, scope: !281)
!287 = !DILocation(line: 379, column: 9, scope: !281)
!288 = !DILocation(line: 378, column: 37, scope: !289)
!289 = !DILexicalBlockFile(scope: !281, file: !33, discriminator: 2)
!290 = !DILocation(line: 378, column: 5, scope: !289)
!291 = distinct !{!291, !292}
!292 = !DILocation(line: 378, column: 5, scope: !268)
!293 = !DILocation(line: 380, column: 5, scope: !268)
!294 = !DILocation(line: 381, column: 1, scope: !268)
!295 = distinct !DISubprogram(name: "Mat_LogClose", scope: !33, file: !33, line: 389, type: !296, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!296 = !DISubroutineType(types: !297)
!297 = !{!34}
!298 = !DILocation(line: 391, column: 13, scope: !295)
!299 = !DILocation(line: 395, column: 5, scope: !295)
!300 = distinct !DISubprogram(name: "Mat_LogInit", scope: !33, file: !33, line: 405, type: !301, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!301 = !DISubroutineType(types: !302)
!302 = !{!34, !42}
!303 = !DILocalVariable(name: "prog_name", arg: 1, scope: !300, file: !33, line: 405, type: !42)
!304 = !DILocation(line: 405, column: 26, scope: !300)
!305 = !DILocation(line: 407, column: 13, scope: !300)
!306 = !DILocation(line: 411, column: 13, scope: !300)
!307 = !DILocation(line: 412, column: 12, scope: !300)
!308 = !DILocation(line: 414, column: 5, scope: !300)
!309 = distinct !DISubprogram(name: "mat_logfunc", scope: !33, file: !33, line: 97, type: !39, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!310 = !DILocalVariable(name: "log_level", arg: 1, scope: !309, file: !33, line: 97, type: !34)
!311 = !DILocation(line: 97, column: 18, scope: !309)
!312 = !DILocalVariable(name: "message", arg: 2, scope: !309, file: !33, line: 97, type: !28)
!313 = !DILocation(line: 97, column: 35, scope: !309)
!314 = !DILocation(line: 99, column: 10, scope: !315)
!315 = distinct !DILexicalBlock(scope: !309, file: !33, line: 99, column: 10)
!316 = !DILocation(line: 99, column: 10, scope: !309)
!317 = !DILocation(line: 100, column: 14, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !33, line: 100, column: 14)
!319 = distinct !DILexicalBlock(scope: !315, file: !33, line: 99, column: 21)
!320 = !DILocation(line: 100, column: 24, scope: !318)
!321 = !DILocation(line: 100, column: 14, scope: !319)
!322 = !DILocation(line: 101, column: 20, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !33, line: 100, column: 34)
!324 = !DILocation(line: 101, column: 43, scope: !323)
!325 = !DILocation(line: 101, column: 53, scope: !323)
!326 = !DILocation(line: 101, column: 13, scope: !323)
!327 = !DILocation(line: 102, column: 19, scope: !323)
!328 = !DILocation(line: 102, column: 13, scope: !323)
!329 = !DILocation(line: 103, column: 9, scope: !323)
!330 = !DILocation(line: 103, column: 21, scope: !331)
!331 = !DILexicalBlockFile(scope: !332, file: !33, discriminator: 1)
!332 = distinct !DILexicalBlock(scope: !318, file: !33, line: 103, column: 21)
!333 = !DILocation(line: 103, column: 31, scope: !331)
!334 = !DILocation(line: 104, column: 20, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !33, line: 103, column: 37)
!336 = !DILocation(line: 104, column: 43, scope: !335)
!337 = !DILocation(line: 104, column: 53, scope: !335)
!338 = !DILocation(line: 104, column: 13, scope: !335)
!339 = !DILocation(line: 105, column: 19, scope: !335)
!340 = !DILocation(line: 105, column: 13, scope: !335)
!341 = !DILocation(line: 106, column: 13, scope: !335)
!342 = !DILocation(line: 107, column: 21, scope: !343)
!343 = distinct !DILexicalBlock(scope: !332, file: !33, line: 107, column: 21)
!344 = !DILocation(line: 107, column: 31, scope: !343)
!345 = !DILocation(line: 107, column: 21, scope: !332)
!346 = !DILocation(line: 108, column: 20, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !33, line: 107, column: 42)
!348 = !DILocation(line: 108, column: 43, scope: !347)
!349 = !DILocation(line: 108, column: 53, scope: !347)
!350 = !DILocation(line: 108, column: 13, scope: !347)
!351 = !DILocation(line: 109, column: 19, scope: !347)
!352 = !DILocation(line: 109, column: 13, scope: !347)
!353 = !DILocation(line: 110, column: 9, scope: !347)
!354 = !DILocation(line: 110, column: 21, scope: !355)
!355 = !DILexicalBlockFile(scope: !356, file: !33, discriminator: 1)
!356 = distinct !DILexicalBlock(scope: !343, file: !33, line: 110, column: 21)
!357 = !DILocation(line: 110, column: 31, scope: !355)
!358 = !DILocation(line: 111, column: 20, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !33, line: 110, column: 42)
!360 = !DILocation(line: 111, column: 43, scope: !359)
!361 = !DILocation(line: 111, column: 53, scope: !359)
!362 = !DILocation(line: 111, column: 13, scope: !359)
!363 = !DILocation(line: 112, column: 19, scope: !359)
!364 = !DILocation(line: 112, column: 13, scope: !359)
!365 = !DILocation(line: 113, column: 9, scope: !359)
!366 = !DILocation(line: 113, column: 21, scope: !367)
!367 = !DILexicalBlockFile(scope: !368, file: !33, discriminator: 1)
!368 = distinct !DILexicalBlock(scope: !356, file: !33, line: 113, column: 21)
!369 = !DILocation(line: 113, column: 31, scope: !367)
!370 = !DILocation(line: 114, column: 20, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !33, line: 113, column: 42)
!372 = !DILocation(line: 114, column: 35, scope: !371)
!373 = !DILocation(line: 114, column: 13, scope: !371)
!374 = !DILocation(line: 115, column: 19, scope: !371)
!375 = !DILocation(line: 115, column: 13, scope: !371)
!376 = !DILocation(line: 116, column: 9, scope: !371)
!377 = !DILocation(line: 117, column: 5, scope: !319)
!378 = !DILocation(line: 118, column: 14, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !33, line: 118, column: 14)
!380 = distinct !DILexicalBlock(scope: !315, file: !33, line: 117, column: 12)
!381 = !DILocation(line: 118, column: 24, scope: !379)
!382 = !DILocation(line: 118, column: 14, scope: !380)
!383 = !DILocation(line: 119, column: 20, scope: !384)
!384 = distinct !DILexicalBlock(scope: !379, file: !33, line: 118, column: 34)
!385 = !DILocation(line: 119, column: 41, scope: !384)
!386 = !DILocation(line: 119, column: 13, scope: !384)
!387 = !DILocation(line: 120, column: 19, scope: !384)
!388 = !DILocation(line: 120, column: 13, scope: !384)
!389 = !DILocation(line: 121, column: 9, scope: !384)
!390 = !DILocation(line: 121, column: 21, scope: !391)
!391 = !DILexicalBlockFile(scope: !392, file: !33, discriminator: 1)
!392 = distinct !DILexicalBlock(scope: !379, file: !33, line: 121, column: 21)
!393 = !DILocation(line: 121, column: 31, scope: !391)
!394 = !DILocation(line: 122, column: 20, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !33, line: 121, column: 37)
!396 = !DILocation(line: 122, column: 41, scope: !395)
!397 = !DILocation(line: 122, column: 13, scope: !395)
!398 = !DILocation(line: 123, column: 19, scope: !395)
!399 = !DILocation(line: 123, column: 13, scope: !395)
!400 = !DILocation(line: 124, column: 13, scope: !395)
!401 = !DILocation(line: 125, column: 21, scope: !402)
!402 = distinct !DILexicalBlock(scope: !392, file: !33, line: 125, column: 21)
!403 = !DILocation(line: 125, column: 31, scope: !402)
!404 = !DILocation(line: 125, column: 21, scope: !392)
!405 = !DILocation(line: 126, column: 20, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !33, line: 125, column: 42)
!407 = !DILocation(line: 126, column: 41, scope: !406)
!408 = !DILocation(line: 126, column: 13, scope: !406)
!409 = !DILocation(line: 127, column: 19, scope: !406)
!410 = !DILocation(line: 127, column: 13, scope: !406)
!411 = !DILocation(line: 128, column: 9, scope: !406)
!412 = !DILocation(line: 128, column: 21, scope: !413)
!413 = !DILexicalBlockFile(scope: !414, file: !33, discriminator: 1)
!414 = distinct !DILexicalBlock(scope: !402, file: !33, line: 128, column: 21)
!415 = !DILocation(line: 128, column: 31, scope: !413)
!416 = !DILocation(line: 129, column: 20, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !33, line: 128, column: 42)
!418 = !DILocation(line: 129, column: 41, scope: !417)
!419 = !DILocation(line: 129, column: 13, scope: !417)
!420 = !DILocation(line: 130, column: 19, scope: !417)
!421 = !DILocation(line: 130, column: 13, scope: !417)
!422 = !DILocation(line: 131, column: 9, scope: !417)
!423 = !DILocation(line: 131, column: 21, scope: !424)
!424 = !DILexicalBlockFile(scope: !425, file: !33, discriminator: 1)
!425 = distinct !DILexicalBlock(scope: !414, file: !33, line: 131, column: 21)
!426 = !DILocation(line: 131, column: 31, scope: !424)
!427 = !DILocation(line: 132, column: 20, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !33, line: 131, column: 42)
!429 = !DILocation(line: 132, column: 35, scope: !428)
!430 = !DILocation(line: 132, column: 13, scope: !428)
!431 = !DILocation(line: 133, column: 19, scope: !428)
!432 = !DILocation(line: 133, column: 13, scope: !428)
!433 = !DILocation(line: 134, column: 9, scope: !428)
!434 = !DILocation(line: 136, column: 1, scope: !309)
!435 = distinct !DISubprogram(name: "Mat_LogInitFunc", scope: !33, file: !33, line: 425, type: !436, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!436 = !DISubroutineType(types: !437)
!437 = !{!34, !42, !38}
!438 = !DILocalVariable(name: "prog_name", arg: 1, scope: !435, file: !33, line: 425, type: !42)
!439 = !DILocation(line: 425, column: 29, scope: !435)
!440 = !DILocalVariable(name: "log_func", arg: 2, scope: !435, file: !33, line: 426, type: !38)
!441 = !DILocation(line: 426, column: 12, scope: !435)
!442 = !DILocation(line: 428, column: 15, scope: !435)
!443 = !DILocation(line: 428, column: 13, scope: !435)
!444 = !DILocation(line: 429, column: 16, scope: !435)
!445 = !DILocation(line: 429, column: 14, scope: !435)
!446 = !DILocation(line: 433, column: 13, scope: !435)
!447 = !DILocation(line: 434, column: 12, scope: !435)
!448 = !DILocation(line: 435, column: 5, scope: !435)
!449 = distinct !DISubprogram(name: "Mat_Warning", scope: !33, file: !33, line: 446, type: !244, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!450 = !DILocalVariable(name: "format", arg: 1, scope: !449, file: !33, line: 446, type: !42)
!451 = !DILocation(line: 446, column: 26, scope: !449)
!452 = !DILocalVariable(name: "ap", scope: !449, file: !33, line: 448, type: !65)
!453 = !DILocation(line: 448, column: 13, scope: !449)
!454 = !DILocation(line: 450, column: 4, scope: !449)
!455 = !DILocation(line: 451, column: 21, scope: !449)
!456 = !DILocation(line: 451, column: 29, scope: !449)
!457 = !DILocation(line: 451, column: 5, scope: !449)
!458 = !DILocation(line: 452, column: 4, scope: !449)
!459 = !DILocation(line: 453, column: 1, scope: !449)
!460 = distinct !DISubprogram(name: "Mat_SizeOf", scope: !33, file: !33, line: 462, type: !461, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !3}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !464, line: 216, baseType: !465)
!464 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.a")
!465 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!466 = !DILocalVariable(name: "data_type", arg: 1, scope: !460, file: !33, line: 462, type: !3)
!467 = !DILocation(line: 462, column: 29, scope: !460)
!468 = !DILocation(line: 464, column: 13, scope: !460)
!469 = !DILocation(line: 464, column: 5, scope: !460)
!470 = !DILocation(line: 466, column: 13, scope: !471)
!471 = distinct !DILexicalBlock(scope: !460, file: !33, line: 464, column: 24)
!472 = !DILocation(line: 468, column: 13, scope: !471)
!473 = !DILocation(line: 471, column: 13, scope: !471)
!474 = !DILocation(line: 475, column: 13, scope: !471)
!475 = !DILocation(line: 478, column: 13, scope: !471)
!476 = !DILocation(line: 480, column: 13, scope: !471)
!477 = !DILocation(line: 482, column: 13, scope: !471)
!478 = !DILocation(line: 484, column: 13, scope: !471)
!479 = !DILocation(line: 486, column: 13, scope: !471)
!480 = !DILocation(line: 488, column: 13, scope: !471)
!481 = !DILocation(line: 490, column: 13, scope: !471)
!482 = !DILocation(line: 492, column: 13, scope: !471)
!483 = !DILocation(line: 494, column: 13, scope: !471)
!484 = !DILocation(line: 496, column: 13, scope: !471)
!485 = !DILocation(line: 498, column: 1, scope: !460)
