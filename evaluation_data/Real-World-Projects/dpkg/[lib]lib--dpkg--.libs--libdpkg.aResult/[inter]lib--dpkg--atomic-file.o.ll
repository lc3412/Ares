; ModuleID = './[inter]lib--dpkg--atomic-file.o.i'
source_filename = "./[inter]lib--dpkg--atomic-file.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.atomic_file = type { i32, i8*, i8*, %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-new\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"unable to create new file '%.250s'\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"unable to write new file '%.250s'\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"unable to flush new file '%.250s'\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"unable to sync new file '%.250s'\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"unable to close new file '%.250s'\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"cannot remove '%.250s'\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"error installing new file '%s'\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"-old\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"error removing old backup file '%s'\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"error creating new backup file '%s'\00", align 1

; Function Attrs: nounwind uwtable
define %struct.atomic_file* @atomic_file_new(i8*, i32) #0 !dbg !18 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atomic_file*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !94, metadata !95), !dbg !96
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !97, metadata !95), !dbg !98
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %5, metadata !99, metadata !95), !dbg !100
  %6 = call i8* @m_malloc(i64 32), !dbg !101
  %7 = bitcast i8* %6 to %struct.atomic_file*, !dbg !101
  store %struct.atomic_file* %7, %struct.atomic_file** %5, align 8, !dbg !102
  %8 = load i32, i32* %4, align 4, !dbg !103
  %9 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !104
  %10 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %9, i32 0, i32 0, !dbg !105
  store i32 %8, i32* %10, align 8, !dbg !106
  %11 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !107
  %12 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %11, i32 0, i32 3, !dbg !108
  store %struct._IO_FILE* null, %struct._IO_FILE** %12, align 8, !dbg !109
  %13 = load i8*, i8** %3, align 8, !dbg !110
  %14 = call i8* @m_strdup(i8* %13), !dbg !111
  %15 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !112
  %16 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %15, i32 0, i32 1, !dbg !113
  store i8* %14, i8** %16, align 8, !dbg !114
  %17 = load i8*, i8** %3, align 8, !dbg !115
  %18 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !116
  %19 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !117
  %20 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %19, i32 0, i32 2, !dbg !118
  store i8* %18, i8** %20, align 8, !dbg !119
  %21 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !120
  ret %struct.atomic_file* %21, !dbg !121
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @m_malloc(i64) #2

declare i8* @m_strdup(i8*) #2

declare i8* @str_fmt(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @atomic_file_open(%struct.atomic_file*) #0 !dbg !122 {
  %2 = alloca %struct.atomic_file*, align 8
  store %struct.atomic_file* %0, %struct.atomic_file** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %2, metadata !125, metadata !95), !dbg !126
  %3 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !127
  %4 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %3, i32 0, i32 2, !dbg !128
  %5 = load i8*, i8** %4, align 8, !dbg !128
  %6 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !129
  %7 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !130
  %8 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %7, i32 0, i32 3, !dbg !131
  store %struct._IO_FILE* %6, %struct._IO_FILE** %8, align 8, !dbg !132
  %9 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !133
  %10 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %9, i32 0, i32 3, !dbg !135
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !135
  %12 = icmp eq %struct._IO_FILE* %11, null, !dbg !136
  br i1 %12, label %13, label %18, !dbg !137

; <label>:13:                                     ; preds = %1
  %14 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !138
  %15 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !139
  %16 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %15, i32 0, i32 2, !dbg !140
  %17 = load i8*, i8** %16, align 8, !dbg !140
  call void (i8*, ...) @ohshite(i8* %14, i8* %17) #7, !dbg !141
  unreachable, !dbg !143

; <label>:18:                                     ; preds = %1
  %19 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !144
  %20 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %19, i32 0, i32 3, !dbg !145
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8, !dbg !145
  %22 = call i32 @fileno(%struct._IO_FILE* %21) #6, !dbg !146
  %23 = call i32 @fchmod(i32 %22, i32 420) #6, !dbg !147
  %24 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !149
  %25 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %24, i32 0, i32 3, !dbg !150
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8, !dbg !150
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_closestream, i32 -2, i32 1, %struct._IO_FILE* %26), !dbg !151
  ret void, !dbg !152
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #4

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #4

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #2

declare void @cu_closestream(i32, i8**) #2

; Function Attrs: nounwind uwtable
define void @atomic_file_sync(%struct.atomic_file*) #0 !dbg !153 {
  %2 = alloca %struct.atomic_file*, align 8
  store %struct.atomic_file* %0, %struct.atomic_file** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %2, metadata !154, metadata !95), !dbg !155
  %3 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !156
  %4 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %3, i32 0, i32 3, !dbg !158
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !158
  %6 = call i32 @ferror(%struct._IO_FILE* %5) #6, !dbg !159
  %7 = icmp ne i32 %6, 0, !dbg !159
  br i1 %7, label %8, label %13, !dbg !160

; <label>:8:                                      ; preds = %1
  %9 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !161
  %10 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !162
  %11 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %10, i32 0, i32 2, !dbg !163
  %12 = load i8*, i8** %11, align 8, !dbg !163
  call void (i8*, ...) @ohshite(i8* %9, i8* %12) #7, !dbg !164
  unreachable, !dbg !166

; <label>:13:                                     ; preds = %1
  %14 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !167
  %15 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %14, i32 0, i32 3, !dbg !169
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !169
  %17 = call i32 @fflush(%struct._IO_FILE* %16), !dbg !170
  %18 = icmp ne i32 %17, 0, !dbg !170
  br i1 %18, label %19, label %24, !dbg !171

; <label>:19:                                     ; preds = %13
  %20 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !172
  %21 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !173
  %22 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %21, i32 0, i32 2, !dbg !174
  %23 = load i8*, i8** %22, align 8, !dbg !174
  call void (i8*, ...) @ohshite(i8* %20, i8* %23) #7, !dbg !175
  unreachable, !dbg !177

; <label>:24:                                     ; preds = %13
  %25 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !178
  %26 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %25, i32 0, i32 3, !dbg !180
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %26, align 8, !dbg !180
  %28 = call i32 @fileno(%struct._IO_FILE* %27) #6, !dbg !181
  %29 = call i32 @fsync(i32 %28), !dbg !182
  %30 = icmp ne i32 %29, 0, !dbg !184
  br i1 %30, label %31, label %36, !dbg !185

; <label>:31:                                     ; preds = %24
  %32 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !186
  %33 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !187
  %34 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %33, i32 0, i32 2, !dbg !188
  %35 = load i8*, i8** %34, align 8, !dbg !188
  call void (i8*, ...) @ohshite(i8* %32, i8* %35) #7, !dbg !189
  unreachable, !dbg !190

; <label>:36:                                     ; preds = %24
  ret void, !dbg !191
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fsync(i32) #2

; Function Attrs: nounwind uwtable
define void @atomic_file_close(%struct.atomic_file*) #0 !dbg !192 {
  %2 = alloca %struct.atomic_file*, align 8
  store %struct.atomic_file* %0, %struct.atomic_file** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %2, metadata !193, metadata !95), !dbg !194
  call void @pop_cleanup(i32 1), !dbg !195
  %3 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !196
  %4 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %3, i32 0, i32 3, !dbg !198
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !198
  %6 = call i32 @fclose(%struct._IO_FILE* %5), !dbg !199
  %7 = icmp ne i32 %6, 0, !dbg !199
  br i1 %7, label %8, label %13, !dbg !200

; <label>:8:                                      ; preds = %1
  %9 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0)) #6, !dbg !201
  %10 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !202
  %11 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %10, i32 0, i32 2, !dbg !203
  %12 = load i8*, i8** %11, align 8, !dbg !203
  call void (i8*, ...) @ohshite(i8* %9, i8* %12) #7, !dbg !204
  unreachable, !dbg !206

; <label>:13:                                     ; preds = %1
  ret void, !dbg !207
}

declare void @pop_cleanup(i32) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @atomic_file_remove(%struct.atomic_file*) #0 !dbg !208 {
  %2 = alloca %struct.atomic_file*, align 8
  store %struct.atomic_file* %0, %struct.atomic_file** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %2, metadata !209, metadata !95), !dbg !210
  %3 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !211
  %4 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %3, i32 0, i32 2, !dbg !213
  %5 = load i8*, i8** %4, align 8, !dbg !213
  %6 = call i32 @unlink(i8* %5) #6, !dbg !214
  %7 = icmp ne i32 %6, 0, !dbg !214
  br i1 %7, label %8, label %13, !dbg !215

; <label>:8:                                      ; preds = %1
  %9 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !216
  %10 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !217
  %11 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %10, i32 0, i32 2, !dbg !218
  %12 = load i8*, i8** %11, align 8, !dbg !218
  call void (i8*, ...) @ohshite(i8* %9, i8* %12) #7, !dbg !219
  unreachable, !dbg !221

; <label>:13:                                     ; preds = %1
  %14 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !222
  %15 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %14, i32 0, i32 1, !dbg !224
  %16 = load i8*, i8** %15, align 8, !dbg !224
  %17 = call i32 @unlink(i8* %16) #6, !dbg !225
  %18 = icmp ne i32 %17, 0, !dbg !225
  br i1 %18, label %19, label %28, !dbg !226

; <label>:19:                                     ; preds = %13
  %20 = call i32* @__errno_location() #1, !dbg !227
  %21 = load i32, i32* %20, align 4, !dbg !229
  %22 = icmp ne i32 %21, 2, !dbg !230
  br i1 %22, label %23, label %28, !dbg !231

; <label>:23:                                     ; preds = %19
  %24 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !232
  %25 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !233
  %26 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %25, i32 0, i32 1, !dbg !234
  %27 = load i8*, i8** %26, align 8, !dbg !234
  call void (i8*, ...) @ohshite(i8* %24, i8* %27) #7, !dbg !235
  unreachable, !dbg !236

; <label>:28:                                     ; preds = %19, %13
  ret void, !dbg !237
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define void @atomic_file_commit(%struct.atomic_file*) #0 !dbg !238 {
  %2 = alloca %struct.atomic_file*, align 8
  store %struct.atomic_file* %0, %struct.atomic_file** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %2, metadata !239, metadata !95), !dbg !240
  %3 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !241
  %4 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %3, i32 0, i32 0, !dbg !243
  %5 = load i32, i32* %4, align 8, !dbg !243
  %6 = and i32 %5, 1, !dbg !244
  %7 = icmp ne i32 %6, 0, !dbg !244
  br i1 %7, label %8, label %10, !dbg !245

; <label>:8:                                      ; preds = %1
  %9 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !246
  call void @atomic_file_backup(%struct.atomic_file* %9), !dbg !247
  br label %10, !dbg !247

; <label>:10:                                     ; preds = %8, %1
  %11 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !248
  %12 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %11, i32 0, i32 2, !dbg !250
  %13 = load i8*, i8** %12, align 8, !dbg !250
  %14 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !251
  %15 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %14, i32 0, i32 1, !dbg !252
  %16 = load i8*, i8** %15, align 8, !dbg !252
  %17 = call i32 @rename(i8* %13, i8* %16) #6, !dbg !253
  %18 = icmp ne i32 %17, 0, !dbg !253
  br i1 %18, label %19, label %24, !dbg !254

; <label>:19:                                     ; preds = %10
  %20 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0)) #6, !dbg !255
  %21 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !256
  %22 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %21, i32 0, i32 1, !dbg !257
  %23 = load i8*, i8** %22, align 8, !dbg !257
  call void (i8*, ...) @ohshite(i8* %20, i8* %23) #7, !dbg !258
  unreachable, !dbg !260

; <label>:24:                                     ; preds = %10
  ret void, !dbg !261
}

; Function Attrs: nounwind uwtable
define internal void @atomic_file_backup(%struct.atomic_file*) #0 !dbg !262 {
  %2 = alloca %struct.atomic_file*, align 8
  %3 = alloca i8*, align 8
  store %struct.atomic_file* %0, %struct.atomic_file** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %2, metadata !263, metadata !95), !dbg !264
  call void @llvm.dbg.declare(metadata i8** %3, metadata !265, metadata !95), !dbg !266
  %4 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !267
  %5 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %4, i32 0, i32 1, !dbg !268
  %6 = load i8*, i8** %5, align 8, !dbg !268
  %7 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)), !dbg !269
  store i8* %7, i8** %3, align 8, !dbg !270
  %8 = load i8*, i8** %3, align 8, !dbg !271
  %9 = call i32 @unlink(i8* %8) #6, !dbg !273
  %10 = icmp ne i32 %9, 0, !dbg !273
  br i1 %10, label %11, label %18, !dbg !274

; <label>:11:                                     ; preds = %1
  %12 = call i32* @__errno_location() #1, !dbg !275
  %13 = load i32, i32* %12, align 4, !dbg !277
  %14 = icmp ne i32 %13, 2, !dbg !278
  br i1 %14, label %15, label %18, !dbg !279

; <label>:15:                                     ; preds = %11
  %16 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0)) #6, !dbg !280
  %17 = load i8*, i8** %3, align 8, !dbg !281
  call void (i8*, ...) @ohshite(i8* %16, i8* %17) #7, !dbg !282
  unreachable, !dbg !283

; <label>:18:                                     ; preds = %11, %1
  %19 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !284
  %20 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %19, i32 0, i32 1, !dbg !286
  %21 = load i8*, i8** %20, align 8, !dbg !286
  %22 = load i8*, i8** %3, align 8, !dbg !287
  %23 = call i32 @link(i8* %21, i8* %22) #6, !dbg !288
  %24 = icmp ne i32 %23, 0, !dbg !288
  br i1 %24, label %25, label %32, !dbg !289

; <label>:25:                                     ; preds = %18
  %26 = call i32* @__errno_location() #1, !dbg !290
  %27 = load i32, i32* %26, align 4, !dbg !292
  %28 = icmp ne i32 %27, 2, !dbg !293
  br i1 %28, label %29, label %32, !dbg !294

; <label>:29:                                     ; preds = %25
  %30 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0)) #6, !dbg !295
  %31 = load i8*, i8** %3, align 8, !dbg !296
  call void (i8*, ...) @ohshite(i8* %30, i8* %31) #7, !dbg !297
  unreachable, !dbg !298

; <label>:32:                                     ; preds = %25, %18
  %33 = load i8*, i8** %3, align 8, !dbg !299
  call void @free(i8* %33) #6, !dbg !300
  ret void, !dbg !301
}

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @atomic_file_free(%struct.atomic_file*) #0 !dbg !302 {
  %2 = alloca %struct.atomic_file*, align 8
  store %struct.atomic_file* %0, %struct.atomic_file** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %2, metadata !303, metadata !95), !dbg !304
  %3 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !305
  %4 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %3, i32 0, i32 2, !dbg !306
  %5 = load i8*, i8** %4, align 8, !dbg !306
  call void @free(i8* %5) #6, !dbg !307
  %6 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !308
  %7 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %6, i32 0, i32 1, !dbg !309
  %8 = load i8*, i8** %7, align 8, !dbg !309
  call void @free(i8* %8) #6, !dbg !310
  %9 = load %struct.atomic_file*, %struct.atomic_file** %2, align 8, !dbg !311
  %10 = bitcast %struct.atomic_file* %9 to i8*, !dbg !311
  call void @free(i8* %10) #6, !dbg !312
  ret void, !dbg !313
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13)
!1 = !DIFile(filename: "[inter]lib--dpkg--atomic-file.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !7}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "atomic_file_flags", file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/atomic-file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6}
!6 = !DIEnumerator(name: "ATOMIC_FILE_BACKUP", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 41, size: 32, align: 32, elements: !9)
!8 = !DIFile(filename: "../../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!9 = !{!10, !11, !12}
!10 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!11 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!12 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!13 = !{!14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!18 = distinct !DISubprogram(name: "atomic_file_new", scope: !19, file: !19, line: 39, type: !20, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!19 = !DIFile(filename: "atomic-file.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !91, !3}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_file", file: !4, line: 40, size: 256, align: 64, elements: !24)
!24 = !{!25, !26, !29, !30}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !4, line: 41, baseType: !3, size: 32, align: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !23, file: !4, line: 42, baseType: !27, size: 64, align: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name_new", scope: !23, file: !4, line: 43, baseType: !27, size: 64, align: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !23, file: !4, line: 44, baseType: !31, size: 64, align: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 48, baseType: !34)
!33 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !35, line: 241, size: 1728, align: 64, elements: !36)
!35 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!36 = !{!37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !58, !59, !60, !61, !65, !67, !69, !73, !76, !78, !79, !80, !81, !82, !86, !87}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !34, file: !35, line: 242, baseType: !38, size: 32, align: 32)
!38 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !34, file: !35, line: 247, baseType: !27, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !34, file: !35, line: 248, baseType: !27, size: 64, align: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !34, file: !35, line: 249, baseType: !27, size: 64, align: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !34, file: !35, line: 250, baseType: !27, size: 64, align: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !34, file: !35, line: 251, baseType: !27, size: 64, align: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !34, file: !35, line: 252, baseType: !27, size: 64, align: 64, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !34, file: !35, line: 253, baseType: !27, size: 64, align: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !34, file: !35, line: 254, baseType: !27, size: 64, align: 64, offset: 512)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !34, file: !35, line: 256, baseType: !27, size: 64, align: 64, offset: 576)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !34, file: !35, line: 257, baseType: !27, size: 64, align: 64, offset: 640)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !34, file: !35, line: 258, baseType: !27, size: 64, align: 64, offset: 704)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !34, file: !35, line: 260, baseType: !51, size: 64, align: 64, offset: 768)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !35, line: 156, size: 192, align: 64, elements: !53)
!53 = !{!54, !55, !57}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !52, file: !35, line: 157, baseType: !51, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !52, file: !35, line: 158, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !52, file: !35, line: 162, baseType: !38, size: 32, align: 32, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !34, file: !35, line: 262, baseType: !56, size: 64, align: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !34, file: !35, line: 264, baseType: !38, size: 32, align: 32, offset: 896)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !34, file: !35, line: 268, baseType: !38, size: 32, align: 32, offset: 928)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !34, file: !35, line: 270, baseType: !62, size: 64, align: 64, offset: 960)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !63, line: 131, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!64 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !34, file: !35, line: 274, baseType: !66, size: 16, align: 16, offset: 1024)
!66 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !34, file: !35, line: 275, baseType: !68, size: 8, align: 8, offset: 1040)
!68 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !34, file: !35, line: 276, baseType: !70, size: 8, align: 8, offset: 1048)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, align: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !34, file: !35, line: 280, baseType: !74, size: 64, align: 64, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !35, line: 150, baseType: null)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !34, file: !35, line: 289, baseType: !77, size: 64, align: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !63, line: 132, baseType: !64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !34, file: !35, line: 297, baseType: !14, size: 64, align: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !34, file: !35, line: 298, baseType: !14, size: 64, align: 64, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !34, file: !35, line: 299, baseType: !14, size: 64, align: 64, offset: 1344)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !34, file: !35, line: 300, baseType: !14, size: 64, align: 64, offset: 1408)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !34, file: !35, line: 302, baseType: !83, size: 64, align: 64, offset: 1472)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 216, baseType: !85)
!84 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!85 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !34, file: !35, line: 303, baseType: !38, size: 32, align: 32, offset: 1536)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !34, file: !35, line: 305, baseType: !88, size: 160, align: 8, offset: 1568)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 20)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!93 = !{}
!94 = !DILocalVariable(name: "filename", arg: 1, scope: !18, file: !19, line: 39, type: !91)
!95 = !DIExpression()
!96 = !DILocation(line: 39, column: 29, scope: !18)
!97 = !DILocalVariable(name: "flags", arg: 2, scope: !18, file: !19, line: 39, type: !3)
!98 = !DILocation(line: 39, column: 62, scope: !18)
!99 = !DILocalVariable(name: "file", scope: !18, file: !19, line: 41, type: !22)
!100 = !DILocation(line: 41, column: 22, scope: !18)
!101 = !DILocation(line: 43, column: 9, scope: !18)
!102 = !DILocation(line: 43, column: 7, scope: !18)
!103 = !DILocation(line: 44, column: 16, scope: !18)
!104 = !DILocation(line: 44, column: 2, scope: !18)
!105 = !DILocation(line: 44, column: 8, scope: !18)
!106 = !DILocation(line: 44, column: 14, scope: !18)
!107 = !DILocation(line: 45, column: 2, scope: !18)
!108 = !DILocation(line: 45, column: 8, scope: !18)
!109 = !DILocation(line: 45, column: 11, scope: !18)
!110 = !DILocation(line: 46, column: 24, scope: !18)
!111 = !DILocation(line: 46, column: 15, scope: !18)
!112 = !DILocation(line: 46, column: 2, scope: !18)
!113 = !DILocation(line: 46, column: 8, scope: !18)
!114 = !DILocation(line: 46, column: 13, scope: !18)
!115 = !DILocation(line: 47, column: 35, scope: !18)
!116 = !DILocation(line: 47, column: 19, scope: !18)
!117 = !DILocation(line: 47, column: 2, scope: !18)
!118 = !DILocation(line: 47, column: 8, scope: !18)
!119 = !DILocation(line: 47, column: 17, scope: !18)
!120 = !DILocation(line: 49, column: 9, scope: !18)
!121 = !DILocation(line: 49, column: 2, scope: !18)
!122 = distinct !DISubprogram(name: "atomic_file_open", scope: !19, file: !19, line: 53, type: !123, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !22}
!125 = !DILocalVariable(name: "file", arg: 1, scope: !122, file: !19, line: 53, type: !22)
!126 = !DILocation(line: 53, column: 38, scope: !122)
!127 = !DILocation(line: 55, column: 19, scope: !122)
!128 = !DILocation(line: 55, column: 25, scope: !122)
!129 = !DILocation(line: 55, column: 13, scope: !122)
!130 = !DILocation(line: 55, column: 2, scope: !122)
!131 = !DILocation(line: 55, column: 8, scope: !122)
!132 = !DILocation(line: 55, column: 11, scope: !122)
!133 = !DILocation(line: 56, column: 6, scope: !134)
!134 = distinct !DILexicalBlock(scope: !122, file: !19, line: 56, column: 6)
!135 = !DILocation(line: 56, column: 12, scope: !134)
!136 = !DILocation(line: 56, column: 15, scope: !134)
!137 = !DILocation(line: 56, column: 6, scope: !122)
!138 = !DILocation(line: 57, column: 10, scope: !134)
!139 = !DILocation(line: 58, column: 11, scope: !134)
!140 = !DILocation(line: 58, column: 17, scope: !134)
!141 = !DILocation(line: 57, column: 3, scope: !142)
!142 = !DILexicalBlockFile(scope: !134, file: !19, discriminator: 1)
!143 = !DILocation(line: 57, column: 3, scope: !134)
!144 = !DILocation(line: 59, column: 16, scope: !122)
!145 = !DILocation(line: 59, column: 22, scope: !122)
!146 = !DILocation(line: 59, column: 9, scope: !122)
!147 = !DILocation(line: 59, column: 2, scope: !148)
!148 = !DILexicalBlockFile(scope: !122, file: !19, discriminator: 1)
!149 = !DILocation(line: 61, column: 54, scope: !122)
!150 = !DILocation(line: 61, column: 60, scope: !122)
!151 = !DILocation(line: 61, column: 2, scope: !122)
!152 = !DILocation(line: 62, column: 1, scope: !122)
!153 = distinct !DISubprogram(name: "atomic_file_sync", scope: !19, file: !19, line: 65, type: !123, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!154 = !DILocalVariable(name: "file", arg: 1, scope: !153, file: !19, line: 65, type: !22)
!155 = !DILocation(line: 65, column: 38, scope: !153)
!156 = !DILocation(line: 67, column: 13, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !19, line: 67, column: 6)
!158 = !DILocation(line: 67, column: 19, scope: !157)
!159 = !DILocation(line: 67, column: 6, scope: !157)
!160 = !DILocation(line: 67, column: 6, scope: !153)
!161 = !DILocation(line: 68, column: 10, scope: !157)
!162 = !DILocation(line: 68, column: 50, scope: !157)
!163 = !DILocation(line: 68, column: 56, scope: !157)
!164 = !DILocation(line: 68, column: 3, scope: !165)
!165 = !DILexicalBlockFile(scope: !157, file: !19, discriminator: 1)
!166 = !DILocation(line: 68, column: 3, scope: !157)
!167 = !DILocation(line: 69, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !153, file: !19, line: 69, column: 6)
!169 = !DILocation(line: 69, column: 19, scope: !168)
!170 = !DILocation(line: 69, column: 6, scope: !168)
!171 = !DILocation(line: 69, column: 6, scope: !153)
!172 = !DILocation(line: 70, column: 10, scope: !168)
!173 = !DILocation(line: 70, column: 50, scope: !168)
!174 = !DILocation(line: 70, column: 56, scope: !168)
!175 = !DILocation(line: 70, column: 3, scope: !176)
!176 = !DILexicalBlockFile(scope: !168, file: !19, discriminator: 1)
!177 = !DILocation(line: 70, column: 3, scope: !168)
!178 = !DILocation(line: 71, column: 19, scope: !179)
!179 = distinct !DILexicalBlock(scope: !153, file: !19, line: 71, column: 6)
!180 = !DILocation(line: 71, column: 25, scope: !179)
!181 = !DILocation(line: 71, column: 12, scope: !179)
!182 = !DILocation(line: 71, column: 6, scope: !183)
!183 = !DILexicalBlockFile(scope: !179, file: !19, discriminator: 1)
!184 = !DILocation(line: 71, column: 6, scope: !179)
!185 = !DILocation(line: 71, column: 6, scope: !153)
!186 = !DILocation(line: 72, column: 10, scope: !179)
!187 = !DILocation(line: 72, column: 49, scope: !179)
!188 = !DILocation(line: 72, column: 55, scope: !179)
!189 = !DILocation(line: 72, column: 3, scope: !183)
!190 = !DILocation(line: 72, column: 3, scope: !179)
!191 = !DILocation(line: 73, column: 1, scope: !153)
!192 = distinct !DISubprogram(name: "atomic_file_close", scope: !19, file: !19, line: 76, type: !123, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!193 = !DILocalVariable(name: "file", arg: 1, scope: !192, file: !19, line: 76, type: !22)
!194 = !DILocation(line: 76, column: 39, scope: !192)
!195 = !DILocation(line: 78, column: 2, scope: !192)
!196 = !DILocation(line: 80, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !19, line: 80, column: 6)
!198 = !DILocation(line: 80, column: 19, scope: !197)
!199 = !DILocation(line: 80, column: 6, scope: !197)
!200 = !DILocation(line: 80, column: 6, scope: !192)
!201 = !DILocation(line: 81, column: 10, scope: !197)
!202 = !DILocation(line: 81, column: 50, scope: !197)
!203 = !DILocation(line: 81, column: 56, scope: !197)
!204 = !DILocation(line: 81, column: 3, scope: !205)
!205 = !DILexicalBlockFile(scope: !197, file: !19, discriminator: 1)
!206 = !DILocation(line: 81, column: 3, scope: !197)
!207 = !DILocation(line: 82, column: 1, scope: !192)
!208 = distinct !DISubprogram(name: "atomic_file_remove", scope: !19, file: !19, line: 100, type: !123, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!209 = !DILocalVariable(name: "file", arg: 1, scope: !208, file: !19, line: 100, type: !22)
!210 = !DILocation(line: 100, column: 40, scope: !208)
!211 = !DILocation(line: 102, column: 13, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !19, line: 102, column: 6)
!213 = !DILocation(line: 102, column: 19, scope: !212)
!214 = !DILocation(line: 102, column: 6, scope: !212)
!215 = !DILocation(line: 102, column: 6, scope: !208)
!216 = !DILocation(line: 103, column: 10, scope: !212)
!217 = !DILocation(line: 103, column: 39, scope: !212)
!218 = !DILocation(line: 103, column: 45, scope: !212)
!219 = !DILocation(line: 103, column: 3, scope: !220)
!220 = !DILexicalBlockFile(scope: !212, file: !19, discriminator: 1)
!221 = !DILocation(line: 103, column: 3, scope: !212)
!222 = !DILocation(line: 104, column: 13, scope: !223)
!223 = distinct !DILexicalBlock(scope: !208, file: !19, line: 104, column: 6)
!224 = !DILocation(line: 104, column: 19, scope: !223)
!225 = !DILocation(line: 104, column: 6, scope: !223)
!226 = !DILocation(line: 104, column: 25, scope: !223)
!227 = !DILocation(line: 104, column: 29, scope: !228)
!228 = !DILexicalBlockFile(scope: !223, file: !19, discriminator: 1)
!229 = !DILocation(line: 104, column: 28, scope: !228)
!230 = !DILocation(line: 104, column: 33, scope: !228)
!231 = !DILocation(line: 104, column: 6, scope: !228)
!232 = !DILocation(line: 105, column: 10, scope: !223)
!233 = !DILocation(line: 105, column: 39, scope: !223)
!234 = !DILocation(line: 105, column: 45, scope: !223)
!235 = !DILocation(line: 105, column: 3, scope: !228)
!236 = !DILocation(line: 105, column: 3, scope: !223)
!237 = !DILocation(line: 106, column: 1, scope: !208)
!238 = distinct !DISubprogram(name: "atomic_file_commit", scope: !19, file: !19, line: 109, type: !123, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!239 = !DILocalVariable(name: "file", arg: 1, scope: !238, file: !19, line: 109, type: !22)
!240 = !DILocation(line: 109, column: 40, scope: !238)
!241 = !DILocation(line: 111, column: 6, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !19, line: 111, column: 6)
!243 = !DILocation(line: 111, column: 12, scope: !242)
!244 = !DILocation(line: 111, column: 18, scope: !242)
!245 = !DILocation(line: 111, column: 6, scope: !238)
!246 = !DILocation(line: 112, column: 22, scope: !242)
!247 = !DILocation(line: 112, column: 3, scope: !242)
!248 = !DILocation(line: 114, column: 13, scope: !249)
!249 = distinct !DILexicalBlock(scope: !238, file: !19, line: 114, column: 6)
!250 = !DILocation(line: 114, column: 19, scope: !249)
!251 = !DILocation(line: 114, column: 29, scope: !249)
!252 = !DILocation(line: 114, column: 35, scope: !249)
!253 = !DILocation(line: 114, column: 6, scope: !249)
!254 = !DILocation(line: 114, column: 6, scope: !238)
!255 = !DILocation(line: 115, column: 10, scope: !249)
!256 = !DILocation(line: 115, column: 47, scope: !249)
!257 = !DILocation(line: 115, column: 53, scope: !249)
!258 = !DILocation(line: 115, column: 3, scope: !259)
!259 = !DILexicalBlockFile(scope: !249, file: !19, discriminator: 1)
!260 = !DILocation(line: 115, column: 3, scope: !249)
!261 = !DILocation(line: 116, column: 1, scope: !238)
!262 = distinct !DISubprogram(name: "atomic_file_backup", scope: !19, file: !19, line: 85, type: !123, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!263 = !DILocalVariable(name: "file", arg: 1, scope: !262, file: !19, line: 85, type: !22)
!264 = !DILocation(line: 85, column: 40, scope: !262)
!265 = !DILocalVariable(name: "name_old", scope: !262, file: !19, line: 87, type: !27)
!266 = !DILocation(line: 87, column: 8, scope: !262)
!267 = !DILocation(line: 89, column: 29, scope: !262)
!268 = !DILocation(line: 89, column: 35, scope: !262)
!269 = !DILocation(line: 89, column: 13, scope: !262)
!270 = !DILocation(line: 89, column: 11, scope: !262)
!271 = !DILocation(line: 91, column: 13, scope: !272)
!272 = distinct !DILexicalBlock(scope: !262, file: !19, line: 91, column: 6)
!273 = !DILocation(line: 91, column: 6, scope: !272)
!274 = !DILocation(line: 91, column: 23, scope: !272)
!275 = !DILocation(line: 91, column: 27, scope: !276)
!276 = !DILexicalBlockFile(scope: !272, file: !19, discriminator: 1)
!277 = !DILocation(line: 91, column: 26, scope: !276)
!278 = !DILocation(line: 91, column: 31, scope: !276)
!279 = !DILocation(line: 91, column: 6, scope: !276)
!280 = !DILocation(line: 92, column: 10, scope: !272)
!281 = !DILocation(line: 92, column: 52, scope: !272)
!282 = !DILocation(line: 92, column: 3, scope: !276)
!283 = !DILocation(line: 92, column: 3, scope: !272)
!284 = !DILocation(line: 93, column: 11, scope: !285)
!285 = distinct !DILexicalBlock(scope: !262, file: !19, line: 93, column: 6)
!286 = !DILocation(line: 93, column: 17, scope: !285)
!287 = !DILocation(line: 93, column: 23, scope: !285)
!288 = !DILocation(line: 93, column: 6, scope: !285)
!289 = !DILocation(line: 93, column: 33, scope: !285)
!290 = !DILocation(line: 93, column: 37, scope: !291)
!291 = !DILexicalBlockFile(scope: !285, file: !19, discriminator: 1)
!292 = !DILocation(line: 93, column: 36, scope: !291)
!293 = !DILocation(line: 93, column: 41, scope: !291)
!294 = !DILocation(line: 93, column: 6, scope: !291)
!295 = !DILocation(line: 94, column: 10, scope: !285)
!296 = !DILocation(line: 94, column: 52, scope: !285)
!297 = !DILocation(line: 94, column: 3, scope: !291)
!298 = !DILocation(line: 94, column: 3, scope: !285)
!299 = !DILocation(line: 96, column: 7, scope: !262)
!300 = !DILocation(line: 96, column: 2, scope: !262)
!301 = !DILocation(line: 97, column: 1, scope: !262)
!302 = distinct !DISubprogram(name: "atomic_file_free", scope: !19, file: !19, line: 119, type: !123, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!303 = !DILocalVariable(name: "file", arg: 1, scope: !302, file: !19, line: 119, type: !22)
!304 = !DILocation(line: 119, column: 38, scope: !302)
!305 = !DILocation(line: 121, column: 7, scope: !302)
!306 = !DILocation(line: 121, column: 13, scope: !302)
!307 = !DILocation(line: 121, column: 2, scope: !302)
!308 = !DILocation(line: 122, column: 7, scope: !302)
!309 = !DILocation(line: 122, column: 13, scope: !302)
!310 = !DILocation(line: 122, column: 2, scope: !302)
!311 = !DILocation(line: 123, column: 7, scope: !302)
!312 = !DILocation(line: 123, column: 2, scope: !302)
!313 = !DILocation(line: 124, column: 1, scope: !302)
